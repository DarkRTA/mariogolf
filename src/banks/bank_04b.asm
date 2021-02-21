; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04b", ROMX[$4000], BANK[$4b]

    db $0a, $57

    ld c, c                                       ; $4002: $49
    ld h, d                                       ; $4003: $62
    ld d, d                                       ; $4004: $52
    ld h, d                                       ; $4005: $62
    ld e, e                                       ; $4006: $5b
    ld h, d                                       ; $4007: $62
    ld h, h                                       ; $4008: $64
    ld h, d                                       ; $4009: $62
    ld l, e                                       ; $400a: $6b
    ld h, d                                       ; $400b: $62
    ld [hl], d                                    ; $400c: $72
    ld h, d                                       ; $400d: $62
    ld a, c                                       ; $400e: $79
    ld h, d                                       ; $400f: $62
    ld a, $69                                     ; $4010: $3e $69
    ld de, $8868                                  ; $4012: $11 $68 $88
    ld l, e                                       ; $4015: $6b
    call nz, Call_04b_4d6b                        ; $4016: $c4 $6b $4d
    ld l, h                                       ; $4019: $6c
    adc b                                         ; $401a: $88
    ld l, h                                       ; $401b: $6c
    dec hl                                        ; $401c: $2b
    ld l, l                                       ; $401d: $6d
    rst $20                                       ; $401e: $e7
    ld l, l                                       ; $401f: $6d
    and b                                         ; $4020: $a0
    ld a, c                                       ; $4021: $79
    call c, Call_000_1879                         ; $4022: $dc $79 $18
    ld a, d                                       ; $4025: $7a
    rst $38                                       ; $4026: $ff
    nop                                           ; $4027: $00
    rst $38                                       ; $4028: $ff
    nop                                           ; $4029: $00
    rst $38                                       ; $402a: $ff
    nop                                           ; $402b: $00
    rst $38                                       ; $402c: $ff
    nop                                           ; $402d: $00
    rst $38                                       ; $402e: $ff
    nop                                           ; $402f: $00
    rst $38                                       ; $4030: $ff
    nop                                           ; $4031: $00
    rst $38                                       ; $4032: $ff
    nop                                           ; $4033: $00
    rst $38                                       ; $4034: $ff
    nop                                           ; $4035: $00
    db $f4                                        ; $4036: $f4
    ld [hl], h                                    ; $4037: $74
    db $f4                                        ; $4038: $f4
    ld [hl], h                                    ; $4039: $74
    push af                                       ; $403a: $f5
    ld [hl], l                                    ; $403b: $75
    push af                                       ; $403c: $f5
    ld [hl], l                                    ; $403d: $75
    push af                                       ; $403e: $f5
    ld [hl], l                                    ; $403f: $75
    push af                                       ; $4040: $f5
    ld [hl], l                                    ; $4041: $75
    push af                                       ; $4042: $f5
    ld [hl], l                                    ; $4043: $75
    db $f4                                        ; $4044: $f4
    ld [hl], h                                    ; $4045: $74
    ld [bc], a                                    ; $4046: $02
    ld [bc], a                                    ; $4047: $02
    jp nz, $e2c2                                  ; $4048: $c2 $c2 $e2

    ld [c], a                                     ; $404b: $e2
    ld [c], a                                     ; $404c: $e2
    ld [c], a                                     ; $404d: $e2
    ld [c], a                                     ; $404e: $e2
    ld [c], a                                     ; $404f: $e2
    ld [c], a                                     ; $4050: $e2
    ld [c], a                                     ; $4051: $e2
    ld [c], a                                     ; $4052: $e2
    ld [c], a                                     ; $4053: $e2
    jp nz, Jump_04b_5fc2                          ; $4054: $c2 $c2 $5f

    ld e, h                                       ; $4057: $5c

Call_04b_4058:
    ld e, a                                       ; $4058: $5f
    ld e, h                                       ; $4059: $5c
    ccf                                           ; $405a: $3f
    inc a                                         ; $405b: $3c
    ccf                                           ; $405c: $3f
    inc a                                         ; $405d: $3c
    ccf                                           ; $405e: $3f
    inc a                                         ; $405f: $3c
    ccf                                           ; $4060: $3f
    inc a                                         ; $4061: $3c
    ccf                                           ; $4062: $3f
    inc a                                         ; $4063: $3c
    ld e, a                                       ; $4064: $5f
    ld e, h                                       ; $4065: $5c
    ld a, [$fa1a]                                 ; $4066: $fa $1a $fa
    ld a, [de]                                    ; $4069: $1a
    ld a, [$fa1a]                                 ; $406a: $fa $1a $fa
    ld a, [de]                                    ; $406d: $1a
    ld a, [$fa1a]                                 ; $406e: $fa $1a $fa
    ld a, [de]                                    ; $4071: $1a
    ld a, [$fa1a]                                 ; $4072: $fa $1a $fa
    ld a, [de]                                    ; $4075: $1a
    ld b, d                                       ; $4076: $42
    ld b, d                                       ; $4077: $42
    ld [bc], a                                    ; $4078: $02
    ld [bc], a                                    ; $4079: $02
    ld h, d                                       ; $407a: $62
    ld h, d                                       ; $407b: $62

Call_04b_407c:
    ld a, [c]                                     ; $407c: $f2
    ld a, [c]                                     ; $407d: $f2
    ld a, [c]                                     ; $407e: $f2
    ld a, [c]                                     ; $407f: $f2
    ld a, [c]                                     ; $4080: $f2
    ld a, [c]                                     ; $4081: $f2
    ld a, [c]                                     ; $4082: $f2
    ld a, [c]                                     ; $4083: $f2
    ld h, d                                       ; $4084: $62
    ld h, d                                       ; $4085: $62
    ld e, a                                       ; $4086: $5f
    ld e, b                                       ; $4087: $58
    ld e, a                                       ; $4088: $5f
    ld e, b                                       ; $4089: $58
    ld e, a                                       ; $408a: $5f
    ld e, b                                       ; $408b: $58
    ccf                                           ; $408c: $3f
    jr c, jr_04b_40ce                             ; $408d: $38 $3f

    jr c, jr_04b_40d0                             ; $408f: $38 $3f

    jr c, jr_04b_40d2                             ; $4091: $38 $3f

    jr c, jr_04b_40f4                             ; $4093: $38 $5f

    ld e, b                                       ; $4095: $58
    db $fd                                        ; $4096: $fd
    dec c                                         ; $4097: $0d
    db $fd                                        ; $4098: $fd
    dec c                                         ; $4099: $0d
    db $fd                                        ; $409a: $fd
    dec c                                         ; $409b: $0d
    db $fd                                        ; $409c: $fd
    dec c                                         ; $409d: $0d
    db $fc                                        ; $409e: $fc
    inc c                                         ; $409f: $0c

Call_04b_40a0:
    db $fc                                        ; $40a0: $fc
    inc c                                         ; $40a1: $0c
    db $fc                                        ; $40a2: $fc
    inc c                                         ; $40a3: $0c
    db $fd                                        ; $40a4: $fd
    dec c                                         ; $40a5: $0d
    ld b, l                                       ; $40a6: $45
    ld b, l                                       ; $40a7: $45
    ld b, l                                       ; $40a8: $45
    ld b, l                                       ; $40a9: $45
    dec b                                         ; $40aa: $05
    dec b                                         ; $40ab: $05
    ld h, l                                       ; $40ac: $65
    ld h, l                                       ; $40ad: $65
    push af                                       ; $40ae: $f5
    push af                                       ; $40af: $f5
    db $f4                                        ; $40b0: $f4
    db $f4                                        ; $40b1: $f4
    db $f4                                        ; $40b2: $f4
    db $f4                                        ; $40b3: $f4
    ld h, l                                       ; $40b4: $65
    ld h, l                                       ; $40b5: $65
    ld a, a                                       ; $40b6: $7f
    ld h, b                                       ; $40b7: $60
    ld a, a                                       ; $40b8: $7f
    ld h, b                                       ; $40b9: $60
    ld a, a                                       ; $40ba: $7f
    ld h, b                                       ; $40bb: $60
    ld a, a                                       ; $40bc: $7f
    ld h, b                                       ; $40bd: $60
    rst $38                                       ; $40be: $ff
    ldh [rIE], a                                  ; $40bf: $e0 $ff
    ldh [rIE], a                                  ; $40c1: $e0 $ff
    ldh [$7f], a                                  ; $40c3: $e0 $7f
    ld h, b                                       ; $40c5: $60
    rst $38                                       ; $40c6: $ff
    inc bc                                        ; $40c7: $03
    rst $38                                       ; $40c8: $ff
    inc bc                                        ; $40c9: $03
    rst $38                                       ; $40ca: $ff
    inc bc                                        ; $40cb: $03
    rst $38                                       ; $40cc: $ff
    inc bc                                        ; $40cd: $03

jr_04b_40ce:
    rst $38                                       ; $40ce: $ff
    inc bc                                        ; $40cf: $03

jr_04b_40d0:
    rst $38                                       ; $40d0: $ff
    inc bc                                        ; $40d1: $03

jr_04b_40d2:
    rst $38                                       ; $40d2: $ff
    inc bc                                        ; $40d3: $03
    rst $38                                       ; $40d4: $ff
    inc bc                                        ; $40d5: $03
    ld b, d                                       ; $40d6: $42
    ld b, d                                       ; $40d7: $42
    ld b, d                                       ; $40d8: $42
    ld b, d                                       ; $40d9: $42
    ld b, d                                       ; $40da: $42
    ld b, d                                       ; $40db: $42
    ld b, d                                       ; $40dc: $42
    ld b, d                                       ; $40dd: $42
    ld [hl+], a                                   ; $40de: $22
    ld [hl+], a                                   ; $40df: $22
    ld [hl], c                                    ; $40e0: $71
    ld [hl], c                                    ; $40e1: $71
    ld [hl], c                                    ; $40e2: $71
    ld [hl], c                                    ; $40e3: $71
    ld [hl+], a                                   ; $40e4: $22
    ld [hl+], a                                   ; $40e5: $22
    rst $38                                       ; $40e6: $ff
    ret nz                                        ; $40e7: $c0

    rst $38                                       ; $40e8: $ff
    ret nz                                        ; $40e9: $c0

    rst $38                                       ; $40ea: $ff
    ret nz                                        ; $40eb: $c0

    rst $38                                       ; $40ec: $ff
    ret nz                                        ; $40ed: $c0

    rst $38                                       ; $40ee: $ff
    ret nz                                        ; $40ef: $c0

    rst $38                                       ; $40f0: $ff
    ret nz                                        ; $40f1: $c0

    rst $38                                       ; $40f2: $ff
    ret nz                                        ; $40f3: $c0

jr_04b_40f4:
    rst $38                                       ; $40f4: $ff
    ret nz                                        ; $40f5: $c0

    db $f4                                        ; $40f6: $f4
    ld [hl], h                                    ; $40f7: $74
    db $f4                                        ; $40f8: $f4
    ld [hl], h                                    ; $40f9: $74
    db $f4                                        ; $40fa: $f4
    ld [hl], h                                    ; $40fb: $74
    db $f4                                        ; $40fc: $f4
    ld [hl], h                                    ; $40fd: $74
    ld hl, sp+$78                                 ; $40fe: $f8 $78
    ld hl, sp+$78                                 ; $4100: $f8 $78
    ld hl, sp+$78                                 ; $4102: $f8 $78
    db $f4                                        ; $4104: $f4
    ld [hl], h                                    ; $4105: $74
    ld [bc], a                                    ; $4106: $02
    ld [bc], a                                    ; $4107: $02
    add d                                         ; $4108: $82
    add d                                         ; $4109: $82
    add b                                         ; $410a: $80
    add b                                         ; $410b: $80
    add [hl]                                      ; $410c: $86
    add [hl]                                      ; $410d: $86
    adc a                                         ; $410e: $8f
    adc a                                         ; $410f: $8f
    adc a                                         ; $4110: $8f
    adc a                                         ; $4111: $8f
    adc a                                         ; $4112: $8f
    adc a                                         ; $4113: $8f
    add [hl]                                      ; $4114: $86
    add [hl]                                      ; $4115: $86
    ld e, a                                       ; $4116: $5f
    ld e, h                                       ; $4117: $5c
    ld e, a                                       ; $4118: $5f
    ld e, h                                       ; $4119: $5c
    ld e, a                                       ; $411a: $5f
    ld e, h                                       ; $411b: $5c
    ld e, a                                       ; $411c: $5f
    ld e, h                                       ; $411d: $5c
    ld e, a                                       ; $411e: $5f
    ld e, h                                       ; $411f: $5c
    ld e, a                                       ; $4120: $5f
    ld e, h                                       ; $4121: $5c
    ld e, a                                       ; $4122: $5f
    ld e, h                                       ; $4123: $5c
    ld e, a                                       ; $4124: $5f
    ld e, h                                       ; $4125: $5c
    ld a, [$fa1a]                                 ; $4126: $fa $1a $fa
    ld a, [de]                                    ; $4129: $1a
    ld a, [$fa1a]                                 ; $412a: $fa $1a $fa
    ld a, [de]                                    ; $412d: $1a
    ld a, [$fc1a]                                 ; $412e: $fa $1a $fc
    inc e                                         ; $4131: $1c
    db $fc                                        ; $4132: $fc
    inc e                                         ; $4133: $1c
    ld a, [$021a]                                 ; $4134: $fa $1a $02
    ld [bc], a                                    ; $4137: $02
    ld b, d                                       ; $4138: $42
    ld b, d                                       ; $4139: $42
    ld b, d                                       ; $413a: $42
    ld b, d                                       ; $413b: $42
    ld b, b                                       ; $413c: $40
    ld b, b                                       ; $413d: $40
    ld b, [hl]                                    ; $413e: $46
    ld b, [hl]                                    ; $413f: $46
    ld c, a                                       ; $4140: $4f
    ld c, a                                       ; $4141: $4f
    ld c, a                                       ; $4142: $4f
    ld c, a                                       ; $4143: $4f
    ld b, [hl]                                    ; $4144: $46
    ld b, [hl]                                    ; $4145: $46
    ld e, a                                       ; $4146: $5f
    ld e, b                                       ; $4147: $58
    ld e, a                                       ; $4148: $5f
    ld e, b                                       ; $4149: $58
    ld e, a                                       ; $414a: $5f
    ld e, b                                       ; $414b: $58
    ld e, a                                       ; $414c: $5f
    ld e, b                                       ; $414d: $58
    ld e, a                                       ; $414e: $5f
    ld e, b                                       ; $414f: $58
    ld e, a                                       ; $4150: $5f
    ld e, b                                       ; $4151: $58
    ld e, a                                       ; $4152: $5f
    ld e, b                                       ; $4153: $58
    ld e, a                                       ; $4154: $5f
    ld e, b                                       ; $4155: $58
    db $fd                                        ; $4156: $fd
    dec c                                         ; $4157: $0d
    db $fd                                        ; $4158: $fd
    dec c                                         ; $4159: $0d
    db $fd                                        ; $415a: $fd
    dec c                                         ; $415b: $0d
    db $fd                                        ; $415c: $fd
    dec c                                         ; $415d: $0d
    db $fd                                        ; $415e: $fd
    dec c                                         ; $415f: $0d
    cp $0e                                        ; $4160: $fe $0e
    cp $0e                                        ; $4162: $fe $0e
    db $fd                                        ; $4164: $fd
    dec c                                         ; $4165: $0d
    dec b                                         ; $4166: $05
    dec b                                         ; $4167: $05
    ld b, l                                       ; $4168: $45
    ld b, l                                       ; $4169: $45
    ld b, l                                       ; $416a: $45
    ld b, l                                       ; $416b: $45
    ld b, c                                       ; $416c: $41
    ld b, c                                       ; $416d: $41
    ld b, l                                       ; $416e: $45
    ld b, l                                       ; $416f: $45
    ld c, a                                       ; $4170: $4f
    ld c, a                                       ; $4171: $4f
    ld c, a                                       ; $4172: $4f
    ld c, a                                       ; $4173: $4f
    ld b, l                                       ; $4174: $45
    ld b, l                                       ; $4175: $45
    ld a, a                                       ; $4176: $7f
    ld h, b                                       ; $4177: $60
    ld a, a                                       ; $4178: $7f
    ld h, b                                       ; $4179: $60
    ld a, a                                       ; $417a: $7f
    ld h, b                                       ; $417b: $60
    ld a, a                                       ; $417c: $7f
    ld h, b                                       ; $417d: $60
    ld a, a                                       ; $417e: $7f
    ld h, b                                       ; $417f: $60
    ld a, a                                       ; $4180: $7f
    ld h, b                                       ; $4181: $60
    ld a, a                                       ; $4182: $7f
    ld h, b                                       ; $4183: $60
    ld a, a                                       ; $4184: $7f
    ld h, b                                       ; $4185: $60
    ld b, d                                       ; $4186: $42
    ld b, d                                       ; $4187: $42
    ld b, d                                       ; $4188: $42
    ld b, d                                       ; $4189: $42
    ld b, d                                       ; $418a: $42
    ld b, d                                       ; $418b: $42
    ld b, d                                       ; $418c: $42
    ld b, d                                       ; $418d: $42
    adc h                                         ; $418e: $8c
    adc h                                         ; $418f: $8c
    adc h                                         ; $4190: $8c
    adc h                                         ; $4191: $8c
    ld b, d                                       ; $4192: $42
    ld b, d                                       ; $4193: $42
    ld b, d                                       ; $4194: $42
    ld b, d                                       ; $4195: $42
    nop                                           ; $4196: $00
    nop                                           ; $4197: $00
    jp nz, $e2c2                                  ; $4198: $c2 $c2 $e2

    ld [c], a                                     ; $419b: $e2
    ld [c], a                                     ; $419c: $e2
    ld [c], a                                     ; $419d: $e2
    ld [c], a                                     ; $419e: $e2
    ld [c], a                                     ; $419f: $e2
    ld [c], a                                     ; $41a0: $e2
    ld [c], a                                     ; $41a1: $e2
    ld [c], a                                     ; $41a2: $e2
    ld [c], a                                     ; $41a3: $e2
    jp nz, $40c2                                  ; $41a4: $c2 $c2 $40

    ld b, b                                       ; $41a7: $40
    ld [bc], a                                    ; $41a8: $02
    ld [bc], a                                    ; $41a9: $02
    ld h, d                                       ; $41aa: $62
    ld h, d                                       ; $41ab: $62
    ld a, [c]                                     ; $41ac: $f2
    ld a, [c]                                     ; $41ad: $f2
    ld a, [c]                                     ; $41ae: $f2
    ld a, [c]                                     ; $41af: $f2
    ld a, [c]                                     ; $41b0: $f2
    ld a, [c]                                     ; $41b1: $f2
    ld a, [c]                                     ; $41b2: $f2
    ld a, [c]                                     ; $41b3: $f2
    ld h, d                                       ; $41b4: $62
    ld h, d                                       ; $41b5: $62
    db $fd                                        ; $41b6: $fd
    dec c                                         ; $41b7: $0d
    db $fd                                        ; $41b8: $fd
    dec c                                         ; $41b9: $0d
    db $fd                                        ; $41ba: $fd
    dec c                                         ; $41bb: $0d
    db $fd                                        ; $41bc: $fd
    dec c                                         ; $41bd: $0d
    db $fd                                        ; $41be: $fd
    dec c                                         ; $41bf: $0d
    db $fc                                        ; $41c0: $fc
    inc c                                         ; $41c1: $0c
    db $fc                                        ; $41c2: $fc
    inc c                                         ; $41c3: $0c
    db $fd                                        ; $41c4: $fd
    dec c                                         ; $41c5: $0d
    ld b, c                                       ; $41c6: $41
    ld b, c                                       ; $41c7: $41
    ld b, l                                       ; $41c8: $45
    ld b, l                                       ; $41c9: $45
    dec b                                         ; $41ca: $05
    dec b                                         ; $41cb: $05
    ld h, l                                       ; $41cc: $65
    ld h, l                                       ; $41cd: $65
    db $f4                                        ; $41ce: $f4
    db $f4                                        ; $41cf: $f4
    db $f4                                        ; $41d0: $f4
    db $f4                                        ; $41d1: $f4
    push af                                       ; $41d2: $f5
    push af                                       ; $41d3: $f5
    ld h, l                                       ; $41d4: $65
    ld h, l                                       ; $41d5: $65
    ld a, a                                       ; $41d6: $7f
    ld h, b                                       ; $41d7: $60
    ld a, a                                       ; $41d8: $7f
    ld h, b                                       ; $41d9: $60
    ld a, a                                       ; $41da: $7f
    ld h, b                                       ; $41db: $60
    ld a, a                                       ; $41dc: $7f
    ld h, b                                       ; $41dd: $60
    rst $38                                       ; $41de: $ff
    ldh [rIE], a                                  ; $41df: $e0 $ff
    ldh [$7f], a                                  ; $41e1: $e0 $7f
    ld h, b                                       ; $41e3: $60
    ld a, a                                       ; $41e4: $7f
    ld h, b                                       ; $41e5: $60
    rst $38                                       ; $41e6: $ff
    inc bc                                        ; $41e7: $03
    rst $38                                       ; $41e8: $ff
    inc bc                                        ; $41e9: $03
    rst $38                                       ; $41ea: $ff
    inc bc                                        ; $41eb: $03
    rst $38                                       ; $41ec: $ff
    inc bc                                        ; $41ed: $03
    rst $38                                       ; $41ee: $ff
    inc bc                                        ; $41ef: $03
    rst $38                                       ; $41f0: $ff
    inc bc                                        ; $41f1: $03
    rst $38                                       ; $41f2: $ff
    ld bc, $00ff                                  ; $41f3: $01 $ff $00
    ld b, d                                       ; $41f6: $42
    ld b, d                                       ; $41f7: $42
    ld b, d                                       ; $41f8: $42
    ld b, d                                       ; $41f9: $42
    ld b, d                                       ; $41fa: $42
    ld b, d                                       ; $41fb: $42
    ld b, d                                       ; $41fc: $42
    ld b, d                                       ; $41fd: $42
    adc h                                         ; $41fe: $8c
    adc h                                         ; $41ff: $8c
    rst $08                                       ; $4200: $cf
    rst $08                                       ; $4201: $cf
    rst $38                                       ; $4202: $ff
    rst $38                                       ; $4203: $ff
    rst $38                                       ; $4204: $ff
    ld a, [hl]                                    ; $4205: $7e
    rst $38                                       ; $4206: $ff
    ret nz                                        ; $4207: $c0

    rst $38                                       ; $4208: $ff
    ret nz                                        ; $4209: $c0

    rst $38                                       ; $420a: $ff
    ret nz                                        ; $420b: $c0

    rst $38                                       ; $420c: $ff
    ret nz                                        ; $420d: $c0

    rst $38                                       ; $420e: $ff
    ret nz                                        ; $420f: $c0

    rst $38                                       ; $4210: $ff
    ret nz                                        ; $4211: $c0

    rst $38                                       ; $4212: $ff
    add b                                         ; $4213: $80
    rst $38                                       ; $4214: $ff
    nop                                           ; $4215: $00
    db $fd                                        ; $4216: $fd
    dec c                                         ; $4217: $0d
    db $fd                                        ; $4218: $fd
    dec c                                         ; $4219: $0d
    db $fd                                        ; $421a: $fd
    dec c                                         ; $421b: $0d
    db $fd                                        ; $421c: $fd
    dec c                                         ; $421d: $0d
    db $fd                                        ; $421e: $fd
    dec c                                         ; $421f: $0d
    rst $38                                       ; $4220: $ff
    rrca                                          ; $4221: $0f
    rst $38                                       ; $4222: $ff
    rlca                                          ; $4223: $07
    rst $38                                       ; $4224: $ff
    ld bc, $4545                                  ; $4225: $01 $45 $45
    ld b, c                                       ; $4228: $41
    ld b, c                                       ; $4229: $41
    ld b, l                                       ; $422a: $45
    ld b, l                                       ; $422b: $45
    ld h, l                                       ; $422c: $65
    ld h, l                                       ; $422d: $65
    push af                                       ; $422e: $f5
    push af                                       ; $422f: $f5
    push af                                       ; $4230: $f5
    push af                                       ; $4231: $f5
    rst $38                                       ; $4232: $ff
    rst $38                                       ; $4233: $ff
    rst $38                                       ; $4234: $ff
    rst $38                                       ; $4235: $ff
    ld a, a                                       ; $4236: $7f
    ld h, b                                       ; $4237: $60
    ld a, a                                       ; $4238: $7f
    ld h, b                                       ; $4239: $60
    ld a, a                                       ; $423a: $7f
    ld h, b                                       ; $423b: $60
    ld a, a                                       ; $423c: $7f
    ld h, b                                       ; $423d: $60
    ld a, a                                       ; $423e: $7f
    ld h, b                                       ; $423f: $60
    rst $38                                       ; $4240: $ff
    ldh [rIE], a                                  ; $4241: $e0 $ff
    ret nz                                        ; $4243: $c0

    rst $38                                       ; $4244: $ff
    nop                                           ; $4245: $00
    ld a, [$fa1a]                                 ; $4246: $fa $1a $fa
    ld a, [de]                                    ; $4249: $1a
    ld a, [$fa1a]                                 ; $424a: $fa $1a $fa
    ld a, [de]                                    ; $424d: $1a
    ld a, [$fe1a]                                 ; $424e: $fa $1a $fe
    ld e, $ff                                     ; $4251: $1e $ff
    rrca                                          ; $4253: $0f
    rst $38                                       ; $4254: $ff
    ld bc, $0202                                  ; $4255: $01 $02 $02
    ld b, d                                       ; $4258: $42
    ld b, d                                       ; $4259: $42
    ld b, d                                       ; $425a: $42
    ld b, d                                       ; $425b: $42
    ld b, d                                       ; $425c: $42
    ld b, d                                       ; $425d: $42
    ld b, [hl]                                    ; $425e: $46
    ld b, [hl]                                    ; $425f: $46
    ld c, a                                       ; $4260: $4f
    ld c, a                                       ; $4261: $4f
    rst $38                                       ; $4262: $ff
    rst $38                                       ; $4263: $ff
    rst $38                                       ; $4264: $ff
    rst $38                                       ; $4265: $ff
    ld e, a                                       ; $4266: $5f
    ld e, b                                       ; $4267: $58
    ld e, a                                       ; $4268: $5f
    ld e, b                                       ; $4269: $58
    ld e, a                                       ; $426a: $5f
    ld e, b                                       ; $426b: $58
    ld e, a                                       ; $426c: $5f
    ld e, b                                       ; $426d: $58
    ld e, a                                       ; $426e: $5f
    ld e, b                                       ; $426f: $58
    ld a, a                                       ; $4270: $7f
    ld a, b                                       ; $4271: $78
    rst $38                                       ; $4272: $ff
    ldh a, [rIE]                                  ; $4273: $f0 $ff
    add b                                         ; $4275: $80
    rst $38                                       ; $4276: $ff
    ld bc, $01ff                                  ; $4277: $01 $ff $01
    rst $38                                       ; $427a: $ff
    ld bc, $01ff                                  ; $427b: $01 $ff $01
    rst $38                                       ; $427e: $ff
    ld bc, $01ff                                  ; $427f: $01 $ff $01
    rst $38                                       ; $4282: $ff
    ld bc, $01ff                                  ; $4283: $01 $ff $01
    rst $00                                       ; $4286: $c7
    rst $00                                       ; $4287: $c7
    adc e                                         ; $4288: $8b
    adc e                                         ; $4289: $8b
    adc e                                         ; $428a: $8b
    adc e                                         ; $428b: $8b
    jp $87c3                                      ; $428c: $c3 $c3 $87


    add a                                         ; $428f: $87
    or e                                          ; $4290: $b3
    or e                                          ; $4291: $b3
    or e                                          ; $4292: $b3
    or e                                          ; $4293: $b3
    add a                                         ; $4294: $87
    add a                                         ; $4295: $87
    db $f4                                        ; $4296: $f4
    ld [hl], h                                    ; $4297: $74
    db $f4                                        ; $4298: $f4
    ld [hl], h                                    ; $4299: $74
    push af                                       ; $429a: $f5
    ld [hl], l                                    ; $429b: $75
    push af                                       ; $429c: $f5
    ld [hl], l                                    ; $429d: $75
    db $fd                                        ; $429e: $fd
    ld a, l                                       ; $429f: $7d
    rst $38                                       ; $42a0: $ff
    ccf                                           ; $42a1: $3f
    rst $38                                       ; $42a2: $ff
    rra                                           ; $42a3: $1f
    rst $38                                       ; $42a4: $ff
    rlca                                          ; $42a5: $07
    nop                                           ; $42a6: $00
    nop                                           ; $42a7: $00
    jp nz, $e2c2                                  ; $42a8: $c2 $c2 $e2

    ld [c], a                                     ; $42ab: $e2
    ld [c], a                                     ; $42ac: $e2
    ld [c], a                                     ; $42ad: $e2
    ld [c], a                                     ; $42ae: $e2
    ld [c], a                                     ; $42af: $e2
    rst $38                                       ; $42b0: $ff
    rst $38                                       ; $42b1: $ff
    rst $38                                       ; $42b2: $ff
    rst $38                                       ; $42b3: $ff
    rst $38                                       ; $42b4: $ff
    rst $38                                       ; $42b5: $ff
    ld e, a                                       ; $42b6: $5f
    ld e, h                                       ; $42b7: $5c
    ld e, a                                       ; $42b8: $5f
    ld e, h                                       ; $42b9: $5c
    ld e, a                                       ; $42ba: $5f
    ld e, h                                       ; $42bb: $5c
    ld e, a                                       ; $42bc: $5f
    ld e, h                                       ; $42bd: $5c
    ld a, a                                       ; $42be: $7f
    ld a, h                                       ; $42bf: $7c
    rst $38                                       ; $42c0: $ff
    ld hl, sp-$01                                 ; $42c1: $f8 $ff
    ldh a, [rIE]                                  ; $42c3: $f0 $ff
    ret nz                                        ; $42c5: $c0

    db $e3, $62, $cb, $4a, $d7, $56, $d7, $56, $e3, $62, $cb, $4a, $d7, $56, $d7, $56

    db $f4                                        ; $42d6: $f4
    ld [hl], h                                    ; $42d7: $74
    db $f4                                        ; $42d8: $f4
    ld [hl], h                                    ; $42d9: $74
    db $f4                                        ; $42da: $f4
    ld [hl], h                                    ; $42db: $74
    db $f4                                        ; $42dc: $f4
    ld [hl], h                                    ; $42dd: $74
    db $fc                                        ; $42de: $fc
    ld a, h                                       ; $42df: $7c
    rst $38                                       ; $42e0: $ff
    ccf                                           ; $42e1: $3f
    rst $38                                       ; $42e2: $ff
    rra                                           ; $42e3: $1f
    rst $38                                       ; $42e4: $ff
    rlca                                          ; $42e5: $07
    ld [bc], a                                    ; $42e6: $02
    ld [bc], a                                    ; $42e7: $02
    add d                                         ; $42e8: $82
    add d                                         ; $42e9: $82
    add b                                         ; $42ea: $80
    add b                                         ; $42eb: $80
    add [hl]                                      ; $42ec: $86
    add [hl]                                      ; $42ed: $86
    adc a                                         ; $42ee: $8f
    adc a                                         ; $42ef: $8f
    rst $38                                       ; $42f0: $ff
    rst $38                                       ; $42f1: $ff
    rst $38                                       ; $42f2: $ff
    rst $38                                       ; $42f3: $ff
    rst $38                                       ; $42f4: $ff
    rst $38                                       ; $42f5: $ff

    db $ff, $1c, $f7, $14, $ff, $1c, $f7, $14, $f7, $14, $f7, $14, $f7, $14

    rst $38                                       ; $4304: $ff
    db $08                                        ; $4305: $08

    db $e3, $62, $cb, $4a, $d7, $56

    rst $10                                       ; $430c: $d7
    ld d, [hl]                                    ; $430d: $56
    db $e3                                        ; $430e: $e3
    ld h, d                                       ; $430f: $62
    bit 1, d                                      ; $4310: $cb $4a
    db $d3                                        ; $4312: $d3
    ld d, d                                       ; $4313: $52
    rst $38                                       ; $4314: $ff
    inc a                                         ; $4315: $3c
    rst $38                                       ; $4316: $ff
    ld bc, $01ff                                  ; $4317: $01 $ff $01
    rst $38                                       ; $431a: $ff
    ld bc, $01ff                                  ; $431b: $01 $ff $01
    rst $38                                       ; $431e: $ff
    ld bc, $01ff                                  ; $431f: $01 $ff $01
    rst $38                                       ; $4322: $ff
    ld bc, $00ff                                  ; $4323: $01 $ff $00
    rst $00                                       ; $4326: $c7
    rst $00                                       ; $4327: $c7
    adc e                                         ; $4328: $8b
    adc e                                         ; $4329: $8b
    adc e                                         ; $432a: $8b
    adc e                                         ; $432b: $8b
    jp $87c3                                      ; $432c: $c3 $c3 $87


    add a                                         ; $432f: $87
    or e                                          ; $4330: $b3
    or e                                          ; $4331: $b3
    rst $38                                       ; $4332: $ff
    rst $38                                       ; $4333: $ff
    rst $38                                       ; $4334: $ff
    db $fe                                        ; $4335: $fe

    db $2d, $2a, $2e

    dec h                                         ; $4339: $25
    ld h, $00                                     ; $433a: $26 $00
    dec h                                         ; $433c: $25
    ld h, $00                                     ; $433d: $26 $00
    cpl                                           ; $433f: $2f
    jr nc, jr_04b_4342                            ; $4340: $30 $00

jr_04b_4342:
    ld a, [bc]                                    ; $4342: $0a
    dec bc                                        ; $4343: $0b
    inc c                                         ; $4344: $0c
    ld a, [bc]                                    ; $4345: $0a
    ld d, $0c                                     ; $4346: $16 $0c
    ld a, [bc]                                    ; $4348: $0a
    dec bc                                        ; $4349: $0b
    inc c                                         ; $434a: $0c
    inc e                                         ; $434b: $1c
    dec e                                         ; $434c: $1d
    ld e, $07                                     ; $434d: $1e $07
    ld [$1309], sp                                ; $434f: $08 $09 $13
    inc d                                         ; $4352: $14
    dec d                                         ; $4353: $15
    add hl, de                                    ; $4354: $19
    ld a, [de]                                    ; $4355: $1a
    dec de                                        ; $4356: $1b
    inc de                                        ; $4357: $13
    inc d                                         ; $4358: $14
    dec d                                         ; $4359: $15
    rra                                           ; $435a: $1f
    jr nz, jr_04b_437e                            ; $435b: $20 $21

    inc b                                         ; $435d: $04
    dec b                                         ; $435e: $05
    ld b, $10                                     ; $435f: $06 $10
    ld de, $0412                                  ; $4361: $11 $12 $04
    jr jr_04b_436c                                ; $4364: $18 $06

    db $10                                        ; $4366: $10
    ld de, $0412                                  ; $4367: $11 $12 $04
    jr jr_04b_4372                                ; $436a: $18 $06

jr_04b_436c:
    ld [hl+], a                                   ; $436c: $22
    inc hl                                        ; $436d: $23
    inc h                                         ; $436e: $24
    ld bc, $0302                                  ; $436f: $01 $02 $03

jr_04b_4372:
    dec c                                         ; $4372: $0d
    ld c, $0f                                     ; $4373: $0e $0f
    ld bc, $0317                                  ; $4375: $01 $17 $03
    dec c                                         ; $4378: $0d
    ld c, $0f                                     ; $4379: $0e $0f
    ld bc, $0317                                  ; $437b: $01 $17 $03

jr_04b_437e:
    dec c                                         ; $437e: $0d
    ld c, $0f                                     ; $437f: $0e $0f
    daa                                           ; $4381: $27
    jr z, jr_04b_43ad                             ; $4382: $28 $29

    ld bc, $0302                                  ; $4384: $01 $02 $03
    dec c                                         ; $4387: $0d
    ld c, $0f                                     ; $4388: $0e $0f
    ld bc, $0317                                  ; $438a: $01 $17 $03
    dec c                                         ; $438d: $0d
    ld c, $0f                                     ; $438e: $0e $0f
    ld bc, $0317                                  ; $4390: $01 $17 $03
    dec c                                         ; $4393: $0d
    ld c, $0f                                     ; $4394: $0e $0f
    ld bc, $0317                                  ; $4396: $01 $17 $03
    dec hl                                        ; $4399: $2b
    inc l                                         ; $439a: $2c
    add hl, hl                                    ; $439b: $29
    nop                                           ; $439c: $00
    nop                                           ; $439d: $00
    nop                                           ; $439e: $00
    nop                                           ; $439f: $00
    nop                                           ; $43a0: $00
    nop                                           ; $43a1: $00
    nop                                           ; $43a2: $00
    nop                                           ; $43a3: $00
    nop                                           ; $43a4: $00
    nop                                           ; $43a5: $00
    nop                                           ; $43a6: $00
    nop                                           ; $43a7: $00
    nop                                           ; $43a8: $00
    nop                                           ; $43a9: $00
    nop                                           ; $43aa: $00
    nop                                           ; $43ab: $00
    rlca                                          ; $43ac: $07

jr_04b_43ad:
    rlca                                          ; $43ad: $07
    inc c                                         ; $43ae: $0c
    rrca                                          ; $43af: $0f
    inc c                                         ; $43b0: $0c
    rrca                                          ; $43b1: $0f
    ld b, $07                                     ; $43b2: $06 $07
    ld c, $0f                                     ; $43b4: $0e $0f
    inc e                                         ; $43b6: $1c
    rra                                           ; $43b7: $1f
    jr jr_04b_43d9                                ; $43b8: $18 $1f

    jr jr_04b_43db                                ; $43ba: $18 $1f

    nop                                           ; $43bc: $00
    rst $38                                       ; $43bd: $ff
    nop                                           ; $43be: $00
    rst $38                                       ; $43bf: $ff
    nop                                           ; $43c0: $00
    rst $38                                       ; $43c1: $ff
    inc e                                         ; $43c2: $1c
    db $e3                                        ; $43c3: $e3
    jr nc, @-$2f                                  ; $43c4: $30 $cf

jr_04b_43c6:
    ld [hl], b                                    ; $43c6: $70
    adc a                                         ; $43c7: $8f
    ld b, b                                       ; $43c8: $40
    cp a                                          ; $43c9: $bf
    nop                                           ; $43ca: $00
    rst $38                                       ; $43cb: $ff
    jr jr_04b_43c6                                ; $43cc: $18 $f8

    inc e                                         ; $43ce: $1c
    db $fc                                        ; $43cf: $fc

jr_04b_43d0:
    inc c                                         ; $43d0: $0c
    db $fc                                        ; $43d1: $fc
    inc c                                         ; $43d2: $0c
    db $fc                                        ; $43d3: $fc
    inc e                                         ; $43d4: $1c
    db $fc                                        ; $43d5: $fc
    jr jr_04b_43d0                                ; $43d6: $18 $f8

    inc e                                         ; $43d8: $1c

jr_04b_43d9:
    db $fc                                        ; $43d9: $fc
    inc c                                         ; $43da: $0c

jr_04b_43db:
    db $fc                                        ; $43db: $fc
    inc bc                                        ; $43dc: $03
    inc bc                                        ; $43dd: $03
    ld bc, $0101                                  ; $43de: $01 $01 $01
    ld bc, $0303                                  ; $43e1: $01 $03 $03
    rlca                                          ; $43e4: $07
    rlca                                          ; $43e5: $07
    rlca                                          ; $43e6: $07
    rlca                                          ; $43e7: $07
    ld c, $0f                                     ; $43e8: $0e $0f
    ld c, $0f                                     ; $43ea: $0e $0f
    ret nz                                        ; $43ec: $c0

    rst $38                                       ; $43ed: $ff
    ret nz                                        ; $43ee: $c0

    rst $38                                       ; $43ef: $ff
    ret nz                                        ; $43f0: $c0

    rst $38                                       ; $43f1: $ff
    add b                                         ; $43f2: $80
    rst $38                                       ; $43f3: $ff
    add b                                         ; $43f4: $80
    rst $38                                       ; $43f5: $ff
    nop                                           ; $43f6: $00
    rst $38                                       ; $43f7: $ff
    nop                                           ; $43f8: $00
    rst $38                                       ; $43f9: $ff
    nop                                           ; $43fa: $00
    rst $38                                       ; $43fb: $ff
    nop                                           ; $43fc: $00
    rst $38                                       ; $43fd: $ff
    nop                                           ; $43fe: $00
    rst $38                                       ; $43ff: $ff
    nop                                           ; $4400: $00
    rst $38                                       ; $4401: $ff
    nop                                           ; $4402: $00
    rst $38                                       ; $4403: $ff
    nop                                           ; $4404: $00
    rst $38                                       ; $4405: $ff
    nop                                           ; $4406: $00
    rst $38                                       ; $4407: $ff
    nop                                           ; $4408: $00
    rst $38                                       ; $4409: $ff
    nop                                           ; $440a: $00
    rst $38                                       ; $440b: $ff
    nop                                           ; $440c: $00
    rst $38                                       ; $440d: $ff
    nop                                           ; $440e: $00
    rst $38                                       ; $440f: $ff
    nop                                           ; $4410: $00
    rst $38                                       ; $4411: $ff
    nop                                           ; $4412: $00
    rst $38                                       ; $4413: $ff
    nop                                           ; $4414: $00
    rst $38                                       ; $4415: $ff
    jr @+$01                                      ; $4416: $18 $ff

    jr @+$01                                      ; $4418: $18 $ff

    ld a, h                                       ; $441a: $7c
    rst $38                                       ; $441b: $ff
    rrca                                          ; $441c: $0f
    rst $38                                       ; $441d: $ff
    rrca                                          ; $441e: $0f
    rst $38                                       ; $441f: $ff
    ld e, $ff                                     ; $4420: $1e $ff
    rra                                           ; $4422: $1f
    rst $38                                       ; $4423: $ff
    rrca                                          ; $4424: $0f
    rst $38                                       ; $4425: $ff
    inc bc                                        ; $4426: $03
    rst $38                                       ; $4427: $ff
    ld bc, $00ff                                  ; $4428: $01 $ff $00
    rst $38                                       ; $442b: $ff
    ld l, a                                       ; $442c: $6f
    rst $38                                       ; $442d: $ff
    inc sp                                        ; $442e: $33
    rst $38                                       ; $442f: $ff
    ld bc, $8fff                                  ; $4430: $01 $ff $8f
    rst $38                                       ; $4433: $ff
    rst $38                                       ; $4434: $ff
    rst $38                                       ; $4435: $ff
    rst $38                                       ; $4436: $ff
    rst $38                                       ; $4437: $ff
    rst $38                                       ; $4438: $ff
    rst $38                                       ; $4439: $ff
    ld hl, sp-$01                                 ; $443a: $f8 $ff
    ret nz                                        ; $443c: $c0

    rst $38                                       ; $443d: $ff
    db $fc                                        ; $443e: $fc
    rst $38                                       ; $443f: $ff
    rst $38                                       ; $4440: $ff
    rst $38                                       ; $4441: $ff
    rst $38                                       ; $4442: $ff
    rst $38                                       ; $4443: $ff
    rst $38                                       ; $4444: $ff
    rst $38                                       ; $4445: $ff
    rst $38                                       ; $4446: $ff
    rst $38                                       ; $4447: $ff
    rlca                                          ; $4448: $07
    rst $38                                       ; $4449: $ff
    inc bc                                        ; $444a: $03
    rst $38                                       ; $444b: $ff
    nop                                           ; $444c: $00
    rst $38                                       ; $444d: $ff
    nop                                           ; $444e: $00
    rst $38                                       ; $444f: $ff
    jr @+$01                                      ; $4450: $18 $ff

    db $fc                                        ; $4452: $fc
    rst $38                                       ; $4453: $ff
    db $fc                                        ; $4454: $fc
    rst $38                                       ; $4455: $ff
    ld a, [hl]                                    ; $4456: $7e
    ld a, a                                       ; $4457: $7f
    cp a                                          ; $4458: $bf
    cp a                                          ; $4459: $bf
    add a                                         ; $445a: $87
    add a                                         ; $445b: $87
    nop                                           ; $445c: $00
    rst $38                                       ; $445d: $ff
    nop                                           ; $445e: $00
    rst $38                                       ; $445f: $ff
    nop                                           ; $4460: $00
    rst $38                                       ; $4461: $ff
    nop                                           ; $4462: $00
    rst $38                                       ; $4463: $ff
    nop                                           ; $4464: $00
    rst $38                                       ; $4465: $ff
    nop                                           ; $4466: $00
    rst $38                                       ; $4467: $ff
    nop                                           ; $4468: $00
    rst $38                                       ; $4469: $ff
    add b                                         ; $446a: $80
    rst $38                                       ; $446b: $ff
    ccf                                           ; $446c: $3f
    rst $38                                       ; $446d: $ff
    rra                                           ; $446e: $1f
    rst $38                                       ; $446f: $ff
    rra                                           ; $4470: $1f
    rst $38                                       ; $4471: $ff
    inc c                                         ; $4472: $0c
    rst $38                                       ; $4473: $ff
    nop                                           ; $4474: $00
    rst $38                                       ; $4475: $ff
    nop                                           ; $4476: $00
    rst $38                                       ; $4477: $ff
    nop                                           ; $4478: $00
    rst $38                                       ; $4479: $ff
    nop                                           ; $447a: $00
    rst $38                                       ; $447b: $ff
    ret nz                                        ; $447c: $c0

    ret nz                                        ; $447d: $c0

    ldh [$e0], a                                  ; $447e: $e0 $e0
    ldh a, [$f0]                                  ; $4480: $f0 $f0
    ldh a, [$f0]                                  ; $4482: $f0 $f0
    ldh a, [$f0]                                  ; $4484: $f0 $f0
    ld [hl], b                                    ; $4486: $70
    ldh a, [rSVBK]                                ; $4487: $f0 $70
    ldh a, [$78]                                  ; $4489: $f0 $78
    ld hl, sp+$0c                                 ; $448b: $f8 $0c
    rrca                                          ; $448d: $0f
    inc c                                         ; $448e: $0c
    rrca                                          ; $448f: $0f
    inc e                                         ; $4490: $1c
    rra                                           ; $4491: $1f
    jr jr_04b_44b3                                ; $4492: $18 $1f

    jr @+$21                                      ; $4494: $18 $1f

    jr c, jr_04b_44d7                             ; $4496: $38 $3f

    ld [hl], b                                    ; $4498: $70
    ld a, a                                       ; $4499: $7f
    ld h, b                                       ; $449a: $60
    ld a, a                                       ; $449b: $7f
    nop                                           ; $449c: $00
    rst $38                                       ; $449d: $ff
    nop                                           ; $449e: $00
    rst $38                                       ; $449f: $ff
    nop                                           ; $44a0: $00
    rst $38                                       ; $44a1: $ff
    inc c                                         ; $44a2: $0c
    rst $38                                       ; $44a3: $ff
    ld c, $ff                                     ; $44a4: $0e $ff
    rra                                           ; $44a6: $1f
    rst $38                                       ; $44a7: $ff
    dec de                                        ; $44a8: $1b
    rst $38                                       ; $44a9: $ff
    dec c                                         ; $44aa: $0d
    rst $38                                       ; $44ab: $ff
    inc c                                         ; $44ac: $0c
    db $fc                                        ; $44ad: $fc
    inc c                                         ; $44ae: $0c
    db $fc                                        ; $44af: $fc
    inc e                                         ; $44b0: $1c
    db $fc                                        ; $44b1: $fc
    inc e                                         ; $44b2: $1c

jr_04b_44b3:
    db $fc                                        ; $44b3: $fc
    ld c, $fe                                     ; $44b4: $0e $fe
    add [hl]                                      ; $44b6: $86
    cp $8e                                        ; $44b7: $fe $8e
    cp $9c                                        ; $44b9: $fe $9c
    db $fc                                        ; $44bb: $fc
    rrca                                          ; $44bc: $0f
    rrca                                          ; $44bd: $0f
    rlca                                          ; $44be: $07
    rlca                                          ; $44bf: $07
    rlca                                          ; $44c0: $07
    rlca                                          ; $44c1: $07
    inc bc                                        ; $44c2: $03
    inc bc                                        ; $44c3: $03
    nop                                           ; $44c4: $00
    nop                                           ; $44c5: $00
    nop                                           ; $44c6: $00
    nop                                           ; $44c7: $00
    nop                                           ; $44c8: $00
    nop                                           ; $44c9: $00
    nop                                           ; $44ca: $00
    nop                                           ; $44cb: $00
    nop                                           ; $44cc: $00
    rst $38                                       ; $44cd: $ff
    add b                                         ; $44ce: $80
    rst $38                                       ; $44cf: $ff
    ldh [rIE], a                                  ; $44d0: $e0 $ff
    ldh a, [rIE]                                  ; $44d2: $f0 $ff
    ld hl, sp-$01                                 ; $44d4: $f8 $ff
    ld a, b                                       ; $44d6: $78

jr_04b_44d7:
    ld a, a                                       ; $44d7: $7f
    ld a, b                                       ; $44d8: $78
    ld a, a                                       ; $44d9: $7f
    ld [hl], b                                    ; $44da: $70
    ld a, a                                       ; $44db: $7f
    nop                                           ; $44dc: $00
    rst $38                                       ; $44dd: $ff
    ld bc, $01ff                                  ; $44de: $01 $ff $01
    rst $38                                       ; $44e1: $ff
    ld bc, $01ff                                  ; $44e2: $01 $ff $01
    rst $38                                       ; $44e5: $ff
    ld bc, $00ff                                  ; $44e6: $01 $ff $00
    rst $38                                       ; $44e9: $ff
    nop                                           ; $44ea: $00
    rst $38                                       ; $44eb: $ff
    cp $ff                                        ; $44ec: $fe $ff
    rst $10                                       ; $44ee: $d7
    rst $38                                       ; $44ef: $ff
    and e                                         ; $44f0: $a3
    rst $18                                       ; $44f1: $df
    db $e3                                        ; $44f2: $e3
    sbc a                                         ; $44f3: $9f
    and e                                         ; $44f4: $a3
    rst $18                                       ; $44f5: $df
    rst $00                                       ; $44f6: $c7
    rst $38                                       ; $44f7: $ff
    cp $ff                                        ; $44f8: $fe $ff
    ld a, h                                       ; $44fa: $7c
    rst $38                                       ; $44fb: $ff
    nop                                           ; $44fc: $00
    rst $38                                       ; $44fd: $ff
    nop                                           ; $44fe: $00
    rst $38                                       ; $44ff: $ff
    nop                                           ; $4500: $00
    rst $38                                       ; $4501: $ff
    inc bc                                        ; $4502: $03
    db $fc                                        ; $4503: $fc
    rlca                                          ; $4504: $07
    ld hl, sp+$07                                 ; $4505: $f8 $07
    ld hl, sp+$07                                 ; $4507: $f8 $07
    ld hl, sp+$3f                                 ; $4509: $f8 $3f
    ret nz                                        ; $450b: $c0

    ld bc, $01ff                                  ; $450c: $01 $ff $01
    rst $38                                       ; $450f: $ff
    ld bc, $e0ff                                  ; $4510: $01 $ff $e0
    rra                                           ; $4513: $1f
    ldh [$1f], a                                  ; $4514: $e0 $1f
    ldh [$1f], a                                  ; $4516: $e0 $1f
    nop                                           ; $4518: $00
    rst $38                                       ; $4519: $ff
    nop                                           ; $451a: $00
    rst $38                                       ; $451b: $ff
    add e                                         ; $451c: $83
    add e                                         ; $451d: $83
    rst $00                                       ; $451e: $c7
    rst $00                                       ; $451f: $c7
    rst $20                                       ; $4520: $e7
    rst $20                                       ; $4521: $e7
    rst $28                                       ; $4522: $ef
    rst $28                                       ; $4523: $ef
    xor $ef                                       ; $4524: $ee $ef
    ld a, [hl]                                    ; $4526: $7e
    rst $38                                       ; $4527: $ff
    ld a, [hl]                                    ; $4528: $7e
    rst $38                                       ; $4529: $ff
    ld a, [hl]                                    ; $452a: $7e
    rst $38                                       ; $452b: $ff
    ret nz                                        ; $452c: $c0

    rst $38                                       ; $452d: $ff
    ret nz                                        ; $452e: $c0

    rst $38                                       ; $452f: $ff
    add b                                         ; $4530: $80
    rst $38                                       ; $4531: $ff
    nop                                           ; $4532: $00
    rst $38                                       ; $4533: $ff
    nop                                           ; $4534: $00
    rst $38                                       ; $4535: $ff
    nop                                           ; $4536: $00
    rst $38                                       ; $4537: $ff
    nop                                           ; $4538: $00
    rst $38                                       ; $4539: $ff
    nop                                           ; $453a: $00
    rst $38                                       ; $453b: $ff
    inc a                                         ; $453c: $3c
    db $fc                                        ; $453d: $fc
    inc a                                         ; $453e: $3c
    db $fc                                        ; $453f: $fc
    ld e, $fe                                     ; $4540: $1e $fe
    ld c, $fe                                     ; $4542: $0e $fe
    ld e, $fe                                     ; $4544: $1e $fe
    ld e, $fe                                     ; $4546: $1e $fe
    inc a                                         ; $4548: $3c
    db $fc                                        ; $4549: $fc
    ld a, h                                       ; $454a: $7c
    db $fc                                        ; $454b: $fc
    nop                                           ; $454c: $00
    nop                                           ; $454d: $00
    nop                                           ; $454e: $00
    nop                                           ; $454f: $00
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    nop                                           ; $4558: $00
    nop                                           ; $4559: $00
    ld bc, $7001                                  ; $455a: $01 $01 $70
    ld a, a                                       ; $455d: $7f
    jr c, jr_04b_459f                             ; $455e: $38 $3f

    jr @+$21                                      ; $4560: $18 $1f

    jr c, jr_04b_45a3                             ; $4562: $38 $3f

    jr nc, @+$41                                  ; $4564: $30 $3f

    jr nc, jr_04b_45a7                            ; $4566: $30 $3f

    pop af                                        ; $4568: $f1
    cp $e1                                        ; $4569: $fe $e1
    cp $1f                                        ; $456b: $fe $1f
    rst $38                                       ; $456d: $ff
    ld e, $ff                                     ; $456e: $1e $ff
    inc c                                         ; $4570: $0c
    rst $38                                       ; $4571: $ff
    nop                                           ; $4572: $00
    rst $38                                       ; $4573: $ff
    nop                                           ; $4574: $00
    rst $38                                       ; $4575: $ff

jr_04b_4576:
    ldh [$1f], a                                  ; $4576: $e0 $1f
    add b                                         ; $4578: $80
    ld a, a                                       ; $4579: $7f
    add b                                         ; $457a: $80
    ld a, a                                       ; $457b: $7f
    jr jr_04b_4576                                ; $457c: $18 $f8

    inc e                                         ; $457e: $1c
    db $fc                                        ; $457f: $fc
    ld c, $fe                                     ; $4580: $0e $fe
    ld h, $fe                                     ; $4582: $26 $fe
    ld h, a                                       ; $4584: $67
    rst $38                                       ; $4585: $ff
    db $d3                                        ; $4586: $d3
    cp a                                          ; $4587: $bf
    sub b                                         ; $4588: $90
    rst $38                                       ; $4589: $ff
    ld h, b                                       ; $458a: $60
    rst $38                                       ; $458b: $ff
    nop                                           ; $458c: $00
    nop                                           ; $458d: $00
    nop                                           ; $458e: $00
    nop                                           ; $458f: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    add b                                         ; $4594: $80
    add b                                         ; $4595: $80
    ret nz                                        ; $4596: $c0

    ret nz                                        ; $4597: $c0

    ret nz                                        ; $4598: $c0

    ret nz                                        ; $4599: $c0

    ret nz                                        ; $459a: $c0

    ret nz                                        ; $459b: $c0

    nop                                           ; $459c: $00
    nop                                           ; $459d: $00
    nop                                           ; $459e: $00

jr_04b_459f:
    nop                                           ; $459f: $00
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    nop                                           ; $45a2: $00

jr_04b_45a3:
    nop                                           ; $45a3: $00
    ld bc, $0301                                  ; $45a4: $01 $01 $03

jr_04b_45a7:
    inc bc                                        ; $45a7: $03
    rlca                                          ; $45a8: $07
    rlca                                          ; $45a9: $07
    rlca                                          ; $45aa: $07
    rlca                                          ; $45ab: $07
    ldh a, [rIE]                                  ; $45ac: $f0 $ff
    ldh [rIE], a                                  ; $45ae: $e0 $ff
    ldh [rIE], a                                  ; $45b0: $e0 $ff
    ldh [rIE], a                                  ; $45b2: $e0 $ff
    ldh [rIE], a                                  ; $45b4: $e0 $ff
    ldh [rIE], a                                  ; $45b6: $e0 $ff
    ret nz                                        ; $45b8: $c0

    rst $38                                       ; $45b9: $ff
    nop                                           ; $45ba: $00
    rst $38                                       ; $45bb: $ff
    ld a, a                                       ; $45bc: $7f
    add b                                         ; $45bd: $80
    ld a, [hl]                                    ; $45be: $7e
    add c                                         ; $45bf: $81
    ld [hl], b                                    ; $45c0: $70
    adc a                                         ; $45c1: $8f
    ld [hl], b                                    ; $45c2: $70
    adc a                                         ; $45c3: $8f
    ld [hl], b                                    ; $45c4: $70
    adc a                                         ; $45c5: $8f
    nop                                           ; $45c6: $00
    rst $38                                       ; $45c7: $ff
    nop                                           ; $45c8: $00
    rst $38                                       ; $45c9: $ff
    nop                                           ; $45ca: $00
    rst $38                                       ; $45cb: $ff
    cp $ff                                        ; $45cc: $fe $ff
    rst $38                                       ; $45ce: $ff
    rst $38                                       ; $45cf: $ff
    rst $38                                       ; $45d0: $ff
    rst $38                                       ; $45d1: $ff
    ld h, e                                       ; $45d2: $63
    rst $38                                       ; $45d3: $ff
    nop                                           ; $45d4: $00
    rst $38                                       ; $45d5: $ff
    nop                                           ; $45d6: $00
    rst $38                                       ; $45d7: $ff
    nop                                           ; $45d8: $00
    rst $38                                       ; $45d9: $ff
    nop                                           ; $45da: $00
    rst $38                                       ; $45db: $ff
    ld hl, sp-$08                                 ; $45dc: $f8 $f8
    ldh a, [$f0]                                  ; $45de: $f0 $f0
    ldh a, [$f0]                                  ; $45e0: $f0 $f0
    ld a, b                                       ; $45e2: $78
    ld hl, sp+$7c                                 ; $45e3: $f8 $7c
    db $fc                                        ; $45e5: $fc
    inc a                                         ; $45e6: $3c
    db $fc                                        ; $45e7: $fc
    inc e                                         ; $45e8: $1c

jr_04b_45e9:
    db $fc                                        ; $45e9: $fc
    inc e                                         ; $45ea: $1c
    db $fc                                        ; $45eb: $fc
    inc bc                                        ; $45ec: $03
    inc bc                                        ; $45ed: $03
    inc bc                                        ; $45ee: $03
    inc bc                                        ; $45ef: $03
    inc bc                                        ; $45f0: $03
    inc bc                                        ; $45f1: $03
    rlca                                          ; $45f2: $07
    rlca                                          ; $45f3: $07
    ld c, $0f                                     ; $45f4: $0e $0f
    inc c                                         ; $45f6: $0c
    rrca                                          ; $45f7: $0f
    ld c, $0f                                     ; $45f8: $0e $0f
    rlca                                          ; $45fa: $07
    rlca                                          ; $45fb: $07
    nop                                           ; $45fc: $00
    rst $38                                       ; $45fd: $ff
    nop                                           ; $45fe: $00
    rst $38                                       ; $45ff: $ff
    nop                                           ; $4600: $00
    rst $38                                       ; $4601: $ff
    inc c                                         ; $4602: $0c
    di                                            ; $4603: $f3
    ld [$38f7], sp                                ; $4604: $08 $f7 $38
    rst $00                                       ; $4607: $c7
    jr nz, jr_04b_45e9                            ; $4608: $20 $df

    nop                                           ; $460a: $00
    rst $38                                       ; $460b: $ff
    ldh [$e0], a                                  ; $460c: $e0 $e0
    ld h, b                                       ; $460e: $60
    ldh [rSVBK], a                                ; $460f: $e0 $70
    ldh a, [$38]                                  ; $4611: $f0 $38
    ld hl, sp+$18                                 ; $4613: $f8 $18
    ld hl, sp+$18                                 ; $4615: $f8 $18
    ld hl, sp+$38                                 ; $4617: $f8 $38
    ld hl, sp+$70                                 ; $4619: $f8 $70
    ldh a, [$0e]                                  ; $461b: $f0 $0e
    rrca                                          ; $461d: $0f
    ld c, $0f                                     ; $461e: $0e $0f
    ld c, $0f                                     ; $4620: $0e $0f
    ld c, $0f                                     ; $4622: $0e $0f
    rlca                                          ; $4624: $07
    rlca                                          ; $4625: $07
    rlca                                          ; $4626: $07
    rlca                                          ; $4627: $07
    inc bc                                        ; $4628: $03
    inc bc                                        ; $4629: $03
    rlca                                          ; $462a: $07
    rlca                                          ; $462b: $07
    nop                                           ; $462c: $00
    rst $38                                       ; $462d: $ff
    nop                                           ; $462e: $00
    rst $38                                       ; $462f: $ff
    nop                                           ; $4630: $00
    rst $38                                       ; $4631: $ff
    nop                                           ; $4632: $00
    rst $38                                       ; $4633: $ff
    nop                                           ; $4634: $00
    rst $38                                       ; $4635: $ff
    add b                                         ; $4636: $80
    rst $38                                       ; $4637: $ff
    add b                                         ; $4638: $80
    rst $38                                       ; $4639: $ff
    add b                                         ; $463a: $80
    rst $38                                       ; $463b: $ff
    nop                                           ; $463c: $00
    rst $38                                       ; $463d: $ff
    inc c                                         ; $463e: $0c
    rst $38                                       ; $463f: $ff
    rra                                           ; $4640: $1f
    rst $38                                       ; $4641: $ff
    rra                                           ; $4642: $1f
    rst $38                                       ; $4643: $ff
    rra                                           ; $4644: $1f
    rst $38                                       ; $4645: $ff
    ld e, $fe                                     ; $4646: $1e $fe
    ld a, $fe                                     ; $4648: $3e $fe
    inc a                                         ; $464a: $3c
    db $fc                                        ; $464b: $fc
    jr nc, @+$01                                  ; $464c: $30 $ff

    ld a, b                                       ; $464e: $78
    rst $38                                       ; $464f: $ff
    db $fc                                        ; $4650: $fc
    rst $38                                       ; $4651: $ff
    cp $ff                                        ; $4652: $fe $ff
    rst $38                                       ; $4654: $ff
    rst $38                                       ; $4655: $ff
    ld a, a                                       ; $4656: $7f
    ld a, a                                       ; $4657: $7f
    ld a, a                                       ; $4658: $7f
    ld a, a                                       ; $4659: $7f
    ld a, [hl]                                    ; $465a: $7e
    ld a, a                                       ; $465b: $7f
    nop                                           ; $465c: $00
    rst $38                                       ; $465d: $ff
    nop                                           ; $465e: $00
    rst $38                                       ; $465f: $ff
    nop                                           ; $4660: $00
    rst $38                                       ; $4661: $ff
    ld bc, $03ff                                  ; $4662: $01 $ff $03
    rst $38                                       ; $4665: $ff
    inc bc                                        ; $4666: $03
    rst $38                                       ; $4667: $ff
    inc bc                                        ; $4668: $03
    rst $38                                       ; $4669: $ff
    rlca                                          ; $466a: $07
    rst $38                                       ; $466b: $ff
    inc e                                         ; $466c: $1c
    db $fc                                        ; $466d: $fc
    inc e                                         ; $466e: $1c
    db $fc                                        ; $466f: $fc
    inc a                                         ; $4670: $3c
    db $fc                                        ; $4671: $fc
    db $fc                                        ; $4672: $fc
    db $fc                                        ; $4673: $fc
    ld hl, sp-$08                                 ; $4674: $f8 $f8
    ldh a, [$f0]                                  ; $4676: $f0 $f0
    ret nz                                        ; $4678: $c0

    ret nz                                        ; $4679: $c0

    add b                                         ; $467a: $80
    add b                                         ; $467b: $80
    inc bc                                        ; $467c: $03
    inc bc                                        ; $467d: $03
    inc bc                                        ; $467e: $03
    inc bc                                        ; $467f: $03
    rrca                                          ; $4680: $0f
    rrca                                          ; $4681: $0f
    ld e, $1f                                     ; $4682: $1e $1f
    jr jr_04b_46a5                                ; $4684: $18 $1f

    jr jr_04b_46a7                                ; $4686: $18 $1f

    inc c                                         ; $4688: $0c
    rrca                                          ; $4689: $0f
    inc e                                         ; $468a: $1c
    rra                                           ; $468b: $1f
    nop                                           ; $468c: $00
    rst $38                                       ; $468d: $ff
    ld [$18ff], sp                                ; $468e: $08 $ff $18
    rst $38                                       ; $4691: $ff
    inc [hl]                                      ; $4692: $34
    rst $28                                       ; $4693: $ef
    inc h                                         ; $4694: $24
    rst $38                                       ; $4695: $ff
    jr @+$01                                      ; $4696: $18 $ff

    nop                                           ; $4698: $00
    rst $38                                       ; $4699: $ff
    nop                                           ; $469a: $00
    rst $38                                       ; $469b: $ff
    ld h, b                                       ; $469c: $60
    rst $38                                       ; $469d: $ff
    ld [hl], b                                    ; $469e: $70
    rst $38                                       ; $469f: $ff
    db $fc                                        ; $46a0: $fc
    rst $38                                       ; $46a1: $ff
    call c, $deff                                 ; $46a2: $dc $ff $de

jr_04b_46a5:
    rst $38                                       ; $46a5: $ff
    db $eb                                        ; $46a6: $eb

jr_04b_46a7:
    rst $38                                       ; $46a7: $ff
    ld a, a                                       ; $46a8: $7f
    rst $38                                       ; $46a9: $ff
    jr c, @+$01                                   ; $46aa: $38 $ff

    nop                                           ; $46ac: $00
    rst $38                                       ; $46ad: $ff
    nop                                           ; $46ae: $00
    rst $38                                       ; $46af: $ff
    nop                                           ; $46b0: $00
    rst $38                                       ; $46b1: $ff
    nop                                           ; $46b2: $00
    rst $38                                       ; $46b3: $ff
    nop                                           ; $46b4: $00
    rst $38                                       ; $46b5: $ff
    add b                                         ; $46b6: $80
    rst $38                                       ; $46b7: $ff
    ldh a, [rIE]                                  ; $46b8: $f0 $ff
    db $fc                                        ; $46ba: $fc
    rst $38                                       ; $46bb: $ff
    ld h, b                                       ; $46bc: $60
    ldh [$60], a                                  ; $46bd: $e0 $60
    ldh [$e0], a                                  ; $46bf: $e0 $e0
    ldh [$e0], a                                  ; $46c1: $e0 $e0
    ldh [$f0], a                                  ; $46c3: $e0 $f0
    ldh a, [$30]                                  ; $46c5: $f0 $30
    ldh a, [rNR23]                                ; $46c7: $f0 $18
    ld hl, sp+$18                                 ; $46c9: $f8 $18
    ld hl, sp+$0f                                 ; $46cb: $f8 $0f
    rrca                                          ; $46cd: $0f
    ld c, $0f                                     ; $46ce: $0e $0f
    ld e, $1f                                     ; $46d0: $1e $1f
    inc e                                         ; $46d2: $1c
    rra                                           ; $46d3: $1f
    inc e                                         ; $46d4: $1c
    rra                                           ; $46d5: $1f
    inc e                                         ; $46d6: $1c
    rra                                           ; $46d7: $1f
    ld e, $1f                                     ; $46d8: $1e $1f
    rra                                           ; $46da: $1f
    rra                                           ; $46db: $1f
    ld a, $fe                                     ; $46dc: $3e $fe
    rra                                           ; $46de: $1f
    rst $38                                       ; $46df: $ff
    rrca                                          ; $46e0: $0f
    rst $38                                       ; $46e1: $ff
    rrca                                          ; $46e2: $0f
    rst $38                                       ; $46e3: $ff
    rlca                                          ; $46e4: $07
    rst $38                                       ; $46e5: $ff
    nop                                           ; $46e6: $00
    rst $38                                       ; $46e7: $ff
    nop                                           ; $46e8: $00
    rst $38                                       ; $46e9: $ff
    nop                                           ; $46ea: $00
    rst $38                                       ; $46eb: $ff
    cp $ff                                        ; $46ec: $fe $ff
    cp $ff                                        ; $46ee: $fe $ff
    db $fc                                        ; $46f0: $fc
    rst $38                                       ; $46f1: $ff
    ret nz                                        ; $46f2: $c0

    rst $38                                       ; $46f3: $ff
    nop                                           ; $46f4: $00
    rst $38                                       ; $46f5: $ff
    nop                                           ; $46f6: $00
    rst $38                                       ; $46f7: $ff
    nop                                           ; $46f8: $00
    rst $38                                       ; $46f9: $ff
    nop                                           ; $46fa: $00
    rst $38                                       ; $46fb: $ff
    rra                                           ; $46fc: $1f
    rst $38                                       ; $46fd: $ff
    ld a, a                                       ; $46fe: $7f
    rst $38                                       ; $46ff: $ff
    rst $38                                       ; $4700: $ff
    rst $38                                       ; $4701: $ff
    cp $fe                                        ; $4702: $fe $fe
    db $fc                                        ; $4704: $fc
    db $fc                                        ; $4705: $fc
    ldh a, [$f0]                                  ; $4706: $f0 $f0
    ldh a, [$f0]                                  ; $4708: $f0 $f0
    ld [hl], b                                    ; $470a: $70
    ldh a, [rNR23]                                ; $470b: $f0 $18
    rra                                           ; $470d: $1f
    inc e                                         ; $470e: $1c
    rra                                           ; $470f: $1f
    ld c, $0f                                     ; $4710: $0e $0f
    ld b, $07                                     ; $4712: $06 $07
    inc c                                         ; $4714: $0c
    rrca                                          ; $4715: $0f
    inc c                                         ; $4716: $0c
    rrca                                          ; $4717: $0f
    inc e                                         ; $4718: $1c
    rra                                           ; $4719: $1f
    jr c, jr_04b_475b                             ; $471a: $38 $3f

    nop                                           ; $471c: $00
    rst $38                                       ; $471d: $ff
    nop                                           ; $471e: $00
    rst $38                                       ; $471f: $ff
    inc bc                                        ; $4720: $03
    db $fc                                        ; $4721: $fc
    ld b, $f9                                     ; $4722: $06 $f9
    ld c, $f1                                     ; $4724: $0e $f1
    ld [$00f7], sp                                ; $4726: $08 $f7 $00
    rst $38                                       ; $4729: $ff
    nop                                           ; $472a: $00
    rst $38                                       ; $472b: $ff
    call z, $78cf                                 ; $472c: $cc $cf $78
    rst $38                                       ; $472f: $ff
    or b                                          ; $4730: $b0
    ld a, a                                       ; $4731: $7f
    jr nc, @+$01                                  ; $4732: $30 $ff

    nop                                           ; $4734: $00
    rst $38                                       ; $4735: $ff
    nop                                           ; $4736: $00
    rst $38                                       ; $4737: $ff
    nop                                           ; $4738: $00
    rst $38                                       ; $4739: $ff
    nop                                           ; $473a: $00
    rst $38                                       ; $473b: $ff
    inc e                                         ; $473c: $1c
    db $fc                                        ; $473d: $fc

jr_04b_473e:
    inc c                                         ; $473e: $0c
    db $fc                                        ; $473f: $fc
    inc c                                         ; $4740: $0c
    db $fc                                        ; $4741: $fc
    inc e                                         ; $4742: $1c
    db $fc                                        ; $4743: $fc
    jr jr_04b_473e                                ; $4744: $18 $f8

    inc e                                         ; $4746: $1c
    db $fc                                        ; $4747: $fc
    inc c                                         ; $4748: $0c
    db $fc                                        ; $4749: $fc
    inc c                                         ; $474a: $0c
    db $fc                                        ; $474b: $fc
    rrca                                          ; $474c: $0f
    rrca                                          ; $474d: $0f
    rlca                                          ; $474e: $07
    rlca                                          ; $474f: $07
    inc bc                                        ; $4750: $03
    inc bc                                        ; $4751: $03
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    nop                                           ; $4759: $00
    nop                                           ; $475a: $00

jr_04b_475b:
    nop                                           ; $475b: $00
    ld hl, sp-$01                                 ; $475c: $f8 $ff
    cp $ff                                        ; $475e: $fe $ff
    rst $38                                       ; $4760: $ff
    rst $38                                       ; $4761: $ff
    rrca                                          ; $4762: $0f
    rrca                                          ; $4763: $0f
    rlca                                          ; $4764: $07
    rlca                                          ; $4765: $07
    rlca                                          ; $4766: $07
    rlca                                          ; $4767: $07
    rlca                                          ; $4768: $07
    rlca                                          ; $4769: $07
    rlca                                          ; $476a: $07
    rlca                                          ; $476b: $07
    ld [hl], b                                    ; $476c: $70
    ldh a, [$78]                                  ; $476d: $f0 $78
    ld hl, sp+$38                                 ; $476f: $f8 $38
    ld hl, sp+$3c                                 ; $4771: $f8 $3c
    db $fc                                        ; $4773: $fc
    inc a                                         ; $4774: $3c
    db $fc                                        ; $4775: $fc
    inc a                                         ; $4776: $3c
    db $fc                                        ; $4777: $fc
    ld a, h                                       ; $4778: $7c
    db $fc                                        ; $4779: $fc
    ld a, b                                       ; $477a: $78
    ld hl, sp+$30                                 ; $477b: $f8 $30
    ccf                                           ; $477d: $3f
    jr c, @+$41                                   ; $477e: $38 $3f

    jr jr_04b_47a1                                ; $4780: $18 $1f

    jr c, @+$41                                   ; $4782: $38 $3f

    jr nc, jr_04b_47c5                            ; $4784: $30 $3f

    dec sp                                        ; $4786: $3b
    ccf                                           ; $4787: $3f
    rra                                           ; $4788: $1f
    rra                                           ; $4789: $1f
    ld c, $0e                                     ; $478a: $0e $0e
    nop                                           ; $478c: $00
    rst $38                                       ; $478d: $ff
    inc bc                                        ; $478e: $03
    rst $38                                       ; $478f: $ff
    rlca                                          ; $4790: $07
    rst $38                                       ; $4791: $ff
    rlca                                          ; $4792: $07
    rst $38                                       ; $4793: $ff
    inc bc                                        ; $4794: $03
    rst $38                                       ; $4795: $ff
    add b                                         ; $4796: $80
    rst $38                                       ; $4797: $ff
    ret nz                                        ; $4798: $c0

    rst $38                                       ; $4799: $ff
    ret nz                                        ; $479a: $c0

    rst $38                                       ; $479b: $ff
    ret nz                                        ; $479c: $c0

    rst $38                                       ; $479d: $ff
    ldh [rIE], a                                  ; $479e: $e0 $ff
    ld h, b                                       ; $47a0: $60

jr_04b_47a1:
    ld a, a                                       ; $47a1: $7f
    ret nz                                        ; $47a2: $c0

    rst $38                                       ; $47a3: $ff
    nop                                           ; $47a4: $00
    rst $38                                       ; $47a5: $ff
    nop                                           ; $47a6: $00
    rst $38                                       ; $47a7: $ff
    nop                                           ; $47a8: $00
    rst $38                                       ; $47a9: $ff
    nop                                           ; $47aa: $00
    rst $38                                       ; $47ab: $ff
    nop                                           ; $47ac: $00
    rst $38                                       ; $47ad: $ff
    nop                                           ; $47ae: $00
    rst $38                                       ; $47af: $ff
    nop                                           ; $47b0: $00
    rst $38                                       ; $47b1: $ff

jr_04b_47b2:
    jr nz, @+$01                                  ; $47b2: $20 $ff

jr_04b_47b4:
    ld h, b                                       ; $47b4: $60
    rst $38                                       ; $47b5: $ff
    ret nc                                        ; $47b6: $d0

    cp a                                          ; $47b7: $bf

jr_04b_47b8:
    sub b                                         ; $47b8: $90
    rst $38                                       ; $47b9: $ff
    ld h, b                                       ; $47ba: $60
    rst $38                                       ; $47bb: $ff
    inc e                                         ; $47bc: $1c
    db $fc                                        ; $47bd: $fc
    jr c, jr_04b_47b8                             ; $47be: $38 $f8

    jr nc, jr_04b_47b2                            ; $47c0: $30 $f0

    jr nc, jr_04b_47b4                            ; $47c2: $30 $f0

    ld [hl], b                                    ; $47c4: $70

jr_04b_47c5:
    ldh a, [$e0]                                  ; $47c5: $f0 $e0
    ldh [$c0], a                                  ; $47c7: $e0 $c0
    ret nz                                        ; $47c9: $c0

    ret nz                                        ; $47ca: $c0

    ret nz                                        ; $47cb: $c0

    inc bc                                        ; $47cc: $03
    inc bc                                        ; $47cd: $03
    inc bc                                        ; $47ce: $03
    inc bc                                        ; $47cf: $03
    inc bc                                        ; $47d0: $03
    inc bc                                        ; $47d1: $03
    inc bc                                        ; $47d2: $03
    inc bc                                        ; $47d3: $03
    inc bc                                        ; $47d4: $03
    inc bc                                        ; $47d5: $03
    ld bc, $0101                                  ; $47d6: $01 $01 $01
    ld bc, $0000                                  ; $47d9: $01 $00 $00
    add b                                         ; $47dc: $80
    rst $38                                       ; $47dd: $ff
    add b                                         ; $47de: $80
    rst $38                                       ; $47df: $ff
    add b                                         ; $47e0: $80
    rst $38                                       ; $47e1: $ff
    add b                                         ; $47e2: $80
    rst $38                                       ; $47e3: $ff
    ret nz                                        ; $47e4: $c0

    rst $38                                       ; $47e5: $ff
    ldh [rIE], a                                  ; $47e6: $e0 $ff
    cp $ff                                        ; $47e8: $fe $ff
    rst $38                                       ; $47ea: $ff
    rst $38                                       ; $47eb: $ff
    ld bc, $03ff                                  ; $47ec: $01 $ff $03
    rst $38                                       ; $47ef: $ff
    rlca                                          ; $47f0: $07
    rst $38                                       ; $47f1: $ff
    rlca                                          ; $47f2: $07
    rst $38                                       ; $47f3: $ff
    rlca                                          ; $47f4: $07
    rst $38                                       ; $47f5: $ff
    rlca                                          ; $47f6: $07
    rst $38                                       ; $47f7: $ff
    rlca                                          ; $47f8: $07
    rst $38                                       ; $47f9: $ff
    rrca                                          ; $47fa: $0f
    rst $38                                       ; $47fb: $ff
    ld hl, sp-$08                                 ; $47fc: $f8 $f8
    ldh a, [$f0]                                  ; $47fe: $f0 $f0
    ldh [$e0], a                                  ; $4800: $e0 $e0
    add b                                         ; $4802: $80
    add b                                         ; $4803: $80
    nop                                           ; $4804: $00
    nop                                           ; $4805: $00
    nop                                           ; $4806: $00
    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00
    nop                                           ; $480b: $00
    ldh [rIE], a                                  ; $480c: $e0 $ff
    ld h, b                                       ; $480e: $60
    ld a, a                                       ; $480f: $7f
    ldh [rIE], a                                  ; $4810: $e0 $ff
    ret nz                                        ; $4812: $c0

    rst $38                                       ; $4813: $ff
    and $ff                                       ; $4814: $e6 $ff
    ld a, a                                       ; $4816: $7f
    ld a, a                                       ; $4817: $7f
    ccf                                           ; $4818: $3f
    ccf                                           ; $4819: $3f
    ld bc, $0001                                  ; $481a: $01 $01 $00
    rst $38                                       ; $481d: $ff
    nop                                           ; $481e: $00
    rst $38                                       ; $481f: $ff
    nop                                           ; $4820: $00
    rst $38                                       ; $4821: $ff
    nop                                           ; $4822: $00
    rst $38                                       ; $4823: $ff
    nop                                           ; $4824: $00
    rst $38                                       ; $4825: $ff
    inc sp                                        ; $4826: $33
    rst $38                                       ; $4827: $ff
    rst $38                                       ; $4828: $ff
    rst $38                                       ; $4829: $ff
    rst $38                                       ; $482a: $ff
    rst $38                                       ; $482b: $ff
    nop                                           ; $482c: $00
    rst $38                                       ; $482d: $ff
    inc bc                                        ; $482e: $03
    rst $38                                       ; $482f: $ff
    inc bc                                        ; $4830: $03
    rst $38                                       ; $4831: $ff
    ld bc, $03ff                                  ; $4832: $01 $ff $03
    rst $38                                       ; $4835: $ff
    ld h, a                                       ; $4836: $67
    rst $38                                       ; $4837: $ff
    rst $38                                       ; $4838: $ff
    rst $38                                       ; $4839: $ff
    db $fc                                        ; $483a: $fc
    db $fc                                        ; $483b: $fc
    ret nz                                        ; $483c: $c0

    ret nz                                        ; $483d: $c0

    add b                                         ; $483e: $80
    add b                                         ; $483f: $80
    add b                                         ; $4840: $80
    add b                                         ; $4841: $80
    add b                                         ; $4842: $80
    add b                                         ; $4843: $80
    add b                                         ; $4844: $80
    add b                                         ; $4845: $80
    nop                                           ; $4846: $00
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    nop                                           ; $484b: $00
    ccf                                           ; $484c: $3f
    ccf                                           ; $484d: $3f
    rlca                                          ; $484e: $07
    rlca                                          ; $484f: $07
    inc bc                                        ; $4850: $03
    inc bc                                        ; $4851: $03
    ld bc, $0001                                  ; $4852: $01 $01 $00
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    nop                                           ; $485a: $00
    nop                                           ; $485b: $00
    add b                                         ; $485c: $80
    rst $38                                       ; $485d: $ff
    cp $ff                                        ; $485e: $fe $ff
    rst $38                                       ; $4860: $ff
    rst $38                                       ; $4861: $ff
    rst $38                                       ; $4862: $ff
    rst $38                                       ; $4863: $ff
    ld a, a                                       ; $4864: $7f
    ld a, a                                       ; $4865: $7f
    inc bc                                        ; $4866: $03
    inc bc                                        ; $4867: $03
    ld bc, $0001                                  ; $4868: $01 $01 $00
    nop                                           ; $486b: $00
    nop                                           ; $486c: $00
    rst $38                                       ; $486d: $ff
    inc bc                                        ; $486e: $03
    rst $38                                       ; $486f: $ff
    rlca                                          ; $4870: $07
    rst $38                                       ; $4871: $ff
    adc a                                         ; $4872: $8f
    rst $38                                       ; $4873: $ff
    rst $38                                       ; $4874: $ff
    rst $38                                       ; $4875: $ff
    rst $38                                       ; $4876: $ff
    rst $38                                       ; $4877: $ff
    cp $ff                                        ; $4878: $fe $ff
    cp $ff                                        ; $487a: $fe $ff
    nop                                           ; $487c: $00
    rst $38                                       ; $487d: $ff
    add b                                         ; $487e: $80
    rst $38                                       ; $487f: $ff
    ret nz                                        ; $4880: $c0

    rst $38                                       ; $4881: $ff
    ret nz                                        ; $4882: $c0

    rst $38                                       ; $4883: $ff
    ldh [rIE], a                                  ; $4884: $e0 $ff
    rst $38                                       ; $4886: $ff
    rst $38                                       ; $4887: $ff
    rst $38                                       ; $4888: $ff
    rst $38                                       ; $4889: $ff
    rst $38                                       ; $488a: $ff
    rst $38                                       ; $488b: $ff
    nop                                           ; $488c: $00
    rst $38                                       ; $488d: $ff
    nop                                           ; $488e: $00
    rst $38                                       ; $488f: $ff
    add hl, sp                                    ; $4890: $39
    rst $38                                       ; $4891: $ff
    ld a, a                                       ; $4892: $7f
    rst $38                                       ; $4893: $ff
    rst $38                                       ; $4894: $ff
    rst $38                                       ; $4895: $ff
    rst $38                                       ; $4896: $ff
    rst $38                                       ; $4897: $ff
    cp $fe                                        ; $4898: $fe $fe
    call c, Call_000_00fc                         ; $489a: $dc $fc $00
    rst $38                                       ; $489d: $ff
    ld h, b                                       ; $489e: $60
    rst $38                                       ; $489f: $ff
    ldh a, [rIE]                                  ; $48a0: $f0 $ff
    ld hl, sp-$01                                 ; $48a2: $f8 $ff
    ld hl, sp-$01                                 ; $48a4: $f8 $ff
    ld a, a                                       ; $48a6: $7f
    ld a, a                                       ; $48a7: $7f
    ccf                                           ; $48a8: $3f
    ccf                                           ; $48a9: $3f
    rra                                           ; $48aa: $1f
    rra                                           ; $48ab: $1f
    ccf                                           ; $48ac: $3f
    rst $38                                       ; $48ad: $ff
    ld a, [hl]                                    ; $48ae: $7e
    cp $7e                                        ; $48af: $fe $7e
    cp $7c                                        ; $48b1: $fe $7c
    db $fc                                        ; $48b3: $fc
    ldh a, [$f0]                                  ; $48b4: $f0 $f0
    ldh a, [$f0]                                  ; $48b6: $f0 $f0
    ldh [$e0], a                                  ; $48b8: $e0 $e0
    ret nz                                        ; $48ba: $c0

    ret nz                                        ; $48bb: $c0

    nop                                           ; $48bc: $00
    nop                                           ; $48bd: $00
    nop                                           ; $48be: $00
    nop                                           ; $48bf: $00
    nop                                           ; $48c0: $00
    nop                                           ; $48c1: $00
    nop                                           ; $48c2: $00
    nop                                           ; $48c3: $00
    nop                                           ; $48c4: $00
    nop                                           ; $48c5: $00
    nop                                           ; $48c6: $00
    nop                                           ; $48c7: $00
    ld bc, $0301                                  ; $48c8: $01 $01 $03
    inc bc                                        ; $48cb: $03
    ld h, b                                       ; $48cc: $60
    ld a, a                                       ; $48cd: $7f
    ldh [rIE], a                                  ; $48ce: $e0 $ff
    ret nz                                        ; $48d0: $c0

    rst $38                                       ; $48d1: $ff
    ret nz                                        ; $48d2: $c0

    rst $38                                       ; $48d3: $ff
    ret nz                                        ; $48d4: $c0

    rst $38                                       ; $48d5: $ff
    ldh [rIE], a                                  ; $48d6: $e0 $ff
    ldh [rIE], a                                  ; $48d8: $e0 $ff
    add b                                         ; $48da: $80
    rst $38                                       ; $48db: $ff
    rra                                           ; $48dc: $1f
    rst $38                                       ; $48dd: $ff
    ld e, $ff                                     ; $48de: $1e $ff
    inc c                                         ; $48e0: $0c
    rst $38                                       ; $48e1: $ff
    ld [$00ff], sp                                ; $48e2: $08 $ff $00
    rst $38                                       ; $48e5: $ff
    nop                                           ; $48e6: $00
    rst $38                                       ; $48e7: $ff
    nop                                           ; $48e8: $00
    rst $38                                       ; $48e9: $ff
    nop                                           ; $48ea: $00
    rst $38                                       ; $48eb: $ff
    add e                                         ; $48ec: $83
    rst $38                                       ; $48ed: $ff
    inc bc                                        ; $48ee: $03
    rst $38                                       ; $48ef: $ff
    inc bc                                        ; $48f0: $03
    rst $38                                       ; $48f1: $ff
    rlca                                          ; $48f2: $07
    rst $38                                       ; $48f3: $ff
    rlca                                          ; $48f4: $07
    rst $38                                       ; $48f5: $ff
    ld bc, $00ff                                  ; $48f6: $01 $ff $00
    rst $38                                       ; $48f9: $ff
    nop                                           ; $48fa: $00
    rst $38                                       ; $48fb: $ff
    nop                                           ; $48fc: $00
    nop                                           ; $48fd: $00
    nop                                           ; $48fe: $00
    nop                                           ; $48ff: $00
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    add b                                         ; $4904: $80
    add b                                         ; $4905: $80
    ret nz                                        ; $4906: $c0

    ret nz                                        ; $4907: $c0

    ret nz                                        ; $4908: $c0

    ret nz                                        ; $4909: $c0

    ldh a, [$f0]                                  ; $490a: $f0 $f0
    nop                                           ; $490c: $00
    nop                                           ; $490d: $00
    nop                                           ; $490e: $00
    nop                                           ; $490f: $00
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    rlca                                          ; $4912: $07
    rlca                                          ; $4913: $07
    rrca                                          ; $4914: $0f
    rrca                                          ; $4915: $0f
    rra                                           ; $4916: $1f
    rra                                           ; $4917: $1f
    inc e                                         ; $4918: $1c
    rra                                           ; $4919: $1f
    jr c, @+$41                                   ; $491a: $38 $3f

    ld [hl], b                                    ; $491c: $70
    ld a, a                                       ; $491d: $7f
    ld a, h                                       ; $491e: $7c
    ld a, a                                       ; $491f: $7f
    ld a, $3f                                     ; $4920: $3e $3f
    ld a, $3f                                     ; $4922: $3e $3f
    ld hl, sp-$01                                 ; $4924: $f8 $ff
    ldh a, [rIE]                                  ; $4926: $f0 $ff
    ldh a, [rIE]                                  ; $4928: $f0 $ff
    nop                                           ; $492a: $00
    rst $38                                       ; $492b: $ff
    inc bc                                        ; $492c: $03
    rst $38                                       ; $492d: $ff
    inc bc                                        ; $492e: $03
    rst $38                                       ; $492f: $ff
    inc bc                                        ; $4930: $03
    rst $38                                       ; $4931: $ff
    rlca                                          ; $4932: $07
    rst $38                                       ; $4933: $ff
    rrca                                          ; $4934: $0f
    rst $38                                       ; $4935: $ff
    ld c, $ff                                     ; $4936: $0e $ff
    rrca                                          ; $4938: $0f
    rst $38                                       ; $4939: $ff
    rlca                                          ; $493a: $07
    rst $38                                       ; $493b: $ff
    nop                                           ; $493c: $00
    rst $38                                       ; $493d: $ff
    add b                                         ; $493e: $80
    rst $38                                       ; $493f: $ff
    ret nz                                        ; $4940: $c0

    rst $38                                       ; $4941: $ff
    db $fc                                        ; $4942: $fc
    rst $38                                       ; $4943: $ff
    cp $ff                                        ; $4944: $fe $ff
    cp $ff                                        ; $4946: $fe $ff
    ld l, [hl]                                    ; $4948: $6e
    rst $38                                       ; $4949: $ff
    ld l, [hl]                                    ; $494a: $6e
    rst $38                                       ; $494b: $ff
    rlca                                          ; $494c: $07
    rst $38                                       ; $494d: $ff
    rlca                                          ; $494e: $07
    rst $38                                       ; $494f: $ff
    rlca                                          ; $4950: $07
    rst $38                                       ; $4951: $ff
    rlca                                          ; $4952: $07
    rst $38                                       ; $4953: $ff
    rrca                                          ; $4954: $0f
    rst $38                                       ; $4955: $ff
    ld e, $fe                                     ; $4956: $1e $fe
    ld e, $fe                                     ; $4958: $1e $fe
    ld e, $fe                                     ; $495a: $1e $fe
    rlca                                          ; $495c: $07
    rlca                                          ; $495d: $07
    ld b, $07                                     ; $495e: $06 $07
    ld e, $1f                                     ; $4960: $1e $1f
    inc a                                         ; $4962: $3c
    ccf                                           ; $4963: $3f
    jr nc, jr_04b_49a5                            ; $4964: $30 $3f

    jr nc, @+$41                                  ; $4966: $30 $3f

    jr nc, @+$41                                  ; $4968: $30 $3f

    ld [hl], b                                    ; $496a: $70
    ld a, a                                       ; $496b: $7f
    nop                                           ; $496c: $00
    rst $38                                       ; $496d: $ff
    ld c, $f1                                     ; $496e: $0e $f1
    ld e, $e1                                     ; $4970: $1e $e1
    jr @-$17                                      ; $4972: $18 $e7

    ld a, b                                       ; $4974: $78
    add a                                         ; $4975: $87
    ldh a, [rIF]                                  ; $4976: $f0 $0f
    ret nz                                        ; $4978: $c0

    ccf                                           ; $4979: $3f
    ret nz                                        ; $497a: $c0

    ccf                                           ; $497b: $3f
    jr @+$01                                      ; $497c: $18 $ff

    ld a, b                                       ; $497e: $78
    rst $38                                       ; $497f: $ff
    call c, $a4ff                                 ; $4980: $dc $ff $a4
    rst $18                                       ; $4983: $df
    and h                                         ; $4984: $a4
    rst $18                                       ; $4985: $df
    call z, Call_04b_78ff                         ; $4986: $cc $ff $78
    rst $38                                       ; $4989: $ff
    nop                                           ; $498a: $00
    rst $38                                       ; $498b: $ff
    ld a, b                                       ; $498c: $78
    ld hl, sp+$18                                 ; $498d: $f8 $18
    ld hl, sp+$18                                 ; $498f: $f8 $18
    ld hl, sp+$1c                                 ; $4991: $f8 $1c
    db $fc                                        ; $4993: $fc
    ld e, $fe                                     ; $4994: $1e $fe
    ld c, $fe                                     ; $4996: $0e $fe
    inc bc                                        ; $4998: $03
    rst $38                                       ; $4999: $ff
    inc bc                                        ; $499a: $03
    rst $38                                       ; $499b: $ff
    jr c, jr_04b_49dd                             ; $499c: $38 $3f

    inc a                                         ; $499e: $3c
    ccf                                           ; $499f: $3f
    inc e                                         ; $49a0: $1c
    rra                                           ; $49a1: $1f
    inc e                                         ; $49a2: $1c
    rra                                           ; $49a3: $1f
    inc e                                         ; $49a4: $1c

jr_04b_49a5:
    rra                                           ; $49a5: $1f
    jr @+$21                                      ; $49a6: $18 $1f

    jr c, jr_04b_49e9                             ; $49a8: $38 $3f

    jr c, @+$41                                   ; $49aa: $38 $3f

    nop                                           ; $49ac: $00
    rst $38                                       ; $49ad: $ff
    nop                                           ; $49ae: $00
    rst $38                                       ; $49af: $ff
    nop                                           ; $49b0: $00
    rst $38                                       ; $49b1: $ff
    nop                                           ; $49b2: $00
    rst $38                                       ; $49b3: $ff
    nop                                           ; $49b4: $00
    rst $38                                       ; $49b5: $ff
    inc c                                         ; $49b6: $0c
    rst $38                                       ; $49b7: $ff
    inc a                                         ; $49b8: $3c
    rst $38                                       ; $49b9: $ff
    ld a, [hl]                                    ; $49ba: $7e
    rst $38                                       ; $49bb: $ff
    inc bc                                        ; $49bc: $03
    rst $38                                       ; $49bd: $ff
    inc bc                                        ; $49be: $03
    rst $38                                       ; $49bf: $ff
    rlca                                          ; $49c0: $07
    rst $38                                       ; $49c1: $ff
    rlca                                          ; $49c2: $07
    rst $38                                       ; $49c3: $ff
    inc bc                                        ; $49c4: $03
    rst $38                                       ; $49c5: $ff
    ld bc, $00ff                                  ; $49c6: $01 $ff $00
    rst $38                                       ; $49c9: $ff
    nop                                           ; $49ca: $00
    rst $38                                       ; $49cb: $ff
    adc a                                         ; $49cc: $8f
    rst $38                                       ; $49cd: $ff
    add a                                         ; $49ce: $87
    rst $38                                       ; $49cf: $ff
    ld h, a                                       ; $49d0: $67
    rst $38                                       ; $49d1: $ff
    rst $20                                       ; $49d2: $e7
    rst $38                                       ; $49d3: $ff
    rst $18                                       ; $49d4: $df
    rst $38                                       ; $49d5: $ff
    rst $38                                       ; $49d6: $ff
    rst $38                                       ; $49d7: $ff
    ld hl, sp-$01                                 ; $49d8: $f8 $ff
    ldh a, [rIE]                                  ; $49da: $f0 $ff
    nop                                           ; $49dc: $00

jr_04b_49dd:
    rst $38                                       ; $49dd: $ff
    add b                                         ; $49de: $80
    rst $38                                       ; $49df: $ff
    ldh a, [rIE]                                  ; $49e0: $f0 $ff
    db $fc                                        ; $49e2: $fc
    rst $38                                       ; $49e3: $ff
    rst $38                                       ; $49e4: $ff
    rst $38                                       ; $49e5: $ff
    rst $38                                       ; $49e6: $ff
    rst $38                                       ; $49e7: $ff
    rst $08                                       ; $49e8: $cf

jr_04b_49e9:
    rst $38                                       ; $49e9: $ff
    ld b, $fe                                     ; $49ea: $06 $fe
    nop                                           ; $49ec: $00
    rst $38                                       ; $49ed: $ff
    nop                                           ; $49ee: $00
    rst $38                                       ; $49ef: $ff
    nop                                           ; $49f0: $00
    rst $38                                       ; $49f1: $ff
    ld h, b                                       ; $49f2: $60
    rst $38                                       ; $49f3: $ff
    ldh a, [rIE]                                  ; $49f4: $f0 $ff
    ldh a, [rIE]                                  ; $49f6: $f0 $ff
    ld hl, sp-$01                                 ; $49f8: $f8 $ff
    ld a, $3f                                     ; $49fa: $3e $3f
    rrca                                          ; $49fc: $0f
    rst $38                                       ; $49fd: $ff
    rlca                                          ; $49fe: $07
    rst $38                                       ; $49ff: $ff
    inc bc                                        ; $4a00: $03
    rst $38                                       ; $4a01: $ff
    inc bc                                        ; $4a02: $03
    rst $38                                       ; $4a03: $ff
    inc bc                                        ; $4a04: $03
    rst $38                                       ; $4a05: $ff
    ld bc, $00ff                                  ; $4a06: $01 $ff $00
    rst $38                                       ; $4a09: $ff
    nop                                           ; $4a0a: $00
    rst $38                                       ; $4a0b: $ff
    nop                                           ; $4a0c: $00
    nop                                           ; $4a0d: $00
    ldh a, [$f0]                                  ; $4a0e: $f0 $f0
    ld hl, sp-$08                                 ; $4a10: $f8 $f8
    db $fc                                        ; $4a12: $fc
    db $fc                                        ; $4a13: $fc
    sbc h                                         ; $4a14: $9c
    db $fc                                        ; $4a15: $fc
    adc h                                         ; $4a16: $8c
    db $fc                                        ; $4a17: $fc
    inc c                                         ; $4a18: $0c
    db $fc                                        ; $4a19: $fc
    ld c, $fe                                     ; $4a1a: $0e $fe
    ldh [rIE], a                                  ; $4a1c: $e0 $ff
    ldh [rIE], a                                  ; $4a1e: $e0 $ff
    ldh [rIE], a                                  ; $4a20: $e0 $ff
    ld [hl], b                                    ; $4a22: $70
    ld a, a                                       ; $4a23: $7f
    jr nc, jr_04b_4a65                            ; $4a24: $30 $3f

    jr c, jr_04b_4a67                             ; $4a26: $38 $3f

    inc a                                         ; $4a28: $3c
    ccf                                           ; $4a29: $3f
    db $fc                                        ; $4a2a: $fc
    rst $38                                       ; $4a2b: $ff
    nop                                           ; $4a2c: $00
    rst $38                                       ; $4a2d: $ff
    nop                                           ; $4a2e: $00
    rst $38                                       ; $4a2f: $ff
    nop                                           ; $4a30: $00
    rst $38                                       ; $4a31: $ff
    nop                                           ; $4a32: $00
    rst $38                                       ; $4a33: $ff
    nop                                           ; $4a34: $00
    rst $38                                       ; $4a35: $ff
    nop                                           ; $4a36: $00
    rst $38                                       ; $4a37: $ff
    ret nz                                        ; $4a38: $c0

    rst $38                                       ; $4a39: $ff
    ld hl, sp-$01                                 ; $4a3a: $f8 $ff
    inc bc                                        ; $4a3c: $03
    rst $38                                       ; $4a3d: $ff
    rlca                                          ; $4a3e: $07
    rst $38                                       ; $4a3f: $ff
    rrca                                          ; $4a40: $0f
    rst $38                                       ; $4a41: $ff
    ld c, $fe                                     ; $4a42: $0e $fe
    ld b, $fe                                     ; $4a44: $06 $fe
    ld b, $fe                                     ; $4a46: $06 $fe
    ld b, $fe                                     ; $4a48: $06 $fe
    ld c, $fe                                     ; $4a4a: $0e $fe
    jr c, jr_04b_4a8d                             ; $4a4c: $38 $3f

    jr c, jr_04b_4a8f                             ; $4a4e: $38 $3f

    ld a, $3f                                     ; $4a50: $3e $3f
    rra                                           ; $4a52: $1f
    rra                                           ; $4a53: $1f
    rrca                                          ; $4a54: $0f
    rrca                                          ; $4a55: $0f
    rlca                                          ; $4a56: $07
    rlca                                          ; $4a57: $07
    ld c, $0f                                     ; $4a58: $0e $0f
    ld c, $0f                                     ; $4a5a: $0e $0f
    rst $28                                       ; $4a5c: $ef
    rst $38                                       ; $4a5d: $ff
    db $d3                                        ; $4a5e: $d3
    rst $28                                       ; $4a5f: $ef
    db $d3                                        ; $4a60: $d3
    rst $28                                       ; $4a61: $ef
    rst $20                                       ; $4a62: $e7
    rst $38                                       ; $4a63: $ff
    ld a, [hl]                                    ; $4a64: $7e

jr_04b_4a65:
    rst $38                                       ; $4a65: $ff
    inc a                                         ; $4a66: $3c

jr_04b_4a67:
    rst $38                                       ; $4a67: $ff
    nop                                           ; $4a68: $00
    rst $38                                       ; $4a69: $ff
    nop                                           ; $4a6a: $00
    rst $38                                       ; $4a6b: $ff
    nop                                           ; $4a6c: $00
    rst $38                                       ; $4a6d: $ff
    nop                                           ; $4a6e: $00
    rst $38                                       ; $4a6f: $ff
    nop                                           ; $4a70: $00
    rst $38                                       ; $4a71: $ff
    nop                                           ; $4a72: $00
    rst $38                                       ; $4a73: $ff
    ld bc, $01fe                                  ; $4a74: $01 $fe $01
    cp $07                                        ; $4a77: $fe $07
    ld hl, sp+$0f                                 ; $4a79: $f8 $0f
    ldh a, [rTAC]                                 ; $4a7b: $f0 $07
    rst $38                                       ; $4a7d: $ff
    rlca                                          ; $4a7e: $07
    rst $38                                       ; $4a7f: $ff
    rlca                                          ; $4a80: $07
    rst $38                                       ; $4a81: $ff
    ei                                            ; $4a82: $fb
    rlca                                          ; $4a83: $07
    ld sp, hl                                     ; $4a84: $f9
    rlca                                          ; $4a85: $07
    add c                                         ; $4a86: $81
    ld a, a                                       ; $4a87: $7f
    add b                                         ; $4a88: $80
    ld a, a                                       ; $4a89: $7f
    nop                                           ; $4a8a: $00
    rst $38                                       ; $4a8b: $ff
    rrca                                          ; $4a8c: $0f

jr_04b_4a8d:
    rrca                                          ; $4a8d: $0f
    rra                                           ; $4a8e: $1f

jr_04b_4a8f:
    rra                                           ; $4a8f: $1f
    inc a                                         ; $4a90: $3c
    ccf                                           ; $4a91: $3f
    cp b                                          ; $4a92: $b8
    cp a                                          ; $4a93: $bf
    ldh a, [rIE]                                  ; $4a94: $f0 $ff
    ldh a, [rIE]                                  ; $4a96: $f0 $ff
    ldh a, [rIE]                                  ; $4a98: $f0 $ff
    ret nz                                        ; $4a9a: $c0

    rst $38                                       ; $4a9b: $ff
    rrca                                          ; $4a9c: $0f
    rst $38                                       ; $4a9d: $ff
    rlca                                          ; $4a9e: $07
    rst $38                                       ; $4a9f: $ff
    inc bc                                        ; $4aa0: $03
    rst $38                                       ; $4aa1: $ff
    inc bc                                        ; $4aa2: $03
    rst $38                                       ; $4aa3: $ff
    inc bc                                        ; $4aa4: $03
    rst $38                                       ; $4aa5: $ff
    rlca                                          ; $4aa6: $07
    rst $38                                       ; $4aa7: $ff
    rrca                                          ; $4aa8: $0f
    rst $38                                       ; $4aa9: $ff
    ld e, $fe                                     ; $4aaa: $1e $fe
    ld bc, $0301                                  ; $4aac: $01 $01 $03
    inc bc                                        ; $4aaf: $03
    inc bc                                        ; $4ab0: $03
    inc bc                                        ; $4ab1: $03
    inc bc                                        ; $4ab2: $03
    inc bc                                        ; $4ab3: $03
    ld bc, $0301                                  ; $4ab4: $01 $01 $03
    inc bc                                        ; $4ab7: $03
    rlca                                          ; $4ab8: $07
    rlca                                          ; $4ab9: $07
    ld b, $07                                     ; $4aba: $06 $07
    ld hl, sp-$01                                 ; $4abc: $f8 $ff
    sbc b                                         ; $4abe: $98
    rst $38                                       ; $4abf: $ff
    nop                                           ; $4ac0: $00
    rst $38                                       ; $4ac1: $ff
    add b                                         ; $4ac2: $80
    rst $38                                       ; $4ac3: $ff
    add b                                         ; $4ac4: $80
    rst $38                                       ; $4ac5: $ff
    add b                                         ; $4ac6: $80
    rst $38                                       ; $4ac7: $ff
    nop                                           ; $4ac8: $00
    rst $38                                       ; $4ac9: $ff
    nop                                           ; $4aca: $00
    rst $38                                       ; $4acb: $ff
    ld bc, $03ff                                  ; $4acc: $01 $ff $03
    rst $38                                       ; $4acf: $ff
    inc bc                                        ; $4ad0: $03
    rst $38                                       ; $4ad1: $ff
    ld bc, $00ff                                  ; $4ad2: $01 $ff $00
    rst $38                                       ; $4ad5: $ff
    inc c                                         ; $4ad6: $0c
    rst $38                                       ; $4ad7: $ff
    inc a                                         ; $4ad8: $3c
    rst $38                                       ; $4ad9: $ff
    ld l, [hl]                                    ; $4ada: $6e
    rst $38                                       ; $4adb: $ff
    db $fc                                        ; $4adc: $fc
    rst $38                                       ; $4add: $ff
    cp [hl]                                       ; $4ade: $be
    rst $38                                       ; $4adf: $ff
    or a                                          ; $4ae0: $b7
    rst $38                                       ; $4ae1: $ff
    rst $00                                       ; $4ae2: $c7
    rst $38                                       ; $4ae3: $ff
    push bc                                       ; $4ae4: $c5
    rst $38                                       ; $4ae5: $ff
    rst $38                                       ; $4ae6: $ff
    rst $38                                       ; $4ae7: $ff
    rst $38                                       ; $4ae8: $ff
    rst $38                                       ; $4ae9: $ff
    ld c, $ff                                     ; $4aea: $0e $ff
    nop                                           ; $4aec: $00
    rst $38                                       ; $4aed: $ff
    nop                                           ; $4aee: $00
    rst $38                                       ; $4aef: $ff
    ret nz                                        ; $4af0: $c0

    rst $38                                       ; $4af1: $ff
    ret nz                                        ; $4af2: $c0

    rst $38                                       ; $4af3: $ff
    ldh [rIE], a                                  ; $4af4: $e0 $ff
    db $fc                                        ; $4af6: $fc
    rst $38                                       ; $4af7: $ff
    rst $38                                       ; $4af8: $ff
    rst $38                                       ; $4af9: $ff
    ld [hl], a                                    ; $4afa: $77
    rst $30                                       ; $4afb: $f7
    inc e                                         ; $4afc: $1c
    db $fc                                        ; $4afd: $fc
    inc e                                         ; $4afe: $1c
    db $fc                                        ; $4aff: $fc
    inc c                                         ; $4b00: $0c
    db $fc                                        ; $4b01: $fc
    rlca                                          ; $4b02: $07
    rst $38                                       ; $4b03: $ff
    rlca                                          ; $4b04: $07
    rst $38                                       ; $4b05: $ff
    ld b, $ff                                     ; $4b06: $06 $ff
    nop                                           ; $4b08: $00
    rst $38                                       ; $4b09: $ff
    nop                                           ; $4b0a: $00
    rst $38                                       ; $4b0b: $ff
    nop                                           ; $4b0c: $00
    nop                                           ; $4b0d: $00
    nop                                           ; $4b0e: $00
    nop                                           ; $4b0f: $00
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    add b                                         ; $4b12: $80
    add b                                         ; $4b13: $80
    ret nz                                        ; $4b14: $c0

    ret nz                                        ; $4b15: $c0

    ret nz                                        ; $4b16: $c0

    ret nz                                        ; $4b17: $c0

    ld h, b                                       ; $4b18: $60
    ldh [$60], a                                  ; $4b19: $e0 $60
    ldh [$0e], a                                  ; $4b1b: $e0 $0e
    rrca                                          ; $4b1d: $0f
    rlca                                          ; $4b1e: $07
    rlca                                          ; $4b1f: $07
    rlca                                          ; $4b20: $07
    rlca                                          ; $4b21: $07
    rra                                           ; $4b22: $1f
    rra                                           ; $4b23: $1f
    ld a, $3f                                     ; $4b24: $3e $3f
    ld a, b                                       ; $4b26: $78
    ld a, a                                       ; $4b27: $7f
    ld [hl], b                                    ; $4b28: $70
    ld a, a                                       ; $4b29: $7f
    ld [hl], b                                    ; $4b2a: $70
    ld a, a                                       ; $4b2b: $7f
    inc c                                         ; $4b2c: $0c
    di                                            ; $4b2d: $f3
    inc c                                         ; $4b2e: $0c
    di                                            ; $4b2f: $f3
    inc c                                         ; $4b30: $0c
    di                                            ; $4b31: $f3
    inc c                                         ; $4b32: $0c
    di                                            ; $4b33: $f3
    nop                                           ; $4b34: $00
    rst $38                                       ; $4b35: $ff
    nop                                           ; $4b36: $00
    rst $38                                       ; $4b37: $ff
    nop                                           ; $4b38: $00
    rst $38                                       ; $4b39: $ff
    nop                                           ; $4b3a: $00
    rst $38                                       ; $4b3b: $ff
    nop                                           ; $4b3c: $00
    rst $38                                       ; $4b3d: $ff
    nop                                           ; $4b3e: $00
    rst $38                                       ; $4b3f: $ff
    nop                                           ; $4b40: $00
    rst $38                                       ; $4b41: $ff
    nop                                           ; $4b42: $00
    rst $38                                       ; $4b43: $ff
    nop                                           ; $4b44: $00
    rst $38                                       ; $4b45: $ff
    nop                                           ; $4b46: $00
    rst $38                                       ; $4b47: $ff
    nop                                           ; $4b48: $00
    rst $38                                       ; $4b49: $ff
    inc c                                         ; $4b4a: $0c
    rst $38                                       ; $4b4b: $ff
    inc e                                         ; $4b4c: $1c
    db $fc                                        ; $4b4d: $fc
    ld e, $fe                                     ; $4b4e: $1e $fe
    rrca                                          ; $4b50: $0f
    rst $38                                       ; $4b51: $ff
    rlca                                          ; $4b52: $07
    rst $38                                       ; $4b53: $ff
    inc bc                                        ; $4b54: $03
    rst $38                                       ; $4b55: $ff
    inc bc                                        ; $4b56: $03
    rst $38                                       ; $4b57: $ff
    rlca                                          ; $4b58: $07
    rst $38                                       ; $4b59: $ff
    rrca                                          ; $4b5a: $0f
    rst $38                                       ; $4b5b: $ff
    ld b, $07                                     ; $4b5c: $06 $07
    rlca                                          ; $4b5e: $07
    rlca                                          ; $4b5f: $07
    inc bc                                        ; $4b60: $03
    inc bc                                        ; $4b61: $03
    ld bc, $0101                                  ; $4b62: $01 $01 $01
    ld bc, $0101                                  ; $4b65: $01 $01 $01
    ld bc, $0301                                  ; $4b68: $01 $01 $03
    inc bc                                        ; $4b6b: $03
    nop                                           ; $4b6c: $00
    rst $38                                       ; $4b6d: $ff
    add b                                         ; $4b6e: $80
    rst $38                                       ; $4b6f: $ff
    ret nz                                        ; $4b70: $c0

    rst $38                                       ; $4b71: $ff
    ret nz                                        ; $4b72: $c0

    rst $38                                       ; $4b73: $ff
    add b                                         ; $4b74: $80
    rst $38                                       ; $4b75: $ff
    add b                                         ; $4b76: $80
    rst $38                                       ; $4b77: $ff
    ret nz                                        ; $4b78: $c0

    rst $38                                       ; $4b79: $ff
    ret nz                                        ; $4b7a: $c0

    rst $38                                       ; $4b7b: $ff
    ld d, d                                       ; $4b7c: $52
    rst $28                                       ; $4b7d: $ef
    ld d, d                                       ; $4b7e: $52
    rst $28                                       ; $4b7f: $ef
    ld h, [hl]                                    ; $4b80: $66
    rst $38                                       ; $4b81: $ff
    inc a                                         ; $4b82: $3c
    rst $38                                       ; $4b83: $ff
    nop                                           ; $4b84: $00
    rst $38                                       ; $4b85: $ff
    nop                                           ; $4b86: $00
    rst $38                                       ; $4b87: $ff
    nop                                           ; $4b88: $00
    rst $38                                       ; $4b89: $ff
    nop                                           ; $4b8a: $00
    rst $38                                       ; $4b8b: $ff
    ld a, [hl]                                    ; $4b8c: $7e
    rst $38                                       ; $4b8d: $ff
    ld e, $ff                                     ; $4b8e: $1e $ff
    inc c                                         ; $4b90: $0c
    rst $38                                       ; $4b91: $ff

jr_04b_4b92:
    inc c                                         ; $4b92: $0c
    rst $38                                       ; $4b93: $ff

jr_04b_4b94:
    nop                                           ; $4b94: $00
    rst $38                                       ; $4b95: $ff
    nop                                           ; $4b96: $00
    rst $38                                       ; $4b97: $ff
    nop                                           ; $4b98: $00
    rst $38                                       ; $4b99: $ff
    nop                                           ; $4b9a: $00
    rst $38                                       ; $4b9b: $ff
    ldh a, [$f0]                                  ; $4b9c: $f0 $f0
    ldh a, [$f0]                                  ; $4b9e: $f0 $f0
    jr nc, jr_04b_4b92                            ; $4ba0: $30 $f0

    jr nc, jr_04b_4b94                            ; $4ba2: $30 $f0

    ld h, b                                       ; $4ba4: $60
    ldh [$60], a                                  ; $4ba5: $e0 $60
    ldh [rSVBK], a                                ; $4ba7: $e0 $70
    ldh a, [$38]                                  ; $4ba9: $f0 $38
    ld hl, sp+$70                                 ; $4bab: $f8 $70
    ld a, a                                       ; $4bad: $7f
    jr c, jr_04b_4bef                             ; $4bae: $38 $3f

    inc e                                         ; $4bb0: $1c
    rra                                           ; $4bb1: $1f
    inc e                                         ; $4bb2: $1c
    rra                                           ; $4bb3: $1f
    inc e                                         ; $4bb4: $1c
    rra                                           ; $4bb5: $1f
    jr c, @+$41                                   ; $4bb6: $38 $3f

    jr c, jr_04b_4bf9                             ; $4bb8: $38 $3f

    ld [hl], b                                    ; $4bba: $70
    ld a, a                                       ; $4bbb: $7f
    ld bc, $01ff                                  ; $4bbc: $01 $ff $01
    rst $38                                       ; $4bbf: $ff
    inc bc                                        ; $4bc0: $03
    rst $38                                       ; $4bc1: $ff
    rlca                                          ; $4bc2: $07
    rst $38                                       ; $4bc3: $ff
    rlca                                          ; $4bc4: $07
    rst $38                                       ; $4bc5: $ff
    inc bc                                        ; $4bc6: $03
    rst $38                                       ; $4bc7: $ff
    ld bc, $01ff                                  ; $4bc8: $01 $ff $01
    rst $38                                       ; $4bcb: $ff
    ldh [rIE], a                                  ; $4bcc: $e0 $ff
    rst $38                                       ; $4bce: $ff
    rst $38                                       ; $4bcf: $ff
    rst $38                                       ; $4bd0: $ff
    rst $38                                       ; $4bd1: $ff
    rst $18                                       ; $4bd2: $df
    rst $18                                       ; $4bd3: $df
    cp [hl]                                       ; $4bd4: $be
    cp a                                          ; $4bd5: $bf
    cp $ff                                        ; $4bd6: $fe $ff
    cp $ff                                        ; $4bd8: $fe $ff
    ret nz                                        ; $4bda: $c0

    rst $38                                       ; $4bdb: $ff
    inc a                                         ; $4bdc: $3c
    rst $38                                       ; $4bdd: $ff
    ld a, [hl]                                    ; $4bde: $7e
    rst $38                                       ; $4bdf: $ff
    rst $28                                       ; $4be0: $ef
    rst $38                                       ; $4be1: $ff
    db $d3                                        ; $4be2: $d3
    rst $28                                       ; $4be3: $ef
    db $d3                                        ; $4be4: $d3
    rst $28                                       ; $4be5: $ef
    rst $20                                       ; $4be6: $e7
    rst $38                                       ; $4be7: $ff
    ld a, [hl]                                    ; $4be8: $7e
    rst $38                                       ; $4be9: $ff
    inc a                                         ; $4bea: $3c
    rst $38                                       ; $4beb: $ff
    nop                                           ; $4bec: $00
    rst $38                                       ; $4bed: $ff
    nop                                           ; $4bee: $00

jr_04b_4bef:
    rst $38                                       ; $4bef: $ff
    nop                                           ; $4bf0: $00
    rst $38                                       ; $4bf1: $ff
    nop                                           ; $4bf2: $00
    rst $38                                       ; $4bf3: $ff
    nop                                           ; $4bf4: $00
    rst $38                                       ; $4bf5: $ff
    ld bc, $03ff                                  ; $4bf6: $01 $ff $03

jr_04b_4bf9:
    rst $38                                       ; $4bf9: $ff

jr_04b_4bfa:
    inc bc                                        ; $4bfa: $03
    rst $38                                       ; $4bfb: $ff

jr_04b_4bfc:
    rra                                           ; $4bfc: $1f
    rst $38                                       ; $4bfd: $ff
    ld a, $fe                                     ; $4bfe: $3e $fe
    jr c, jr_04b_4bfa                             ; $4c00: $38 $f8

    jr c, jr_04b_4bfc                             ; $4c02: $38 $f8

    ld a, b                                       ; $4c04: $78
    ld hl, sp-$10                                 ; $4c05: $f8 $f0
    ldh a, [$e0]                                  ; $4c07: $f0 $e0
    ldh [$c0], a                                  ; $4c09: $e0 $c0
    ret nz                                        ; $4c0b: $c0

    ld b, $07                                     ; $4c0c: $06 $07
    ld b, $07                                     ; $4c0e: $06 $07
    ld b, $07                                     ; $4c10: $06 $07
    ld b, $07                                     ; $4c12: $06 $07
    inc bc                                        ; $4c14: $03
    inc bc                                        ; $4c15: $03
    inc bc                                        ; $4c16: $03
    inc bc                                        ; $4c17: $03
    rlca                                          ; $4c18: $07
    rlca                                          ; $4c19: $07
    ld b, $07                                     ; $4c1a: $06 $07
    nop                                           ; $4c1c: $00
    rst $38                                       ; $4c1d: $ff
    ld b, $ff                                     ; $4c1e: $06 $ff
    ld c, $ff                                     ; $4c20: $0e $ff
    ld a, [hl]                                    ; $4c22: $7e
    rst $38                                       ; $4c23: $ff
    ld a, e                                       ; $4c24: $7b
    ei                                            ; $4c25: $fb
    ccf                                           ; $4c26: $3f
    rst $38                                       ; $4c27: $ff
    rra                                           ; $4c28: $1f
    rst $38                                       ; $4c29: $ff
    jr @+$01                                      ; $4c2a: $18 $ff

    nop                                           ; $4c2c: $00
    rst $38                                       ; $4c2d: $ff
    nop                                           ; $4c2e: $00
    rst $38                                       ; $4c2f: $ff
    nop                                           ; $4c30: $00
    rst $38                                       ; $4c31: $ff
    nop                                           ; $4c32: $00
    rst $38                                       ; $4c33: $ff
    nop                                           ; $4c34: $00
    rst $38                                       ; $4c35: $ff

jr_04b_4c36:
    inc bc                                        ; $4c36: $03
    rst $38                                       ; $4c37: $ff

jr_04b_4c38:
    rlca                                          ; $4c38: $07
    rst $38                                       ; $4c39: $ff

jr_04b_4c3a:
    ld b, $fe                                     ; $4c3a: $06 $fe
    jr jr_04b_4c36                                ; $4c3c: $18 $f8

    jr jr_04b_4c38                                ; $4c3e: $18 $f8

    jr c, jr_04b_4c3a                             ; $4c40: $38 $f8

    ld [hl], b                                    ; $4c42: $70
    ldh a, [$60]                                  ; $4c43: $f0 $60
    ldh [$e0], a                                  ; $4c45: $e0 $e0
    ldh [$c0], a                                  ; $4c47: $e0 $c0
    ret nz                                        ; $4c49: $c0

    nop                                           ; $4c4a: $00
    nop                                           ; $4c4b: $00
    ld h, b                                       ; $4c4c: $60
    ld a, a                                       ; $4c4d: $7f
    ld h, b                                       ; $4c4e: $60
    ld a, a                                       ; $4c4f: $7f
    ld [hl], c                                    ; $4c50: $71
    ld a, a                                       ; $4c51: $7f
    ld a, a                                       ; $4c52: $7f
    ld a, a                                       ; $4c53: $7f
    ccf                                           ; $4c54: $3f
    ccf                                           ; $4c55: $3f
    ld e, $1e                                     ; $4c56: $1e $1e
    nop                                           ; $4c58: $00
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00
    nop                                           ; $4c5b: $00
    nop                                           ; $4c5c: $00
    rst $38                                       ; $4c5d: $ff
    nop                                           ; $4c5e: $00
    rst $38                                       ; $4c5f: $ff
    add b                                         ; $4c60: $80
    rst $38                                       ; $4c61: $ff
    ret nz                                        ; $4c62: $c0

    rst $38                                       ; $4c63: $ff
    ldh a, [rIE]                                  ; $4c64: $f0 $ff
    ld hl, sp-$01                                 ; $4c66: $f8 $ff
    ld a, b                                       ; $4c68: $78
    ld a, a                                       ; $4c69: $7f
    inc e                                         ; $4c6a: $1c
    rra                                           ; $4c6b: $1f
    inc bc                                        ; $4c6c: $03
    rst $38                                       ; $4c6d: $ff
    rlca                                          ; $4c6e: $07
    rst $38                                       ; $4c6f: $ff
    rra                                           ; $4c70: $1f
    rst $38                                       ; $4c71: $ff
    ld a, $fe                                     ; $4c72: $3e $fe
    inc a                                         ; $4c74: $3c
    db $fc                                        ; $4c75: $fc
    ld e, $fe                                     ; $4c76: $1e $fe
    ld c, $fe                                     ; $4c78: $0e $fe
    ld c, $fe                                     ; $4c7a: $0e $fe
    ld b, $07                                     ; $4c7c: $06 $07
    ld b, $07                                     ; $4c7e: $06 $07
    rlca                                          ; $4c80: $07
    rlca                                          ; $4c81: $07
    inc bc                                        ; $4c82: $03
    inc bc                                        ; $4c83: $03
    nop                                           ; $4c84: $00
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    nop                                           ; $4c87: $00
    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    nop                                           ; $4c8c: $00
    rst $38                                       ; $4c8d: $ff
    ld h, b                                       ; $4c8e: $60
    rst $38                                       ; $4c8f: $ff
    ldh [rIE], a                                  ; $4c90: $e0 $ff
    ldh a, [rIE]                                  ; $4c92: $f0 $ff
    inc a                                         ; $4c94: $3c
    ccf                                           ; $4c95: $3f
    inc e                                         ; $4c96: $1c
    rra                                           ; $4c97: $1f
    ld c, $0f                                     ; $4c98: $0e $0f
    ld c, $0f                                     ; $4c9a: $0e $0f
    ld b, $fe                                     ; $4c9c: $06 $fe
    ld c, $fe                                     ; $4c9e: $0e $fe
    inc e                                         ; $4ca0: $1c
    db $fc                                        ; $4ca1: $fc

jr_04b_4ca2:
    inc e                                         ; $4ca2: $1c
    db $fc                                        ; $4ca3: $fc

jr_04b_4ca4:
    inc c                                         ; $4ca4: $0c
    db $fc                                        ; $4ca5: $fc
    inc e                                         ; $4ca6: $1c
    db $fc                                        ; $4ca7: $fc
    jr c, jr_04b_4ca2                             ; $4ca8: $38 $f8

    jr c, jr_04b_4ca4                             ; $4caa: $38 $f8

    ld e, $1f                                     ; $4cac: $1e $1f
    ld c, $0f                                     ; $4cae: $0e $0f
    ld c, $0f                                     ; $4cb0: $0e $0f
    ld c, $0f                                     ; $4cb2: $0e $0f
    inc e                                         ; $4cb4: $1c
    rra                                           ; $4cb5: $1f
    inc e                                         ; $4cb6: $1c
    rra                                           ; $4cb7: $1f

jr_04b_4cb8:
    inc e                                         ; $4cb8: $1c
    rra                                           ; $4cb9: $1f
    rra                                           ; $4cba: $1f
    rra                                           ; $4cbb: $1f
    inc e                                         ; $4cbc: $1c
    db $fc                                        ; $4cbd: $fc
    jr c, jr_04b_4cb8                             ; $4cbe: $38 $f8

    ld a, b                                       ; $4cc0: $78
    ld hl, sp+$70                                 ; $4cc1: $f8 $70
    ldh a, [$38]                                  ; $4cc3: $f0 $38
    ld hl, sp+$3c                                 ; $4cc5: $f8 $3c
    db $fc                                        ; $4cc7: $fc
    inc e                                         ; $4cc8: $1c
    db $fc                                        ; $4cc9: $fc
    inc e                                         ; $4cca: $1c
    db $fc                                        ; $4ccb: $fc
    inc c                                         ; $4ccc: $0c
    rrca                                          ; $4ccd: $0f
    inc c                                         ; $4cce: $0c
    rrca                                          ; $4ccf: $0f
    rrca                                          ; $4cd0: $0f
    rrca                                          ; $4cd1: $0f
    rlca                                          ; $4cd2: $07
    rlca                                          ; $4cd3: $07
    ld bc, $0001                                  ; $4cd4: $01 $01 $00
    nop                                           ; $4cd7: $00
    nop                                           ; $4cd8: $00
    nop                                           ; $4cd9: $00
    nop                                           ; $4cda: $00
    nop                                           ; $4cdb: $00
    nop                                           ; $4cdc: $00
    rst $38                                       ; $4cdd: $ff
    nop                                           ; $4cde: $00
    rst $38                                       ; $4cdf: $ff
    nop                                           ; $4ce0: $00
    rst $38                                       ; $4ce1: $ff
    sbc b                                         ; $4ce2: $98
    rst $38                                       ; $4ce3: $ff
    db $fc                                        ; $4ce4: $fc
    rst $38                                       ; $4ce5: $ff
    rst $38                                       ; $4ce6: $ff
    rst $38                                       ; $4ce7: $ff
    rrca                                          ; $4ce8: $0f
    rrca                                          ; $4ce9: $0f
    rlca                                          ; $4cea: $07
    rlca                                          ; $4ceb: $07
    nop                                           ; $4cec: $00
    rst $38                                       ; $4ced: $ff
    nop                                           ; $4cee: $00
    rst $38                                       ; $4cef: $ff
    nop                                           ; $4cf0: $00
    rst $38                                       ; $4cf1: $ff
    nop                                           ; $4cf2: $00
    rst $38                                       ; $4cf3: $ff
    pop bc                                        ; $4cf4: $c1
    rst $38                                       ; $4cf5: $ff
    db $e3                                        ; $4cf6: $e3
    rst $38                                       ; $4cf7: $ff
    rst $38                                       ; $4cf8: $ff
    rst $38                                       ; $4cf9: $ff
    rst $38                                       ; $4cfa: $ff
    rst $38                                       ; $4cfb: $ff
    nop                                           ; $4cfc: $00
    rst $38                                       ; $4cfd: $ff
    nop                                           ; $4cfe: $00
    rst $38                                       ; $4cff: $ff
    nop                                           ; $4d00: $00
    rst $38                                       ; $4d01: $ff
    nop                                           ; $4d02: $00
    rst $38                                       ; $4d03: $ff
    or c                                          ; $4d04: $b1
    rst $38                                       ; $4d05: $ff

jr_04b_4d06:
    ld sp, hl                                     ; $4d06: $f9
    rst $38                                       ; $4d07: $ff

jr_04b_4d08:
    rst $38                                       ; $4d08: $ff
    rst $38                                       ; $4d09: $ff

jr_04b_4d0a:
    rst $18                                       ; $4d0a: $df
    rst $18                                       ; $4d0b: $df
    jr jr_04b_4d06                                ; $4d0c: $18 $f8

    jr jr_04b_4d08                                ; $4d0e: $18 $f8

    jr c, jr_04b_4d0a                             ; $4d10: $38 $f8

    ldh a, [$f0]                                  ; $4d12: $f0 $f0
    ldh [$e0], a                                  ; $4d14: $e0 $e0
    add b                                         ; $4d16: $80
    add b                                         ; $4d17: $80
    add b                                         ; $4d18: $80
    add b                                         ; $4d19: $80
    nop                                           ; $4d1a: $00
    nop                                           ; $4d1b: $00
    rrca                                          ; $4d1c: $0f
    rrca                                          ; $4d1d: $0f
    rlca                                          ; $4d1e: $07
    rlca                                          ; $4d1f: $07
    ld bc, $0001                                  ; $4d20: $01 $01 $00
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    nop                                           ; $4d25: $00
    nop                                           ; $4d26: $00
    nop                                           ; $4d27: $00
    nop                                           ; $4d28: $00
    nop                                           ; $4d29: $00
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    pop hl                                        ; $4d2c: $e1
    rst $38                                       ; $4d2d: $ff
    di                                            ; $4d2e: $f3
    rst $38                                       ; $4d2f: $ff
    rst $38                                       ; $4d30: $ff
    rst $38                                       ; $4d31: $ff
    ccf                                           ; $4d32: $3f
    ccf                                           ; $4d33: $3f
    ld e, $1e                                     ; $4d34: $1e $1e
    nop                                           ; $4d36: $00
    nop                                           ; $4d37: $00
    nop                                           ; $4d38: $00
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    nop                                           ; $4d3b: $00
    add b                                         ; $4d3c: $80
    rst $38                                       ; $4d3d: $ff
    ret nz                                        ; $4d3e: $c0

    rst $38                                       ; $4d3f: $ff
    ret nz                                        ; $4d40: $c0

    rst $38                                       ; $4d41: $ff
    pop bc                                        ; $4d42: $c1
    rst $38                                       ; $4d43: $ff
    rst $20                                       ; $4d44: $e7
    rst $38                                       ; $4d45: $ff
    rst $38                                       ; $4d46: $ff
    rst $38                                       ; $4d47: $ff
    ld a, a                                       ; $4d48: $7f
    ld a, a                                       ; $4d49: $7f
    ccf                                           ; $4d4a: $3f
    ccf                                           ; $4d4b: $3f
    nop                                           ; $4d4c: $00
    rst $38                                       ; $4d4d: $ff
    nop                                           ; $4d4e: $00
    rst $38                                       ; $4d4f: $ff
    nop                                           ; $4d50: $00
    rst $38                                       ; $4d51: $ff
    add b                                         ; $4d52: $80
    rst $38                                       ; $4d53: $ff
    pop bc                                        ; $4d54: $c1
    rst $38                                       ; $4d55: $ff
    di                                            ; $4d56: $f3
    rst $38                                       ; $4d57: $ff
    rst $38                                       ; $4d58: $ff
    rst $38                                       ; $4d59: $ff
    rst $38                                       ; $4d5a: $ff
    rst $38                                       ; $4d5b: $ff
    nop                                           ; $4d5c: $00
    rst $38                                       ; $4d5d: $ff
    nop                                           ; $4d5e: $00
    rst $38                                       ; $4d5f: $ff
    ld h, e                                       ; $4d60: $63
    rst $38                                       ; $4d61: $ff
    rst $30                                       ; $4d62: $f7
    rst $38                                       ; $4d63: $ff
    rst $38                                       ; $4d64: $ff
    rst $38                                       ; $4d65: $ff
    rst $38                                       ; $4d66: $ff
    rst $38                                       ; $4d67: $ff
    db $fc                                        ; $4d68: $fc
    db $fc                                        ; $4d69: $fc
    cp b                                          ; $4d6a: $b8

Call_04b_4d6b:
    ld hl, sp+$00                                 ; $4d6b: $f8 $00
    rst $38                                       ; $4d6d: $ff
    nop                                           ; $4d6e: $00
    rst $38                                       ; $4d6f: $ff
    ld bc, $83ff                                  ; $4d70: $01 $ff $83
    rst $38                                       ; $4d73: $ff
    rst $00                                       ; $4d74: $c7
    rst $38                                       ; $4d75: $ff
    rst $38                                       ; $4d76: $ff
    rst $38                                       ; $4d77: $ff

jr_04b_4d78:
    cp $fe                                        ; $4d78: $fe $fe
    ld a, h                                       ; $4d7a: $7c
    ld a, h                                       ; $4d7b: $7c
    inc e                                         ; $4d7c: $1c
    db $fc                                        ; $4d7d: $fc
    jr c, jr_04b_4d78                             ; $4d7e: $38 $f8

    ld hl, sp-$08                                 ; $4d80: $f8 $f8
    ldh a, [$f0]                                  ; $4d82: $f0 $f0
    ret nz                                        ; $4d84: $c0

    ret nz                                        ; $4d85: $c0

    nop                                           ; $4d86: $00
    nop                                           ; $4d87: $00
    nop                                           ; $4d88: $00
    nop                                           ; $4d89: $00
    nop                                           ; $4d8a: $00
    nop                                           ; $4d8b: $00

    db $08, $08, $14, $1c, $22, $3e, $22, $3e, $29, $37, $31, $2f, $41, $7f, $45, $7f
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $0c, $0c, $1e, $1e, $32, $3e, $e3, $ff, $81, $ff, $00, $ff, $80, $ff, $98, $e7
    db $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $80, $80, $80, $80, $c0, $c0

    ld b, $07                                     ; $4dcc: $06 $07
    ld b, $07                                     ; $4dce: $06 $07
    ld c, $0f                                     ; $4dd0: $0e $0f
    ld e, $1f                                     ; $4dd2: $1e $1f
    inc e                                         ; $4dd4: $1c
    rra                                           ; $4dd5: $1f
    jr jr_04b_4df7                                ; $4dd6: $18 $1f

    jr @+$21                                      ; $4dd8: $18 $1f

    inc e                                         ; $4dda: $1c
    rra                                           ; $4ddb: $1f
    ld c, $f1                                     ; $4ddc: $0e $f1
    ld e, $e1                                     ; $4dde: $1e $e1
    jr @-$17                                      ; $4de0: $18 $e7

    ld a, b                                       ; $4de2: $78
    add a                                         ; $4de3: $87
    ldh a, [rIF]                                  ; $4de4: $f0 $0f

jr_04b_4de6:
    ret nz                                        ; $4de6: $c0

    ccf                                           ; $4de7: $3f

jr_04b_4de8:
    ret nz                                        ; $4de8: $c0

    ccf                                           ; $4de9: $3f
    nop                                           ; $4dea: $00
    rst $38                                       ; $4deb: $ff
    jr c, jr_04b_4de6                             ; $4dec: $38 $f8

    jr c, jr_04b_4de8                             ; $4dee: $38 $f8

    inc e                                         ; $4df0: $1c
    db $fc                                        ; $4df1: $fc

jr_04b_4df2:
    inc c                                         ; $4df2: $0c
    db $fc                                        ; $4df3: $fc
    inc c                                         ; $4df4: $0c
    db $fc                                        ; $4df5: $fc
    inc e                                         ; $4df6: $1c

jr_04b_4df7:
    db $fc                                        ; $4df7: $fc
    jr c, jr_04b_4df2                             ; $4df8: $38 $f8

    ldh a, [$f0]                                  ; $4dfa: $f0 $f0

    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $00, $00
    db $4d, $7f, $41, $7f, $90, $ef, $a0, $df, $02, $fd, $04, $fb, $18, $ff, $90, $ff
    db $00, $00, $00, $00, $80, $80, $40, $c0, $40, $c0, $80, $80, $40, $c0, $40, $c0
    db $01, $01, $01, $01, $01, $01, $03, $03, $02, $03, $02, $03, $03, $03, $06, $07
    db $30, $cf, $a0, $df, $80, $ff, $00, $ff, $04, $ff, $0e, $ff, $0a, $ff, $0e, $ff
    db $60, $e0, $20, $e0, $20, $e0, $60, $e0, $60, $e0, $30, $f0, $30, $f0, $60, $e0

    ld e, $1f                                     ; $4e5c: $1e $1f
    ld c, $0f                                     ; $4e5e: $0e $0f
    rlca                                          ; $4e60: $07
    rlca                                          ; $4e61: $07
    rlca                                          ; $4e62: $07
    rlca                                          ; $4e63: $07
    rlca                                          ; $4e64: $07
    rlca                                          ; $4e65: $07
    ccf                                           ; $4e66: $3f
    ccf                                           ; $4e67: $3f
    ld a, a                                       ; $4e68: $7f
    ld a, a                                       ; $4e69: $7f
    and $ff                                       ; $4e6a: $e6 $ff
    nop                                           ; $4e6c: $00
    rst $38                                       ; $4e6d: $ff
    nop                                           ; $4e6e: $00
    rst $38                                       ; $4e6f: $ff
    nop                                           ; $4e70: $00
    rst $38                                       ; $4e71: $ff
    ld bc, $01ff                                  ; $4e72: $01 $ff $01
    rst $38                                       ; $4e75: $ff
    inc bc                                        ; $4e76: $03
    rst $38                                       ; $4e77: $ff
    rlca                                          ; $4e78: $07
    rst $38                                       ; $4e79: $ff
    ld b, $ff                                     ; $4e7a: $06 $ff
    nop                                           ; $4e7c: $00
    rst $38                                       ; $4e7d: $ff
    nop                                           ; $4e7e: $00
    rst $38                                       ; $4e7f: $ff
    nop                                           ; $4e80: $00
    rst $38                                       ; $4e81: $ff
    add b                                         ; $4e82: $80
    rst $38                                       ; $4e83: $ff
    ret nz                                        ; $4e84: $c0

    rst $38                                       ; $4e85: $ff
    ld hl, sp-$01                                 ; $4e86: $f8 $ff
    db $fc                                        ; $4e88: $fc
    rst $38                                       ; $4e89: $ff
    cp h                                          ; $4e8a: $bc
    rst $38                                       ; $4e8b: $ff
    nop                                           ; $4e8c: $00
    rst $38                                       ; $4e8d: $ff
    nop                                           ; $4e8e: $00
    rst $38                                       ; $4e8f: $ff
    nop                                           ; $4e90: $00
    rst $38                                       ; $4e91: $ff
    nop                                           ; $4e92: $00
    rst $38                                       ; $4e93: $ff
    nop                                           ; $4e94: $00
    rst $38                                       ; $4e95: $ff
    nop                                           ; $4e96: $00
    rst $38                                       ; $4e97: $ff
    nop                                           ; $4e98: $00
    rst $38                                       ; $4e99: $ff
    ld bc, $e0ff                                  ; $4e9a: $01 $ff $e0
    ldh [rSVBK], a                                ; $4e9d: $e0 $70
    ldh a, [$30]                                  ; $4e9f: $f0 $30
    ldh a, [$30]                                  ; $4ea1: $f0 $30
    ldh a, [$30]                                  ; $4ea3: $f0 $30
    ldh a, [rSVBK]                                ; $4ea5: $f0 $70
    ldh a, [$f0]                                  ; $4ea7: $f0 $f0
    ldh a, [$e0]                                  ; $4ea9: $f0 $e0
    db $e0                                        ; $4eab: $e0

    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $07, $fb, $0a, $f7, $00, $ff, $30, $ff, $20, $ff, $80, $ff, $92, $ff, $7f, $7f
    db $20, $e0, $20, $e0, $20, $e0, $40, $c0, $40, $c0, $80, $80, $80, $80, $00, $00
    db $06, $07, $03, $03, $03, $03, $06, $07, $04, $07, $1c, $1f, $30, $3f, $20, $3f
    db $08, $ff, $00, $ff, $00, $ff, $31, $cf, $63, $9f, $43, $be, $03, $ff, $00, $ff
    db $30, $f0, $30, $f0, $60, $e0, $30, $f0, $90, $f0, $98, $f8, $8c, $fc, $64, $9c

    ldh [rIE], a                                  ; $4f0c: $e0 $ff
    ldh [rIE], a                                  ; $4f0e: $e0 $ff
    ld [hl], b                                    ; $4f10: $70
    ld a, a                                       ; $4f11: $7f
    jr nc, jr_04b_4f53                            ; $4f12: $30 $3f

    jr nc, jr_04b_4f55                            ; $4f14: $30 $3f

    ld [hl], b                                    ; $4f16: $70
    ld a, a                                       ; $4f17: $7f
    ldh [rIE], a                                  ; $4f18: $e0 $ff
    ret nz                                        ; $4f1a: $c0

    rst $38                                       ; $4f1b: $ff
    rlca                                          ; $4f1c: $07
    rst $38                                       ; $4f1d: $ff
    inc bc                                        ; $4f1e: $03
    rst $38                                       ; $4f1f: $ff
    ld bc, $01ff                                  ; $4f20: $01 $ff $01
    rst $38                                       ; $4f23: $ff
    ld bc, $03ff                                  ; $4f24: $01 $ff $03
    rst $38                                       ; $4f27: $ff
    inc bc                                        ; $4f28: $03
    rst $38                                       ; $4f29: $ff
    nop                                           ; $4f2a: $00
    rst $38                                       ; $4f2b: $ff
    ld a, $ff                                     ; $4f2c: $3e $ff
    or a                                          ; $4f2e: $b7
    rst $38                                       ; $4f2f: $ff
    add e                                         ; $4f30: $83
    rst $38                                       ; $4f31: $ff
    and c                                         ; $4f32: $a1
    rst $38                                       ; $4f33: $ff
    xor e                                         ; $4f34: $ab
    rst $38                                       ; $4f35: $ff
    rst $28                                       ; $4f36: $ef
    rst $38                                       ; $4f37: $ff
    rst $38                                       ; $4f38: $ff
    rst $38                                       ; $4f39: $ff
    ld a, [hl]                                    ; $4f3a: $7e
    rst $38                                       ; $4f3b: $ff
    nop                                           ; $4f3c: $00
    rst $38                                       ; $4f3d: $ff
    ret nz                                        ; $4f3e: $c0

    rst $38                                       ; $4f3f: $ff
    ldh [rIE], a                                  ; $4f40: $e0 $ff
    ldh [rIE], a                                  ; $4f42: $e0 $ff

jr_04b_4f44:
    pop af                                        ; $4f44: $f1
    rst $38                                       ; $4f45: $ff
    rst $38                                       ; $4f46: $ff
    rst $38                                       ; $4f47: $ff
    rst $38                                       ; $4f48: $ff
    rst $38                                       ; $4f49: $ff
    jr c, jr_04b_4f44                             ; $4f4a: $38 $f8

    ld bc, $00ff                                  ; $4f4c: $01 $ff $00
    rst $38                                       ; $4f4f: $ff
    nop                                           ; $4f50: $00
    rst $38                                       ; $4f51: $ff
    nop                                           ; $4f52: $00

jr_04b_4f53:
    rst $38                                       ; $4f53: $ff
    add b                                         ; $4f54: $80

jr_04b_4f55:
    rst $38                                       ; $4f55: $ff
    add b                                         ; $4f56: $80
    rst $38                                       ; $4f57: $ff
    add b                                         ; $4f58: $80
    rst $38                                       ; $4f59: $ff
    ldh [rIE], a                                  ; $4f5a: $e0 $ff
    ret nz                                        ; $4f5c: $c0

    ret nz                                        ; $4f5d: $c0

    ldh [$e0], a                                  ; $4f5e: $e0 $e0
    ld a, h                                       ; $4f60: $7c
    db $fc                                        ; $4f61: $fc
    ld a, [hl]                                    ; $4f62: $7e
    cp $67                                        ; $4f63: $fe $67
    rst $38                                       ; $4f65: $ff
    inc bc                                        ; $4f66: $03
    rst $38                                       ; $4f67: $ff
    inc bc                                        ; $4f68: $03
    rst $38                                       ; $4f69: $ff
    inc bc                                        ; $4f6a: $03
    rst $38                                       ; $4f6b: $ff

    db $30, $3f, $20, $3f, $30, $3f, $18, $1f, $70, $7f, $c0, $ff, $c1, $ff, $63, $7f
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $18, $ff, $18, $ff, $36, $ff, $bf, $ff
    db $c4, $3c, $8c, $7c, $0c, $fc, $04, $fc, $04, $fc, $0e, $fe, $07, $ff, $c1, $ff

    ret nz                                        ; $4f9c: $c0

    rst $38                                       ; $4f9d: $ff
    ldh [rIE], a                                  ; $4f9e: $e0 $ff
    ld a, b                                       ; $4fa0: $78
    ld a, a                                       ; $4fa1: $7f
    inc a                                         ; $4fa2: $3c
    ccf                                           ; $4fa3: $3f
    inc e                                         ; $4fa4: $1c
    rra                                           ; $4fa5: $1f
    inc e                                         ; $4fa6: $1c
    rra                                           ; $4fa7: $1f
    jr c, jr_04b_4fe9                             ; $4fa8: $38 $3f

    jr c, jr_04b_4feb                             ; $4faa: $38 $3f

    jr @+$01                                      ; $4fac: $18 $ff

    jr c, @+$01                                   ; $4fae: $38 $ff

    ld a, h                                       ; $4fb0: $7c
    rst $38                                       ; $4fb1: $ff
    cp $df                                        ; $4fb2: $fe $df
    and $df                                       ; $4fb4: $e6 $df
    add $ff                                       ; $4fb6: $c6 $ff
    ld a, h                                       ; $4fb8: $7c
    rst $38                                       ; $4fb9: $ff
    jr c, @+$01                                   ; $4fba: $38 $ff

    nop                                           ; $4fbc: $00
    rst $38                                       ; $4fbd: $ff
    rlca                                          ; $4fbe: $07
    ld hl, sp+$0f                                 ; $4fbf: $f8 $0f
    ldh a, [$0c]                                  ; $4fc1: $f0 $0c
    di                                            ; $4fc3: $f3
    inc a                                         ; $4fc4: $3c
    jp $8778                                      ; $4fc5: $c3 $78 $87


    ld h, b                                       ; $4fc8: $60
    sbc a                                         ; $4fc9: $9f
    ld h, b                                       ; $4fca: $60
    sbc a                                         ; $4fcb: $9f
    inc e                                         ; $4fcc: $1c
    db $fc                                        ; $4fcd: $fc
    inc c                                         ; $4fce: $0c
    db $fc                                        ; $4fcf: $fc
    ld c, $fe                                     ; $4fd0: $0e $fe
    rlca                                          ; $4fd2: $07
    rst $38                                       ; $4fd3: $ff
    inc bc                                        ; $4fd4: $03
    rst $38                                       ; $4fd5: $ff
    inc bc                                        ; $4fd6: $03
    rst $38                                       ; $4fd7: $ff
    rlca                                          ; $4fd8: $07
    rst $38                                       ; $4fd9: $ff
    ld b, $ff                                     ; $4fda: $06 $ff
    ld [hl], b                                    ; $4fdc: $70
    ld a, a                                       ; $4fdd: $7f
    ld [hl], b                                    ; $4fde: $70
    ld a, a                                       ; $4fdf: $7f
    ldh [rIE], a                                  ; $4fe0: $e0 $ff
    ret nz                                        ; $4fe2: $c0

    rst $38                                       ; $4fe3: $ff
    ret nz                                        ; $4fe4: $c0

    rst $38                                       ; $4fe5: $ff
    ret nz                                        ; $4fe6: $c0

    rst $38                                       ; $4fe7: $ff
    nop                                           ; $4fe8: $00

jr_04b_4fe9:
    rst $38                                       ; $4fe9: $ff
    nop                                           ; $4fea: $00

jr_04b_4feb:
    rst $38                                       ; $4feb: $ff
    inc bc                                        ; $4fec: $03
    rst $38                                       ; $4fed: $ff
    ld bc, $00ff                                  ; $4fee: $01 $ff $00
    rst $38                                       ; $4ff1: $ff
    nop                                           ; $4ff2: $00
    rst $38                                       ; $4ff3: $ff
    nop                                           ; $4ff4: $00
    rst $38                                       ; $4ff5: $ff
    ld bc, $03ff                                  ; $4ff6: $01 $ff $03
    rst $38                                       ; $4ff9: $ff
    inc bc                                        ; $4ffa: $03
    rst $38                                       ; $4ffb: $ff
    add b                                         ; $4ffc: $80
    add b                                         ; $4ffd: $80
    ret nz                                        ; $4ffe: $c0

    ret nz                                        ; $4fff: $c0

    ret nz                                        ; $5000: $c0

    ret nz                                        ; $5001: $c0

    ret nz                                        ; $5002: $c0

    ret nz                                        ; $5003: $c0

    ret nz                                        ; $5004: $c0

    ret nz                                        ; $5005: $c0

    ret nz                                        ; $5006: $c0

    ret nz                                        ; $5007: $c0

    add b                                         ; $5008: $80
    add b                                         ; $5009: $80
    add b                                         ; $500a: $80
    add b                                         ; $500b: $80

    db $23, $3e, $63, $7f, $40, $7f, $60, $7f, $60, $7f, $c0, $ff, $c0, $ff, $c0, $ff
    db $81, $ff, $86, $f9, $0c, $f3, $08, $f7, $01, $ff, $c3, $ff, $a3, $be, $e3, $ff
    db $21, $3f, $c3, $ff, $c6, $fe, $07, $ff, $01, $ff, $81, $ff, $83, $ff, $86, $fe

    nop                                           ; $503c: $00
    nop                                           ; $503d: $00
    ld bc, $0101                                  ; $503e: $01 $01 $01
    ld bc, $0101                                  ; $5041: $01 $01 $01
    ld bc, $0101                                  ; $5044: $01 $01 $01
    ld bc, $0101                                  ; $5047: $01 $01 $01
    nop                                           ; $504a: $00
    nop                                           ; $504b: $00
    ldh a, [rIE]                                  ; $504c: $f0 $ff
    ldh a, [rIE]                                  ; $504e: $f0 $ff
    ret nz                                        ; $5050: $c0

    rst $38                                       ; $5051: $ff
    add b                                         ; $5052: $80
    rst $38                                       ; $5053: $ff
    add b                                         ; $5054: $80
    rst $38                                       ; $5055: $ff
    add b                                         ; $5056: $80
    rst $38                                       ; $5057: $ff
    ret nz                                        ; $5058: $c0

    rst $38                                       ; $5059: $ff
    ret nz                                        ; $505a: $c0

    rst $38                                       ; $505b: $ff
    nop                                           ; $505c: $00
    rst $38                                       ; $505d: $ff
    ld sp, $3fff                                  ; $505e: $31 $ff $3f
    rst $38                                       ; $5061: $ff
    ld a, $ff                                     ; $5062: $3e $ff
    ld [hl], l                                    ; $5064: $75
    rst $30                                       ; $5065: $f7
    rst $30                                       ; $5066: $f7
    rst $30                                       ; $5067: $f7
    rst $38                                       ; $5068: $ff
    rst $38                                       ; $5069: $ff
    inc a                                         ; $506a: $3c
    rst $38                                       ; $506b: $ff
    nop                                           ; $506c: $00
    rst $38                                       ; $506d: $ff
    add b                                         ; $506e: $80
    rst $38                                       ; $506f: $ff
    add b                                         ; $5070: $80
    rst $38                                       ; $5071: $ff
    ret nz                                        ; $5072: $c0

    rst $38                                       ; $5073: $ff
    ldh [rIE], a                                  ; $5074: $e0 $ff
    ldh [rIE], a                                  ; $5076: $e0 $ff
    add b                                         ; $5078: $80
    rst $38                                       ; $5079: $ff
    nop                                           ; $507a: $00
    rst $38                                       ; $507b: $ff
    inc bc                                        ; $507c: $03
    rst $38                                       ; $507d: $ff
    ld bc, $00ff                                  ; $507e: $01 $ff $00
    rst $38                                       ; $5081: $ff
    nop                                           ; $5082: $00
    rst $38                                       ; $5083: $ff
    nop                                           ; $5084: $00
    rst $38                                       ; $5085: $ff
    ld bc, $07ff                                  ; $5086: $01 $ff $07
    rst $38                                       ; $5089: $ff
    rrca                                          ; $508a: $0f
    rst $38                                       ; $508b: $ff
    add b                                         ; $508c: $80
    add b                                         ; $508d: $80
    ret nz                                        ; $508e: $c0

    ret nz                                        ; $508f: $c0

    ret nz                                        ; $5090: $c0

    ret nz                                        ; $5091: $c0

    ret nz                                        ; $5092: $c0

    ret nz                                        ; $5093: $c0

    ret nz                                        ; $5094: $c0

    ret nz                                        ; $5095: $c0

    ret nz                                        ; $5096: $c0

    ret nz                                        ; $5097: $c0

    add b                                         ; $5098: $80
    add b                                         ; $5099: $80
    nop                                           ; $509a: $00
    nop                                           ; $509b: $00

    db $70, $7f, $18, $1f, $1c, $1f, $0c, $0f, $0d, $0f, $07, $07, $00, $00, $00, $00
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $80, $ff, $80, $ff, $f6, $ff, $7f, $7f
    db $04, $fc, $0c, $fc, $18, $f8, $08, $f8, $18, $f8, $70, $f0, $c0, $c0, $80, $80

    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    nop                                           ; $50ce: $00
    nop                                           ; $50cf: $00
    nop                                           ; $50d0: $00
    nop                                           ; $50d1: $00
    ld bc, $0101                                  ; $50d2: $01 $01 $01
    ld bc, $0101                                  ; $50d5: $01 $01 $01
    ld bc, $0101                                  ; $50d8: $01 $01 $01
    ld bc, $ffe0                                  ; $50db: $01 $e0 $ff
    ldh [rIE], a                                  ; $50de: $e0 $ff
    ldh [rIE], a                                  ; $50e0: $e0 $ff
    ret nz                                        ; $50e2: $c0

    rst $38                                       ; $50e3: $ff
    add b                                         ; $50e4: $80
    rst $38                                       ; $50e5: $ff
    add b                                         ; $50e6: $80
    rst $38                                       ; $50e7: $ff
    call z, $fcff                                 ; $50e8: $cc $ff $fc
    rst $38                                       ; $50eb: $ff
    inc c                                         ; $50ec: $0c
    db $fc                                        ; $50ed: $fc
    inc c                                         ; $50ee: $0c
    db $fc                                        ; $50ef: $fc
    inc c                                         ; $50f0: $0c
    db $fc                                        ; $50f1: $fc
    inc e                                         ; $50f2: $1c
    db $fc                                        ; $50f3: $fc
    ld a, h                                       ; $50f4: $7c
    db $fc                                        ; $50f5: $fc
    ld hl, sp-$08                                 ; $50f6: $f8 $f8
    ldh [$e0], a                                  ; $50f8: $e0 $e0
    ldh [$e0], a                                  ; $50fa: $e0 $e0
    cp $ff                                        ; $50fc: $fe $ff
    rra                                           ; $50fe: $1f
    rra                                           ; $50ff: $1f
    rrca                                          ; $5100: $0f
    rrca                                          ; $5101: $0f
    rlca                                          ; $5102: $07
    rlca                                          ; $5103: $07
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    nop                                           ; $510a: $00
    nop                                           ; $510b: $00
    nop                                           ; $510c: $00
    rst $38                                       ; $510d: $ff
    add b                                         ; $510e: $80
    rst $38                                       ; $510f: $ff
    ret nz                                        ; $5110: $c0

    rst $38                                       ; $5111: $ff
    ldh [rIE], a                                  ; $5112: $e0 $ff
    ldh [rIE], a                                  ; $5114: $e0 $ff
    ret nz                                        ; $5116: $c0

    rst $38                                       ; $5117: $ff
    ret nz                                        ; $5118: $c0

    rst $38                                       ; $5119: $ff
    and $ff                                       ; $511a: $e6 $ff
    nop                                           ; $511c: $00
    rst $38                                       ; $511d: $ff
    nop                                           ; $511e: $00
    rst $38                                       ; $511f: $ff
    ld bc, $03ff                                  ; $5120: $01 $ff $03
    rst $38                                       ; $5123: $ff
    rlca                                          ; $5124: $07
    rst $38                                       ; $5125: $ff
    rlca                                          ; $5126: $07
    rst $38                                       ; $5127: $ff
    inc bc                                        ; $5128: $03
    rst $38                                       ; $5129: $ff
    ld bc, $e0ff                                  ; $512a: $01 $ff $e0
    ldh [$e0], a                                  ; $512d: $e0 $e0
    ldh [$c0], a                                  ; $512f: $e0 $c0
    ret nz                                        ; $5131: $c0

    ret nz                                        ; $5132: $c0

    ret nz                                        ; $5133: $c0

    add b                                         ; $5134: $80
    add b                                         ; $5135: $80
    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    add b                                         ; $5138: $80
    add b                                         ; $5139: $80
    add b                                         ; $513a: $80
    add b                                         ; $513b: $80
    cp $ff                                        ; $513c: $fe $ff
    ld a, [hl]                                    ; $513e: $7e
    ld a, a                                       ; $513f: $7f
    ccf                                           ; $5140: $3f
    ccf                                           ; $5141: $3f
    rlca                                          ; $5142: $07
    rlca                                          ; $5143: $07
    inc bc                                        ; $5144: $03
    inc bc                                        ; $5145: $03
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    nop                                           ; $514a: $00
    nop                                           ; $514b: $00
    nop                                           ; $514c: $00
    rst $38                                       ; $514d: $ff
    jr nc, @+$01                                  ; $514e: $30 $ff

    ld hl, sp-$01                                 ; $5150: $f8 $ff
    ld hl, sp-$01                                 ; $5152: $f8 $ff
    ld sp, hl                                     ; $5154: $f9
    rst $38                                       ; $5155: $ff
    rra                                           ; $5156: $1f
    rra                                           ; $5157: $1f
    rra                                           ; $5158: $1f
    rra                                           ; $5159: $1f
    rrca                                          ; $515a: $0f
    rrca                                          ; $515b: $0f
    nop                                           ; $515c: $00
    rst $38                                       ; $515d: $ff
    nop                                           ; $515e: $00
    rst $38                                       ; $515f: $ff
    nop                                           ; $5160: $00
    rst $38                                       ; $5161: $ff
    nop                                           ; $5162: $00
    rst $38                                       ; $5163: $ff
    add c                                         ; $5164: $81
    rst $38                                       ; $5165: $ff
    rst $00                                       ; $5166: $c7
    rst $38                                       ; $5167: $ff
    rst $38                                       ; $5168: $ff
    rst $38                                       ; $5169: $ff
    rst $38                                       ; $516a: $ff
    rst $38                                       ; $516b: $ff
    nop                                           ; $516c: $00
    rst $38                                       ; $516d: $ff
    nop                                           ; $516e: $00
    rst $38                                       ; $516f: $ff
    nop                                           ; $5170: $00
    rst $38                                       ; $5171: $ff
    adc $ff                                       ; $5172: $ce $ff
    rst $38                                       ; $5174: $ff
    rst $38                                       ; $5175: $ff
    rst $38                                       ; $5176: $ff
    rst $38                                       ; $5177: $ff
    ei                                            ; $5178: $fb
    ei                                            ; $5179: $fb
    ld h, c                                       ; $517a: $61
    pop hl                                        ; $517b: $e1
    ld bc, $03ff                                  ; $517c: $01 $ff $03
    rst $38                                       ; $517f: $ff

jr_04b_5180:
    rrca                                          ; $5180: $0f
    rst $38                                       ; $5181: $ff
    rra                                           ; $5182: $1f
    rst $38                                       ; $5183: $ff
    inc e                                         ; $5184: $1c
    db $fc                                        ; $5185: $fc
    jr c, jr_04b_5180                             ; $5186: $38 $f8

    ld hl, sp-$08                                 ; $5188: $f8 $f8
    ldh a, [$f0]                                  ; $518a: $f0 $f0
    add b                                         ; $518c: $80
    add b                                         ; $518d: $80
    add b                                         ; $518e: $80
    add b                                         ; $518f: $80
    add b                                         ; $5190: $80
    add b                                         ; $5191: $80
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    nop                                           ; $5194: $00
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    nop                                           ; $519a: $00
    nop                                           ; $519b: $00

    db $00, $9f, $00, $a6, $a7, $a8, $b1, $b2, $b3, $a0, $a1, $a2, $a9, $aa, $ab, $b4
    db $b5, $b6, $bd, $be, $bf, $c7, $c8, $c9, $d0, $d1, $d2

    nop                                           ; $51b7: $00
    ld bc, $0302                                  ; $51b8: $01 $02 $03
    nop                                           ; $51bb: $00
    nop                                           ; $51bc: $00
    rrca                                          ; $51bd: $0f
    db $10                                        ; $51be: $10
    ld de, $1b00                                  ; $51bf: $11 $00 $1b
    inc e                                         ; $51c2: $1c
    dec e                                         ; $51c3: $1d
    ld e, $1f                                     ; $51c4: $1e $1f
    dec h                                         ; $51c6: $25
    ld b, $06                                     ; $51c7: $06 $06
    ld h, $27                                     ; $51c9: $26 $27
    ld l, $2f                                     ; $51cb: $2e $2f
    jr nc, jr_04b_5200                            ; $51cd: $30 $31

    ld [hl-], a                                   ; $51cf: $32
    scf                                           ; $51d0: $37
    ld b, $38                                     ; $51d1: $06 $38
    add hl, sp                                    ; $51d3: $39
    ld a, [hl-]                                   ; $51d4: $3a
    ld a, $3f                                     ; $51d5: $3e $3f
    ld b, b                                       ; $51d7: $40
    ld b, c                                       ; $51d8: $41
    ld b, d                                       ; $51d9: $42
    nop                                           ; $51da: $00
    ld b, a                                       ; $51db: $47
    ld c, b                                       ; $51dc: $48
    ld c, c                                       ; $51dd: $49
    ld c, d                                       ; $51de: $4a
    nop                                           ; $51df: $00
    ld d, d                                       ; $51e0: $52
    ld d, e                                       ; $51e1: $53
    ld d, h                                       ; $51e2: $54
    ld d, l                                       ; $51e3: $55
    ld d, [hl]                                    ; $51e4: $56
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    ld e, h                                       ; $51e7: $5c
    ld e, l                                       ; $51e8: $5d
    ld b, $5e                                     ; $51e9: $06 $5e
    ld e, a                                       ; $51eb: $5f
    nop                                           ; $51ec: $00
    nop                                           ; $51ed: $00
    ld l, b                                       ; $51ee: $68
    ld b, $69                                     ; $51ef: $06 $69
    ld e, l                                       ; $51f1: $5d
    ld l, d                                       ; $51f2: $6a
    nop                                           ; $51f3: $00
    ld [hl], c                                    ; $51f4: $71
    ld [hl], d                                    ; $51f5: $72
    ld [hl], e                                    ; $51f6: $73
    ld [hl], h                                    ; $51f7: $74
    ld [hl], l                                    ; $51f8: $75
    halt                                          ; $51f9: $76
    ld [hl], a                                    ; $51fa: $77
    ld a, h                                       ; $51fb: $7c
    ld a, l                                       ; $51fc: $7d
    ld a, [hl]                                    ; $51fd: $7e
    ld e, l                                       ; $51fe: $5d
    ld a, a                                       ; $51ff: $7f

jr_04b_5200:
    ld b, $80                                     ; $5200: $06 $80
    add a                                         ; $5202: $87
    ld b, $88                                     ; $5203: $06 $88
    ld b, $5e                                     ; $5205: $06 $5e
    adc c                                         ; $5207: $89
    adc d                                         ; $5208: $8a
    adc [hl]                                      ; $5209: $8e
    adc a                                         ; $520a: $8f
    ld b, $06                                     ; $520b: $06 $06
    ld b, $90                                     ; $520d: $06 $90
    nop                                           ; $520f: $00
    nop                                           ; $5210: $00
    sub e                                         ; $5211: $93
    sub h                                         ; $5212: $94
    sub l                                         ; $5213: $95
    sub [hl]                                      ; $5214: $96
    sub a                                         ; $5215: $97
    nop                                           ; $5216: $00
    nop                                           ; $5217: $00
    and e                                         ; $5218: $a3
    ld b, $06                                     ; $5219: $06 $06
    ld b, $06                                     ; $521b: $06 $06
    and h                                         ; $521d: $a4
    and l                                         ; $521e: $a5
    nop                                           ; $521f: $00
    nop                                           ; $5220: $00
    xor h                                         ; $5221: $ac
    ld b, $ad                                     ; $5222: $06 $ad
    xor [hl]                                      ; $5224: $ae
    ld b, $af                                     ; $5225: $06 $af
    or b                                          ; $5227: $b0
    nop                                           ; $5228: $00
    nop                                           ; $5229: $00
    or a                                          ; $522a: $b7
    ld b, $b8                                     ; $522b: $06 $b8
    cp c                                          ; $522d: $b9
    cp d                                          ; $522e: $ba
    cp e                                          ; $522f: $bb
    cp h                                          ; $5230: $bc
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00

Call_04b_5233:
    ret nz                                        ; $5233: $c0

    ld b, $c1                                     ; $5234: $06 $c1
    jp nz, $c4c3                                  ; $5236: $c2 $c3 $c4

    push bc                                       ; $5239: $c5
    add $ca                                       ; $523a: $c6 $ca
    rlc [hl]                                      ; $523c: $cb $06
    call z, Call_000_06cd                         ; $523e: $cc $cd $06
    ld b, $ce                                     ; $5241: $06 $ce
    rst $08                                       ; $5243: $cf
    db $d3                                        ; $5244: $d3
    call nc, $0606                                ; $5245: $d4 $06 $06
    ld b, $c1                                     ; $5248: $06 $c1
    ld b, $d5                                     ; $524a: $06 $d5
    nop                                           ; $524c: $00
    nop                                           ; $524d: $00
    sub $d7                                       ; $524e: $d6 $d7
    ld b, $06                                     ; $5250: $06 $06
    ld b, $d8                                     ; $5252: $06 $d8
    reti                                          ; $5254: $d9


    nop                                           ; $5255: $00
    nop                                           ; $5256: $00
    nop                                           ; $5257: $00
    jp c, $dcdb                                   ; $5258: $da $db $dc

    db $dd                                        ; $525b: $dd
    sbc $df                                       ; $525c: $de $df
    nop                                           ; $525e: $00
    ld d, a                                       ; $525f: $57
    ld e, b                                       ; $5260: $58
    ld b, $59                                     ; $5261: $06 $59
    ld e, d                                       ; $5263: $5a
    ld b, $06                                     ; $5264: $06 $06
    ld e, e                                       ; $5266: $5b
    nop                                           ; $5267: $00
    ld h, b                                       ; $5268: $60
    ld b, $61                                     ; $5269: $06 $61
    ld h, d                                       ; $526b: $62
    ld h, e                                       ; $526c: $63
    ld h, h                                       ; $526d: $64
    ld h, l                                       ; $526e: $65
    ld h, [hl]                                    ; $526f: $66
    ld h, a                                       ; $5270: $67
    ld l, e                                       ; $5271: $6b
    ld b, $6c                                     ; $5272: $06 $6c
    ld b, $6d                                     ; $5274: $06 $6d
    ld l, [hl]                                    ; $5276: $6e
    ld l, a                                       ; $5277: $6f
    ld b, $70                                     ; $5278: $06 $70
    ld a, b                                       ; $527a: $78
    ld b, $06                                     ; $527b: $06 $06
    ld b, $79                                     ; $527d: $06 $79
    ld a, d                                       ; $527f: $7a
    ld b, $06                                     ; $5280: $06 $06
    ld a, e                                       ; $5282: $7b
    add c                                         ; $5283: $81
    ld b, $82                                     ; $5284: $06 $82
    add e                                         ; $5286: $83
    ld b, $84                                     ; $5287: $06 $84
    ld b, $85                                     ; $5289: $06 $85
    add [hl]                                      ; $528b: $86
    adc e                                         ; $528c: $8b
    adc h                                         ; $528d: $8c
    ld b, $06                                     ; $528e: $06 $06
    ld b, $06                                     ; $5290: $06 $06
    ld b, $8d                                     ; $5292: $06 $8d
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    sub c                                         ; $5296: $91
    ld b, $06                                     ; $5297: $06 $06
    ld b, $06                                     ; $5299: $06 $06
    ld b, $92                                     ; $529b: $06 $92
    nop                                           ; $529d: $00
    nop                                           ; $529e: $00
    sbc b                                         ; $529f: $98
    sbc c                                         ; $52a0: $99
    sbc d                                         ; $52a1: $9a
    sbc e                                         ; $52a2: $9b
    sbc h                                         ; $52a3: $9c
    sbc l                                         ; $52a4: $9d
    sbc [hl]                                      ; $52a5: $9e
    nop                                           ; $52a6: $00
    inc b                                         ; $52a7: $04
    dec b                                         ; $52a8: $05
    ld b, $07                                     ; $52a9: $06 $07
    ld [$0a09], sp                                ; $52ab: $08 $09 $0a
    dec bc                                        ; $52ae: $0b
    inc c                                         ; $52af: $0c
    dec c                                         ; $52b0: $0d
    ld c, $12                                     ; $52b1: $0e $12
    inc de                                        ; $52b3: $13
    inc d                                         ; $52b4: $14
    dec d                                         ; $52b5: $15
    ld b, $16                                     ; $52b6: $06 $16
    rla                                           ; $52b8: $17
    jr jr_04b_52d4                                ; $52b9: $18 $19

    ld b, $1a                                     ; $52bb: $06 $1a
    jr nz, jr_04b_52e0                            ; $52bd: $20 $21

    ld b, $06                                     ; $52bf: $06 $06
    ld b, $22                                     ; $52c1: $06 $22
    ld b, $23                                     ; $52c3: $06 $23
    ld b, $06                                     ; $52c5: $06 $06
    inc h                                         ; $52c7: $24
    jr z, jr_04b_52f3                             ; $52c8: $28 $29

Jump_04b_52ca:
    ld b, $2a                                     ; $52ca: $06 $2a
    dec hl                                        ; $52cc: $2b
    ld b, $06                                     ; $52cd: $06 $06
    rlca                                          ; $52cf: $07
    ld b, $2c                                     ; $52d0: $06 $2c
    dec l                                         ; $52d2: $2d
    inc sp                                        ; $52d3: $33

jr_04b_52d4:
    ld b, $06                                     ; $52d4: $06 $06
    inc [hl]                                      ; $52d6: $34
    dec [hl]                                      ; $52d7: $35
    ld b, $14                                     ; $52d8: $06 $14
    dec d                                         ; $52da: $15
    ld b, $36                                     ; $52db: $06 $36
    nop                                           ; $52dd: $00
    dec sp                                        ; $52de: $3b
    inc a                                         ; $52df: $3c

jr_04b_52e0:
    ld b, $06                                     ; $52e0: $06 $06
    ld b, $06                                     ; $52e2: $06 $06
    ld b, $06                                     ; $52e4: $06 $06
    ld b, $3d                                     ; $52e6: $06 $3d
    nop                                           ; $52e8: $00
    nop                                           ; $52e9: $00
    ld b, e                                       ; $52ea: $43
    ld b, h                                       ; $52eb: $44
    ld b, $06                                     ; $52ec: $06 $06
    ld b, $06                                     ; $52ee: $06 $06
    ld b, $45                                     ; $52f0: $06 $45
    ld b, [hl]                                    ; $52f2: $46

jr_04b_52f3:
    nop                                           ; $52f3: $00
    nop                                           ; $52f4: $00
    nop                                           ; $52f5: $00
    ld c, e                                       ; $52f6: $4b
    ld c, h                                       ; $52f7: $4c
    ld c, l                                       ; $52f8: $4d
    ld c, [hl]                                    ; $52f9: $4e
    ld c, a                                       ; $52fa: $4f
    ld d, b                                       ; $52fb: $50
    ld d, c                                       ; $52fc: $51
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    inc b                                         ; $52ff: $04
    dec b                                         ; $5300: $05
    ld b, $07                                     ; $5301: $06 $07
    ld [$0a09], sp                                ; $5303: $08 $09 $0a
    dec bc                                        ; $5306: $0b
    inc c                                         ; $5307: $0c
    dec c                                         ; $5308: $0d
    ld c, $12                                     ; $5309: $0e $12
    inc de                                        ; $530b: $13
    inc d                                         ; $530c: $14
    dec d                                         ; $530d: $15
    ld b, $16                                     ; $530e: $06 $16
    rla                                           ; $5310: $17
    jr jr_04b_532c                                ; $5311: $18 $19

    ld b, $1a                                     ; $5313: $06 $1a
    jr nz, jr_04b_5338                            ; $5315: $20 $21

    ld b, $06                                     ; $5317: $06 $06
    ld b, $22                                     ; $5319: $06 $22
    ld b, $23                                     ; $531b: $06 $23
    ld b, $06                                     ; $531d: $06 $06
    inc h                                         ; $531f: $24
    jr z, jr_04b_534b                             ; $5320: $28 $29

    ld b, $2a                                     ; $5322: $06 $2a
    dec hl                                        ; $5324: $2b
    ld b, $06                                     ; $5325: $06 $06
    rlca                                          ; $5327: $07
    ld b, $2c                                     ; $5328: $06 $2c
    dec l                                         ; $532a: $2d
    inc sp                                        ; $532b: $33

jr_04b_532c:
    ld b, $06                                     ; $532c: $06 $06
    inc [hl]                                      ; $532e: $34
    dec [hl]                                      ; $532f: $35
    ld b, $14                                     ; $5330: $06 $14
    dec d                                         ; $5332: $15
    ld b, $36                                     ; $5333: $06 $36
    nop                                           ; $5335: $00
    dec sp                                        ; $5336: $3b
    inc a                                         ; $5337: $3c

jr_04b_5338:
    ld b, $06                                     ; $5338: $06 $06
    ld b, $06                                     ; $533a: $06 $06
    ld b, $06                                     ; $533c: $06 $06
    ld b, $3d                                     ; $533e: $06 $3d
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    ld b, e                                       ; $5342: $43
    ld b, h                                       ; $5343: $44
    ld b, $06                                     ; $5344: $06 $06
    ld b, $06                                     ; $5346: $06 $06
    ld b, $45                                     ; $5348: $06 $45
    ld b, [hl]                                    ; $534a: $46

jr_04b_534b:
    nop                                           ; $534b: $00
    nop                                           ; $534c: $00
    nop                                           ; $534d: $00
    ld c, e                                       ; $534e: $4b
    ld c, h                                       ; $534f: $4c
    ld c, l                                       ; $5350: $4d
    ld c, [hl]                                    ; $5351: $4e
    ld c, a                                       ; $5352: $4f
    ld d, b                                       ; $5353: $50
    ld d, c                                       ; $5354: $51
    nop                                           ; $5355: $00
    nop                                           ; $5356: $00
    nop                                           ; $5357: $00
    nop                                           ; $5358: $00
    nop                                           ; $5359: $00
    nop                                           ; $535a: $00
    nop                                           ; $535b: $00
    nop                                           ; $535c: $00
    nop                                           ; $535d: $00
    nop                                           ; $535e: $00
    nop                                           ; $535f: $00

    db $e9, $00, $ff, $ff, $eb, $ea, $55, $fc, $ee, $8f, $00, $5f, $bf, $00, $3f, $00
    db $7f, $00, $ff, $fc, $e0, $7e, $fe, $fa, $e0, $7e, $80, $3f, $80, $1e, $e0, $b5
    db $ff, $e0, $fb, $e0, $b7, $e0, $ff, $e0, $be, $ff, $e0, $7c, $e3, $b8, $e2, $d0
    db $ed, $a0, $ff, $ea, $41, $f7, $82, $ab, $05, $df, $3f, $ff, $cf, $7f, $84, $ff
    db $30, $ff, $7b, $cf, $1f, $ff, $b4, $ff, $7b, $ff, $cb, $e0, $ff, $ff, $80, $f4
    db $fd, $18, $8c, $e0, $fe, $00, $fd, $00, $fb, $00, $7f, $f7, $00, $ef, $00, $df
    db $00, $bf, $7c, $e2, $ff, $fe, $00, $fc, $03, $f8, $02, $f0, $0f, $ff, $e0, $0a
    db $c1, $3f, $82, $2b, $07, $ff, $ff, $0a, $af, $17, $7f, $2a, $bf, $5d, $ff, $ff
    db $bf, $e0, $70, $c7, $f0, $8a, $c0, $1d, $27, $b0, $4f, $7b, $80, $ff, $80, $fa
    db $07, $10, $e4, $fe, $e1, $fd, $0f, $84, $e0, $0b, $f0, $05, $d8, $02, $fc, $ab
    db $01, $76, $ff, $c0, $dd, $fb, $c0, $aa, $fc, $e3, $80, $ff, $aa, $c0, $ff, $a0
    db $ea, $f0, $ff, $aa, $fb, $ff, $77, $fc, $e0, $dc, $ff, $a8, $7f, $73, $4f, $3f
    db $22, $9f, $0d, $00, $ff, $f7, $f6, $18, $a2, $c2, $fc, $fe, $e3, $08, $f0, $01
    db $fc, $03, $78, $85, $30, $ff, $cf, $10, $aa, $11, $ef, $12, $ab, $17, $ef, $ef
    db $1a, $af, $1f, $fc, $e2, $8a, $ff, $37, $ef, $ff, $2a, $ff, $dd, $78, $e6, $fc
    db $cf, $fb, $f4, $80, $ff, $80, $da, $e0, $8c, $c0, $0c, $00, $f5, $00, $ff, $0a
    db $f0, $05, $f8, $02, $fc, $e1, $16, $ff, $c0, $3f, $80, $5d, $00, $ff, $07, $7f
    db $5f, $1f, $ff, $1d, $ff, $7f, $10, $e0, $ff, $fc, $e8, $ff, $fe, $ff, $a8, $fe
    db $70, $ff, $a0, $fa, $ff, $c0, $fd, $80, $eb, $03, $f7, $02, $af, $f0, $00, $ff
    db $80, $ff, $80, $c9, $7a, $c1, $bf, $00, $5f, $80, $57, $2e, $c0, $75, $90, $a0
    db $d7, $90, $a0, $bf, $fc, $e4, $f7, $80, $ea, $80, $74, $c2, $0a, $bf, $37, $7e
    db $ff, $2b, $fc, $df, $f8, $af, $f0, $7e, $e1, $cf, $bc, $c2, $c8, $95, $00, $df
    db $ee, $ed, $07, $00, $a1, $1f, $20, $a0, $0e, $c5, $7e, $c5, $f8, $eb, $27, $02
    db $a0, $f5, $ff, $08, $f3, $0c, $f1, $0e, $e1, $0a, $c1, $ff, $3e, $81, $2a, $01
    db $fe, $0f, $a0, $1f, $df, $e0, $3f, $80, $7f, $80, $70, $a4, $0d, $00, $c7, $ab
    db $03, $77, $00, $ff, $10, $d5, $f8, $f7, $f5, $00, $e1, $cf, $86, $80, $04, $a3
    db $5e, $e5, $e8, $83, $7b, $80, $37, $ff, $80, $1f, $e0, $0f, $a0, $06, $71, $02
    db $97, $a8, $00, $dd, $78, $c5, $f0, $00, $df, $ed, $ca, $80, $2e, $10, $c0, $f8
    db $00, $fc, $fe, $e0, $fe, $fe, $e2, $90, $e7, $a4, $f0, $d1, $70, $85, $af, $78
    db $86, $f0, $80, $77, $ec, $80, $dd, $ff, $1f, $a0, $3c, $43, $7e, $80, $cf, $10
    db $c3, $b4, $4b, $80, $df, $f0, $df, $e8, $d5, $78, $c1, $0f, $f8, $ff, $0b, $ac
    db $0f, $fe, $0b, $be, $3f, $fe, $7f, $2b, $fe, $ff, $fe, $ab, $fe, $77, $fc, $e0
    db $ff, $dd, $fe, $fa, $04, $04, $73, $02, $a8, $4f, $01, $dc, $30, $cf, $80, $ff
    db $00, $bf, $fc, $88, $60, $e9, $fe, $92, $62, $70, $8d, $ff, $fc, $e4, $5e, $00
    db $bc, $fb, $03, $78, $78, $61, $0b, $c3, $37, $82, $2f, $bf, $0d, $df, $0a, $af
    db $07, $7e, $68, $e0, $d8, $a3, $34, $cb, $80, $ff, $00, $7f, $78, $47, $5f, $98
    db $e1, $05, $fe, $10, $60, $17, $c1, $3f, $81, $5f, $07, $ff, $7f, $ea, $0f, $cf
    db $3f, $8a, $2f, $0f, $08, $a0, $fd, $3f, $08, $80, $ff, $ff, $af, $f0, $7f, $e0
    db $ff, $bf, $c0, $ff, $80, $f0, $0a, $e0, $17, $8f, $c0, $2a, $80, $5d, $80, $bf
    db $80, $ff, $00, $4e, $80, $77, $2f, $c0, $77, $14, $40, $d7, $e0, $f7, $0c, $42
    db $be, $fc, $e3, $ef, $c0, $df, $80, $af, $ea, $20, $e7, $ff, $10, $c3, $28, $81
    db $5c, $0b, $be, $37, $7f, $7c, $2f, $f8, $df, $f0, $f4, $cb, $80, $bf, $a0, $00
    db $9f, $00, $87, $80, $ad, $fc, $e5, $e8, $25, $de, $78, $c3, $0d, $0e, $f0, $20
    db $37, $82, $2b, $80, $3f, $80, $bf, $10, $b1, $80, $3a, $ef, $7e, $2b, $bc, $5f
    db $80, $60, $7f, $f0, $af, $47, $f0, $df, $f0, $80, $9f, $80, $bf, $80, $a7, $0e
    db $80, $3e, $ff, $fa, $07, $f7, $03, $f2, $09, $f1, $0c, $42, $68, $60, $36, $68
    db $60, $00, $bf, $00, $df, $7c, $ac, $e8, $f4, $82, $97, $7d, $00, $be, $78, $42
    db $17, $08, $60, $fc, $e7, $1a, $7e, $84, $a0, $70, $87, $f0, $0a, $f0, $0d, $78
    db $04, $51, $fe, $80, $3f, $80, $ff, $fc, $8b, $88, $ec, $80, $22, $e8, $80, $e9
    db $98, $08, $64, $08, $ca, $0f, $84, $e0, $07, $70, $8a, $3f, $30, $cd, $a0, $cb
    db $43, $b7, $78, $81, $00, $df, $d0, $80, $ff, $00, $ae, $e2, $22, $88, $41, $2e
    db $e8, $00, $0b, $f0, $ef, $0f, $a8, $0f, $fc, $80, $65, $aa, $fe, $76, $ff, $ff
    db $a8, $ff, $d9, $ff, $a2, $ff, $67, $ff, $ff, $8a, $ff, $9d, $ff, $7f, $cf, $ff
    db $a8, $80, $ff, $80, $ff, $f8, $60, $18, $72, $28, $e2, $80, $ae, $00, $bf, $aa
    db $01, $ff, $02, $ab, $07, $70, $00, $77, $ea, $6c, $00, $dc, $7c, $e0, $73, $7c
    db $e0, $cd, $ff, $ff, $00, $80, $ec, $00, $00

    nop                                           ; $56d9: $00

    db $80, $7e, $96, $73, $40, $22, $a0, $08, $40, $02, $40, $7d, $e8, $03, $a0, $08
    db $40, $02, $40, $13, $54, $1b, $a0, $08, $40, $02, $54, $1b, $e8, $03, $a0, $08
    db $40, $02, $e8, $03, $40, $13, $a0, $08

    ld [$0825], sp                                ; $5702: $08 $25 $08
    dec h                                         ; $5705: $25
    ld [$0825], sp                                ; $5706: $08 $25 $08
    dec h                                         ; $5709: $25

    jr jr_04b_570c                                ; $570a: $18 $00

jr_04b_570c:
    call Call_04b_5817                            ; $570c: $cd $17 $58
    call Call_04b_5742                            ; $570f: $cd $42 $57
    ld a, $01                                     ; $5712: $3e $01
    ldh [rVBK], a                                 ; $5714: $e0 $4f
    ld hl, $d000                                  ; $5716: $21 $00 $d0
    ld de, $9000                                  ; $5719: $11 $00 $90
    ld c, $80                                     ; $571c: $0e $80
    call Call_000_2096                            ; $571e: $cd $96 $20
    ld hl, $d800                                  ; $5721: $21 $00 $d8
    ld de, $8800                                  ; $5724: $11 $00 $88
    ld c, $20                                     ; $5727: $0e $20
    call Call_000_2096                            ; $5729: $cd $96 $20
    ld hl, $5360                                  ; $572c: $21 $60 $53
    ld de, $d000                                  ; $572f: $11 $00 $d0
    call Call_000_1f2f                            ; $5732: $cd $2f $1f
    call Call_04b_614e                            ; $5735: $cd $4e $61
    ld hl, $56da                                  ; $5738: $21 $da $56
    ld de, $0205                                  ; $573b: $11 $05 $02
    call Call_000_0595                            ; $573e: $cd $95 $05
    ret                                           ; $5741: $c9


Call_04b_5742:
    ld hl, $da00                                  ; $5742: $21 $00 $da

jr_04b_5745:
    ld a, [hl+]                                   ; $5745: $2a
    cp $ff                                        ; $5746: $fe $ff
    jr z, jr_04b_576b                             ; $5748: $28 $21

    ld e, a                                       ; $574a: $5f
    ld a, [hl+]                                   ; $574b: $2a
    ld d, a                                       ; $574c: $57
    ld a, [hl+]                                   ; $574d: $2a
    ld c, a                                       ; $574e: $4f
    ld a, e                                       ; $574f: $7b
    cp $03                                        ; $5750: $fe $03
    jr z, jr_04b_5758                             ; $5752: $28 $04

    cp $02                                        ; $5754: $fe $02
    jr nz, jr_04b_5769                            ; $5756: $20 $11

jr_04b_5758:
    ld a, c                                       ; $5758: $79
    and a                                         ; $5759: $a7
    jr z, jr_04b_5769                             ; $575a: $28 $0d

    ld a, c                                       ; $575c: $79
    rrca                                          ; $575d: $0f
    rrca                                          ; $575e: $0f
    rrca                                          ; $575f: $0f
    and $07                                       ; $5760: $e6 $07
    ld e, $00                                     ; $5762: $1e $00
    push hl                                       ; $5764: $e5
    call Call_04b_576c                            ; $5765: $cd $6c $57
    pop hl                                        ; $5768: $e1

jr_04b_5769:
    jr jr_04b_5745                                ; $5769: $18 $da

jr_04b_576b:
    ret                                           ; $576b: $c9


Call_04b_576c:
    add a                                         ; $576c: $87
    add a                                         ; $576d: $87
    add a                                         ; $576e: $87
    ld hl, $57d7                                  ; $576f: $21 $d7 $57
    add l                                         ; $5772: $85
    ld l, a                                       ; $5773: $6f
    jr nc, jr_04b_5777                            ; $5774: $30 $01

    inc h                                         ; $5776: $24

jr_04b_5777:
    ld a, [hl+]                                   ; $5777: $2a
    add d                                         ; $5778: $82
    ld d, a                                       ; $5779: $57
    ld a, [hl+]                                   ; $577a: $2a
    add e                                         ; $577b: $83
    ld b, a                                       ; $577c: $47
    ld a, [hl+]                                   ; $577d: $2a
    ld e, a                                       ; $577e: $5f
    ld a, [hl+]                                   ; $577f: $2a
    ld a, [hl+]                                   ; $5780: $2a
    ld h, [hl]                                    ; $5781: $66
    ld l, a                                       ; $5782: $6f

jr_04b_5783:
    push de                                       ; $5783: $d5

jr_04b_5784:
    ld a, [hl]                                    ; $5784: $7e
    and a                                         ; $5785: $a7
    jr z, jr_04b_57c7                             ; $5786: $28 $3f

    bit 7, d                                      ; $5788: $cb $7a
    jr nz, jr_04b_57c7                            ; $578a: $20 $3b

    ld a, d                                       ; $578c: $7a
    cp $14                                        ; $578d: $fe $14
    jr nc, jr_04b_57c7                            ; $578f: $30 $36

    push bc                                       ; $5791: $c5
    push de                                       ; $5792: $d5
    push hl                                       ; $5793: $e5
    ld a, d                                       ; $5794: $7a
    ld l, [hl]                                    ; $5795: $6e
    ld h, $00                                     ; $5796: $26 $00
    add hl, hl                                    ; $5798: $29
    add hl, hl                                    ; $5799: $29
    add hl, hl                                    ; $579a: $29
    add hl, hl                                    ; $579b: $29
    ld de, $4026                                  ; $579c: $11 $26 $40
    add hl, de                                    ; $579f: $19
    ld e, l                                       ; $57a0: $5d
    ld d, h                                       ; $57a1: $54
    add a                                         ; $57a2: $87
    add a                                         ; $57a3: $87
    add a                                         ; $57a4: $87
    add b                                         ; $57a5: $80
    ld l, a                                       ; $57a6: $6f
    ld h, $00                                     ; $57a7: $26 $00
    add hl, hl                                    ; $57a9: $29
    add hl, hl                                    ; $57aa: $29
    add hl, hl                                    ; $57ab: $29
    add hl, hl                                    ; $57ac: $29
    ld a, $00                                     ; $57ad: $3e $00
    add l                                         ; $57af: $85
    ld l, a                                       ; $57b0: $6f
    ld a, h                                       ; $57b1: $7c
    adc $d0                                       ; $57b2: $ce $d0
    ld h, a                                       ; $57b4: $67
    ld a, c                                       ; $57b5: $79
    cp $08                                        ; $57b6: $fe $08
    jr c, jr_04b_57bc                             ; $57b8: $38 $02

    ld c, $08                                     ; $57ba: $0e $08

jr_04b_57bc:
    push bc                                       ; $57bc: $c5
    call Call_04b_6221                            ; $57bd: $cd $21 $62
    pop bc                                        ; $57c0: $c1
    dec c                                         ; $57c1: $0d
    jr nz, jr_04b_57bc                            ; $57c2: $20 $f8

    pop hl                                        ; $57c4: $e1
    pop de                                        ; $57c5: $d1
    pop bc                                        ; $57c6: $c1

jr_04b_57c7:
    inc hl                                        ; $57c7: $23
    inc d                                         ; $57c8: $14
    dec e                                         ; $57c9: $1d
    jr nz, jr_04b_5784                            ; $57ca: $20 $b8

    pop de                                        ; $57cc: $d1
    inc b                                         ; $57cd: $04
    ld a, c                                       ; $57ce: $79
    sub $08                                       ; $57cf: $d6 $08
    ld c, a                                       ; $57d1: $4f
    jr z, jr_04b_57d6                             ; $57d2: $28 $02

    jr nc, jr_04b_5783                            ; $57d4: $30 $ad

jr_04b_57d6:
    ret                                           ; $57d6: $c9


    db $00, $00, $01, $01, $36, $43

    nop                                           ; $57dd: $00
    nop                                           ; $57de: $00

    db $00, $00, $01, $02, $37, $43

    nop                                           ; $57e5: $00
    nop                                           ; $57e6: $00
    rst $38                                       ; $57e7: $ff
    nop                                           ; $57e8: $00
    inc bc                                        ; $57e9: $03
    inc bc                                        ; $57ea: $03
    add hl, sp                                    ; $57eb: $39
    ld b, e                                       ; $57ec: $43
    nop                                           ; $57ed: $00
    nop                                           ; $57ee: $00
    rst $38                                       ; $57ef: $ff
    nop                                           ; $57f0: $00
    inc bc                                        ; $57f1: $03
    inc b                                         ; $57f2: $04
    ld b, d                                       ; $57f3: $42
    ld b, e                                       ; $57f4: $43
    nop                                           ; $57f5: $00
    nop                                           ; $57f6: $00
    rst $38                                       ; $57f7: $ff
    nop                                           ; $57f8: $00
    inc bc                                        ; $57f9: $03
    dec b                                         ; $57fa: $05
    ld c, [hl]                                    ; $57fb: $4e
    ld b, e                                       ; $57fc: $43
    nop                                           ; $57fd: $00
    nop                                           ; $57fe: $00
    rst $38                                       ; $57ff: $ff
    nop                                           ; $5800: $00
    inc bc                                        ; $5801: $03
    ld b, $5d                                     ; $5802: $06 $5d
    ld b, e                                       ; $5804: $43
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    rst $38                                       ; $5807: $ff
    nop                                           ; $5808: $00
    inc bc                                        ; $5809: $03
    rlca                                          ; $580a: $07
    ld l, a                                       ; $580b: $6f
    ld b, e                                       ; $580c: $43
    nop                                           ; $580d: $00
    nop                                           ; $580e: $00
    rst $38                                       ; $580f: $ff
    nop                                           ; $5810: $00
    inc bc                                        ; $5811: $03
    ld [$4384], sp                                ; $5812: $08 $84 $43
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00

Call_04b_5817:
    ld hl, $da00                                  ; $5817: $21 $00 $da

jr_04b_581a:
    ld a, [hl+]                                   ; $581a: $2a
    cp $ff                                        ; $581b: $fe $ff
    jr z, jr_04b_583d                             ; $581d: $28 $1e

    ld e, a                                       ; $581f: $5f
    ld a, [hl+]                                   ; $5820: $2a
    ld d, a                                       ; $5821: $57
    ld a, [hl+]                                   ; $5822: $2a
    ld b, a                                       ; $5823: $47
    ld a, e                                       ; $5824: $7b
    cp $01                                        ; $5825: $fe $01
    jr nz, jr_04b_583b                            ; $5827: $20 $12

    ld a, b                                       ; $5829: $78
    rrca                                          ; $582a: $0f
    rrca                                          ; $582b: $0f
    rrca                                          ; $582c: $0f
    and $07                                       ; $582d: $e6 $07
    jr z, jr_04b_583b                             ; $582f: $28 $0a

    cp $07                                        ; $5831: $fe $07
    jr z, jr_04b_583b                             ; $5833: $28 $06

    ld e, b                                       ; $5835: $58
    push hl                                       ; $5836: $e5
    call Call_04b_584e                            ; $5837: $cd $4e $58
    pop hl                                        ; $583a: $e1

jr_04b_583b:
    jr jr_04b_581a                                ; $583b: $18 $dd

jr_04b_583d:
    ld a, [$c3b7]                                 ; $583d: $fa $b7 $c3
    cp $0c                                        ; $5840: $fe $0c
    jr nz, jr_04b_584d                            ; $5842: $20 $09

    ld a, $07                                     ; $5844: $3e $07
    ld d, $0a                                     ; $5846: $16 $0a
    ld e, $3f                                     ; $5848: $1e $3f
    call Call_04b_584e                            ; $584a: $cd $4e $58

jr_04b_584d:
    ret                                           ; $584d: $c9


Call_04b_584e:
    add a                                         ; $584e: $87
    add a                                         ; $584f: $87
    add a                                         ; $5850: $87
    ld hl, $610e                                  ; $5851: $21 $0e $61
    add l                                         ; $5854: $85
    ld l, a                                       ; $5855: $6f
    jr nc, jr_04b_5859                            ; $5856: $30 $01

    inc h                                         ; $5858: $24

jr_04b_5859:
    ld a, [hl+]                                   ; $5859: $2a
    add d                                         ; $585a: $82
    ld d, a                                       ; $585b: $57
    ld a, [hl+]                                   ; $585c: $2a
    add e                                         ; $585d: $83
    ld b, a                                       ; $585e: $47
    ld a, [hl+]                                   ; $585f: $2a
    ld e, a                                       ; $5860: $5f
    ld a, [hl+]                                   ; $5861: $2a
    ld c, a                                       ; $5862: $4f
    ld a, [hl+]                                   ; $5863: $2a
    ld h, [hl]                                    ; $5864: $66
    ld l, a                                       ; $5865: $6f

jr_04b_5866:
    push de                                       ; $5866: $d5

jr_04b_5867:
    ld a, [hl]                                    ; $5867: $7e
    and a                                         ; $5868: $a7
    jr z, jr_04b_58b2                             ; $5869: $28 $47

    bit 7, d                                      ; $586b: $cb $7a
    jr nz, jr_04b_58b2                            ; $586d: $20 $43

    ld a, d                                       ; $586f: $7a
    cp $14                                        ; $5870: $fe $14
    jr nc, jr_04b_58b2                            ; $5872: $30 $3e

    push bc                                       ; $5874: $c5
    push de                                       ; $5875: $d5
    push hl                                       ; $5876: $e5
    ld c, d                                       ; $5877: $4a
    ld l, [hl]                                    ; $5878: $6e
    ld h, $00                                     ; $5879: $26 $00
    add hl, hl                                    ; $587b: $29
    add hl, hl                                    ; $587c: $29
    add hl, hl                                    ; $587d: $29
    add hl, hl                                    ; $587e: $29
    ld de, $58c0                                  ; $587f: $11 $c0 $58
    add hl, de                                    ; $5882: $19
    ld e, l                                       ; $5883: $5d
    ld d, h                                       ; $5884: $54
    ld h, c                                       ; $5885: $61
    ld l, $00                                     ; $5886: $2e $00
    srl h                                         ; $5888: $cb $3c
    rr l                                          ; $588a: $cb $1d
    ld a, b                                       ; $588c: $78
    add a                                         ; $588d: $87
    add l                                         ; $588e: $85
    ld l, a                                       ; $588f: $6f
    jr nc, jr_04b_5893                            ; $5890: $30 $01

    inc h                                         ; $5892: $24

jr_04b_5893:
    ld bc, $d000                                  ; $5893: $01 $00 $d0
    add hl, bc                                    ; $5896: $09
    call Call_04b_6221                            ; $5897: $cd $21 $62
    call Call_04b_6221                            ; $589a: $cd $21 $62
    call Call_04b_6221                            ; $589d: $cd $21 $62
    call Call_04b_6221                            ; $58a0: $cd $21 $62
    call Call_04b_6221                            ; $58a3: $cd $21 $62
    call Call_04b_6221                            ; $58a6: $cd $21 $62
    call Call_04b_6221                            ; $58a9: $cd $21 $62
    call Call_04b_6221                            ; $58ac: $cd $21 $62
    pop hl                                        ; $58af: $e1
    pop de                                        ; $58b0: $d1
    pop bc                                        ; $58b1: $c1

jr_04b_58b2:
    inc hl                                        ; $58b2: $23
    inc d                                         ; $58b3: $14
    dec e                                         ; $58b4: $1d
    jr nz, jr_04b_5867                            ; $58b5: $20 $b0

    pop de                                        ; $58b7: $d1
    ld a, b                                       ; $58b8: $78
    add $08                                       ; $58b9: $c6 $08
    ld b, a                                       ; $58bb: $47
    dec c                                         ; $58bc: $0d
    jr nz, jr_04b_5866                            ; $58bd: $20 $a7

    ret                                           ; $58bf: $c9


    rst $38                                       ; $58c0: $ff
    nop                                           ; $58c1: $00
    rst $38                                       ; $58c2: $ff
    ld bc, $73ff                                  ; $58c3: $01 $ff $73
    rst $38                                       ; $58c6: $ff
    ei                                            ; $58c7: $fb
    rst $08                                       ; $58c8: $cf
    rst $08                                       ; $58c9: $cf
    rst $00                                       ; $58ca: $c7
    rst $00                                       ; $58cb: $c7
    rst $20                                       ; $58cc: $e7
    ld h, a                                       ; $58cd: $67
    di                                            ; $58ce: $f3
    inc sp                                        ; $58cf: $33
    rst $38                                       ; $58d0: $ff
    nop                                           ; $58d1: $00
    rst $38                                       ; $58d2: $ff
    pop hl                                        ; $58d3: $e1
    rst $38                                       ; $58d4: $ff
    pop af                                        ; $58d5: $f1
    ccf                                           ; $58d6: $3f
    inc sp                                        ; $58d7: $33
    ccf                                           ; $58d8: $3f
    dec sp                                        ; $58d9: $3b
    rra                                           ; $58da: $1f
    dec de                                        ; $58db: $1b
    sbc [hl]                                      ; $58dc: $9e
    sbc [hl]                                      ; $58dd: $9e
    sbc [hl]                                      ; $58de: $9e
    sbc [hl]                                      ; $58df: $9e
    rst $38                                       ; $58e0: $ff
    ldh a, [rIE]                                  ; $58e1: $f0 $ff
    ld hl, sp-$61                                 ; $58e3: $f8 $9f
    sbc c                                         ; $58e5: $99
    rra                                           ; $58e6: $1f
    dec de                                        ; $58e7: $1b
    ccf                                           ; $58e8: $3f
    dec sp                                        ; $58e9: $3b
    ccf                                           ; $58ea: $3f
    scf                                           ; $58eb: $37
    ld a, $36                                     ; $58ec: $3e $36
    ld a, [hl]                                    ; $58ee: $7e
    ld a, [hl]                                    ; $58ef: $7e
    rst $38                                       ; $58f0: $ff
    nop                                           ; $58f1: $00
    rst $38                                       ; $58f2: $ff
    ldh a, [rIE]                                  ; $58f3: $f0 $ff
    ld hl, sp-$61                                 ; $58f5: $f8 $9f
    sbc e                                         ; $58f7: $9b
    rra                                           ; $58f8: $1f
    rra                                           ; $58f9: $1f
    ld a, $36                                     ; $58fa: $3e $36
    ld a, $36                                     ; $58fc: $3e $36
    ld a, [hl]                                    ; $58fe: $7e
    ld a, [hl]                                    ; $58ff: $7e
    rst $38                                       ; $5900: $ff
    nop                                           ; $5901: $00
    rst $38                                       ; $5902: $ff
    nop                                           ; $5903: $00
    rst $38                                       ; $5904: $ff
    ld bc, $81ff                                  ; $5905: $01 $ff $81
    rst $38                                       ; $5908: $ff
    jp $efff                                      ; $5909: $c3 $ff $ef


    ld a, a                                       ; $590c: $7f
    ld a, a                                       ; $590d: $7f
    dec sp                                        ; $590e: $3b
    dec sp                                        ; $590f: $3b
    rst $38                                       ; $5910: $ff
    nop                                           ; $5911: $00
    rst $38                                       ; $5912: $ff
    ldh [rIE], a                                  ; $5913: $e0 $ff
    pop af                                        ; $5915: $f1
    cp a                                          ; $5916: $bf
    or e                                          ; $5917: $b3
    rra                                           ; $5918: $1f
    dec de                                        ; $5919: $1b
    ld e, $1e                                     ; $591a: $1e $1e
    sbc [hl]                                      ; $591c: $9e
    sbc [hl]                                      ; $591d: $9e
    adc [hl]                                      ; $591e: $8e
    adc [hl]                                      ; $591f: $8e
    rst $38                                       ; $5920: $ff
    ld [hl], b                                    ; $5921: $70
    rst $38                                       ; $5922: $ff
    ld hl, sp-$61                                 ; $5923: $f8 $9f
    sbc b                                         ; $5925: $98
    rra                                           ; $5926: $1f
    jr jr_04b_5968                                ; $5927: $18 $3f

    jr nc, @+$41                                  ; $5929: $30 $3f

    jr nc, jr_04b_59ac                            ; $592b: $30 $7f

    ld h, b                                       ; $592d: $60
    ld a, a                                       ; $592e: $7f
    ld h, b                                       ; $592f: $60
    rst $38                                       ; $5930: $ff
    nop                                           ; $5931: $00
    rst $38                                       ; $5932: $ff
    nop                                           ; $5933: $00
    rst $38                                       ; $5934: $ff
    nop                                           ; $5935: $00
    rst $38                                       ; $5936: $ff
    nop                                           ; $5937: $00
    rst $38                                       ; $5938: $ff
    nop                                           ; $5939: $00
    rst $38                                       ; $593a: $ff
    inc bc                                        ; $593b: $03
    rst $38                                       ; $593c: $ff
    rlca                                          ; $593d: $07
    db $fc                                        ; $593e: $fc
    inc b                                         ; $593f: $04
    rst $38                                       ; $5940: $ff
    nop                                           ; $5941: $00
    rst $38                                       ; $5942: $ff
    nop                                           ; $5943: $00
    rst $38                                       ; $5944: $ff
    nop                                           ; $5945: $00
    rst $38                                       ; $5946: $ff
    nop                                           ; $5947: $00
    rst $38                                       ; $5948: $ff
    jr @+$01                                      ; $5949: $18 $ff

    inc a                                         ; $594b: $3c
    rst $20                                       ; $594c: $e7
    and h                                         ; $594d: $a4
    rst $20                                       ; $594e: $e7
    and $ff                                       ; $594f: $e6 $ff
    nop                                           ; $5951: $00
    rst $38                                       ; $5952: $ff
    nop                                           ; $5953: $00
    rst $38                                       ; $5954: $ff
    nop                                           ; $5955: $00
    rst $38                                       ; $5956: $ff
    jr @+$01                                      ; $5957: $18 $ff

    inc a                                         ; $5959: $3c
    rst $20                                       ; $595a: $e7
    inc h                                         ; $595b: $24
    rst $20                                       ; $595c: $e7
    ld h, h                                       ; $595d: $64
    rst $08                                       ; $595e: $cf
    ld c, h                                       ; $595f: $4c
    rst $38                                       ; $5960: $ff
    nop                                           ; $5961: $00
    rst $38                                       ; $5962: $ff
    nop                                           ; $5963: $00
    rst $38                                       ; $5964: $ff
    nop                                           ; $5965: $00
    rst $38                                       ; $5966: $ff
    nop                                           ; $5967: $00

jr_04b_5968:
    rst $38                                       ; $5968: $ff
    jr nc, @+$01                                  ; $5969: $30 $ff

    ld a, b                                       ; $596b: $78
    rst $08                                       ; $596c: $cf
    ret z                                         ; $596d: $c8

    adc a                                         ; $596e: $8f
    adc b                                         ; $596f: $88
    rst $38                                       ; $5970: $ff
    nop                                           ; $5971: $00
    rst $38                                       ; $5972: $ff
    nop                                           ; $5973: $00
    rst $38                                       ; $5974: $ff
    nop                                           ; $5975: $00
    rst $38                                       ; $5976: $ff
    nop                                           ; $5977: $00
    rst $38                                       ; $5978: $ff
    nop                                           ; $5979: $00
    rst $38                                       ; $597a: $ff
    ld bc, $03ff                                  ; $597b: $01 $ff $03
    cp $c2                                        ; $597e: $fe $c2
    rst $38                                       ; $5980: $ff
    nop                                           ; $5981: $00
    rst $38                                       ; $5982: $ff
    nop                                           ; $5983: $00
    rst $38                                       ; $5984: $ff
    nop                                           ; $5985: $00
    rst $38                                       ; $5986: $ff
    ld bc, $03ff                                  ; $5987: $01 $ff $03
    cp $86                                        ; $598a: $fe $86
    db $fc                                        ; $598c: $fc
    call nz, $6c7c                                ; $598d: $c4 $7c $6c
    rst $38                                       ; $5990: $ff
    nop                                           ; $5991: $00
    rst $38                                       ; $5992: $ff
    nop                                           ; $5993: $00
    rst $38                                       ; $5994: $ff
    nop                                           ; $5995: $00
    rst $38                                       ; $5996: $ff
    add b                                         ; $5997: $80
    rst $38                                       ; $5998: $ff
    ret nz                                        ; $5999: $c0

    ld a, a                                       ; $599a: $7f
    ld b, b                                       ; $599b: $40
    ld a, a                                       ; $599c: $7f
    ld b, b                                       ; $599d: $40
    rst $38                                       ; $599e: $ff
    ret nz                                        ; $599f: $c0

    nop                                           ; $59a0: $00
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    nop                                           ; $59a3: $00
    nop                                           ; $59a4: $00
    nop                                           ; $59a5: $00
    nop                                           ; $59a6: $00
    nop                                           ; $59a7: $00
    nop                                           ; $59a8: $00
    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    nop                                           ; $59ab: $00

jr_04b_59ac:
    nop                                           ; $59ac: $00
    nop                                           ; $59ad: $00
    nop                                           ; $59ae: $00
    nop                                           ; $59af: $00
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    nop                                           ; $59b2: $00
    nop                                           ; $59b3: $00
    nop                                           ; $59b4: $00
    nop                                           ; $59b5: $00
    nop                                           ; $59b6: $00
    nop                                           ; $59b7: $00
    nop                                           ; $59b8: $00
    nop                                           ; $59b9: $00
    nop                                           ; $59ba: $00
    nop                                           ; $59bb: $00
    nop                                           ; $59bc: $00
    nop                                           ; $59bd: $00
    nop                                           ; $59be: $00
    nop                                           ; $59bf: $00
    di                                            ; $59c0: $f3
    inc sp                                        ; $59c1: $33
    ld sp, hl                                     ; $59c2: $f9
    add hl, de                                    ; $59c3: $19
    ld sp, hl                                     ; $59c4: $f9
    ld a, c                                       ; $59c5: $79
    db $fc                                        ; $59c6: $fc
    db $fc                                        ; $59c7: $fc
    call z, $c4cc                                 ; $59c8: $cc $cc $c4
    call nz, $e6e6                                ; $59cb: $c4 $e6 $e6
    ld [c], a                                     ; $59ce: $e2
    ld h, d                                       ; $59cf: $62
    adc [hl]                                      ; $59d0: $8e
    adc [hl]                                      ; $59d1: $8e
    call z, $cccc                                 ; $59d2: $cc $cc $cc
    call z, $cccc                                 ; $59d5: $cc $cc $cc
    ret z                                         ; $59d8: $c8

    ret z                                         ; $59d9: $c8

    ld c, b                                       ; $59da: $48
    ld c, b                                       ; $59db: $48
    ld b, b                                       ; $59dc: $40
    ld b, b                                       ; $59dd: $40
    nop                                           ; $59de: $00
    nop                                           ; $59df: $00
    ld a, [hl]                                    ; $59e0: $7e
    ld a, [hl]                                    ; $59e1: $7e
    ld [hl], e                                    ; $59e2: $73
    ld [hl], e                                    ; $59e3: $73
    ld h, e                                       ; $59e4: $63
    ld h, e                                       ; $59e5: $63
    db $e3                                        ; $59e6: $e3
    db $e3                                        ; $59e7: $e3
    rst $00                                       ; $59e8: $c7
    rst $00                                       ; $59e9: $c7
    rst $00                                       ; $59ea: $c7
    rst $00                                       ; $59eb: $c7
    adc h                                         ; $59ec: $8c
    adc h                                         ; $59ed: $8c
    adc b                                         ; $59ee: $88
    adc b                                         ; $59ef: $88
    ld a, a                                       ; $59f0: $7f
    ld a, a                                       ; $59f1: $7f
    ld [hl], e                                    ; $59f2: $73
    ld [hl], e                                    ; $59f3: $73
    ld h, e                                       ; $59f4: $63
    ld h, e                                       ; $59f5: $63
    db $e3                                        ; $59f6: $e3
    db $e3                                        ; $59f7: $e3
    rst $00                                       ; $59f8: $c7

Call_04b_59f9:
    rst $00                                       ; $59f9: $c7
    rst $00                                       ; $59fa: $c7
    rst $00                                       ; $59fb: $c7
    adc h                                         ; $59fc: $8c
    adc h                                         ; $59fd: $8c
    adc b                                         ; $59fe: $88
    adc b                                         ; $59ff: $88
    ld sp, $3131                                  ; $5a00: $31 $31 $31
    ld sp, $1919                                  ; $5a03: $31 $19 $19
    sbc b                                         ; $5a06: $98
    sbc b                                         ; $5a07: $98
    sbc b                                         ; $5a08: $98
    sbc b                                         ; $5a09: $98
    adc b                                         ; $5a0a: $88
    adc b                                         ; $5a0b: $88
    adc h                                         ; $5a0c: $8c
    adc h                                         ; $5a0d: $8c
    adc h                                         ; $5a0e: $8c
    adc h                                         ; $5a0f: $8c
    adc h                                         ; $5a10: $8c
    adc h                                         ; $5a11: $8c
    adc h                                         ; $5a12: $8c
    adc h                                         ; $5a13: $8c
    adc h                                         ; $5a14: $8c
    adc h                                         ; $5a15: $8c
    call z, $cccc                                 ; $5a16: $cc $cc $cc
    call z, $c8c8                                 ; $5a19: $cc $c8 $c8
    ld c, b                                       ; $5a1c: $48
    ld c, b                                       ; $5a1d: $48
    ld [$7f08], sp                                ; $5a1e: $08 $08 $7f
    ld l, [hl]                                    ; $5a21: $6e
    ld a, a                                       ; $5a22: $7f
    ld e, a                                       ; $5a23: $5f
    di                                            ; $5a24: $f3
    di                                            ; $5a25: $f3
    db $e3                                        ; $5a26: $e3
    db $e3                                        ; $5a27: $e3
    rst $20                                       ; $5a28: $e7
    rst $20                                       ; $5a29: $e7
    rst $00                                       ; $5a2a: $c7
    add $cf                                       ; $5a2b: $c6 $cf
    call z, $8c8f                                 ; $5a2d: $cc $8f $8c
    db $fc                                        ; $5a30: $fc
    inc b                                         ; $5a31: $04
    cp $06                                        ; $5a32: $fe $06
    rst $38                                       ; $5a34: $ff
    inc bc                                        ; $5a35: $03
    rst $38                                       ; $5a36: $ff
    ld bc, $03ff                                  ; $5a37: $01 $ff $03
    rst $38                                       ; $5a3a: $ff
    rlca                                          ; $5a3b: $07
    db $fc                                        ; $5a3c: $fc
    inc b                                         ; $5a3d: $04
    db $fc                                        ; $5a3e: $fc
    inc b                                         ; $5a3f: $04
    ld h, e                                       ; $5a40: $63
    ld h, d                                       ; $5a41: $62
    inc sp                                        ; $5a42: $33
    inc sp                                        ; $5a43: $33
    ld sp, $1931                                  ; $5a44: $31 $31 $19
    add hl, de                                    ; $5a47: $19
    sbc c                                         ; $5a48: $99
    sbc c                                         ; $5a49: $99
    sbc c                                         ; $5a4a: $99
    sbc c                                         ; $5a4b: $99
    ret                                           ; $5a4c: $c9


    ret                                           ; $5a4d: $c9


    ld c, c                                       ; $5a4e: $49
    ld c, c                                       ; $5a4f: $49
    rst $08                                       ; $5a50: $cf
    ld c, c                                       ; $5a51: $49
    rst $08                                       ; $5a52: $cf
    ret                                           ; $5a53: $c9


    sbc a                                         ; $5a54: $9f
    sbc a                                         ; $5a55: $9f
    sbc l                                         ; $5a56: $9d
    sbc l                                         ; $5a57: $9d
    sbc b                                         ; $5a58: $98
    sbc b                                         ; $5a59: $98
    cp c                                          ; $5a5a: $b9
    cp c                                          ; $5a5b: $b9
    ld sp, $3331                                  ; $5a5c: $31 $31 $33
    inc sp                                        ; $5a5f: $33
    sbc a                                         ; $5a60: $9f
    sbc c                                         ; $5a61: $99
    rra                                           ; $5a62: $1f
    ld de, $bfbf                                  ; $5a63: $11 $bf $bf
    cp e                                          ; $5a66: $bb
    cp e                                          ; $5a67: $bb
    pop af                                        ; $5a68: $f1
    pop af                                        ; $5a69: $f1
    di                                            ; $5a6a: $f3
    di                                            ; $5a6b: $f3
    db $e3                                        ; $5a6c: $e3
    db $e3                                        ; $5a6d: $e3
    ld h, [hl]                                    ; $5a6e: $66
    ld h, [hl]                                    ; $5a6f: $66
    cp $ee                                        ; $5a70: $fe $ee
    ld a, $3e                                     ; $5a72: $3e $3e
    inc sp                                        ; $5a74: $33
    inc sp                                        ; $5a75: $33
    ld sp, $1931                                  ; $5a76: $31 $31 $19
    add hl, de                                    ; $5a79: $19
    sbc c                                         ; $5a7a: $99
    sbc c                                         ; $5a7b: $99
    sbc c                                         ; $5a7c: $99
    sbc c                                         ; $5a7d: $99
    adc b                                         ; $5a7e: $88
    adc b                                         ; $5a7f: $88
    inc a                                         ; $5a80: $3c
    inc l                                         ; $5a81: $2c
    add hl, sp                                    ; $5a82: $39
    add hl, sp                                    ; $5a83: $39
    add hl, sp                                    ; $5a84: $39
    add hl, sp                                    ; $5a85: $39
    add hl, de                                    ; $5a86: $19
    add hl, de                                    ; $5a87: $19
    add hl, de                                    ; $5a88: $19
    add hl, de                                    ; $5a89: $19
    sbc e                                         ; $5a8a: $9b
    sbc e                                         ; $5a8b: $9b
    sbc e                                         ; $5a8c: $9b
    sbc e                                         ; $5a8d: $9b
    sub e                                         ; $5a8e: $93
    sub e                                         ; $5a8f: $93
    rst $38                                       ; $5a90: $ff
    add b                                         ; $5a91: $80
    rst $38                                       ; $5a92: $ff
    add b                                         ; $5a93: $80
    rst $38                                       ; $5a94: $ff
    jr nc, @+$01                                  ; $5a95: $30 $ff

    ld a, b                                       ; $5a97: $78
    rst $08                                       ; $5a98: $cf
    ret z                                         ; $5a99: $c8

    adc a                                         ; $5a9a: $8f
    adc b                                         ; $5a9b: $88
    sbc a                                         ; $5a9c: $9f
    sbc b                                         ; $5a9d: $98
    rra                                           ; $5a9e: $1f
    stop                                          ; $5a9f: $10 $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00
    nop                                           ; $5aa5: $00
    nop                                           ; $5aa6: $00
    nop                                           ; $5aa7: $00
    nop                                           ; $5aa8: $00
    nop                                           ; $5aa9: $00
    nop                                           ; $5aaa: $00
    nop                                           ; $5aab: $00
    nop                                           ; $5aac: $00
    nop                                           ; $5aad: $00
    nop                                           ; $5aae: $00
    nop                                           ; $5aaf: $00
    nop                                           ; $5ab0: $00
    nop                                           ; $5ab1: $00
    nop                                           ; $5ab2: $00
    nop                                           ; $5ab3: $00
    nop                                           ; $5ab4: $00
    nop                                           ; $5ab5: $00
    nop                                           ; $5ab6: $00
    nop                                           ; $5ab7: $00
    nop                                           ; $5ab8: $00
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    nop                                           ; $5abb: $00
    nop                                           ; $5abc: $00
    nop                                           ; $5abd: $00
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    ldh a, [$30]                                  ; $5ac0: $f0 $30
    ld hl, sp+$38                                 ; $5ac2: $f8 $38
    ld hl, sp+$18                                 ; $5ac4: $f8 $18
    ld hl, sp+$18                                 ; $5ac6: $f8 $18
    db $fc                                        ; $5ac8: $fc
    inc c                                         ; $5ac9: $0c
    db $fc                                        ; $5aca: $fc
    inc c                                         ; $5acb: $0c
    rst $38                                       ; $5acc: $ff
    rrca                                          ; $5acd: $0f
    rst $38                                       ; $5ace: $ff
    rlca                                          ; $5acf: $07
    nop                                           ; $5ad0: $00
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    nop                                           ; $5ad5: $00
    nop                                           ; $5ad6: $00
    nop                                           ; $5ad7: $00
    nop                                           ; $5ad8: $00
    nop                                           ; $5ad9: $00
    ld h, e                                       ; $5ada: $63
    ld h, e                                       ; $5adb: $63
    rst $38                                       ; $5adc: $ff
    rst $38                                       ; $5add: $ff
    rst $38                                       ; $5ade: $ff
    cp h                                          ; $5adf: $bc
    ld [$0008], sp                                ; $5ae0: $08 $08 $00
    nop                                           ; $5ae3: $00
    nop                                           ; $5ae4: $00
    nop                                           ; $5ae5: $00
    nop                                           ; $5ae6: $00
    nop                                           ; $5ae7: $00
    nop                                           ; $5ae8: $00
    nop                                           ; $5ae9: $00
    sbc a                                         ; $5aea: $9f
    sbc a                                         ; $5aeb: $9f
    rst $38                                       ; $5aec: $ff
    rst $38                                       ; $5aed: $ff
    rst $38                                       ; $5aee: $ff
    ld [hl], b                                    ; $5aef: $70
    ld [$0008], sp                                ; $5af0: $08 $08 $00
    nop                                           ; $5af3: $00
    nop                                           ; $5af4: $00
    nop                                           ; $5af5: $00
    nop                                           ; $5af6: $00
    nop                                           ; $5af7: $00
    nop                                           ; $5af8: $00

jr_04b_5af9:
    nop                                           ; $5af9: $00
    sbc a                                         ; $5afa: $9f
    sbc a                                         ; $5afb: $9f
    rst $38                                       ; $5afc: $ff
    rst $38                                       ; $5afd: $ff
    rst $38                                       ; $5afe: $ff
    pop af                                        ; $5aff: $f1
    inc b                                         ; $5b00: $04
    inc b                                         ; $5b01: $04
    nop                                           ; $5b02: $00
    nop                                           ; $5b03: $00
    nop                                           ; $5b04: $00
    nop                                           ; $5b05: $00
    nop                                           ; $5b06: $00
    nop                                           ; $5b07: $00
    nop                                           ; $5b08: $00
    nop                                           ; $5b09: $00
    inc a                                         ; $5b0a: $3c
    inc a                                         ; $5b0b: $3c
    rst $38                                       ; $5b0c: $ff
    rst $38                                       ; $5b0d: $ff
    rst $38                                       ; $5b0e: $ff
    rst $20                                       ; $5b0f: $e7
    nop                                           ; $5b10: $00
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    nop                                           ; $5b14: $00
    nop                                           ; $5b15: $00
    nop                                           ; $5b16: $00
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    nop                                           ; $5b19: $00
    and $e6                                       ; $5b1a: $e6 $e6
    rst $38                                       ; $5b1c: $ff
    rst $38                                       ; $5b1d: $ff
    rst $38                                       ; $5b1e: $ff
    cp l                                          ; $5b1f: $bd
    rrca                                          ; $5b20: $0f
    inc c                                         ; $5b21: $0c
    rra                                           ; $5b22: $1f
    jr jr_04b_5b44                                ; $5b23: $18 $1f

    jr jr_04b_5b46                                ; $5b25: $18 $1f

    jr jr_04b_5b68                                ; $5b27: $18 $3f

    jr nc, jr_04b_5b6a                            ; $5b29: $30 $3f

    jr nc, @+$01                                  ; $5b2b: $30 $ff

    ldh a, [rIE]                                  ; $5b2d: $f0 $ff
    ldh [$fe], a                                  ; $5b2f: $e0 $fe
    ld b, $ff                                     ; $5b31: $06 $ff
    inc bc                                        ; $5b33: $03
    rst $38                                       ; $5b34: $ff
    ld bc, $01ff                                  ; $5b35: $01 $ff $01
    rst $38                                       ; $5b38: $ff
    nop                                           ; $5b39: $00
    rst $38                                       ; $5b3a: $ff
    nop                                           ; $5b3b: $00
    rst $38                                       ; $5b3c: $ff
    nop                                           ; $5b3d: $00
    rst $38                                       ; $5b3e: $ff
    nop                                           ; $5b3f: $00
    ld c, b                                       ; $5b40: $48
    ld c, b                                       ; $5b41: $48
    nop                                           ; $5b42: $00
    nop                                           ; $5b43: $00

jr_04b_5b44:
    nop                                           ; $5b44: $00
    nop                                           ; $5b45: $00

jr_04b_5b46:
    add b                                         ; $5b46: $80
    add b                                         ; $5b47: $80
    add b                                         ; $5b48: $80
    add b                                         ; $5b49: $80
    call z, $ffcc                                 ; $5b4a: $cc $cc $ff
    ld a, a                                       ; $5b4d: $7f
    rst $38                                       ; $5b4e: $ff
    inc sp                                        ; $5b4f: $33
    ld [hl+], a                                   ; $5b50: $22
    ld [hl+], a                                   ; $5b51: $22
    ld [bc], a                                    ; $5b52: $02
    ld [bc], a                                    ; $5b53: $02
    nop                                           ; $5b54: $00
    nop                                           ; $5b55: $00
    nop                                           ; $5b56: $00
    nop                                           ; $5b57: $00
    nop                                           ; $5b58: $00
    nop                                           ; $5b59: $00
    ld h, a                                       ; $5b5a: $67
    ld h, a                                       ; $5b5b: $67
    rst $38                                       ; $5b5c: $ff
    rst $38                                       ; $5b5d: $ff
    rst $38                                       ; $5b5e: $ff
    sbc b                                         ; $5b5f: $98
    ld b, h                                       ; $5b60: $44
    ld b, h                                       ; $5b61: $44
    inc b                                         ; $5b62: $04
    inc b                                         ; $5b63: $04
    nop                                           ; $5b64: $00
    nop                                           ; $5b65: $00
    nop                                           ; $5b66: $00
    nop                                           ; $5b67: $00

jr_04b_5b68:
    nop                                           ; $5b68: $00
    nop                                           ; $5b69: $00

jr_04b_5b6a:
    rst $08                                       ; $5b6a: $cf
    rst $08                                       ; $5b6b: $cf
    rst $38                                       ; $5b6c: $ff
    rst $38                                       ; $5b6d: $ff
    rst $38                                       ; $5b6e: $ff
    jr nc, jr_04b_5af9                            ; $5b6f: $30 $88

    adc b                                         ; $5b71: $88
    ld [$0008], sp                                ; $5b72: $08 $08 $00
    nop                                           ; $5b75: $00
    nop                                           ; $5b76: $00
    nop                                           ; $5b77: $00
    nop                                           ; $5b78: $00
    nop                                           ; $5b79: $00
    add hl, sp                                    ; $5b7a: $39
    add hl, sp                                    ; $5b7b: $39
    rst $38                                       ; $5b7c: $ff
    rst $38                                       ; $5b7d: $ff
    rst $38                                       ; $5b7e: $ff
    add $93                                       ; $5b7f: $c6 $93
    sub e                                         ; $5b81: $93
    nop                                           ; $5b82: $00
    nop                                           ; $5b83: $00
    nop                                           ; $5b84: $00
    nop                                           ; $5b85: $00
    nop                                           ; $5b86: $00
    nop                                           ; $5b87: $00
    nop                                           ; $5b88: $00
    nop                                           ; $5b89: $00
    call z, $ffcc                                 ; $5b8a: $cc $cc $ff
    rst $38                                       ; $5b8d: $ff
    rst $38                                       ; $5b8e: $ff
    inc sp                                        ; $5b8f: $33
    ccf                                           ; $5b90: $3f
    jr nc, @+$41                                  ; $5b91: $30 $3f

    jr nz, jr_04b_5c14                            ; $5b93: $20 $7f

    ld h, b                                       ; $5b95: $60
    ld a, a                                       ; $5b96: $7f
    ld h, b                                       ; $5b97: $60
    ld a, a                                       ; $5b98: $7f
    ld b, b                                       ; $5b99: $40
    rst $38                                       ; $5b9a: $ff
    ret nz                                        ; $5b9b: $c0

    rst $38                                       ; $5b9c: $ff
    ret nz                                        ; $5b9d: $c0

    rst $38                                       ; $5b9e: $ff
    add b                                         ; $5b9f: $80
    nop                                           ; $5ba0: $00
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    nop                                           ; $5ba4: $00
    nop                                           ; $5ba5: $00
    nop                                           ; $5ba6: $00
    nop                                           ; $5ba7: $00
    nop                                           ; $5ba8: $00
    nop                                           ; $5ba9: $00
    nop                                           ; $5baa: $00
    nop                                           ; $5bab: $00
    nop                                           ; $5bac: $00
    nop                                           ; $5bad: $00
    nop                                           ; $5bae: $00
    nop                                           ; $5baf: $00
    nop                                           ; $5bb0: $00
    nop                                           ; $5bb1: $00
    nop                                           ; $5bb2: $00
    nop                                           ; $5bb3: $00
    nop                                           ; $5bb4: $00
    nop                                           ; $5bb5: $00
    nop                                           ; $5bb6: $00
    nop                                           ; $5bb7: $00
    nop                                           ; $5bb8: $00
    nop                                           ; $5bb9: $00
    nop                                           ; $5bba: $00
    nop                                           ; $5bbb: $00
    nop                                           ; $5bbc: $00
    nop                                           ; $5bbd: $00
    nop                                           ; $5bbe: $00
    nop                                           ; $5bbf: $00
    rst $38                                       ; $5bc0: $ff
    inc bc                                        ; $5bc1: $03
    db $fc                                        ; $5bc2: $fc
    inc b                                         ; $5bc3: $04
    db $fc                                        ; $5bc4: $fc
    ld [hl], h                                    ; $5bc5: $74
    sbc h                                         ; $5bc6: $9c
    sbc h                                         ; $5bc7: $9c
    adc h                                         ; $5bc8: $8c
    adc h                                         ; $5bc9: $8c
    add $c6                                       ; $5bca: $c6 $c6

jr_04b_5bcc:
    and $66                                       ; $5bcc: $e6 $66
    ld a, [c]                                     ; $5bce: $f2
    ld [hl-], a                                   ; $5bcf: $32
    rst $38                                       ; $5bd0: $ff
    ld b, $f9                                     ; $5bd1: $06 $f9
    adc c                                         ; $5bd3: $89
    ld sp, hl                                     ; $5bd4: $f9
    adc c                                         ; $5bd5: $89
    ld sp, hl                                     ; $5bd6: $f9
    reti                                          ; $5bd7: $d9


    ld [hl], e                                    ; $5bd8: $73
    ld d, e                                       ; $5bd9: $53
    ld [hl], e                                    ; $5bda: $73
    ld d, d                                       ; $5bdb: $52
    ld h, a                                       ; $5bdc: $67
    ld h, a                                       ; $5bdd: $67
    ld h, [hl]                                    ; $5bde: $66
    ld h, [hl]                                    ; $5bdf: $66
    rst $38                                       ; $5be0: $ff
    nop                                           ; $5be1: $00
    rst $38                                       ; $5be2: $ff
    jr jr_04b_5bcc                                ; $5be3: $18 $e7

    inc h                                         ; $5be5: $24
    rst $20                                       ; $5be6: $e7
    ld h, h                                       ; $5be7: $64
    rst $08                                       ; $5be8: $cf
    ld c, h                                       ; $5be9: $4c
    rst $08                                       ; $5bea: $cf
    ret                                           ; $5beb: $c9


    rst $18                                       ; $5bec: $df
    rst $18                                       ; $5bed: $df
    ld e, c                                       ; $5bee: $59
    ld e, c                                       ; $5bef: $59
    rst $38                                       ; $5bf0: $ff
    nop                                           ; $5bf1: $00
    rst $38                                       ; $5bf2: $ff
    inc bc                                        ; $5bf3: $03
    db $fc                                        ; $5bf4: $fc
    inc b                                         ; $5bf5: $04
    db $fc                                        ; $5bf6: $fc
    inc b                                         ; $5bf7: $04
    db $fc                                        ; $5bf8: $fc
    inc b                                         ; $5bf9: $04
    db $fc                                        ; $5bfa: $fc
    call nz, Call_000_3e3e                        ; $5bfb: $c4 $3e $3e
    ld h, $26                                     ; $5bfe: $26 $26
    rst $38                                       ; $5c00: $ff
    ld b, $f9                                     ; $5c01: $06 $f9
    add hl, bc                                    ; $5c03: $09
    ld sp, hl                                     ; $5c04: $f9
    adc c                                         ; $5c05: $89
    di                                            ; $5c06: $f3
    sub e                                         ; $5c07: $93
    di                                            ; $5c08: $f3
    sub d                                         ; $5c09: $92
    rst $20                                       ; $5c0a: $e7
    and $67                                       ; $5c0b: $e6 $67
    ld h, h                                       ; $5c0d: $64
    ld h, a                                       ; $5c0e: $67
    ld h, h                                       ; $5c0f: $64
    rst $38                                       ; $5c10: $ff
    nop                                           ; $5c11: $00
    rst $38                                       ; $5c12: $ff
    nop                                           ; $5c13: $00

jr_04b_5c14:
    rst $38                                       ; $5c14: $ff
    ld bc, $19ff                                  ; $5c15: $01 $ff $19
    rst $30                                       ; $5c18: $f7
    dec d                                         ; $5c19: $15
    di                                            ; $5c1a: $f3
    inc de                                        ; $5c1b: $13
    ld sp, hl                                     ; $5c1c: $f9
    add hl, bc                                    ; $5c1d: $09
    ld sp, hl                                     ; $5c1e: $f9
    add hl, bc                                    ; $5c1f: $09
    rst $38                                       ; $5c20: $ff
    nop                                           ; $5c21: $00
    rst $38                                       ; $5c22: $ff
    ld b, $fb                                     ; $5c23: $06 $fb
    adc d                                         ; $5c25: $8a
    ld [hl], e                                    ; $5c26: $73
    ld d, d                                       ; $5c27: $52
    ld [hl], a                                    ; $5c28: $77
    ld d, h                                       ; $5c29: $54
    ld [hl], a                                    ; $5c2a: $77
    ld d, h                                       ; $5c2b: $54
    daa                                           ; $5c2c: $27
    daa                                           ; $5c2d: $27

jr_04b_5c2e:
    dec h                                         ; $5c2e: $25
    dec h                                         ; $5c2f: $25
    rst $38                                       ; $5c30: $ff
    nop                                           ; $5c31: $00
    rst $38                                       ; $5c32: $ff
    nop                                           ; $5c33: $00
    rst $38                                       ; $5c34: $ff
    jr nc, @-$1f                                  ; $5c35: $30 $df

    ld d, b                                       ; $5c37: $50
    rst $18                                       ; $5c38: $df
    ld d, d                                       ; $5c39: $52
    sbc l                                         ; $5c3a: $9d
    sub l                                         ; $5c3b: $95
    cp h                                          ; $5c3c: $bc
    cp h                                          ; $5c3d: $bc
    inc h                                         ; $5c3e: $24
    inc h                                         ; $5c3f: $24
    rst $38                                       ; $5c40: $ff
    nop                                           ; $5c41: $00
    rst $38                                       ; $5c42: $ff
    nop                                           ; $5c43: $00
    rst $38                                       ; $5c44: $ff
    jr jr_04b_5c2e                                ; $5c45: $18 $e7

    dec h                                         ; $5c47: $25
    rst $20                                       ; $5c48: $e7
    dec h                                         ; $5c49: $25
    or $76                                        ; $5c4a: $f6 $76
    sub d                                         ; $5c4c: $92
    sub d                                         ; $5c4d: $92
    sub d                                         ; $5c4e: $92
    sub d                                         ; $5c4f: $92
    rst $38                                       ; $5c50: $ff
    nop                                           ; $5c51: $00
    rst $38                                       ; $5c52: $ff
    ld b, b                                       ; $5c53: $40
    cp a                                          ; $5c54: $bf
    and b                                         ; $5c55: $a0
    ccf                                           ; $5c56: $3f
    jr nz, jr_04b_5cd8                            ; $5c57: $20 $7f

    ld b, b                                       ; $5c59: $40
    ld a, a                                       ; $5c5a: $7f
    ld b, b                                       ; $5c5b: $40
    ld a, a                                       ; $5c5c: $7f
    ld e, b                                       ; $5c5d: $58
    rst $28                                       ; $5c5e: $ef
    xor b                                         ; $5c5f: $a8
    rst $38                                       ; $5c60: $ff
    nop                                           ; $5c61: $00
    rst $38                                       ; $5c62: $ff
    nop                                           ; $5c63: $00
    rst $38                                       ; $5c64: $ff
    nop                                           ; $5c65: $00
    rst $38                                       ; $5c66: $ff
    nop                                           ; $5c67: $00
    rst $38                                       ; $5c68: $ff
    nop                                           ; $5c69: $00
    rst $38                                       ; $5c6a: $ff
    inc bc                                        ; $5c6b: $03
    cp $02                                        ; $5c6c: $fe $02
    rst $38                                       ; $5c6e: $ff
    ld bc, $00ff                                  ; $5c6f: $01 $ff $00
    rst $38                                       ; $5c72: $ff
    nop                                           ; $5c73: $00
    rst $38                                       ; $5c74: $ff
    nop                                           ; $5c75: $00
    rst $38                                       ; $5c76: $ff
    nop                                           ; $5c77: $00
    rst $38                                       ; $5c78: $ff
    ld bc, $62fe                                  ; $5c79: $01 $fe $62
    db $dd                                        ; $5c7c: $dd
    push de                                       ; $5c7d: $d5
    ld c, l                                       ; $5c7e: $4d
    ld c, l                                       ; $5c7f: $4d
    rst $38                                       ; $5c80: $ff
    nop                                           ; $5c81: $00
    rst $38                                       ; $5c82: $ff
    nop                                           ; $5c83: $00
    rst $38                                       ; $5c84: $ff
    nop                                           ; $5c85: $00
    rst $38                                       ; $5c86: $ff
    nop                                           ; $5c87: $00
    rst $38                                       ; $5c88: $ff
    add b                                         ; $5c89: $80
    rst $38                                       ; $5c8a: $ff
    or b                                          ; $5c8b: $b0
    rst $28                                       ; $5c8c: $ef
    xor $dd                                       ; $5c8d: $ee $dd
    ld d, l                                       ; $5c8f: $55
    rst $38                                       ; $5c90: $ff
    nop                                           ; $5c91: $00
    rst $38                                       ; $5c92: $ff
    nop                                           ; $5c93: $00
    rst $38                                       ; $5c94: $ff
    nop                                           ; $5c95: $00
    rst $38                                       ; $5c96: $ff
    nop                                           ; $5c97: $00
    rst $38                                       ; $5c98: $ff
    ld bc, $62fe                                  ; $5c99: $01 $fe $62
    db $dd                                        ; $5c9c: $dd
    ld d, l                                       ; $5c9d: $55
    db $ed                                        ; $5c9e: $ed
    ld l, l                                       ; $5c9f: $6d
    rst $38                                       ; $5ca0: $ff
    nop                                           ; $5ca1: $00
    rst $38                                       ; $5ca2: $ff
    nop                                           ; $5ca3: $00
    rst $38                                       ; $5ca4: $ff
    nop                                           ; $5ca5: $00
    rst $38                                       ; $5ca6: $ff
    nop                                           ; $5ca7: $00
    rst $38                                       ; $5ca8: $ff
    add b                                         ; $5ca9: $80
    rst $38                                       ; $5caa: $ff
    add b                                         ; $5cab: $80
    rst $38                                       ; $5cac: $ff
    nop                                           ; $5cad: $00
    rst $38                                       ; $5cae: $ff
    nop                                           ; $5caf: $00
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    nop                                           ; $5cb2: $00
    nop                                           ; $5cb3: $00
    nop                                           ; $5cb4: $00
    nop                                           ; $5cb5: $00
    nop                                           ; $5cb6: $00
    nop                                           ; $5cb7: $00
    nop                                           ; $5cb8: $00
    nop                                           ; $5cb9: $00
    nop                                           ; $5cba: $00
    nop                                           ; $5cbb: $00
    nop                                           ; $5cbc: $00
    nop                                           ; $5cbd: $00
    nop                                           ; $5cbe: $00
    nop                                           ; $5cbf: $00
    di                                            ; $5cc0: $f3
    ld [hl], e                                    ; $5cc1: $73
    sbc e                                         ; $5cc2: $9b
    sbc e                                         ; $5cc3: $9b
    adc c                                         ; $5cc4: $89
    adc c                                         ; $5cc5: $89
    ret nz                                        ; $5cc6: $c0

    ret nz                                        ; $5cc7: $c0

    ldh [$60], a                                  ; $5cc8: $e0 $60
    ldh [rNR41], a                                ; $5cca: $e0 $20
    pop af                                        ; $5ccc: $f1
    ld sp, $1fff                                  ; $5ccd: $31 $ff $1f
    ld b, h                                       ; $5cd0: $44
    ld b, h                                       ; $5cd1: $44
    ld c, h                                       ; $5cd2: $4c
    ld c, h                                       ; $5cd3: $4c
    ld c, c                                       ; $5cd4: $49
    ld c, c                                       ; $5cd5: $49
    nop                                           ; $5cd6: $00
    nop                                           ; $5cd7: $00

jr_04b_5cd8:
    nop                                           ; $5cd8: $00
    nop                                           ; $5cd9: $00
    nop                                           ; $5cda: $00
    nop                                           ; $5cdb: $00
    sbc c                                         ; $5cdc: $99
    sbc c                                         ; $5cdd: $99
    rst $38                                       ; $5cde: $ff
    rst $38                                       ; $5cdf: $ff
    or e                                          ; $5ce0: $b3
    or e                                          ; $5ce1: $b3
    db $e3                                        ; $5ce2: $e3
    db $e3                                        ; $5ce3: $e3
    inc h                                         ; $5ce4: $24
    inc h                                         ; $5ce5: $24
    nop                                           ; $5ce6: $00
    nop                                           ; $5ce7: $00
    nop                                           ; $5ce8: $00
    nop                                           ; $5ce9: $00
    nop                                           ; $5cea: $00
    nop                                           ; $5ceb: $00
    rst $20                                       ; $5cec: $e7
    rst $20                                       ; $5ced: $e7
    rst $38                                       ; $5cee: $ff
    rst $38                                       ; $5cef: $ff
    ld [hl+], a                                   ; $5cf0: $22
    ld [hl+], a                                   ; $5cf1: $22
    ld [de], a                                    ; $5cf2: $12
    ld [de], a                                    ; $5cf3: $12
    sub d                                         ; $5cf4: $92
    sub d                                         ; $5cf5: $92
    nop                                           ; $5cf6: $00
    nop                                           ; $5cf7: $00
    nop                                           ; $5cf8: $00
    nop                                           ; $5cf9: $00
    nop                                           ; $5cfa: $00
    nop                                           ; $5cfb: $00
    dec sp                                        ; $5cfc: $3b
    dec sp                                        ; $5cfd: $3b
    rst $38                                       ; $5cfe: $ff
    rst $38                                       ; $5cff: $ff
    ld c, a                                       ; $5d00: $4f
    ld c, h                                       ; $5d01: $4c
    ld c, a                                       ; $5d02: $4f
    ld c, [hl]                                    ; $5d03: $4e
    ld c, c                                       ; $5d04: $49
    ld c, c                                       ; $5d05: $49
    ld bc, $0301                                  ; $5d06: $01 $01 $03
    inc bc                                        ; $5d09: $03
    inc bc                                        ; $5d0a: $03
    ld [bc], a                                    ; $5d0b: $02
    or a                                          ; $5d0c: $b7
    or [hl]                                       ; $5d0d: $b6
    rst $38                                       ; $5d0e: $ff
    db $fc                                        ; $5d0f: $fc
    db $fc                                        ; $5d10: $fc
    inc a                                         ; $5d11: $3c
    db $e4                                        ; $5d12: $e4
    inc h                                         ; $5d13: $24
    ld a, [c]                                     ; $5d14: $f2
    ld [de], a                                    ; $5d15: $12
    ld hl, sp+$08                                 ; $5d16: $f8 $08
    ld hl, sp+$08                                 ; $5d18: $f8 $08
    db $fc                                        ; $5d1a: $fc
    inc b                                         ; $5d1b: $04
    db $fd                                        ; $5d1c: $fd
    dec b                                         ; $5d1d: $05
    rst $38                                       ; $5d1e: $ff
    inc bc                                        ; $5d1f: $03
    xor c                                         ; $5d20: $a9
    xor c                                         ; $5d21: $a9
    xor c                                         ; $5d22: $a9
    xor c                                         ; $5d23: $a9
    adc c                                         ; $5d24: $89
    adc c                                         ; $5d25: $89
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    nop                                           ; $5d2b: $00
    sub e                                         ; $5d2c: $93
    sub e                                         ; $5d2d: $93
    rst $38                                       ; $5d2e: $ff
    rst $38                                       ; $5d2f: $ff
    ld c, [hl]                                    ; $5d30: $4e
    ld c, [hl]                                    ; $5d31: $4e
    jp z, Jump_04b_52ca                           ; $5d32: $ca $ca $52

    ld d, d                                       ; $5d35: $52
    nop                                           ; $5d36: $00
    nop                                           ; $5d37: $00
    nop                                           ; $5d38: $00
    nop                                           ; $5d39: $00
    nop                                           ; $5d3a: $00
    nop                                           ; $5d3b: $00
    ld [hl-], a                                   ; $5d3c: $32
    ld [hl-], a                                   ; $5d3d: $32
    rst $38                                       ; $5d3e: $ff
    rst $38                                       ; $5d3f: $ff
    ld c, d                                       ; $5d40: $4a
    ld c, d                                       ; $5d41: $4a
    ld c, d                                       ; $5d42: $4a
    ld c, d                                       ; $5d43: $4a
    ld c, d                                       ; $5d44: $4a
    ld c, d                                       ; $5d45: $4a
    nop                                           ; $5d46: $00
    nop                                           ; $5d47: $00
    nop                                           ; $5d48: $00
    nop                                           ; $5d49: $00
    nop                                           ; $5d4a: $00
    nop                                           ; $5d4b: $00
    ld h, [hl]                                    ; $5d4c: $66
    ld h, [hl]                                    ; $5d4d: $66
    rst $38                                       ; $5d4e: $ff
    rst $38                                       ; $5d4f: $ff
    rst $08                                       ; $5d50: $cf
    ret z                                         ; $5d51: $c8

    sbc a                                         ; $5d52: $9f
    sub b                                         ; $5d53: $90
    sbc a                                         ; $5d54: $9f
    sub b                                         ; $5d55: $90
    cp a                                          ; $5d56: $bf
    and b                                         ; $5d57: $a0
    ccf                                           ; $5d58: $3f
    jr nz, @+$41                                  ; $5d59: $20 $3f

    jr nz, @+$41                                  ; $5d5b: $20 $3f

    jr nz, @+$01                                  ; $5d5d: $20 $ff

    ret nz                                        ; $5d5f: $c0

    rst $38                                       ; $5d60: $ff
    ld bc, $03ff                                  ; $5d61: $01 $ff $03
    cp $02                                        ; $5d64: $fe $02
    rst $38                                       ; $5d66: $ff
    inc bc                                        ; $5d67: $03
    rst $38                                       ; $5d68: $ff
    ld bc, $00ff                                  ; $5d69: $01 $ff $00
    rst $38                                       ; $5d6c: $ff
    nop                                           ; $5d6d: $00
    rst $38                                       ; $5d6e: $ff
    nop                                           ; $5d6f: $00
    ld l, c                                       ; $5d70: $69
    ld l, c                                       ; $5d71: $69
    xor e                                         ; $5d72: $ab
    xor e                                         ; $5d73: $ab
    xor d                                         ; $5d74: $aa
    xor d                                         ; $5d75: $aa
    ld b, d                                       ; $5d76: $42
    ld b, d                                       ; $5d77: $42
    nop                                           ; $5d78: $00
    nop                                           ; $5d79: $00
    add b                                         ; $5d7a: $80
    add b                                         ; $5d7b: $80
    sub c                                         ; $5d7c: $91
    sub c                                         ; $5d7d: $91
    rst $38                                       ; $5d7e: $ff
    ld a, a                                       ; $5d7f: $7f
    db $dd                                        ; $5d80: $dd
    db $dd                                        ; $5d81: $dd
    ld d, h                                       ; $5d82: $54
    ld d, h                                       ; $5d83: $54
    xor $ee                                       ; $5d84: $ee $ee
    xor d                                         ; $5d86: $aa
    xor d                                         ; $5d87: $aa
    nop                                           ; $5d88: $00
    nop                                           ; $5d89: $00
    nop                                           ; $5d8a: $00
    nop                                           ; $5d8b: $00
    adc e                                         ; $5d8c: $8b
    adc e                                         ; $5d8d: $8b
    rst $38                                       ; $5d8e: $ff
    rst $38                                       ; $5d8f: $ff
    xor c                                         ; $5d90: $a9
    xor c                                         ; $5d91: $a9
    xor e                                         ; $5d92: $ab
    xor e                                         ; $5d93: $ab
    xor d                                         ; $5d94: $aa
    xor d                                         ; $5d95: $aa
    adc d                                         ; $5d96: $8a
    adc d                                         ; $5d97: $8a
    ld bc, $0101                                  ; $5d98: $01 $01 $01
    ld bc, $1919                                  ; $5d9b: $01 $19 $19
    rst $38                                       ; $5d9e: $ff
    cp $ff                                        ; $5d9f: $fe $ff
    ret nz                                        ; $5da1: $c0

    ld a, a                                       ; $5da2: $7f
    ld b, b                                       ; $5da3: $40
    rst $38                                       ; $5da4: $ff
    add b                                         ; $5da5: $80
    rst $38                                       ; $5da6: $ff
    add b                                         ; $5da7: $80
    rst $38                                       ; $5da8: $ff
    nop                                           ; $5da9: $00
    rst $38                                       ; $5daa: $ff
    nop                                           ; $5dab: $00
    rst $38                                       ; $5dac: $ff
    nop                                           ; $5dad: $00
    rst $38                                       ; $5dae: $ff
    nop                                           ; $5daf: $00
    nop                                           ; $5db0: $00
    nop                                           ; $5db1: $00

jr_04b_5db2:
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
    rst $38                                       ; $5dc0: $ff
    dec h                                         ; $5dc1: $25
    jp c, $eb5a                                   ; $5dc2: $da $5a $eb

    dec hl                                        ; $5dc5: $2b
    db $ed                                        ; $5dc6: $ed
    dec l                                         ; $5dc7: $2d
    push de                                       ; $5dc8: $d5
    ld d, l                                       ; $5dc9: $55
    ldh [rNR41], a                                ; $5dca: $e0 $20
    ldh a, [rNR10]                                ; $5dcc: $f0 $10
    rst $38                                       ; $5dce: $ff
    rrca                                          ; $5dcf: $0f
    rst $38                                       ; $5dd0: $ff
    jr nz, jr_04b_5db2                            ; $5dd1: $20 $df

    push de                                       ; $5dd3: $d5
    ld e, d                                       ; $5dd4: $5a
    ld e, d                                       ; $5dd5: $5a
    ld d, l                                       ; $5dd6: $55
    ld d, l                                       ; $5dd7: $55
    dec b                                         ; $5dd8: $05
    dec b                                         ; $5dd9: $05
    nop                                           ; $5dda: $00
    nop                                           ; $5ddb: $00
    nop                                           ; $5ddc: $00
    nop                                           ; $5ddd: $00
    rst $38                                       ; $5dde: $ff
    rst $38                                       ; $5ddf: $ff
    rst $38                                       ; $5de0: $ff
    sub b                                         ; $5de1: $90
    ld l, a                                       ; $5de2: $6f
    ld l, b                                       ; $5de3: $68
    xor a                                         ; $5de4: $af
    xor h                                         ; $5de5: $ac
    db $db                                        ; $5de6: $db
    jp c, $5457                                   ; $5de7: $da $57 $54

    rlca                                          ; $5dea: $07
    inc b                                         ; $5deb: $04
    rrca                                          ; $5dec: $0f
    ld [$f0ff], sp                                ; $5ded: $08 $ff $f0
    rst $38                                       ; $5df0: $ff
    nop                                           ; $5df1: $00
    rst $38                                       ; $5df2: $ff
    nop                                           ; $5df3: $00
    rst $38                                       ; $5df4: $ff
    nop                                           ; $5df5: $00
    rst $38                                       ; $5df6: $ff
    ld [bc], a                                    ; $5df7: $02
    db $fd                                        ; $5df8: $fd
    dec b                                         ; $5df9: $05
    db $fd                                        ; $5dfa: $fd
    dec b                                         ; $5dfb: $05
    cp $02                                        ; $5dfc: $fe $02
    rst $38                                       ; $5dfe: $ff
    ld bc, $00ff                                  ; $5dff: $01 $ff $00
    rst $38                                       ; $5e02: $ff
    nop                                           ; $5e03: $00
    rst $38                                       ; $5e04: $ff
    ld b, b                                       ; $5e05: $40
    cp a                                          ; $5e06: $bf
    xor l                                         ; $5e07: $ad
    ld a, d                                       ; $5e08: $7a
    ld a, d                                       ; $5e09: $7a
    ld d, [hl]                                    ; $5e0a: $56
    ld d, [hl]                                    ; $5e0b: $56
    nop                                           ; $5e0c: $00
    nop                                           ; $5e0d: $00
    rst $38                                       ; $5e0e: $ff
    rst $38                                       ; $5e0f: $ff
    rst $38                                       ; $5e10: $ff
    nop                                           ; $5e11: $00
    rst $38                                       ; $5e12: $ff
    nop                                           ; $5e13: $00
    rst $38                                       ; $5e14: $ff
    nop                                           ; $5e15: $00
    rst $38                                       ; $5e16: $ff
    ld b, b                                       ; $5e17: $40
    cp a                                          ; $5e18: $bf
    and b                                         ; $5e19: $a0
    cp a                                          ; $5e1a: $bf
    and b                                         ; $5e1b: $a0
    ld a, a                                       ; $5e1c: $7f
    ld b, b                                       ; $5e1d: $40
    rst $38                                       ; $5e1e: $ff
    add b                                         ; $5e1f: $80
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

Call_04b_5f40:
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

Jump_04b_5fc2:
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
    nop                                           ; $5ffb: $00
    nop                                           ; $5ffc: $00
    nop                                           ; $5ffd: $00
    nop                                           ; $5ffe: $00
    nop                                           ; $5fff: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    nop                                           ; $600a: $00
    nop                                           ; $600b: $00
    nop                                           ; $600c: $00
    nop                                           ; $600d: $00
    nop                                           ; $600e: $00
    nop                                           ; $600f: $00
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    nop                                           ; $6019: $00
    nop                                           ; $601a: $00
    nop                                           ; $601b: $00
    nop                                           ; $601c: $00
    nop                                           ; $601d: $00
    nop                                           ; $601e: $00
    nop                                           ; $601f: $00
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602a: $00
    nop                                           ; $602b: $00
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    nop                                           ; $602e: $00
    nop                                           ; $602f: $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00

Call_04b_6034:
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    nop                                           ; $603a: $00
    nop                                           ; $603b: $00
    nop                                           ; $603c: $00
    nop                                           ; $603d: $00
    nop                                           ; $603e: $00
    nop                                           ; $603f: $00
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    nop                                           ; $6049: $00
    nop                                           ; $604a: $00
    nop                                           ; $604b: $00
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    nop                                           ; $604e: $00
    nop                                           ; $604f: $00
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    nop                                           ; $6058: $00
    nop                                           ; $6059: $00
    nop                                           ; $605a: $00
    nop                                           ; $605b: $00
    nop                                           ; $605c: $00
    nop                                           ; $605d: $00
    nop                                           ; $605e: $00
    nop                                           ; $605f: $00
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    nop                                           ; $606a: $00
    nop                                           ; $606b: $00
    nop                                           ; $606c: $00
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
    nop                                           ; $607a: $00
    nop                                           ; $607b: $00
    nop                                           ; $607c: $00
    nop                                           ; $607d: $00
    nop                                           ; $607e: $00
    nop                                           ; $607f: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    nop                                           ; $608b: $00
    nop                                           ; $608c: $00
    nop                                           ; $608d: $00
    nop                                           ; $608e: $00
    nop                                           ; $608f: $00
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    nop                                           ; $6099: $00
    nop                                           ; $609a: $00
    nop                                           ; $609b: $00
    nop                                           ; $609c: $00
    nop                                           ; $609d: $00
    nop                                           ; $609e: $00
    nop                                           ; $609f: $00
    nop                                           ; $60a0: $00
    nop                                           ; $60a1: $00
    nop                                           ; $60a2: $00
    nop                                           ; $60a3: $00
    nop                                           ; $60a4: $00
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    nop                                           ; $60a7: $00
    nop                                           ; $60a8: $00
    nop                                           ; $60a9: $00
    nop                                           ; $60aa: $00
    nop                                           ; $60ab: $00
    nop                                           ; $60ac: $00
    nop                                           ; $60ad: $00
    nop                                           ; $60ae: $00
    nop                                           ; $60af: $00
    nop                                           ; $60b0: $00
    nop                                           ; $60b1: $00
    nop                                           ; $60b2: $00
    nop                                           ; $60b3: $00
    nop                                           ; $60b4: $00
    nop                                           ; $60b5: $00
    nop                                           ; $60b6: $00
    nop                                           ; $60b7: $00
    nop                                           ; $60b8: $00
    nop                                           ; $60b9: $00
    nop                                           ; $60ba: $00
    nop                                           ; $60bb: $00
    nop                                           ; $60bc: $00
    nop                                           ; $60bd: $00
    nop                                           ; $60be: $00
    nop                                           ; $60bf: $00
    ld d, e                                       ; $60c0: $53
    ld d, h                                       ; $60c1: $54
    ld d, l                                       ; $60c2: $55
    ld d, b                                       ; $60c3: $50
    ld d, c                                       ; $60c4: $51
    ld d, d                                       ; $60c5: $52
    ld a, [hl-]                                   ; $60c6: $3a
    dec sp                                        ; $60c7: $3b
    inc a                                         ; $60c8: $3c
    dec a                                         ; $60c9: $3d
    ld a, $4a                                     ; $60ca: $3e $4a
    ld c, e                                       ; $60cc: $4b
    ld c, h                                       ; $60cd: $4c
    ld c, l                                       ; $60ce: $4d
    ld c, [hl]                                    ; $60cf: $4e
    dec [hl]                                      ; $60d0: $35
    ld [hl], $37                                  ; $60d1: $36 $37
    jr c, @+$3b                                   ; $60d3: $38 $39

    ld b, l                                       ; $60d5: $45
    ld b, [hl]                                    ; $60d6: $46
    ld b, a                                       ; $60d7: $47
    ld c, b                                       ; $60d8: $48
    ld c, c                                       ; $60d9: $49
    jr nc, jr_04b_610d                            ; $60da: $30 $31

    ld [hl-], a                                   ; $60dc: $32
    inc sp                                        ; $60dd: $33
    inc [hl]                                      ; $60de: $34
    ld b, b                                       ; $60df: $40
    ld b, c                                       ; $60e0: $41
    ld b, d                                       ; $60e1: $42
    ld b, e                                       ; $60e2: $43
    ld b, h                                       ; $60e3: $44
    rlca                                          ; $60e4: $07
    ld [$0a09], sp                                ; $60e5: $08 $09 $0a
    dec bc                                        ; $60e8: $0b
    inc c                                         ; $60e9: $0c
    dec c                                         ; $60ea: $0d
    rla                                           ; $60eb: $17
    jr @+$1b                                      ; $60ec: $18 $19

    ld a, [de]                                    ; $60ee: $1a
    dec de                                        ; $60ef: $1b
    inc e                                         ; $60f0: $1c
    dec e                                         ; $60f1: $1d
    daa                                           ; $60f2: $27
    jr z, jr_04b_611e                             ; $60f3: $28 $29

    ld a, [hl+]                                   ; $60f5: $2a
    dec hl                                        ; $60f6: $2b
    inc l                                         ; $60f7: $2c
    dec l                                         ; $60f8: $2d
    nop                                           ; $60f9: $00
    ld bc, $0302                                  ; $60fa: $01 $02 $03
    inc b                                         ; $60fd: $04
    dec b                                         ; $60fe: $05
    ld b, $10                                     ; $60ff: $06 $10
    ld de, $1312                                  ; $6101: $11 $12 $13
    inc d                                         ; $6104: $14
    dec d                                         ; $6105: $15
    ld d, $20                                     ; $6106: $16 $20
    ld hl, $2322                                  ; $6108: $21 $22 $23
    inc h                                         ; $610b: $24
    dec h                                         ; $610c: $25

jr_04b_610d:
    ld h, $ff                                     ; $610d: $26 $ff
    ld sp, hl                                     ; $610f: $f9
    inc bc                                        ; $6110: $03
    ld bc, $60c0                                  ; $6111: $01 $c0 $60
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    rst $38                                       ; $6116: $ff
    ld sp, hl                                     ; $6117: $f9
    inc bc                                        ; $6118: $03
    ld bc, $60c0                                  ; $6119: $01 $c0 $60
    nop                                           ; $611c: $00
    nop                                           ; $611d: $00

jr_04b_611e:
    rst $38                                       ; $611e: $ff
    ld sp, hl                                     ; $611f: $f9
    inc bc                                        ; $6120: $03
    ld bc, $60c3                                  ; $6121: $01 $c3 $60
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    cp $f1                                        ; $6126: $fe $f1
    dec b                                         ; $6128: $05
    ld [bc], a                                    ; $6129: $02
    add $60                                       ; $612a: $c6 $60
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    cp $f1                                        ; $612e: $fe $f1
    dec b                                         ; $6130: $05
    ld [bc], a                                    ; $6131: $02
    ret nc                                        ; $6132: $d0

    ld h, b                                       ; $6133: $60
    nop                                           ; $6134: $00
    nop                                           ; $6135: $00
    cp $f1                                        ; $6136: $fe $f1
    dec b                                         ; $6138: $05
    ld [bc], a                                    ; $6139: $02
    jp c, JoypadTransitionInterrupt               ; $613a: $da $60 $00

    nop                                           ; $613d: $00
    db $fd                                        ; $613e: $fd
    jp hl                                         ; $613f: $e9


    rlca                                          ; $6140: $07
    inc bc                                        ; $6141: $03
    db $e4                                        ; $6142: $e4
    ld h, b                                       ; $6143: $60
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    db $fd                                        ; $6146: $fd
    jp hl                                         ; $6147: $e9


    rlca                                          ; $6148: $07
    inc bc                                        ; $6149: $03
    ld sp, hl                                     ; $614a: $f9
    ld h, b                                       ; $614b: $60
    nop                                           ; $614c: $00
    nop                                           ; $614d: $00

Call_04b_614e:
    ld hl, $da00                                  ; $614e: $21 $00 $da

jr_04b_6151:
    ld a, [hl+]                                   ; $6151: $2a
    cp $ff                                        ; $6152: $fe $ff
    jr z, jr_04b_6173                             ; $6154: $28 $1d

    ld e, a                                       ; $6156: $5f
    ld a, [hl+]                                   ; $6157: $2a
    ld d, a                                       ; $6158: $57
    ld a, [hl+]                                   ; $6159: $2a
    ld b, a                                       ; $615a: $47
    ld a, e                                       ; $615b: $7b
    cp $03                                        ; $615c: $fe $03
    jr z, jr_04b_6164                             ; $615e: $28 $04

    cp $02                                        ; $6160: $fe $02
    jr nz, jr_04b_6171                            ; $6162: $20 $0d

jr_04b_6164:
    ld a, b                                       ; $6164: $78
    rrca                                          ; $6165: $0f
    rrca                                          ; $6166: $0f
    rrca                                          ; $6167: $0f
    and $07                                       ; $6168: $e6 $07
    ld e, $07                                     ; $616a: $1e $07
    push hl                                       ; $616c: $e5
    call Call_04b_6174                            ; $616d: $cd $74 $61
    pop hl                                        ; $6170: $e1

jr_04b_6171:
    jr jr_04b_6151                                ; $6171: $18 $de

jr_04b_6173:
    ret                                           ; $6173: $c9


Call_04b_6174:
    add a                                         ; $6174: $87
    add a                                         ; $6175: $87
    add a                                         ; $6176: $87
    ld hl, $61e1                                  ; $6177: $21 $e1 $61
    add l                                         ; $617a: $85
    ld l, a                                       ; $617b: $6f
    jr nc, jr_04b_617f                            ; $617c: $30 $01

    inc h                                         ; $617e: $24

jr_04b_617f:
    ld a, [hl+]                                   ; $617f: $2a
    add d                                         ; $6180: $82
    ld d, a                                       ; $6181: $57
    ld a, [hl+]                                   ; $6182: $2a
    add e                                         ; $6183: $83
    ld b, a                                       ; $6184: $47
    ld a, [hl+]                                   ; $6185: $2a
    ld e, a                                       ; $6186: $5f
    ld a, [hl+]                                   ; $6187: $2a
    ld c, a                                       ; $6188: $4f
    ld a, [hl+]                                   ; $6189: $2a
    ld h, [hl]                                    ; $618a: $66
    ld l, a                                       ; $618b: $6f

jr_04b_618c:
    push de                                       ; $618c: $d5

jr_04b_618d:
    ld a, [hl]                                    ; $618d: $7e
    and a                                         ; $618e: $a7
    jr z, jr_04b_61d6                             ; $618f: $28 $45

    bit 7, d                                      ; $6191: $cb $7a
    jr nz, jr_04b_61d6                            ; $6193: $20 $41

    ld a, d                                       ; $6195: $7a
    cp $14                                        ; $6196: $fe $14
    jr nc, jr_04b_61d6                            ; $6198: $30 $3c

    push bc                                       ; $619a: $c5
    push de                                       ; $619b: $d5
    push hl                                       ; $619c: $e5
    ld c, d                                       ; $619d: $4a
    ld l, [hl]                                    ; $619e: $6e
    ld h, $00                                     ; $619f: $26 $00
    add hl, hl                                    ; $61a1: $29
    add hl, hl                                    ; $61a2: $29
    add hl, hl                                    ; $61a3: $29
    add hl, hl                                    ; $61a4: $29
    ld de, $439c                                  ; $61a5: $11 $9c $43
    add hl, de                                    ; $61a8: $19
    ld e, l                                       ; $61a9: $5d
    ld d, h                                       ; $61aa: $54
    ld a, c                                       ; $61ab: $79
    add a                                         ; $61ac: $87
    add a                                         ; $61ad: $87
    add a                                         ; $61ae: $87
    add b                                         ; $61af: $80
    ld l, a                                       ; $61b0: $6f
    ld h, $00                                     ; $61b1: $26 $00
    add hl, hl                                    ; $61b3: $29
    add hl, hl                                    ; $61b4: $29
    add hl, hl                                    ; $61b5: $29
    add hl, hl                                    ; $61b6: $29
    ld bc, $d000                                  ; $61b7: $01 $00 $d0
    add hl, bc                                    ; $61ba: $09
    call Call_04b_622e                            ; $61bb: $cd $2e $62
    call Call_04b_622e                            ; $61be: $cd $2e $62
    call Call_04b_622e                            ; $61c1: $cd $2e $62
    call Call_04b_622e                            ; $61c4: $cd $2e $62
    call Call_04b_622e                            ; $61c7: $cd $2e $62
    call Call_04b_622e                            ; $61ca: $cd $2e $62
    call Call_04b_622e                            ; $61cd: $cd $2e $62
    call Call_04b_622e                            ; $61d0: $cd $2e $62
    pop hl                                        ; $61d3: $e1
    pop de                                        ; $61d4: $d1
    pop bc                                        ; $61d5: $c1

jr_04b_61d6:
    inc hl                                        ; $61d6: $23
    inc d                                         ; $61d7: $14
    dec e                                         ; $61d8: $1d
    jr nz, jr_04b_618d                            ; $61d9: $20 $b2

    pop de                                        ; $61db: $d1
    inc b                                         ; $61dc: $04
    dec c                                         ; $61dd: $0d
    jr nz, jr_04b_618c                            ; $61de: $20 $ac

    ret                                           ; $61e0: $c9


    db $ff, $fe, $03, $03, $9c, $51

    nop                                           ; $61e7: $00
    nop                                           ; $61e8: $00

    db $ff, $fb, $03, $06, $a5, $51

    nop                                           ; $61ef: $00
    nop                                           ; $61f0: $00
    cp $f9                                        ; $61f1: $fe $f9
    dec b                                         ; $61f3: $05
    ld [$51b7], sp                                ; $61f4: $08 $b7 $51
    nop                                           ; $61f7: $00
    nop                                           ; $61f8: $00
    db $fd                                        ; $61f9: $fd
    ld sp, hl                                     ; $61fa: $f9
    rlca                                          ; $61fb: $07
    ld [$51df], sp                                ; $61fc: $08 $df $51
    nop                                           ; $61ff: $00
    nop                                           ; $6200: $00
    db $fc                                        ; $6201: $fc
    ld sp, hl                                     ; $6202: $f9
    add hl, bc                                    ; $6203: $09
    ld [$5217], sp                                ; $6204: $08 $17 $52
    nop                                           ; $6207: $00
    nop                                           ; $6208: $00
    db $fc                                        ; $6209: $fc
    ld sp, hl                                     ; $620a: $f9
    add hl, bc                                    ; $620b: $09
    ld [$525f], sp                                ; $620c: $08 $5f $52
    nop                                           ; $620f: $00
    nop                                           ; $6210: $00
    ei                                            ; $6211: $fb
    ld sp, hl                                     ; $6212: $f9
    dec bc                                        ; $6213: $0b
    ld [$52a7], sp                                ; $6214: $08 $a7 $52
    nop                                           ; $6217: $00
    nop                                           ; $6218: $00
    ei                                            ; $6219: $fb
    ld sp, hl                                     ; $621a: $f9
    dec bc                                        ; $621b: $0b
    ld [$52a7], sp                                ; $621c: $08 $a7 $52
    nop                                           ; $621f: $00
    nop                                           ; $6220: $00

Call_04b_6221:
    ld a, [de]                                    ; $6221: $1a
    ld c, a                                       ; $6222: $4f
    inc de                                        ; $6223: $13
    ld a, [de]                                    ; $6224: $1a
    ld b, a                                       ; $6225: $47
    inc de                                        ; $6226: $13
    push de                                       ; $6227: $d5
    xor c                                         ; $6228: $a9
    ld e, a                                       ; $6229: $5f
    cpl                                           ; $622a: $2f
    ld d, a                                       ; $622b: $57
    jr jr_04b_6239                                ; $622c: $18 $0b

Call_04b_622e:
    ld a, [de]                                    ; $622e: $1a
    ld c, a                                       ; $622f: $4f
    inc de                                        ; $6230: $13
    ld a, [de]                                    ; $6231: $1a
    ld b, a                                       ; $6232: $47
    inc de                                        ; $6233: $13
    push de                                       ; $6234: $d5
    or c                                          ; $6235: $b1
    ld d, a                                       ; $6236: $57
    cpl                                           ; $6237: $2f
    ld e, a                                       ; $6238: $5f

jr_04b_6239:
    ld a, d                                       ; $6239: $7a
    and b                                         ; $623a: $a0
    ld b, a                                       ; $623b: $47
    ld a, d                                       ; $623c: $7a
    and c                                         ; $623d: $a1
    ld c, a                                       ; $623e: $4f
    ld a, [hl]                                    ; $623f: $7e
    and e                                         ; $6240: $a3
    or c                                          ; $6241: $b1
    ld [hl+], a                                   ; $6242: $22
    ld a, [hl]                                    ; $6243: $7e
    and e                                         ; $6244: $a3
    or b                                          ; $6245: $b0
    ld [hl+], a                                   ; $6246: $22
    pop de                                        ; $6247: $d1
    ret                                           ; $6248: $c9


    dec bc                                        ; $6249: $0b
    ld [bc], a                                    ; $624a: $02
    inc bc                                        ; $624b: $03
    rst $38                                       ; $624c: $ff
    ld [$0004], a                                 ; $624d: $ea $04 $00
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    dec bc                                        ; $6252: $0b
    dec b                                         ; $6253: $05
    jr nz, @+$01                                  ; $6254: $20 $ff

    ld [$0006], a                                 ; $6256: $ea $06 $00
    nop                                           ; $6259: $00
    nop                                           ; $625a: $00
    dec bc                                        ; $625b: $0b
    rlca                                          ; $625c: $07
    ld [$eaff], sp                                ; $625d: $08 $ff $ea
    add hl, bc                                    ; $6260: $09
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    ld bc, $ff00                                  ; $6264: $01 $00 $ff
    db $ec                                        ; $6267: $ec
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    nop                                           ; $626a: $00
    ld bc, $ff00                                  ; $626b: $01 $00 $ff
    db $ec                                        ; $626e: $ec
    nop                                           ; $626f: $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    ld bc, $ff00                                  ; $6272: $01 $00 $ff
    db $ec                                        ; $6275: $ec
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    nop                                           ; $6278: $00
    push af                                       ; $6279: $f5
    nop                                           ; $627a: $00
    rst $38                                       ; $627b: $ff
    db $ec                                        ; $627c: $ec
    rst $38                                       ; $627d: $ff
    cp $e0                                        ; $627e: $fe $e0
    ld a, l                                       ; $6280: $7d
    cp $ba                                        ; $6281: $fe $ba
    rst $00                                       ; $6283: $c7
    cp a                                          ; $6284: $bf
    add e                                         ; $6285: $83
    rst $38                                       ; $6286: $ff
    rst $00                                       ; $6287: $c7
    rst $38                                       ; $6288: $ff

jr_04b_6289:
    rst $28                                       ; $6289: $ef
    rst $38                                       ; $628a: $ff
    rst $38                                       ; $628b: $ff
    pop hl                                        ; $628c: $e1
    ret nc                                        ; $628d: $d0

    ld a, a                                       ; $628e: $7f
    rst $28                                       ; $628f: $ef
    sbc a                                         ; $6290: $9f
    rst $38                                       ; $6291: $ff
    and b                                         ; $6292: $a0
    rst $38                                       ; $6293: $ff
    xor a                                         ; $6294: $af
    ldh a, [$fe]                                  ; $6295: $f0 $fe
    db $e3                                        ; $6297: $e3
    pop hl                                        ; $6298: $e1
    rst $38                                       ; $6299: $ff
    rst $18                                       ; $629a: $df
    ldh [$fc], a                                  ; $629b: $e0 $fc
    ld [c], a                                     ; $629d: $e2
    sub $e2                                       ; $629e: $d6 $e2
    di                                            ; $62a0: $f3
    pop hl                                        ; $62a1: $e1
    rlca                                          ; $62a2: $07
    rst $38                                       ; $62a3: $ff
    di                                            ; $62a4: $f3
    rra                                           ; $62a5: $1f
    rst $38                                       ; $62a6: $ff
    dec bc                                        ; $62a7: $0b
    rst $38                                       ; $62a8: $ff
    ei                                            ; $62a9: $fb
    rrca                                          ; $62aa: $0f
    cp $e3                                        ; $62ab: $fe $e3
    ret c                                         ; $62ad: $d8

    push hl                                       ; $62ae: $e5
    ret nc                                        ; $62af: $d0

    push hl                                       ; $62b0: $e5
    inc e                                         ; $62b1: $1c
    add sp, -$1b                                  ; $62b2: $e8 $e5
    ldh [$ed], a                                  ; $62b4: $e0 $ed
    sbc a                                         ; $62b6: $9f
    rst $38                                       ; $62b7: $ff
    ret nz                                        ; $62b8: $c0

    and d                                         ; $62b9: $a2
    ld [c], a                                     ; $62ba: $e2
    cp b                                          ; $62bb: $b8
    rst $20                                       ; $62bc: $e7
    xor b                                         ; $62bd: $a8
    pop hl                                        ; $62be: $e1
    sbc l                                         ; $62bf: $9d
    rst $38                                       ; $62c0: $ff
    cp b                                          ; $62c1: $b8
    db $e4                                        ; $62c2: $e4
    db $eb                                        ; $62c3: $eb
    rra                                           ; $62c4: $1f
    di                                            ; $62c5: $f3
    xor b                                         ; $62c6: $a8
    ldh [$e0], a                                  ; $62c7: $e0 $e0
    db $e3                                        ; $62c9: $e3
    rst $10                                       ; $62ca: $d7
    rst $38                                       ; $62cb: $ff
    jr c, jr_04b_6289                             ; $62cc: $38 $bb

    ld a, h                                       ; $62ce: $7c
    ld l, l                                       ; $62cf: $6d
    cp $c6                                        ; $62d0: $fe $c6
    rst $38                                       ; $62d2: $ff
    add d                                         ; $62d3: $82
    rst $18                                       ; $62d4: $df
    rst $38                                       ; $62d5: $ff
    cp $ff                                        ; $62d6: $fe $ff
    add b                                         ; $62d8: $80
    ld a, a                                       ; $62d9: $7f
    ld h, b                                       ; $62da: $60

jr_04b_62db:
    ldh [$fe], a                                  ; $62db: $e0 $fe
    add d                                         ; $62dd: $82
    rst $38                                       ; $62de: $ff
    rst $38                                       ; $62df: $ff
    add $ff                                       ; $62e0: $c6 $ff
    ld l, h                                       ; $62e2: $6c
    rst $38                                       ; $62e3: $ff
    cp c                                          ; $62e4: $b9
    ld a, [hl]                                    ; $62e5: $7e
    db $d3                                        ; $62e6: $d3
    rst $38                                       ; $62e7: $ff
    inc a                                         ; $62e8: $3c
    rst $20                                       ; $62e9: $e7
    jr jr_04b_62db                                ; $62ea: $18 $ef

    ld e, $da                                     ; $62ec: $1e $da
    ccf                                           ; $62ee: $3f
    or d                                          ; $62ef: $b2
    rst $38                                       ; $62f0: $ff
    ld a, a                                       ; $62f1: $7f
    ld [c], a                                     ; $62f2: $e2
    ld a, a                                       ; $62f3: $7f
    or d                                          ; $62f4: $b2
    ld a, a                                       ; $62f5: $7f
    jp c, $ee3f                                   ; $62f6: $da $3f $ee

    rst $38                                       ; $62f9: $ff
    rra                                           ; $62fa: $1f
    ldh a, [rIF]                                  ; $62fb: $f0 $0f
    rst $30                                       ; $62fd: $f7
    ld a, b                                       ; $62fe: $78
    db $db                                        ; $62ff: $db
    ld a, h                                       ; $6300: $7c
    call Call_04b_7eff                            ; $6301: $cd $ff $7e
    add $7f                                       ; $6304: $c6 $7f
    call z, $d97f                                 ; $6306: $cc $7f $d9
    ld a, [hl]                                    ; $6309: $7e
    di                                            ; $630a: $f3
    rst $30                                       ; $630b: $f7
    ld a, h                                       ; $630c: $7c
    rst $00                                       ; $630d: $c7
    jr c, jr_04b_6360                             ; $630e: $38 $50

    add sp, $0a                                   ; $6310: $e8 $0a
    ld a, [$fa0f]                                 ; $6312: $fa $0f $fa
    db $fd                                        ; $6315: $fd
    dec b                                         ; $6316: $05
    ld b, b                                       ; $6317: $40
    and $0e                                       ; $6318: $e6 $0e
    ld a, [$fe0f]                                 ; $631a: $fa $0f $fe
    rrca                                          ; $631d: $0f
    ld hl, sp-$03                                 ; $631e: $f8 $fd
    rlca                                          ; $6320: $07
    nop                                           ; $6321: $00
    pop af                                        ; $6322: $f1
    cp $7f                                        ; $6323: $fe $7f
    add d                                         ; $6325: $82
    rst $38                                       ; $6326: $ff
    cp d                                          ; $6327: $ba
    rst $38                                       ; $6328: $ff
    rst $18                                       ; $6329: $df
    cp e                                          ; $632a: $bb
    rst $38                                       ; $632b: $ff
    add c                                         ; $632c: $81
    rst $38                                       ; $632d: $ff
    rst $38                                       ; $632e: $ff
    sub b                                         ; $632f: $90
    ldh [$ef], a                                  ; $6330: $e0 $ef
    ldh a, [$f5]                                  ; $6332: $f0 $f5
    cp l                                          ; $6334: $bd
    adc [hl]                                      ; $6335: $8e
    ldh [$ba], a                                  ; $6336: $e0 $ba
    xor $e0                                       ; $6338: $ee $e0
    add d                                         ; $633a: $82
    rst $38                                       ; $633b: $ff
    db $fd                                        ; $633c: $fd
    cp $3e                                        ; $633d: $fe $3e
    ldh [$c1], a                                  ; $633f: $e0 $c1
    db $fd                                        ; $6341: $fd
    ld a, [hl]                                    ; $6342: $7e
    add d                                         ; $6343: $82
    rst $38                                       ; $6344: $ff
    cp [hl]                                       ; $6345: $be
    cp $e0                                        ; $6346: $fe $e0
    ldh a, [$e0]                                  ; $6348: $f0 $e0
    dec c                                         ; $634a: $0d
    ld a, [hl]                                    ; $634b: $7e
    jp nc, $0fe0                                  ; $634c: $d2 $e0 $0f

    ld a, [$ead0]                                 ; $634f: $fa $d0 $ea
    ld [c], a                                     ; $6352: $e2
    pop hl                                        ; $6353: $e1
    call nc, $e0e1                                ; $6354: $d4 $e1 $e0
    pop hl                                        ; $6357: $e1
    ld a, l                                       ; $6358: $7d
    cp $50                                        ; $6359: $fe $50
    ldh [$fe], a                                  ; $635b: $e0 $fe
    ccf                                           ; $635d: $3f
    ld [c], a                                     ; $635e: $e2
    ccf                                           ; $635f: $3f

jr_04b_6360:
    xor $42                                       ; $6360: $ee $42
    ldh [$bf], a                                  ; $6362: $e0 $bf
    xor $ff                                       ; $6364: $ee $ff
    db $eb                                        ; $6366: $eb
    inc a                                         ; $6367: $3c
    ei                                            ; $6368: $fb
    inc a                                         ; $6369: $3c
    ldh [$e7], a                                  ; $636a: $e0 $e7
    ld a, [$ffa7]                                 ; $636c: $fa $a7 $ff
    jp nz, $c07f                                  ; $636f: $c2 $7f $c0

    pop hl                                        ; $6372: $e1
    and b                                         ; $6373: $a0
    push hl                                       ; $6374: $e5
    xor d                                         ; $6375: $aa
    cp $e0                                        ; $6376: $fe $e0
    xor $fe                                       ; $6378: $ee $fe
    and c                                         ; $637a: $a1
    ret nz                                        ; $637b: $c0

    ei                                            ; $637c: $fb
    inc a                                         ; $637d: $3c
    db $eb                                        ; $637e: $eb
    inc a                                         ; $637f: $3c
    db $fd                                        ; $6380: $fd
    ld a, [hl]                                    ; $6381: $7e
    push bc                                       ; $6382: $c5
    db $db                                        ; $6383: $db
    ld a, [hl]                                    ; $6384: $7e
    db $ed                                        ; $6385: $ed
    db $fc                                        ; $6386: $fc
    ldh [$fd], a                                  ; $6387: $e0 $fd
    ld a, [hl]                                    ; $6389: $7e
    ld a, [c]                                     ; $638a: $f2
    and $fe                                       ; $638b: $e6 $fe
    xor e                                         ; $638d: $ab
    rst $18                                       ; $638e: $df
    db $fc                                        ; $638f: $fc
    adc e                                         ; $6390: $8b
    db $fc                                        ; $6391: $fc
    rst $30                                       ; $6392: $f7
    ld a, b                                       ; $6393: $78
    ld [hl], b                                    ; $6394: $70
    pop hl                                        ; $6395: $e1
    cp [hl]                                       ; $6396: $be
    rst $38                                       ; $6397: $ff
    rla                                           ; $6398: $17
    and d                                         ; $6399: $a2
    rst $38                                       ; $639a: $ff
    adc [hl]                                      ; $639b: $8e

jr_04b_639c:
    cp $e0                                        ; $639c: $fe $e0
    and d                                         ; $639e: $a2
    xor $c0                                       ; $639f: $ee $c0
    ret nc                                        ; $63a1: $d0

    db $e3                                        ; $63a2: $e3
    cp $e5                                        ; $63a3: $fe $e5
    db $10                                        ; $63a5: $10
    and b                                         ; $63a6: $a0
    pop hl                                        ; $63a7: $e1
    ld h, b                                       ; $63a8: $60
    ldh [$de], a                                  ; $63a9: $e0 $de
    ret nz                                        ; $63ab: $c0

    or d                                          ; $63ac: $b2
    pop hl                                        ; $63ad: $e1
    xor d                                         ; $63ae: $aa
    ldh [$e2], a                                  ; $63af: $e0 $e2
    ldh a, [$e3]                                  ; $63b1: $f0 $e3
    and b                                         ; $63b3: $a0
    rst $20                                       ; $63b4: $e7
    ldh a, [$5e]                                  ; $63b5: $f0 $5e
    push hl                                       ; $63b7: $e5
    jr nc, jr_04b_639c                            ; $63b8: $30 $e2

    ld b, b                                       ; $63ba: $40
    ldh [$e2], a                                  ; $63bb: $e0 $e2
    db $e3                                        ; $63bd: $e3
    add d                                         ; $63be: $82
    rst $38                                       ; $63bf: $ff
    cp l                                          ; $63c0: $bd
    cp $4f                                        ; $63c1: $fe $4f
    xor a                                         ; $63c3: $af
    ldh a, [$ef]                                  ; $63c4: $f0 $ef
    ldh a, [rSC]                                  ; $63c6: $f0 $02
    push hl                                       ; $63c8: $e5
    ld h, b                                       ; $63c9: $60
    ldh [$7f], a                                  ; $63ca: $e0 $7f
    sbc $c1                                       ; $63cc: $de $c1
    and d                                         ; $63ce: $a2
    nop                                           ; $63cf: $00
    rst $20                                       ; $63d0: $e7
    xor [hl]                                      ; $63d1: $ae
    db $fc                                        ; $63d2: $fc
    and b                                         ; $63d3: $a0
    ldh [$e5], a                                  ; $63d4: $e0 $e5
    inc b                                         ; $63d6: $04
    pop hl                                        ; $63d7: $e1
    ld a, [$c4f0]                                 ; $63d8: $fa $f0 $c4
    ei                                            ; $63db: $fb
    or l                                          ; $63dc: $b5
    inc a                                         ; $63dd: $3c
    ld [hl+], a                                   ; $63de: $22
    db $e3                                        ; $63df: $e3
    xor $18                                       ; $63e0: $ee $18
    ldh [$fe], a                                  ; $63e2: $e0 $fe
    rra                                           ; $63e4: $1f
    ret nz                                        ; $63e5: $c0

    and c                                         ; $63e6: $a1
    xor $38                                       ; $63e7: $ee $38
    inc [hl]                                      ; $63e9: $34
    ld [c], a                                     ; $63ea: $e2
    and b                                         ; $63eb: $a0
    push hl                                       ; $63ec: $e5
    ldh a, [$e3]                                  ; $63ed: $f0 $e3
    cp d                                          ; $63ef: $ba
    rst $38                                       ; $63f0: $ff
    sub d                                         ; $63f1: $92
    ld c, d                                       ; $63f2: $4a
    ret nz                                        ; $63f3: $c0

    ldh a, [$e3]                                  ; $63f4: $f0 $e3
    add hl, hl                                    ; $63f6: $29
    cp $62                                        ; $63f7: $fe $62
    db $e4                                        ; $63f9: $e4
    ldh [$e5], a                                  ; $63fa: $e0 $e5
    cp $e4                                        ; $63fc: $fe $e4
    ld [c], a                                     ; $63fe: $e2
    add $de                                       ; $63ff: $c6 $de
    ldh [$50], a                                  ; $6401: $e0 $50
    db $e3                                        ; $6403: $e3
    db $d3                                        ; $6404: $d3
    cp $ef                                        ; $6405: $fe $ef
    ldh [$c3], a                                  ; $6407: $e0 $c3
    sub b                                         ; $6409: $90
    push bc                                       ; $640a: $c5
    cp $04                                        ; $640b: $fe $04
    ret nz                                        ; $640d: $c0

    and $ff                                       ; $640e: $e6 $ff
    adc c                                         ; $6410: $89
    adc $fe                                       ; $6411: $ce $fe
    and d                                         ; $6413: $a2
    and d                                         ; $6414: $a2
    jp $c286                                      ; $6415: $c3 $86 $c2


    ret nz                                        ; $6418: $c0

    ld b, b                                       ; $6419: $40
    db $e4                                        ; $641a: $e4
    sub [hl]                                      ; $641b: $96
    jp nz, $fe86                                  ; $641c: $c2 $86 $fe

    ld [hl], b                                    ; $641f: $70
    ret nz                                        ; $6420: $c0

    xor [hl]                                      ; $6421: $ae
    di                                            ; $6422: $f3
    xor [hl]                                      ; $6423: $ae
    di                                            ; $6424: $f3
    rst $38                                       ; $6425: $ff
    rst $38                                       ; $6426: $ff
    cp a                                          ; $6427: $bf
    ld [$a0a9], a                                 ; $6428: $ea $a9 $a0
    ld [hl+], a                                   ; $642b: $22
    or h                                          ; $642c: $b4
    ret nz                                        ; $642d: $c0

    ld [$c0b0], a                                 ; $642e: $ea $b0 $c0
    ld [c], a                                     ; $6431: $e2
    cp a                                          ; $6432: $bf
    rst $38                                       ; $6433: $ff
    rst $28                                       ; $6434: $ef
    rst $38                                       ; $6435: $ff
    db $fd                                        ; $6436: $fd
    ld e, $f6                                     ; $6437: $1e $f6
    ldh a, [$e0]                                  ; $6439: $f0 $e0
    or [hl]                                       ; $643b: $b6
    rst $38                                       ; $643c: $ff
    or l                                          ; $643d: $b5
    rrca                                          ; $643e: $0f
    cp $b6                                        ; $643f: $fe $b6
    rst $38                                       ; $6441: $ff
    or d                                          ; $6442: $b2
    sub b                                         ; $6443: $90
    xor c                                         ; $6444: $a9
    ld b, d                                       ; $6445: $42
    and h                                         ; $6446: $a4
    db $e4                                        ; $6447: $e4
    jp $c124                                      ; $6448: $c3 $24 $c1


    adc b                                         ; $644b: $88
    ldh [$e1], a                                  ; $644c: $e0 $e1
    and b                                         ; $644e: $a0
    ldh [rNR14], a                                ; $644f: $e0 $14
    jp nz, Jump_000_1086                          ; $6451: $c2 $86 $10

    add $d4                                       ; $6454: $c6 $d4
    rst $00                                       ; $6456: $c7
    ld e, [hl]                                    ; $6457: $5e
    pop bc                                        ; $6458: $c1
    xor $12                                       ; $6459: $ee $12
    cp $a0                                        ; $645b: $fe $a0
    add [hl]                                      ; $645d: $86
    cp b                                          ; $645e: $b8
    ldh [$f2], a                                  ; $645f: $e0 $f2
    and c                                         ; $6461: $a1
    or d                                          ; $6462: $b2
    ld a, d                                       ; $6463: $7a
    ldh [$e0], a                                  ; $6464: $e0 $e0
    rst $20                                       ; $6466: $e7
    or b                                          ; $6467: $b0
    push bc                                       ; $6468: $c5
    ld e, $54                                     ; $6469: $1e $54
    pop hl                                        ; $646b: $e1
    cp [hl]                                       ; $646c: $be
    rst $38                                       ; $646d: $ff
    add l                                         ; $646e: $85
    cp $b2                                        ; $646f: $fe $b2
    pop bc                                        ; $6471: $c1
    or b                                          ; $6472: $b0
    pop bc                                        ; $6473: $c1
    and b                                         ; $6474: $a0
    rst $20                                       ; $6475: $e7
    or $a0                                        ; $6476: $f6 $a0
    call nz, $8d73                                ; $6478: $c4 $73 $8d
    ld d, $c0                                     ; $647b: $16 $c0
    sub [hl]                                      ; $647d: $96
    rst $38                                       ; $647e: $ff
    jp hl                                         ; $647f: $e9


    ld a, a                                       ; $6480: $7f
    rst $38                                       ; $6481: $ff
    push de                                       ; $6482: $d5
    ld a, a                                       ; $6483: $7f
    or c                                          ; $6484: $b1
    rst $38                                       ; $6485: $ff
    sbc $ef                                       ; $6486: $de $ef
    rst $38                                       ; $6488: $ff
    xor $bd                                       ; $6489: $ee $bd
    cp d                                          ; $648b: $ba
    ld [de], a                                    ; $648c: $12
    ldh [$d6], a                                  ; $648d: $e0 $d6
    rst $38                                       ; $648f: $ff
    db $ed                                        ; $6490: $ed
    ld a, [hl]                                    ; $6491: $7e
    ld b, b                                       ; $6492: $40
    add $66                                       ; $6493: $c6 $66
    rst $38                                       ; $6495: $ff
    db $fc                                        ; $6496: $fc
    ccf                                           ; $6497: $3f
    ld sp, hl                                     ; $6498: $f9
    ld e, $ff                                     ; $6499: $1e $ff
    inc a                                         ; $649b: $3c
    rst $20                                       ; $649c: $e7
    ld a, [hl]                                    ; $649d: $7e
    ei                                            ; $649e: $fb
    call z, Call_04b_5233                         ; $649f: $cc $33 $52
    ld [$bf40], a                                 ; $64a2: $ea $40 $bf
    ldh [$df], a                                  ; $64a5: $e0 $df
    ld h, b                                       ; $64a7: $60
    rst $38                                       ; $64a8: $ff
    rst $38                                       ; $64a9: $ff
    jr nc, @-$07                                  ; $64aa: $30 $f7

    jr c, @+$01                                   ; $64ac: $38 $ff

    db $fc                                        ; $64ae: $fc
    pop af                                        ; $64af: $f1
    ld a, $fb                                     ; $64b0: $3e $fb
    rst $30                                       ; $64b2: $f7
    jr c, @-$06                                   ; $64b3: $38 $f8

    ldh [$3c], a                                  ; $64b5: $e0 $3c
    pop hl                                        ; $64b7: $e1
    ld e, $fd                                     ; $64b8: $1e $fd
    cp $f9                                        ; $64ba: $fe $f9
    add e                                         ; $64bc: $83
    ld d, b                                       ; $64bd: $50
    add sp, $4f                                   ; $64be: $e8 $4f
    add b                                         ; $64c0: $80
    ld bc, $ffff                                  ; $64c1: $01 $ff $ff
    ld sp, $d7ff                                  ; $64c4: $31 $ff $d7
    or l                                          ; $64c7: $b5
    rst $38                                       ; $64c8: $ff
    or a                                          ; $64c9: $b7
    db $fc                                        ; $64ca: $fc
    ldh [rNR11], a                                ; $64cb: $e0 $11
    ld b, b                                       ; $64cd: $40
    add b                                         ; $64ce: $80
    rst $18                                       ; $64cf: $df
    ldh [$7f], a                                  ; $64d0: $e0 $7f
    ld e, a                                       ; $64d2: $5f
    ldh [rPCM34], a                               ; $64d3: $e0 $77
    ld hl, sp+$57                                 ; $64d5: $f8 $57
    ld hl, sp+$37                                 ; $64d7: $f8 $37
    db $fc                                        ; $64d9: $fc
    ldh [$73], a                                  ; $64da: $e0 $73
    ld d, a                                       ; $64dc: $57
    ld hl, sp+$00                                 ; $64dd: $f8 $00
    rst $28                                       ; $64df: $ef
    ldh a, [$cc]                                  ; $64e0: $f0 $cc
    nop                                           ; $64e2: $00
    rst $38                                       ; $64e3: $ff
    add b                                         ; $64e4: $80
    cp $ea                                        ; $64e5: $fe $ea
    or h                                          ; $64e7: $b4
    ret nc                                        ; $64e8: $d0

    rst $28                                       ; $64e9: $ef
    ldh [$eb], a                                  ; $64ea: $e0 $eb
    add b                                         ; $64ec: $80
    or c                                          ; $64ed: $b1
    db $ed                                        ; $64ee: $ed
    rst $38                                       ; $64ef: $ff
    or h                                          ; $64f0: $b4
    add e                                         ; $64f1: $83
    ldh [$85], a                                  ; $64f2: $e0 $85
    ld a, [$e07f]                                 ; $64f4: $fa $7f $e0
    or h                                          ; $64f7: $b4
    push de                                       ; $64f8: $d5
    pop hl                                        ; $64f9: $e1
    rst $38                                       ; $64fa: $ff
    rst $38                                       ; $64fb: $ff
    ld sp, hl                                     ; $64fc: $f9
    cpl                                           ; $64fd: $2f
    ld sp, hl                                     ; $64fe: $f9
    ld a, a                                       ; $64ff: $7f
    xor a                                         ; $6500: $af
    ld sp, hl                                     ; $6501: $f9
    xor a                                         ; $6502: $af
    rst $38                                       ; $6503: $ff
    xor a                                         ; $6504: $af
    rst $38                                       ; $6505: $ff
    ld hl, $63c6                                  ; $6506: $21 $c6 $63
    rst $08                                       ; $6509: $cf
    ldh a, [$1f]                                  ; $650a: $f0 $1f
    ldh a, [$7f]                                  ; $650c: $f0 $7f
    db $fc                                        ; $650e: $fc
    db $e4                                        ; $650f: $e4
    ld c, $83                                     ; $6510: $0e $83
    adc b                                         ; $6512: $88
    rst $38                                       ; $6513: $ff
    push af                                       ; $6514: $f5
    db $db                                        ; $6515: $db
    cp $e2                                        ; $6516: $fe $e2
    ret c                                         ; $6518: $d8

    ret nc                                        ; $6519: $d0

    db $e3                                        ; $651a: $e3
    rst $38                                       ; $651b: $ff
    ld b, h                                       ; $651c: $44
    rst $38                                       ; $651d: $ff
    ld l, l                                       ; $651e: $6d
    ld a, [c]                                     ; $651f: $f2
    cp $e0                                        ; $6520: $fe $e0
    ld l, h                                       ; $6522: $6c
    ld a, [$96e0]                                 ; $6523: $fa $e0 $96
    ld h, d                                       ; $6526: $62
    ld hl, sp+$2f                                 ; $6527: $f8 $2f
    ld hl, sp-$51                                 ; $6529: $f8 $af
    ccf                                           ; $652b: $3f
    ld hl, sp-$51                                 ; $652c: $f8 $af
    cp $2f                                        ; $652e: $fe $2f
    cp $a3                                        ; $6530: $fe $a3
    add l                                         ; $6532: $85
    add c                                         ; $6533: $81
    ld l, a                                       ; $6534: $6f
    ld h, b                                       ; $6535: $60
    push hl                                       ; $6536: $e5
    adc h                                         ; $6537: $8c
    and b                                         ; $6538: $a0
    ld [c], a                                     ; $6539: $e2
    or h                                          ; $653a: $b4
    sbc h                                         ; $653b: $9c
    ldh [$d0], a                                  ; $653c: $e0 $d0
    db $e3                                        ; $653e: $e3
    inc hl                                        ; $653f: $23
    rst $38                                       ; $6540: $ff
    xor l                                         ; $6541: $ad
    xor $fe                                       ; $6542: $ee $fe
    ldh [$2d], a                                  ; $6544: $e0 $2d
    rst $38                                       ; $6546: $ff
    and e                                         ; $6547: $a3
    cp [hl]                                       ; $6548: $be
    ld h, h                                       ; $6549: $64
    ld [$6bff], sp                                ; $654a: $08 $ff $6b
    cp a                                          ; $654d: $bf
    rst $38                                       ; $654e: $ff
    ld a, b                                       ; $654f: $78
    rst $38                                       ; $6550: $ff
    ld c, e                                       ; $6551: $4b
    rst $38                                       ; $6552: $ff
    jr z, jr_04b_65ab                             ; $6553: $28 $56

    ld h, e                                       ; $6555: $63
    db $db                                        ; $6556: $db
    ccf                                           ; $6557: $3f
    inc a                                         ; $6558: $3c
    and l                                         ; $6559: $a5
    ld a, [hl]                                    ; $655a: $7e
    ld e, d                                       ; $655b: $5a
    rst $38                                       ; $655c: $ff
    and l                                         ; $655d: $a5
    cp $e0                                        ; $655e: $fe $e0
    ld a, [$fee0]                                 ; $6560: $fa $e0 $fe
    jp nc, $ffa0                                  ; $6563: $d2 $a0 $ff

    rst $38                                       ; $6566: $ff
    pop bc                                        ; $6567: $c1
    rst $38                                       ; $6568: $ff
    rst $30                                       ; $6569: $f7
    rst $38                                       ; $656a: $ff
    push af                                       ; $656b: $f5
    db $fd                                        ; $656c: $fd
    sbc [hl]                                      ; $656d: $9e
    cp $e3                                        ; $656e: $fe $e3
    db $fd                                        ; $6570: $fd
    sbc [hl]                                      ; $6571: $9e
    rst $38                                       ; $6572: $ff
    inc a                                         ; $6573: $3c
    db $db                                        ; $6574: $db
    ld h, [hl]                                    ; $6575: $66
    rst $38                                       ; $6576: $ff
    cp l                                          ; $6577: $bd
    db $db                                        ; $6578: $db
    rst $28                                       ; $6579: $ef
    sub c                                         ; $657a: $91
    rst $30                                       ; $657b: $f7
    adc c                                         ; $657c: $89
    cp l                                          ; $657d: $bd
    db $db                                        ; $657e: $db
    cp e                                          ; $657f: $bb
    db $db                                        ; $6580: $db
    ld h, [hl]                                    ; $6581: $66
    rrca                                          ; $6582: $0f
    ld h, b                                       ; $6583: $60
    inc a                                         ; $6584: $3c
    rst $18                                       ; $6585: $df
    ld h, h                                       ; $6586: $64
    ld a, h                                       ; $6587: $7c
    ldh [$64], a                                  ; $6588: $e0 $64
    cp a                                          ; $658a: $bf
    rst $38                                       ; $658b: $ff
    inc h                                         ; $658c: $24
    rst $38                                       ; $658d: $ff
    ld h, [hl]                                    ; $658e: $66
    rst $38                                       ; $658f: $ff
    ld b, d                                       ; $6590: $42
    rst $38                                       ; $6591: $ff
    ld b, b                                       ; $6592: $40
    ld a, [hl]                                    ; $6593: $7e
    rst $38                                       ; $6594: $ff
    cp l                                          ; $6595: $bd
    jp $99ff                                      ; $6596: $c3 $ff $99


    rst $30                                       ; $6599: $f7
    ld sp, hl                                     ; $659a: $f9
    cp c                                          ; $659b: $b9
    rst $00                                       ; $659c: $c7
    ld hl, sp-$07                                 ; $659d: $f8 $f9
    ld b, b                                       ; $659f: $40
    rst $28                                       ; $65a0: $ef
    ld h, b                                       ; $65a1: $60
    ldh a, [$e1]                                  ; $65a2: $f0 $e1
    rst $30                                       ; $65a4: $f7
    sbc c                                         ; $65a5: $99
    rst $38                                       ; $65a6: $ff
    ld h, d                                       ; $65a7: $62
    rst $38                                       ; $65a8: $ff
    rst $30                                       ; $65a9: $f7
    ld sp, hl                                     ; $65aa: $f9

jr_04b_65ab:
    rst $38                                       ; $65ab: $ff
    sbc c                                         ; $65ac: $99
    and $e0                                       ; $65ad: $e6 $e0
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    ld a, $df                                     ; $65b1: $3e $df
    rla                                           ; $65b3: $17
    ld h, d                                       ; $65b4: $62
    cp a                                          ; $65b5: $bf
    jp nz, $a023                                  ; $65b6: $c2 $23 $a0

    sub e                                         ; $65b9: $93

jr_04b_65ba:
    pop de                                        ; $65ba: $d1
    ld h, b                                       ; $65bb: $60
    add b                                         ; $65bc: $80
    and b                                         ; $65bd: $a0
    call Call_04b_5f40                            ; $65be: $cd $40 $5f
    add c                                         ; $65c1: $81
    rst $38                                       ; $65c2: $ff
    sbc a                                         ; $65c3: $9f
    db $fd                                        ; $65c4: $fd
    add e                                         ; $65c5: $83
    ldh [$e6], a                                  ; $65c6: $e0 $e6
    ld a, [hl]                                    ; $65c8: $7e
    ld [c], a                                     ; $65c9: $e2
    ldh [$e5], a                                  ; $65ca: $e0 $e5
    sbc [hl]                                      ; $65cc: $9e
    ldh a, [$e0]                                  ; $65cd: $f0 $e0
    sbc c                                         ; $65cf: $99
    ret nc                                        ; $65d0: $d0

    db $e4                                        ; $65d1: $e4
    ldh [$e0], a                                  ; $65d2: $e0 $e0
    push af                                       ; $65d4: $f5
    ei                                            ; $65d5: $fb
    rst $28                                       ; $65d6: $ef
    rla                                           ; $65d7: $17
    ld [hl-], a                                   ; $65d8: $32
    ei                                            ; $65d9: $fb
    ld h, $9e                                     ; $65da: $26 $9e
    ldh [rNR50], a                                ; $65dc: $e0 $24
    and b                                         ; $65de: $a0
    push hl                                       ; $65df: $e5
    sbc h                                         ; $65e0: $9c
    pop hl                                        ; $65e1: $e1
    ret nc                                        ; $65e2: $d0

    push hl                                       ; $65e3: $e5
    sbc [hl]                                      ; $65e4: $9e
    db $f4                                        ; $65e5: $f4
    db $e3                                        ; $65e6: $e3
    cp a                                          ; $65e7: $bf
    pop bc                                        ; $65e8: $c1
    rst $38                                       ; $65e9: $ff
    ld a, c                                       ; $65ea: $79
    and b                                         ; $65eb: $a0
    ld [c], a                                     ; $65ec: $e2
    sub c                                         ; $65ed: $91
    ld b, b                                       ; $65ee: $40
    ld de, $ffeb                                  ; $65ef: $11 $eb $ff
    ld d, a                                       ; $65f2: $57
    inc [hl]                                      ; $65f3: $34
    ret nz                                        ; $65f4: $c0

    ld a, l                                       ; $65f5: $7d
    jr nc, jr_04b_65ba                            ; $65f6: $30 $c2

    rst $38                                       ; $65f8: $ff
    nop                                           ; $65f9: $00
    ld a, a                                       ; $65fa: $7f
    ld sp, hl                                     ; $65fb: $f9
    add b                                         ; $65fc: $80
    cp $e9                                        ; $65fd: $fe $e9
    and b                                         ; $65ff: $a0
    ld c, l                                       ; $6600: $4d
    rst $38                                       ; $6601: $ff
    inc b                                         ; $6602: $04
    db $fd                                        ; $6603: $fd
    ld b, $fd                                     ; $6604: $06 $fd

jr_04b_6606:
    rst $38                                       ; $6606: $ff
    ld a, [bc]                                    ; $6607: $0a
    ei                                            ; $6608: $fb
    db $f4                                        ; $6609: $f4
    sub a                                         ; $660a: $97
    ld a, b                                       ; $660b: $78
    rst $30                                       ; $660c: $f7
    jr jr_04b_6606                                ; $660d: $18 $f7

    db $fd                                        ; $660f: $fd
    jr jr_04b_6667                                ; $6610: $18 $55

    ld b, d                                       ; $6612: $42
    ld [c], a                                     ; $6613: $e2
    adc [hl]                                      ; $6614: $8e
    ld [hl], e                                    ; $6615: $73
    cp $03                                        ; $6616: $fe $03
    cp $cf                                        ; $6618: $fe $cf
    inc bc                                        ; $661a: $03
    db $fc                                        ; $661b: $fc
    rlca                                          ; $661c: $07
    ld sp, hl                                     ; $661d: $f9
    pop de                                        ; $661e: $d1
    ld h, b                                       ; $661f: $60
    nop                                           ; $6620: $00
    rst $08                                       ; $6621: $cf
    rst $30                                       ; $6622: $f7
    rlca                                          ; $6623: $07
    rst $38                                       ; $6624: $ff
    ret c                                         ; $6625: $d8

    ld e, $a8                                     ; $6626: $1e $a8
    ld sp, $6fd7                                  ; $6628: $31 $d7 $6f
    ld c, d                                       ; $662b: $4a
    ld e, h                                       ; $662c: $5c
    rst $38                                       ; $662d: $ff
    sub e                                         ; $662e: $93
    db $db                                        ; $662f: $db
    sub h                                         ; $6630: $94
    rst $18                                       ; $6631: $df
    rst $38                                       ; $6632: $ff
    nop                                           ; $6633: $00
    rst $18                                       ; $6634: $df
    ret nz                                        ; $6635: $c0

    rst $38                                       ; $6636: $ff
    scf                                           ; $6637: $37
    ld [hl], b                                    ; $6638: $70
    dec bc                                        ; $6639: $0b
    sbc b                                         ; $663a: $98
    rst $00                                       ; $663b: $c7
    db $fc                                        ; $663c: $fc
    dec h                                         ; $663d: $25
    db $fc                                        ; $663e: $fc
    rst $38                                       ; $663f: $ff
    sub e                                         ; $6640: $93
    cp $53                                        ; $6641: $fe $53
    ld a, [$0000]                                 ; $6643: $fa $00 $00
    rlca                                          ; $6646: $07
    inc bc                                        ; $6647: $03
    rst $38                                       ; $6648: $ff
    rra                                           ; $6649: $1f
    inc c                                         ; $664a: $0c
    inc sp                                        ; $664b: $33
    inc e                                         ; $664c: $1c
    ld h, $39                                     ; $664d: $26 $39
    ld a, h                                       ; $664f: $7c
    inc hl                                        ; $6650: $23
    rst $38                                       ; $6651: $ff
    ld a, h                                       ; $6652: $7c
    ld b, e                                       ; $6653: $43
    ld e, [hl]                                    ; $6654: $5e
    ld h, c                                       ; $6655: $61
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    ldh [$c0], a                                  ; $6658: $e0 $c0
    rst $38                                       ; $665a: $ff
    ld hl, sp+$30                                 ; $665b: $f8 $30
    call z, $6438                                 ; $665d: $cc $38 $64
    sbc h                                         ; $6660: $9c
    ld a, $c4                                     ; $6661: $3e $c4
    rst $38                                       ; $6663: $ff
    ld a, $c2                                     ; $6664: $3e $c2
    ld a, d                                       ; $6666: $7a

jr_04b_6667:
    add [hl]                                      ; $6667: $86
    ld c, a                                       ; $6668: $4f
    ld [hl], b                                    ; $6669: $70
    ld c, a                                       ; $666a: $4f
    ld [hl], b                                    ; $666b: $70
    rst $38                                       ; $666c: $ff
    ld a, a                                       ; $666d: $7f
    ld h, a                                       ; $666e: $67
    ld a, d                                       ; $666f: $7a
    ccf                                           ; $6670: $3f
    ld [hl-], a                                   ; $6671: $32
    rra                                           ; $6672: $1f
    db $10                                        ; $6673: $10
    rra                                           ; $6674: $1f
    rst $38                                       ; $6675: $ff
    jr @+$11                                      ; $6676: $18 $0f

    rrca                                          ; $6678: $0f
    rlca                                          ; $6679: $07

jr_04b_667a:
    ld a, [c]                                     ; $667a: $f2
    ld c, $f2                                     ; $667b: $0e $f2
    ld c, $ff                                     ; $667d: $0e $ff
    cp $e6                                        ; $667f: $fe $e6
    ld e, [hl]                                    ; $6681: $5e
    db $fc                                        ; $6682: $fc
    ld c, h                                       ; $6683: $4c
    ld hl, sp+$08                                 ; $6684: $f8 $08
    ld hl, sp-$01                                 ; $6686: $f8 $ff
    jr jr_04b_667a                                ; $6688: $18 $f0

    ldh a, [$e0]                                  ; $668a: $f0 $e0
    rst $38                                       ; $668c: $ff
    nop                                           ; $668d: $00
    db $fc                                        ; $668e: $fc
    ld bc, $fcff                                  ; $668f: $01 $ff $fc
    ld [bc], a                                    ; $6692: $02
    db $fc                                        ; $6693: $fc
    ld [bc], a                                    ; $6694: $02
    add h                                         ; $6695: $84
    ld [hl-], a                                   ; $6696: $32
    nop                                           ; $6697: $00
    ld c, h                                       ; $6698: $4c
    rst $38                                       ; $6699: $ff
    nop                                           ; $669a: $00
    sbc b                                         ; $669b: $98
    db $10                                        ; $669c: $10
    xor b                                         ; $669d: $a8
    rst $38                                       ; $669e: $ff
    nop                                           ; $669f: $00
    ccf                                           ; $66a0: $3f
    add b                                         ; $66a1: $80
    rst $38                                       ; $66a2: $ff
    ccf                                           ; $66a3: $3f
    ld b, b                                       ; $66a4: $40
    ccf                                           ; $66a5: $3f
    ld b, b                                       ; $66a6: $40
    ld hl, $004c                                  ; $66a7: $21 $4c $00
    ld [hl-], a                                   ; $66aa: $32
    rst $38                                       ; $66ab: $ff
    nop                                           ; $66ac: $00
    add hl, de                                    ; $66ad: $19
    ld [$1015], sp                                ; $66ae: $08 $15 $10
    xor b                                         ; $66b1: $a8
    nop                                           ; $66b2: $00
    sbc b                                         ; $66b3: $98
    rst $38                                       ; $66b4: $ff
    nop                                           ; $66b5: $00
    ld b, b                                       ; $66b6: $40
    add b                                         ; $66b7: $80
    ld b, b                                       ; $66b8: $40
    add b                                         ; $66b9: $80
    jr nz, @-$3e                                  ; $66ba: $20 $c0

    db $10                                        ; $66bc: $10
    rst $38                                       ; $66bd: $ff
    ldh [$08], a                                  ; $66be: $e0 $08
    ldh a, [rDIV]                                 ; $66c0: $f0 $04
    ld [$0015], sp                                ; $66c2: $08 $15 $00
    add hl, de                                    ; $66c5: $19
    rst $38                                       ; $66c6: $ff
    nop                                           ; $66c7: $00
    ld [bc], a                                    ; $66c8: $02
    ld bc, $0102                                  ; $66c9: $01 $02 $01
    inc b                                         ; $66cc: $04
    inc bc                                        ; $66cd: $03
    ld [$07ff], sp                                ; $66ce: $08 $ff $07

jr_04b_66d1:
    db $10                                        ; $66d1: $10
    rrca                                          ; $66d2: $0f
    jr nz, jr_04b_66d1                            ; $66d3: $20 $fc

    ld [bc], a                                    ; $66d5: $02
    ld hl, sp+$02                                 ; $66d6: $f8 $02
    rst $38                                       ; $66d8: $ff
    ld hl, sp+$04                                 ; $66d9: $f8 $04
    ldh a, [rDIV]                                 ; $66db: $f0 $04
    ldh a, [$08]                                  ; $66dd: $f0 $08
    ldh [$08], a                                  ; $66df: $e0 $08
    rst $38                                       ; $66e1: $ff
    ldh [rNR10], a                                ; $66e2: $e0 $10
    ldh [$1f], a                                  ; $66e4: $e0 $1f
    ccf                                           ; $66e6: $3f
    ld b, b                                       ; $66e7: $40
    rra                                           ; $66e8: $1f
    ld b, b                                       ; $66e9: $40
    rst $38                                       ; $66ea: $ff
    rra                                           ; $66eb: $1f
    jr nz, jr_04b_66fd                            ; $66ec: $20 $0f

    jr nz, jr_04b_66ff                            ; $66ee: $20 $0f

    db $10                                        ; $66f0: $10
    rlca                                          ; $66f1: $07
    db $10                                        ; $66f2: $10
    rst $28                                       ; $66f3: $ef
    rlca                                          ; $66f4: $07
    ld [$f807], sp                                ; $66f5: $08 $07 $f8
    ld [hl], d                                    ; $66f8: $72
    ld b, b                                       ; $66f9: $40
    inc bc                                        ; $66fa: $03
    rst $38                                       ; $66fb: $ff
    ld [bc], a                                    ; $66fc: $02

jr_04b_66fd:
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff

jr_04b_66ff:
    inc bc                                        ; $66ff: $03
    or [hl]                                       ; $6700: $b6
    ld a, d                                       ; $6701: $7a
    ld l, a                                       ; $6702: $6f
    rst $18                                       ; $6703: $df
    sbc c                                         ; $6704: $99
    call c, $bfff                                 ; $6705: $dc $ff $bf
    xor a                                         ; $6708: $af
    rst $38                                       ; $6709: $ff
    nop                                           ; $670a: $00
    cp a                                          ; $670b: $bf
    ret nz                                        ; $670c: $c0

    ld a, a                                       ; $670d: $7f
    ret nz                                        ; $670e: $c0

    rst $38                                       ; $670f: $ff
    rst $38                                       ; $6710: $ff
    ret nz                                        ; $6711: $c0

    ld l, l                                       ; $6712: $6d
    sbc $f2                                       ; $6713: $de $f2
    rst $30                                       ; $6715: $f7
    dec e                                         ; $6716: $1d
    ccf                                           ; $6717: $3f
    rst $38                                       ; $6718: $ff
    db $fd                                        ; $6719: $fd
    rst $30                                       ; $671a: $f7
    cp e                                          ; $671b: $bb
    xor $b5                                       ; $671c: $ee $b5
    db $fc                                        ; $671e: $fc
    ld d, e                                       ; $671f: $53
    ld a, [$53ff]                                 ; $6720: $fa $ff $53
    ld a, d                                       ; $6723: $7a
    or l                                          ; $6724: $b5
    ld a, h                                       ; $6725: $7c
    rst $10                                       ; $6726: $d7
    ccf                                           ; $6727: $3f
    add sp, $1f                                   ; $6728: $e8 $1f
    rst $38                                       ; $672a: $ff
    rst $30                                       ; $672b: $f7
    rrca                                          ; $672c: $0f
    ld e, l                                       ; $672d: $5d
    ld [hl], a                                    ; $672e: $77
    ld c, l                                       ; $672f: $4d
    ld a, a                                       ; $6730: $7f
    ld c, d                                       ; $6731: $4a
    ld e, a                                       ; $6732: $5f
    rst $38                                       ; $6733: $ff
    ld c, e                                       ; $6734: $4b
    ld e, [hl]                                    ; $6735: $5e
    dec l                                         ; $6736: $2d
    ld a, [hl]                                    ; $6737: $7e
    db $eb                                        ; $6738: $eb
    db $fc                                        ; $6739: $fc
    rla                                           ; $673a: $17
    ld hl, sp-$01                                 ; $673b: $f8 $ff
    rst $28                                       ; $673d: $ef
    ldh a, [$af]                                  ; $673e: $f0 $af
    cp a                                          ; $6740: $bf
    xor d                                         ; $6741: $aa
    cp d                                          ; $6742: $ba
    sub a                                         ; $6743: $97
    rst $10                                       ; $6744: $d7
    rst $38                                       ; $6745: $ff
    ld d, e                                       ; $6746: $53
    ld e, a                                       ; $6747: $5f
    ret                                           ; $6748: $c9


    ld a, h                                       ; $6749: $7c
    and a                                         ; $674a: $a7
    ccf                                           ; $674b: $3f
    ret c                                         ; $674c: $d8

    rra                                           ; $674d: $1f
    rst $38                                       ; $674e: $ff
    rst $30                                       ; $674f: $f7
    rlca                                          ; $6750: $07
    db $eb                                        ; $6751: $eb
    ld a, [$faab]                                 ; $6752: $fa $ab $fa
    db $d3                                        ; $6755: $d3
    cp $ff                                        ; $6756: $fe $ff
    sub l                                         ; $6758: $95
    db $f4                                        ; $6759: $f4
    daa                                           ; $675a: $27
    ld a, h                                       ; $675b: $7c
    set 7, b                                      ; $675c: $cb $f8
    scf                                           ; $675e: $37
    ldh a, [rIE]                                  ; $675f: $f0 $ff
    rst $18                                       ; $6761: $df
    ret nz                                        ; $6762: $c0

    cp $03                                        ; $6763: $fe $03
    ei                                            ; $6765: $fb
    rlca                                          ; $6766: $07
    db $fc                                        ; $6767: $fc
    ld b, $ff                                     ; $6768: $06 $ff
    rst $30                                       ; $676a: $f7
    rrca                                          ; $676b: $0f
    ld sp, hl                                     ; $676c: $f9
    inc c                                         ; $676d: $0c
    db $ec                                        ; $676e: $ec
    rra                                           ; $676f: $1f
    pop af                                        ; $6770: $f1
    jr @+$01                                      ; $6771: $18 $ff

    rst $38                                       ; $6773: $ff
    rra                                           ; $6774: $1f
    ld a, a                                       ; $6775: $7f
    ret nz                                        ; $6776: $c0

    rst $18                                       ; $6777: $df
    ldh [$3f], a                                  ; $6778: $e0 $3f
    ld h, b                                       ; $677a: $60
    rst $38                                       ; $677b: $ff
    rst $28                                       ; $677c: $ef
    ldh a, [$1f]                                  ; $677d: $f0 $1f
    jr nc, jr_04b_67b8                            ; $677f: $30 $37

    ld hl, sp+$0f                                 ; $6781: $f8 $0f
    jr @-$7d                                      ; $6783: $18 $81

    rst $38                                       ; $6785: $ff
    add b                                         ; $6786: $80

jr_04b_6787:
    ldh [rNR41], a                                ; $6787: $e0 $20
    rst $38                                       ; $6789: $ff
    jr nz, @+$01                                  ; $678a: $20 $ff

    jr nz, @+$01                                  ; $678c: $20 $ff

    jr nz, @-$06                                  ; $678e: $20 $f8

    ld [c], a                                     ; $6790: $e2
    and b                                         ; $6791: $a0
    jp nc, Jump_04b_7ad7                          ; $6792: $d2 $d7 $7a

    or l                                          ; $6795: $b5
    ld a, [hl]                                    ; $6796: $7e
    jr nz, @-$1e                                  ; $6797: $20 $e0

    ld e, $20                                     ; $6799: $1e $20
    pop hl                                        ; $679b: $e1
    xor l                                         ; $679c: $ad
    rst $38                                       ; $679d: $ff
    rst $28                                       ; $679e: $ef
    ld l, d                                       ; $679f: $6a
    ld a, a                                       ; $67a0: $7f
    set 3, [hl]                                   ; $67a1: $cb $de
    jr nz, jr_04b_6787                            ; $67a3: $20 $e2

    ld a, b                                       ; $67a5: $78
    rst $28                                       ; $67a6: $ef
    ldh a, [$e0]                                  ; $67a7: $f0 $e0
    ld b, b                                       ; $67a9: $40
    rst $38                                       ; $67aa: $ff
    ld b, b                                       ; $67ab: $40
    rst $38                                       ; $67ac: $ff
    ld b, b                                       ; $67ad: $40
    rst $38                                       ; $67ae: $ff
    ld b, b                                       ; $67af: $40
    rst $38                                       ; $67b0: $ff
    ld h, b                                       ; $67b1: $60
    push de                                       ; $67b2: $d5
    cp l                                          ; $67b3: $bd
    db $ec                                        ; $67b4: $ec
    or a                                          ; $67b5: $b7
    sbc a                                         ; $67b6: $9f
    rst $38                                       ; $67b7: $ff

jr_04b_67b8:
    ld d, e                                       ; $67b8: $53
    ld a, [$7bd3]                                 ; $67b9: $fa $d3 $7b
    ld h, b                                       ; $67bc: $60
    jp nz, $e040                                  ; $67bd: $c2 $40 $e0

    dec a                                         ; $67c0: $3d
    cp $40                                        ; $67c1: $fe $40
    ldh [$2a], a                                  ; $67c3: $e0 $2a
    ld a, a                                       ; $67c5: $7f
    xor e                                         ; $67c6: $ab
    cp $2d                                        ; $67c7: $fe $2d
    ld a, [hl]                                    ; $67c9: $7e
    set 4, h                                      ; $67ca: $cb $e4
    ld b, b                                       ; $67cc: $40
    rst $38                                       ; $67cd: $ff
    ld b, b                                       ; $67ce: $40
    pop hl                                        ; $67cf: $e1
    add c                                         ; $67d0: $81
    cp $e2                                        ; $67d1: $fe $e2
    ld c, [hl]                                    ; $67d3: $4e
    ld l, b                                       ; $67d4: $68
    dec b                                         ; $67d5: $05
    rst $38                                       ; $67d6: $ff
    call c, $ff77                                 ; $67d7: $dc $77 $ff
    db $dd                                        ; $67da: $dd
    ld [hl], a                                    ; $67db: $77
    cp $e3                                        ; $67dc: $fe $e3
    rst $38                                       ; $67de: $ff
    ld [hl], a                                    ; $67df: $77
    ld a, a                                       ; $67e0: $7f
    inc a                                         ; $67e1: $3c
    ld h, b                                       ; $67e2: $60
    rst $38                                       ; $67e3: $ff
    ld b, h                                       ; $67e4: $44
    rst $38                                       ; $67e5: $ff
    ld d, l                                       ; $67e6: $55
    rst $38                                       ; $67e7: $ff
    push de                                       ; $67e8: $d5
    rst $38                                       ; $67e9: $ff
    ld d, h                                       ; $67ea: $54
    rst $38                                       ; $67eb: $ff
    ld e, l                                       ; $67ec: $5d
    ld b, l                                       ; $67ed: $45
    ld sp, $f700                                  ; $67ee: $31 $00 $f7
    ld a, b                                       ; $67f1: $78
    rst $18                                       ; $67f2: $df
    ld hl, sp-$20                                 ; $67f3: $f8 $e0
    ld d, a                                       ; $67f5: $57
    xor $e0                                       ; $67f6: $ee $e0
    nop                                           ; $67f8: $00
    db $ec                                        ; $67f9: $ec
    pop hl                                        ; $67fa: $e1
    ld d, b                                       ; $67fb: $50
    ld bc, $fffe                                  ; $67fc: $01 $fe $ff
    cp $ff                                        ; $67ff: $fe $ff
    cp $ff                                        ; $6801: $fe $ff
    cp $ff                                        ; $6803: $fe $ff
    cp $ff                                        ; $6805: $fe $ff
    ld a, [c]                                     ; $6807: $f2
    pop af                                        ; $6808: $f1
    nop                                           ; $6809: $00
    rst $38                                       ; $680a: $ff
    rst $38                                       ; $680b: $ff
    db $fc                                        ; $680c: $fc
    ei                                            ; $680d: $fb
    nop                                           ; $680e: $00
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    rla                                           ; $6811: $17
    add hl, bc                                    ; $6812: $09
    add hl, bc                                    ; $6813: $09
    ld [$ecff], sp                                ; $6814: $08 $ff $ec
    add hl, bc                                    ; $6817: $09
    rst $38                                       ; $6818: $ff
    ldh [$ec], a                                  ; $6819: $e0 $ec
    pop af                                        ; $681b: $f1
    db $fc                                        ; $681c: $fc
    push hl                                       ; $681d: $e5
    ld l, [hl]                                    ; $681e: $6e
    jp nc, $08ed                                  ; $681f: $d2 $ed $08

    ld [$ff0b], sp                                ; $6822: $08 $0b $ff
    add sp, $08                                   ; $6825: $e8 $08
    ld c, b                                       ; $6827: $48
    ret nz                                        ; $6828: $c0

    db $e3                                        ; $6829: $e3
    nop                                           ; $682a: $00
    db $ec                                        ; $682b: $ec
    rst $28                                       ; $682c: $ef
    ret nz                                        ; $682d: $c0

    rst $30                                       ; $682e: $f7
    add b                                         ; $682f: $80
    rst $38                                       ; $6830: $ff
    add b                                         ; $6831: $80
    rst $30                                       ; $6832: $f7
    rst $38                                       ; $6833: $ff
    rst $38                                       ; $6834: $ff
    ld a, $ed                                     ; $6835: $3e $ed
    call nc, $c0ff                                ; $6837: $d4 $ff $c0
    rst $38                                       ; $683a: $ff
    jr nz, @+$01                                  ; $683b: $20 $ff

    rst $38                                       ; $683d: $ff
    ret nz                                        ; $683e: $c0

    rst $38                                       ; $683f: $ff
    rst $38                                       ; $6840: $ff
    rst $38                                       ; $6841: $ff
    ret nz                                        ; $6842: $c0

    rst $38                                       ; $6843: $ff
    call nz, $28c0                                ; $6844: $c4 $c0 $28
    call nz, $ecf0                                ; $6847: $c4 $f0 $ec
    ldh a, [rLCDC]                                ; $684a: $f0 $40
    add b                                         ; $684c: $80
    rst $38                                       ; $684d: $ff
    add b                                         ; $684e: $80
    rst $38                                       ; $684f: $ff
    ret nz                                        ; $6850: $c0

    rst $38                                       ; $6851: $ff
    ret nz                                        ; $6852: $c0

    rst $38                                       ; $6853: $ff
    ret nz                                        ; $6854: $c0

    rst $38                                       ; $6855: $ff
    ld a, [c]                                     ; $6856: $f2
    pop af                                        ; $6857: $f1
    jr z, @-$3e                                   ; $6858: $28 $c0

    rst $38                                       ; $685a: $ff
    nop                                           ; $685b: $00
    add b                                         ; $685c: $80
    rst $38                                       ; $685d: $ff
    ret nz                                        ; $685e: $c0

    rst $38                                       ; $685f: $ff
    add b                                         ; $6860: $80
    rst $38                                       ; $6861: $ff
    ret nz                                        ; $6862: $c0

    rst $38                                       ; $6863: $ff
    add b                                         ; $6864: $80
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    ret nz                                        ; $6868: $c0

    rst $38                                       ; $6869: $ff
    rst $38                                       ; $686a: $ff
    rst $38                                       ; $686b: $ff
    nop                                           ; $686c: $00
    ret nz                                        ; $686d: $c0

    rst $38                                       ; $686e: $ff
    rst $38                                       ; $686f: $ff
    rst $38                                       ; $6870: $ff
    ret nz                                        ; $6871: $c0

    rst $38                                       ; $6872: $ff
    rst $38                                       ; $6873: $ff
    rst $38                                       ; $6874: $ff
    ret nz                                        ; $6875: $c0

    rst $38                                       ; $6876: $ff
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    ret nz                                        ; $6879: $c0

    rst $38                                       ; $687a: $ff
    ret nz                                        ; $687b: $c0

    rst $38                                       ; $687c: $ff
    add b                                         ; $687d: $80
    ret nz                                        ; $687e: $c0

    rst $38                                       ; $687f: $ff
    ret nz                                        ; $6880: $c0

    rst $38                                       ; $6881: $ff
    ret nz                                        ; $6882: $c0

    rst $38                                       ; $6883: $ff
    ret nz                                        ; $6884: $c0

    rst $38                                       ; $6885: $ff
    ret nz                                        ; $6886: $c0

    rst $38                                       ; $6887: $ff
    ret nz                                        ; $6888: $c0

    rst $38                                       ; $6889: $ff
    pop de                                        ; $688a: $d1
    or $0d                                        ; $688b: $f6 $0d
    ld bc, $ec0d                                  ; $688d: $01 $0d $ec
    push af                                       ; $6890: $f5
    ret nz                                        ; $6891: $c0

    rst $38                                       ; $6892: $ff
    ret nz                                        ; $6893: $c0

    rst $38                                       ; $6894: $ff
    ret nz                                        ; $6895: $c0

    rst $38                                       ; $6896: $ff
    ld b, b                                       ; $6897: $40
    rst $38                                       ; $6898: $ff
    ret nz                                        ; $6899: $c0

    rst $38                                       ; $689a: $ff
    ret nz                                        ; $689b: $c0

    rst $38                                       ; $689c: $ff
    nop                                           ; $689d: $00
    call nc, $feff                                ; $689e: $d4 $ff $fe
    ld sp, hl                                     ; $68a1: $f9
    ret nz                                        ; $68a2: $c0

    rst $38                                       ; $68a3: $ff
    ret nz                                        ; $68a4: $c0

    rst $38                                       ; $68a5: $ff
    ret nz                                        ; $68a6: $c0

    rst $38                                       ; $68a7: $ff
    ret nz                                        ; $68a8: $c0

    rst $38                                       ; $68a9: $ff
    ret nz                                        ; $68aa: $c0

    rst $38                                       ; $68ab: $ff
    ret nz                                        ; $68ac: $c0

    rst $38                                       ; $68ad: $ff
    add b                                         ; $68ae: $80
    ccf                                           ; $68af: $3f
    db $d3                                        ; $68b0: $d3
    ret nz                                        ; $68b1: $c0

    rst $38                                       ; $68b2: $ff
    ret nz                                        ; $68b3: $c0

    rst $38                                       ; $68b4: $ff
    ret nz                                        ; $68b5: $c0

    rst $38                                       ; $68b6: $ff
    ret nz                                        ; $68b7: $c0

    rst $38                                       ; $68b8: $ff
    ret nz                                        ; $68b9: $c0

    rst $38                                       ; $68ba: $ff
    sub a                                         ; $68bb: $97
    ld c, l                                       ; $68bc: $4d
    rrca                                          ; $68bd: $0f
    rlca                                          ; $68be: $07
    rrca                                          ; $68bf: $0f
    ld c, $0e                                     ; $68c0: $0e $0e
    ret nz                                        ; $68c2: $c0

    rst $38                                       ; $68c3: $ff
    ret nz                                        ; $68c4: $c0

    rst $38                                       ; $68c5: $ff
    ret nz                                        ; $68c6: $c0

    rst $38                                       ; $68c7: $ff
    ret nz                                        ; $68c8: $c0

    rst $38                                       ; $68c9: $ff
    ret nz                                        ; $68ca: $c0

    rst $38                                       ; $68cb: $ff
    nop                                           ; $68cc: $00
    ld b, b                                       ; $68cd: $40
    rst $18                                       ; $68ce: $df
    ret nz                                        ; $68cf: $c0

    rst $38                                       ; $68d0: $ff
    call nc, $c0fb                                ; $68d1: $d4 $fb $c0
    rst $38                                       ; $68d4: $ff
    ret nc                                        ; $68d5: $d0

    rst $38                                       ; $68d6: $ff
    ld b, b                                       ; $68d7: $40
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    nop                                           ; $68dd: $00
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    nop                                           ; $68ee: $00
    rst $38                                       ; $68ef: $ff
    rst $38                                       ; $68f0: $ff
    rst $38                                       ; $68f1: $ff
    rst $38                                       ; $68f2: $ff
    rst $38                                       ; $68f3: $ff
    rst $38                                       ; $68f4: $ff
    rst $38                                       ; $68f5: $ff
    rst $38                                       ; $68f6: $ff
    rst $38                                       ; $68f7: $ff
    rst $38                                       ; $68f8: $ff
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    rst $38                                       ; $68fc: $ff
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    nop                                           ; $68ff: $00
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    rst $38                                       ; $6904: $ff
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    nop                                           ; $6910: $00
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
    rst $38                                       ; $6918: $ff
    rst $38                                       ; $6919: $ff
    rst $38                                       ; $691a: $ff
    rst $38                                       ; $691b: $ff
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    rst $38                                       ; $691f: $ff
    rst $38                                       ; $6920: $ff
    nop                                           ; $6921: $00
    rst $38                                       ; $6922: $ff
    rst $38                                       ; $6923: $ff
    rst $38                                       ; $6924: $ff
    rst $38                                       ; $6925: $ff
    rst $38                                       ; $6926: $ff
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    rst $38                                       ; $692b: $ff
    rst $38                                       ; $692c: $ff
    rst $38                                       ; $692d: $ff
    rst $38                                       ; $692e: $ff
    rst $38                                       ; $692f: $ff
    rst $38                                       ; $6930: $ff
    rst $38                                       ; $6931: $ff
    jr @+$01                                      ; $6932: $18 $ff

    rst $38                                       ; $6934: $ff
    rst $38                                       ; $6935: $ff
    rst $38                                       ; $6936: $ff
    rst $38                                       ; $6937: $ff
    rst $38                                       ; $6938: $ff
    ld [$0008], sp                                ; $6939: $08 $08 $00
    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    rst $28                                       ; $693e: $ef
    ld h, d                                       ; $693f: $62
    ld h, e                                       ; $6940: $63
    ld [bc], a                                    ; $6941: $02
    inc bc                                        ; $6942: $03
    rst $38                                       ; $6943: $ff
    ld [$6204], a                                 ; $6944: $ea $04 $62
    ld h, e                                       ; $6947: $63
    db $f4                                        ; $6948: $f4
    db $ec                                        ; $6949: $ec
    di                                            ; $694a: $f3
    db $fc                                        ; $694b: $fc
    push hl                                       ; $694c: $e5
    nop                                           ; $694d: $00
    rst $38                                       ; $694e: $ff
    ld [$6564], a                                 ; $694f: $ea $64 $65
    dec b                                         ; $6952: $05
    ld b, b                                       ; $6953: $40
    rst $38                                       ; $6954: $ff
    sub b                                         ; $6955: $90
    sub c                                         ; $6956: $91
    sub d                                         ; $6957: $92
    sub e                                         ; $6958: $93
    sub h                                         ; $6959: $94
    sub l                                         ; $695a: $95
    sub [hl]                                      ; $695b: $96
    sub a                                         ; $695c: $97
    rst $38                                       ; $695d: $ff
    sbc b                                         ; $695e: $98
    sbc c                                         ; $695f: $99
    sbc d                                         ; $6960: $9a
    sbc e                                         ; $6961: $9b
    ld b, b                                       ; $6962: $40
    ld b, $64                                     ; $6963: $06 $64
    ld h, l                                       ; $6965: $65
    ld a, b                                       ; $6966: $78
    db $ec                                        ; $6967: $ec
    di                                            ; $6968: $f3
    db $fc                                        ; $6969: $fc
    push hl                                       ; $696a: $e5
    ret nz                                        ; $696b: $c0

    db $eb                                        ; $696c: $eb
    ld h, d                                       ; $696d: $62
    ld h, e                                       ; $696e: $63
    rlca                                          ; $696f: $07
    ld [$eaff], sp                                ; $6970: $08 $ff $ea
    ld bc, $8009                                  ; $6973: $01 $09 $80
    pop hl                                        ; $6976: $e1
    db $ec                                        ; $6977: $ec
    pop af                                        ; $6978: $f1
    add b                                         ; $6979: $80
    di                                            ; $697a: $f3
    ld b, d                                       ; $697b: $42
    db $ec                                        ; $697c: $ec
    ld a, $e2                                     ; $697d: $3e $e2
    db $ec                                        ; $697f: $ec
    pop af                                        ; $6980: $f1
    add b                                         ; $6981: $80
    push af                                       ; $6982: $f5
    ld a, a                                       ; $6983: $7f
    dec b                                         ; $6984: $05
    jr nc, jr_04b_69a6                            ; $6985: $30 $1f

    dec h                                         ; $6987: $25
    ld e, $14                                     ; $6988: $1e $14
    ld b, b                                       ; $698a: $40
    rst $38                                       ; $698b: $ff
    jp hl                                         ; $698c: $e9


    add hl, bc                                    ; $698d: $09
    ld b, $ec                                     ; $698e: $06 $ec
    pop af                                        ; $6990: $f1
    nop                                           ; $6991: $00
    push af                                       ; $6992: $f5
    dec b                                         ; $6993: $05
    push bc                                       ; $6994: $c5
    ld [$e4c0], a                                 ; $6995: $ea $c0 $e4
    db $ec                                        ; $6998: $ec
    ldh a, [$80]                                  ; $6999: $f0 $80
    or $ff                                        ; $699b: $f6 $ff
    ld sp, $2315                                  ; $699d: $31 $15 $23
    inc h                                         ; $69a0: $24
    ld b, b                                       ; $69a1: $40
    dec hl                                        ; $69a2: $2b
    inc de                                        ; $69a3: $13
    rra                                           ; $69a4: $1f
    add e                                         ; $69a5: $83

jr_04b_69a6:
    ld [hl+], a                                   ; $69a6: $22
    dec d                                         ; $69a7: $15
    add b                                         ; $69a8: $80
    rst $20                                       ; $69a9: $e7
    db $ec                                        ; $69aa: $ec
    ldh a, [$80]                                  ; $69ab: $f0 $80
    rst $38                                       ; $69ad: $ff
    add b                                         ; $69ae: $80
    rst $38                                       ; $69af: $ff
    nop                                           ; $69b0: $00
    ld a, [c]                                     ; $69b1: $f2
    ld [hl-], a                                   ; $69b2: $32
    rra                                           ; $69b3: $1f
    ld h, $15                                     ; $69b4: $26 $15
    ld [hl+], a                                   ; $69b6: $22
    ld de, $8317                                  ; $69b7: $11 $17 $83
    and $00                                       ; $69ba: $e6 $00
    ld [c], a                                     ; $69bc: $e2
    db $ec                                        ; $69bd: $ec
    ldh a, [$78]                                  ; $69be: $f0 $78
    add b                                         ; $69c0: $80
    rst $38                                       ; $69c1: $ff
    add b                                         ; $69c2: $80
    rst $38                                       ; $69c3: $ff
    nop                                           ; $69c4: $00
    rst $30                                       ; $69c5: $f7
    inc sp                                        ; $69c6: $33
    ld [hl+], a                                   ; $69c7: $22
    add hl, de                                    ; $69c8: $19
    ld h, $00                                     ; $69c9: $26 $00
    push hl                                       ; $69cb: $e5
    pop bc                                        ; $69cc: $c1
    jr c, jr_04b_69cf                             ; $69cd: $38 $00

jr_04b_69cf:
    db $e4                                        ; $69cf: $e4
    db $ec                                        ; $69d0: $ec
    db $eb                                        ; $69d1: $eb
    add b                                         ; $69d2: $80
    rst $38                                       ; $69d3: $ff
    add b                                         ; $69d4: $80
    rst $38                                       ; $69d5: $ff
    nop                                           ; $69d6: $00
    db $f4                                        ; $69d7: $f4
    rla                                           ; $69d8: $17
    ld a, [hl-]                                   ; $69d9: $3a
    ret nz                                        ; $69da: $c0

    add c                                         ; $69db: $81
    jp hl                                         ; $69dc: $e9


    add b                                         ; $69dd: $80
    pop hl                                        ; $69de: $e1
    db $ec                                        ; $69df: $ec
    ldh a, [$80]                                  ; $69e0: $f0 $80
    rst $38                                       ; $69e2: $ff
    add b                                         ; $69e3: $80
    rst $38                                       ; $69e4: $ff
    add b                                         ; $69e5: $80
    or d                                          ; $69e6: $b2
    inc [hl]                                      ; $69e7: $34
    ld e, $ff                                     ; $69e8: $1e $ff
    ld b, b                                       ; $69ea: $40
    dec [hl]                                      ; $69eb: $35
    ld de, $2219                                  ; $69ec: $11 $19 $22
    daa                                           ; $69ef: $27
    ld de, $8629                                  ; $69f0: $11 $29 $86
    ld a, e                                       ; $69f3: $7b
    and h                                         ; $69f4: $a4
    scf                                           ; $69f5: $37
    ld b, $ec                                     ; $69f6: $06 $ec
    pop af                                        ; $69f8: $f1
    add b                                         ; $69f9: $80
    rst $38                                       ; $69fa: $ff
    add b                                         ; $69fb: $80
    rst $38                                       ; $69fc: $ff
    nop                                           ; $69fd: $00
    or $36                                        ; $69fe: $f6 $36
    rlca                                          ; $6a00: $07
    dec h                                         ; $6a01: $25
    inc h                                         ; $6a02: $24
    inc h                                         ; $6a03: $24
    nop                                           ; $6a04: $00
    set 5, h                                      ; $6a05: $cb $ec
    xor $80                                       ; $6a07: $ee $80
    rst $38                                       ; $6a09: $ff
    add b                                         ; $6a0a: $80
    rst $38                                       ; $6a0b: $ff
    add b                                         ; $6a0c: $80
    sub d                                         ; $6a0d: $92
    rst $38                                       ; $6a0e: $ff
    ld [hl], $11                                  ; $6a0f: $36 $11
    ld [hl+], a                                   ; $6a11: $22
    ld b, b                                       ; $6a12: $40
    dec hl                                        ; $6a13: $2b
    ld de, $1526                                  ; $6a14: $11 $26 $15
    add c                                         ; $6a17: $81
    inc hl                                        ; $6a18: $23
    ld a, h                                       ; $6a19: $7c
    add l                                         ; $6a1a: $85
    nop                                           ; $6a1b: $00
    ldh [$ec], a                                  ; $6a1c: $e0 $ec
    ldh a, [$80]                                  ; $6a1e: $f0 $80
    rst $38                                       ; $6a20: $ff
    add b                                         ; $6a21: $80
    rst $38                                       ; $6a22: $ff
    add b                                         ; $6a23: $80
    or $34                                        ; $6a24: $f6 $34
    add c                                         ; $6a26: $81
    ld e, $82                                     ; $6a27: $1e $82
    and $80                                       ; $6a29: $e6 $80
    and $ec                                       ; $6a2b: $e6 $ec
    db $ec                                        ; $6a2d: $ec
    add b                                         ; $6a2e: $80
    rst $38                                       ; $6a2f: $ff
    add b                                         ; $6a30: $80
    rst $38                                       ; $6a31: $ff
    add b                                         ; $6a32: $80
    ld [hl], d                                    ; $6a33: $72
    dec hl                                        ; $6a34: $2b
    add c                                         ; $6a35: $81
    ld de, $6081                                  ; $6a36: $11 $81 $60
    rst $38                                       ; $6a39: $ff
    ret                                           ; $6a3a: $c9


    nop                                           ; $6a3b: $00
    ret nz                                        ; $6a3c: $c0

    db $ec                                        ; $6a3d: $ec
    ldh a, [$80]                                  ; $6a3e: $f0 $80
    rst $38                                       ; $6a40: $ff
    inc a                                         ; $6a41: $3c
    ld h, c                                       ; $6a42: $61
    ld h, b                                       ; $6a43: $60
    pop af                                        ; $6a44: $f1
    ld h, c                                       ; $6a45: $61
    add b                                         ; $6a46: $80
    rst $28                                       ; $6a47: $ef
    db $ec                                        ; $6a48: $ec
    db $e3                                        ; $6a49: $e3
    add b                                         ; $6a4a: $80
    ld [hl], a                                    ; $6a4b: $77
    add hl, de                                    ; $6a4c: $19
    ld [hl+], a                                   ; $6a4d: $22
    inc d                                         ; $6a4e: $14
    add hl, de                                    ; $6a4f: $19
    rst $38                                       ; $6a50: $ff
    dec d                                         ; $6a51: $15
    ld b, b                                       ; $6a52: $40
    ld sp, $1411                                  ; $6a53: $31 $11 $14
    rla                                           ; $6a56: $17
    dec d                                         ; $6a57: $15
    inc hl                                        ; $6a58: $23
    add e                                         ; $6a59: $83
    ld [hl], b                                    ; $6a5a: $70
    ld [hl], c                                    ; $6a5b: $71
    add b                                         ; $6a5c: $80
    ld h, e                                       ; $6a5d: $63
    db $ec                                        ; $6a5e: $ec
    rst $28                                       ; $6a5f: $ef
    add b                                         ; $6a60: $80
    rst $38                                       ; $6a61: $ff
    nop                                           ; $6a62: $00
    rst $38                                       ; $6a63: $ff
    add b                                         ; $6a64: $80
    ld d, d                                       ; $6a65: $52
    inc l                                         ; $6a66: $2c
    rst $38                                       ; $6a67: $ff
    dec l                                         ; $6a68: $2d
    ld l, $2f                                     ; $6a69: $2e $2f
    ld e, a                                       ; $6a6b: $5f
    ld b, d                                       ; $6a6c: $42
    inc a                                         ; $6a6d: $3c
    dec a                                         ; $6a6e: $3d
    ld a, $87                                     ; $6a6f: $3e $87
    ccf                                           ; $6a71: $3f
    ld b, d                                       ; $6a72: $42
    ld b, d                                       ; $6a73: $42
    add b                                         ; $6a74: $80
    ld b, h                                       ; $6a75: $44
    xor $2c                                       ; $6a76: $ee $2c
    cp $2c                                        ; $6a78: $fe $2c
    ld b, b                                       ; $6a7a: $40
    ld c, h                                       ; $6a7b: $4c
    ld b, l                                       ; $6a7c: $45
    ld e, a                                       ; $6a7d: $5f
    ld b, [hl]                                    ; $6a7e: $46
    ld b, a                                       ; $6a7f: $47
    ld c, e                                       ; $6a80: $4b
    ld c, h                                       ; $6a81: $4c
    ld c, l                                       ; $6a82: $4d
    ld a, [$43e3]                                 ; $6a83: $fa $e3 $43
    sub h                                         ; $6a86: $94
    ld l, l                                       ; $6a87: $6d
    db $fc                                        ; $6a88: $fc
    or $f1                                        ; $6a89: $f6 $f1
    nop                                           ; $6a8b: $00
    ld c, h                                       ; $6a8c: $4c
    ld b, c                                       ; $6a8d: $41
    ld b, d                                       ; $6a8e: $42
    ld d, c                                       ; $6a8f: $51
    ld b, c                                       ; $6a90: $41
    ld b, d                                       ; $6a91: $42
    ld b, d                                       ; $6a92: $42
    rlca                                          ; $6a93: $07
    ld b, c                                       ; $6a94: $41
    ld d, c                                       ; $6a95: $51
    ld d, b                                       ; $6a96: $50
    ld a, [$c0e0]                                 ; $6a97: $fa $e0 $c0
    db $e4                                        ; $6a9a: $e4
    ld [de], a                                    ; $6a9b: $12
    add hl, hl                                    ; $6a9c: $29
    db $f4                                        ; $6a9d: $f4
    rst $28                                       ; $6a9e: $ef
    ret nz                                        ; $6a9f: $c0

    xor $f9                                       ; $6aa0: $ee $f9
    ld d, d                                       ; $6aa2: $52
    ret nz                                        ; $6aa3: $c0

    ld [c], a                                     ; $6aa4: $e2
    cp d                                          ; $6aa5: $ba
    pop hl                                        ; $6aa6: $e1
    adc h                                         ; $6aa7: $8c
    adc l                                         ; $6aa8: $8d
    adc [hl]                                      ; $6aa9: $8e
    adc a                                         ; $6aaa: $8f
    ld e, d                                       ; $6aab: $5a
    inc de                                        ; $6aac: $13
    ld e, e                                       ; $6aad: $5b
    ld e, h                                       ; $6aae: $5c
    add b                                         ; $6aaf: $80
    rst $38                                       ; $6ab0: $ff
    add b                                         ; $6ab1: $80
    ld [$8053], a                                 ; $6ab2: $ea $53 $80
    ld [c], a                                     ; $6ab5: $e2
    cp d                                          ; $6ab6: $ba
    pop hl                                        ; $6ab7: $e1
    add b                                         ; $6ab8: $80
    rst $38                                       ; $6ab9: $ff
    ld a, [c]                                     ; $6aba: $f2
    add b                                         ; $6abb: $80
    pop af                                        ; $6abc: $f1
    ld d, h                                       ; $6abd: $54
    ld b, b                                       ; $6abe: $40
    ld [c], a                                     ; $6abf: $e2
    cp d                                          ; $6ac0: $ba
    pop hl                                        ; $6ac1: $e1
    ld b, e                                       ; $6ac2: $43
    ld b, b                                       ; $6ac3: $40
    ld h, [hl]                                    ; $6ac4: $66
    ld h, a                                       ; $6ac5: $67
    db $e4                                        ; $6ac6: $e4
    nop                                           ; $6ac7: $00
    rst $38                                       ; $6ac8: $ff
    nop                                           ; $6ac9: $00
    db $ed                                        ; $6aca: $ed
    ld d, l                                       ; $6acb: $55
    nop                                           ; $6acc: $00
    ld [c], a                                     ; $6acd: $e2
    cp d                                          ; $6ace: $ba
    pop hl                                        ; $6acf: $e1
    ld b, e                                       ; $6ad0: $43
    ld b, b                                       ; $6ad1: $40
    ld l, b                                       ; $6ad2: $68
    ret                                           ; $6ad3: $c9


    ld l, c                                       ; $6ad4: $69
    add b                                         ; $6ad5: $80
    rst $38                                       ; $6ad6: $ff
    ret nz                                        ; $6ad7: $c0

    call $c056                                    ; $6ad8: $cd $56 $c0
    jp nz, $e1ba                                  ; $6adb: $c2 $ba $e1

    ld b, e                                       ; $6ade: $43
    ld b, b                                       ; $6adf: $40
    sub e                                         ; $6ae0: $93
    ld l, d                                       ; $6ae1: $6a
    ld l, e                                       ; $6ae2: $6b
    add b                                         ; $6ae3: $80
    rst $38                                       ; $6ae4: $ff
    add b                                         ; $6ae5: $80
    call $8057                                    ; $6ae6: $cd $57 $80
    jp nz, $e1ba                                  ; $6ae9: $c2 $ba $e1

    ld b, e                                       ; $6aec: $43
    ld c, a                                       ; $6aed: $4f
    ld [hl], h                                    ; $6aee: $74
    ld [hl], l                                    ; $6aef: $75
    add b                                         ; $6af0: $80
    add c                                         ; $6af1: $81
    add b                                         ; $6af2: $80
    rst $38                                       ; $6af3: $ff
    ld b, b                                       ; $6af4: $40
    call z, Call_04b_4058                         ; $6af5: $cc $58 $40
    jp nz, $ba3e                                  ; $6af8: $c2 $3e $ba

    pop hl                                        ; $6afb: $e1
    ld b, e                                       ; $6afc: $43
    halt                                          ; $6afd: $76
    ld [hl], a                                    ; $6afe: $77
    add d                                         ; $6aff: $82
    add e                                         ; $6b00: $83
    add b                                         ; $6b01: $80
    rst $38                                       ; $6b02: $ff
    nop                                           ; $6b03: $00
    call z, Call_04b_59f9                         ; $6b04: $cc $f9 $59
    nop                                           ; $6b07: $00
    jp nz, $e1ba                                  ; $6b08: $c2 $ba $e1

    ld b, e                                       ; $6b0b: $43
    ld a, b                                       ; $6b0c: $78
    ld a, c                                       ; $6b0d: $79
    add h                                         ; $6b0e: $84
    add l                                         ; $6b0f: $85
    nop                                           ; $6b10: $00
    add b                                         ; $6b11: $80
    rst $38                                       ; $6b12: $ff
    ld a, [hl]                                    ; $6b13: $7e
    xor c                                         ; $6b14: $a9
    ld d, h                                       ; $6b15: $54
    or c                                          ; $6b16: $b1
    add b                                         ; $6b17: $80
    rst $38                                       ; $6b18: $ff
    inc a                                         ; $6b19: $3c
    and a                                         ; $6b1a: $a7
    sub h                                         ; $6b1b: $94
    ei                                            ; $6b1c: $fb
    add b                                         ; $6b1d: $80
    rst $38                                       ; $6b1e: $ff
    sub h                                         ; $6b1f: $94
    ei                                            ; $6b20: $fb
    nop                                           ; $6b21: $00
    add b                                         ; $6b22: $80
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $38                                       ; $6b26: $ff
    rst $38                                       ; $6b27: $ff
    rst $38                                       ; $6b28: $ff
    rst $38                                       ; $6b29: $ff
    rst $38                                       ; $6b2a: $ff
    rst $38                                       ; $6b2b: $ff
    rst $38                                       ; $6b2c: $ff
    rst $38                                       ; $6b2d: $ff
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    nop                                           ; $6b32: $00
    rst $38                                       ; $6b33: $ff
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    rst $38                                       ; $6b36: $ff
    rst $38                                       ; $6b37: $ff
    rst $38                                       ; $6b38: $ff
    rst $38                                       ; $6b39: $ff
    rst $38                                       ; $6b3a: $ff
    rst $38                                       ; $6b3b: $ff
    rst $38                                       ; $6b3c: $ff
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    rst $38                                       ; $6b3f: $ff
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    nop                                           ; $6b43: $00
    rst $38                                       ; $6b44: $ff
    rst $38                                       ; $6b45: $ff
    rst $38                                       ; $6b46: $ff
    rst $38                                       ; $6b47: $ff
    rst $38                                       ; $6b48: $ff
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    rst $38                                       ; $6b4b: $ff
    rst $38                                       ; $6b4c: $ff
    rst $38                                       ; $6b4d: $ff
    rst $38                                       ; $6b4e: $ff
    rst $38                                       ; $6b4f: $ff
    rst $38                                       ; $6b50: $ff
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    rst $38                                       ; $6b53: $ff
    nop                                           ; $6b54: $00
    rst $38                                       ; $6b55: $ff
    rst $38                                       ; $6b56: $ff
    rst $38                                       ; $6b57: $ff
    rst $38                                       ; $6b58: $ff
    rst $38                                       ; $6b59: $ff
    rst $38                                       ; $6b5a: $ff
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    rst $38                                       ; $6b5e: $ff
    rst $38                                       ; $6b5f: $ff
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    rst $38                                       ; $6b64: $ff
    nop                                           ; $6b65: $00
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    rst $38                                       ; $6b68: $ff
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    rst $38                                       ; $6b70: $ff
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff
    rst $38                                       ; $6b73: $ff
    rst $38                                       ; $6b74: $ff
    rst $38                                       ; $6b75: $ff
    nop                                           ; $6b76: $00
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    rst $38                                       ; $6b7a: $ff
    rst $38                                       ; $6b7b: $ff
    rst $38                                       ; $6b7c: $ff
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    nop                                           ; $6b83: $00
    inc hl                                        ; $6b84: $23
    nop                                           ; $6b85: $00
    nop                                           ; $6b86: $00
    nop                                           ; $6b87: $00
    ld b, a                                       ; $6b88: $47
    add hl, bc                                    ; $6b89: $09
    add hl, bc                                    ; $6b8a: $09
    ld [$ecff], sp                                ; $6b8b: $08 $ff $ec
    xor $eb                                       ; $6b8e: $ee $eb
    ldh [$e2], a                                  ; $6b90: $e0 $e2
    rrca                                          ; $6b92: $0f
    rst $38                                       ; $6b93: $ff
    and $60                                       ; $6b94: $e6 $60
    ldh [$f3], a                                  ; $6b96: $e0 $f3
    ret nz                                        ; $6b98: $c0

    ld hl, sp-$01                                 ; $6b99: $f8 $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff
    db $fd                                        ; $6b9e: $fd
    db $fc                                        ; $6b9f: $fc
    ld c, $0e                                     ; $6ba0: $0e $0e
    ldh [rIE], a                                  ; $6ba2: $e0 $ff
    ld [$ffff], sp                                ; $6ba4: $08 $ff $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $10                                       ; $6ba9: $d7
    ret nz                                        ; $6baa: $c0

    ld c, b                                       ; $6bab: $48
    db $dd                                        ; $6bac: $dd
    pop af                                        ; $6bad: $f1
    ld [$c4c2], a                                 ; $6bae: $ea $c2 $c4
    ld hl, sp-$20                                 ; $6bb1: $f8 $e0
    db $fd                                        ; $6bb3: $fd
    nop                                           ; $6bb4: $00
    rst $38                                       ; $6bb5: $ff
    rst $38                                       ; $6bb6: $ff
    and b                                         ; $6bb7: $a0
    rst $38                                       ; $6bb8: $ff
    ldh [rIE], a                                  ; $6bb9: $e0 $ff
    rst $38                                       ; $6bbb: $ff
    rst $38                                       ; $6bbc: $ff
    rst $38                                       ; $6bbd: $ff
    rst $38                                       ; $6bbe: $ff
    pop af                                        ; $6bbf: $f1
    ldh a, [rP1]                                  ; $6bc0: $f0 $00
    nop                                           ; $6bc2: $00
    nop                                           ; $6bc3: $00
    rst $28                                       ; $6bc4: $ef
    ld e, $1f                                     ; $6bc5: $1e $1f
    ld [bc], a                                    ; $6bc7: $02
    inc bc                                        ; $6bc8: $03
    rst $38                                       ; $6bc9: $ff
    ld [$1e04], a                                 ; $6bca: $ea $04 $1e
    rra                                           ; $6bcd: $1f
    db $fd                                        ; $6bce: $fd
    db $f4                                        ; $6bcf: $f4
    rst $38                                       ; $6bd0: $ff
    add sp, $1c                                   ; $6bd1: $e8 $1c
    dec e                                         ; $6bd3: $1d
    dec b                                         ; $6bd4: $05
    ld [de], a                                    ; $6bd5: $12
    ld [de], a                                    ; $6bd6: $12
    sub $ff                                       ; $6bd7: $d6 $ff
    rst $10                                       ; $6bd9: $d7
    ret c                                         ; $6bda: $d8

    reti                                          ; $6bdb: $d9


    jp c, $dcdb                                   ; $6bdc: $da $db $dc

    db $dd                                        ; $6bdf: $dd
    sbc $bf                                       ; $6be0: $de $bf
    rst $18                                       ; $6be2: $df
    ld [de], a                                    ; $6be3: $12
    ld [de], a                                    ; $6be4: $12
    ld b, $1c                                     ; $6be5: $06 $1c
    dec e                                         ; $6be7: $1d
    ldh [$e9], a                                  ; $6be8: $e0 $e9
    ld e, $17                                     ; $6bea: $1e $17
    rra                                           ; $6bec: $1f
    rlca                                          ; $6bed: $07
    ld [$eaff], sp                                ; $6bee: $08 $ff $ea
    add hl, bc                                    ; $6bf1: $09
    ret nz                                        ; $6bf2: $c0

    db $eb                                        ; $6bf3: $eb
    and d                                         ; $6bf4: $a2
    db $ec                                        ; $6bf5: $ec
    sbc [hl]                                      ; $6bf6: $9e
    ld [c], a                                     ; $6bf7: $e2
    cp $a0                                        ; $6bf8: $fe $a0
    jp hl                                         ; $6bfa: $e9


    dec b                                         ; $6bfb: $05
    ld [de], a                                    ; $6bfc: $12
    ldh a, [$f1]                                  ; $6bfd: $f0 $f1
    ld a, [c]                                     ; $6bff: $f2
    di                                            ; $6c00: $f3
    db $f4                                        ; $6c01: $f4
    rst $18                                       ; $6c02: $df
    push af                                       ; $6c03: $f5
    or $f7                                        ; $6c04: $f6 $f7
    ld hl, sp-$04                                 ; $6c06: $f8 $fc
    rst $38                                       ; $6c08: $ff
    db $e3                                        ; $6c09: $e3
    ld de, $c606                                  ; $6c0a: $11 $06 $c6
    ldh [$eb], a                                  ; $6c0d: $e0 $eb
    ld de, $fd12                                  ; $6c0f: $11 $12 $fd
    pop hl                                        ; $6c12: $e1
    cp $e7                                        ; $6c13: $fe $e7
    ldh [$ee], a                                  ; $6c15: $e0 $ee
    ret nz                                        ; $6c17: $c0

    pop bc                                        ; $6c18: $c1
    halt                                          ; $6c19: $76
    ldh [$fb], a                                  ; $6c1a: $e0 $fb
    jp nz, $c0c3                                  ; $6c1c: $c2 $c3 $c0

    ld a, [$1013]                                 ; $6c1f: $fa $13 $10
    db $10                                        ; $6c22: $10
    db $fd                                        ; $6c23: $fd
    ldh [$d8], a                                  ; $6c24: $e0 $d8
    cp $e7                                        ; $6c26: $fe $e7
    add b                                         ; $6c28: $80
    rst $38                                       ; $6c29: $ff
    ldh [$ec], a                                  ; $6c2a: $e0 $ec
    ret nc                                        ; $6c2c: $d0

    pop de                                        ; $6c2d: $d1
    ld h, b                                       ; $6c2e: $60
    ei                                            ; $6c2f: $fb
    jp nc, $d8d3                                  ; $6c30: $d2 $d3 $d8

    add b                                         ; $6c33: $80
    rst $38                                       ; $6c34: $ff
    add b                                         ; $6c35: $80
    rst $38                                       ; $6c36: $ff
    nop                                           ; $6c37: $00
    rst $30                                       ; $6c38: $f7
    ldh [$e1], a                                  ; $6c39: $e0 $e1
    ldh [$db], a                                  ; $6c3b: $e0 $db
    ld [c], a                                     ; $6c3d: $e2
    db $e3                                        ; $6c3e: $e3
    nop                                           ; $6c3f: $00
    add b                                         ; $6c40: $80
    rst $38                                       ; $6c41: $ff
    add b                                         ; $6c42: $80
    or $22                                        ; $6c43: $f6 $22
    call z, $c21e                                 ; $6c45: $cc $1e $c2
    ldh [$a9], a                                  ; $6c48: $e0 $a9
    nop                                           ; $6c4a: $00

jr_04b_6c4b:
    nop                                           ; $6c4b: $00
    nop                                           ; $6c4c: $00
    ld [hl], l                                    ; $6c4d: $75
    add hl, bc                                    ; $6c4e: $09
    rst $38                                       ; $6c4f: $ff
    ldh a, [$0a]                                  ; $6c50: $f0 $0a
    rst $38                                       ; $6c52: $ff
    add sp, $09                                   ; $6c53: $e8 $09
    add hl, bc                                    ; $6c55: $09
    ld [$ecff], sp                                ; $6c56: $08 $ff $ec
    ld [bc], a                                    ; $6c59: $02
    ldh [$f0], a                                  ; $6c5a: $e0 $f0
    rrca                                          ; $6c5c: $0f
    rst $38                                       ; $6c5d: $ff
    and $e0                                       ; $6c5e: $e6 $e0
    di                                            ; $6c60: $f3
    ret nz                                        ; $6c61: $c0

    ld a, [$fd80]                                 ; $6c62: $fa $80 $fd
    ld a, a                                       ; $6c65: $7f
    db $ec                                        ; $6c66: $ec
    ldh [rIE], a                                  ; $6c67: $e0 $ff
    jr nc, jr_04b_6c4b                            ; $6c69: $30 $e0

    rst $38                                       ; $6c6b: $ff
    ldh [rIE], a                                  ; $6c6c: $e0 $ff
    ldh [rIE], a                                  ; $6c6e: $e0 $ff
    ldh [$f0], a                                  ; $6c70: $e0 $f0
    ld a, [bc]                                    ; $6c72: $0a
    ld a, [bc]                                    ; $6c73: $0a
    ldh [rIE], a                                  ; $6c74: $e0 $ff
    and b                                         ; $6c76: $a0
    rst $38                                       ; $6c77: $ff
    nop                                           ; $6c78: $00
    ldh [rIE], a                                  ; $6c79: $e0 $ff
    ldh [rIE], a                                  ; $6c7b: $e0 $ff
    ldh [rIE], a                                  ; $6c7d: $e0 $ff
    ldh [rIE], a                                  ; $6c7f: $e0 $ff
    ld h, b                                       ; $6c81: $60
    rst $18                                       ; $6c82: $df
    jr @-$3d                                      ; $6c83: $18 $c1

    nop                                           ; $6c85: $00
    nop                                           ; $6c86: $00
    nop                                           ; $6c87: $00
    db $eb                                        ; $6c88: $eb
    ld e, $1f                                     ; $6c89: $1e $1f
    cp $ef                                        ; $6c8b: $fe $ef
    db $f4                                        ; $6c8d: $f4
    rst $38                                       ; $6c8e: $ff
    add sp, $1c                                   ; $6c8f: $e8 $1c
    dec e                                         ; $6c91: $1d
    ld [bc], a                                    ; $6c92: $02
    db $dd                                        ; $6c93: $dd
    inc bc                                        ; $6c94: $03
    rst $38                                       ; $6c95: $ff
    ld [$1c04], a                                 ; $6c96: $ea $04 $1c
    dec e                                         ; $6c99: $1d
    ldh [$e9], a                                  ; $6c9a: $e0 $e9
    ld e, $1f                                     ; $6c9c: $1e $1f
    rst $38                                       ; $6c9e: $ff
    dec b                                         ; $6c9f: $05
    ld [de], a                                    ; $6ca0: $12
    ld [de], a                                    ; $6ca1: $12
    sub $d7                                       ; $6ca2: $d6 $d7
    ret c                                         ; $6ca4: $d8

    reti                                          ; $6ca5: $d9


    jp c, $dbff                                   ; $6ca6: $da $ff $db

    call c, $dedd                                 ; $6ca9: $dc $dd $de
    rst $18                                       ; $6cac: $df
    ld [de], a                                    ; $6cad: $12
    ld [de], a                                    ; $6cae: $12
    ld b, $96                                     ; $6caf: $06 $96
    ret nz                                        ; $6cb1: $c0

    db $ed                                        ; $6cb2: $ed
    rlca                                          ; $6cb3: $07
    ld [$eaff], sp                                ; $6cb4: $08 $ff $ea
    add hl, bc                                    ; $6cb7: $09
    ret nz                                        ; $6cb8: $c0

    db $ed                                        ; $6cb9: $ed
    add b                                         ; $6cba: $80
    db $fd                                        ; $6cbb: $fd
    inc e                                         ; $6cbc: $1c
    or $7f                                        ; $6cbd: $f6 $7f
    ld [$1d04], a                                 ; $6cbf: $ea $04 $1d
    ret nz                                        ; $6cc2: $c0

    xor $05                                       ; $6cc3: $ee $05
    ld [de], a                                    ; $6cc5: $12
    ld h, $27                                     ; $6cc6: $26 $27
    xor a                                         ; $6cc8: $af
    jr z, @+$2b                                   ; $6cc9: $28 $29

    ld a, [hl+]                                   ; $6ccb: $2a
    ld [de], a                                    ; $6ccc: $12
    rst $38                                       ; $6ccd: $ff
    ld [c], a                                     ; $6cce: $e2
    ld b, $c0                                     ; $6ccf: $06 $c0
    rst $28                                       ; $6cd1: $ef
    dec b                                         ; $6cd2: $05
    db $e3                                        ; $6cd3: $e3
    ld [de], a                                    ; $6cd4: $12
    db $10                                        ; $6cd5: $10
    rst $38                                       ; $6cd6: $ff
    ld [c], a                                     ; $6cd7: $e2
    ldh [$e3], a                                  ; $6cd8: $e0 $e3
    ret nz                                        ; $6cda: $c0

    pop af                                        ; $6cdb: $f1
    cp h                                          ; $6cdc: $bc
    cp l                                          ; $6cdd: $bd
    cp [hl]                                       ; $6cde: $be
    rst $28                                       ; $6cdf: $ef
    rst $00                                       ; $6ce0: $c7
    ret z                                         ; $6ce1: $c8

    ret                                           ; $6ce2: $c9


    ld de, $f6c0                                  ; $6ce3: $11 $c0 $f6
    inc de                                        ; $6ce6: $13
    db $10                                        ; $6ce7: $10
    rst $20                                       ; $6ce8: $e7
    rst $20                                       ; $6ce9: $e7
    inc de                                        ; $6cea: $13
    db $10                                        ; $6ceb: $10
    db $10                                        ; $6cec: $10
    ldh [$e3], a                                  ; $6ced: $e0 $e3
    add b                                         ; $6cef: $80
    pop af                                        ; $6cf0: $f1
    inc de                                        ; $6cf1: $13
    db $10                                        ; $6cf2: $10
    add sp, -$2a                                  ; $6cf3: $e8 $d6
    ldh [$e1], a                                  ; $6cf5: $e0 $e1
    call nc, $c0d5                                ; $6cf7: $d4 $d5 $c0
    or $e9                                        ; $6cfa: $f6 $e9
    ret nz                                        ; $6cfc: $c0

    pop hl                                        ; $6cfd: $e1
    db $e4                                        ; $6cfe: $e4
    push hl                                       ; $6cff: $e5
    jp nc, $f6c0                                  ; $6d00: $d2 $c0 $f6

    ld [$e6a0], a                                 ; $6d03: $ea $a0 $e6
    add b                                         ; $6d06: $80
    di                                            ; $6d07: $f3
    db $eb                                        ; $6d08: $eb
    add b                                         ; $6d09: $80
    ldh [$2b], a                                  ; $6d0a: $e0 $2b
    inc l                                         ; $6d0c: $2c
    xor a                                         ; $6d0d: $af
    dec l                                         ; $6d0e: $2d
    ld l, $2f                                     ; $6d0f: $2e $2f
    ccf                                           ; $6d11: $3f
    add b                                         ; $6d12: $80
    di                                            ; $6d13: $f3
    db $ec                                        ; $6d14: $ec
    ret nz                                        ; $6d15: $c0

    ld a, [$93c4]                                 ; $6d16: $fa $c4 $93
    push bc                                       ; $6d19: $c5
    add $40                                       ; $6d1a: $c6 $40
    ld hl, sp+$5f                                 ; $6d1c: $f8 $5f
    jp z, $8009                                   ; $6d1e: $ca $09 $80

    rst $08                                       ; $6d21: $cf
    cp $ea                                        ; $6d22: $fe $ea
    ld e, $00                                     ; $6d24: $1e $00

jr_04b_6d26:
    add b                                         ; $6d26: $80
    call z, $0000                                 ; $6d27: $cc $00 $00
    nop                                           ; $6d2a: $00
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    nop                                           ; $6d2d: $00
    db $fc                                        ; $6d2e: $fc
    nop                                           ; $6d2f: $00
    ld sp, hl                                     ; $6d30: $f9
    inc bc                                        ; $6d31: $03
    ld a, [$ff03]                                 ; $6d32: $fa $03 $ff
    jp nz, $9c06                                  ; $6d35: $c2 $06 $9c

    ld a, $a0                                     ; $6d38: $3e $a0
    ld [hl-], a                                   ; $6d3a: $32
    sub d                                         ; $6d3b: $92
    ld a, [hl-]                                   ; $6d3c: $3a
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    nop                                           ; $6d3f: $00
    ccf                                           ; $6d40: $3f
    nop                                           ; $6d41: $00
    sbc a                                         ; $6d42: $9f
    ret nz                                        ; $6d43: $c0

    ld e, a                                       ; $6d44: $5f
    ret nz                                        ; $6d45: $c0

jr_04b_6d46:
    rst $38                                       ; $6d46: $ff
    ld b, e                                       ; $6d47: $43
    ld h, b                                       ; $6d48: $60
    add hl, sp                                    ; $6d49: $39
    ld a, h                                       ; $6d4a: $7c
    dec b                                         ; $6d4b: $05
    ld c, h                                       ; $6d4c: $4c
    ld c, c                                       ; $6d4d: $49
    ld e, h                                       ; $6d4e: $5c
    db $eb                                        ; $6d4f: $eb
    rst $38                                       ; $6d50: $ff
    nop                                           ; $6d51: $00
    sbc $ea                                       ; $6d52: $de $ea
    jr nc, jr_04b_6d46                            ; $6d54: $30 $f0

    pop hl                                        ; $6d56: $e1
    ld a, a                                       ; $6d57: $7f
    nop                                           ; $6d58: $00
    ccf                                           ; $6d59: $3f
    rst $38                                       ; $6d5a: $ff
    add b                                         ; $6d5b: $80
    cp a                                          ; $6d5c: $bf
    add b                                         ; $6d5d: $80
    add a                                         ; $6d5e: $87
    ret nz                                        ; $6d5f: $c0

    ld [hl], e                                    ; $6d60: $73
    ld hl, sp+$0b                                 ; $6d61: $f8 $0b
    ld sp, hl                                     ; $6d63: $f9
    jr jr_04b_6d26                                ; $6d64: $18 $c0

    db $fd                                        ; $6d66: $fd
    and d                                         ; $6d67: $a2
    db $e3                                        ; $6d68: $e3
    ld a, [c]                                     ; $6d69: $f2
    ld b, $84                                     ; $6d6a: $06 $84
    ld c, $3c                                     ; $6d6c: $0e $3c
    rst $18                                       ; $6d6e: $df
    ld a, h                                       ; $6d6f: $7c
    ld b, b                                       ; $6d70: $40
    ld h, d                                       ; $6d71: $62
    ld [hl+], a                                   ; $6d72: $22
    ld [hl], d                                    ; $6d73: $72
    and d                                         ; $6d74: $a2
    db $e3                                        ; $6d75: $e3
    ld c, a                                       ; $6d76: $4f
    ld h, b                                       ; $6d77: $60
    rst $38                                       ; $6d78: $ff
    ld hl, $3c70                                  ; $6d79: $21 $70 $3c
    ld a, $02                                     ; $6d7c: $3e $02
    ld b, [hl]                                    ; $6d7e: $46
    ld b, h                                       ; $6d7f: $44
    ld c, [hl]                                    ; $6d80: $4e
    rst $38                                       ; $6d81: $ff
    ret z                                         ; $6d82: $c8

    ld e, $e4                                     ; $6d83: $1e $e4
    inc c                                         ; $6d85: $0c
    add sp, $0d                                   ; $6d86: $e8 $0d
    ret                                           ; $6d88: $c9


    dec de                                        ; $6d89: $1b
    rst $18                                       ; $6d8a: $df
    jp nc, $cc1f                                  ; $6d8b: $d2 $1f $cc

    ld e, $e1                                     ; $6d8e: $1e $e1
    sub h                                         ; $6d90: $94
    ldh [rNR13], a                                ; $6d91: $e0 $13
    ld a, b                                       ; $6d93: $78
    rst $38                                       ; $6d94: $ff
    daa                                           ; $6d95: $27
    jr nc, jr_04b_6daf                            ; $6d96: $30 $17

    or b                                          ; $6d98: $b0
    sub e                                         ; $6d99: $93
    ret c                                         ; $6d9a: $d8

    ld c, e                                       ; $6d9b: $4b
    ld hl, sp-$09                                 ; $6d9c: $f8 $f7
    inc sp                                        ; $6d9e: $33
    ld a, b                                       ; $6d9f: $78
    add a                                         ; $6da0: $87
    add h                                         ; $6da1: $84
    ldh [$90], a                                  ; $6da2: $e0 $90
    ld a, [hl-]                                   ; $6da4: $3a
    ret z                                         ; $6da5: $c8

    dec e                                         ; $6da6: $1d
    ld a, a                                       ; $6da7: $7f
    jp hl                                         ; $6da8: $e9


    rrca                                          ; $6da9: $0f
    ld [$e40f], a                                 ; $6daa: $ea $0f $e4
    ld c, $f1                                     ; $6dad: $0e $f1

jr_04b_6daf:
    halt                                          ; $6daf: $76
    ldh [$fe], a                                  ; $6db0: $e0 $fe
    ldh [$e0], a                                  ; $6db2: $e0 $e0
    cp b                                          ; $6db4: $b8
    daa                                           ; $6db5: $27
    ld [hl], b                                    ; $6db6: $70
    cpl                                           ; $6db7: $2f
    ldh [$af], a                                  ; $6db8: $e0 $af
    ldh [$e7], a                                  ; $6dba: $e0 $e7
    ld c, a                                       ; $6dbc: $4f
    ldh [$1f], a                                  ; $6dbd: $e0 $1f
    ldh a, [$e2]                                  ; $6dbf: $f0 $e2
    ret nz                                        ; $6dc1: $c0

    rst $38                                       ; $6dc2: $ff
    ret z                                         ; $6dc3: $c8

    inc e                                         ; $6dc4: $1c
    ret z                                         ; $6dc5: $c8

    rst $38                                       ; $6dc6: $ff
    dec e                                         ; $6dc7: $1d
    ret nc                                        ; $6dc8: $d0

    dec de                                        ; $6dc9: $1b
    sub c                                         ; $6dca: $91
    ccf                                           ; $6dcb: $3f
    and [hl]                                      ; $6dcc: $a6
    ccf                                           ; $6dcd: $3f
    sbc b                                         ; $6dce: $98
    rst $38                                       ; $6dcf: $ff
    inc a                                         ; $6dd0: $3c
    jp Jump_000_0900                              ; $6dd1: $c3 $00 $09


    ld e, h                                       ; $6dd4: $5c
    inc de                                        ; $6dd5: $13
    jr c, jr_04b_6deb                             ; $6dd6: $38 $13

    rst $38                                       ; $6dd8: $ff
    cp b                                          ; $6dd9: $b8
    dec bc                                        ; $6dda: $0b
    ret c                                         ; $6ddb: $d8

    adc c                                         ; $6ddc: $89
    db $fc                                        ; $6ddd: $fc
    ld h, l                                       ; $6dde: $65
    db $fc                                        ; $6ddf: $fc
    add hl, de                                    ; $6de0: $19
    nop                                           ; $6de1: $00
    ldh a, [$e0]                                  ; $6de2: $f0 $e0
    nop                                           ; $6de4: $00
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    rst $38                                       ; $6de7: $ff
    pop bc                                        ; $6de8: $c1
    rst $38                                       ; $6de9: $ff
    and c                                         ; $6dea: $a1

jr_04b_6deb:
    rst $38                                       ; $6deb: $ff
    sub c                                         ; $6dec: $91
    rst $38                                       ; $6ded: $ff
    adc c                                         ; $6dee: $89
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    add l                                         ; $6df1: $85
    rst $38                                       ; $6df2: $ff
    add e                                         ; $6df3: $83
    rst $38                                       ; $6df4: $ff
    add c                                         ; $6df5: $81
    rst $38                                       ; $6df6: $ff
    add b                                         ; $6df7: $80
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    nop                                           ; $6dfb: $00
    rst $38                                       ; $6dfc: $ff
    nop                                           ; $6dfd: $00
    ld a, l                                       ; $6dfe: $7d
    cp $ba                                        ; $6dff: $fe $ba
    rst $00                                       ; $6e01: $c7
    cp a                                          ; $6e02: $bf
    add e                                         ; $6e03: $83
    rst $38                                       ; $6e04: $ff
    rst $00                                       ; $6e05: $c7
    rst $38                                       ; $6e06: $ff

jr_04b_6e07:
    rst $28                                       ; $6e07: $ef
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    pop hl                                        ; $6e0a: $e1
    ret nc                                        ; $6e0b: $d0

    ld a, a                                       ; $6e0c: $7f
    rst $28                                       ; $6e0d: $ef
    sbc a                                         ; $6e0e: $9f
    rst $38                                       ; $6e0f: $ff
    and b                                         ; $6e10: $a0
    rst $38                                       ; $6e11: $ff
    xor a                                         ; $6e12: $af
    ldh a, [$fe]                                  ; $6e13: $f0 $fe
    db $e3                                        ; $6e15: $e3
    ldh a, [$df]                                  ; $6e16: $f0 $df
    pop hl                                        ; $6e18: $e1
    db $fc                                        ; $6e19: $fc
    ld [c], a                                     ; $6e1a: $e2
    ret c                                         ; $6e1b: $d8

    ldh [$fc], a                                  ; $6e1c: $e0 $fc
    ld [c], a                                     ; $6e1e: $e2
    rst $38                                       ; $6e1f: $ff
    rlca                                          ; $6e20: $07
    rst $38                                       ; $6e21: $ff
    di                                            ; $6e22: $f3
    rra                                           ; $6e23: $1f
    rst $38                                       ; $6e24: $ff
    dec bc                                        ; $6e25: $0b
    rst $38                                       ; $6e26: $ff
    ei                                            ; $6e27: $fb
    rrca                                          ; $6e28: $0f
    cp $e3                                        ; $6e29: $fe $e3
    ret c                                         ; $6e2b: $d8

    push hl                                       ; $6e2c: $e5
    ret nc                                        ; $6e2d: $d0

    push hl                                       ; $6e2e: $e5
    inc e                                         ; $6e2f: $1c
    add sp, -$1b                                  ; $6e30: $e8 $e5
    ldh [$ed], a                                  ; $6e32: $e0 $ed
    sbc a                                         ; $6e34: $9f
    rst $38                                       ; $6e35: $ff
    ret nz                                        ; $6e36: $c0

    and d                                         ; $6e37: $a2
    ld [c], a                                     ; $6e38: $e2
    cp b                                          ; $6e39: $b8
    rst $20                                       ; $6e3a: $e7
    xor b                                         ; $6e3b: $a8
    pop hl                                        ; $6e3c: $e1
    sbc l                                         ; $6e3d: $9d
    rst $38                                       ; $6e3e: $ff
    cp b                                          ; $6e3f: $b8
    db $e4                                        ; $6e40: $e4
    db $eb                                        ; $6e41: $eb
    rra                                           ; $6e42: $1f
    di                                            ; $6e43: $f3
    xor b                                         ; $6e44: $a8
    ldh [$e0], a                                  ; $6e45: $e0 $e0
    db $e3                                        ; $6e47: $e3
    rst $10                                       ; $6e48: $d7
    rst $38                                       ; $6e49: $ff
    jr c, jr_04b_6e07                             ; $6e4a: $38 $bb

    ld a, h                                       ; $6e4c: $7c
    ld l, l                                       ; $6e4d: $6d
    cp $c6                                        ; $6e4e: $fe $c6
    rst $38                                       ; $6e50: $ff
    add d                                         ; $6e51: $82
    rst $18                                       ; $6e52: $df
    rst $38                                       ; $6e53: $ff
    cp $ff                                        ; $6e54: $fe $ff
    add b                                         ; $6e56: $80
    ld a, a                                       ; $6e57: $7f
    ld h, b                                       ; $6e58: $60

jr_04b_6e59:
    ldh [$fe], a                                  ; $6e59: $e0 $fe
    add d                                         ; $6e5b: $82
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    add $ff                                       ; $6e5e: $c6 $ff
    ld l, h                                       ; $6e60: $6c
    rst $38                                       ; $6e61: $ff
    cp c                                          ; $6e62: $b9
    ld a, [hl]                                    ; $6e63: $7e
    db $d3                                        ; $6e64: $d3
    rst $38                                       ; $6e65: $ff
    inc a                                         ; $6e66: $3c
    rst $20                                       ; $6e67: $e7
    jr jr_04b_6e59                                ; $6e68: $18 $ef

    ld e, $da                                     ; $6e6a: $1e $da
    ccf                                           ; $6e6c: $3f
    or d                                          ; $6e6d: $b2
    rst $38                                       ; $6e6e: $ff
    ld a, a                                       ; $6e6f: $7f
    ld [c], a                                     ; $6e70: $e2
    ld a, a                                       ; $6e71: $7f
    or d                                          ; $6e72: $b2
    ld a, a                                       ; $6e73: $7f
    jp c, $ee3f                                   ; $6e74: $da $3f $ee

    rst $38                                       ; $6e77: $ff
    rra                                           ; $6e78: $1f
    ldh a, [rIF]                                  ; $6e79: $f0 $0f
    rst $30                                       ; $6e7b: $f7
    ld a, b                                       ; $6e7c: $78
    db $db                                        ; $6e7d: $db
    ld a, h                                       ; $6e7e: $7c
    call Call_04b_7eff                            ; $6e7f: $cd $ff $7e
    add $7f                                       ; $6e82: $c6 $7f
    call z, $d97f                                 ; $6e84: $cc $7f $d9

jr_04b_6e87:
    ld a, [hl]                                    ; $6e87: $7e
    di                                            ; $6e88: $f3
    rst $30                                       ; $6e89: $f7
    ld a, h                                       ; $6e8a: $7c
    rst $00                                       ; $6e8b: $c7
    jr c, jr_04b_6ede                             ; $6e8c: $38 $50

    add sp, $0a                                   ; $6e8e: $e8 $0a
    ld a, [$fa0f]                                 ; $6e90: $fa $0f $fa
    db $fd                                        ; $6e93: $fd
    dec b                                         ; $6e94: $05
    ld b, b                                       ; $6e95: $40
    and $0e                                       ; $6e96: $e6 $0e
    ld a, [$fe0f]                                 ; $6e98: $fa $0f $fe
    rrca                                          ; $6e9b: $0f
    ld hl, sp+$41                                 ; $6e9c: $f8 $41
    rlca                                          ; $6e9e: $07
    jr c, jr_04b_6e87                             ; $6e9f: $38 $e6

    ld [hl-], a                                   ; $6ea1: $32
    db $e4                                        ; $6ea2: $e4
    db $fd                                        ; $6ea3: $fd
    ret nz                                        ; $6ea4: $c0

    cp $eb                                        ; $6ea5: $fe $eb
    ldh [$eb], a                                  ; $6ea7: $e0 $eb
    nop                                           ; $6ea9: $00
    ldh [$ec], a                                  ; $6eaa: $e0 $ec
    rst $38                                       ; $6eac: $ff
    rst $38                                       ; $6ead: $ff
    cp l                                          ; $6eae: $bd
    inc a                                         ; $6eaf: $3c
    ld b, d                                       ; $6eb0: $42
    ld a, [hl]                                    ; $6eb1: $7e
    sbc c                                         ; $6eb2: $99
    rst $38                                       ; $6eb3: $ff
    cp l                                          ; $6eb4: $bd
    rst $38                                       ; $6eb5: $ff
    rst $20                                       ; $6eb6: $e7
    cp l                                          ; $6eb7: $bd
    rst $20                                       ; $6eb8: $e7
    sbc c                                         ; $6eb9: $99
    rst $38                                       ; $6eba: $ff
    ld b, d                                       ; $6ebb: $42
    ld a, [hl]                                    ; $6ebc: $7e
    cp l                                          ; $6ebd: $bd
    ld a, l                                       ; $6ebe: $7d
    inc a                                         ; $6ebf: $3c
    ret nz                                        ; $6ec0: $c0

    pop bc                                        ; $6ec1: $c1
    cp l                                          ; $6ec2: $bd
    inc a                                         ; $6ec3: $3c
    jp $c37e                                      ; $6ec4: $c3 $7e $c3


    db $f4                                        ; $6ec7: $f4
    db $e4                                        ; $6ec8: $e4
    rst $38                                       ; $6ec9: $ff
    db $eb                                        ; $6eca: $eb
    ld [$1cf7], sp                                ; $6ecb: $08 $f7 $1c
    rst $30                                       ; $6ece: $f7
    ld a, a                                       ; $6ecf: $7f
    pop bc                                        ; $6ed0: $c1
    ld a, a                                       ; $6ed1: $7f
    rst $38                                       ; $6ed2: $ff
    and d                                         ; $6ed3: $a2
    ld a, $aa                                     ; $6ed4: $3e $aa
    ld a, $d5                                     ; $6ed6: $3e $d5
    ld [hl], a                                    ; $6ed8: $77
    db $eb                                        ; $6ed9: $eb
    ld h, e                                       ; $6eda: $63
    cp a                                          ; $6edb: $bf
    rst $38                                       ; $6edc: $ff
    inc c                                         ; $6edd: $0c

jr_04b_6ede:
    db $fd                                        ; $6ede: $fd
    ld e, $fd                                     ; $6edf: $1e $fd
    ld c, $fe                                     ; $6ee1: $0e $fe
    push hl                                       ; $6ee3: $e5
    ld sp, hl                                     ; $6ee4: $f9
    rst $38                                       ; $6ee5: $ff
    ld b, $ff                                     ; $6ee6: $06 $ff
    cp [hl]                                       ; $6ee8: $be
    rst $20                                       ; $6ee9: $e7
    rst $38                                       ; $6eea: $ff
    adc $b7                                       ; $6eeb: $ce $b7
    db $fc                                        ; $6eed: $fc
    rst $38                                       ; $6eee: $ff
    sbc a                                         ; $6eef: $9f
    pop af                                        ; $6ef0: $f1
    cp [hl]                                       ; $6ef1: $be
    rst $20                                       ; $6ef2: $e7
    ld hl, sp-$01                                 ; $6ef3: $f8 $ff
    rst $38                                       ; $6ef5: $ff
    ret nz                                        ; $6ef6: $c0

    rst $38                                       ; $6ef7: $ff
    cp a                                          ; $6ef8: $bf
    rst $38                                       ; $6ef9: $ff
    cp [hl]                                       ; $6efa: $be
    db $e3                                        ; $6efb: $e3
    rst $38                                       ; $6efc: $ff
    rst $08                                       ; $6efd: $cf
    or e                                          ; $6efe: $b3
    cp $ff                                        ; $6eff: $fe $ff
    adc a                                         ; $6f01: $8f
    ei                                            ; $6f02: $fb
    add a                                         ; $6f03: $87
    rst $38                                       ; $6f04: $ff
    db $e3                                        ; $6f05: $e3
    cp $bf                                        ; $6f06: $fe $bf
    ldh [rIE], a                                  ; $6f08: $e0 $ff
    sbc a                                         ; $6f0a: $9f
    rst $38                                       ; $6f0b: $ff
    adc [hl]                                      ; $6f0c: $8e
    cp $9f                                        ; $6f0d: $fe $9f
    or $bf                                        ; $6f0f: $f6 $bf
    xor $ff                                       ; $6f11: $ee $ff
    rst $30                                       ; $6f13: $f7
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    add $bf                                       ; $6f16: $c6 $bf
    cp $87                                        ; $6f18: $fe $87
    db $fc                                        ; $6f1a: $fc
    rst $38                                       ; $6f1b: $ff
    add e                                         ; $6f1c: $83
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    ldh [rIE], a                                  ; $6f1f: $e0 $ff
    rst $38                                       ; $6f21: $ff
    cp $c3                                        ; $6f22: $fe $c3
    ld sp, hl                                     ; $6f24: $f9
    cp a                                          ; $6f25: $bf
    ld d, c                                       ; $6f26: $51
    ret nz                                        ; $6f27: $c0

    ldh [$e2], a                                  ; $6f28: $e0 $e2
    ld c, a                                       ; $6f2a: $4f
    ld [hl], b                                    ; $6f2b: $70
    ld c, a                                       ; $6f2c: $4f
    ld [hl], b                                    ; $6f2d: $70
    ld a, a                                       ; $6f2e: $7f
    rst $38                                       ; $6f2f: $ff
    ld h, a                                       ; $6f30: $67
    ld a, d                                       ; $6f31: $7a
    ccf                                           ; $6f32: $3f
    ld [hl-], a                                   ; $6f33: $32

jr_04b_6f34:
    rra                                           ; $6f34: $1f
    db $10                                        ; $6f35: $10
    rra                                           ; $6f36: $1f
    jr @+$01                                      ; $6f37: $18 $ff

    rrca                                          ; $6f39: $0f
    rrca                                          ; $6f3a: $0f
    rlca                                          ; $6f3b: $07
    ld a, [c]                                     ; $6f3c: $f2
    ld c, $f2                                     ; $6f3d: $0e $f2
    ld c, $fe                                     ; $6f3f: $0e $fe
    rst $38                                       ; $6f41: $ff
    and $5e                                       ; $6f42: $e6 $5e
    db $fc                                        ; $6f44: $fc
    ld c, h                                       ; $6f45: $4c
    ld hl, sp+$08                                 ; $6f46: $f8 $08
    ld hl, sp+$18                                 ; $6f48: $f8 $18
    rst $38                                       ; $6f4a: $ff
    ldh a, [$f0]                                  ; $6f4b: $f0 $f0
    ldh [rP1], a                                  ; $6f4d: $e0 $00
    nop                                           ; $6f4f: $00
    rlca                                          ; $6f50: $07
    inc bc                                        ; $6f51: $03
    rra                                           ; $6f52: $1f
    rst $38                                       ; $6f53: $ff
    inc c                                         ; $6f54: $0c
    inc sp                                        ; $6f55: $33
    inc e                                         ; $6f56: $1c
    ld h, $39                                     ; $6f57: $26 $39
    ld a, h                                       ; $6f59: $7c
    inc hl                                        ; $6f5a: $23
    ld a, h                                       ; $6f5b: $7c
    rst $38                                       ; $6f5c: $ff
    ld b, e                                       ; $6f5d: $43
    ld e, [hl]                                    ; $6f5e: $5e
    ld h, c                                       ; $6f5f: $61
    nop                                           ; $6f60: $00
    nop                                           ; $6f61: $00
    ldh [$c0], a                                  ; $6f62: $e0 $c0
    ld hl, sp-$01                                 ; $6f64: $f8 $ff
    jr nc, jr_04b_6f34                            ; $6f66: $30 $cc

    jr c, jr_04b_6fce                             ; $6f68: $38 $64

    sbc h                                         ; $6f6a: $9c
    ld a, $c4                                     ; $6f6b: $3e $c4
    ld a, $f7                                     ; $6f6d: $3e $f7
    jp nz, $867a                                  ; $6f6f: $c2 $7a $86

    db $10                                        ; $6f72: $10
    jp hl                                         ; $6f73: $e9


    rst $30                                       ; $6f74: $f7
    add a                                         ; $6f75: $87
    ld hl, sp-$71                                 ; $6f76: $f8 $8f
    cp $f0                                        ; $6f78: $fe $f0
    ret                                           ; $6f7a: $c9


    rst $30                                       ; $6f7b: $f7
    ldh a, [rIF]                                  ; $6f7c: $f0 $0f
    ld hl, sp-$01                                 ; $6f7e: $f8 $ff
    add b                                         ; $6f80: $80
    db $fd                                        ; $6f81: $fd
    rst $38                                       ; $6f82: $ff
    add c                                         ; $6f83: $81
    or $87                                        ; $6f84: $f6 $87
    jp hl                                         ; $6f86: $e9


    adc a                                         ; $6f87: $8f
    or $9e                                        ; $6f88: $f6 $9e
    rst $10                                       ; $6f8a: $d7
    rst $38                                       ; $6f8b: $ff
    sbc h                                         ; $6f8c: $9c
    db $eb                                        ; $6f8d: $eb
    cp b                                          ; $6f8e: $b8
    rst $28                                       ; $6f8f: $ef
    cp b                                          ; $6f90: $b8
    rst $38                                       ; $6f91: $ff
    nop                                           ; $6f92: $00
    rst $18                                       ; $6f93: $df
    rst $38                                       ; $6f94: $ff
    ret nz                                        ; $6f95: $c0

    scf                                           ; $6f96: $37
    ldh a, [$cb]                                  ; $6f97: $f0 $cb
    ld hl, sp-$49                                 ; $6f99: $f8 $b7
    inc a                                         ; $6f9b: $3c
    push af                                       ; $6f9c: $f5
    rst $38                                       ; $6f9d: $ff
    inc e                                         ; $6f9e: $1c
    db $eb                                        ; $6f9f: $eb
    ld c, $fb                                     ; $6fa0: $0e $fb
    ld c, $ff                                     ; $6fa2: $0e $ff
    add b                                         ; $6fa4: $80
    cp $ff                                        ; $6fa5: $fe $ff
    add b                                         ; $6fa7: $80
    rst $38                                       ; $6fa8: $ff
    add c                                         ; $6fa9: $81
    db $fd                                        ; $6faa: $fd
    add c                                         ; $6fab: $81
    cp $83                                        ; $6fac: $fe $83
    sbc $ff                                       ; $6fae: $de $ff
    sbc a                                         ; $6fb0: $9f
    ldh [$bf], a                                  ; $6fb1: $e0 $bf
    pop de                                        ; $6fb3: $d1
    sbc a                                         ; $6fb4: $9f
    rst $38                                       ; $6fb5: $ff
    nop                                           ; $6fb6: $00
    cp a                                          ; $6fb7: $bf
    rst $38                                       ; $6fb8: $ff
    add b                                         ; $6fb9: $80
    ld a, a                                       ; $6fba: $7f
    ret nz                                        ; $6fbb: $c0

    ld e, a                                       ; $6fbc: $5f
    ret nz                                        ; $6fbd: $c0

    ccf                                           ; $6fbe: $3f
    ldh [$3d], a                                  ; $6fbf: $e0 $3d
    rst $38                                       ; $6fc1: $ff
    db $fc                                        ; $6fc2: $fc
    inc bc                                        ; $6fc3: $03
    cp $45                                        ; $6fc4: $fe $45
    db $fc                                        ; $6fc6: $fc
    db $fd                                        ; $6fc7: $fd
    ld a, a                                       ; $6fc8: $7f
    add e                                         ; $6fc9: $83
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    cp d                                          ; $6fcc: $ba
    rst $38                                       ; $6fcd: $ff

jr_04b_6fce:
    add a                                         ; $6fce: $87
    rst $38                                       ; $6fcf: $ff
    ei                                            ; $6fd0: $fb
    rst $38                                       ; $6fd1: $ff
    cp e                                          ; $6fd2: $bb
    cp $9e                                        ; $6fd3: $fe $9e
    and b                                         ; $6fd5: $a0
    rst $38                                       ; $6fd6: $ff
    ld a, a                                       ; $6fd7: $7f
    rst $38                                       ; $6fd8: $ff
    pop bc                                        ; $6fd9: $c1
    ld a, a                                       ; $6fda: $7f
    rst $38                                       ; $6fdb: $ff
    inc hl                                        ; $6fdc: $23
    db $eb                                        ; $6fdd: $eb
    rst $38                                       ; $6fde: $ff
    ld l, e                                       ; $6fdf: $6b
    cp $e2                                        ; $6fe0: $fe $e2
    ld hl, $a1a0                                  ; $6fe2: $21 $a0 $a1
    ret nz                                        ; $6fe5: $c0

    ld a, a                                       ; $6fe6: $7f
    rst $38                                       ; $6fe7: $ff
    rst $38                                       ; $6fe8: $ff
    ld de, $57ff                                  ; $6fe9: $11 $ff $57
    rst $38                                       ; $6fec: $ff
    ld [hl], c                                    ; $6fed: $71
    rst $38                                       ; $6fee: $ff
    ld a, l                                       ; $6fef: $7d
    rst $18                                       ; $6ff0: $df
    rst $08                                       ; $6ff1: $cf
    ld [hl], c                                    ; $6ff2: $71
    rst $18                                       ; $6ff3: $df
    rst $38                                       ; $6ff4: $ff
    rst $18                                       ; $6ff5: $df
    sub b                                         ; $6ff6: $90
    adc $80                                       ; $6ff7: $ce $80
    call $f09f                                    ; $6ff9: $cd $9f $f0
    cp e                                          ; $6ffc: $bb
    sbc a                                         ; $6ffd: $9f
    rst $30                                       ; $6ffe: $f7
    cp $e0                                        ; $6fff: $fe $e0
    ldh a, [$9f]                                  ; $7001: $f0 $9f
    or $fe                                        ; $7003: $f6 $fe
    ldh [rIE], a                                  ; $7005: $e0 $ff
    ei                                            ; $7007: $fb

jr_04b_7008:
    sbc a                                         ; $7008: $9f
    cp a                                          ; $7009: $bf
    ret nz                                        ; $700a: $c0

    ldh [rLY], a                                  ; $700b: $e0 $44
    rst $38                                       ; $700d: $ff
    ld d, l                                       ; $700e: $55
    rst $38                                       ; $700f: $ff
    ld b, l                                       ; $7010: $45
    sub e                                         ; $7011: $93
    rst $38                                       ; $7012: $ff
    db $dd                                        ; $7013: $dd
    db $fc                                        ; $7014: $fc
    ldh [$65], a                                  ; $7015: $e0 $65
    and e                                         ; $7017: $a3
    ld de, $e0f0                                  ; $7018: $11 $f0 $e0
    cp $e1                                        ; $701b: $fe $e1
    ld d, b                                       ; $701d: $50
    ld a, $f0                                     ; $701e: $3e $f0
    db $e4                                        ; $7020: $e4
    and d                                         ; $7021: $a2
    rst $38                                       ; $7022: $ff
    db $eb                                        ; $7023: $eb
    rst $38                                       ; $7024: $ff
    xor d                                         ; $7025: $aa
    cp $e2                                        ; $7026: $fe $e2
    cpl                                           ; $7028: $2f
    and b                                         ; $7029: $a0
    rst $28                                       ; $702a: $ef
    inc bc                                        ; $702b: $03
    cp $ff                                        ; $702c: $fe $ff
    adc b                                         ; $702e: $88
    ld a, [c]                                     ; $702f: $f2
    ldh [$a8], a                                  ; $7030: $e0 $a8
    rst $38                                       ; $7032: $ff
    xor [hl]                                      ; $7033: $ae
    ld a, [hl]                                    ; $7034: $7e
    db $fc                                        ; $7035: $fc
    ldh [rIE], a                                  ; $7036: $e0 $ff
    rst $38                                       ; $7038: $ff
    ld hl, sp-$71                                 ; $7039: $f8 $8f
    rst $30                                       ; $703b: $f7
    add a                                         ; $703c: $87
    jr nc, jr_04b_7008                            ; $703d: $30 $c9

    rst $28                                       ; $703f: $ef
    rrca                                          ; $7040: $0f
    ld hl, sp-$09                                 ; $7041: $f8 $f7
    ldh a, [$f0]                                  ; $7043: $f0 $f0
    xor c                                         ; $7045: $a9
    db $eb                                        ; $7046: $eb
    cp b                                          ; $7047: $b8
    rst $10                                       ; $7048: $d7
    or a                                          ; $7049: $b7
    sbc h                                         ; $704a: $9c
    or $9e                                        ; $704b: $f6 $9e
    nop                                           ; $704d: $00
    ldh [$87], a                                  ; $704e: $e0 $87
    db $fd                                        ; $7050: $fd
    pop hl                                        ; $7051: $e1
    add d                                         ; $7052: $82
    db $eb                                        ; $7053: $eb
    rst $38                                       ; $7054: $ff

jr_04b_7055:
    ld c, $f5                                     ; $7055: $0e $f5
    inc e                                         ; $7057: $1c
    or a                                          ; $7058: $b7
    inc a                                         ; $7059: $3c
    set 7, b                                      ; $705a: $cb $f8
    scf                                           ; $705c: $37
    rst $30                                       ; $705d: $f7
    ldh a, [$df]                                  ; $705e: $f0 $df
    ret nz                                        ; $7060: $c0

    push af                                       ; $7061: $f5
    add c                                         ; $7062: $81
    jp hl                                         ; $7063: $e9


    adc a                                         ; $7064: $8f
    db $f4                                        ; $7065: $f4
    add a                                         ; $7066: $87
    cp l                                          ; $7067: $bd
    db $f4                                        ; $7068: $f4
    ret z                                         ; $7069: $c8

    ret nz                                        ; $706a: $c0

    ei                                            ; $706b: $fb
    adc a                                         ; $706c: $8f
    db $fd                                        ; $706d: $fd
    adc h                                         ; $706e: $8c
    pop bc                                        ; $706f: $c1
    add c                                         ; $7070: $81
    ld c, e                                       ; $7071: $4b
    rst $38                                       ; $7072: $ff
    ld hl, sp+$17                                 ; $7073: $f8 $17
    ldh a, [rNR22]                                ; $7075: $f0 $17
    ldh a, [$8f]                                  ; $7077: $f0 $8f
    ld hl, sp+$6f                                 ; $7079: $f8 $6f
    ld [hl], a                                    ; $707b: $77
    ld a, b                                       ; $707c: $78
    rst $18                                       ; $707d: $df
    jr jr_04b_7055                                ; $707e: $18 $d5

    add c                                         ; $7080: $81
    cp $ef                                        ; $7081: $fe $ef
    cp d                                          ; $7083: $ba
    cp $e1                                        ; $7084: $fe $e1
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    sub d                                         ; $7088: $92
    rst $38                                       ; $7089: $ff
    sub $ff                                       ; $708a: $d6 $ff
    push bc                                       ; $708c: $c5
    ld a, [hl]                                    ; $708d: $7e
    db $fd                                        ; $708e: $fd
    sub l                                         ; $708f: $95
    ld a, [hl]                                    ; $7090: $7e
    and b                                         ; $7091: $a0
    add c                                         ; $7092: $81
    xor $72                                       ; $7093: $ee $72
    ld [c], a                                     ; $7095: $e2
    cp d                                          ; $7096: $ba
    ld l, $a0                                     ; $7097: $2e $a0
    ldh a, [$e1]                                  ; $7099: $f0 $e1
    ei                                            ; $709b: $fb
    cp e                                          ; $709c: $bb
    inc a                                         ; $709d: $3c
    db $eb                                        ; $709e: $eb
    cp $e6                                        ; $709f: $fe $e6
    ei                                            ; $70a1: $fb
    inc a                                         ; $70a2: $3c
    cp $56                                        ; $70a3: $fe $56
    db $e4                                        ; $70a5: $e4
    xor d                                         ; $70a6: $aa
    ld a, [$a010]                                 ; $70a7: $fa $10 $a0
    add $e0                                       ; $70aa: $c6 $e0
    and $fd                                       ; $70ac: $e6 $fd
    ld a, [hl]                                    ; $70ae: $7e
    push bc                                       ; $70af: $c5
    ld a, [hl]                                    ; $70b0: $7e
    db $ed                                        ; $70b1: $ed
    ld d, h                                       ; $70b2: $54
    db $fc                                        ; $70b3: $fc
    ldh [$c0], a                                  ; $70b4: $e0 $c0
    db $e3                                        ; $70b6: $e3
    db $fd                                        ; $70b7: $fd
    cp $80                                        ; $70b8: $fe $80
    cp d                                          ; $70ba: $ba
    ld l, $e2                                     ; $70bb: $2e $e2
    xor $fe                                       ; $70bd: $ee $fe
    ldh [$5f], a                                  ; $70bf: $e0 $5f
    cp d                                          ; $70c1: $ba
    rst $38                                       ; $70c2: $ff
    sbc d                                         ; $70c3: $9a
    rst $38                                       ; $70c4: $ff
    adc d                                         ; $70c5: $8a
    inc e                                         ; $70c6: $1c
    ldh [$b2], a                                  ; $70c7: $e0 $b2
    sbc b                                         ; $70c9: $98
    ret nz                                        ; $70ca: $c0

    adc l                                         ; $70cb: $8d
    xor $40                                       ; $70cc: $ee $40
    add d                                         ; $70ce: $82
    db $fd                                        ; $70cf: $fd
    ld a, [hl]                                    ; $70d0: $7e
    ldh [$e1], a                                  ; $70d1: $e0 $e1
    and b                                         ; $70d3: $a0
    push hl                                       ; $70d4: $e5
    ld d, [hl]                                    ; $70d5: $56
    add [hl]                                      ; $70d6: $86
    ld b, b                                       ; $70d7: $40
    cp a                                          ; $70d8: $bf
    cp a                                          ; $70d9: $bf
    ldh [$df], a                                  ; $70da: $e0 $df
    ld h, b                                       ; $70dc: $60
    cp e                                          ; $70dd: $bb
    rst $08                                       ; $70de: $cf
    cp $eb                                        ; $70df: $fe $eb
    ret nz                                        ; $70e1: $c0

    adc d                                         ; $70e2: $8a
    inc h                                         ; $70e3: $24
    add b                                         ; $70e4: $80
    sub b                                         ; $70e5: $90
    xor $c0                                       ; $70e6: $ee $c0
    add h                                         ; $70e8: $84
    and b                                         ; $70e9: $a0
    add b                                         ; $70ea: $80
    nop                                           ; $70eb: $00
    add c                                         ; $70ec: $81
    inc de                                        ; $70ed: $13
    xor a                                         ; $70ee: $af
    add c                                         ; $70ef: $81
    cp $42                                        ; $70f0: $fe $42
    ret nz                                        ; $70f2: $c0

    adc a                                         ; $70f3: $8f
    rst $38                                       ; $70f4: $ff
    sub a                                         ; $70f5: $97
    ld hl, sp-$68                                 ; $70f6: $f8 $98

jr_04b_70f8:
    rst $30                                       ; $70f8: $f7
    cp c                                          ; $70f9: $b9
    rst $30                                       ; $70fa: $f7
    or $b6                                        ; $70fb: $f6 $b6
    ld sp, hl                                     ; $70fd: $f9
    rst $38                                       ; $70fe: $ff
    add c                                         ; $70ff: $81
    ldh [rIE], a                                  ; $7100: $e0 $ff
    ldh a, [rIE]                                  ; $7102: $f0 $ff
    rst $38                                       ; $7104: $ff
    add sp, $1f                                   ; $7105: $e8 $1f
    jr jr_04b_70f8                                ; $7107: $18 $ef

    sbc h                                         ; $7109: $9c
    ld l, a                                       ; $710a: $6f
    inc e                                         ; $710b: $1c
    rst $28                                       ; $710c: $ef
    rst $38                                       ; $710d: $ff
    adc [hl]                                      ; $710e: $8e
    adc [hl]                                      ; $710f: $8e
    adc a                                         ; $7110: $8f
    adc a                                         ; $7111: $8f
    adc [hl]                                      ; $7112: $8e
    adc a                                         ; $7113: $8f
    sub [hl]                                      ; $7114: $96
    sbc a                                         ; $7115: $9f
    rst $38                                       ; $7116: $ff
    and b                                         ; $7117: $a0
    cp a                                          ; $7118: $bf
    cp a                                          ; $7119: $bf
    cp a                                          ; $711a: $bf
    cp c                                          ; $711b: $b9
    cp a                                          ; $711c: $bf
    xor c                                         ; $711d: $a9
    or [hl]                                       ; $711e: $b6
    rst $38                                       ; $711f: $ff
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    add b                                         ; $7122: $80
    add b                                         ; $7123: $80
    ld h, b                                       ; $7124: $60
    ldh [rNR10], a                                ; $7125: $e0 $10
    ldh a, [rIE]                                  ; $7127: $f0 $ff
    ld [$88f8], sp                                ; $7129: $08 $f8 $88
    ld hl, sp-$1c                                 ; $712c: $f8 $e4
    db $fc                                        ; $712e: $fc
    inc [hl]                                      ; $712f: $34
    db $fc                                        ; $7130: $fc
    rst $18                                       ; $7131: $df
    sbc b                                         ; $7132: $98
    sbc b                                         ; $7133: $98
    and a                                         ; $7134: $a7
    cp a                                          ; $7135: $bf
    jp z, $c029                                   ; $7136: $ca $29 $c0

    cp a                                          ; $7139: $bf
    or b                                          ; $713a: $b0
    ei                                            ; $713b: $fb
    cp a                                          ; $713c: $bf
    and b                                         ; $713d: $a0
    rst $18                                       ; $713e: $df
    pop hl                                        ; $713f: $e1
    inc b                                         ; $7140: $04
    inc b                                         ; $7141: $04
    set 1, a                                      ; $7142: $cb $cf
    ld sp, $ffff                                  ; $7144: $31 $ff $ff
    ret nc                                        ; $7147: $d0

    rst $38                                       ; $7148: $ff
    ret nc                                        ; $7149: $d0

    ld a, a                                       ; $714a: $7f
    rst $28                                       ; $714b: $ef
    ccf                                           ; $714c: $3f
    db $e4                                        ; $714d: $e4
    rst $38                                       ; $714e: $ff
    cp h                                          ; $714f: $bc
    db $fc                                        ; $7150: $fc
    ld e, h                                       ; $7151: $5c
    add e                                         ; $7152: $83
    add e                                         ; $7153: $83
    add h                                         ; $7154: $84
    add a                                         ; $7155: $87
    adc a                                         ; $7156: $8f

jr_04b_7157:
    rst $30                                       ; $7157: $f7
    adc a                                         ; $7158: $8f
    sbc a                                         ; $7159: $9f
    sub b                                         ; $715a: $90
    cp $e0                                        ; $715b: $fe $e0
    sbc a                                         ; $715d: $9f
    cp a                                          ; $715e: $bf
    and b                                         ; $715f: $a0
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $18                                       ; $7162: $df
    ret nz                                        ; $7163: $c0

    ret nz                                        ; $7164: $c0

    jr nc, jr_04b_7157                            ; $7165: $30 $f0

    ret z                                         ; $7167: $c8

    ld hl, sp-$1c                                 ; $7168: $f8 $e4
    rst $38                                       ; $716a: $ff
    inc a                                         ; $716b: $3c

jr_04b_716c:
    db $f4                                        ; $716c: $f4
    inc e                                         ; $716d: $1c
    db $fc                                        ; $716e: $fc
    call c, Call_000_32fe                         ; $716f: $dc $fe $32
    db $fd                                        ; $7172: $fd
    rst $38                                       ; $7173: $ff
    sbc a                                         ; $7174: $9f
    add [hl]                                      ; $7175: $86
    add [hl]                                      ; $7176: $86
    adc c                                         ; $7177: $89
    adc a                                         ; $7178: $8f
    sub b                                         ; $7179: $90
    sbc a                                         ; $717a: $9f
    sbc c                                         ; $717b: $99
    ld a, a                                       ; $717c: $7f
    sbc a                                         ; $717d: $9f
    sbc a                                         ; $717e: $9f
    sub [hl]                                      ; $717f: $96
    cp a                                          ; $7180: $bf
    and b                                         ; $7181: $a0
    xor h                                         ; $7182: $ac
    or e                                          ; $7183: $b3

jr_04b_7184:
    ld h, c                                       ; $7184: $61
    ld h, b                                       ; $7185: $60
    rst $38                                       ; $7186: $ff
    nop                                           ; $7187: $00
    ret nz                                        ; $7188: $c0

    ret nz                                        ; $7189: $c0

    jr nz, jr_04b_716c                            ; $718a: $20 $e0

    sub b                                         ; $718c: $90
    ldh a, [$c8]                                  ; $718d: $f0 $c8
    rst $38                                       ; $718f: $ff
    ld a, b                                       ; $7190: $78
    ret z                                         ; $7191: $c8

    ld a, b                                       ; $7192: $78
    add sp, $38                                   ; $7193: $e8 $38
    add sp, -$08                                  ; $7195: $e8 $f8
    adc a                                         ; $7197: $8f
    rst $38                                       ; $7198: $ff
    adc a                                         ; $7199: $8f
    or [hl]                                       ; $719a: $b6
    cp a                                          ; $719b: $bf
    call nz, $acff                                ; $719c: $c4 $ff $ac
    rst $18                                       ; $719f: $df
    sbc [hl]                                      ; $71a0: $9e
    rst $10                                       ; $71a1: $d7
    rst $30                                       ; $71a2: $f7
    cp a                                          ; $71a3: $bf
    db $e3                                        ; $71a4: $e3
    xor l                                         ; $71a5: $ad
    ld h, b                                       ; $71a6: $60
    db $e3                                        ; $71a7: $e3
    add d                                         ; $71a8: $82
    db $e3                                        ; $71a9: $e3
    jr z, jr_04b_7184                             ; $71aa: $28 $d8

    rst $38                                       ; $71ac: $ff
    ld h, h                                       ; $71ad: $64
    sbc h                                         ; $71ae: $9c
    add h                                         ; $71af: $84
    db $fc                                        ; $71b0: $fc
    adc $7e                                       ; $71b1: $ce $7e
    ld sp, hl                                     ; $71b3: $f9
    ccf                                           ; $71b4: $3f
    rst $38                                       ; $71b5: $ff
    adc e                                         ; $71b6: $8b
    adc e                                         ; $71b7: $8b
    sbc a                                         ; $71b8: $9f
    sub h                                         ; $71b9: $94
    sbc l                                         ; $71ba: $9d
    sub d                                         ; $71bb: $92
    xor a                                         ; $71bc: $af
    cp a                                          ; $71bd: $bf
    db $fd                                        ; $71be: $fd
    ret nz                                        ; $71bf: $c0

    ld a, [de]                                    ; $71c0: $1a
    ld h, b                                       ; $71c1: $60
    sub e                                         ; $71c2: $93
    cp $bf                                        ; $71c3: $fe $bf
    db $ec                                        ; $71c5: $ec
    ld h, b                                       ; $71c6: $60
    ld h, b                                       ; $71c7: $60
    rst $38                                       ; $71c8: $ff
    ldh [$a0], a                                  ; $71c9: $e0 $a0
    ldh a, [$30]                                  ; $71cb: $f0 $30
    ret z                                         ; $71cd: $c8

    ld hl, sp+$04                                 ; $71ce: $f8 $04
    db $fc                                        ; $71d0: $fc
    cp a                                          ; $71d1: $bf
    inc b                                         ; $71d2: $04
    db $fc                                        ; $71d3: $fc
    add d                                         ; $71d4: $82
    cp $c2                                        ; $71d5: $fe $c2
    ld a, [hl]                                    ; $71d7: $7e
    ld sp, $ff8c                                  ; $71d8: $31 $8c $ff
    rst $38                                       ; $71db: $ff
    ld b, b                                       ; $71dc: $40
    rst $38                                       ; $71dd: $ff
    jr nz, @+$01                                  ; $71de: $20 $ff

    db $10                                        ; $71e0: $10
    rst $38                                       ; $71e1: $ff
    ld [$dfff], sp                                ; $71e2: $08 $ff $df
    inc b                                         ; $71e5: $04
    rst $38                                       ; $71e6: $ff
    ld [bc], a                                    ; $71e7: $02
    rst $38                                       ; $71e8: $ff
    ld bc, $6000                                  ; $71e9: $01 $00 $60
    cp [hl]                                       ; $71ec: $be
    db $fd                                        ; $71ed: $fd
    ld a, a                                       ; $71ee: $7f
    sbc a                                         ; $71ef: $9f
    db $fc                                        ; $71f0: $fc
    sbc [hl]                                      ; $71f1: $9e
    db $fd                                        ; $71f2: $fd
    adc l                                         ; $71f3: $8d
    cp $87                                        ; $71f4: $fe $87
    ld a, [$ffc2]                                 ; $71f6: $fa $c2 $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    ld l, h                                       ; $71fb: $6c
    sbc a                                         ; $71fc: $9f
    ld hl, sp+$3f                                 ; $71fd: $f8 $3f
    ld a, b                                       ; $71ff: $78
    cp a                                          ; $7200: $bf
    rst $30                                       ; $7201: $f7
    or b                                          ; $7202: $b0
    ld a, a                                       ; $7203: $7f
    ldh [$fa], a                                  ; $7204: $e0 $fa
    jp nz, $ffff                                  ; $7206: $c2 $ff $ff

    cp c                                          ; $7209: $b9
    xor a                                         ; $720a: $af
    rst $30                                       ; $720b: $f7
    cp c                                          ; $720c: $b9
    xor a                                         ; $720d: $af
    call nz, Call_04b_6034                        ; $720e: $c4 $34 $60
    and [hl]                                      ; $7211: $a6
    cp a                                          ; $7212: $bf
    sub b                                         ; $7213: $90
    sbc a                                         ; $7214: $9f
    db $fd                                        ; $7215: $fd
    adc h                                         ; $7216: $8c
    rst $18                                       ; $7217: $df
    ldh [$9a], a                                  ; $7218: $e0 $9a
    ld a, [hl]                                    ; $721a: $7e
    sbc [hl]                                      ; $721b: $9e
    ld a, [hl]                                    ; $721c: $7e
    ld h, $fe                                     ; $721d: $26 $fe
    ld a, a                                       ; $721f: $7f
    ld d, $fe                                     ; $7220: $16 $fe
    ld c, $fe                                     ; $7222: $0e $fe
    inc a                                         ; $7224: $3c
    db $fc                                        ; $7225: $fc
    ld hl, sp+$2e                                 ; $7226: $f8 $2e
    add b                                         ; $7228: $80
    rst $30                                       ; $7229: $f7
    or [hl]                                       ; $722a: $b6
    xor c                                         ; $722b: $a9
    rst $38                                       ; $722c: $ff
    pop hl                                        ; $722d: $e1
    ldh [$bf], a                                  ; $722e: $e0 $bf
    and e                                         ; $7230: $a3
    sbc a                                         ; $7231: $9f
    sub b                                         ; $7232: $90
    rst $30                                       ; $7233: $f7
    adc a                                         ; $7234: $8f
    adc h                                         ; $7235: $8c
    add e                                         ; $7236: $83
    ld b, d                                       ; $7237: $42
    add b                                         ; $7238: $80
    cp $52                                        ; $7239: $fe $52
    cp $0a                                        ; $723b: $fe $0a
    rst $38                                       ; $723d: $ff
    db $fc                                        ; $723e: $fc
    inc b                                         ; $723f: $04
    ld hl, sp+$18                                 ; $7240: $f8 $18
    ldh [rNR41], a                                ; $7242: $e0 $20
    ret nz                                        ; $7244: $c0

    ret nz                                        ; $7245: $c0

    db $fd                                        ; $7246: $fd
    nop                                           ; $7247: $00
    or l                                          ; $7248: $b5
    ld b, c                                       ; $7249: $41
    ld hl, sp-$29                                 ; $724a: $f8 $d7
    ld hl, sp-$21                                 ; $724c: $f8 $df
    db $f4                                        ; $724e: $f4
    rst $18                                       ; $724f: $df
    rst $18                                       ; $7250: $df
    ldh a, [$af]                                  ; $7251: $f0 $af
    cp d                                          ; $7253: $ba
    sbc a                                         ; $7254: $9f
    sbc h                                         ; $7255: $9c
    ldh [$e1], a                                  ; $7256: $e0 $e1
    ld hl, sp-$01                                 ; $7258: $f8 $ff
    rst $38                                       ; $725a: $ff
    ld l, h                                       ; $725b: $6c
    sub a                                         ; $725c: $97
    db $fd                                        ; $725d: $fd
    rlca                                          ; $725e: $07
    ld sp, hl                                     ; $725f: $f9
    rra                                           ; $7260: $1f
    and $3e                                       ; $7261: $e6 $3e
    rst $30                                       ; $7263: $f7
    ld hl, sp+$78                                 ; $7264: $f8 $78
    add b                                         ; $7266: $80
    ld l, a                                       ; $7267: $6f
    pop hl                                        ; $7268: $e1
    rst $38                                       ; $7269: $ff
    cp a                                          ; $726a: $bf
    or e                                          ; $726b: $b3
    cp a                                          ; $726c: $bf
    ld e, a                                       ; $726d: $5f
    xor b                                         ; $726e: $a8
    cp a                                          ; $726f: $bf
    and b                                         ; $7270: $a0
    sbc a                                         ; $7271: $9f
    sub [hl]                                      ; $7272: $96
    cp [hl]                                       ; $7273: $be
    ldh [$88], a                                  ; $7274: $e0 $88
    ld d, b                                       ; $7276: $50
    and b                                         ; $7277: $a0
    rst $38                                       ; $7278: $ff
    cp b                                          ; $7279: $b8
    db $fc                                        ; $727a: $fc
    inc h                                         ; $727b: $24
    db $fc                                        ; $727c: $fc
    inc d                                         ; $727d: $14
    db $fc                                        ; $727e: $fc
    inc c                                         ; $727f: $0c
    ld a, [$3edf]                                 ; $7280: $fa $df $3e
    ld a, [c]                                     ; $7283: $f2
    ld a, [hl]                                    ; $7284: $7e
    adc [hl]                                      ; $7285: $8e
    adc [hl]                                      ; $7286: $8e
    ld e, a                                       ; $7287: $5f
    ld b, b                                       ; $7288: $40
    and d                                         ; $7289: $a2
    db $dd                                        ; $728a: $dd
    push de                                       ; $728b: $d5
    and d                                         ; $728c: $a2
    or c                                          ; $728d: $b1
    ret nz                                        ; $728e: $c0

    call z, $e0de                                 ; $728f: $cc $de $e0
    sub c                                         ; $7292: $91
    ldh a, [$e1]                                  ; $7293: $f0 $e1
    db $fd                                        ; $7295: $fd
    and a                                         ; $7296: $a7
    rst $38                                       ; $7297: $ff
    db $fd                                        ; $7298: $fd
    sub a                                         ; $7299: $97
    ld sp, hl                                     ; $729a: $f9
    rrca                                          ; $729b: $0f
    push af                                       ; $729c: $f5
    ccf                                           ; $729d: $3f
    db $db                                        ; $729e: $db
    ld e, e                                       ; $729f: $5b
    ei                                            ; $72a0: $fb
    add b                                         ; $72a1: $80
    add b                                         ; $72a2: $80
    and b                                         ; $72a3: $a0
    ld [c], a                                     ; $72a4: $e2
    di                                            ; $72a5: $f3
    rst $38                                       ; $72a6: $ff
    jp nc, $b2ad                                  ; $72a7: $d2 $ad $b2

    rst $38                                       ; $72aa: $ff
    cp a                                          ; $72ab: $bf
    and b                                         ; $72ac: $a0
    db $db                                        ; $72ad: $db
    db $f4                                        ; $72ae: $f4
    rst $08                                       ; $72af: $cf
    ld sp, hl                                     ; $72b0: $f9
    sub $f6                                       ; $72b1: $d6 $f6
    cp $50                                        ; $72b3: $fe $50
    and b                                         ; $72b5: $a0
    cp a                                          ; $72b6: $bf
    jp hl                                         ; $72b7: $e9


    cp a                                          ; $72b8: $bf
    rst $38                                       ; $72b9: $ff
    scf                                           ; $72ba: $37
    cp $1e                                        ; $72bb: $fe $1e
    rst $38                                       ; $72bd: $ff
    ld a, [c]                                     ; $72be: $f2
    ld a, [hl]                                    ; $72bf: $7e
    pop hl                                        ; $72c0: $e1
    rst $38                                       ; $72c1: $ff
    ld c, c                                       ; $72c2: $49
    ld a, a                                       ; $72c3: $7f
    rst $38                                       ; $72c4: $ff
    rst $38                                       ; $72c5: $ff
    ld a, l                                       ; $72c6: $7d
    adc a                                         ; $72c7: $8f
    ld b, h                                       ; $72c8: $44
    ret nz                                        ; $72c9: $c0

    xor a                                         ; $72ca: $af
    cp c                                          ; $72cb: $b9
    cp a                                          ; $72cc: $bf
    cp a                                          ; $72cd: $bf
    ldh [$5c], a                                  ; $72ce: $e0 $5c
    pop bc                                        ; $72d0: $c1
    rst $30                                       ; $72d1: $f7
    or l                                          ; $72d2: $b5
    sbc a                                         ; $72d3: $9f
    sbc l                                         ; $72d4: $9d
    and d                                         ; $72d5: $a2
    pop bc                                        ; $72d6: $c1
    db $10                                        ; $72d7: $10
    ldh a, [$98]                                  ; $72d8: $f0 $98
    ld hl, sp-$01                                 ; $72da: $f8 $ff
    ld b, h                                       ; $72dc: $44
    db $fc                                        ; $72dd: $fc
    and h                                         ; $72de: $a4
    db $fc                                        ; $72df: $fc
    db $fc                                        ; $72e0: $fc
    ld a, h                                       ; $72e1: $7c
    db $fc                                        ; $72e2: $fc
    inc [hl]                                      ; $72e3: $34
    rst $38                                       ; $72e4: $ff
    add c                                         ; $72e5: $81
    add c                                         ; $72e6: $81
    add d                                         ; $72e7: $82
    add e                                         ; $72e8: $83
    add e                                         ; $72e9: $83
    add e                                         ; $72ea: $83
    add a                                         ; $72eb: $87
    add h                                         ; $72ec: $84
    rst $30                                       ; $72ed: $f7
    add a                                         ; $72ee: $87
    add l                                         ; $72ef: $85
    sbc a                                         ; $72f0: $9f
    inc e                                         ; $72f1: $1c
    ret nz                                        ; $72f2: $c0

    call nc, $f0ff                                ; $72f3: $d4 $ff $f0
    ldh a, [rIE]                                  ; $72f6: $f0 $ff
    adc b                                         ; $72f8: $88
    ld hl, sp-$18                                 ; $72f9: $f8 $e8
    ld hl, sp-$0c                                 ; $72fb: $f8 $f4
    sbc h                                         ; $72fd: $9c
    db $f4                                        ; $72fe: $f4
    db $fc                                        ; $72ff: $fc
    rst $38                                       ; $7300: $ff
    db $f4                                        ; $7301: $f4
    call c, $fcf4                                 ; $7302: $dc $f4 $fc
    ld [bc], a                                    ; $7305: $02
    cp $87                                        ; $7306: $fe $87
    add a                                         ; $7308: $87
    or [hl]                                       ; $7309: $b6
    ld c, b                                       ; $730a: $48
    pop bc                                        ; $730b: $c1
    or e                                          ; $730c: $b3
    xor h                                         ; $730d: $ac
    ld b, h                                       ; $730e: $44
    ld h, b                                       ; $730f: $60
    rst $38                                       ; $7310: $ff
    cp [hl]                                       ; $7311: $be
    sub d                                         ; $7312: $92
    ldh [$e0], a                                  ; $7313: $e0 $e0
    rst $38                                       ; $7315: $ff
    ldh [rNR23], a                                ; $7316: $e0 $18
    ld hl, sp-$7c                                 ; $7318: $f8 $84
    db $fc                                        ; $731a: $fc
    ld [c], a                                     ; $731b: $e2
    ld a, [hl]                                    ; $731c: $7e

jr_04b_731d:
    ld a, [$3eff]                                 ; $731d: $fa $ff $3e
    cp $e6                                        ; $7320: $fe $e6
    ccf                                           ; $7322: $3f
    di                                            ; $7323: $f3
    db $fd                                        ; $7324: $fd
    rst $38                                       ; $7325: $ff
    add a                                         ; $7326: $87
    rst $28                                       ; $7327: $ef
    add a                                         ; $7328: $87
    adc b                                         ; $7329: $88
    adc a                                         ; $732a: $8f
    adc h                                         ; $732b: $8c
    ld a, $c0                                     ; $732c: $3e $c0
    and e                                         ; $732e: $a3
    cp a                                          ; $732f: $bf
    rst $38                                       ; $7330: $ff
    ld e, a                                       ; $7331: $5f
    call c, $e3ff                                 ; $7332: $dc $ff $e3
    cp a                                          ; $7335: $bf
    cp l                                          ; $7336: $bd
    ld [c], a                                     ; $7337: $e2
    and c                                         ; $7338: $a1
    jr nc, jr_04b_731d                            ; $7339: $30 $e2

    and b                                         ; $733b: $a0
    rst $38                                       ; $733c: $ff
    add h                                         ; $733d: $84
    db $fc                                        ; $733e: $fc
    add $7e                                       ; $733f: $c6 $7e
    rst $08                                       ; $7341: $cf
    ld a, c                                       ; $7342: $79
    rst $18                                       ; $7343: $df
    ld [hl], l                                    ; $7344: $75
    rst $18                                       ; $7345: $df
    cp [hl]                                       ; $7346: $be

jr_04b_7347:
    cp [hl]                                       ; $7347: $be
    push bc                                       ; $7348: $c5
    rst $38                                       ; $7349: $ff
    and b                                         ; $734a: $a0
    ld h, d                                       ; $734b: $62
    ret nz                                        ; $734c: $c0

    push bc                                       ; $734d: $c5
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $28                                       ; $7350: $ef
    ld a, [$b1be]                                 ; $7351: $fa $be $b1
    xor l                                         ; $7354: $ad
    or e                                          ; $7355: $b3
    ld h, b                                       ; $7356: $60
    ld h, b                                       ; $7357: $60
    db $dd                                        ; $7358: $dd
    sbc b                                         ; $7359: $98
    ld h, h                                       ; $735a: $64
    ret nz                                        ; $735b: $c0

    ld [bc], a                                    ; $735c: $02
    cp $01                                        ; $735d: $fe $01
    ld l, b                                       ; $735f: $68
    jr nz, jr_04b_73db                            ; $7360: $20 $79

    rst $38                                       ; $7362: $ff
    rst $30                                       ; $7363: $f7
    di                                            ; $7364: $f3
    sbc a                                         ; $7365: $9f
    adc a                                         ; $7366: $8f
    ld [bc], a                                    ; $7367: $02
    ret nz                                        ; $7368: $c0

    and a                                         ; $7369: $a7
    cp a                                          ; $736a: $bf
    xor a                                         ; $736b: $af
    cp b                                          ; $736c: $b8
    db $db                                        ; $736d: $db
    xor a                                         ; $736e: $af
    cp b                                          ; $736f: $b8
    add b                                         ; $7370: $80
    pop hl                                        ; $7371: $e1
    rst $18                                       ; $7372: $df
    rst $38                                       ; $7373: $ff
    ld h, b                                       ; $7374: $60
    push hl                                       ; $7375: $e5
    sub [hl]                                      ; $7376: $96
    cp $bf                                        ; $7377: $fe $bf
    add c                                         ; $7379: $81
    rst $38                                       ; $737a: $ff
    ld b, c                                       ; $737b: $41
    rst $38                                       ; $737c: $ff
    di                                            ; $737d: $f3
    cp a                                          ; $737e: $bf
    and b                                         ; $737f: $a0
    pop hl                                        ; $7380: $e1
    adc a                                         ; $7381: $8f
    xor e                                         ; $7382: $ab
    adc b                                         ; $7383: $88
    cp a                                          ; $7384: $bf
    jr nz, jr_04b_7347                            ; $7385: $20 $c0

    rst $28                                       ; $7387: $ef
    sbc h                                         ; $7388: $9c
    and c                                         ; $7389: $a1
    and [hl]                                      ; $738a: $a6
    ret nz                                        ; $738b: $c0

    and c                                         ; $738c: $a1
    ld [$f8ff], sp                                ; $738d: $08 $ff $f8
    call nz, Call_04b_74fc                        ; $7390: $c4 $fc $74
    db $fc                                        ; $7393: $fc
    adc [hl]                                      ; $7394: $8e
    cp $f3                                        ; $7395: $fe $f3
    ld sp, hl                                     ; $7397: $f9
    rst $38                                       ; $7398: $ff
    add d                                         ; $7399: $82
    ld h, b                                       ; $739a: $60
    and b                                         ; $739b: $a0
    and b                                         ; $739c: $a0
    adc b                                         ; $739d: $88
    adc a                                         ; $739e: $8f
    sbc a                                         ; $739f: $9f
    sbc a                                         ; $73a0: $9f
    and c                                         ; $73a1: $a1
    sbc $fe                                       ; $73a2: $de $fe
    and b                                         ; $73a4: $a0
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    sbc a                                         ; $73a7: $9f
    sbc c                                         ; $73a8: $99
    ld h, d                                       ; $73a9: $62
    and l                                         ; $73aa: $a5
    add h                                         ; $73ab: $84
    db $fc                                        ; $73ac: $fc
    cp a                                          ; $73ad: $bf
    ld b, d                                       ; $73ae: $42
    cp $f2                                        ; $73af: $fe $f2
    cp $de                                        ; $73b1: $fe $de
    cp [hl]                                       ; $73b3: $be
    adc h                                         ; $73b4: $8c
    and b                                         ; $73b5: $a0
    ret nz                                        ; $73b6: $c0

    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    jp $bfbf                                      ; $73b9: $c3 $bf $bf


    sbc a                                         ; $73bc: $9f
    sbc [hl]                                      ; $73bd: $9e
    adc a                                         ; $73be: $8f
    adc b                                         ; $73bf: $88
    ei                                            ; $73c0: $fb
    add a                                         ; $73c1: $87
    add h                                         ; $73c2: $84
    and l                                         ; $73c3: $a5
    ld b, b                                       ; $73c4: $40
    ld a, [hl+]                                   ; $73c5: $2a
    cp $82                                        ; $73c6: $fe $82
    db $fc                                        ; $73c8: $fc
    add h                                         ; $73c9: $84
    rst $38                                       ; $73ca: $ff
    ld hl, sp+$18                                 ; $73cb: $f8 $18
    db $fc                                        ; $73cd: $fc
    inc a                                         ; $73ce: $3c
    ld hl, sp+$38                                 ; $73cf: $f8 $38
    ret nz                                        ; $73d1: $c0

    ld b, b                                       ; $73d2: $40
    cp [hl]                                       ; $73d3: $be
    pop af                                        ; $73d4: $f1
    daa                                           ; $73d5: $27
    ret nz                                        ; $73d6: $c0

    rst $38                                       ; $73d7: $ff
    or b                                          ; $73d8: $b0
    cp a                                          ; $73d9: $bf
    adc a                                         ; $73da: $8f

jr_04b_73db:
    rst $38                                       ; $73db: $ff
    and b                                         ; $73dc: $a0
    ld bc, $eafe                                  ; $73dd: $01 $fe $ea
    and b                                         ; $73e0: $a0
    dec l                                         ; $73e1: $2d
    di                                            ; $73e2: $f3
    ccf                                           ; $73e3: $3f
    pop hl                                        ; $73e4: $e1
    ld a, [hl]                                    ; $73e5: $7e
    ld a, [c]                                     ; $73e6: $f2
    db $fc                                        ; $73e7: $fc
    db $fd                                        ; $73e8: $fd
    call nz, $c120                                ; $73e9: $c4 $20 $c1
    rst $38                                       ; $73ec: $ff
    pop de                                        ; $73ed: $d1
    xor $d1                                       ; $73ee: $ee $d1
    cp a                                          ; $73f0: $bf
    xor b                                         ; $73f1: $a8
    rst $20                                       ; $73f2: $e7
    rst $38                                       ; $73f3: $ff
    and $df                                       ; $73f4: $e6 $df
    and $00                                       ; $73f6: $e6 $00
    ld d, b                                       ; $73f8: $50
    pop bc                                        ; $73f9: $c1
    pop af                                        ; $73fa: $f1
    ld e, a                                       ; $73fb: $5f
    pop af                                        ; $73fc: $f1
    rst $38                                       ; $73fd: $ff
    ld e, a                                       ; $73fe: $5f
    db $e3                                        ; $73ff: $e3
    ccf                                           ; $7400: $3f
    db $e3                                        ; $7401: $e3
    ccf                                           ; $7402: $3f
    jp nz, $9c7e                                  ; $7403: $c2 $7e $9c

    ld a, e                                       ; $7406: $7b
    db $fc                                        ; $7407: $fc
    ldh a, [$d2]                                  ; $7408: $f0 $d2
    nop                                           ; $740a: $00
    cp a                                          ; $740b: $bf
    and [hl]                                      ; $740c: $a6
    rst $38                                       ; $740d: $ff
    jp hl                                         ; $740e: $e9


    dec d                                         ; $740f: $15
    jr nz, @+$5f                                  ; $7410: $20 $5d

    db $fc                                        ; $7412: $fc
    sbc h                                         ; $7413: $9c
    ldh [$b8], a                                  ; $7414: $e0 $b8
    sbc a                                         ; $7416: $9f
    sub b                                         ; $7417: $90
    xor a                                         ; $7418: $af
    nop                                           ; $7419: $00
    push af                                       ; $741a: $f5
    ld a, c                                       ; $741b: $79
    and b                                         ; $741c: $a0
    rst $38                                       ; $741d: $ff
    ld a, [bc]                                    ; $741e: $0a
    db $fc                                        ; $741f: $fc
    ld l, h                                       ; $7420: $6c
    ld hl, sp-$78                                 ; $7421: $f8 $88
    ldh a, [$30]                                  ; $7423: $f0 $30
    ret nz                                        ; $7425: $c0

    sbc b                                         ; $7426: $98
    db $fd                                        ; $7427: $fd
    nop                                           ; $7428: $00
    ld [hl+], a                                   ; $7429: $22
    ret nz                                        ; $742a: $c0

    jr nz, @-$3c                                  ; $742b: $20 $c2

    cp a                                          ; $742d: $bf
    xor h                                         ; $742e: $ac
    sbc $a0                                       ; $742f: $de $a0
    sbc a                                         ; $7431: $9f
    and b                                         ; $7432: $a0
    rst $30                                       ; $7433: $f7
    rst $38                                       ; $7434: $ff
    ld e, a                                       ; $7435: $5f
    rst $38                                       ; $7436: $ff
    add hl, bc                                    ; $7437: $09
    rst $38                                       ; $7438: $ff
    dec b                                         ; $7439: $05
    cp $12                                        ; $743a: $fe $12
    db $fc                                        ; $743c: $fc
    rst $30                                       ; $743d: $f7
    inc e                                         ; $743e: $1c
    ldh a, [rSVBK]                                ; $743f: $f0 $70
    ldh [$e1], a                                  ; $7441: $e0 $e1
    rst $38                                       ; $7443: $ff
    ldh a, [$9f]                                  ; $7444: $f0 $9f
    sub h                                         ; $7446: $94
    rst $08                                       ; $7447: $cf
    sbc a                                         ; $7448: $9f
    sbc h                                         ; $7449: $9c
    cp a                                          ; $744a: $bf
    and d                                         ; $744b: $a2
    cp $a0                                        ; $744c: $fe $a0
    ldh [$a2], a                                  ; $744e: $e0 $a2
    cp $1e                                        ; $7450: $fe $1e
    xor a                                         ; $7452: $af
    cp $92                                        ; $7453: $fe $92
    cp $aa                                        ; $7455: $fe $aa
    cp [hl]                                       ; $7457: $be
    and d                                         ; $7458: $a2
    ld h, b                                       ; $7459: $60
    ldh [$a1], a                                  ; $745a: $e0 $a1
    cp a                                          ; $745c: $bf
    ld a, l                                       ; $745d: $7d
    or d                                          ; $745e: $b2
    or a                                          ; $745f: $b7
    nop                                           ; $7460: $00
    ret z                                         ; $7461: $c8

    rst $38                                       ; $7462: $ff
    ldh a, [$bf]                                  ; $7463: $f0 $bf
    xor h                                         ; $7465: $ac
    cp $a1                                        ; $7466: $fe $a1
    cp [hl]                                       ; $7468: $be
    ld c, a                                       ; $7469: $4f
    nop                                           ; $746a: $00
    ld b, a                                       ; $746b: $47
    db $fc                                        ; $746c: $fc
    inc d                                         ; $746d: $14
    ld hl, sp+$08                                 ; $746e: $f8 $08
    and h                                         ; $7470: $a4
    ldh [rLCDC], a                                ; $7471: $e0 $40
    sub $00                                       ; $7473: $d6 $00
    jp $919f                                      ; $7475: $c3 $9f $91


    adc b                                         ; $7478: $88
    add b                                         ; $7479: $80
    and b                                         ; $747a: $a0
    add h                                         ; $747b: $84
    pop hl                                        ; $747c: $e1
    sub c                                         ; $747d: $91
    sbc [hl]                                      ; $747e: $9e
    db $fd                                        ; $747f: $fd
    adc c                                         ; $7480: $89
    ccf                                           ; $7481: $3f
    and b                                         ; $7482: $a0
    adc $32                                       ; $7483: $ce $32
    adc $3a                                       ; $7485: $ce $3a
    call c, $b824                                 ; $7487: $dc $24 $b8
    add b                                         ; $748a: $80
    and d                                         ; $748b: $a2
    sbc $e0                                       ; $748c: $de $e0
    nop                                           ; $748e: $00
    rst $00                                       ; $748f: $c7
    and b                                         ; $7490: $a0
    cp a                                          ; $7491: $bf
    sbc $13                                       ; $7492: $de $13
    ld h, b                                       ; $7494: $60
    cp a                                          ; $7495: $bf
    rst $28                                       ; $7496: $ef
    cp d                                          ; $7497: $ba
    add b                                         ; $7498: $80
    add b                                         ; $7499: $80
    ld b, b                                       ; $749a: $40
    cp $a6                                        ; $749b: $fe $a6
    db $e4                                        ; $749d: $e4
    db $fc                                        ; $749e: $fc
    db $fc                                        ; $749f: $fc
    rst $18                                       ; $74a0: $df
    inc a                                         ; $74a1: $3c
    sub c                                         ; $74a2: $91
    sub c                                         ; $74a3: $91
    cp e                                          ; $74a4: $bb
    xor d                                         ; $74a5: $aa
    ld h, h                                       ; $74a6: $64
    ldh [$97], a                                  ; $74a7: $e0 $97
    cp c                                          ; $74a9: $b9
    rst $38                                       ; $74aa: $ff
    cp a                                          ; $74ab: $bf
    di                                            ; $74ac: $f3
    sbc $ff                                       ; $74ad: $de $ff
    db $ed                                        ; $74af: $ed
    cp a                                          ; $74b0: $bf
    cp [hl]                                       ; $74b1: $be
    jp nz, $c2ff                                  ; $74b2: $c2 $ff $c2

    rst $30                                       ; $74b5: $f7
    ld [hl], l                                    ; $74b6: $75
    rst $38                                       ; $74b7: $ff
    dec e                                         ; $74b8: $1d
    rst $38                                       ; $74b9: $ff
    cp c                                          ; $74ba: $b9
    cp $ff                                        ; $74bb: $fe $ff
    ld [$66fe], a                                 ; $74bd: $ea $fe $66
    sbc $fa                                       ; $74c0: $de $fa
    add $7e                                       ; $74c2: $c6 $7e
    adc a                                         ; $74c4: $8f
    rst $38                                       ; $74c5: $ff
    adc a                                         ; $74c6: $8f
    sub d                                         ; $74c7: $92
    sbc l                                         ; $74c8: $9d
    and a                                         ; $74c9: $a7
    cp b                                          ; $74ca: $b8
    xor a                                         ; $74cb: $af
    cp a                                          ; $74cc: $bf
    ldh a, [$ee]                                  ; $74cd: $f0 $ee
    ld [c], a                                     ; $74cf: $e2
    add c                                         ; $74d0: $81
    ld sp, hl                                     ; $74d1: $f9
    cp a                                          ; $74d2: $bf
    xor a                                         ; $74d3: $af
    ld h, d                                       ; $74d4: $62
    add c                                         ; $74d5: $81
    inc e                                         ; $74d6: $1c
    db $fc                                        ; $74d7: $fc
    adc d                                         ; $74d8: $8a
    rst $38                                       ; $74d9: $ff
    cp $63                                        ; $74da: $fe $63
    rst $38                                       ; $74dc: $ff
    di                                            ; $74dd: $f3
    cp $ff                                        ; $74de: $fe $ff
    call c, $eff7                                 ; $74e0: $dc $f7 $ef
    ld e, [hl]                                    ; $74e3: $5e
    adc a                                         ; $74e4: $8f
    adc a                                         ; $74e5: $8f
    or b                                          ; $74e6: $b0
    add h                                         ; $74e7: $84
    add b                                         ; $74e8: $80
    jp $b3ff                                      ; $74e9: $c3 $ff $b3


    db $dd                                        ; $74ec: $dd
    cp [hl]                                       ; $74ed: $be
    ld e, [hl]                                    ; $74ee: $5e
    ldh [$bf], a                                  ; $74ef: $e0 $bf
    rst $38                                       ; $74f1: $ff
    ld [$c360], a                                 ; $74f2: $ea $60 $c3
    add h                                         ; $74f5: $84
    db $fc                                        ; $74f6: $fc
    ld a, e                                       ; $74f7: $7b
    call nz, Call_04b_407c                        ; $74f8: $c4 $7c $40
    add c                                         ; $74fb: $81

Call_04b_74fc:
    ld hl, sp-$08                                 ; $74fc: $f8 $f8
    add e                                         ; $74fe: $83
    add e                                         ; $74ff: $83
    ld [c], a                                     ; $7500: $e2
    and c                                         ; $7501: $a1
    db $fd                                        ; $7502: $fd
    and b                                         ; $7503: $a0
    dec e                                         ; $7504: $1d
    and b                                         ; $7505: $a0
    call z, $deff                                 ; $7506: $cc $ff $de
    di                                            ; $7509: $f3
    cp a                                          ; $750a: $bf
    cp c                                          ; $750b: $b9
    sub b                                         ; $750c: $90
    ret nz                                        ; $750d: $c0

    and c                                         ; $750e: $a1
    nop                                           ; $750f: $00
    pop bc                                        ; $7510: $c1
    cp $a1                                        ; $7511: $fe $a1
    sub h                                         ; $7513: $94
    pop bc                                        ; $7514: $c1
    add b                                         ; $7515: $80
    rst $38                                       ; $7516: $ff
    ldh [$dc], a                                  ; $7517: $e0 $dc
    db $e3                                        ; $7519: $e3
    sbc e                                         ; $751a: $9b
    rst $38                                       ; $751b: $ff
    sbc a                                         ; $751c: $9f
    cp e                                          ; $751d: $bb
    and h                                         ; $751e: $a4
    cp e                                          ; $751f: $bb
    xor [hl]                                      ; $7520: $ae
    inc c                                         ; $7521: $0c
    inc c                                         ; $7522: $0c
    ld c, $3f                                     ; $7523: $0e $3f
    ld c, $fe                                     ; $7525: $0e $fe
    or $38                                        ; $7527: $f6 $38
    ld hl, sp+$18                                 ; $7529: $f8 $18
    jr nz, jr_04b_754d                            ; $752b: $20 $20

    inc a                                         ; $752d: $3c
    add c                                         ; $752e: $81
    rst $10                                       ; $752f: $d7
    add a                                         ; $7530: $87
    add a                                         ; $7531: $87
    sbc b                                         ; $7532: $98
    add h                                         ; $7533: $84
    ld h, b                                       ; $7534: $60
    and b                                         ; $7535: $a0
    add b                                         ; $7536: $80
    ldh [$bf], a                                  ; $7537: $e0 $bf
    rst $28                                       ; $7539: $ef
    rst $18                                       ; $753a: $df
    cp a                                          ; $753b: $bf
    ldh a, [$8f]                                  ; $753c: $f0 $8f
    rst $38                                       ; $753e: $ff
    ldh [$84], a                                  ; $753f: $e0 $84
    ld h, d                                       ; $7541: $62
    ld e, $fe                                     ; $7542: $1e $fe
    rst $38                                       ; $7544: $ff
    ld sp, hl                                     ; $7545: $f9
    rst $28                                       ; $7546: $ef
    pop af                                        ; $7547: $f1
    rra                                           ; $7548: $1f
    ld [c], a                                     ; $7549: $e2
    cp $1c                                        ; $754a: $fe $1c
    db $fc                                        ; $754c: $fc

jr_04b_754d:
    ldh a, [$60]                                  ; $754d: $f0 $60
    db $fd                                        ; $754f: $fd
    ld [bc], a                                    ; $7550: $02
    pop bc                                        ; $7551: $c1
    sbc h                                         ; $7552: $9c
    add b                                         ; $7553: $80
    ld hl, sp-$60                                 ; $7554: $f8 $a0
    sbc a                                         ; $7556: $9f
    sbc b                                         ; $7557: $98

jr_04b_7558:
    add a                                         ; $7558: $87
    add a                                         ; $7559: $87
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    db $fc                                        ; $755d: $fc
    ld [hl], h                                    ; $755e: $74
    cp $aa                                        ; $755f: $fe $aa
    cp $02                                        ; $7561: $fe $02
    xor $5e                                       ; $7563: $ee $5e
    add b                                         ; $7565: $80
    jr c, jr_04b_7558                             ; $7566: $38 $f0

    ldh a, [$60]                                  ; $7568: $f0 $60
    add c                                         ; $756a: $81
    ei                                            ; $756b: $fb

jr_04b_756c:
    cp $fd                                        ; $756c: $fe $fd
    sbc l                                         ; $756e: $9d
    rst $00                                       ; $756f: $c7
    jp $8020                                      ; $7570: $c3 $20 $80


    rst $38                                       ; $7573: $ff
    db $d3                                        ; $7574: $d3
    call c, Call_04b_40a0                         ; $7575: $dc $a0 $40
    ret nz                                        ; $7578: $c0

    ld a, [c]                                     ; $7579: $f2
    rst $38                                       ; $757a: $ff
    cp $fa                                        ; $757b: $fe $fa
    ld c, $fc                                     ; $757d: $0e $fc
    ld h, h                                       ; $757f: $64
    db $fc                                        ; $7580: $fc
    and h                                         ; $7581: $a4
    ld hl, sp-$21                                 ; $7582: $f8 $df
    ret z                                         ; $7584: $c8

    ldh a, [$30]                                  ; $7585: $f0 $30
    ldh [rNR41], a                                ; $7587: $e0 $20
    nop                                           ; $7589: $00
    add c                                         ; $758a: $81
    db $f4                                        ; $758b: $f4
    ei                                            ; $758c: $fb
    xor e                                         ; $758d: $ab
    cp c                                          ; $758e: $b9
    cp a                                          ; $758f: $bf
    ld c, b                                       ; $7590: $48
    jr nz, jr_04b_756c                            ; $7591: $20 $d9

    ld e, h                                       ; $7593: $5c
    add b                                         ; $7594: $80
    sub d                                         ; $7595: $92
    cpl                                           ; $7596: $2f
    jr nz, jr_04b_75a1                            ; $7597: $20 $08

    ccf                                           ; $7599: $3f
    rst $38                                       ; $759a: $ff
    cp l                                          ; $759b: $bd
    rst $38                                       ; $759c: $ff
    ld sp, hl                                     ; $759d: $f9

jr_04b_759e:
    cp $e6                                        ; $759e: $fe $e6
    ld [c], a                                     ; $75a0: $e2

jr_04b_75a1:
    and b                                         ; $75a1: $a0
    ld a, d                                       ; $75a2: $7a
    ret nz                                        ; $75a3: $c0

    cp $1f                                        ; $75a4: $fe $1f
    jr nz, @-$2a                                  ; $75a6: $20 $d4

    cp a                                          ; $75a8: $bf
    and a                                         ; $75a9: $a7
    cp a                                          ; $75aa: $bf
    and h                                         ; $75ab: $a4
    sbc a                                         ; $75ac: $9f
    sbc b                                         ; $75ad: $98
    jp $969f                                      ; $75ae: $c3 $9f $96


    and b                                         ; $75b1: $a0
    and e                                         ; $75b2: $a3
    xor c                                         ; $75b3: $a9
    add b                                         ; $75b4: $80
    ld h, b                                       ; $75b5: $60
    call nz, $c380                                ; $75b6: $c4 $80 $c3
    cp a                                          ; $75b9: $bf
    xor c                                         ; $75ba: $a9
    ei                                            ; $75bb: $fb
    sub a                                         ; $75bc: $97
    sbc b                                         ; $75bd: $98
    ld e, $c0                                     ; $75be: $1e $c0
    sub b                                         ; $75c0: $90
    adc a                                         ; $75c1: $8f
    adc d                                         ; $75c2: $8a
    add a                                         ; $75c3: $87
    add h                                         ; $75c4: $84
    cp $e0                                        ; $75c5: $fe $e0
    ld h, c                                       ; $75c7: $61
    dec b                                         ; $75c8: $05
    rst $38                                       ; $75c9: $ff
    adc [hl]                                      ; $75ca: $8e
    ld a, [$fa8e]                                 ; $75cb: $fa $8e $fa
    call c, $74bf                                 ; $75ce: $dc $bf $74
    jp c, $e47e                                   ; $75d1: $da $7e $e4

    db $e4                                        ; $75d4: $e4
    ld b, b                                       ; $75d5: $40
    add b                                         ; $75d6: $80
    and b                                         ; $75d7: $a0
    ret z                                         ; $75d8: $c8

    xor e                                         ; $75d9: $ab
    rst $38                                       ; $75da: $ff
    call nc, $c021                                ; $75db: $d4 $21 $c0
    ret nz                                        ; $75de: $c0

    add hl, sp                                    ; $75df: $39
    add b                                         ; $75e0: $80
    call z, $80d8                                 ; $75e1: $cc $d8 $80
    rst $38                                       ; $75e4: $ff
    xor a                                         ; $75e5: $af
    rst $38                                       ; $75e6: $ff
    inc b                                         ; $75e7: $04
    db $fc                                        ; $75e8: $fc
    inc e                                         ; $75e9: $1c
    rst $38                                       ; $75ea: $ff
    ld h, b                                       ; $75eb: $60
    sub h                                         ; $75ec: $94
    ld b, d                                       ; $75ed: $42
    ld h, b                                       ; $75ee: $60
    jr c, jr_04b_759e                             ; $75ef: $38 $ad

    ld hl, sp-$40                                 ; $75f1: $f8 $c0
    and c                                         ; $75f3: $a1
    ret nz                                        ; $75f4: $c0

    rst $38                                       ; $75f5: $ff
    add a                                         ; $75f6: $87
    ld b, b                                       ; $75f7: $40
    or b                                          ; $75f8: $b0
    cp [hl]                                       ; $75f9: $be
    ld [c], a                                     ; $75fa: $e2
    adc e                                         ; $75fb: $8b
    sbc $a0                                       ; $75fc: $de $a0
    ld [c], a                                     ; $75fe: $e2
    db $f4                                        ; $75ff: $f4
    cp h                                          ; $7600: $bc
    call nc, Call_04b_407c                        ; $7601: $d4 $7c $40
    and b                                         ; $7604: $a0
    ldh a, [rNR10]                                ; $7605: $f0 $10
    ret nc                                        ; $7607: $d0

    ld e, $c1                                     ; $7608: $1e $c1
    ld h, b                                       ; $760a: $60
    rst $38                                       ; $760b: $ff
    inc h                                         ; $760c: $24
    add b                                         ; $760d: $80
    ld h, $80                                     ; $760e: $26 $80
    and c                                         ; $7610: $a1
    rst $38                                       ; $7611: $ff
    ret nz                                        ; $7612: $c0

    sbc a                                         ; $7613: $9f
    sub c                                         ; $7614: $91
    xor a                                         ; $7615: $af
    sbc a                                         ; $7616: $9f
    sbc d                                         ; $7617: $9a
    cp a                                          ; $7618: $bf
    cp d                                          ; $7619: $ba
    add b                                         ; $761a: $80
    ld b, c                                       ; $761b: $41
    ld c, b                                       ; $761c: $48
    ret nz                                        ; $761d: $c0

    add b                                         ; $761e: $80
    ld [hl+], a                                   ; $761f: $22
    rst $38                                       ; $7620: $ff
    cp $e2                                        ; $7621: $fe $e2
    cp $fa                                        ; $7623: $fe $fa
    sbc [hl]                                      ; $7625: $9e
    db $fc                                        ; $7626: $fc
    inc a                                         ; $7627: $3c
    add a                                         ; $7628: $87
    rst $00                                       ; $7629: $c7
    add a                                         ; $762a: $87
    adc [hl]                                      ; $762b: $8e
    adc e                                         ; $762c: $8b
    ld b, $81                                     ; $762d: $06 $81
    sbc $80                                       ; $762f: $de $80
    ldh [$e0], a                                  ; $7631: $e0 $e0
    sbc a                                         ; $7633: $9f
    sbc d                                         ; $7634: $9a
    db $fc                                        ; $7635: $fc
    ldh [$e3], a                                  ; $7636: $e0 $e3
    ld b, b                                       ; $7638: $40
    ret nz                                        ; $7639: $c0

    db $fc                                        ; $763a: $fc
    db $f4                                        ; $763b: $f4
    inc a                                         ; $763c: $3c
    db $fc                                        ; $763d: $fc
    inc a                                         ; $763e: $3c
    db $fc                                        ; $763f: $fc
    db $fd                                        ; $7640: $fd
    ld h, h                                       ; $7641: $64
    ret nz                                        ; $7642: $c0

    ld h, c                                       ; $7643: $61
    xor l                                         ; $7644: $ad
    xor c                                         ; $7645: $a9
    cp a                                          ; $7646: $bf
    cp a                                          ; $7647: $bf
    and h                                         ; $7648: $a4
    or c                                          ; $7649: $b1
    db $ed                                        ; $764a: $ed
    sbc $9a                                       ; $764b: $de $9a
    nop                                           ; $764d: $00
    cp d                                          ; $764e: $ba
    cp a                                          ; $764f: $bf
    ret nz                                        ; $7650: $c0

    and d                                         ; $7651: $a2
    ld h, b                                       ; $7652: $60
    ld d, b                                       ; $7653: $50
    or b                                          ; $7654: $b0
    rst $38                                       ; $7655: $ff
    sbc b                                         ; $7656: $98
    ret c                                         ; $7657: $d8

    ld b, h                                       ; $7658: $44
    db $ec                                        ; $7659: $ec
    db $e4                                        ; $765a: $e4
    db $fc                                        ; $765b: $fc
    inc a                                         ; $765c: $3c
    ld a, h                                       ; $765d: $7c
    ld e, a                                       ; $765e: $5f
    rst $38                                       ; $765f: $ff
    dec sp                                        ; $7660: $3b
    xor $3f                                       ; $7661: $ee $3f
    ld [$e3fe], a                                 ; $7663: $ea $fe $e3
    ld a, [hl+]                                   ; $7666: $2a
    ret nc                                        ; $7667: $d0

    ret nz                                        ; $7668: $c0

    dec e                                         ; $7669: $1d
    ccf                                           ; $766a: $3f
    call c, $a201                                 ; $766b: $dc $01 $a2
    rst $38                                       ; $766e: $ff
    ld [$0170], a                                 ; $766f: $ea $70 $01
    rst $38                                       ; $7672: $ff
    ldh [$50], a                                  ; $7673: $e0 $50
    inc bc                                        ; $7675: $03
    db $fd                                        ; $7676: $fd
    ld [hl+], a                                   ; $7677: $22
    ld h, d                                       ; $7678: $62
    nop                                           ; $7679: $00
    and d                                         ; $767a: $a2
    rst $38                                       ; $767b: $ff
    xor [hl]                                      ; $767c: $ae
    xor [hl]                                      ; $767d: $ae
    and d                                         ; $767e: $a2
    and d                                         ; $767f: $a2
    cp $40                                        ; $7680: $fe $40
    ld [bc], a                                    ; $7682: $02
    cp $23                                        ; $7683: $fe $23
    cp $af                                        ; $7685: $fe $af
    cp $e3                                        ; $7687: $fe $e3
    cp $6f                                        ; $7689: $fe $6f
    ei                                            ; $768b: $fb
    cp d                                          ; $768c: $ba
    db $e3                                        ; $768d: $e3
    and d                                         ; $768e: $a2
    xor l                                         ; $768f: $ad
    ld h, b                                       ; $7690: $60
    ld c, $fb                                     ; $7691: $0e $fb
    cp $e1                                        ; $7693: $fe $e1
    rst $38                                       ; $7695: $ff
    rrca                                          ; $7696: $0f
    db $fd                                        ; $7697: $fd
    rrca                                          ; $7698: $0f
    db $fd                                        ; $7699: $fd
    dec b                                         ; $769a: $05
    db $fc                                        ; $769b: $fc
    inc b                                         ; $769c: $04
    rst $38                                       ; $769d: $ff
    cp a                                          ; $769e: $bf
    rlca                                          ; $769f: $07
    rst $38                                       ; $76a0: $ff
    ldh [$bf], a                                  ; $76a1: $e0 $bf
    cp $a3                                        ; $76a3: $fe $a3
    ldh [$e0], a                                  ; $76a5: $e0 $e0
    ld h, e                                       ; $76a7: $63
    rst $18                                       ; $76a8: $df
    cp $7b                                        ; $76a9: $fe $7b
    ld a, e                                       ; $76ab: $7b
    ld h, d                                       ; $76ac: $62
    ld h, d                                       ; $76ad: $62
    pop hl                                        ; $76ae: $e1
    ld b, b                                       ; $76af: $40
    rra                                           ; $76b0: $1f
    ldh a, [$fb]                                  ; $76b1: $f0 $fb
    rra                                           ; $76b3: $1f
    rst $30                                       ; $76b4: $f7
    cp $e0                                        ; $76b5: $fe $e0
    ldh a, [$1f]                                  ; $76b7: $f0 $1f
    push af                                       ; $76b9: $f5
    sub l                                         ; $76ba: $95
    db $f4                                        ; $76bb: $f4
    rst $38                                       ; $76bc: $ff
    sub h                                         ; $76bd: $94
    rst $38                                       ; $76be: $ff
    sbc a                                         ; $76bf: $9f
    rst $38                                       ; $76c0: $ff
    ret nz                                        ; $76c1: $c0

    ld a, a                                       ; $76c2: $7f
    rst $38                                       ; $76c3: $ff
    ld b, h                                       ; $76c4: $44
    ld a, e                                       ; $76c5: $7b
    rst $38                                       ; $76c6: $ff
    ld d, l                                       ; $76c7: $55
    db $fc                                        ; $76c8: $fc
    ldh [$df], a                                  ; $76c9: $e0 $df
    rst $18                                       ; $76cb: $df
    ld b, h                                       ; $76cc: $44
    ld b, h                                       ; $76cd: $44
    pop bc                                        ; $76ce: $c1
    ld b, b                                       ; $76cf: $40
    db $eb                                        ; $76d0: $eb
    rlca                                          ; $76d1: $07
    db $fd                                        ; $76d2: $fd
    ld a, [c]                                     ; $76d3: $f2
    ldh [$d5], a                                  ; $76d4: $e0 $d5
    xor $e0                                       ; $76d6: $ee $e0
    ld d, l                                       ; $76d8: $55
    ld d, l                                       ; $76d9: $55

jr_04b_76da:
    ld b, l                                       ; $76da: $45
    db $fd                                        ; $76db: $fd
    ld b, l                                       ; $76dc: $45
    or c                                          ; $76dd: $b1
    ld b, b                                       ; $76de: $40
    ldh [$bf], a                                  ; $76df: $e0 $bf
    ldh a, [$1f]                                  ; $76e1: $f0 $1f
    ldh a, [$bf]                                  ; $76e3: $f0 $bf
    sub a                                         ; $76e5: $97
    ldh a, [$bf]                                  ; $76e6: $f0 $bf
    ldh [$ca], a                                  ; $76e8: $e0 $ca
    ret nz                                        ; $76ea: $c0

    sub b                                         ; $76eb: $90
    scf                                           ; $76ec: $37
    jr nz, jr_04b_76f1                            ; $76ed: $20 $02

    add d                                         ; $76ef: $82

jr_04b_76f0:
    cp a                                          ; $76f0: $bf

jr_04b_76f1:
    dec h                                         ; $76f1: $25
    cp [hl]                                       ; $76f2: $be
    ld h, b                                       ; $76f3: $60
    ld b, [hl]                                    ; $76f4: $46
    ld [hl], d                                    ; $76f5: $72
    nop                                           ; $76f6: $00
    jp $8000                                      ; $76f7: $c3 $00 $80


    ld hl, sp+$60                                 ; $76fa: $f8 $60
    ld b, c                                       ; $76fc: $41
    ld l, h                                       ; $76fd: $6c
    jr nz, jr_04b_7737                            ; $76fe: $20 $37

    pop bc                                        ; $7700: $c1
    rst $38                                       ; $7701: $ff
    rst $00                                       ; $7702: $c7
    ldh [$67], a                                  ; $7703: $e0 $67
    db $fc                                        ; $7705: $fc
    ld d, h                                       ; $7706: $54
    ld b, d                                       ; $7707: $42
    ld b, b                                       ; $7708: $40
    and b                                         ; $7709: $a0
    add b                                         ; $770a: $80

jr_04b_770b:
    cp a                                          ; $770b: $bf
    ldh [rNR41], a                                ; $770c: $e0 $20
    ldh a, [rSVBK]                                ; $770e: $f0 $70
    ldh [$60], a                                  ; $7710: $e0 $60
    ld h, b                                       ; $7712: $60
    ret nz                                        ; $7713: $c0

    db $e3                                        ; $7714: $e3
    ei                                            ; $7715: $fb
    jp $dae7                                      ; $7716: $c3 $e7 $da


    jr nz, jr_04b_76da                            ; $7719: $20 $bf

    and h                                         ; $771b: $a4
    or b                                          ; $771c: $b0
    sbc b                                         ; $771d: $98
    sbc a                                         ; $771e: $9f
    cp $c0                                        ; $771f: $fe $c0
    and c                                         ; $7721: $a1
    ld a, h                                       ; $7722: $7c
    db $f4                                        ; $7723: $f4
    xor d                                         ; $7724: $aa

jr_04b_7725:
    ld [$ae02], a                                 ; $7725: $ea $02 $ae
    inc b                                         ; $7728: $04
    rla                                           ; $7729: $17
    inc e                                         ; $772a: $1c
    jr c, jr_04b_7725                             ; $772b: $38 $f8

    ret nz                                        ; $772d: $c0

    and e                                         ; $772e: $a3
    nop                                           ; $772f: $00
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    ld [$7ce9], a                                 ; $7734: $ea $e9 $7c

jr_04b_7737:
    ld e, [hl]                                    ; $7737: $5e
    ld a, [bc]                                    ; $7738: $0a
    pop hl                                        ; $7739: $e1
    jr nz, jr_04b_76f0                            ; $773a: $20 $b4

    rst $38                                       ; $773c: $ff
    or l                                          ; $773d: $b5
    rst $38                                       ; $773e: $ff
    add l                                         ; $773f: $85
    db $fc                                        ; $7740: $fc
    ldh [$f9], a                                  ; $7741: $e0 $f9
    or h                                          ; $7743: $b4
    ld d, h                                       ; $7744: $54
    ld h, c                                       ; $7745: $61
    ld a, l                                       ; $7746: $7d
    add b                                         ; $7747: $80
    cpl                                           ; $7748: $2f
    ld sp, hl                                     ; $7749: $f9
    xor a                                         ; $774a: $af
    ld sp, hl                                     ; $774b: $f9
    xor a                                         ; $774c: $af
    xor a                                         ; $774d: $af
    rst $38                                       ; $774e: $ff
    xor a                                         ; $774f: $af
    rst $38                                       ; $7750: $ff
    ld hl, $c2a5                                  ; $7751: $21 $a5 $c2
    rst $38                                       ; $7754: $ff
    inc de                                        ; $7755: $13

jr_04b_7756:
    ldh [$7f], a                                  ; $7756: $e0 $7f
    db $fc                                        ; $7758: $fc
    db $fc                                        ; $7759: $fc
    db $e4                                        ; $775a: $e4
    ret nc                                        ; $775b: $d0

    ld [c], a                                     ; $775c: $e2
    rst $10                                       ; $775d: $d7
    jr c, jr_04b_770b                             ; $775e: $38 $ab

    ld l, h                                       ; $7760: $6c
    rst $00                                       ; $7761: $c7
    xor $ff                                       ; $7762: $ee $ff
    add e                                         ; $7764: $83
    add d                                         ; $7765: $82
    ld b, l                                       ; $7766: $45
    add $83                                       ; $7767: $c6 $83
    sub $93                                       ; $7769: $d6 $93
    cp d                                          ; $776b: $ba
    cp $90                                        ; $776c: $fe $90
    ld h, b                                       ; $776e: $60
    rlca                                          ; $776f: $07
    db $eb                                        ; $7770: $eb
    inc c                                         ; $7771: $0c
    rst $10                                       ; $7772: $d7
    dec de                                        ; $7773: $1b
    db $ed                                        ; $7774: $ed
    scf                                           ; $7775: $37
    rst $38                                       ; $7776: $ff
    ld sp, hl                                     ; $7777: $f9

jr_04b_7778:
    cpl                                           ; $7778: $2f
    db $fd                                        ; $7779: $fd
    cpl                                           ; $777a: $2f
    db $fd                                        ; $777b: $fd
    daa                                           ; $777c: $27
    db $dd                                        ; $777d: $dd
    rla                                           ; $777e: $17
    rst $08                                       ; $777f: $cf
    cp a                                          ; $7780: $bf
    add b                                         ; $7781: $80
    ld a, a                                       ; $7782: $7f
    ret nz                                        ; $7783: $c0

    ei                                            ; $7784: $fb
    nop                                           ; $7785: $00
    cp $e6                                        ; $7786: $fe $e6
    db $fd                                        ; $7788: $fd
    rla                                           ; $7789: $17
    rst $38                                       ; $778a: $ff
    db $dd                                        ; $778b: $dd
    rla                                           ; $778c: $17
    db $ed                                        ; $778d: $ed
    scf                                           ; $778e: $37
    db $fd                                        ; $778f: $fd
    cpl                                           ; $7790: $2f
    ld hl, sp+$2f                                 ; $7791: $f8 $2f
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    cpl                                           ; $7795: $2f
    rst $28                                       ; $7796: $ef
    jr nc, jr_04b_7778                            ; $7797: $30 $df

    rra                                           ; $7799: $1f
    rst $38                                       ; $779a: $ff
    ld b, b                                       ; $779b: $40
    cp a                                          ; $779c: $bf
    rst $18                                       ; $779d: $df
    ld b, b                                       ; $779e: $40
    cp a                                          ; $779f: $bf
    ld h, b                                       ; $77a0: $60
    rst $38                                       ; $77a1: $ff
    and b                                         ; $77a2: $a0
    cp $e1                                        ; $77a3: $fe $e1
    cp a                                          ; $77a5: $bf
    ld a, a                                       ; $77a6: $7f
    ld h, b                                       ; $77a7: $60
    rst $18                                       ; $77a8: $df
    ret nz                                        ; $77a9: $c0

    rst $38                                       ; $77aa: $ff
    adc b                                         ; $77ab: $88
    rst $38                                       ; $77ac: $ff
    db $db                                        ; $77ad: $db
    cp $e2                                        ; $77ae: $fe $e2
    add hl, hl                                    ; $77b0: $29
    ret c                                         ; $77b1: $d8

    add b                                         ; $77b2: $80
    db $e3                                        ; $77b3: $e3
    add e                                         ; $77b4: $83
    ret nz                                        ; $77b5: $c0

    ld l, l                                       ; $77b6: $6d
    cp $e0                                        ; $77b7: $fe $e0
    ld l, h                                       ; $77b9: $6c
    ld a, [$60e0]                                 ; $77ba: $fa $e0 $60
    ld [c], a                                     ; $77bd: $e2
    rst $38                                       ; $77be: $ff
    ld hl, sp+$2f                                 ; $77bf: $f8 $2f
    ld hl, sp-$51                                 ; $77c1: $f8 $af
    ld hl, sp-$51                                 ; $77c3: $f8 $af
    cp $2f                                        ; $77c5: $fe $2f
    ld [hl], h                                    ; $77c7: $74
    ld c, e                                       ; $77c8: $4b
    ret nz                                        ; $77c9: $c0

    ld d, b                                       ; $77ca: $50
    db $e3                                        ; $77cb: $e3
    add h                                         ; $77cc: $84
    reti                                          ; $77cd: $d9


    jr nz, jr_04b_7756                            ; $77ce: $20 $86

    rst $38                                       ; $77d0: $ff
    or $fc                                        ; $77d1: $f6 $fc
    ldh [$2e], a                                  ; $77d3: $e0 $2e
    ret nc                                        ; $77d5: $d0

    db $e3                                        ; $77d6: $e3
    ld b, d                                       ; $77d7: $42
    rst $38                                       ; $77d8: $ff
    jp c, $e0fe                                   ; $77d9: $da $fe $e0

    jp nz, $e0fa                                  ; $77dc: $c2 $fa $e0

    ld d, b                                       ; $77df: $50
    push hl                                       ; $77e0: $e5
    dec b                                         ; $77e1: $05
    rst $18                                       ; $77e2: $df
    cp $e0                                        ; $77e3: $fe $e0
    ccf                                           ; $77e5: $3f
    ld a, [$20e0]                                 ; $77e6: $fa $e0 $20
    ld [c], a                                     ; $77e9: $e2
    rst $28                                       ; $77ea: $ef
    rst $18                                       ; $77eb: $df
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    ld a, [$fff9]                                 ; $77ee: $fa $f9 $ff
    rst $18                                       ; $77f1: $df
    rra                                           ; $77f2: $1f
    xor a                                         ; $77f3: $af
    jr nc, @+$61                                  ; $77f4: $30 $5f

    ld l, a                                       ; $77f6: $6f
    or b                                          ; $77f7: $b0
    rst $18                                       ; $77f8: $df
    rst $38                                       ; $77f9: $ff
    and $bf                                       ; $77fa: $e6 $bf
    rst $28                                       ; $77fc: $ef
    cp c                                          ; $77fd: $b9
    rst $38                                       ; $77fe: $ff
    cp c                                          ; $77ff: $b9
    cp [hl]                                       ; $7800: $be
    rst $00                                       ; $7801: $c7
    rst $38                                       ; $7802: $ff
    cp a                                          ; $7803: $bf
    add b                                         ; $7804: $80
    ld e, a                                       ; $7805: $5f
    ret nz                                        ; $7806: $c0

    xor a                                         ; $7807: $af
    ld h, b                                       ; $7808: $60
    rst $18                                       ; $7809: $df
    or b                                          ; $780a: $b0
    ei                                            ; $780b: $fb
    ld a, a                                       ; $780c: $7f
    ret nc                                        ; $780d: $d0

    cp $e3                                        ; $780e: $fe $e3
    reti                                          ; $7810: $d9


    ld l, a                                       ; $7811: $6f
    ld [hl], e                                    ; $7812: $73
    ld e, [hl]                                    ; $7813: $5e
    or a                                          ; $7814: $b7
    di                                            ; $7815: $f3
    db $dd                                        ; $7816: $dd
    rst $20                                       ; $7817: $e7
    pop de                                        ; $7818: $d1
    and b                                         ; $7819: $a0
    sub a                                         ; $781a: $97
    add b                                         ; $781b: $80

jr_04b_781c:
    ret nz                                        ; $781c: $c0

    ld a, a                                       ; $781d: $7f
    ld a, a                                       ; $781e: $7f
    rst $18                                       ; $781f: $df
    rst $28                                       ; $7820: $ef
    or b                                          ; $7821: $b0
    rst $28                                       ; $7822: $ef
    jr nz, @+$01                                  ; $7823: $20 $ff

    db $e4                                        ; $7825: $e4
    ld [c], a                                     ; $7826: $e2
    rst $38                                       ; $7827: $ff
    ret nc                                        ; $7828: $d0

    rst $18                                       ; $7829: $df
    rst $38                                       ; $782a: $ff
    jr nc, jr_04b_781c                            ; $782b: $30 $ef

    ldh [$fc], a                                  ; $782d: $e0 $fc
    nop                                           ; $782f: $00
    ld sp, hl                                     ; $7830: $f9
    inc bc                                        ; $7831: $03
    ld a, [$03ff]                                 ; $7832: $fa $ff $03
    ld a, [c]                                     ; $7835: $f2
    ld b, $84                                     ; $7836: $06 $84
    ld c, $3c                                     ; $7838: $0e $3c
    ld a, h                                       ; $783a: $7c
    ld b, b                                       ; $783b: $40
    rst $38                                       ; $783c: $ff
    ld h, d                                       ; $783d: $62
    ld [hl+], a                                   ; $783e: $22
    ld [hl], d                                    ; $783f: $72
    ccf                                           ; $7840: $3f
    nop                                           ; $7841: $00
    sbc a                                         ; $7842: $9f
    ret nz                                        ; $7843: $c0

    ld e, a                                       ; $7844: $5f
    rst $38                                       ; $7845: $ff
    ret nz                                        ; $7846: $c0

    ld c, a                                       ; $7847: $4f
    ld h, b                                       ; $7848: $60
    ld hl, $3c70                                  ; $7849: $21 $70 $3c
    ld a, $02                                     ; $784c: $3e $02
    rlca                                          ; $784e: $07
    ld b, [hl]                                    ; $784f: $46
    ld b, h                                       ; $7850: $44
    ld c, [hl]                                    ; $7851: $4e
    ld d, c                                       ; $7852: $51
    jp z, $fffe                                   ; $7853: $ca $fe $ff

    cp $ff                                        ; $7856: $fe $ff
    cp $ff                                        ; $7858: $fe $ff
    cp $ff                                        ; $785a: $fe $ff
    db $fc                                        ; $785c: $fc
    cp e                                          ; $785d: $bb
    xor b                                         ; $785e: $a8
    nop                                           ; $785f: $00
    rst $20                                       ; $7860: $e7
    rst $38                                       ; $7861: $ff
    cp c                                          ; $7862: $b9
    or [hl]                                       ; $7863: $b6
    rst $08                                       ; $7864: $cf
    ld a, b                                       ; $7865: $78
    ld l, a                                       ; $7866: $6f
    cp $00                                        ; $7867: $fe $00
    db $eb                                        ; $7869: $eb
    rst $38                                       ; $786a: $ff
    or b                                          ; $786b: $b0
    halt                                          ; $786c: $76
    ld c, a                                       ; $786d: $4f
    rst $38                                       ; $786e: $ff
    cp c                                          ; $786f: $b9
    rst $28                                       ; $7870: $ef
    rst $38                                       ; $7871: $ff
    cp c                                          ; $7872: $b9
    and $bf                                       ; $7873: $e6 $bf
    or b                                          ; $7875: $b0
    rst $18                                       ; $7876: $df
    ld e, a                                       ; $7877: $5f
    ld l, a                                       ; $7878: $6f
    xor a                                         ; $7879: $af
    db $fc                                        ; $787a: $fc
    nop                                           ; $787b: $00
    ret nz                                        ; $787c: $c0

    add sp, -$3b                                  ; $787d: $e8 $c5
    rst $18                                       ; $787f: $df
    or b                                          ; $7880: $b0
    xor a                                         ; $7881: $af
    ld h, b                                       ; $7882: $60
    ld e, a                                       ; $7883: $5f
    ret nz                                        ; $7884: $c0

    rst $38                                       ; $7885: $ff
    cp a                                          ; $7886: $bf
    add b                                         ; $7887: $80
    sub b                                         ; $7888: $90
    ld a, [hl-]                                   ; $7889: $3a
    ret z                                         ; $788a: $c8

    inc e                                         ; $788b: $1c
    ret z                                         ; $788c: $c8

    dec e                                         ; $788d: $1d
    rst $38                                       ; $788e: $ff
    ret nc                                        ; $788f: $d0

    dec de                                        ; $7890: $1b
    sub c                                         ; $7891: $91
    ccf                                           ; $7892: $3f
    and [hl]                                      ; $7893: $a6
    ccf                                           ; $7894: $3f
    sbc b                                         ; $7895: $98
    inc a                                         ; $7896: $3c
    rst $38                                       ; $7897: $ff
    jp Jump_000_0900                              ; $7898: $c3 $00 $09


    ld e, h                                       ; $789b: $5c
    inc de                                        ; $789c: $13
    jr c, jr_04b_78b2                             ; $789d: $38 $13

    cp b                                          ; $789f: $b8
    ld a, a                                       ; $78a0: $7f
    dec bc                                        ; $78a1: $0b
    ret c                                         ; $78a2: $d8

    adc c                                         ; $78a3: $89
    db $fc                                        ; $78a4: $fc
    ld h, l                                       ; $78a5: $65
    db $fc                                        ; $78a6: $fc
    add hl, de                                    ; $78a7: $19
    ldh a, [$e0]                                  ; $78a8: $f0 $e0
    rst $38                                       ; $78aa: $ff
    rst $38                                       ; $78ab: $ff
    inc a                                         ; $78ac: $3c
    db $db                                        ; $78ad: $db
    ld h, [hl]                                    ; $78ae: $66
    cp l                                          ; $78af: $bd
    db $db                                        ; $78b0: $db
    rst $28                                       ; $78b1: $ef

jr_04b_78b2:
    sub c                                         ; $78b2: $91
    cp a                                          ; $78b3: $bf
    rst $30                                       ; $78b4: $f7
    adc c                                         ; $78b5: $89
    cp l                                          ; $78b6: $bd
    db $db                                        ; $78b7: $db
    db $db                                        ; $78b8: $db
    ld h, [hl]                                    ; $78b9: $66
    ld d, b                                       ; $78ba: $50
    and b                                         ; $78bb: $a0
    inc a                                         ; $78bc: $3c
    ei                                            ; $78bd: $fb
    rst $18                                       ; $78be: $df
    ld h, h                                       ; $78bf: $64
    ld e, a                                       ; $78c0: $5f
    add b                                         ; $78c1: $80
    ld h, h                                       ; $78c2: $64
    rst $38                                       ; $78c3: $ff
    inc h                                         ; $78c4: $24
    rst $38                                       ; $78c5: $ff
    ld h, [hl]                                    ; $78c6: $66
    cp $04                                        ; $78c7: $fe $04
    ret nz                                        ; $78c9: $c0

    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    ld a, [hl]                                    ; $78cc: $7e
    cp l                                          ; $78cd: $bd
    jp $99ff                                      ; $78ce: $c3 $ff $99


    rst $38                                       ; $78d1: $ff
    rst $30                                       ; $78d2: $f7
    ld sp, hl                                     ; $78d3: $f9
    cp c                                          ; $78d4: $b9
    rst $00                                       ; $78d5: $c7
    rst $28                                       ; $78d6: $ef
    sbc a                                         ; $78d7: $9f
    rst $38                                       ; $78d8: $ff
    add c                                         ; $78d9: $81
    cp $f0                                        ; $78da: $fe $f0
    db $e3                                        ; $78dc: $e3
    rst $30                                       ; $78dd: $f7
    sbc c                                         ; $78de: $99
    rst $38                                       ; $78df: $ff
    ld h, d                                       ; $78e0: $62
    rst $38                                       ; $78e1: $ff
    ld sp, hl                                     ; $78e2: $f9
    rst $38                                       ; $78e3: $ff
    db $fd                                        ; $78e4: $fd
    sbc c                                         ; $78e5: $99
    and $e0                                       ; $78e6: $e6 $e0
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    ld a, $df                                     ; $78ea: $3e $df
    ld h, d                                       ; $78ec: $62
    cp a                                          ; $78ed: $bf
    ld e, a                                       ; $78ee: $5f
    jp nz, $92ff                                  ; $78ef: $c2 $ff $92

    rst $38                                       ; $78f2: $ff
    sub e                                         ; $78f3: $93
    ld [c], a                                     ; $78f4: $e2
    ldh [$f3], a                                  ; $78f5: $e0 $f3
    rrca                                          ; $78f7: $0f
    and c                                         ; $78f8: $a1
    xor [hl]                                      ; $78f9: $ae
    jp c, $9fe0                                   ; $78fa: $da $e0 $9f

    db $fd                                        ; $78fd: $fd
    add e                                         ; $78fe: $83

Call_04b_78ff:
    ldh [$e6], a                                  ; $78ff: $e0 $e6
    ld a, [hl]                                    ; $7901: $7e
    ld [c], a                                     ; $7902: $e2
    ldh [$9e], a                                  ; $7903: $e0 $9e
    ld a, [c]                                     ; $7905: $f2
    ldh a, [$e0]                                  ; $7906: $f0 $e0
    sbc c                                         ; $7908: $99
    ret nc                                        ; $7909: $d0

    db $e4                                        ; $790a: $e4
    ldh [$e0], a                                  ; $790b: $e0 $e0
    push af                                       ; $790d: $f5
    ei                                            ; $790e: $fb
    rst $28                                       ; $790f: $ef
    ld [hl-], a                                   ; $7910: $32
    dec bc                                        ; $7911: $0b
    ei                                            ; $7912: $fb
    ld h, $9e                                     ; $7913: $26 $9e
    ldh [rNR50], a                                ; $7915: $e0 $24
    and b                                         ; $7917: $a0
    push hl                                       ; $7918: $e5
    sbc h                                         ; $7919: $9c
    pop hl                                        ; $791a: $e1
    ret nc                                        ; $791b: $d0

    push hl                                       ; $791c: $e5
    db $f4                                        ; $791d: $f4
    db $e3                                        ; $791e: $e3
    xor a                                         ; $791f: $af
    cp a                                          ; $7920: $bf
    pop bc                                        ; $7921: $c1
    rst $38                                       ; $7922: $ff
    ld a, c                                       ; $7923: $79
    ret nc                                        ; $7924: $d0

    db $e4                                        ; $7925: $e4
    add h                                         ; $7926: $84
    jp nz, $b580                                  ; $7927: $c2 $80 $b5

    di                                            ; $792a: $f3
    rst $38                                       ; $792b: $ff
    adc h                                         ; $792c: $8c
    cp h                                          ; $792d: $bc
    add b                                         ; $792e: $80
    rst $38                                       ; $792f: $ff
    db $e3                                        ; $7930: $e3
    dec l                                         ; $7931: $2d
    rst $30                                       ; $7932: $f7
    xor l                                         ; $7933: $ad
    ei                                            ; $7934: $fb
    rst $18                                       ; $7935: $df
    and l                                         ; $7936: $a5
    rst $38                                       ; $7937: $ff
    add hl, hl                                    ; $7938: $29
    rst $38                                       ; $7939: $ff
    xor l                                         ; $793a: $ad
    ldh a, [$e3]                                  ; $793b: $f0 $e3
    ld hl, sp+$6f                                 ; $793d: $f8 $6f
    rst $38                                       ; $793f: $ff
    ld hl, sp+$5f                                 ; $7940: $f8 $5f
    ldh a, [$3f]                                  ; $7942: $f0 $3f
    ld hl, sp+$1f                                 ; $7944: $f8 $1f
    ret c                                         ; $7946: $d8

    ld l, a                                       ; $7947: $6f
    push bc                                       ; $7948: $c5
    ld hl, sp-$21                                 ; $7949: $f8 $df
    db $e3                                        ; $794b: $e3
    adc d                                         ; $794c: $8a
    ld c, [hl]                                    ; $794d: $4e
    and d                                         ; $794e: $a2
    ld c, d                                       ; $794f: $4a
    and c                                         ; $7950: $a1
    ld [hl], c                                    ; $7951: $71
    ld [c], a                                     ; $7952: $e2
    ld e, a                                       ; $7953: $5f
    add sp, $2f                                   ; $7954: $e8 $2f
    cp a                                          ; $7956: $bf
    ld c, e                                       ; $7957: $4b
    rst $38                                       ; $7958: $ff
    xor b                                         ; $7959: $a8
    call nz, $e800                                ; $795a: $c4 $00 $e8
    ld h, c                                       ; $795d: $61
    ld b, b                                       ; $795e: $40
    ld l, a                                       ; $795f: $6f
    add b                                         ; $7960: $80
    rst $38                                       ; $7961: $ff
    rst $08                                       ; $7962: $cf
    ld a, h                                       ; $7963: $7c
    rst $18                                       ; $7964: $df
    push af                                       ; $7965: $f5
    rst $18                                       ; $7966: $df
    ld [hl], h                                    ; $7967: $74
    rst $38                                       ; $7968: $ff
    rst $28                                       ; $7969: $ef
    ld d, a                                       ; $796a: $57
    rst $38                                       ; $796b: $ff
    ld l, h                                       ; $796c: $6c
    rst $30                                       ; $796d: $f7
    xor a                                         ; $796e: $af
    db $e3                                        ; $796f: $e3
    ld hl, $e0f4                                  ; $7970: $21 $f4 $e0
    cpl                                           ; $7973: $2f
    ld l, [hl]                                    ; $7974: $6e
    add e                                         ; $7975: $83
    xor $40                                       ; $7976: $ee $40
    ld [c], a                                     ; $7978: $e2
    ld [$6bff], sp                                ; $7979: $08 $ff $6b
    cp $e0                                        ; $797c: $fe $e0
    ld l, b                                       ; $797e: $68
    rst $38                                       ; $797f: $ff
    dec bc                                        ; $7980: $0b
    ld e, [hl]                                    ; $7981: $5e
    sub b                                         ; $7982: $90
    db $e3                                        ; $7983: $e3
    cp $43                                        ; $7984: $fe $43
    cp $5f                                        ; $7986: $fe $5f
    db $fc                                        ; $7988: $fc
    ldh [$df], a                                  ; $7989: $e0 $df
    ld hl, sp-$20                                 ; $798b: $f8 $e0
    ld [bc], a                                    ; $798d: $02
    ld hl, $80e2                                  ; $798e: $21 $e2 $80
    cp $e8                                        ; $7991: $fe $e8
    rra                                           ; $7993: $1f
    add c                                         ; $7994: $81
    db $10                                        ; $7995: $10
    adc h                                         ; $7996: $8c
    ldh a, [$fc]                                  ; $7997: $f0 $fc
    ld c, $bf                                     ; $7999: $0e $bf
    db $ec                                        ; $799b: $ec
    db $eb                                        ; $799c: $eb
    nop                                           ; $799d: $00
    nop                                           ; $799e: $00
    nop                                           ; $799f: $00
    db $fd                                        ; $79a0: $fd
    nop                                           ; $79a1: $00
    rst $38                                       ; $79a2: $ff
    ldh [$03], a                                  ; $79a3: $e0 $03
    inc bc                                        ; $79a5: $03
    inc b                                         ; $79a6: $04
    rlca                                          ; $79a7: $07
    dec bc                                        ; $79a8: $0b
    inc c                                         ; $79a9: $0c
    rst $38                                       ; $79aa: $ff
    rla                                           ; $79ab: $17
    jr jr_04b_79dd                                ; $79ac: $18 $2f

    jr nc, @+$61                                  ; $79ae: $30 $5f

    ld h, b                                       ; $79b0: $60
    cpl                                           ; $79b1: $2f
    jr nc, @+$01                                  ; $79b2: $30 $ff

    rla                                           ; $79b4: $17
    jr jr_04b_79c2                                ; $79b5: $18 $0b

    inc c                                         ; $79b7: $0c
    inc b                                         ; $79b8: $04
    rlca                                          ; $79b9: $07
    inc bc                                        ; $79ba: $03
    inc bc                                        ; $79bb: $03
    db $fc                                        ; $79bc: $fc
    and $e1                                       ; $79bd: $e6 $e1
    db $fc                                        ; $79bf: $fc
    db $e3                                        ; $79c0: $e3
    ret nz                                        ; $79c1: $c0

jr_04b_79c2:
    ret nz                                        ; $79c2: $c0

    ld b, b                                       ; $79c3: $40
    ret nz                                        ; $79c4: $c0

    ld a, [hl]                                    ; $79c5: $7e
    cp $ef                                        ; $79c6: $fe $ef
    ld [bc], a                                    ; $79c8: $02
    cp $fa                                        ; $79c9: $fe $fa
    ld b, $fe                                     ; $79cb: $06 $fe
    pop hl                                        ; $79cd: $e1
    ld [bc], a                                    ; $79ce: $02
    cp $7e                                        ; $79cf: $fe $7e
    rra                                           ; $79d1: $1f
    cp $40                                        ; $79d2: $fe $40
    ret nz                                        ; $79d4: $c0

    ret nz                                        ; $79d5: $c0

    ret nz                                        ; $79d6: $c0

    ldh [$e3], a                                  ; $79d7: $e0 $e3
    nop                                           ; $79d9: $00
    nop                                           ; $79da: $00
    nop                                           ; $79db: $00
    db $fd                                        ; $79dc: $fd

jr_04b_79dd:
    nop                                           ; $79dd: $00
    rst $38                                       ; $79de: $ff
    ldh [$03], a                                  ; $79df: $e0 $03
    inc bc                                        ; $79e1: $03
    inc b                                         ; $79e2: $04
    rlca                                          ; $79e3: $07
    dec bc                                        ; $79e4: $0b
    inc c                                         ; $79e5: $0c
    rst $38                                       ; $79e6: $ff
    rla                                           ; $79e7: $17
    jr jr_04b_7a19                                ; $79e8: $18 $2f

    jr nc, @+$61                                  ; $79ea: $30 $5f

    ld h, b                                       ; $79ec: $60
    cpl                                           ; $79ed: $2f
    jr nc, @+$01                                  ; $79ee: $30 $ff

    rla                                           ; $79f0: $17
    jr jr_04b_79fe                                ; $79f1: $18 $0b

    inc c                                         ; $79f3: $0c
    inc b                                         ; $79f4: $04
    rlca                                          ; $79f5: $07
    inc bc                                        ; $79f6: $03
    inc bc                                        ; $79f7: $03
    db $fc                                        ; $79f8: $fc
    and $e1                                       ; $79f9: $e6 $e1
    db $fc                                        ; $79fb: $fc
    db $e3                                        ; $79fc: $e3
    ret nz                                        ; $79fd: $c0

jr_04b_79fe:
    ret nz                                        ; $79fe: $c0

    ld b, b                                       ; $79ff: $40
    ret nz                                        ; $7a00: $c0

    ld a, [hl]                                    ; $7a01: $7e
    cp $ef                                        ; $7a02: $fe $ef
    ld [bc], a                                    ; $7a04: $02
    cp $fa                                        ; $7a05: $fe $fa
    ld b, $fe                                     ; $7a07: $06 $fe
    pop hl                                        ; $7a09: $e1
    ld [bc], a                                    ; $7a0a: $02
    cp $7e                                        ; $7a0b: $fe $7e
    rra                                           ; $7a0d: $1f
    cp $40                                        ; $7a0e: $fe $40
    ret nz                                        ; $7a10: $c0

    ret nz                                        ; $7a11: $c0

    ret nz                                        ; $7a12: $c0

    ldh [$e3], a                                  ; $7a13: $e0 $e3
    nop                                           ; $7a15: $00
    nop                                           ; $7a16: $00
    nop                                           ; $7a17: $00
    db $fd                                        ; $7a18: $fd

jr_04b_7a19:
    nop                                           ; $7a19: $00
    rst $38                                       ; $7a1a: $ff
    ldh [rSB], a                                  ; $7a1b: $e0 $01
    ld bc, $0302                                  ; $7a1d: $01 $02 $03
    dec b                                         ; $7a20: $05
    ld b, $ff                                     ; $7a21: $06 $ff
    dec bc                                        ; $7a23: $0b
    inc c                                         ; $7a24: $0c
    rla                                           ; $7a25: $17
    jr jr_04b_7a3f                                ; $7a26: $18 $17

    jr jr_04b_7a3b                                ; $7a28: $18 $11

    ld e, $ef                                     ; $7a2a: $1e $ef
    dec e                                         ; $7a2c: $1d
    ld e, $05                                     ; $7a2d: $1e $05
    ld b, $fe                                     ; $7a2f: $06 $fe
    pop hl                                        ; $7a31: $e1
    inc b                                         ; $7a32: $04
    rlca                                          ; $7a33: $07
    rlca                                          ; $7a34: $07
    db $fd                                        ; $7a35: $fd
    rlca                                          ; $7a36: $07
    ld [c], a                                     ; $7a37: $e2
    pop hl                                        ; $7a38: $e1

jr_04b_7a39:
    add b                                         ; $7a39: $80
    add b                                         ; $7a3a: $80

jr_04b_7a3b:
    ld b, b                                       ; $7a3b: $40
    ret nz                                        ; $7a3c: $c0

    and b                                         ; $7a3d: $a0
    ld h, b                                       ; $7a3e: $60

jr_04b_7a3f:
    rst $38                                       ; $7a3f: $ff
    ret nc                                        ; $7a40: $d0

    jr nc, @-$16                                  ; $7a41: $30 $e8

    jr jr_04b_7a39                                ; $7a43: $18 $f4

    inc c                                         ; $7a45: $0c
    db $f4                                        ; $7a46: $f4
    inc c                                         ; $7a47: $0c
    cp a                                          ; $7a48: $bf
    call nz, $dc3c                                ; $7a49: $c4 $3c $dc
    inc a                                         ; $7a4c: $3c
    ret nc                                        ; $7a4d: $d0

jr_04b_7a4e:
    jr nc, jr_04b_7a4e                            ; $7a4e: $30 $fe

    pop hl                                        ; $7a50: $e1
    db $10                                        ; $7a51: $10
    rra                                           ; $7a52: $1f
    ldh a, [$f0]                                  ; $7a53: $f0 $f0
    ldh a, [rP1]                                  ; $7a55: $f0 $00
    nop                                           ; $7a57: $00
    nop                                           ; $7a58: $00
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
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

Jump_04b_7ad7:
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

Call_04b_7eff:
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
