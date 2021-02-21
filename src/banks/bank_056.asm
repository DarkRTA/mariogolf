; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $056", ROMX[$4000], BANK[$56]

    jr nz, jr_056_4042                            ; $4000: $20 $40

    inc sp                                        ; $4002: $33
    ld b, h                                       ; $4003: $44
    sub $47                                       ; $4004: $d6 $47
    ld b, e                                       ; $4006: $43
    ld c, h                                       ; $4007: $4c
    sub $4f                                       ; $4008: $d6 $4f
    ld l, e                                       ; $400a: $6b
    ld d, e                                       ; $400b: $53
    ld b, h                                       ; $400c: $44
    ld d, a                                       ; $400d: $57
    sub c                                         ; $400e: $91
    ld e, e                                       ; $400f: $5b
    db $10                                        ; $4010: $10
    ld e, a                                       ; $4011: $5f
    ld a, d                                       ; $4012: $7a
    ld h, e                                       ; $4013: $63
    ld c, d                                       ; $4014: $4a
    ld h, a                                       ; $4015: $67
    scf                                           ; $4016: $37
    ld l, e                                       ; $4017: $6b
    rra                                           ; $4018: $1f
    ld l, a                                       ; $4019: $6f
    ld b, e                                       ; $401a: $43
    ld [hl], e                                    ; $401b: $73
    ld [bc], a                                    ; $401c: $02
    ld [hl], a                                    ; $401d: $77
    sbc e                                         ; $401e: $9b
    ld a, d                                       ; $401f: $7a
    jr z, jr_056_4062                             ; $4020: $28 $40

    ld e, b                                       ; $4022: $58
    ld b, b                                       ; $4023: $40
    ld h, e                                       ; $4024: $63
    ld b, c                                       ; $4025: $41
    ld [hl+], a                                   ; $4026: $22
    ld b, h                                       ; $4027: $44
    rst $38                                       ; $4028: $ff
    ld a, a                                       ; $4029: $7f
    nop                                           ; $402a: $00
    ld a, h                                       ; $402b: $7c
    rra                                           ; $402c: $1f
    nop                                           ; $402d: $00
    ldh [rP1], a                                  ; $402e: $e0 $00
    rst $38                                       ; $4030: $ff
    ld a, a                                       ; $4031: $7f
    nop                                           ; $4032: $00
    ld a, h                                       ; $4033: $7c
    rra                                           ; $4034: $1f
    nop                                           ; $4035: $00
    ldh [rSC], a                                  ; $4036: $e0 $02
    db $10                                        ; $4038: $10
    ld b, d                                       ; $4039: $42
    db $10                                        ; $403a: $10
    ld b, d                                       ; $403b: $42
    db $10                                        ; $403c: $10
    ld b, d                                       ; $403d: $42
    db $10                                        ; $403e: $10
    ld b, d                                       ; $403f: $42
    db $10                                        ; $4040: $10
    ld b, d                                       ; $4041: $42

jr_056_4042:
    db $10                                        ; $4042: $10
    ld b, d                                       ; $4043: $42
    db $10                                        ; $4044: $10
    ld b, d                                       ; $4045: $42
    db $10                                        ; $4046: $10
    ld b, d                                       ; $4047: $42
    db $10                                        ; $4048: $10
    ld b, d                                       ; $4049: $42
    db $10                                        ; $404a: $10
    ld b, d                                       ; $404b: $42
    db $10                                        ; $404c: $10
    ld b, d                                       ; $404d: $42
    db $10                                        ; $404e: $10
    ld b, d                                       ; $404f: $42
    db $10                                        ; $4050: $10
    ld b, d                                       ; $4051: $42
    db $10                                        ; $4052: $10
    ld b, d                                       ; $4053: $42
    db $10                                        ; $4054: $10
    ld b, d                                       ; $4055: $42
    db $10                                        ; $4056: $10
    ld b, d                                       ; $4057: $42
    dec b                                         ; $4058: $05
    dec bc                                        ; $4059: $0b
    rst $38                                       ; $405a: $ff
    ldh a, [$0a]                                  ; $405b: $f0 $0a
    rst $38                                       ; $405d: $ff
    rst $38                                       ; $405e: $ff
    rst $20                                       ; $405f: $e7
    and $c0                                       ; $4060: $e6 $c0

jr_056_4062:
    rst $38                                       ; $4062: $ff
    ret nz                                        ; $4063: $c0

    rst $38                                       ; $4064: $ff
    ret nz                                        ; $4065: $c0

    rst $38                                       ; $4066: $ff
    nop                                           ; $4067: $00
    ret nz                                        ; $4068: $c0

    rst $38                                       ; $4069: $ff
    ret nz                                        ; $406a: $c0

    rst $38                                       ; $406b: $ff
    ret nz                                        ; $406c: $c0

    rst $38                                       ; $406d: $ff
    ret nz                                        ; $406e: $c0

    rst $38                                       ; $406f: $ff
    ret nz                                        ; $4070: $c0

    rst $38                                       ; $4071: $ff
    ret nz                                        ; $4072: $c0

    rst $38                                       ; $4073: $ff
    ret nz                                        ; $4074: $c0

    rst $38                                       ; $4075: $ff
    jp z, Jump_000_00ff                           ; $4076: $ca $ff $00

    ret nz                                        ; $4079: $c0

    rst $38                                       ; $407a: $ff
    rst $38                                       ; $407b: $ff
    rst $38                                       ; $407c: $ff
    ret nz                                        ; $407d: $c0

    rst $38                                       ; $407e: $ff
    rst $38                                       ; $407f: $ff
    rst $38                                       ; $4080: $ff
    ret nz                                        ; $4081: $c0

    rst $38                                       ; $4082: $ff
    ret nz                                        ; $4083: $c0

    rst $38                                       ; $4084: $ff
    ret nz                                        ; $4085: $c0

    rst $38                                       ; $4086: $ff
    ret nz                                        ; $4087: $c0

    rst $38                                       ; $4088: $ff
    nop                                           ; $4089: $00
    ret nz                                        ; $408a: $c0

    rst $38                                       ; $408b: $ff
    ret nz                                        ; $408c: $c0

    rst $38                                       ; $408d: $ff
    ret nz                                        ; $408e: $c0

    rst $38                                       ; $408f: $ff
    ret nz                                        ; $4090: $c0

    rst $38                                       ; $4091: $ff
    ret nz                                        ; $4092: $c0

    rst $38                                       ; $4093: $ff
    ret nz                                        ; $4094: $c0

    rst $38                                       ; $4095: $ff
    ret nz                                        ; $4096: $c0

    rst $38                                       ; $4097: $ff
    ret nz                                        ; $4098: $c0

    rst $38                                       ; $4099: $ff
    nop                                           ; $409a: $00
    rst $38                                       ; $409b: $ff
    rst $38                                       ; $409c: $ff
    rst $38                                       ; $409d: $ff
    rst $38                                       ; $409e: $ff
    rst $38                                       ; $409f: $ff
    rst $38                                       ; $40a0: $ff
    rst $38                                       ; $40a1: $ff
    rst $38                                       ; $40a2: $ff
    rst $38                                       ; $40a3: $ff
    rst $38                                       ; $40a4: $ff
    rst $38                                       ; $40a5: $ff
    rst $38                                       ; $40a6: $ff
    rst $38                                       ; $40a7: $ff
    rst $38                                       ; $40a8: $ff
    rst $38                                       ; $40a9: $ff
    rst $38                                       ; $40aa: $ff
    nop                                           ; $40ab: $00
    rst $38                                       ; $40ac: $ff
    rst $38                                       ; $40ad: $ff
    rst $38                                       ; $40ae: $ff
    rst $38                                       ; $40af: $ff
    rst $38                                       ; $40b0: $ff
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
    nop                                           ; $40bc: $00
    rst $38                                       ; $40bd: $ff
    rst $38                                       ; $40be: $ff
    rst $38                                       ; $40bf: $ff
    rst $38                                       ; $40c0: $ff
    rst $38                                       ; $40c1: $ff
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
    nop                                           ; $40cd: $00
    rst $38                                       ; $40ce: $ff
    rst $38                                       ; $40cf: $ff
    rst $38                                       ; $40d0: $ff
    rst $38                                       ; $40d1: $ff
    rst $38                                       ; $40d2: $ff
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
    nop                                           ; $40de: $00
    rst $38                                       ; $40df: $ff
    rst $38                                       ; $40e0: $ff

Jump_056_40e1:
    rst $38                                       ; $40e1: $ff
    rst $38                                       ; $40e2: $ff
    rst $38                                       ; $40e3: $ff
    rst $38                                       ; $40e4: $ff
    rst $38                                       ; $40e5: $ff
    rst $38                                       ; $40e6: $ff
    rst $38                                       ; $40e7: $ff
    rst $38                                       ; $40e8: $ff
    rst $38                                       ; $40e9: $ff
    rst $38                                       ; $40ea: $ff
    rst $38                                       ; $40eb: $ff
    rst $38                                       ; $40ec: $ff
    rst $38                                       ; $40ed: $ff
    rst $38                                       ; $40ee: $ff
    nop                                           ; $40ef: $00
    rst $38                                       ; $40f0: $ff
    rst $38                                       ; $40f1: $ff
    rst $38                                       ; $40f2: $ff
    rst $38                                       ; $40f3: $ff
    rst $38                                       ; $40f4: $ff
    rst $38                                       ; $40f5: $ff
    rst $38                                       ; $40f6: $ff
    rst $38                                       ; $40f7: $ff
    rst $38                                       ; $40f8: $ff
    rst $38                                       ; $40f9: $ff
    rst $38                                       ; $40fa: $ff
    rst $38                                       ; $40fb: $ff
    rst $38                                       ; $40fc: $ff
    rst $38                                       ; $40fd: $ff
    rst $38                                       ; $40fe: $ff

Call_056_40ff:
Jump_056_40ff:
    rst $38                                       ; $40ff: $ff
    nop                                           ; $4100: $00
    rst $38                                       ; $4101: $ff
    rst $38                                       ; $4102: $ff
    rst $38                                       ; $4103: $ff
    rst $38                                       ; $4104: $ff
    rst $38                                       ; $4105: $ff
    rst $38                                       ; $4106: $ff
    rst $38                                       ; $4107: $ff
    rst $38                                       ; $4108: $ff
    rst $38                                       ; $4109: $ff
    rst $38                                       ; $410a: $ff
    rst $38                                       ; $410b: $ff
    rst $38                                       ; $410c: $ff
    rst $38                                       ; $410d: $ff
    rst $38                                       ; $410e: $ff
    rst $38                                       ; $410f: $ff
    rst $38                                       ; $4110: $ff
    nop                                           ; $4111: $00
    rst $38                                       ; $4112: $ff
    rst $38                                       ; $4113: $ff
    ld d, b                                       ; $4114: $50
    rlca                                          ; $4115: $07
    call c, $c0ff                                 ; $4116: $dc $ff $c0
    rst $38                                       ; $4119: $ff
    rst $38                                       ; $411a: $ff
    rst $38                                       ; $411b: $ff
    ret nz                                        ; $411c: $c0

    rst $38                                       ; $411d: $ff
    rst $38                                       ; $411e: $ff
    rst $38                                       ; $411f: $ff
    ret nz                                        ; $4120: $c0

    rst $38                                       ; $4121: $ff
    nop                                           ; $4122: $00
    rst $38                                       ; $4123: $ff
    rst $38                                       ; $4124: $ff
    ret nz                                        ; $4125: $c0

    rst $38                                       ; $4126: $ff
    rst $38                                       ; $4127: $ff
    rst $38                                       ; $4128: $ff
    ret nz                                        ; $4129: $c0

    rst $38                                       ; $412a: $ff
    rst $38                                       ; $412b: $ff
    rst $38                                       ; $412c: $ff
    ret nz                                        ; $412d: $c0

    rst $38                                       ; $412e: $ff
    rst $38                                       ; $412f: $ff
    rst $38                                       ; $4130: $ff
    rst $38                                       ; $4131: $ff
    rst $38                                       ; $4132: $ff
    nop                                           ; $4133: $00
    rst $38                                       ; $4134: $ff
    rst $38                                       ; $4135: $ff
    rst $38                                       ; $4136: $ff
    rst $38                                       ; $4137: $ff
    rst $38                                       ; $4138: $ff
    rst $38                                       ; $4139: $ff
    rst $38                                       ; $413a: $ff
    rst $38                                       ; $413b: $ff
    rst $38                                       ; $413c: $ff
    rst $38                                       ; $413d: $ff
    rst $38                                       ; $413e: $ff
    rst $38                                       ; $413f: $ff
    rst $38                                       ; $4140: $ff
    rst $38                                       ; $4141: $ff
    rst $38                                       ; $4142: $ff
    rst $38                                       ; $4143: $ff
    nop                                           ; $4144: $00
    rst $38                                       ; $4145: $ff
    rst $38                                       ; $4146: $ff
    rst $38                                       ; $4147: $ff
    rst $38                                       ; $4148: $ff
    rst $38                                       ; $4149: $ff
    rst $38                                       ; $414a: $ff
    rst $38                                       ; $414b: $ff
    rst $38                                       ; $414c: $ff
    rst $38                                       ; $414d: $ff
    rst $38                                       ; $414e: $ff
    rst $38                                       ; $414f: $ff
    rst $38                                       ; $4150: $ff
    rst $38                                       ; $4151: $ff
    rst $38                                       ; $4152: $ff
    rst $38                                       ; $4153: $ff
    rst $38                                       ; $4154: $ff
    nop                                           ; $4155: $00
    rst $38                                       ; $4156: $ff
    rst $38                                       ; $4157: $ff
    rst $38                                       ; $4158: $ff
    rst $38                                       ; $4159: $ff
    rst $38                                       ; $415a: $ff
    rst $38                                       ; $415b: $ff
    rst $38                                       ; $415c: $ff
    rst $38                                       ; $415d: $ff
    rst $38                                       ; $415e: $ff
    rst $20                                       ; $415f: $e7
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    db $fd                                        ; $4163: $fd
    ld d, h                                       ; $4164: $54
    rst $38                                       ; $4165: $ff
    ldh a, [rNR42]                                ; $4166: $f0 $21
    ld b, d                                       ; $4168: $42
    ld b, d                                       ; $4169: $42
    ld b, d                                       ; $416a: $42
    ld hl, $ff09                                  ; $416b: $21 $09 $ff
    ld l, [hl]                                    ; $416e: $6e
    rrca                                          ; $416f: $0f
    ld b, $07                                     ; $4170: $06 $07
    ld [$0a09], sp                                ; $4172: $08 $09 $0a
    dec bc                                        ; $4175: $0b
    ccf                                           ; $4176: $3f
    inc c                                         ; $4177: $0c
    dec c                                         ; $4178: $0d
    ld l, [hl]                                    ; $4179: $6e
    rrca                                          ; $417a: $0f
    add hl, bc                                    ; $417b: $09
    ld b, d                                       ; $417c: $42
    db $ec                                        ; $417d: $ec
    ld [c], a                                     ; $417e: $e2
    db $fc                                        ; $417f: $fc
    ldh a, [$fd]                                  ; $4180: $f0 $fd
    ld h, h                                       ; $4182: $64
    rst $38                                       ; $4183: $ff
    ldh a, [rSTAT]                                ; $4184: $f0 $41
    inc hl                                        ; $4186: $23
    inc hl                                        ; $4187: $23
    inc hl                                        ; $4188: $23
    ld b, c                                       ; $4189: $41
    add hl, de                                    ; $418a: $19
    rst $38                                       ; $418b: $ff
    ld a, [hl]                                    ; $418c: $7e
    rra                                           ; $418d: $1f
    ld d, $17                                     ; $418e: $16 $17
    jr jr_056_41ab                                ; $4190: $18 $19

    ld a, [de]                                    ; $4192: $1a
    dec de                                        ; $4193: $1b
    ccf                                           ; $4194: $3f
    inc e                                         ; $4195: $1c
    dec e                                         ; $4196: $1d
    ld a, [hl]                                    ; $4197: $7e
    rra                                           ; $4198: $1f
    add hl, de                                    ; $4199: $19
    inc hl                                        ; $419a: $23
    db $ec                                        ; $419b: $ec
    ld [c], a                                     ; $419c: $e2
    db $fc                                        ; $419d: $fc
    ldh a, [$f9]                                  ; $419e: $f0 $f9
    ld [hl], h                                    ; $41a0: $74
    rst $38                                       ; $41a1: $ff
    ldh a, [$c0]                                  ; $41a2: $f0 $c0
    ld [c], a                                     ; $41a4: $e2
    add hl, hl                                    ; $41a5: $29
    adc [hl]                                      ; $41a6: $8e
    cpl                                           ; $41a7: $2f
    ld h, $27                                     ; $41a8: $26 $27
    rst $38                                       ; $41aa: $ff

jr_056_41ab:
    jr z, jr_056_41d6                             ; $41ab: $28 $29

    ld a, [hl+]                                   ; $41ad: $2a
    dec hl                                        ; $41ae: $2b
    inc l                                         ; $41af: $2c
    dec l                                         ; $41b0: $2d
    adc [hl]                                      ; $41b1: $8e
    cpl                                           ; $41b2: $2f
    push hl                                       ; $41b3: $e5
    add hl, hl                                    ; $41b4: $29
    ret nz                                        ; $41b5: $c0

    or $84                                        ; $41b6: $f6 $84
    rst $38                                       ; $41b8: $ff
    ldh a, [$80]                                  ; $41b9: $f0 $80
    ld [c], a                                     ; $41bb: $e2
    add hl, sp                                    ; $41bc: $39
    sbc [hl]                                      ; $41bd: $9e
    ccf                                           ; $41be: $3f
    rst $38                                       ; $41bf: $ff
    ld [hl], $37                                  ; $41c0: $36 $37
    jr c, jr_056_41fd                             ; $41c2: $38 $39

    ld a, [hl-]                                   ; $41c4: $3a
    dec sp                                        ; $41c5: $3b
    inc a                                         ; $41c6: $3c
    dec a                                         ; $41c7: $3d
    sub a                                         ; $41c8: $97
    sbc [hl]                                      ; $41c9: $9e
    ccf                                           ; $41ca: $3f
    add hl, sp                                    ; $41cb: $39
    add b                                         ; $41cc: $80
    or $94                                        ; $41cd: $f6 $94
    rst $38                                       ; $41cf: $ff
    ldh a, [rP1]                                  ; $41d0: $f0 $00
    ld [c], a                                     ; $41d2: $e2
    ld c, c                                       ; $41d3: $49
    rst $38                                       ; $41d4: $ff
    xor [hl]                                      ; $41d5: $ae

jr_056_41d6:
    ld c, a                                       ; $41d6: $4f
    ld b, [hl]                                    ; $41d7: $46
    ld b, a                                       ; $41d8: $47
    ld c, b                                       ; $41d9: $48
    ld c, c                                       ; $41da: $49
    ld c, d                                       ; $41db: $4a
    ld c, e                                       ; $41dc: $4b
    rra                                           ; $41dd: $1f
    ld c, h                                       ; $41de: $4c
    ld c, l                                       ; $41df: $4d
    xor [hl]                                      ; $41e0: $ae
    ld c, a                                       ; $41e1: $4f
    ld c, c                                       ; $41e2: $49
    nop                                           ; $41e3: $00
    or $c0                                        ; $41e4: $f6 $c0
    pop de                                        ; $41e6: $d1
    nop                                           ; $41e7: $00
    ld [c], a                                     ; $41e8: $e2
    dec sp                                        ; $41e9: $3b
    add hl, bc                                    ; $41ea: $09
    ld l, l                                       ; $41eb: $6d
    ret nz                                        ; $41ec: $c0

    add $6d                                       ; $41ed: $c6 $6d
    rrca                                          ; $41ef: $0f
    add hl, bc                                    ; $41f0: $09
    nop                                           ; $41f1: $00
    or $c0                                        ; $41f2: $f6 $c0

jr_056_41f4:
    rst $10                                       ; $41f4: $d7
    and l                                         ; $41f5: $a5
    ld a, l                                       ; $41f6: $7d
    ret nz                                        ; $41f7: $c0

    add $7d                                       ; $41f8: $c6 $7d
    ret nz                                        ; $41fa: $c0

    rst $18                                       ; $41fb: $df
    ret nz                                        ; $41fc: $c0

jr_056_41fd:
    ret nc                                        ; $41fd: $d0

    adc l                                         ; $41fe: $8d
    ret nz                                        ; $41ff: $c0

    add $8d                                       ; $4200: $c6 $8d
    ret c                                         ; $4202: $d8

    ret nz                                        ; $4203: $c0

    rst $18                                       ; $4204: $df
    cp c                                          ; $4205: $b9
    jp z, $c200                                   ; $4206: $ca $00 $c2

    add hl, sp                                    ; $4209: $39
    sbc l                                         ; $420a: $9d
    ret nz                                        ; $420b: $c0

    add $9d                                       ; $420c: $c6 $9d
    ccf                                           ; $420e: $3f
    or c                                          ; $420f: $b1
    add hl, sp                                    ; $4210: $39
    nop                                           ; $4211: $00
    sub $c0                                       ; $4212: $d6 $c0
    pop de                                        ; $4214: $d1
    nop                                           ; $4215: $00
    jp nz, $ad49                                  ; $4216: $c2 $49 $ad

    ret nz                                        ; $4219: $c0

    add $ad                                       ; $421a: $c6 $ad
    ld d, e                                       ; $421c: $53
    ld c, a                                       ; $421d: $4f
    ld c, c                                       ; $421e: $49
    ld b, b                                       ; $421f: $40
    or $c0                                        ; $4220: $f6 $c0
    rst $10                                       ; $4222: $d7
    ld l, h                                       ; $4223: $6c
    add b                                         ; $4224: $80
    and [hl]                                      ; $4225: $a6
    ld l, h                                       ; $4226: $6c
    ret nz                                        ; $4227: $c0

    rst $18                                       ; $4228: $df
    adc d                                         ; $4229: $8a
    add b                                         ; $422a: $80
    or b                                          ; $422b: $b0
    ld a, h                                       ; $422c: $7c
    add b                                         ; $422d: $80
    and [hl]                                      ; $422e: $a6
    ld a, h                                       ; $422f: $7c
    ret nz                                        ; $4230: $c0

    rst $18                                       ; $4231: $df
    ld a, c                                       ; $4232: $79
    xor d                                         ; $4233: $aa
    nop                                           ; $4234: $00
    and d                                         ; $4235: $a2
    add hl, hl                                    ; $4236: $29
    sbc l                                         ; $4237: $9d
    adc h                                         ; $4238: $8c
    add b                                         ; $4239: $80
    and [hl]                                      ; $423a: $a6
    adc h                                         ; $423b: $8c
    cpl                                           ; $423c: $2f
    add hl, hl                                    ; $423d: $29
    nop                                           ; $423e: $00
    or [hl]                                       ; $423f: $b6
    add b                                         ; $4240: $80
    or a                                          ; $4241: $b7
    sbc h                                         ; $4242: $9c
    ld d, d                                       ; $4243: $52
    add b                                         ; $4244: $80
    and [hl]                                      ; $4245: $a6
    sbc h                                         ; $4246: $9c
    add b                                         ; $4247: $80
    cp a                                          ; $4248: $bf
    ret nz                                        ; $4249: $c0

    ret nc                                        ; $424a: $d0

    xor h                                         ; $424b: $ac
    add b                                         ; $424c: $80
    and [hl]                                      ; $424d: $a6
    xor h                                         ; $424e: $ac
    ret nz                                        ; $424f: $c0

    ret c                                         ; $4250: $d8

    add hl, hl                                    ; $4251: $29
    and h                                         ; $4252: $a4
    rst $38                                       ; $4253: $ff
    ldh a, [$80]                                  ; $4254: $f0 $80
    and e                                         ; $4256: $a3
    ld l, e                                       ; $4257: $6b
    ld b, b                                       ; $4258: $40
    add [hl]                                      ; $4259: $86
    ld l, e                                       ; $425a: $6b
    ret nz                                        ; $425b: $c0

    ret c                                         ; $425c: $d8

    jr z, jr_056_41f4                             ; $425d: $28 $95

    ld [hl], a                                    ; $425f: $77
    ld hl, $7b19                                  ; $4260: $21 $19 $7b
    ld b, b                                       ; $4263: $40
    add [hl]                                      ; $4264: $86
    ld a, e                                       ; $4265: $7b
    rra                                           ; $4266: $1f
    add hl, de                                    ; $4267: $19
    nop                                           ; $4268: $00
    sub [hl]                                      ; $4269: $96
    ld l, $a8                                     ; $426a: $2e $a8
    push de                                       ; $426c: $d5
    ld b, c                                       ; $426d: $41
    add hl, hl                                    ; $426e: $29
    adc e                                         ; $426f: $8b
    ld b, b                                       ; $4270: $40
    add [hl]                                      ; $4271: $86
    adc e                                         ; $4272: $8b
    add b                                         ; $4273: $80
    cp b                                          ; $4274: $b8
    ret nz                                        ; $4275: $c0

    or $cb                                        ; $4276: $f6 $cb
    add hl, sp                                    ; $4278: $39
    sbc e                                         ; $4279: $9b
    ld b, b                                       ; $427a: $40
    add [hl]                                      ; $427b: $86
    sbc e                                         ; $427c: $9b
    ret nz                                        ; $427d: $c0

    ret c                                         ; $427e: $d8

    add b                                         ; $427f: $80
    or $49                                        ; $4280: $f6 $49
    xor e                                         ; $4282: $ab
    or d                                          ; $4283: $b2
    ld b, b                                       ; $4284: $40
    add [hl]                                      ; $4285: $86
    xor e                                         ; $4286: $ab
    add b                                         ; $4287: $80
    cp b                                          ; $4288: $b8
    nop                                           ; $4289: $00
    or $09                                        ; $428a: $f6 $09
    ld l, d                                       ; $428c: $6a
    nop                                           ; $428d: $00
    ld h, [hl]                                    ; $428e: $66
    ld l, d                                       ; $428f: $6a
    inc l                                         ; $4290: $2c
    nop                                           ; $4291: $00
    ld a, b                                       ; $4292: $78
    nop                                           ; $4293: $00
    or $19                                        ; $4294: $f6 $19
    ld a, d                                       ; $4296: $7a
    nop                                           ; $4297: $00
    ld h, [hl]                                    ; $4298: $66
    ld a, d                                       ; $4299: $7a
    add b                                         ; $429a: $80
    cp b                                          ; $429b: $b8
    ret nz                                        ; $429c: $c0

    rst $10                                       ; $429d: $d7
    and l                                         ; $429e: $a5
    adc d                                         ; $429f: $8a
    nop                                           ; $42a0: $00
    ld h, [hl]                                    ; $42a1: $66
    adc d                                         ; $42a2: $8a
    ret nz                                        ; $42a3: $c0

    rst $18                                       ; $42a4: $df
    ret nz                                        ; $42a5: $c0

    ret nc                                        ; $42a6: $d0

    sbc d                                         ; $42a7: $9a
    nop                                           ; $42a8: $00
    ld h, [hl]                                    ; $42a9: $66
    sbc d                                         ; $42aa: $9a
    inc l                                         ; $42ab: $2c
    add b                                         ; $42ac: $80
    cp b                                          ; $42ad: $b8
    nop                                           ; $42ae: $00
    sub $49                                       ; $42af: $d6 $49
    xor d                                         ; $42b1: $aa
    nop                                           ; $42b2: $00
    ld h, [hl]                                    ; $42b3: $66
    xor d                                         ; $42b4: $aa
    nop                                           ; $42b5: $00
    ld a, b                                       ; $42b6: $78
    nop                                           ; $42b7: $00
    sub $4b                                       ; $42b8: $d6 $4b
    add hl, bc                                    ; $42ba: $09
    ld l, c                                       ; $42bb: $69
    ret nz                                        ; $42bc: $c0

    ld h, $69                                     ; $42bd: $26 $69
    ld b, b                                       ; $42bf: $40
    sbc b                                         ; $42c0: $98
    ret nz                                        ; $42c1: $c0

    rst $10                                       ; $42c2: $d7
    ld a, c                                       ; $42c3: $79
    ret nz                                        ; $42c4: $c0

    ld h, $29                                     ; $42c5: $26 $29
    ld a, c                                       ; $42c7: $79
    ret nz                                        ; $42c8: $c0

    rst $18                                       ; $42c9: $df
    add b                                         ; $42ca: $80
    or b                                          ; $42cb: $b0
    adc c                                         ; $42cc: $89
    ret nz                                        ; $42cd: $c0

    ld h, $89                                     ; $42ce: $26 $89
    nop                                           ; $42d0: $00
    ld a, b                                       ; $42d1: $78
    nop                                           ; $42d2: $00
    or [hl]                                       ; $42d3: $b6
    ld c, e                                       ; $42d4: $4b
    add hl, sp                                    ; $42d5: $39
    sbc c                                         ; $42d6: $99
    ret nz                                        ; $42d7: $c0

    ld h, $99                                     ; $42d8: $26 $99
    nop                                           ; $42da: $00
    ld a, b                                       ; $42db: $78
    add b                                         ; $42dc: $80
    or a                                          ; $42dd: $b7
    xor c                                         ; $42de: $a9
    ret nz                                        ; $42df: $c0

    ld h, $29                                     ; $42e0: $26 $29
    xor c                                         ; $42e2: $a9
    nop                                           ; $42e3: $00
    ld a, b                                       ; $42e4: $78
    ret nz                                        ; $42e5: $c0

    rst $10                                       ; $42e6: $d7
    ld l, b                                       ; $42e7: $68
    add b                                         ; $42e8: $80
    ld b, $68                                     ; $42e9: $06 $68
    ret nz                                        ; $42eb: $c0

    rst $18                                       ; $42ec: $df
    add b                                         ; $42ed: $80
    or b                                          ; $42ee: $b0

jr_056_42ef:
    ld h, l                                       ; $42ef: $65
    ld a, b                                       ; $42f0: $78
    add b                                         ; $42f1: $80
    ld b, $78                                     ; $42f2: $06 $78
    nop                                           ; $42f4: $00

jr_056_42f5:
    ld a, b                                       ; $42f5: $78
    nop                                           ; $42f6: $00
    sub [hl]                                      ; $42f7: $96
    add hl, hl                                    ; $42f8: $29
    adc b                                         ; $42f9: $88
    add b                                         ; $42fa: $80
    ld b, $29                                     ; $42fb: $06 $29
    adc b                                         ; $42fd: $88
    nop                                           ; $42fe: $00
    ld a, b                                       ; $42ff: $78
    ld b, b                                       ; $4300: $40
    sub a                                         ; $4301: $97
    sbc b                                         ; $4302: $98
    add b                                         ; $4303: $80
    ld b, $98                                     ; $4304: $06 $98
    ld b, b                                       ; $4306: $40
    sbc a                                         ; $4307: $9f
    ld b, b                                       ; $4308: $40
    sub b                                         ; $4309: $90
    and l                                         ; $430a: $a5
    xor b                                         ; $430b: $a8
    add b                                         ; $430c: $80
    ld b, $a8                                     ; $430d: $06 $a8
    ret nz                                        ; $430f: $c0

    rst $18                                       ; $4310: $df
    add b                                         ; $4311: $80
    or b                                          ; $4312: $b0
    ld h, a                                       ; $4313: $67
    add b                                         ; $4314: $80
    ld b, $67                                     ; $4315: $06 $67
    sub h                                         ; $4317: $94
    nop                                           ; $4318: $00
    ld a, a                                       ; $4319: $7f
    nop                                           ; $431a: $00
    ld [hl], b                                    ; $431b: $70
    ld [hl], a                                    ; $431c: $77
    add b                                         ; $431d: $80
    ld b, $77                                     ; $431e: $06 $77
    nop                                           ; $4320: $00
    ld a, a                                       ; $4321: $7f
    nop                                           ; $4322: $00
    ld [hl], b                                    ; $4323: $70
    add a                                         ; $4324: $87
    ld d, d                                       ; $4325: $52
    add b                                         ; $4326: $80
    ld b, $87                                     ; $4327: $06 $87
    ld b, b                                       ; $4329: $40
    sbc a                                         ; $432a: $9f
    nop                                           ; $432b: $00
    ld [hl], b                                    ; $432c: $70
    sub a                                         ; $432d: $97
    add b                                         ; $432e: $80
    ld b, $97                                     ; $432f: $06 $97
    ret nz                                        ; $4331: $c0

    rst $18                                       ; $4332: $df
    ld c, d                                       ; $4333: $4a
    nop                                           ; $4334: $00
    ld [hl], b                                    ; $4335: $70
    and a                                         ; $4336: $a7
    add b                                         ; $4337: $80
    ld b, $a7                                     ; $4338: $06 $a7
    nop                                           ; $433a: $00
    ld a, a                                       ; $433b: $7f
    nop                                           ; $433c: $00
    ld [hl], b                                    ; $433d: $70
    ld h, [hl]                                    ; $433e: $66
    add b                                         ; $433f: $80
    ld b, $29                                     ; $4340: $06 $29
    ld h, [hl]                                    ; $4342: $66
    nop                                           ; $4343: $00
    ld a, a                                       ; $4344: $7f
    nop                                           ; $4345: $00
    ld [hl], b                                    ; $4346: $70
    halt                                          ; $4347: $76
    add b                                         ; $4348: $80
    ld b, $76                                     ; $4349: $06 $76
    ld b, b                                       ; $434b: $40
    sbc a                                         ; $434c: $9f
    ret nz                                        ; $434d: $c0

    jr nc, jr_056_42f5                            ; $434e: $30 $a5

    add [hl]                                      ; $4350: $86
    add b                                         ; $4351: $80
    ld b, $86                                     ; $4352: $06 $86
    ret nz                                        ; $4354: $c0

    rst $18                                       ; $4355: $df
    ret nz                                        ; $4356: $c0

    jr nc, jr_056_42ef                            ; $4357: $30 $96

    add b                                         ; $4359: $80
    ld b, $96                                     ; $435a: $06 $96
    call nc, Call_056_7f00                        ; $435c: $d4 $00 $7f
    nop                                           ; $435f: $00
    ld [hl], b                                    ; $4360: $70
    and [hl]                                      ; $4361: $a6
    add b                                         ; $4362: $80
    ld b, $a6                                     ; $4363: $06 $a6
    nop                                           ; $4365: $00
    ld h, [hl]                                    ; $4366: $66
    ld c, c                                       ; $4367: $49
    ld c, d                                       ; $4368: $4a
    ld d, e                                       ; $4369: $53
    ld c, c                                       ; $436a: $49
    ld c, d                                       ; $436b: $4a
    nop                                           ; $436c: $00
    rst $38                                       ; $436d: $ff
    add b                                         ; $436e: $80
    inc bc                                        ; $436f: $03
    ld c, $80                                     ; $4370: $0e $80
    ld b, $0e                                     ; $4372: $06 $0e
    ld b, b                                       ; $4374: $40
    add [hl]                                      ; $4375: $86
    ld c, a                                       ; $4376: $4f
    add hl, bc                                    ; $4377: $09
    ld a, [bc]                                    ; $4378: $0a
    and h                                         ; $4379: $a4
    and l                                         ; $437a: $a5
    ld b, h                                       ; $437b: $44
    rst $38                                       ; $437c: $ff
    ret nz                                        ; $437d: $c0

    inc hl                                        ; $437e: $23
    ld e, $80                                     ; $437f: $1e $80
    ld b, $3d                                     ; $4381: $06 $3d
    ld e, $c0                                     ; $4383: $1e $c0
    add $19                                       ; $4385: $c6 $19
    ld a, [de]                                    ; $4387: $1a
    ld h, h                                       ; $4388: $64
    ld h, l                                       ; $4389: $65
    call nz, $80ff                                ; $438a: $c4 $ff $80
    inc bc                                        ; $438d: $03
    push af                                       ; $438e: $f5
    ld l, $80                                     ; $438f: $2e $80
    ld b, $2e                                     ; $4391: $06 $2e
    ret nz                                        ; $4393: $c0

    add $29                                       ; $4394: $c6 $29
    ld a, [hl+]                                   ; $4396: $2a
    ld [hl], h                                    ; $4397: $74
    ld [hl], l                                    ; $4398: $75
    call nc, $ff00                                ; $4399: $d4 $00 $ff
    nop                                           ; $439c: $00
    ld h, e                                       ; $439d: $63
    ld a, $80                                     ; $439e: $3e $80
    ld b, $3e                                     ; $43a0: $06 $3e
    nop                                           ; $43a2: $00
    ld h, [hl]                                    ; $43a3: $66
    add hl, sp                                    ; $43a4: $39
    ld a, [hl-]                                   ; $43a5: $3a
    ld d, e                                       ; $43a6: $53
    add h                                         ; $43a7: $84
    add l                                         ; $43a8: $85
    nop                                           ; $43a9: $00
    rst $38                                       ; $43aa: $ff
    add b                                         ; $43ab: $80
    inc bc                                        ; $43ac: $03
    ld c, [hl]                                    ; $43ad: $4e
    add b                                         ; $43ae: $80
    ld b, $4e                                     ; $43af: $06 $4e
    ld b, b                                       ; $43b1: $40
    add [hl]                                      ; $43b2: $86
    rst $08                                       ; $43b3: $cf
    ld c, c                                       ; $43b4: $49
    ld c, d                                       ; $43b5: $4a
    sub h                                         ; $43b6: $94
    sub l                                         ; $43b7: $95
    ld b, h                                       ; $43b8: $44
    rst $38                                       ; $43b9: $ff
    ret nz                                        ; $43ba: $c0

    inc hl                                        ; $43bb: $23
    add hl, bc                                    ; $43bc: $09
    add hl, bc                                    ; $43bd: $09
    sbc b                                         ; $43be: $98
    add b                                         ; $43bf: $80
    dec b                                         ; $43c0: $05
    push af                                       ; $43c1: $f5
    ldh [$c0], a                                  ; $43c2: $e0 $c0
    add $54                                       ; $43c4: $c6 $54
    ld d, l                                       ; $43c6: $55
    call nz, $80ff                                ; $43c7: $c4 $ff $80
    inc bc                                        ; $43ca: $03
    add hl, de                                    ; $43cb: $19
    ld h, c                                       ; $43cc: $61
    add hl, de                                    ; $43cd: $19
    add b                                         ; $43ce: $80
    dec b                                         ; $43cf: $05
    push af                                       ; $43d0: $f5
    ldh [$c0], a                                  ; $43d1: $e0 $c0
    sub $00                                       ; $43d3: $d6 $00
    ld [hl], a                                    ; $43d5: $77
    add hl, hl                                    ; $43d6: $29
    add hl, hl                                    ; $43d7: $29
    add b                                         ; $43d8: $80
    dec b                                         ; $43d9: $05
    inc a                                         ; $43da: $3c
    push af                                       ; $43db: $f5
    ldh [rP1], a                                  ; $43dc: $e0 $00
    and h                                         ; $43de: $a4
    add hl, hl                                    ; $43df: $29
    ld a, [hl+]                                   ; $43e0: $2a
    add hl, hl                                    ; $43e1: $29
    ld a, [hl+]                                   ; $43e2: $2a
    nop                                           ; $43e3: $00
    rst $38                                       ; $43e4: $ff
    add b                                         ; $43e5: $80
    inc bc                                        ; $43e6: $03
    jp Jump_000_3939                              ; $43e7: $c3 $39 $39


    add b                                         ; $43ea: $80
    dec b                                         ; $43eb: $05
    push af                                       ; $43ec: $f5
    ldh [$50], a                                  ; $43ed: $e0 $50
    rst $38                                       ; $43ef: $ff
    ret nz                                        ; $43f0: $c0

    ld l, $49                                     ; $43f1: $2e $49
    ld c, c                                       ; $43f3: $49
    nop                                           ; $43f4: $00
    add b                                         ; $43f5: $80
    dec b                                         ; $43f6: $05
    push af                                       ; $43f7: $f5
    ldh [$d0], a                                  ; $43f8: $e0 $d0
    rst $38                                       ; $43fa: $ff
    db $fc                                        ; $43fb: $fc
    rst $38                                       ; $43fc: $ff
    nop                                           ; $43fd: $00
    cp a                                          ; $43fe: $bf
    db $fc                                        ; $43ff: $fc
    rst $38                                       ; $4400: $ff
    nop                                           ; $4401: $00
    sbc a                                         ; $4402: $9f
    db $fc                                        ; $4403: $fc
    rst $38                                       ; $4404: $ff
    nop                                           ; $4405: $00
    db $fc                                        ; $4406: $fc
    rst $38                                       ; $4407: $ff
    db $fc                                        ; $4408: $fc
    rst $38                                       ; $4409: $ff
    db $fc                                        ; $440a: $fc
    rst $38                                       ; $440b: $ff
    db $fc                                        ; $440c: $fc
    rst $38                                       ; $440d: $ff
    nop                                           ; $440e: $00
    rst $38                                       ; $440f: $ff
    db $fc                                        ; $4410: $fc
    rst $38                                       ; $4411: $ff
    nop                                           ; $4412: $00
    rst $38                                       ; $4413: $ff
    db $fc                                        ; $4414: $fc
    rst $38                                       ; $4415: $ff
    nop                                           ; $4416: $00
    db $fc                                        ; $4417: $fc
    rst $38                                       ; $4418: $ff
    db $fc                                        ; $4419: $fc
    rst $38                                       ; $441a: $ff
    db $fc                                        ; $441b: $fc
    rst $38                                       ; $441c: $ff
    nop                                           ; $441d: $00
    db $f4                                        ; $441e: $f4
    nop                                           ; $441f: $00
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    ld bc, $ff00                                  ; $4422: $01 $00 $ff
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
    ld a, [c]                                     ; $442f: $f2
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    dec sp                                        ; $4433: $3b
    ld b, h                                       ; $4434: $44
    ld l, e                                       ; $4435: $6b
    ld b, h                                       ; $4436: $44
    or $45                                        ; $4437: $f6 $45
    and d                                         ; $4439: $a2
    ld b, a                                       ; $443a: $47
    ld [$c503], a                                 ; $443b: $ea $03 $c5
    ld b, $e2                                     ; $443e: $06 $e2
    ld bc, $00a0                                  ; $4440: $01 $a0 $00
    ld [$f003], a                                 ; $4443: $ea $03 $f0
    inc bc                                        ; $4446: $03
    push bc                                       ; $4447: $c5
    ld b, $e2                                     ; $4448: $06 $e2
    ld bc, $023f                                  ; $444a: $01 $3f $02
    xor e                                         ; $444d: $ab
    nop                                           ; $444e: $00
    inc sp                                        ; $444f: $33
    ld bc, $06c5                                  ; $4450: $01 $c5 $06
    ld [$0825], sp                                ; $4453: $08 $25 $08
    dec h                                         ; $4456: $25
    ld [$0825], sp                                ; $4457: $08 $25 $08
    dec h                                         ; $445a: $25
    ld [$0825], sp                                ; $445b: $08 $25 $08
    dec h                                         ; $445e: $25
    ld [$0825], sp                                ; $445f: $08 $25 $08
    dec h                                         ; $4462: $25
    ld [$0825], sp                                ; $4463: $08 $25 $08
    dec h                                         ; $4466: $25
    ld [$0825], sp                                ; $4467: $08 $25 $08
    dec h                                         ; $446a: $25
    db $fd                                        ; $446b: $fd
    dec bc                                        ; $446c: $0b
    rst $38                                       ; $446d: $ff
    db $eb                                        ; $446e: $eb
    dec hl                                        ; $446f: $2b
    dec bc                                        ; $4470: $0b
    dec bc                                        ; $4471: $0b
    ld a, [bc]                                    ; $4472: $0a
    dec bc                                        ; $4473: $0b
    inc c                                         ; $4474: $0c
    db $fc                                        ; $4475: $fc
    rst $38                                       ; $4476: $ff
    rst $38                                       ; $4477: $ff
    rst $20                                       ; $4478: $e7
    and $0a                                       ; $4479: $e6 $0a
    ld l, e                                       ; $447b: $6b
    dec bc                                        ; $447c: $0b
    ld l, e                                       ; $447d: $6b
    ld l, e                                       ; $447e: $6b
    ld c, e                                       ; $447f: $4b
    ld d, $ff                                     ; $4480: $16 $ff
    push hl                                       ; $4482: $e5
    dec bc                                        ; $4483: $0b
    ld c, e                                       ; $4484: $4b
    pop bc                                        ; $4485: $c1
    ldh [$2b], a                                  ; $4486: $e0 $2b
    jp z, $e8ff                                   ; $4488: $ca $ff $e8

    rst $20                                       ; $448b: $e7
    jp nz, $1be0                                  ; $448c: $c2 $e0 $1b

    ld l, e                                       ; $448f: $6b
    dec hl                                        ; $4490: $2b
    rst $38                                       ; $4491: $ff
    ld [c], a                                     ; $4492: $e2
    dec bc                                        ; $4493: $0b
    dec bc                                        ; $4494: $0b
    cp a                                          ; $4495: $bf
    pop hl                                        ; $4496: $e1
    ld hl, sp-$1f                                 ; $4497: $f8 $e1
    jp z, Jump_000_10ff                           ; $4499: $ca $ff $10

    add sp, -$19                                  ; $449c: $e8 $e7
    add c                                         ; $449e: $81
    ldh [$c1], a                                  ; $449f: $e0 $c1
    db $e3                                        ; $44a1: $e3
    ret nz                                        ; $44a2: $c0

    db $e4                                        ; $44a3: $e4
    ld c, e                                       ; $44a4: $4b
    or e                                          ; $44a5: $b3
    ldh [$ca], a                                  ; $44a6: $e0 $ca
    rst $38                                       ; $44a8: $ff
    ret nz                                        ; $44a9: $c0

    jp hl                                         ; $44aa: $e9


    ld b, b                                       ; $44ab: $40
    adc l                                         ; $44ac: $8d
    ldh [$80], a                                  ; $44ad: $e0 $80
    and $f2                                       ; $44af: $e6 $f2
    ldh [rIE], a                                  ; $44b1: $e0 $ff
    ret nz                                        ; $44b3: $c0

    jp z, $e8ff                                   ; $44b4: $ca $ff $e8

    rst $20                                       ; $44b7: $e7
    dec hl                                        ; $44b8: $2b
    pop bc                                        ; $44b9: $c1
    ld [c], a                                     ; $44ba: $e2
    add b                                         ; $44bb: $80
    cp e                                          ; $44bc: $bb
    pop hl                                        ; $44bd: $e1
    ld b, b                                       ; $44be: $40
    pop hl                                        ; $44bf: $e1

jr_056_44c0:
    pop bc                                        ; $44c0: $c1
    jp nz, $ff40                                  ; $44c1: $c2 $40 $ff

    ret nz                                        ; $44c4: $c0

    ldh a, [$78]                                  ; $44c5: $f0 $78
    ret nz                                        ; $44c7: $c0

    ret nz                                        ; $44c8: $c0

    pop bc                                        ; $44c9: $c1
    dec bc                                        ; $44ca: $0b
    nop                                           ; $44cb: $00
    ld a, [hl]                                    ; $44cc: $7e
    pop hl                                        ; $44cd: $e1
    jp z, $c0ff                                   ; $44ce: $ca $ff $c0

    ret z                                         ; $44d1: $c8

    call $c0c1                                    ; $44d2: $cd $c1 $c0
    ld [c], a                                     ; $44d5: $e2
    pop bc                                        ; $44d6: $c1
    ld [c], a                                     ; $44d7: $e2
    ccf                                           ; $44d8: $3f
    pop bc                                        ; $44d9: $c1
    ret nz                                        ; $44da: $c0

    rst $38                                       ; $44db: $ff
    nop                                           ; $44dc: $00
    ld b, b                                       ; $44dd: $40
    ret                                           ; $44de: $c9


    cp a                                          ; $44df: $bf
    ld [c], a                                     ; $44e0: $e2
    ld b, c                                       ; $44e1: $41
    rst $00                                       ; $44e2: $c7
    cp $a1                                        ; $44e3: $fe $a1
    jp z, Jump_056_40ff                           ; $44e5: $ca $ff $40

    ret z                                         ; $44e8: $c8

    ld c, c                                       ; $44e9: $49
    ret nz                                        ; $44ea: $c0

    ccf                                           ; $44eb: $3f
    ret nz                                        ; $44ec: $c0

    nop                                           ; $44ed: $00
    ld [bc], a                                    ; $44ee: $02
    jp $e1c0                                      ; $44ef: $c3 $c0 $e1


    ret nz                                        ; $44f2: $c0

    cp a                                          ; $44f3: $bf
    ret nz                                        ; $44f4: $c0

    db $ec                                        ; $44f5: $ec
    ld a, [hl]                                    ; $44f6: $7e
    ldh [rIE], a                                  ; $44f7: $e0 $ff
    and b                                         ; $44f9: $a0
    ret nz                                        ; $44fa: $c0

    db $e3                                        ; $44fb: $e3
    ld b, c                                       ; $44fc: $41
    ld [c], a                                     ; $44fd: $e2
    jr z, jr_056_44c0                             ; $44fe: $28 $c0

    rst $38                                       ; $4500: $ff
    ld b, b                                       ; $4501: $40
    ld [$c1c6], a                                 ; $4502: $ea $c6 $c1
    dec hl                                        ; $4505: $2b
    call nz, $6ba1                                ; $4506: $c4 $a1 $6b
    inc [hl]                                      ; $4509: $34
    pop bc                                        ; $450a: $c1
    ret nz                                        ; $450b: $c0

    rst $38                                       ; $450c: $ff
    ld d, $c0                                     ; $450d: $16 $c0
    rst $28                                       ; $450f: $ef
    dec hl                                        ; $4510: $2b
    ld l, e                                       ; $4511: $6b
    ret nz                                        ; $4512: $c0

    ldh [$2b], a                                  ; $4513: $e0 $2b
    add l                                         ; $4515: $85
    jp nz, $ffc0                                  ; $4516: $c2 $c0 $ff

    nop                                           ; $4519: $00
    rst $28                                       ; $451a: $ef
    ld b, e                                       ; $451b: $43
    ld a, [bc]                                    ; $451c: $0a
    dec hl                                        ; $451d: $2b
    cp $80                                        ; $451e: $fe $80
    ret nz                                        ; $4520: $c0

    add a                                         ; $4521: $87
    ret nz                                        ; $4522: $c0

    rst $38                                       ; $4523: $ff
    ret nz                                        ; $4524: $c0

    call z, $8a2b                                 ; $4525: $cc $2b $8a
    and d                                         ; $4528: $a2
    nop                                           ; $4529: $00
    ret nz                                        ; $452a: $c0

    rst $38                                       ; $452b: $ff
    nop                                           ; $452c: $00
    push af                                       ; $452d: $f5
    add c                                         ; $452e: $81
    add sp, -$40                                  ; $452f: $e8 $c0
    rst $38                                       ; $4531: $ff
    rst $38                                       ; $4532: $ff
    rst $38                                       ; $4533: $ff
    rst $38                                       ; $4534: $ff
    rst $38                                       ; $4535: $ff
    rst $38                                       ; $4536: $ff
    rst $38                                       ; $4537: $ff
    rst $38                                       ; $4538: $ff
    rst $38                                       ; $4539: $ff
    nop                                           ; $453a: $00
    rst $38                                       ; $453b: $ff
    rst $38                                       ; $453c: $ff
    rst $38                                       ; $453d: $ff
    rst $38                                       ; $453e: $ff
    rst $38                                       ; $453f: $ff
    rst $38                                       ; $4540: $ff
    rst $38                                       ; $4541: $ff
    rst $38                                       ; $4542: $ff
    rst $38                                       ; $4543: $ff
    rst $38                                       ; $4544: $ff
    rst $38                                       ; $4545: $ff
    rst $38                                       ; $4546: $ff
    rst $38                                       ; $4547: $ff
    rst $38                                       ; $4548: $ff
    rst $38                                       ; $4549: $ff
    rst $38                                       ; $454a: $ff
    nop                                           ; $454b: $00
    rst $38                                       ; $454c: $ff
    rst $38                                       ; $454d: $ff
    rst $38                                       ; $454e: $ff
    rst $38                                       ; $454f: $ff
    rst $38                                       ; $4550: $ff
    rst $38                                       ; $4551: $ff
    rst $38                                       ; $4552: $ff
    rst $38                                       ; $4553: $ff
    rst $38                                       ; $4554: $ff
    rst $38                                       ; $4555: $ff
    rst $38                                       ; $4556: $ff
    rst $38                                       ; $4557: $ff
    rst $38                                       ; $4558: $ff
    rst $38                                       ; $4559: $ff
    rst $38                                       ; $455a: $ff
    rst $38                                       ; $455b: $ff
    nop                                           ; $455c: $00
    rst $38                                       ; $455d: $ff
    rst $38                                       ; $455e: $ff
    rst $38                                       ; $455f: $ff
    rst $38                                       ; $4560: $ff
    rst $38                                       ; $4561: $ff
    rst $38                                       ; $4562: $ff
    rst $38                                       ; $4563: $ff
    rst $38                                       ; $4564: $ff
    rst $38                                       ; $4565: $ff
    rst $38                                       ; $4566: $ff
    rst $38                                       ; $4567: $ff
    rst $38                                       ; $4568: $ff
    rst $38                                       ; $4569: $ff
    rst $38                                       ; $456a: $ff
    rst $38                                       ; $456b: $ff
    rst $38                                       ; $456c: $ff
    nop                                           ; $456d: $00
    rst $38                                       ; $456e: $ff
    rst $38                                       ; $456f: $ff
    rst $38                                       ; $4570: $ff
    rst $38                                       ; $4571: $ff
    rst $38                                       ; $4572: $ff
    rst $38                                       ; $4573: $ff
    rst $38                                       ; $4574: $ff
    rst $38                                       ; $4575: $ff
    rst $38                                       ; $4576: $ff
    rst $38                                       ; $4577: $ff
    rst $38                                       ; $4578: $ff
    rst $38                                       ; $4579: $ff
    rst $38                                       ; $457a: $ff
    rst $38                                       ; $457b: $ff
    rst $38                                       ; $457c: $ff
    rst $38                                       ; $457d: $ff
    nop                                           ; $457e: $00
    rst $38                                       ; $457f: $ff
    rst $38                                       ; $4580: $ff
    rst $38                                       ; $4581: $ff
    rst $38                                       ; $4582: $ff
    rst $38                                       ; $4583: $ff
    rst $38                                       ; $4584: $ff
    rst $38                                       ; $4585: $ff
    rst $38                                       ; $4586: $ff
    rst $38                                       ; $4587: $ff
    rst $38                                       ; $4588: $ff
    rst $38                                       ; $4589: $ff
    rst $38                                       ; $458a: $ff
    rst $38                                       ; $458b: $ff
    rst $38                                       ; $458c: $ff
    rst $38                                       ; $458d: $ff
    rst $38                                       ; $458e: $ff
    nop                                           ; $458f: $00
    rst $38                                       ; $4590: $ff
    rst $38                                       ; $4591: $ff
    rst $38                                       ; $4592: $ff
    rst $38                                       ; $4593: $ff
    rst $38                                       ; $4594: $ff
    rst $38                                       ; $4595: $ff
    rst $38                                       ; $4596: $ff
    rst $38                                       ; $4597: $ff
    rst $38                                       ; $4598: $ff
    rst $38                                       ; $4599: $ff
    rst $38                                       ; $459a: $ff
    rst $38                                       ; $459b: $ff
    rst $38                                       ; $459c: $ff
    rst $38                                       ; $459d: $ff
    rst $38                                       ; $459e: $ff
    rst $38                                       ; $459f: $ff
    nop                                           ; $45a0: $00
    rst $38                                       ; $45a1: $ff
    rst $38                                       ; $45a2: $ff
    rst $38                                       ; $45a3: $ff
    rst $38                                       ; $45a4: $ff
    rst $38                                       ; $45a5: $ff
    rst $38                                       ; $45a6: $ff
    rst $38                                       ; $45a7: $ff
    rst $38                                       ; $45a8: $ff
    rst $38                                       ; $45a9: $ff
    rst $38                                       ; $45aa: $ff
    rst $38                                       ; $45ab: $ff
    rst $38                                       ; $45ac: $ff
    rst $38                                       ; $45ad: $ff
    rst $38                                       ; $45ae: $ff
    rst $38                                       ; $45af: $ff
    rst $38                                       ; $45b0: $ff
    nop                                           ; $45b1: $00
    rst $38                                       ; $45b2: $ff
    rst $38                                       ; $45b3: $ff
    rst $38                                       ; $45b4: $ff
    rst $38                                       ; $45b5: $ff
    rst $38                                       ; $45b6: $ff
    rst $38                                       ; $45b7: $ff
    rst $38                                       ; $45b8: $ff
    rst $38                                       ; $45b9: $ff
    rst $38                                       ; $45ba: $ff
    rst $38                                       ; $45bb: $ff
    rst $38                                       ; $45bc: $ff
    rst $38                                       ; $45bd: $ff
    rst $38                                       ; $45be: $ff
    rst $38                                       ; $45bf: $ff
    rst $38                                       ; $45c0: $ff
    rst $38                                       ; $45c1: $ff
    nop                                           ; $45c2: $00
    rst $38                                       ; $45c3: $ff
    rst $38                                       ; $45c4: $ff
    rst $38                                       ; $45c5: $ff
    rst $38                                       ; $45c6: $ff
    rst $38                                       ; $45c7: $ff
    rst $38                                       ; $45c8: $ff
    rst $38                                       ; $45c9: $ff
    rst $38                                       ; $45ca: $ff
    rst $38                                       ; $45cb: $ff
    rst $38                                       ; $45cc: $ff
    rst $38                                       ; $45cd: $ff
    rst $38                                       ; $45ce: $ff
    rst $38                                       ; $45cf: $ff
    rst $38                                       ; $45d0: $ff
    rst $38                                       ; $45d1: $ff
    rst $38                                       ; $45d2: $ff
    nop                                           ; $45d3: $00
    rst $38                                       ; $45d4: $ff
    rst $38                                       ; $45d5: $ff
    rst $38                                       ; $45d6: $ff
    rst $38                                       ; $45d7: $ff
    rst $38                                       ; $45d8: $ff
    rst $38                                       ; $45d9: $ff
    rst $38                                       ; $45da: $ff
    rst $38                                       ; $45db: $ff
    rst $38                                       ; $45dc: $ff
    rst $38                                       ; $45dd: $ff
    rst $38                                       ; $45de: $ff
    rst $38                                       ; $45df: $ff
    rst $38                                       ; $45e0: $ff
    rst $38                                       ; $45e1: $ff
    rst $38                                       ; $45e2: $ff

Jump_056_45e3:
    rst $38                                       ; $45e3: $ff
    nop                                           ; $45e4: $00
    rst $38                                       ; $45e5: $ff
    rst $38                                       ; $45e6: $ff
    rst $38                                       ; $45e7: $ff
    rst $38                                       ; $45e8: $ff
    rst $38                                       ; $45e9: $ff
    rst $38                                       ; $45ea: $ff
    rst $38                                       ; $45eb: $ff
    rst $38                                       ; $45ec: $ff
    rst $38                                       ; $45ed: $ff
    rst $38                                       ; $45ee: $ff
    rst $38                                       ; $45ef: $ff
    rst $38                                       ; $45f0: $ff
    rst $38                                       ; $45f1: $ff
    ld sp, hl                                     ; $45f2: $f9
    nop                                           ; $45f3: $00
    nop                                           ; $45f4: $00
    nop                                           ; $45f5: $00
    rst $28                                       ; $45f6: $ef
    ld e, e                                       ; $45f7: $5b
    ld e, e                                       ; $45f8: $5b
    ld h, b                                       ; $45f9: $60
    ld sp, $e8ff                                  ; $45fa: $31 $ff $e8
    ld h, b                                       ; $45fd: $60
    ld e, e                                       ; $45fe: $5b
    ld e, e                                       ; $45ff: $5b
    rst $20                                       ; $4600: $e7
    ld e, d                                       ; $4601: $5a
    ld e, e                                       ; $4602: $5b
    nop                                           ; $4603: $00
    rst $38                                       ; $4604: $ff
    rst $38                                       ; $4605: $ff
    rst $20                                       ; $4606: $e7
    and $5a                                       ; $4607: $e6 $5a
    ld e, a                                       ; $4609: $5f
    ld sp, $4def                                  ; $460a: $31 $ef $4d
    ld a, [hl-]                                   ; $460d: $3a
    ld d, l                                       ; $460e: $55
    ld d, h                                       ; $460f: $54
    cp $e2                                        ; $4610: $fe $e2
    ld a, [hl-]                                   ; $4612: $3a
    ld c, l                                       ; $4613: $4d
    ld sp, $61f1                                  ; $4614: $31 $f1 $61
    pop bc                                        ; $4617: $c1
    ldh [$c0], a                                  ; $4618: $e0 $c0
    rst $38                                       ; $461a: $ff
    jp hl                                         ; $461b: $e9


    add sp, $5b                                   ; $461c: $e8 $5b
    ld e, [hl]                                    ; $461e: $5e
    ld c, l                                       ; $461f: $4d
    ld [hl-], a                                   ; $4620: $32
    db $fd                                        ; $4621: $fd
    ld l, l                                       ; $4622: $6d
    rst $38                                       ; $4623: $ff
    pop hl                                        ; $4624: $e1
    ld l, c                                       ; $4625: $69
    jr nc, jr_056_4658                            ; $4626: $30 $30

    ld l, l                                       ; $4628: $6d
    ld [hl-], a                                   ; $4629: $32
    ld c, l                                       ; $462a: $4d
    jr c, jr_056_46ac                             ; $462b: $38 $7f

    pop hl                                        ; $462d: $e1
    ret nz                                        ; $462e: $c0

    rst $38                                       ; $462f: $ff
    jp hl                                         ; $4630: $e9


    add sp, $5f                                   ; $4631: $e8 $5f
    ld sp, $c139                                  ; $4633: $31 $39 $c1
    ld [c], a                                     ; $4636: $e2
    ret nz                                        ; $4637: $c0

    ld [c], a                                     ; $4638: $e2
    db $e3                                        ; $4639: $e3
    ld l, l                                       ; $463a: $6d
    add hl, sp                                    ; $463b: $39
    ld a, a                                       ; $463c: $7f
    ldh [$c0], a                                  ; $463d: $e0 $c0
    rst $38                                       ; $463f: $ff
    ld [$5ee9], a                                 ; $4640: $ea $e9 $5e
    ld sp, $2a53                                  ; $4643: $31 $53 $2a
    ret nz                                        ; $4646: $c0

    db $e3                                        ; $4647: $e3
    ld l, d                                       ; $4648: $6a
    ret nz                                        ; $4649: $c0

    pop hl                                        ; $464a: $e1
    ld d, d                                       ; $464b: $52
    ret nz                                        ; $464c: $c0

    pop hl                                        ; $464d: $e1
    ld e, d                                       ; $464e: $5a
    jp z, $c0ff                                   ; $464f: $ca $ff $c0

    jp hl                                         ; $4652: $e9


    ld c, $80                                     ; $4653: $0e $80
    pop hl                                        ; $4655: $e1
    ld l, b                                       ; $4656: $68
    ld l, b                                       ; $4657: $68

jr_056_4658:
    ld l, d                                       ; $4658: $6a
    ret nz                                        ; $4659: $c0

    push hl                                       ; $465a: $e5
    nop                                           ; $465b: $00
    rst $38                                       ; $465c: $ff
    ld b, b                                       ; $465d: $40
    db $ec                                        ; $465e: $ec
    nop                                           ; $465f: $00
    ldh [rOBP0], a                                ; $4660: $e0 $48
    inc b                                         ; $4662: $04
    ldh [$fe], a                                  ; $4663: $e0 $fe
    ldh [$f9], a                                  ; $4665: $e0 $f9
    ret nz                                        ; $4667: $c0

    add hl, sp                                    ; $4668: $39
    nop                                           ; $4669: $00
    rst $38                                       ; $466a: $ff
    ret nz                                        ; $466b: $c0

    call $bf60                                    ; $466c: $cd $60 $bf
    ldh [$0c], a                                  ; $466f: $e0 $0c
    ret nz                                        ; $4671: $c0

    ld [c], a                                     ; $4672: $e2
    cp d                                          ; $4673: $ba
    ret nz                                        ; $4674: $c0

    ld c, b                                       ; $4675: $48
    scf                                           ; $4676: $37
    ret nz                                        ; $4677: $c0

    rst $38                                       ; $4678: $ff
    ld b, b                                       ; $4679: $40
    call $e2bf                                    ; $467a: $cd $bf $e2
    cp l                                          ; $467d: $bd
    jp Jump_056_6d07                              ; $467e: $c3 $07 $6d


    add e                                         ; $4681: $83
    ld [hl], b                                    ; $4682: $70
    cp $a2                                        ; $4683: $fe $a2
    jp z, Jump_056_40ff                           ; $4685: $ca $ff $40

    ret z                                         ; $4688: $c8

    cp a                                          ; $4689: $bf
    and c                                         ; $468a: $a1
    dec a                                         ; $468b: $3d
    call nz, Call_056_480f                        ; $468c: $c4 $0f $48
    halt                                          ; $468f: $76
    xor [hl]                                      ; $4690: $ae
    and a                                         ; $4691: $a7
    rst $38                                       ; $4692: $ff
    pop bc                                        ; $4693: $c1
    jp z, $c0ff                                   ; $4694: $ca $ff $c0

    jp hl                                         ; $4697: $e9


    ld a, [hl]                                    ; $4698: $7e
    rst $20                                       ; $4699: $e7
    rrca                                          ; $469a: $0f
    add e                                         ; $469b: $83
    add b                                         ; $469c: $80
    add b                                         ; $469d: $80
    add c                                         ; $469e: $81
    ccf                                           ; $469f: $3f
    pop bc                                        ; $46a0: $c1
    jp z, Jump_056_40ff                           ; $46a1: $ca $ff $40

    jp hl                                         ; $46a4: $e9


    ld a, [hl]                                    ; $46a5: $7e
    ld [c], a                                     ; $46a6: $e2
    rst $38                                       ; $46a7: $ff
    xor a                                         ; $46a8: $af
    ld [hl], c                                    ; $46a9: $71
    ld l, l                                       ; $46aa: $6d
    ld l, l                                       ; $46ab: $6d

jr_056_46ac:
    ld [hl], c                                    ; $46ac: $71
    ld a, c                                       ; $46ad: $79
    add b                                         ; $46ae: $80
    add b                                         ; $46af: $80
    ld sp, hl                                     ; $46b0: $f9
    and b                                         ; $46b1: $a0
    ret nz                                        ; $46b2: $c0

    rst $38                                       ; $46b3: $ff
    ret nz                                        ; $46b4: $c0

    ldh a, [$5f]                                  ; $46b5: $f0 $5f
    ld sp, $7981                                  ; $46b7: $31 $81 $79
    ld a, [hl]                                    ; $46ba: $7e
    pop af                                        ; $46bb: $f1
    ld a, [hl]                                    ; $46bc: $7e
    pop bc                                        ; $46bd: $c1
    ldh [$c0], a                                  ; $46be: $e0 $c0
    rst $38                                       ; $46c0: $ff
    nop                                           ; $46c1: $00
    ldh a, [$5a]                                  ; $46c2: $f0 $5a
    ld e, e                                       ; $46c4: $5b
    ld e, [hl]                                    ; $46c5: $5e
    xor h                                         ; $46c6: $ac
    ld bc, $c4a8                                  ; $46c7: $01 $a8 $c4
    ldh [$fd], a                                  ; $46ca: $e0 $fd
    pop hl                                        ; $46cc: $e1
    ret nz                                        ; $46cd: $c0

    rst $38                                       ; $46ce: $ff
    ret nz                                        ; $46cf: $c0

    rst $08                                       ; $46d0: $cf
    add c                                         ; $46d1: $81
    pop hl                                        ; $46d2: $e1
    pop bc                                        ; $46d3: $c1
    db $e4                                        ; $46d4: $e4
    ret nz                                        ; $46d5: $c0

    rst $38                                       ; $46d6: $ff
    nop                                           ; $46d7: $00
    nop                                           ; $46d8: $00
    pop af                                        ; $46d9: $f1
    add c                                         ; $46da: $81
    rst $20                                       ; $46db: $e7
    ret nz                                        ; $46dc: $c0

    rst $38                                       ; $46dd: $ff
    rst $38                                       ; $46de: $ff
    rst $38                                       ; $46df: $ff
    rst $38                                       ; $46e0: $ff
    rst $38                                       ; $46e1: $ff
    rst $38                                       ; $46e2: $ff
    rst $38                                       ; $46e3: $ff
    rst $38                                       ; $46e4: $ff
    rst $38                                       ; $46e5: $ff
    rst $38                                       ; $46e6: $ff
    rst $38                                       ; $46e7: $ff
    nop                                           ; $46e8: $00
    rst $38                                       ; $46e9: $ff
    rst $38                                       ; $46ea: $ff
    rst $38                                       ; $46eb: $ff
    rst $38                                       ; $46ec: $ff
    rst $38                                       ; $46ed: $ff
    rst $38                                       ; $46ee: $ff
    rst $38                                       ; $46ef: $ff
    rst $38                                       ; $46f0: $ff
    rst $38                                       ; $46f1: $ff
    rst $38                                       ; $46f2: $ff
    rst $38                                       ; $46f3: $ff
    rst $38                                       ; $46f4: $ff
    rst $38                                       ; $46f5: $ff
    rst $38                                       ; $46f6: $ff
    rst $38                                       ; $46f7: $ff
    rst $38                                       ; $46f8: $ff
    nop                                           ; $46f9: $00
    rst $38                                       ; $46fa: $ff
    rst $38                                       ; $46fb: $ff
    rst $38                                       ; $46fc: $ff
    rst $38                                       ; $46fd: $ff
    rst $38                                       ; $46fe: $ff
    rst $38                                       ; $46ff: $ff
    rst $38                                       ; $4700: $ff
    rst $38                                       ; $4701: $ff
    rst $38                                       ; $4702: $ff
    rst $38                                       ; $4703: $ff
    rst $38                                       ; $4704: $ff
    rst $38                                       ; $4705: $ff
    rst $38                                       ; $4706: $ff
    rst $38                                       ; $4707: $ff
    rst $38                                       ; $4708: $ff
    rst $38                                       ; $4709: $ff
    nop                                           ; $470a: $00
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
    rst $38                                       ; $4717: $ff
    rst $38                                       ; $4718: $ff
    rst $38                                       ; $4719: $ff
    rst $38                                       ; $471a: $ff
    nop                                           ; $471b: $00
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
    rst $38                                       ; $4728: $ff
    rst $38                                       ; $4729: $ff
    rst $38                                       ; $472a: $ff
    rst $38                                       ; $472b: $ff
    nop                                           ; $472c: $00
    rst $38                                       ; $472d: $ff
    rst $38                                       ; $472e: $ff
    rst $38                                       ; $472f: $ff
    rst $38                                       ; $4730: $ff
    rst $38                                       ; $4731: $ff
    rst $38                                       ; $4732: $ff
    rst $38                                       ; $4733: $ff
    rst $38                                       ; $4734: $ff
    rst $38                                       ; $4735: $ff
    rst $38                                       ; $4736: $ff
    rst $38                                       ; $4737: $ff
    rst $38                                       ; $4738: $ff
    rst $38                                       ; $4739: $ff
    rst $38                                       ; $473a: $ff
    rst $38                                       ; $473b: $ff
    rst $38                                       ; $473c: $ff
    nop                                           ; $473d: $00
    rst $38                                       ; $473e: $ff
    rst $38                                       ; $473f: $ff
    rst $38                                       ; $4740: $ff
    rst $38                                       ; $4741: $ff
    rst $38                                       ; $4742: $ff
    rst $38                                       ; $4743: $ff
    rst $38                                       ; $4744: $ff
    rst $38                                       ; $4745: $ff
    rst $38                                       ; $4746: $ff
    rst $38                                       ; $4747: $ff
    rst $38                                       ; $4748: $ff
    rst $38                                       ; $4749: $ff
    rst $38                                       ; $474a: $ff
    rst $38                                       ; $474b: $ff
    rst $38                                       ; $474c: $ff
    rst $38                                       ; $474d: $ff
    nop                                           ; $474e: $00
    rst $38                                       ; $474f: $ff
    rst $38                                       ; $4750: $ff
    rst $38                                       ; $4751: $ff
    rst $38                                       ; $4752: $ff
    rst $38                                       ; $4753: $ff
    rst $38                                       ; $4754: $ff
    rst $38                                       ; $4755: $ff
    rst $38                                       ; $4756: $ff
    rst $38                                       ; $4757: $ff
    rst $38                                       ; $4758: $ff
    rst $38                                       ; $4759: $ff
    rst $38                                       ; $475a: $ff
    rst $38                                       ; $475b: $ff
    rst $38                                       ; $475c: $ff
    rst $38                                       ; $475d: $ff
    rst $38                                       ; $475e: $ff
    nop                                           ; $475f: $00
    rst $38                                       ; $4760: $ff
    rst $38                                       ; $4761: $ff
    rst $38                                       ; $4762: $ff
    rst $38                                       ; $4763: $ff
    rst $38                                       ; $4764: $ff
    rst $38                                       ; $4765: $ff
    rst $38                                       ; $4766: $ff
    rst $38                                       ; $4767: $ff
    rst $38                                       ; $4768: $ff
    rst $38                                       ; $4769: $ff
    rst $38                                       ; $476a: $ff
    rst $38                                       ; $476b: $ff
    rst $38                                       ; $476c: $ff
    rst $38                                       ; $476d: $ff
    rst $38                                       ; $476e: $ff
    rst $38                                       ; $476f: $ff
    nop                                           ; $4770: $00
    rst $38                                       ; $4771: $ff
    rst $38                                       ; $4772: $ff
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
    nop                                           ; $4781: $00
    rst $38                                       ; $4782: $ff
    rst $38                                       ; $4783: $ff
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
    nop                                           ; $4792: $00
    rst $38                                       ; $4793: $ff
    rst $38                                       ; $4794: $ff
    rst $38                                       ; $4795: $ff
    rst $38                                       ; $4796: $ff
    rst $38                                       ; $4797: $ff
    rst $38                                       ; $4798: $ff
    rst $38                                       ; $4799: $ff
    rst $38                                       ; $479a: $ff
    rst $38                                       ; $479b: $ff
    rst $38                                       ; $479c: $ff
    rst $38                                       ; $479d: $ff
    ld sp, hl                                     ; $479e: $f9
    nop                                           ; $479f: $00
    nop                                           ; $47a0: $00
    nop                                           ; $47a1: $00
    and l                                         ; $47a2: $a5
    nop                                           ; $47a3: $00
    rst $38                                       ; $47a4: $ff
    push hl                                       ; $47a5: $e5
    ld [hl-], a                                   ; $47a6: $32
    or $e6                                        ; $47a7: $f6 $e6
    rst $30                                       ; $47a9: $f7
    rst $20                                       ; $47aa: $e7
    dec [hl]                                      ; $47ab: $35
    db $ec                                        ; $47ac: $ec
    xor $37                                       ; $47ad: $ee $37
    db $ec                                        ; $47af: $ec
    jp c, $c7f0                                   ; $47b0: $da $f0 $c7

    add sp, $33                                   ; $47b3: $e8 $33
    ld sp, $f2e0                                  ; $47b5: $31 $e0 $f2
    ld [hl], $30                                  ; $47b8: $36 $30
    scf                                           ; $47ba: $37
    cp a                                          ; $47bb: $bf
    ld h, $20                                     ; $47bc: $26 $20
    daa                                           ; $47be: $27
    db $10                                        ; $47bf: $10
    ld d, $17                                     ; $47c0: $16 $17
    jp nz, Jump_000_34f6                          ; $47c2: $c2 $f6 $34

    rst $38                                       ; $47c5: $ff
    ld [hl], $32                                  ; $47c6: $36 $32
    jr nc, jr_056_4801                            ; $47c8: $30 $37

    ld sp, $3133                                  ; $47ca: $31 $33 $31
    inc sp                                        ; $47cd: $33
    nop                                           ; $47ce: $00
    and b                                         ; $47cf: $a0
    ei                                            ; $47d0: $fb
    rst $38                                       ; $47d1: $ff
    rst $28                                       ; $47d2: $ef
    nop                                           ; $47d3: $00
    nop                                           ; $47d4: $00
    nop                                           ; $47d5: $00
    sbc $47                                       ; $47d6: $de $47
    ld c, $48                                     ; $47d8: $0e $48
    adc $49                                       ; $47da: $ce $49
    rrca                                          ; $47dc: $0f
    ld c, h                                       ; $47dd: $4c
    ld [$c503], a                                 ; $47de: $ea $03 $c5
    ld b, $e2                                     ; $47e1: $06 $e2
    ld bc, $00a0                                  ; $47e3: $01 $a0 $00
    ld [$f003], a                                 ; $47e6: $ea $03 $f0
    inc bc                                        ; $47e9: $03
    push bc                                       ; $47ea: $c5
    ld b, $e2                                     ; $47eb: $06 $e2
    ld bc, $023f                                  ; $47ed: $01 $3f $02
    xor e                                         ; $47f0: $ab
    nop                                           ; $47f1: $00
    inc sp                                        ; $47f2: $33
    ld bc, $06c5                                  ; $47f3: $01 $c5 $06
    ld [$0825], sp                                ; $47f6: $08 $25 $08
    dec h                                         ; $47f9: $25
    ld [$0825], sp                                ; $47fa: $08 $25 $08
    dec h                                         ; $47fd: $25
    ld [$0825], sp                                ; $47fe: $08 $25 $08

jr_056_4801:
    dec h                                         ; $4801: $25
    ld [$0825], sp                                ; $4802: $08 $25 $08
    dec h                                         ; $4805: $25
    ld [$0825], sp                                ; $4806: $08 $25 $08
    dec h                                         ; $4809: $25
    ld [$0825], sp                                ; $480a: $08 $25 $08
    dec h                                         ; $480d: $25
    db $fd                                        ; $480e: $fd

Call_056_480f:
    dec bc                                        ; $480f: $0b
    rst $38                                       ; $4810: $ff
    db $eb                                        ; $4811: $eb
    dec hl                                        ; $4812: $2b
    dec hl                                        ; $4813: $2b
    dec bc                                        ; $4814: $0b
    ld a, [bc]                                    ; $4815: $0a
    dec bc                                        ; $4816: $0b
    inc c                                         ; $4817: $0c
    ld b, b                                       ; $4818: $40
    rst $38                                       ; $4819: $ff
    rst $38                                       ; $481a: $ff
    rst $20                                       ; $481b: $e7
    and $c0                                       ; $481c: $e6 $c0
    db $ec                                        ; $481e: $ec
    cp [hl]                                       ; $481f: $be
    ld [c], a                                     ; $4820: $e2
    jp z, $e8ff                                   ; $4821: $ca $ff $e8

    rst $20                                       ; $4824: $e7
    ld c, e                                       ; $4825: $4b
    rst $38                                       ; $4826: $ff
    db $e3                                        ; $4827: $e3
    ld c, l                                       ; $4828: $4d
    ld l, e                                       ; $4829: $6b
    ld hl, sp-$1c                                 ; $482a: $f8 $e4
    ld c, e                                       ; $482c: $4b
    dec hl                                        ; $482d: $2b
    ld a, h                                       ; $482e: $7c
    ldh [$ca], a                                  ; $482f: $e0 $ca
    push hl                                       ; $4831: $e5
    inc l                                         ; $4832: $2c
    rst $30                                       ; $4833: $f7
    xor $06                                       ; $4834: $ee $06
    add b                                         ; $4836: $80
    db $f4                                        ; $4837: $f4
    ld l, e                                       ; $4838: $6b
    ld l, e                                       ; $4839: $6b
    ld b, [hl]                                    ; $483a: $46
    ldh [$36], a                                  ; $483b: $e0 $36
    ld [c], a                                     ; $483d: $e2
    cp [hl]                                       ; $483e: $be
    ld [c], a                                     ; $483f: $e2
    adc d                                         ; $4840: $8a
    rst $38                                       ; $4841: $ff
    ld b, b                                       ; $4842: $40
    db $ec                                        ; $4843: $ec
    inc c                                         ; $4844: $0c
    ld a, [bc]                                    ; $4845: $0a
    ldh [$f8], a                                  ; $4846: $e0 $f8
    rst $00                                       ; $4848: $c7
    ld c, e                                       ; $4849: $4b
    ld c, e                                       ; $484a: $4b
    jp z, Jump_056_72f3                           ; $484b: $ca $f3 $72

    db $ed                                        ; $484e: $ed
    ld h, d                                       ; $484f: $62
    db $e3                                        ; $4850: $e3
    add d                                         ; $4851: $82
    pop hl                                        ; $4852: $e1
    and c                                         ; $4853: $a1
    dec hl                                        ; $4854: $2b
    ret nz                                        ; $4855: $c0

    ld [$e740], a                                 ; $4856: $ea $40 $e7
    rst $38                                       ; $4859: $ff
    rst $38                                       ; $485a: $ff
    ret nz                                        ; $485b: $c0

    pop bc                                        ; $485c: $c1
    ld l, e                                       ; $485d: $6b
    adc e                                         ; $485e: $8b
    ret nz                                        ; $485f: $c0

    dec hl                                        ; $4860: $2b
    inc bc                                        ; $4861: $03
    ld c, e                                       ; $4862: $4b
    ld c, e                                       ; $4863: $4b
    ret nz                                        ; $4864: $c0

    rst $38                                       ; $4865: $ff
    ret nz                                        ; $4866: $c0

    push af                                       ; $4867: $f5
    pop bc                                        ; $4868: $c1
    ld [c], a                                     ; $4869: $e2
    cp a                                          ; $486a: $bf
    jp hl                                         ; $486b: $e9


    rst $00                                       ; $486c: $c7
    rst $18                                       ; $486d: $df
    ld b, b                                       ; $486e: $40
    ret                                           ; $486f: $c9


    ld [hl], b                                    ; $4870: $70
    ld b, d                                       ; $4871: $42
    ldh [$c0], a                                  ; $4872: $e0 $c0
    push af                                       ; $4874: $f5
    pop bc                                        ; $4875: $c1
    rst $38                                       ; $4876: $ff
    ret nz                                        ; $4877: $c0

    pop hl                                        ; $4878: $e1
    ld c, e                                       ; $4879: $4b
    ld l, e                                       ; $487a: $6b
    ld l, e                                       ; $487b: $6b
    ld b, c                                       ; $487c: $41
    pop bc                                        ; $487d: $c1
    ld [de], a                                    ; $487e: $12
    or [hl]                                       ; $487f: $b6
    and [hl]                                      ; $4880: $a6
    ld l, e                                       ; $4881: $6b
    pop bc                                        ; $4882: $c1
    db $db                                        ; $4883: $db
    ret nz                                        ; $4884: $c0

    xor [hl]                                      ; $4885: $ae
    dec hl                                        ; $4886: $2b
    ret nz                                        ; $4887: $c0

    ldh [$be], a                                  ; $4888: $e0 $be
    rst $20                                       ; $488a: $e7
    inc [hl]                                      ; $488b: $34
    ret nz                                        ; $488c: $c0

    nop                                           ; $488d: $00
    adc d                                         ; $488e: $8a
    rst $30                                       ; $488f: $f7
    daa                                           ; $4890: $27
    pop hl                                        ; $4891: $e1
    inc hl                                        ; $4892: $23
    ld [c], a                                     ; $4893: $e2
    ld e, $e6                                     ; $4894: $1e $e6
    ld c, h                                       ; $4896: $4c
    and c                                         ; $4897: $a1
    ld a, a                                       ; $4898: $7f
    pop hl                                        ; $4899: $e1
    cp a                                          ; $489a: $bf
    and b                                         ; $489b: $a0
    ei                                            ; $489c: $fb
    and b                                         ; $489d: $a0
    add d                                         ; $489e: $82
    or $a2                                        ; $489f: $f6 $a2
    ld a, [bc]                                    ; $48a1: $0a
    ld c, d                                       ; $48a2: $4a
    ld sp, hl                                     ; $48a3: $f9
    or l                                          ; $48a4: $b5
    xor l                                         ; $48a5: $ad
    dec bc                                        ; $48a6: $0b
    and d                                         ; $48a7: $a2
    ld a, $e2                                     ; $48a8: $3e $e2
    pop bc                                        ; $48aa: $c1
    ld [c], a                                     ; $48ab: $e2
    ld a, [bc]                                    ; $48ac: $0a
    jr nc, @+$01                                  ; $48ad: $30 $ff

    pop hl                                        ; $48af: $e1
    add hl, bc                                    ; $48b0: $09
    rst $38                                       ; $48b1: $ff
    nop                                           ; $48b2: $00
    xor e                                         ; $48b3: $ab
    ld b, b                                       ; $48b4: $40
    and c                                         ; $48b5: $a1
    ld l, e                                       ; $48b6: $6b
    dec bc                                        ; $48b7: $0b
    ld a, $c0                                     ; $48b8: $3e $c0
    pop bc                                        ; $48ba: $c1
    db $e3                                        ; $48bb: $e3
    ld [$fa80], sp                                ; $48bc: $08 $80 $fa
    ret nz                                        ; $48bf: $c0

    sub e                                         ; $48c0: $93
    ld a, a                                       ; $48c1: $7f
    and d                                         ; $48c2: $a2
    ld l, e                                       ; $48c3: $6b
    pop bc                                        ; $48c4: $c1
    db $e4                                        ; $48c5: $e4
    ret nz                                        ; $48c6: $c0

    rst $38                                       ; $48c7: $ff
    add b                                         ; $48c8: $80
    adc a                                         ; $48c9: $8f
    ret                                           ; $48ca: $c9


    add b                                         ; $48cb: $80
    add e                                         ; $48cc: $83
    ld l, e                                       ; $48cd: $6b
    dec bc                                        ; $48ce: $0b
    pop bc                                        ; $48cf: $c1
    db $e4                                        ; $48d0: $e4
    nop                                           ; $48d1: $00
    db $eb                                        ; $48d2: $eb
    db $f4                                        ; $48d3: $f4
    and e                                         ; $48d4: $a3
    dec l                                         ; $48d5: $2d
    rst $38                                       ; $48d6: $ff
    ei                                            ; $48d7: $fb
    ld a, [$102c]                                 ; $48d8: $fa $2c $10
    ret nz                                        ; $48db: $c0

    db $fd                                        ; $48dc: $fd
    cp c                                          ; $48dd: $b9
    ld l, e                                       ; $48de: $6b
    dec a                                         ; $48df: $3d
    rst $38                                       ; $48e0: $ff
    cp c                                          ; $48e1: $b9
    ld [hl], a                                    ; $48e2: $77
    ld a, [bc]                                    ; $48e3: $0a
    dec a                                         ; $48e4: $3d
    and e                                         ; $48e5: $a3
    rst $38                                       ; $48e6: $ff
    rst $38                                       ; $48e7: $ff
    ld a, c                                       ; $48e8: $79
    ld a, d                                       ; $48e9: $7a
    ld [bc], a                                    ; $48ea: $02
    call Call_000_2c70                            ; $48eb: $cd $70 $2c
    jp nz, $97b0                                  ; $48ee: $c2 $b0 $97

    ld h, [hl]                                    ; $48f1: $66
    ret nz                                        ; $48f2: $c0

    xor $8b                                       ; $48f3: $ee $8b
    ld l, c                                       ; $48f5: $69
    or $f1                                        ; $48f6: $f6 $f1
    ld sp, hl                                     ; $48f8: $f9
    ld d, e                                       ; $48f9: $53
    nop                                           ; $48fa: $00
    ld a, [hl]                                    ; $48fb: $7e
    push bc                                       ; $48fc: $c5
    ld a, l                                       ; $48fd: $7d
    xor l                                         ; $48fe: $ad
    add c                                         ; $48ff: $81
    sbc $80                                       ; $4900: $de $80
    ldh a, [rKEY1]                                ; $4902: $f0 $4d
    and $40                                       ; $4904: $e6 $40
    rst $38                                       ; $4906: $ff
    ret nz                                        ; $4907: $c0

    ld a, [c]                                     ; $4908: $f2
    dec c                                         ; $4909: $0d
    rst $18                                       ; $490a: $df
    ld [bc], a                                    ; $490b: $02
    add hl, sp                                    ; $490c: $39
    ld c, c                                       ; $490d: $49
    ld [$ebff], sp                                ; $490e: $08 $ff $eb
    adc $ff                                       ; $4911: $ce $ff
    rst $38                                       ; $4913: $ff
    rst $38                                       ; $4914: $ff
    add $4b                                       ; $4915: $c6 $4b
    ld [hl], c                                    ; $4917: $71
    rst $38                                       ; $4918: $ff
    ld d, c                                       ; $4919: $51
    sbc a                                         ; $491a: $9f
    ld [$ffde], sp                                ; $491b: $08 $de $ff
    rst $38                                       ; $491e: $ff
    rst $38                                       ; $491f: $ff
    ldh a, [$ef]                                  ; $4920: $f0 $ef
    ld c, h                                       ; $4922: $4c
    cp $e0                                        ; $4923: $fe $e0
    rst $38                                       ; $4925: $ff
    rst $38                                       ; $4926: $ff
    rst $38                                       ; $4927: $ff
    rst $38                                       ; $4928: $ff
    xor h                                         ; $4929: $ac
    db $eb                                        ; $492a: $eb
    nop                                           ; $492b: $00
    rst $38                                       ; $492c: $ff
    rst $38                                       ; $492d: $ff
    rst $38                                       ; $492e: $ff
    rst $38                                       ; $492f: $ff
    rst $38                                       ; $4930: $ff
    rst $38                                       ; $4931: $ff
    ld l, $f6                                     ; $4932: $2e $f6
    jp hl                                         ; $4934: $e9


    rst $18                                       ; $4935: $df
    rst $28                                       ; $4936: $ef
    db $db                                        ; $4937: $db
    ccf                                           ; $4938: $3f
    rst $38                                       ; $4939: $ff
    xor [hl]                                      ; $493a: $ae
    rst $18                                       ; $493b: $df
    nop                                           ; $493c: $00
    ld e, a                                       ; $493d: $5f
    rst $18                                       ; $493e: $df
    rst $38                                       ; $493f: $ff
    rst $38                                       ; $4940: $ff
    rst $38                                       ; $4941: $ff
    rst $38                                       ; $4942: $ff
    rst $20                                       ; $4943: $e7
    cp a                                          ; $4944: $bf
    rst $38                                       ; $4945: $ff
    rst $38                                       ; $4946: $ff
    cp a                                          ; $4947: $bf
    rst $38                                       ; $4948: $ff
    rst $38                                       ; $4949: $ff
    rst $38                                       ; $494a: $ff
    ret z                                         ; $494b: $c8

    ld d, e                                       ; $494c: $53
    ld b, h                                       ; $494d: $44
    cp e                                          ; $494e: $bb
    rst $38                                       ; $494f: $ff
    cp d                                          ; $4950: $ba
    rst $10                                       ; $4951: $d7
    inc l                                         ; $4952: $2c
    ld a, d                                       ; $4953: $7a
    pop bc                                        ; $4954: $c1
    ld [hl], e                                    ; $4955: $73
    rst $18                                       ; $4956: $df
    ld e, [hl]                                    ; $4957: $5e
    ld d, h                                       ; $4958: $54
    ld c, h                                       ; $4959: $4c
    ld a, $61                                     ; $495a: $3e $61
    nop                                           ; $495c: $00
    cp a                                          ; $495d: $bf
    ld [c], a                                     ; $495e: $e2
    add hl, de                                    ; $495f: $19
    rst $38                                       ; $4960: $ff
    db $db                                        ; $4961: $db
    ld sp, $e289                                  ; $4962: $31 $89 $e2
    ret nz                                        ; $4965: $c0

    db $ed                                        ; $4966: $ed
    rst $38                                       ; $4967: $ff
    ld d, d                                       ; $4968: $52
    sbc l                                         ; $4969: $9d
    ld h, $e1                                     ; $496a: $26 $e1
    ld c, d                                       ; $496c: $4a
    nop                                           ; $496d: $00
    ld b, a                                       ; $496e: $47
    db $e3                                        ; $496f: $e3
    ld b, e                                       ; $4970: $43
    rst $38                                       ; $4971: $ff
    ld a, c                                       ; $4972: $79
    cp a                                          ; $4973: $bf
    rst $38                                       ; $4974: $ff
    rst $38                                       ; $4975: $ff
    ld [hl], a                                    ; $4976: $77
    sbc a                                         ; $4977: $9f
    rst $38                                       ; $4978: $ff
    rst $38                                       ; $4979: $ff
    rst $38                                       ; $497a: $ff
    rst $38                                       ; $497b: $ff
    rst $38                                       ; $497c: $ff
    rst $38                                       ; $497d: $ff
    nop                                           ; $497e: $00
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
    jp c, Jump_000_009f                           ; $498d: $da $9f $00

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
    rst $38                                       ; $499e: $ff
    rst $38                                       ; $499f: $ff
    nop                                           ; $49a0: $00
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
    rst $38                                       ; $49af: $ff
    rst $38                                       ; $49b0: $ff
    nop                                           ; $49b1: $00
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
    cp a                                          ; $49bd: $bf
    rst $38                                       ; $49be: $ff
    rst $38                                       ; $49bf: $ff
    rst $38                                       ; $49c0: $ff
    rst $38                                       ; $49c1: $ff
    nop                                           ; $49c2: $00
    rst $38                                       ; $49c3: $ff
    rst $38                                       ; $49c4: $ff
    rst $38                                       ; $49c5: $ff
    rst $38                                       ; $49c6: $ff
    rst $38                                       ; $49c7: $ff
    rst $38                                       ; $49c8: $ff
    call z, $0049                                 ; $49c9: $cc $49 $00
    nop                                           ; $49cc: $00
    nop                                           ; $49cd: $00
    db $fd                                        ; $49ce: $fd
    ld sp, $ebff                                  ; $49cf: $31 $ff $eb
    ld e, l                                       ; $49d2: $5d

jr_056_49d3:
    ld e, h                                       ; $49d3: $5c
    ld e, e                                       ; $49d4: $5b
    ld e, d                                       ; $49d5: $5a
    ld e, e                                       ; $49d6: $5b
    nop                                           ; $49d7: $00
    ld b, b                                       ; $49d8: $40
    rst $38                                       ; $49d9: $ff
    rst $38                                       ; $49da: $ff
    rst $20                                       ; $49db: $e7
    and $c0                                       ; $49dc: $e6 $c0
    db $ec                                        ; $49de: $ec
    cp [hl]                                       ; $49df: $be
    ld [c], a                                     ; $49e0: $e2
    jp z, $e8ff                                   ; $49e1: $ca $ff $e8

    rst $20                                       ; $49e4: $e7
    and l                                         ; $49e5: $a5
    rst $38                                       ; $49e6: $ff
    ld [c], a                                     ; $49e7: $e2
    rst $38                                       ; $49e8: $ff
    ld [hl], b                                    ; $49e9: $70
    ld a, [hl-]                                   ; $49ea: $3a
    ld d, l                                       ; $49eb: $55
    ld d, h                                       ; $49ec: $54
    ld d, h                                       ; $49ed: $54
    ld d, h                                       ; $49ee: $54
    ld d, l                                       ; $49ef: $55
    ld d, l                                       ; $49f0: $55
    ccf                                           ; $49f1: $3f
    ld d, h                                       ; $49f2: $54
    ld a, [hl-]                                   ; $49f3: $3a
    ld c, e                                       ; $49f4: $4b
    ld sp, $6031                                  ; $49f5: $31 $31 $60
    jp z, $e8ff                                   ; $49f8: $ca $ff $e8

    rst $20                                       ; $49fb: $e7
    cp l                                          ; $49fc: $bd
    add b                                         ; $49fd: $80
    rst $38                                       ; $49fe: $ff
    ldh [$79], a                                  ; $49ff: $e0 $79
    ld a, [hl]                                    ; $4a01: $7e
    ld b, h                                       ; $4a02: $44
    ld l, b                                       ; $4a03: $68
    rst $38                                       ; $4a04: $ff
    ldh [$30], a                                  ; $4a05: $e0 $30
    rra                                           ; $4a07: $1f
    jr nc, jr_056_4a74                            ; $4a08: $30 $6a

    ld l, d                                       ; $4a0a: $6a
    jr nc, jr_056_4a43                            ; $4a0b: $30 $36

    cp [hl]                                       ; $4a0d: $be
    ldh [$ca], a                                  ; $4a0e: $e0 $ca
    rst $38                                       ; $4a10: $ff
    ret nz                                        ; $4a11: $c0

    ld [$798f], a                                 ; $4a12: $ea $8f $79
    ld [hl], c                                    ; $4a15: $71
    ld l, d                                       ; $4a16: $6a
    ld l, d                                       ; $4a17: $6a
    ret nz                                        ; $4a18: $c0

    ldh [$c3], a                                  ; $4a19: $e0 $c3
    ldh [$bf], a                                  ; $4a1b: $e0 $bf
    pop hl                                        ; $4a1d: $e1
    jr nc, jr_056_49d3                            ; $4a1e: $30 $b3

    ld [hl], $3c                                  ; $4a20: $36 $3c
    jp z, $80ff                                   ; $4a22: $ca $ff $80

    ld [$6a83], a                                 ; $4a25: $ea $83 $6a
    ret nz                                        ; $4a28: $c0

    db $e3                                        ; $4a29: $e3
    ld l, c                                       ; $4a2a: $69
    sub a                                         ; $4a2b: $97
    ld l, c                                       ; $4a2c: $69
    jr nc, jr_056_4a5f                            ; $4a2d: $30 $30

    db $fc                                        ; $4a2f: $fc
    pop hl                                        ; $4a30: $e1
    ld d, d                                       ; $4a31: $52
    jp z, Jump_056_40ff                           ; $4a32: $ca $ff $40

    jp hl                                         ; $4a35: $e9


    add h                                         ; $4a36: $84
    ld c, c                                       ; $4a37: $49
    ld b, d                                       ; $4a38: $42
    ret nz                                        ; $4a39: $c0

    ldh [rLY], a                                  ; $4a3a: $e0 $44
    ldh [rBCPD], a                                ; $4a3c: $e0 $69
    ret nz                                        ; $4a3e: $c0

jr_056_4a3f:
    rst $38                                       ; $4a3f: $ff
    nop                                           ; $4a40: $00
    ld a, [c]                                     ; $4a41: $f2
    add e                                         ; $4a42: $83

jr_056_4a43:
    rst $00                                       ; $4a43: $c7
    ld [c], a                                     ; $4a44: $e2
    db $e4                                        ; $4a45: $e4
    push bc                                       ; $4a46: $c5
    pop hl                                        ; $4a47: $e1
    ret nz                                        ; $4a48: $c0

    db $e3                                        ; $4a49: $e3
    ld b, h                                       ; $4a4a: $44
    ld b, b                                       ; $4a4b: $40
    rst $38                                       ; $4a4c: $ff
    ret nz                                        ; $4a4d: $c0

    ld hl, sp+$44                                 ; $4a4e: $f8 $44
    ld b, l                                       ; $4a50: $45
    ld c, l                                       ; $4a51: $4d
    add b                                         ; $4a52: $80
    ret nz                                        ; $4a53: $c0

    rst $18                                       ; $4a54: $df
    ld b, b                                       ; $4a55: $40
    xor $80                                       ; $4a56: $ee $80
    push hl                                       ; $4a58: $e5
    jp nz, Jump_056_40e1                          ; $4a59: $c2 $e1 $40

    rst $18                                       ; $4a5c: $df
    ret nz                                        ; $4a5d: $c0

    ret nc                                        ; $4a5e: $d0

jr_056_4a5f:
    ld b, h                                       ; $4a5f: $44
    pop bc                                        ; $4a60: $c1
    ld l, d                                       ; $4a61: $6a
    add e                                         ; $4a62: $83
    jr nc, jr_056_4a97                            ; $4a63: $30 $32

    jp nz, $c0e0                                  ; $4a65: $c2 $e0 $c0

    cp a                                          ; $4a68: $bf
    nop                                           ; $4a69: $00
    call $c1bf                                    ; $4a6a: $cd $bf $c1
    ld b, c                                       ; $4a6d: $41
    pop bc                                        ; $4a6e: $c1
    ld b, d                                       ; $4a6f: $42
    sbc e                                         ; $4a70: $9b
    ld b, [hl]                                    ; $4a71: $46
    ld c, l                                       ; $4a72: $4d
    ld b, b                                       ; $4a73: $40

jr_056_4a74:
    and c                                         ; $4a74: $a1
    ld e, e                                       ; $4a75: $5b
    ld e, d                                       ; $4a76: $5a
    jp z, $c0ff                                   ; $4a77: $ca $ff $c0

    xor e                                         ; $4a7a: $ab
    add e                                         ; $4a7b: $83
    ld l, l                                       ; $4a7c: $6d
    jr nc, jr_056_4a3f                            ; $4a7d: $30 $c0

    pop hl                                        ; $4a7f: $e1
    ld b, d                                       ; $4a80: $42
    inc a                                         ; $4a81: $3c
    ld b, l                                       ; $4a82: $45
    ldh [$8e], a                                  ; $4a83: $e0 $8e
    add hl, bc                                    ; $4a85: $09
    rst $38                                       ; $4a86: $ff
    ldh [$fc], a                                  ; $4a87: $e0 $fc
    jp z, $80ff                                   ; $4a89: $ca $ff $80

    xor h                                         ; $4a8c: $ac
    ld [hl], c                                    ; $4a8d: $71
    jr nc, jr_056_4af8                            ; $4a8e: $30 $68

    ld l, b                                       ; $4a90: $68
    dec a                                         ; $4a91: $3d
    ld a, $e2                                     ; $4a92: $3e $e2
    pop bc                                        ; $4a94: $c1
    pop hl                                        ; $4a95: $e1
    ld c, a                                       ; $4a96: $4f

jr_056_4a97:
    rst $38                                       ; $4a97: $ff
    pop hl                                        ; $4a98: $e1
    jp z, Jump_056_40ff                           ; $4a99: $ca $ff $40

    xor e                                         ; $4a9c: $ab
    xor [hl]                                      ; $4a9d: $ae
    ld [hl], b                                    ; $4a9e: $70
    dec sp                                        ; $4a9f: $3b
    add a                                         ; $4aa0: $87
    ld [hl], $36                                  ; $4aa1: $36 $36
    scf                                           ; $4aa3: $37
    add h                                         ; $4aa4: $84
    add b                                         ; $4aa5: $80
    pop bc                                        ; $4aa6: $c1
    db $e3                                        ; $4aa7: $e3
    ret nz                                        ; $4aa8: $c0

    rst $38                                       ; $4aa9: $ff
    nop                                           ; $4aaa: $00
    xor e                                         ; $4aab: $ab
    xor [hl]                                      ; $4aac: $ae
    rst $38                                       ; $4aad: $ff
    ld [hl], b                                    ; $4aae: $70
    ld sp, $4731                                  ; $4aaf: $31 $31 $47
    ld b, a                                       ; $4ab2: $47
    ld sp, $5b60                                  ; $4ab3: $31 $60 $5b
    ldh [$c1], a                                  ; $4ab6: $e0 $c1
    db $e4                                        ; $4ab8: $e4
    ret nz                                        ; $4ab9: $c0

    rst $38                                       ; $4aba: $ff
    rst $38                                       ; $4abb: $ff
    rst $38                                       ; $4abc: $ff
    rst $38                                       ; $4abd: $ff
    rst $38                                       ; $4abe: $ff
    db $ec                                        ; $4abf: $ec
    db $eb                                        ; $4ac0: $eb
    ld b, b                                       ; $4ac1: $40
    ld b, c                                       ; $4ac2: $41
    ld b, d                                       ; $4ac3: $42
    rst $38                                       ; $4ac4: $ff
    ld b, e                                       ; $4ac5: $43
    ld b, h                                       ; $4ac6: $44
    ld b, l                                       ; $4ac7: $45
    ld b, [hl]                                    ; $4ac8: $46
    ld b, a                                       ; $4ac9: $47
    ld c, b                                       ; $4aca: $48
    ld c, c                                       ; $4acb: $49
    ld c, d                                       ; $4acc: $4a
    rst $08                                       ; $4acd: $cf
    ld c, e                                       ; $4ace: $4b
    ld c, h                                       ; $4acf: $4c
    ld c, l                                       ; $4ad0: $4d
    ld c, [hl]                                    ; $4ad1: $4e
    ld a, l                                       ; $4ad2: $7d
    rst $38                                       ; $4ad3: $ff
    db $ed                                        ; $4ad4: $ed
    db $ec                                        ; $4ad5: $ec
    ld d, b                                       ; $4ad6: $50
    ld d, c                                       ; $4ad7: $51
    rst $38                                       ; $4ad8: $ff
    ld d, d                                       ; $4ad9: $52
    ld d, e                                       ; $4ada: $53
    ld d, h                                       ; $4adb: $54
    ld d, l                                       ; $4adc: $55
    ld d, [hl]                                    ; $4add: $56
    ld d, a                                       ; $4ade: $57
    ld e, b                                       ; $4adf: $58
    ld e, c                                       ; $4ae0: $59
    ccf                                           ; $4ae1: $3f
    ld e, d                                       ; $4ae2: $5a
    ld e, e                                       ; $4ae3: $5b
    ld e, h                                       ; $4ae4: $5c
    ld e, l                                       ; $4ae5: $5d
    ld e, [hl]                                    ; $4ae6: $5e
    ld e, a                                       ; $4ae7: $5f
    adc $ff                                       ; $4ae8: $ce $ff
    db $ec                                        ; $4aea: $ec
    db $eb                                        ; $4aeb: $eb
    rst $38                                       ; $4aec: $ff
    ld h, b                                       ; $4aed: $60
    ld h, c                                       ; $4aee: $61
    ld h, d                                       ; $4aef: $62
    ld h, e                                       ; $4af0: $63
    ld h, h                                       ; $4af1: $64
    ld h, l                                       ; $4af2: $65
    ld h, [hl]                                    ; $4af3: $66
    ld h, a                                       ; $4af4: $67
    rst $38                                       ; $4af5: $ff
    ld l, b                                       ; $4af6: $68
    ld l, c                                       ; $4af7: $69

jr_056_4af8:
    ld l, d                                       ; $4af8: $6a
    ld l, e                                       ; $4af9: $6b
    ld l, h                                       ; $4afa: $6c
    ld l, l                                       ; $4afb: $6d
    ld l, [hl]                                    ; $4afc: $6e
    ld l, a                                       ; $4afd: $6f
    db $fc                                        ; $4afe: $fc
    adc $ff                                       ; $4aff: $ce $ff
    db $ec                                        ; $4b01: $ec
    db $eb                                        ; $4b02: $eb
    ld [hl], b                                    ; $4b03: $70
    ld [hl], c                                    ; $4b04: $71
    ld [hl], d                                    ; $4b05: $72
    ld [hl], e                                    ; $4b06: $73
    ld [hl], h                                    ; $4b07: $74
    ld [hl], l                                    ; $4b08: $75
    rst $38                                       ; $4b09: $ff
    halt                                          ; $4b0a: $76
    ld [hl], a                                    ; $4b0b: $77
    ld a, b                                       ; $4b0c: $78
    ld a, c                                       ; $4b0d: $79
    ld a, d                                       ; $4b0e: $7a
    ld a, e                                       ; $4b0f: $7b
    ld a, h                                       ; $4b10: $7c
    ld a, l                                       ; $4b11: $7d
    di                                            ; $4b12: $f3
    ld a, [hl]                                    ; $4b13: $7e
    ld a, a                                       ; $4b14: $7f
    adc $ff                                       ; $4b15: $ce $ff
    ld a, c                                       ; $4b17: $79
    ld l, h                                       ; $4b18: $6c
    add c                                         ; $4b19: $81
    add d                                         ; $4b1a: $82
    add e                                         ; $4b1b: $83
    add h                                         ; $4b1c: $84
    rst $38                                       ; $4b1d: $ff
    add l                                         ; $4b1e: $85
    add [hl]                                      ; $4b1f: $86
    add a                                         ; $4b20: $87
    adc b                                         ; $4b21: $88
    adc c                                         ; $4b22: $89
    adc d                                         ; $4b23: $8a
    adc e                                         ; $4b24: $8b
    adc h                                         ; $4b25: $8c
    rst $20                                       ; $4b26: $e7
    adc l                                         ; $4b27: $8d
    adc [hl]                                      ; $4b28: $8e
    adc a                                         ; $4b29: $8f
    adc $ff                                       ; $4b2a: $ce $ff
    db $ec                                        ; $4b2c: $ec
    db $eb                                        ; $4b2d: $eb
    sub b                                         ; $4b2e: $90
    sub c                                         ; $4b2f: $91
    sub d                                         ; $4b30: $92
    rst $38                                       ; $4b31: $ff
    sub e                                         ; $4b32: $93
    sub h                                         ; $4b33: $94
    sub l                                         ; $4b34: $95
    sub [hl]                                      ; $4b35: $96
    sub a                                         ; $4b36: $97
    sbc b                                         ; $4b37: $98
    sbc c                                         ; $4b38: $99
    sbc d                                         ; $4b39: $9a
    sbc a                                         ; $4b3a: $9f
    sbc e                                         ; $4b3b: $9b
    sbc h                                         ; $4b3c: $9c
    sbc l                                         ; $4b3d: $9d
    sbc [hl]                                      ; $4b3e: $9e
    sbc a                                         ; $4b3f: $9f
    adc $ff                                       ; $4b40: $ce $ff
    db $ec                                        ; $4b42: $ec
    db $eb                                        ; $4b43: $eb
    and b                                         ; $4b44: $a0
    rst $38                                       ; $4b45: $ff
    and c                                         ; $4b46: $a1
    and d                                         ; $4b47: $a2
    and e                                         ; $4b48: $a3
    and h                                         ; $4b49: $a4
    and l                                         ; $4b4a: $a5
    and [hl]                                      ; $4b4b: $a6
    and a                                         ; $4b4c: $a7
    xor b                                         ; $4b4d: $a8
    ld a, a                                       ; $4b4e: $7f
    xor c                                         ; $4b4f: $a9
    xor d                                         ; $4b50: $aa
    xor e                                         ; $4b51: $ab
    xor h                                         ; $4b52: $ac
    xor l                                         ; $4b53: $ad
    xor [hl]                                      ; $4b54: $ae
    xor a                                         ; $4b55: $af
    adc $ff                                       ; $4b56: $ce $ff
    cp $ec                                        ; $4b58: $fe $ec
    db $eb                                        ; $4b5a: $eb
    or b                                          ; $4b5b: $b0
    or c                                          ; $4b5c: $b1
    or d                                          ; $4b5d: $b2
    or e                                          ; $4b5e: $b3
    or h                                          ; $4b5f: $b4
    or l                                          ; $4b60: $b5
    or [hl]                                       ; $4b61: $b6
    rst $38                                       ; $4b62: $ff
    or a                                          ; $4b63: $b7
    cp b                                          ; $4b64: $b8
    cp c                                          ; $4b65: $b9
    cp d                                          ; $4b66: $ba
    cp e                                          ; $4b67: $bb
    cp h                                          ; $4b68: $bc
    cp l                                          ; $4b69: $bd
    cp [hl]                                       ; $4b6a: $be
    ld bc, $cebf                                  ; $4b6b: $01 $bf $ce
    rst $38                                       ; $4b6e: $ff
    rst $38                                       ; $4b6f: $ff
    rst $38                                       ; $4b70: $ff
    rst $38                                       ; $4b71: $ff
    rst $38                                       ; $4b72: $ff
    rst $38                                       ; $4b73: $ff
    rst $38                                       ; $4b74: $ff
    rst $38                                       ; $4b75: $ff
    rst $38                                       ; $4b76: $ff
    rst $38                                       ; $4b77: $ff
    rst $38                                       ; $4b78: $ff
    rst $38                                       ; $4b79: $ff
    rst $38                                       ; $4b7a: $ff
    nop                                           ; $4b7b: $00
    rst $38                                       ; $4b7c: $ff
    rst $38                                       ; $4b7d: $ff
    rst $38                                       ; $4b7e: $ff
    rst $38                                       ; $4b7f: $ff
    rst $38                                       ; $4b80: $ff
    rst $38                                       ; $4b81: $ff
    rst $38                                       ; $4b82: $ff
    rst $38                                       ; $4b83: $ff
    rst $38                                       ; $4b84: $ff
    rst $38                                       ; $4b85: $ff
    rst $38                                       ; $4b86: $ff
    rst $38                                       ; $4b87: $ff
    rst $38                                       ; $4b88: $ff
    rst $38                                       ; $4b89: $ff
    rst $38                                       ; $4b8a: $ff
    rst $38                                       ; $4b8b: $ff
    nop                                           ; $4b8c: $00
    rst $38                                       ; $4b8d: $ff
    rst $38                                       ; $4b8e: $ff
    rst $38                                       ; $4b8f: $ff
    rst $38                                       ; $4b90: $ff
    rst $38                                       ; $4b91: $ff
    rst $38                                       ; $4b92: $ff
    rst $38                                       ; $4b93: $ff
    rst $38                                       ; $4b94: $ff
    rst $38                                       ; $4b95: $ff
    rst $38                                       ; $4b96: $ff
    rst $38                                       ; $4b97: $ff
    rst $38                                       ; $4b98: $ff
    rst $38                                       ; $4b99: $ff
    rst $38                                       ; $4b9a: $ff
    rst $38                                       ; $4b9b: $ff
    rst $38                                       ; $4b9c: $ff
    nop                                           ; $4b9d: $00
    rst $38                                       ; $4b9e: $ff
    rst $38                                       ; $4b9f: $ff
    rst $38                                       ; $4ba0: $ff
    rst $38                                       ; $4ba1: $ff
    rst $38                                       ; $4ba2: $ff
    rst $38                                       ; $4ba3: $ff
    rst $38                                       ; $4ba4: $ff
    rst $38                                       ; $4ba5: $ff
    rst $38                                       ; $4ba6: $ff
    rst $38                                       ; $4ba7: $ff
    rst $38                                       ; $4ba8: $ff
    rst $38                                       ; $4ba9: $ff
    rst $38                                       ; $4baa: $ff
    rst $38                                       ; $4bab: $ff
    rst $38                                       ; $4bac: $ff
    rst $38                                       ; $4bad: $ff
    nop                                           ; $4bae: $00
    rst $38                                       ; $4baf: $ff
    rst $38                                       ; $4bb0: $ff
    rst $38                                       ; $4bb1: $ff
    rst $38                                       ; $4bb2: $ff
    rst $38                                       ; $4bb3: $ff
    rst $38                                       ; $4bb4: $ff
    rst $38                                       ; $4bb5: $ff
    rst $38                                       ; $4bb6: $ff
    rst $38                                       ; $4bb7: $ff
    rst $38                                       ; $4bb8: $ff
    rst $38                                       ; $4bb9: $ff
    rst $38                                       ; $4bba: $ff
    rst $38                                       ; $4bbb: $ff
    rst $38                                       ; $4bbc: $ff
    rst $38                                       ; $4bbd: $ff
    rst $38                                       ; $4bbe: $ff
    nop                                           ; $4bbf: $00
    rst $38                                       ; $4bc0: $ff
    rst $38                                       ; $4bc1: $ff
    rst $38                                       ; $4bc2: $ff
    rst $38                                       ; $4bc3: $ff
    rst $38                                       ; $4bc4: $ff
    rst $38                                       ; $4bc5: $ff
    rst $38                                       ; $4bc6: $ff
    rst $38                                       ; $4bc7: $ff
    rst $38                                       ; $4bc8: $ff
    rst $38                                       ; $4bc9: $ff
    rst $38                                       ; $4bca: $ff
    rst $38                                       ; $4bcb: $ff
    rst $38                                       ; $4bcc: $ff
    rst $38                                       ; $4bcd: $ff
    rst $38                                       ; $4bce: $ff
    rst $38                                       ; $4bcf: $ff
    nop                                           ; $4bd0: $00
    rst $38                                       ; $4bd1: $ff
    rst $38                                       ; $4bd2: $ff
    rst $38                                       ; $4bd3: $ff
    rst $38                                       ; $4bd4: $ff
    rst $38                                       ; $4bd5: $ff
    rst $38                                       ; $4bd6: $ff
    rst $38                                       ; $4bd7: $ff
    rst $38                                       ; $4bd8: $ff
    rst $38                                       ; $4bd9: $ff
    rst $38                                       ; $4bda: $ff
    rst $38                                       ; $4bdb: $ff
    rst $38                                       ; $4bdc: $ff
    rst $38                                       ; $4bdd: $ff
    rst $38                                       ; $4bde: $ff
    rst $38                                       ; $4bdf: $ff

Jump_056_4be0:
    rst $38                                       ; $4be0: $ff
    nop                                           ; $4be1: $00
    rst $38                                       ; $4be2: $ff
    rst $38                                       ; $4be3: $ff
    rst $38                                       ; $4be4: $ff
    rst $38                                       ; $4be5: $ff
    rst $38                                       ; $4be6: $ff
    rst $38                                       ; $4be7: $ff
    rst $38                                       ; $4be8: $ff
    rst $38                                       ; $4be9: $ff
    rst $38                                       ; $4bea: $ff
    rst $38                                       ; $4beb: $ff
    rst $38                                       ; $4bec: $ff
    rst $38                                       ; $4bed: $ff
    rst $38                                       ; $4bee: $ff
    rst $38                                       ; $4bef: $ff
    rst $38                                       ; $4bf0: $ff
    rst $38                                       ; $4bf1: $ff
    nop                                           ; $4bf2: $00
    rst $38                                       ; $4bf3: $ff
    rst $38                                       ; $4bf4: $ff
    rst $38                                       ; $4bf5: $ff
    rst $38                                       ; $4bf6: $ff
    rst $38                                       ; $4bf7: $ff
    rst $38                                       ; $4bf8: $ff
    rst $38                                       ; $4bf9: $ff
    rst $38                                       ; $4bfa: $ff
    rst $38                                       ; $4bfb: $ff
    rst $38                                       ; $4bfc: $ff
    rst $38                                       ; $4bfd: $ff
    rst $38                                       ; $4bfe: $ff
    rst $38                                       ; $4bff: $ff
    rst $38                                       ; $4c00: $ff
    rst $38                                       ; $4c01: $ff
    rst $38                                       ; $4c02: $ff
    nop                                           ; $4c03: $00
    rst $38                                       ; $4c04: $ff
    rst $38                                       ; $4c05: $ff
    rst $38                                       ; $4c06: $ff
    rst $38                                       ; $4c07: $ff
    rst $38                                       ; $4c08: $ff
    rst $38                                       ; $4c09: $ff
    rst $38                                       ; $4c0a: $ff
    ld a, [c]                                     ; $4c0b: $f2
    nop                                           ; $4c0c: $00
    nop                                           ; $4c0d: $00
    nop                                           ; $4c0e: $00
    and l                                         ; $4c0f: $a5
    nop                                           ; $4c10: $00
    rst $38                                       ; $4c11: $ff
    push hl                                       ; $4c12: $e5
    ld [hl-], a                                   ; $4c13: $32
    or $e6                                        ; $4c14: $f6 $e6
    rst $30                                       ; $4c16: $f7
    rst $20                                       ; $4c17: $e7
    dec [hl]                                      ; $4c18: $35
    db $ec                                        ; $4c19: $ec
    xor $37                                       ; $4c1a: $ee $37
    db $ec                                        ; $4c1c: $ec
    jp c, $c7f0                                   ; $4c1d: $da $f0 $c7

    add sp, $33                                   ; $4c20: $e8 $33
    ld sp, $f2e0                                  ; $4c22: $31 $e0 $f2
    ld [hl], $30                                  ; $4c25: $36 $30
    scf                                           ; $4c27: $37
    cp a                                          ; $4c28: $bf
    ld h, $20                                     ; $4c29: $26 $20
    daa                                           ; $4c2b: $27
    db $10                                        ; $4c2c: $10
    ld d, $17                                     ; $4c2d: $16 $17
    jp nz, Jump_000_34f6                          ; $4c2f: $c2 $f6 $34

    rst $38                                       ; $4c32: $ff
    ld [hl], $32                                  ; $4c33: $36 $32
    jr nc, jr_056_4c6e                            ; $4c35: $30 $37

    ld sp, $3133                                  ; $4c37: $31 $33 $31
    inc sp                                        ; $4c3a: $33
    nop                                           ; $4c3b: $00
    and b                                         ; $4c3c: $a0
    ei                                            ; $4c3d: $fb
    rst $38                                       ; $4c3e: $ff
    rst $28                                       ; $4c3f: $ef
    nop                                           ; $4c40: $00
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    ld c, e                                       ; $4c43: $4b
    ld c, h                                       ; $4c44: $4c
    ld a, e                                       ; $4c45: $7b
    ld c, h                                       ; $4c46: $4c
    add sp, $4d                                   ; $4c47: $e8 $4d
    and d                                         ; $4c49: $a2
    ld c, a                                       ; $4c4a: $4f
    ld [$c503], a                                 ; $4c4b: $ea $03 $c5
    ld b, $e2                                     ; $4c4e: $06 $e2
    ld bc, $00a0                                  ; $4c50: $01 $a0 $00
    ld [$f003], a                                 ; $4c53: $ea $03 $f0
    inc bc                                        ; $4c56: $03
    push bc                                       ; $4c57: $c5
    ld b, $e2                                     ; $4c58: $06 $e2
    ld bc, $023f                                  ; $4c5a: $01 $3f $02
    xor e                                         ; $4c5d: $ab
    nop                                           ; $4c5e: $00
    inc sp                                        ; $4c5f: $33
    ld bc, $06c5                                  ; $4c60: $01 $c5 $06
    ld [$0825], sp                                ; $4c63: $08 $25 $08
    dec h                                         ; $4c66: $25
    ld [$0825], sp                                ; $4c67: $08 $25 $08
    dec h                                         ; $4c6a: $25
    ld [$0825], sp                                ; $4c6b: $08 $25 $08

jr_056_4c6e:
    dec h                                         ; $4c6e: $25
    ld [$0825], sp                                ; $4c6f: $08 $25 $08
    dec h                                         ; $4c72: $25
    ld [$0825], sp                                ; $4c73: $08 $25 $08
    dec h                                         ; $4c76: $25
    ld [$0825], sp                                ; $4c77: $08 $25 $08
    dec h                                         ; $4c7a: $25
    add l                                         ; $4c7b: $85
    inc c                                         ; $4c7c: $0c
    rst $38                                       ; $4c7d: $ff
    db $e4                                        ; $4c7e: $e4
    dec bc                                        ; $4c7f: $0b
    rst $38                                       ; $4c80: $ff
    rst $20                                       ; $4c81: $e7
    db $ed                                        ; $4c82: $ed
    push hl                                       ; $4c83: $e5
    rst $38                                       ; $4c84: $ff
    rst $38                                       ; $4c85: $ff
    add sp, -$19                                  ; $4c86: $e8 $e7
    dec bc                                        ; $4c88: $0b
    rst $00                                       ; $4c89: $c7
    ld l, e                                       ; $4c8a: $6b
    ld l, e                                       ; $4c8b: $6b
    ld c, e                                       ; $4c8c: $4b
    rst $38                                       ; $4c8d: $ff
    ldh [$c1], a                                  ; $4c8e: $e0 $c1
    rst $38                                       ; $4c90: $ff
    db $f4                                        ; $4c91: $f4
    di                                            ; $4c92: $f3
    dec hl                                        ; $4c93: $2b
    ld l, e                                       ; $4c94: $6b
    pop hl                                        ; $4c95: $e1
    ld l, e                                       ; $4c96: $6b
    ld a, a                                       ; $4c97: $7f
    pop hl                                        ; $4c98: $e1
    cp a                                          ; $4c99: $bf
    pop hl                                        ; $4c9a: $e1
    db $d3                                        ; $4c9b: $d3
    rst $38                                       ; $4c9c: $ff
    db $eb                                        ; $4c9d: $eb
    ld [$4c4c], a                                 ; $4c9e: $ea $4c $4c
    ld c, h                                       ; $4ca1: $4c
    ld [bc], a                                    ; $4ca2: $02
    pop bc                                        ; $4ca3: $c1
    ldh [$2b], a                                  ; $4ca4: $e0 $2b
    pop bc                                        ; $4ca6: $c1
    ld [c], a                                     ; $4ca7: $e2
    cp a                                          ; $4ca8: $bf
    ldh [$c0], a                                  ; $4ca9: $e0 $c0
    ldh [$f0], a                                  ; $4cab: $e0 $f0
    ldh [rIE], a                                  ; $4cad: $e0 $ff
    rst $38                                       ; $4caf: $ff
    ld b, a                                       ; $4cb0: $47
    rst $20                                       ; $4cb1: $e7
    nop                                           ; $4cb2: $00
    rlca                                          ; $4cb3: $07
    ld [c], a                                     ; $4cb4: $e2
    add c                                         ; $4cb5: $81
    db $e3                                        ; $4cb6: $e3
    ld [bc], a                                    ; $4cb7: $02
    db $e3                                        ; $4cb8: $e3
    ret nz                                        ; $4cb9: $c0

    rst $38                                       ; $4cba: $ff
    ret nz                                        ; $4cbb: $c0

    ldh a, [$c1]                                  ; $4cbc: $f0 $c1
    rst $00                                       ; $4cbe: $c7
    ld [hl], b                                    ; $4cbf: $70
    pop hl                                        ; $4cc0: $e1
    rst $38                                       ; $4cc1: $ff
    rst $38                                       ; $4cc2: $ff
    sbc h                                         ; $4cc3: $9c
    add b                                         ; $4cc4: $80
    db $ec                                        ; $4cc5: $ec
    add d                                         ; $4cc6: $82
    add $2b                                       ; $4cc7: $c6 $2b
    dec bc                                        ; $4cc9: $0b
    inc l                                         ; $4cca: $2c
    ret nz                                        ; $4ccb: $c0

    rst $38                                       ; $4ccc: $ff
    ld b, b                                       ; $4ccd: $40
    xor $6b                                       ; $4cce: $ee $6b
    ld b, b                                       ; $4cd0: $40
    ret z                                         ; $4cd1: $c8

    ldh [$c1], a                                  ; $4cd2: $e0 $c1
    jp nz, $c17f                                  ; $4cd4: $c2 $7f $c1

    ccf                                           ; $4cd7: $3f
    rst $38                                       ; $4cd8: $ff
    ret nz                                        ; $4cd9: $c0

    jp z, $e202                                   ; $4cda: $ca $02 $e2

    ld l, e                                       ; $4cdd: $6b
    ret nz                                        ; $4cde: $c0

    ld [c], a                                     ; $4cdf: $e2
    ld [hl], b                                    ; $4ce0: $70

Call_056_4ce1:
    add b                                         ; $4ce1: $80
    jp nz, $ffc0                                  ; $4ce2: $c2 $c0 $ff

Call_056_4ce5:
    ret nz                                        ; $4ce5: $c0

    pop af                                        ; $4ce6: $f1
    cp a                                          ; $4ce7: $bf
    ld [c], a                                     ; $4ce8: $e2
    ld c, e                                       ; $4ce9: $4b
    ld c, e                                       ; $4cea: $4b
    dec hl                                        ; $4ceb: $2b
    ld a, a                                       ; $4cec: $7f
    rst $18                                       ; $4ced: $df
    inc b                                         ; $4cee: $04
    cp a                                          ; $4cef: $bf
    push af                                       ; $4cf0: $f5
    ld b, c                                       ; $4cf1: $41
    ld [c], a                                     ; $4cf2: $e2
    ld c, e                                       ; $4cf3: $4b
    jr c, @-$1e                                   ; $4cf4: $38 $e0

    cp a                                          ; $4cf6: $bf
    rst $18                                       ; $4cf7: $df
    ld a, a                                       ; $4cf8: $7f
    ld a, [c]                                     ; $4cf9: $f2
    add c                                         ; $4cfa: $81
    and c                                         ; $4cfb: $a1
    ret nz                                        ; $4cfc: $c0

    ld [c], a                                     ; $4cfd: $e2
    ld bc, $c04b                                  ; $4cfe: $01 $4b $c0
    rst $38                                       ; $4d01: $ff
    cp $cc                                        ; $4d02: $fe $cc
    add d                                         ; $4d04: $82
    and b                                         ; $4d05: $a0
    ret nz                                        ; $4d06: $c0

    push hl                                       ; $4d07: $e5
    rst $38                                       ; $4d08: $ff
    sbc a                                         ; $4d09: $9f
    ret nz                                        ; $4d0a: $c0

    pop af                                        ; $4d0b: $f1
    cp a                                          ; $4d0c: $bf
    pop hl                                        ; $4d0d: $e1
    db $10                                        ; $4d0e: $10
    add b                                         ; $4d0f: $80
    ld [c], a                                     ; $4d10: $e2
    ld a, c                                       ; $4d11: $79
    and e                                         ; $4d12: $a3
    call z, Call_056_7fff                         ; $4d13: $cc $ff $7f
    db $ed                                        ; $4d16: $ed
    ld c, e                                       ; $4d17: $4b
    pop bc                                        ; $4d18: $c1
    add d                                         ; $4d19: $82
    add b                                         ; $4d1a: $80
    sbc a                                         ; $4d1b: $9f
    dec a                                         ; $4d1c: $3d
    push de                                       ; $4d1d: $d5
    ld [$c440], sp                                ; $4d1e: $08 $40 $c4
    pop bc                                        ; $4d21: $c1
    rst $38                                       ; $4d22: $ff
    cp $fd                                        ; $4d23: $fe $fd
    inc l                                         ; $4d25: $2c
    db $dd                                        ; $4d26: $dd
    rst $38                                       ; $4d27: $ff
    rst $38                                       ; $4d28: $ff
    rst $38                                       ; $4d29: $ff
    rst $38                                       ; $4d2a: $ff
    rst $38                                       ; $4d2b: $ff
    rst $38                                       ; $4d2c: $ff
    rst $38                                       ; $4d2d: $ff
    nop                                           ; $4d2e: $00
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
    rst $38                                       ; $4d39: $ff
    rst $38                                       ; $4d3a: $ff
    rst $38                                       ; $4d3b: $ff
    rst $38                                       ; $4d3c: $ff
    rst $38                                       ; $4d3d: $ff
    rst $38                                       ; $4d3e: $ff
    nop                                           ; $4d3f: $00
    rst $38                                       ; $4d40: $ff
    rst $38                                       ; $4d41: $ff
    rst $38                                       ; $4d42: $ff
    rst $38                                       ; $4d43: $ff
    rst $38                                       ; $4d44: $ff
    rst $38                                       ; $4d45: $ff
    rst $38                                       ; $4d46: $ff
    rst $38                                       ; $4d47: $ff
    rst $38                                       ; $4d48: $ff
    rst $38                                       ; $4d49: $ff
    rst $38                                       ; $4d4a: $ff
    rst $38                                       ; $4d4b: $ff
    rst $38                                       ; $4d4c: $ff
    rst $38                                       ; $4d4d: $ff
    rst $38                                       ; $4d4e: $ff
    rst $38                                       ; $4d4f: $ff
    nop                                           ; $4d50: $00
    rst $38                                       ; $4d51: $ff
    rst $38                                       ; $4d52: $ff
    rst $38                                       ; $4d53: $ff
    rst $38                                       ; $4d54: $ff
    rst $38                                       ; $4d55: $ff
    rst $38                                       ; $4d56: $ff
    rst $38                                       ; $4d57: $ff
    rst $38                                       ; $4d58: $ff
    rst $38                                       ; $4d59: $ff
    rst $38                                       ; $4d5a: $ff
    rst $38                                       ; $4d5b: $ff
    rst $38                                       ; $4d5c: $ff
    rst $38                                       ; $4d5d: $ff
    rst $38                                       ; $4d5e: $ff
    rst $38                                       ; $4d5f: $ff
    rst $38                                       ; $4d60: $ff
    nop                                           ; $4d61: $00
    rst $38                                       ; $4d62: $ff
    rst $38                                       ; $4d63: $ff
    rst $38                                       ; $4d64: $ff
    rst $38                                       ; $4d65: $ff
    rst $38                                       ; $4d66: $ff
    rst $38                                       ; $4d67: $ff
    rst $38                                       ; $4d68: $ff
    rst $38                                       ; $4d69: $ff
    rst $38                                       ; $4d6a: $ff
    rst $38                                       ; $4d6b: $ff
    rst $38                                       ; $4d6c: $ff
    rst $38                                       ; $4d6d: $ff
    rst $38                                       ; $4d6e: $ff
    rst $38                                       ; $4d6f: $ff
    rst $38                                       ; $4d70: $ff
    rst $38                                       ; $4d71: $ff
    nop                                           ; $4d72: $00
    rst $38                                       ; $4d73: $ff
    rst $38                                       ; $4d74: $ff
    rst $38                                       ; $4d75: $ff
    rst $38                                       ; $4d76: $ff
    rst $38                                       ; $4d77: $ff
    rst $38                                       ; $4d78: $ff
    rst $38                                       ; $4d79: $ff
    rst $38                                       ; $4d7a: $ff
    rst $38                                       ; $4d7b: $ff
    rst $38                                       ; $4d7c: $ff
    rst $38                                       ; $4d7d: $ff
    rst $38                                       ; $4d7e: $ff
    rst $38                                       ; $4d7f: $ff
    rst $38                                       ; $4d80: $ff
    rst $38                                       ; $4d81: $ff
    rst $38                                       ; $4d82: $ff
    nop                                           ; $4d83: $00
    rst $38                                       ; $4d84: $ff
    rst $38                                       ; $4d85: $ff
    rst $38                                       ; $4d86: $ff
    rst $38                                       ; $4d87: $ff
    rst $38                                       ; $4d88: $ff
    rst $38                                       ; $4d89: $ff
    rst $38                                       ; $4d8a: $ff
    rst $38                                       ; $4d8b: $ff
    rst $38                                       ; $4d8c: $ff
    rst $38                                       ; $4d8d: $ff
    rst $38                                       ; $4d8e: $ff
    rst $38                                       ; $4d8f: $ff
    rst $38                                       ; $4d90: $ff
    rst $38                                       ; $4d91: $ff
    rst $38                                       ; $4d92: $ff
    rst $38                                       ; $4d93: $ff
    nop                                           ; $4d94: $00
    rst $38                                       ; $4d95: $ff
    rst $38                                       ; $4d96: $ff
    rst $38                                       ; $4d97: $ff
    rst $38                                       ; $4d98: $ff
    rst $38                                       ; $4d99: $ff
    rst $38                                       ; $4d9a: $ff
    rst $38                                       ; $4d9b: $ff
    rst $38                                       ; $4d9c: $ff
    rst $38                                       ; $4d9d: $ff
    rst $38                                       ; $4d9e: $ff
    rst $38                                       ; $4d9f: $ff
    rst $38                                       ; $4da0: $ff
    rst $38                                       ; $4da1: $ff
    rst $38                                       ; $4da2: $ff
    rst $38                                       ; $4da3: $ff
    rst $38                                       ; $4da4: $ff
    nop                                           ; $4da5: $00
    rst $38                                       ; $4da6: $ff
    rst $38                                       ; $4da7: $ff
    rst $38                                       ; $4da8: $ff
    rst $38                                       ; $4da9: $ff
    rst $38                                       ; $4daa: $ff
    rst $38                                       ; $4dab: $ff
    rst $38                                       ; $4dac: $ff
    rst $38                                       ; $4dad: $ff
    rst $38                                       ; $4dae: $ff
    rst $38                                       ; $4daf: $ff
    rst $38                                       ; $4db0: $ff
    rst $38                                       ; $4db1: $ff
    rst $38                                       ; $4db2: $ff
    rst $38                                       ; $4db3: $ff
    rst $38                                       ; $4db4: $ff
    rst $38                                       ; $4db5: $ff
    nop                                           ; $4db6: $00
    rst $38                                       ; $4db7: $ff
    rst $38                                       ; $4db8: $ff
    rst $38                                       ; $4db9: $ff
    rst $38                                       ; $4dba: $ff
    rst $38                                       ; $4dbb: $ff
    rst $38                                       ; $4dbc: $ff
    rst $38                                       ; $4dbd: $ff
    rst $38                                       ; $4dbe: $ff
    rst $38                                       ; $4dbf: $ff
    rst $38                                       ; $4dc0: $ff
    rst $38                                       ; $4dc1: $ff
    rst $38                                       ; $4dc2: $ff
    rst $38                                       ; $4dc3: $ff
    rst $38                                       ; $4dc4: $ff
    rst $38                                       ; $4dc5: $ff
    rst $38                                       ; $4dc6: $ff
    nop                                           ; $4dc7: $00
    rst $38                                       ; $4dc8: $ff
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
    nop                                           ; $4dd8: $00
    rst $38                                       ; $4dd9: $ff
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
    ei                                            ; $4de4: $fb
    nop                                           ; $4de5: $00
    nop                                           ; $4de6: $00
    nop                                           ; $4de7: $00
    ld l, l                                       ; $4de8: $6d
    jr nz, @+$01                                  ; $4de9: $20 $ff

    db $e3                                        ; $4deb: $e3
    rrca                                          ; $4dec: $0f
    ld sp, $e7ff                                  ; $4ded: $31 $ff $e7
    add hl, hl                                    ; $4df0: $29
    nop                                           ; $4df1: $00
    rst $38                                       ; $4df2: $ff
    rst $38                                       ; $4df3: $ff
    db $fc                                        ; $4df4: $fc
    rst $20                                       ; $4df5: $e7
    and $c1                                       ; $4df6: $e6 $c1
    push hl                                       ; $4df8: $e5
    ld c, l                                       ; $4df9: $4d
    ld a, [hl-]                                   ; $4dfa: $3a
    ld d, h                                       ; $4dfb: $54
    ld d, h                                       ; $4dfc: $54
    dec sp                                        ; $4dfd: $3b
    ld c, l                                       ; $4dfe: $4d
    ld h, d                                       ; $4dff: $62
    pop bc                                        ; $4e00: $c1
    ld [c], a                                     ; $4e01: $e2
    ld hl, $ffca                                  ; $4e02: $21 $ca $ff
    ret nz                                        ; $4e05: $c0

jr_056_4e06:
    db $ec                                        ; $4e06: $ec
    pop bc                                        ; $4e07: $c1
    ldh [$32], a                                  ; $4e08: $e0 $32
    jr nc, @+$01                                  ; $4e0a: $30 $ff

    ldh [$9d], a                                  ; $4e0c: $e0 $9d
    ld [hl-], a                                   ; $4e0e: $32
    cp a                                          ; $4e0f: $bf
    ldh [$29], a                                  ; $4e10: $e0 $29
    ld hl, $ca20                                  ; $4e12: $21 $20 $ca
    rst $38                                       ; $4e15: $ff
    add sp, -$19                                  ; $4e16: $e8 $e7
    dec b                                         ; $4e18: $05
    ld a, a                                       ; $4e19: $7f
    dec b                                         ; $4e1a: $05
    dec b                                         ; $4e1b: $05
    ld a, [bc]                                    ; $4e1c: $0a
    dec bc                                        ; $4e1d: $0b
    ld sp, $3931                                  ; $4e1e: $31 $31 $39
    pop bc                                        ; $4e21: $c1
    pop hl                                        ; $4e22: $e1
    ld a, a                                       ; $4e23: $7f
    ld l, h                                       ; $4e24: $6c
    ld l, h                                       ; $4e25: $6c
    add hl, sp                                    ; $4e26: $39
    ld sp, $2b31                                  ; $4e27: $31 $31 $2b
    db $10                                        ; $4e2a: $10
    ret nz                                        ; $4e2b: $c0

    rst $38                                       ; $4e2c: $ff
    inc e                                         ; $4e2d: $1c
    jp hl                                         ; $4e2e: $e9


    add sp, $08                                   ; $4e2f: $e8 $08
    db $e3                                        ; $4e31: $e3
    ld c, c                                       ; $4e32: $49
    ld c, b                                       ; $4e33: $48
    ld l, h                                       ; $4e34: $6c
    pop bc                                        ; $4e35: $c1
    pop hl                                        ; $4e36: $e1
    ret nz                                        ; $4e37: $c0

    rst $38                                       ; $4e38: $ff
    ret nz                                        ; $4e39: $c0

    db $f4                                        ; $4e3a: $f4
    ld sp, $c439                                  ; $4e3b: $31 $39 $c4
    ldh [$c1], a                                  ; $4e3e: $e0 $c1
    ldh [rLCDC], a                                ; $4e40: $e0 $40
    pop hl                                        ; $4e42: $e1
    rla                                           ; $4e43: $17
    jr z, jr_056_4e06                             ; $4e44: $28 $c0

    rst $38                                       ; $4e46: $ff
    add b                                         ; $4e47: $80
    xor $35                                       ; $4e48: $ee $35
    ld d, e                                       ; $4e4a: $53
    ret nz                                        ; $4e4b: $c0

    db $e3                                        ; $4e4c: $e3
    ld d, b                                       ; $4e4d: $50
    ld a, d                                       ; $4e4e: $7a
    ret nz                                        ; $4e4f: $c0

    dec d                                         ; $4e50: $15
    ld d, $c0                                     ; $4e51: $16 $c0
    rst $38                                       ; $4e53: $ff
    ld b, b                                       ; $4e54: $40
    db $ed                                        ; $4e55: $ed
    dec bc                                        ; $4e56: $0b
    ld c, l                                       ; $4e57: $4d
    dec [hl]                                      ; $4e58: $35
    ld b, e                                       ; $4e59: $43
    pop hl                                        ; $4e5a: $e1
    ld l, h                                       ; $4e5b: $6c
    ret nz                                        ; $4e5c: $c0

    jp nz, $e03f                                  ; $4e5d: $c2 $3f $e0

    jp z, $e8ff                                   ; $4e60: $ca $ff $e8

    rst $20                                       ; $4e63: $e7
    db $ed                                        ; $4e64: $ed
    ld a, [de]                                    ; $4e65: $1a
    pop bc                                        ; $4e66: $c1
    pop hl                                        ; $4e67: $e1
    ld [hl-], a                                   ; $4e68: $32
    ld l, l                                       ; $4e69: $6d
    jp Jump_000_30c1                              ; $4e6a: $c3 $c1 $30


    jr nc, jr_056_4ed9                            ; $4e6d: $30 $6a

    ld l, b                                       ; $4e6f: $68
    nop                                           ; $4e70: $00
    ldh [$c0], a                                  ; $4e71: $e0 $c0
    rst $38                                       ; $4e73: $ff
    db $eb                                        ; $4e74: $eb
    ld [$0208], a                                 ; $4e75: $ea $08 $02
    pop hl                                        ; $4e78: $e1
    ld l, l                                       ; $4e79: $6d
    ld l, l                                       ; $4e7a: $6d
    cp a                                          ; $4e7b: $bf
    ldh [$8e], a                                  ; $4e7c: $e0 $8e
    pop bc                                        ; $4e7e: $c1
    ldh [rOCPS], a                                ; $4e7f: $e0 $6a
    ld b, d                                       ; $4e81: $42
    inc a                                         ; $4e82: $3c
    ret nz                                        ; $4e83: $c0

    rst $38                                       ; $4e84: $ff
    ret nz                                        ; $4e85: $c0

    xor h                                         ; $4e86: $ac
    ld a, a                                       ; $4e87: $7f
    ldh [rHDMA3], a                               ; $4e88: $e0 $53
    inc d                                         ; $4e8a: $14
    ret nz                                        ; $4e8b: $c0

    ldh [$7e], a                                  ; $4e8c: $e0 $7e
    ldh [rOCPS], a                                ; $4e8e: $e0 $6a
    rst $38                                       ; $4e90: $ff
    ldh [rHDMA2], a                               ; $4e91: $e0 $52
    ret nz                                        ; $4e93: $c0

    cp a                                          ; $4e94: $bf
    add b                                         ; $4e95: $80
    xor h                                         ; $4e96: $ac
    ld a, a                                       ; $4e97: $7f
    ldh [$8d], a                                  ; $4e98: $e0 $8d
    ld d, d                                       ; $4e9a: $52
    ret nz                                        ; $4e9b: $c0

    pop hl                                        ; $4e9c: $e1
    ld l, h                                       ; $4e9d: $6c
    ld l, h                                       ; $4e9e: $6c
    ret nz                                        ; $4e9f: $c0

    db $e4                                        ; $4ea0: $e4
    ld b, b                                       ; $4ea1: $40
    cp a                                          ; $4ea2: $bf
    ld b, b                                       ; $4ea3: $40
    xor e                                         ; $4ea4: $ab
    ld a, [de]                                    ; $4ea5: $1a
    ld c, b                                       ; $4ea6: $48
    ld b, b                                       ; $4ea7: $40
    ld [c], a                                     ; $4ea8: $e2
    ret nz                                        ; $4ea9: $c0

    db $e4                                        ; $4eaa: $e4
    rst $38                                       ; $4eab: $ff
    pop bc                                        ; $4eac: $c1
    ld sp, $ffca                                  ; $4ead: $31 $ca $ff
    nop                                           ; $4eb0: $00
    xor c                                         ; $4eb1: $a9
    ld [$c1c0], sp                                ; $4eb2: $08 $c0 $c1
    ld [c], a                                     ; $4eb5: $e2
    add b                                         ; $4eb6: $80
    db $e4                                        ; $4eb7: $e4
    ld e, c                                       ; $4eb8: $59
    ld a, $c1                                     ; $4eb9: $3e $c1
    ret nz                                        ; $4ebb: $c0

    rst $38                                       ; $4ebc: $ff
    ret nz                                        ; $4ebd: $c0

    adc e                                         ; $4ebe: $8b
    ld a, [de]                                    ; $4ebf: $1a
    ld sp, $3d49                                  ; $4ec0: $31 $49 $3d
    ld c, h                                       ; $4ec3: $4c
    ld b, b                                       ; $4ec4: $40
    ld [c], a                                     ; $4ec5: $e2
    ld [hl], $7e                                  ; $4ec6: $36 $7e
    ld l, a                                       ; $4ec8: $6f
    and c                                         ; $4ec9: $a1
    ld b, b                                       ; $4eca: $40
    rst $38                                       ; $4ecb: $ff
    add b                                         ; $4ecc: $80
    adc [hl]                                      ; $4ecd: $8e
    ld a, [$c07d]                                 ; $4ece: $fa $7d $c0
    ld a, $82                                     ; $4ed1: $3e $82
    add b                                         ; $4ed3: $80
    ld d, l                                       ; $4ed4: $55
    ld a, [hl]                                    ; $4ed5: $7e
    ld l, a                                       ; $4ed6: $6f
    add b                                         ; $4ed7: $80
    add b                                         ; $4ed8: $80

jr_056_4ed9:
    nop                                           ; $4ed9: $00
    ret nz                                        ; $4eda: $c0

    ldh [$c0], a                                  ; $4edb: $e0 $c0
    rst $18                                       ; $4edd: $df
    rst $38                                       ; $4ede: $ff
    rst $38                                       ; $4edf: $ff
    rst $38                                       ; $4ee0: $ff
    rst $38                                       ; $4ee1: $ff
    rst $38                                       ; $4ee2: $ff
    rst $38                                       ; $4ee3: $ff
    rst $38                                       ; $4ee4: $ff
    rst $38                                       ; $4ee5: $ff
    rst $38                                       ; $4ee6: $ff
    rst $38                                       ; $4ee7: $ff
    rst $38                                       ; $4ee8: $ff
    rst $38                                       ; $4ee9: $ff
    nop                                           ; $4eea: $00
    rst $38                                       ; $4eeb: $ff
    rst $38                                       ; $4eec: $ff
    rst $38                                       ; $4eed: $ff
    rst $38                                       ; $4eee: $ff
    rst $38                                       ; $4eef: $ff
    rst $38                                       ; $4ef0: $ff
    rst $38                                       ; $4ef1: $ff
    rst $38                                       ; $4ef2: $ff
    rst $38                                       ; $4ef3: $ff
    rst $38                                       ; $4ef4: $ff
    rst $38                                       ; $4ef5: $ff
    rst $38                                       ; $4ef6: $ff
    rst $38                                       ; $4ef7: $ff
    rst $38                                       ; $4ef8: $ff
    rst $38                                       ; $4ef9: $ff
    rst $38                                       ; $4efa: $ff
    nop                                           ; $4efb: $00
    rst $38                                       ; $4efc: $ff
    rst $38                                       ; $4efd: $ff
    rst $38                                       ; $4efe: $ff
    rst $38                                       ; $4eff: $ff
    rst $38                                       ; $4f00: $ff
    rst $38                                       ; $4f01: $ff
    rst $38                                       ; $4f02: $ff
    rst $38                                       ; $4f03: $ff
    rst $38                                       ; $4f04: $ff
    rst $38                                       ; $4f05: $ff
    rst $38                                       ; $4f06: $ff
    rst $38                                       ; $4f07: $ff
    rst $38                                       ; $4f08: $ff
    rst $38                                       ; $4f09: $ff
    rst $38                                       ; $4f0a: $ff
    rst $38                                       ; $4f0b: $ff
    nop                                           ; $4f0c: $00
    rst $38                                       ; $4f0d: $ff
    rst $38                                       ; $4f0e: $ff
    rst $38                                       ; $4f0f: $ff
    rst $38                                       ; $4f10: $ff
    rst $38                                       ; $4f11: $ff
    rst $38                                       ; $4f12: $ff
    rst $38                                       ; $4f13: $ff
    rst $38                                       ; $4f14: $ff
    rst $38                                       ; $4f15: $ff
    rst $38                                       ; $4f16: $ff
    rst $38                                       ; $4f17: $ff
    rst $38                                       ; $4f18: $ff
    rst $38                                       ; $4f19: $ff
    rst $38                                       ; $4f1a: $ff
    rst $38                                       ; $4f1b: $ff
    rst $38                                       ; $4f1c: $ff
    nop                                           ; $4f1d: $00
    rst $38                                       ; $4f1e: $ff
    rst $38                                       ; $4f1f: $ff
    rst $38                                       ; $4f20: $ff
    rst $38                                       ; $4f21: $ff
    rst $38                                       ; $4f22: $ff
    rst $38                                       ; $4f23: $ff
    rst $38                                       ; $4f24: $ff
    rst $38                                       ; $4f25: $ff
    rst $38                                       ; $4f26: $ff
    rst $38                                       ; $4f27: $ff
    rst $38                                       ; $4f28: $ff
    rst $38                                       ; $4f29: $ff
    rst $38                                       ; $4f2a: $ff
    rst $38                                       ; $4f2b: $ff
    rst $38                                       ; $4f2c: $ff
    rst $38                                       ; $4f2d: $ff
    nop                                           ; $4f2e: $00
    rst $38                                       ; $4f2f: $ff
    rst $38                                       ; $4f30: $ff
    rst $38                                       ; $4f31: $ff
    rst $38                                       ; $4f32: $ff
    rst $38                                       ; $4f33: $ff
    rst $38                                       ; $4f34: $ff
    rst $38                                       ; $4f35: $ff
    rst $38                                       ; $4f36: $ff
    rst $38                                       ; $4f37: $ff
    rst $38                                       ; $4f38: $ff
    rst $38                                       ; $4f39: $ff
    rst $38                                       ; $4f3a: $ff
    rst $38                                       ; $4f3b: $ff
    rst $38                                       ; $4f3c: $ff
    rst $38                                       ; $4f3d: $ff
    rst $38                                       ; $4f3e: $ff
    nop                                           ; $4f3f: $00
    rst $38                                       ; $4f40: $ff
    rst $38                                       ; $4f41: $ff
    rst $38                                       ; $4f42: $ff
    rst $38                                       ; $4f43: $ff
    rst $38                                       ; $4f44: $ff
    rst $38                                       ; $4f45: $ff
    rst $38                                       ; $4f46: $ff
    rst $38                                       ; $4f47: $ff
    rst $38                                       ; $4f48: $ff
    rst $38                                       ; $4f49: $ff
    rst $38                                       ; $4f4a: $ff
    rst $38                                       ; $4f4b: $ff
    rst $38                                       ; $4f4c: $ff
    rst $38                                       ; $4f4d: $ff
    rst $38                                       ; $4f4e: $ff
    rst $38                                       ; $4f4f: $ff
    nop                                           ; $4f50: $00
    rst $38                                       ; $4f51: $ff
    rst $38                                       ; $4f52: $ff
    rst $38                                       ; $4f53: $ff
    rst $38                                       ; $4f54: $ff
    rst $38                                       ; $4f55: $ff
    rst $38                                       ; $4f56: $ff
    rst $38                                       ; $4f57: $ff
    rst $38                                       ; $4f58: $ff
    rst $38                                       ; $4f59: $ff
    rst $38                                       ; $4f5a: $ff
    rst $38                                       ; $4f5b: $ff
    rst $38                                       ; $4f5c: $ff
    rst $38                                       ; $4f5d: $ff
    rst $38                                       ; $4f5e: $ff
    rst $38                                       ; $4f5f: $ff
    rst $38                                       ; $4f60: $ff
    nop                                           ; $4f61: $00
    rst $38                                       ; $4f62: $ff
    rst $38                                       ; $4f63: $ff
    rst $38                                       ; $4f64: $ff
    rst $38                                       ; $4f65: $ff
    rst $38                                       ; $4f66: $ff
    rst $38                                       ; $4f67: $ff
    rst $38                                       ; $4f68: $ff
    rst $38                                       ; $4f69: $ff
    rst $38                                       ; $4f6a: $ff
    rst $38                                       ; $4f6b: $ff
    rst $38                                       ; $4f6c: $ff
    rst $38                                       ; $4f6d: $ff
    rst $38                                       ; $4f6e: $ff
    rst $38                                       ; $4f6f: $ff
    rst $38                                       ; $4f70: $ff
    rst $38                                       ; $4f71: $ff
    nop                                           ; $4f72: $00
    rst $38                                       ; $4f73: $ff
    rst $38                                       ; $4f74: $ff
    rst $38                                       ; $4f75: $ff
    rst $38                                       ; $4f76: $ff
    rst $38                                       ; $4f77: $ff
    rst $38                                       ; $4f78: $ff
    rst $38                                       ; $4f79: $ff
    rst $38                                       ; $4f7a: $ff
    rst $38                                       ; $4f7b: $ff
    rst $38                                       ; $4f7c: $ff
    rst $38                                       ; $4f7d: $ff
    rst $38                                       ; $4f7e: $ff
    rst $38                                       ; $4f7f: $ff
    rst $38                                       ; $4f80: $ff
    rst $38                                       ; $4f81: $ff
    rst $38                                       ; $4f82: $ff
    nop                                           ; $4f83: $00
    rst $38                                       ; $4f84: $ff
    rst $38                                       ; $4f85: $ff
    rst $38                                       ; $4f86: $ff
    rst $38                                       ; $4f87: $ff
    rst $38                                       ; $4f88: $ff
    rst $38                                       ; $4f89: $ff
    rst $38                                       ; $4f8a: $ff
    rst $38                                       ; $4f8b: $ff
    rst $38                                       ; $4f8c: $ff
    rst $38                                       ; $4f8d: $ff
    rst $38                                       ; $4f8e: $ff
    rst $38                                       ; $4f8f: $ff
    rst $38                                       ; $4f90: $ff
    rst $38                                       ; $4f91: $ff
    rst $38                                       ; $4f92: $ff
    rst $38                                       ; $4f93: $ff
    nop                                           ; $4f94: $00
    rst $38                                       ; $4f95: $ff
    rst $38                                       ; $4f96: $ff
    rst $38                                       ; $4f97: $ff
    rst $38                                       ; $4f98: $ff
    rst $38                                       ; $4f99: $ff
    rst $38                                       ; $4f9a: $ff
    rst $38                                       ; $4f9b: $ff
    rst $38                                       ; $4f9c: $ff
    rst $38                                       ; $4f9d: $ff
    push af                                       ; $4f9e: $f5
    nop                                           ; $4f9f: $00
    nop                                           ; $4fa0: $00
    nop                                           ; $4fa1: $00
    and l                                         ; $4fa2: $a5
    nop                                           ; $4fa3: $00
    rst $38                                       ; $4fa4: $ff
    push hl                                       ; $4fa5: $e5
    ld [hl-], a                                   ; $4fa6: $32
    or $e6                                        ; $4fa7: $f6 $e6
    rst $30                                       ; $4fa9: $f7
    rst $20                                       ; $4faa: $e7
    dec [hl]                                      ; $4fab: $35
    db $ec                                        ; $4fac: $ec
    xor $37                                       ; $4fad: $ee $37
    db $ec                                        ; $4faf: $ec
    jp c, $c7f0                                   ; $4fb0: $da $f0 $c7

    add sp, $33                                   ; $4fb3: $e8 $33
    ld sp, $f2e0                                  ; $4fb5: $31 $e0 $f2
    ld [hl], $30                                  ; $4fb8: $36 $30
    scf                                           ; $4fba: $37
    cp a                                          ; $4fbb: $bf
    ld h, $20                                     ; $4fbc: $26 $20
    daa                                           ; $4fbe: $27
    db $10                                        ; $4fbf: $10
    ld d, $17                                     ; $4fc0: $16 $17
    jp nz, Jump_000_34f6                          ; $4fc2: $c2 $f6 $34

    rst $38                                       ; $4fc5: $ff
    ld [hl], $32                                  ; $4fc6: $36 $32
    jr nc, jr_056_5001                            ; $4fc8: $30 $37

    ld sp, $3133                                  ; $4fca: $31 $33 $31
    inc sp                                        ; $4fcd: $33
    nop                                           ; $4fce: $00
    and b                                         ; $4fcf: $a0
    ei                                            ; $4fd0: $fb
    rst $38                                       ; $4fd1: $ff
    rst $28                                       ; $4fd2: $ef
    nop                                           ; $4fd3: $00
    nop                                           ; $4fd4: $00
    nop                                           ; $4fd5: $00
    sbc $4f                                       ; $4fd6: $de $4f
    ld c, $50                                     ; $4fd8: $0e $50
    adc b                                         ; $4fda: $88
    ld d, c                                       ; $4fdb: $51
    scf                                           ; $4fdc: $37
    ld d, e                                       ; $4fdd: $53
    ld [$c503], a                                 ; $4fde: $ea $03 $c5
    ld b, $e2                                     ; $4fe1: $06 $e2
    ld bc, $00a0                                  ; $4fe3: $01 $a0 $00
    ld [$f003], a                                 ; $4fe6: $ea $03 $f0
    inc bc                                        ; $4fe9: $03
    push bc                                       ; $4fea: $c5
    ld b, $e2                                     ; $4feb: $06 $e2
    ld bc, $023f                                  ; $4fed: $01 $3f $02
    xor e                                         ; $4ff0: $ab
    nop                                           ; $4ff1: $00
    inc sp                                        ; $4ff2: $33
    ld bc, $06c5                                  ; $4ff3: $01 $c5 $06
    ld [$0825], sp                                ; $4ff6: $08 $25 $08
    dec h                                         ; $4ff9: $25
    ld [$0825], sp                                ; $4ffa: $08 $25 $08
    dec h                                         ; $4ffd: $25
    ld [$0825], sp                                ; $4ffe: $08 $25 $08

jr_056_5001:
    dec h                                         ; $5001: $25
    ld [$0825], sp                                ; $5002: $08 $25 $08
    dec h                                         ; $5005: $25
    ld [$0825], sp                                ; $5006: $08 $25 $08
    dec h                                         ; $5009: $25
    ld [$0825], sp                                ; $500a: $08 $25 $08
    dec h                                         ; $500d: $25
    inc hl                                        ; $500e: $23
    ld a, [bc]                                    ; $500f: $0a
    dec bc                                        ; $5010: $0b
    rst $38                                       ; $5011: $ff
    db $e3                                        ; $5012: $e3
    ld hl, sp-$1b                                 ; $5013: $f8 $e5
    pop af                                        ; $5015: $f1
    pop hl                                        ; $5016: $e1
    inc c                                         ; $5017: $0c
    rst $38                                       ; $5018: $ff
    rst $38                                       ; $5019: $ff
    rst $20                                       ; $501a: $e7
    and $80                                       ; $501b: $e6 $80
    ret                                           ; $501d: $c9


    add sp, -$4b                                  ; $501e: $e8 $b5
    db $e3                                        ; $5020: $e3
    xor a                                         ; $5021: $af
    ldh [$ca], a                                  ; $5022: $e0 $ca
    rst $38                                       ; $5024: $ff
    add sp, -$19                                  ; $5025: $e8 $e7
    add b                                         ; $5027: $80
    ld [c], a                                     ; $5028: $e2
    ld a, e                                       ; $5029: $7b
    db $e4                                        ; $502a: $e4
    dec hl                                        ; $502b: $2b
    add c                                         ; $502c: $81
    dec hl                                        ; $502d: $2b
    add b                                         ; $502e: $80
    rst $38                                       ; $502f: $ff
    add b                                         ; $5030: $80
    ld hl, sp-$42                                 ; $5031: $f8 $be
    pop hl                                        ; $5033: $e1
    add b                                         ; $5034: $80
    rst $38                                       ; $5035: $ff
    ld b, b                                       ; $5036: $40
    db $ed                                        ; $5037: $ed
    rst $38                                       ; $5038: $ff
    pop bc                                        ; $5039: $c1
    ld l, e                                       ; $503a: $6b
    add e                                         ; $503b: $83
    ld l, e                                       ; $503c: $6b
    ld c, e                                       ; $503d: $4b
    rst $38                                       ; $503e: $ff
    ldh [$fa], a                                  ; $503f: $e0 $fa
    pop hl                                        ; $5041: $e1
    ld a, [hl]                                    ; $5042: $7e
    ld [c], a                                     ; $5043: $e2
    jp z, Jump_000_00ff                           ; $5044: $ca $ff $00

    jp hl                                         ; $5047: $e9


    ld l, e                                       ; $5048: $6b
    inc c                                         ; $5049: $0c
    pop bc                                        ; $504a: $c1
    ldh [rLYC], a                                 ; $504b: $e0 $45
    ldh [$2b], a                                  ; $504d: $e0 $2b
    dec bc                                        ; $504f: $0b
    cp h                                          ; $5050: $bc
    pop hl                                        ; $5051: $e1
    cp a                                          ; $5052: $bf
    ld [c], a                                     ; $5053: $e2
    jp z, $c0ff                                   ; $5054: $ca $ff $c0

    db $ec                                        ; $5057: $ec
    ld l, [hl]                                    ; $5058: $6e
    ld b, $e2                                     ; $5059: $06 $e2
    ld c, e                                       ; $505b: $4b
    dec hl                                        ; $505c: $2b
    dec hl                                        ; $505d: $2b
    ld a, d                                       ; $505e: $7a
    ldh [$0b], a                                  ; $505f: $e0 $0b
    ld c, e                                       ; $5061: $4b
    ret nz                                        ; $5062: $c0

    rst $38                                       ; $5063: $ff
    db $10                                        ; $5064: $10
    ret nz                                        ; $5065: $c0

    set 1, e                                      ; $5066: $cb $cb
    ret nz                                        ; $5068: $c0

    pop bc                                        ; $5069: $c1
    db $e4                                        ; $506a: $e4
    cp a                                          ; $506b: $bf
    ldh [rOCPD], a                                ; $506c: $e0 $6b
    ret nz                                        ; $506e: $c0

    rst $38                                       ; $506f: $ff
    ld b, b                                       ; $5070: $40
    call $e1c0                                    ; $5071: $cd $c0 $e1
    inc d                                         ; $5074: $14
    add d                                         ; $5075: $82
    ldh [rLY], a                                  ; $5076: $e0 $44
    pop hl                                        ; $5078: $e1
    dec hl                                        ; $5079: $2b
    nop                                           ; $507a: $00
    pop hl                                        ; $507b: $e1
    ld a, [bc]                                    ; $507c: $0a
    ret nz                                        ; $507d: $c0

    rst $38                                       ; $507e: $ff
    ret nz                                        ; $507f: $c0

    xor $c4                                       ; $5080: $ee $c4
    ld [c], a                                     ; $5082: $e2
    sub c                                         ; $5083: $91
    ld c, e                                       ; $5084: $4b
    ld sp, hl                                     ; $5085: $f9
    pop hl                                        ; $5086: $e1
    ret nz                                        ; $5087: $c0

    rst $18                                       ; $5088: $df
    ret nz                                        ; $5089: $c0

    xor h                                         ; $508a: $ac
    ld c, d                                       ; $508b: $4a
    dec bc                                        ; $508c: $0b
    pop bc                                        ; $508d: $c1
    ld b, e                                       ; $508e: $43
    db $e3                                        ; $508f: $e3
    ld c, e                                       ; $5090: $4b
    ld [bc], a                                    ; $5091: $02
    cp $a3                                        ; $5092: $fe $a3
    ld a, [bc]                                    ; $5094: $0a
    jp z, Jump_056_40ff                           ; $5095: $ca $ff $40

    db $ec                                        ; $5098: $ec
    ld b, e                                       ; $5099: $43
    db $e4                                        ; $509a: $e4
    cp [hl]                                       ; $509b: $be
    and e                                         ; $509c: $a3
    ld b, b                                       ; $509d: $40
    rst $38                                       ; $509e: $ff
    nop                                           ; $509f: $00
    rst $28                                       ; $50a0: $ef
    nop                                           ; $50a1: $00
    ld b, e                                       ; $50a2: $43
    ld [c], a                                     ; $50a3: $e2
    ld a, a                                       ; $50a4: $7f
    and c                                         ; $50a5: $a1
    ld b, b                                       ; $50a6: $40
    rst $38                                       ; $50a7: $ff
    add b                                         ; $50a8: $80
    ret nc                                        ; $50a9: $d0

    ret                                           ; $50aa: $c9


    ret nz                                        ; $50ab: $c0

    ld b, e                                       ; $50ac: $43
    pop hl                                        ; $50ad: $e1
    ld b, b                                       ; $50ae: $40
    cp a                                          ; $50af: $bf
    ld b, b                                       ; $50b0: $40
    rst $30                                       ; $50b1: $f7
    nop                                           ; $50b2: $00
    ld b, e                                       ; $50b3: $43
    ldh [$83], a                                  ; $50b4: $e0 $83
    db $e4                                        ; $50b6: $e4
    ret nz                                        ; $50b7: $c0

    rst $38                                       ; $50b8: $ff
    nop                                           ; $50b9: $00
    rst $08                                       ; $50ba: $cf
    adc c                                         ; $50bb: $89
    jp $9f40                                      ; $50bc: $c3 $40 $9f


    rst $38                                       ; $50bf: $ff
    rst $38                                       ; $50c0: $ff
    rst $38                                       ; $50c1: $ff
    rst $38                                       ; $50c2: $ff
    nop                                           ; $50c3: $00
    rst $38                                       ; $50c4: $ff
    rst $38                                       ; $50c5: $ff
    rst $38                                       ; $50c6: $ff
    rst $38                                       ; $50c7: $ff
    rst $38                                       ; $50c8: $ff
    rst $38                                       ; $50c9: $ff
    rst $38                                       ; $50ca: $ff
    rst $38                                       ; $50cb: $ff
    rst $38                                       ; $50cc: $ff
    rst $38                                       ; $50cd: $ff
    rst $38                                       ; $50ce: $ff
    rst $38                                       ; $50cf: $ff
    rst $38                                       ; $50d0: $ff
    rst $38                                       ; $50d1: $ff
    rst $38                                       ; $50d2: $ff
    rst $38                                       ; $50d3: $ff
    nop                                           ; $50d4: $00
    rst $38                                       ; $50d5: $ff
    rst $38                                       ; $50d6: $ff
    rst $38                                       ; $50d7: $ff
    rst $38                                       ; $50d8: $ff
    rst $38                                       ; $50d9: $ff
    rst $38                                       ; $50da: $ff
    rst $38                                       ; $50db: $ff
    rst $38                                       ; $50dc: $ff
    rst $38                                       ; $50dd: $ff
    rst $38                                       ; $50de: $ff
    rst $38                                       ; $50df: $ff
    rst $38                                       ; $50e0: $ff
    rst $38                                       ; $50e1: $ff
    rst $38                                       ; $50e2: $ff
    rst $38                                       ; $50e3: $ff
    rst $38                                       ; $50e4: $ff
    nop                                           ; $50e5: $00

Jump_056_50e6:
    rst $38                                       ; $50e6: $ff
    rst $38                                       ; $50e7: $ff
    rst $38                                       ; $50e8: $ff
    rst $38                                       ; $50e9: $ff
    rst $38                                       ; $50ea: $ff
    rst $38                                       ; $50eb: $ff
    rst $38                                       ; $50ec: $ff
    rst $38                                       ; $50ed: $ff
    rst $38                                       ; $50ee: $ff
    rst $38                                       ; $50ef: $ff
    rst $38                                       ; $50f0: $ff
    rst $38                                       ; $50f1: $ff
    rst $38                                       ; $50f2: $ff
    rst $38                                       ; $50f3: $ff
    rst $38                                       ; $50f4: $ff
    rst $38                                       ; $50f5: $ff
    inc c                                         ; $50f6: $0c
    rst $38                                       ; $50f7: $ff
    rst $38                                       ; $50f8: $ff
    ldh a, [$ef]                                  ; $50f9: $f0 $ef
    ld [$dc08], sp                                ; $50fb: $08 $08 $dc
    rst $38                                       ; $50fe: $ff
    rst $38                                       ; $50ff: $ff
    rst $38                                       ; $5100: $ff
    rst $38                                       ; $5101: $ff
    rst $38                                       ; $5102: $ff
    rst $38                                       ; $5103: $ff
    rst $38                                       ; $5104: $ff
    nop                                           ; $5105: $00
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
    rst $38                                       ; $5111: $ff
    rst $38                                       ; $5112: $ff
    rst $38                                       ; $5113: $ff
    rst $38                                       ; $5114: $ff
    rst $38                                       ; $5115: $ff
    nop                                           ; $5116: $00
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
    rst $38                                       ; $5122: $ff
    rst $38                                       ; $5123: $ff
    rst $38                                       ; $5124: $ff
    rst $38                                       ; $5125: $ff
    rst $38                                       ; $5126: $ff
    nop                                           ; $5127: $00
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
    rst $38                                       ; $5133: $ff
    rst $38                                       ; $5134: $ff
    rst $38                                       ; $5135: $ff
    rst $38                                       ; $5136: $ff
    rst $38                                       ; $5137: $ff
    nop                                           ; $5138: $00
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
    rst $38                                       ; $5144: $ff
    rst $38                                       ; $5145: $ff
    rst $38                                       ; $5146: $ff
    rst $38                                       ; $5147: $ff
    rst $38                                       ; $5148: $ff
    nop                                           ; $5149: $00
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
    rst $38                                       ; $5155: $ff
    rst $38                                       ; $5156: $ff
    rst $38                                       ; $5157: $ff
    rst $38                                       ; $5158: $ff
    rst $38                                       ; $5159: $ff
    nop                                           ; $515a: $00
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
    rst $38                                       ; $5166: $ff
    rst $38                                       ; $5167: $ff
    rst $38                                       ; $5168: $ff
    rst $38                                       ; $5169: $ff
    rst $38                                       ; $516a: $ff
    nop                                           ; $516b: $00
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
    rst $38                                       ; $5177: $ff
    rst $38                                       ; $5178: $ff
    rst $38                                       ; $5179: $ff
    rst $38                                       ; $517a: $ff
    rst $38                                       ; $517b: $ff
    nop                                           ; $517c: $00
    rst $38                                       ; $517d: $ff
    rst $38                                       ; $517e: $ff
    rst $38                                       ; $517f: $ff
    rst $38                                       ; $5180: $ff
    rst $38                                       ; $5181: $ff
    rst $38                                       ; $5182: $ff
    rst $38                                       ; $5183: $ff
    add sp, $00                                   ; $5184: $e8 $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    inc hl                                        ; $5188: $23
    ld e, d                                       ; $5189: $5a
    ld e, e                                       ; $518a: $5b
    rst $38                                       ; $518b: $ff
    db $e3                                        ; $518c: $e3
    ld hl, sp-$1b                                 ; $518d: $f8 $e5
    pop af                                        ; $518f: $f1
    pop hl                                        ; $5190: $e1
    nop                                           ; $5191: $00
    rst $38                                       ; $5192: $ff
    rst $38                                       ; $5193: $ff
    rst $20                                       ; $5194: $e7
    and $c0                                       ; $5195: $e6 $c0
    ret                                           ; $5197: $c9


    add sp, -$4b                                  ; $5198: $e8 $b5
    db $e3                                        ; $519a: $e3
    xor a                                         ; $519b: $af
    ldh [$ca], a                                  ; $519c: $e0 $ca
    rst $38                                       ; $519e: $ff
    add sp, -$19                                  ; $519f: $e8 $e7
    add b                                         ; $51a1: $80
    ld [c], a                                     ; $51a2: $e2
    ld e, d                                       ; $51a3: $5a
    ld e, h                                       ; $51a4: $5c
    sbc e                                         ; $51a5: $9b
    ld e, l                                       ; $51a6: $5d
    ld h, d                                       ; $51a7: $62
    rst $38                                       ; $51a8: $ff
    ldh [$5d], a                                  ; $51a9: $e0 $5d
    ld e, h                                       ; $51ab: $5c
    add b                                         ; $51ac: $80
    rst $38                                       ; $51ad: $ff
    add b                                         ; $51ae: $80
    pop af                                        ; $51af: $f1
    ld e, h                                       ; $51b0: $5c
    bit 3, l                                      ; $51b1: $cb $5d
    ld sp, $e4ff                                  ; $51b3: $31 $ff $e4
    ld h, b                                       ; $51b6: $60
    add b                                         ; $51b7: $80
    rst $38                                       ; $51b8: $ff
    ld b, b                                       ; $51b9: $40
    db $ed                                        ; $51ba: $ed
    ld e, d                                       ; $51bb: $5a
    ld e, e                                       ; $51bc: $5b
    rst $38                                       ; $51bd: $ff

jr_056_51be:
    ld h, b                                       ; $51be: $60
    ld sp, $3a4d                                  ; $51bf: $31 $4d $3a
    ld d, l                                       ; $51c2: $55
    ld d, h                                       ; $51c3: $54
    ld d, l                                       ; $51c4: $55
    ld d, l                                       ; $51c5: $55
    adc a                                         ; $51c6: $8f
    ld d, h                                       ; $51c7: $54
    ld d, h                                       ; $51c8: $54
    dec sp                                        ; $51c9: $3b
    ld c, l                                       ; $51ca: $4d
    cp a                                          ; $51cb: $bf
    ldh [$c0], a                                  ; $51cc: $e0 $c0
    rst $38                                       ; $51ce: $ff
    nop                                           ; $51cf: $00
    db $eb                                        ; $51d0: $eb
    ld e, a                                       ; $51d1: $5f
    rst $38                                       ; $51d2: $ff
    ld sp, $324d                                  ; $51d3: $31 $4d $32
    jr nc, jr_056_5242                            ; $51d6: $30 $6a

    ld l, d                                       ; $51d8: $6a
    ld l, d                                       ; $51d9: $6a
    jr nc, jr_056_51be                            ; $51da: $30 $e2

    rst $38                                       ; $51dc: $ff
    ldh [$32], a                                  ; $51dd: $e0 $32
    cp a                                          ; $51df: $bf
    ld [c], a                                     ; $51e0: $e2
    jp z, $c0ff                                   ; $51e1: $ca $ff $c0

    ret                                           ; $51e4: $c9


    ld e, [hl]                                    ; $51e5: $5e
    ld sp, $fc39                                  ; $51e6: $31 $39 $fc
    pop bc                                        ; $51e9: $c1
    ldh [$c2], a                                  ; $51ea: $e0 $c2
    ldh [rOCPD], a                                ; $51ec: $e0 $6b
    ld l, e                                       ; $51ee: $6b
    jr nc, @+$32                                  ; $51ef: $30 $30

    add hl, sp                                    ; $51f1: $39
    ld sp, $5f39                                  ; $51f2: $31 $39 $5f
    ret nz                                        ; $51f5: $c0

    rst $38                                       ; $51f6: $ff
    ret nz                                        ; $51f7: $c0

    bit 4, c                                      ; $51f8: $cb $61
    ld sp, $c153                                  ; $51fa: $31 $53 $c1
    db $e4                                        ; $51fd: $e4
    cp a                                          ; $51fe: $bf
    ldh [rTAC], a                                 ; $51ff: $e0 $07
    ld d, d                                       ; $5201: $52
    ld sp, $c05e                                  ; $5202: $31 $5e $c0
    rst $38                                       ; $5205: $ff
    ld b, b                                       ; $5206: $40
    set 0, b                                      ; $5207: $cb $c0
    pop hl                                        ; $5209: $e1
    ld b, h                                       ; $520a: $44
    pop hl                                        ; $520b: $e1
    ld a, a                                       ; $520c: $7f
    ld [c], a                                     ; $520d: $e2
    ld c, a                                       ; $520e: $4f
    ld d, e                                       ; $520f: $53
    ld sp, $5a61                                  ; $5210: $31 $61 $5a
    ret nz                                        ; $5213: $c0

    rst $38                                       ; $5214: $ff
    ret nz                                        ; $5215: $c0

    db $ec                                        ; $5216: $ec
    ld d, d                                       ; $5217: $52
    inc b                                         ; $5218: $04
    ldh [rNR32], a                                ; $5219: $e0 $1c
    ld b, e                                       ; $521b: $43
    pop hl                                        ; $521c: $e1
    ld b, b                                       ; $521d: $40
    ldh [rHDMA2], a                               ; $521e: $e0 $52
    ld sp, $8061                                  ; $5220: $31 $61 $80
    rst $38                                       ; $5223: $ff
    add b                                         ; $5224: $80
    bit 0, b                                      ; $5225: $cb $40
    ldh [$6e], a                                  ; $5227: $e0 $6e
    ld b, e                                       ; $5229: $43
    db $e4                                        ; $522a: $e4
    jr nc, jr_056_525d                            ; $522b: $30 $30

    ld l, d                                       ; $522d: $6a
    add b                                         ; $522e: $80
    ldh [$5b], a                                  ; $522f: $e0 $5b
    ld e, d                                       ; $5231: $5a
    jp z, Jump_000_00ff                           ; $5232: $ca $ff $00

    add b                                         ; $5235: $80
    db $ec                                        ; $5236: $ec
    ld b, e                                       ; $5237: $43
    db $e4                                        ; $5238: $e4
    ret nz                                        ; $5239: $c0

    db $e3                                        ; $523a: $e3
    ld b, b                                       ; $523b: $40
    rst $38                                       ; $523c: $ff
    ld b, b                                       ; $523d: $40
    xor $43                                       ; $523e: $ee $43
    db $e4                                        ; $5240: $e4
    ld a, [hl-]                                   ; $5241: $3a

jr_056_5242:
    ret nz                                        ; $5242: $c0

    ld b, b                                       ; $5243: $40
    rst $38                                       ; $5244: $ff
    sub d                                         ; $5245: $92
    add b                                         ; $5246: $80
    ret nc                                        ; $5247: $d0

    add hl, sp                                    ; $5248: $39
    add e                                         ; $5249: $83
    db $e3                                        ; $524a: $e3
    ld a, [hl-]                                   ; $524b: $3a
    pop bc                                        ; $524c: $c1
    add hl, sp                                    ; $524d: $39
    add b                                         ; $524e: $80
    rst $18                                       ; $524f: $df
    add b                                         ; $5250: $80
    rst $08                                       ; $5251: $cf
    xor a                                         ; $5252: $af
    sbc c                                         ; $5253: $99
    ld [hl], c                                    ; $5254: $71
    push bc                                       ; $5255: $c5
    pop bc                                        ; $5256: $c1
    cp l                                          ; $5257: $bd
    and c                                         ; $5258: $a1
    ld [hl-], a                                   ; $5259: $32
    ld c, l                                       ; $525a: $4d
    nop                                           ; $525b: $00
    rst $18                                       ; $525c: $df

jr_056_525d:
    nop                                           ; $525d: $00
    rst $08                                       ; $525e: $cf
    add c                                         ; $525f: $81
    rst $28                                       ; $5260: $ef
    ld a, c                                       ; $5261: $79
    ld a, [hl]                                    ; $5262: $7e
    ld d, h                                       ; $5263: $54
    ld d, h                                       ; $5264: $54
    ld b, c                                       ; $5265: $41
    and b                                         ; $5266: $a0
    ld d, l                                       ; $5267: $55
    ld b, l                                       ; $5268: $45
    ld c, l                                       ; $5269: $4d
    nop                                           ; $526a: $00
    add c                                         ; $526b: $81
    pop hl                                        ; $526c: $e1
    ret nz                                        ; $526d: $c0

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
    nop                                           ; $527b: $00
    rst $38                                       ; $527c: $ff
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
    nop                                           ; $528c: $00
    rst $38                                       ; $528d: $ff
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
    ret nz                                        ; $529d: $c0

    rst $38                                       ; $529e: $ff
    rst $38                                       ; $529f: $ff
    rst $38                                       ; $52a0: $ff
    rst $38                                       ; $52a1: $ff
    rst $38                                       ; $52a2: $ff
    rst $38                                       ; $52a3: $ff
    rst $38                                       ; $52a4: $ff
    rst $38                                       ; $52a5: $ff
    rst $38                                       ; $52a6: $ff
    rst $38                                       ; $52a7: $ff
    add sp, -$19                                  ; $52a8: $e8 $e7
    cp e                                          ; $52aa: $bb
    cp h                                          ; $52ab: $bc
    nop                                           ; $52ac: $00
    call c, $ffff                                 ; $52ad: $dc $ff $ff
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
    nop                                           ; $52bd: $00
    rst $38                                       ; $52be: $ff
    rst $38                                       ; $52bf: $ff
    rst $38                                       ; $52c0: $ff
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
    nop                                           ; $52ce: $00
    rst $38                                       ; $52cf: $ff
    rst $38                                       ; $52d0: $ff
    rst $38                                       ; $52d1: $ff
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
    nop                                           ; $52df: $00
    rst $38                                       ; $52e0: $ff
    rst $38                                       ; $52e1: $ff
    rst $38                                       ; $52e2: $ff
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
    nop                                           ; $52f0: $00
    rst $38                                       ; $52f1: $ff
    rst $38                                       ; $52f2: $ff
    rst $38                                       ; $52f3: $ff
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
    nop                                           ; $5301: $00
    rst $38                                       ; $5302: $ff
    rst $38                                       ; $5303: $ff
    rst $38                                       ; $5304: $ff
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
    nop                                           ; $5312: $00
    rst $38                                       ; $5313: $ff
    rst $38                                       ; $5314: $ff
    rst $38                                       ; $5315: $ff
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
    nop                                           ; $5323: $00
    rst $38                                       ; $5324: $ff
    rst $38                                       ; $5325: $ff
    rst $38                                       ; $5326: $ff
    rst $38                                       ; $5327: $ff
    rst $38                                       ; $5328: $ff
    rst $38                                       ; $5329: $ff
    rst $38                                       ; $532a: $ff
    rst $38                                       ; $532b: $ff
    rst $38                                       ; $532c: $ff
    rst $38                                       ; $532d: $ff
    rst $38                                       ; $532e: $ff
    rst $38                                       ; $532f: $ff
    rst $38                                       ; $5330: $ff
    rst $38                                       ; $5331: $ff
    rst $38                                       ; $5332: $ff
    add sp, $00                                   ; $5333: $e8 $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    and l                                         ; $5337: $a5
    nop                                           ; $5338: $00
    rst $38                                       ; $5339: $ff
    push hl                                       ; $533a: $e5
    ld [hl-], a                                   ; $533b: $32
    or $e6                                        ; $533c: $f6 $e6
    rst $30                                       ; $533e: $f7
    rst $20                                       ; $533f: $e7
    dec [hl]                                      ; $5340: $35
    db $ec                                        ; $5341: $ec
    xor $37                                       ; $5342: $ee $37
    db $ec                                        ; $5344: $ec
    jp c, $c7f0                                   ; $5345: $da $f0 $c7

    add sp, $33                                   ; $5348: $e8 $33
    ld sp, $f2e0                                  ; $534a: $31 $e0 $f2
    ld [hl], $30                                  ; $534d: $36 $30
    scf                                           ; $534f: $37
    cp a                                          ; $5350: $bf
    ld h, $20                                     ; $5351: $26 $20
    daa                                           ; $5353: $27
    db $10                                        ; $5354: $10
    ld d, $17                                     ; $5355: $16 $17
    jp nz, Jump_000_34f6                          ; $5357: $c2 $f6 $34

    rst $38                                       ; $535a: $ff
    ld [hl], $32                                  ; $535b: $36 $32
    jr nc, jr_056_5396                            ; $535d: $30 $37

    ld sp, $3133                                  ; $535f: $31 $33 $31
    inc sp                                        ; $5362: $33
    nop                                           ; $5363: $00
    and b                                         ; $5364: $a0
    ei                                            ; $5365: $fb
    rst $38                                       ; $5366: $ff
    rst $28                                       ; $5367: $ef
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    ld [hl], e                                    ; $536b: $73
    ld d, e                                       ; $536c: $53
    and e                                         ; $536d: $a3
    ld d, e                                       ; $536e: $53
    ld c, l                                       ; $536f: $4d
    ld d, l                                       ; $5370: $55
    db $10                                        ; $5371: $10
    ld d, a                                       ; $5372: $57
    ld [$c503], a                                 ; $5373: $ea $03 $c5
    ld b, $e2                                     ; $5376: $06 $e2
    ld bc, $00a0                                  ; $5378: $01 $a0 $00
    ld [$f003], a                                 ; $537b: $ea $03 $f0
    inc bc                                        ; $537e: $03
    push bc                                       ; $537f: $c5
    ld b, $e2                                     ; $5380: $06 $e2
    ld bc, $023f                                  ; $5382: $01 $3f $02
    xor e                                         ; $5385: $ab
    nop                                           ; $5386: $00
    inc sp                                        ; $5387: $33
    ld bc, $06c5                                  ; $5388: $01 $c5 $06
    ld [$0825], sp                                ; $538b: $08 $25 $08
    dec h                                         ; $538e: $25
    ld [$0825], sp                                ; $538f: $08 $25 $08
    dec h                                         ; $5392: $25
    ld [$0825], sp                                ; $5393: $08 $25 $08

jr_056_5396:
    dec h                                         ; $5396: $25
    ld [$0825], sp                                ; $5397: $08 $25 $08
    dec h                                         ; $539a: $25
    ld [$0825], sp                                ; $539b: $08 $25 $08
    dec h                                         ; $539e: $25
    ld [$0825], sp                                ; $539f: $08 $25 $08
    dec h                                         ; $53a2: $25
    or a                                          ; $53a3: $b7
    ld a, [hl+]                                   ; $53a4: $2a
    ld a, [hl+]                                   ; $53a5: $2a
    dec bc                                        ; $53a6: $0b
    rst $38                                       ; $53a7: $ff
    push hl                                       ; $53a8: $e5
    dec hl                                        ; $53a9: $2b
    dec hl                                        ; $53aa: $2b
    push af                                       ; $53ab: $f5
    ld [c], a                                     ; $53ac: $e2
    ld a, [bc]                                    ; $53ad: $0a
    ld a, a                                       ; $53ae: $7f
    dec bc                                        ; $53af: $0b
    inc c                                         ; $53b0: $0c
    ld c, h                                       ; $53b1: $4c
    inc c                                         ; $53b2: $0c
    inc c                                         ; $53b3: $0c
    inc l                                         ; $53b4: $2c
    inc c                                         ; $53b5: $0c
    rst $38                                       ; $53b6: $ff
    rst $38                                       ; $53b7: $ff
    adc b                                         ; $53b8: $88
    ld [c], a                                     ; $53b9: $e2
    pop hl                                        ; $53ba: $e1
    jp nz, $bee6                                  ; $53bb: $c2 $e6 $be

    add sp, $0c                                   ; $53be: $e8 $0c
    cp a                                          ; $53c0: $bf
    pop hl                                        ; $53c1: $e1
    rst $38                                       ; $53c2: $ff
    rst $38                                       ; $53c3: $ff
    ret nz                                        ; $53c4: $c0

    db $e4                                        ; $53c5: $e4
    ld l, e                                       ; $53c6: $6b
    inc sp                                        ; $53c7: $33
    ld l, e                                       ; $53c8: $6b
    ld c, e                                       ; $53c9: $4b
    rst $38                                       ; $53ca: $ff
    push hl                                       ; $53cb: $e5
    ld a, h                                       ; $53cc: $7c
    ld [c], a                                     ; $53cd: $e2
    ld a, [bc]                                    ; $53ce: $0a
    ld a, [bc]                                    ; $53cf: $0a
    jp z, $80ff                                   ; $53d0: $ca $ff $80

    add sp, -$6d                                  ; $53d3: $e8 $93
    ld l, e                                       ; $53d5: $6b
    ld l, e                                       ; $53d6: $6b
    ccf                                           ; $53d7: $3f
    and $be                                       ; $53d8: $e6 $be
    db $e3                                        ; $53da: $e3
    dec bc                                        ; $53db: $0b
    ret nz                                        ; $53dc: $c0

    ld [$e638], a                                 ; $53dd: $ea $38 $e6
    inc l                                         ; $53e0: $2c
    db $10                                        ; $53e1: $10
    dec l                                         ; $53e2: $2d
    ld [c], a                                     ; $53e3: $e2
    add hl, hl                                    ; $53e4: $29
    xor $c1                                       ; $53e5: $ee $c1
    add sp, -$42                                  ; $53e7: $e8 $be
    db $e4                                        ; $53e9: $e4
    dec hl                                        ; $53ea: $2b

jr_056_53eb:
    ld b, b                                       ; $53eb: $40
    ldh [$88], a                                  ; $53ec: $e0 $88
    db $f4                                        ; $53ee: $f4
    db $eb                                        ; $53ef: $eb
    jp $e500                                      ; $53f0: $c3 $00 $e5


    call nz, $c3de                                ; $53f3: $c4 $de $c3
    pop bc                                        ; $53f6: $c1
    ld [$e27c], a                                 ; $53f7: $ea $7c $e2
    nop                                           ; $53fa: $00
    pop hl                                        ; $53fb: $e1
    rst $38                                       ; $53fc: $ff
    rst $38                                       ; $53fd: $ff
    ret nz                                        ; $53fe: $c0

    jp nc, $e23b                                  ; $53ff: $d2 $3b $e2

    ld h, b                                       ; $5402: $60
    ret nz                                        ; $5403: $c0

    db $f4                                        ; $5404: $f4
    ld b, b                                       ; $5405: $40
    db $f4                                        ; $5406: $f4
    ld c, h                                       ; $5407: $4c
    jp $e4c7                                      ; $5408: $c3 $c7 $e4


    db $fc                                        ; $540b: $fc
    jp nz, $4b2b                                  ; $540c: $c2 $2b $4b

    adc d                                         ; $540f: $8a
    rst $38                                       ; $5410: $ff
    nop                                           ; $5411: $00
    ret nz                                        ; $5412: $c0

    add sp, -$41                                  ; $5413: $e8 $bf
    push hl                                       ; $5415: $e5
    add c                                         ; $5416: $81
    jp nz, $c3ff                                  ; $5417: $c2 $ff $c3

    jp z, Jump_000_00ff                           ; $541a: $ca $ff $00

    ret z                                         ; $541d: $c8

    jp z, $c1a4                                   ; $541e: $ca $a4 $c1

    rst $20                                       ; $5421: $e7
    nop                                           ; $5422: $00

jr_056_5423:
    ret nz                                        ; $5423: $c0

    rst $38                                       ; $5424: $ff
    ld [$90e9], a                                 ; $5425: $ea $e9 $90
    ret nz                                        ; $5428: $c0

    adc c                                         ; $5429: $89
    and c                                         ; $542a: $a1
    pop bc                                        ; $542b: $c1
    add sp, -$40                                  ; $542c: $e8 $c0
    db $fd                                        ; $542e: $fd
    ld h, [hl]                                    ; $542f: $66
    and d                                         ; $5430: $a2
    ld h, c                                       ; $5431: $61
    and [hl]                                      ; $5432: $a6
    nop                                           ; $5433: $00
    ld c, a                                       ; $5434: $4f
    pop bc                                        ; $5435: $c1
    ret nz                                        ; $5436: $c0

    and c                                         ; $5437: $a1
    cp e                                          ; $5438: $bb
    rst $20                                       ; $5439: $e7
    add b                                         ; $543a: $80
    db $db                                        ; $543b: $db
    jr z, jr_056_53eb                             ; $543c: $28 $ad

    ld c, [hl]                                    ; $543e: $4e
    jp $a203                                      ; $543f: $c3 $03 $a2


    pop bc                                        ; $5442: $c1
    push hl                                       ; $5443: $e5
    ld c, b                                       ; $5444: $48
    nop                                           ; $5445: $00
    call nz, $9ffe                                ; $5446: $c4 $fe $9f
    nop                                           ; $5449: $00
    and d                                         ; $544a: $a2
    ld a, [bc]                                    ; $544b: $0a
    adc b                                         ; $544c: $88

jr_056_544d:
    and c                                         ; $544d: $a1
    ld a, h                                       ; $544e: $7c
    and b                                         ; $544f: $a0
    dec hl                                        ; $5450: $2b
    ld a, c                                       ; $5451: $79
    ldh [rLCDC], a                                ; $5452: $e0 $40
    or l                                          ; $5454: $b5
    add h                                         ; $5455: $84
    jp z, $fee1                                   ; $5456: $ca $e1 $fe

    sbc a                                         ; $5459: $9f
    ret nz                                        ; $545a: $c0

    adc d                                         ; $545b: $8a
    dec b                                         ; $545c: $05
    and e                                         ; $545d: $a3
    ld [hl], l                                    ; $545e: $75
    add e                                         ; $545f: $83
    ld l, e                                       ; $5460: $6b
    ret nz                                        ; $5461: $c0

    rst $38                                       ; $5462: $ff
    jr nz, jr_056_544d                            ; $5463: $20 $e8

    rst $20                                       ; $5465: $e7
    add c                                         ; $5466: $81
    ldh [$7e], a                                  ; $5467: $e0 $7e
    ldh [$88], a                                  ; $5469: $e0 $88
    and d                                         ; $546b: $a2
    ld b, b                                       ; $546c: $40
    add h                                         ; $546d: $84
    ld l, e                                       ; $546e: $6b
    add b                                         ; $546f: $80
    cp a                                          ; $5470: $bf
    jr z, jr_056_5423                             ; $5471: $28 $b0

    inc bc                                        ; $5473: $03
    ld c, h                                       ; $5474: $4c
    ld c, h                                       ; $5475: $4c
    adc [hl]                                      ; $5476: $8e
    rst $38                                       ; $5477: $ff
    rst $38                                       ; $5478: $ff
    rst $38                                       ; $5479: $ff
    rst $38                                       ; $547a: $ff
    rst $38                                       ; $547b: $ff
    rst $38                                       ; $547c: $ff
    rst $38                                       ; $547d: $ff
    ld c, l                                       ; $547e: $4d
    sbc $e6                                       ; $547f: $de $e6
    sub e                                         ; $5481: $93
    ld [bc], a                                    ; $5482: $02
    cp b                                          ; $5483: $b8
    di                                            ; $5484: $f3
    ld c, h                                       ; $5485: $4c
    cp $e2                                        ; $5486: $fe $e2
    jp nz, $9cb6                                  ; $5488: $c2 $b6 $9c

    rst $38                                       ; $548b: $ff
    reti                                          ; $548c: $d9


    rst $38                                       ; $548d: $ff
    db $d3                                        ; $548e: $d3
    rst $38                                       ; $548f: $ff
    ld b, b                                       ; $5490: $40
    rst $38                                       ; $5491: $ff
    nop                                           ; $5492: $00
    db $db                                        ; $5493: $db
    rst $38                                       ; $5494: $ff
    ccf                                           ; $5495: $3f
    ld l, d                                       ; $5496: $6a
    ret nc                                        ; $5497: $d0

    ld sp, hl                                     ; $5498: $f9
    or h                                          ; $5499: $b4
    rst $38                                       ; $549a: $ff
    rst $38                                       ; $549b: $ff
    rst $38                                       ; $549c: $ff
    or [hl]                                       ; $549d: $b6
    rst $38                                       ; $549e: $ff
    push bc                                       ; $549f: $c5
    rst $38                                       ; $54a0: $ff
    rst $38                                       ; $54a1: $ff
    rst $38                                       ; $54a2: $ff
    ret nz                                        ; $54a3: $c0

    daa                                           ; $54a4: $27
    sub [hl]                                      ; $54a5: $96
    halt                                          ; $54a6: $76
    cp a                                          ; $54a7: $bf
    rla                                           ; $54a8: $17
    ret nc                                        ; $54a9: $d0

    set 5, b                                      ; $54aa: $cb $e8
    db $fc                                        ; $54ac: $fc
    ld a, l                                       ; $54ad: $7d
    jr z, jr_056_5501                             ; $54ae: $28 $51

    dec bc                                        ; $54b0: $0b
    ld [$ff00], sp                                ; $54b1: $08 $00 $ff
    db $eb                                        ; $54b4: $eb
    set 7, a                                      ; $54b5: $cb $ff
    sbc h                                         ; $54b7: $9c
    xor b                                         ; $54b8: $a8
    rst $38                                       ; $54b9: $ff
    rst $38                                       ; $54ba: $ff
    ret nz                                        ; $54bb: $c0

    rst $38                                       ; $54bc: $ff
    rst $38                                       ; $54bd: $ff
    rst $38                                       ; $54be: $ff
    rst $38                                       ; $54bf: $ff
    rst $38                                       ; $54c0: $ff
    rst $38                                       ; $54c1: $ff
    rst $38                                       ; $54c2: $ff
    nop                                           ; $54c3: $00
    ld a, a                                       ; $54c4: $7f
    rst $38                                       ; $54c5: $ff
    rst $38                                       ; $54c6: $ff
    rst $38                                       ; $54c7: $ff
    rst $38                                       ; $54c8: $ff
    rst $38                                       ; $54c9: $ff
    rst $38                                       ; $54ca: $ff
    rst $38                                       ; $54cb: $ff
    ret z                                         ; $54cc: $c8

    cp a                                          ; $54cd: $bf
    or d                                          ; $54ce: $b2
    cp a                                          ; $54cf: $bf
    dec d                                         ; $54d0: $15
    sbc l                                         ; $54d1: $9d
    ld [$10f8], a                                 ; $54d2: $ea $f8 $10
    ld a, a                                       ; $54d5: $7f
    rst $38                                       ; $54d6: $ff
    add sp, $46                                   ; $54d7: $e8 $46
    ret nz                                        ; $54d9: $c0

    rst $38                                       ; $54da: $ff
    ld a, a                                       ; $54db: $7f
    ld sp, hl                                     ; $54dc: $f9
    inc l                                         ; $54dd: $2c
    call nz, $aaff                                ; $54de: $c4 $ff $aa
    rst $38                                       ; $54e1: $ff
    ld a, a                                       ; $54e2: $7f
    rst $38                                       ; $54e3: $ff
    nop                                           ; $54e4: $00
    dec h                                         ; $54e5: $25
    reti                                          ; $54e6: $d9


    jp $c0ff                                      ; $54e7: $c3 $ff $c0


    rst $38                                       ; $54ea: $ff
    ld [hl], l                                    ; $54eb: $75
    rst $18                                       ; $54ec: $df
    ld b, c                                       ; $54ed: $41
    ld sp, hl                                     ; $54ee: $f9
    adc l                                         ; $54ef: $8d
    rst $18                                       ; $54f0: $df
    ld l, c                                       ; $54f1: $69
    scf                                           ; $54f2: $37
    sbc [hl]                                      ; $54f3: $9e
    rst $38                                       ; $54f4: $ff
    nop                                           ; $54f5: $00
    inc h                                         ; $54f6: $24
    cp a                                          ; $54f7: $bf
    rst $38                                       ; $54f8: $ff
    rst $38                                       ; $54f9: $ff
    rst $38                                       ; $54fa: $ff
    rst $38                                       ; $54fb: $ff
    rst $38                                       ; $54fc: $ff
    rst $38                                       ; $54fd: $ff
    rst $38                                       ; $54fe: $ff
    rst $38                                       ; $54ff: $ff
    rst $38                                       ; $5500: $ff

jr_056_5501:
    rst $38                                       ; $5501: $ff
    rst $38                                       ; $5502: $ff
    rst $38                                       ; $5503: $ff
    rst $38                                       ; $5504: $ff
    rst $38                                       ; $5505: $ff
    nop                                           ; $5506: $00
    rst $38                                       ; $5507: $ff
    rst $38                                       ; $5508: $ff
    rst $38                                       ; $5509: $ff
    rst $38                                       ; $550a: $ff
    rst $38                                       ; $550b: $ff
    rst $38                                       ; $550c: $ff
    ld b, c                                       ; $550d: $41
    rst $18                                       ; $550e: $df
    rst $38                                       ; $550f: $ff
    rst $38                                       ; $5510: $ff
    rst $38                                       ; $5511: $ff
    rst $38                                       ; $5512: $ff
    rst $38                                       ; $5513: $ff
    rst $38                                       ; $5514: $ff
    rst $38                                       ; $5515: $ff
    rst $38                                       ; $5516: $ff
    nop                                           ; $5517: $00
    rst $38                                       ; $5518: $ff
    rst $38                                       ; $5519: $ff
    rst $38                                       ; $551a: $ff
    rst $38                                       ; $551b: $ff
    rst $38                                       ; $551c: $ff
    rst $38                                       ; $551d: $ff
    rst $38                                       ; $551e: $ff
    rst $38                                       ; $551f: $ff
    rst $38                                       ; $5520: $ff
    rst $38                                       ; $5521: $ff
    rst $38                                       ; $5522: $ff
    rst $38                                       ; $5523: $ff
    rst $38                                       ; $5524: $ff
    rst $38                                       ; $5525: $ff
    rst $38                                       ; $5526: $ff
    rst $38                                       ; $5527: $ff
    nop                                           ; $5528: $00
    rst $38                                       ; $5529: $ff
    rst $38                                       ; $552a: $ff
    rst $38                                       ; $552b: $ff
    rst $38                                       ; $552c: $ff
    rst $38                                       ; $552d: $ff
    rst $38                                       ; $552e: $ff
    rst $38                                       ; $552f: $ff
    rst $38                                       ; $5530: $ff
    rst $38                                       ; $5531: $ff
    rst $38                                       ; $5532: $ff
    rst $38                                       ; $5533: $ff
    rst $38                                       ; $5534: $ff
    rst $38                                       ; $5535: $ff
    rst $38                                       ; $5536: $ff
    rst $38                                       ; $5537: $ff
    rst $38                                       ; $5538: $ff
    nop                                           ; $5539: $00
    rst $38                                       ; $553a: $ff
    rst $38                                       ; $553b: $ff
    nop                                           ; $553c: $00
    cp a                                          ; $553d: $bf
    rst $38                                       ; $553e: $ff
    rst $38                                       ; $553f: $ff
    rst $38                                       ; $5540: $ff
    rst $38                                       ; $5541: $ff
    rst $38                                       ; $5542: $ff
    rst $38                                       ; $5543: $ff
    rst $38                                       ; $5544: $ff
    rst $38                                       ; $5545: $ff
    rst $38                                       ; $5546: $ff
    rst $38                                       ; $5547: $ff
    call c, Call_000_004d                         ; $5548: $dc $4d $00
    nop                                           ; $554b: $00
    nop                                           ; $554c: $00
    cp a                                          ; $554d: $bf
    ld e, d                                       ; $554e: $5a
    ld e, d                                       ; $554f: $5a
    ld e, e                                       ; $5550: $5b
    ld e, h                                       ; $5551: $5c
    ld e, l                                       ; $5552: $5d
    ld sp, $e2ff                                  ; $5553: $31 $ff $e2
    ld e, l                                       ; $5556: $5d
    dec sp                                        ; $5557: $3b
    ld e, h                                       ; $5558: $5c
    ld e, e                                       ; $5559: $5b
    rst $38                                       ; $555a: $ff
    pop hl                                        ; $555b: $e1
    ld e, d                                       ; $555c: $5a
    ld e, e                                       ; $555d: $5b
    nop                                           ; $555e: $00

jr_056_555f:
    rst $38                                       ; $555f: $ff
    rst $38                                       ; $5560: $ff
    rst $20                                       ; $5561: $e7
    and $f0                                       ; $5562: $e6 $f0
    jp nz, $bee6                                  ; $5564: $c2 $e6 $be

    add sp, -$36                                  ; $5567: $e8 $ca
    rst $38                                       ; $5569: $ff
    add sp, -$19                                  ; $556a: $e8 $e7
    ld h, b                                       ; $556c: $60
    ld sp, $3a4d                                  ; $556d: $31 $4d $3a
    ld l, a                                       ; $5570: $6f
    ld d, l                                       ; $5571: $55
    ld d, h                                       ; $5572: $54
    ld d, h                                       ; $5573: $54
    ld d, h                                       ; $5574: $54
    db $fc                                        ; $5575: $fc
    ldh [$3a], a                                  ; $5576: $e0 $3a
    ld c, l                                       ; $5578: $4d
    ld a, h                                       ; $5579: $7c
    ld [c], a                                     ; $557a: $e2
    di                                            ; $557b: $f3
    ld e, d                                       ; $557c: $5a
    ld e, d                                       ; $557d: $5a
    jp z, $e8ff                                   ; $557e: $ca $ff $e8

    rst $20                                       ; $5581: $e7
    ld sp, $324d                                  ; $5582: $31 $4d $32
    jr nc, @-$1f                                  ; $5585: $30 $df

    ld l, e                                       ; $5587: $6b
    ld l, c                                       ; $5588: $69
    ld l, e                                       ; $5589: $6b
    jr nc, jr_056_55bc                            ; $558a: $30 $30

    ld a, [$44e0]                                 ; $558c: $fa $e0 $44
    ld b, l                                       ; $558f: $45
    add [hl]                                      ; $5590: $86
    cp [hl]                                       ; $5591: $be
    ldh [$60], a                                  ; $5592: $e0 $60
    ld e, e                                       ; $5594: $5b
    ret nz                                        ; $5595: $c0

    rst $38                                       ; $5596: $ff
    jp hl                                         ; $5597: $e9


    add sp, -$3f                                  ; $5598: $e8 $c1
    ldh [$c0], a                                  ; $559a: $e0 $c0
    and $6b                                       ; $559c: $e6 $6b
    dec h                                         ; $559e: $25
    jr nc, jr_056_555f                            ; $559f: $30 $be

    pop hl                                        ; $55a1: $e1
    ld h, b                                       ; $55a2: $60
    ld b, b                                       ; $55a3: $40
    rst $38                                       ; $55a4: $ff
    jp hl                                         ; $55a5: $e9


    add sp, $39                                   ; $55a6: $e8 $39
    add $e4                                       ; $55a8: $c6 $e4
    cp d                                          ; $55aa: $ba
    push hl                                       ; $55ab: $e5
    pop de                                        ; $55ac: $d1
    ld [hl-], a                                   ; $55ad: $32
    dec sp                                        ; $55ae: $3b
    ldh [$ca], a                                  ; $55af: $e0 $ca
    rst $38                                       ; $55b1: $ff
    add sp, -$19                                  ; $55b2: $e8 $e7
    ld d, d                                       ; $55b4: $52
    ret nz                                        ; $55b5: $c0

    db $ec                                        ; $55b6: $ec
    jr nc, jr_056_55eb                            ; $55b7: $30 $32

    jp hl                                         ; $55b9: $e9


    ld a, $c0                                     ; $55ba: $3e $c0

jr_056_55bc:
    rst $38                                       ; $55bc: $ff
    add b                                         ; $55bd: $80
    ld a, [c]                                     ; $55be: $f2
    ld l, l                                       ; $55bf: $6d
    ld a, [$6ae3]                                 ; $55c0: $fa $e3 $6a
    ld b, d                                       ; $55c3: $42
    inc a                                         ; $55c4: $3c
    call c, $ffca                                 ; $55c5: $dc $ca $ff
    nop                                           ; $55c8: $00
    ldh a, [$6d]                                  ; $55c9: $f0 $6d
    ld l, d                                       ; $55cb: $6a
    ld l, l                                       ; $55cc: $6d
    pop bc                                        ; $55cd: $c1
    ld [c], a                                     ; $55ce: $e2
    ld l, l                                       ; $55cf: $6d
    jr nc, jr_056_5603                            ; $55d0: $30 $31

    ld d, e                                       ; $55d2: $53
    jp z, $80ff                                   ; $55d3: $ca $ff $80

    rst $08                                       ; $55d6: $cf
    pop bc                                        ; $55d7: $c1
    rst $20                                       ; $55d8: $e7
    jr nc, jr_056_562d                            ; $55d9: $30 $52

    jp z, Jump_000_00ff                           ; $55db: $ca $ff $00

    jp z, Jump_000_32c1                           ; $55de: $ca $c1 $32

    ld b, b                                       ; $55e1: $40
    ret nz                                        ; $55e2: $c0

    pop bc                                        ; $55e3: $c1
    add sp, -$80                                  ; $55e4: $e8 $80
    rst $38                                       ; $55e6: $ff
    add b                                         ; $55e7: $80
    xor d                                         ; $55e8: $aa
    cp a                                          ; $55e9: $bf
    and b                                         ; $55ea: $a0

jr_056_55eb:
    ld d, [hl]                                    ; $55eb: $56
    ld d, a                                       ; $55ec: $57
    scf                                           ; $55ed: $37
    ld d, [hl]                                    ; $55ee: $56
    ld d, a                                       ; $55ef: $57
    dec a                                         ; $55f0: $3d
    pop bc                                        ; $55f1: $c1
    and $30                                       ; $55f2: $e6 $30
    add hl, sp                                    ; $55f4: $39
    jp z, Jump_056_40ff                           ; $55f5: $ca $ff $40

    xor b                                         ; $55f8: $a8
    rst $00                                       ; $55f9: $c7
    ld e, e                                       ; $55fa: $5b
    ld h, b                                       ; $55fb: $60
    ld h, d                                       ; $55fc: $62
    ld bc, $b9a1                                  ; $55fd: $01 $a1 $b9
    and b                                         ; $5600: $a0
    pop bc                                        ; $5601: $c1
    db $e4                                        ; $5602: $e4

jr_056_5603:
    ld [hl-], a                                   ; $5603: $32
    ld c, l                                       ; $5604: $4d
    call z, $ffca                                 ; $5605: $cc $ca $ff
    nop                                           ; $5608: $00
    xor b                                         ; $5609: $a8
    ld e, d                                       ; $560a: $5a
    ld e, e                                       ; $560b: $5b
    cp a                                          ; $560c: $bf
    add b                                         ; $560d: $80
    cp l                                          ; $560e: $bd
    ldh [rKEY1], a                                ; $560f: $e0 $4d
    ld [hl-], a                                   ; $5611: $32
    sub b                                         ; $5612: $90
    pop bc                                        ; $5613: $c1
    push hl                                       ; $5614: $e5
    ld b, b                                       ; $5615: $40
    rst $18                                       ; $5616: $df
    add b                                         ; $5617: $80
    ld [$828b], a                                 ; $5618: $ea $8b $82
    ld h, b                                       ; $561b: $60
    ld a, [hl]                                    ; $561c: $7e
    ld [c], a                                     ; $561d: $e2
    ret nz                                        ; $561e: $c0

    and e                                         ; $561f: $a3
    ld h, b                                       ; $5620: $60
    nop                                           ; $5621: $00
    jp z, $e8ff                                   ; $5622: $ca $ff $e8

    rst $20                                       ; $5625: $e7
    add c                                         ; $5626: $81
    ldh [$7e], a                                  ; $5627: $e0 $7e
    ldh [$7c], a                                  ; $5629: $e0 $7c
    pop hl                                        ; $562b: $e1
    or a                                          ; $562c: $b7

jr_056_562d:
    add b                                         ; $562d: $80
    cp h                                          ; $562e: $bc
    add d                                         ; $562f: $82
    ld b, b                                       ; $5630: $40
    cp a                                          ; $5631: $bf
    nop                                           ; $5632: $00
    rst $38                                       ; $5633: $ff
    rst $38                                       ; $5634: $ff
    rst $38                                       ; $5635: $ff
    rst $38                                       ; $5636: $ff
    rst $38                                       ; $5637: $ff
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
    nop                                           ; $5643: $00
    rst $38                                       ; $5644: $ff
    rst $38                                       ; $5645: $ff
    rst $38                                       ; $5646: $ff
    rst $38                                       ; $5647: $ff
    rst $38                                       ; $5648: $ff
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
    ret nz                                        ; $5654: $c0

    rst $38                                       ; $5655: $ff
    rst $38                                       ; $5656: $ff
    rst $38                                       ; $5657: $ff
    rst $38                                       ; $5658: $ff
    rst $38                                       ; $5659: $ff
    rst $38                                       ; $565a: $ff
    rst $38                                       ; $565b: $ff
    rst $38                                       ; $565c: $ff
    rst $38                                       ; $565d: $ff
    rst $38                                       ; $565e: $ff
    db $f4                                        ; $565f: $f4
    di                                            ; $5660: $f3
    xor h                                         ; $5661: $ac
    xor l                                         ; $5662: $ad
    di                                            ; $5663: $f3
    xor [hl]                                      ; $5664: $ae
    xor a                                         ; $5665: $af
    jp c, $ecff                                   ; $5666: $da $ff $ec

    db $eb                                        ; $5669: $eb
    or b                                          ; $566a: $b0
    or c                                          ; $566b: $b1
    or d                                          ; $566c: $b2
    or e                                          ; $566d: $b3
    rst $38                                       ; $566e: $ff
    or h                                          ; $566f: $b4
    or l                                          ; $5670: $b5
    or [hl]                                       ; $5671: $b6
    or a                                          ; $5672: $b7
    cp b                                          ; $5673: $b8
    cp c                                          ; $5674: $b9
    cp d                                          ; $5675: $ba
    cp e                                          ; $5676: $bb
    rrca                                          ; $5677: $0f
    cp h                                          ; $5678: $bc
    cp l                                          ; $5679: $bd
    cp [hl]                                       ; $567a: $be
    cp a                                          ; $567b: $bf
    adc $ff                                       ; $567c: $ce $ff
    rst $38                                       ; $567e: $ff
    rst $38                                       ; $567f: $ff
    rst $38                                       ; $5680: $ff
    rst $38                                       ; $5681: $ff
    rst $38                                       ; $5682: $ff
    rst $38                                       ; $5683: $ff
    nop                                           ; $5684: $00
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
    rst $38                                       ; $568f: $ff
    rst $38                                       ; $5690: $ff
    rst $38                                       ; $5691: $ff
    rst $38                                       ; $5692: $ff
    rst $38                                       ; $5693: $ff
    rst $38                                       ; $5694: $ff
    nop                                           ; $5695: $00
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
    rst $38                                       ; $56a0: $ff
    rst $38                                       ; $56a1: $ff
    rst $38                                       ; $56a2: $ff
    rst $38                                       ; $56a3: $ff
    rst $38                                       ; $56a4: $ff
    rst $38                                       ; $56a5: $ff
    nop                                           ; $56a6: $00
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
    rst $38                                       ; $56b1: $ff
    rst $38                                       ; $56b2: $ff
    rst $38                                       ; $56b3: $ff
    rst $38                                       ; $56b4: $ff
    rst $38                                       ; $56b5: $ff
    rst $38                                       ; $56b6: $ff
    nop                                           ; $56b7: $00
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
    rst $38                                       ; $56c2: $ff
    rst $38                                       ; $56c3: $ff
    rst $38                                       ; $56c4: $ff
    rst $38                                       ; $56c5: $ff
    rst $38                                       ; $56c6: $ff
    rst $38                                       ; $56c7: $ff
    nop                                           ; $56c8: $00
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
    rst $38                                       ; $56d3: $ff
    rst $38                                       ; $56d4: $ff
    rst $38                                       ; $56d5: $ff
    rst $38                                       ; $56d6: $ff
    rst $38                                       ; $56d7: $ff
    rst $38                                       ; $56d8: $ff
    nop                                           ; $56d9: $00
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
    rst $38                                       ; $56e4: $ff
    rst $38                                       ; $56e5: $ff
    rst $38                                       ; $56e6: $ff
    rst $38                                       ; $56e7: $ff
    rst $38                                       ; $56e8: $ff
    rst $38                                       ; $56e9: $ff
    nop                                           ; $56ea: $00
    rst $38                                       ; $56eb: $ff
    rst $38                                       ; $56ec: $ff
    rst $38                                       ; $56ed: $ff
    rst $38                                       ; $56ee: $ff
    rst $38                                       ; $56ef: $ff
    rst $38                                       ; $56f0: $ff
    rst $38                                       ; $56f1: $ff
    rst $38                                       ; $56f2: $ff
    rst $38                                       ; $56f3: $ff
    rst $38                                       ; $56f4: $ff
    rst $38                                       ; $56f5: $ff
    rst $38                                       ; $56f6: $ff
    rst $38                                       ; $56f7: $ff
    rst $38                                       ; $56f8: $ff
    rst $38                                       ; $56f9: $ff
    rst $38                                       ; $56fa: $ff
    add b                                         ; $56fb: $80
    rst $38                                       ; $56fc: $ff
    rst $38                                       ; $56fd: $ff
    rst $38                                       ; $56fe: $ff
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
    nop                                           ; $570a: $00
    ld bc, $0000                                  ; $570b: $01 $00 $00
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    and l                                         ; $5710: $a5
    nop                                           ; $5711: $00
    rst $38                                       ; $5712: $ff
    push hl                                       ; $5713: $e5
    ld [hl-], a                                   ; $5714: $32
    or $e6                                        ; $5715: $f6 $e6
    rst $30                                       ; $5717: $f7
    rst $20                                       ; $5718: $e7
    dec [hl]                                      ; $5719: $35
    db $ec                                        ; $571a: $ec
    xor $37                                       ; $571b: $ee $37
    db $ec                                        ; $571d: $ec
    jp c, $c7f0                                   ; $571e: $da $f0 $c7

    add sp, $33                                   ; $5721: $e8 $33
    ld sp, $f2e0                                  ; $5723: $31 $e0 $f2
    ld [hl], $30                                  ; $5726: $36 $30
    scf                                           ; $5728: $37
    cp a                                          ; $5729: $bf
    ld h, $20                                     ; $572a: $26 $20
    daa                                           ; $572c: $27
    db $10                                        ; $572d: $10
    ld d, $17                                     ; $572e: $16 $17
    jp nz, Jump_000_34f6                          ; $5730: $c2 $f6 $34

    rst $38                                       ; $5733: $ff
    ld [hl], $32                                  ; $5734: $36 $32
    jr nc, jr_056_576f                            ; $5736: $30 $37

    ld sp, $3133                                  ; $5738: $31 $33 $31
    inc sp                                        ; $573b: $33
    nop                                           ; $573c: $00
    and b                                         ; $573d: $a0
    ei                                            ; $573e: $fb
    rst $38                                       ; $573f: $ff
    rst $28                                       ; $5740: $ef
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    ld c, h                                       ; $5744: $4c
    ld d, a                                       ; $5745: $57
    ld a, h                                       ; $5746: $7c
    ld d, a                                       ; $5747: $57
    adc d                                         ; $5748: $8a
    ld e, c                                       ; $5749: $59
    ld e, l                                       ; $574a: $5d
    ld e, e                                       ; $574b: $5b
    ld [$c503], a                                 ; $574c: $ea $03 $c5
    ld b, $e2                                     ; $574f: $06 $e2
    ld bc, $00a0                                  ; $5751: $01 $a0 $00
    ld [$f003], a                                 ; $5754: $ea $03 $f0
    inc bc                                        ; $5757: $03
    push bc                                       ; $5758: $c5
    ld b, $e2                                     ; $5759: $06 $e2
    ld bc, $023f                                  ; $575b: $01 $3f $02
    xor e                                         ; $575e: $ab
    nop                                           ; $575f: $00
    inc sp                                        ; $5760: $33
    ld bc, $06c5                                  ; $5761: $01 $c5 $06
    ld [$0825], sp                                ; $5764: $08 $25 $08
    dec h                                         ; $5767: $25
    ld [$0825], sp                                ; $5768: $08 $25 $08
    dec h                                         ; $576b: $25
    ld [$0825], sp                                ; $576c: $08 $25 $08

jr_056_576f:
    dec h                                         ; $576f: $25
    ld [$0825], sp                                ; $5770: $08 $25 $08
    dec h                                         ; $5773: $25
    ld [$0825], sp                                ; $5774: $08 $25 $08
    dec h                                         ; $5777: $25
    ld [$0825], sp                                ; $5778: $08 $25 $08
    dec h                                         ; $577b: $25
    db $fd                                        ; $577c: $fd
    inc c                                         ; $577d: $0c
    rst $38                                       ; $577e: $ff
    ldh [$0b], a                                  ; $577f: $e0 $0b
    dec bc                                        ; $5781: $0b
    dec bc                                        ; $5782: $0b
    ld l, e                                       ; $5783: $6b
    ld l, e                                       ; $5784: $6b
    ld c, e                                       ; $5785: $4b
    ld l, [hl]                                    ; $5786: $6e
    rst $38                                       ; $5787: $ff
    db $e4                                        ; $5788: $e4
    dec bc                                        ; $5789: $0b
    dec hl                                        ; $578a: $2b
    dec bc                                        ; $578b: $0b
    db $ec                                        ; $578c: $ec
    pop hl                                        ; $578d: $e1
    inc c                                         ; $578e: $0c
    ld c, h                                       ; $578f: $4c
    ld a, [$1ce2]                                 ; $5790: $fa $e2 $1c
    rst $38                                       ; $5793: $ff
    rst $38                                       ; $5794: $ff
    pop bc                                        ; $5795: $c1
    ld [c], a                                     ; $5796: $e2
    dec hl                                        ; $5797: $2b
    ld l, e                                       ; $5798: $6b
    dec hl                                        ; $5799: $2b
    cp e                                          ; $579a: $bb
    ldh [$fd], a                                  ; $579b: $e0 $fd
    pop hl                                        ; $579d: $e1
    cp a                                          ; $579e: $bf
    pop hl                                        ; $579f: $e1
    ld h, [hl]                                    ; $57a0: $66
    call Call_056_4ce5                            ; $57a1: $cd $e5 $4c
    inc l                                         ; $57a4: $2c
    jp $82ff                                      ; $57a5: $c3 $ff $82


    db $e3                                        ; $57a8: $e3
    dec bc                                        ; $57a9: $0b
    dec hl                                        ; $57aa: $2b
    ret nz                                        ; $57ab: $c0

    push hl                                       ; $57ac: $e5
    ret nz                                        ; $57ad: $c0

    cp a                                          ; $57ae: $bf
    pop hl                                        ; $57af: $e1
    ret nz                                        ; $57b0: $c0

    and $c3                                       ; $57b1: $e6 $c3
    rst $38                                       ; $57b3: $ff
    add d                                         ; $57b4: $82
    db $e4                                        ; $57b5: $e4
    ret nz                                        ; $57b6: $c0

    ld [c], a                                     ; $57b7: $e2
    ld a, l                                       ; $57b8: $7d
    db $e4                                        ; $57b9: $e4
    ld c, e                                       ; $57ba: $4b
    ld c, e                                       ; $57bb: $4b
    add b                                         ; $57bc: $80
    set 4, [hl]                                   ; $57bd: $cb $e6
    ld a, a                                       ; $57bf: $7f
    rst $38                                       ; $57c0: $ff
    add d                                         ; $57c1: $82
    db $e4                                        ; $57c2: $e4
    add b                                         ; $57c3: $80
    pop hl                                        ; $57c4: $e1
    ld a, l                                       ; $57c5: $7d
    and $c0                                       ; $57c6: $e6 $c0
    add sp, $79                                   ; $57c8: $e8 $79
    ld [c], a                                     ; $57ca: $e2
    inc l                                         ; $57cb: $2c
    inc bc                                        ; $57cc: $03
    inc l                                         ; $57cd: $2c
    ld c, h                                       ; $57ce: $4c
    ld [hl], l                                    ; $57cf: $75
    pop hl                                        ; $57d0: $e1
    or h                                          ; $57d1: $b4
    and $ab                                       ; $57d2: $e6 $ab
    db $e4                                        ; $57d4: $e4
    and h                                         ; $57d5: $a4
    db $e3                                        ; $57d6: $e3
    call nz, $c3c1                                ; $57d7: $c4 $c1 $c3
    db $e3                                        ; $57da: $e3
    ld d, b                                       ; $57db: $50
    dec a                                         ; $57dc: $3d
    and $00                                       ; $57dd: $e6 $00
    db $ed                                        ; $57df: $ed
    ret nz                                        ; $57e0: $c0

    db $e4                                        ; $57e1: $e4
    jp $6bd5                                      ; $57e2: $c3 $d5 $6b


    ret nz                                        ; $57e5: $c0

    db $e4                                        ; $57e6: $e4
    dec bc                                        ; $57e7: $0b
    ld a, l                                       ; $57e8: $7d
    pop bc                                        ; $57e9: $c1
    add b                                         ; $57ea: $80
    cp a                                          ; $57eb: $bf
    pop bc                                        ; $57ec: $c1
    ret nz                                        ; $57ed: $c0

    rst $00                                       ; $57ee: $c7
    sub b                                         ; $57ef: $90
    db $e4                                        ; $57f0: $e4
    add b                                         ; $57f1: $80
    ldh [$83], a                                  ; $57f2: $e0 $83
    ret c                                         ; $57f4: $d8

    add c                                         ; $57f5: $81
    ldh [$c3], a                                  ; $57f6: $e0 $c3
    pop hl                                        ; $57f8: $e1
    ld l, e                                       ; $57f9: $6b
    nop                                           ; $57fa: $00
    add h                                         ; $57fb: $84
    jp nz, $c080                                  ; $57fc: $c2 $80 $c0

    ret nz                                        ; $57ff: $c0

    rst $00                                       ; $5800: $c7
    cp c                                          ; $5801: $b9
    rst $00                                       ; $5802: $c7
    or [hl]                                       ; $5803: $b6
    rst $10                                       ; $5804: $d7
    ld b, h                                       ; $5805: $44
    ret nz                                        ; $5806: $c0

    ret nz                                        ; $5807: $c0

    ld [c], a                                     ; $5808: $e2
    cp a                                          ; $5809: $bf
    ld [c], a                                     ; $580a: $e2
    ld b, [hl]                                    ; $580b: $46
    pop bc                                        ; $580c: $c1
    ld [c], a                                     ; $580d: $e2
    ld l, e                                       ; $580e: $6b
    ld l, e                                       ; $580f: $6b
    adc e                                         ; $5810: $8b
    call $f9bf                                    ; $5811: $cd $bf $f9
    inc b                                         ; $5814: $04
    ret nz                                        ; $5815: $c0

    ld c, e                                       ; $5816: $4b
    ld b, e                                       ; $5817: $43
    jp $be00                                      ; $5818: $c3 $00 $be


    and h                                         ; $581b: $a4
    or [hl]                                       ; $581c: $b6
    and b                                         ; $581d: $a0
    call $cec0                                    ; $581e: $cd $c0 $ce
    pop bc                                        ; $5821: $c1
    ld b, c                                       ; $5822: $41
    ret                                           ; $5823: $c9


    nop                                           ; $5824: $00
    ld hl, sp-$3d                                 ; $5825: $f8 $c3
    and b                                         ; $5827: $a0
    add h                                         ; $5828: $84
    and $00                                       ; $5829: $e6 $00
    pop bc                                        ; $582b: $c1
    ld [c], a                                     ; $582c: $e2
    add b                                         ; $582d: $80
    and b                                         ; $582e: $a0
    ret nz                                        ; $582f: $c0

    ld sp, hl                                     ; $5830: $f9
    inc l                                         ; $5831: $2c
    jp nz, $c627                                  ; $5832: $c2 $27 $c6

    add e                                         ; $5835: $83
    and c                                         ; $5836: $a1
    cp a                                          ; $5837: $bf
    push hl                                       ; $5838: $e5
    ld a, d                                       ; $5839: $7a
    ld [c], a                                     ; $583a: $e2
    nop                                           ; $583b: $00
    inc sp                                        ; $583c: $33
    and b                                         ; $583d: $a0
    add b                                         ; $583e: $80
    rst $38                                       ; $583f: $ff
    inc h                                         ; $5840: $24
    add sp, -$41                                  ; $5841: $e8 $bf
    ld [c], a                                     ; $5843: $e2
    ld a, l                                       ; $5844: $7d
    ldh [rLYC], a                                 ; $5845: $e0 $45
    and b                                         ; $5847: $a0
    ld a, l                                       ; $5848: $7d
    and l                                         ; $5849: $a5
    nop                                           ; $584a: $00
    rst $38                                       ; $584b: $ff
    inc e                                         ; $584c: $1c
    ld [hl], d                                    ; $584d: $72
    add sp, $0d                                   ; $584e: $e8 $0d
    jp Jump_000_0b2b                              ; $5850: $c3 $2b $0b


    ld c, e                                       ; $5853: $4b
    ld a, $a6                                     ; $5854: $3e $a6
    add b                                         ; $5856: $80
    rst $38                                       ; $5857: $ff
    ret nz                                        ; $5858: $c0

    jp hl                                         ; $5859: $e9


    nop                                           ; $585a: $00
    ld a, a                                       ; $585b: $7f
    ldh [$08], a                                  ; $585c: $e0 $08
    jp nz, $80c5                                  ; $585e: $c2 $c5 $80

    cp h                                          ; $5861: $bc
    add l                                         ; $5862: $85
    ret nz                                        ; $5863: $c0

    pop af                                        ; $5864: $f1
    ld a, l                                       ; $5865: $7d
    and b                                         ; $5866: $a0
    ld a, d                                       ; $5867: $7a
    and b                                         ; $5868: $a0
    or [hl]                                       ; $5869: $b6
    xor a                                         ; $586a: $af
    dec e                                         ; $586b: $1d
    inc l                                         ; $586c: $2c
    ld a, a                                       ; $586d: $7f
    ldh [$2b], a                                  ; $586e: $e0 $2b
    dec bc                                        ; $5870: $0b
    ld a, [bc]                                    ; $5871: $0a
    cp [hl]                                       ; $5872: $be
    ld [$ad00], a                                 ; $5873: $ea $00 $ad
    ccf                                           ; $5876: $3f
    and e                                         ; $5877: $a3
    nop                                           ; $5878: $00
    ret nz                                        ; $5879: $c0

    di                                            ; $587a: $f3
    ei                                            ; $587b: $fb
    ld a, [$ab7f]                                 ; $587c: $fa $7f $ab
    db $fc                                        ; $587f: $fc
    add c                                         ; $5880: $81
    jp nz, $b9ff                                  ; $5881: $c2 $ff $b9

    di                                            ; $5884: $f3
    cp [hl]                                       ; $5885: $be
    add d                                         ; $5886: $82
    jp Jump_000_00e1                              ; $5887: $c3 $e1 $00


    cp a                                          ; $588a: $bf
    rst $38                                       ; $588b: $ff
    cp a                                          ; $588c: $bf
    ld sp, hl                                     ; $588d: $f9
    dec [hl]                                      ; $588e: $35
    or h                                          ; $588f: $b4
    add hl, de                                    ; $5890: $19
    sbc a                                         ; $5891: $9f
    ld a, a                                       ; $5892: $7f
    db $eb                                        ; $5893: $eb
    ret nc                                        ; $5894: $d0

    db $ed                                        ; $5895: $ed
    ret nz                                        ; $5896: $c0

    db $ec                                        ; $5897: $ec
    ld e, h                                       ; $5898: $5c
    pop af                                        ; $5899: $f1
    add b                                         ; $589a: $80
    ccf                                           ; $589b: $3f
    push af                                       ; $589c: $f5
    dec h                                         ; $589d: $25
    add l                                         ; $589e: $85
    rra                                           ; $589f: $1f
    push hl                                       ; $58a0: $e5
    jr nz, @+$01                                  ; $58a1: $20 $ff

    ret nz                                        ; $58a3: $c0

    di                                            ; $58a4: $f3
    sub $f9                                       ; $58a5: $d6 $f9
    ld a, a                                       ; $58a7: $7f
    ld h, e                                       ; $58a8: $63
    inc l                                         ; $58a9: $2c
    nop                                           ; $58aa: $00
    ld a, [hl]                                    ; $58ab: $7e
    ld h, d                                       ; $58ac: $62
    ld [bc], a                                    ; $58ad: $02
    xor e                                         ; $58ae: $ab
    and h                                         ; $58af: $a4
    rst $00                                       ; $58b0: $c7
    ld b, e                                       ; $58b1: $43
    sub $7f                                       ; $58b2: $d6 $7f
    ld a, l                                       ; $58b4: $7d
    ld d, [hl]                                    ; $58b5: $56
    xor l                                         ; $58b6: $ad

jr_056_58b7:
    adc $ca                                       ; $58b7: $ce $ca
    add [hl]                                      ; $58b9: $86
    db $e4                                        ; $58ba: $e4
    nop                                           ; $58bb: $00
    add hl, bc                                    ; $58bc: $09
    jp c, $c16b                                   ; $58bd: $da $6b $c1

    jr z, jr_056_58b7                             ; $58c0: $28 $f5

    add [hl]                                      ; $58c2: $86
    and h                                         ; $58c3: $a4
    jp hl                                         ; $58c4: $e9


    jp c, $a4e5                                   ; $58c5: $da $e5 $a4

    ld sp, hl                                     ; $58c8: $f9
    ret z                                         ; $58c9: $c8

    ret c                                         ; $58ca: $d8

    and h                                         ; $58cb: $a4
    add b                                         ; $58cc: $80
    adc h                                         ; $58cd: $8c
    ld b, c                                       ; $58ce: $41
    add [hl]                                      ; $58cf: $86
    and [hl]                                      ; $58d0: $a6
    jp c, $a2d7                                   ; $58d1: $da $d7 $a2

    and h                                         ; $58d4: $a4
    ret nz                                        ; $58d5: $c0

    db $ec                                        ; $58d6: $ec
    adc e                                         ; $58d7: $8b
    xor d                                         ; $58d8: $aa
    adc b                                         ; $58d9: $88
    cp b                                          ; $58da: $b8
    dec bc                                        ; $58db: $0b
    ld bc, $ff08                                  ; $58dc: $01 $08 $ff
    ld [c], a                                     ; $58df: $e2
    ld sp, hl                                     ; $58e0: $f9
    db $e4                                        ; $58e1: $e4
    ld a, [$89e6]                                 ; $58e2: $fa $e6 $89
    add sp, $20                                   ; $58e5: $e8 $20
    push bc                                       ; $58e7: $c5
    ld a, $97                                     ; $58e8: $3e $97
    dec a                                         ; $58ea: $3d
    ret nc                                        ; $58eb: $d0

    nop                                           ; $58ec: $00
    rst $08                                       ; $58ed: $cf
    add l                                         ; $58ee: $85
    add c                                         ; $58ef: $81
    ld b, h                                       ; $58f0: $44
    ld e, a                                       ; $58f1: $5f
    cp h                                          ; $58f2: $bc
    ld e, b                                       ; $58f3: $58
    ld a, [hl-]                                   ; $58f4: $3a
    ld c, a                                       ; $58f5: $4f
    or c                                          ; $58f6: $b1
    rst $38                                       ; $58f7: $ff
    sbc a                                         ; $58f8: $9f
    and b                                         ; $58f9: $a0
    rst $38                                       ; $58fa: $ff
    ldh [$fa], a                                  ; $58fb: $e0 $fa
    nop                                           ; $58fd: $00
    add $0b                                       ; $58fe: $c6 $0b
    ld e, l                                       ; $5900: $5d
    cp [hl]                                       ; $5901: $be
    ret nz                                        ; $5902: $c0

    rst $28                                       ; $5903: $ef
    ld b, $bf                                     ; $5904: $06 $bf
    ld b, b                                       ; $5906: $40
    ei                                            ; $5907: $fb
    ld b, l                                       ; $5908: $45
    rra                                           ; $5909: $1f
    ret nz                                        ; $590a: $c0

    db $fc                                        ; $590b: $fc
    ld b, $69                                     ; $590c: $06 $69
    nop                                           ; $590e: $00
    ld a, e                                       ; $590f: $7b
    sbc [hl]                                      ; $5910: $9e
    nop                                           ; $5911: $00
    push af                                       ; $5912: $f5
    ret nz                                        ; $5913: $c0

    rst $38                                       ; $5914: $ff
    nop                                           ; $5915: $00
    ei                                            ; $5916: $fb
    add $9b                                       ; $5917: $c6 $9b
    inc de                                        ; $5919: $13
    rst $38                                       ; $591a: $ff
    inc h                                         ; $591b: $24
    xor a                                         ; $591c: $af
    add b                                         ; $591d: $80
    rst $38                                       ; $591e: $ff
    nop                                           ; $591f: $00
    ld b, l                                       ; $5920: $45
    ccf                                           ; $5921: $3f
    add b                                         ; $5922: $80
    ld a, [$3b45]                                 ; $5923: $fa $45 $3b
    ld l, d                                       ; $5926: $6a
    db $d3                                        ; $5927: $d3
    sbc l                                         ; $5928: $9d
    jp hl                                         ; $5929: $e9


    dec b                                         ; $592a: $05
    ccf                                           ; $592b: $3f
    rst $38                                       ; $592c: $ff
    rst $38                                       ; $592d: $ff
    ld h, [hl]                                    ; $592e: $66
    ld a, h                                       ; $592f: $7c
    nop                                           ; $5930: $00
    add b                                         ; $5931: $80
    ld a, [$ffe5]                                 ; $5932: $fa $e5 $ff
    rst $38                                       ; $5935: $ff
    rst $38                                       ; $5936: $ff
    rst $38                                       ; $5937: $ff
    rst $38                                       ; $5938: $ff
    rst $38                                       ; $5939: $ff
    rst $38                                       ; $593a: $ff
    rst $38                                       ; $593b: $ff
    rst $38                                       ; $593c: $ff
    rst $38                                       ; $593d: $ff
    rst $38                                       ; $593e: $ff
    rst $38                                       ; $593f: $ff
    rst $38                                       ; $5940: $ff
    nop                                           ; $5941: $00
    rst $38                                       ; $5942: $ff
    rst $38                                       ; $5943: $ff
    rst $38                                       ; $5944: $ff
    rst $38                                       ; $5945: $ff
    rst $38                                       ; $5946: $ff
    rst $38                                       ; $5947: $ff
    add l                                         ; $5948: $85
    cp a                                          ; $5949: $bf
    rst $38                                       ; $594a: $ff
    rst $38                                       ; $594b: $ff
    rst $38                                       ; $594c: $ff
    rst $38                                       ; $594d: $ff
    rst $38                                       ; $594e: $ff
    rst $38                                       ; $594f: $ff
    rst $38                                       ; $5950: $ff
    rst $38                                       ; $5951: $ff
    nop                                           ; $5952: $00
    rst $38                                       ; $5953: $ff
    rst $38                                       ; $5954: $ff
    rst $38                                       ; $5955: $ff
    rst $38                                       ; $5956: $ff
    rst $38                                       ; $5957: $ff
    rst $38                                       ; $5958: $ff
    rst $38                                       ; $5959: $ff
    rst $38                                       ; $595a: $ff
    rst $38                                       ; $595b: $ff
    rst $38                                       ; $595c: $ff
    rst $38                                       ; $595d: $ff
    rst $38                                       ; $595e: $ff
    rst $38                                       ; $595f: $ff
    rst $38                                       ; $5960: $ff
    rst $38                                       ; $5961: $ff
    rst $38                                       ; $5962: $ff
    nop                                           ; $5963: $00
    rst $38                                       ; $5964: $ff
    rst $38                                       ; $5965: $ff
    rst $38                                       ; $5966: $ff
    rst $38                                       ; $5967: $ff
    rst $38                                       ; $5968: $ff
    rst $38                                       ; $5969: $ff
    rst $38                                       ; $596a: $ff
    rst $38                                       ; $596b: $ff
    rst $38                                       ; $596c: $ff
    rst $38                                       ; $596d: $ff
    rst $38                                       ; $596e: $ff
    rst $38                                       ; $596f: $ff
    rst $38                                       ; $5970: $ff
    rst $38                                       ; $5971: $ff
    rst $38                                       ; $5972: $ff
    rst $38                                       ; $5973: $ff
    nop                                           ; $5974: $00
    rst $38                                       ; $5975: $ff
    rst $38                                       ; $5976: $ff
    rst $38                                       ; $5977: $ff
    rst $38                                       ; $5978: $ff
    nop                                           ; $5979: $00
    cp a                                          ; $597a: $bf
    rst $38                                       ; $597b: $ff
    rst $38                                       ; $597c: $ff
    rst $38                                       ; $597d: $ff
    rst $38                                       ; $597e: $ff
    rst $38                                       ; $597f: $ff
    rst $38                                       ; $5980: $ff
    rst $38                                       ; $5981: $ff
    rst $38                                       ; $5982: $ff
    rst $38                                       ; $5983: $ff
    rst $38                                       ; $5984: $ff
    ld bc, $000c                                  ; $5985: $01 $0c $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    rst $38                                       ; $598a: $ff
    jr nz, @+$22                                  ; $598b: $20 $20

    jr nz, jr_056_599e                            ; $598d: $20 $0f

    ld sp, $3131                                  ; $598f: $31 $31 $31
    ld c, l                                       ; $5992: $4d
    rst $38                                       ; $5993: $ff
    ld a, [hl-]                                   ; $5994: $3a
    ld d, h                                       ; $5995: $54
    ld d, l                                       ; $5996: $55
    ld d, h                                       ; $5997: $54
    ld d, h                                       ; $5998: $54
    ld d, l                                       ; $5999: $55
    ld d, l                                       ; $599a: $55
    dec sp                                        ; $599b: $3b
    rra                                           ; $599c: $1f
    ld c, l                                       ; $599d: $4d

jr_056_599e:
    ld sp, $5b60                                  ; $599e: $31 $60 $5b
    nop                                           ; $59a1: $00
    rst $38                                       ; $59a2: $ff
    rst $38                                       ; $59a3: $ff
    rst $20                                       ; $59a4: $e7
    and $c1                                       ; $59a5: $e6 $c1
    db $e3                                        ; $59a7: $e3
    ld l, a                                       ; $59a8: $6f
    ld a, $32                                     ; $59a9: $3e $32
    ld l, e                                       ; $59ab: $6b
    jr nc, @+$01                                  ; $59ac: $30 $ff

    ld [c], a                                     ; $59ae: $e2
    ld l, l                                       ; $59af: $6d
    ld [hl-], a                                   ; $59b0: $32
    cp a                                          ; $59b1: $bf
    ldh [$b8], a                                  ; $59b2: $e0 $b8
    jp z, $c0ff                                   ; $59b4: $ca $ff $c0

    add sp, -$7e                                  ; $59b7: $e8 $82
    pop hl                                        ; $59b9: $e1
    ld c, c                                       ; $59ba: $49
    ld c, h                                       ; $59bb: $4c
    ld l, e                                       ; $59bc: $6b
    ret nz                                        ; $59bd: $c0

    pop hl                                        ; $59be: $e1
    ld l, h                                       ; $59bf: $6c
    and c                                         ; $59c0: $a1
    ld l, h                                       ; $59c1: $6c
    cp a                                          ; $59c2: $bf
    db $e3                                        ; $59c3: $e3
    jp z, $e8ff                                   ; $59c4: $ca $ff $e8

    rst $20                                       ; $59c7: $e7
    add d                                         ; $59c8: $82
    db $e3                                        ; $59c9: $e3
    jr nc, @-$3e                                  ; $59ca: $30 $c0

    pop hl                                        ; $59cc: $e1
    ld l, l                                       ; $59cd: $6d
    rlca                                          ; $59ce: $07
    ld l, h                                       ; $59cf: $6c
    ld l, h                                       ; $59d0: $6c
    ld l, l                                       ; $59d1: $6d
    ld a, [hl]                                    ; $59d2: $7e
    ld [c], a                                     ; $59d3: $e2
    jp z, $e8ff                                   ; $59d4: $ca $ff $e8

    rst $20                                       ; $59d7: $e7
    add d                                         ; $59d8: $82
    db $e3                                        ; $59d9: $e3
    ret nz                                        ; $59da: $c0

    pop hl                                        ; $59db: $e1
    inc h                                         ; $59dc: $24
    ld a, l                                       ; $59dd: $7d
    pop hl                                        ; $59de: $e1
    ld sp, hl                                     ; $59df: $f9
    ld [c], a                                     ; $59e0: $e2
    add hl, sp                                    ; $59e1: $39
    jp z, $c0ff                                   ; $59e2: $ca $ff $c0

    ld [$c339], a                                 ; $59e5: $ea $39 $c3
    db $e3                                        ; $59e8: $e3
    ret nz                                        ; $59e9: $c0

    and $99                                       ; $59ea: $e6 $99
    ld d, e                                       ; $59ec: $53
    jp z, $80ff                                   ; $59ed: $ca $ff $80

    jp hl                                         ; $59f0: $e9


    ld c, c                                       ; $59f1: $49
    ld c, b                                       ; $59f2: $48
    add e                                         ; $59f3: $83
    db $e4                                        ; $59f4: $e4
    ld b, b                                       ; $59f5: $40
    db $e4                                        ; $59f6: $e4
    ld l, d                                       ; $59f7: $6a
    add c                                         ; $59f8: $81
    ld d, d                                       ; $59f9: $52
    jp z, Jump_056_40ff                           ; $59fa: $ca $ff $40

    jp hl                                         ; $59fd: $e9


    add c                                         ; $59fe: $81
    ldh [$03], a                                  ; $59ff: $e0 $03
    pop hl                                        ; $5a01: $e1
    dec b                                         ; $5a02: $05
    ldh [$c0], a                                  ; $5a03: $e0 $c0
    jp nz, $c36a                                  ; $5a05: $c2 $6a $c3

    ld l, d                                       ; $5a08: $6a
    add e                                         ; $5a09: $83
    jp z, $c0ff                                   ; $5a0a: $ca $ff $c0

    rst $28                                       ; $5a0d: $ef
    cp a                                          ; $5a0e: $bf
    ld [c], a                                     ; $5a0f: $e2
    pop bc                                        ; $5a10: $c1
    ld [c], a                                     ; $5a11: $e2
    ld [hl], c                                    ; $5a12: $71
    ld a, c                                       ; $5a13: $79
    ld h, h                                       ; $5a14: $64
    jp z, Jump_056_40ff                           ; $5a15: $ca $ff $40

    ld [$4342], a                                 ; $5a18: $ea $42 $43
    jp nz, $c081                                  ; $5a1b: $c2 $81 $c0

    ld l, l                                       ; $5a1e: $6d
    ld l, l                                       ; $5a1f: $6d
    pop bc                                        ; $5a20: $c1
    ld [c], a                                     ; $5a21: $e2
    ld bc, $ca80                                  ; $5a22: $01 $80 $ca
    rst $38                                       ; $5a25: $ff
    ret nz                                        ; $5a26: $c0

    set 1, b                                      ; $5a27: $cb $c8
    ldh [$c2], a                                  ; $5a29: $e0 $c2
    and c                                         ; $5a2b: $a1
    ret nz                                        ; $5a2c: $c0

    ldh [$c1], a                                  ; $5a2d: $e0 $c1
    ld [c], a                                     ; $5a2f: $e2
    ret nz                                        ; $5a30: $c0

    rst $38                                       ; $5a31: $ff
    ld d, [hl]                                    ; $5a32: $56
    ld b, b                                       ; $5a33: $40
    bit 1, l                                      ; $5a34: $cb $4d
    ld [hl-], a                                   ; $5a36: $32
    cp a                                          ; $5a37: $bf
    db $e3                                        ; $5a38: $e3
    ld [hl], $3d                                  ; $5a39: $36 $3d
    and b                                         ; $5a3b: $a0
    ld a, [hl]                                    ; $5a3c: $7e
    pop bc                                        ; $5a3d: $c1
    ldh [$f4], a                                  ; $5a3e: $e0 $f4
    ret nz                                        ; $5a40: $c0

    rst $38                                       ; $5a41: $ff
    jp hl                                         ; $5a42: $e9


    add sp, $15                                   ; $5a43: $e8 $15
    inc bc                                        ; $5a45: $03
    and c                                         ; $5a46: $a1
    ld b, l                                       ; $5a47: $45
    ld b, h                                       ; $5a48: $44
    ld l, l                                       ; $5a49: $6d
    ld l, l                                       ; $5a4a: $6d
    add a                                         ; $5a4b: $87
    ld [hl], $7e                                  ; $5a4c: $36 $7e
    ld [hl], h                                    ; $5a4e: $74
    push bc                                       ; $5a4f: $c5
    ldh [$fd], a                                  ; $5a50: $e0 $fd
    ld [c], a                                     ; $5a52: $e2
    jp z, $e8ff                                   ; $5a53: $ca $ff $e8

    rst $20                                       ; $5a56: $e7
    rla                                           ; $5a57: $17
    inc a                                         ; $5a58: $3c
    jp $be80                                      ; $5a59: $c3 $80 $be


    pop hl                                        ; $5a5c: $e1
    ld b, l                                       ; $5a5d: $45
    ld a, $58                                     ; $5a5e: $3e $58
    xor d                                         ; $5a60: $aa
    ret nz                                        ; $5a61: $c0

    rst $38                                       ; $5a62: $ff
    ldh a, [$ef]                                  ; $5a63: $f0 $ef
    ld a, a                                       ; $5a65: $7f
    ld d, $15                                     ; $5a66: $16 $15
    ld sp, $5c61                                  ; $5a68: $31 $61 $5c
    ld e, l                                       ; $5a6b: $5d
    ld h, d                                       ; $5a6c: $62
    cp d                                          ; $5a6d: $ba
    pop hl                                        ; $5a6e: $e1
    pop de                                        ; $5a6f: $d1
    xor e                                         ; $5a70: $ab
    cp [hl]                                       ; $5a71: $be
    push hl                                       ; $5a72: $e5
    jp z, $e8ff                                   ; $5a73: $ca $ff $e8

    rst $20                                       ; $5a76: $e7
    jr z, jr_056_5af8                             ; $5a77: $28 $7f

    ldh [$60], a                                  ; $5a79: $e0 $60
    ld e, e                                       ; $5a7b: $5b
    rlca                                          ; $5a7c: $07
    ld e, d                                       ; $5a7d: $5a
    ld e, h                                       ; $5a7e: $5c
    ld e, l                                       ; $5a7f: $5d
    cp [hl]                                       ; $5a80: $be
    add sp, -$36                                  ; $5a81: $e8 $ca
    rst $38                                       ; $5a83: $ff
    rst $38                                       ; $5a84: $ff
    rst $38                                       ; $5a85: $ff
    rst $38                                       ; $5a86: $ff
    rst $38                                       ; $5a87: $ff
    rst $38                                       ; $5a88: $ff
    rst $38                                       ; $5a89: $ff
    nop                                           ; $5a8a: $00
    rst $38                                       ; $5a8b: $ff
    rst $38                                       ; $5a8c: $ff
    rst $38                                       ; $5a8d: $ff
    rst $38                                       ; $5a8e: $ff
    rst $38                                       ; $5a8f: $ff
    rst $38                                       ; $5a90: $ff
    rst $38                                       ; $5a91: $ff
    rst $38                                       ; $5a92: $ff
    rst $38                                       ; $5a93: $ff
    rst $38                                       ; $5a94: $ff
    rst $38                                       ; $5a95: $ff
    rst $38                                       ; $5a96: $ff
    rst $38                                       ; $5a97: $ff
    rst $38                                       ; $5a98: $ff
    rst $38                                       ; $5a99: $ff
    rst $38                                       ; $5a9a: $ff
    nop                                           ; $5a9b: $00
    rst $38                                       ; $5a9c: $ff
    rst $38                                       ; $5a9d: $ff
    rst $38                                       ; $5a9e: $ff
    rst $38                                       ; $5a9f: $ff
    rst $38                                       ; $5aa0: $ff
    rst $38                                       ; $5aa1: $ff
    rst $38                                       ; $5aa2: $ff
    rst $38                                       ; $5aa3: $ff
    rst $38                                       ; $5aa4: $ff
    rst $38                                       ; $5aa5: $ff
    rst $38                                       ; $5aa6: $ff
    rst $38                                       ; $5aa7: $ff
    rst $38                                       ; $5aa8: $ff
    rst $38                                       ; $5aa9: $ff
    rst $38                                       ; $5aaa: $ff
    rst $38                                       ; $5aab: $ff
    ldh a, [rIE]                                  ; $5aac: $f0 $ff
    rst $38                                       ; $5aae: $ff
    rst $38                                       ; $5aaf: $ff
    rst $38                                       ; $5ab0: $ff
    rst $38                                       ; $5ab1: $ff
    rst $38                                       ; $5ab2: $ff
    db $fc                                        ; $5ab3: $fc
    ei                                            ; $5ab4: $fb
    or b                                          ; $5ab5: $b0
    or c                                          ; $5ab6: $b1
    or d                                          ; $5ab7: $b2
    or e                                          ; $5ab8: $b3
    rst $30                                       ; $5ab9: $f7
    or h                                          ; $5aba: $b4
    or l                                          ; $5abb: $b5
    or [hl]                                       ; $5abc: $b6
    ld sp, hl                                     ; $5abd: $f9
    db $e4                                        ; $5abe: $e4
    or a                                          ; $5abf: $b7
    cp b                                          ; $5ac0: $b8
    cp c                                          ; $5ac1: $b9
    cp d                                          ; $5ac2: $ba
    rra                                           ; $5ac3: $1f
    cp e                                          ; $5ac4: $bb
    cp h                                          ; $5ac5: $bc
    cp l                                          ; $5ac6: $bd
    cp [hl]                                       ; $5ac7: $be
    cp a                                          ; $5ac8: $bf
    rst $00                                       ; $5ac9: $c7
    rst $38                                       ; $5aca: $ff
    rst $38                                       ; $5acb: $ff
    rst $38                                       ; $5acc: $ff
    rst $38                                       ; $5acd: $ff
    rst $38                                       ; $5ace: $ff
    nop                                           ; $5acf: $00
    rst $38                                       ; $5ad0: $ff
    rst $38                                       ; $5ad1: $ff
    rst $38                                       ; $5ad2: $ff
    rst $38                                       ; $5ad3: $ff
    rst $38                                       ; $5ad4: $ff
    rst $38                                       ; $5ad5: $ff
    rst $38                                       ; $5ad6: $ff
    rst $38                                       ; $5ad7: $ff
    rst $38                                       ; $5ad8: $ff
    rst $38                                       ; $5ad9: $ff
    rst $38                                       ; $5ada: $ff
    rst $38                                       ; $5adb: $ff
    rst $38                                       ; $5adc: $ff
    rst $38                                       ; $5add: $ff
    rst $38                                       ; $5ade: $ff
    rst $38                                       ; $5adf: $ff
    nop                                           ; $5ae0: $00
    rst $38                                       ; $5ae1: $ff
    rst $38                                       ; $5ae2: $ff
    rst $38                                       ; $5ae3: $ff
    rst $38                                       ; $5ae4: $ff
    rst $38                                       ; $5ae5: $ff
    rst $38                                       ; $5ae6: $ff
    rst $38                                       ; $5ae7: $ff
    rst $38                                       ; $5ae8: $ff
    rst $38                                       ; $5ae9: $ff
    rst $38                                       ; $5aea: $ff
    rst $38                                       ; $5aeb: $ff
    rst $38                                       ; $5aec: $ff
    rst $38                                       ; $5aed: $ff
    rst $38                                       ; $5aee: $ff
    rst $38                                       ; $5aef: $ff
    rst $38                                       ; $5af0: $ff
    nop                                           ; $5af1: $00
    rst $38                                       ; $5af2: $ff
    rst $38                                       ; $5af3: $ff
    rst $38                                       ; $5af4: $ff
    rst $38                                       ; $5af5: $ff
    rst $38                                       ; $5af6: $ff
    rst $38                                       ; $5af7: $ff

jr_056_5af8:
    rst $38                                       ; $5af8: $ff
    rst $38                                       ; $5af9: $ff
    rst $38                                       ; $5afa: $ff
    rst $38                                       ; $5afb: $ff
    rst $38                                       ; $5afc: $ff
    rst $38                                       ; $5afd: $ff
    rst $38                                       ; $5afe: $ff
    rst $38                                       ; $5aff: $ff
    rst $38                                       ; $5b00: $ff
    rst $38                                       ; $5b01: $ff
    nop                                           ; $5b02: $00
    rst $38                                       ; $5b03: $ff
    rst $38                                       ; $5b04: $ff
    rst $38                                       ; $5b05: $ff
    rst $38                                       ; $5b06: $ff
    rst $38                                       ; $5b07: $ff
    rst $38                                       ; $5b08: $ff
    rst $38                                       ; $5b09: $ff
    rst $38                                       ; $5b0a: $ff
    rst $38                                       ; $5b0b: $ff
    rst $38                                       ; $5b0c: $ff
    rst $38                                       ; $5b0d: $ff
    rst $38                                       ; $5b0e: $ff
    rst $38                                       ; $5b0f: $ff
    rst $38                                       ; $5b10: $ff
    rst $38                                       ; $5b11: $ff
    rst $38                                       ; $5b12: $ff
    nop                                           ; $5b13: $00
    rst $38                                       ; $5b14: $ff
    rst $38                                       ; $5b15: $ff
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
    rst $38                                       ; $5b20: $ff
    rst $38                                       ; $5b21: $ff
    rst $38                                       ; $5b22: $ff
    rst $38                                       ; $5b23: $ff
    nop                                           ; $5b24: $00
    rst $38                                       ; $5b25: $ff
    rst $38                                       ; $5b26: $ff
    rst $38                                       ; $5b27: $ff
    rst $38                                       ; $5b28: $ff
    rst $38                                       ; $5b29: $ff
    rst $38                                       ; $5b2a: $ff
    rst $38                                       ; $5b2b: $ff
    rst $38                                       ; $5b2c: $ff
    rst $38                                       ; $5b2d: $ff
    rst $38                                       ; $5b2e: $ff
    rst $38                                       ; $5b2f: $ff
    rst $38                                       ; $5b30: $ff
    rst $38                                       ; $5b31: $ff
    rst $38                                       ; $5b32: $ff
    rst $38                                       ; $5b33: $ff
    rst $38                                       ; $5b34: $ff
    nop                                           ; $5b35: $00
    rst $38                                       ; $5b36: $ff
    rst $38                                       ; $5b37: $ff
    rst $38                                       ; $5b38: $ff
    rst $38                                       ; $5b39: $ff
    rst $38                                       ; $5b3a: $ff
    rst $38                                       ; $5b3b: $ff
    rst $38                                       ; $5b3c: $ff
    rst $38                                       ; $5b3d: $ff
    rst $38                                       ; $5b3e: $ff
    rst $38                                       ; $5b3f: $ff
    rst $38                                       ; $5b40: $ff
    rst $38                                       ; $5b41: $ff
    rst $38                                       ; $5b42: $ff
    rst $38                                       ; $5b43: $ff
    rst $38                                       ; $5b44: $ff
    rst $38                                       ; $5b45: $ff
    nop                                           ; $5b46: $00
    rst $38                                       ; $5b47: $ff
    rst $38                                       ; $5b48: $ff
    rst $38                                       ; $5b49: $ff
    rst $38                                       ; $5b4a: $ff
    rst $38                                       ; $5b4b: $ff
    rst $38                                       ; $5b4c: $ff
    rst $38                                       ; $5b4d: $ff
    rst $38                                       ; $5b4e: $ff
    rst $38                                       ; $5b4f: $ff
    rst $38                                       ; $5b50: $ff
    rst $38                                       ; $5b51: $ff
    rst $38                                       ; $5b52: $ff
    rst $38                                       ; $5b53: $ff
    rst $38                                       ; $5b54: $ff
    rst $38                                       ; $5b55: $ff
    rst $38                                       ; $5b56: $ff
    nop                                           ; $5b57: $00
    rst $38                                       ; $5b58: $ff
    ldh [rP1], a                                  ; $5b59: $e0 $00
    nop                                           ; $5b5b: $00
    nop                                           ; $5b5c: $00
    and l                                         ; $5b5d: $a5
    nop                                           ; $5b5e: $00
    rst $38                                       ; $5b5f: $ff

Call_056_5b60:
    push hl                                       ; $5b60: $e5
    ld [hl-], a                                   ; $5b61: $32
    or $e6                                        ; $5b62: $f6 $e6
    rst $30                                       ; $5b64: $f7
    rst $20                                       ; $5b65: $e7
    dec [hl]                                      ; $5b66: $35
    db $ec                                        ; $5b67: $ec
    xor $37                                       ; $5b68: $ee $37
    db $ec                                        ; $5b6a: $ec
    jp c, $c7f0                                   ; $5b6b: $da $f0 $c7

    add sp, $33                                   ; $5b6e: $e8 $33
    ld sp, $f2e0                                  ; $5b70: $31 $e0 $f2
    ld [hl], $30                                  ; $5b73: $36 $30
    scf                                           ; $5b75: $37
    cp a                                          ; $5b76: $bf
    ld h, $20                                     ; $5b77: $26 $20
    daa                                           ; $5b79: $27
    db $10                                        ; $5b7a: $10
    ld d, $17                                     ; $5b7b: $16 $17
    jp nz, Jump_000_34f6                          ; $5b7d: $c2 $f6 $34

    rst $38                                       ; $5b80: $ff
    ld [hl], $32                                  ; $5b81: $36 $32
    jr nc, jr_056_5bbc                            ; $5b83: $30 $37

    ld sp, $3133                                  ; $5b85: $31 $33 $31
    inc sp                                        ; $5b88: $33
    nop                                           ; $5b89: $00
    and b                                         ; $5b8a: $a0
    ei                                            ; $5b8b: $fb
    rst $38                                       ; $5b8c: $ff
    rst $28                                       ; $5b8d: $ef
    nop                                           ; $5b8e: $00
    nop                                           ; $5b8f: $00
    nop                                           ; $5b90: $00
    sbc c                                         ; $5b91: $99
    ld e, e                                       ; $5b92: $5b
    ret                                           ; $5b93: $c9


    ld e, e                                       ; $5b94: $5b
    ld sp, $dc5d                                  ; $5b95: $31 $5d $dc
    ld e, [hl]                                    ; $5b98: $5e
    ld [$c503], a                                 ; $5b99: $ea $03 $c5
    ld b, $e2                                     ; $5b9c: $06 $e2
    ld bc, $00a0                                  ; $5b9e: $01 $a0 $00
    ld [$f003], a                                 ; $5ba1: $ea $03 $f0
    inc bc                                        ; $5ba4: $03
    push bc                                       ; $5ba5: $c5
    ld b, $e2                                     ; $5ba6: $06 $e2
    ld bc, $023f                                  ; $5ba8: $01 $3f $02
    xor e                                         ; $5bab: $ab
    nop                                           ; $5bac: $00
    inc sp                                        ; $5bad: $33
    ld bc, $06c5                                  ; $5bae: $01 $c5 $06
    ld [$0825], sp                                ; $5bb1: $08 $25 $08
    dec h                                         ; $5bb4: $25
    ld [$0825], sp                                ; $5bb5: $08 $25 $08
    dec h                                         ; $5bb8: $25
    ld [$0825], sp                                ; $5bb9: $08 $25 $08

jr_056_5bbc:
    dec h                                         ; $5bbc: $25
    ld [$0825], sp                                ; $5bbd: $08 $25 $08
    dec h                                         ; $5bc0: $25
    ld [$0825], sp                                ; $5bc1: $08 $25 $08
    dec h                                         ; $5bc4: $25
    ld [$0825], sp                                ; $5bc5: $08 $25 $08
    dec h                                         ; $5bc8: $25
    ccf                                           ; $5bc9: $3f
    dec bc                                        ; $5bca: $0b
    dec bc                                        ; $5bcb: $0b
    dec bc                                        ; $5bcc: $0b
    ld l, e                                       ; $5bcd: $6b
    ld l, e                                       ; $5bce: $6b
    ld c, e                                       ; $5bcf: $4b
    rst $38                                       ; $5bd0: $ff
    add sp, -$11                                  ; $5bd1: $e8 $ef
    ldh [rSB], a                                  ; $5bd3: $e0 $01
    inc c                                         ; $5bd5: $0c
    rst $38                                       ; $5bd6: $ff
    rst $38                                       ; $5bd7: $ff
    rst $20                                       ; $5bd8: $e7
    and $c1                                       ; $5bd9: $e6 $c1
    pop hl                                        ; $5bdb: $e1
    cp $e1                                        ; $5bdc: $fe $e1
    cp b                                          ; $5bde: $b8
    ldh [$fd], a                                  ; $5bdf: $e0 $fd
    ld [c], a                                     ; $5be1: $e2
    cp a                                          ; $5be2: $bf
    pop hl                                        ; $5be3: $e1
    db $10                                        ; $5be4: $10
    jp z, $c0ff                                   ; $5be5: $ca $ff $c0

    add sp, -$7e                                  ; $5be8: $e8 $82
    ldh [$c0], a                                  ; $5bea: $e0 $c0
    jp hl                                         ; $5bec: $e9


    dec hl                                        ; $5bed: $2b
    ld a, [hl]                                    ; $5bee: $7e
    ldh [$ca], a                                  ; $5bef: $e0 $ca
    rst $38                                       ; $5bf1: $ff
    add sp, -$19                                  ; $5bf2: $e8 $e7
    nop                                           ; $5bf4: $00
    ld b, e                                       ; $5bf5: $43
    ldh [$7e], a                                  ; $5bf6: $e0 $7e
    ld [c], a                                     ; $5bf8: $e2
    ret nz                                        ; $5bf9: $c0

    and $7e                                       ; $5bfa: $e6 $7e
    ldh [$ca], a                                  ; $5bfc: $e0 $ca
    rst $38                                       ; $5bfe: $ff
    ret nz                                        ; $5bff: $c0

    add sp, -$01                                  ; $5c00: $e8 $ff
    jp nz, $e9c0                                  ; $5c02: $c2 $c0 $e9

    sub c                                         ; $5c05: $91
    dec bc                                        ; $5c06: $0b
    ret nz                                        ; $5c07: $c0

    rst $38                                       ; $5c08: $ff
    nop                                           ; $5c09: $00
    ld [$eec0], a                                 ; $5c0a: $ea $c0 $ee
    dec hl                                        ; $5c0d: $2b
    jp z, $c0ff                                   ; $5c0e: $ca $ff $c0

    db $eb                                        ; $5c11: $eb
    dec hl                                        ; $5c12: $2b
    nop                                           ; $5c13: $00
    rst $38                                       ; $5c14: $ff
    ldh [$c0], a                                  ; $5c15: $e0 $c0
    rst $38                                       ; $5c17: $ff
    add b                                         ; $5c18: $80
    ei                                            ; $5c19: $fb
    ld a, a                                       ; $5c1a: $7f
    ret nz                                        ; $5c1b: $c0

    ld a, [hl-]                                   ; $5c1c: $3a
    jp nz, $e1b7                                  ; $5c1d: $c2 $b7 $e1

    jp z, Jump_056_40ff                           ; $5c20: $ca $ff $40

    db $eb                                        ; $5c23: $eb

jr_056_5c24:
    add b                                         ; $5c24: $80
    dec a                                         ; $5c25: $3d
    jp nz, $a3fc                                  ; $5c26: $c2 $fc $a3

    ld [hl], a                                    ; $5c29: $77
    ld [c], a                                     ; $5c2a: $e2
    jp z, $c0ff                                   ; $5c2b: $ca $ff $c0

    db $ec                                        ; $5c2e: $ec
    db $fc                                        ; $5c2f: $fc
    and c                                         ; $5c30: $a1
    pop bc                                        ; $5c31: $c1
    push hl                                       ; $5c32: $e5
    ld l, e                                       ; $5c33: $6b
    nop                                           ; $5c34: $00
    ret nz                                        ; $5c35: $c0

    rst $18                                       ; $5c36: $df
    ret nz                                        ; $5c37: $c0

    rst $28                                       ; $5c38: $ef
    ld a, h                                       ; $5c39: $7c
    and h                                         ; $5c3a: $a4
    pop bc                                        ; $5c3b: $c1
    ld [c], a                                     ; $5c3c: $e2
    add b                                         ; $5c3d: $80
    rst $38                                       ; $5c3e: $ff
    ld [$c7e9], a                                 ; $5c3f: $ea $e9 $c7
    add $41                                       ; $5c42: $c6 $41
    add $18                                       ; $5c44: $c6 $18
    ret nz                                        ; $5c46: $c0

    rst $38                                       ; $5c47: $ff
    ld [$0fe9], a                                 ; $5c48: $ea $e9 $0f
    and d                                         ; $5c4b: $a2
    dec hl                                        ; $5c4c: $2b
    ld l, e                                       ; $5c4d: $6b
    cp c                                          ; $5c4e: $b9
    jp hl                                         ; $5c4f: $e9


    set 7, a                                      ; $5c50: $cb $ff
    nop                                           ; $5c52: $00
    xor c                                         ; $5c53: $a9
    jr nz, jr_056_5c24                            ; $5c54: $20 $ce

    add c                                         ; $5c56: $81
    ld bc, $c2a7                                  ; $5c57: $01 $a7 $c2
    rst $38                                       ; $5c5a: $ff
    add b                                         ; $5c5b: $80
    db $ed                                        ; $5c5c: $ed
    adc $80                                       ; $5c5d: $ce $80
    ld l, e                                       ; $5c5f: $6b
    add c                                         ; $5c60: $81
    ld [c], a                                     ; $5c61: $e2
    call nc, $22ff                                ; $5c62: $d4 $ff $22
    ld b, b                                       ; $5c65: $40
    db $f4                                        ; $5c66: $f4
    ld c, e                                       ; $5c67: $4b
    call z, $ffdf                                 ; $5c68: $cc $df $ff
    rst $38                                       ; $5c6b: $ff
    jp hl                                         ; $5c6c: $e9


    add sp, $4c                                   ; $5c6d: $e8 $4c
    db $dd                                        ; $5c6f: $dd
    rst $38                                       ; $5c70: $ff
    rst $38                                       ; $5c71: $ff
    rst $38                                       ; $5c72: $ff
    nop                                           ; $5c73: $00
    rst $38                                       ; $5c74: $ff
    rst $38                                       ; $5c75: $ff
    rst $38                                       ; $5c76: $ff
    rst $38                                       ; $5c77: $ff
    rst $38                                       ; $5c78: $ff
    rst $38                                       ; $5c79: $ff
    rst $38                                       ; $5c7a: $ff
    rst $38                                       ; $5c7b: $ff
    rst $38                                       ; $5c7c: $ff
    rst $38                                       ; $5c7d: $ff
    rst $38                                       ; $5c7e: $ff
    rst $38                                       ; $5c7f: $ff
    rst $38                                       ; $5c80: $ff
    rst $38                                       ; $5c81: $ff
    rst $38                                       ; $5c82: $ff
    rst $38                                       ; $5c83: $ff
    nop                                           ; $5c84: $00
    rst $38                                       ; $5c85: $ff
    rst $38                                       ; $5c86: $ff
    rst $38                                       ; $5c87: $ff
    rst $38                                       ; $5c88: $ff
    rst $38                                       ; $5c89: $ff
    rst $38                                       ; $5c8a: $ff
    rst $38                                       ; $5c8b: $ff
    rst $38                                       ; $5c8c: $ff
    rst $38                                       ; $5c8d: $ff
    rst $38                                       ; $5c8e: $ff
    rst $38                                       ; $5c8f: $ff
    rst $38                                       ; $5c90: $ff
    rst $38                                       ; $5c91: $ff
    rst $38                                       ; $5c92: $ff
    rst $38                                       ; $5c93: $ff
    rst $38                                       ; $5c94: $ff
    nop                                           ; $5c95: $00
    rst $38                                       ; $5c96: $ff
    rst $38                                       ; $5c97: $ff
    rst $38                                       ; $5c98: $ff
    rst $38                                       ; $5c99: $ff
    rst $38                                       ; $5c9a: $ff
    rst $38                                       ; $5c9b: $ff
    rst $38                                       ; $5c9c: $ff
    rst $38                                       ; $5c9d: $ff
    rst $38                                       ; $5c9e: $ff
    rst $38                                       ; $5c9f: $ff
    rst $38                                       ; $5ca0: $ff
    rst $38                                       ; $5ca1: $ff
    rst $38                                       ; $5ca2: $ff
    rst $38                                       ; $5ca3: $ff
    rst $38                                       ; $5ca4: $ff
    rst $38                                       ; $5ca5: $ff
    nop                                           ; $5ca6: $00
    rst $38                                       ; $5ca7: $ff
    rst $38                                       ; $5ca8: $ff
    rst $38                                       ; $5ca9: $ff
    rst $38                                       ; $5caa: $ff
    rst $38                                       ; $5cab: $ff
    rst $38                                       ; $5cac: $ff
    rst $38                                       ; $5cad: $ff
    rst $38                                       ; $5cae: $ff
    rst $38                                       ; $5caf: $ff
    rst $38                                       ; $5cb0: $ff
    rst $38                                       ; $5cb1: $ff
    rst $38                                       ; $5cb2: $ff
    rst $38                                       ; $5cb3: $ff
    rst $38                                       ; $5cb4: $ff
    rst $38                                       ; $5cb5: $ff
    rst $38                                       ; $5cb6: $ff
    nop                                           ; $5cb7: $00
    rst $38                                       ; $5cb8: $ff
    rst $38                                       ; $5cb9: $ff
    rst $38                                       ; $5cba: $ff
    rst $38                                       ; $5cbb: $ff
    rst $38                                       ; $5cbc: $ff
    rst $38                                       ; $5cbd: $ff
    rst $38                                       ; $5cbe: $ff
    rst $38                                       ; $5cbf: $ff
    rst $38                                       ; $5cc0: $ff
    rst $38                                       ; $5cc1: $ff
    rst $38                                       ; $5cc2: $ff
    rst $38                                       ; $5cc3: $ff
    rst $38                                       ; $5cc4: $ff
    rst $38                                       ; $5cc5: $ff
    rst $38                                       ; $5cc6: $ff
    rst $38                                       ; $5cc7: $ff
    nop                                           ; $5cc8: $00
    rst $38                                       ; $5cc9: $ff
    rst $38                                       ; $5cca: $ff
    rst $38                                       ; $5ccb: $ff
    rst $38                                       ; $5ccc: $ff
    rst $38                                       ; $5ccd: $ff
    rst $38                                       ; $5cce: $ff
    rst $38                                       ; $5ccf: $ff
    rst $38                                       ; $5cd0: $ff
    rst $38                                       ; $5cd1: $ff
    rst $38                                       ; $5cd2: $ff
    rst $38                                       ; $5cd3: $ff
    rst $38                                       ; $5cd4: $ff
    rst $38                                       ; $5cd5: $ff
    rst $38                                       ; $5cd6: $ff
    rst $38                                       ; $5cd7: $ff
    rst $38                                       ; $5cd8: $ff
    nop                                           ; $5cd9: $00
    rst $38                                       ; $5cda: $ff
    rst $38                                       ; $5cdb: $ff
    rst $38                                       ; $5cdc: $ff
    rst $38                                       ; $5cdd: $ff
    rst $38                                       ; $5cde: $ff
    rst $38                                       ; $5cdf: $ff
    rst $38                                       ; $5ce0: $ff
    rst $38                                       ; $5ce1: $ff
    rst $38                                       ; $5ce2: $ff
    rst $38                                       ; $5ce3: $ff
    rst $38                                       ; $5ce4: $ff
    rst $38                                       ; $5ce5: $ff
    rst $38                                       ; $5ce6: $ff
    rst $38                                       ; $5ce7: $ff
    rst $38                                       ; $5ce8: $ff
    rst $38                                       ; $5ce9: $ff
    nop                                           ; $5cea: $00
    rst $38                                       ; $5ceb: $ff
    rst $38                                       ; $5cec: $ff
    rst $38                                       ; $5ced: $ff
    rst $38                                       ; $5cee: $ff
    rst $38                                       ; $5cef: $ff
    rst $38                                       ; $5cf0: $ff
    rst $38                                       ; $5cf1: $ff
    rst $38                                       ; $5cf2: $ff
    rst $38                                       ; $5cf3: $ff
    rst $38                                       ; $5cf4: $ff
    rst $38                                       ; $5cf5: $ff
    rst $38                                       ; $5cf6: $ff
    rst $38                                       ; $5cf7: $ff
    rst $38                                       ; $5cf8: $ff
    rst $38                                       ; $5cf9: $ff
    rst $38                                       ; $5cfa: $ff
    nop                                           ; $5cfb: $00
    rst $38                                       ; $5cfc: $ff
    rst $38                                       ; $5cfd: $ff
    rst $38                                       ; $5cfe: $ff
    rst $38                                       ; $5cff: $ff
    rst $38                                       ; $5d00: $ff
    rst $38                                       ; $5d01: $ff
    rst $38                                       ; $5d02: $ff
    rst $38                                       ; $5d03: $ff
    rst $38                                       ; $5d04: $ff
    rst $38                                       ; $5d05: $ff
    rst $38                                       ; $5d06: $ff
    rst $38                                       ; $5d07: $ff
    rst $38                                       ; $5d08: $ff
    rst $38                                       ; $5d09: $ff
    rst $38                                       ; $5d0a: $ff
    rst $38                                       ; $5d0b: $ff
    nop                                           ; $5d0c: $00
    rst $38                                       ; $5d0d: $ff
    rst $38                                       ; $5d0e: $ff
    rst $38                                       ; $5d0f: $ff
    rst $38                                       ; $5d10: $ff
    rst $38                                       ; $5d11: $ff
    rst $38                                       ; $5d12: $ff
    rst $38                                       ; $5d13: $ff
    rst $38                                       ; $5d14: $ff
    rst $38                                       ; $5d15: $ff
    rst $38                                       ; $5d16: $ff
    rst $38                                       ; $5d17: $ff
    rst $38                                       ; $5d18: $ff
    rst $38                                       ; $5d19: $ff
    rst $38                                       ; $5d1a: $ff
    rst $38                                       ; $5d1b: $ff
    rst $38                                       ; $5d1c: $ff
    nop                                           ; $5d1d: $00
    rst $38                                       ; $5d1e: $ff
    rst $38                                       ; $5d1f: $ff
    rst $38                                       ; $5d20: $ff
    rst $38                                       ; $5d21: $ff
    rst $38                                       ; $5d22: $ff
    rst $38                                       ; $5d23: $ff
    rst $38                                       ; $5d24: $ff
    rst $38                                       ; $5d25: $ff
    rst $38                                       ; $5d26: $ff
    rst $38                                       ; $5d27: $ff
    rst $38                                       ; $5d28: $ff
    rst $38                                       ; $5d29: $ff
    rst $38                                       ; $5d2a: $ff
    rst $38                                       ; $5d2b: $ff
    rst $38                                       ; $5d2c: $ff
    rst $30                                       ; $5d2d: $f7
    nop                                           ; $5d2e: $00
    nop                                           ; $5d2f: $00
    nop                                           ; $5d30: $00
    rst $38                                       ; $5d31: $ff
    ld sp, $3131                                  ; $5d32: $31 $31 $31
    ld c, l                                       ; $5d35: $4d
    ld a, [hl-]                                   ; $5d36: $3a
    ld d, h                                       ; $5d37: $54
    ld d, h                                       ; $5d38: $54
    ld d, l                                       ; $5d39: $55
    ld e, l                                       ; $5d3a: $5d
    ld d, h                                       ; $5d3b: $54
    db $fc                                        ; $5d3c: $fc
    ld [c], a                                     ; $5d3d: $e2
    ld d, l                                       ; $5d3e: $55
    dec sp                                        ; $5d3f: $3b
    ld c, l                                       ; $5d40: $4d
    rst $28                                       ; $5d41: $ef
    ldh [rP1], a                                  ; $5d42: $e0 $00
    rst $38                                       ; $5d44: $ff
    rst $38                                       ; $5d45: $ff
    inc l                                         ; $5d46: $2c
    rst $20                                       ; $5d47: $e7
    and $c1                                       ; $5d48: $e6 $c1
    ldh [$32], a                                  ; $5d4a: $e0 $32
    ld l, c                                       ; $5d4c: $69
    rst $38                                       ; $5d4d: $ff
    ldh [$30], a                                  ; $5d4e: $e0 $30
    rst $38                                       ; $5d50: $ff
    ldh [$f8], a                                  ; $5d51: $e0 $f8
    pop hl                                        ; $5d53: $e1
    ld sp, $bf32                                  ; $5d54: $31 $32 $bf
    ldh [$ca], a                                  ; $5d57: $e0 $ca
    rst $38                                       ; $5d59: $ff
    ret nz                                        ; $5d5a: $c0

    add sp, $4d                                   ; $5d5b: $e8 $4d
    ld [hl-], a                                   ; $5d5d: $32
    ret z                                         ; $5d5e: $c8

    ld [c], a                                     ; $5d5f: $e2
    ret nz                                        ; $5d60: $c0

    push hl                                       ; $5d61: $e5
    ldh [$bf], a                                  ; $5d62: $e0 $bf
    pop hl                                        ; $5d64: $e1
    jp z, $e8ff                                   ; $5d65: $ca $ff $e8

    rst $20                                       ; $5d68: $e7
    pop bc                                        ; $5d69: $c1
    ldh [$c0], a                                  ; $5d6a: $e0 $c0
    db $eb                                        ; $5d6c: $eb
    jr nc, jr_056_5da1                            ; $5d6d: $30 $32

    ld c, l                                       ; $5d6f: $4d
    ld h, h                                       ; $5d70: $64
    jp z, $e8ff                                   ; $5d71: $ca $ff $e8

    rst $20                                       ; $5d74: $e7
    add hl, sp                                    ; $5d75: $39
    ld b, [hl]                                    ; $5d76: $46
    ldh [$c0], a                                  ; $5d77: $e0 $c0
    db $eb                                        ; $5d79: $eb
    ld l, c                                       ; $5d7a: $69
    add hl, sp                                    ; $5d7b: $39
    jp z, $0aff                                   ; $5d7c: $ca $ff $0a

    add sp, -$19                                  ; $5d7f: $e8 $e7
    ld d, e                                       ; $5d81: $53
    ret nz                                        ; $5d82: $c0

    rst $28                                       ; $5d83: $ef
    ld d, d                                       ; $5d84: $52
    jp z, $c0ff                                   ; $5d85: $ca $ff $c0

    rst $38                                       ; $5d88: $ff
    rst $38                                       ; $5d89: $ff
    rst $38                                       ; $5d8a: $ff
    db $e4                                        ; $5d8b: $e4
    db $e3                                        ; $5d8c: $e3
    dec b                                         ; $5d8d: $05
    ld d, d                                       ; $5d8e: $52
    add [hl]                                      ; $5d8f: $86
    ret nz                                        ; $5d90: $c0

    ld l, d                                       ; $5d91: $6a
    rst $38                                       ; $5d92: $ff
    pop hl                                        ; $5d93: $e1
    ld sp, hl                                     ; $5d94: $f9
    db $e4                                        ; $5d95: $e4
    ld b, b                                       ; $5d96: $40
    rst $38                                       ; $5d97: $ff
    add b                                         ; $5d98: $80
    rst $28                                       ; $5d99: $ef
    cp a                                          ; $5d9a: $bf
    ld [c], a                                     ; $5d9b: $e2
    dec bc                                        ; $5d9c: $0b
    ld l, b                                       ; $5d9d: $68
    ld l, b                                       ; $5d9e: $68
    cp c                                          ; $5d9f: $b9
    ld [c], a                                     ; $5da0: $e2

jr_056_5da1:
    ld l, d                                       ; $5da1: $6a
    ret nz                                        ; $5da2: $c0

    rst $18                                       ; $5da3: $df
    add b                                         ; $5da4: $80
    xor $7e                                       ; $5da5: $ee $7e
    ld [c], a                                     ; $5da7: $e2
    ret nz                                        ; $5da8: $c0

    db $e4                                        ; $5da9: $e4
    jp Jump_056_7730                              ; $5daa: $c3 $30 $77


    ld b, b                                       ; $5dad: $40
    rst $18                                       ; $5dae: $df
    add b                                         ; $5daf: $80
    xor $3d                                       ; $5db0: $ee $3d
    pop hl                                        ; $5db2: $e1
    add b                                         ; $5db3: $80
    db $e3                                        ; $5db4: $e3
    jr nc, jr_056_5df9                            ; $5db5: $30 $42

    jp hl                                         ; $5db7: $e9


    inc a                                         ; $5db8: $3c
    ret nz                                        ; $5db9: $c0

    cp a                                          ; $5dba: $bf
    ld [$83e9], a                                 ; $5dbb: $ea $e9 $83
    ld b, $e1                                     ; $5dbe: $06 $e1
    jr nc, jr_056_5df2                            ; $5dc0: $30 $30

    ld b, h                                       ; $5dc2: $44
    call nz, $a03e                                ; $5dc3: $c4 $3e $a0
    ld b, b                                       ; $5dc6: $40
    and c                                         ; $5dc7: $a1
    ld d, l                                       ; $5dc8: $55
    pop bc                                        ; $5dc9: $c1
    ldh [$c0], a                                  ; $5dca: $e0 $c0
    rst $38                                       ; $5dcc: $ff
    jp hl                                         ; $5dcd: $e9


    add sp, $79                                   ; $5dce: $e8 $79
    ld [hl], c                                    ; $5dd0: $71
    ld h, $c5                                     ; $5dd1: $26 $c5
    pop bc                                        ; $5dd3: $c1
    ld [hl], c                                    ; $5dd4: $71
    xor a                                         ; $5dd5: $af
    ld hl, sp-$80                                 ; $5dd6: $f8 $80
    db $fd                                        ; $5dd8: $fd
    push hl                                       ; $5dd9: $e5
    ld de, $ffca                                  ; $5dda: $11 $ca $ff
    add sp, -$19                                  ; $5ddd: $e8 $e7
    rst $38                                       ; $5ddf: $ff
    add b                                         ; $5de0: $80
    ld a, c                                       ; $5de1: $79
    ld [hl], a                                    ; $5de2: $77
    ld l, d                                       ; $5de3: $6a
    ld l, d                                       ; $5de4: $6a
    ld [hl], a                                    ; $5de5: $77
    ld a, c                                       ; $5de6: $79
    and c                                         ; $5de7: $a1
    and $c2                                       ; $5de8: $e6 $c2
    rst $20                                       ; $5dea: $e7
    ld [de], a                                    ; $5deb: $12
    ld hl, $ffca                                  ; $5dec: $21 $ca $ff
    ret nz                                        ; $5def: $c0

    add sp, -$80                                  ; $5df0: $e8 $80

jr_056_5df2:
    ld [hl], d                                    ; $5df2: $72
    ld b, d                                       ; $5df3: $42
    xor a                                         ; $5df4: $af
    ld b, d                                       ; $5df5: $42
    ld [hl], d                                    ; $5df6: $72
    xor b                                         ; $5df7: $a8
    xor h                                         ; $5df8: $ac

jr_056_5df9:
    rst $00                                       ; $5df9: $c7
    pop hl                                        ; $5dfa: $e1
    inc d                                         ; $5dfb: $14
    rst $38                                       ; $5dfc: $ff
    pop hl                                        ; $5dfd: $e1
    ld hl, $22f3                                  ; $5dfe: $21 $f3 $22
    inc h                                         ; $5e01: $24
    jp z, $c0ff                                   ; $5e02: $ca $ff $c0

    jp hl                                         ; $5e05: $e9


    add b                                         ; $5e06: $80
    ld [hl], d                                    ; $5e07: $72
    ld [hl], d                                    ; $5e08: $72
    xor [hl]                                      ; $5e09: $ae
    db $ed                                        ; $5e0a: $ed
    ld [hl], b                                    ; $5e0b: $70
    adc c                                         ; $5e0c: $89
    pop hl                                        ; $5e0d: $e1
    ld [hl+], a                                   ; $5e0e: $22
    inc h                                         ; $5e0f: $24
    rst $38                                       ; $5e10: $ff
    pop hl                                        ; $5e11: $e1
    jr nz, jr_056_5e34                            ; $5e12: $20 $20

    jr nz, jr_056_5e16                            ; $5e14: $20 $00

jr_056_5e16:
    jp z, $ffff                                   ; $5e16: $ca $ff $ff

    rst $38                                       ; $5e19: $ff
    rst $38                                       ; $5e1a: $ff
    rst $38                                       ; $5e1b: $ff
    rst $38                                       ; $5e1c: $ff
    rst $38                                       ; $5e1d: $ff
    rst $38                                       ; $5e1e: $ff
    rst $38                                       ; $5e1f: $ff
    rst $38                                       ; $5e20: $ff
    rst $38                                       ; $5e21: $ff
    rst $38                                       ; $5e22: $ff
    rst $38                                       ; $5e23: $ff
    rst $38                                       ; $5e24: $ff
    rst $38                                       ; $5e25: $ff
    nop                                           ; $5e26: $00
    rst $38                                       ; $5e27: $ff
    rst $38                                       ; $5e28: $ff
    rst $38                                       ; $5e29: $ff
    rst $38                                       ; $5e2a: $ff
    rst $38                                       ; $5e2b: $ff
    rst $38                                       ; $5e2c: $ff
    rst $38                                       ; $5e2d: $ff
    rst $38                                       ; $5e2e: $ff
    rst $38                                       ; $5e2f: $ff
    rst $38                                       ; $5e30: $ff
    rst $38                                       ; $5e31: $ff
    rst $38                                       ; $5e32: $ff
    rst $38                                       ; $5e33: $ff

jr_056_5e34:
    rst $38                                       ; $5e34: $ff
    rst $38                                       ; $5e35: $ff
    rst $38                                       ; $5e36: $ff
    nop                                           ; $5e37: $00
    rst $38                                       ; $5e38: $ff
    rst $38                                       ; $5e39: $ff
    rst $38                                       ; $5e3a: $ff
    rst $38                                       ; $5e3b: $ff
    rst $38                                       ; $5e3c: $ff
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    rst $38                                       ; $5e3f: $ff
    rst $38                                       ; $5e40: $ff
    rst $38                                       ; $5e41: $ff
    rst $38                                       ; $5e42: $ff
    rst $38                                       ; $5e43: $ff
    rst $38                                       ; $5e44: $ff
    rst $38                                       ; $5e45: $ff
    rst $38                                       ; $5e46: $ff
    rst $38                                       ; $5e47: $ff
    nop                                           ; $5e48: $00
    rst $38                                       ; $5e49: $ff
    rst $38                                       ; $5e4a: $ff
    rst $38                                       ; $5e4b: $ff
    rst $38                                       ; $5e4c: $ff
    rst $38                                       ; $5e4d: $ff
    rst $38                                       ; $5e4e: $ff
    rst $38                                       ; $5e4f: $ff
    rst $38                                       ; $5e50: $ff
    rst $38                                       ; $5e51: $ff
    rst $38                                       ; $5e52: $ff
    rst $38                                       ; $5e53: $ff
    rst $38                                       ; $5e54: $ff
    rst $38                                       ; $5e55: $ff
    rst $38                                       ; $5e56: $ff
    rst $38                                       ; $5e57: $ff
    rst $38                                       ; $5e58: $ff
    nop                                           ; $5e59: $00
    rst $38                                       ; $5e5a: $ff
    rst $38                                       ; $5e5b: $ff
    rst $38                                       ; $5e5c: $ff
    rst $38                                       ; $5e5d: $ff
    rst $38                                       ; $5e5e: $ff
    rst $38                                       ; $5e5f: $ff
    rst $38                                       ; $5e60: $ff
    rst $38                                       ; $5e61: $ff
    rst $38                                       ; $5e62: $ff
    rst $38                                       ; $5e63: $ff
    rst $38                                       ; $5e64: $ff
    rst $38                                       ; $5e65: $ff
    rst $38                                       ; $5e66: $ff
    rst $38                                       ; $5e67: $ff
    rst $38                                       ; $5e68: $ff
    rst $38                                       ; $5e69: $ff
    nop                                           ; $5e6a: $00
    rst $38                                       ; $5e6b: $ff
    rst $38                                       ; $5e6c: $ff
    rst $38                                       ; $5e6d: $ff
    rst $38                                       ; $5e6e: $ff
    rst $38                                       ; $5e6f: $ff
    rst $38                                       ; $5e70: $ff
    rst $38                                       ; $5e71: $ff
    rst $38                                       ; $5e72: $ff
    rst $38                                       ; $5e73: $ff
    rst $38                                       ; $5e74: $ff
    rst $38                                       ; $5e75: $ff
    rst $38                                       ; $5e76: $ff
    rst $38                                       ; $5e77: $ff
    rst $38                                       ; $5e78: $ff
    rst $38                                       ; $5e79: $ff
    rst $38                                       ; $5e7a: $ff
    nop                                           ; $5e7b: $00
    rst $38                                       ; $5e7c: $ff
    rst $38                                       ; $5e7d: $ff
    rst $38                                       ; $5e7e: $ff
    rst $38                                       ; $5e7f: $ff
    rst $38                                       ; $5e80: $ff
    rst $38                                       ; $5e81: $ff
    rst $38                                       ; $5e82: $ff
    rst $38                                       ; $5e83: $ff
    rst $38                                       ; $5e84: $ff
    rst $38                                       ; $5e85: $ff
    rst $38                                       ; $5e86: $ff
    rst $38                                       ; $5e87: $ff
    rst $38                                       ; $5e88: $ff
    rst $38                                       ; $5e89: $ff
    rst $38                                       ; $5e8a: $ff
    rst $38                                       ; $5e8b: $ff
    nop                                           ; $5e8c: $00
    rst $38                                       ; $5e8d: $ff
    rst $38                                       ; $5e8e: $ff
    rst $38                                       ; $5e8f: $ff
    rst $38                                       ; $5e90: $ff
    rst $38                                       ; $5e91: $ff
    rst $38                                       ; $5e92: $ff
    rst $38                                       ; $5e93: $ff
    rst $38                                       ; $5e94: $ff
    rst $38                                       ; $5e95: $ff
    rst $38                                       ; $5e96: $ff
    rst $38                                       ; $5e97: $ff
    rst $38                                       ; $5e98: $ff
    rst $38                                       ; $5e99: $ff
    rst $38                                       ; $5e9a: $ff
    rst $38                                       ; $5e9b: $ff
    rst $38                                       ; $5e9c: $ff
    nop                                           ; $5e9d: $00
    rst $38                                       ; $5e9e: $ff
    rst $38                                       ; $5e9f: $ff
    rst $38                                       ; $5ea0: $ff
    rst $38                                       ; $5ea1: $ff
    rst $38                                       ; $5ea2: $ff
    rst $38                                       ; $5ea3: $ff
    rst $38                                       ; $5ea4: $ff
    rst $38                                       ; $5ea5: $ff
    rst $38                                       ; $5ea6: $ff
    rst $38                                       ; $5ea7: $ff
    rst $38                                       ; $5ea8: $ff
    rst $38                                       ; $5ea9: $ff
    rst $38                                       ; $5eaa: $ff
    rst $38                                       ; $5eab: $ff
    rst $38                                       ; $5eac: $ff
    rst $38                                       ; $5ead: $ff
    nop                                           ; $5eae: $00
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
    rst $38                                       ; $5ebd: $ff
    rst $38                                       ; $5ebe: $ff
    nop                                           ; $5ebf: $00
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
    rst $38                                       ; $5eca: $ff
    rst $38                                       ; $5ecb: $ff
    rst $38                                       ; $5ecc: $ff
    rst $38                                       ; $5ecd: $ff
    rst $38                                       ; $5ece: $ff
    rst $38                                       ; $5ecf: $ff
    nop                                           ; $5ed0: $00
    rst $38                                       ; $5ed1: $ff
    rst $38                                       ; $5ed2: $ff
    rst $38                                       ; $5ed3: $ff
    rst $38                                       ; $5ed4: $ff
    rst $38                                       ; $5ed5: $ff
    rst $38                                       ; $5ed6: $ff
    rst $38                                       ; $5ed7: $ff
    di                                            ; $5ed8: $f3
    nop                                           ; $5ed9: $00
    nop                                           ; $5eda: $00
    nop                                           ; $5edb: $00
    and l                                         ; $5edc: $a5
    nop                                           ; $5edd: $00
    rst $38                                       ; $5ede: $ff
    push hl                                       ; $5edf: $e5
    ld [hl-], a                                   ; $5ee0: $32
    or $e6                                        ; $5ee1: $f6 $e6
    rst $30                                       ; $5ee3: $f7
    rst $20                                       ; $5ee4: $e7
    dec [hl]                                      ; $5ee5: $35
    db $ec                                        ; $5ee6: $ec
    xor $37                                       ; $5ee7: $ee $37
    db $ec                                        ; $5ee9: $ec
    jp c, $c7f0                                   ; $5eea: $da $f0 $c7

    add sp, $33                                   ; $5eed: $e8 $33
    ld sp, $f2e0                                  ; $5eef: $31 $e0 $f2
    ld [hl], $30                                  ; $5ef2: $36 $30
    scf                                           ; $5ef4: $37
    cp a                                          ; $5ef5: $bf
    ld h, $20                                     ; $5ef6: $26 $20
    daa                                           ; $5ef8: $27
    db $10                                        ; $5ef9: $10
    ld d, $17                                     ; $5efa: $16 $17
    jp nz, Jump_000_34f6                          ; $5efc: $c2 $f6 $34

    rst $38                                       ; $5eff: $ff
    ld [hl], $32                                  ; $5f00: $36 $32
    jr nc, jr_056_5f3b                            ; $5f02: $30 $37

    ld sp, $3133                                  ; $5f04: $31 $33 $31
    inc sp                                        ; $5f07: $33
    nop                                           ; $5f08: $00
    and b                                         ; $5f09: $a0
    ei                                            ; $5f0a: $fb
    rst $38                                       ; $5f0b: $ff
    rst $28                                       ; $5f0c: $ef
    nop                                           ; $5f0d: $00
    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00
    jr jr_056_5f71                                ; $5f10: $18 $5f

    ld c, b                                       ; $5f12: $48
    ld e, a                                       ; $5f13: $5f
    ld h, d                                       ; $5f14: $62
    ld h, c                                       ; $5f15: $61
    ld b, [hl]                                    ; $5f16: $46
    ld h, e                                       ; $5f17: $63
    ld [$c503], a                                 ; $5f18: $ea $03 $c5
    ld b, $e2                                     ; $5f1b: $06 $e2
    ld bc, $00a0                                  ; $5f1d: $01 $a0 $00
    ld [$f003], a                                 ; $5f20: $ea $03 $f0
    inc bc                                        ; $5f23: $03
    push bc                                       ; $5f24: $c5
    ld b, $e2                                     ; $5f25: $06 $e2
    ld bc, $023f                                  ; $5f27: $01 $3f $02
    xor e                                         ; $5f2a: $ab
    nop                                           ; $5f2b: $00
    inc sp                                        ; $5f2c: $33
    ld bc, $06c5                                  ; $5f2d: $01 $c5 $06
    ld [$0825], sp                                ; $5f30: $08 $25 $08
    dec h                                         ; $5f33: $25
    ld [$0825], sp                                ; $5f34: $08 $25 $08
    dec h                                         ; $5f37: $25
    ld [$0825], sp                                ; $5f38: $08 $25 $08

jr_056_5f3b:
    dec h                                         ; $5f3b: $25
    ld [$0825], sp                                ; $5f3c: $08 $25 $08
    dec h                                         ; $5f3f: $25
    ld [$0825], sp                                ; $5f40: $08 $25 $08
    dec h                                         ; $5f43: $25
    ld [$0825], sp                                ; $5f44: $08 $25 $08
    dec h                                         ; $5f47: $25
    sbc a                                         ; $5f48: $9f
    ld a, [hl+]                                   ; $5f49: $2a
    ld c, d                                       ; $5f4a: $4a
    ld c, d                                       ; $5f4b: $4a
    ld c, d                                       ; $5f4c: $4a
    ld a, [bc]                                    ; $5f4d: $0a
    rst $38                                       ; $5f4e: $ff
    ldh [$f9], a                                  ; $5f4f: $e0 $f9
    ldh [rOCPS], a                                ; $5f51: $e0 $6a
    rst $38                                       ; $5f53: $ff
    dec bc                                        ; $5f54: $0b
    ld a, [bc]                                    ; $5f55: $0a
    dec bc                                        ; $5f56: $0b
    dec bc                                        ; $5f57: $0b
    ld c, d                                       ; $5f58: $4a
    ld l, d                                       ; $5f59: $6a
    ld l, d                                       ; $5f5a: $6a
    ld l, d                                       ; $5f5b: $6a
    dec h                                         ; $5f5c: $25
    inc c                                         ; $5f5d: $0c
    rst $38                                       ; $5f5e: $ff
    xor $4c                                       ; $5f5f: $ee $4c
    db $ed                                        ; $5f61: $ed
    rst $28                                       ; $5f62: $ef
    db $db                                        ; $5f63: $db
    db $e4                                        ; $5f64: $e4
    ld c, d                                       ; $5f65: $4a
    cp a                                          ; $5f66: $bf
    ldh [$c0], a                                  ; $5f67: $e0 $c0
    db $e3                                        ; $5f69: $e3
    dec de                                        ; $5f6a: $1b
    ld l, d                                       ; $5f6b: $6a
    dec bc                                        ; $5f6c: $0b
    rst $38                                       ; $5f6d: $ff
    ldh [$2b], a                                  ; $5f6e: $e0 $2b
    dec hl                                        ; $5f70: $2b

jr_056_5f71:
    cp a                                          ; $5f71: $bf
    ldh [$c0], a                                  ; $5f72: $e0 $c0
    rst $38                                       ; $5f74: $ff
    ret nz                                        ; $5f75: $c0

    add sp, -$70                                  ; $5f76: $e8 $90
    cp a                                          ; $5f78: $bf
    ldh [$80], a                                  ; $5f79: $e0 $80
    ld [c], a                                     ; $5f7b: $e2
    pop bc                                        ; $5f7c: $c1
    ld [c], a                                     ; $5f7d: $e2
    cp [hl]                                       ; $5f7e: $be
    pop hl                                        ; $5f7f: $e1
    ld c, d                                       ; $5f80: $4a
    ret nz                                        ; $5f81: $c0

    and $8a                                       ; $5f82: $e6 $8a
    and $4c                                       ; $5f84: $e6 $4c
    inc b                                         ; $5f86: $04
    ld a, a                                       ; $5f87: $7f
    rst $30                                       ; $5f88: $f7
    ld b, c                                       ; $5f89: $41
    ldh [$2a], a                                  ; $5f8a: $e0 $2a
    ld b, b                                       ; $5f8c: $40
    pop hl                                        ; $5f8d: $e1

jr_056_5f8e:
    pop bc                                        ; $5f8e: $c1
    push hl                                       ; $5f8f: $e5
    cp a                                          ; $5f90: $bf
    pop hl                                        ; $5f91: $e1
    add d                                         ; $5f92: $82
    rst $38                                       ; $5f93: $ff
    ret nz                                        ; $5f94: $c0

    ld [$86ee], a                                 ; $5f95: $ea $ee $86
    db $e3                                        ; $5f98: $e3
    ld l, e                                       ; $5f99: $6b
    ld l, e                                       ; $5f9a: $6b
    ld c, e                                       ; $5f9b: $4b
    rst $38                                       ; $5f9c: $ff
    ld [c], a                                     ; $5f9d: $e2
    dec bc                                        ; $5f9e: $0b
    dec bc                                        ; $5f9f: $0b
    ld c, e                                       ; $5fa0: $4b
    ld c, $c0                                     ; $5fa1: $0e $c0
    pop af                                        ; $5fa3: $f1
    ld c, h                                       ; $5fa4: $4c
    inc c                                         ; $5fa5: $0c
    inc l                                         ; $5fa6: $2c
    add hl, hl                                    ; $5fa7: $29
    push hl                                       ; $5fa8: $e5
    rst $30                                       ; $5fa9: $f7
    db $e4                                        ; $5faa: $e4
    ldh a, [$e3]                                  ; $5fab: $f0 $e3
    ld [$12e2], sp                                ; $5fad: $08 $e2 $12
    call nz, Call_056_6be1                        ; $5fb0: $c4 $e1 $6b
    cp l                                          ; $5fb3: $bd
    pop hl                                        ; $5fb4: $e1
    jp Jump_056_4be0                              ; $5fb5: $c3 $e0 $4b


    ret nz                                        ; $5fb8: $c0

    xor $42                                       ; $5fb9: $ee $42
    ld [c], a                                     ; $5fbb: $e2
    cp [hl]                                       ; $5fbc: $be
    push de                                       ; $5fbd: $d5
    nop                                           ; $5fbe: $00
    pop bc                                        ; $5fbf: $c1
    db $e3                                        ; $5fc0: $e3
    adc e                                         ; $5fc1: $8b
    ldh [$7c], a                                  ; $5fc2: $e0 $7c
    ld [c], a                                     ; $5fc4: $e2
    cp l                                          ; $5fc5: $bd
    ret nz                                        ; $5fc6: $c0

    ld a, a                                       ; $5fc7: $7f
    ldh [$8d], a                                  ; $5fc8: $e0 $8d
    ret                                           ; $5fca: $c9


    dec b                                         ; $5fcb: $05
    ld hl, sp-$67                                 ; $5fcc: $f8 $99
    jp nz, Jump_056_6a47                          ; $5fce: $c2 $47 $6a

    dec bc                                        ; $5fd1: $0b
    dec hl                                        ; $5fd2: $2b
    ret                                           ; $5fd3: $c9


    db $e3                                        ; $5fd4: $e3
    cp a                                          ; $5fd5: $bf
    pop hl                                        ; $5fd6: $e1
    ld a, a                                       ; $5fd7: $7f
    pop hl                                        ; $5fd8: $e1
    dec hl                                        ; $5fd9: $2b
    ret nz                                        ; $5fda: $c0

    pop hl                                        ; $5fdb: $e1
    db $10                                        ; $5fdc: $10
    jp Jump_056_50e6                              ; $5fdd: $c3 $e6 $50


    ld [c], a                                     ; $5fe0: $e2
    pop bc                                        ; $5fe1: $c1
    pop bc                                        ; $5fe2: $c1
    ld a, $d5                                     ; $5fe3: $3e $d5
    ld a, [hl+]                                   ; $5fe5: $2a
    ret nz                                        ; $5fe6: $c0

    ldh [$cd], a                                  ; $5fe7: $e0 $cd
    ldh [rTAC], a                                 ; $5fe9: $e0 $07
    ld [c], a                                     ; $5feb: $e2
    ret nz                                        ; $5fec: $c0

    db $fc                                        ; $5fed: $fc
    ret nz                                        ; $5fee: $c0

    dec a                                         ; $5fef: $3d
    pop hl                                        ; $5ff0: $e1
    add b                                         ; $5ff1: $80
    db $e3                                        ; $5ff2: $e3
    dec sp                                        ; $5ff3: $3b
    rst $00                                       ; $5ff4: $c7
    ret nz                                        ; $5ff5: $c0

    ld [c], a                                     ; $5ff6: $e2
    rst $38                                       ; $5ff7: $ff
    or l                                          ; $5ff8: $b5
    ld a, [hl+]                                   ; $5ff9: $2a
    ld a, [hl+]                                   ; $5ffa: $2a
    ld bc, $0b4b                                  ; $5ffb: $01 $4b $0b
    ret nz                                        ; $5ffe: $c0

    pop bc                                        ; $5fff: $c1
    db $e3                                        ; $6000: $e3
    ret nz                                        ; $6001: $c0

    db $f4                                        ; $6002: $f4
    jp $80a2                                      ; $6003: $c3 $a2 $80


    or $bf                                        ; $6006: $f6 $bf
    db $e3                                        ; $6008: $e3
    push bc                                       ; $6009: $c5
    and c                                         ; $600a: $a1
    jr nz, jr_056_5f8e                            ; $600b: $20 $81

    push hl                                       ; $600d: $e5
    add b                                         ; $600e: $80
    db $ed                                        ; $600f: $ed
    rst $38                                       ; $6010: $ff
    or c                                          ; $6011: $b1
    ld [hl], e                                    ; $6012: $73
    add $c0                                       ; $6013: $c6 $c0
    ldh [$2a], a                                  ; $6015: $e0 $2a
    ld b, a                                       ; $6017: $47
    pop bc                                        ; $6018: $c1
    ld a, [hl-]                                   ; $6019: $3a
    ldh [$83], a                                  ; $601a: $e0 $83
    dec hl                                        ; $601c: $2b
    ld c, e                                       ; $601d: $4b
    pop bc                                        ; $601e: $c1
    db $e3                                        ; $601f: $e3
    ret nz                                        ; $6020: $c0

    xor $00                                       ; $6021: $ee $00
    reti                                          ; $6023: $d9


    add b                                         ; $6024: $80
    ldh [rSB], a                                  ; $6025: $e0 $01
    and c                                         ; $6027: $a1
    ld a, [bc]                                    ; $6028: $0a
    inc b                                         ; $6029: $04
    ld a, d                                       ; $602a: $7a
    push hl                                       ; $602b: $e5
    dec sp                                        ; $602c: $3b
    and b                                         ; $602d: $a0
    ld a, [bc]                                    ; $602e: $0a
    nop                                           ; $602f: $00
    ldh a, [rIE]                                  ; $6030: $f0 $ff
    sub [hl]                                      ; $6032: $96
    pop bc                                        ; $6033: $c1
    ldh [$80], a                                  ; $6034: $e0 $80
    and d                                         ; $6036: $a2
    ld hl, sp-$3f                                 ; $6037: $f8 $c1
    add d                                         ; $6039: $82
    cp b                                          ; $603a: $b8
    and e                                         ; $603b: $a3
    ld a, [bc]                                    ; $603c: $0a
    ret nz                                        ; $603d: $c0

    pop af                                        ; $603e: $f1
    add b                                         ; $603f: $80
    rst $10                                       ; $6040: $d7
    add $e0                                       ; $6041: $c6 $e0
    ret nz                                        ; $6043: $c0

    db $e3                                        ; $6044: $e3
    add hl, sp                                    ; $6045: $39
    ld [c], a                                     ; $6046: $e2
    ld l, e                                       ; $6047: $6b
    and b                                         ; $6048: $a0
    pop bc                                        ; $6049: $c1
    ldh [$80], a                                  ; $604a: $e0 $80
    ldh a, [$7e]                                  ; $604c: $f0 $7e
    sub a                                         ; $604e: $97
    rst $00                                       ; $604f: $c7
    pop hl                                        ; $6050: $e1
    ret nz                                        ; $6051: $c0

    db $e4                                        ; $6052: $e4
    ld a, [hl+]                                   ; $6053: $2a
    ld b, l                                       ; $6054: $45
    ldh [$0b], a                                  ; $6055: $e0 $0b
    nop                                           ; $6057: $00
    inc [hl]                                      ; $6058: $34
    add c                                         ; $6059: $81
    add c                                         ; $605a: $81
    sub c                                         ; $605b: $91
    cp d                                          ; $605c: $ba
    cp e                                          ; $605d: $bb
    sbc l                                         ; $605e: $9d
    cp d                                          ; $605f: $ba
    jp nz, $c6ff                                  ; $6060: $c2 $ff $c6

    rst $38                                       ; $6063: $ff
    rst $38                                       ; $6064: $ff
    rst $38                                       ; $6065: $ff
    ld c, [hl]                                    ; $6066: $4e
    ret nc                                        ; $6067: $d0

    nop                                           ; $6068: $00
    ld c, b                                       ; $6069: $48
    cp c                                          ; $606a: $b9
    sbc h                                         ; $606b: $9c
    ld a, a                                       ; $606c: $7f
    ld c, h                                       ; $606d: $4c
    ld h, a                                       ; $606e: $67
    cp b                                          ; $606f: $b8
    rst $38                                       ; $6070: $ff
    ld d, l                                       ; $6071: $55
    sub e                                         ; $6072: $93
    rst $00                                       ; $6073: $c7
    adc d                                         ; $6074: $8a
    ld bc, $fc82                                  ; $6075: $01 $82 $fc
    ld h, [hl]                                    ; $6078: $66
    nop                                           ; $6079: $00
    rst $38                                       ; $607a: $ff
    rst $38                                       ; $607b: $ff
    add a                                         ; $607c: $87
    sbc l                                         ; $607d: $9d
    rst $38                                       ; $607e: $ff
    rst $38                                       ; $607f: $ff
    adc b                                         ; $6080: $88
    ld h, h                                       ; $6081: $64
    ld a, a                                       ; $6082: $7f
    rst $20                                       ; $6083: $e7
    ld a, [hl]                                    ; $6084: $7e
    ld h, c                                       ; $6085: $61
    ld a, c                                       ; $6086: $79
    rst $38                                       ; $6087: $ff
    rst $00                                       ; $6088: $c7
    sub h                                         ; $6089: $94
    nop                                           ; $608a: $00
    call z, Call_056_40ff                         ; $608b: $cc $ff $40
    rst $18                                       ; $608e: $df
    rst $38                                       ; $608f: $ff
    rst $38                                       ; $6090: $ff
    nop                                           ; $6091: $00
    rst $38                                       ; $6092: $ff
    rst $38                                       ; $6093: $ff
    rst $38                                       ; $6094: $ff
    ret nz                                        ; $6095: $c0

    rst $38                                       ; $6096: $ff
    inc hl                                        ; $6097: $23
    sbc a                                         ; $6098: $9f
    rst $00                                       ; $6099: $c7
    add a                                         ; $609a: $87
    nop                                           ; $609b: $00
    rst $18                                       ; $609c: $df
    rst $18                                       ; $609d: $df
    ldh a, [$bc]                                  ; $609e: $f0 $bc
    add b                                         ; $60a0: $80
    ld e, e                                       ; $60a1: $5b
    ld h, b                                       ; $60a2: $60
    ld e, c                                       ; $60a3: $59
    pop bc                                        ; $60a4: $c1
    rst $18                                       ; $60a5: $df
    add c                                         ; $60a6: $81
    rst $18                                       ; $60a7: $df
    db $db                                        ; $60a8: $db
    rst $38                                       ; $60a9: $ff
    ld h, e                                       ; $60aa: $63
    ld b, $00                                     ; $60ab: $06 $00
    sbc d                                         ; $60ad: $9a
    inc hl                                        ; $60ae: $23
    add hl, bc                                    ; $60af: $09
    cp a                                          ; $60b0: $bf
    pop bc                                        ; $60b1: $c1
    sub $59                                       ; $60b2: $d6 $59
    ld hl, $2255                                  ; $60b4: $21 $55 $22
    sub b                                         ; $60b7: $90
    inc bc                                        ; $60b8: $03
    ld hl, sp-$17                                 ; $60b9: $f8 $e9
    ret nz                                        ; $60bb: $c0

    rst $38                                       ; $60bc: $ff
    nop                                           ; $60bd: $00
    ld d, b                                       ; $60be: $50
    push hl                                       ; $60bf: $e5
    ei                                            ; $60c0: $fb
    push hl                                       ; $60c1: $e5
    ld a, $3f                                     ; $60c2: $3e $3f
    ld b, c                                       ; $60c4: $41
    call Call_000_2259                            ; $60c5: $cd $59 $22
    add b                                         ; $60c8: $80
    add sp, $3f                                   ; $60c9: $e8 $3f
    push hl                                       ; $60cb: $e5
    db $fc                                        ; $60cc: $fc
    rst $18                                       ; $60cd: $df
    nop                                           ; $60ce: $00
    halt                                          ; $60cf: $76
    ret                                           ; $60d0: $c9


    cp d                                          ; $60d1: $ba
    push hl                                       ; $60d2: $e5
    ld b, l                                       ; $60d3: $45
    ld b, e                                       ; $60d4: $43
    cp l                                          ; $60d5: $bd
    cp [hl]                                       ; $60d6: $be
    ld b, b                                       ; $60d7: $40
    ret z                                         ; $60d8: $c8

    db $d3                                        ; $60d9: $d3
    jp hl                                         ; $60da: $e9


    rrca                                          ; $60db: $0f
    inc h                                         ; $60dc: $24
    ret nz                                        ; $60dd: $c0

    rst $38                                       ; $60de: $ff
    nop                                           ; $60df: $00
    ret c                                         ; $60e0: $d8

    add hl, hl                                    ; $60e1: $29
    sub b                                         ; $60e2: $90
    and e                                         ; $60e3: $a3
    ld c, h                                       ; $60e4: $4c
    jp hl                                         ; $60e5: $e9


    db $ed                                        ; $60e6: $ed
    db $e4                                        ; $60e7: $e4
    ld c, c                                       ; $60e8: $49
    rst $38                                       ; $60e9: $ff
    pop bc                                        ; $60ea: $c1
    res 5, [hl]                                   ; $60eb: $cb $ae
    call $df80                                    ; $60ed: $cd $80 $df
    nop                                           ; $60f0: $00
    ret nc                                        ; $60f1: $d0

    xor c                                         ; $60f2: $a9
    call $c1c9                                    ; $60f3: $cd $c9 $c1
    sbc $c0                                       ; $60f6: $de $c0
    di                                            ; $60f8: $f3
    ld a, l                                       ; $60f9: $7d
    or [hl]                                       ; $60fa: $b6
    cp d                                          ; $60fb: $ba
    ld l, [hl]                                    ; $60fc: $6e
    ld b, b                                       ; $60fd: $40
    call $9fc0                                    ; $60fe: $cd $c0 $9f
    nop                                           ; $6101: $00
    rst $30                                       ; $6102: $f7
    rst $18                                       ; $6103: $df
    and e                                         ; $6104: $a3
    sbc a                                         ; $6105: $9f
    ret                                           ; $6106: $c9


    add hl, sp                                    ; $6107: $39
    db $d3                                        ; $6108: $d3
    res 7, a                                      ; $6109: $cb $bf
    rst $38                                       ; $610b: $ff
    xor [hl]                                      ; $610c: $ae
    ld a, a                                       ; $610d: $7f
    rst $38                                       ; $610e: $ff
    rst $38                                       ; $610f: $ff
    rst $38                                       ; $6110: $ff
    rst $38                                       ; $6111: $ff
    nop                                           ; $6112: $00
    rst $38                                       ; $6113: $ff
    rst $38                                       ; $6114: $ff
    rst $38                                       ; $6115: $ff
    rst $38                                       ; $6116: $ff
    rst $38                                       ; $6117: $ff
    rst $38                                       ; $6118: $ff
    rst $38                                       ; $6119: $ff
    rst $38                                       ; $611a: $ff
    rst $38                                       ; $611b: $ff
    rst $38                                       ; $611c: $ff
    rst $38                                       ; $611d: $ff
    rst $38                                       ; $611e: $ff
    sbc e                                         ; $611f: $9b
    ld c, e                                       ; $6120: $4b
    db $dd                                        ; $6121: $dd
    rst $38                                       ; $6122: $ff
    nop                                           ; $6123: $00
    rst $38                                       ; $6124: $ff
    rst $38                                       ; $6125: $ff
    rst $38                                       ; $6126: $ff
    rst $38                                       ; $6127: $ff
    rst $38                                       ; $6128: $ff
    rst $38                                       ; $6129: $ff
    rst $38                                       ; $612a: $ff
    rst $38                                       ; $612b: $ff
    rst $38                                       ; $612c: $ff
    rst $38                                       ; $612d: $ff
    rst $38                                       ; $612e: $ff
    rst $38                                       ; $612f: $ff
    rst $38                                       ; $6130: $ff
    rst $38                                       ; $6131: $ff
    rst $38                                       ; $6132: $ff
    rst $38                                       ; $6133: $ff
    nop                                           ; $6134: $00
    rst $38                                       ; $6135: $ff
    rst $38                                       ; $6136: $ff
    rst $38                                       ; $6137: $ff
    rst $38                                       ; $6138: $ff
    rst $38                                       ; $6139: $ff
    rst $38                                       ; $613a: $ff
    rst $38                                       ; $613b: $ff
    rst $38                                       ; $613c: $ff
    rst $38                                       ; $613d: $ff
    rst $38                                       ; $613e: $ff
    rst $38                                       ; $613f: $ff
    rst $38                                       ; $6140: $ff
    rst $38                                       ; $6141: $ff
    rst $38                                       ; $6142: $ff
    rst $38                                       ; $6143: $ff
    rst $38                                       ; $6144: $ff
    nop                                           ; $6145: $00
    rst $38                                       ; $6146: $ff
    rst $38                                       ; $6147: $ff
    rst $38                                       ; $6148: $ff
    rst $38                                       ; $6149: $ff
    rst $38                                       ; $614a: $ff
    rst $38                                       ; $614b: $ff
    rst $38                                       ; $614c: $ff
    rst $38                                       ; $614d: $ff
    rst $38                                       ; $614e: $ff
    rst $38                                       ; $614f: $ff
    nop                                           ; $6150: $00
    cp a                                          ; $6151: $bf
    rst $38                                       ; $6152: $ff
    rst $38                                       ; $6153: $ff
    rst $38                                       ; $6154: $ff
    rst $38                                       ; $6155: $ff
    nop                                           ; $6156: $00
    rst $38                                       ; $6157: $ff
    rst $38                                       ; $6158: $ff
    rst $38                                       ; $6159: $ff
    rst $38                                       ; $615a: $ff
    rst $38                                       ; $615b: $ff
    rst $38                                       ; $615c: $ff
    ld b, b                                       ; $615d: $40
    inc bc                                        ; $615e: $03
    nop                                           ; $615f: $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    sbc a                                         ; $6162: $9f
    adc e                                         ; $6163: $8b
    ld c, [hl]                                    ; $6164: $4e
    ld c, [hl]                                    ; $6165: $4e
    ld c, [hl]                                    ; $6166: $4e
    adc b                                         ; $6167: $88
    rst $38                                       ; $6168: $ff
    ldh [$f9], a                                  ; $6169: $e0 $f9
    ldh [$8c], a                                  ; $616b: $e0 $8c
    ld e, a                                       ; $616d: $5f
    ld e, e                                       ; $616e: $5b
    ld e, d                                       ; $616f: $5a
    ld e, e                                       ; $6170: $5b
    ld e, e                                       ; $6171: $5b
    adc h                                         ; $6172: $8c
    ldh a, [$e0]                                  ; $6173: $f0 $e0
    nop                                           ; $6175: $00
    rst $38                                       ; $6176: $ff
    rst $38                                       ; $6177: $ff
    ld a, [c]                                     ; $6178: $f2
    rst $20                                       ; $6179: $e7
    and $4e                                       ; $617a: $e6 $4e
    cp a                                          ; $617c: $bf
    ldh [$c0], a                                  ; $617d: $e0 $c0
    db $e3                                        ; $617f: $e3
    adc h                                         ; $6180: $8c
    ld e, e                                       ; $6181: $5b
    ld e, h                                       ; $6182: $5c
    ld e, l                                       ; $6183: $5d
    rlca                                          ; $6184: $07
    ld h, d                                       ; $6185: $62
    ld e, l                                       ; $6186: $5d
    ld e, h                                       ; $6187: $5c
    cp a                                          ; $6188: $bf
    ldh [$ca], a                                  ; $6189: $e0 $ca
    rst $38                                       ; $618b: $ff
    ret nz                                        ; $618c: $c0

    add sp, -$41                                  ; $618d: $e8 $bf
    ldh [$80], a                                  ; $618f: $e0 $80
    ld [c], a                                     ; $6191: $e2
    ld l, a                                       ; $6192: $6f
    adc h                                         ; $6193: $8c
    ld e, h                                       ; $6194: $5c
    ld e, l                                       ; $6195: $5d
    ld sp, $e1ff                                  ; $6196: $31 $ff $e1
    ld h, b                                       ; $6199: $60
    adc h                                         ; $619a: $8c
    ret nz                                        ; $619b: $c0

    rst $38                                       ; $619c: $ff
    ld [hl], $c0                                  ; $619d: $36 $c0
    ld [$8b4e], a                                 ; $619f: $ea $4e $8b
    ld b, b                                       ; $61a2: $40
    pop hl                                        ; $61a3: $e1
    adc h                                         ; $61a4: $8c
    ld h, b                                       ; $61a5: $60
    jp nz, $bfe2                                  ; $61a6: $c2 $e2 $bf

    ld [c], a                                     ; $61a9: $e2
    ld hl, sp-$36                                 ; $61aa: $f8 $ca
    rst $38                                       ; $61ac: $ff
    ret nz                                        ; $61ad: $c0

    ld [$e086], a                                 ; $61ae: $ea $86 $e0
    ld h, d                                       ; $61b1: $62
    ld h, d                                       ; $61b2: $62
    ld sp, $454d                                  ; $61b3: $31 $4d $45
    rst $38                                       ; $61b6: $ff
    ld d, h                                       ; $61b7: $54
    ld d, h                                       ; $61b8: $54
    ld d, l                                       ; $61b9: $55
    ld d, l                                       ; $61ba: $55
    ld b, l                                       ; $61bb: $45
    ld c, l                                       ; $61bc: $4d
    ld sp, $f131                                  ; $61bd: $31 $31 $f1
    ld e, a                                       ; $61c0: $5f
    jp z, Jump_056_40ff                           ; $61c1: $ca $ff $40

    jp hl                                         ; $61c4: $e9


    add [hl]                                      ; $61c5: $86
    ldh [rKEY1], a                                ; $61c6: $e0 $4d

jr_056_61c8:
    ld a, [hl-]                                   ; $61c8: $3a
    ld d, l                                       ; $61c9: $55
    ld d, l                                       ; $61ca: $55
    rst $38                                       ; $61cb: $ff
    ld b, h                                       ; $61cc: $44
    ld l, c                                       ; $61cd: $69
    ld l, c                                       ; $61ce: $69
    ld l, l                                       ; $61cf: $6d
    ld l, l                                       ; $61d0: $6d
    jr nc, @+$32                                  ; $61d1: $30 $30

    ld [hl-], a                                   ; $61d3: $32
    rst $00                                       ; $61d4: $c7
    ld c, l                                       ; $61d5: $4d
    ld sp, $ca5e                                  ; $61d6: $31 $5e $ca
    rst $38                                       ; $61d9: $ff
    ret nz                                        ; $61da: $c0

    ret z                                         ; $61db: $c8

    pop bc                                        ; $61dc: $c1
    pop hl                                        ; $61dd: $e1
    ld [hl-], a                                   ; $61de: $32
    jr nc, jr_056_61c8                            ; $61df: $30 $e7

    jr nc, jr_056_6250                            ; $61e1: $30 $6d

    ld l, c                                       ; $61e3: $69
    rst $38                                       ; $61e4: $ff
    ldh [$c0], a                                  ; $61e5: $e0 $c0
    ldh [$30], a                                  ; $61e7: $e0 $30
    add hl, sp                                    ; $61e9: $39
    ld sp, $31f9                                  ; $61ea: $31 $f9 $31
    jp z, $e8ff                                   ; $61ed: $ca $ff $e8

    rst $20                                       ; $61f0: $e7
    adc h                                         ; $61f1: $8c
    ld e, e                                       ; $61f2: $5b
    ld h, c                                       ; $61f3: $61
    ld sp, $9239                                  ; $61f4: $31 $39 $92
    ret                                           ; $61f7: $c9


    ldh [$6d], a                                  ; $61f8: $e0 $6d
    cp a                                          ; $61fa: $bf
    pop hl                                        ; $61fb: $e1
    ld a, a                                       ; $61fc: $7f
    pop hl                                        ; $61fd: $e1
    ld d, d                                       ; $61fe: $52
    ret nz                                        ; $61ff: $c0

    rst $38                                       ; $6200: $ff
    ld [$8ee9], a                                 ; $6201: $ea $e9 $8e
    sbc d                                         ; $6204: $9a
    ret nz                                        ; $6205: $c0

    db $e3                                        ; $6206: $e3
    ld l, l                                       ; $6207: $6d
    ret nz                                        ; $6208: $c0

    db $e4                                        ; $6209: $e4
    ld l, l                                       ; $620a: $6d
    ld l, l                                       ; $620b: $6d
    add b                                         ; $620c: $80
    rst $38                                       ; $620d: $ff
    db $eb                                        ; $620e: $eb
    ld [$314f], a                                 ; $620f: $ea $4f $31
    adc [hl]                                      ; $6212: $8e
    ld b, b                                       ; $6213: $40
    pop hl                                        ; $6214: $e1
    pop bc                                        ; $6215: $c1
    db $e3                                        ; $6216: $e3
    ret nz                                        ; $6217: $c0

    pop hl                                        ; $6218: $e1
    ld b, d                                       ; $6219: $42
    ld c, c                                       ; $621a: $49
    nop                                           ; $621b: $00
    rst $38                                       ; $621c: $ff
    ret nz                                        ; $621d: $c0

    ld [$bf8a], a                                 ; $621e: $ea $8a $bf
    ld [c], a                                     ; $6221: $e2
    ld a, [hl-]                                   ; $6222: $3a
    add l                                         ; $6223: $85
    ret nz                                        ; $6224: $c0

    ld b, h                                       ; $6225: $44
    add c                                         ; $6226: $81
    push hl                                       ; $6227: $e5
    add b                                         ; $6228: $80
    rst $18                                       ; $6229: $df
    ret nz                                        ; $622a: $c0

    ld [$f94f], a                                 ; $622b: $ea $4f $f9
    adc [hl]                                      ; $622e: $8e
    ld b, b                                       ; $622f: $40
    jp nz, $c03f                                  ; $6230: $c2 $3f $c0

    ld b, d                                       ; $6233: $42
    ld l, l                                       ; $6234: $6d
    ld l, l                                       ; $6235: $6d
    dec a                                         ; $6236: $3d
    ld b, c                                       ; $6237: $41
    ld h, a                                       ; $6238: $67
    ld sp, $5b5e                                  ; $6239: $31 $5e $5b
    jp z, $c0ff                                   ; $623c: $ca $ff $c0

    ld [$098f], a                                 ; $623f: $ea $8f $09
    rst $38                                       ; $6242: $ff
    ldh [$be], a                                  ; $6243: $e0 $be
    add hl, sp                                    ; $6245: $39
    ldh [$31], a                                  ; $6246: $e0 $31
    inc a                                         ; $6248: $3c
    ld d, h                                       ; $6249: $54
    ld d, l                                       ; $624a: $55
    scf                                           ; $624b: $37
    add c                                         ; $624c: $81
    ldh [$8e], a                                  ; $624d: $e0 $8e
    inc e                                         ; $624f: $1c

jr_056_6250:
    jp z, Jump_056_40ff                           ; $6250: $ca $ff $40

    jp hl                                         ; $6253: $e9


    adc a                                         ; $6254: $8f
    ld c, a                                       ; $6255: $4f
    adc c                                         ; $6256: $89
    rst $38                                       ; $6257: $ff
    ldh [$f8], a                                  ; $6258: $e0 $f8
    pop bc                                        ; $625a: $c1
    ld b, b                                       ; $625b: $40
    and e                                         ; $625c: $a3
    inc sp                                        ; $625d: $33
    adc [hl]                                      ; $625e: $8e
    ld c, a                                       ; $625f: $4f
    jp z, $c0ff                                   ; $6260: $ca $ff $c0

    ret z                                         ; $6263: $c8

    adc a                                         ; $6264: $8f
    ld c, a                                       ; $6265: $4f
    ret nz                                        ; $6266: $c0

    db $e3                                        ; $6267: $e3
    add hl, sp                                    ; $6268: $39
    db $e3                                        ; $6269: $e3
    rrca                                          ; $626a: $0f
    ld e, l                                       ; $626b: $5d
    ld e, h                                       ; $626c: $5c
    adc [hl]                                      ; $626d: $8e
    ld c, a                                       ; $626e: $4f
    ret nz                                        ; $626f: $c0

    rst $38                                       ; $6270: $ff
    jp hl                                         ; $6271: $e9


    add sp, -$3f                                  ; $6272: $e8 $c1
    ldh [$c0], a                                  ; $6274: $e0 $c0
    db $e4                                        ; $6276: $e4
    rlca                                          ; $6277: $07
    ld c, a                                       ; $6278: $4f
    adc [hl]                                      ; $6279: $8e
    ld e, e                                       ; $627a: $5b
    ccf                                           ; $627b: $3f
    add b                                         ; $627c: $80
    pop bc                                        ; $627d: $c1
    ldh [$c0], a                                  ; $627e: $e0 $c0
    rst $38                                       ; $6280: $ff
    rst $38                                       ; $6281: $ff
    rst $38                                       ; $6282: $ff
    rst $38                                       ; $6283: $ff
    rst $38                                       ; $6284: $ff
    nop                                           ; $6285: $00
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
    rst $38                                       ; $6290: $ff
    rst $38                                       ; $6291: $ff
    rst $38                                       ; $6292: $ff
    rst $38                                       ; $6293: $ff
    rst $38                                       ; $6294: $ff
    rst $38                                       ; $6295: $ff
    nop                                           ; $6296: $00
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
    rst $38                                       ; $62a1: $ff
    rst $38                                       ; $62a2: $ff
    rst $38                                       ; $62a3: $ff
    rst $38                                       ; $62a4: $ff
    rst $38                                       ; $62a5: $ff
    rst $38                                       ; $62a6: $ff
    nop                                           ; $62a7: $00
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
    rst $38                                       ; $62b2: $ff
    rst $38                                       ; $62b3: $ff
    rst $38                                       ; $62b4: $ff
    rst $38                                       ; $62b5: $ff
    rst $38                                       ; $62b6: $ff
    rst $38                                       ; $62b7: $ff
    nop                                           ; $62b8: $00
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
    rst $38                                       ; $62c3: $ff
    rst $38                                       ; $62c4: $ff
    rst $38                                       ; $62c5: $ff
    rst $38                                       ; $62c6: $ff
    rst $38                                       ; $62c7: $ff
    rst $38                                       ; $62c8: $ff
    nop                                           ; $62c9: $00
    rst $38                                       ; $62ca: $ff
    rst $38                                       ; $62cb: $ff
    rst $38                                       ; $62cc: $ff
    rst $38                                       ; $62cd: $ff
    rst $38                                       ; $62ce: $ff
    rst $38                                       ; $62cf: $ff
    rst $38                                       ; $62d0: $ff
    rst $38                                       ; $62d1: $ff
    rst $38                                       ; $62d2: $ff
    rst $38                                       ; $62d3: $ff
    rst $38                                       ; $62d4: $ff
    rst $38                                       ; $62d5: $ff
    rst $38                                       ; $62d6: $ff
    rst $38                                       ; $62d7: $ff
    rst $38                                       ; $62d8: $ff
    rst $38                                       ; $62d9: $ff
    nop                                           ; $62da: $00
    rst $38                                       ; $62db: $ff
    rst $38                                       ; $62dc: $ff
    rst $38                                       ; $62dd: $ff
    rst $38                                       ; $62de: $ff
    rst $38                                       ; $62df: $ff
    rst $38                                       ; $62e0: $ff
    rst $38                                       ; $62e1: $ff
    rst $38                                       ; $62e2: $ff
    rst $38                                       ; $62e3: $ff
    rst $38                                       ; $62e4: $ff
    rst $38                                       ; $62e5: $ff
    rst $38                                       ; $62e6: $ff
    rst $38                                       ; $62e7: $ff
    rst $38                                       ; $62e8: $ff
    rst $38                                       ; $62e9: $ff
    rst $38                                       ; $62ea: $ff
    nop                                           ; $62eb: $00
    rst $38                                       ; $62ec: $ff
    rst $38                                       ; $62ed: $ff
    rst $38                                       ; $62ee: $ff
    rst $38                                       ; $62ef: $ff
    rst $38                                       ; $62f0: $ff
    rst $38                                       ; $62f1: $ff
    rst $38                                       ; $62f2: $ff
    rst $38                                       ; $62f3: $ff
    rst $38                                       ; $62f4: $ff
    rst $38                                       ; $62f5: $ff
    rst $38                                       ; $62f6: $ff
    rst $38                                       ; $62f7: $ff
    rst $38                                       ; $62f8: $ff
    rst $38                                       ; $62f9: $ff
    rst $38                                       ; $62fa: $ff
    rst $38                                       ; $62fb: $ff
    nop                                           ; $62fc: $00
    rst $38                                       ; $62fd: $ff
    rst $38                                       ; $62fe: $ff
    rst $38                                       ; $62ff: $ff
    rst $38                                       ; $6300: $ff
    rst $38                                       ; $6301: $ff
    rst $38                                       ; $6302: $ff
    rst $38                                       ; $6303: $ff
    rst $38                                       ; $6304: $ff
    rst $38                                       ; $6305: $ff
    rst $38                                       ; $6306: $ff
    rst $38                                       ; $6307: $ff
    rst $38                                       ; $6308: $ff
    rst $38                                       ; $6309: $ff
    rst $38                                       ; $630a: $ff
    rst $38                                       ; $630b: $ff
    rst $38                                       ; $630c: $ff
    nop                                           ; $630d: $00
    rst $38                                       ; $630e: $ff
    rst $38                                       ; $630f: $ff
    rst $38                                       ; $6310: $ff
    rst $38                                       ; $6311: $ff
    rst $38                                       ; $6312: $ff
    rst $38                                       ; $6313: $ff
    rst $38                                       ; $6314: $ff
    rst $38                                       ; $6315: $ff
    rst $38                                       ; $6316: $ff
    rst $38                                       ; $6317: $ff
    rst $38                                       ; $6318: $ff
    rst $38                                       ; $6319: $ff
    rst $38                                       ; $631a: $ff
    rst $38                                       ; $631b: $ff
    rst $38                                       ; $631c: $ff
    rst $38                                       ; $631d: $ff
    nop                                           ; $631e: $00
    rst $38                                       ; $631f: $ff
    rst $38                                       ; $6320: $ff
    rst $38                                       ; $6321: $ff
    rst $38                                       ; $6322: $ff
    rst $38                                       ; $6323: $ff
    rst $38                                       ; $6324: $ff
    rst $38                                       ; $6325: $ff
    rst $38                                       ; $6326: $ff
    rst $38                                       ; $6327: $ff
    rst $38                                       ; $6328: $ff
    rst $38                                       ; $6329: $ff
    rst $38                                       ; $632a: $ff
    rst $38                                       ; $632b: $ff
    rst $38                                       ; $632c: $ff
    rst $38                                       ; $632d: $ff
    rst $38                                       ; $632e: $ff
    nop                                           ; $632f: $00
    rst $38                                       ; $6330: $ff
    rst $38                                       ; $6331: $ff
    rst $38                                       ; $6332: $ff
    rst $38                                       ; $6333: $ff
    rst $38                                       ; $6334: $ff
    rst $38                                       ; $6335: $ff
    rst $38                                       ; $6336: $ff
    rst $38                                       ; $6337: $ff
    rst $38                                       ; $6338: $ff
    rst $38                                       ; $6339: $ff
    rst $38                                       ; $633a: $ff
    rst $38                                       ; $633b: $ff
    rst $38                                       ; $633c: $ff
    rst $38                                       ; $633d: $ff
    rst $38                                       ; $633e: $ff
    rst $38                                       ; $633f: $ff
    nop                                           ; $6340: $00
    rst $38                                       ; $6341: $ff
    db $f4                                        ; $6342: $f4
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    and l                                         ; $6346: $a5
    nop                                           ; $6347: $00
    rst $38                                       ; $6348: $ff
    push hl                                       ; $6349: $e5
    ld [hl-], a                                   ; $634a: $32
    or $e6                                        ; $634b: $f6 $e6
    rst $30                                       ; $634d: $f7
    rst $20                                       ; $634e: $e7
    dec [hl]                                      ; $634f: $35
    db $ec                                        ; $6350: $ec
    xor $37                                       ; $6351: $ee $37
    db $ec                                        ; $6353: $ec
    jp c, $c7f0                                   ; $6354: $da $f0 $c7

    add sp, $33                                   ; $6357: $e8 $33
    ld sp, $f2e0                                  ; $6359: $31 $e0 $f2
    ld [hl], $30                                  ; $635c: $36 $30
    scf                                           ; $635e: $37
    cp a                                          ; $635f: $bf
    ld h, $20                                     ; $6360: $26 $20
    daa                                           ; $6362: $27
    db $10                                        ; $6363: $10
    ld d, $17                                     ; $6364: $16 $17
    jp nz, Jump_000_34f6                          ; $6366: $c2 $f6 $34

    rst $38                                       ; $6369: $ff
    ld [hl], $32                                  ; $636a: $36 $32
    jr nc, jr_056_63a5                            ; $636c: $30 $37

    ld sp, $3133                                  ; $636e: $31 $33 $31
    inc sp                                        ; $6371: $33
    nop                                           ; $6372: $00
    and b                                         ; $6373: $a0
    ei                                            ; $6374: $fb
    rst $38                                       ; $6375: $ff
    rst $28                                       ; $6376: $ef
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    add d                                         ; $637a: $82
    ld h, e                                       ; $637b: $63
    or d                                          ; $637c: $b2
    ld h, e                                       ; $637d: $63
    ld b, c                                       ; $637e: $41
    ld h, l                                       ; $637f: $65
    ld d, $67                                     ; $6380: $16 $67
    ld [$c503], a                                 ; $6382: $ea $03 $c5
    ld b, $e2                                     ; $6385: $06 $e2
    ld bc, $00a0                                  ; $6387: $01 $a0 $00
    ld [$f003], a                                 ; $638a: $ea $03 $f0
    inc bc                                        ; $638d: $03
    push bc                                       ; $638e: $c5
    ld b, $e2                                     ; $638f: $06 $e2
    ld bc, $023f                                  ; $6391: $01 $3f $02
    xor e                                         ; $6394: $ab
    nop                                           ; $6395: $00
    inc sp                                        ; $6396: $33
    ld bc, $06c5                                  ; $6397: $01 $c5 $06
    ld [$0825], sp                                ; $639a: $08 $25 $08
    dec h                                         ; $639d: $25
    ld [$0825], sp                                ; $639e: $08 $25 $08
    dec h                                         ; $63a1: $25
    ld [$0825], sp                                ; $63a2: $08 $25 $08

jr_056_63a5:
    dec h                                         ; $63a5: $25
    ld [$0825], sp                                ; $63a6: $08 $25 $08
    dec h                                         ; $63a9: $25
    ld [$0825], sp                                ; $63aa: $08 $25 $08
    dec h                                         ; $63ad: $25
    ld [$0825], sp                                ; $63ae: $08 $25 $08
    dec h                                         ; $63b1: $25
    dec hl                                        ; $63b2: $2b
    ld a, [bc]                                    ; $63b3: $0a
    dec bc                                        ; $63b4: $0b
    rst $38                                       ; $63b5: $ff
    ld [$f14b], a                                 ; $63b6: $ea $4b $f1
    pop hl                                        ; $63b9: $e1
    inc c                                         ; $63ba: $0c
    rst $38                                       ; $63bb: $ff
    rst $38                                       ; $63bc: $ff
    rst $20                                       ; $63bd: $e7
    and $f7                                       ; $63be: $e6 $f7
    dec bc                                        ; $63c0: $0b
    dec bc                                        ; $63c1: $0b
    ld l, e                                       ; $63c2: $6b
    db $fd                                        ; $63c3: $fd
    ldh [rOCPD], a                                ; $63c4: $e0 $6b
    ld c, e                                       ; $63c6: $4b
    ld l, e                                       ; $63c7: $6b
    ld c, e                                       ; $63c8: $4b
    ld h, b                                       ; $63c9: $60
    rst $38                                       ; $63ca: $ff
    pop hl                                        ; $63cb: $e1
    ret nz                                        ; $63cc: $c0

    ldh [$af], a                                  ; $63cd: $e0 $af
    ldh [$ca], a                                  ; $63cf: $e0 $ca
    rst $38                                       ; $63d1: $ff
    ret nz                                        ; $63d2: $c0

    add sp, $0a                                   ; $63d3: $e8 $0a
    ld l, e                                       ; $63d5: $6b
    pop bc                                        ; $63d6: $c1
    ldh [$f9], a                                  ; $63d7: $e0 $f9
    dec bc                                        ; $63d9: $0b
    call nz, $82e1                                ; $63da: $c4 $e1 $82
    ldh [rWX], a                                  ; $63dd: $e0 $4b
    dec bc                                        ; $63df: $0b
    dec hl                                        ; $63e0: $2b
    dec bc                                        ; $63e1: $0b
    ld a, [bc]                                    ; $63e2: $0a
    add hl, bc                                    ; $63e3: $09
    ld a, [bc]                                    ; $63e4: $0a
    jp z, $80ff                                   ; $63e5: $ca $ff $80

    jp hl                                         ; $63e8: $e9


    dec hl                                        ; $63e9: $2b
    ld a, [hl]                                    ; $63ea: $7e
    pop hl                                        ; $63eb: $e1
    call nz, $81e2                                ; $63ec: $c4 $e2 $81
    pop hl                                        ; $63ef: $e1
    ld b, b                                       ; $63f0: $40
    rst $38                                       ; $63f1: $ff
    ret nz                                        ; $63f2: $c0

    ret nz                                        ; $63f3: $c0

    rst $28                                       ; $63f4: $ef
    db $fc                                        ; $63f5: $fc
    db $e3                                        ; $63f6: $e3
    ld b, c                                       ; $63f7: $41
    pop hl                                        ; $63f8: $e1
    or [hl]                                       ; $63f9: $b6
    ld [c], a                                     ; $63fa: $e2
    ret nz                                        ; $63fb: $c0

    rst $38                                       ; $63fc: $ff
    ld b, b                                       ; $63fd: $40
    ld [$0b2b], a                                 ; $63fe: $ea $2b $0b
    ld d, e                                       ; $6401: $53
    ld c, e                                       ; $6402: $4b
    dec hl                                        ; $6403: $2b
    cp h                                          ; $6404: $bc
    pop hl                                        ; $6405: $e1
    inc a                                         ; $6406: $3c
    pop hl                                        ; $6407: $e1
    dec hl                                        ; $6408: $2b
    call nz, Call_000_2ce1                        ; $6409: $c4 $e1 $2c
    jp z, Jump_000_0eff                           ; $640c: $ca $ff $0e

    add sp, -$19                                  ; $640f: $e8 $e7
    ld a, [bc]                                    ; $6411: $0a
    dec bc                                        ; $6412: $0b
    dec hl                                        ; $6413: $2b
    ret                                           ; $6414: $c9


    ldh [$c0], a                                  ; $6415: $e0 $c0
    ld [c], a                                     ; $6417: $e2
    ld bc, $c0e1                                  ; $6418: $01 $e1 $c0
    rst $38                                       ; $641b: $ff
    ld [hl], b                                    ; $641c: $70
    add b                                         ; $641d: $80
    rst $28                                       ; $641e: $ef
    set 0, b                                      ; $641f: $cb $c0
    ret nz                                        ; $6421: $c0

    db $e3                                        ; $6422: $e3
    ld [hl], l                                    ; $6423: $75
    pop bc                                        ; $6424: $c1
    inc c                                         ; $6425: $0c
    inc c                                         ; $6426: $0c
    ld c, h                                       ; $6427: $4c
    set 7, a                                      ; $6428: $cb $ff
    nop                                           ; $642a: $00
    ret nz                                        ; $642b: $c0

    set 0, b                                      ; $642c: $cb $c0
    pop hl                                        ; $642e: $e1
    add c                                         ; $642f: $81
    jp nz, $c1b8                                  ; $6430: $c2 $b8 $c1

    ret nz                                        ; $6433: $c0

    rst $38                                       ; $6434: $ff
    ret nz                                        ; $6435: $c0

    pop af                                        ; $6436: $f1
    ld b, l                                       ; $6437: $45
    jp nz, $e282                                  ; $6438: $c2 $82 $e2

    db $10                                        ; $643b: $10
    rst $38                                       ; $643c: $ff
    rst $38                                       ; $643d: $ff
    add b                                         ; $643e: $80
    ret nc                                        ; $643f: $d0

    call nz, $c3a2                                ; $6440: $c4 $a2 $c3
    ret nz                                        ; $6443: $c0

    ld l, h                                       ; $6444: $6c
    ret nc                                        ; $6445: $d0

    rst $38                                       ; $6446: $ff
    ret nz                                        ; $6447: $c0

    ret nc                                        ; $6448: $d0

    cp [hl]                                       ; $6449: $be
    pop bc                                        ; $644a: $c1
    nop                                           ; $644b: $00
    add e                                         ; $644c: $83
    and d                                         ; $644d: $a2
    add c                                         ; $644e: $81
    rst $38                                       ; $644f: $ff
    ret nz                                        ; $6450: $c0

    di                                            ; $6451: $f3
    cp a                                          ; $6452: $bf
    db $e3                                        ; $6453: $e3
    add l                                         ; $6454: $85
    and b                                         ; $6455: $a0
    pop de                                        ; $6456: $d1
    db $e3                                        ; $6457: $e3
    add b                                         ; $6458: $80
    rst $18                                       ; $6459: $df
    ret nz                                        ; $645a: $c0

    xor l                                         ; $645b: $ad
    adc b                                         ; $645c: $88
    nop                                           ; $645d: $00
    ret nz                                        ; $645e: $c0

    cp d                                          ; $645f: $ba
    pop hl                                        ; $6460: $e1
    add b                                         ; $6461: $80
    db $e3                                        ; $6462: $e3
    ld l, h                                       ; $6463: $6c
    ld a, [hl-]                                   ; $6464: $3a
    rst $38                                       ; $6465: $ff
    ret nz                                        ; $6466: $c0

    xor h                                         ; $6467: $ac
    ld a, l                                       ; $6468: $7d
    add h                                         ; $6469: $84
    dec hl                                        ; $646a: $2b
    pop hl                                        ; $646b: $e1
    dec bc                                        ; $646c: $0b
    add l                                         ; $646d: $85
    jp nz, $ffc1                                  ; $646e: $c2 $c1 $ff

    ld b, b                                       ; $6471: $40
    xor $c0                                       ; $6472: $ee $c0
    push hl                                       ; $6474: $e5
    dec bc                                        ; $6475: $0b
    inc l                                         ; $6476: $2c
    inc l                                         ; $6477: $2c
    nop                                           ; $6478: $00
    ld b, d                                       ; $6479: $42
    ret nz                                        ; $647a: $c0

    ld sp, hl                                     ; $647b: $f9
    rst $18                                       ; $647c: $df
    rst $38                                       ; $647d: $ff
    rst $38                                       ; $647e: $ff
    rst $38                                       ; $647f: $ff
    rst $38                                       ; $6480: $ff
    rst $38                                       ; $6481: $ff
    rst $38                                       ; $6482: $ff
    rst $38                                       ; $6483: $ff
    rst $38                                       ; $6484: $ff
    rst $38                                       ; $6485: $ff
    rst $38                                       ; $6486: $ff
    rst $38                                       ; $6487: $ff
    rst $38                                       ; $6488: $ff
    nop                                           ; $6489: $00
    rst $38                                       ; $648a: $ff
    rst $38                                       ; $648b: $ff
    rst $38                                       ; $648c: $ff
    rst $38                                       ; $648d: $ff
    rst $38                                       ; $648e: $ff
    rst $38                                       ; $648f: $ff
    rst $38                                       ; $6490: $ff
    rst $38                                       ; $6491: $ff
    rst $38                                       ; $6492: $ff
    rst $38                                       ; $6493: $ff
    rst $38                                       ; $6494: $ff
    rst $38                                       ; $6495: $ff
    rst $38                                       ; $6496: $ff
    rst $38                                       ; $6497: $ff
    rst $38                                       ; $6498: $ff
    rst $38                                       ; $6499: $ff
    nop                                           ; $649a: $00
    rst $38                                       ; $649b: $ff
    rst $38                                       ; $649c: $ff
    rst $38                                       ; $649d: $ff
    rst $38                                       ; $649e: $ff
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff
    rst $38                                       ; $64a1: $ff
    rst $38                                       ; $64a2: $ff
    rst $38                                       ; $64a3: $ff
    rst $38                                       ; $64a4: $ff
    rst $38                                       ; $64a5: $ff
    rst $38                                       ; $64a6: $ff
    rst $38                                       ; $64a7: $ff
    rst $38                                       ; $64a8: $ff
    rst $38                                       ; $64a9: $ff
    rst $38                                       ; $64aa: $ff
    nop                                           ; $64ab: $00
    rst $38                                       ; $64ac: $ff
    rst $38                                       ; $64ad: $ff
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
    rst $38                                       ; $64bb: $ff
    nop                                           ; $64bc: $00
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
    rst $38                                       ; $64cc: $ff
    nop                                           ; $64cd: $00
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
    rst $38                                       ; $64dd: $ff
    nop                                           ; $64de: $00
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
    rst $38                                       ; $64ee: $ff
    nop                                           ; $64ef: $00
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
    rst $38                                       ; $64fa: $ff
    rst $38                                       ; $64fb: $ff
    rst $38                                       ; $64fc: $ff
    rst $38                                       ; $64fd: $ff
    rst $38                                       ; $64fe: $ff
    rst $38                                       ; $64ff: $ff
    nop                                           ; $6500: $00
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
    rst $38                                       ; $6510: $ff
    nop                                           ; $6511: $00
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
    rst $38                                       ; $6521: $ff
    nop                                           ; $6522: $00
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
    rst $38                                       ; $6532: $ff
    nop                                           ; $6533: $00
    rst $38                                       ; $6534: $ff
    rst $38                                       ; $6535: $ff
    rst $38                                       ; $6536: $ff
    rst $38                                       ; $6537: $ff
    rst $38                                       ; $6538: $ff
    rst $38                                       ; $6539: $ff
    rst $38                                       ; $653a: $ff
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    db $f4                                        ; $653d: $f4
    nop                                           ; $653e: $00
    nop                                           ; $653f: $00
    nop                                           ; $6540: $00
    rst $18                                       ; $6541: $df
    ld e, d                                       ; $6542: $5a
    ld e, e                                       ; $6543: $5b
    ld e, e                                       ; $6544: $5b
    ld h, b                                       ; $6545: $60
    ld sp, $e7ff                                  ; $6546: $31 $ff $e7
    ld e, a                                       ; $6549: $5f
    ld e, e                                       ; $654a: $5b
    ld a, [c]                                     ; $654b: $f2
    rst $38                                       ; $654c: $ff
    ldh [rP1], a                                  ; $654d: $e0 $00
    rst $38                                       ; $654f: $ff
    rst $38                                       ; $6550: $ff
    rst $20                                       ; $6551: $e7
    and $5b                                       ; $6552: $e6 $5b
    ld e, e                                       ; $6554: $5b
    ld e, a                                       ; $6555: $5f
    ld sp, $31ff                                  ; $6556: $31 $ff $31
    ld c, l                                       ; $6559: $4d
    ld a, [hl-]                                   ; $655a: $3a
    ld d, l                                       ; $655b: $55
    ld d, h                                       ; $655c: $54
    ld d, h                                       ; $655d: $54
    ld d, l                                       ; $655e: $55
    ld d, l                                       ; $655f: $55
    rra                                           ; $6560: $1f
    dec sp                                        ; $6561: $3b
    ld c, l                                       ; $6562: $4d
    ld sp, $5b5e                                  ; $6563: $31 $5e $5b
    xor a                                         ; $6566: $af
    ldh [$ca], a                                  ; $6567: $e0 $ca
    rst $38                                       ; $6569: $ff
    ret nz                                        ; $656a: $c0

    add sp, -$41                                  ; $656b: $e8 $bf
    ld e, d                                       ; $656d: $5a
    ld e, [hl]                                    ; $656e: $5e
    ld sp, $324d                                  ; $656f: $31 $4d $32
    jr nc, @+$01                                  ; $6572: $30 $ff

    db $e3                                        ; $6574: $e3
    ld [hl-], a                                   ; $6575: $32
    ccf                                           ; $6576: $3f
    ld c, l                                       ; $6577: $4d
    ld sp, $5b60                                  ; $6578: $31 $60 $5b
    ld e, d                                       ; $657b: $5a
    ld e, d                                       ; $657c: $5a
    jp z, $80ff                                   ; $657d: $ca $ff $80

    jp hl                                         ; $6580: $e9


    ld a, a                                       ; $6581: $7f
    ld h, c                                       ; $6582: $61
    ld sp, $3039                                  ; $6583: $31 $39 $30
    jr nc, @+$6e                                  ; $6586: $30 $6c

    ld l, h                                       ; $6588: $6c
    cp l                                          ; $6589: $bd
    ld [c], a                                     ; $658a: $e2
    ccf                                           ; $658b: $3f
    add hl, sp                                    ; $658c: $39
    ld sp, $6231                                  ; $658d: $31 $31 $62
    ld h, d                                       ; $6590: $62
    ld h, d                                       ; $6591: $62
    jp z, $c0ff                                   ; $6592: $ca $ff $c0

    db $eb                                        ; $6595: $eb
    cp a                                          ; $6596: $bf
    ld d, e                                       ; $6597: $53
    jr nc, @+$6f                                  ; $6598: $30 $6d

    ld l, h                                       ; $659a: $6c
    ld l, h                                       ; $659b: $6c
    ld l, d                                       ; $659c: $6a
    ld a, h                                       ; $659d: $7c
    pop hl                                        ; $659e: $e1
    ld d, d                                       ; $659f: $52
    ld a, b                                       ; $65a0: $78
    push af                                       ; $65a1: $f5
    jp nz, $ffca                                  ; $65a2: $c2 $ca $ff

    ld b, b                                       ; $65a5: $40
    jp hl                                         ; $65a6: $e9


    ld h, c                                       ; $65a7: $61
    ld sp, $6d52                                  ; $65a8: $31 $52 $6d
    ret nz                                        ; $65ab: $c0

    pop hl                                        ; $65ac: $e1
    ld a, [hl]                                    ; $65ad: $7e
    cp a                                          ; $65ae: $bf
    pop hl                                        ; $65af: $e1
    ld d, d                                       ; $65b0: $52
    ld sp, $1429                                  ; $65b1: $31 $29 $14
    inc d                                         ; $65b4: $14
    add hl, hl                                    ; $65b5: $29
    jp z, $e2ff                                   ; $65b6: $ca $ff $e2

    add sp, -$19                                  ; $65b9: $e8 $e7
    ld e, d                                       ; $65bb: $5a
    ld b, b                                       ; $65bc: $40
    ldh [$c0], a                                  ; $65bd: $e0 $c0
    db $e4                                        ; $65bf: $e4
    ld a, [hl]                                    ; $65c0: $7e
    ldh [$39], a                                  ; $65c1: $e0 $39
    ld sp, $a72b                                  ; $65c3: $31 $2b $a7
    inc h                                         ; $65c6: $24
    inc h                                         ; $65c7: $24
    dec hl                                        ; $65c8: $2b
    jp z, $80ff                                   ; $65c9: $ca $ff $80

    db $eb                                        ; $65cc: $eb
    ld d, e                                       ; $65cd: $53
    ret nz                                        ; $65ce: $c0

    db $e4                                        ; $65cf: $e4
    ld l, d                                       ; $65d0: $6a
    ccf                                           ; $65d1: $3f
    ld b, d                                       ; $65d2: $42
    scf                                           ; $65d3: $37
    ld sp, $2c2b                                  ; $65d4: $31 $2b $2c
    jr nz, @-$33                                  ; $65d7: $20 $cb

    rst $38                                       ; $65d9: $ff
    nop                                           ; $65da: $00
    db $ed                                        ; $65db: $ed
    ld l, a                                       ; $65dc: $6f
    ld l, l                                       ; $65dd: $6d
    ld l, l                                       ; $65de: $6d
    jr nc, jr_056_6611                            ; $65df: $30 $30

    pop bc                                        ; $65e1: $c1
    pop hl                                        ; $65e2: $e1
    inc a                                         ; $65e3: $3c
    ld sp, $ffc0                                  ; $65e4: $31 $c0 $ff
    ld [c], a                                     ; $65e7: $e2
    add b                                         ; $65e8: $80
    ret nc                                        ; $65e9: $d0

    ld d, d                                       ; $65ea: $52
    pop bc                                        ; $65eb: $c1
    ldh [$bf], a                                  ; $65ec: $e0 $bf
    ldh [$c1], a                                  ; $65ee: $e0 $c1
    ldh [rNR11], a                                ; $65f0: $e0 $11
    ld [de], a                                    ; $65f2: $12
    ld d, $f1                                     ; $65f3: $16 $f1
    jr nz, @-$3e                                  ; $65f5: $20 $c0

    rst $38                                       ; $65f7: $ff
    ret nz                                        ; $65f8: $c0

    xor $01                                       ; $65f9: $ee $01
    jp Jump_000_3152                              ; $65fb: $c3 $52 $31


    dec d                                         ; $65fe: $15
    ld d, $b3                                     ; $65ff: $16 $b3
    jr z, jr_056_6623                             ; $6601: $28 $20

    ret nz                                        ; $6603: $c0

    rst $38                                       ; $6604: $ff
    ret nz                                        ; $6605: $c0

    adc $39                                       ; $6606: $ce $39
    ld l, h                                       ; $6608: $6c
    rst $38                                       ; $6609: $ff

jr_056_660a:
    ld [c], a                                     ; $660a: $e2
    add hl, sp                                    ; $660b: $39
    ld h, e                                       ; $660c: $63
    ld sp, $c117                                  ; $660d: $31 $17 $c1
    pop hl                                        ; $6610: $e1

jr_056_6611:
    ret nz                                        ; $6611: $c0

    rst $38                                       ; $6612: $ff
    add b                                         ; $6613: $80
    call Call_000_36af                            ; $6614: $cd $af $36
    cp a                                          ; $6617: $bf
    pop hl                                        ; $6618: $e1
    jp $af36                                      ; $6619: $c3 $36 $af


    inc bc                                        ; $661c: $03
    pop hl                                        ; $661d: $e1
    ret nz                                        ; $661e: $c0

    ldh [$80], a                                  ; $661f: $e0 $80
    rst $18                                       ; $6621: $df
    add b                                         ; $6622: $80

jr_056_6623:
    xor h                                         ; $6623: $ac
    add c                                         ; $6624: $81
    ld l, a                                       ; $6625: $6f
    cp a                                          ; $6626: $bf
    ld l, [hl]                                    ; $6627: $6e
    ld d, l                                       ; $6628: $55
    ld d, h                                       ; $6629: $54
    ld l, [hl]                                    ; $662a: $6e
    ld l, a                                       ; $662b: $6f
    add c                                         ; $662c: $81
    ret nz                                        ; $662d: $c0

    db $e3                                        ; $662e: $e3
    jr z, jr_056_660a                             ; $662f: $28 $d9

    rla                                           ; $6631: $17
    jp z, $c0ff                                   ; $6632: $ca $ff $c0

    xor e                                         ; $6635: $ab
    and b                                         ; $6636: $a0
    add b                                         ; $6637: $80
    rst $38                                       ; $6638: $ff
    ld [c], a                                     ; $6639: $e2
    and b                                         ; $663a: $a0
    ld sp, $178d                                  ; $663b: $31 $8d $17
    add b                                         ; $663e: $80
    pop hl                                        ; $663f: $e1
    ld d, $15                                     ; $6640: $16 $15
    jp z, $c0ff                                   ; $6642: $ca $ff $c0

    xor e                                         ; $6645: $ab
    ret nz                                        ; $6646: $c0

    and $31                                       ; $6647: $e6 $31
    rra                                           ; $6649: $1f
    dec bc                                        ; $664a: $0b
    ld a, [bc]                                    ; $664b: $0a
    dec b                                         ; $664c: $05
    ld a, [bc]                                    ; $664d: $0a
    dec bc                                        ; $664e: $0b
    ld b, b                                       ; $664f: $40
    cp a                                          ; $6650: $bf
    rst $38                                       ; $6651: $ff
    rst $38                                       ; $6652: $ff
    rst $38                                       ; $6653: $ff
    rst $38                                       ; $6654: $ff
    nop                                           ; $6655: $00
    rst $38                                       ; $6656: $ff
    rst $38                                       ; $6657: $ff
    rst $38                                       ; $6658: $ff
    rst $38                                       ; $6659: $ff
    rst $38                                       ; $665a: $ff
    rst $38                                       ; $665b: $ff
    rst $38                                       ; $665c: $ff
    rst $38                                       ; $665d: $ff
    rst $38                                       ; $665e: $ff
    rst $38                                       ; $665f: $ff
    rst $38                                       ; $6660: $ff
    rst $38                                       ; $6661: $ff
    rst $38                                       ; $6662: $ff
    rst $38                                       ; $6663: $ff
    rst $38                                       ; $6664: $ff
    rst $38                                       ; $6665: $ff
    nop                                           ; $6666: $00
    rst $38                                       ; $6667: $ff
    rst $38                                       ; $6668: $ff
    rst $38                                       ; $6669: $ff
    rst $38                                       ; $666a: $ff
    rst $38                                       ; $666b: $ff
    rst $38                                       ; $666c: $ff
    rst $38                                       ; $666d: $ff
    rst $38                                       ; $666e: $ff
    rst $38                                       ; $666f: $ff
    rst $38                                       ; $6670: $ff
    rst $38                                       ; $6671: $ff
    rst $38                                       ; $6672: $ff
    rst $38                                       ; $6673: $ff
    rst $38                                       ; $6674: $ff
    rst $38                                       ; $6675: $ff
    rst $38                                       ; $6676: $ff
    nop                                           ; $6677: $00
    rst $38                                       ; $6678: $ff
    rst $38                                       ; $6679: $ff
    rst $38                                       ; $667a: $ff
    rst $38                                       ; $667b: $ff
    rst $38                                       ; $667c: $ff
    rst $38                                       ; $667d: $ff
    rst $38                                       ; $667e: $ff
    rst $38                                       ; $667f: $ff
    rst $38                                       ; $6680: $ff
    rst $38                                       ; $6681: $ff
    rst $38                                       ; $6682: $ff
    rst $38                                       ; $6683: $ff
    rst $38                                       ; $6684: $ff
    rst $38                                       ; $6685: $ff
    rst $38                                       ; $6686: $ff
    rst $38                                       ; $6687: $ff
    nop                                           ; $6688: $00
    rst $38                                       ; $6689: $ff
    rst $38                                       ; $668a: $ff
    rst $38                                       ; $668b: $ff
    rst $38                                       ; $668c: $ff
    rst $38                                       ; $668d: $ff
    rst $38                                       ; $668e: $ff
    rst $38                                       ; $668f: $ff
    rst $38                                       ; $6690: $ff
    rst $38                                       ; $6691: $ff
    rst $38                                       ; $6692: $ff
    rst $38                                       ; $6693: $ff
    rst $38                                       ; $6694: $ff
    rst $38                                       ; $6695: $ff
    rst $38                                       ; $6696: $ff
    rst $38                                       ; $6697: $ff
    rst $38                                       ; $6698: $ff
    nop                                           ; $6699: $00
    rst $38                                       ; $669a: $ff
    rst $38                                       ; $669b: $ff
    rst $38                                       ; $669c: $ff
    rst $38                                       ; $669d: $ff
    rst $38                                       ; $669e: $ff
    rst $38                                       ; $669f: $ff
    rst $38                                       ; $66a0: $ff
    rst $38                                       ; $66a1: $ff
    rst $38                                       ; $66a2: $ff
    rst $38                                       ; $66a3: $ff
    rst $38                                       ; $66a4: $ff
    rst $38                                       ; $66a5: $ff
    rst $38                                       ; $66a6: $ff
    rst $38                                       ; $66a7: $ff
    rst $38                                       ; $66a8: $ff
    rst $38                                       ; $66a9: $ff
    nop                                           ; $66aa: $00
    rst $38                                       ; $66ab: $ff
    rst $38                                       ; $66ac: $ff
    rst $38                                       ; $66ad: $ff
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
    rst $38                                       ; $66b8: $ff
    rst $38                                       ; $66b9: $ff
    rst $38                                       ; $66ba: $ff
    nop                                           ; $66bb: $00
    rst $38                                       ; $66bc: $ff
    rst $38                                       ; $66bd: $ff
    rst $38                                       ; $66be: $ff
    rst $38                                       ; $66bf: $ff
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    rst $38                                       ; $66c2: $ff
    rst $38                                       ; $66c3: $ff
    rst $38                                       ; $66c4: $ff
    rst $38                                       ; $66c5: $ff
    rst $38                                       ; $66c6: $ff
    rst $38                                       ; $66c7: $ff
    rst $38                                       ; $66c8: $ff
    rst $38                                       ; $66c9: $ff
    rst $38                                       ; $66ca: $ff
    rst $38                                       ; $66cb: $ff
    nop                                           ; $66cc: $00
    rst $38                                       ; $66cd: $ff
    rst $38                                       ; $66ce: $ff
    rst $38                                       ; $66cf: $ff
    rst $38                                       ; $66d0: $ff
    rst $38                                       ; $66d1: $ff
    rst $38                                       ; $66d2: $ff
    rst $38                                       ; $66d3: $ff
    rst $38                                       ; $66d4: $ff
    rst $38                                       ; $66d5: $ff
    rst $38                                       ; $66d6: $ff
    rst $38                                       ; $66d7: $ff
    rst $38                                       ; $66d8: $ff
    rst $38                                       ; $66d9: $ff
    rst $38                                       ; $66da: $ff
    rst $38                                       ; $66db: $ff
    rst $38                                       ; $66dc: $ff
    nop                                           ; $66dd: $00
    rst $38                                       ; $66de: $ff
    rst $38                                       ; $66df: $ff
    rst $38                                       ; $66e0: $ff
    rst $38                                       ; $66e1: $ff
    rst $38                                       ; $66e2: $ff
    rst $38                                       ; $66e3: $ff
    rst $38                                       ; $66e4: $ff
    rst $38                                       ; $66e5: $ff
    rst $38                                       ; $66e6: $ff
    rst $38                                       ; $66e7: $ff
    rst $38                                       ; $66e8: $ff
    rst $38                                       ; $66e9: $ff
    rst $38                                       ; $66ea: $ff
    rst $38                                       ; $66eb: $ff
    rst $38                                       ; $66ec: $ff
    rst $38                                       ; $66ed: $ff
    nop                                           ; $66ee: $00
    rst $38                                       ; $66ef: $ff
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    rst $38                                       ; $66f3: $ff
    rst $38                                       ; $66f4: $ff
    rst $38                                       ; $66f5: $ff
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    rst $38                                       ; $66fa: $ff
    rst $38                                       ; $66fb: $ff
    rst $38                                       ; $66fc: $ff
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    nop                                           ; $66ff: $00
    rst $38                                       ; $6700: $ff
    rst $38                                       ; $6701: $ff
    rst $38                                       ; $6702: $ff
    rst $38                                       ; $6703: $ff
    rst $38                                       ; $6704: $ff
    rst $38                                       ; $6705: $ff
    rst $38                                       ; $6706: $ff
    rst $38                                       ; $6707: $ff
    rst $38                                       ; $6708: $ff
    rst $38                                       ; $6709: $ff
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    rst $38                                       ; $670c: $ff
    rst $38                                       ; $670d: $ff
    rst $38                                       ; $670e: $ff
    rst $38                                       ; $670f: $ff
    nop                                           ; $6710: $00
    rst $38                                       ; $6711: $ff
    db $f4                                        ; $6712: $f4
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    and l                                         ; $6716: $a5
    nop                                           ; $6717: $00
    rst $38                                       ; $6718: $ff
    push hl                                       ; $6719: $e5
    ld [hl-], a                                   ; $671a: $32
    or $e6                                        ; $671b: $f6 $e6
    rst $30                                       ; $671d: $f7
    rst $20                                       ; $671e: $e7
    dec [hl]                                      ; $671f: $35
    db $ec                                        ; $6720: $ec
    xor $37                                       ; $6721: $ee $37
    db $ec                                        ; $6723: $ec
    jp c, $c7f0                                   ; $6724: $da $f0 $c7

    add sp, $33                                   ; $6727: $e8 $33
    ld sp, $f2e0                                  ; $6729: $31 $e0 $f2
    ld [hl], $30                                  ; $672c: $36 $30
    scf                                           ; $672e: $37
    cp a                                          ; $672f: $bf
    ld h, $20                                     ; $6730: $26 $20
    daa                                           ; $6732: $27
    db $10                                        ; $6733: $10
    ld d, $17                                     ; $6734: $16 $17
    jp nz, Jump_000_34f6                          ; $6736: $c2 $f6 $34

    rst $38                                       ; $6739: $ff
    ld [hl], $32                                  ; $673a: $36 $32
    jr nc, jr_056_6775                            ; $673c: $30 $37

    ld sp, $3133                                  ; $673e: $31 $33 $31
    inc sp                                        ; $6741: $33
    nop                                           ; $6742: $00
    and b                                         ; $6743: $a0
    ei                                            ; $6744: $fb
    rst $38                                       ; $6745: $ff
    rst $28                                       ; $6746: $ef
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    ld d, d                                       ; $674a: $52
    ld h, a                                       ; $674b: $67
    add d                                         ; $674c: $82
    ld h, a                                       ; $674d: $67
    inc hl                                        ; $674e: $23
    ld l, c                                       ; $674f: $69
    inc bc                                        ; $6750: $03
    ld l, e                                       ; $6751: $6b
    ld [$c503], a                                 ; $6752: $ea $03 $c5
    ld b, $e2                                     ; $6755: $06 $e2
    ld bc, $00a0                                  ; $6757: $01 $a0 $00
    ld [$f003], a                                 ; $675a: $ea $03 $f0
    inc bc                                        ; $675d: $03
    push bc                                       ; $675e: $c5
    ld b, $e2                                     ; $675f: $06 $e2
    ld bc, $023f                                  ; $6761: $01 $3f $02
    xor e                                         ; $6764: $ab
    nop                                           ; $6765: $00
    inc sp                                        ; $6766: $33
    ld bc, $06c5                                  ; $6767: $01 $c5 $06
    ld [$0825], sp                                ; $676a: $08 $25 $08
    dec h                                         ; $676d: $25
    ld [$0825], sp                                ; $676e: $08 $25 $08
    dec h                                         ; $6771: $25
    ld [$0825], sp                                ; $6772: $08 $25 $08

jr_056_6775:
    dec h                                         ; $6775: $25
    ld [$0825], sp                                ; $6776: $08 $25 $08
    dec h                                         ; $6779: $25
    ld [$0825], sp                                ; $677a: $08 $25 $08
    dec h                                         ; $677d: $25
    ld [$0825], sp                                ; $677e: $08 $25 $08
    dec h                                         ; $6781: $25
    rst $38                                       ; $6782: $ff
    dec bc                                        ; $6783: $0b
    dec bc                                        ; $6784: $0b
    ld l, e                                       ; $6785: $6b
    dec bc                                        ; $6786: $0b
    ld c, e                                       ; $6787: $4b
    ld c, e                                       ; $6788: $4b
    ld c, e                                       ; $6789: $4b
    dec bc                                        ; $678a: $0b
    ld a, a                                       ; $678b: $7f
    dec bc                                        ; $678c: $0b
    dec bc                                        ; $678d: $0b
    dec hl                                        ; $678e: $2b
    dec hl                                        ; $678f: $2b
    dec bc                                        ; $6790: $0b
    dec bc                                        ; $6791: $0b
    ld a, [bc]                                    ; $6792: $0a
    ld hl, sp-$20                                 ; $6793: $f8 $e0
    rst $20                                       ; $6795: $e7
    dec bc                                        ; $6796: $0b
    dec bc                                        ; $6797: $0b
    inc c                                         ; $6798: $0c
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    rst $20                                       ; $679b: $e7
    and $0b                                       ; $679c: $e6 $0b
    ld l, e                                       ; $679e: $6b
    ld l, e                                       ; $679f: $6b
    nop                                           ; $67a0: $00
    jp $bee1                                      ; $67a1: $c3 $e1 $be


    ld [c], a                                     ; $67a4: $e2
    cp l                                          ; $67a5: $bd
    push hl                                       ; $67a6: $e5
    jp z, $c0ff                                   ; $67a7: $ca $ff $c0

    jp hl                                         ; $67aa: $e9


    add d                                         ; $67ab: $82
    db $e3                                        ; $67ac: $e3
    ld a, e                                       ; $67ad: $7b
    pop hl                                        ; $67ae: $e1
    ld a, d                                       ; $67af: $7a
    ldh [rSVBK], a                                ; $67b0: $e0 $70
    ld a, h                                       ; $67b2: $7c
    ldh [$c0], a                                  ; $67b3: $e0 $c0
    rst $38                                       ; $67b5: $ff
    ld [$81e9], a                                 ; $67b6: $ea $e9 $81
    ldh [rWX], a                                  ; $67b9: $e0 $4b
    dec hl                                        ; $67bb: $2b
    ld l, e                                       ; $67bc: $6b
    ld c, c                                       ; $67bd: $49
    ld [c], a                                     ; $67be: $e2
    sub b                                         ; $67bf: $90
    dec [hl]                                      ; $67c0: $35
    pop hl                                        ; $67c1: $e1
    cp a                                          ; $67c2: $bf
    ld [c], a                                     ; $67c3: $e2
    jp z, $e8ff                                   ; $67c4: $ca $ff $e8

    rst $20                                       ; $67c7: $e7
    dec hl                                        ; $67c8: $2b
    inc bc                                        ; $67c9: $03
    ldh [$c0], a                                  ; $67ca: $e0 $c0
    push hl                                       ; $67cc: $e5
    dec hl                                        ; $67cd: $2b
    db $10                                        ; $67ce: $10
    or a                                          ; $67cf: $b7
    pop hl                                        ; $67d0: $e1
    ld a, [$cac0]                                 ; $67d1: $fa $c0 $ca
    rst $38                                       ; $67d4: $ff
    ret nz                                        ; $67d5: $c0

    jp hl                                         ; $67d6: $e9


    ld l, e                                       ; $67d7: $6b
    ret                                           ; $67d8: $c9


    ldh [$fc], a                                  ; $67d9: $e0 $fc
    ldh [$7e], a                                  ; $67db: $e0 $7e
    add sp, -$40                                  ; $67dd: $e8 $c0
    jp z, $80ff                                   ; $67df: $ca $ff $80

    add sp, -$01                                  ; $67e2: $e8 $ff
    ld [c], a                                     ; $67e4: $e2
    ld a, [hl-]                                   ; $67e5: $3a
    pop hl                                        ; $67e6: $e1
    rst $38                                       ; $67e7: $ff
    pop bc                                        ; $67e8: $c1
    ld a, [hl]                                    ; $67e9: $7e
    ld [c], a                                     ; $67ea: $e2
    ld c, e                                       ; $67eb: $4b
    inc l                                         ; $67ec: $2c
    ld [$ffc9], sp                                ; $67ed: $08 $c9 $ff
    add b                                         ; $67f0: $80
    rst $00                                       ; $67f1: $c7
    cp a                                          ; $67f2: $bf
    ldh [$0b], a                                  ; $67f3: $e0 $0b
    cp $c0                                        ; $67f5: $fe $c0
    ret nz                                        ; $67f7: $c0

    push hl                                       ; $67f8: $e5
    ld sp, $c0c1                                  ; $67f9: $31 $c1 $c0

jr_056_67fc:
    rst $38                                       ; $67fc: $ff
    adc d                                         ; $67fd: $8a
    ret nz                                        ; $67fe: $c0

    jp hl                                         ; $67ff: $e9


    ld c, e                                       ; $6800: $4b
    pop bc                                        ; $6801: $c1
    ldh [$2b], a                                  ; $6802: $e0 $2b
    ld sp, hl                                     ; $6804: $f9
    pop bc                                        ; $6805: $c1
    add c                                         ; $6806: $81
    pop hl                                        ; $6807: $e1
    db $fc                                        ; $6808: $fc
    and b                                         ; $6809: $a0
    ld c, e                                       ; $680a: $4b
    nop                                           ; $680b: $00
    ld b, b                                       ; $680c: $40
    rst $38                                       ; $680d: $ff
    nop                                           ; $680e: $00
    ret                                           ; $680f: $c9


    cp a                                          ; $6810: $bf
    ldh [$3c], a                                  ; $6811: $e0 $3c
    pop hl                                        ; $6813: $e1
    cp h                                          ; $6814: $bc
    and c                                         ; $6815: $a1
    pop bc                                        ; $6816: $c1
    ld [c], a                                     ; $6817: $e2
    ret nz                                        ; $6818: $c0

    rst $38                                       ; $6819: $ff
    ret nz                                        ; $681a: $c0

jr_056_681b:
    db $ed                                        ; $681b: $ed
    jr jr_056_681b                                ; $681c: $18 $fd

    pop bc                                        ; $681e: $c1
    jp nz, $c1a3                                  ; $681f: $c2 $a3 $c1

    ld [c], a                                     ; $6822: $e2
    ld c, e                                       ; $6823: $4b
    ld c, e                                       ; $6824: $4b
    jp z, $80ff                                   ; $6825: $ca $ff $80

    jp hl                                         ; $6828: $e9


    adc c                                         ; $6829: $89
    db $e4                                        ; $682a: $e4
    ld [$e7c1], sp                                ; $682b: $08 $c1 $e7
    add b                                         ; $682e: $80
    rst $38                                       ; $682f: $ff
    jp hl                                         ; $6830: $e9


    add sp, $2c                                   ; $6831: $e8 $2c
    add a                                         ; $6833: $87
    push hl                                       ; $6834: $e5
    pop bc                                        ; $6835: $c1
    rst $20                                       ; $6836: $e7
    ret nz                                        ; $6837: $c0

    rst $38                                       ; $6838: $ff
    ret nz                                        ; $6839: $c0

    jp hl                                         ; $683a: $e9


    jr nz, jr_056_67fc                            ; $683b: $20 $bf

    pop hl                                        ; $683d: $e1
    inc a                                         ; $683e: $3c
    and $3b                                       ; $683f: $e6 $3b
    and d                                         ; $6841: $a2
    ld b, b                                       ; $6842: $40
    rst $38                                       ; $6843: $ff
    ret nz                                        ; $6844: $c0

    ld [$844c], a                                 ; $6845: $ea $4c $84
    and h                                         ; $6848: $a4
    ld a, h                                       ; $6849: $7c
    add b                                         ; $684a: $80
    nop                                           ; $684b: $00
    db $fc                                        ; $684c: $fc
    add c                                         ; $684d: $81
    or b                                          ; $684e: $b0
    add b                                         ; $684f: $80
    jp z, $80ff                                   ; $6850: $ca $ff $80

    jp hl                                         ; $6853: $e9


    ld a, a                                       ; $6854: $7f
    ld [c], a                                     ; $6855: $e2
    inc bc                                        ; $6856: $03
    and c                                         ; $6857: $a1
    ld a, l                                       ; $6858: $7d
    and e                                         ; $6859: $a3
    db $f4                                        ; $685a: $f4
    add b                                         ; $685b: $80
    nop                                           ; $685c: $00
    jp z, $ffff                                   ; $685d: $ca $ff $ff

    rst $38                                       ; $6860: $ff
    rst $38                                       ; $6861: $ff
    rst $38                                       ; $6862: $ff
    rst $38                                       ; $6863: $ff
    rst $38                                       ; $6864: $ff
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    rst $38                                       ; $6868: $ff
    rst $38                                       ; $6869: $ff
    rst $38                                       ; $686a: $ff
    rst $38                                       ; $686b: $ff
    rst $38                                       ; $686c: $ff
    nop                                           ; $686d: $00
    rst $38                                       ; $686e: $ff
    rst $38                                       ; $686f: $ff
    rst $38                                       ; $6870: $ff
    rst $38                                       ; $6871: $ff
    rst $38                                       ; $6872: $ff
    rst $38                                       ; $6873: $ff
    rst $38                                       ; $6874: $ff
    rst $38                                       ; $6875: $ff
    rst $38                                       ; $6876: $ff
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    rst $38                                       ; $687c: $ff
    rst $38                                       ; $687d: $ff
    nop                                           ; $687e: $00
    rst $38                                       ; $687f: $ff
    rst $38                                       ; $6880: $ff
    rst $38                                       ; $6881: $ff
    rst $38                                       ; $6882: $ff
    rst $38                                       ; $6883: $ff
    rst $38                                       ; $6884: $ff
    rst $38                                       ; $6885: $ff
    rst $38                                       ; $6886: $ff
    rst $38                                       ; $6887: $ff
    rst $38                                       ; $6888: $ff
    rst $38                                       ; $6889: $ff
    rst $38                                       ; $688a: $ff
    rst $38                                       ; $688b: $ff
    rst $38                                       ; $688c: $ff
    rst $38                                       ; $688d: $ff
    rst $38                                       ; $688e: $ff
    nop                                           ; $688f: $00
    rst $38                                       ; $6890: $ff
    rst $38                                       ; $6891: $ff
    rst $38                                       ; $6892: $ff
    rst $38                                       ; $6893: $ff
    rst $38                                       ; $6894: $ff
    rst $38                                       ; $6895: $ff
    rst $38                                       ; $6896: $ff
    rst $38                                       ; $6897: $ff
    rst $38                                       ; $6898: $ff
    rst $38                                       ; $6899: $ff
    rst $38                                       ; $689a: $ff
    rst $38                                       ; $689b: $ff
    rst $38                                       ; $689c: $ff
    rst $38                                       ; $689d: $ff
    rst $38                                       ; $689e: $ff
    rst $38                                       ; $689f: $ff
    nop                                           ; $68a0: $00
    rst $38                                       ; $68a1: $ff
    rst $38                                       ; $68a2: $ff
    rst $38                                       ; $68a3: $ff
    rst $38                                       ; $68a4: $ff
    rst $38                                       ; $68a5: $ff
    rst $38                                       ; $68a6: $ff
    rst $38                                       ; $68a7: $ff
    rst $38                                       ; $68a8: $ff
    rst $38                                       ; $68a9: $ff
    rst $38                                       ; $68aa: $ff
    rst $38                                       ; $68ab: $ff
    rst $38                                       ; $68ac: $ff
    rst $38                                       ; $68ad: $ff
    rst $38                                       ; $68ae: $ff
    rst $38                                       ; $68af: $ff
    rst $38                                       ; $68b0: $ff
    nop                                           ; $68b1: $00
    rst $38                                       ; $68b2: $ff
    rst $38                                       ; $68b3: $ff
    rst $38                                       ; $68b4: $ff
    rst $38                                       ; $68b5: $ff
    rst $38                                       ; $68b6: $ff
    rst $38                                       ; $68b7: $ff
    rst $38                                       ; $68b8: $ff
    rst $38                                       ; $68b9: $ff
    rst $38                                       ; $68ba: $ff
    rst $38                                       ; $68bb: $ff
    rst $38                                       ; $68bc: $ff
    rst $38                                       ; $68bd: $ff
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    rst $38                                       ; $68c0: $ff
    rst $38                                       ; $68c1: $ff
    nop                                           ; $68c2: $00
    rst $38                                       ; $68c3: $ff
    rst $38                                       ; $68c4: $ff
    rst $38                                       ; $68c5: $ff
    rst $38                                       ; $68c6: $ff
    rst $38                                       ; $68c7: $ff
    rst $38                                       ; $68c8: $ff
    rst $38                                       ; $68c9: $ff
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    rst $38                                       ; $68d0: $ff
    rst $38                                       ; $68d1: $ff
    rst $38                                       ; $68d2: $ff
    nop                                           ; $68d3: $00
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    rst $38                                       ; $68d7: $ff
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    nop                                           ; $68e4: $00
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff

jr_056_68e7:
    rst $38                                       ; $68e7: $ff
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    rst $38                                       ; $68ee: $ff
    rst $38                                       ; $68ef: $ff
    rst $38                                       ; $68f0: $ff
    rst $38                                       ; $68f1: $ff
    rst $38                                       ; $68f2: $ff
    rst $38                                       ; $68f3: $ff
    rst $38                                       ; $68f4: $ff
    nop                                           ; $68f5: $00
    rst $38                                       ; $68f6: $ff
    rst $38                                       ; $68f7: $ff
    rst $38                                       ; $68f8: $ff
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    rst $38                                       ; $68fc: $ff
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    rst $38                                       ; $68ff: $ff
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    rst $38                                       ; $6904: $ff
    rst $38                                       ; $6905: $ff
    nop                                           ; $6906: $00
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    nop                                           ; $6917: $00
    rst $38                                       ; $6918: $ff
    rst $38                                       ; $6919: $ff
    rst $38                                       ; $691a: $ff
    rst $38                                       ; $691b: $ff
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    di                                            ; $691f: $f3
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    rst $38                                       ; $6923: $ff
    ld sp, $4d31                                  ; $6924: $31 $31 $4d
    ld d, [hl]                                    ; $6927: $56
    sub a                                         ; $6928: $97
    sbc [hl]                                      ; $6929: $9e
    sbc [hl]                                      ; $692a: $9e
    ld sp, $31ff                                  ; $692b: $31 $ff $31
    ld sp, $5c5d                                  ; $692e: $31 $5d $5c
    ld e, e                                       ; $6931: $5b
    ld e, e                                       ; $6932: $5b
    ld e, d                                       ; $6933: $5a
    ld e, e                                       ; $6934: $5b
    ld a, [c]                                     ; $6935: $f2
    rst $38                                       ; $6936: $ff
    pop hl                                        ; $6937: $e1
    nop                                           ; $6938: $00
    rst $38                                       ; $6939: $ff
    rst $38                                       ; $693a: $ff
    rst $20                                       ; $693b: $e7
    and $31                                       ; $693c: $e6 $31
    ld c, l                                       ; $693e: $4d
    ld [hl-], a                                   ; $693f: $32
    jr nc, @+$61                                  ; $6940: $30 $5f

    sub h                                         ; $6942: $94
    add [hl]                                      ; $6943: $86
    add [hl]                                      ; $6944: $86
    sub [hl]                                      ; $6945: $96
    sub a                                         ; $6946: $97
    cp [hl]                                       ; $6947: $be
    ldh [$62], a                                  ; $6948: $e0 $62
    cp l                                          ; $694a: $bd
    db $e4                                        ; $694b: $e4
    db $fc                                        ; $694c: $fc
    jp z, $c0ff                                   ; $694d: $ca $ff $c0

    add sp, $39                                   ; $6950: $e8 $39
    jr nc, jr_056_6984                            ; $6952: $30 $30

    jr nc, jr_056_68e7                            ; $6954: $30 $91

    add [hl]                                      ; $6956: $86
    db $e4                                        ; $6957: $e4
    cp [hl]                                       ; $6958: $be
    pop hl                                        ; $6959: $e1
    ld a, d                                       ; $695a: $7a
    pop hl                                        ; $695b: $e1
    ld h, b                                       ; $695c: $60

jr_056_695d:
    add b                                         ; $695d: $80
    rst $38                                       ; $695e: $ff
    db $ec                                        ; $695f: $ec
    db $eb                                        ; $6960: $eb
    ld c, c                                       ; $6961: $49
    ld c, b                                       ; $6962: $48
    jr nc, jr_056_698c                            ; $6963: $30 $27

    jr nc, @+$6d                                  ; $6965: $30 $6b

    sub e                                         ; $6967: $93
    ret nz                                        ; $6968: $c0

    ldh [$fd], a                                  ; $6969: $e0 $fd
    pop hl                                        ; $696b: $e1
    sub l                                         ; $696c: $95
    cp a                                          ; $696d: $bf
    db $e3                                        ; $696e: $e3
    jp z, $1aff                                   ; $696f: $ca $ff $1a

    add sp, -$19                                  ; $6972: $e8 $e7
    ld d, c                                       ; $6974: $51
    add c                                         ; $6975: $81
    ldh [rOCPD], a                                ; $6976: $e0 $6b
    ld l, d                                       ; $6978: $6a
    ld a, $e0                                     ; $6979: $3e $e0
    cp a                                          ; $697b: $bf
    add sp, -$36                                  ; $697c: $e8 $ca
    rst $38                                       ; $697e: $ff
    cp $c0                                        ; $697f: $fe $c0
    ld [$6b6d], a                                 ; $6981: $ea $6d $6b

jr_056_6984:
    ld l, d                                       ; $6984: $6a
    ld l, d                                       ; $6985: $6a
    sbc c                                         ; $6986: $99
    sbc b                                         ; $6987: $98
    sbc h                                         ; $6988: $9c
    or b                                          ; $6989: $b0
    rst $38                                       ; $698a: $ff
    pop hl                                        ; $698b: $e1

jr_056_698c:
    ld a, [hl]                                    ; $698c: $7e
    db $e3                                        ; $698d: $e3
    jp z, Jump_056_40ff                           ; $698e: $ca $ff $40

    jp hl                                         ; $6991: $e9


    ld l, l                                       ; $6992: $6d
    ld l, l                                       ; $6993: $6d
    cp a                                          ; $6994: $bf
    pop hl                                        ; $6995: $e1
    ld l, b                                       ; $6996: $68
    ld a, a                                       ; $6997: $7f
    ld l, b                                       ; $6998: $68
    ld l, b                                       ; $6999: $68
    ld l, d                                       ; $699a: $6a
    ld l, d                                       ; $699b: $6a
    ld l, l                                       ; $699c: $6d
    sbc c                                         ; $699d: $99
    sbc b                                         ; $699e: $98
    dec a                                         ; $699f: $3d
    ldh [$99], a                                  ; $69a0: $e0 $99
    ld e, a                                       ; $69a2: $5f
    jp z, $c0ff                                   ; $69a3: $ca $ff $c0

    ret                                           ; $69a6: $c9


    ld l, l                                       ; $69a7: $6d
    ld l, l                                       ; $69a8: $6d
    ld a, $e1                                     ; $69a9: $3e $e1
    ret nz                                        ; $69ab: $c0

    pop hl                                        ; $69ac: $e1
    ld l, l                                       ; $69ad: $6d
    ld a, a                                       ; $69ae: $7f
    jr nc, @+$6f                                  ; $69af: $30 $6d

    ld l, l                                       ; $69b1: $6d
    sub h                                         ; $69b2: $94
    sub l                                         ; $69b3: $95
    ld sp, $ca5e                                  ; $69b4: $31 $5e $ca
    rst $38                                       ; $69b7: $ff
    ld [hl], $40                                  ; $69b8: $36 $40
    ret z                                         ; $69ba: $c8

    ld c, c                                       ; $69bb: $49
    ld b, d                                       ; $69bc: $42
    ld a, $e0                                     ; $69bd: $3e $e0
    ld l, l                                       ; $69bf: $6d
    ld l, e                                       ; $69c0: $6b
    add b                                         ; $69c1: $80
    ldh [$c1], a                                  ; $69c2: $e0 $c1
    pop hl                                        ; $69c4: $e1
    rra                                           ; $69c5: $1f
    ld l, l                                       ; $69c6: $6d
    jr nc, jr_056_695d                            ; $69c7: $30 $94

    ld c, c                                       ; $69c9: $49
    ld sp, $ffca                                  ; $69ca: $31 $ca $ff
    nop                                           ; $69cd: $00
    ret z                                         ; $69ce: $c8

    ccf                                           ; $69cf: $3f
    ret nz                                        ; $69d0: $c0

    sbc $3e                                       ; $69d1: $de $3e
    ldh [$6d], a                                  ; $69d3: $e0 $6d
    ld l, h                                       ; $69d5: $6c
    ld l, h                                       ; $69d6: $6c
    ld l, h                                       ; $69d7: $6c
    pop bc                                        ; $69d8: $c1
    ld [c], a                                     ; $69d9: $e2
    jr nc, jr_056_6a0c                            ; $69da: $30 $30

    sbc c                                         ; $69dc: $99
    add hl, sp                                    ; $69dd: $39
    ret nz                                        ; $69de: $c0

    rst $38                                       ; $69df: $ff
    ret nz                                        ; $69e0: $c0

    ld [$324d], a                                 ; $69e1: $ea $4d $32
    ret z                                         ; $69e4: $c8

    db $e3                                        ; $69e5: $e3
    pop bc                                        ; $69e6: $c1
    db $e4                                        ; $69e7: $e4
    ld l, l                                       ; $69e8: $6d
    jp Jump_000_3748                              ; $69e9: $c3 $48 $37


    jp z, $80ff                                   ; $69ec: $ca $ff $80

    jp hl                                         ; $69ef: $e9


    cp a                                          ; $69f0: $bf
    pop hl                                        ; $69f1: $e1
    pop bc                                        ; $69f2: $c1
    add sp, $6d                                   ; $69f3: $e8 $6d
    ld l, l                                       ; $69f5: $6d
    ld l, c                                       ; $69f6: $69
    ld d, c                                       ; $69f7: $51
    jp z, $e8ff                                   ; $69f8: $ca $ff $e8

    rst $20                                       ; $69fb: $e7
    add hl, hl                                    ; $69fc: $29
    cp a                                          ; $69fd: $bf
    pop hl                                        ; $69fe: $e1
    ld a, [hl-]                                   ; $69ff: $3a
    ld b, h                                       ; $6a00: $44
    pop bc                                        ; $6a01: $c1
    add sp, -$3c                                  ; $6a02: $e8 $c4
    add b                                         ; $6a04: $80
    rst $38                                       ; $6a05: $ff
    ld [$22e9], a                                 ; $6a06: $ea $e9 $22
    cp a                                          ; $6a09: $bf
    pop hl                                        ; $6a0a: $e1
    cp [hl]                                       ; $6a0b: $be

jr_056_6a0c:
    pop hl                                        ; $6a0c: $e1
    add d                                         ; $6a0d: $82
    push hl                                       ; $6a0e: $e5
    ld l, l                                       ; $6a0f: $6d
    add e                                         ; $6a10: $83
    add hl, sp                                    ; $6a11: $39
    ld [hl], b                                    ; $6a12: $70
    jp z, $e8ff                                   ; $6a13: $ca $ff $e8

    rst $20                                       ; $6a16: $e7
    jr nz, jr_056_6a3a                            ; $6a17: $20 $21

    dec d                                         ; $6a19: $15
    cp a                                          ; $6a1a: $bf
    pop hl                                        ; $6a1b: $e1
    ld a, h                                       ; $6a1c: $7c
    ldh [$3e], a                                  ; $6a1d: $e0 $3e
    ld a, b                                       ; $6a1f: $78
    jp nz, Jump_056_6d6d                          ; $6a20: $c2 $6d $6d

    ld [hl], c                                    ; $6a23: $71
    ld a, c                                       ; $6a24: $79
    xor [hl]                                      ; $6a25: $ae
    jp z, $c0ff                                   ; $6a26: $ca $ff $c0

    add sp, -$05                                  ; $6a29: $e8 $fb
    ld d, $17                                     ; $6a2b: $16 $17
    ret nz                                        ; $6a2d: $c0

    ld [c], a                                     ; $6a2e: $e2
    ld sp, $3e31                                  ; $6a2f: $31 $31 $3e
    ld a, [hl-]                                   ; $6a32: $3a
    ld d, h                                       ; $6a33: $54
    ld a, a                                       ; $6a34: $7f
    ld d, l                                       ; $6a35: $55
    ld d, h                                       ; $6a36: $54
    ld d, h                                       ; $6a37: $54
    ld l, [hl]                                    ; $6a38: $6e
    ld a, c                                       ; $6a39: $79

jr_056_6a3a:
    add b                                         ; $6a3a: $80
    add b                                         ; $6a3b: $80
    jp z, Jump_000_00ff                           ; $6a3c: $ca $ff $00

    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff

Jump_056_6a47:
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    rst $38                                       ; $6a49: $ff
    rst $38                                       ; $6a4a: $ff
    rst $38                                       ; $6a4b: $ff
    rst $38                                       ; $6a4c: $ff
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    nop                                           ; $6a4f: $00
    rst $38                                       ; $6a50: $ff
    rst $38                                       ; $6a51: $ff
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff
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
    nop                                           ; $6a60: $00
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
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
    nop                                           ; $6a71: $00
    rst $38                                       ; $6a72: $ff
    rst $38                                       ; $6a73: $ff
    rst $38                                       ; $6a74: $ff
    rst $38                                       ; $6a75: $ff
    rst $38                                       ; $6a76: $ff
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
    nop                                           ; $6a82: $00
    rst $38                                       ; $6a83: $ff
    rst $38                                       ; $6a84: $ff
    rst $38                                       ; $6a85: $ff
    rst $38                                       ; $6a86: $ff
    rst $38                                       ; $6a87: $ff
    rst $38                                       ; $6a88: $ff
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    rst $38                                       ; $6a8b: $ff
    rst $38                                       ; $6a8c: $ff
    rst $38                                       ; $6a8d: $ff
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
    rst $38                                       ; $6a90: $ff
    rst $38                                       ; $6a91: $ff
    rst $38                                       ; $6a92: $ff
    nop                                           ; $6a93: $00
    rst $38                                       ; $6a94: $ff
    rst $38                                       ; $6a95: $ff
    rst $38                                       ; $6a96: $ff
    rst $38                                       ; $6a97: $ff
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    nop                                           ; $6aa4: $00
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    rst $38                                       ; $6aa9: $ff
    rst $38                                       ; $6aaa: $ff
    rst $38                                       ; $6aab: $ff
    rst $38                                       ; $6aac: $ff
    rst $38                                       ; $6aad: $ff
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    nop                                           ; $6ab5: $00
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    nop                                           ; $6ac6: $00
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    nop                                           ; $6ad7: $00
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    rst $38                                       ; $6add: $ff
    rst $38                                       ; $6ade: $ff
    rst $38                                       ; $6adf: $ff

Jump_056_6ae0:
    rst $38                                       ; $6ae0: $ff
    rst $38                                       ; $6ae1: $ff
    rst $38                                       ; $6ae2: $ff
    rst $38                                       ; $6ae3: $ff
    rst $38                                       ; $6ae4: $ff
    rst $38                                       ; $6ae5: $ff
    rst $38                                       ; $6ae6: $ff
    rst $38                                       ; $6ae7: $ff
    nop                                           ; $6ae8: $00
    rst $38                                       ; $6ae9: $ff
    rst $38                                       ; $6aea: $ff
    rst $38                                       ; $6aeb: $ff
    rst $38                                       ; $6aec: $ff
    rst $38                                       ; $6aed: $ff
    rst $38                                       ; $6aee: $ff
    rst $38                                       ; $6aef: $ff
    rst $38                                       ; $6af0: $ff
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    rst $38                                       ; $6af4: $ff
    rst $38                                       ; $6af5: $ff
    rst $38                                       ; $6af6: $ff
    rst $38                                       ; $6af7: $ff
    rst $38                                       ; $6af8: $ff
    nop                                           ; $6af9: $00
    rst $38                                       ; $6afa: $ff
    rst $38                                       ; $6afb: $ff
    rst $38                                       ; $6afc: $ff
    rst $38                                       ; $6afd: $ff
    rst $38                                       ; $6afe: $ff
    di                                            ; $6aff: $f3
    nop                                           ; $6b00: $00
    nop                                           ; $6b01: $00
    nop                                           ; $6b02: $00
    and l                                         ; $6b03: $a5
    nop                                           ; $6b04: $00
    rst $38                                       ; $6b05: $ff
    push hl                                       ; $6b06: $e5
    ld [hl-], a                                   ; $6b07: $32
    or $e6                                        ; $6b08: $f6 $e6
    rst $30                                       ; $6b0a: $f7
    rst $20                                       ; $6b0b: $e7
    dec [hl]                                      ; $6b0c: $35
    db $ec                                        ; $6b0d: $ec
    xor $37                                       ; $6b0e: $ee $37
    db $ec                                        ; $6b10: $ec
    jp c, $c7f0                                   ; $6b11: $da $f0 $c7

    add sp, $33                                   ; $6b14: $e8 $33
    ld sp, $f2e0                                  ; $6b16: $31 $e0 $f2
    ld [hl], $30                                  ; $6b19: $36 $30
    scf                                           ; $6b1b: $37
    cp a                                          ; $6b1c: $bf
    ld h, $20                                     ; $6b1d: $26 $20
    daa                                           ; $6b1f: $27
    db $10                                        ; $6b20: $10
    ld d, $17                                     ; $6b21: $16 $17
    jp nz, Jump_000_34f6                          ; $6b23: $c2 $f6 $34

    rst $38                                       ; $6b26: $ff
    ld [hl], $32                                  ; $6b27: $36 $32
    jr nc, jr_056_6b62                            ; $6b29: $30 $37

    ld sp, $3133                                  ; $6b2b: $31 $33 $31
    inc sp                                        ; $6b2e: $33
    nop                                           ; $6b2f: $00
    and b                                         ; $6b30: $a0
    ei                                            ; $6b31: $fb
    rst $38                                       ; $6b32: $ff
    rst $28                                       ; $6b33: $ef
    nop                                           ; $6b34: $00
    nop                                           ; $6b35: $00
    nop                                           ; $6b36: $00
    ccf                                           ; $6b37: $3f
    ld l, e                                       ; $6b38: $6b
    ld l, a                                       ; $6b39: $6f
    ld l, e                                       ; $6b3a: $6b
    ld [$eb6d], sp                                ; $6b3b: $08 $6d $eb
    ld l, [hl]                                    ; $6b3e: $6e
    ld [$c503], a                                 ; $6b3f: $ea $03 $c5
    ld b, $e2                                     ; $6b42: $06 $e2
    ld bc, $00a0                                  ; $6b44: $01 $a0 $00
    ld [$f003], a                                 ; $6b47: $ea $03 $f0
    inc bc                                        ; $6b4a: $03
    push bc                                       ; $6b4b: $c5
    ld b, $e2                                     ; $6b4c: $06 $e2
    ld bc, $023f                                  ; $6b4e: $01 $3f $02
    xor e                                         ; $6b51: $ab
    nop                                           ; $6b52: $00
    inc sp                                        ; $6b53: $33
    ld bc, $06c5                                  ; $6b54: $01 $c5 $06
    ld [$0825], sp                                ; $6b57: $08 $25 $08
    dec h                                         ; $6b5a: $25
    ld [$0825], sp                                ; $6b5b: $08 $25 $08
    dec h                                         ; $6b5e: $25
    ld [$0825], sp                                ; $6b5f: $08 $25 $08

jr_056_6b62:
    dec h                                         ; $6b62: $25
    ld [$0825], sp                                ; $6b63: $08 $25 $08
    dec h                                         ; $6b66: $25
    ld [$0825], sp                                ; $6b67: $08 $25 $08
    dec h                                         ; $6b6a: $25
    ld [$0825], sp                                ; $6b6b: $08 $25 $08
    dec h                                         ; $6b6e: $25
    ei                                            ; $6b6f: $fb
    ld a, [bc]                                    ; $6b70: $0a
    dec bc                                        ; $6b71: $0b
    rst $38                                       ; $6b72: $ff
    db $e4                                        ; $6b73: $e4
    ld l, e                                       ; $6b74: $6b
    dec bc                                        ; $6b75: $0b
    dec bc                                        ; $6b76: $0b
    ld c, e                                       ; $6b77: $4b
    dec bc                                        ; $6b78: $0b
    rla                                           ; $6b79: $17
    dec hl                                        ; $6b7a: $2b
    dec hl                                        ; $6b7b: $2b
    dec bc                                        ; $6b7c: $0b
    rst $28                                       ; $6b7d: $ef
    ldh [$0c], a                                  ; $6b7e: $e0 $0c
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    rst $20                                       ; $6b82: $e7
    and $c2                                       ; $6b83: $e6 $c2
    push hl                                       ; $6b85: $e5
    cp a                                          ; $6b86: $bf
    ld l, e                                       ; $6b87: $6b
    ld l, e                                       ; $6b88: $6b
    dec bc                                        ; $6b89: $0b
    dec hl                                        ; $6b8a: $2b
    ld c, e                                       ; $6b8b: $4b
    ld c, e                                       ; $6b8c: $4b
    cp [hl]                                       ; $6b8d: $be
    ldh [$0b], a                                  ; $6b8e: $e0 $0b
    add e                                         ; $6b90: $83
    dec bc                                        ; $6b91: $0b
    ld a, [bc]                                    ; $6b92: $0a
    jp z, $c0ff                                   ; $6b93: $ca $ff $c0

    add sp, $7f                                   ; $6b96: $e8 $7f
    pop hl                                        ; $6b98: $e1
    jp nz, $84e0                                  ; $6b99: $c2 $e0 $84

    pop hl                                        ; $6b9c: $e1
    dec hl                                        ; $6b9d: $2b
    ld c, [hl]                                    ; $6b9e: $4e
    cp [hl]                                       ; $6b9f: $be
    ldh [$0b], a                                  ; $6ba0: $e0 $0b
    dec hl                                        ; $6ba2: $2b
    ld a, [bc]                                    ; $6ba3: $0a
    ret nz                                        ; $6ba4: $c0

    rst $38                                       ; $6ba5: $ff
    jp hl                                         ; $6ba6: $e9


    add sp, $0a                                   ; $6ba7: $e8 $0a
    ld c, a                                       ; $6ba9: $4f
    ldh [rNR52], a                                ; $6baa: $e0 $26
    jp nz, Jump_056_4be0                          ; $6bac: $c2 $e0 $4b

    ld c, e                                       ; $6baf: $4b
    pop bc                                        ; $6bb0: $c1
    pop hl                                        ; $6bb1: $e1
    cp a                                          ; $6bb2: $bf
    ld [c], a                                     ; $6bb3: $e2
    ld c, e                                       ; $6bb4: $4b
    ld b, b                                       ; $6bb5: $40
    rst $38                                       ; $6bb6: $ff
    ld b, b                                       ; $6bb7: $40
    db $eb                                        ; $6bb8: $eb
    ld a, [de]                                    ; $6bb9: $1a
    ld b, l                                       ; $6bba: $45
    ldh [$0b], a                                  ; $6bbb: $e0 $0b
    add d                                         ; $6bbd: $82
    ld [c], a                                     ; $6bbe: $e2
    dec hl                                        ; $6bbf: $2b
    ld c, e                                       ; $6bc0: $4b
    db $fc                                        ; $6bc1: $fc
    pop bc                                        ; $6bc2: $c1
    ret nz                                        ; $6bc3: $c0

    rst $38                                       ; $6bc4: $ff
    nop                                           ; $6bc5: $00
    db $eb                                        ; $6bc6: $eb
    nop                                           ; $6bc7: $00
    pop bc                                        ; $6bc8: $c1
    ld [c], a                                     ; $6bc9: $e2
    ret nz                                        ; $6bca: $c0

    db $e3                                        ; $6bcb: $e3
    cp b                                          ; $6bcc: $b8
    pop hl                                        ; $6bcd: $e1
    cp h                                          ; $6bce: $bc
    ldh [$ca], a                                  ; $6bcf: $e0 $ca
    rst $38                                       ; $6bd1: $ff
    ret nz                                        ; $6bd2: $c0

    ld [$c27e], a                                 ; $6bd3: $ea $7e $c2
    add b                                         ; $6bd6: $80
    db $e4                                        ; $6bd7: $e4
    ld b, $7e                                     ; $6bd8: $06 $7e
    ldh [$0b], a                                  ; $6bda: $e0 $0b
    ld c, e                                       ; $6bdc: $4b
    jp z, $e8ff                                   ; $6bdd: $ca $ff $e8

    rst $20                                       ; $6be0: $e7

Call_056_6be1:
    rst $08                                       ; $6be1: $cf
    pop hl                                        ; $6be2: $e1
    ld a, [hl]                                    ; $6be3: $7e
    push bc                                       ; $6be4: $c5
    scf                                           ; $6be5: $37
    pop hl                                        ; $6be6: $e1
    ld [$c139], sp                                ; $6be7: $08 $39 $c1
    jp z, Jump_056_40ff                           ; $6bea: $ca $ff $40

    ret z                                         ; $6bed: $c8

    dec hl                                        ; $6bee: $2b
    add b                                         ; $6bef: $80
    db $e3                                        ; $6bf0: $e3
    cp a                                          ; $6bf1: $bf
    db $e4                                        ; $6bf2: $e4
    add b                                         ; $6bf3: $80
    pop hl                                        ; $6bf4: $e1
    set 7, a                                      ; $6bf5: $cb $ff
    ld [hl+], a                                   ; $6bf7: $22
    ret nz                                        ; $6bf8: $c0

    ld [$bf4b], a                                 ; $6bf9: $ea $4b $bf
    jp hl                                         ; $6bfc: $e9


    pop bc                                        ; $6bfd: $c1
    rst $38                                       ; $6bfe: $ff
    ret nz                                        ; $6bff: $c0

    xor [hl]                                      ; $6c00: $ae
    dec hl                                        ; $6c01: $2b
    cp a                                          ; $6c02: $bf
    jp $a37d                                      ; $6c03: $c3 $7d $a3


    ld b, b                                       ; $6c06: $40
    pop bc                                        ; $6c07: $c1
    rst $38                                       ; $6c08: $ff
    add b                                         ; $6c09: $80
    xor l                                         ; $6c0a: $ad
    adc e                                         ; $6c0b: $8b
    and b                                         ; $6c0c: $a0
    ld a, [hl]                                    ; $6c0d: $7e
    jp $a182                                      ; $6c0e: $c3 $82 $a1


    pop bc                                        ; $6c11: $c1
    ld [c], a                                     ; $6c12: $e2
    ld c, h                                       ; $6c13: $4c
    jp z, $b8ff                                   ; $6c14: $ca $ff $b8

    ret nz                                        ; $6c17: $c0

    jp hl                                         ; $6c18: $e9


    ld c, l                                       ; $6c19: $4d
    and c                                         ; $6c1a: $a1
    push bc                                       ; $6c1b: $c5
    pop hl                                        ; $6c1c: $e1
    inc c                                         ; $6c1d: $0c
    inc c                                         ; $6c1e: $0c
    inc l                                         ; $6c1f: $2c
    rst $38                                       ; $6c20: $ff
    ldh [$4c], a                                  ; $6c21: $e0 $4c
    ld h, e                                       ; $6c23: $63
    inc c                                         ; $6c24: $0c
    ld c, h                                       ; $6c25: $4c
    ret nz                                        ; $6c26: $c0

    rst $38                                       ; $6c27: $ff
    nop                                           ; $6c28: $00
    xor a                                         ; $6c29: $af
    ld c, c                                       ; $6c2a: $49
    and $6c                                       ; $6c2b: $e6 $6c
    ld c, h                                       ; $6c2d: $4c
    ret nz                                        ; $6c2e: $c0

    rst $38                                       ; $6c2f: $ff
    nop                                           ; $6c30: $00
    ret nz                                        ; $6c31: $c0

    adc h                                         ; $6c32: $8c
    ret                                           ; $6c33: $c9


    and c                                         ; $6c34: $a1
    ld c, c                                       ; $6c35: $49
    pop hl                                        ; $6c36: $e1
    rst $00                                       ; $6c37: $c7
    ld [c], a                                     ; $6c38: $e2
    ret nz                                        ; $6c39: $c0

    rst $38                                       ; $6c3a: $ff
    ret nz                                        ; $6c3b: $c0

    pop af                                        ; $6c3c: $f1
    pop bc                                        ; $6c3d: $c1
    db $e3                                        ; $6c3e: $e3
    db $fd                                        ; $6c3f: $fd
    push hl                                       ; $6c40: $e5
    nop                                           ; $6c41: $00
    jp z, $ffff                                   ; $6c42: $ca $ff $ff

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
    rst $38                                       ; $6c51: $ff
    nop                                           ; $6c52: $00
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
    rst $38                                       ; $6c62: $ff
    nop                                           ; $6c63: $00
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    rst $38                                       ; $6c73: $ff
    nop                                           ; $6c74: $00
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
    rst $38                                       ; $6c84: $ff
    nop                                           ; $6c85: $00
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
    rst $38                                       ; $6c95: $ff
    nop                                           ; $6c96: $00
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
    rst $38                                       ; $6ca6: $ff
    nop                                           ; $6ca7: $00
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
    rst $38                                       ; $6cb7: $ff
    nop                                           ; $6cb8: $00
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
    rst $38                                       ; $6cc8: $ff
    nop                                           ; $6cc9: $00
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
    rst $38                                       ; $6cd9: $ff
    nop                                           ; $6cda: $00
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
    rst $38                                       ; $6cea: $ff
    nop                                           ; $6ceb: $00
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
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
    nop                                           ; $6cfc: $00
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    di                                            ; $6d04: $f3
    nop                                           ; $6d05: $00
    nop                                           ; $6d06: $00

Jump_056_6d07:
    nop                                           ; $6d07: $00
    ei                                            ; $6d08: $fb
    ld e, d                                       ; $6d09: $5a
    ld e, e                                       ; $6d0a: $5b
    rst $38                                       ; $6d0b: $ff
    pop hl                                        ; $6d0c: $e1
    ld e, h                                       ; $6d0d: $5c
    ld e, l                                       ; $6d0e: $5d
    ld sp, $564d                                  ; $6d0f: $31 $4d $56
    cp a                                          ; $6d12: $bf
    ld d, a                                       ; $6d13: $57
    ld c, l                                       ; $6d14: $4d
    ld sp, $5c5d                                  ; $6d15: $31 $5d $5c
    ld e, e                                       ; $6d18: $5b
    rst $28                                       ; $6d19: $ef
    ldh [rP1], a                                  ; $6d1a: $e0 $00
    ld hl, sp-$01                                 ; $6d1c: $f8 $ff
    rst $38                                       ; $6d1e: $ff
    rst $20                                       ; $6d1f: $e7
    and $c1                                       ; $6d20: $e6 $c1
    ld [c], a                                     ; $6d22: $e2
    ld h, b                                       ; $6d23: $60
    ld sp, $454d                                  ; $6d24: $31 $4d $45
    ld b, h                                       ; $6d27: $44
    rst $38                                       ; $6d28: $ff
    jr nc, @+$6c                                  ; $6d29: $30 $6a

    ld b, h                                       ; $6d2b: $44
    ld b, l                                       ; $6d2c: $45
    ld c, l                                       ; $6d2d: $4d
    ld sp, $5b60                                  ; $6d2e: $31 $60 $5b
    and e                                         ; $6d31: $a3
    ld e, e                                       ; $6d32: $5b
    ld e, d                                       ; $6d33: $5a
    jp z, $c0ff                                   ; $6d34: $ca $ff $c0

    add sp, $7f                                   ; $6d37: $e8 $7f
    ldh [$60], a                                  ; $6d39: $e0 $60
    jp nz, Jump_056_6ae0                          ; $6d3b: $c2 $e0 $6a

    cp a                                          ; $6d3e: $bf
    jr nc, jr_056_6dab                            ; $6d3f: $30 $6a

    ld l, d                                       ; $6d41: $6a
    ld l, l                                       ; $6d42: $6d
    ld l, l                                       ; $6d43: $6d
    ld [hl-], a                                   ; $6d44: $32
    cp a                                          ; $6d45: $bf
    ldh [$5a], a                                  ; $6d46: $e0 $5a
    db $fc                                        ; $6d48: $fc
    ret nz                                        ; $6d49: $c0

    rst $38                                       ; $6d4a: $ff
    jp hl                                         ; $6d4b: $e9


    add sp, $5a                                   ; $6d4c: $e8 $5a
    ld e, e                                       ; $6d4e: $5b
    ld e, d                                       ; $6d4f: $5a
    ld h, b                                       ; $6d50: $60
    ld c, l                                       ; $6d51: $4d
    inc sp                                        ; $6d52: $33
    db $fd                                        ; $6d53: $fd
    ld l, d                                       ; $6d54: $6a
    pop bc                                        ; $6d55: $c1
    db $e3                                        ; $6d56: $e3
    ld l, l                                       ; $6d57: $6d
    ld l, l                                       ; $6d58: $6d
    inc sp                                        ; $6d59: $33
    ld c, l                                       ; $6d5a: $4d
    ld sp, $fc5f                                  ; $6d5b: $31 $5f $fc
    ld b, b                                       ; $6d5e: $40
    rst $38                                       ; $6d5f: $ff
    ld b, b                                       ; $6d60: $40
    ld [$4d60], a                                 ; $6d61: $ea $60 $4d
    ld [hl-], a                                   ; $6d64: $32
    ld l, c                                       ; $6d65: $69
    ld l, c                                       ; $6d66: $69
    jr nc, @+$01                                  ; $6d67: $30 $ff

    ld l, c                                       ; $6d69: $69
    ld l, c                                       ; $6d6a: $69
    ld l, e                                       ; $6d6b: $6b
    ld l, e                                       ; $6d6c: $6b

Jump_056_6d6d:
    ld l, e                                       ; $6d6d: $6b
    jr nc, jr_056_6da0                            ; $6d6e: $30 $30

    jr nc, jr_056_6d79                            ; $6d70: $30 $07

    add hl, sp                                    ; $6d72: $39
    ld sp, $c05e                                  ; $6d73: $31 $5e $c0
    rst $38                                       ; $6d76: $ff
    nop                                           ; $6d77: $00
    jp hl                                         ; $6d78: $e9


jr_056_6d79:
    pop bc                                        ; $6d79: $c1
    ldh [$c3], a                                  ; $6d7a: $e0 $c3
    ldh [$c0], a                                  ; $6d7c: $e0 $c0
    and $e7                                       ; $6d7e: $e6 $e7
    dec [hl]                                      ; $6d80: $35
    ld c, l                                       ; $6d81: $4d
    ld h, c                                       ; $6d82: $61
    ret nz                                        ; $6d83: $c0

    rst $38                                       ; $6d84: $ff
    jp hl                                         ; $6d85: $e9


    add sp, $60                                   ; $6d86: $e8 $60
    ld sp, $3d39                                  ; $6d88: $31 $39 $3d
    jr nc, @-$3e                                  ; $6d8b: $30 $c0

    jp hl                                         ; $6d8d: $e9


    jr nc, jr_056_6de1                            ; $6d8e: $30 $51

    ld sp, $ca5f                                  ; $6d90: $31 $5f $ca
    rst $38                                       ; $6d93: $ff
    add sp, -$19                                  ; $6d94: $e8 $e7
    rst $20                                       ; $6d96: $e7
    ld e, b                                       ; $6d97: $58
    or b                                          ; $6d98: $b0
    dec [hl]                                      ; $6d99: $35
    ld c, d                                       ; $6d9a: $4a
    ldh [rP1], a                                  ; $6d9b: $e0 $00
    push hl                                       ; $6d9d: $e5
    jr nc, jr_056_6dd0                            ; $6d9e: $30 $30

jr_056_6da0:
    ld b, d                                       ; $6da0: $42
    rst $20                                       ; $6da1: $e7
    ld c, c                                       ; $6da2: $49
    ld sp, $ca5e                                  ; $6da3: $31 $5e $ca
    rst $38                                       ; $6da6: $ff
    add sp, -$19                                  ; $6da7: $e8 $e7
    add b                                         ; $6da9: $80
    ld a, d                                       ; $6daa: $7a

jr_056_6dab:
    ld l, d                                       ; $6dab: $6a
    inc a                                         ; $6dac: $3c
    adc d                                         ; $6dad: $8a
    pop hl                                        ; $6dae: $e1

jr_056_6daf:
    cp a                                          ; $6daf: $bf
    and $39                                       ; $6db0: $e6 $39
    ld sp, $2931                                  ; $6db2: $31 $31 $29
    jp z, $c0ff                                   ; $6db5: $ca $ff $c0

    add sp, $33                                   ; $6db8: $e8 $33
    halt                                          ; $6dba: $76
    ld b, d                                       ; $6dbb: $42
    cp a                                          ; $6dbc: $bf
    jp hl                                         ; $6dbd: $e9


    ccf                                           ; $6dbe: $3f
    ret nz                                        ; $6dbf: $c0

    add hl, hl                                    ; $6dc0: $29
    daa                                           ; $6dc1: $27
    jp z, $80ff                                   ; $6dc2: $ca $ff $80

    add sp, -$1d                                  ; $6dc5: $e8 $e3
    add b                                         ; $6dc7: $80
    add e                                         ; $6dc8: $83
    ld b, e                                       ; $6dc9: $43
    ret nz                                        ; $6dca: $c0

    dec a                                         ; $6dcb: $3d
    db $e4                                        ; $6dcc: $e4
    cp a                                          ; $6dcd: $bf
    and c                                         ; $6dce: $a1
    add hl, hl                                    ; $6dcf: $29

jr_056_6dd0:
    daa                                           ; $6dd0: $27
    db $10                                        ; $6dd1: $10
    db $ec                                        ; $6dd2: $ec
    jp z, $c0ff                                   ; $6dd3: $ca $ff $c0

    jp hl                                         ; $6dd6: $e9


    ld a, c                                       ; $6dd7: $79
    ld [hl], c                                    ; $6dd8: $71
    cp a                                          ; $6dd9: $bf
    pop hl                                        ; $6dda: $e1
    ld b, h                                       ; $6ddb: $44
    ld b, l                                       ; $6ddc: $45
    ld d, [hl]                                    ; $6ddd: $56
    db $e4                                        ; $6dde: $e4
    ccf                                           ; $6ddf: $3f
    and c                                         ; $6de0: $a1

jr_056_6de1:
    pop bc                                        ; $6de1: $c1
    pop hl                                        ; $6de2: $e1
    jr nz, jr_056_6daf                            ; $6de3: $20 $ca

jr_056_6de5:
    rst $38                                       ; $6de5: $ff
    add b                                         ; $6de6: $80
    jp hl                                         ; $6de7: $e9


    add b                                         ; $6de8: $80
    halt                                          ; $6de9: $76
    ld d, h                                       ; $6dea: $54
    ld a, $c4                                     ; $6deb: $3e $c4
    ldh [rKEY1], a                                ; $6ded: $e0 $4d
    ld sp, $1211                                  ; $6def: $31 $11 $12
    inc d                                         ; $6df2: $14
    rst $38                                       ; $6df3: $ff
    ldh [$c1], a                                  ; $6df4: $e0 $c1
    ldh [$bc], a                                  ; $6df6: $e0 $bc
    ret nz                                        ; $6df8: $c0

    rst $38                                       ; $6df9: $ff
    ret nz                                        ; $6dfa: $c0

    db $eb                                        ; $6dfb: $eb
    add b                                         ; $6dfc: $80
    and c                                         ; $6dfd: $a1
    ld sp, $c231                                  ; $6dfe: $31 $31 $c2
    ldh [rNR42], a                                ; $6e01: $e0 $21
    adc e                                         ; $6e03: $8b
    ld [hl+], a                                   ; $6e04: $22
    inc h                                         ; $6e05: $24
    rst $38                                       ; $6e06: $ff
    ldh [rNR41], a                                ; $6e07: $e0 $20
    rst $38                                       ; $6e09: $ff
    ldh [$ca], a                                  ; $6e0a: $e0 $ca
    rst $38                                       ; $6e0c: $ff
    add b                                         ; $6e0d: $80
    ld [$0da8], a                                 ; $6e0e: $ea $a8 $0d
    xor h                                         ; $6e11: $ac
    adc h                                         ; $6e12: $8c
    ret nz                                        ; $6e13: $c0

    ld hl, $c622                                  ; $6e14: $21 $22 $c6
    pop hl                                        ; $6e17: $e1
    db $fc                                        ; $6e18: $fc
    db $e3                                        ; $6e19: $e3
    jp z, Jump_056_40ff                           ; $6e1a: $ca $ff $40

    ld [$a005], a                                 ; $6e1d: $ea $05 $a0
    pop bc                                        ; $6e20: $c1
    pop hl                                        ; $6e21: $e1
    jr z, jr_056_6de5                             ; $6e22: $28 $c1

    rst $20                                       ; $6e24: $e7
    ret nz                                        ; $6e25: $c0

    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    rst $38                                       ; $6e28: $ff
    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    nop                                           ; $6e2d: $00
    rst $38                                       ; $6e2e: $ff
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    rst $38                                       ; $6e31: $ff
    rst $38                                       ; $6e32: $ff
    rst $38                                       ; $6e33: $ff
    rst $38                                       ; $6e34: $ff
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    rst $38                                       ; $6e38: $ff
    rst $38                                       ; $6e39: $ff
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    nop                                           ; $6e3e: $00
    rst $38                                       ; $6e3f: $ff
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
    nop                                           ; $6e4f: $00
    rst $38                                       ; $6e50: $ff
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
    nop                                           ; $6e60: $00
    rst $38                                       ; $6e61: $ff
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
    nop                                           ; $6e71: $00
    rst $38                                       ; $6e72: $ff
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
    nop                                           ; $6e82: $00
    rst $38                                       ; $6e83: $ff
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
    nop                                           ; $6e93: $00
    rst $38                                       ; $6e94: $ff
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
    nop                                           ; $6ea4: $00
    rst $38                                       ; $6ea5: $ff
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
    nop                                           ; $6eb5: $00
    rst $38                                       ; $6eb6: $ff
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
    nop                                           ; $6ec6: $00
    rst $38                                       ; $6ec7: $ff
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
    rst $38                                       ; $6ed5: $ff
    rst $38                                       ; $6ed6: $ff
    nop                                           ; $6ed7: $00
    rst $38                                       ; $6ed8: $ff
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    rst $38                                       ; $6edf: $ff
    rst $38                                       ; $6ee0: $ff
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    rst $38                                       ; $6ee6: $ff
    db $f4                                        ; $6ee7: $f4
    nop                                           ; $6ee8: $00
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00
    and l                                         ; $6eeb: $a5
    nop                                           ; $6eec: $00
    rst $38                                       ; $6eed: $ff
    push hl                                       ; $6eee: $e5
    ld [hl-], a                                   ; $6eef: $32
    or $e6                                        ; $6ef0: $f6 $e6
    rst $30                                       ; $6ef2: $f7
    rst $20                                       ; $6ef3: $e7
    dec [hl]                                      ; $6ef4: $35
    db $ec                                        ; $6ef5: $ec
    xor $37                                       ; $6ef6: $ee $37
    db $ec                                        ; $6ef8: $ec
    jp c, $c7f0                                   ; $6ef9: $da $f0 $c7

    add sp, $33                                   ; $6efc: $e8 $33
    ld sp, $f2e0                                  ; $6efe: $31 $e0 $f2
    ld [hl], $30                                  ; $6f01: $36 $30
    scf                                           ; $6f03: $37
    cp a                                          ; $6f04: $bf
    ld h, $20                                     ; $6f05: $26 $20
    daa                                           ; $6f07: $27
    db $10                                        ; $6f08: $10
    ld d, $17                                     ; $6f09: $16 $17
    jp nz, Jump_000_34f6                          ; $6f0b: $c2 $f6 $34

    rst $38                                       ; $6f0e: $ff
    ld [hl], $32                                  ; $6f0f: $36 $32
    jr nc, jr_056_6f4a                            ; $6f11: $30 $37

    ld sp, $3133                                  ; $6f13: $31 $33 $31
    inc sp                                        ; $6f16: $33
    nop                                           ; $6f17: $00
    and b                                         ; $6f18: $a0
    ei                                            ; $6f19: $fb
    rst $38                                       ; $6f1a: $ff
    rst $28                                       ; $6f1b: $ef
    nop                                           ; $6f1c: $00
    nop                                           ; $6f1d: $00
    nop                                           ; $6f1e: $00
    daa                                           ; $6f1f: $27
    ld l, a                                       ; $6f20: $6f
    ld d, a                                       ; $6f21: $57
    ld l, a                                       ; $6f22: $6f
    jr c, jr_056_6f96                             ; $6f23: $38 $71

    rrca                                          ; $6f25: $0f
    ld [hl], e                                    ; $6f26: $73
    ld [$c503], a                                 ; $6f27: $ea $03 $c5
    ld b, $e2                                     ; $6f2a: $06 $e2
    ld bc, $00a0                                  ; $6f2c: $01 $a0 $00
    ld [$f003], a                                 ; $6f2f: $ea $03 $f0
    inc bc                                        ; $6f32: $03
    push bc                                       ; $6f33: $c5
    ld b, $e2                                     ; $6f34: $06 $e2
    ld bc, $023f                                  ; $6f36: $01 $3f $02
    xor e                                         ; $6f39: $ab
    nop                                           ; $6f3a: $00
    inc sp                                        ; $6f3b: $33
    ld bc, $06c5                                  ; $6f3c: $01 $c5 $06
    ld [$0825], sp                                ; $6f3f: $08 $25 $08
    dec h                                         ; $6f42: $25
    ld [$0825], sp                                ; $6f43: $08 $25 $08
    dec h                                         ; $6f46: $25
    ld [$0825], sp                                ; $6f47: $08 $25 $08

jr_056_6f4a:
    dec h                                         ; $6f4a: $25
    ld [$0825], sp                                ; $6f4b: $08 $25 $08
    dec h                                         ; $6f4e: $25
    ld [$0825], sp                                ; $6f4f: $08 $25 $08
    dec h                                         ; $6f52: $25
    ld [$0825], sp                                ; $6f53: $08 $25 $08
    dec h                                         ; $6f56: $25
    ld a, e                                       ; $6f57: $7b
    ld a, [bc]                                    ; $6f58: $0a
    dec bc                                        ; $6f59: $0b
    rst $38                                       ; $6f5a: $ff
    ldh [rOCPD], a                                ; $6f5b: $e0 $6b
    dec bc                                        ; $6f5d: $0b
    dec bc                                        ; $6f5e: $0b
    ld c, e                                       ; $6f5f: $4b
    ld hl, sp-$1f                                 ; $6f60: $f8 $e1
    ld e, $f4                                     ; $6f62: $1e $f4
    pop hl                                        ; $6f64: $e1
    dec hl                                        ; $6f65: $2b
    dec hl                                        ; $6f66: $2b
    dec bc                                        ; $6f67: $0b
    inc c                                         ; $6f68: $0c
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $20                                       ; $6f6b: $e7
    and $c2                                       ; $6f6c: $e6 $c2
    pop hl                                        ; $6f6e: $e1
    and $ff                                       ; $6f6f: $e6 $ff
    pop hl                                        ; $6f71: $e1
    ld c, e                                       ; $6f72: $4b
    ld c, e                                       ; $6f73: $4b
    cp [hl]                                       ; $6f74: $be
    db $e3                                        ; $6f75: $e3
    pop bc                                        ; $6f76: $c1
    ldh [$2b], a                                  ; $6f77: $e0 $2b
    inc c                                         ; $6f79: $0c
    ld c, h                                       ; $6f7a: $4c
    ld [hl], h                                    ; $6f7b: $74
    ret z                                         ; $6f7c: $c8

    rst $38                                       ; $6f7d: $ff
    and $e5                                       ; $6f7e: $e6 $e5
    ld l, e                                       ; $6f80: $6b
    pop bc                                        ; $6f81: $c1
    ldh [$2b], a                                  ; $6f82: $e0 $2b
    dec hl                                        ; $6f84: $2b
    dec hl                                        ; $6f85: $2b
    cp h                                          ; $6f86: $bc
    ldh [$37], a                                  ; $6f87: $e0 $37
    dec bc                                        ; $6f89: $0b
    ld l, e                                       ; $6f8a: $6b
    ld c, e                                       ; $6f8b: $4b
    cp b                                          ; $6f8c: $b8
    db $e4                                        ; $6f8d: $e4
    inc c                                         ; $6f8e: $0c
    inc l                                         ; $6f8f: $2c
    ret z                                         ; $6f90: $c8

    rst $38                                       ; $6f91: $ff
    add b                                         ; $6f92: $80
    rst $20                                       ; $6f93: $e7
    sbc b                                         ; $6f94: $98
    pop bc                                        ; $6f95: $c1

jr_056_6f96:
    pop hl                                        ; $6f96: $e1
    cp a                                          ; $6f97: $bf
    db $e3                                        ; $6f98: $e3
    ld b, h                                       ; $6f99: $44
    ldh [$2b], a                                  ; $6f9a: $e0 $2b
    dec hl                                        ; $6f9c: $2b
    ret nz                                        ; $6f9d: $c0

    rst $38                                       ; $6f9e: $ff
    ld b, b                                       ; $6f9f: $40
    db $ed                                        ; $6fa0: $ed
    ld c, e                                       ; $6fa1: $4b
    ld sp, $bf4b                                  ; $6fa2: $31 $4b $bf
    db $e3                                        ; $6fa5: $e3
    ei                                            ; $6fa6: $fb
    ret nz                                        ; $6fa7: $c0

    ret nz                                        ; $6fa8: $c0

    pop hl                                        ; $6fa9: $e1
    dec hl                                        ; $6faa: $2b
    ld c, e                                       ; $6fab: $4b
    ret nz                                        ; $6fac: $c0

    di                                            ; $6fad: $f3
    xor e                                         ; $6fae: $ab
    and $20                                       ; $6faf: $e6 $20
    and d                                         ; $6fb1: $a2
    db $e4                                        ; $6fb2: $e4
    sbc e                                         ; $6fb3: $9b
    db $e3                                        ; $6fb4: $e3
    rst $08                                       ; $6fb5: $cf
    ret nz                                        ; $6fb6: $c0

    dec b                                         ; $6fb7: $05
    ldh [$bd], a                                  ; $6fb8: $e0 $bd
    pop hl                                        ; $6fba: $e1
    ld l, e                                       ; $6fbb: $6b
    add c                                         ; $6fbc: $81
    ld [c], a                                     ; $6fbd: $e2
    add b                                         ; $6fbe: $80
    rst $38                                       ; $6fbf: $ff
    db $10                                        ; $6fc0: $10
    db $ec                                        ; $6fc1: $ec
    db $eb                                        ; $6fc2: $eb
    pop de                                        ; $6fc3: $d1
    ret nz                                        ; $6fc4: $c0

    ret nz                                        ; $6fc5: $c0

    ld [c], a                                     ; $6fc6: $e2
    ret nz                                        ; $6fc7: $c0

    ret nz                                        ; $6fc8: $c0

    ld l, e                                       ; $6fc9: $6b
    add c                                         ; $6fca: $81
    ld [c], a                                     ; $6fcb: $e2
    ret nz                                        ; $6fcc: $c0

    rst $38                                       ; $6fcd: $ff
    db $eb                                        ; $6fce: $eb
    ld [$4b41], a                                 ; $6fcf: $ea $41 $4b
    sub b                                         ; $6fd2: $90
    ret nz                                        ; $6fd3: $c0

    rst $38                                       ; $6fd4: $ff
    db $e3                                        ; $6fd5: $e3
    cp c                                          ; $6fd6: $b9
    and $c0                                       ; $6fd7: $e6 $c0
    rst $38                                       ; $6fd9: $ff
    ld b, b                                       ; $6fda: $40
    ret                                           ; $6fdb: $c9


    dec hl                                        ; $6fdc: $2b
    add hl, bc                                    ; $6fdd: $09
    db $e3                                        ; $6fde: $e3
    db $10                                        ; $6fdf: $10
    ld a, d                                       ; $6fe0: $7a
    and $f7                                       ; $6fe1: $e6 $f7
    and b                                         ; $6fe3: $a0
    jp z, $e8ff                                   ; $6fe4: $ca $ff $e8

    rst $20                                       ; $6fe7: $e7
    ld a, [bc]                                    ; $6fe8: $0a
    call nz, $ffa1                                ; $6fe9: $c4 $a1 $ff
    add sp, -$4f                                  ; $6fec: $e8 $b1
    and c                                         ; $6fee: $a1
    nop                                           ; $6fef: $00
    jp z, $c0ff                                   ; $6ff0: $ca $ff $c0

    xor b                                         ; $6ff3: $a8
    push bc                                       ; $6ff4: $c5
    and b                                         ; $6ff5: $a0
    cp a                                          ; $6ff6: $bf
    rst $20                                       ; $6ff7: $e7
    ld a, e                                       ; $6ff8: $7b
    and e                                         ; $6ff9: $a3
    jp z, Jump_000_27f7                           ; $6ffa: $ca $f7 $27

    pop hl                                        ; $6ffd: $e1
    inc hl                                        ; $6ffe: $23
    ld [c], a                                     ; $6fff: $e2
    nop                                           ; $7000: $00
    ld e, $e6                                     ; $7001: $1e $e6
    ld b, l                                       ; $7003: $45
    and b                                         ; $7004: $a0
    ld b, h                                       ; $7005: $44
    and b                                         ; $7006: $a0
    ld a, $c0                                     ; $7007: $3e $c0
    ld b, $e2                                     ; $7009: $06 $e2
    ret nz                                        ; $700b: $c0

    db $fd                                        ; $700c: $fd
    ld a, [hl-]                                   ; $700d: $3a
    ret z                                         ; $700e: $c8

    ret nz                                        ; $700f: $c0

    add sp, $08                                   ; $7010: $e8 $08
    add hl, bc                                    ; $7012: $09
    and d                                         ; $7013: $a2
    or a                                          ; $7014: $b7
    ret nz                                        ; $7015: $c0

    push af                                       ; $7016: $f5
    add b                                         ; $7017: $80
    ld l, h                                       ; $7018: $6c
    ld c, [hl]                                    ; $7019: $4e
    rst $38                                       ; $701a: $ff
    nop                                           ; $701b: $00
    xor [hl]                                      ; $701c: $ae
    add $86                                       ; $701d: $c6 $86
    dec b                                         ; $701f: $05
    rst $38                                       ; $7020: $ff
    nop                                           ; $7021: $00
    ret nz                                        ; $7022: $c0

    db $fd                                        ; $7023: $fd
    add c                                         ; $7024: $81
    rst $38                                       ; $7025: $ff
    add b                                         ; $7026: $80
    ei                                            ; $7027: $fb
    ret nc                                        ; $7028: $d0

    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    nop                                           ; $7032: $00
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    ei                                            ; $7039: $fb
    cp a                                          ; $703a: $bf
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    nop                                           ; $7043: $00
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    ld b, b                                       ; $7046: $40
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    ldh a, [$ef]                                  ; $704c: $f0 $ef
    inc sp                                        ; $704e: $33
    ld b, b                                       ; $704f: $40
    jr nc, jr_056_70b1                            ; $7050: $30 $5f

    cp a                                          ; $7052: $bf
    rst $38                                       ; $7053: $ff
    nop                                           ; $7054: $00
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    ret nz                                        ; $7057: $c0

    ld hl, sp+$0f                                 ; $7058: $f8 $0f
    rst $38                                       ; $705a: $ff
    ret nz                                        ; $705b: $c0

    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    ret nz                                        ; $705f: $c0

    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    nop                                           ; $7063: $00
    pop af                                        ; $7064: $f1
    inc bc                                        ; $7065: $03
    ld c, h                                       ; $7066: $4c
    ld c, h                                       ; $7067: $4c
    ret nz                                        ; $7068: $c0

    db $fc                                        ; $7069: $fc
    add hl, hl                                    ; $706a: $29
    ld h, l                                       ; $706b: $65
    sbc c                                         ; $706c: $99
    di                                            ; $706d: $f3
    add b                                         ; $706e: $80
    rst $38                                       ; $706f: $ff
    push hl                                       ; $7070: $e5
    ld b, a                                       ; $7071: $47
    rst $10                                       ; $7072: $d7
    ld a, [c]                                     ; $7073: $f2
    ld [$fa80], sp                                ; $7074: $08 $80 $fa
    add h                                         ; $7077: $84
    rst $20                                       ; $7078: $e7
    jp nz, Jump_000_2ce0                          ; $7079: $c2 $e0 $2c

    sub a                                         ; $707c: $97
    ldh a, [rSTAT]                                ; $707d: $f0 $41
    rst $18                                       ; $707f: $df
    pop hl                                        ; $7080: $e1
    inc b                                         ; $7081: $04
    ret nz                                        ; $7082: $c0

    db $f4                                        ; $7083: $f4
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    ldh [rOBP0], a                                ; $7086: $e0 $48
    rst $38                                       ; $7088: $ff
    ld b, b                                       ; $7089: $40
    ld sp, hl                                     ; $708a: $f9
    add d                                         ; $708b: $82
    rst $38                                       ; $708c: $ff
    ld a, h                                       ; $708d: $7c
    jp hl                                         ; $708e: $e9


    ld c, b                                       ; $708f: $48
    db $10                                        ; $7090: $10
    cp a                                          ; $7091: $bf
    cp $80                                        ; $7092: $fe $80
    add $60                                       ; $7094: $c6 $60
    nop                                           ; $7096: $00
    pop af                                        ; $7097: $f1
    ret nz                                        ; $7098: $c0

    rst $38                                       ; $7099: $ff
    and e                                         ; $709a: $a3
    daa                                           ; $709b: $27
    ret nz                                        ; $709c: $c0

    jp $e00f                                      ; $709d: $c3 $0f $e0


    inc l                                         ; $70a0: $2c
    inc l                                         ; $70a1: $2c
    set 4, c                                      ; $70a2: $cb $e1
    nop                                           ; $70a4: $00
    ld c, c                                       ; $70a5: $49
    pop bc                                        ; $70a6: $c1
    jp Jump_000_25fd                              ; $70a7: $c3 $fd $25


    sla e                                         ; $70aa: $cb $23
    inc hl                                        ; $70ac: $23
    ret nz                                        ; $70ad: $c0

    db $e3                                        ; $70ae: $e3
    adc c                                         ; $70af: $89
    db $e3                                        ; $70b0: $e3

jr_056_70b1:
    or $e7                                        ; $70b1: $f6 $e7
    adc h                                         ; $70b3: $8c
    push af                                       ; $70b4: $f5
    nop                                           ; $70b5: $00
    jp nc, $9be4                                  ; $70b6: $d2 $e4 $9b

    and d                                         ; $70b9: $a2
    ret nz                                        ; $70ba: $c0

    pop af                                        ; $70bb: $f1
    ld c, h                                       ; $70bc: $4c
    db $fd                                        ; $70bd: $fd
    ld d, d                                       ; $70be: $52
    xor $ae                                       ; $70bf: $ee $ae
    db $eb                                        ; $70c1: $eb
    add h                                         ; $70c2: $84
    xor d                                         ; $70c3: $aa
    ld [hl], a                                    ; $70c4: $77
    xor a                                         ; $70c5: $af
    nop                                           ; $70c6: $00
    pop hl                                        ; $70c7: $e1
    and c                                         ; $70c8: $a1
    db $dd                                        ; $70c9: $dd
    and e                                         ; $70ca: $a3
    ld e, e                                       ; $70cb: $5b
    and e                                         ; $70cc: $a3
    inc d                                         ; $70cd: $14
    and b                                         ; $70ce: $a0
    nop                                           ; $70cf: $00
    rst $38                                       ; $70d0: $ff
    ld hl, $9ccd                                  ; $70d1: $21 $cd $9c
    and l                                         ; $70d4: $a5
    ei                                            ; $70d5: $fb
    add l                                         ; $70d6: $85
    nop                                           ; $70d7: $00
    xor [hl]                                      ; $70d8: $ae
    jp hl                                         ; $70d9: $e9


    add d                                         ; $70da: $82
    rst $18                                       ; $70db: $df
    adc e                                         ; $70dc: $8b
    ld a, c                                       ; $70dd: $79
    add $9f                                       ; $70de: $c6 $9f
    xor b                                         ; $70e0: $a8
    ret c                                         ; $70e1: $d8

    add [hl]                                      ; $70e2: $86
    add c                                         ; $70e3: $81
    scf                                           ; $70e4: $37
    ld [c], a                                     ; $70e5: $e2
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    nop                                           ; $70e8: $00
    rst $38                                       ; $70e9: $ff
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    rst $38                                       ; $70ee: $ff
    rst $38                                       ; $70ef: $ff
    rst $38                                       ; $70f0: $ff
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    ld [hl], h                                    ; $70f7: $74
    ccf                                           ; $70f8: $3f
    nop                                           ; $70f9: $00
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff
    rst $38                                       ; $7100: $ff
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    nop                                           ; $710a: $00
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    rst $38                                       ; $710f: $ff
    rst $38                                       ; $7110: $ff
    rst $38                                       ; $7111: $ff
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    nop                                           ; $711b: $00
    rst $38                                       ; $711c: $ff
    rst $38                                       ; $711d: $ff
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    rst $38                                       ; $7122: $ff
    rst $38                                       ; $7123: $ff
    rst $38                                       ; $7124: $ff
    rst $38                                       ; $7125: $ff
    nop                                           ; $7126: $00
    cp a                                          ; $7127: $bf
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    rst $38                                       ; $712b: $ff
    nop                                           ; $712c: $00
    rst $38                                       ; $712d: $ff
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    rst $38                                       ; $7132: $ff
    add b                                         ; $7133: $80
    rrca                                          ; $7134: $0f
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    rst $38                                       ; $7138: $ff
    ld e, d                                       ; $7139: $5a
    ld e, e                                       ; $713a: $5b
    ld h, b                                       ; $713b: $60
    ld sp, $4d31                                  ; $713c: $31 $31 $4d
    ld d, [hl]                                    ; $713f: $56
    ld d, a                                       ; $7140: $57
    ld a, e                                       ; $7141: $7b
    ld c, l                                       ; $7142: $4d
    ld sp, $e4ff                                  ; $7143: $31 $ff $e4
    ld e, l                                       ; $7146: $5d
    ld e, h                                       ; $7147: $5c
    ld e, e                                       ; $7148: $5b
    nop                                           ; $7149: $00
    rst $38                                       ; $714a: $ff
    rst $38                                       ; $714b: $ff
    db $fc                                        ; $714c: $fc
    rst $20                                       ; $714d: $e7
    and $c1                                       ; $714e: $e6 $c1
    ldh [rKEY1], a                                ; $7150: $e0 $4d
    ld a, [hl-]                                   ; $7152: $3a
    ld b, h                                       ; $7153: $44
    ld l, d                                       ; $7154: $6a
    ld l, d                                       ; $7155: $6a
    ld b, h                                       ; $7156: $44
    ei                                            ; $7157: $fb

jr_056_7158:
    ld a, [hl-]                                   ; $7158: $3a
    sub a                                         ; $7159: $97
    cp [hl]                                       ; $715a: $be
    pop hl                                        ; $715b: $e1
    inc [hl]                                      ; $715c: $34
    inc [hl]                                      ; $715d: $34
    ld sp, $6031                                  ; $715e: $31 $31 $60
    db $fc                                        ; $7161: $fc
    jp z, $e8ff                                   ; $7162: $ca $ff $e8

    rst $20                                       ; $7165: $e7
    ld e, a                                       ; $7166: $5f
    ld sp, $324d                                  ; $7167: $31 $4d $32
    jr nc, jr_056_719c                            ; $716a: $30 $30

    rst $38                                       ; $716c: $ff
    jr nc, jr_056_71d9                            ; $716d: $30 $6a

    ld l, d                                       ; $716f: $6a
    ld l, d                                       ; $7170: $6a
    sub c                                         ; $7171: $91
    sub l                                         ; $7172: $95
    sbc [hl]                                      ; $7173: $9e
    sub a                                         ; $7174: $97
    ccf                                           ; $7175: $3f
    dec sp                                        ; $7176: $3b
    ld b, h                                       ; $7177: $44
    ld b, h                                       ; $7178: $44
    dec sp                                        ; $7179: $3b
    ld c, l                                       ; $717a: $4d
    ld sp, $ffca                                  ; $717b: $31 $ca $ff
    add sp, -$19                                  ; $717e: $e8 $e7
    rst $20                                       ; $7180: $e7
    ld h, e                                       ; $7181: $63
    ld sp, $c139                                  ; $7182: $31 $39 $c1
    ldh [$bf], a                                  ; $7185: $e0 $bf
    pop hl                                        ; $7187: $e1
    sub e                                         ; $7188: $93
    add [hl]                                      ; $7189: $86
    add [hl]                                      ; $718a: $86
    call $b691                                    ; $718b: $cd $91 $b6
    ldh [$6d], a                                  ; $718e: $e0 $6d
    add hl, sp                                    ; $7190: $39
    ret nz                                        ; $7191: $c0

    rst $38                                       ; $7192: $ff
    ret nz                                        ; $7193: $c0

    ld [$6853], a                                 ; $7194: $ea $53 $68
    db $dd                                        ; $7197: $dd
    ld l, b                                       ; $7198: $68
    cp a                                          ; $7199: $bf
    db $e3                                        ; $719a: $e3
    sbc l                                         ; $719b: $9d

jr_056_719c:
    add [hl]                                      ; $719c: $86
    sub e                                         ; $719d: $93
    ret nz                                        ; $719e: $c0

    pop hl                                        ; $719f: $e1
    dec [hl]                                      ; $71a0: $35
    ld c, l                                       ; $71a1: $4d
    and h                                         ; $71a2: $a4
    jp z, $80ff                                   ; $71a3: $ca $ff $80

    ld [$ff68], a                                 ; $71a6: $ea $68 $ff
    pop hl                                        ; $71a9: $e1
    dec a                                         ; $71aa: $3d
    ldh [$91], a                                  ; $71ab: $e0 $91
    add c                                         ; $71ad: $81
    pop hl                                        ; $71ae: $e1
    jr nc, jr_056_7158                            ; $71af: $30 $a7

    ld l, l                                       ; $71b1: $6d
    ld l, l                                       ; $71b2: $6d
    ld d, c                                       ; $71b3: $51
    jp z, Jump_000_00ff                           ; $71b4: $ca $ff $00

    ld [$bf35], a                                 ; $71b7: $ea $35 $bf
    ld [c], a                                     ; $71ba: $e2
    ld l, b                                       ; $71bb: $68
    dec sp                                        ; $71bc: $3b
    ld l, b                                       ; $71bd: $68
    sub e                                         ; $71be: $93
    add c                                         ; $71bf: $81
    ld [c], a                                     ; $71c0: $e2
    ld l, l                                       ; $71c1: $6d
    ld l, l                                       ; $71c2: $6d
    ld d, b                                       ; $71c3: $50
    jp z, $80ff                                   ; $71c4: $ca $ff $80

    ret z                                         ; $71c7: $c8

    ld h, c                                       ; $71c8: $61
    ld e, [hl]                                    ; $71c9: $5e
    rst $38                                       ; $71ca: $ff
    call nz, $c0bd                                ; $71cb: $c4 $bd $c0
    call nz, $c1e0                                ; $71ce: $c4 $e0 $c1
    ldh [$35], a                                  ; $71d1: $e0 $35
    ld b, e                                       ; $71d3: $43
    jp z, Jump_000_1eff                           ; $71d4: $ca $ff $1e

    ld b, b                                       ; $71d7: $40
    ret z                                         ; $71d8: $c8

jr_056_71d9:
    ld e, a                                       ; $71d9: $5f
    ld sp, $71af                                  ; $71da: $31 $af $71
    pop bc                                        ; $71dd: $c1
    jp hl                                         ; $71de: $e9


    ret nz                                        ; $71df: $c0

    rst $18                                       ; $71e0: $df
    db $eb                                        ; $71e1: $eb
    ld [$5a3f], a                                 ; $71e2: $ea $3f $5a
    ld e, a                                       ; $71e5: $5f
    ld sp, $7981                                  ; $71e6: $31 $81 $79
    ld [hl], c                                    ; $71e9: $71
    ld b, c                                       ; $71ea: $41
    ret nz                                        ; $71eb: $c0

    add d                                         ; $71ec: $82
    db $e4                                        ; $71ed: $e4
    sbc h                                         ; $71ee: $9c
    ld b, b                                       ; $71ef: $40
    rst $18                                       ; $71f0: $df
    ld b, b                                       ; $71f1: $40
    db $ed                                        ; $71f2: $ed
    xor h                                         ; $71f3: $ac
    xor b                                         ; $71f4: $a8
    add b                                         ; $71f5: $80
    cp a                                          ; $71f6: $bf
    pop hl                                        ; $71f7: $e1
    jp nz, Jump_056_45e3                          ; $71f8: $c2 $e3 $45

    ld hl, sp+$78                                 ; $71fb: $f8 $78
    and c                                         ; $71fd: $a1
    jp z, $c0ff                                   ; $71fe: $ca $ff $c0

    xor c                                         ; $7201: $a9
    add c                                         ; $7202: $81
    add b                                         ; $7203: $80
    add b                                         ; $7204: $80
    add b                                         ; $7205: $80
    ld a, c                                       ; $7206: $79
    adc e                                         ; $7207: $8b
    ld a, [hl]                                    ; $7208: $7e
    ld [hl], $c7                                  ; $7209: $36 $c7
    ret nz                                        ; $720b: $c0

    ld b, d                                       ; $720c: $42
    jp nz, $c0e2                                  ; $720d: $c2 $e2 $c0

    rst $38                                       ; $7210: $ff
    ld [$5ee9], a                                 ; $7211: $ea $e9 $5e
    ei                                            ; $7214: $fb
    ld sp, $c0a0                                  ; $7215: $31 $a0 $c0
    ldh [$80], a                                  ; $7218: $e0 $80
    add b                                         ; $721a: $80
    ld l, a                                       ; $721b: $6f
    ld a, l                                       ; $721c: $7d
    ld a, [hl]                                    ; $721d: $7e
    ccf                                           ; $721e: $3f
    ld d, h                                       ; $721f: $54
    inc a                                         ; $7220: $3c
    ld sp, $1531                                  ; $7221: $31 $31 $15
    inc d                                         ; $7224: $14
    rst $38                                       ; $7225: $ff
    ldh [$ca], a                                  ; $7226: $e0 $ca
    rst $38                                       ; $7228: $ff
    jp nc, $e7e8                                  ; $7229: $d2 $e8 $e7

    ld sp, $e4c0                                  ; $722c: $31 $c0 $e4
    ld a, e                                       ; $722f: $7b
    ldh [$a0], a                                  ; $7230: $e0 $a0
    cp l                                          ; $7232: $bd
    add b                                         ; $7233: $80
    rla                                           ; $7234: $17
    inc h                                         ; $7235: $24
    jr c, @+$01                                   ; $7236: $38 $ff

    ldh [$ca], a                                  ; $7238: $e0 $ca
    rst $38                                       ; $723a: $ff
    ret nz                                        ; $723b: $c0

    push af                                       ; $723c: $f5
    dec d                                         ; $723d: $15
    ld d, $20                                     ; $723e: $16 $20
    rst $38                                       ; $7240: $ff
    ldh [$ca], a                                  ; $7241: $e0 $ca
    rst $38                                       ; $7243: $ff
    ld b, $80                                     ; $7244: $06 $80
    push af                                       ; $7246: $f5
    rla                                           ; $7247: $17
    jr z, @-$3e                                   ; $7248: $28 $c0

    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    nop                                           ; $7253: $00
    rst $38                                       ; $7254: $ff
    rst $38                                       ; $7255: $ff
    rst $38                                       ; $7256: $ff
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
    nop                                           ; $7264: $00
    rst $38                                       ; $7265: $ff
    rst $38                                       ; $7266: $ff
    rst $38                                       ; $7267: $ff
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
    nop                                           ; $7275: $00
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
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
    nop                                           ; $7286: $00
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
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
    nop                                           ; $7297: $00
    rst $38                                       ; $7298: $ff
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
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
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    nop                                           ; $72a8: $00
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    rst $38                                       ; $72b3: $ff
    rst $38                                       ; $72b4: $ff
    rst $38                                       ; $72b5: $ff
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    nop                                           ; $72b9: $00
    rst $38                                       ; $72ba: $ff
    rst $38                                       ; $72bb: $ff
    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
    rst $38                                       ; $72c0: $ff
    rst $38                                       ; $72c1: $ff
    rst $38                                       ; $72c2: $ff
    rst $38                                       ; $72c3: $ff
    rst $38                                       ; $72c4: $ff
    rst $38                                       ; $72c5: $ff
    rst $38                                       ; $72c6: $ff
    rst $38                                       ; $72c7: $ff
    rst $38                                       ; $72c8: $ff
    rst $38                                       ; $72c9: $ff
    nop                                           ; $72ca: $00
    rst $38                                       ; $72cb: $ff
    rst $38                                       ; $72cc: $ff
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
    rst $38                                       ; $72d3: $ff
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    nop                                           ; $72db: $00
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    rst $38                                       ; $72e0: $ff
    rst $38                                       ; $72e1: $ff
    rst $38                                       ; $72e2: $ff
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    nop                                           ; $72ec: $00
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff

Jump_056_72f3:
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
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
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $30                                       ; $730b: $f7
    nop                                           ; $730c: $00
    nop                                           ; $730d: $00
    nop                                           ; $730e: $00
    and l                                         ; $730f: $a5
    nop                                           ; $7310: $00
    rst $38                                       ; $7311: $ff
    push hl                                       ; $7312: $e5
    ld [hl-], a                                   ; $7313: $32
    or $e6                                        ; $7314: $f6 $e6
    rst $30                                       ; $7316: $f7
    rst $20                                       ; $7317: $e7
    dec [hl]                                      ; $7318: $35
    db $ec                                        ; $7319: $ec
    xor $37                                       ; $731a: $ee $37
    db $ec                                        ; $731c: $ec
    jp c, $c7f0                                   ; $731d: $da $f0 $c7

    add sp, $33                                   ; $7320: $e8 $33
    ld sp, $f2e0                                  ; $7322: $31 $e0 $f2
    ld [hl], $30                                  ; $7325: $36 $30
    scf                                           ; $7327: $37
    cp a                                          ; $7328: $bf
    ld h, $20                                     ; $7329: $26 $20
    daa                                           ; $732b: $27
    db $10                                        ; $732c: $10
    ld d, $17                                     ; $732d: $16 $17
    jp nz, Jump_000_34f6                          ; $732f: $c2 $f6 $34

    rst $38                                       ; $7332: $ff
    ld [hl], $32                                  ; $7333: $36 $32
    jr nc, jr_056_736e                            ; $7335: $30 $37

    ld sp, $3133                                  ; $7337: $31 $33 $31
    inc sp                                        ; $733a: $33
    nop                                           ; $733b: $00
    and b                                         ; $733c: $a0
    ei                                            ; $733d: $fb
    rst $38                                       ; $733e: $ff
    rst $28                                       ; $733f: $ef
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    ld c, e                                       ; $7343: $4b
    ld [hl], e                                    ; $7344: $73
    ld a, e                                       ; $7345: $7b
    ld [hl], e                                    ; $7346: $73
    inc c                                         ; $7347: $0c
    ld [hl], l                                    ; $7348: $75
    adc $76                                       ; $7349: $ce $76
    ld [$c503], a                                 ; $734b: $ea $03 $c5
    ld b, $e2                                     ; $734e: $06 $e2
    ld bc, $00a0                                  ; $7350: $01 $a0 $00
    ld [$f003], a                                 ; $7353: $ea $03 $f0
    inc bc                                        ; $7356: $03
    push bc                                       ; $7357: $c5
    ld b, $e2                                     ; $7358: $06 $e2
    ld bc, $023f                                  ; $735a: $01 $3f $02
    xor e                                         ; $735d: $ab
    nop                                           ; $735e: $00
    inc sp                                        ; $735f: $33
    ld bc, $06c5                                  ; $7360: $01 $c5 $06
    ld [$0825], sp                                ; $7363: $08 $25 $08
    dec h                                         ; $7366: $25
    ld [$0825], sp                                ; $7367: $08 $25 $08
    dec h                                         ; $736a: $25
    ld [$0825], sp                                ; $736b: $08 $25 $08

jr_056_736e:
    dec h                                         ; $736e: $25
    ld [$0825], sp                                ; $736f: $08 $25 $08
    dec h                                         ; $7372: $25
    ld [$0825], sp                                ; $7373: $08 $25 $08
    dec h                                         ; $7376: $25
    ld [$0825], sp                                ; $7377: $08 $25 $08
    dec h                                         ; $737a: $25
    cp l                                          ; $737b: $bd
    inc c                                         ; $737c: $0c
    rst $38                                       ; $737d: $ff
    db $e4                                        ; $737e: $e4
    dec bc                                        ; $737f: $0b
    ld l, e                                       ; $7380: $6b
    ld l, e                                       ; $7381: $6b
    ld c, e                                       ; $7382: $4b
    rst $38                                       ; $7383: $ff
    pop hl                                        ; $7384: $e1
    ld c, h                                       ; $7385: $4c
    sub c                                         ; $7386: $91
    ld c, h                                       ; $7387: $4c
    xor $e5                                       ; $7388: $ee $e5
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    call nz, Call_056_4ce1                        ; $738c: $c4 $e1 $4c
    rst $38                                       ; $738f: $ff
    pop hl                                        ; $7390: $e1
    pop bc                                        ; $7391: $c1
    ld [c], a                                     ; $7392: $e2
    dec bc                                        ; $7393: $0b
    ld c, l                                       ; $7394: $4d
    dec hl                                        ; $7395: $2b
    rst $38                                       ; $7396: $ff
    ldh [rWX], a                                  ; $7397: $e0 $4b
    inc l                                         ; $7399: $2c
    ret nz                                        ; $739a: $c0

    rst $38                                       ; $739b: $ff
    db $eb                                        ; $739c: $eb
    ld [$ff0b], a                                 ; $739d: $ea $0b $ff
    ld [c], a                                     ; $73a0: $e2
    dec b                                         ; $73a1: $05
    ld l, e                                       ; $73a2: $6b
    pop bc                                        ; $73a3: $c1
    ldh [$0b], a                                  ; $73a4: $e0 $0b
    cp a                                          ; $73a6: $bf
    db $e3                                        ; $73a7: $e3
    ld a, a                                       ; $73a8: $7f
    rst $38                                       ; $73a9: $ff
    ret nz                                        ; $73aa: $c0

    db $ed                                        ; $73ab: $ed
    ld b, [hl]                                    ; $73ac: $46
    ldh [$c2], a                                  ; $73ad: $e0 $c2
    pop hl                                        ; $73af: $e1
    add [hl]                                      ; $73b0: $86
    cp a                                          ; $73b1: $bf
    db $e3                                        ; $73b2: $e3
    dec bc                                        ; $73b3: $0b
    inc l                                         ; $73b4: $2c
    cp a                                          ; $73b5: $bf
    rst $38                                       ; $73b6: $ff
    add b                                         ; $73b7: $80
    ld [$e085], a                                 ; $73b8: $ea $85 $e0
    ld b, h                                       ; $73bb: $44
    ldh [rWX], a                                  ; $73bc: $e0 $4b
    ld b, $bf                                     ; $73be: $06 $bf
    push hl                                       ; $73c0: $e5
    dec bc                                        ; $73c1: $0b
    dec bc                                        ; $73c2: $0b
    ret nz                                        ; $73c3: $c0

    rst $38                                       ; $73c4: $ff
    ld [$08e9], a                                 ; $73c5: $ea $e9 $08
    ldh [$be], a                                  ; $73c8: $e0 $be
    db $e3                                        ; $73ca: $e3
    cp l                                          ; $73cb: $bd
    db $e3                                        ; $73cc: $e3
    add b                                         ; $73cd: $80
    ld [hl], a                                    ; $73ce: $77
    ld [c], a                                     ; $73cf: $e2
    jp z, $c0ff                                   ; $73d0: $ca $ff $c0

    add sp, $02                                   ; $73d3: $e8 $02
    db $e3                                        ; $73d5: $e3
    ld bc, $7ce1                                  ; $73d6: $01 $e1 $7c
    ldh [$38], a                                  ; $73d9: $e0 $38
    ld [c], a                                     ; $73db: $e2
    ld c, e                                       ; $73dc: $4b
    db $e4                                        ; $73dd: $e4
    jp z, $e8ff                                   ; $73de: $ca $ff $e8

    rst $20                                       ; $73e1: $e7
    ld c, e                                       ; $73e2: $4b
    adc l                                         ; $73e3: $8d
    ldh [$3d], a                                  ; $73e4: $e0 $3d
    ld [c], a                                     ; $73e6: $e2
    ld c, e                                       ; $73e7: $4b
    dec bc                                        ; $73e8: $0b
    ld c, e                                       ; $73e9: $4b
    ld [bc], a                                    ; $73ea: $02
    ld sp, hl                                     ; $73eb: $f9
    jp $c06b                                      ; $73ec: $c3 $6b $c0


    rst $38                                       ; $73ef: $ff
    add b                                         ; $73f0: $80
    pop de                                        ; $73f1: $d1
    db $fc                                        ; $73f2: $fc
    push bc                                       ; $73f3: $c5
    or a                                          ; $73f4: $b7
    ldh [$ca], a                                  ; $73f5: $e0 $ca
    rst $38                                       ; $73f7: $ff
    add b                                         ; $73f8: $80
    jp hl                                         ; $73f9: $e9


    ld [$e5c0], sp                                ; $73fa: $08 $c0 $e5
    cp e                                          ; $73fd: $bb
    jp nz, $a0f9                                  ; $73fe: $c2 $f9 $a0

    ld a, [bc]                                    ; $7401: $0a
    ret nz                                        ; $7402: $c0

    rst $38                                       ; $7403: $ff
    nop                                           ; $7404: $00
    adc $ff                                       ; $7405: $ce $ff
    and h                                         ; $7407: $a4
    pop bc                                        ; $7408: $c1
    jp $c010                                      ; $7409: $c3 $10 $c0


    rst $38                                       ; $740c: $ff
    ret nz                                        ; $740d: $c0

    rst $28                                       ; $740e: $ef
    add b                                         ; $740f: $80
    and c                                         ; $7410: $a1
    cp c                                          ; $7411: $b9
    and b                                         ; $7412: $a0
    ld a, [bc]                                    ; $7413: $0a
    ret nz                                        ; $7414: $c0

    rst $38                                       ; $7415: $ff
    db $ed                                        ; $7416: $ed
    db $ec                                        ; $7417: $ec
    rrca                                          ; $7418: $0f
    ret nz                                        ; $7419: $c0

    ld b, b                                       ; $741a: $40
    ld a, l                                       ; $741b: $7d
    and h                                         ; $741c: $a4
    or [hl]                                       ; $741d: $b6
    push hl                                       ; $741e: $e5
    ret nz                                        ; $741f: $c0

    rst $38                                       ; $7420: $ff
    add b                                         ; $7421: $80
    jp z, $a4c6                                   ; $7422: $ca $c6 $a4

    ld a, [hl]                                    ; $7425: $7e
    and h                                         ; $7426: $a4
    ld a, [bc]                                    ; $7427: $0a
    ld bc, $10e0                                  ; $7428: $01 $e0 $10
    ret nz                                        ; $742b: $c0

    rst $38                                       ; $742c: $ff
    nop                                           ; $742d: $00
    xor c                                         ; $742e: $a9
    cp a                                          ; $742f: $bf
    push hl                                       ; $7430: $e5
    ei                                            ; $7431: $fb
    add b                                         ; $7432: $80
    dec hl                                        ; $7433: $2b
    jp $80e1                                      ; $7434: $c3 $e1 $80


    rst $38                                       ; $7437: $ff
    ret nz                                        ; $7438: $c0

    adc h                                         ; $7439: $8c
    ld c, l                                       ; $743a: $4d
    ld c, e                                       ; $743b: $4b
    dec a                                         ; $743c: $3d
    db $e4                                        ; $743d: $e4
    ld l, e                                       ; $743e: $6b
    ld a, [bc]                                    ; $743f: $0a
    ld b, e                                       ; $7440: $43
    and b                                         ; $7441: $a0
    cp a                                          ; $7442: $bf
    pop hl                                        ; $7443: $e1
    ld a, [bc]                                    ; $7444: $0a
    jp z, Jump_000_00ff                           ; $7445: $ca $ff $00

    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    nop                                           ; $7458: $00
    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    rst $38                                       ; $745b: $ff
    rst $38                                       ; $745c: $ff
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
    rst $38                                       ; $745f: $ff
    rst $38                                       ; $7460: $ff
    rst $38                                       ; $7461: $ff
    rst $38                                       ; $7462: $ff
    rst $38                                       ; $7463: $ff
    rst $38                                       ; $7464: $ff
    rst $38                                       ; $7465: $ff
    rst $38                                       ; $7466: $ff
    rst $38                                       ; $7467: $ff
    rst $38                                       ; $7468: $ff
    nop                                           ; $7469: $00
    rst $38                                       ; $746a: $ff
    rst $38                                       ; $746b: $ff
    rst $38                                       ; $746c: $ff
    rst $38                                       ; $746d: $ff
    rst $38                                       ; $746e: $ff
    rst $38                                       ; $746f: $ff
    rst $38                                       ; $7470: $ff
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    rst $38                                       ; $7473: $ff
    rst $38                                       ; $7474: $ff
    rst $38                                       ; $7475: $ff
    rst $38                                       ; $7476: $ff
    rst $38                                       ; $7477: $ff
    rst $38                                       ; $7478: $ff
    rst $38                                       ; $7479: $ff
    nop                                           ; $747a: $00
    rst $38                                       ; $747b: $ff
    rst $38                                       ; $747c: $ff
    rst $38                                       ; $747d: $ff
    rst $38                                       ; $747e: $ff
    rst $38                                       ; $747f: $ff
    rst $38                                       ; $7480: $ff
    rst $38                                       ; $7481: $ff
    rst $38                                       ; $7482: $ff
    rst $38                                       ; $7483: $ff
    rst $38                                       ; $7484: $ff
    rst $38                                       ; $7485: $ff
    rst $38                                       ; $7486: $ff
    rst $38                                       ; $7487: $ff
    rst $38                                       ; $7488: $ff
    rst $38                                       ; $7489: $ff
    rst $38                                       ; $748a: $ff
    nop                                           ; $748b: $00
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
    rst $38                                       ; $7497: $ff
    rst $38                                       ; $7498: $ff
    rst $38                                       ; $7499: $ff
    rst $38                                       ; $749a: $ff
    rst $38                                       ; $749b: $ff
    nop                                           ; $749c: $00
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
    rst $38                                       ; $74a8: $ff
    rst $38                                       ; $74a9: $ff
    rst $38                                       ; $74aa: $ff
    rst $38                                       ; $74ab: $ff
    rst $38                                       ; $74ac: $ff
    nop                                           ; $74ad: $00
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
    rst $38                                       ; $74b9: $ff
    rst $38                                       ; $74ba: $ff
    rst $38                                       ; $74bb: $ff
    rst $38                                       ; $74bc: $ff
    rst $38                                       ; $74bd: $ff
    nop                                           ; $74be: $00
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
    rst $38                                       ; $74ca: $ff
    rst $38                                       ; $74cb: $ff
    rst $38                                       ; $74cc: $ff
    rst $38                                       ; $74cd: $ff
    rst $38                                       ; $74ce: $ff
    nop                                           ; $74cf: $00
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
    rst $38                                       ; $74db: $ff
    rst $38                                       ; $74dc: $ff
    rst $38                                       ; $74dd: $ff
    rst $38                                       ; $74de: $ff
    rst $38                                       ; $74df: $ff
    nop                                           ; $74e0: $00
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
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    rst $38                                       ; $74f0: $ff
    nop                                           ; $74f1: $00
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff
    rst $38                                       ; $7500: $ff
    rst $38                                       ; $7501: $ff
    nop                                           ; $7502: $00
    rst $38                                       ; $7503: $ff
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    di                                            ; $7508: $f3
    nop                                           ; $7509: $00
    nop                                           ; $750a: $00
    nop                                           ; $750b: $00
    db $fd                                        ; $750c: $fd
    jr nz, @+$01                                  ; $750d: $20 $ff

    db $e3                                        ; $750f: $e3
    rrca                                          ; $7510: $0f
    ld sp, $454d                                  ; $7511: $31 $4d $45
    ld d, h                                       ; $7514: $54
    ld d, l                                       ; $7515: $55
    rst $38                                       ; $7516: $ff
    ld d, l                                       ; $7517: $55
    ld b, l                                       ; $7518: $45
    ld c, l                                       ; $7519: $4d
    rla                                           ; $751a: $17
    jr z, jr_056_753d                             ; $751b: $28 $20

    jr nz, jr_056_751f                            ; $751d: $20 $00

jr_056_751f:
    db $f4                                        ; $751f: $f4
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    rst $20                                       ; $7522: $e7
    and $05                                       ; $7523: $e6 $05
    rst $38                                       ; $7525: $ff
    pop hl                                        ; $7526: $e1
    ld a, [bc]                                    ; $7527: $0a
    dec bc                                        ; $7528: $0b
    ld sp, $774d                                  ; $7529: $31 $4d $77
    ld [hl-], a                                   ; $752c: $32
    ld l, l                                       ; $752d: $6d
    jr nc, @+$01                                  ; $752e: $30 $ff

    ldh [$39], a                                  ; $7530: $e0 $39
    dec d                                         ; $7532: $15
    ld d, $c0                                     ; $7533: $16 $c0
    rst $38                                       ; $7535: $ff
    ld a, [$e9ea]                                 ; $7536: $fa $ea $e9
    ld sp, $e2ff                                  ; $7539: $31 $ff $e2
    ld c, l                                       ; $753c: $4d

jr_056_753d:
    ld b, l                                       ; $753d: $45
    ld b, h                                       ; $753e: $44
    ld l, d                                       ; $753f: $6a
    ld l, d                                       ; $7540: $6a
    ld [c], a                                     ; $7541: $e2
    cp a                                          ; $7542: $bf
    pop hl                                        ; $7543: $e1
    dec [hl]                                      ; $7544: $35
    ld a, a                                       ; $7545: $7f
    pop hl                                        ; $7546: $e1
    jp z, $c0ff                                   ; $7547: $ca $ff $c0

    ld [$3a4d], a                                 ; $754a: $ea $4d $3a
    ld d, l                                       ; $754d: $55
    rst $28                                       ; $754e: $ef
    ld b, h                                       ; $754f: $44
    jr nc, jr_056_7582                            ; $7550: $30 $30

    ld l, l                                       ; $7552: $6d
    cp a                                          ; $7553: $bf
    db $e3                                        ; $7554: $e3
    ld d, c                                       ; $7555: $51
    dec d                                         ; $7556: $15
    ld d, $c1                                     ; $7557: $16 $c1
    inc h                                         ; $7559: $24
    jp z, $80ff                                   ; $755a: $ca $ff $80

    add sp, -$7b                                  ; $755d: $e8 $85
    pop hl                                        ; $755f: $e1
    ld b, l                                       ; $7560: $45
    ld [c], a                                     ; $7561: $e2
    cp a                                          ; $7562: $bf
    db $e3                                        ; $7563: $e3
    ld d, b                                       ; $7564: $50
    ld sp, $2933                                  ; $7565: $31 $33 $29
    inc d                                         ; $7568: $14
    jp z, $e8ff                                   ; $7569: $ca $ff $e8

    rst $20                                       ; $756c: $e7
    ld c, l                                       ; $756d: $4d
    ld [hl-], a                                   ; $756e: $32
    add [hl]                                      ; $756f: $86
    push hl                                       ; $7570: $e5
    ld a, [hl]                                    ; $7571: $7e
    ld [c], a                                     ; $7572: $e2
    inc hl                                        ; $7573: $23
    dec [hl]                                      ; $7574: $35
    ld c, l                                       ; $7575: $4d
    cpl                                           ; $7576: $2f
    ldh [$ca], a                                  ; $7577: $e0 $ca
    rst $38                                       ; $7579: $ff
    add sp, -$19                                  ; $757a: $e8 $e7
    add hl, sp                                    ; $757c: $39
    add [hl]                                      ; $757d: $86
    and $3d                                       ; $757e: $e6 $3d
    pop hl                                        ; $7580: $e1
    ld c, e                                       ; $7581: $4b

jr_056_7582:
    ld b, d                                       ; $7582: $42
    inc a                                         ; $7583: $3c
    ldh a, [$c0]                                  ; $7584: $f0 $c0
    ld h, d                                       ; $7586: $62
    jp z, $e8ff                                   ; $7587: $ca $ff $e8

    rst $20                                       ; $758a: $e7
    ld d, e                                       ; $758b: $53
    adc c                                         ; $758c: $89
    pop bc                                        ; $758d: $c1
    ld c, h                                       ; $758e: $4c
    ld a, [hl]                                    ; $758f: $7e
    push hl                                       ; $7590: $e5
    pop bc                                        ; $7591: $c1
    ld [c], a                                     ; $7592: $e2
    ld h, b                                       ; $7593: $60
    ld e, e                                       ; $7594: $5b
    jp z, $e8ff                                   ; $7595: $ca $ff $e8

    rst $20                                       ; $7598: $e7
    ld d, d                                       ; $7599: $52
    adc c                                         ; $759a: $89
    jp nz, $c3c2                                  ; $759b: $c2 $c2 $c3

    jp $c136                                      ; $759e: $c3 $36 $c1


    db $e3                                        ; $75a1: $e3
    ret nz                                        ; $75a2: $c0

    rst $38                                       ; $75a3: $ff
    ret nz                                        ; $75a4: $c0

    ld [$e6bf], a                                 ; $75a5: $ea $bf $e6
    ld [hl-], a                                   ; $75a8: $32
    ld a, $3f                                     ; $75a9: $3e $3f
    ld sp, $5d31                                  ; $75ab: $31 $31 $5d
    ld e, h                                       ; $75ae: $5c
    ld e, e                                       ; $75af: $5b
    ld e, d                                       ; $75b0: $5a
    ret nz                                        ; $75b1: $c0

    rst $38                                       ; $75b2: $ff
    ld b, b                                       ; $75b3: $40
    ld [$bf06], a                                 ; $75b4: $ea $06 $bf
    push hl                                       ; $75b7: $e5
    ld c, b                                       ; $75b8: $48
    ld c, c                                       ; $75b9: $49
    add e                                         ; $75ba: $83
    ld [c], a                                     ; $75bb: $e2
    cp $e0                                        ; $75bc: $fe $e0
    jp z, Jump_056_40ff                           ; $75be: $ca $ff $40

    add sp, $07                                   ; $75c1: $e8 $07
    push bc                                       ; $75c3: $c5
    ld c, e                                       ; $75c4: $4b
    ld l, l                                       ; $75c5: $6d
    add hl, sp                                    ; $75c6: $39
    dec b                                         ; $75c7: $05
    ldh [$5a], a                                  ; $75c8: $e0 $5a
    ret nz                                        ; $75ca: $c0

    rst $38                                       ; $75cb: $ff
    db $ed                                        ; $75cc: $ed
    db $ec                                        ; $75cd: $ec
    add e                                         ; $75ce: $83
    add $a5                                       ; $75cf: $c6 $a5
    adc a                                         ; $75d1: $8f
    ld b, d                                       ; $75d2: $42
    ld c, c                                       ; $75d3: $49
    ld sp, $c25e                                  ; $75d4: $31 $5e $c2
    ld [c], a                                     ; $75d7: $e2
    ret nz                                        ; $75d8: $c0

    rst $38                                       ; $75d9: $ff
    ld [$79e9], a                                 ; $75da: $ea $e9 $79
    add hl, de                                    ; $75dd: $19
    ld [hl], c                                    ; $75de: $71
    add l                                         ; $75df: $85
    and e                                         ; $75e0: $a3
    ld b, [hl]                                    ; $75e1: $46
    pop bc                                        ; $75e2: $c1
    ld e, a                                       ; $75e3: $5f
    ld e, e                                       ; $75e4: $5b
    inc bc                                        ; $75e5: $03
    ldh [$7d], a                                  ; $75e6: $e0 $7d
    ldh [$ca], a                                  ; $75e8: $e0 $ca
    rst $38                                       ; $75ea: $ff
    ld a, [bc]                                    ; $75eb: $0a
    add sp, -$19                                  ; $75ec: $e8 $e7
    add b                                         ; $75ee: $80
    cp a                                          ; $75ef: $bf
    db $e3                                        ; $75f0: $e3
    ld b, h                                       ; $75f1: $44
    rlca                                          ; $75f2: $07
    ret nz                                        ; $75f3: $c0

    add [hl]                                      ; $75f4: $86
    ret nz                                        ; $75f5: $c0

    ld b, b                                       ; $75f6: $40
    rst $38                                       ; $75f7: $ff
    ret nz                                        ; $75f8: $c0

    xor $3f                                       ; $75f9: $ee $3f
    add b                                         ; $75fb: $80
    ld a, c                                       ; $75fc: $79
    ld a, [hl]                                    ; $75fd: $7e
    ld d, h                                       ; $75fe: $54
    ld d, l                                       ; $75ff: $55
    ld a, [hl-]                                   ; $7600: $3a
    adc c                                         ; $7601: $89
    and b                                         ; $7602: $a0
    inc bc                                        ; $7603: $03
    ld [c], a                                     ; $7604: $e2
    nop                                           ; $7605: $00
    db $fc                                        ; $7606: $fc
    ld [c], a                                     ; $7607: $e2
    jp z, $ffff                                   ; $7608: $ca $ff $ff

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
    nop                                           ; $7616: $00
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
    nop                                           ; $7627: $00
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
    nop                                           ; $7638: $00
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
    nop                                           ; $7649: $00
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
    nop                                           ; $765a: $00
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
    nop                                           ; $766b: $00
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
    nop                                           ; $767c: $00
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
    nop                                           ; $768d: $00
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
    nop                                           ; $769e: $00
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
    nop                                           ; $76af: $00
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
    nop                                           ; $76c0: $00
    rst $38                                       ; $76c1: $ff
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    di                                            ; $76ca: $f3
    nop                                           ; $76cb: $00
    nop                                           ; $76cc: $00
    nop                                           ; $76cd: $00
    and l                                         ; $76ce: $a5
    nop                                           ; $76cf: $00
    rst $38                                       ; $76d0: $ff
    push hl                                       ; $76d1: $e5
    ld [hl-], a                                   ; $76d2: $32
    or $e6                                        ; $76d3: $f6 $e6
    rst $30                                       ; $76d5: $f7
    rst $20                                       ; $76d6: $e7
    dec [hl]                                      ; $76d7: $35
    db $ec                                        ; $76d8: $ec
    xor $37                                       ; $76d9: $ee $37
    db $ec                                        ; $76db: $ec
    jp c, $c7f0                                   ; $76dc: $da $f0 $c7

    add sp, $33                                   ; $76df: $e8 $33
    ld sp, $f2e0                                  ; $76e1: $31 $e0 $f2
    ld [hl], $30                                  ; $76e4: $36 $30
    scf                                           ; $76e6: $37
    cp a                                          ; $76e7: $bf
    ld h, $20                                     ; $76e8: $26 $20
    daa                                           ; $76ea: $27
    db $10                                        ; $76eb: $10
    ld d, $17                                     ; $76ec: $16 $17
    jp nz, Jump_000_34f6                          ; $76ee: $c2 $f6 $34

    rst $38                                       ; $76f1: $ff
    ld [hl], $32                                  ; $76f2: $36 $32
    jr nc, @+$39                                  ; $76f4: $30 $37

    ld sp, $3133                                  ; $76f6: $31 $33 $31
    inc sp                                        ; $76f9: $33
    nop                                           ; $76fa: $00
    and b                                         ; $76fb: $a0
    ei                                            ; $76fc: $fb
    rst $38                                       ; $76fd: $ff
    rst $28                                       ; $76fe: $ef
    nop                                           ; $76ff: $00
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    ld a, [bc]                                    ; $7702: $0a
    ld [hl], a                                    ; $7703: $77
    ld a, [hl-]                                   ; $7704: $3a
    ld [hl], a                                    ; $7705: $77
    bit 7, b                                      ; $7706: $cb $78
    ld l, a                                       ; $7708: $6f
    ld a, d                                       ; $7709: $7a
    ld [$c503], a                                 ; $770a: $ea $03 $c5
    ld b, $e2                                     ; $770d: $06 $e2
    ld bc, $00a0                                  ; $770f: $01 $a0 $00
    ld [$f003], a                                 ; $7712: $ea $03 $f0
    inc bc                                        ; $7715: $03
    push bc                                       ; $7716: $c5
    ld b, $e2                                     ; $7717: $06 $e2
    ld bc, $7d40                                  ; $7719: $01 $40 $7d
    ret nz                                        ; $771c: $c0

    ld a, [hl]                                    ; $771d: $7e
    ld [$c503], a                                 ; $771e: $ea $03 $c5
    ld b, $08                                     ; $7721: $06 $08
    dec h                                         ; $7723: $25
    ld [$0825], sp                                ; $7724: $08 $25 $08
    dec h                                         ; $7727: $25
    ld [$0825], sp                                ; $7728: $08 $25 $08
    dec h                                         ; $772b: $25
    ld [$0825], sp                                ; $772c: $08 $25 $08
    dec h                                         ; $772f: $25

Jump_056_7730:
    ld [$0825], sp                                ; $7730: $08 $25 $08
    dec h                                         ; $7733: $25
    ld [$0825], sp                                ; $7734: $08 $25 $08
    dec h                                         ; $7737: $25
    ld [$df25], sp                                ; $7738: $08 $25 $df
    inc c                                         ; $773b: $0c
    inc c                                         ; $773c: $0c
    inc c                                         ; $773d: $0c
    ld l, h                                       ; $773e: $6c
    dec bc                                        ; $773f: $0b
    rst $38                                       ; $7740: $ff
    add sp, $4c                                   ; $7741: $e8 $4c
    inc l                                         ; $7743: $2c
    jp $2c2c                                      ; $7744: $c3 $2c $2c


    db $ec                                        ; $7747: $ec
    ldh [rIE], a                                  ; $7748: $e0 $ff
    rst $38                                       ; $774a: $ff
    rst $20                                       ; $774b: $e7
    and $c1                                       ; $774c: $e6 $c1
    ld [$2b0b], a                                 ; $774e: $ea $0b $2b
    ld hl, sp-$41                                 ; $7751: $f8 $bf
    ldh [$cc], a                                  ; $7753: $e0 $cc
    rst $38                                       ; $7755: $ff
    pop bc                                        ; $7756: $c1
    rst $28                                       ; $7757: $ef
    ld c, e                                       ; $7758: $4b
    dec bc                                        ; $7759: $0b
    ld l, e                                       ; $775a: $6b
    ld l, e                                       ; $775b: $6b
    ld c, e                                       ; $775c: $4b
    pop hl                                        ; $775d: $e1
    ld c, e                                       ; $775e: $4b
    ret nz                                        ; $775f: $c0

    ldh [$bf], a                                  ; $7760: $e0 $bf
    ldh [$cb], a                                  ; $7762: $e0 $cb
    rst $38                                       ; $7764: $ff
    add d                                         ; $7765: $82
    rst $28                                       ; $7766: $ef
    ld l, e                                       ; $7767: $6b
    ld l, e                                       ; $7768: $6b
    ld l, e                                       ; $7769: $6b
    inc c                                         ; $776a: $0c
    cp e                                          ; $776b: $bb
    ldh [$be], a                                  ; $776c: $e0 $be
    pop hl                                        ; $776e: $e1

jr_056_776f:
    dec bc                                        ; $776f: $0b
    ld c, h                                       ; $7770: $4c
    jp z, $e8ff                                   ; $7771: $ca $ff $e8

    rst $20                                       ; $7774: $e7
    add $e1                                       ; $7775: $c6 $e1
    ret                                           ; $7777: $c9


    ldh [rIF], a                                  ; $7778: $e0 $0f
    ld c, e                                       ; $777a: $4b
    ld l, e                                       ; $777b: $6b
    dec hl                                        ; $777c: $2b
    dec hl                                        ; $777d: $2b
    ld a, c                                       ; $777e: $79
    ld [c], a                                     ; $777f: $e2
    cp a                                          ; $7780: $bf
    pop hl                                        ; $7781: $e1
    jp z, $c0ff                                   ; $7782: $ca $ff $c0

    add sp, $00                                   ; $7785: $e8 $00
    adc b                                         ; $7787: $88
    pop hl                                        ; $7788: $e1
    ld [$c0e1], sp                                ; $7789: $08 $e1 $c0
    db $e3                                        ; $778c: $e3
    jr c, jr_056_776f                             ; $778d: $38 $e0

    ret nz                                        ; $778f: $c0

    rst $38                                       ; $7790: $ff
    ld [$c1e9], a                                 ; $7791: $ea $e9 $c1

jr_056_7794:
    db $e4                                        ; $7794: $e4
    ret nz                                        ; $7795: $c0

    and $01                                       ; $7796: $e6 $01
    dec hl                                        ; $7798: $2b
    db $fc                                        ; $7799: $fc
    ret nz                                        ; $779a: $c0

    jp z, $c0ff                                   ; $779b: $ca $ff $c0

    add sp, -$78                                  ; $779e: $e8 $88
    push bc                                       ; $77a0: $c5
    add b                                         ; $77a1: $80
    db $e4                                        ; $77a2: $e4
    ld a, a                                       ; $77a3: $7f
    pop hl                                        ; $77a4: $e1
    jp z, Jump_056_40ff                           ; $77a5: $ca $ff $40

    add sp, -$19                                  ; $77a8: $e8 $e7
    sub b                                         ; $77aa: $90
    pop hl                                        ; $77ab: $e1
    ret                                           ; $77ac: $c9


    pop bc                                        ; $77ad: $c1
    ret nz                                        ; $77ae: $c0

    and $40                                       ; $77af: $e6 $40
    rst $38                                       ; $77b1: $ff
    ret nz                                        ; $77b2: $c0

    db $eb                                        ; $77b3: $eb
    dec hl                                        ; $77b4: $2b
    jp nz, Jump_000_00c1                          ; $77b5: $c2 $c1 $00

    add b                                         ; $77b8: $80
    jp nz, $c2f7                                  ; $77b9: $c2 $f7 $c2

    ld a, [c]                                     ; $77bc: $f2
    pop bc                                        ; $77bd: $c1
    jp z, $80ff                                   ; $77be: $ca $ff $80

    ret z                                         ; $77c1: $c8

    cp a                                          ; $77c2: $bf
    pop hl                                        ; $77c3: $e1
    ccf                                           ; $77c4: $3f
    call nz, $e2b6                                ; $77c5: $c4 $b6 $e2
    nop                                           ; $77c8: $00
    ld b, b                                       ; $77c9: $40
    rst $38                                       ; $77ca: $ff
    ld b, b                                       ; $77cb: $40
    call z, $c447                                 ; $77cc: $cc $47 $c4
    jr c, jr_056_7794                             ; $77cf: $38 $c3

    ld b, b                                       ; $77d1: $40
    rst $38                                       ; $77d2: $ff
    db $ed                                        ; $77d3: $ed
    db $ec                                        ; $77d4: $ec
    adc $e3                                       ; $77d5: $ce $e3
    ret nz                                        ; $77d7: $c0

    and b                                         ; $77d8: $a0
    ccf                                           ; $77d9: $3f
    dec hl                                        ; $77da: $2b
    ld c, e                                       ; $77db: $4b
    ld l, e                                       ; $77dc: $6b
    ld c, e                                       ; $77dd: $4b
    ld l, e                                       ; $77de: $6b
    dec bc                                        ; $77df: $0b
    ei                                            ; $77e0: $fb
    and c                                         ; $77e1: $a1
    set 7, a                                      ; $77e2: $cb $ff
    ld h, b                                       ; $77e4: $60
    ret nz                                        ; $77e5: $c0

    xor c                                         ; $77e6: $a9
    cp a                                          ; $77e7: $bf
    push hl                                       ; $77e8: $e5
    cp [hl]                                       ; $77e9: $be
    ldh [$3b], a                                  ; $77ea: $e0 $3b
    and b                                         ; $77ec: $a0
    add hl, sp                                    ; $77ed: $39
    and b                                         ; $77ee: $a0
    inc c                                         ; $77ef: $0c
    ld l, h                                       ; $77f0: $6c
    jp z, $9cff                                   ; $77f1: $ca $ff $9c

    ld b, b                                       ; $77f4: $40
    ld [$8ac0], a                                 ; $77f5: $ea $c0 $8a
    dec bc                                        ; $77f8: $0b
    inc c                                         ; $77f9: $0c
    ld l, h                                       ; $77fa: $6c
    ret nz                                        ; $77fb: $c0

    rst $38                                       ; $77fc: $ff
    jp hl                                         ; $77fd: $e9


    add sp, $0a                                   ; $77fe: $e8 $0a
    nop                                           ; $7800: $00
    ret nz                                        ; $7801: $c0

    db $ec                                        ; $7802: $ec
    pop bc                                        ; $7803: $c1
    ldh [$c0], a                                  ; $7804: $e0 $c0
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
    nop                                           ; $7811: $00
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
    nop                                           ; $7822: $00
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
    nop                                           ; $7833: $00
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
    nop                                           ; $7844: $00
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
    nop                                           ; $7855: $00
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
    db $f4                                        ; $78c7: $f4
    nop                                           ; $78c8: $00
    nop                                           ; $78c9: $00
    nop                                           ; $78ca: $00
    ld e, a                                       ; $78cb: $5f
    nop                                           ; $78cc: $00
    nop                                           ; $78cd: $00
    nop                                           ; $78ce: $00
    inc bc                                        ; $78cf: $03
    ld hl, $e8ff                                  ; $78d0: $21 $ff $e8
    inc bc                                        ; $78d3: $03
    rst $28                                       ; $78d4: $ef
    ldh [$e0], a                                  ; $78d5: $e0 $e0
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff

jr_056_78d9:
    ld [$c1e9], a                                 ; $78d9: $ea $e9 $c1
    ld [$ffbf], a                                 ; $78dc: $ea $bf $ff
    pop bc                                        ; $78df: $c1
    or $33                                        ; $78e0: $f6 $33
    dec hl                                        ; $78e2: $2b
    dec hl                                        ; $78e3: $2b
    ld sp, hl                                     ; $78e4: $f9
    dec a                                         ; $78e5: $3d
    cp a                                          ; $78e6: $bf
    rst $38                                       ; $78e7: $ff
    add d                                         ; $78e8: $82
    push af                                       ; $78e9: $f5
    dec a                                         ; $78ea: $3d
    dec [hl]                                      ; $78eb: $35
    inc [hl]                                      ; $78ec: $34
    ld e, d                                       ; $78ed: $5a
    ld e, d                                       ; $78ee: $5a
    jp Jump_000_3534                              ; $78ef: $c3 $34 $35


    cp [hl]                                       ; $78f2: $be
    pop hl                                        ; $78f3: $e1
    cp a                                          ; $78f4: $bf
    rst $38                                       ; $78f5: $ff
    jp hl                                         ; $78f6: $e9


    add sp, -$3a                                  ; $78f7: $e8 $c6
    ldh [$2b], a                                  ; $78f9: $e0 $2b
    ld b, h                                       ; $78fb: $44
    rst $38                                       ; $78fc: $ff
    ld b, l                                       ; $78fd: $45
    ld b, l                                       ; $78fe: $45
    ld b, h                                       ; $78ff: $44
    inc [hl]                                      ; $7900: $34
    ld e, c                                       ; $7901: $59
    ld e, c                                       ; $7902: $59

jr_056_7903:
    jr nz, jr_056_795f                            ; $7903: $20 $5a

    ld [c], a                                     ; $7905: $e2
    cp [hl]                                       ; $7906: $be
    ldh [$39], a                                  ; $7907: $e0 $39
    inc [hl]                                      ; $7909: $34
    ldh [$ca], a                                  ; $790a: $e0 $ca
    rst $38                                       ; $790c: $ff
    ret nz                                        ; $790d: $c0

    add sp, $3d                                   ; $790e: $e8 $3d
    ld [hl+], a                                   ; $7910: $22
    jr nz, @+$27                                  ; $7911: $20 $25

    jr nz, jr_056_78d9                            ; $7913: $20 $c4

    ldh [$59], a                                  ; $7915: $e0 $59
    ret nz                                        ; $7917: $c0

    ldh [$bf], a                                  ; $7918: $e0 $bf
    pop hl                                        ; $791a: $e1
    add hl, hl                                    ; $791b: $29
    ret nz                                        ; $791c: $c0

    rst $38                                       ; $791d: $ff
    db $eb                                        ; $791e: $eb
    ld [$c188], a                                 ; $791f: $ea $88 $c1
    pop hl                                        ; $7922: $e1
    ret nz                                        ; $7923: $c0

    and $7e                                       ; $7924: $e6 $7e
    ldh [$32], a                                  ; $7926: $e0 $32
    ld a, a                                       ; $7928: $7f
    ldh [$ca], a                                  ; $7929: $e0 $ca
    rst $38                                       ; $792b: $ff
    add sp, -$19                                  ; $792c: $e8 $e7
    add hl, hl                                    ; $792e: $29
    nop                                           ; $792f: $00
    pop bc                                        ; $7930: $c1
    ldh [$c0], a                                  ; $7931: $e0 $c0
    rst $20                                       ; $7933: $e7
    dec a                                         ; $7934: $3d
    ldh [$7f], a                                  ; $7935: $e0 $7f
    ldh [$ca], a                                  ; $7937: $e0 $ca
    rst $38                                       ; $7939: $ff
    ret nz                                        ; $793a: $c0

    db $eb                                        ; $793b: $eb
    ld [$c0e0], sp                                ; $793c: $08 $e0 $c0
    push hl                                       ; $793f: $e5
    adc c                                         ; $7940: $89
    jr nz, jr_056_7903                            ; $7941: $20 $c0

    rst $38                                       ; $7943: $ff
    ld b, b                                       ; $7944: $40
    db $ed                                        ; $7945: $ed
    ld e, b                                       ; $7946: $58
    pop bc                                        ; $7947: $c1
    pop hl                                        ; $7948: $e1
    call nz, $fac1                                ; $7949: $c4 $c1 $fa
    ldh [rNR41], a                                ; $794c: $e0 $20
    ld hl, $4020                                  ; $794e: $21 $20 $40
    rst $38                                       ; $7951: $ff
    ret nz                                        ; $7952: $c0

    adc $c7                                       ; $7953: $ce $c7
    db $e3                                        ; $7955: $e3
    add e                                         ; $7956: $83
    ret nz                                        ; $7957: $c0

    ld e, b                                       ; $7958: $58
    rst $38                                       ; $7959: $ff
    ldh [$c0], a                                  ; $795a: $e0 $c0
    rst $18                                       ; $795c: $df
    ld a, [hl]                                    ; $795d: $7e
    ld b, b                                       ; $795e: $40

jr_056_795f:
    adc $35                                       ; $795f: $ce $35
    ld b, h                                       ; $7961: $44
    ld b, h                                       ; $7962: $44
    ld b, l                                       ; $7963: $45
    ld b, h                                       ; $7964: $44
    ld [hl-], a                                   ; $7965: $32
    ld b, d                                       ; $7966: $42
    ret nz                                        ; $7967: $c0

    and [hl]                                      ; $7968: $a6
    ret nz                                        ; $7969: $c0

    ldh [$2d], a                                  ; $796a: $e0 $2d
    inc sp                                        ; $796c: $33
    ret nz                                        ; $796d: $c0

    rst $38                                       ; $796e: $ff
    db $eb                                        ; $796f: $eb
    ld [$4450], a                                 ; $7970: $ea $50 $44
    and b                                         ; $7973: $a0
    sub b                                         ; $7974: $90
    rst $38                                       ; $7975: $ff
    ld [hl], b                                    ; $7976: $70
    ld [hl], b                                    ; $7977: $70
    ld [hl], b                                    ; $7978: $70
    ld h, h                                       ; $7979: $64
    ld l, [hl]                                    ; $797a: $6e
    ld [hl-], a                                   ; $797b: $32
    ld e, d                                       ; $797c: $5a
    ld e, b                                       ; $797d: $58
    daa                                           ; $797e: $27
    ld [hl-], a                                   ; $797f: $32
    ld l, [hl]                                    ; $7980: $6e
    sbc a                                         ; $7981: $9f
    ret nz                                        ; $7982: $c0

    cp a                                          ; $7983: $bf
    db $ec                                        ; $7984: $ec
    db $eb                                        ; $7985: $eb
    ld c, e                                       ; $7986: $4b
    cp a                                          ; $7987: $bf
    ldh [$c0], a                                  ; $7988: $e0 $c0
    pop hl                                        ; $798a: $e1
    sbc [hl]                                      ; $798b: $9e
    cp [hl]                                       ; $798c: $be
    pop hl                                        ; $798d: $e1
    ld l, [hl]                                    ; $798e: $6e
    ld h, h                                       ; $798f: $64
    sbc [hl]                                      ; $7990: $9e
    sub a                                         ; $7991: $97
    pop bc                                        ; $7992: $c1
    rst $38                                       ; $7993: $ff
    ret nz                                        ; $7994: $c0

    db $ec                                        ; $7995: $ec
    ld c, e                                       ; $7996: $4b
    sbc c                                         ; $7997: $99
    ld c, [hl]                                    ; $7998: $4e
    ret nz                                        ; $7999: $c0

    db $e4                                        ; $799a: $e4
    ld a, e                                       ; $799b: $7b
    ldh [$9e], a                                  ; $799c: $e0 $9e
    ld h, b                                       ; $799e: $60
    pop bc                                        ; $799f: $c1
    rst $38                                       ; $79a0: $ff
    db $ed                                        ; $79a1: $ed
    db $ec                                        ; $79a2: $ec
    ld c, d                                       ; $79a3: $4a
    inc bc                                        ; $79a4: $03
    ld c, e                                       ; $79a5: $4b
    ld c, a                                       ; $79a6: $4f
    ret nz                                        ; $79a7: $c0

    and $c1                                       ; $79a8: $e6 $c1
    rst $38                                       ; $79aa: $ff
    rst $38                                       ; $79ab: $ff
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    nop                                           ; $79b3: $00
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
    nop                                           ; $79c4: $00
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
    nop                                           ; $79d5: $00
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
    nop                                           ; $79e6: $00
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
    nop                                           ; $79f7: $00
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
    nop                                           ; $7a08: $00
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
    nop                                           ; $7a19: $00
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
    nop                                           ; $7a2a: $00
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
    nop                                           ; $7a3b: $00
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
    rst $38                                       ; $7a5b: $ff
    rst $38                                       ; $7a5c: $ff
    nop                                           ; $7a5d: $00
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
    ei                                            ; $7a6b: $fb
    nop                                           ; $7a6c: $00
    nop                                           ; $7a6d: $00
    nop                                           ; $7a6e: $00
    call $ff00                                    ; $7a6f: $cd $00 $ff
    jp hl                                         ; $7a72: $e9


    scf                                           ; $7a73: $37
    ld [hl-], a                                   ; $7a74: $32
    pop af                                        ; $7a75: $f1
    ld [$ffff], a                                 ; $7a76: $ea $ff $ff
    inc sp                                        ; $7a79: $33
    ld sp, $dcfe                                  ; $7a7a: $31 $fe $dc
    ld a, [c]                                     ; $7a7d: $f2
    ld [hl], $30                                  ; $7a7e: $36 $30
    scf                                           ; $7a80: $37
    ld h, $20                                     ; $7a81: $26 $20
    daa                                           ; $7a83: $27
    db $10                                        ; $7a84: $10
    ei                                            ; $7a85: $fb
    ld d, $17                                     ; $7a86: $16 $17
    cp [hl]                                       ; $7a88: $be
    or $34                                        ; $7a89: $f6 $34
    ld [hl], $32                                  ; $7a8b: $36 $32
    jr nc, jr_056_7ac6                            ; $7a8d: $30 $37

    rrca                                          ; $7a8f: $0f
    ld sp, $3133                                  ; $7a90: $31 $33 $31
    inc sp                                        ; $7a93: $33
    sbc h                                         ; $7a94: $9c
    rst $38                                       ; $7a95: $ff
    rst $38                                       ; $7a96: $ff
    ei                                            ; $7a97: $fb
    nop                                           ; $7a98: $00
    nop                                           ; $7a99: $00
    nop                                           ; $7a9a: $00
    and e                                         ; $7a9b: $a3
    ld a, d                                       ; $7a9c: $7a
    db $d3                                        ; $7a9d: $d3
    ld a, d                                       ; $7a9e: $7a
    ld d, a                                       ; $7a9f: $57
    ld a, h                                       ; $7aa0: $7c
    rst $38                                       ; $7aa1: $ff
    ld a, l                                       ; $7aa2: $7d
    ld [$c503], a                                 ; $7aa3: $ea $03 $c5
    ld b, $e2                                     ; $7aa6: $06 $e2
    ld bc, $00a0                                  ; $7aa8: $01 $a0 $00
    ld [$f003], a                                 ; $7aab: $ea $03 $f0
    inc bc                                        ; $7aae: $03
    push bc                                       ; $7aaf: $c5
    ld b, $e2                                     ; $7ab0: $06 $e2
    ld bc, $023f                                  ; $7ab2: $01 $3f $02
    xor e                                         ; $7ab5: $ab
    nop                                           ; $7ab6: $00
    inc sp                                        ; $7ab7: $33
    ld bc, $06c5                                  ; $7ab8: $01 $c5 $06
    ld [$0825], sp                                ; $7abb: $08 $25 $08
    dec h                                         ; $7abe: $25
    ld [$0825], sp                                ; $7abf: $08 $25 $08
    dec h                                         ; $7ac2: $25
    ld [$0825], sp                                ; $7ac3: $08 $25 $08

jr_056_7ac6:
    dec h                                         ; $7ac6: $25
    ld [$0825], sp                                ; $7ac7: $08 $25 $08
    dec h                                         ; $7aca: $25
    ld [$0825], sp                                ; $7acb: $08 $25 $08
    dec h                                         ; $7ace: $25
    ld [$0825], sp                                ; $7acf: $08 $25 $08
    dec h                                         ; $7ad2: $25
    rst $18                                       ; $7ad3: $df
    ld a, [bc]                                    ; $7ad4: $0a
    dec bc                                        ; $7ad5: $0b
    dec bc                                        ; $7ad6: $0b
    ld l, e                                       ; $7ad7: $6b
    dec bc                                        ; $7ad8: $0b
    rst $38                                       ; $7ad9: $ff
    add sp, $4b                                   ; $7ada: $e8 $4b
    dec bc                                        ; $7adc: $0b
    rst $00                                       ; $7add: $c7
    dec hl                                        ; $7ade: $2b
    dec bc                                        ; $7adf: $0b
    inc c                                         ; $7ae0: $0c
    rst $38                                       ; $7ae1: $ff
    rst $38                                       ; $7ae2: $ff
    rst $20                                       ; $7ae3: $e7
    and $c1                                       ; $7ae4: $e6 $c1
    ldh [rOCPD], a                                ; $7ae6: $e0 $6b
    ld c, e                                       ; $7ae8: $4b
    adc d                                         ; $7ae9: $8a
    rst $38                                       ; $7aea: $ff
    rst $20                                       ; $7aeb: $e7
    dec bc                                        ; $7aec: $0b
    db $fd                                        ; $7aed: $fd
    ldh [$2b], a                                  ; $7aee: $e0 $2b
    jp z, $c0ff                                   ; $7af0: $ca $ff $c0

    add sp, -$3f                                  ; $7af3: $e8 $c1
    pop hl                                        ; $7af5: $e1
    ld l, e                                       ; $7af6: $6b
    ld [$e1ff], sp                                ; $7af7: $08 $ff $e1
    pop bc                                        ; $7afa: $c1
    ld [c], a                                     ; $7afb: $e2
    ld a, a                                       ; $7afc: $7f
    ldh [rWX], a                                  ; $7afd: $e0 $4b
    add b                                         ; $7aff: $80
    rst $38                                       ; $7b00: $ff
    jp hl                                         ; $7b01: $e9


    add sp, -$7e                                  ; $7b02: $e8 $82
    ld [c], a                                     ; $7b04: $e2
    ret nz                                        ; $7b05: $c0

    push hl                                       ; $7b06: $e5
    ld b, $3f                                     ; $7b07: $06 $3f
    ld [c], a                                     ; $7b09: $e2
    ld c, e                                       ; $7b0a: $4b
    ld c, e                                       ; $7b0b: $4b
    jp z, $c0ff                                   ; $7b0c: $ca $ff $c0

    add sp, $43                                   ; $7b0f: $e8 $43
    jp hl                                         ; $7b11: $e9


    pop bc                                        ; $7b12: $c1
    db $e3                                        ; $7b13: $e3
    add b                                         ; $7b14: $80
    rst $38                                       ; $7b15: $ff
    nop                                           ; $7b16: $00
    nop                                           ; $7b17: $00
    jp hl                                         ; $7b18: $e9


    rst $00                                       ; $7b19: $c7
    push hl                                       ; $7b1a: $e5
    ret z                                         ; $7b1b: $c8

    ret nz                                        ; $7b1c: $c0

    pop bc                                        ; $7b1d: $c1
    db $e4                                        ; $7b1e: $e4
    ret nz                                        ; $7b1f: $c0

    rst $38                                       ; $7b20: $ff
    ret nz                                        ; $7b21: $c0

    db $ec                                        ; $7b22: $ec
    ld c, c                                       ; $7b23: $49
    db $e4                                        ; $7b24: $e4
    ld a, e                                       ; $7b25: $7b
    and $10                                       ; $7b26: $e6 $10
    jp z, $80ff                                   ; $7b28: $ca $ff $80

    ld [$e30a], a                                 ; $7b2b: $ea $0a $e3
    cp h                                          ; $7b2e: $bc
    jp nz, $be6b                                  ; $7b2f: $c2 $6b $be

    ret nz                                        ; $7b32: $c0

    ld b, b                                       ; $7b33: $40
    rst $38                                       ; $7b34: $ff
    ld b, b                                       ; $7b35: $40
    db $eb                                        ; $7b36: $eb
    nop                                           ; $7b37: $00
    add d                                         ; $7b38: $82
    db $ec                                        ; $7b39: $ec
    ld b, b                                       ; $7b3a: $40
    rst $38                                       ; $7b3b: $ff
    nop                                           ; $7b3c: $00
    call z, $e443                                 ; $7b3d: $cc $43 $e4
    ret nz                                        ; $7b40: $c0

    and [hl]                                      ; $7b41: $a6
    ret nz                                        ; $7b42: $c0

    rst $38                                       ; $7b43: $ff
    ret nz                                        ; $7b44: $c0

    db $ed                                        ; $7b45: $ed
    ld b, $c6                                     ; $7b46: $06 $c6
    ld [bc], a                                    ; $7b48: $02
    cp $a3                                        ; $7b49: $fe $a3
    ld l, e                                       ; $7b4b: $6b
    jp z, $e8ff                                   ; $7b4c: $ca $ff $e8

    rst $20                                       ; $7b4f: $e7
    adc d                                         ; $7b50: $8a
    ret nz                                        ; $7b51: $c0

    rst $00                                       ; $7b52: $c7
    and l                                         ; $7b53: $a5
    ld a, a                                       ; $7b54: $7f
    jp nz, $a131                                  ; $7b55: $c2 $31 $a1

    db $e4                                        ; $7b58: $e4
    jp z, $c0ff                                   ; $7b59: $ca $ff $c0

    add sp, $2b                                   ; $7b5c: $e8 $2b
    adc b                                         ; $7b5e: $88
    and l                                         ; $7b5f: $a5
    ld a, [$6b84]                                 ; $7b60: $fa $84 $6b
    dec bc                                        ; $7b63: $0b
    ld a, [bc]                                    ; $7b64: $0a
    jr nz, @-$34                                  ; $7b65: $20 $ca

    rst $38                                       ; $7b67: $ff
    nop                                           ; $7b68: $00
    xor b                                         ; $7b69: $a8
    cp a                                          ; $7b6a: $bf
    pop hl                                        ; $7b6b: $e1
    ld [$76e4], sp                                ; $7b6c: $08 $e4 $76
    and d                                         ; $7b6f: $a2
    dec bc                                        ; $7b70: $0b
    ret nz                                        ; $7b71: $c0

    rst $38                                       ; $7b72: $ff
    ld [$10e9], a                                 ; $7b73: $ea $e9 $10
    sub b                                         ; $7b76: $90
    add b                                         ; $7b77: $80
    rst $00                                       ; $7b78: $c7
    and c                                         ; $7b79: $a1
    ld [$78e2], sp                                ; $7b7a: $08 $e2 $78
    add c                                         ; $7b7d: $81
    ld a, [bc]                                    ; $7b7e: $0a
    cp $e0                                        ; $7b7f: $fe $e0
    jp z, $e8ff                                   ; $7b81: $ca $ff $e8

    rst $20                                       ; $7b84: $e7
    add hl, bc                                    ; $7b85: $09
    ld a, [bc]                                    ; $7b86: $0a
    ld c, a                                       ; $7b87: $4f
    add b                                         ; $7b88: $80
    add $83                                       ; $7b89: $c6 $83
    ld l, e                                       ; $7b8b: $6b
    push bc                                       ; $7b8c: $c5
    pop hl                                        ; $7b8d: $e1
    dec [hl]                                      ; $7b8e: $35
    add d                                         ; $7b8f: $82
    jp z, $ffff                                   ; $7b90: $ca $ff $ff

    rst $38                                       ; $7b93: $ff
    nop                                           ; $7b94: $00
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
    nop                                           ; $7ba5: $00
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
    nop                                           ; $7bb6: $00
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
    nop                                           ; $7bc7: $00
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
    nop                                           ; $7bd8: $00
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
    nop                                           ; $7be9: $00
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
    nop                                           ; $7bfa: $00
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
    nop                                           ; $7c0b: $00
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
    nop                                           ; $7c1c: $00
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
    nop                                           ; $7c2d: $00
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
    nop                                           ; $7c3e: $00
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

jr_056_7c4e:
    rst $38                                       ; $7c4e: $ff
    nop                                           ; $7c4f: $00
    rst $38                                       ; $7c50: $ff
    rst $38                                       ; $7c51: $ff
    rst $38                                       ; $7c52: $ff
    di                                            ; $7c53: $f3
    nop                                           ; $7c54: $00
    nop                                           ; $7c55: $00
    nop                                           ; $7c56: $00
    rst $38                                       ; $7c57: $ff
    ld e, d                                       ; $7c58: $5a
    ld h, b                                       ; $7c59: $60
    ld sp, $574d                                  ; $7c5a: $31 $4d $57
    ld d, [hl]                                    ; $7c5d: $56
    ld d, [hl]                                    ; $7c5e: $56
    ld d, [hl]                                    ; $7c5f: $56
    ld a, [$e0fc]                                 ; $7c60: $fa $fc $e0
    ld d, a                                       ; $7c63: $57
    ei                                            ; $7c64: $fb
    pop hl                                        ; $7c65: $e1
    ld c, l                                       ; $7c66: $4d
    ld sp, $5b60                                  ; $7c67: $31 $60 $5b
    nop                                           ; $7c6a: $00
    cp b                                          ; $7c6b: $b8
    rst $38                                       ; $7c6c: $ff
    rst $38                                       ; $7c6d: $ff
    rst $20                                       ; $7c6e: $e7
    and $c1                                       ; $7c6f: $e6 $c1
    ldh [$32], a                                  ; $7c71: $e0 $32
    ld l, l                                       ; $7c73: $6d
    ld l, h                                       ; $7c74: $6c
    rst $38                                       ; $7c75: $ff
    ld [c], a                                     ; $7c76: $e2
    ld l, d                                       ; $7c77: $6a
    rra                                           ; $7c78: $1f
    ld l, d                                       ; $7c79: $6a
    ld l, l                                       ; $7c7a: $6d
    ld l, l                                       ; $7c7b: $6d
    jr nc, @+$35                                  ; $7c7c: $30 $33

    cp a                                          ; $7c7e: $bf
    ldh [$ca], a                                  ; $7c7f: $e0 $ca
    rst $38                                       ; $7c81: $ff
    add sp, -$19                                  ; $7c82: $e8 $e7
    ld h, $c1                                     ; $7c84: $26 $c1
    pop hl                                        ; $7c86: $e1
    ld l, d                                       ; $7c87: $6a
    ld l, b                                       ; $7c88: $68
    rst $38                                       ; $7c89: $ff
    pop hl                                        ; $7c8a: $e1
    pop bc                                        ; $7c8b: $c1
    ld [c], a                                     ; $7c8c: $e2
    jr nc, jr_056_7c4e                            ; $7c8d: $30 $bf

    pop hl                                        ; $7c8f: $e1
    jp z, $f0ff                                   ; $7c90: $ca $ff $f0

    add sp, -$19                                  ; $7c93: $e8 $e7
    pop bc                                        ; $7c95: $c1
    pop hl                                        ; $7c96: $e1
    ret nz                                        ; $7c97: $c0

    db $e4                                        ; $7c98: $e4
    pop bc                                        ; $7c99: $c1
    ld [c], a                                     ; $7c9a: $e2
    jr nc, jr_056_7d0a                            ; $7c9b: $30 $6d

    inc sp                                        ; $7c9d: $33
    ld c, l                                       ; $7c9e: $4d
    call nz, $ffca                                ; $7c9f: $c4 $ca $ff
    add sp, -$19                                  ; $7ca2: $e8 $e7
    add hl, sp                                    ; $7ca4: $39
    pop bc                                        ; $7ca5: $c1
    ldh [rLCDC], a                                ; $7ca6: $e0 $40
    db $e4                                        ; $7ca8: $e4
    pop bc                                        ; $7ca9: $c1
    db $e3                                        ; $7caa: $e3
    ld l, d                                       ; $7cab: $6a
    ld l, l                                       ; $7cac: $6d
    adc c                                         ; $7cad: $89
    ld d, c                                       ; $7cae: $51
    jp z, $e8ff                                   ; $7caf: $ca $ff $e8

    rst $20                                       ; $7cb2: $e7
    ld d, e                                       ; $7cb3: $53
    ld c, c                                       ; $7cb4: $49
    db $e4                                        ; $7cb5: $e4
    db $fd                                        ; $7cb6: $fd
    db $e4                                        ; $7cb7: $e4
    pop bc                                        ; $7cb8: $c1
    ldh [$30], a                                  ; $7cb9: $e0 $30
    add hl, bc                                    ; $7cbb: $09
    ld d, b                                       ; $7cbc: $50
    jp z, $e8ff                                   ; $7cbd: $ca $ff $e8

    rst $20                                       ; $7cc0: $e7
    ld d, d                                       ; $7cc1: $52
    ld c, c                                       ; $7cc2: $49
    push hl                                       ; $7cc3: $e5
    ld a, l                                       ; $7cc4: $7d
    db $e3                                        ; $7cc5: $e3
    pop bc                                        ; $7cc6: $c1
    ldh [$c0], a                                  ; $7cc7: $e0 $c0

jr_056_7cc9:
    rst $38                                       ; $7cc9: $ff
    ld [$eac0], sp                                ; $7cca: $08 $c0 $ea
    ld a, [bc]                                    ; $7ccd: $0a
    db $e4                                        ; $7cce: $e4
    cp h                                          ; $7ccf: $bc
    jp $be68                                      ; $7cd0: $c3 $68 $be


    ret nz                                        ; $7cd3: $c0

    ld b, b                                       ; $7cd4: $40
    rst $38                                       ; $7cd5: $ff
    ld b, b                                       ; $7cd6: $40
    ld [$e50a], a                                 ; $7cd7: $ea $0a $e5
    inc b                                         ; $7cda: $04
    inc a                                         ; $7cdb: $3c
    jp $c0c0                                      ; $7cdc: $c3 $c0 $c0


    ld [hl-], a                                   ; $7cdf: $32
    ret nz                                        ; $7ce0: $c0

    rst $18                                       ; $7ce1: $df
    nop                                           ; $7ce2: $00
    jp hl                                         ; $7ce3: $e9


    set 0, h                                      ; $7ce4: $cb $c4
    db $fc                                        ; $7ce6: $fc
    push bc                                       ; $7ce7: $c5
    pop bc                                        ; $7ce8: $c1
    ldh [rP1], a                                  ; $7ce9: $e0 $00
    ld b, b                                       ; $7ceb: $40
    rst $18                                       ; $7cec: $df
    nop                                           ; $7ced: $00
    jp hl                                         ; $7cee: $e9


    pop bc                                        ; $7cef: $c1
    rst $20                                       ; $7cf0: $e7
    ld a, h                                       ; $7cf1: $7c
    jp nz, $e0c1                                  ; $7cf2: $c2 $c1 $e0

    ret nz                                        ; $7cf5: $c0

    cp a                                          ; $7cf6: $bf
    ld b, b                                       ; $7cf7: $40
    ret                                           ; $7cf8: $c9


    add d                                         ; $7cf9: $82
    and $3f                                       ; $7cfa: $e6 $3f
    ld l, l                                       ; $7cfc: $6d
    ccf                                           ; $7cfd: $3f
    ld d, h                                       ; $7cfe: $54
    ld d, l                                       ; $7cff: $55
    ld d, l                                       ; $7d00: $55
    ld a, [hl-]                                   ; $7d01: $3a
    ld b, b                                       ; $7d02: $40
    cp a                                          ; $7d03: $bf
    ret nz                                        ; $7d04: $c0

    xor a                                         ; $7d05: $af
    jr c, jr_056_7cc9                             ; $7d06: $38 $c1

    db $e3                                        ; $7d08: $e3
    ld b, a                                       ; $7d09: $47

jr_056_7d0a:
    ldh [rIE], a                                  ; $7d0a: $e0 $ff
    pop hl                                        ; $7d0c: $e1
    ld h, b                                       ; $7d0d: $60
    ld e, e                                       ; $7d0e: $5b
    ld e, d                                       ; $7d0f: $5a
    jp z, Jump_056_40ff                           ; $7d10: $ca $ff $40

    xor e                                         ; $7d13: $ab
    ld a, [hl]                                    ; $7d14: $7e
    pop bc                                        ; $7d15: $c1
    push hl                                       ; $7d16: $e5
    ld h, d                                       ; $7d17: $62
    ld h, d                                       ; $7d18: $62
    ld h, d                                       ; $7d19: $62
    ld e, l                                       ; $7d1a: $5d
    ld e, h                                       ; $7d1b: $5c
    ld e, e                                       ; $7d1c: $5b
    ret nz                                        ; $7d1d: $c0

    rst $38                                       ; $7d1e: $ff
    inc l                                         ; $7d1f: $2c
    ret nz                                        ; $7d20: $c0

    adc l                                         ; $7d21: $8d
    ret                                           ; $7d22: $c9


    call nz, Call_056_5b60                        ; $7d23: $c4 $60 $5b
    rst $38                                       ; $7d26: $ff
    ldh [$5a], a                                  ; $7d27: $e0 $5a
    cp $e0                                        ; $7d29: $fe $e0
    jp z, Jump_000_00ff                           ; $7d2b: $ca $ff $00

    add sp, -$19                                  ; $7d2e: $e8 $e7
    ld b, b                                       ; $7d30: $40
    add c                                         ; $7d31: $81
    ld c, b                                       ; $7d32: $48
    add h                                         ; $7d33: $84
    push bc                                       ; $7d34: $c5
    pop hl                                        ; $7d35: $e1
    rst $38                                       ; $7d36: $ff
    ld [c], a                                     ; $7d37: $e2
    jp z, $ffff                                   ; $7d38: $ca $ff $ff

    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    nop                                           ; $7d3e: $00
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
    nop                                           ; $7d4f: $00
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
    rst $38                                       ; $7d6d: $ff
    rst $38                                       ; $7d6e: $ff
    rst $38                                       ; $7d6f: $ff
    rst $38                                       ; $7d70: $ff
    nop                                           ; $7d71: $00
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
    nop                                           ; $7d82: $00
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
    nop                                           ; $7d93: $00
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
    nop                                           ; $7da4: $00
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
    nop                                           ; $7db5: $00
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
    nop                                           ; $7dc6: $00
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
    nop                                           ; $7dd7: $00
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
    nop                                           ; $7de8: $00
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
    nop                                           ; $7df9: $00
    rst $38                                       ; $7dfa: $ff
    di                                            ; $7dfb: $f3
    nop                                           ; $7dfc: $00
    nop                                           ; $7dfd: $00
    nop                                           ; $7dfe: $00
    and l                                         ; $7dff: $a5
    nop                                           ; $7e00: $00
    rst $38                                       ; $7e01: $ff
    push hl                                       ; $7e02: $e5
    ld [hl-], a                                   ; $7e03: $32
    or $e6                                        ; $7e04: $f6 $e6
    rst $30                                       ; $7e06: $f7
    rst $20                                       ; $7e07: $e7
    dec [hl]                                      ; $7e08: $35
    db $ec                                        ; $7e09: $ec
    xor $37                                       ; $7e0a: $ee $37
    db $ec                                        ; $7e0c: $ec
    jp c, $c7f0                                   ; $7e0d: $da $f0 $c7

    add sp, $33                                   ; $7e10: $e8 $33
    ld sp, $f2e0                                  ; $7e12: $31 $e0 $f2
    ld [hl], $30                                  ; $7e15: $36 $30
    scf                                           ; $7e17: $37
    cp a                                          ; $7e18: $bf
    ld h, $20                                     ; $7e19: $26 $20
    daa                                           ; $7e1b: $27
    db $10                                        ; $7e1c: $10
    ld d, $17                                     ; $7e1d: $16 $17
    jp nz, Jump_000_34f6                          ; $7e1f: $c2 $f6 $34

    rst $38                                       ; $7e22: $ff
    ld [hl], $32                                  ; $7e23: $36 $32
    jr nc, jr_056_7e5e                            ; $7e25: $30 $37

    ld sp, $3133                                  ; $7e27: $31 $33 $31
    inc sp                                        ; $7e2a: $33
    nop                                           ; $7e2b: $00
    and b                                         ; $7e2c: $a0
    ei                                            ; $7e2d: $fb
    rst $38                                       ; $7e2e: $ff
    rst $28                                       ; $7e2f: $ef
    nop                                           ; $7e30: $00
    nop                                           ; $7e31: $00
    nop                                           ; $7e32: $00
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

jr_056_7e5e:
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

Call_056_7f00:
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

Call_056_7fff:
    rst $38                                       ; $7fff: $ff
