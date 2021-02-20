; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04c", ROMX[$4000], BANK[$4c]

    db $2f, $57

    ld l, [hl]                                    ; $4002: $6e
    ld h, d                                       ; $4003: $62
    rst $08                                       ; $4004: $cf
    ld h, d                                       ; $4005: $62
    scf                                           ; $4006: $37
    ld h, h                                       ; $4007: $64
    ld [hl-], a                                   ; $4008: $32
    ld h, l                                       ; $4009: $65
    dec c                                         ; $400a: $0d
    ld h, e                                       ; $400b: $63
    pop de                                        ; $400c: $d1
    ld h, e                                       ; $400d: $63
    or d                                          ; $400e: $b2
    ld h, l                                       ; $400f: $65
    dec a                                         ; $4010: $3d
    ld h, [hl]                                    ; $4011: $66
    ld a, h                                       ; $4012: $7c
    ld h, [hl]                                    ; $4013: $66
    and c                                         ; $4014: $a1
    ld h, [hl]                                    ; $4015: $66
    add $66                                       ; $4016: $c6 $66
    ld a, [de]                                    ; $4018: $1a
    ld h, a                                       ; $4019: $67
    ld b, l                                       ; $401a: $45
    ld h, a                                       ; $401b: $67
    ld a, [hl]                                    ; $401c: $7e
    ld h, a                                       ; $401d: $67
    sbc h                                         ; $401e: $9c
    ld h, a                                       ; $401f: $67
    ld [hl-], a                                   ; $4020: $32
    ld l, b                                       ; $4021: $68
    jp nc, $6f68                                  ; $4022: $d2 $68 $6f

    ld l, c                                       ; $4025: $69
    ld b, $6a                                     ; $4026: $06 $6a
    and b                                         ; $4028: $a0
    ld l, d                                       ; $4029: $6a
    inc a                                         ; $402a: $3c
    ld l, e                                       ; $402b: $6b
    db $d2                                        ; $402c: $d2
    ld l, e                                       ; $402d: $6b

    db $6e, $6c, $0c, $6d, $a9, $6d

    dec hl                                        ; $4034: $2b
    ld l, [hl]                                    ; $4035: $6e
    ret                                           ; $4036: $c9


    ld [hl], b                                    ; $4037: $70
    add hl, bc                                    ; $4038: $09
    ld [hl], c                                    ; $4039: $71

    db $1a, $71

    ld e, a                                       ; $403c: $5f
    ld [hl], d                                    ; $403d: $72

    db $9a, $73, $bc, $73, $de, $73, $70, $77, $c2, $77, $9b, $78, $d3, $78, $20, $79
    db $4b, $79

    rst $38                                       ; $4050: $ff
    nop                                           ; $4051: $00
    rst $38                                       ; $4052: $ff
    nop                                           ; $4053: $00
    rst $38                                       ; $4054: $ff
    nop                                           ; $4055: $00
    rst $38                                       ; $4056: $ff
    nop                                           ; $4057: $00
    rst $38                                       ; $4058: $ff
    nop                                           ; $4059: $00
    rst $38                                       ; $405a: $ff
    nop                                           ; $405b: $00
    rst $38                                       ; $405c: $ff
    nop                                           ; $405d: $00
    rst $38                                       ; $405e: $ff
    nop                                           ; $405f: $00

    db $ff, $3f, $fe, $3e, $f8, $78, $f0, $70, $f0, $70, $f0, $70, $f0, $70, $f0, $70
    db $ff, $ff, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $ff, $e0, $ff, $e0, $ff, $f0, $7f, $70, $7f, $70, $7f, $70, $7f, $70, $7f, $70

    rst $38                                       ; $4090: $ff
    rlca                                          ; $4091: $07
    rst $38                                       ; $4092: $ff
    rlca                                          ; $4093: $07
    rst $38                                       ; $4094: $ff
    rlca                                          ; $4095: $07
    cp $0e                                        ; $4096: $fe $0e
    db $fc                                        ; $4098: $fc
    inc c                                         ; $4099: $0c
    db $fc                                        ; $409a: $fc
    inc c                                         ; $409b: $0c
    db $fc                                        ; $409c: $fc
    inc c                                         ; $409d: $0c
    db $fc                                        ; $409e: $fc
    inc c                                         ; $409f: $0c
    rst $38                                       ; $40a0: $ff
    rst $38                                       ; $40a1: $ff
    rst $38                                       ; $40a2: $ff
    rst $38                                       ; $40a3: $ff
    ld bc, $0001                                  ; $40a4: $01 $01 $00
    nop                                           ; $40a7: $00
    nop                                           ; $40a8: $00
    nop                                           ; $40a9: $00
    nop                                           ; $40aa: $00
    nop                                           ; $40ab: $00
    nop                                           ; $40ac: $00
    nop                                           ; $40ad: $00
    nop                                           ; $40ae: $00
    nop                                           ; $40af: $00
    rst $38                                       ; $40b0: $ff
    ret nz                                        ; $40b1: $c0

    rst $38                                       ; $40b2: $ff
    ret nz                                        ; $40b3: $c0

    rst $38                                       ; $40b4: $ff
    ldh [rIE], a                                  ; $40b5: $e0 $ff
    ldh [$7f], a                                  ; $40b7: $e0 $7f
    ld h, b                                       ; $40b9: $60
    ld a, a                                       ; $40ba: $7f
    ld h, b                                       ; $40bb: $60
    ld a, a                                       ; $40bc: $7f
    ld h, b                                       ; $40bd: $60
    ld a, a                                       ; $40be: $7f
    ld h, b                                       ; $40bf: $60
    rst $38                                       ; $40c0: $ff
    inc bc                                        ; $40c1: $03
    rst $38                                       ; $40c2: $ff
    rlca                                          ; $40c3: $07
    cp $06                                        ; $40c4: $fe $06

Call_04c_40c6:
    cp $06                                        ; $40c6: $fe $06
    cp $06                                        ; $40c8: $fe $06
    cp $06                                        ; $40ca: $fe $06
    cp $06                                        ; $40cc: $fe $06
    rst $38                                       ; $40ce: $ff
    rlca                                          ; $40cf: $07
    rst $38                                       ; $40d0: $ff
    rst $38                                       ; $40d1: $ff
    ld bc, $0001                                  ; $40d2: $01 $01 $00
    nop                                           ; $40d5: $00
    nop                                           ; $40d6: $00
    nop                                           ; $40d7: $00
    nop                                           ; $40d8: $00
    nop                                           ; $40d9: $00
    nop                                           ; $40da: $00
    nop                                           ; $40db: $00
    nop                                           ; $40dc: $00
    nop                                           ; $40dd: $00
    ld bc, $ff01                                  ; $40de: $01 $01 $ff
    add b                                         ; $40e1: $80
    rst $38                                       ; $40e2: $ff
    ret nz                                        ; $40e3: $c0

    rst $38                                       ; $40e4: $ff
    ret nz                                        ; $40e5: $c0

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

    db $ff, $00, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $01
    db $ff, $fe, $83, $83, $01, $01, $01, $01, $01, $01, $01, $01, $83, $83, $ff, $fe
    db $f0, $70, $f0, $70, $f8, $78, $fe, $3e, $ff, $3f, $ff, $1f, $ff, $1f, $ff, $3f
    db $00, $00, $00, $00, $00, $00, $03, $03, $ff, $ff, $ff, $ff, $ff, $ff, $01, $01
    db $7f, $70, $7f, $70, $ff, $f0, $ff, $f0, $ff, $e0, $ff, $e0, $ff, $f0, $ff, $f0

    db $fc                                        ; $4140: $fc
    inc c                                         ; $4141: $0c
    cp $0e                                        ; $4142: $fe $0e
    rst $38                                       ; $4144: $ff
    rlca                                          ; $4145: $07
    rst $38                                       ; $4146: $ff
    rlca                                          ; $4147: $07
    rst $38                                       ; $4148: $ff
    inc bc                                        ; $4149: $03
    rst $38                                       ; $414a: $ff
    inc bc                                        ; $414b: $03
    rst $38                                       ; $414c: $ff
    rlca                                          ; $414d: $07
    rst $38                                       ; $414e: $ff
    rlca                                          ; $414f: $07
    nop                                           ; $4150: $00
    nop                                           ; $4151: $00
    nop                                           ; $4152: $00
    nop                                           ; $4153: $00
    ld bc, $ff01                                  ; $4154: $01 $01 $ff
    rst $38                                       ; $4157: $ff
    rst $38                                       ; $4158: $ff
    rst $38                                       ; $4159: $ff
    rst $38                                       ; $415a: $ff
    rst $38                                       ; $415b: $ff
    add b                                         ; $415c: $80
    add b                                         ; $415d: $80
    nop                                           ; $415e: $00
    nop                                           ; $415f: $00
    ld a, a                                       ; $4160: $7f
    ld h, b                                       ; $4161: $60
    rst $38                                       ; $4162: $ff
    ldh [rIE], a                                  ; $4163: $e0 $ff
    ldh [rIE], a                                  ; $4165: $e0 $ff
    ret nz                                        ; $4167: $c0

    rst $38                                       ; $4168: $ff
    ret nz                                        ; $4169: $c0

    rst $38                                       ; $416a: $ff
    ldh [rIE], a                                  ; $416b: $e0 $ff
    ldh [$7f], a                                  ; $416d: $e0 $7f
    ld [hl], b                                    ; $416f: $70
    rst $38                                       ; $4170: $ff
    inc bc                                        ; $4171: $03
    rst $38                                       ; $4172: $ff
    inc bc                                        ; $4173: $03
    rst $38                                       ; $4174: $ff
    rlca                                          ; $4175: $07
    cp $06                                        ; $4176: $fe $06
    db $fc                                        ; $4178: $fc
    inc c                                         ; $4179: $0c
    db $fc                                        ; $417a: $fc
    inc c                                         ; $417b: $0c
    db $fc                                        ; $417c: $fc
    inc c                                         ; $417d: $0c
    db $fc                                        ; $417e: $fc
    inc c                                         ; $417f: $0c
    rst $38                                       ; $4180: $ff
    rst $38                                       ; $4181: $ff
    rst $38                                       ; $4182: $ff
    rst $38                                       ; $4183: $ff
    rst $38                                       ; $4184: $ff
    rst $38                                       ; $4185: $ff
    inc bc                                        ; $4186: $03
    inc bc                                        ; $4187: $03
    ld bc, $0101                                  ; $4188: $01 $01 $01
    ld bc, $0101                                  ; $418b: $01 $01 $01
    ld bc, $ff01                                  ; $418e: $01 $01 $ff
    add b                                         ; $4191: $80
    rst $38                                       ; $4192: $ff
    add b                                         ; $4193: $80
    rst $38                                       ; $4194: $ff
    nop                                           ; $4195: $00
    rst $38                                       ; $4196: $ff
    add b                                         ; $4197: $80
    rst $38                                       ; $4198: $ff
    add b                                         ; $4199: $80
    rst $38                                       ; $419a: $ff
    add b                                         ; $419b: $80
    rst $38                                       ; $419c: $ff
    add b                                         ; $419d: $80
    rst $38                                       ; $419e: $ff
    add b                                         ; $419f: $80

    db $ff, $00, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $00
    db $fc, $3c, $f8, $38, $f8, $38, $f8, $38, $f8, $38, $f8, $38, $f8, $38, $f8, $38
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $7f, $78, $3f, $38, $3f, $38, $3f, $38, $3f, $38, $3f, $38, $3f, $38, $3f, $38

    cp $06                                        ; $41e0: $fe $06
    cp $06                                        ; $41e2: $fe $06
    cp $06                                        ; $41e4: $fe $06
    cp $06                                        ; $41e6: $fe $06
    cp $06                                        ; $41e8: $fe $06
    rst $38                                       ; $41ea: $ff
    rlca                                          ; $41eb: $07
    rst $38                                       ; $41ec: $ff
    inc bc                                        ; $41ed: $03
    rst $38                                       ; $41ee: $ff
    inc bc                                        ; $41ef: $03
    nop                                           ; $41f0: $00
    nop                                           ; $41f1: $00
    nop                                           ; $41f2: $00
    nop                                           ; $41f3: $00
    nop                                           ; $41f4: $00
    nop                                           ; $41f5: $00
    nop                                           ; $41f6: $00
    nop                                           ; $41f7: $00
    nop                                           ; $41f8: $00
    nop                                           ; $41f9: $00
    nop                                           ; $41fa: $00
    nop                                           ; $41fb: $00
    add b                                         ; $41fc: $80
    add b                                         ; $41fd: $80
    rst $38                                       ; $41fe: $ff
    rst $38                                       ; $41ff: $ff
    ccf                                           ; $4200: $3f
    jr nc, @+$41                                  ; $4201: $30 $3f

    jr nc, @+$41                                  ; $4203: $30 $3f

    jr nc, @+$41                                  ; $4205: $30 $3f

    jr nc, @+$41                                  ; $4207: $30 $3f

    jr nc, @+$81                                  ; $4209: $30 $7f

    ld [hl], b                                    ; $420b: $70
    rst $38                                       ; $420c: $ff
    ldh [rIE], a                                  ; $420d: $e0 $ff
    ldh [$fc], a                                  ; $420f: $e0 $fc
    inc c                                         ; $4211: $0c
    cp $0e                                        ; $4212: $fe $0e
    rst $38                                       ; $4214: $ff
    rlca                                          ; $4215: $07
    rst $38                                       ; $4216: $ff
    rlca                                          ; $4217: $07
    rst $38                                       ; $4218: $ff
    rlca                                          ; $4219: $07
    cp $0e                                        ; $421a: $fe $0e
    db $fc                                        ; $421c: $fc
    inc c                                         ; $421d: $0c
    db $fc                                        ; $421e: $fc
    inc c                                         ; $421f: $0c
    ld bc, $0301                                  ; $4220: $01 $01 $03
    inc bc                                        ; $4223: $03
    rst $38                                       ; $4224: $ff
    rst $38                                       ; $4225: $ff
    rst $38                                       ; $4226: $ff
    rst $38                                       ; $4227: $ff
    rst $38                                       ; $4228: $ff
    rst $38                                       ; $4229: $ff
    inc bc                                        ; $422a: $03
    inc bc                                        ; $422b: $03
    ld bc, $0101                                  ; $422c: $01 $01 $01
    ld bc, $80ff                                  ; $422f: $01 $ff $80
    rst $38                                       ; $4232: $ff
    add b                                         ; $4233: $80
    rst $38                                       ; $4234: $ff
    nop                                           ; $4235: $00
    rst $38                                       ; $4236: $ff
    nop                                           ; $4237: $00
    rst $38                                       ; $4238: $ff
    nop                                           ; $4239: $00
    rst $38                                       ; $423a: $ff
    add b                                         ; $423b: $80
    rst $38                                       ; $423c: $ff
    add b                                         ; $423d: $80
    rst $38                                       ; $423e: $ff
    add b                                         ; $423f: $80

    db $ff, $01, $ff, $03, $fe, $02, $fe, $02, $fe, $02, $fe, $02, $ff, $03, $ff, $03
    db $ff, $fc, $07, $06, $03, $02, $03, $02, $03, $02, $03, $02, $07, $06, $ff, $fc
    db $fc, $1c, $ff, $1f, $ff, $1f, $ff, $0f, $ff, $0f, $ff, $0f, $fe, $1e, $fc, $1c
    db $00, $00, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $80, $80, $00, $00, $00, $00
    db $7f, $78, $ff, $f0, $ff, $f0, $ff, $e0, $ff, $f0, $ff, $f8, $3f, $38, $1f, $1c
    db $fc, $3c, $ff, $1f, $ff, $1f, $ff, $0f, $ff, $0f, $ff, $1f, $fe, $1e, $fc, $1c
    db $7f, $70, $ff, $f0, $ff, $e0, $ff, $e0, $ff, $f0, $ff, $f8, $3f, $38, $1f, $1c

    rst $38                                       ; $42b0: $ff
    inc bc                                        ; $42b1: $03
    rst $38                                       ; $42b2: $ff
    inc bc                                        ; $42b3: $03
    rst $38                                       ; $42b4: $ff
    rlca                                          ; $42b5: $07
    rst $38                                       ; $42b6: $ff
    rlca                                          ; $42b7: $07
    cp $06                                        ; $42b8: $fe $06
    cp $06                                        ; $42ba: $fe $06
    cp $06                                        ; $42bc: $fe $06
    cp $06                                        ; $42be: $fe $06
    rst $38                                       ; $42c0: $ff
    rst $38                                       ; $42c1: $ff
    rst $38                                       ; $42c2: $ff

Jump_04c_42c3:
    rst $38                                       ; $42c3: $ff
    add b                                         ; $42c4: $80
    add b                                         ; $42c5: $80
    nop                                           ; $42c6: $00
    nop                                           ; $42c7: $00
    nop                                           ; $42c8: $00
    nop                                           ; $42c9: $00
    nop                                           ; $42ca: $00
    nop                                           ; $42cb: $00
    nop                                           ; $42cc: $00
    nop                                           ; $42cd: $00
    nop                                           ; $42ce: $00
    nop                                           ; $42cf: $00
    rst $38                                       ; $42d0: $ff
    ret nz                                        ; $42d1: $c0

    rst $38                                       ; $42d2: $ff
    ret nz                                        ; $42d3: $c0

    rst $38                                       ; $42d4: $ff
    ldh [$7f], a                                  ; $42d5: $e0 $7f
    ld h, b                                       ; $42d7: $60
    ccf                                           ; $42d8: $3f
    jr nc, jr_04c_431a                            ; $42d9: $30 $3f

    jr nc, jr_04c_431c                            ; $42db: $30 $3f

jr_04c_42dd:
    jr nc, jr_04c_431e                            ; $42dd: $30 $3f

Jump_04c_42df:
    jr nc, jr_04c_42dd                            ; $42df: $30 $fc

    inc c                                         ; $42e1: $0c
    db $fc                                        ; $42e2: $fc
    inc c                                         ; $42e3: $0c
    db $fc                                        ; $42e4: $fc
    inc c                                         ; $42e5: $0c
    cp $0e                                        ; $42e6: $fe $0e
    rst $38                                       ; $42e8: $ff
    rlca                                          ; $42e9: $07
    rst $38                                       ; $42ea: $ff
    rlca                                          ; $42eb: $07
    rst $38                                       ; $42ec: $ff
    rlca                                          ; $42ed: $07
    cp $0e                                        ; $42ee: $fe $0e
    ld bc, $0101                                  ; $42f0: $01 $01 $01
    ld bc, $0101                                  ; $42f3: $01 $01 $01
    inc bc                                        ; $42f6: $03
    inc bc                                        ; $42f7: $03
    rst $38                                       ; $42f8: $ff
    rst $38                                       ; $42f9: $ff
    rst $38                                       ; $42fa: $ff
    rst $38                                       ; $42fb: $ff
    rst $38                                       ; $42fc: $ff
    rst $38                                       ; $42fd: $ff
    inc bc                                        ; $42fe: $03
    inc bc                                        ; $42ff: $03
    rst $38                                       ; $4300: $ff
    add b                                         ; $4301: $80
    rst $38                                       ; $4302: $ff
    add b                                         ; $4303: $80
    rst $38                                       ; $4304: $ff
    add b                                         ; $4305: $80
    rst $38                                       ; $4306: $ff
    add b                                         ; $4307: $80
    rst $38                                       ; $4308: $ff
    nop                                           ; $4309: $00
    rst $38                                       ; $430a: $ff
    nop                                           ; $430b: $00
    rst $38                                       ; $430c: $ff
    nop                                           ; $430d: $00
    rst $38                                       ; $430e: $ff
    add b                                         ; $430f: $80
    rst $38                                       ; $4310: $ff
    ld bc, $03ff                                  ; $4311: $01 $ff $03
    cp $02                                        ; $4314: $fe $02
    cp $02                                        ; $4316: $fe $02
    cp $02                                        ; $4318: $fe $02

jr_04c_431a:
    cp $02                                        ; $431a: $fe $02

jr_04c_431c:
    rst $38                                       ; $431c: $ff
    inc bc                                        ; $431d: $03

jr_04c_431e:
    rst $38                                       ; $431e: $ff
    db $01                                        ; $431f: $01

    db $fc, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fe, $0e, $ff, $0f
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
    db $1f, $1c, $1f, $1c, $1f, $1c, $1f, $1c, $1f, $1c, $1f, $1c, $3f, $3c, $ff, $f8
    db $fc, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fe, $1e, $ff, $1f
    db $1f, $1c, $1f, $1c, $1f, $1c, $1f, $1c, $1f, $1c, $1f, $1c, $3f, $3c, $ff, $fc

    cp $06                                        ; $4370: $fe $06
    rst $38                                       ; $4372: $ff
    rlca                                          ; $4373: $07
    rst $38                                       ; $4374: $ff
    rlca                                          ; $4375: $07
    rst $38                                       ; $4376: $ff
    inc bc                                        ; $4377: $03
    rst $38                                       ; $4378: $ff
    inc bc                                        ; $4379: $03
    rst $38                                       ; $437a: $ff
    inc bc                                        ; $437b: $03
    rst $38                                       ; $437c: $ff
    rlca                                          ; $437d: $07
    rst $38                                       ; $437e: $ff
    rlca                                          ; $437f: $07
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    nop                                           ; $4383: $00
    add b                                         ; $4384: $80
    add b                                         ; $4385: $80
    rst $38                                       ; $4386: $ff
    rst $38                                       ; $4387: $ff
    rst $38                                       ; $4388: $ff
    rst $38                                       ; $4389: $ff
    rst $38                                       ; $438a: $ff
    rst $38                                       ; $438b: $ff
    add b                                         ; $438c: $80
    add b                                         ; $438d: $80
    nop                                           ; $438e: $00
    nop                                           ; $438f: $00
    ccf                                           ; $4390: $3f
    jr nc, jr_04c_4412                            ; $4391: $30 $7f

    ld [hl], b                                    ; $4393: $70
    rst $38                                       ; $4394: $ff
    ldh a, [rIE]                                  ; $4395: $f0 $ff
    ldh [rIE], a                                  ; $4397: $e0 $ff
    ldh [rIE], a                                  ; $4399: $e0 $ff
    ldh [rIE], a                                  ; $439b: $e0 $ff
    ldh a, [$7f]                                  ; $439d: $f0 $7f
    ld [hl], b                                    ; $439f: $70
    db $fc                                        ; $43a0: $fc
    inc c                                         ; $43a1: $0c
    db $fc                                        ; $43a2: $fc
    inc c                                         ; $43a3: $0c
    db $fc                                        ; $43a4: $fc
    inc c                                         ; $43a5: $0c
    db $fc                                        ; $43a6: $fc
    inc c                                         ; $43a7: $0c
    db $fc                                        ; $43a8: $fc
    inc c                                         ; $43a9: $0c
    cp $0e                                        ; $43aa: $fe $0e
    rst $38                                       ; $43ac: $ff
    rlca                                          ; $43ad: $07
    rst $38                                       ; $43ae: $ff
    inc bc                                        ; $43af: $03
    ld bc, $0101                                  ; $43b0: $01 $01 $01
    ld bc, $0101                                  ; $43b3: $01 $01 $01
    ld bc, $0101                                  ; $43b6: $01 $01 $01
    ld bc, $0303                                  ; $43b9: $01 $03 $03
    rst $38                                       ; $43bc: $ff
    rst $38                                       ; $43bd: $ff
    rst $38                                       ; $43be: $ff
    cp $ff                                        ; $43bf: $fe $ff
    add b                                         ; $43c1: $80

Jump_04c_43c2:
    rst $38                                       ; $43c2: $ff
    add b                                         ; $43c3: $80
    rst $38                                       ; $43c4: $ff
    add b                                         ; $43c5: $80
    rst $38                                       ; $43c6: $ff
    add b                                         ; $43c7: $80
    rst $38                                       ; $43c8: $ff
    add b                                         ; $43c9: $80
    rst $38                                       ; $43ca: $ff
    add b                                         ; $43cb: $80
    rst $38                                       ; $43cc: $ff
    nop                                           ; $43cd: $00
    rst $38                                       ; $43ce: $ff
    nop                                           ; $43cf: $00

    db $ff, $07, $ff, $07, $ff, $07, $ff, $0f, $fe, $0e, $fc, $1c, $fc, $1c, $fc, $1c
    db $ff, $ff, $ff, $ff, $ff, $ff, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00
    db $ff, $f8, $ff, $f8, $ff, $f8, $ff, $f8, $3f, $3c, $1f, $1c, $1f, $1c, $1f, $1c
    db $ff, $0f, $ff, $0f, $ff, $0f, $ff, $1f, $fe, $1e, $fc, $1c, $fc, $1c, $fc, $1c

    cp $06                                        ; $4410: $fe $06

jr_04c_4412:
    cp $06                                        ; $4412: $fe $06
    cp $06                                        ; $4414: $fe $06
    cp $06                                        ; $4416: $fe $06
    cp $06                                        ; $4418: $fe $06
    rst $38                                       ; $441a: $ff
    rlca                                          ; $441b: $07
    rst $38                                       ; $441c: $ff
    inc bc                                        ; $441d: $03
    rst $38                                       ; $441e: $ff
    ld bc, $0000                                  ; $441f: $01 $00 $00
    nop                                           ; $4422: $00
    nop                                           ; $4423: $00
    nop                                           ; $4424: $00
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    nop                                           ; $4427: $00
    nop                                           ; $4428: $00
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    nop                                           ; $442b: $00
    rst $38                                       ; $442c: $ff
    rst $38                                       ; $442d: $ff
    rst $38                                       ; $442e: $ff
    rst $38                                       ; $442f: $ff
    ccf                                           ; $4430: $3f
    jr nc, @+$41                                  ; $4431: $30 $3f

    jr nc, @+$41                                  ; $4433: $30 $3f

    jr nc, @+$41                                  ; $4435: $30 $3f

    jr nc, @+$41                                  ; $4437: $30 $3f

    jr nc, @+$81                                  ; $4439: $30 $7f

    ld [hl], b                                    ; $443b: $70
    rst $38                                       ; $443c: $ff
    ldh [rIE], a                                  ; $443d: $e0 $ff
    ret nz                                        ; $443f: $c0

    db $ff, $7c, $c7, $c6, $83, $82, $83, $82, $83, $82, $cf, $ce, $ff, $7c, $c7, $c6
    db $fc, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fe, $1e, $ff, $0f, $ff, $0f, $ff, $1f
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $ff, $ff, $ff, $ff
    db $1f, $1c, $1f, $1c, $1f, $1c, $1f, $1c, $3f, $3c, $ff, $f8, $ff, $f8, $ff, $fc
    db $fc, $1c

    db $fc                                        ; $4482: $fc
    inc e                                         ; $4483: $1c
    db $fc                                        ; $4484: $fc
    inc e                                         ; $4485: $1c
    db $fc                                        ; $4486: $fc
    inc e                                         ; $4487: $1c
    cp $1e                                        ; $4488: $fe $1e
    rst $38                                       ; $448a: $ff
    rra                                           ; $448b: $1f
    rst $38                                       ; $448c: $ff
    rrca                                          ; $448d: $0f
    rst $38                                       ; $448e: $ff
    inc bc                                        ; $448f: $03

    db $00, $00

    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    nop                                           ; $4494: $00
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    nop                                           ; $4497: $00
    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    rst $38                                       ; $449a: $ff
    rst $38                                       ; $449b: $ff
    rst $38                                       ; $449c: $ff
    rst $38                                       ; $449d: $ff
    rst $38                                       ; $449e: $ff
    rst $38                                       ; $449f: $ff

    db $1f, $1c

    rra                                           ; $44a2: $1f
    inc e                                         ; $44a3: $1c
    rra                                           ; $44a4: $1f
    inc e                                         ; $44a5: $1c
    rra                                           ; $44a6: $1f
    inc e                                         ; $44a7: $1c
    ccf                                           ; $44a8: $3f
    inc a                                         ; $44a9: $3c
    rst $38                                       ; $44aa: $ff
    db $fc                                        ; $44ab: $fc
    rst $38                                       ; $44ac: $ff
    ld hl, sp-$01                                 ; $44ad: $f8 $ff
    db $e0                                        ; $44af: $e0

    db $ff, $3c, $e7, $66, $c3, $42, $c7, $46, $ff, $3c, $e7, $66, $c3, $42, $c7, $46
    db $83, $82, $83, $82, $83, $82, $cf, $ce, $ff, $7c, $c7, $c6, $83, $82, $83, $82

    rst $38                                       ; $44d0: $ff
    rra                                           ; $44d1: $1f
    cp $1e                                        ; $44d2: $fe $1e
    db $fc                                        ; $44d4: $fc
    inc e                                         ; $44d5: $1c
    db $fc                                        ; $44d6: $fc
    inc e                                         ; $44d7: $1c
    cp $1e                                        ; $44d8: $fe $1e
    rst $38                                       ; $44da: $ff
    rra                                           ; $44db: $1f
    rst $38                                       ; $44dc: $ff
    rrca                                          ; $44dd: $0f
    rst $38                                       ; $44de: $ff
    inc bc                                        ; $44df: $03
    rst $38                                       ; $44e0: $ff
    rst $38                                       ; $44e1: $ff
    nop                                           ; $44e2: $00
    nop                                           ; $44e3: $00
    nop                                           ; $44e4: $00
    nop                                           ; $44e5: $00
    nop                                           ; $44e6: $00
    nop                                           ; $44e7: $00
    nop                                           ; $44e8: $00
    nop                                           ; $44e9: $00
    rst $38                                       ; $44ea: $ff
    rst $38                                       ; $44eb: $ff
    rst $38                                       ; $44ec: $ff
    rst $38                                       ; $44ed: $ff
    rst $38                                       ; $44ee: $ff
    rst $38                                       ; $44ef: $ff
    rst $38                                       ; $44f0: $ff
    db $fc                                        ; $44f1: $fc
    ccf                                           ; $44f2: $3f
    inc a                                         ; $44f3: $3c
    rra                                           ; $44f4: $1f
    inc e                                         ; $44f5: $1c
    rra                                           ; $44f6: $1f
    inc e                                         ; $44f7: $1c
    ccf                                           ; $44f8: $3f
    inc a                                         ; $44f9: $3c
    rst $38                                       ; $44fa: $ff
    db $fc                                        ; $44fb: $fc
    rst $38                                       ; $44fc: $ff
    ld hl, sp-$01                                 ; $44fd: $f8 $ff
    db $e0                                        ; $44ff: $e0

    db $ff, $3c, $e7, $24, $ff, $3c, $e7, $24, $ff, $3c, $e7, $24, $ff, $3c

    rst $38                                       ; $450e: $ff
    db $18                                        ; $450f: $18

    db $ff, $3c, $e7, $66, $c3, $42, $c7, $46, $ff, $3c, $e7, $66, $ff, $7e

    rst $38                                       ; $451e: $ff
    inc a                                         ; $451f: $3c

    db $83, $82, $cf, $ce, $ff, $7c, $c7, $c6

    add e                                         ; $4528: $83
    add d                                         ; $4529: $82
    add e                                         ; $452a: $83
    add d                                         ; $452b: $82
    rst $00                                       ; $452c: $c7
    add $ff                                       ; $452d: $c6 $ff
    ld a, h                                       ; $452f: $7c

    db $4b, $46, $4c, $00, $3f, $00, $00, $47, $00, $00, $4d, $00, $0a, $0b, $00, $15
    db $0b, $00, $1f, $20, $00

    inc l                                         ; $4545: $2c
    jr nz, jr_04c_4548                            ; $4546: $20 $00

jr_04c_4548:
    rlca                                          ; $4548: $07
    ld [$1209], sp                                ; $4549: $08 $09 $12
    inc de                                        ; $454c: $13
    inc d                                         ; $454d: $14
    inc e                                         ; $454e: $1c
    dec e                                         ; $454f: $1d
    ld e, $29                                     ; $4550: $1e $29
    ld a, [hl+]                                   ; $4552: $2a
    dec hl                                        ; $4553: $2b
    dec [hl]                                      ; $4554: $35
    ld [hl], $37                                  ; $4555: $36 $37
    inc b                                         ; $4557: $04
    dec b                                         ; $4558: $05
    ld b, $0f                                     ; $4559: $06 $0f
    db $10                                        ; $455b: $10
    ld de, $1a19                                  ; $455c: $11 $19 $1a
    dec de                                        ; $455f: $1b
    ld h, $27                                     ; $4560: $26 $27
    jr z, jr_04c_4596                             ; $4562: $28 $32

    inc sp                                        ; $4564: $33
    inc [hl]                                      ; $4565: $34
    inc a                                         ; $4566: $3c
    dec a                                         ; $4567: $3d
    db $3e                                        ; $4568: $3e

    db $01, $02, $03, $0c, $0d, $0e, $16, $17, $18, $24, $22, $25, $30, $2e, $31, $3b
    db $39, $3a, $43, $44, $45, $01, $02, $03, $0c, $0d, $0e, $16, $17, $18, $21, $22
    db $23, $2d, $2e, $2f, $38, $39, $3a, $40, $41, $42

    ld c, b                                       ; $4593: $48
    ld c, c                                       ; $4594: $49
    ld c, d                                       ; $4595: $4a

jr_04c_4596:
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459a: $00
    nop                                           ; $459b: $00
    nop                                           ; $459c: $00
    nop                                           ; $459d: $00
    nop                                           ; $459e: $00
    nop                                           ; $459f: $00
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    nop                                           ; $45a2: $00
    nop                                           ; $45a3: $00
    nop                                           ; $45a4: $00
    nop                                           ; $45a5: $00

    db $63, $7c, $31, $3e, $f8, $ff, $dc, $3f, $f4, $0f, $36, $cf, $02, $ff, $8f, $ff
    db $63, $ff, $b7, $7e, $1d, $fe, $09, $fe, $08, $ff, $7c, $ff, $c6, $ff, $b3, $cf
    db $f1, $0f, $c3, $3f, $87, $7f, $0c, $ff, $18, $ff, $70, $ff, $c0, $ff, $80, $ff
    db $80, $80, $00, $00, $c0, $c0, $30, $f0, $0c, $fc, $04, $fc, $18, $f8, $e0, $e0
    db $78, $7f, $70, $7f, $70, $7f, $70, $7f, $38, $3f, $3f, $3f, $1f, $1f, $0f, $0f
    db $07, $ff, $0f, $ff, $1e, $fe, $3c, $fc, $78, $f8, $f0, $f0, $e0, $e0, $80, $80
    db $cf, $cf, $07, $07, $07, $07, $07, $07, $0f, $0f, $0f, $0f, $0f, $0f, $0e, $0f
    db $87, $ff, $cf, $ff, $fe, $ff, $fc, $ff, $78, $ff, $00, $ff, $40, $bf, $c0, $3f
    db $f0, $ff, $70, $ff, $70, $ff, $70, $ff, $70, $ff, $78, $ff, $3e, $ff, $3f, $ff
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $03, $ff, $ff, $ff
    db $fe, $ff, $70, $ff, $70, $ff, $70, $ff, $70, $ff, $f0, $ff, $f0, $ff, $f8, $ff
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $f8, $ff, $ff, $ff, $7f, $ff, $7f, $ff, $73, $f3, $70, $f0, $30, $f0, $38, $f8
    db $78, $f8, $f8, $f8, $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $02, $03, $05, $06, $06, $05
    db $79, $7f, $61, $7f, $81, $ff, $63, $9f, $c2, $3f, $86, $7f, $1e, $ff, $3a, $ff
    db $72, $8f, $62, $9f, $e3, $1f, $c3, $3f, $c6, $3f, $c6, $3f, $8c, $7f, $8f, $7f
    db $1f, $ff, $7e, $fe, $c3, $ff, $00, $ff, $00, $ff, $00, $ff, $f8, $ff, $8e, $ff
    db $80, $80, $00, $00, $80, $80, $c0, $c0, $60, $e0, $30, $f0, $18, $f8, $08, $f8
    db $0e, $0f, $0f, $0e, $0f, $0e, $1f, $1e, $1d, $1e, $1d, $1e, $1f, $1c, $1f, $1c
    db $c0, $3f, $c0, $3f, $c0, $3f, $c0, $3f, $c0, $3f, $80, $7f, $80, $7f, $80, $7f
    db $1f, $ff, $1f, $ff, $3e, $ff, $38, $ff, $70, $ff, $70, $ff, $70, $ff, $f0, $ff
    db $ff, $ff, $ff, $ff, $03, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $fc, $ff, $fc, $ff, $fe, $ff, $fe, $ff, $7e, $ff, $7f, $ff, $77, $f7, $73, $f3
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $80, $ff, $c0, $ff
    db $38, $f8, $38, $f8, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fc
    db $08, $0f, $09, $0f, $0b, $0f, $07, $07, $02, $03, $05, $06, $05, $06, $0b, $0c
    db $e2, $ff, $c2, $ff, $82, $ff, $02, $ff, $87, $7f, $8d, $7f, $19, $ff, $18, $ff
    db $0f, $ff, $1c, $ff, $18, $ff, $39, $fe, $38, $ff, $28, $ff, $6c, $ff, $dc, $ff
    db $83, $ff, $c1, $ff, $40, $ff, $a0, $7f, $d0, $3f, $70, $9f, $68, $9f, $2c, $df
    db $0c, $fc, $c4, $fc, $e4, $fc, $7c, $fc, $20, $e0, $30, $f0, $10, $f0, $10, $f0
    db $1f, $1c, $1f, $1c, $1e, $1d, $1e, $1d, $1c, $1f, $1c, $1f, $1c, $1f, $1c, $1f
    db $01, $ff, $03, $ff, $03, $ff, $07, $ff, $07, $ff, $0f, $ff, $1e, $fe, $1c, $fc
    db $f0, $ff, $f0, $ff, $f0, $ff, $f8, $ff, $be, $bf, $3f, $3f, $1f, $1f, $3f, $3f
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $03, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $73, $f3, $71, $f1, $71, $f1, $f0, $f0, $e0, $e0, $e0, $e0, $c0, $c0, $e0, $e0
    db $c0, $ff, $e0, $ff, $e0, $ff, $f0, $ff, $f0, $ff, $78, $7f, $3c, $3f, $1c, $1f
    db $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fc, $1c, $fc, $3c, $fc, $38, $f8
    db $0e, $09, $0e, $09, $14, $1b, $11, $1f, $13, $1f, $0e, $0f, $03, $02, $05, $06
    db $36, $f9, $76, $f9, $d6, $f9, $9e, $f1, $1c, $f3, $9c, $73, $9c, $73, $94, $7b
    db $1e, $ff, $17, $ff, $33, $ff, $3b, $ff, $73, $ff, $46, $ff, $cc, $ff, $f9, $ff
    db $06, $ff, $07, $ff, $07, $ff, $82, $fe, $c2, $fe, $c2, $fe, $61, $ff, $f1, $ff
    db $08, $f8, $08, $f8, $84, $fc, $c4, $fc, $64, $7c, $34, $3c, $18, $18, $00, $00
    db $0e, $0f, $0e, $0f, $0f, $0f, $07, $07, $03, $03, $00, $00, $00, $00, $00, $00
    db $3c, $fc, $78, $f8, $f8, $f8, $f0, $f0, $c0, $c0, $00, $00, $00, $00, $00, $00
    db $3e, $3f, $78, $7f, $70, $7f, $70, $7f, $70, $7f, $70, $7f, $70, $7f, $70, $7f
    db $03, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $e0, $e0, $f0, $f0, $70, $f0, $70, $f0, $70, $f0, $70, $f0, $70, $f0, $70, $f0
    db $1e, $1f, $0f, $0f, $07, $07, $03, $03, $01, $01, $00, $00, $00, $00, $00, $00
    db $78, $f8, $f8, $f8, $f0, $f0, $f0, $f0, $c0, $c0, $00, $00, $00, $00, $00, $00
    db $07, $04, $0a, $0d, $0e, $09, $14, $1b, $10, $1f, $11, $1f, $13, $1f, $0c, $0c
    db $14, $fb, $11, $ff, $19, $ff, $3b, $ff, $7e, $ff, $d8, $df, $14, $1b, $3c, $33
    db $cb, $ff, $89, $ff, $fc, $ff, $66, $ff, $43, $ff, $41, $ff, $41, $ff, $63, $ff
    db $b9, $ff, $19, $ff, $3d, $ff, $6f, $ff, $ce, $fe, $04, $fc, $04, $fc, $04, $fc
    db $70, $7f, $78, $7f, $3e, $3f, $3f, $3f, $1f, $1f, $3f, $3f, $3e, $3f, $78, $7f
    db $00, $ff, $00, $ff, $03, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $03, $ff, $00, $ff
    db $70, $f0, $f0, $f0, $e0, $e0, $e0, $e0, $c0, $c0, $e0, $e0, $e0, $e0, $f0, $f0
    db $2c, $33, $38, $27, $39, $27, $31, $2f, $33, $2f, $22, $3e, $36, $3e, $1c, $1c
    db $ff, $ff, $e3, $ff, $c1, $ff, $c1, $ff, $41, $7f, $63, $7f, $3e, $3e, $63, $7f
    db $82, $fe, $82, $fe, $c2, $fe, $62, $7e, $22, $3e, $32, $3e, $12, $1e, $1c, $1c
    db $70, $7f, $70, $7f, $70, $7f, $70, $7f, $70, $7f, $70, $7f, $70, $7f, $78, $7f
    db $70, $f0, $70, $f0, $70, $f0, $70, $f0, $70, $f0, $70, $f0, $70, $f0, $f0, $f0
    db $41, $7f, $41, $7f, $41, $7f, $63, $7f, $3e, $3e, $63, $7f, $41, $7f, $41, $7f
    db $3e, $3f, $3f, $3f, $1f, $1f, $3f, $3f, $3e, $3f, $78, $7f, $70, $7f, $70, $7f
    db $03, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $03, $ff, $00, $ff, $00, $ff, $00, $ff
    db $e0, $e0, $e0, $e0, $c0, $c0, $e0, $e0, $e0, $e0, $f0, $f0, $70, $f0, $70, $f0
    db $00, $00, $00, $00, $03, $03, $0c, $0f, $11, $1e, $18, $1f, $06, $07, $01, $01
    db $41, $7f, $63, $7f, $3e, $3e, $63, $7f, $41, $7f, $41, $7f, $41, $7f, $67, $7f
    db $70, $7f, $70, $7f, $70, $7f, $70, $7f, $70, $7f, $78, $7f, $3e, $3f, $3f, $3f
    db $70, $f0, $70, $f0, $70, $f0, $70, $f0, $70, $f0, $f0, $f0, $e0, $e0, $e0, $e0

    inc b                                         ; $4a06: $04
    rlca                                          ; $4a07: $07
    inc b                                         ; $4a08: $04
    rlca                                          ; $4a09: $07
    ld b, $07                                     ; $4a0a: $06 $07
    ld [bc], a                                    ; $4a0c: $02
    inc bc                                        ; $4a0d: $03
    inc bc                                        ; $4a0e: $03
    inc bc                                        ; $4a0f: $03
    ld bc, $0001                                  ; $4a10: $01 $01 $00
    nop                                           ; $4a13: $00
    nop                                           ; $4a14: $00
    nop                                           ; $4a15: $00

    db $06, $ff, $0c, $ff, $18, $ff, $30, $ff, $60, $ff, $ec, $f3, $dc, $e3, $b8, $c7
    db $18, $ff, $18, $ff, $10, $ff, $10, $ff, $30, $ff, $38, $ff, $6c, $ff, $67, $ff
    db $07, $ff, $0f, $ff, $0c, $ff, $18, $ff, $38, $ff, $78, $ff, $f8, $ff, $d8, $ff
    db $80, $ff, $e0, $ff, $70, $ff, $38, $ff, $dc, $3f, $ee, $1f, $76, $8f, $3b, $c7
    db $e0, $ff, $70, $ff, $38, $ff, $1c, $ff, $0f, $ff, $07, $ff, $06, $fe, $03, $ff
    db $60, $e0, $30, $f0, $10, $f0, $30, $f0, $60, $e0, $c0, $c0, $00, $00, $00, $00

    rlca                                          ; $4a76: $07
    rlca                                          ; $4a77: $07
    ld b, $07                                     ; $4a78: $06 $07
    dec c                                         ; $4a7a: $0d
    ld c, $0d                                     ; $4a7b: $0e $0d
    ld c, $1f                                     ; $4a7d: $0e $1f
    inc e                                         ; $4a7f: $1c
    dec de                                        ; $4a80: $1b
    inc e                                         ; $4a81: $1c
    dec sp                                        ; $4a82: $3b
    inc a                                         ; $4a83: $3c
    ld [hl-], a                                   ; $4a84: $32
    dec a                                         ; $4a85: $3d
    ld [hl], b                                    ; $4a86: $70
    adc a                                         ; $4a87: $8f
    ldh [$1f], a                                  ; $4a88: $e0 $1f
    ret nz                                        ; $4a8a: $c0

    ccf                                           ; $4a8b: $3f
    ret nz                                        ; $4a8c: $c0

    ccf                                           ; $4a8d: $3f
    add b                                         ; $4a8e: $80
    ld a, a                                       ; $4a8f: $7f
    add c                                         ; $4a90: $81
    ld a, a                                       ; $4a91: $7f
    inc bc                                        ; $4a92: $03
    rst $38                                       ; $4a93: $ff
    rlca                                          ; $4a94: $07
    rst $38                                       ; $4a95: $ff
    ld l, h                                       ; $4a96: $6c
    di                                            ; $4a97: $f3
    ld l, h                                       ; $4a98: $6c
    di                                            ; $4a99: $f3
    ld l, h                                       ; $4a9a: $6c
    di                                            ; $4a9b: $f3
    db $ec                                        ; $4a9c: $ec
    di                                            ; $4a9d: $f3
    db $e4                                        ; $4a9e: $e4
    ei                                            ; $4a9f: $fb
    db $e4                                        ; $4aa0: $e4
    ei                                            ; $4aa1: $fb
    ldh a, [rIE]                                  ; $4aa2: $f0 $ff
    ldh a, [rIE]                                  ; $4aa4: $f0 $ff
    rra                                           ; $4aa6: $1f
    rst $38                                       ; $4aa7: $ff
    ld a, $ff                                     ; $4aa8: $3e $ff
    ccf                                           ; $4aaa: $3f
    rst $38                                       ; $4aab: $ff
    ccf                                           ; $4aac: $3f
    rst $38                                       ; $4aad: $ff
    ld a, a                                       ; $4aae: $7f
    rst $38                                       ; $4aaf: $ff
    ld a, a                                       ; $4ab0: $7f
    rst $38                                       ; $4ab1: $ff
    cp $ff                                        ; $4ab2: $fe $ff
    db $fc                                        ; $4ab4: $fc
    rst $38                                       ; $4ab5: $ff
    db $fc                                        ; $4ab6: $fc
    rst $38                                       ; $4ab7: $ff
    inc e                                         ; $4ab8: $1c
    rst $38                                       ; $4ab9: $ff
    inc e                                         ; $4aba: $1c
    rst $38                                       ; $4abb: $ff
    db $fc                                        ; $4abc: $fc
    rst $38                                       ; $4abd: $ff
    cp $ff                                        ; $4abe: $fe $ff
    cp $ff                                        ; $4ac0: $fe $ff
    rrca                                          ; $4ac2: $0f
    rst $38                                       ; $4ac3: $ff
    rlca                                          ; $4ac4: $07
    rst $38                                       ; $4ac5: $ff
    ld hl, sp-$01                                 ; $4ac6: $f8 $ff
    ld hl, sp-$01                                 ; $4ac8: $f8 $ff
    ld [hl], b                                    ; $4aca: $70
    rst $38                                       ; $4acb: $ff
    nop                                           ; $4acc: $00
    rst $38                                       ; $4acd: $ff
    ld bc, $03ff                                  ; $4ace: $01 $ff $03
    rst $38                                       ; $4ad1: $ff
    rlca                                          ; $4ad2: $07
    rst $38                                       ; $4ad3: $ff
    rst $38                                       ; $4ad4: $ff
    rst $38                                       ; $4ad5: $ff
    ldh [rIE], a                                  ; $4ad6: $e0 $ff
    ldh [rIE], a                                  ; $4ad8: $e0 $ff
    ldh a, [rIE]                                  ; $4ada: $f0 $ff
    ld hl, sp-$01                                 ; $4adc: $f8 $ff
    ld hl, sp-$01                                 ; $4ade: $f8 $ff
    cp h                                          ; $4ae0: $bc
    rst $38                                       ; $4ae1: $ff
    sbc [hl]                                      ; $4ae2: $9e
    rst $38                                       ; $4ae3: $ff
    rra                                           ; $4ae4: $1f
    rst $38                                       ; $4ae5: $ff
    inc e                                         ; $4ae6: $1c
    db $fc                                        ; $4ae7: $fc
    inc c                                         ; $4ae8: $0c
    db $fc                                        ; $4ae9: $fc
    ld c, $fe                                     ; $4aea: $0e $fe
    ld b, $fe                                     ; $4aec: $06 $fe
    ld b, $fe                                     ; $4aee: $06 $fe
    ld b, $fe                                     ; $4af0: $06 $fe
    ld b, $fe                                     ; $4af2: $06 $fe
    ld b, $fe                                     ; $4af4: $06 $fe
    ld bc, $0101                                  ; $4af6: $01 $01 $01
    ld bc, $0303                                  ; $4af9: $01 $03 $03
    ld [bc], a                                    ; $4afc: $02
    inc bc                                        ; $4afd: $03
    inc bc                                        ; $4afe: $03
    ld [bc], a                                    ; $4aff: $02
    rlca                                          ; $4b00: $07
    ld b, $04                                     ; $4b01: $06 $04
    rlca                                          ; $4b03: $07
    inc b                                         ; $4b04: $04
    rlca                                          ; $4b05: $07

    db $b0, $cf, $60, $9f, $c0, $3f, $c1, $3f, $83, $7f, $07, $ff, $0f, $ff, $19, $ff
    db $c3, $ff, $e0, $df, $b0, $cf, $b0, $cf, $b0, $cf, $70, $8f, $70, $8f, $70, $8f
    db $1c, $ff, $1c, $ff, $3e, $ff, $37, $ff, $73, $ff, $63, $ff, $e3, $ff, $f3, $ff
    db $19, $e7, $0d, $f3, $00, $ff, $00, $ff, $00, $ff, $80, $ff, $c0, $ff, $c0, $ff
    db $83, $ff, $81, $ff, $c1, $ff, $e1, $ff, $73, $ff, $7e, $fe, $30, $f0, $30, $f0

    ld [hl], b                                    ; $4b56: $70
    ld a, a                                       ; $4b57: $7f
    ld h, b                                       ; $4b58: $60
    ld a, a                                       ; $4b59: $7f
    ld h, b                                       ; $4b5a: $60
    ld a, a                                       ; $4b5b: $7f
    ld h, b                                       ; $4b5c: $60
    ld a, a                                       ; $4b5d: $7f
    ld h, b                                       ; $4b5e: $60
    ld a, a                                       ; $4b5f: $7f
    ld [hl], e                                    ; $4b60: $73
    ld a, a                                       ; $4b61: $7f
    ccf                                           ; $4b62: $3f
    ccf                                           ; $4b63: $3f
    ld e, $1e                                     ; $4b64: $1e $1e
    rrca                                          ; $4b66: $0f
    rst $38                                       ; $4b67: $ff
    ld e, $fe                                     ; $4b68: $1e $fe
    inc a                                         ; $4b6a: $3c
    db $fc                                        ; $4b6b: $fc
    ld a, b                                       ; $4b6c: $78
    ld hl, sp-$20                                 ; $4b6d: $f8 $e0
    ldh [$c0], a                                  ; $4b6f: $e0 $c0
    ret nz                                        ; $4b71: $c0

    add b                                         ; $4b72: $80
    add b                                         ; $4b73: $80
    nop                                           ; $4b74: $00
    nop                                           ; $4b75: $00
    ld [hl], b                                    ; $4b76: $70
    ld a, a                                       ; $4b77: $7f
    ld a, c                                       ; $4b78: $79
    ld a, a                                       ; $4b79: $7f
    ld a, a                                       ; $4b7a: $7f
    ld a, a                                       ; $4b7b: $7f
    ld l, a                                       ; $4b7c: $6f
    ld a, a                                       ; $4b7d: $7f
    ld h, b                                       ; $4b7e: $60
    ld a, a                                       ; $4b7f: $7f
    ld h, b                                       ; $4b80: $60
    ld a, a                                       ; $4b81: $7f
    ldh [rIE], a                                  ; $4b82: $e0 $ff
    ret nz                                        ; $4b84: $c0

    rst $38                                       ; $4b85: $ff
    ld hl, sp-$01                                 ; $4b86: $f8 $ff
    ld hl, sp-$01                                 ; $4b88: $f8 $ff
    ret c                                         ; $4b8a: $d8

    rst $38                                       ; $4b8b: $ff
    sbc b                                         ; $4b8c: $98
    rst $38                                       ; $4b8d: $ff
    inc e                                         ; $4b8e: $1c
    rst $38                                       ; $4b8f: $ff
    inc c                                         ; $4b90: $0c
    rst $38                                       ; $4b91: $ff
    ld c, $ff                                     ; $4b92: $0e $ff
    rlca                                          ; $4b94: $07
    rst $38                                       ; $4b95: $ff
    inc bc                                        ; $4b96: $03
    rst $38                                       ; $4b97: $ff
    ld bc, $00ff                                  ; $4b98: $01 $ff $00
    rst $38                                       ; $4b9b: $ff
    nop                                           ; $4b9c: $00
    rst $38                                       ; $4b9d: $ff
    nop                                           ; $4b9e: $00
    rst $38                                       ; $4b9f: $ff
    ld bc, $03ff                                  ; $4ba0: $01 $ff $03
    rst $38                                       ; $4ba3: $ff
    rst $38                                       ; $4ba4: $ff
    rst $38                                       ; $4ba5: $ff
    cp $ff                                        ; $4ba6: $fe $ff
    db $fc                                        ; $4ba8: $fc
    rst $38                                       ; $4ba9: $ff
    ldh [rIE], a                                  ; $4baa: $e0 $ff
    ret nz                                        ; $4bac: $c0

    rst $38                                       ; $4bad: $ff
    ret nz                                        ; $4bae: $c0

    rst $38                                       ; $4baf: $ff
    ret nz                                        ; $4bb0: $c0

    rst $38                                       ; $4bb1: $ff
    ret nz                                        ; $4bb2: $c0

    rst $38                                       ; $4bb3: $ff
    ldh [rIE], a                                  ; $4bb4: $e0 $ff
    rrca                                          ; $4bb6: $0f
    rst $38                                       ; $4bb7: $ff
    rrca                                          ; $4bb8: $0f
    rst $38                                       ; $4bb9: $ff
    rlca                                          ; $4bba: $07
    rst $38                                       ; $4bbb: $ff
    ld b, $fe                                     ; $4bbc: $06 $fe
    ld b, $fe                                     ; $4bbe: $06 $fe
    inc bc                                        ; $4bc0: $03
    rst $38                                       ; $4bc1: $ff
    inc bc                                        ; $4bc2: $03
    rst $38                                       ; $4bc3: $ff
    inc bc                                        ; $4bc4: $03
    rst $38                                       ; $4bc5: $ff
    add [hl]                                      ; $4bc6: $86
    cp $ce                                        ; $4bc7: $fe $ce
    cp $fe                                        ; $4bc9: $fe $fe
    cp $fc                                        ; $4bcb: $fe $fc
    db $fc                                        ; $4bcd: $fc
    jr c, @+$3a                                   ; $4bce: $38 $38

    nop                                           ; $4bd0: $00
    nop                                           ; $4bd1: $00
    nop                                           ; $4bd2: $00
    nop                                           ; $4bd3: $00
    nop                                           ; $4bd4: $00
    nop                                           ; $4bd5: $00
    ld b, $07                                     ; $4bd6: $06 $07
    ld [bc], a                                    ; $4bd8: $02
    inc bc                                        ; $4bd9: $03
    inc bc                                        ; $4bda: $03
    inc bc                                        ; $4bdb: $03
    ld bc, $0001                                  ; $4bdc: $01 $01 $00
    nop                                           ; $4bdf: $00
    nop                                           ; $4be0: $00
    nop                                           ; $4be1: $00
    ld bc, $0101                                  ; $4be2: $01 $01 $01
    db $01                                        ; $4be5: $01

    db $31, $ff, $71, $ff, $e1, $ff, $d9, $e7, $f8, $c7, $b0, $cf, $a0, $df, $61, $9f
    db $70, $8f, $61, $9f, $61, $9f, $a1, $df, $83, $ff, $83, $ff, $83, $ff, $83, $ff
    db $f7, $ff, $ff, $ff, $9e, $ff, $ec, $ff, $ed, $ff, $1d, $ff, $3d, $ff, $fc, $ff
    db $e0, $ff, $f0, $ff, $30, $ff, $f8, $ff, $fc, $ff, $ee, $ff, $cf, $ff, $cf, $ff
    db $10, $f0, $18, $f8, $18, $f8, $08, $f8, $08, $f8, $0c, $fc, $0c, $fc, $04, $fc

    ret z                                         ; $4c36: $c8

    rst $30                                       ; $4c37: $f7
    ret c                                         ; $4c38: $d8

    rst $20                                       ; $4c39: $e7
    ret c                                         ; $4c3a: $d8

    rst $20                                       ; $4c3b: $e7
    ld hl, sp-$39                                 ; $4c3c: $f8 $c7
    ld hl, sp-$39                                 ; $4c3e: $f8 $c7
    ld hl, sp-$39                                 ; $4c40: $f8 $c7
    ld hl, sp-$39                                 ; $4c42: $f8 $c7
    ldh a, [$cf]                                  ; $4c44: $f0 $cf
    rlca                                          ; $4c46: $07
    rst $38                                       ; $4c47: $ff
    rrca                                          ; $4c48: $0f
    rst $38                                       ; $4c49: $ff
    ld c, $ff                                     ; $4c4a: $0e $ff
    inc e                                         ; $4c4c: $1c
    rst $38                                       ; $4c4d: $ff
    jr @+$01                                      ; $4c4e: $18 $ff

    jr c, @+$01                                   ; $4c50: $38 $ff

    jr c, @+$01                                   ; $4c52: $38 $ff

    ld a, b                                       ; $4c54: $78
    rst $38                                       ; $4c55: $ff
    rst $38                                       ; $4c56: $ff
    rst $38                                       ; $4c57: $ff
    rst $38                                       ; $4c58: $ff
    rst $38                                       ; $4c59: $ff
    inc bc                                        ; $4c5a: $03
    rst $38                                       ; $4c5b: $ff
    ld bc, $00ff                                  ; $4c5c: $01 $ff $00
    rst $38                                       ; $4c5f: $ff
    nop                                           ; $4c60: $00
    rst $38                                       ; $4c61: $ff
    nop                                           ; $4c62: $00
    rst $38                                       ; $4c63: $ff
    nop                                           ; $4c64: $00
    rst $38                                       ; $4c65: $ff
    ldh [rIE], a                                  ; $4c66: $e0 $ff
    ldh a, [rIE]                                  ; $4c68: $f0 $ff
    ldh a, [rIE]                                  ; $4c6a: $f0 $ff
    ld hl, sp-$01                                 ; $4c6c: $f8 $ff
    db $fc                                        ; $4c6e: $fc
    rst $38                                       ; $4c6f: $ff
    call c, $cedf                                 ; $4c70: $dc $df $ce
    rst $08                                       ; $4c73: $cf
    rst $08                                       ; $4c74: $cf
    rst $08                                       ; $4c75: $cf
    inc bc                                        ; $4c76: $03
    rst $38                                       ; $4c77: $ff
    inc bc                                        ; $4c78: $03
    rst $38                                       ; $4c79: $ff
    inc bc                                        ; $4c7a: $03
    rst $38                                       ; $4c7b: $ff
    inc bc                                        ; $4c7c: $03
    rst $38                                       ; $4c7d: $ff
    inc bc                                        ; $4c7e: $03
    rst $38                                       ; $4c7f: $ff
    inc bc                                        ; $4c80: $03
    rst $38                                       ; $4c81: $ff
    inc bc                                        ; $4c82: $03
    rst $38                                       ; $4c83: $ff
    inc bc                                        ; $4c84: $03
    rst $38                                       ; $4c85: $ff
    ld bc, $0301                                  ; $4c86: $01 $01 $03
    inc bc                                        ; $4c89: $03
    ld [bc], a                                    ; $4c8a: $02
    inc bc                                        ; $4c8b: $03
    ld [bc], a                                    ; $4c8c: $02
    inc bc                                        ; $4c8d: $03
    ld [bc], a                                    ; $4c8e: $02
    inc bc                                        ; $4c8f: $03
    ld [bc], a                                    ; $4c90: $02
    inc bc                                        ; $4c91: $03
    inc bc                                        ; $4c92: $03
    inc bc                                        ; $4c93: $03
    db $01                                        ; $4c94: $01
    db $01                                        ; $4c95: $01

    db $c1, $3f, $83, $7f, $83, $7f, $07, $ff, $0d, $fd, $19, $f9, $31, $f1, $e1, $e1
    db $c7, $ff, $cf, $ff, $7d, $ff, $31, $ff, $01, $ff, $01, $ff, $01, $ff, $c0, $bf
    db $fc, $ff, $8e, $ff, $07, $ff, $01, $ff, $01, $ff, $01, $ff, $83, $ff, $ff, $ff
    db $1f, $ff, $3b, $ff, $f1, $ff, $e1, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff
    db $84, $fc, $cc, $fc, $f8, $f8, $b0, $b0, $80, $80, $c0, $c0, $40, $c0, $40, $c0

    ldh a, [$cf]                                  ; $4ce6: $f0 $cf
    ldh [$df], a                                  ; $4ce8: $e0 $df
    ret nz                                        ; $4cea: $c0

    rst $38                                       ; $4ceb: $ff
    pop hl                                        ; $4cec: $e1
    rst $38                                       ; $4ced: $ff
    ld [hl], e                                    ; $4cee: $73
    ld a, a                                       ; $4cef: $7f
    ccf                                           ; $4cf0: $3f
    ccf                                           ; $4cf1: $3f
    ld e, $1e                                     ; $4cf2: $1e $1e
    nop                                           ; $4cf4: $00
    nop                                           ; $4cf5: $00
    ld a, b                                       ; $4cf6: $78
    rst $38                                       ; $4cf7: $ff
    db $ec                                        ; $4cf8: $ec
    rst $28                                       ; $4cf9: $ef
    adc $cf                                       ; $4cfa: $ce $cf
    rst $08                                       ; $4cfc: $cf
    rst $08                                       ; $4cfd: $cf
    add a                                         ; $4cfe: $87
    add a                                         ; $4cff: $87
    rlca                                          ; $4d00: $07
    rlca                                          ; $4d01: $07
    ld c, $0f                                     ; $4d02: $0e $0f
    inc c                                         ; $4d04: $0c
    rrca                                          ; $4d05: $0f
    nop                                           ; $4d06: $00
    rst $38                                       ; $4d07: $ff
    ld bc, $03ff                                  ; $4d08: $01 $ff $03
    rst $38                                       ; $4d0b: $ff
    rst $38                                       ; $4d0c: $ff
    rst $38                                       ; $4d0d: $ff
    rst $38                                       ; $4d0e: $ff
    rst $38                                       ; $4d0f: $ff
    rst $38                                       ; $4d10: $ff
    rst $38                                       ; $4d11: $ff
    inc bc                                        ; $4d12: $03
    rst $38                                       ; $4d13: $ff
    ld bc, $c7ff                                  ; $4d14: $01 $ff $c7
    rst $00                                       ; $4d17: $c7
    jp $c3c3                                      ; $4d18: $c3 $c3 $c3


    jp $8181                                      ; $4d1b: $c3 $81 $81


    add b                                         ; $4d1e: $80
    add b                                         ; $4d1f: $80
    add b                                         ; $4d20: $80
    add b                                         ; $4d21: $80
    ret nz                                        ; $4d22: $c0

    ret nz                                        ; $4d23: $c0

    ret nz                                        ; $4d24: $c0

    ret nz                                        ; $4d25: $c0

    inc bc                                        ; $4d26: $03
    rst $38                                       ; $4d27: $ff
    add e                                         ; $4d28: $83
    rst $38                                       ; $4d29: $ff
    add e                                         ; $4d2a: $83
    rst $38                                       ; $4d2b: $ff
    rst $00                                       ; $4d2c: $c7
    rst $38                                       ; $4d2d: $ff
    rst $38                                       ; $4d2e: $ff
    rst $38                                       ; $4d2f: $ff
    ld a, [hl]                                    ; $4d30: $7e
    ld a, [hl]                                    ; $4d31: $7e
    inc a                                         ; $4d32: $3c
    inc a                                         ; $4d33: $3c
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00

    db $c0, $bf, $e1, $9f, $a1, $df, $a1, $df, $f3, $cf, $53, $6f, $53, $6f, $66, $7e
    db $ff, $ff, $83, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $83, $ff, $ff, $ff
    db $c0, $ff, $c0, $ff, $60, $7f, $30, $3f, $30, $3f, $18, $1f, $0c, $0f, $07, $07
    db $40, $c0, $40, $c0, $40, $c0, $40, $c0, $40, $c0, $40, $c0, $c0, $c0, $80, $80

    jr jr_04c_4d97                                ; $4d76: $18 $1f

    jr jr_04c_4d99                                ; $4d78: $18 $1f

    jr jr_04c_4d9b                                ; $4d7a: $18 $1f

    jr jr_04c_4d9d                                ; $4d7c: $18 $1f

    jr jr_04c_4d9f                                ; $4d7e: $18 $1f

    inc e                                         ; $4d80: $1c
    rra                                           ; $4d81: $1f
    ld c, $0f                                     ; $4d82: $0e $0f
    rrca                                          ; $4d84: $0f
    rrca                                          ; $4d85: $0f
    nop                                           ; $4d86: $00
    rst $38                                       ; $4d87: $ff
    nop                                           ; $4d88: $00
    rst $38                                       ; $4d89: $ff
    nop                                           ; $4d8a: $00
    rst $38                                       ; $4d8b: $ff
    nop                                           ; $4d8c: $00
    rst $38                                       ; $4d8d: $ff
    nop                                           ; $4d8e: $00
    rst $38                                       ; $4d8f: $ff
    ld bc, $03ff                                  ; $4d90: $01 $ff $03
    rst $38                                       ; $4d93: $ff
    rst $38                                       ; $4d94: $ff
    rst $38                                       ; $4d95: $ff
    ret nz                                        ; $4d96: $c0

jr_04c_4d97:
    ret nz                                        ; $4d97: $c0

    ret nz                                        ; $4d98: $c0

jr_04c_4d99:
    ret nz                                        ; $4d99: $c0

    ret nz                                        ; $4d9a: $c0

jr_04c_4d9b:
    ret nz                                        ; $4d9b: $c0

    ret nz                                        ; $4d9c: $c0

jr_04c_4d9d:
    ret nz                                        ; $4d9d: $c0

    ret nz                                        ; $4d9e: $c0

jr_04c_4d9f:
    ret nz                                        ; $4d9f: $c0

    ret nz                                        ; $4da0: $c0

    ret nz                                        ; $4da1: $c0

    ret nz                                        ; $4da2: $c0

    ret nz                                        ; $4da3: $c0

    add b                                         ; $4da4: $80
    add b                                         ; $4da5: $80

    db $24, $3c, $3d, $3d, $19, $19, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $fe, $fe, $83, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $83, $ff, $ff, $ff

    rlca                                          ; $4dc6: $07
    rlca                                          ; $4dc7: $07
    rlca                                          ; $4dc8: $07
    rlca                                          ; $4dc9: $07
    ld c, $0f                                     ; $4dca: $0e $0f
    inc c                                         ; $4dcc: $0c
    rrca                                          ; $4dcd: $0f
    jr @+$21                                      ; $4dce: $18 $1f

    jr @+$21                                      ; $4dd0: $18 $1f

    jr @+$21                                      ; $4dd2: $18 $1f

    jr @+$21                                      ; $4dd4: $18 $1f

    add b                                         ; $4dd6: $80
    add b                                         ; $4dd7: $80
    add b                                         ; $4dd8: $80
    add b                                         ; $4dd9: $80
    ret nz                                        ; $4dda: $c0

    ret nz                                        ; $4ddb: $c0

    ret nz                                        ; $4ddc: $c0

    ret nz                                        ; $4ddd: $c0

    ret nz                                        ; $4dde: $c0

    ret nz                                        ; $4ddf: $c0

    ret nz                                        ; $4de0: $c0

    ret nz                                        ; $4de1: $c0

    ret nz                                        ; $4de2: $c0

    ret nz                                        ; $4de3: $c0

    ret nz                                        ; $4de4: $c0

    ret nz                                        ; $4de5: $c0

    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

    jr jr_04c_4e17                                ; $4df6: $18 $1f

    inc e                                         ; $4df8: $1c
    rra                                           ; $4df9: $1f
    ld c, $0f                                     ; $4dfa: $0e $0f
    rrca                                          ; $4dfc: $0f
    rrca                                          ; $4dfd: $0f
    rlca                                          ; $4dfe: $07
    rlca                                          ; $4dff: $07
    rlca                                          ; $4e00: $07
    rlca                                          ; $4e01: $07
    ld c, $0f                                     ; $4e02: $0e $0f
    inc c                                         ; $4e04: $0c
    rrca                                          ; $4e05: $0f
    ret nz                                        ; $4e06: $c0

    ret nz                                        ; $4e07: $c0

    ret nz                                        ; $4e08: $c0

    ret nz                                        ; $4e09: $c0

    ret nz                                        ; $4e0a: $c0

    ret nz                                        ; $4e0b: $c0

    add b                                         ; $4e0c: $80
    add b                                         ; $4e0d: $80
    add b                                         ; $4e0e: $80
    add b                                         ; $4e0f: $80
    add b                                         ; $4e10: $80
    add b                                         ; $4e11: $80
    ret nz                                        ; $4e12: $c0

    ret nz                                        ; $4e13: $c0

    ret nz                                        ; $4e14: $c0

    ret nz                                        ; $4e15: $c0

    ret nz                                        ; $4e16: $c0

jr_04c_4e17:
    ret nz                                        ; $4e17: $c0

    ret nz                                        ; $4e18: $c0

    ret nz                                        ; $4e19: $c0

    ret nz                                        ; $4e1a: $c0

    ret nz                                        ; $4e1b: $c0

    ret nz                                        ; $4e1c: $c0

    ret nz                                        ; $4e1d: $c0

    ret nz                                        ; $4e1e: $c0

    ret nz                                        ; $4e1f: $c0

    ret nz                                        ; $4e20: $c0

    ret nz                                        ; $4e21: $c0

    ret nz                                        ; $4e22: $c0

    ret nz                                        ; $4e23: $c0

    ret nz                                        ; $4e24: $c0

    ret nz                                        ; $4e25: $c0

    db $07, $07, $05, $06, $03, $03, $0c, $0f, $0b, $0c, $07, $07, $03, $02, $06, $05
    db $30, $30, $fd, $ed, $e7, $3e, $be, $dd, $69, $ff, $d6, $ef, $55, $ef, $64, $df
    db $00, $00, $c0, $c0, $a0, $60, $f0, $f0, $10, $f0, $20, $e0, $c0, $c0, $20, $e0
    db $00, $00, $3c, $3c, $5b, $67, $26, $39, $11, $1e, $08, $0f, $04, $07, $0f, $0f
    db $30, $30, $68, $58, $6c, $5c, $e4, $dc, $47, $ff, $27, $fe, $2f, $fc, $1e, $f9
    db $00, $00, $00, $00, $1c, $1c, $e4, $fc, $68, $98, $90, $70, $20, $e0, $70, $f0

    inc bc                                        ; $4e86: $03
    inc bc                                        ; $4e87: $03
    inc bc                                        ; $4e88: $03
    inc bc                                        ; $4e89: $03
    inc bc                                        ; $4e8a: $03
    inc bc                                        ; $4e8b: $03
    inc bc                                        ; $4e8c: $03
    inc bc                                        ; $4e8d: $03
    inc bc                                        ; $4e8e: $03
    inc bc                                        ; $4e8f: $03
    inc bc                                        ; $4e90: $03
    inc bc                                        ; $4e91: $03
    ld bc, $0001                                  ; $4e92: $01 $01 $00
    nop                                           ; $4e95: $00
    inc a                                         ; $4e96: $3c
    jp $8f70                                      ; $4e97: $c3 $70 $8f


    ld hl, $03df                                  ; $4e9a: $21 $df $03
    rst $38                                       ; $4e9d: $ff
    rlca                                          ; $4e9e: $07
    rst $38                                       ; $4e9f: $ff
    adc a                                         ; $4ea0: $8f
    rst $38                                       ; $4ea1: $ff
    rst $38                                       ; $4ea2: $ff
    rst $38                                       ; $4ea3: $ff
    cp $ff                                        ; $4ea4: $fe $ff
    ld a, $ff                                     ; $4ea6: $3e $ff
    cp $ff                                        ; $4ea8: $fe $ff
    cp $ff                                        ; $4eaa: $fe $ff
    call $8dfe                                    ; $4eac: $cd $fe $8d
    cp $0d                                        ; $4eaf: $fe $0d
    cp $0d                                        ; $4eb1: $fe $0d
    cp $0d                                        ; $4eb3: $fe $0d
    cp $c0                                        ; $4eb5: $fe $c0
    ccf                                           ; $4eb7: $3f
    ret nz                                        ; $4eb8: $c0

    ccf                                           ; $4eb9: $3f
    pop bc                                        ; $4eba: $c1
    ccf                                           ; $4ebb: $3f
    pop bc                                        ; $4ebc: $c1
    ccf                                           ; $4ebd: $3f
    pop bc                                        ; $4ebe: $c1
    ccf                                           ; $4ebf: $3f
    pop bc                                        ; $4ec0: $c1
    ccf                                           ; $4ec1: $3f
    jp $c33f                                      ; $4ec2: $c3 $3f $c3


    ccf                                           ; $4ec5: $3f
    db $e3                                        ; $4ec6: $e3
    rst $38                                       ; $4ec7: $ff
    db $e3                                        ; $4ec8: $e3
    rst $38                                       ; $4ec9: $ff
    db $e3                                        ; $4eca: $e3
    rst $38                                       ; $4ecb: $ff
    di                                            ; $4ecc: $f3
    rst $38                                       ; $4ecd: $ff
    rst $30                                       ; $4ece: $f7
    rst $38                                       ; $4ecf: $ff
    rst $38                                       ; $4ed0: $ff
    rst $38                                       ; $4ed1: $ff
    rra                                           ; $4ed2: $1f
    rst $38                                       ; $4ed3: $ff
    adc $ff                                       ; $4ed4: $ce $ff
    add b                                         ; $4ed6: $80
    rst $38                                       ; $4ed7: $ff
    ret nz                                        ; $4ed8: $c0

    rst $38                                       ; $4ed9: $ff
    ret nz                                        ; $4eda: $c0

    rst $38                                       ; $4edb: $ff
    ldh [rIE], a                                  ; $4edc: $e0 $ff
    ldh a, [rIE]                                  ; $4ede: $f0 $ff
    ldh a, [rIE]                                  ; $4ee0: $f0 $ff
    jr c, @+$01                                   ; $4ee2: $38 $ff

    inc e                                         ; $4ee4: $1c
    rst $38                                       ; $4ee5: $ff
    rra                                           ; $4ee6: $1f
    rst $38                                       ; $4ee7: $ff
    rra                                           ; $4ee8: $1f
    rst $38                                       ; $4ee9: $ff
    rrca                                          ; $4eea: $0f
    rst $38                                       ; $4eeb: $ff
    ld c, $fe                                     ; $4eec: $0e $fe
    ld b, $fe                                     ; $4eee: $06 $fe
    ld b, $fe                                     ; $4ef0: $06 $fe
    rlca                                          ; $4ef2: $07
    rst $38                                       ; $4ef3: $ff
    inc bc                                        ; $4ef4: $03
    rst $38                                       ; $4ef5: $ff
    ld bc, $81ff                                  ; $4ef6: $01 $ff $81
    rst $38                                       ; $4ef9: $ff
    ldh [rIE], a                                  ; $4efa: $e0 $ff
    ldh a, [rIE]                                  ; $4efc: $f0 $ff
    ld a, b                                       ; $4efe: $78
    ld a, a                                       ; $4eff: $7f
    dec a                                         ; $4f00: $3d
    ccf                                           ; $4f01: $3f
    rra                                           ; $4f02: $1f
    rra                                           ; $4f03: $1f
    rrca                                          ; $4f04: $0f
    rrca                                          ; $4f05: $0f
    ret nz                                        ; $4f06: $c0

    ret nz                                        ; $4f07: $c0

    ret nz                                        ; $4f08: $c0

    ret nz                                        ; $4f09: $c0

    ret nz                                        ; $4f0a: $c0

    ret nz                                        ; $4f0b: $c0

    ret nz                                        ; $4f0c: $c0

    ret nz                                        ; $4f0d: $c0

    ret nz                                        ; $4f0e: $c0

    ret nz                                        ; $4f0f: $c0

    ret nz                                        ; $4f10: $c0

    ret nz                                        ; $4f11: $c0

    add b                                         ; $4f12: $80
    add b                                         ; $4f13: $80
    nop                                           ; $4f14: $00
    nop                                           ; $4f15: $00

    db $05, $07, $02, $03, $06, $05, $0d, $0b, $0a, $0f, $06, $05, $0c, $0b, $09, $0f
    db $ee, $df, $49, $ff, $aa, $fd, $f5, $be, $d6, $bf, $db, $bf, $91, $ff, $a8, $ff
    db $c0, $c0, $20, $e0, $90, $f0, $d0, $f0, $60, $e0, $20, $e0, $20, $e0, $c0, $c0
    db $19, $17, $30, $2f, $43, $7f, $4c, $7f, $34, $3b, $28, $37, $31, $2f, $67, $5f
    db $98, $ff, $b9, $ff, $ce, $ff, $a7, $df, $c4, $bf, $c4, $bf, $c6, $bf, $cf, $bf
    db $8c, $fc, $06, $fe, $03, $ff, $f1, $ff, $1e, $fe, $0c, $fc, $06, $fe, $c2, $fe

    ld c, $0f                                     ; $4f76: $0e $0f
    dec e                                         ; $4f78: $1d
    ld e, $1f                                     ; $4f79: $1e $1f
    inc e                                         ; $4f7b: $1c
    dec sp                                        ; $4f7c: $3b
    inc a                                         ; $4f7d: $3c
    ld [hl], $39                                  ; $4f7e: $36 $39
    ld a, h                                       ; $4f80: $7c
    ld [hl], e                                    ; $4f81: $73
    ld l, h                                       ; $4f82: $6c
    ld [hl], e                                    ; $4f83: $73
    ld hl, sp-$19                                 ; $4f84: $f8 $e7
    dec c                                         ; $4f86: $0d
    cp $0d                                        ; $4f87: $fe $0d
    cp $0d                                        ; $4f89: $fe $0d
    cp $0d                                        ; $4f8b: $fe $0d
    cp $0d                                        ; $4f8d: $fe $0d
    cp $1d                                        ; $4f8f: $fe $1d
    cp $1c                                        ; $4f91: $fe $1c
    rst $38                                       ; $4f93: $ff
    inc a                                         ; $4f94: $3c
    rst $38                                       ; $4f95: $ff
    jp $873f                                      ; $4f96: $c3 $3f $87


    ld a, a                                       ; $4f99: $7f
    add [hl]                                      ; $4f9a: $86
    ld a, a                                       ; $4f9b: $7f
    add [hl]                                      ; $4f9c: $86
    ld a, a                                       ; $4f9d: $7f
    adc [hl]                                      ; $4f9e: $8e
    ld a, a                                       ; $4f9f: $7f
    adc a                                         ; $4fa0: $8f
    ld a, a                                       ; $4fa1: $7f
    sbc a                                         ; $4fa2: $9f
    ld a, a                                       ; $4fa3: $7f
    sbc a                                         ; $4fa4: $9f
    ld a, a                                       ; $4fa5: $7f
    db $ec                                        ; $4fa6: $ec
    rst $38                                       ; $4fa7: $ff
    db $ec                                        ; $4fa8: $ec
    rst $38                                       ; $4fa9: $ff
    ld c, c                                       ; $4faa: $49
    rst $38                                       ; $4fab: $ff
    add hl, de                                    ; $4fac: $19
    rst $38                                       ; $4fad: $ff
    jr c, @+$01                                   ; $4fae: $38 $ff

    db $fc                                        ; $4fb0: $fc
    rst $38                                       ; $4fb1: $ff
    cp $ff                                        ; $4fb2: $fe $ff
    rst $38                                       ; $4fb4: $ff
    rst $38                                       ; $4fb5: $ff
    ld a, h                                       ; $4fb6: $7c
    rst $38                                       ; $4fb7: $ff
    cp $ff                                        ; $4fb8: $fe $ff
    rst $38                                       ; $4fba: $ff
    rst $38                                       ; $4fbb: $ff
    rst $20                                       ; $4fbc: $e7
    rst $38                                       ; $4fbd: $ff
    rst $00                                       ; $4fbe: $c7
    rst $38                                       ; $4fbf: $ff
    inc bc                                        ; $4fc0: $03
    rst $38                                       ; $4fc1: $ff
    inc bc                                        ; $4fc2: $03
    rst $38                                       ; $4fc3: $ff
    ld b, $ff                                     ; $4fc4: $06 $ff

Jump_04c_4fc6:
    inc bc                                        ; $4fc6: $03
    rst $38                                       ; $4fc7: $ff
    inc bc                                        ; $4fc8: $03
    rst $38                                       ; $4fc9: $ff
    inc bc                                        ; $4fca: $03
    rst $38                                       ; $4fcb: $ff
    ld bc, $81ff                                  ; $4fcc: $01 $ff $81
    rst $38                                       ; $4fcf: $ff
    ret nz                                        ; $4fd0: $c0

    rst $38                                       ; $4fd1: $ff
    ldh [rIE], a                                  ; $4fd2: $e0 $ff
    ldh [rIE], a                                  ; $4fd4: $e0 $ff
    nop                                           ; $4fd6: $00
    nop                                           ; $4fd7: $00
    add b                                         ; $4fd8: $80
    add b                                         ; $4fd9: $80
    add b                                         ; $4fda: $80
    add b                                         ; $4fdb: $80
    add b                                         ; $4fdc: $80
    add b                                         ; $4fdd: $80
    ret nz                                        ; $4fde: $c0

    ret nz                                        ; $4fdf: $c0

    ret nz                                        ; $4fe0: $c0

    ret nz                                        ; $4fe1: $c0

    ret nz                                        ; $4fe2: $c0

    ret nz                                        ; $4fe3: $c0

    ret nz                                        ; $4fe4: $c0

    ret nz                                        ; $4fe5: $c0

    db $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $7c, $7f, $26, $3f, $3d, $3d, $24, $3c, $3c, $3c, $24, $3c, $3c, $3c, $24, $3c
    db $80, $80, $80, $80, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $6c, $5f, $58, $7f, $70, $7f, $29, $37, $31, $2f, $63, $5f, $66, $5f, $8f, $fe
    db $ce, $bf, $99, $ff, $9a, $fd, $b9, $fe, $f9, $fe, $3c, $ff, $94, $7f, $16, $ff
    db $31, $ff, $19, $ff, $8f, $ff, $c4, $fc, $42, $fe, $22, $fe, $31, $ff, $19, $ff

    ret nc                                        ; $5046: $d0

    rst $28                                       ; $5047: $ef
    ret nz                                        ; $5048: $c0

    rst $38                                       ; $5049: $ff
    ret nz                                        ; $504a: $c0

    rst $38                                       ; $504b: $ff
    pop bc                                        ; $504c: $c1
    rst $38                                       ; $504d: $ff
    jp $e7ff                                      ; $504e: $c3 $ff $e7


    rst $38                                       ; $5051: $ff
    ld a, [hl]                                    ; $5052: $7e
    ld a, [hl]                                    ; $5053: $7e
    inc a                                         ; $5054: $3c
    inc a                                         ; $5055: $3c
    ld a, $ff                                     ; $5056: $3e $ff
    ld a, [hl]                                    ; $5058: $7e
    rst $38                                       ; $5059: $ff
    rst $20                                       ; $505a: $e7
    rst $20                                       ; $505b: $e7
    jp $87c3                                      ; $505c: $c3 $c3 $87


    add a                                         ; $505f: $87
    ld b, $07                                     ; $5060: $06 $07
    ld b, $07                                     ; $5062: $06 $07
    rrca                                          ; $5064: $0f
    ld c, $3f                                     ; $5065: $0e $3f
    rst $38                                       ; $5067: $ff
    ld a, [hl]                                    ; $5068: $7e
    rst $38                                       ; $5069: $ff
    or $ff                                        ; $506a: $f6 $ff
    and $ff                                       ; $506c: $e6 $ff
    ld b, $ff                                     ; $506e: $06 $ff
    ld b, $ff                                     ; $5070: $06 $ff
    rlca                                          ; $5072: $07
    rst $38                                       ; $5073: $ff
    inc bc                                        ; $5074: $03
    rst $38                                       ; $5075: $ff
    rlca                                          ; $5076: $07
    rst $38                                       ; $5077: $ff
    inc bc                                        ; $5078: $03
    rst $38                                       ; $5079: $ff
    ld bc, $00ff                                  ; $507a: $01 $ff $00
    rst $38                                       ; $507d: $ff
    nop                                           ; $507e: $00
    rst $38                                       ; $507f: $ff
    nop                                           ; $5080: $00
    rst $38                                       ; $5081: $ff
    ld bc, $ffff                                  ; $5082: $01 $ff $ff
    rst $38                                       ; $5085: $ff
    cp $ff                                        ; $5086: $fe $ff
    db $fc                                        ; $5088: $fc
    rst $38                                       ; $5089: $ff
    ldh a, [rIE]                                  ; $508a: $f0 $ff
    ret nz                                        ; $508c: $c0

    rst $38                                       ; $508d: $ff
    ret nz                                        ; $508e: $c0

    rst $38                                       ; $508f: $ff
    ret nz                                        ; $5090: $c0

    rst $38                                       ; $5091: $ff
    ret nz                                        ; $5092: $c0

    rst $38                                       ; $5093: $ff
    ldh [rIE], a                                  ; $5094: $e0 $ff
    ld [hl], b                                    ; $5096: $70
    rst $38                                       ; $5097: $ff
    ld [hl], b                                    ; $5098: $70
    rst $38                                       ; $5099: $ff
    add hl, sp                                    ; $509a: $39
    rst $38                                       ; $509b: $ff

jr_04c_509c:
    ccf                                           ; $509c: $3f
    rst $38                                       ; $509d: $ff
    rra                                           ; $509e: $1f
    rst $38                                       ; $509f: $ff
    rra                                           ; $50a0: $1f
    rst $38                                       ; $50a1: $ff
    jr jr_04c_509c                                ; $50a2: $18 $f8

    inc e                                         ; $50a4: $1c
    db $fc                                        ; $50a5: $fc
    ret nz                                        ; $50a6: $c0

    ret nz                                        ; $50a7: $c0

    ret nz                                        ; $50a8: $c0

    ret nz                                        ; $50a9: $c0

    ret nz                                        ; $50aa: $c0

    ret nz                                        ; $50ab: $c0

    ret nz                                        ; $50ac: $c0

    ret nz                                        ; $50ad: $c0

    add b                                         ; $50ae: $80
    add b                                         ; $50af: $80
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    nop                                           ; $50b3: $00
    nop                                           ; $50b4: $00
    nop                                           ; $50b5: $00

    db $bb, $fe, $f3, $fe, $2b, $36, $32, $2f, $62, $5f, $66, $5f, $4b, $7b, $33, $33
    db $37, $ff, $29, $ff, $3f, $ff, $6c, $ff, $78, $ff, $e7, $ff, $c4, $ff, $44, $ff
    db $15, $f7, $13, $f3, $88, $f8, $88, $f8, $c8, $f8, $68, $f8, $78, $f8, $30, $f0

    dec c                                         ; $50e6: $0d
    ld c, $0f                                     ; $50e7: $0e $0f
    inc c                                         ; $50e9: $0c
    rrca                                          ; $50ea: $0f
    inc c                                         ; $50eb: $0c
    dec de                                        ; $50ec: $1b
    inc e                                         ; $50ed: $1c
    rra                                           ; $50ee: $1f
    jr jr_04c_510f                                ; $50ef: $18 $1e

    add hl, de                                    ; $50f1: $19
    ld e, $19                                     ; $50f2: $1e $19
    inc e                                         ; $50f4: $1c
    dec de                                        ; $50f5: $1b
    inc bc                                        ; $50f6: $03
    rst $38                                       ; $50f7: $ff
    inc bc                                        ; $50f8: $03
    rst $38                                       ; $50f9: $ff
    rlca                                          ; $50fa: $07
    rst $38                                       ; $50fb: $ff
    ld b, $ff                                     ; $50fc: $06 $ff
    ld b, $ff                                     ; $50fe: $06 $ff
    ld c, $ff                                     ; $5100: $0e $ff
    ld c, $ff                                     ; $5102: $0e $ff
    ld e, $ff                                     ; $5104: $1e $ff
    rst $38                                       ; $5106: $ff
    rst $38                                       ; $5107: $ff
    rst $38                                       ; $5108: $ff
    rst $38                                       ; $5109: $ff
    ld bc, $00ff                                  ; $510a: $01 $ff $00
    rst $38                                       ; $510d: $ff
    nop                                           ; $510e: $00

jr_04c_510f:
    rst $38                                       ; $510f: $ff
    nop                                           ; $5110: $00
    rst $38                                       ; $5111: $ff
    nop                                           ; $5112: $00
    rst $38                                       ; $5113: $ff
    nop                                           ; $5114: $00
    rst $38                                       ; $5115: $ff
    ldh [rIE], a                                  ; $5116: $e0 $ff
    ldh [rIE], a                                  ; $5118: $e0 $ff
    ldh a, [rIE]                                  ; $511a: $f0 $ff
    ldh a, [rIE]                                  ; $511c: $f0 $ff
    ld hl, sp-$01                                 ; $511e: $f8 $ff
    call c, $dcdf                                 ; $5120: $dc $df $dc
    rst $18                                       ; $5123: $df
    adc $cf                                       ; $5124: $ce $cf
    inc c                                         ; $5126: $0c
    db $fc                                        ; $5127: $fc
    inc c                                         ; $5128: $0c
    db $fc                                        ; $5129: $fc
    inc c                                         ; $512a: $0c
    db $fc                                        ; $512b: $fc
    inc c                                         ; $512c: $0c
    db $fc                                        ; $512d: $fc
    inc c                                         ; $512e: $0c
    db $fc                                        ; $512f: $fc
    inc c                                         ; $5130: $0c
    db $fc                                        ; $5131: $fc
    inc c                                         ; $5132: $0c
    db $fc                                        ; $5133: $fc
    inc c                                         ; $5134: $0c
    db $fc                                        ; $5135: $fc

    db $06, $07, $04, $07, $06, $05, $06, $05, $04, $07, $03, $03, $00, $00, $00, $00
    db $3e, $ff, $66, $ff, $43, $ff, $c6, $fe, $bc, $bc, $66, $7e, $42, $7e, $46, $7e
    db $20, $e0, $20, $e0, $20, $e0, $a0, $e0, $60, $60, $00, $00, $00, $00, $00, $00

    inc e                                         ; $5166: $1c
    dec de                                        ; $5167: $1b
    jr jr_04c_5189                                ; $5168: $18 $1f

    jr jr_04c_518b                                ; $516a: $18 $1f

    jr jr_04c_518d                                ; $516c: $18 $1f

    inc e                                         ; $516e: $1c
    rra                                           ; $516f: $1f
    rrca                                          ; $5170: $0f
    rrca                                          ; $5171: $0f
    rlca                                          ; $5172: $07
    rlca                                          ; $5173: $07
    nop                                           ; $5174: $00
    nop                                           ; $5175: $00
    ccf                                           ; $5176: $3f
    rst $38                                       ; $5177: $ff
    dec sp                                        ; $5178: $3b
    ei                                            ; $5179: $fb
    ld [hl], c                                    ; $517a: $71
    pop af                                        ; $517b: $f1
    ld h, e                                       ; $517c: $63
    db $e3                                        ; $517d: $e3
    rst $20                                       ; $517e: $e7
    rst $20                                       ; $517f: $e7
    add $c7                                       ; $5180: $c6 $c7
    add [hl]                                      ; $5182: $86
    add a                                         ; $5183: $87
    ld b, $07                                     ; $5184: $06 $07
    ld bc, $ffff                                  ; $5186: $01 $ff $ff

jr_04c_5189:
    rst $38                                       ; $5189: $ff
    rst $38                                       ; $518a: $ff

jr_04c_518b:
    rst $38                                       ; $518b: $ff
    rst $38                                       ; $518c: $ff

jr_04c_518d:
    rst $38                                       ; $518d: $ff
    ld bc, $00ff                                  ; $518e: $01 $ff $00
    rst $38                                       ; $5191: $ff
    nop                                           ; $5192: $00
    rst $38                                       ; $5193: $ff
    nop                                           ; $5194: $00
    rst $38                                       ; $5195: $ff
    add $c7                                       ; $5196: $c6 $c7
    add a                                         ; $5198: $87
    add a                                         ; $5199: $87
    add e                                         ; $519a: $83
    add e                                         ; $519b: $83
    add e                                         ; $519c: $83
    add e                                         ; $519d: $83
    pop bc                                        ; $519e: $c1
    pop bc                                        ; $519f: $c1
    ret nz                                        ; $51a0: $c0

    ret nz                                        ; $51a1: $c0

    ret nz                                        ; $51a2: $c0

    ret nz                                        ; $51a3: $c0

    ret nz                                        ; $51a4: $c0

    ret nz                                        ; $51a5: $c0

    inc c                                         ; $51a6: $0c
    db $fc                                        ; $51a7: $fc
    inc c                                         ; $51a8: $0c
    db $fc                                        ; $51a9: $fc
    inc c                                         ; $51aa: $0c
    db $fc                                        ; $51ab: $fc
    sbc h                                         ; $51ac: $9c
    db $fc                                        ; $51ad: $fc
    ld hl, sp-$08                                 ; $51ae: $f8 $f8
    ld hl, sp-$08                                 ; $51b0: $f8 $f8
    ld [hl], b                                    ; $51b2: $70
    ld [hl], b                                    ; $51b3: $70
    nop                                           ; $51b4: $00
    nop                                           ; $51b5: $00

    db $3c, $3c, $66, $7e, $42, $7e, $46, $7e, $3c, $3c, $66, $7e, $42, $7e, $46, $7e

    ld b, $07                                     ; $51c6: $06 $07
    ld b, $07                                     ; $51c8: $06 $07
    rlca                                          ; $51ca: $07
    rlca                                          ; $51cb: $07
    inc bc                                        ; $51cc: $03
    inc bc                                        ; $51cd: $03
    ld bc, $0301                                  ; $51ce: $01 $01 $03
    inc bc                                        ; $51d1: $03
    rlca                                          ; $51d2: $07
    rlca                                          ; $51d3: $07
    ld b, $07                                     ; $51d4: $06 $07
    nop                                           ; $51d6: $00
    rst $38                                       ; $51d7: $ff
    nop                                           ; $51d8: $00
    rst $38                                       ; $51d9: $ff
    ld bc, $ffff                                  ; $51da: $01 $ff $ff
    rst $38                                       ; $51dd: $ff
    rst $38                                       ; $51de: $ff
    rst $38                                       ; $51df: $ff
    rst $38                                       ; $51e0: $ff
    rst $38                                       ; $51e1: $ff
    ld bc, $00ff                                  ; $51e2: $01 $ff $00
    rst $38                                       ; $51e5: $ff
    ld b, $07                                     ; $51e6: $06 $07
    ld b, $07                                     ; $51e8: $06 $07
    ld b, $07                                     ; $51ea: $06 $07
    ld b, $07                                     ; $51ec: $06 $07
    rlca                                          ; $51ee: $07
    rlca                                          ; $51ef: $07
    inc bc                                        ; $51f0: $03
    inc bc                                        ; $51f1: $03
    ld bc, $0301                                  ; $51f2: $01 $01 $03
    inc bc                                        ; $51f5: $03
    nop                                           ; $51f6: $00
    rst $38                                       ; $51f7: $ff
    nop                                           ; $51f8: $00
    rst $38                                       ; $51f9: $ff
    nop                                           ; $51fa: $00
    rst $38                                       ; $51fb: $ff
    nop                                           ; $51fc: $00
    rst $38                                       ; $51fd: $ff
    ld bc, $ffff                                  ; $51fe: $01 $ff $ff
    rst $38                                       ; $5201: $ff
    rst $38                                       ; $5202: $ff
    rst $38                                       ; $5203: $ff
    rst $38                                       ; $5204: $ff
    rst $38                                       ; $5205: $ff
    ret nz                                        ; $5206: $c0

    ret nz                                        ; $5207: $c0

    ret nz                                        ; $5208: $c0

    ret nz                                        ; $5209: $c0

    ret nz                                        ; $520a: $c0

    ret nz                                        ; $520b: $c0

    ret nz                                        ; $520c: $c0

    ret nz                                        ; $520d: $c0

    ret nz                                        ; $520e: $c0

    ret nz                                        ; $520f: $c0

    add b                                         ; $5210: $80
    add b                                         ; $5211: $80
    add b                                         ; $5212: $80
    add b                                         ; $5213: $80
    add b                                         ; $5214: $80
    add b                                         ; $5215: $80
    rlca                                          ; $5216: $07
    rlca                                          ; $5217: $07
    ld b, $07                                     ; $5218: $06 $07
    ld b, $07                                     ; $521a: $06 $07
    ld b, $07                                     ; $521c: $06 $07
    ld b, $07                                     ; $521e: $06 $07
    ld b, $07                                     ; $5220: $06 $07
    rlca                                          ; $5222: $07
    rlca                                          ; $5223: $07
    inc bc                                        ; $5224: $03
    inc bc                                        ; $5225: $03
    ld bc, $00ff                                  ; $5226: $01 $ff $00
    rst $38                                       ; $5229: $ff
    nop                                           ; $522a: $00
    rst $38                                       ; $522b: $ff
    nop                                           ; $522c: $00
    rst $38                                       ; $522d: $ff
    nop                                           ; $522e: $00
    rst $38                                       ; $522f: $ff
    nop                                           ; $5230: $00
    rst $38                                       ; $5231: $ff
    ld bc, $ffff                                  ; $5232: $01 $ff $ff
    rst $38                                       ; $5235: $ff

    db $89, $8a, $8b, $98, $99, $9a, $a5, $a6, $a7, $8c, $8d, $8e, $9b, $9c, $9d, $a8
    db $a9, $aa, $b2, $b3, $b4, $ba, $bb, $bc, $00, $c2, $00, $43, $01, $02, $03, $04
    db $0f, $10, $11, $12, $13, $1b, $1c, $1d, $1e, $1f, $27, $28, $29, $2a, $2b, $33
    db $34, $35, $36, $00, $00, $3a, $3b, $3c, $00, $00, $00, $3f, $00, $00, $00, $00
    db $44, $00, $00, $47, $48, $49, $4a, $4b, $4c, $4d, $56, $57, $58, $59, $5a, $5b
    db $00, $64, $65, $66, $67, $68, $69, $00, $6f, $70, $71, $72, $73, $74, $00, $00
    db $00, $7a, $7b, $7c, $7d, $00, $00, $00, $81, $82, $00, $00, $00, $00, $00, $85
    db $82, $00, $00, $00, $00, $00, $85, $82, $00, $00, $00

    adc a                                         ; $52b1: $8f
    sub b                                         ; $52b2: $90
    sub c                                         ; $52b3: $91
    sub d                                         ; $52b4: $92
    sub e                                         ; $52b5: $93
    sub h                                         ; $52b6: $94
    sub l                                         ; $52b7: $95
    sub [hl]                                      ; $52b8: $96
    sub a                                         ; $52b9: $97
    nop                                           ; $52ba: $00
    sbc [hl]                                      ; $52bb: $9e
    sbc a                                         ; $52bc: $9f
    and b                                         ; $52bd: $a0
    and c                                         ; $52be: $a1
    and d                                         ; $52bf: $a2
    and e                                         ; $52c0: $a3
    and h                                         ; $52c1: $a4
    nop                                           ; $52c2: $00
    nop                                           ; $52c3: $00
    xor e                                         ; $52c4: $ab
    xor h                                         ; $52c5: $ac
    xor l                                         ; $52c6: $ad
    xor [hl]                                      ; $52c7: $ae
    xor a                                         ; $52c8: $af
    or b                                          ; $52c9: $b0

Jump_04c_52ca:
    or c                                          ; $52ca: $b1
    nop                                           ; $52cb: $00
    nop                                           ; $52cc: $00
    nop                                           ; $52cd: $00
    or l                                          ; $52ce: $b5
    or [hl]                                       ; $52cf: $b6
    or a                                          ; $52d0: $b7
    cp b                                          ; $52d1: $b8
    cp c                                          ; $52d2: $b9
    nop                                           ; $52d3: $00
    nop                                           ; $52d4: $00
    nop                                           ; $52d5: $00
    nop                                           ; $52d6: $00
    cp l                                          ; $52d7: $bd
    cp [hl]                                       ; $52d8: $be
    cp a                                          ; $52d9: $bf
    ret nz                                        ; $52da: $c0

    pop bc                                        ; $52db: $c1
    nop                                           ; $52dc: $00
    nop                                           ; $52dd: $00
    nop                                           ; $52de: $00
    nop                                           ; $52df: $00
    nop                                           ; $52e0: $00
    jp $87c4                                      ; $52e1: $c3 $c4 $87


    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    nop                                           ; $52e6: $00
    nop                                           ; $52e7: $00
    nop                                           ; $52e8: $00
    nop                                           ; $52e9: $00
    push bc                                       ; $52ea: $c5
    add $c7                                       ; $52eb: $c6 $c7
    nop                                           ; $52ed: $00
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    ret z                                         ; $52f3: $c8

    ret                                           ; $52f4: $c9


    add b                                         ; $52f5: $80
    nop                                           ; $52f6: $00
    nop                                           ; $52f7: $00
    nop                                           ; $52f8: $00
    ld c, [hl]                                    ; $52f9: $4e
    ld c, a                                       ; $52fa: $4f
    ld d, b                                       ; $52fb: $50
    ld d, c                                       ; $52fc: $51
    ld d, d                                       ; $52fd: $52
    ld d, e                                       ; $52fe: $53
    ld d, h                                       ; $52ff: $54
    ld d, l                                       ; $5300: $55
    nop                                           ; $5301: $00
    ld e, h                                       ; $5302: $5c
    ld e, l                                       ; $5303: $5d
    ld e, [hl]                                    ; $5304: $5e
    ld e, a                                       ; $5305: $5f
    ld h, b                                       ; $5306: $60
    ld h, c                                       ; $5307: $61
    ld h, d                                       ; $5308: $62
    ld h, e                                       ; $5309: $63
    nop                                           ; $530a: $00
    nop                                           ; $530b: $00
    nop                                           ; $530c: $00
    ld l, d                                       ; $530d: $6a
    ld l, e                                       ; $530e: $6b
    ld l, h                                       ; $530f: $6c
    ld l, l                                       ; $5310: $6d
    ld l, [hl]                                    ; $5311: $6e
    nop                                           ; $5312: $00
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    ld [hl], l                                    ; $5316: $75
    halt                                          ; $5317: $76
    ld [hl], a                                    ; $5318: $77
    ld a, b                                       ; $5319: $78
    ld a, c                                       ; $531a: $79
    nop                                           ; $531b: $00
    nop                                           ; $531c: $00
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    nop                                           ; $531f: $00
    ld a, [hl]                                    ; $5320: $7e
    ld a, a                                       ; $5321: $7f
    add b                                         ; $5322: $80
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    add e                                         ; $5329: $83
    ld l, h                                       ; $532a: $6c
    add h                                         ; $532b: $84
    nop                                           ; $532c: $00
    nop                                           ; $532d: $00
    nop                                           ; $532e: $00
    nop                                           ; $532f: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    add [hl]                                      ; $5332: $86
    ld [hl], a                                    ; $5333: $77
    add a                                         ; $5334: $87
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    nop                                           ; $533a: $00
    ld a, [hl]                                    ; $533b: $7e
    ld a, a                                       ; $533c: $7f
    adc b                                         ; $533d: $88
    nop                                           ; $533e: $00
    nop                                           ; $533f: $00
    nop                                           ; $5340: $00

    db $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $00, $00, $00, $14, $15, $16
    db $17, $18, $19, $1a, $00, $00, $00, $00, $20, $21, $22, $23, $24, $25, $26, $00
    db $00, $00, $00, $2c, $2d, $2e, $2f, $30, $31, $32, $00, $00, $00, $00, $00, $00
    db $37, $38, $39, $00, $00, $00, $00, $00, $00, $00, $00, $3d, $0c, $3e, $00, $00
    db $00, $00, $00, $00, $00, $00, $40, $41, $42, $00, $00, $00, $00, $00, $00, $00
    db $00, $45, $0a, $46, $00, $00, $00, $00

    dec b                                         ; $5399: $05
    ld b, $07                                     ; $539a: $06 $07
    ld [$0a09], sp                                ; $539c: $08 $09 $0a
    dec bc                                        ; $539f: $0b
    inc c                                         ; $53a0: $0c
    dec c                                         ; $53a1: $0d
    ld c, $00                                     ; $53a2: $0e $00
    nop                                           ; $53a4: $00
    nop                                           ; $53a5: $00
    inc d                                         ; $53a6: $14
    dec d                                         ; $53a7: $15
    ld d, $17                                     ; $53a8: $16 $17
    jr jr_04c_53c5                                ; $53aa: $18 $19

    ld a, [de]                                    ; $53ac: $1a
    nop                                           ; $53ad: $00
    nop                                           ; $53ae: $00
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    jr nz, jr_04c_53d4                            ; $53b1: $20 $21

    ld [hl+], a                                   ; $53b3: $22
    inc hl                                        ; $53b4: $23
    inc h                                         ; $53b5: $24
    dec h                                         ; $53b6: $25
    ld h, $00                                     ; $53b7: $26 $00
    nop                                           ; $53b9: $00
    nop                                           ; $53ba: $00
    nop                                           ; $53bb: $00
    inc l                                         ; $53bc: $2c
    dec l                                         ; $53bd: $2d
    ld l, $2f                                     ; $53be: $2e $2f
    jr nc, jr_04c_53f3                            ; $53c0: $30 $31

    ld [hl-], a                                   ; $53c2: $32
    nop                                           ; $53c3: $00
    nop                                           ; $53c4: $00

jr_04c_53c5:
    nop                                           ; $53c5: $00
    nop                                           ; $53c6: $00
    nop                                           ; $53c7: $00
    nop                                           ; $53c8: $00
    scf                                           ; $53c9: $37
    jr c, @+$3b                                   ; $53ca: $38 $39

    nop                                           ; $53cc: $00
    nop                                           ; $53cd: $00
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    nop                                           ; $53d3: $00

jr_04c_53d4:
    dec a                                         ; $53d4: $3d
    inc c                                         ; $53d5: $0c
    ld a, $00                                     ; $53d6: $3e $00
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    nop                                           ; $53da: $00
    nop                                           ; $53db: $00
    nop                                           ; $53dc: $00
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    ld b, b                                       ; $53df: $40
    ld b, c                                       ; $53e0: $41
    ld b, d                                       ; $53e1: $42
    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
    nop                                           ; $53e4: $00
    nop                                           ; $53e5: $00
    nop                                           ; $53e6: $00
    nop                                           ; $53e7: $00
    nop                                           ; $53e8: $00
    nop                                           ; $53e9: $00
    ld b, l                                       ; $53ea: $45
    ld a, [bc]                                    ; $53eb: $0a
    ld b, [hl]                                    ; $53ec: $46
    nop                                           ; $53ed: $00
    nop                                           ; $53ee: $00
    nop                                           ; $53ef: $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    nop                                           ; $53f2: $00

jr_04c_53f3:
    nop                                           ; $53f3: $00
    nop                                           ; $53f4: $00
    nop                                           ; $53f5: $00
    nop                                           ; $53f6: $00
    nop                                           ; $53f7: $00
    nop                                           ; $53f8: $00
    nop                                           ; $53f9: $00
    nop                                           ; $53fa: $00
    nop                                           ; $53fb: $00
    nop                                           ; $53fc: $00
    nop                                           ; $53fd: $00
    nop                                           ; $53fe: $00
    nop                                           ; $53ff: $00

    db $a9, $00, $ff, $ff, $eb, $ea, $55, $fc, $e6, $ff, $f4, $e4, $88, $fa, $f6, $e0
    db $22, $f8, $e6, $ff, $00, $00, $ff, $22, $ff, $ae, $ff, $ff, $aa, $fb, $ff, $ff
    db $8a, $ff, $ee, $cf, $ff, $aa, $ff, $66, $ff, $aa, $bf, $fe, $dd, $ff, $8a, $bf
    db $13, $f4, $e0, $dd, $ff, $ff, $61, $0e, $fb, $04, $9e, $41, $04, $ff, $fb, $60
    db $77, $c8, $ff, $9d, $fd, $ff, $70, $d1, $e0, $ff, $ff, $80, $ff, $80, $eb, $02
    db $bb, $3e, $8c, $e0, $df, $e7, $ff, $a2, $ef, $fe, $84, $e0, $67, $7f, $f7, $2a
    db $ff, $dc, $78, $e0, $33, $f7, $a2, $fb, $ff, $dd, $ff, $62, $0f, $f3, $04, $9f
    db $40, $ff, $0c, $f3, $61, $77, $33, $ff, $99, $df, $f1, $df, $80, $ff, $80, $ff
    db $00, $e2, $57, $00, $8f, $00, $fd, $7f, $ec, $c0, $f6, $08, $f0, $0f, $60, $8a
    db $ff, $01, $fe, $30, $8a, $30, $cf, $01, $aa, $ff, $01, $fe, $08, $a2, $00, $77
    db $60, $8a, $ff, $60, $9d, $03, $a8, $03, $74, $10, $aa, $8f, $00, $dd, $61, $02
    db $00, $ff, $80, $ff, $80, $c7, $57, $bf, $00, $8e, $01, $7e, $01, $ff, $fe, $e0
    db $ec, $ff, $13, $40, $9d, $00, $ff, $30, $8b, $31, $ff, $cf, $00, $ab, $06, $f9
    db $06, $a8, $00, $ff, $ff, $80, $2a, $80, $7f, $04, $aa, $00, $ff, $77, $80, $2a
    db $19, $c5, $18, $a3, $01, $7f, $77, $00, $aa, $08, $d5, $61, $02, $00, $ff, $f8
    db $80, $ff, $00, $c7, $10, $c1, $08, $dd, $0c, $ff, $17, $eb, $ff, $ff, $9a, $c0
    db $9e, $18, $c0, $ff, $ff, $a2, $fe, $f4, $e0, $a8, $fe, $dc, $ff, $2a, $ff, $7f
    db $df, $ff, $a2, $fb, $73, $f7, $08, $c1, $8a, $bf, $c7, $17, $ff, $a8, $00, $df
    db $80, $ff, $00, $cc, $fe, $01, $fe, $77, $a0, $dd, $82, $ff, $46, $f7, $fe, $ff
    db $a7, $58, $ff, $7e, $90, $a0, $08, $c0, $ae, $08, $c1, $fa, $fe, $f4, $e2, $22
    db $ef, $77, $ff, $a2, $fe, $1c, $07, $ff, $2a, $be, $f8, $e0, $f8, $a0, $00, $df
    db $80, $ff, $00, $ab, $ff, $08, $80, $9f, $c0, $c2, $e0, $65, $f0, $ff, $f0, $f8
    db $d9, $fc, $fc, $fe, $2b, $fe, $ba, $7c, $e1, $fe, $14, $e0, $fe, $ff, $2a, $f4
    db $e0, $28, $ef, $ff, $75, $7f, $aa, $f4, $c0, $aa, $ff, $77, $c3, $7f, $2a, $ec
    db $c0, $00, $ff, $80, $ff, $80, $9d, $00, $aa, $7d, $91, $88, $80, $f7, $ff, $8a
    db $be, $9e, $84, $80, $f6, $00, $e0, $bb, $d0, $74, $c0, $77, $7f, $aa, $ee, $e2
    db $00, $e0, $0e, $00, $ff, $80, $ff, $00, $97, $55, $80, $3f, $ff, $c0, $15, $e0
    db $6f, $f0, $27, $f8, $7b, $07, $fc, $a9, $fe, $80, $80, $08, $e4, $80, $e2, $f8
    db $60, $00, $ff, $a8, $80, $ff, $80, $fa, $68, $62, $ff, $fe, $e4, $aa, $70, $61
    db $77, $f7, $80, $ee, $dd, $f8, $a0, $67, $77, $a8, $ff, $e1, $55, $00, $df, $80
    db $ff, $80, $ff, $80, $ec, $20, $ef, $dd, $7e, $ec, $80, $37, $7f, $28, $bb, $d9
    db $fd, $00, $ff, $7c, $80, $ff, $80, $ff, $fe, $00, $f7, $00, $ef, $70, $60, $ff
    db $f6, $09, $60, $8a, $08, $77, $61, $8a, $fb, $61, $9c, $f5, $c0, $f7, $18, $a2
    db $18, $c5, $f1, $60, $00, $9f, $80, $ff, $00, $58, $57, $00, $ec, $03, $ff, $7c
    db $02, $fc, $03, $f8, $03, $b0, $4f, $7f, $00, $ab, $0d, $f3, $2c, $83, $01, $80
    db $60, $ff, $80, $5d, $10, $aa, $01, $77, $86, $29, $23, $06, $d9, $00, $7f, $80
    db $ff, $00, $bf, $26, $88, $20, $80, $20, $dd, $eb, $80, $21, $74, $f7, $a8, $80
    db $21, $ef, $47, $b0, $80, $62, $00, $df, $80, $ff, $80, $fe, $eb, $63, $0c, $20
    db $e6, $ac, $78, $60, $f8, $40, $ff, $56, $00, $20, $c5, $74, $20, $76, $c6, $fc
    db $00, $9d, $df, $00, $df, $80, $ff, $80, $9f, $6f, $f0, $57, $a7, $f8, $fb, $80
    db $80, $7e, $7c, $60, $76, $80, $00, $15, $5d, $74, $40, $76, $70, $40, $5d, $00
    db $ff, $80, $ff, $80, $bf, $ee, $80, $8c, $a0, $eb, $51, $f4, $40, $57, $ff, $28
    db $c3, $fb, $59, $00, $bf, $80, $ff, $80, $ff, $00, $8c, $08, $ab, $7f, $9c, $df
    db $aa, $ff, $43, $ff, $8a, $00, $61, $f0, $00, $ff, $80, $ff, $80, $9f, $80, $84
    db $f3, $0c, $e0, $0a, $ff, $81, $76, $01, $aa, $44, $99, $00, $aa, $3f, $18, $67
    db $19, $a2, $00, $dd, $00, $bf, $80, $ff, $ee, $80, $9b, $ef, $00, $7e, $ea, $00
    db $dc, $22, $80, $ff, $7f, $80, $2a, $26, $d9, $06, $a8, $80, $fe, $80, $80, $00
    db $dd, $58, $a2, $1a, $65, $00, $07, $aa, $04, $d9, $00, $8d, $00, $00

    nop                                           ; $56fe: $00

    db $80, $7d, $d0, $7e, $00, $02, $80, $00, $00, $02, $40, $71, $e0, $03, $80, $00
    db $00, $02, $c0, $02, $94, $23, $80, $00, $00, $02, $94, $23, $e0, $03, $80, $00
    db $00, $02, $e0, $03, $c0, $02, $80, $00

    ld [$0825], sp                                ; $5727: $08 $25 $08
    dec h                                         ; $572a: $25
    ld [$0825], sp                                ; $572b: $08 $25 $08
    dec h                                         ; $572e: $25

    jr jr_04c_5731                                ; $572f: $18 $00

jr_04c_5731:
    call Call_04c_583c                            ; $5731: $cd $3c $58
    call Call_04c_5767                            ; $5734: $cd $67 $57
    ld a, $01                                     ; $5737: $3e $01
    ldh [rVBK], a                                 ; $5739: $e0 $4f
    ld hl, $d000                                  ; $573b: $21 $00 $d0
    ld de, $9000                                  ; $573e: $11 $00 $90
    ld c, $80                                     ; $5741: $0e $80
    call Call_000_2096                            ; $5743: $cd $96 $20
    ld hl, $d800                                  ; $5746: $21 $00 $d8
    ld de, $8800                                  ; $5749: $11 $00 $88
    ld c, $20                                     ; $574c: $0e $20
    call Call_000_2096                            ; $574e: $cd $96 $20
    ld hl, $5400                                  ; $5751: $21 $00 $54
    ld de, $d000                                  ; $5754: $11 $00 $d0
    call Call_000_1f2f                            ; $5757: $cd $2f $1f
    call Call_04c_6173                            ; $575a: $cd $73 $61
    ld hl, $56ff                                  ; $575d: $21 $ff $56
    ld de, $0205                                  ; $5760: $11 $05 $02
    call Call_000_0595                            ; $5763: $cd $95 $05
    ret                                           ; $5766: $c9


Call_04c_5767:
    ld hl, $da00                                  ; $5767: $21 $00 $da

jr_04c_576a:
    ld a, [hl+]                                   ; $576a: $2a
    cp $ff                                        ; $576b: $fe $ff
    jr z, jr_04c_5790                             ; $576d: $28 $21

    ld e, a                                       ; $576f: $5f
    ld a, [hl+]                                   ; $5770: $2a
    ld d, a                                       ; $5771: $57
    ld a, [hl+]                                   ; $5772: $2a
    ld c, a                                       ; $5773: $4f
    ld a, e                                       ; $5774: $7b
    cp $03                                        ; $5775: $fe $03
    jr z, jr_04c_577d                             ; $5777: $28 $04

    cp $02                                        ; $5779: $fe $02
    jr nz, jr_04c_578e                            ; $577b: $20 $11

jr_04c_577d:
    ld a, c                                       ; $577d: $79
    and a                                         ; $577e: $a7
    jr z, jr_04c_578e                             ; $577f: $28 $0d

    ld a, c                                       ; $5781: $79
    rrca                                          ; $5782: $0f
    rrca                                          ; $5783: $0f
    rrca                                          ; $5784: $0f
    and $07                                       ; $5785: $e6 $07
    ld e, $00                                     ; $5787: $1e $00
    push hl                                       ; $5789: $e5
    call Call_04c_5791                            ; $578a: $cd $91 $57
    pop hl                                        ; $578d: $e1

jr_04c_578e:
    jr jr_04c_576a                                ; $578e: $18 $da

jr_04c_5790:
    ret                                           ; $5790: $c9


Call_04c_5791:
    add a                                         ; $5791: $87
    add a                                         ; $5792: $87
    add a                                         ; $5793: $87
    ld hl, $57fc                                  ; $5794: $21 $fc $57
    add l                                         ; $5797: $85
    ld l, a                                       ; $5798: $6f
    jr nc, jr_04c_579c                            ; $5799: $30 $01

    inc h                                         ; $579b: $24

jr_04c_579c:
    ld a, [hl+]                                   ; $579c: $2a
    add d                                         ; $579d: $82
    ld d, a                                       ; $579e: $57
    ld a, [hl+]                                   ; $579f: $2a
    add e                                         ; $57a0: $83
    ld b, a                                       ; $57a1: $47
    ld a, [hl+]                                   ; $57a2: $2a
    ld e, a                                       ; $57a3: $5f
    ld a, [hl+]                                   ; $57a4: $2a
    ld a, [hl+]                                   ; $57a5: $2a
    ld h, [hl]                                    ; $57a6: $66
    ld l, a                                       ; $57a7: $6f

jr_04c_57a8:
    push de                                       ; $57a8: $d5

jr_04c_57a9:
    ld a, [hl]                                    ; $57a9: $7e
    and a                                         ; $57aa: $a7
    jr z, jr_04c_57ec                             ; $57ab: $28 $3f

    bit 7, d                                      ; $57ad: $cb $7a
    jr nz, jr_04c_57ec                            ; $57af: $20 $3b

    ld a, d                                       ; $57b1: $7a
    cp $14                                        ; $57b2: $fe $14
    jr nc, jr_04c_57ec                            ; $57b4: $30 $36

    push bc                                       ; $57b6: $c5
    push de                                       ; $57b7: $d5
    push hl                                       ; $57b8: $e5
    ld a, d                                       ; $57b9: $7a
    ld l, [hl]                                    ; $57ba: $6e
    ld h, $00                                     ; $57bb: $26 $00
    add hl, hl                                    ; $57bd: $29
    add hl, hl                                    ; $57be: $29
    add hl, hl                                    ; $57bf: $29
    add hl, hl                                    ; $57c0: $29
    ld de, $4050                                  ; $57c1: $11 $50 $40
    add hl, de                                    ; $57c4: $19
    ld e, l                                       ; $57c5: $5d
    ld d, h                                       ; $57c6: $54
    add a                                         ; $57c7: $87
    add a                                         ; $57c8: $87
    add a                                         ; $57c9: $87
    add b                                         ; $57ca: $80
    ld l, a                                       ; $57cb: $6f
    ld h, $00                                     ; $57cc: $26 $00
    add hl, hl                                    ; $57ce: $29
    add hl, hl                                    ; $57cf: $29
    add hl, hl                                    ; $57d0: $29
    add hl, hl                                    ; $57d1: $29
    ld a, $00                                     ; $57d2: $3e $00
    add l                                         ; $57d4: $85
    ld l, a                                       ; $57d5: $6f
    ld a, h                                       ; $57d6: $7c
    adc $d0                                       ; $57d7: $ce $d0
    ld h, a                                       ; $57d9: $67
    ld a, c                                       ; $57da: $79
    cp $08                                        ; $57db: $fe $08
    jr c, jr_04c_57e1                             ; $57dd: $38 $02

    ld c, $08                                     ; $57df: $0e $08

jr_04c_57e1:
    push bc                                       ; $57e1: $c5
    call Call_04c_6246                            ; $57e2: $cd $46 $62
    pop bc                                        ; $57e5: $c1
    dec c                                         ; $57e6: $0d
    jr nz, jr_04c_57e1                            ; $57e7: $20 $f8

    pop hl                                        ; $57e9: $e1
    pop de                                        ; $57ea: $d1
    pop bc                                        ; $57eb: $c1

jr_04c_57ec:
    inc hl                                        ; $57ec: $23
    inc d                                         ; $57ed: $14
    dec e                                         ; $57ee: $1d
    jr nz, jr_04c_57a9                            ; $57ef: $20 $b8

    pop de                                        ; $57f1: $d1
    inc b                                         ; $57f2: $04
    ld a, c                                       ; $57f3: $79
    sub $08                                       ; $57f4: $d6 $08
    ld c, a                                       ; $57f6: $4f
    jr z, jr_04c_57fb                             ; $57f7: $28 $02

    jr nc, jr_04c_57a8                            ; $57f9: $30 $ad

jr_04c_57fb:
    ret                                           ; $57fb: $c9


    db $00, $00, $01, $01, $30, $45

    nop                                           ; $5802: $00
    nop                                           ; $5803: $00

    db $00, $00, $01, $02, $31, $45

    nop                                           ; $580a: $00
    nop                                           ; $580b: $00

    db $ff, $00, $03, $03, $33, $45

    nop                                           ; $5812: $00
    nop                                           ; $5813: $00

    db $ff, $00, $03, $04, $3c, $45

    nop                                           ; $581a: $00
    nop                                           ; $581b: $00
    rst $38                                       ; $581c: $ff
    nop                                           ; $581d: $00
    inc bc                                        ; $581e: $03
    dec b                                         ; $581f: $05
    ld c, b                                       ; $5820: $48
    ld b, l                                       ; $5821: $45
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    rst $38                                       ; $5824: $ff
    nop                                           ; $5825: $00
    inc bc                                        ; $5826: $03
    ld b, $57                                     ; $5827: $06 $57
    ld b, l                                       ; $5829: $45
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00

    db $ff, $00, $03, $07, $69, $45

    nop                                           ; $5832: $00
    nop                                           ; $5833: $00

    db $ff, $00, $03, $08, $7e, $45

    nop                                           ; $583a: $00
    nop                                           ; $583b: $00

Call_04c_583c:
    ld hl, $da00                                  ; $583c: $21 $00 $da

jr_04c_583f:
    ld a, [hl+]                                   ; $583f: $2a
    cp $ff                                        ; $5840: $fe $ff
    jr z, jr_04c_5862                             ; $5842: $28 $1e

    ld e, a                                       ; $5844: $5f
    ld a, [hl+]                                   ; $5845: $2a
    ld d, a                                       ; $5846: $57
    ld a, [hl+]                                   ; $5847: $2a
    ld b, a                                       ; $5848: $47
    ld a, e                                       ; $5849: $7b
    cp $01                                        ; $584a: $fe $01
    jr nz, jr_04c_5860                            ; $584c: $20 $12

    ld a, b                                       ; $584e: $78
    rrca                                          ; $584f: $0f
    rrca                                          ; $5850: $0f
    rrca                                          ; $5851: $0f
    and $07                                       ; $5852: $e6 $07
    jr z, jr_04c_5860                             ; $5854: $28 $0a

    cp $07                                        ; $5856: $fe $07
    jr z, jr_04c_5860                             ; $5858: $28 $06

    ld e, b                                       ; $585a: $58
    push hl                                       ; $585b: $e5
    call Call_04c_5873                            ; $585c: $cd $73 $58
    pop hl                                        ; $585f: $e1

jr_04c_5860:
    jr jr_04c_583f                                ; $5860: $18 $dd

jr_04c_5862:
    ld a, [$c3b7]                                 ; $5862: $fa $b7 $c3
    cp $0c                                        ; $5865: $fe $0c
    jr nz, jr_04c_5872                            ; $5867: $20 $09

    ld a, $07                                     ; $5869: $3e $07
    ld d, $0a                                     ; $586b: $16 $0a
    ld e, $3f                                     ; $586d: $1e $3f
    call Call_04c_5873                            ; $586f: $cd $73 $58

jr_04c_5872:
    ret                                           ; $5872: $c9


Call_04c_5873:
    add a                                         ; $5873: $87
    add a                                         ; $5874: $87
    add a                                         ; $5875: $87
    ld hl, $6133                                  ; $5876: $21 $33 $61
    add l                                         ; $5879: $85
    ld l, a                                       ; $587a: $6f
    jr nc, jr_04c_587e                            ; $587b: $30 $01

    inc h                                         ; $587d: $24

jr_04c_587e:
    ld a, [hl+]                                   ; $587e: $2a
    add d                                         ; $587f: $82
    ld d, a                                       ; $5880: $57
    ld a, [hl+]                                   ; $5881: $2a
    add e                                         ; $5882: $83
    ld b, a                                       ; $5883: $47
    ld a, [hl+]                                   ; $5884: $2a
    ld e, a                                       ; $5885: $5f
    ld a, [hl+]                                   ; $5886: $2a
    ld c, a                                       ; $5887: $4f
    ld a, [hl+]                                   ; $5888: $2a
    ld h, [hl]                                    ; $5889: $66
    ld l, a                                       ; $588a: $6f

jr_04c_588b:
    push de                                       ; $588b: $d5

jr_04c_588c:
    ld a, [hl]                                    ; $588c: $7e
    and a                                         ; $588d: $a7
    jr z, jr_04c_58d7                             ; $588e: $28 $47

    bit 7, d                                      ; $5890: $cb $7a
    jr nz, jr_04c_58d7                            ; $5892: $20 $43

    ld a, d                                       ; $5894: $7a
    cp $14                                        ; $5895: $fe $14
    jr nc, jr_04c_58d7                            ; $5897: $30 $3e

    push bc                                       ; $5899: $c5
    push de                                       ; $589a: $d5
    push hl                                       ; $589b: $e5
    ld c, d                                       ; $589c: $4a
    ld l, [hl]                                    ; $589d: $6e
    ld h, $00                                     ; $589e: $26 $00
    add hl, hl                                    ; $58a0: $29
    add hl, hl                                    ; $58a1: $29
    add hl, hl                                    ; $58a2: $29
    add hl, hl                                    ; $58a3: $29
    ld de, $58e5                                  ; $58a4: $11 $e5 $58
    add hl, de                                    ; $58a7: $19
    ld e, l                                       ; $58a8: $5d
    ld d, h                                       ; $58a9: $54
    ld h, c                                       ; $58aa: $61
    ld l, $00                                     ; $58ab: $2e $00
    srl h                                         ; $58ad: $cb $3c
    rr l                                          ; $58af: $cb $1d
    ld a, b                                       ; $58b1: $78
    add a                                         ; $58b2: $87
    add l                                         ; $58b3: $85
    ld l, a                                       ; $58b4: $6f
    jr nc, jr_04c_58b8                            ; $58b5: $30 $01

    inc h                                         ; $58b7: $24

jr_04c_58b8:
    ld bc, $d000                                  ; $58b8: $01 $00 $d0
    add hl, bc                                    ; $58bb: $09
    call Call_04c_6246                            ; $58bc: $cd $46 $62
    call Call_04c_6246                            ; $58bf: $cd $46 $62
    call Call_04c_6246                            ; $58c2: $cd $46 $62
    call Call_04c_6246                            ; $58c5: $cd $46 $62
    call Call_04c_6246                            ; $58c8: $cd $46 $62
    call Call_04c_6246                            ; $58cb: $cd $46 $62
    call Call_04c_6246                            ; $58ce: $cd $46 $62
    call Call_04c_6246                            ; $58d1: $cd $46 $62
    pop hl                                        ; $58d4: $e1
    pop de                                        ; $58d5: $d1
    pop bc                                        ; $58d6: $c1

jr_04c_58d7:
    inc hl                                        ; $58d7: $23
    inc d                                         ; $58d8: $14
    dec e                                         ; $58d9: $1d
    jr nz, jr_04c_588c                            ; $58da: $20 $b0

    pop de                                        ; $58dc: $d1
    ld a, b                                       ; $58dd: $78
    add $08                                       ; $58de: $c6 $08
    ld b, a                                       ; $58e0: $47
    dec c                                         ; $58e1: $0d
    jr nz, jr_04c_588b                            ; $58e2: $20 $a7

    ret                                           ; $58e4: $c9


    rst $38                                       ; $58e5: $ff
    nop                                           ; $58e6: $00
    rst $38                                       ; $58e7: $ff
    ld bc, $73ff                                  ; $58e8: $01 $ff $73
    rst $38                                       ; $58eb: $ff
    ei                                            ; $58ec: $fb
    rst $08                                       ; $58ed: $cf
    rst $08                                       ; $58ee: $cf
    rst $00                                       ; $58ef: $c7
    rst $00                                       ; $58f0: $c7
    rst $20                                       ; $58f1: $e7
    ld h, a                                       ; $58f2: $67
    di                                            ; $58f3: $f3
    inc sp                                        ; $58f4: $33
    rst $38                                       ; $58f5: $ff
    nop                                           ; $58f6: $00
    rst $38                                       ; $58f7: $ff
    pop hl                                        ; $58f8: $e1
    rst $38                                       ; $58f9: $ff
    pop af                                        ; $58fa: $f1
    ccf                                           ; $58fb: $3f
    inc sp                                        ; $58fc: $33
    ccf                                           ; $58fd: $3f
    dec sp                                        ; $58fe: $3b
    rra                                           ; $58ff: $1f
    dec de                                        ; $5900: $1b
    sbc [hl]                                      ; $5901: $9e
    sbc [hl]                                      ; $5902: $9e
    sbc [hl]                                      ; $5903: $9e
    sbc [hl]                                      ; $5904: $9e
    rst $38                                       ; $5905: $ff
    ldh a, [rIE]                                  ; $5906: $f0 $ff
    ld hl, sp-$61                                 ; $5908: $f8 $9f
    sbc c                                         ; $590a: $99
    rra                                           ; $590b: $1f
    dec de                                        ; $590c: $1b
    ccf                                           ; $590d: $3f
    dec sp                                        ; $590e: $3b
    ccf                                           ; $590f: $3f
    scf                                           ; $5910: $37
    ld a, $36                                     ; $5911: $3e $36
    ld a, [hl]                                    ; $5913: $7e
    ld a, [hl]                                    ; $5914: $7e
    rst $38                                       ; $5915: $ff
    nop                                           ; $5916: $00
    rst $38                                       ; $5917: $ff
    ldh a, [rIE]                                  ; $5918: $f0 $ff
    ld hl, sp-$61                                 ; $591a: $f8 $9f
    sbc e                                         ; $591c: $9b
    rra                                           ; $591d: $1f
    rra                                           ; $591e: $1f
    ld a, $36                                     ; $591f: $3e $36
    ld a, $36                                     ; $5921: $3e $36
    ld a, [hl]                                    ; $5923: $7e
    ld a, [hl]                                    ; $5924: $7e
    rst $38                                       ; $5925: $ff
    nop                                           ; $5926: $00
    rst $38                                       ; $5927: $ff
    nop                                           ; $5928: $00
    rst $38                                       ; $5929: $ff
    ld bc, $81ff                                  ; $592a: $01 $ff $81
    rst $38                                       ; $592d: $ff
    jp $efff                                      ; $592e: $c3 $ff $ef


    ld a, a                                       ; $5931: $7f
    ld a, a                                       ; $5932: $7f
    dec sp                                        ; $5933: $3b
    dec sp                                        ; $5934: $3b
    rst $38                                       ; $5935: $ff
    nop                                           ; $5936: $00
    rst $38                                       ; $5937: $ff
    ldh [rIE], a                                  ; $5938: $e0 $ff
    pop af                                        ; $593a: $f1
    cp a                                          ; $593b: $bf
    or e                                          ; $593c: $b3
    rra                                           ; $593d: $1f
    dec de                                        ; $593e: $1b
    ld e, $1e                                     ; $593f: $1e $1e
    sbc [hl]                                      ; $5941: $9e
    sbc [hl]                                      ; $5942: $9e
    adc [hl]                                      ; $5943: $8e
    adc [hl]                                      ; $5944: $8e
    rst $38                                       ; $5945: $ff
    ld [hl], b                                    ; $5946: $70
    rst $38                                       ; $5947: $ff
    ld hl, sp-$61                                 ; $5948: $f8 $9f
    sbc b                                         ; $594a: $98
    rra                                           ; $594b: $1f
    jr jr_04c_598d                                ; $594c: $18 $3f

    jr nc, @+$41                                  ; $594e: $30 $3f

    jr nc, jr_04c_59d1                            ; $5950: $30 $7f

    ld h, b                                       ; $5952: $60
    ld a, a                                       ; $5953: $7f
    ld h, b                                       ; $5954: $60
    rst $38                                       ; $5955: $ff
    nop                                           ; $5956: $00
    rst $38                                       ; $5957: $ff
    nop                                           ; $5958: $00
    rst $38                                       ; $5959: $ff
    nop                                           ; $595a: $00
    rst $38                                       ; $595b: $ff
    nop                                           ; $595c: $00
    rst $38                                       ; $595d: $ff
    nop                                           ; $595e: $00
    rst $38                                       ; $595f: $ff
    inc bc                                        ; $5960: $03
    rst $38                                       ; $5961: $ff
    rlca                                          ; $5962: $07
    db $fc                                        ; $5963: $fc
    inc b                                         ; $5964: $04
    rst $38                                       ; $5965: $ff
    nop                                           ; $5966: $00
    rst $38                                       ; $5967: $ff
    nop                                           ; $5968: $00
    rst $38                                       ; $5969: $ff
    nop                                           ; $596a: $00
    rst $38                                       ; $596b: $ff
    nop                                           ; $596c: $00
    rst $38                                       ; $596d: $ff
    jr @+$01                                      ; $596e: $18 $ff

    inc a                                         ; $5970: $3c
    rst $20                                       ; $5971: $e7
    and h                                         ; $5972: $a4
    rst $20                                       ; $5973: $e7
    and $ff                                       ; $5974: $e6 $ff
    nop                                           ; $5976: $00
    rst $38                                       ; $5977: $ff
    nop                                           ; $5978: $00
    rst $38                                       ; $5979: $ff
    nop                                           ; $597a: $00
    rst $38                                       ; $597b: $ff
    jr @+$01                                      ; $597c: $18 $ff

    inc a                                         ; $597e: $3c
    rst $20                                       ; $597f: $e7
    inc h                                         ; $5980: $24
    rst $20                                       ; $5981: $e7
    ld h, h                                       ; $5982: $64
    rst $08                                       ; $5983: $cf
    ld c, h                                       ; $5984: $4c
    rst $38                                       ; $5985: $ff
    nop                                           ; $5986: $00
    rst $38                                       ; $5987: $ff
    nop                                           ; $5988: $00
    rst $38                                       ; $5989: $ff
    nop                                           ; $598a: $00
    rst $38                                       ; $598b: $ff
    nop                                           ; $598c: $00

jr_04c_598d:
    rst $38                                       ; $598d: $ff
    jr nc, @+$01                                  ; $598e: $30 $ff

    ld a, b                                       ; $5990: $78
    rst $08                                       ; $5991: $cf
    ret z                                         ; $5992: $c8

    adc a                                         ; $5993: $8f
    adc b                                         ; $5994: $88
    rst $38                                       ; $5995: $ff
    nop                                           ; $5996: $00
    rst $38                                       ; $5997: $ff
    nop                                           ; $5998: $00
    rst $38                                       ; $5999: $ff
    nop                                           ; $599a: $00
    rst $38                                       ; $599b: $ff
    nop                                           ; $599c: $00
    rst $38                                       ; $599d: $ff
    nop                                           ; $599e: $00
    rst $38                                       ; $599f: $ff
    ld bc, $03ff                                  ; $59a0: $01 $ff $03
    cp $c2                                        ; $59a3: $fe $c2
    rst $38                                       ; $59a5: $ff
    nop                                           ; $59a6: $00
    rst $38                                       ; $59a7: $ff
    nop                                           ; $59a8: $00
    rst $38                                       ; $59a9: $ff
    nop                                           ; $59aa: $00
    rst $38                                       ; $59ab: $ff
    ld bc, $03ff                                  ; $59ac: $01 $ff $03
    cp $86                                        ; $59af: $fe $86
    db $fc                                        ; $59b1: $fc
    call nz, $6c7c                                ; $59b2: $c4 $7c $6c
    rst $38                                       ; $59b5: $ff
    nop                                           ; $59b6: $00
    rst $38                                       ; $59b7: $ff
    nop                                           ; $59b8: $00
    rst $38                                       ; $59b9: $ff
    nop                                           ; $59ba: $00
    rst $38                                       ; $59bb: $ff
    add b                                         ; $59bc: $80
    rst $38                                       ; $59bd: $ff
    ret nz                                        ; $59be: $c0

    ld a, a                                       ; $59bf: $7f
    ld b, b                                       ; $59c0: $40
    ld a, a                                       ; $59c1: $7f
    ld b, b                                       ; $59c2: $40
    rst $38                                       ; $59c3: $ff
    ret nz                                        ; $59c4: $c0

    nop                                           ; $59c5: $00
    nop                                           ; $59c6: $00
    nop                                           ; $59c7: $00
    nop                                           ; $59c8: $00
    nop                                           ; $59c9: $00
    nop                                           ; $59ca: $00
    nop                                           ; $59cb: $00
    nop                                           ; $59cc: $00
    nop                                           ; $59cd: $00
    nop                                           ; $59ce: $00
    nop                                           ; $59cf: $00
    nop                                           ; $59d0: $00

jr_04c_59d1:
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00
    nop                                           ; $59d3: $00
    nop                                           ; $59d4: $00
    nop                                           ; $59d5: $00
    nop                                           ; $59d6: $00
    nop                                           ; $59d7: $00
    nop                                           ; $59d8: $00
    nop                                           ; $59d9: $00
    nop                                           ; $59da: $00
    nop                                           ; $59db: $00
    nop                                           ; $59dc: $00
    nop                                           ; $59dd: $00
    nop                                           ; $59de: $00
    nop                                           ; $59df: $00
    nop                                           ; $59e0: $00
    nop                                           ; $59e1: $00
    nop                                           ; $59e2: $00
    nop                                           ; $59e3: $00
    nop                                           ; $59e4: $00
    di                                            ; $59e5: $f3
    inc sp                                        ; $59e6: $33
    ld sp, hl                                     ; $59e7: $f9
    add hl, de                                    ; $59e8: $19
    ld sp, hl                                     ; $59e9: $f9
    ld a, c                                       ; $59ea: $79
    db $fc                                        ; $59eb: $fc
    db $fc                                        ; $59ec: $fc
    call z, $c4cc                                 ; $59ed: $cc $cc $c4
    call nz, $e6e6                                ; $59f0: $c4 $e6 $e6
    ld [c], a                                     ; $59f3: $e2
    ld h, d                                       ; $59f4: $62
    adc [hl]                                      ; $59f5: $8e
    adc [hl]                                      ; $59f6: $8e
    call z, $cccc                                 ; $59f7: $cc $cc $cc
    call z, $cccc                                 ; $59fa: $cc $cc $cc
    ret z                                         ; $59fd: $c8

    ret z                                         ; $59fe: $c8

    ld c, b                                       ; $59ff: $48
    ld c, b                                       ; $5a00: $48
    ld b, b                                       ; $5a01: $40
    ld b, b                                       ; $5a02: $40
    nop                                           ; $5a03: $00
    nop                                           ; $5a04: $00
    ld a, [hl]                                    ; $5a05: $7e
    ld a, [hl]                                    ; $5a06: $7e
    ld [hl], e                                    ; $5a07: $73
    ld [hl], e                                    ; $5a08: $73
    ld h, e                                       ; $5a09: $63
    ld h, e                                       ; $5a0a: $63
    db $e3                                        ; $5a0b: $e3
    db $e3                                        ; $5a0c: $e3
    rst $00                                       ; $5a0d: $c7
    rst $00                                       ; $5a0e: $c7
    rst $00                                       ; $5a0f: $c7
    rst $00                                       ; $5a10: $c7
    adc h                                         ; $5a11: $8c
    adc h                                         ; $5a12: $8c
    adc b                                         ; $5a13: $88
    adc b                                         ; $5a14: $88
    ld a, a                                       ; $5a15: $7f
    ld a, a                                       ; $5a16: $7f
    ld [hl], e                                    ; $5a17: $73
    ld [hl], e                                    ; $5a18: $73
    ld h, e                                       ; $5a19: $63
    ld h, e                                       ; $5a1a: $63
    db $e3                                        ; $5a1b: $e3
    db $e3                                        ; $5a1c: $e3
    rst $00                                       ; $5a1d: $c7
    rst $00                                       ; $5a1e: $c7
    rst $00                                       ; $5a1f: $c7
    rst $00                                       ; $5a20: $c7
    adc h                                         ; $5a21: $8c
    adc h                                         ; $5a22: $8c
    adc b                                         ; $5a23: $88
    adc b                                         ; $5a24: $88
    ld sp, $3131                                  ; $5a25: $31 $31 $31
    ld sp, $1919                                  ; $5a28: $31 $19 $19
    sbc b                                         ; $5a2b: $98
    sbc b                                         ; $5a2c: $98
    sbc b                                         ; $5a2d: $98
    sbc b                                         ; $5a2e: $98
    adc b                                         ; $5a2f: $88
    adc b                                         ; $5a30: $88
    adc h                                         ; $5a31: $8c
    adc h                                         ; $5a32: $8c
    adc h                                         ; $5a33: $8c
    adc h                                         ; $5a34: $8c
    adc h                                         ; $5a35: $8c
    adc h                                         ; $5a36: $8c
    adc h                                         ; $5a37: $8c
    adc h                                         ; $5a38: $8c
    adc h                                         ; $5a39: $8c
    adc h                                         ; $5a3a: $8c
    call z, $cccc                                 ; $5a3b: $cc $cc $cc
    call z, $c8c8                                 ; $5a3e: $cc $c8 $c8
    ld c, b                                       ; $5a41: $48
    ld c, b                                       ; $5a42: $48
    ld [$7f08], sp                                ; $5a43: $08 $08 $7f
    ld l, [hl]                                    ; $5a46: $6e
    ld a, a                                       ; $5a47: $7f
    ld e, a                                       ; $5a48: $5f
    di                                            ; $5a49: $f3
    di                                            ; $5a4a: $f3
    db $e3                                        ; $5a4b: $e3
    db $e3                                        ; $5a4c: $e3
    rst $20                                       ; $5a4d: $e7
    rst $20                                       ; $5a4e: $e7
    rst $00                                       ; $5a4f: $c7
    add $cf                                       ; $5a50: $c6 $cf
    call z, $8c8f                                 ; $5a52: $cc $8f $8c
    db $fc                                        ; $5a55: $fc
    inc b                                         ; $5a56: $04
    cp $06                                        ; $5a57: $fe $06
    rst $38                                       ; $5a59: $ff
    inc bc                                        ; $5a5a: $03
    rst $38                                       ; $5a5b: $ff
    ld bc, $03ff                                  ; $5a5c: $01 $ff $03
    rst $38                                       ; $5a5f: $ff
    rlca                                          ; $5a60: $07
    db $fc                                        ; $5a61: $fc
    inc b                                         ; $5a62: $04
    db $fc                                        ; $5a63: $fc
    inc b                                         ; $5a64: $04
    ld h, e                                       ; $5a65: $63
    ld h, d                                       ; $5a66: $62
    inc sp                                        ; $5a67: $33
    inc sp                                        ; $5a68: $33
    ld sp, $1931                                  ; $5a69: $31 $31 $19
    add hl, de                                    ; $5a6c: $19
    sbc c                                         ; $5a6d: $99
    sbc c                                         ; $5a6e: $99
    sbc c                                         ; $5a6f: $99
    sbc c                                         ; $5a70: $99
    ret                                           ; $5a71: $c9


    ret                                           ; $5a72: $c9


    ld c, c                                       ; $5a73: $49
    ld c, c                                       ; $5a74: $49
    rst $08                                       ; $5a75: $cf
    ld c, c                                       ; $5a76: $49
    rst $08                                       ; $5a77: $cf
    ret                                           ; $5a78: $c9


    sbc a                                         ; $5a79: $9f
    sbc a                                         ; $5a7a: $9f
    sbc l                                         ; $5a7b: $9d
    sbc l                                         ; $5a7c: $9d
    sbc b                                         ; $5a7d: $98
    sbc b                                         ; $5a7e: $98
    cp c                                          ; $5a7f: $b9
    cp c                                          ; $5a80: $b9
    ld sp, $3331                                  ; $5a81: $31 $31 $33
    inc sp                                        ; $5a84: $33
    sbc a                                         ; $5a85: $9f
    sbc c                                         ; $5a86: $99
    rra                                           ; $5a87: $1f
    ld de, $bfbf                                  ; $5a88: $11 $bf $bf
    cp e                                          ; $5a8b: $bb
    cp e                                          ; $5a8c: $bb
    pop af                                        ; $5a8d: $f1
    pop af                                        ; $5a8e: $f1
    di                                            ; $5a8f: $f3
    di                                            ; $5a90: $f3
    db $e3                                        ; $5a91: $e3
    db $e3                                        ; $5a92: $e3
    ld h, [hl]                                    ; $5a93: $66
    ld h, [hl]                                    ; $5a94: $66
    cp $ee                                        ; $5a95: $fe $ee
    ld a, $3e                                     ; $5a97: $3e $3e
    inc sp                                        ; $5a99: $33
    inc sp                                        ; $5a9a: $33
    ld sp, $1931                                  ; $5a9b: $31 $31 $19
    add hl, de                                    ; $5a9e: $19
    sbc c                                         ; $5a9f: $99
    sbc c                                         ; $5aa0: $99
    sbc c                                         ; $5aa1: $99
    sbc c                                         ; $5aa2: $99
    adc b                                         ; $5aa3: $88
    adc b                                         ; $5aa4: $88
    inc a                                         ; $5aa5: $3c
    inc l                                         ; $5aa6: $2c
    add hl, sp                                    ; $5aa7: $39
    add hl, sp                                    ; $5aa8: $39
    add hl, sp                                    ; $5aa9: $39
    add hl, sp                                    ; $5aaa: $39
    add hl, de                                    ; $5aab: $19
    add hl, de                                    ; $5aac: $19
    add hl, de                                    ; $5aad: $19
    add hl, de                                    ; $5aae: $19
    sbc e                                         ; $5aaf: $9b
    sbc e                                         ; $5ab0: $9b
    sbc e                                         ; $5ab1: $9b
    sbc e                                         ; $5ab2: $9b
    sub e                                         ; $5ab3: $93
    sub e                                         ; $5ab4: $93
    rst $38                                       ; $5ab5: $ff
    add b                                         ; $5ab6: $80
    rst $38                                       ; $5ab7: $ff
    add b                                         ; $5ab8: $80
    rst $38                                       ; $5ab9: $ff
    jr nc, @+$01                                  ; $5aba: $30 $ff

    ld a, b                                       ; $5abc: $78
    rst $08                                       ; $5abd: $cf
    ret z                                         ; $5abe: $c8

    adc a                                         ; $5abf: $8f
    adc b                                         ; $5ac0: $88
    sbc a                                         ; $5ac1: $9f
    sbc b                                         ; $5ac2: $98
    rra                                           ; $5ac3: $1f
    stop                                          ; $5ac4: $10 $00
    nop                                           ; $5ac6: $00
    nop                                           ; $5ac7: $00
    nop                                           ; $5ac8: $00
    nop                                           ; $5ac9: $00
    nop                                           ; $5aca: $00
    nop                                           ; $5acb: $00
    nop                                           ; $5acc: $00
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
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
    nop                                           ; $5ada: $00
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
    ldh a, [$30]                                  ; $5ae5: $f0 $30
    ld hl, sp+$38                                 ; $5ae7: $f8 $38
    ld hl, sp+$18                                 ; $5ae9: $f8 $18
    ld hl, sp+$18                                 ; $5aeb: $f8 $18
    db $fc                                        ; $5aed: $fc
    inc c                                         ; $5aee: $0c
    db $fc                                        ; $5aef: $fc
    inc c                                         ; $5af0: $0c
    rst $38                                       ; $5af1: $ff
    rrca                                          ; $5af2: $0f
    rst $38                                       ; $5af3: $ff
    rlca                                          ; $5af4: $07
    nop                                           ; $5af5: $00
    nop                                           ; $5af6: $00
    nop                                           ; $5af7: $00
    nop                                           ; $5af8: $00
    nop                                           ; $5af9: $00
    nop                                           ; $5afa: $00
    nop                                           ; $5afb: $00
    nop                                           ; $5afc: $00
    nop                                           ; $5afd: $00
    nop                                           ; $5afe: $00
    ld h, e                                       ; $5aff: $63
    ld h, e                                       ; $5b00: $63
    rst $38                                       ; $5b01: $ff
    rst $38                                       ; $5b02: $ff
    rst $38                                       ; $5b03: $ff
    cp h                                          ; $5b04: $bc
    ld [$0008], sp                                ; $5b05: $08 $08 $00
    nop                                           ; $5b08: $00
    nop                                           ; $5b09: $00
    nop                                           ; $5b0a: $00
    nop                                           ; $5b0b: $00
    nop                                           ; $5b0c: $00
    nop                                           ; $5b0d: $00
    nop                                           ; $5b0e: $00
    sbc a                                         ; $5b0f: $9f
    sbc a                                         ; $5b10: $9f
    rst $38                                       ; $5b11: $ff
    rst $38                                       ; $5b12: $ff
    rst $38                                       ; $5b13: $ff
    ld [hl], b                                    ; $5b14: $70
    ld [$0008], sp                                ; $5b15: $08 $08 $00
    nop                                           ; $5b18: $00
    nop                                           ; $5b19: $00
    nop                                           ; $5b1a: $00
    nop                                           ; $5b1b: $00
    nop                                           ; $5b1c: $00
    nop                                           ; $5b1d: $00

jr_04c_5b1e:
    nop                                           ; $5b1e: $00
    sbc a                                         ; $5b1f: $9f
    sbc a                                         ; $5b20: $9f
    rst $38                                       ; $5b21: $ff
    rst $38                                       ; $5b22: $ff
    rst $38                                       ; $5b23: $ff
    pop af                                        ; $5b24: $f1
    inc b                                         ; $5b25: $04
    inc b                                         ; $5b26: $04
    nop                                           ; $5b27: $00
    nop                                           ; $5b28: $00
    nop                                           ; $5b29: $00
    nop                                           ; $5b2a: $00
    nop                                           ; $5b2b: $00
    nop                                           ; $5b2c: $00
    nop                                           ; $5b2d: $00
    nop                                           ; $5b2e: $00
    inc a                                         ; $5b2f: $3c
    inc a                                         ; $5b30: $3c
    rst $38                                       ; $5b31: $ff
    rst $38                                       ; $5b32: $ff
    rst $38                                       ; $5b33: $ff
    rst $20                                       ; $5b34: $e7
    nop                                           ; $5b35: $00
    nop                                           ; $5b36: $00
    nop                                           ; $5b37: $00
    nop                                           ; $5b38: $00
    nop                                           ; $5b39: $00
    nop                                           ; $5b3a: $00
    nop                                           ; $5b3b: $00
    nop                                           ; $5b3c: $00
    nop                                           ; $5b3d: $00
    nop                                           ; $5b3e: $00
    and $e6                                       ; $5b3f: $e6 $e6
    rst $38                                       ; $5b41: $ff
    rst $38                                       ; $5b42: $ff
    rst $38                                       ; $5b43: $ff
    cp l                                          ; $5b44: $bd
    rrca                                          ; $5b45: $0f
    inc c                                         ; $5b46: $0c
    rra                                           ; $5b47: $1f
    jr jr_04c_5b69                                ; $5b48: $18 $1f

    jr jr_04c_5b6b                                ; $5b4a: $18 $1f

    jr jr_04c_5b8d                                ; $5b4c: $18 $3f

    jr nc, jr_04c_5b8f                            ; $5b4e: $30 $3f

    jr nc, @+$01                                  ; $5b50: $30 $ff

    ldh a, [rIE]                                  ; $5b52: $f0 $ff
    ldh [$fe], a                                  ; $5b54: $e0 $fe
    ld b, $ff                                     ; $5b56: $06 $ff
    inc bc                                        ; $5b58: $03
    rst $38                                       ; $5b59: $ff
    ld bc, $01ff                                  ; $5b5a: $01 $ff $01
    rst $38                                       ; $5b5d: $ff
    nop                                           ; $5b5e: $00
    rst $38                                       ; $5b5f: $ff
    nop                                           ; $5b60: $00
    rst $38                                       ; $5b61: $ff
    nop                                           ; $5b62: $00
    rst $38                                       ; $5b63: $ff
    nop                                           ; $5b64: $00
    ld c, b                                       ; $5b65: $48
    ld c, b                                       ; $5b66: $48
    nop                                           ; $5b67: $00
    nop                                           ; $5b68: $00

jr_04c_5b69:
    nop                                           ; $5b69: $00
    nop                                           ; $5b6a: $00

jr_04c_5b6b:
    add b                                         ; $5b6b: $80
    add b                                         ; $5b6c: $80
    add b                                         ; $5b6d: $80
    add b                                         ; $5b6e: $80
    call z, $ffcc                                 ; $5b6f: $cc $cc $ff
    ld a, a                                       ; $5b72: $7f
    rst $38                                       ; $5b73: $ff
    inc sp                                        ; $5b74: $33
    ld [hl+], a                                   ; $5b75: $22
    ld [hl+], a                                   ; $5b76: $22
    ld [bc], a                                    ; $5b77: $02
    ld [bc], a                                    ; $5b78: $02
    nop                                           ; $5b79: $00
    nop                                           ; $5b7a: $00
    nop                                           ; $5b7b: $00
    nop                                           ; $5b7c: $00
    nop                                           ; $5b7d: $00
    nop                                           ; $5b7e: $00
    ld h, a                                       ; $5b7f: $67
    ld h, a                                       ; $5b80: $67
    rst $38                                       ; $5b81: $ff
    rst $38                                       ; $5b82: $ff
    rst $38                                       ; $5b83: $ff
    sbc b                                         ; $5b84: $98
    ld b, h                                       ; $5b85: $44
    ld b, h                                       ; $5b86: $44
    inc b                                         ; $5b87: $04
    inc b                                         ; $5b88: $04
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    nop                                           ; $5b8b: $00
    nop                                           ; $5b8c: $00

jr_04c_5b8d:
    nop                                           ; $5b8d: $00
    nop                                           ; $5b8e: $00

jr_04c_5b8f:
    rst $08                                       ; $5b8f: $cf
    rst $08                                       ; $5b90: $cf
    rst $38                                       ; $5b91: $ff
    rst $38                                       ; $5b92: $ff
    rst $38                                       ; $5b93: $ff
    jr nc, jr_04c_5b1e                            ; $5b94: $30 $88

    adc b                                         ; $5b96: $88
    ld [$0008], sp                                ; $5b97: $08 $08 $00
    nop                                           ; $5b9a: $00
    nop                                           ; $5b9b: $00
    nop                                           ; $5b9c: $00
    nop                                           ; $5b9d: $00
    nop                                           ; $5b9e: $00
    add hl, sp                                    ; $5b9f: $39
    add hl, sp                                    ; $5ba0: $39
    rst $38                                       ; $5ba1: $ff
    rst $38                                       ; $5ba2: $ff
    rst $38                                       ; $5ba3: $ff
    add $93                                       ; $5ba4: $c6 $93
    sub e                                         ; $5ba6: $93
    nop                                           ; $5ba7: $00
    nop                                           ; $5ba8: $00
    nop                                           ; $5ba9: $00
    nop                                           ; $5baa: $00
    nop                                           ; $5bab: $00
    nop                                           ; $5bac: $00
    nop                                           ; $5bad: $00
    nop                                           ; $5bae: $00
    call z, $ffcc                                 ; $5baf: $cc $cc $ff
    rst $38                                       ; $5bb2: $ff
    rst $38                                       ; $5bb3: $ff
    inc sp                                        ; $5bb4: $33
    ccf                                           ; $5bb5: $3f
    jr nc, @+$41                                  ; $5bb6: $30 $3f

    jr nz, jr_04c_5c39                            ; $5bb8: $20 $7f

    ld h, b                                       ; $5bba: $60
    ld a, a                                       ; $5bbb: $7f
    ld h, b                                       ; $5bbc: $60
    ld a, a                                       ; $5bbd: $7f
    ld b, b                                       ; $5bbe: $40
    rst $38                                       ; $5bbf: $ff
    ret nz                                        ; $5bc0: $c0

    rst $38                                       ; $5bc1: $ff
    ret nz                                        ; $5bc2: $c0

    rst $38                                       ; $5bc3: $ff
    add b                                         ; $5bc4: $80
    nop                                           ; $5bc5: $00
    nop                                           ; $5bc6: $00
    nop                                           ; $5bc7: $00
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00
    nop                                           ; $5bca: $00
    nop                                           ; $5bcb: $00
    nop                                           ; $5bcc: $00
    nop                                           ; $5bcd: $00
    nop                                           ; $5bce: $00
    nop                                           ; $5bcf: $00
    nop                                           ; $5bd0: $00
    nop                                           ; $5bd1: $00
    nop                                           ; $5bd2: $00
    nop                                           ; $5bd3: $00
    nop                                           ; $5bd4: $00
    nop                                           ; $5bd5: $00
    nop                                           ; $5bd6: $00
    nop                                           ; $5bd7: $00
    nop                                           ; $5bd8: $00
    nop                                           ; $5bd9: $00
    nop                                           ; $5bda: $00
    nop                                           ; $5bdb: $00
    nop                                           ; $5bdc: $00
    nop                                           ; $5bdd: $00
    nop                                           ; $5bde: $00
    nop                                           ; $5bdf: $00
    nop                                           ; $5be0: $00
    nop                                           ; $5be1: $00
    nop                                           ; $5be2: $00
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    rst $38                                       ; $5be5: $ff
    inc bc                                        ; $5be6: $03
    db $fc                                        ; $5be7: $fc
    inc b                                         ; $5be8: $04
    db $fc                                        ; $5be9: $fc
    ld [hl], h                                    ; $5bea: $74
    sbc h                                         ; $5beb: $9c
    sbc h                                         ; $5bec: $9c
    adc h                                         ; $5bed: $8c
    adc h                                         ; $5bee: $8c
    add $c6                                       ; $5bef: $c6 $c6

jr_04c_5bf1:
    and $66                                       ; $5bf1: $e6 $66
    ld a, [c]                                     ; $5bf3: $f2
    ld [hl-], a                                   ; $5bf4: $32
    rst $38                                       ; $5bf5: $ff
    ld b, $f9                                     ; $5bf6: $06 $f9
    adc c                                         ; $5bf8: $89
    ld sp, hl                                     ; $5bf9: $f9
    adc c                                         ; $5bfa: $89
    ld sp, hl                                     ; $5bfb: $f9
    reti                                          ; $5bfc: $d9


    ld [hl], e                                    ; $5bfd: $73
    ld d, e                                       ; $5bfe: $53
    ld [hl], e                                    ; $5bff: $73
    ld d, d                                       ; $5c00: $52
    ld h, a                                       ; $5c01: $67
    ld h, a                                       ; $5c02: $67
    ld h, [hl]                                    ; $5c03: $66
    ld h, [hl]                                    ; $5c04: $66
    rst $38                                       ; $5c05: $ff
    nop                                           ; $5c06: $00
    rst $38                                       ; $5c07: $ff
    jr jr_04c_5bf1                                ; $5c08: $18 $e7

    inc h                                         ; $5c0a: $24
    rst $20                                       ; $5c0b: $e7
    ld h, h                                       ; $5c0c: $64
    rst $08                                       ; $5c0d: $cf
    ld c, h                                       ; $5c0e: $4c
    rst $08                                       ; $5c0f: $cf
    ret                                           ; $5c10: $c9


    rst $18                                       ; $5c11: $df
    rst $18                                       ; $5c12: $df
    ld e, c                                       ; $5c13: $59
    ld e, c                                       ; $5c14: $59
    rst $38                                       ; $5c15: $ff
    nop                                           ; $5c16: $00
    rst $38                                       ; $5c17: $ff
    inc bc                                        ; $5c18: $03
    db $fc                                        ; $5c19: $fc
    inc b                                         ; $5c1a: $04
    db $fc                                        ; $5c1b: $fc
    inc b                                         ; $5c1c: $04
    db $fc                                        ; $5c1d: $fc
    inc b                                         ; $5c1e: $04
    db $fc                                        ; $5c1f: $fc
    call nz, Call_000_3e3e                        ; $5c20: $c4 $3e $3e
    ld h, $26                                     ; $5c23: $26 $26
    rst $38                                       ; $5c25: $ff
    ld b, $f9                                     ; $5c26: $06 $f9
    add hl, bc                                    ; $5c28: $09
    ld sp, hl                                     ; $5c29: $f9
    adc c                                         ; $5c2a: $89
    di                                            ; $5c2b: $f3
    sub e                                         ; $5c2c: $93
    di                                            ; $5c2d: $f3
    sub d                                         ; $5c2e: $92
    rst $20                                       ; $5c2f: $e7
    and $67                                       ; $5c30: $e6 $67
    ld h, h                                       ; $5c32: $64
    ld h, a                                       ; $5c33: $67
    ld h, h                                       ; $5c34: $64
    rst $38                                       ; $5c35: $ff
    nop                                           ; $5c36: $00
    rst $38                                       ; $5c37: $ff
    nop                                           ; $5c38: $00

jr_04c_5c39:
    rst $38                                       ; $5c39: $ff
    ld bc, $19ff                                  ; $5c3a: $01 $ff $19
    rst $30                                       ; $5c3d: $f7
    dec d                                         ; $5c3e: $15
    di                                            ; $5c3f: $f3
    inc de                                        ; $5c40: $13
    ld sp, hl                                     ; $5c41: $f9
    add hl, bc                                    ; $5c42: $09
    ld sp, hl                                     ; $5c43: $f9
    add hl, bc                                    ; $5c44: $09
    rst $38                                       ; $5c45: $ff
    nop                                           ; $5c46: $00
    rst $38                                       ; $5c47: $ff
    ld b, $fb                                     ; $5c48: $06 $fb
    adc d                                         ; $5c4a: $8a
    ld [hl], e                                    ; $5c4b: $73
    ld d, d                                       ; $5c4c: $52
    ld [hl], a                                    ; $5c4d: $77
    ld d, h                                       ; $5c4e: $54
    ld [hl], a                                    ; $5c4f: $77
    ld d, h                                       ; $5c50: $54
    daa                                           ; $5c51: $27
    daa                                           ; $5c52: $27

jr_04c_5c53:
    dec h                                         ; $5c53: $25
    dec h                                         ; $5c54: $25
    rst $38                                       ; $5c55: $ff
    nop                                           ; $5c56: $00
    rst $38                                       ; $5c57: $ff
    nop                                           ; $5c58: $00
    rst $38                                       ; $5c59: $ff
    jr nc, @-$1f                                  ; $5c5a: $30 $df

    ld d, b                                       ; $5c5c: $50
    rst $18                                       ; $5c5d: $df
    ld d, d                                       ; $5c5e: $52
    sbc l                                         ; $5c5f: $9d
    sub l                                         ; $5c60: $95
    cp h                                          ; $5c61: $bc
    cp h                                          ; $5c62: $bc
    inc h                                         ; $5c63: $24
    inc h                                         ; $5c64: $24
    rst $38                                       ; $5c65: $ff
    nop                                           ; $5c66: $00
    rst $38                                       ; $5c67: $ff
    nop                                           ; $5c68: $00
    rst $38                                       ; $5c69: $ff
    jr jr_04c_5c53                                ; $5c6a: $18 $e7

    dec h                                         ; $5c6c: $25
    rst $20                                       ; $5c6d: $e7
    dec h                                         ; $5c6e: $25
    or $76                                        ; $5c6f: $f6 $76
    sub d                                         ; $5c71: $92
    sub d                                         ; $5c72: $92
    sub d                                         ; $5c73: $92
    sub d                                         ; $5c74: $92
    rst $38                                       ; $5c75: $ff
    nop                                           ; $5c76: $00
    rst $38                                       ; $5c77: $ff
    ld b, b                                       ; $5c78: $40
    cp a                                          ; $5c79: $bf
    and b                                         ; $5c7a: $a0
    ccf                                           ; $5c7b: $3f
    jr nz, jr_04c_5cfd                            ; $5c7c: $20 $7f

    ld b, b                                       ; $5c7e: $40
    ld a, a                                       ; $5c7f: $7f
    ld b, b                                       ; $5c80: $40
    ld a, a                                       ; $5c81: $7f
    ld e, b                                       ; $5c82: $58
    rst $28                                       ; $5c83: $ef
    xor b                                         ; $5c84: $a8
    rst $38                                       ; $5c85: $ff
    nop                                           ; $5c86: $00
    rst $38                                       ; $5c87: $ff
    nop                                           ; $5c88: $00
    rst $38                                       ; $5c89: $ff
    nop                                           ; $5c8a: $00
    rst $38                                       ; $5c8b: $ff
    nop                                           ; $5c8c: $00
    rst $38                                       ; $5c8d: $ff
    nop                                           ; $5c8e: $00
    rst $38                                       ; $5c8f: $ff
    inc bc                                        ; $5c90: $03
    cp $02                                        ; $5c91: $fe $02
    rst $38                                       ; $5c93: $ff
    ld bc, $00ff                                  ; $5c94: $01 $ff $00
    rst $38                                       ; $5c97: $ff
    nop                                           ; $5c98: $00
    rst $38                                       ; $5c99: $ff
    nop                                           ; $5c9a: $00
    rst $38                                       ; $5c9b: $ff
    nop                                           ; $5c9c: $00
    rst $38                                       ; $5c9d: $ff
    ld bc, $62fe                                  ; $5c9e: $01 $fe $62
    db $dd                                        ; $5ca1: $dd
    push de                                       ; $5ca2: $d5
    ld c, l                                       ; $5ca3: $4d
    ld c, l                                       ; $5ca4: $4d
    rst $38                                       ; $5ca5: $ff
    nop                                           ; $5ca6: $00
    rst $38                                       ; $5ca7: $ff
    nop                                           ; $5ca8: $00
    rst $38                                       ; $5ca9: $ff
    nop                                           ; $5caa: $00
    rst $38                                       ; $5cab: $ff
    nop                                           ; $5cac: $00
    rst $38                                       ; $5cad: $ff
    add b                                         ; $5cae: $80
    rst $38                                       ; $5caf: $ff
    or b                                          ; $5cb0: $b0
    rst $28                                       ; $5cb1: $ef
    xor $dd                                       ; $5cb2: $ee $dd
    ld d, l                                       ; $5cb4: $55
    rst $38                                       ; $5cb5: $ff
    nop                                           ; $5cb6: $00
    rst $38                                       ; $5cb7: $ff
    nop                                           ; $5cb8: $00
    rst $38                                       ; $5cb9: $ff
    nop                                           ; $5cba: $00
    rst $38                                       ; $5cbb: $ff
    nop                                           ; $5cbc: $00
    rst $38                                       ; $5cbd: $ff
    ld bc, $62fe                                  ; $5cbe: $01 $fe $62
    db $dd                                        ; $5cc1: $dd
    ld d, l                                       ; $5cc2: $55
    db $ed                                        ; $5cc3: $ed
    ld l, l                                       ; $5cc4: $6d
    rst $38                                       ; $5cc5: $ff
    nop                                           ; $5cc6: $00
    rst $38                                       ; $5cc7: $ff
    nop                                           ; $5cc8: $00
    rst $38                                       ; $5cc9: $ff
    nop                                           ; $5cca: $00
    rst $38                                       ; $5ccb: $ff
    nop                                           ; $5ccc: $00
    rst $38                                       ; $5ccd: $ff
    add b                                         ; $5cce: $80
    rst $38                                       ; $5ccf: $ff
    add b                                         ; $5cd0: $80
    rst $38                                       ; $5cd1: $ff
    nop                                           ; $5cd2: $00
    rst $38                                       ; $5cd3: $ff
    nop                                           ; $5cd4: $00
    nop                                           ; $5cd5: $00
    nop                                           ; $5cd6: $00
    nop                                           ; $5cd7: $00
    nop                                           ; $5cd8: $00
    nop                                           ; $5cd9: $00
    nop                                           ; $5cda: $00
    nop                                           ; $5cdb: $00
    nop                                           ; $5cdc: $00
    nop                                           ; $5cdd: $00
    nop                                           ; $5cde: $00
    nop                                           ; $5cdf: $00
    nop                                           ; $5ce0: $00
    nop                                           ; $5ce1: $00
    nop                                           ; $5ce2: $00
    nop                                           ; $5ce3: $00
    nop                                           ; $5ce4: $00
    di                                            ; $5ce5: $f3
    ld [hl], e                                    ; $5ce6: $73
    sbc e                                         ; $5ce7: $9b
    sbc e                                         ; $5ce8: $9b
    adc c                                         ; $5ce9: $89
    adc c                                         ; $5cea: $89
    ret nz                                        ; $5ceb: $c0

    ret nz                                        ; $5cec: $c0

    ldh [$60], a                                  ; $5ced: $e0 $60
    ldh [rNR41], a                                ; $5cef: $e0 $20
    pop af                                        ; $5cf1: $f1
    ld sp, $1fff                                  ; $5cf2: $31 $ff $1f
    ld b, h                                       ; $5cf5: $44
    ld b, h                                       ; $5cf6: $44
    ld c, h                                       ; $5cf7: $4c
    ld c, h                                       ; $5cf8: $4c
    ld c, c                                       ; $5cf9: $49
    ld c, c                                       ; $5cfa: $49
    nop                                           ; $5cfb: $00
    nop                                           ; $5cfc: $00

jr_04c_5cfd:
    nop                                           ; $5cfd: $00
    nop                                           ; $5cfe: $00
    nop                                           ; $5cff: $00
    nop                                           ; $5d00: $00
    sbc c                                         ; $5d01: $99
    sbc c                                         ; $5d02: $99
    rst $38                                       ; $5d03: $ff
    rst $38                                       ; $5d04: $ff
    or e                                          ; $5d05: $b3
    or e                                          ; $5d06: $b3
    db $e3                                        ; $5d07: $e3
    db $e3                                        ; $5d08: $e3
    inc h                                         ; $5d09: $24
    inc h                                         ; $5d0a: $24
    nop                                           ; $5d0b: $00
    nop                                           ; $5d0c: $00
    nop                                           ; $5d0d: $00
    nop                                           ; $5d0e: $00
    nop                                           ; $5d0f: $00
    nop                                           ; $5d10: $00
    rst $20                                       ; $5d11: $e7
    rst $20                                       ; $5d12: $e7
    rst $38                                       ; $5d13: $ff
    rst $38                                       ; $5d14: $ff
    ld [hl+], a                                   ; $5d15: $22
    ld [hl+], a                                   ; $5d16: $22
    ld [de], a                                    ; $5d17: $12
    ld [de], a                                    ; $5d18: $12
    sub d                                         ; $5d19: $92
    sub d                                         ; $5d1a: $92
    nop                                           ; $5d1b: $00
    nop                                           ; $5d1c: $00
    nop                                           ; $5d1d: $00
    nop                                           ; $5d1e: $00
    nop                                           ; $5d1f: $00
    nop                                           ; $5d20: $00
    dec sp                                        ; $5d21: $3b
    dec sp                                        ; $5d22: $3b
    rst $38                                       ; $5d23: $ff
    rst $38                                       ; $5d24: $ff
    ld c, a                                       ; $5d25: $4f
    ld c, h                                       ; $5d26: $4c
    ld c, a                                       ; $5d27: $4f
    ld c, [hl]                                    ; $5d28: $4e
    ld c, c                                       ; $5d29: $49
    ld c, c                                       ; $5d2a: $49
    ld bc, $0301                                  ; $5d2b: $01 $01 $03
    inc bc                                        ; $5d2e: $03
    inc bc                                        ; $5d2f: $03
    ld [bc], a                                    ; $5d30: $02
    or a                                          ; $5d31: $b7
    or [hl]                                       ; $5d32: $b6
    rst $38                                       ; $5d33: $ff
    db $fc                                        ; $5d34: $fc
    db $fc                                        ; $5d35: $fc
    inc a                                         ; $5d36: $3c
    db $e4                                        ; $5d37: $e4
    inc h                                         ; $5d38: $24
    ld a, [c]                                     ; $5d39: $f2
    ld [de], a                                    ; $5d3a: $12
    ld hl, sp+$08                                 ; $5d3b: $f8 $08
    ld hl, sp+$08                                 ; $5d3d: $f8 $08
    db $fc                                        ; $5d3f: $fc
    inc b                                         ; $5d40: $04
    db $fd                                        ; $5d41: $fd
    dec b                                         ; $5d42: $05
    rst $38                                       ; $5d43: $ff
    inc bc                                        ; $5d44: $03
    xor c                                         ; $5d45: $a9
    xor c                                         ; $5d46: $a9
    xor c                                         ; $5d47: $a9
    xor c                                         ; $5d48: $a9
    adc c                                         ; $5d49: $89
    adc c                                         ; $5d4a: $89
    nop                                           ; $5d4b: $00
    nop                                           ; $5d4c: $00
    nop                                           ; $5d4d: $00
    nop                                           ; $5d4e: $00
    nop                                           ; $5d4f: $00
    nop                                           ; $5d50: $00
    sub e                                         ; $5d51: $93
    sub e                                         ; $5d52: $93
    rst $38                                       ; $5d53: $ff
    rst $38                                       ; $5d54: $ff
    ld c, [hl]                                    ; $5d55: $4e
    ld c, [hl]                                    ; $5d56: $4e
    jp z, Jump_04c_52ca                           ; $5d57: $ca $ca $52

    ld d, d                                       ; $5d5a: $52
    nop                                           ; $5d5b: $00
    nop                                           ; $5d5c: $00
    nop                                           ; $5d5d: $00
    nop                                           ; $5d5e: $00
    nop                                           ; $5d5f: $00
    nop                                           ; $5d60: $00
    ld [hl-], a                                   ; $5d61: $32
    ld [hl-], a                                   ; $5d62: $32
    rst $38                                       ; $5d63: $ff
    rst $38                                       ; $5d64: $ff
    ld c, d                                       ; $5d65: $4a
    ld c, d                                       ; $5d66: $4a
    ld c, d                                       ; $5d67: $4a
    ld c, d                                       ; $5d68: $4a
    ld c, d                                       ; $5d69: $4a
    ld c, d                                       ; $5d6a: $4a
    nop                                           ; $5d6b: $00
    nop                                           ; $5d6c: $00
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    nop                                           ; $5d70: $00
    ld h, [hl]                                    ; $5d71: $66
    ld h, [hl]                                    ; $5d72: $66
    rst $38                                       ; $5d73: $ff
    rst $38                                       ; $5d74: $ff
    rst $08                                       ; $5d75: $cf
    ret z                                         ; $5d76: $c8

    sbc a                                         ; $5d77: $9f
    sub b                                         ; $5d78: $90
    sbc a                                         ; $5d79: $9f
    sub b                                         ; $5d7a: $90
    cp a                                          ; $5d7b: $bf
    and b                                         ; $5d7c: $a0
    ccf                                           ; $5d7d: $3f
    jr nz, @+$41                                  ; $5d7e: $20 $3f

    jr nz, @+$41                                  ; $5d80: $20 $3f

    jr nz, @+$01                                  ; $5d82: $20 $ff

    ret nz                                        ; $5d84: $c0

    rst $38                                       ; $5d85: $ff
    ld bc, $03ff                                  ; $5d86: $01 $ff $03
    cp $02                                        ; $5d89: $fe $02
    rst $38                                       ; $5d8b: $ff
    inc bc                                        ; $5d8c: $03
    rst $38                                       ; $5d8d: $ff
    ld bc, $00ff                                  ; $5d8e: $01 $ff $00
    rst $38                                       ; $5d91: $ff
    nop                                           ; $5d92: $00
    rst $38                                       ; $5d93: $ff
    nop                                           ; $5d94: $00
    ld l, c                                       ; $5d95: $69
    ld l, c                                       ; $5d96: $69
    xor e                                         ; $5d97: $ab
    xor e                                         ; $5d98: $ab
    xor d                                         ; $5d99: $aa
    xor d                                         ; $5d9a: $aa
    ld b, d                                       ; $5d9b: $42
    ld b, d                                       ; $5d9c: $42
    nop                                           ; $5d9d: $00
    nop                                           ; $5d9e: $00
    add b                                         ; $5d9f: $80
    add b                                         ; $5da0: $80
    sub c                                         ; $5da1: $91
    sub c                                         ; $5da2: $91
    rst $38                                       ; $5da3: $ff
    ld a, a                                       ; $5da4: $7f
    db $dd                                        ; $5da5: $dd
    db $dd                                        ; $5da6: $dd
    ld d, h                                       ; $5da7: $54
    ld d, h                                       ; $5da8: $54
    xor $ee                                       ; $5da9: $ee $ee
    xor d                                         ; $5dab: $aa
    xor d                                         ; $5dac: $aa
    nop                                           ; $5dad: $00
    nop                                           ; $5dae: $00
    nop                                           ; $5daf: $00
    nop                                           ; $5db0: $00
    adc e                                         ; $5db1: $8b
    adc e                                         ; $5db2: $8b
    rst $38                                       ; $5db3: $ff
    rst $38                                       ; $5db4: $ff
    xor c                                         ; $5db5: $a9
    xor c                                         ; $5db6: $a9
    xor e                                         ; $5db7: $ab
    xor e                                         ; $5db8: $ab
    xor d                                         ; $5db9: $aa
    xor d                                         ; $5dba: $aa
    adc d                                         ; $5dbb: $8a
    adc d                                         ; $5dbc: $8a
    ld bc, $0101                                  ; $5dbd: $01 $01 $01
    ld bc, $1919                                  ; $5dc0: $01 $19 $19
    rst $38                                       ; $5dc3: $ff
    cp $ff                                        ; $5dc4: $fe $ff
    ret nz                                        ; $5dc6: $c0

    ld a, a                                       ; $5dc7: $7f
    ld b, b                                       ; $5dc8: $40
    rst $38                                       ; $5dc9: $ff
    add b                                         ; $5dca: $80
    rst $38                                       ; $5dcb: $ff
    add b                                         ; $5dcc: $80
    rst $38                                       ; $5dcd: $ff
    nop                                           ; $5dce: $00
    rst $38                                       ; $5dcf: $ff
    nop                                           ; $5dd0: $00
    rst $38                                       ; $5dd1: $ff
    nop                                           ; $5dd2: $00
    rst $38                                       ; $5dd3: $ff
    nop                                           ; $5dd4: $00
    nop                                           ; $5dd5: $00
    nop                                           ; $5dd6: $00

jr_04c_5dd7:
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
    rst $38                                       ; $5de5: $ff
    dec h                                         ; $5de6: $25
    jp c, $eb5a                                   ; $5de7: $da $5a $eb

    dec hl                                        ; $5dea: $2b
    db $ed                                        ; $5deb: $ed
    dec l                                         ; $5dec: $2d
    push de                                       ; $5ded: $d5
    ld d, l                                       ; $5dee: $55
    ldh [rNR41], a                                ; $5def: $e0 $20
    ldh a, [rNR10]                                ; $5df1: $f0 $10
    rst $38                                       ; $5df3: $ff
    rrca                                          ; $5df4: $0f
    rst $38                                       ; $5df5: $ff
    jr nz, jr_04c_5dd7                            ; $5df6: $20 $df

    push de                                       ; $5df8: $d5
    ld e, d                                       ; $5df9: $5a
    ld e, d                                       ; $5dfa: $5a
    ld d, l                                       ; $5dfb: $55
    ld d, l                                       ; $5dfc: $55
    dec b                                         ; $5dfd: $05
    dec b                                         ; $5dfe: $05
    nop                                           ; $5dff: $00
    nop                                           ; $5e00: $00
    nop                                           ; $5e01: $00
    nop                                           ; $5e02: $00
    rst $38                                       ; $5e03: $ff
    rst $38                                       ; $5e04: $ff
    rst $38                                       ; $5e05: $ff
    sub b                                         ; $5e06: $90
    ld l, a                                       ; $5e07: $6f
    ld l, b                                       ; $5e08: $68
    xor a                                         ; $5e09: $af
    xor h                                         ; $5e0a: $ac
    db $db                                        ; $5e0b: $db
    jp c, $5457                                   ; $5e0c: $da $57 $54

    rlca                                          ; $5e0f: $07
    inc b                                         ; $5e10: $04
    rrca                                          ; $5e11: $0f
    ld [$f0ff], sp                                ; $5e12: $08 $ff $f0
    rst $38                                       ; $5e15: $ff
    nop                                           ; $5e16: $00
    rst $38                                       ; $5e17: $ff
    nop                                           ; $5e18: $00
    rst $38                                       ; $5e19: $ff
    nop                                           ; $5e1a: $00
    rst $38                                       ; $5e1b: $ff
    ld [bc], a                                    ; $5e1c: $02
    db $fd                                        ; $5e1d: $fd
    dec b                                         ; $5e1e: $05
    db $fd                                        ; $5e1f: $fd
    dec b                                         ; $5e20: $05
    cp $02                                        ; $5e21: $fe $02
    rst $38                                       ; $5e23: $ff
    ld bc, $00ff                                  ; $5e24: $01 $ff $00
    rst $38                                       ; $5e27: $ff
    nop                                           ; $5e28: $00
    rst $38                                       ; $5e29: $ff
    ld b, b                                       ; $5e2a: $40
    cp a                                          ; $5e2b: $bf
    xor l                                         ; $5e2c: $ad
    ld a, d                                       ; $5e2d: $7a
    ld a, d                                       ; $5e2e: $7a
    ld d, [hl]                                    ; $5e2f: $56
    ld d, [hl]                                    ; $5e30: $56
    nop                                           ; $5e31: $00
    nop                                           ; $5e32: $00
    rst $38                                       ; $5e33: $ff
    rst $38                                       ; $5e34: $ff
    rst $38                                       ; $5e35: $ff
    nop                                           ; $5e36: $00
    rst $38                                       ; $5e37: $ff
    nop                                           ; $5e38: $00
    rst $38                                       ; $5e39: $ff
    nop                                           ; $5e3a: $00
    rst $38                                       ; $5e3b: $ff
    ld b, b                                       ; $5e3c: $40
    cp a                                          ; $5e3d: $bf
    and b                                         ; $5e3e: $a0
    cp a                                          ; $5e3f: $bf
    and b                                         ; $5e40: $a0
    ld a, a                                       ; $5e41: $7f
    ld b, b                                       ; $5e42: $40
    rst $38                                       ; $5e43: $ff
    add b                                         ; $5e44: $80
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
    nop                                           ; $60c0: $00
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    nop                                           ; $60c3: $00
    nop                                           ; $60c4: $00
    nop                                           ; $60c5: $00
    nop                                           ; $60c6: $00
    nop                                           ; $60c7: $00
    nop                                           ; $60c8: $00
    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    nop                                           ; $60cb: $00
    nop                                           ; $60cc: $00
    nop                                           ; $60cd: $00
    nop                                           ; $60ce: $00
    nop                                           ; $60cf: $00
    nop                                           ; $60d0: $00
    nop                                           ; $60d1: $00
    nop                                           ; $60d2: $00
    nop                                           ; $60d3: $00
    nop                                           ; $60d4: $00
    nop                                           ; $60d5: $00
    nop                                           ; $60d6: $00
    nop                                           ; $60d7: $00
    nop                                           ; $60d8: $00
    nop                                           ; $60d9: $00
    nop                                           ; $60da: $00
    nop                                           ; $60db: $00
    nop                                           ; $60dc: $00
    nop                                           ; $60dd: $00
    nop                                           ; $60de: $00
    nop                                           ; $60df: $00
    nop                                           ; $60e0: $00
    nop                                           ; $60e1: $00
    nop                                           ; $60e2: $00
    nop                                           ; $60e3: $00
    nop                                           ; $60e4: $00
    ld d, e                                       ; $60e5: $53
    ld d, h                                       ; $60e6: $54
    ld d, l                                       ; $60e7: $55
    ld d, b                                       ; $60e8: $50
    ld d, c                                       ; $60e9: $51
    ld d, d                                       ; $60ea: $52
    ld a, [hl-]                                   ; $60eb: $3a
    dec sp                                        ; $60ec: $3b
    inc a                                         ; $60ed: $3c
    dec a                                         ; $60ee: $3d
    ld a, $4a                                     ; $60ef: $3e $4a
    ld c, e                                       ; $60f1: $4b
    ld c, h                                       ; $60f2: $4c
    ld c, l                                       ; $60f3: $4d
    ld c, [hl]                                    ; $60f4: $4e
    dec [hl]                                      ; $60f5: $35
    ld [hl], $37                                  ; $60f6: $36 $37
    jr c, @+$3b                                   ; $60f8: $38 $39

    ld b, l                                       ; $60fa: $45
    ld b, [hl]                                    ; $60fb: $46
    ld b, a                                       ; $60fc: $47
    ld c, b                                       ; $60fd: $48
    ld c, c                                       ; $60fe: $49
    jr nc, jr_04c_6132                            ; $60ff: $30 $31

    ld [hl-], a                                   ; $6101: $32
    inc sp                                        ; $6102: $33
    inc [hl]                                      ; $6103: $34
    ld b, b                                       ; $6104: $40
    ld b, c                                       ; $6105: $41
    ld b, d                                       ; $6106: $42
    ld b, e                                       ; $6107: $43
    ld b, h                                       ; $6108: $44
    rlca                                          ; $6109: $07
    ld [$0a09], sp                                ; $610a: $08 $09 $0a
    dec bc                                        ; $610d: $0b
    inc c                                         ; $610e: $0c
    dec c                                         ; $610f: $0d
    rla                                           ; $6110: $17
    jr @+$1b                                      ; $6111: $18 $19

    ld a, [de]                                    ; $6113: $1a
    dec de                                        ; $6114: $1b
    inc e                                         ; $6115: $1c
    dec e                                         ; $6116: $1d
    daa                                           ; $6117: $27
    jr z, jr_04c_6143                             ; $6118: $28 $29

    ld a, [hl+]                                   ; $611a: $2a
    dec hl                                        ; $611b: $2b
    inc l                                         ; $611c: $2c
    dec l                                         ; $611d: $2d
    nop                                           ; $611e: $00
    ld bc, $0302                                  ; $611f: $01 $02 $03
    inc b                                         ; $6122: $04
    dec b                                         ; $6123: $05
    ld b, $10                                     ; $6124: $06 $10
    ld de, $1312                                  ; $6126: $11 $12 $13
    inc d                                         ; $6129: $14
    dec d                                         ; $612a: $15
    ld d, $20                                     ; $612b: $16 $20
    ld hl, $2322                                  ; $612d: $21 $22 $23
    inc h                                         ; $6130: $24
    dec h                                         ; $6131: $25

jr_04c_6132:
    ld h, $ff                                     ; $6132: $26 $ff
    ld sp, hl                                     ; $6134: $f9
    inc bc                                        ; $6135: $03
    ld bc, $60e5                                  ; $6136: $01 $e5 $60
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00
    rst $38                                       ; $613b: $ff
    ld sp, hl                                     ; $613c: $f9
    inc bc                                        ; $613d: $03
    ld bc, $60e5                                  ; $613e: $01 $e5 $60
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00

jr_04c_6143:
    rst $38                                       ; $6143: $ff
    ld sp, hl                                     ; $6144: $f9
    inc bc                                        ; $6145: $03
    ld bc, $60e8                                  ; $6146: $01 $e8 $60
    nop                                           ; $6149: $00
    nop                                           ; $614a: $00
    cp $f1                                        ; $614b: $fe $f1
    dec b                                         ; $614d: $05
    ld [bc], a                                    ; $614e: $02
    db $eb                                        ; $614f: $eb
    ld h, b                                       ; $6150: $60
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    cp $f1                                        ; $6153: $fe $f1
    dec b                                         ; $6155: $05
    ld [bc], a                                    ; $6156: $02
    push af                                       ; $6157: $f5
    ld h, b                                       ; $6158: $60
    nop                                           ; $6159: $00
    nop                                           ; $615a: $00
    cp $f1                                        ; $615b: $fe $f1
    dec b                                         ; $615d: $05
    ld [bc], a                                    ; $615e: $02
    rst $38                                       ; $615f: $ff
    ld h, b                                       ; $6160: $60
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    db $fd                                        ; $6163: $fd
    jp hl                                         ; $6164: $e9


    rlca                                          ; $6165: $07
    inc bc                                        ; $6166: $03
    add hl, bc                                    ; $6167: $09
    ld h, c                                       ; $6168: $61
    nop                                           ; $6169: $00
    nop                                           ; $616a: $00
    db $fd                                        ; $616b: $fd
    jp hl                                         ; $616c: $e9


    rlca                                          ; $616d: $07
    inc bc                                        ; $616e: $03
    ld e, $61                                     ; $616f: $1e $61
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00

Call_04c_6173:
    ld hl, $da00                                  ; $6173: $21 $00 $da

jr_04c_6176:
    ld a, [hl+]                                   ; $6176: $2a
    cp $ff                                        ; $6177: $fe $ff
    jr z, jr_04c_6198                             ; $6179: $28 $1d

    ld e, a                                       ; $617b: $5f
    ld a, [hl+]                                   ; $617c: $2a
    ld d, a                                       ; $617d: $57
    ld a, [hl+]                                   ; $617e: $2a
    ld b, a                                       ; $617f: $47
    ld a, e                                       ; $6180: $7b
    cp $03                                        ; $6181: $fe $03
    jr z, jr_04c_6189                             ; $6183: $28 $04

    cp $02                                        ; $6185: $fe $02
    jr nz, jr_04c_6196                            ; $6187: $20 $0d

jr_04c_6189:
    ld a, b                                       ; $6189: $78
    rrca                                          ; $618a: $0f
    rrca                                          ; $618b: $0f
    rrca                                          ; $618c: $0f
    and $07                                       ; $618d: $e6 $07
    ld e, $07                                     ; $618f: $1e $07
    push hl                                       ; $6191: $e5
    call Call_04c_6199                            ; $6192: $cd $99 $61
    pop hl                                        ; $6195: $e1

jr_04c_6196:
    jr jr_04c_6176                                ; $6196: $18 $de

jr_04c_6198:
    ret                                           ; $6198: $c9


Call_04c_6199:
    add a                                         ; $6199: $87
    add a                                         ; $619a: $87
    add a                                         ; $619b: $87
    ld hl, $6206                                  ; $619c: $21 $06 $62
    add l                                         ; $619f: $85
    ld l, a                                       ; $61a0: $6f
    jr nc, jr_04c_61a4                            ; $61a1: $30 $01

    inc h                                         ; $61a3: $24

jr_04c_61a4:
    ld a, [hl+]                                   ; $61a4: $2a
    add d                                         ; $61a5: $82
    ld d, a                                       ; $61a6: $57
    ld a, [hl+]                                   ; $61a7: $2a
    add e                                         ; $61a8: $83
    ld b, a                                       ; $61a9: $47
    ld a, [hl+]                                   ; $61aa: $2a
    ld e, a                                       ; $61ab: $5f
    ld a, [hl+]                                   ; $61ac: $2a
    ld c, a                                       ; $61ad: $4f
    ld a, [hl+]                                   ; $61ae: $2a
    ld h, [hl]                                    ; $61af: $66
    ld l, a                                       ; $61b0: $6f

jr_04c_61b1:
    push de                                       ; $61b1: $d5

jr_04c_61b2:
    ld a, [hl]                                    ; $61b2: $7e
    and a                                         ; $61b3: $a7
    jr z, jr_04c_61fb                             ; $61b4: $28 $45

    bit 7, d                                      ; $61b6: $cb $7a
    jr nz, jr_04c_61fb                            ; $61b8: $20 $41

    ld a, d                                       ; $61ba: $7a
    cp $14                                        ; $61bb: $fe $14
    jr nc, jr_04c_61fb                            ; $61bd: $30 $3c

    push bc                                       ; $61bf: $c5
    push de                                       ; $61c0: $d5
    push hl                                       ; $61c1: $e5
    ld c, d                                       ; $61c2: $4a
    ld l, [hl]                                    ; $61c3: $6e
    ld h, $00                                     ; $61c4: $26 $00
    add hl, hl                                    ; $61c6: $29
    add hl, hl                                    ; $61c7: $29
    add hl, hl                                    ; $61c8: $29
    add hl, hl                                    ; $61c9: $29
    ld de, $4596                                  ; $61ca: $11 $96 $45
    add hl, de                                    ; $61cd: $19
    ld e, l                                       ; $61ce: $5d
    ld d, h                                       ; $61cf: $54
    ld a, c                                       ; $61d0: $79
    add a                                         ; $61d1: $87
    add a                                         ; $61d2: $87
    add a                                         ; $61d3: $87
    add b                                         ; $61d4: $80
    ld l, a                                       ; $61d5: $6f
    ld h, $00                                     ; $61d6: $26 $00
    add hl, hl                                    ; $61d8: $29
    add hl, hl                                    ; $61d9: $29
    add hl, hl                                    ; $61da: $29
    add hl, hl                                    ; $61db: $29
    ld bc, $d000                                  ; $61dc: $01 $00 $d0
    add hl, bc                                    ; $61df: $09
    call Call_04c_6253                            ; $61e0: $cd $53 $62
    call Call_04c_6253                            ; $61e3: $cd $53 $62
    call Call_04c_6253                            ; $61e6: $cd $53 $62
    call Call_04c_6253                            ; $61e9: $cd $53 $62
    call Call_04c_6253                            ; $61ec: $cd $53 $62
    call Call_04c_6253                            ; $61ef: $cd $53 $62
    call Call_04c_6253                            ; $61f2: $cd $53 $62
    call Call_04c_6253                            ; $61f5: $cd $53 $62
    pop hl                                        ; $61f8: $e1
    pop de                                        ; $61f9: $d1
    pop bc                                        ; $61fa: $c1

jr_04c_61fb:
    inc hl                                        ; $61fb: $23
    inc d                                         ; $61fc: $14
    dec e                                         ; $61fd: $1d
    jr nz, jr_04c_61b2                            ; $61fe: $20 $b2

    pop de                                        ; $6200: $d1
    inc b                                         ; $6201: $04
    dec c                                         ; $6202: $0d
    jr nz, jr_04c_61b1                            ; $6203: $20 $ac

    ret                                           ; $6205: $c9


    db $ff, $fe, $03, $03, $36, $52

    nop                                           ; $620c: $00
    nop                                           ; $620d: $00

    db $ff, $fb, $03, $06, $3f, $52

    nop                                           ; $6214: $00
    nop                                           ; $6215: $00

    db $fe, $f9, $05, $08, $51, $52

    nop                                           ; $621c: $00
    nop                                           ; $621d: $00

    db $fd, $f9, $07, $08, $79, $52

    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    db $fc                                        ; $6226: $fc
    ld sp, hl                                     ; $6227: $f9
    add hl, bc                                    ; $6228: $09
    ld [$52b1], sp                                ; $6229: $08 $b1 $52
    nop                                           ; $622c: $00
    nop                                           ; $622d: $00
    db $fc                                        ; $622e: $fc
    ld sp, hl                                     ; $622f: $f9
    add hl, bc                                    ; $6230: $09
    ld [$52f9], sp                                ; $6231: $08 $f9 $52
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00

    db $fb, $f9, $0b, $08, $41, $53

    nop                                           ; $623c: $00
    nop                                           ; $623d: $00

    db $fb, $f9, $0b, $08, $41, $53

    nop                                           ; $6244: $00
    nop                                           ; $6245: $00

Call_04c_6246:
    ld a, [de]                                    ; $6246: $1a
    ld c, a                                       ; $6247: $4f
    inc de                                        ; $6248: $13
    ld a, [de]                                    ; $6249: $1a
    ld b, a                                       ; $624a: $47
    inc de                                        ; $624b: $13
    push de                                       ; $624c: $d5
    xor c                                         ; $624d: $a9
    ld e, a                                       ; $624e: $5f
    cpl                                           ; $624f: $2f
    ld d, a                                       ; $6250: $57
    jr jr_04c_625e                                ; $6251: $18 $0b

Call_04c_6253:
    ld a, [de]                                    ; $6253: $1a
    ld c, a                                       ; $6254: $4f
    inc de                                        ; $6255: $13
    ld a, [de]                                    ; $6256: $1a
    ld b, a                                       ; $6257: $47
    inc de                                        ; $6258: $13
    push de                                       ; $6259: $d5
    or c                                          ; $625a: $b1
    ld d, a                                       ; $625b: $57
    cpl                                           ; $625c: $2f
    ld e, a                                       ; $625d: $5f

jr_04c_625e:
    ld a, d                                       ; $625e: $7a
    and b                                         ; $625f: $a0
    ld b, a                                       ; $6260: $47
    ld a, d                                       ; $6261: $7a
    and c                                         ; $6262: $a1
    ld c, a                                       ; $6263: $4f
    ld a, [hl]                                    ; $6264: $7e
    and e                                         ; $6265: $a3
    or c                                          ; $6266: $b1
    ld [hl+], a                                   ; $6267: $22
    ld a, [hl]                                    ; $6268: $7e
    and e                                         ; $6269: $a3
    or b                                          ; $626a: $b0
    ld [hl+], a                                   ; $626b: $22
    pop de                                        ; $626c: $d1
    ret                                           ; $626d: $c9


    db $db                                        ; $626e: $db
    ld [bc], a                                    ; $626f: $02
    inc bc                                        ; $6270: $03
    rst $38                                       ; $6271: $ff
    xor $04                                       ; $6272: $ee $04
    db $f4                                        ; $6274: $f4
    rst $38                                       ; $6275: $ff
    add sp, $05                                   ; $6276: $e8 $05
    ld [de], a                                    ; $6278: $12
    ld a, [hl]                                    ; $6279: $7e
    rst $38                                       ; $627a: $ff
    ld [c], a                                     ; $627b: $e2
    and [hl]                                      ; $627c: $a6
    and a                                         ; $627d: $a7
    xor b                                         ; $627e: $a8
    xor c                                         ; $627f: $a9
    inc d                                         ; $6280: $14
    ld d, $f4                                     ; $6281: $16 $f4
    db $e3                                        ; $6283: $e3
    push hl                                       ; $6284: $e5
    ld b, $e0                                     ; $6285: $06 $e0
    db $eb                                        ; $6287: $eb
    db $10                                        ; $6288: $10
    rst $38                                       ; $6289: $ff
    db $ec                                        ; $628a: $ec
    ldh [$ed], a                                  ; $628b: $e0 $ed
    ld b, b                                       ; $628d: $40
    ld b, c                                       ; $628e: $41
    ld b, d                                       ; $628f: $42
    push af                                       ; $6290: $f5
    ld b, e                                       ; $6291: $43
    cp $e9                                        ; $6292: $fe $e9
    ld de, $ecc0                                  ; $6294: $11 $c0 $ec
    ld d, b                                       ; $6297: $50
    ld d, c                                       ; $6298: $51
    ld d, d                                       ; $6299: $52
    ld d, e                                       ; $629a: $53
    inc a                                         ; $629b: $3c
    cp $e9                                        ; $629c: $fe $e9
    ldh [$ed], a                                  ; $629e: $e0 $ed
    ld b, d                                       ; $62a0: $42
    ld b, e                                       ; $62a1: $43
    jr nz, jr_04c_62c5                            ; $62a2: $20 $21

    cp $e9                                        ; $62a4: $fe $e9
    ret nz                                        ; $62a6: $c0

    db $ed                                        ; $62a7: $ed
    rrca                                          ; $62a8: $0f
    ld d, d                                       ; $62a9: $52
    ld d, e                                       ; $62aa: $53
    jr nc, jr_04c_62de                            ; $62ab: $30 $31

    cp $e9                                        ; $62ad: $fe $e9
    ret nz                                        ; $62af: $c0

    rst $38                                       ; $62b0: $ff
    ret nz                                        ; $62b1: $c0

    rst $38                                       ; $62b2: $ff
    ret nz                                        ; $62b3: $c0

    rst $38                                       ; $62b4: $ff
    add b                                         ; $62b5: $80
    ret nz                                        ; $62b6: $c0

    rst $38                                       ; $62b7: $ff
    ret nz                                        ; $62b8: $c0

    rst $38                                       ; $62b9: $ff
    ret nz                                        ; $62ba: $c0

    rst $38                                       ; $62bb: $ff
    ret nz                                        ; $62bc: $c0

    rst $38                                       ; $62bd: $ff
    ret nz                                        ; $62be: $c0

    rst $38                                       ; $62bf: $ff
    ret nz                                        ; $62c0: $c0

    rst $38                                       ; $62c1: $ff
    ret nz                                        ; $62c2: $c0

    ld sp, hl                                     ; $62c3: $f9
    rlca                                          ; $62c4: $07

jr_04c_62c5:
    dec b                                         ; $62c5: $05
    ld [$eeff], sp                                ; $62c6: $08 $ff $ee
    add hl, bc                                    ; $62c9: $09
    ldh [$a9], a                                  ; $62ca: $e0 $a9
    nop                                           ; $62cc: $00
    nop                                           ; $62cd: $00
    nop                                           ; $62ce: $00
    push de                                       ; $62cf: $d5
    ld [$fdff], sp                                ; $62d0: $08 $ff $fd
    jr z, @+$01                                   ; $62d3: $28 $ff

    ld [c], a                                     ; $62d5: $e2
    ld c, $ff                                     ; $62d6: $0e $ff
    ldh [$0d], a                                  ; $62d8: $e0 $0d
    dec c                                         ; $62da: $0d
    nop                                           ; $62db: $00
    db $f4                                        ; $62dc: $f4
    ld [c], a                                     ; $62dd: $e2

jr_04c_62de:
    ldh [$ed], a                                  ; $62de: $e0 $ed
    rst $08                                       ; $62e0: $cf
    xor $e0                                       ; $62e1: $ee $e0
    xor $c3                                       ; $62e3: $ee $c3
    pop hl                                        ; $62e5: $e1
    db $fc                                        ; $62e6: $fc
    rst $20                                       ; $62e7: $e7
    ret nz                                        ; $62e8: $c0

    rst $28                                       ; $62e9: $ef
    ldh [$fb], a                                  ; $62ea: $e0 $fb
    nop                                           ; $62ec: $00
    add a                                         ; $62ed: $87
    pop hl                                        ; $62ee: $e1
    cp $e9                                        ; $62ef: $fe $e9
    ldh [rIE], a                                  ; $62f1: $e0 $ff
    ldh [rIE], a                                  ; $62f3: $e0 $ff
    ldh [rIE], a                                  ; $62f5: $e0 $ff
    ldh [rIE], a                                  ; $62f7: $e0 $ff
    ldh [rIE], a                                  ; $62f9: $e0 $ff
    ldh [rIE], a                                  ; $62fb: $e0 $ff
    nop                                           ; $62fd: $00
    ldh [rIE], a                                  ; $62fe: $e0 $ff
    ldh [rIE], a                                  ; $6300: $e0 $ff
    ldh [rIE], a                                  ; $6302: $e0 $ff
    ldh [rIE], a                                  ; $6304: $e0 $ff
    ldh [$f8], a                                  ; $6306: $e0 $f8
    rst $18                                       ; $6308: $df
    cp h                                          ; $6309: $bc
    nop                                           ; $630a: $00
    nop                                           ; $630b: $00
    nop                                           ; $630c: $00
    cp e                                          ; $630d: $bb
    inc e                                         ; $630e: $1c
    dec e                                         ; $630f: $1d
    cp $ef                                        ; $6310: $fe $ef
    ld [hl+], a                                   ; $6312: $22
    inc hl                                        ; $6313: $23
    db $f4                                        ; $6314: $f4
    rst $38                                       ; $6315: $ff
    ldh [rNR32], a                                ; $6316: $e0 $1c
    db $fd                                        ; $6318: $fd
    dec e                                         ; $6319: $1d
    ld a, [$1ee1]                                 ; $631a: $fa $e1 $1e
    rra                                           ; $631d: $1f
    ld e, $1f                                     ; $631e: $1e $1f
    ld [bc], a                                    ; $6320: $02
    inc bc                                        ; $6321: $03
    sbc d                                         ; $6322: $9a
    rst $38                                       ; $6323: $ff
    and $04                                       ; $6324: $e6 $04
    ldh a, [$e1]                                  ; $6326: $f0 $e1
    ld [hl-], a                                   ; $6328: $32
    inc sp                                        ; $6329: $33
    and $e3                                       ; $632a: $e6 $e3
    jp c, $1ce3                                   ; $632c: $da $e3 $1c

    rst $38                                       ; $632f: $ff
    dec e                                         ; $6330: $1d
    dec b                                         ; $6331: $05
    ld [de], a                                    ; $6332: $12
    ld [de], a                                    ; $6333: $12
    xor d                                         ; $6334: $aa
    xor e                                         ; $6335: $ab
    xor h                                         ; $6336: $ac
    xor l                                         ; $6337: $ad
    rst $18                                       ; $6338: $df
    xor [hl]                                      ; $6339: $ae
    xor a                                         ; $633a: $af
    ld [de], a                                    ; $633b: $12
    ld [de], a                                    ; $633c: $12
    ld b, $b0                                     ; $633d: $06 $b0
    pop hl                                        ; $633f: $e1
    inc h                                         ; $6340: $24
    dec h                                         ; $6341: $25
    ld e, b                                       ; $6342: $58
    ret nz                                        ; $6343: $c0

    pop hl                                        ; $6344: $e1
    db $fc                                        ; $6345: $fc
    db $e3                                        ; $6346: $e3
    ret nz                                        ; $6347: $c0

    pop hl                                        ; $6348: $e1
    rlca                                          ; $6349: $07
    ld [$e6ff], sp                                ; $634a: $08 $ff $e6
    add hl, bc                                    ; $634d: $09
    or b                                          ; $634e: $b0
    pop hl                                        ; $634f: $e1
    inc sp                                        ; $6350: $33
    inc [hl]                                      ; $6351: $34
    dec [hl]                                      ; $6352: $35
    ldh [$e7], a                                  ; $6353: $e0 $e7
    add b                                         ; $6355: $80
    pop af                                        ; $6356: $f1
    ld b, d                                       ; $6357: $42
    ld b, e                                       ; $6358: $43
    ret nz                                        ; $6359: $c0

    rst $20                                       ; $635a: $e7
    add h                                         ; $635b: $84
    add sp, -$3a                                  ; $635c: $e8 $c6
    ld a, h                                       ; $635e: $7c
    and $52                                       ; $635f: $e6 $52
    ld d, e                                       ; $6361: $53
    and b                                         ; $6362: $a0
    rst $20                                       ; $6363: $e7
    add h                                         ; $6364: $84
    ldh [$fe], a                                  ; $6365: $e0 $fe
    pop hl                                        ; $6367: $e1
    and [hl]                                      ; $6368: $a6
    and a                                         ; $6369: $a7
    cpl                                           ; $636a: $2f
    xor b                                         ; $636b: $a8
    xor c                                         ; $636c: $a9
    ld d, $14                                     ; $636d: $16 $14
    db $f4                                        ; $636f: $f4
    db $e3                                        ; $6370: $e3
    ld b, $82                                     ; $6371: $06 $82
    rst $20                                       ; $6373: $e7
    ldh [$e1], a                                  ; $6374: $e0 $e1
    ld sp, hl                                     ; $6376: $f9
    db $10                                        ; $6377: $10
    rst $38                                       ; $6378: $ff
    db $ec                                        ; $6379: $ec
    ldh [$ed], a                                  ; $637a: $e0 $ed
    ld b, b                                       ; $637c: $40
    ld b, c                                       ; $637d: $41
    add [hl]                                      ; $637e: $86
    add a                                         ; $637f: $87
    adc b                                         ; $6380: $88
    rst $38                                       ; $6381: $ff
    adc c                                         ; $6382: $89
    adc d                                         ; $6383: $8a
    adc e                                         ; $6384: $8b
    adc h                                         ; $6385: $8c
    adc l                                         ; $6386: $8d
    and d                                         ; $6387: $a2
    and e                                         ; $6388: $a3
    and b                                         ; $6389: $a0
    rst $28                                       ; $638a: $ef
    and c                                         ; $638b: $a1
    adc [hl]                                      ; $638c: $8e
    adc a                                         ; $638d: $8f
    ld de, $ecc0                                  ; $638e: $11 $c0 $ec
    ld d, b                                       ; $6391: $50
    ld d, c                                       ; $6392: $51
    sub [hl]                                      ; $6393: $96
    rst $38                                       ; $6394: $ff
    sub a                                         ; $6395: $97
    sbc b                                         ; $6396: $98
    sbc c                                         ; $6397: $99
    sbc d                                         ; $6398: $9a
    sbc e                                         ; $6399: $9b
    sbc h                                         ; $639a: $9c
    sbc l                                         ; $639b: $9d
    or d                                          ; $639c: $b2
    rst $18                                       ; $639d: $df
    or e                                          ; $639e: $b3
    or b                                          ; $639f: $b0
    or c                                          ; $63a0: $b1
    sbc [hl]                                      ; $63a1: $9e
    sbc a                                         ; $63a2: $9f
    ldh [$ed], a                                  ; $63a3: $e0 $ed
    ld b, h                                       ; $63a5: $44
    ld b, l                                       ; $63a6: $45
    di                                            ; $63a7: $f3
    jr nz, jr_04c_63cb                            ; $63a8: $20 $21

    cp $e9                                        ; $63aa: $fe $e9

jr_04c_63ac:
    ret nz                                        ; $63ac: $c0

    db $ed                                        ; $63ad: $ed

jr_04c_63ae:
    ld d, h                                       ; $63ae: $54
    ld d, l                                       ; $63af: $55
    jr nc, jr_04c_63e3                            ; $63b0: $30 $31

    nop                                           ; $63b2: $00
    cp $e9                                        ; $63b3: $fe $e9
    and b                                         ; $63b5: $a0
    db $eb                                        ; $63b6: $eb
    db $e4                                        ; $63b7: $e4
    ret z                                         ; $63b8: $c8

    call c, Call_04c_40c6                         ; $63b9: $dc $c6 $40
    jp hl                                         ; $63bc: $e9


    add b                                         ; $63bd: $80
    pop bc                                        ; $63be: $c1
    db $fc                                        ; $63bf: $fc
    db $ed                                        ; $63c0: $ed
    jr nz, jr_04c_63ac                            ; $63c1: $20 $e9

    nop                                           ; $63c3: $00
    ld b, b                                       ; $63c4: $40
    pop de                                        ; $63c5: $d1
    ret nz                                        ; $63c6: $c0

    rst $38                                       ; $63c7: $ff
    ret nz                                        ; $63c8: $c0

    rst $38                                       ; $63c9: $ff
    ret nz                                        ; $63ca: $c0

jr_04c_63cb:
    rst $38                                       ; $63cb: $ff
    inc e                                         ; $63cc: $1c
    jp $0000                                      ; $63cd: $c3 $00 $00


    nop                                           ; $63d0: $00
    db $dd                                        ; $63d1: $dd
    add hl, bc                                    ; $63d2: $09
    rst $38                                       ; $63d3: $ff
    ldh a, [$0d]                                  ; $63d4: $f0 $0d
    dec c                                         ; $63d6: $0d
    ld [$e0ff], sp                                ; $63d7: $08 $ff $e0
    add hl, bc                                    ; $63da: $09
    add hl, bc                                    ; $63db: $09
    db $10                                        ; $63dc: $10
    ld a, [$f8e3]                                 ; $63dd: $fa $e3 $f8
    db $e3                                        ; $63e0: $e3
    db $fc                                        ; $63e1: $fc
    push hl                                       ; $63e2: $e5

jr_04c_63e3:
    ldh [$f4], a                                  ; $63e3: $e0 $f4
    rrca                                          ; $63e5: $0f
    rst $38                                       ; $63e6: $ff
    ld [c], a                                     ; $63e7: $e2
    ldh [$ea], a                                  ; $63e8: $e0 $ea
    ret nc                                        ; $63ea: $d0

jr_04c_63eb:
    rst $20                                       ; $63eb: $e7
    jr jr_04c_63ae                                ; $63ec: $18 $c0

    di                                            ; $63ee: $f3
    or b                                          ; $63ef: $b0
    rst $20                                       ; $63f0: $e7
    ld a, h                                       ; $63f1: $7c
    db $ed                                        ; $63f2: $ed
    ld c, $0e                                     ; $63f3: $0e $0e
    adc [hl]                                      ; $63f5: $8e
    jp hl                                         ; $63f6: $e9


    db $f4                                        ; $63f7: $f4
    rst $28                                       ; $63f8: $ef
    ldh [$ea], a                                  ; $63f9: $e0 $ea
    dec l                                         ; $63fb: $2d
    jr z, jr_04c_63eb                             ; $63fc: $28 $ed

    db $e4                                        ; $63fe: $e4
    ld c, $0e                                     ; $63ff: $0e $0e
    ld c, c                                       ; $6401: $49
    db $e3                                        ; $6402: $e3
    jr z, @-$0f                                   ; $6403: $28 $ef

    db $e3                                        ; $6405: $e3
    ldh [$ec], a                                  ; $6406: $e0 $ec
    db $fc                                        ; $6408: $fc
    rst $28                                       ; $6409: $ef
    rst $30                                       ; $640a: $f7
    ret nz                                        ; $640b: $c0

    ldh [$0d], a                                  ; $640c: $e0 $0d
    dec c                                         ; $640e: $0d
    ld c, $0e                                     ; $640f: $0e $0e
    inc c                                         ; $6411: $0c
    inc c                                         ; $6412: $0c
    rrca                                          ; $6413: $0f
    rrca                                          ; $6414: $0f
    rrca                                          ; $6415: $0f
    dec bc                                        ; $6416: $0b
    dec bc                                        ; $6417: $0b
    cp e                                          ; $6418: $bb
    push hl                                       ; $6419: $e5
    ldh [rIE], a                                  ; $641a: $e0 $ff
    add b                                         ; $641c: $80
    rst $20                                       ; $641d: $e7
    add a                                         ; $641e: $87
    pop hl                                        ; $641f: $e1
    nop                                           ; $6420: $00
    cp $e9                                        ; $6421: $fe $e9
    ldh [rIE], a                                  ; $6423: $e0 $ff
    rst $38                                       ; $6425: $ff
    rst $38                                       ; $6426: $ff
    ldh [$db], a                                  ; $6427: $e0 $db
    ldh [rIE], a                                  ; $6429: $e0 $ff
    ldh [rIE], a                                  ; $642b: $e0 $ff
    ldh [rIE], a                                  ; $642d: $e0 $ff
    ldh [rIE], a                                  ; $642f: $e0 $ff
    nop                                           ; $6431: $00
    jp c, Jump_000_00a1                           ; $6432: $da $a1 $00

    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    rst $38                                       ; $6437: $ff

Call_04c_6438:
    ld b, b                                       ; $6438: $40
    ld b, c                                       ; $6439: $41
    ld c, h                                       ; $643a: $4c
    ld c, l                                       ; $643b: $4d
    ld l, b                                       ; $643c: $68
    ld l, c                                       ; $643d: $69
    ld c, [hl]                                    ; $643e: $4e
    ld c, a                                       ; $643f: $4f
    rst $38                                       ; $6440: $ff
    ld l, d                                       ; $6441: $6a
    ld l, e                                       ; $6442: $6b
    ld h, b                                       ; $6443: $60
    ld h, c                                       ; $6444: $61
    ld h, d                                       ; $6445: $62
    ld h, e                                       ; $6446: $63
    ld l, h                                       ; $6447: $6c
    ld l, l                                       ; $6448: $6d
    rst $38                                       ; $6449: $ff
    add h                                         ; $644a: $84
    add l                                         ; $644b: $85
    ld l, [hl]                                    ; $644c: $6e
    ld l, a                                       ; $644d: $6f
    add b                                         ; $644e: $80
    add c                                         ; $644f: $81
    ld h, h                                       ; $6450: $64
    ld h, l                                       ; $6451: $65
    rst $38                                       ; $6452: $ff
    ld h, [hl]                                    ; $6453: $66
    ld h, a                                       ; $6454: $67
    add d                                         ; $6455: $82
    add e                                         ; $6456: $83
    and h                                         ; $6457: $a4
    and l                                         ; $6458: $a5
    ld b, d                                       ; $6459: $42
    ld b, e                                       ; $645a: $43
    rst $38                                       ; $645b: $ff
    ld d, b                                       ; $645c: $50
    ld d, c                                       ; $645d: $51
    ld e, h                                       ; $645e: $5c
    ld e, l                                       ; $645f: $5d
    ld a, b                                       ; $6460: $78
    ld a, c                                       ; $6461: $79
    ld e, [hl]                                    ; $6462: $5e
    ld e, a                                       ; $6463: $5f
    rst $38                                       ; $6464: $ff
    ld a, d                                       ; $6465: $7a
    ld a, e                                       ; $6466: $7b
    ld [hl], b                                    ; $6467: $70
    ld [hl], c                                    ; $6468: $71
    ld [hl], d                                    ; $6469: $72
    ld [hl], e                                    ; $646a: $73
    ld a, h                                       ; $646b: $7c
    ld a, l                                       ; $646c: $7d
    rst $38                                       ; $646d: $ff
    sub h                                         ; $646e: $94
    sub l                                         ; $646f: $95
    ld a, [hl]                                    ; $6470: $7e
    ld a, a                                       ; $6471: $7f
    sub b                                         ; $6472: $90
    sub c                                         ; $6473: $91
    ld [hl], h                                    ; $6474: $74
    ld [hl], l                                    ; $6475: $75
    rst $38                                       ; $6476: $ff
    halt                                          ; $6477: $76
    ld [hl], a                                    ; $6478: $77
    sub d                                         ; $6479: $92
    sub e                                         ; $647a: $93
    or h                                          ; $647b: $b4
    or l                                          ; $647c: $b5
    ld d, d                                       ; $647d: $52
    ld d, e                                       ; $647e: $53
    rst $28                                       ; $647f: $ef
    ld c, h                                       ; $6480: $4c
    ld c, l                                       ; $6481: $4d
    jr nz, jr_04c_64a5                            ; $6482: $20 $21

    cp $f7                                        ; $6484: $fe $f7
    ld [hl+], a                                   ; $6486: $22
    inc hl                                        ; $6487: $23
    ld e, h                                       ; $6488: $5c
    rst $30                                       ; $6489: $f7
    ld e, l                                       ; $648a: $5d
    jr nc, jr_04c_64be                            ; $648b: $30 $31

    cp $f7                                        ; $648d: $fe $f7
    ld [hl-], a                                   ; $648f: $32
    inc sp                                        ; $6490: $33
    ld l, b                                       ; $6491: $68
    ld l, c                                       ; $6492: $69
    sbc $c0                                       ; $6493: $de $c0
    ld sp, hl                                     ; $6495: $f9
    inc h                                         ; $6496: $24
    dec h                                         ; $6497: $25
    ld a, b                                       ; $6498: $78
    ld a, c                                       ; $6499: $79
    ret nz                                        ; $649a: $c0

    ld sp, hl                                     ; $649b: $f9
    inc [hl]                                      ; $649c: $34
    dec [hl]                                      ; $649d: $35
    ld a, e                                       ; $649e: $7b
    ld c, [hl]                                    ; $649f: $4e
    ld c, a                                       ; $64a0: $4f
    add b                                         ; $64a1: $80
    ld sp, hl                                     ; $64a2: $f9
    nop                                           ; $64a3: $00
    nop                                           ; $64a4: $00

jr_04c_64a5:
    ld e, [hl]                                    ; $64a5: $5e
    ld e, a                                       ; $64a6: $5f
    add b                                         ; $64a7: $80
    ld sp, hl                                     ; $64a8: $f9
    ld l, a                                       ; $64a9: $6f
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    ld l, d                                       ; $64ac: $6a
    ld l, e                                       ; $64ad: $6b
    ret nz                                        ; $64ae: $c0

    ei                                            ; $64af: $fb
    ld a, d                                       ; $64b0: $7a
    ld a, e                                       ; $64b1: $7b
    ret nz                                        ; $64b2: $c0

    ei                                            ; $64b3: $fb
    db $db                                        ; $64b4: $db
    ld h, b                                       ; $64b5: $60
    ld h, c                                       ; $64b6: $61
    add b                                         ; $64b7: $80
    ei                                            ; $64b8: $fb
    ld [hl], b                                    ; $64b9: $70
    ld [hl], c                                    ; $64ba: $71
    add b                                         ; $64bb: $80
    ei                                            ; $64bc: $fb
    ld h, d                                       ; $64bd: $62

jr_04c_64be:
    ld h, e                                       ; $64be: $63
    or [hl]                                       ; $64bf: $b6
    ld b, b                                       ; $64c0: $40
    ei                                            ; $64c1: $fb
    ld [hl], d                                    ; $64c2: $72
    ld [hl], e                                    ; $64c3: $73
    ld b, b                                       ; $64c4: $40
    ei                                            ; $64c5: $fb
    ld l, h                                       ; $64c6: $6c
    ld l, l                                       ; $64c7: $6d
    nop                                           ; $64c8: $00
    ei                                            ; $64c9: $fb
    ld a, h                                       ; $64ca: $7c
    ld l, l                                       ; $64cb: $6d
    ld a, l                                       ; $64cc: $7d
    nop                                           ; $64cd: $00
    ei                                            ; $64ce: $fb
    add h                                         ; $64cf: $84
    add l                                         ; $64d0: $85
    ret nz                                        ; $64d1: $c0

    db $db                                        ; $64d2: $db
    sub h                                         ; $64d3: $94
    sub l                                         ; $64d4: $95
    ret nz                                        ; $64d5: $c0

    db $db                                        ; $64d6: $db
    db $db                                        ; $64d7: $db
    ld l, [hl]                                    ; $64d8: $6e
    ld l, a                                       ; $64d9: $6f
    add b                                         ; $64da: $80
    db $db                                        ; $64db: $db
    ld a, [hl]                                    ; $64dc: $7e
    ld a, a                                       ; $64dd: $7f
    add b                                         ; $64de: $80
    db $db                                        ; $64df: $db
    add b                                         ; $64e0: $80
    add c                                         ; $64e1: $81
    or [hl]                                       ; $64e2: $b6
    ld b, b                                       ; $64e3: $40
    db $db                                        ; $64e4: $db
    sub b                                         ; $64e5: $90
    sub c                                         ; $64e6: $91
    ld b, b                                       ; $64e7: $40
    db $db                                        ; $64e8: $db
    ld h, h                                       ; $64e9: $64
    ld h, l                                       ; $64ea: $65
    nop                                           ; $64eb: $00
    db $db                                        ; $64ec: $db
    ld [hl], h                                    ; $64ed: $74
    ld l, l                                       ; $64ee: $6d
    ld [hl], l                                    ; $64ef: $75
    nop                                           ; $64f0: $00
    db $db                                        ; $64f1: $db
    ld h, [hl]                                    ; $64f2: $66
    ld h, a                                       ; $64f3: $67
    ret nz                                        ; $64f4: $c0

    cp e                                          ; $64f5: $bb
    halt                                          ; $64f6: $76
    ld [hl], a                                    ; $64f7: $77
    ret nz                                        ; $64f8: $c0

    cp e                                          ; $64f9: $bb
    db $db                                        ; $64fa: $db
    add d                                         ; $64fb: $82
    add e                                         ; $64fc: $83
    add b                                         ; $64fd: $80
    cp e                                          ; $64fe: $bb
    sub d                                         ; $64ff: $92
    sub e                                         ; $6500: $93
    add b                                         ; $6501: $80
    cp e                                          ; $6502: $bb
    and h                                         ; $6503: $a4
    and l                                         ; $6504: $a5
    or [hl]                                       ; $6505: $b6
    ld b, b                                       ; $6506: $40
    cp e                                          ; $6507: $bb
    or h                                          ; $6508: $b4
    or l                                          ; $6509: $b5
    ld b, b                                       ; $650a: $40
    cp e                                          ; $650b: $bb
    ld b, h                                       ; $650c: $44
    ld b, l                                       ; $650d: $45
    nop                                           ; $650e: $00
    cp e                                          ; $650f: $bb
    ld d, h                                       ; $6510: $54
    ld l, l                                       ; $6511: $6d
    ld d, l                                       ; $6512: $55
    nop                                           ; $6513: $00
    cp e                                          ; $6514: $bb
    ld b, [hl]                                    ; $6515: $46
    ld b, a                                       ; $6516: $47
    ret nz                                        ; $6517: $c0

    sbc e                                         ; $6518: $9b
    ld d, [hl]                                    ; $6519: $56
    ld d, a                                       ; $651a: $57
    ret nz                                        ; $651b: $c0

    sbc e                                         ; $651c: $9b
    db $db                                        ; $651d: $db
    ld c, b                                       ; $651e: $48
    ld c, c                                       ; $651f: $49
    add b                                         ; $6520: $80
    sbc e                                         ; $6521: $9b
    ld e, b                                       ; $6522: $58
    ld e, c                                       ; $6523: $59
    add b                                         ; $6524: $80
    sbc e                                         ; $6525: $9b
    ld c, d                                       ; $6526: $4a
    ld c, e                                       ; $6527: $4b
    ld b, $40                                     ; $6528: $06 $40
    sbc e                                         ; $652a: $9b
    ld e, d                                       ; $652b: $5a
    ld e, e                                       ; $652c: $5b
    ld b, b                                       ; $652d: $40
    sbc e                                         ; $652e: $9b
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    rst $18                                       ; $6532: $df
    ld [$0d08], sp                                ; $6533: $08 $08 $0d
    ld c, $0d                                     ; $6536: $0e $0d
    rst $38                                       ; $6538: $ff
    ldh [$0e], a                                  ; $6539: $e0 $0e
    ld c, $fd                                     ; $653b: $0e $fd
    dec bc                                        ; $653d: $0b
    rst $38                                       ; $653e: $ff
    ldh [$0c], a                                  ; $653f: $e0 $0c
    inc c                                         ; $6541: $0c
    dec c                                         ; $6542: $0d
    dec c                                         ; $6543: $0d
    rrca                                          ; $6544: $0f
    rrca                                          ; $6545: $0f
    or a                                          ; $6546: $b7
    ld c, $0e                                     ; $6547: $0e $0e
    inc c                                         ; $6549: $0c
    rst $38                                       ; $654a: $ff
    ldh [$0b], a                                  ; $654b: $e0 $0b
    dec bc                                        ; $654d: $0b
    or $e1                                        ; $654e: $f6 $e1
    ld [$0803], sp                                ; $6550: $08 $03 $08
    ld c, $e0                                     ; $6553: $0e $e0
    ld a, [$e3c2]                                 ; $6555: $fa $c2 $e3
    db $fc                                        ; $6558: $fc
    rst $30                                       ; $6559: $f7
    jp nz, $ffe3                                  ; $655a: $c2 $e3 $ff

    rst $38                                       ; $655d: $ff
    rst $38                                       ; $655e: $ff
    rst $38                                       ; $655f: $ff
    ret nz                                        ; $6560: $c0

    rst $38                                       ; $6561: $ff
    rst $38                                       ; $6562: $ff
    halt                                          ; $6563: $76
    rst $28                                       ; $6564: $ef
    ld [hl+], a                                   ; $6565: $22
    ldh [$e0], a                                  ; $6566: $e0 $e0
    db $fc                                        ; $6568: $fc
    ld h, b                                       ; $6569: $60
    ei                                            ; $656a: $fb
    ldh [rIE], a                                  ; $656b: $e0 $ff

jr_04c_656d:
    dec bc                                        ; $656d: $0b
    dec bc                                        ; $656e: $0b
    nop                                           ; $656f: $00
    ldh [rIE], a                                  ; $6570: $e0 $ff
    ldh [rIE], a                                  ; $6572: $e0 $ff
    ldh [rIE], a                                  ; $6574: $e0 $ff
    jr nz, jr_04c_656d                            ; $6576: $20 $f5

    ld c, [hl]                                    ; $6578: $4e
    pop bc                                        ; $6579: $c1
    ldh [rIE], a                                  ; $657a: $e0 $ff
    ldh [$df], a                                  ; $657c: $e0 $df
    ldh [rIE], a                                  ; $657e: $e0 $ff
    ld b, $e0                                     ; $6580: $06 $e0
    di                                            ; $6582: $f3
    rrca                                          ; $6583: $0f
    rrca                                          ; $6584: $0f
    ldh [rIE], a                                  ; $6585: $e0 $ff
    and b                                         ; $6587: $a0
    rst $18                                       ; $6588: $df
    ldh [rIE], a                                  ; $6589: $e0 $ff
    jr nz, @+$01                                  ; $658b: $20 $ff

    ldh [rIE], a                                  ; $658d: $e0 $ff
    nop                                           ; $658f: $00
    ldh [rIE], a                                  ; $6590: $e0 $ff
    ldh [rIE], a                                  ; $6592: $e0 $ff
    ld h, b                                       ; $6594: $60
    rst $18                                       ; $6595: $df
    ldh [rIE], a                                  ; $6596: $e0 $ff
    ldh [$df], a                                  ; $6598: $e0 $df
    ldh [rIE], a                                  ; $659a: $e0 $ff
    ldh [$df], a                                  ; $659c: $e0 $df
    ldh [rIE], a                                  ; $659e: $e0 $ff
    nop                                           ; $65a0: $00
    ldh [$e2], a                                  ; $65a1: $e0 $e2
    nop                                           ; $65a3: $00
    db $fc                                        ; $65a4: $fc
    ldh [rIE], a                                  ; $65a5: $e0 $ff
    ret nz                                        ; $65a7: $c0

    rst $18                                       ; $65a8: $df
    and b                                         ; $65a9: $a0
    cp a                                          ; $65aa: $bf
    ldh [rIE], a                                  ; $65ab: $e0 $ff
    ldh [$f5], a                                  ; $65ad: $e0 $f5
    nop                                           ; $65af: $00
    nop                                           ; $65b0: $00
    nop                                           ; $65b1: $00
    db $db                                        ; $65b2: $db
    ld [bc], a                                    ; $65b3: $02
    inc bc                                        ; $65b4: $03
    rst $38                                       ; $65b5: $ff
    xor $04                                       ; $65b6: $ee $04
    nop                                           ; $65b8: $00
    rst $38                                       ; $65b9: $ff
    add sp, $05                                   ; $65ba: $e8 $05
    ld [de], a                                    ; $65bc: $12
    rst $38                                       ; $65bd: $ff
    ld h, $27                                     ; $65be: $26 $27
    jr z, jr_04c_65ee                             ; $65c0: $28 $2c

    ld [de], a                                    ; $65c2: $12
    inc l                                         ; $65c3: $2c
    db $10                                        ; $65c4: $10
    ld [de], a                                    ; $65c5: $12
    push af                                       ; $65c6: $f5
    db $10                                        ; $65c7: $10
    db $fd                                        ; $65c8: $fd
    push hl                                       ; $65c9: $e5
    ld b, $e0                                     ; $65ca: $06 $e0
    db $eb                                        ; $65cc: $eb
    ld [de], a                                    ; $65cd: $12
    ld [de], a                                    ; $65ce: $12
    jr nz, jr_04c_65f2                            ; $65cf: $20 $21

    ld sp, hl                                     ; $65d1: $f9
    ld de, $e9fd                                  ; $65d2: $11 $fd $e9
    ldh [$ed], a                                  ; $65d5: $e0 $ed
    rla                                           ; $65d7: $17
    jr nc, @+$33                                  ; $65d8: $30 $31

    jr jr_04c_660c                                ; $65da: $18 $30

    rst $38                                       ; $65dc: $ff
    ld sp, $3019                                  ; $65dd: $31 $19 $30
    ld sp, $301a                                  ; $65e0: $31 $1a $30
    ld sp, $7b1b                                  ; $65e3: $31 $1b $7b
    jr nc, @+$33                                  ; $65e6: $30 $31

    ldh [$ed], a                                  ; $65e8: $e0 $ed
    add hl, hl                                    ; $65ea: $29
    ld a, [hl+]                                   ; $65eb: $2a
    dec hl                                        ; $65ec: $2b
    inc l                                         ; $65ed: $2c

jr_04c_65ee:
    and e                                         ; $65ee: $a3
    rst $20                                       ; $65ef: $e7
    ld hl, sp-$60                                 ; $65f0: $f8 $a0

jr_04c_65f2:
    rst $38                                       ; $65f2: $ff
    and b                                         ; $65f3: $a0
    rst $38                                       ; $65f4: $ff
    ld b, b                                       ; $65f5: $40
    db $eb                                        ; $65f6: $eb
    ld [hl], $37                                  ; $65f7: $36 $37
    jr c, @+$3b                                   ; $65f9: $38 $39

    ld a, [hl-]                                   ; $65fb: $3a
    pop hl                                        ; $65fc: $e1
    inc l                                         ; $65fd: $2c
    dec a                                         ; $65fe: $3d
    add sp, -$60                                  ; $65ff: $e8 $a0
    rst $38                                       ; $6601: $ff
    and b                                         ; $6602: $a0
    rst $38                                       ; $6603: $ff
    ldh [$c8], a                                  ; $6604: $e0 $c8
    dec sp                                        ; $6606: $3b
    inc a                                         ; $6607: $3c
    dec a                                         ; $6608: $3d
    add e                                         ; $6609: $83
    ld a, $3f                                     ; $660a: $3e $3f

jr_04c_660c:
    and b                                         ; $660c: $a0
    pop hl                                        ; $660d: $e1
    ld a, [hl-]                                   ; $660e: $3a
    push hl                                       ; $660f: $e5
    and b                                         ; $6610: $a0
    rst $38                                       ; $6611: $ff
    and b                                         ; $6612: $a0
    rst $38                                       ; $6613: $ff
    ld a, l                                       ; $6614: $7d
    add $07                                       ; $6615: $c6 $07
    dec [hl]                                      ; $6617: $35
    ld [$eeff], sp                                ; $6618: $08 $ff $ee
    add hl, bc                                    ; $661b: $09
    ld h, b                                       ; $661c: $60
    ret                                           ; $661d: $c9


    inc e                                         ; $661e: $1c
    dec e                                         ; $661f: $1d
    cp $ef                                        ; $6620: $fe $ef
    ld b, b                                       ; $6622: $40
    ret                                           ; $6623: $c9


    cp $20                                        ; $6624: $fe $20
    sbc $a4                                       ; $6626: $de $a4
    and l                                         ; $6628: $a5
    and [hl]                                      ; $6629: $a6
    and a                                         ; $662a: $a7
    xor b                                         ; $662b: $a8
    xor c                                         ; $662c: $a9
    xor d                                         ; $662d: $aa
    rlca                                          ; $662e: $07
    xor e                                         ; $662f: $ab
    xor h                                         ; $6630: $ac
    xor l                                         ; $6631: $ad
    ld d, [hl]                                    ; $6632: $56
    ldh [$fd], a                                  ; $6633: $e0 $fd
    ld [c], a                                     ; $6635: $e2
    add b                                         ; $6636: $80
    rst $38                                       ; $6637: $ff
    rst $38                                       ; $6638: $ff
    add sp, $00                                   ; $6639: $e8 $00
    nop                                           ; $663b: $00
    nop                                           ; $663c: $00
    cp l                                          ; $663d: $bd
    ld [$fdff], sp                                ; $663e: $08 $ff $fd
    jr z, @+$0d                                   ; $6641: $28 $0b

    dec bc                                        ; $6643: $0b
    dec bc                                        ; $6644: $0b
    ldh [$fa], a                                  ; $6645: $e0 $fa
    ld [$0807], sp                                ; $6647: $08 $07 $08
    dec c                                         ; $664a: $0d
    dec c                                         ; $664b: $0d
    db $fd                                        ; $664c: $fd
    ld [$ffe0], a                                 ; $664d: $ea $e0 $ff
    and b                                         ; $6650: $a0
    rst $38                                       ; $6651: $ff
    ret nz                                        ; $6652: $c0

    rst $38                                       ; $6653: $ff
    ldh [rIE], a                                  ; $6654: $e0 $ff
    nop                                           ; $6656: $00
    and b                                         ; $6657: $a0
    rst $20                                       ; $6658: $e7
    sbc [hl]                                      ; $6659: $9e
    ld sp, hl                                     ; $665a: $f9
    and b                                         ; $665b: $a0
    db $fd                                        ; $665c: $fd
    rst $18                                       ; $665d: $df
    ret nz                                        ; $665e: $c0

    and b                                         ; $665f: $a0
    rst $38                                       ; $6660: $ff
    and b                                         ; $6661: $a0
    rst $38                                       ; $6662: $ff
    ld b, b                                       ; $6663: $40

jr_04c_6664:
    rst $38                                       ; $6664: $ff
    add b                                         ; $6665: $80
    rst $30                                       ; $6666: $f7
    ld [hl+], a                                   ; $6667: $22
    ld e, h                                       ; $6668: $5c
    reti                                          ; $6669: $d9


    add hl, bc                                    ; $666a: $09
    rst $38                                       ; $666b: $ff
    ldh a, [$ca]                                  ; $666c: $f0 $ca
    rst $38                                       ; $666e: $ff
    ld a, [bc]                                    ; $666f: $0a
    ret z                                         ; $6670: $c8

    ld c, $ff                                     ; $6671: $0e $ff
    and $d4                                       ; $6673: $e6 $d4
    rst $38                                       ; $6675: $ff
    nop                                           ; $6676: $00
    db $d3                                        ; $6677: $d3
    or b                                          ; $6678: $b0
    nop                                           ; $6679: $00
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    db $fd                                        ; $667c: $fd
    nop                                           ; $667d: $00
    rst $38                                       ; $667e: $ff
    pop hl                                        ; $667f: $e1
    rrca                                          ; $6680: $0f
    rrca                                          ; $6681: $0f
    db $10                                        ; $6682: $10
    jr jr_04c_66ac                                ; $6683: $18 $27

jr_04c_6685:
    db $10                                        ; $6685: $10
    add hl, de                                    ; $6686: $19

jr_04c_6687:
    jr z, jr_04c_6687                             ; $6687: $28 $fe

    pop af                                        ; $6689: $f1
    ldh [$e2], a                                  ; $668a: $e0 $e2
    rst $38                                       ; $668c: $ff
    rst $38                                       ; $668d: $ff
    db $fc                                        ; $668e: $fc
    ldh [$d6], a                                  ; $668f: $e0 $d6
    ld [c], a                                     ; $6691: $e2
    ei                                            ; $6692: $fb
    di                                            ; $6693: $f3
    ld a, $e0                                     ; $6694: $3e $e0
    db $fd                                        ; $6696: $fd
    ldh [$e0], a                                  ; $6697: $e0 $e0
    db $10                                        ; $6699: $10
    jr nc, jr_04c_6664                            ; $669a: $30 $c8

    and b                                         ; $669c: $a0
    di                                            ; $669d: $f3
    nop                                           ; $669e: $00
    nop                                           ; $669f: $00
    nop                                           ; $66a0: $00
    ei                                            ; $66a1: $fb
    db $10                                        ; $66a2: $10

jr_04c_66a3:
    jr z, jr_04c_66a3                             ; $66a3: $28 $fe

    rst $28                                       ; $66a5: $ef
    jr jr_04c_66cf                                ; $66a6: $18 $27

    rrca                                          ; $66a8: $0f
    stop                                          ; $66a9: $10 $00
    dec de                                        ; $66ab: $1b

jr_04c_66ac:
    rrca                                          ; $66ac: $0f
    nop                                           ; $66ad: $00
    rst $38                                       ; $66ae: $ff
    rst $30                                       ; $66af: $f7
    rst $38                                       ; $66b0: $ff
    rst $38                                       ; $66b1: $ff
    db $fc                                        ; $66b2: $fc
    ldh [$e0], a                                  ; $66b3: $e0 $e0
    rst $38                                       ; $66b5: $ff
    sbc $e1                                       ; $66b6: $de $e1
    ld a, [hl]                                    ; $66b8: $7e
    and b                                         ; $66b9: $a0
    pop af                                        ; $66ba: $f1
    jr nc, jr_04c_6685                            ; $66bb: $30 $c8

    ldh [rNR10], a                                ; $66bd: $e0 $10
    nop                                           ; $66bf: $00
    ldh [$c0], a                                  ; $66c0: $e0 $c0
    db $e3                                        ; $66c2: $e3
    nop                                           ; $66c3: $00
    nop                                           ; $66c4: $00
    nop                                           ; $66c5: $00
    rst $38                                       ; $66c6: $ff
    ld c, h                                       ; $66c7: $4c
    ld c, l                                       ; $66c8: $4d
    ld e, h                                       ; $66c9: $5c
    ld e, l                                       ; $66ca: $5d
    ld l, b                                       ; $66cb: $68
    ld l, c                                       ; $66cc: $69
    ld a, b                                       ; $66cd: $78
    ld a, c                                       ; $66ce: $79

jr_04c_66cf:
    rst $38                                       ; $66cf: $ff
    ld c, [hl]                                    ; $66d0: $4e
    ld c, a                                       ; $66d1: $4f
    ld e, [hl]                                    ; $66d2: $5e
    ld e, a                                       ; $66d3: $5f
    ld l, d                                       ; $66d4: $6a
    ld l, e                                       ; $66d5: $6b
    ld a, d                                       ; $66d6: $7a
    ld a, e                                       ; $66d7: $7b
    rst $38                                       ; $66d8: $ff
    ld h, b                                       ; $66d9: $60
    ld h, c                                       ; $66da: $61
    ld [hl], b                                    ; $66db: $70
    ld [hl], c                                    ; $66dc: $71
    ld h, d                                       ; $66dd: $62
    ld h, e                                       ; $66de: $63
    ld [hl], d                                    ; $66df: $72
    ld [hl], e                                    ; $66e0: $73
    rst $38                                       ; $66e1: $ff
    ld l, h                                       ; $66e2: $6c
    ld l, l                                       ; $66e3: $6d
    ld a, h                                       ; $66e4: $7c
    ld a, l                                       ; $66e5: $7d
    add h                                         ; $66e6: $84
    add l                                         ; $66e7: $85
    sub h                                         ; $66e8: $94
    sub l                                         ; $66e9: $95
    rst $38                                       ; $66ea: $ff
    ld l, [hl]                                    ; $66eb: $6e
    ld l, a                                       ; $66ec: $6f
    ld a, [hl]                                    ; $66ed: $7e
    ld a, a                                       ; $66ee: $7f
    add b                                         ; $66ef: $80
    add c                                         ; $66f0: $81
    sub b                                         ; $66f1: $90
    sub c                                         ; $66f2: $91
    rst $38                                       ; $66f3: $ff
    ld h, h                                       ; $66f4: $64
    ld h, l                                       ; $66f5: $65
    ld [hl], h                                    ; $66f6: $74
    ld [hl], l                                    ; $66f7: $75
    ld h, [hl]                                    ; $66f8: $66
    ld h, a                                       ; $66f9: $67
    halt                                          ; $66fa: $76
    ld [hl], a                                    ; $66fb: $77
    rst $38                                       ; $66fc: $ff
    add d                                         ; $66fd: $82
    add e                                         ; $66fe: $83
    sub d                                         ; $66ff: $92
    sub e                                         ; $6700: $93
    and h                                         ; $6701: $a4
    and l                                         ; $6702: $a5
    or h                                          ; $6703: $b4
    or l                                          ; $6704: $b5
    rst $38                                       ; $6705: $ff
    ld b, h                                       ; $6706: $44
    ld b, l                                       ; $6707: $45
    ld d, h                                       ; $6708: $54
    ld d, l                                       ; $6709: $55
    ld b, [hl]                                    ; $670a: $46
    ld b, a                                       ; $670b: $47
    ld d, [hl]                                    ; $670c: $56
    ld d, a                                       ; $670d: $57
    rst $38                                       ; $670e: $ff
    ld c, b                                       ; $670f: $48
    ld c, c                                       ; $6710: $49
    ld e, b                                       ; $6711: $58
    ld e, c                                       ; $6712: $59
    ld c, d                                       ; $6713: $4a
    ld c, e                                       ; $6714: $4b
    ld e, d                                       ; $6715: $5a
    ld e, e                                       ; $6716: $5b
    nop                                           ; $6717: $00
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    sbc a                                         ; $671a: $9f
    dec c                                         ; $671b: $0d
    ld c, $0e                                     ; $671c: $0e $0e
    ld c, $0d                                     ; $671e: $0e $0d
    rst $38                                       ; $6720: $ff
    db $e4                                        ; $6721: $e4
    push af                                       ; $6722: $f5
    ldh [$0e], a                                  ; $6723: $e0 $0e

jr_04c_6725:
    dec h                                         ; $6725: $25
    dec bc                                        ; $6726: $0b
    rst $38                                       ; $6727: $ff
    db $e4                                        ; $6728: $e4
    inc c                                         ; $6729: $0c
    rst $38                                       ; $672a: $ff
    ldh [$e8], a                                  ; $672b: $e0 $e8
    pop hl                                        ; $672d: $e1
    rrca                                          ; $672e: $0f
    rst $38                                       ; $672f: $ff
    ldh [$e8], a                                  ; $6730: $e0 $e8
    pop hl                                        ; $6732: $e1
    jr nc, jr_04c_6725                            ; $6733: $30 $f0

    pop hl                                        ; $6735: $e1
    db $ec                                        ; $6736: $ec
    pop hl                                        ; $6737: $e1
    ldh [$e1], a                                  ; $6738: $e0 $e1
    db $ec                                        ; $673a: $ec
    push hl                                       ; $673b: $e5
    ld c, $0c                                     ; $673c: $0e $0c
    cp $e1                                        ; $673e: $fe $e1
    ret c                                         ; $6740: $d8

    db $e3                                        ; $6741: $e3
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    rst $38                                       ; $6745: $ff
    ld b, h                                       ; $6746: $44
    ld b, l                                       ; $6747: $45
    ld d, h                                       ; $6748: $54
    ld d, l                                       ; $6749: $55
    ld b, [hl]                                    ; $674a: $46
    ld b, a                                       ; $674b: $47
    ld d, [hl]                                    ; $674c: $56
    ld d, a                                       ; $674d: $57
    rst $38                                       ; $674e: $ff
    ld c, b                                       ; $674f: $48
    ld c, c                                       ; $6750: $49
    ld e, b                                       ; $6751: $58
    ld e, c                                       ; $6752: $59
    ld c, d                                       ; $6753: $4a
    ld c, e                                       ; $6754: $4b
    ld e, d                                       ; $6755: $5a
    ld e, e                                       ; $6756: $5b
    rst $38                                       ; $6757: $ff
    add [hl]                                      ; $6758: $86
    add a                                         ; $6759: $87
    sub [hl]                                      ; $675a: $96
    sub a                                         ; $675b: $97
    adc b                                         ; $675c: $88
    adc c                                         ; $675d: $89
    sbc b                                         ; $675e: $98
    sbc c                                         ; $675f: $99
    rst $38                                       ; $6760: $ff
    adc d                                         ; $6761: $8a
    adc e                                         ; $6762: $8b
    sbc d                                         ; $6763: $9a
    sbc e                                         ; $6764: $9b
    adc h                                         ; $6765: $8c
    adc l                                         ; $6766: $8d
    sbc h                                         ; $6767: $9c
    sbc l                                         ; $6768: $9d
    rst $38                                       ; $6769: $ff
    and b                                         ; $676a: $a0
    and c                                         ; $676b: $a1
    or b                                          ; $676c: $b0
    or c                                          ; $676d: $b1
    and d                                         ; $676e: $a2
    and e                                         ; $676f: $a3
    or d                                          ; $6770: $b2
    or e                                          ; $6771: $b3
    rst $38                                       ; $6772: $ff
    adc [hl]                                      ; $6773: $8e
    adc a                                         ; $6774: $8f
    sbc [hl]                                      ; $6775: $9e
    sbc a                                         ; $6776: $9f
    ld b, d                                       ; $6777: $42
    ld b, e                                       ; $6778: $43
    ld d, d                                       ; $6779: $52
    ld d, e                                       ; $677a: $53
    nop                                           ; $677b: $00
    nop                                           ; $677c: $00
    nop                                           ; $677d: $00
    ld [hl], l                                    ; $677e: $75
    ld c, $ff                                     ; $677f: $0e $ff
    pop hl                                        ; $6781: $e1
    inc c                                         ; $6782: $0c
    cp $e1                                        ; $6783: $fe $e1
    inc c                                         ; $6785: $0c
    inc c                                         ; $6786: $0c
    dec c                                         ; $6787: $0d
    rst $38                                       ; $6788: $ff
    db $e4                                        ; $6789: $e4
    inc h                                         ; $678a: $24
    db $ed                                        ; $678b: $ed
    ld [c], a                                     ; $678c: $e2
    ldh a, [$e0]                                  ; $678d: $f0 $e0
    rrca                                          ; $678f: $0f
    rst $38                                       ; $6790: $ff
    ldh [$e0], a                                  ; $6791: $e0 $e0
    pop hl                                        ; $6793: $e1
    dec bc                                        ; $6794: $0b
    rst $38                                       ; $6795: $ff
    ldh [$e8], a                                  ; $6796: $e0 $e8
    push hl                                       ; $6798: $e5
    nop                                           ; $6799: $00
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00
    ld a, a                                       ; $679c: $7f
    rst $38                                       ; $679d: $ff
    nop                                           ; $679e: $00
    rst $38                                       ; $679f: $ff
    ld a, a                                       ; $67a0: $7f
    rst $00                                       ; $67a1: $c7
    ld c, a                                       ; $67a2: $4f
    rst $08                                       ; $67a3: $cf
    cp $e0                                        ; $67a4: $fe $e0
    cp a                                          ; $67a6: $bf
    rst $00                                       ; $67a7: $c7
    ld c, a                                       ; $67a8: $4f
    jp $c443                                      ; $67a9: $c3 $43 $c4


    ld b, a                                       ; $67ac: $47
    ldh a, [$e0]                                  ; $67ad: $f0 $e0
    rst $38                                       ; $67af: $ff
    rst $38                                       ; $67b0: $ff
    nop                                           ; $67b1: $00
    add b                                         ; $67b2: $80
    add b                                         ; $67b3: $80
    ret nz                                        ; $67b4: $c0

    ld hl, sp-$04                                 ; $67b5: $f8 $fc
    add $ff                                       ; $67b7: $c6 $ff
    cp l                                          ; $67b9: $bd
    add c                                         ; $67ba: $81
    di                                            ; $67bb: $f3
    ld [c], a                                     ; $67bc: $e2
    rst $38                                       ; $67bd: $ff
    cp $03                                        ; $67be: $fe $03
    ld [bc], a                                    ; $67c0: $02
    cp $e3                                        ; $67c1: $fe $e3
    add e                                         ; $67c3: $83
    rst $38                                       ; $67c4: $ff
    jp nz, $e243                                  ; $67c5: $c2 $43 $e2

    rst $00                                       ; $67c8: $c7
    ld b, a                                       ; $67c9: $47
    call $cd4f                                    ; $67ca: $cd $4f $cd
    rst $38                                       ; $67cd: $ff
    ld c, a                                       ; $67ce: $4f
    call nz, $c647                                ; $67cf: $c4 $47 $c6
    ld b, a                                       ; $67d2: $47
    jp nz, $c443                                  ; $67d3: $c2 $43 $c4

    rst $38                                       ; $67d6: $ff
    ld c, a                                       ; $67d7: $4f
    jp z, $c04f                                   ; $67d8: $ca $4f $c0

    rst $38                                       ; $67db: $ff
    ld hl, sp-$01                                 ; $67dc: $f8 $ff
    inc b                                         ; $67de: $04
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    db $e3                                        ; $67e1: $e3
    rst $38                                       ; $67e2: $ff
    db $d3                                        ; $67e3: $d3
    rst $18                                       ; $67e4: $df
    di                                            ; $67e5: $f3
    sbc a                                         ; $67e6: $9f
    jp nc, $dfff                                  ; $67e7: $d2 $ff $df

    ld bc, $23ef                                  ; $67ea: $01 $ef $23
    ld [c], a                                     ; $67ed: $e2
    inc hl                                        ; $67ee: $23
    ld a, [c]                                     ; $67ef: $f2
    inc de                                        ; $67f0: $13
    rst $38                                       ; $67f1: $ff
    ld a, [c]                                     ; $67f2: $f2
    sub e                                         ; $67f3: $93
    ld a, [c]                                     ; $67f4: $f2
    db $d3                                        ; $67f5: $d3
    ld a, [c]                                     ; $67f6: $f2
    di                                            ; $67f7: $f3
    ld a, [$bffb]                                 ; $67f8: $fa $fb $bf
    cp $7f                                        ; $67fb: $fe $7f
    cp $c8                                        ; $67fd: $fe $c8
    ld c, a                                       ; $67ff: $4f
    ret                                           ; $6800: $c9


    jp nc, $c2e0                                  ; $6801: $d2 $e0 $c2

    rst $38                                       ; $6804: $ff
    ld b, e                                       ; $6805: $43
    rst $00                                       ; $6806: $c7
    ld b, a                                       ; $6807: $47
    jp nz, $ff46                                  ; $6808: $c2 $46 $ff

    ld a, a                                       ; $680b: $7f
    rst $38                                       ; $680c: $ff
    rst $38                                       ; $680d: $ff
    nop                                           ; $680e: $00
    nop                                           ; $680f: $00
    rst $38                                       ; $6810: $ff
    add h                                         ; $6811: $84
    rst $38                                       ; $6812: $ff
    rlca                                          ; $6813: $07
    rst $38                                       ; $6814: $ff
    rra                                           ; $6815: $1f
    cp a                                          ; $6816: $bf
    rst $38                                       ; $6817: $ff
    push hl                                       ; $6818: $e5
    db $fd                                        ; $6819: $fd
    xor d                                         ; $681a: $aa
    ld a, b                                       ; $681b: $78
    rst $38                                       ; $681c: $ff
    sub l                                         ; $681d: $95
    ldh [$7f], a                                  ; $681e: $e0 $7f
    ld a, a                                       ; $6820: $7f
    cp $fb                                        ; $6821: $fe $fb
    cp $c3                                        ; $6823: $fe $c3
    ld [c], a                                     ; $6825: $e2
    add e                                         ; $6826: $83
    jp nz, $e1fe                                  ; $6827: $c2 $fe $e1

    rrca                                          ; $682a: $0f
    rst $38                                       ; $682b: $ff
    cp $ff                                        ; $682c: $fe $ff
    nop                                           ; $682e: $00
    nop                                           ; $682f: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    rst $38                                       ; $6832: $ff
    rst $38                                       ; $6833: $ff
    nop                                           ; $6834: $00
    rst $38                                       ; $6835: $ff
    ld a, a                                       ; $6836: $7f
    ret nz                                        ; $6837: $c0

    ld b, b                                       ; $6838: $40
    ret nz                                        ; $6839: $c0

    ld b, b                                       ; $683a: $40
    rst $38                                       ; $683b: $ff
    ret c                                         ; $683c: $d8

    ld e, l                                       ; $683d: $5d
    rst $28                                       ; $683e: $ef
    ld [hl], a                                    ; $683f: $77
    pop bc                                        ; $6840: $c1
    ld h, e                                       ; $6841: $63
    ret nz                                        ; $6842: $c0

    ld a, c                                       ; $6843: $79
    or $f0                                        ; $6844: $f6 $f0
    ldh [rIE], a                                  ; $6846: $e0 $ff
    nop                                           ; $6848: $00
    rst $38                                       ; $6849: $ff
    ldh [$7f], a                                  ; $684a: $e0 $7f
    rst $38                                       ; $684c: $ff
    add h                                         ; $684d: $84
    pop hl                                        ; $684e: $e1
    rst $30                                       ; $684f: $f7
    nop                                           ; $6850: $00
    rst $38                                       ; $6851: $ff
    sbc a                                         ; $6852: $9f
    di                                            ; $6853: $f3
    ldh [rIE], a                                  ; $6854: $e0 $ff
    cp $03                                        ; $6856: $fe $03
    ld [bc], a                                    ; $6858: $02
    rst $38                                       ; $6859: $ff
    inc bc                                        ; $685a: $03
    ld [bc], a                                    ; $685b: $02
    ld [hl], e                                    ; $685c: $73
    ld a, [$fa8b]                                 ; $685d: $fa $8b $fa
    ld b, a                                       ; $6860: $47
    cp $ff                                        ; $6861: $fe $ff
    ld l, e                                       ; $6863: $6b
    ld a, [$7fc0]                                 ; $6864: $fa $c0 $7f
    pop bc                                        ; $6867: $c1
    ld a, a                                       ; $6868: $7f
    and $7f                                       ; $6869: $e6 $7f
    rst $38                                       ; $686b: $ff
    ret c                                         ; $686c: $d8

    ld e, a                                       ; $686d: $5f
    db $d3                                        ; $686e: $d3
    ld e, a                                       ; $686f: $5f
    push de                                       ; $6870: $d5
    ld e, [hl]                                    ; $6871: $5e
    rst $08                                       ; $6872: $cf
    ld e, l                                       ; $6873: $5d
    rst $38                                       ; $6874: $ff
    call $ae4c                                    ; $6875: $cd $4c $ae
    ldh [$33], a                                  ; $6878: $e0 $33
    db $ec                                        ; $687a: $ec
    ld a, a                                       ; $687b: $7f
    ret nz                                        ; $687c: $c0

    rst $38                                       ; $687d: $ff
    ld l, e                                       ; $687e: $6b
    call z, $d457                                 ; $687f: $cc $57 $d4
    rst $28                                       ; $6882: $ef
    sbc h                                         ; $6883: $9c
    rst $20                                       ; $6884: $e7
    inc d                                         ; $6885: $14
    rst $38                                       ; $6886: $ff
    rst $28                                       ; $6887: $ef
    inc c                                         ; $6888: $0c
    xor e                                         ; $6889: $ab
    cp d                                          ; $688a: $ba
    xor e                                         ; $688b: $ab
    ld a, d                                       ; $688c: $7a
    di                                            ; $688d: $f3
    ld a, [hl-]                                   ; $688e: $3a
    rst $38                                       ; $688f: $ff
    db $e3                                        ; $6890: $e3
    ld h, d                                       ; $6891: $62
    and e                                         ; $6892: $a3
    ld [c], a                                     ; $6893: $e2
    db $e3                                        ; $6894: $e3
    ld [c], a                                     ; $6895: $e2
    and e                                         ; $6896: $a3
    and d                                         ; $6897: $a2
    rst $38                                       ; $6898: $ff
    ld h, e                                       ; $6899: $63
    ld h, d                                       ; $689a: $62
    add $4e                                       ; $689b: $c6 $4e
    jp $c047                                      ; $689d: $c3 $47 $c0


    ld b, e                                       ; $68a0: $43
    rst $38                                       ; $68a1: $ff
    ret nz                                        ; $68a2: $c0

    ld b, c                                       ; $68a3: $41
    pop bc                                        ; $68a4: $c1
    ld b, a                                       ; $68a5: $47
    push bc                                       ; $68a6: $c5
    ld c, h                                       ; $68a7: $4c
    rst $38                                       ; $68a8: $ff
    ld a, a                                       ; $68a9: $7f
    rst $38                                       ; $68aa: $ff
    rst $38                                       ; $68ab: $ff
    nop                                           ; $68ac: $00
    cp $80                                        ; $68ad: $fe $80
    ld a, a                                       ; $68af: $7f
    add b                                         ; $68b0: $80
    sbc e                                         ; $68b1: $9b
    jp nz, $e57f                                  ; $68b2: $c2 $7f $e5

    pop af                                        ; $68b5: $f1
    rra                                           ; $68b6: $1f
    ld a, a                                       ; $68b7: $7f
    rst $30                                       ; $68b8: $f7
    sbc d                                         ; $68b9: $9a
    rst $38                                       ; $68ba: $ff
    sub l                                         ; $68bb: $95
    ldh [rIE], a                                  ; $68bc: $e0 $ff
    db $e3                                        ; $68be: $e3
    and d                                         ; $68bf: $a2
    jp $8342                                      ; $68c0: $c3 $42 $83


    jp nz, $8203                                  ; $68c3: $c2 $03 $82

    rst $38                                       ; $68c6: $ff
    inc bc                                        ; $68c7: $03
    add d                                         ; $68c8: $82
    add e                                         ; $68c9: $83
    jp nz, $feff                                  ; $68ca: $c2 $ff $fe

    rst $38                                       ; $68cd: $ff
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    nop                                           ; $68d0: $00
    nop                                           ; $68d1: $00
    ld a, a                                       ; $68d2: $7f
    rst $38                                       ; $68d3: $ff
    nop                                           ; $68d4: $00
    rst $38                                       ; $68d5: $ff
    ld a, a                                       ; $68d6: $7f
    push bc                                       ; $68d7: $c5
    ld b, h                                       ; $68d8: $44
    rst $00                                       ; $68d9: $c7
    cp $e1                                        ; $68da: $fe $e1
    rst $18                                       ; $68dc: $df
    ld b, a                                       ; $68dd: $47
    call c, $e75e                                 ; $68de: $dc $5e $e7
    ld [hl], b                                    ; $68e1: $70
    ldh a, [$e0]                                  ; $68e2: $f0 $e0
    rst $38                                       ; $68e4: $ff
    db $f4                                        ; $68e5: $f4
    ei                                            ; $68e6: $fb
    rlca                                          ; $68e7: $07
    ld a, [$e0fe]                                 ; $68e8: $fa $fe $e0
    pop af                                        ; $68eb: $f1
    db $fd                                        ; $68ec: $fd
    rrca                                          ; $68ed: $0f
    rra                                           ; $68ee: $1f
    ld sp, hl                                     ; $68ef: $f9
    db $fd                                        ; $68f0: $fd
    inc bc                                        ; $68f1: $03
    ldh [$e0], a                                  ; $68f2: $e0 $e0
    cp $13                                        ; $68f4: $fe $13
    ld a, [c]                                     ; $68f6: $f2
    dec bc                                        ; $68f7: $0b
    ld a, [$ff0b]                                 ; $68f8: $fa $0b $ff
    ld a, [$fefb]                                 ; $68fb: $fa $fb $fe
    rst $08                                       ; $68fe: $cf
    ld e, $e7                                     ; $68ff: $1e $e7
    xor $df                                       ; $6901: $ee $df
    rst $38                                       ; $6903: $ff
    ld a, a                                       ; $6904: $7f
    db $fd                                        ; $6905: $fd
    ld a, h                                       ; $6906: $7c
    bit 1, [hl]                                   ; $6907: $cb $4e
    add $46                                       ; $6909: $c6 $46
    add $ff                                       ; $690b: $c6 $ff
    ld b, [hl]                                    ; $690d: $46
    push de                                       ; $690e: $d5
    ld d, l                                       ; $690f: $55
    db $dd                                        ; $6910: $dd
    ld e, h                                       ; $6911: $5c
    push de                                       ; $6912: $d5

jr_04c_6913:
    ld d, [hl]                                    ; $6913: $56
    add [hl]                                      ; $6914: $86
    rst $38                                       ; $6915: $ff
    rst $08                                       ; $6916: $cf
    db $fc                                        ; $6917: $fc
    ld a, a                                       ; $6918: $7f
    ld a, [$cd2b]                                 ; $6919: $fa $2b $cd
    dec de                                        ; $691c: $1b
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    jr jr_04c_6913                                ; $691f: $18 $f2

    ld bc, $00ff                                  ; $6921: $01 $ff $00
    cp l                                          ; $6924: $bd
    pop bc                                        ; $6925: $c1
    rra                                           ; $6926: $1f
    ei                                            ; $6927: $fb
    cp $07                                        ; $6928: $fe $07
    cp $e0                                        ; $692a: $fe $e0
    add e                                         ; $692c: $83
    cp $43                                        ; $692d: $fe $43
    cp $43                                        ; $692f: $fe $43
    ei                                            ; $6931: $fb
    ld a, [hl]                                    ; $6932: $7e
    ld b, e                                       ; $6933: $43
    ld hl, sp-$20                                 ; $6934: $f8 $e0
    jp nc, $c957                                  ; $6936: $d2 $57 $c9

    ld e, a                                       ; $6939: $5f
    add $ff                                       ; $693a: $c6 $ff
    ld c, a                                       ; $693c: $4f
    pop bc                                        ; $693d: $c1
    ld b, e                                       ; $693e: $43
    ret nz                                        ; $693f: $c0

    ld b, b                                       ; $6940: $40
    ret nz                                        ; $6941: $c0

    ld b, c                                       ; $6942: $41
    rst $38                                       ; $6943: $ff
    rst $38                                       ; $6944: $ff
    ld a, a                                       ; $6945: $7f
    rst $38                                       ; $6946: $ff
    nop                                           ; $6947: $00
    dec a                                         ; $6948: $3d
    inc bc                                        ; $6949: $03
    ld [hl], a                                    ; $694a: $77
    add a                                         ; $694b: $87
    adc c                                         ; $694c: $89
    rst $38                                       ; $694d: $ff
    rst $18                                       ; $694e: $df
    rst $38                                       ; $694f: $ff
    rst $38                                       ; $6950: $ff
    halt                                          ; $6951: $76
    ld e, b                                       ; $6952: $58
    xor c                                         ; $6953: $a9
    ei                                            ; $6954: $fb
    rst $38                                       ; $6955: $ff
    rst $38                                       ; $6956: $ff
    rst $38                                       ; $6957: $ff
    rst $38                                       ; $6958: $ff
    nop                                           ; $6959: $00
    inc bc                                        ; $695a: $03
    cp $03                                        ; $695b: $fe $03
    cp $13                                        ; $695d: $fe $13
    rst $38                                       ; $695f: $ff
    cp $ff                                        ; $6960: $fe $ff
    cp $83                                        ; $6962: $fe $83
    jp nz, $c243                                  ; $6964: $c2 $43 $c2

    rst $38                                       ; $6967: $ff
    rlca                                          ; $6968: $07
    cp $ff                                        ; $6969: $fe $ff
    nop                                           ; $696b: $00
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    nop                                           ; $696e: $00
    rst $38                                       ; $696f: $ff
    rst $38                                       ; $6970: $ff
    nop                                           ; $6971: $00
    rst $38                                       ; $6972: $ff
    ld a, a                                       ; $6973: $7f
    ret nz                                        ; $6974: $c0

    ld b, b                                       ; $6975: $40
    pop bc                                        ; $6976: $c1
    ld b, e                                       ; $6977: $43
    or a                                          ; $6978: $b7
    jp nz, $c447                                  ; $6979: $c2 $47 $c4

    cp $e0                                        ; $697c: $fe $e0
    ret z                                         ; $697e: $c8

    ld c, a                                       ; $697f: $4f
    ldh a, [$e0]                                  ; $6980: $f0 $e0
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    ld a, a                                       ; $6984: $7f
    rst $38                                       ; $6985: $ff
    add d                                         ; $6986: $82
    add sp, $00                                   ; $6987: $e8 $00
    db $fd                                        ; $6989: $fd
    jr c, @+$01                                   ; $698a: $38 $ff

    rst $28                                       ; $698c: $ef
    ld [hl], a                                    ; $698d: $77
    rst $00                                       ; $698e: $c7
    ld a, a                                       ; $698f: $7f
    ret nz                                        ; $6990: $c0

    ldh [$e0], a                                  ; $6991: $e0 $e0
    cp $03                                        ; $6993: $fe $03
    ld [bc], a                                    ; $6995: $02
    rst $38                                       ; $6996: $ff
    add e                                         ; $6997: $83
    add d                                         ; $6998: $82
    add e                                         ; $6999: $83
    add d                                         ; $699a: $82
    ld b, e                                       ; $699b: $43
    jp nz, $4243                                  ; $699c: $c2 $43 $42

    rst $38                                       ; $699f: $ff
    jp $c842                                      ; $69a0: $c3 $42 $c8


    ld c, a                                       ; $69a3: $4f
    pop de                                        ; $69a4: $d1
    ld e, a                                       ; $69a5: $5f
    pop de                                        ; $69a6: $d1
    ld e, a                                       ; $69a7: $5f
    rst $38                                       ; $69a8: $ff
    rst $10                                       ; $69a9: $d7
    ld e, a                                       ; $69aa: $5f
    reti                                          ; $69ab: $d9


    ld e, c                                       ; $69ac: $59
    rst $18                                       ; $69ad: $df
    ld e, e                                       ; $69ae: $5b
    call z, $ff49                                 ; $69af: $cc $49 $ff
    bit 1, h                                      ; $69b2: $cb $4c
    rst $00                                       ; $69b4: $c7
    sbc b                                         ; $69b5: $98
    ld a, a                                       ; $69b6: $7f
    nop                                           ; $69b7: $00
    db $fd                                        ; $69b8: $fd
    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    rst $30                                       ; $69bc: $f7
    ld [hl], l                                    ; $69bd: $75
    ld [hl], a                                    ; $69be: $77
    ei                                            ; $69bf: $fb
    ccf                                           ; $69c0: $3f
    db $fd                                        ; $69c1: $fd
    inc b                                         ; $69c2: $04
    ld a, a                                       ; $69c3: $7f
    ei                                            ; $69c4: $fb
    rlca                                          ; $69c5: $07
    ld b, e                                       ; $69c6: $43
    jp nz, Jump_04c_42c3                          ; $69c7: $c2 $c3 $42

    jp $e0d6                                      ; $69ca: $c3 $d6 $e0


    db $fc                                        ; $69cd: $fc
    ld hl, sp-$20                                 ; $69ce: $f8 $e0
    cp $e0                                        ; $69d0: $fe $e0
    ld b, e                                       ; $69d2: $43
    jp nz, Jump_04c_4fc6                          ; $69d3: $c2 $c6 $4f

    push bc                                       ; $69d6: $c5
    ld b, a                                       ; $69d7: $47
    or a                                          ; $69d8: $b7
    rst $00                                       ; $69d9: $c7
    ld c, a                                       ; $69da: $4f
    ret                                           ; $69db: $c9


    jp z, $d2e0                                   ; $69dc: $ca $e0 $d2

    ld e, [hl]                                    ; $69df: $5e
    and a                                         ; $69e0: $a7
    ldh [rP1], a                                  ; $69e1: $e0 $00
    rst $38                                       ; $69e3: $ff
    rst $38                                       ; $69e4: $ff
    nop                                           ; $69e5: $00
    or $0e                                        ; $69e6: $f6 $0e
    ld a, [$7d0f]                                 ; $69e8: $fa $0f $7d
    dec c                                         ; $69eb: $0d
    rst $38                                       ; $69ec: $ff
    ld a, l                                       ; $69ed: $7d
    add e                                         ; $69ee: $83
    ld a, [$ff86]                                 ; $69ef: $fa $86 $ff
    rst $38                                       ; $69f2: $ff
    rst $38                                       ; $69f3: $ff
    nop                                           ; $69f4: $00
    db $db                                        ; $69f5: $db
    ld b, e                                       ; $69f6: $43
    jp nz, $e1a4                                  ; $69f7: $c2 $a4 $e1

    inc bc                                        ; $69fa: $03
    ld [bc], a                                    ; $69fb: $02
    cp $e1                                        ; $69fc: $fe $e1
    rst $38                                       ; $69fe: $ff
    cp $03                                        ; $69ff: $fe $03
    rst $38                                       ; $6a01: $ff
    nop                                           ; $6a02: $00
    nop                                           ; $6a03: $00
    nop                                           ; $6a04: $00
    nop                                           ; $6a05: $00
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    nop                                           ; $6a08: $00
    rst $38                                       ; $6a09: $ff
    ld a, a                                       ; $6a0a: $7f
    rst $00                                       ; $6a0b: $c7
    ld b, a                                       ; $6a0c: $47
    ret z                                         ; $6a0d: $c8

    ld e, h                                       ; $6a0e: $5c
    rst $38                                       ; $6a0f: $ff
    reti                                          ; $6a10: $d9


    ld d, e                                       ; $6a11: $53
    ld [c], a                                     ; $6a12: $e2
    ld [hl], e                                    ; $6a13: $73
    ld [c], a                                     ; $6a14: $e2
    ld a, [hl]                                    ; $6a15: $7e
    push de                                       ; $6a16: $d5
    ld e, [hl]                                    ; $6a17: $5e
    or $f0                                        ; $6a18: $f6 $f0
    ldh [rIE], a                                  ; $6a1a: $e0 $ff
    inc bc                                        ; $6a1c: $03
    db $eb                                        ; $6a1d: $eb
    ldh [$c0], a                                  ; $6a1e: $e0 $c0
    rst $38                                       ; $6a20: $ff
    jr nc, jr_04c_6aa2                            ; $6a21: $30 $7f

    rst $28                                       ; $6a23: $ef
    add sp, $0f                                   ; $6a24: $e8 $0f
    ld hl, sp+$0f                                 ; $6a26: $f8 $0f
    ldh [$e0], a                                  ; $6a28: $e0 $e0
    cp $03                                        ; $6a2a: $fe $03
    add d                                         ; $6a2c: $82
    rst $38                                       ; $6a2d: $ff
    add e                                         ; $6a2e: $83
    ld [c], a                                     ; $6a2f: $e2
    ld b, e                                       ; $6a30: $43
    ld a, [c]                                     ; $6a31: $f2
    inc hl                                        ; $6a32: $23
    ld a, [c]                                     ; $6a33: $f2
    inc hl                                        ; $6a34: $23
    ld a, [$13ff]                                 ; $6a35: $fa $ff $13
    ld a, [$4dcb]                                 ; $6a38: $fa $cb $4d
    rst $08                                       ; $6a3b: $cf
    ld c, l                                       ; $6a3c: $4d
    jp z, $ff4b                                   ; $6a3d: $ca $4b $ff

    jp z, $cf4f                                   ; $6a40: $ca $4f $cf

    ld c, a                                       ; $6a43: $4f

jr_04c_6a44:
    jp c, $ef59                                   ; $6a44: $da $59 $ef

    ld h, b                                       ; $6a47: $60
    rst $38                                       ; $6a48: $ff
    cp $62                                        ; $6a49: $fe $62
    cp b                                          ; $6a4b: $b8
    rst $08                                       ; $6a4c: $cf
    call nc, $6ce7                                ; $6a4d: $d4 $e7 $6c
    and a                                         ; $6a50: $a7
    rst $38                                       ; $6a51: $ff
    cp h                                          ; $6a52: $bc
    cp a                                          ; $6a53: $bf
    daa                                           ; $6a54: $27
    rst $20                                       ; $6a55: $e7
    jp c, $f5ee                                   ; $6a56: $da $ee $f5

    dec b                                         ; $6a59: $05
    rst $10                                       ; $6a5a: $d7
    rst $38                                       ; $6a5b: $ff
    nop                                           ; $6a5c: $00
    inc de                                        ; $6a5d: $13
    call c, Call_000_13e0                         ; $6a5e: $dc $e0 $13
    call nc, $a3e0                                ; $6a61: $d4 $e0 $a3
    ld a, [c]                                     ; $6a64: $f2
    ei                                            ; $6a65: $fb
    db $e3                                        ; $6a66: $e3
    ld h, d                                       ; $6a67: $62
    cp $e1                                        ; $6a68: $fe $e1
    push hl                                       ; $6a6a: $e5
    halt                                          ; $6a6b: $76
    rst $18                                       ; $6a6c: $df
    ld e, a                                       ; $6a6d: $5f
    jp nz, $43ff                                  ; $6a6e: $c2 $ff $43

    jp $c143                                      ; $6a71: $c3 $43 $c1


    ld b, e                                       ; $6a74: $43
    pop bc                                        ; $6a75: $c1
    ld b, c                                       ; $6a76: $41
    rst $38                                       ; $6a77: $ff
    rst $38                                       ; $6a78: $ff
    ld a, a                                       ; $6a79: $7f
    rst $38                                       ; $6a7a: $ff
    nop                                           ; $6a7b: $00
    ld a, [$fb04]                                 ; $6a7c: $fa $04 $fb
    add e                                         ; $6a7f: $83
    ld a, [$87ff]                                 ; $6a80: $fa $ff $87
    ld [hl], l                                    ; $6a83: $75
    adc a                                         ; $6a84: $8f
    ld [$d20e], a                                 ; $6a85: $ea $0e $d2
    ccf                                           ; $6a88: $3f
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    rst $38                                       ; $6a8b: $ff
    rst $38                                       ; $6a8c: $ff
    nop                                           ; $6a8d: $00
    jp Jump_04c_43c2                              ; $6a8e: $c3 $c2 $43


    jp nz, $f783                                  ; $6a91: $c2 $83 $f7

    add d                                         ; $6a94: $82
    inc bc                                        ; $6a95: $03
    ld [bc], a                                    ; $6a96: $02
    cp $e1                                        ; $6a97: $fe $e1
    rst $38                                       ; $6a99: $ff
    cp $ff                                        ; $6a9a: $fe $ff
    nop                                           ; $6a9c: $00
    nop                                           ; $6a9d: $00
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff

jr_04c_6aa2:
    nop                                           ; $6aa2: $00
    rst $38                                       ; $6aa3: $ff
    ld a, a                                       ; $6aa4: $7f
    pop bc                                        ; $6aa5: $c1
    ld b, e                                       ; $6aa6: $43
    jp nz, $ff47                                  ; $6aa7: $c2 $47 $ff

    add $4f                                       ; $6aaa: $c6 $4f
    ret                                           ; $6aac: $c9


    ld e, a                                       ; $6aad: $5f
    ret nc                                        ; $6aae: $d0

    ld e, h                                       ; $6aaf: $5c
    ret nc                                        ; $6ab0: $d0

    ld a, c                                       ; $6ab1: $79
    db $fc                                        ; $6ab2: $fc
    ldh a, [$e0]                                  ; $6ab3: $f0 $e0
    db $ed                                        ; $6ab5: $ed
    ldh [rP1], a                                  ; $6ab6: $e0 $00
    cp a                                          ; $6ab8: $bf
    nop                                           ; $6ab9: $00
    rrca                                          ; $6aba: $0f
    jr nz, jr_04c_6a44                            ; $6abb: $20 $87

    rst $28                                       ; $6abd: $ef
    nop                                           ; $6abe: $00
    jp $f810                                      ; $6abf: $c3 $10 $f8


    ldh [$e0], a                                  ; $6ac2: $e0 $e0
    cp $c3                                        ; $6ac4: $fe $c3
    ld [c], a                                     ; $6ac6: $e2
    rst $38                                       ; $6ac7: $ff
    inc hl                                        ; $6ac8: $23
    ld a, [c]                                     ; $6ac9: $f2
    inc de                                        ; $6aca: $13
    ld a, [$fa0b]                                 ; $6acb: $fa $0b $fa
    dec bc                                        ; $6ace: $0b
    cp $ff                                        ; $6acf: $fe $ff
    rlca                                          ; $6ad1: $07
    cp $e1                                        ; $6ad2: $fe $e1
    ld [hl], e                                    ; $6ad4: $73
    pop hl                                        ; $6ad5: $e1
    ld [hl], e                                    ; $6ad6: $73
    ldh [$7b], a                                  ; $6ad7: $e0 $7b
    rst $38                                       ; $6ad9: $ff
    ldh [$7f], a                                  ; $6ada: $e0 $7f
    ldh [$7f], a                                  ; $6adc: $e0 $7f
    pop hl                                        ; $6ade: $e1
    ld a, a                                       ; $6adf: $7f
    db $d3                                        ; $6ae0: $d3
    ld a, [hl]                                    ; $6ae1: $7e
    rst $38                                       ; $6ae2: $ff
    db $d3                                        ; $6ae3: $d3
    ld e, [hl]                                    ; $6ae4: $5e
    sbc h                                         ; $6ae5: $9c
    rst $38                                       ; $6ae6: $ff
    db $e3                                        ; $6ae7: $e3
    ld [hl], a                                    ; $6ae8: $77
    db $fc                                        ; $6ae9: $fc
    or c                                          ; $6aea: $b1
    rst $38                                       ; $6aeb: $ff
    ld e, a                                       ; $6aec: $5f
    ldh [$d7], a                                  ; $6aed: $e0 $d7
    ret c                                         ; $6aef: $d8

    cp [hl]                                       ; $6af0: $be
    ld l, c                                       ; $6af1: $69
    sbc $b9                                       ; $6af2: $de $b9
    rst $38                                       ; $6af4: $ff
    ld h, a                                       ; $6af5: $67
    sub c                                         ; $6af6: $91
    rlca                                          ; $6af7: $07
    ld a, [hl]                                    ; $6af8: $7e
    rlca                                          ; $6af9: $07
    cp $87                                        ; $6afa: $fe $87
    cp $ff                                        ; $6afc: $fe $ff
    ld b, a                                       ; $6afe: $47
    ld a, [hl]                                    ; $6aff: $7e
    ld c, e                                       ; $6b00: $4b
    cp $8b                                        ; $6b01: $fe $8b
    cp d                                          ; $6b03: $ba
    db $d3                                        ; $6b04: $d3
    ld a, [c]                                     ; $6b05: $f2
    rst $38                                       ; $6b06: $ff
    db $d3                                        ; $6b07: $d3
    ld [hl], d                                    ; $6b08: $72
    ret                                           ; $6b09: $c9


    ld c, a                                       ; $6b0a: $4f
    call nz, $c347                                ; $6b0b: $c4 $47 $c3
    ld b, e                                       ; $6b0e: $43
    rst $38                                       ; $6b0f: $ff
    jp nz, $c143                                  ; $6b10: $c2 $43 $c1

    ld b, c                                       ; $6b13: $41
    ret nz                                        ; $6b14: $c0

    ld b, b                                       ; $6b15: $40
    rst $38                                       ; $6b16: $ff
    ld a, a                                       ; $6b17: $7f
    cp $a5                                        ; $6b18: $fe $a5
    pop hl                                        ; $6b1a: $e1
    cp d                                          ; $6b1b: $ba
    jp $407d                                      ; $6b1c: $c3 $7d $40


    rst $18                                       ; $6b1f: $df
    pop hl                                        ; $6b20: $e1
    halt                                          ; $6b21: $76
    rst $28                                       ; $6b22: $ef
    ld a, [$dfee]                                 ; $6b23: $fa $ee $df
    rst $38                                       ; $6b26: $ff
    sub l                                         ; $6b27: $95
    ldh [$e3], a                                  ; $6b28: $e0 $e3
    ld h, d                                       ; $6b2a: $62
    jp Jump_04c_42df                              ; $6b2b: $c3 $df $42


    add e                                         ; $6b2e: $83
    add d                                         ; $6b2f: $82
    inc bc                                        ; $6b30: $03
    ld [bc], a                                    ; $6b31: $02
    cp $e1                                        ; $6b32: $fe $e1
    rst $38                                       ; $6b34: $ff
    cp $03                                        ; $6b35: $fe $03
    rst $38                                       ; $6b37: $ff
    nop                                           ; $6b38: $00
    nop                                           ; $6b39: $00
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    cp a                                          ; $6b3c: $bf
    rst $38                                       ; $6b3d: $ff
    nop                                           ; $6b3e: $00

jr_04c_6b3f:
    rst $38                                       ; $6b3f: $ff
    ld a, a                                       ; $6b40: $7f
    ret nz                                        ; $6b41: $c0

    ld b, b                                       ; $6b42: $40
    cp $e2                                        ; $6b43: $fe $e2
    ld b, c                                       ; $6b45: $41
    rst $28                                       ; $6b46: $ef
    pop bc                                        ; $6b47: $c1
    ld b, e                                       ; $6b48: $43
    jp nz, $f043                                  ; $6b49: $c2 $43 $f0

    ldh [rIE], a                                  ; $6b4c: $e0 $ff
    dec de                                        ; $6b4e: $1b
    dec sp                                        ; $6b4f: $3b
    rst $38                                       ; $6b50: $ff
    rrca                                          ; $6b51: $0f
    dec de                                        ; $6b52: $1b
    ld a, [hl]                                    ; $6b53: $7e
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    rst $38                                       ; $6b56: $ff
    inc hl                                        ; $6b57: $23
    adc a                                         ; $6b58: $8f
    ei                                            ; $6b59: $fb
    nop                                           ; $6b5a: $00
    ccf                                           ; $6b5b: $3f
    ldh [$e0], a                                  ; $6b5c: $e0 $e0
    cp $83                                        ; $6b5e: $fe $83
    add d                                         ; $6b60: $82
    inc bc                                        ; $6b61: $03
    ld [bc], a                                    ; $6b62: $02
    cp $fe                                        ; $6b63: $fe $fe
    ldh [$82], a                                  ; $6b65: $e0 $82
    add e                                         ; $6b67: $83
    add d                                         ; $6b68: $82
    add e                                         ; $6b69: $83
    jp nz, $47c3                                  ; $6b6a: $c2 $c3 $47

    rst $38                                       ; $6b6d: $ff
    rst $00                                       ; $6b6e: $c7
    ld b, a                                       ; $6b6f: $47
    call nz, $c547                                ; $6b70: $c4 $47 $c5
    ld c, [hl]                                    ; $6b73: $4e
    ret                                           ; $6b74: $c9


    ld c, a                                       ; $6b75: $4f

jr_04c_6b76:
    rst $38                                       ; $6b76: $ff
    ret z                                         ; $6b77: $c8

    ld c, a                                       ; $6b78: $4f
    ret                                           ; $6b79: $c9


    ld c, l                                       ; $6b7a: $4d
    bit 1, [hl]                                   ; $6b7b: $cb $4e
    db $10                                        ; $6b7d: $10
    rst $38                                       ; $6b7e: $ff
    db $fd                                        ; $6b7f: $fd
    jr c, jr_04c_6b3f                             ; $6b80: $38 $bd

    ldh [$30], a                                  ; $6b82: $e0 $30
    rst $18                                       ; $6b84: $df
    jr nz, jr_04c_6b76                            ; $6b85: $20 $ef

    ret nz                                        ; $6b87: $c0

    rst $38                                       ; $6b88: $ff
    ld l, a                                       ; $6b89: $6f
    ld b, b                                       ; $6b8a: $40
    ei                                            ; $6b8b: $fb
    jr nz, @+$81                                  ; $6b8c: $20 $7f

    cp l                                          ; $6b8e: $bd
    ldh [$e2], a                                  ; $6b8f: $e0 $e2
    inc hl                                        ; $6b91: $23
    cp $e1                                        ; $6b92: $fe $e1
    rst $38                                       ; $6b94: $ff
    ld a, [c]                                     ; $6b95: $f2
    di                                            ; $6b96: $f3
    ld a, [c]                                     ; $6b97: $f2
    sub e                                         ; $6b98: $93
    ld a, [c]                                     ; $6b99: $f2
    ld d, e                                       ; $6b9a: $53
    ld a, [c]                                     ; $6b9b: $f2
    jp z, $d6fe                                   ; $6b9c: $ca $fe $d6

    ldh [$d8], a                                  ; $6b9f: $e0 $d8
    ld a, a                                       ; $6ba1: $7f
    db $ec                                        ; $6ba2: $ec
    ld l, a                                       ; $6ba3: $6f
    db $db                                        ; $6ba4: $db
    ld c, a                                       ; $6ba5: $4f
    db $ec                                        ; $6ba6: $ec
    rst $38                                       ; $6ba7: $ff
    ld h, a                                       ; $6ba8: $67
    rst $38                                       ; $6ba9: $ff
    ld a, a                                       ; $6baa: $7f
    rst $38                                       ; $6bab: $ff
    nop                                           ; $6bac: $00
    jr nz, @+$01                                  ; $6bad: $20 $ff

    ret nz                                        ; $6baf: $c0

    cp [hl]                                       ; $6bb0: $be
    adc l                                         ; $6bb1: $8d
    ldh [$88], a                                  ; $6bb2: $e0 $88
    rst $38                                       ; $6bb4: $ff
    ld [hl], b                                    ; $6bb5: $70
    rst $38                                       ; $6bb6: $ff
    ld bc, $e09e                                  ; $6bb7: $01 $9e $e0
    rst $38                                       ; $6bba: $ff
    rst $38                                       ; $6bbb: $ff
    nop                                           ; $6bbc: $00
    inc de                                        ; $6bbd: $13
    ld a, [c]                                     ; $6bbe: $f2
    and e                                         ; $6bbf: $a3
    ld a, [c]                                     ; $6bc0: $f2
    ld [hl], e                                    ; $6bc1: $73
    ld a, [c]                                     ; $6bc2: $f2
    ld c, a                                       ; $6bc3: $4f
    rst $38                                       ; $6bc4: $ff
    xor $97                                       ; $6bc5: $ee $97
    add $2b                                       ; $6bc7: $c6 $2b
    adc [hl]                                      ; $6bc9: $8e
    rst $38                                       ; $6bca: $ff
    cp $ff                                        ; $6bcb: $fe $ff
    ld bc, $0000                                  ; $6bcd: $01 $00 $00
    nop                                           ; $6bd0: $00
    nop                                           ; $6bd1: $00
    rst $38                                       ; $6bd2: $ff
    rst $38                                       ; $6bd3: $ff
    nop                                           ; $6bd4: $00
    rst $38                                       ; $6bd5: $ff
    ld a, a                                       ; $6bd6: $7f
    jp nz, $c647                                  ; $6bd7: $c2 $47 $c6

    ld b, a                                       ; $6bda: $47
    rst $38                                       ; $6bdb: $ff
    push bc                                       ; $6bdc: $c5
    ld c, a                                       ; $6bdd: $4f
    ld sp, hl                                     ; $6bde: $f9
    ld a, h                                       ; $6bdf: $7c
    add $4f                                       ; $6be0: $c6 $4f
    pop bc                                        ; $6be2: $c1
    ld h, e                                       ; $6be3: $63
    cp $f0                                        ; $6be4: $fe $f0
    ldh [rIE], a                                  ; $6be6: $e0 $ff
    nop                                           ; $6be8: $00
    ccf                                           ; $6be9: $3f
    nop                                           ; $6bea: $00
    adc a                                         ; $6beb: $8f
    ldh [$f3], a                                  ; $6bec: $e0 $f3
    cp a                                          ; $6bee: $bf
    sbc a                                         ; $6bef: $9f
    ccf                                           ; $6bf0: $3f
    ld a, h                                       ; $6bf1: $7c
    ld bc, $f8e3                                  ; $6bf2: $01 $e3 $f8
    ldh [$e0], a                                  ; $6bf5: $e0 $e0
    cp $ef                                        ; $6bf7: $fe $ef
    inc hl                                        ; $6bf9: $23
    ld [c], a                                     ; $6bfa: $e2
    inc de                                        ; $6bfb: $13
    ld a, [c]                                     ; $6bfc: $f2
    cp $e1                                        ; $6bfd: $fe $e1
    ei                                            ; $6bff: $fb
    ld a, [$bf8f]                                 ; $6c00: $fa $8f $bf
    ld e, $f0                                     ; $6c03: $1e $f0
    ld a, b                                       ; $6c05: $78
    adc $4f                                       ; $6c06: $ce $4f
    ret                                           ; $6c08: $c9


    cp $e0                                        ; $6c09: $fe $e0
    jp z, $4fff                                   ; $6c0b: $ca $ff $4f

    bit 1, [hl]                                   ; $6c0e: $cb $4e
    bit 1, [hl]                                   ; $6c10: $cb $4e
    add $4f                                       ; $6c12: $c6 $4f
    rra                                           ; $6c14: $1f
    cp $bf                                        ; $6c15: $fe $bf
    ldh [$e0], a                                  ; $6c17: $e0 $e0
    rst $38                                       ; $6c19: $ff
    sbc a                                         ; $6c1a: $9f
    rst $18                                       ; $6c1b: $df
    db $e4                                        ; $6c1c: $e4
    ld c, h                                       ; $6c1d: $4c
    or d                                          ; $6c1e: $b2
    rst $38                                       ; $6c1f: $ff
    call nz, $803f                                ; $6c20: $c4 $3f $80
    rst $38                                       ; $6c23: $ff
    nop                                           ; $6c24: $00
    dec bc                                        ; $6c25: $0b
    cp [hl]                                       ; $6c26: $be
    di                                            ; $6c27: $f3
    rst $38                                       ; $6c28: $ff
    cp $03                                        ; $6c29: $fe $03
    cp $ff                                        ; $6c2b: $fe $ff
    cp $63                                        ; $6c2d: $fe $63
    ld [hl], d                                    ; $6c2f: $72
    inc hl                                        ; $6c30: $23
    rst $38                                       ; $6c31: $ff
    ld [hl], d                                    ; $6c32: $72
    inc hl                                        ; $6c33: $23
    or d                                          ; $6c34: $b2
    and e                                         ; $6c35: $a3
    ld [c], a                                     ; $6c36: $e2
    push bc                                       ; $6c37: $c5
    ld b, a                                       ; $6c38: $47
    jp $47ff                                      ; $6c39: $c3 $ff $47


    jp $c243                                      ; $6c3c: $c3 $43 $c2


    ld b, [hl]                                    ; $6c3f: $46
    add $4f                                       ; $6c40: $c6 $4f
    ret                                           ; $6c42: $c9


    rst $30                                       ; $6c43: $f7
    ld e, e                                       ; $6c44: $5b
    rst $38                                       ; $6c45: $ff
    ld a, a                                       ; $6c46: $7f
    and l                                         ; $6c47: $a5
    ldh [$80], a                                  ; $6c48: $e0 $80
    db $fd                                        ; $6c4a: $fd
    jp $ff5e                                      ; $6c4b: $c3 $5e $ff


    ret nz                                        ; $6c4e: $c0

    ld h, $f0                                     ; $6c4f: $26 $f0
    add hl, de                                    ; $6c51: $19
    ld a, a                                       ; $6c52: $7f
    ld b, $9f                                     ; $6c53: $06 $9f
    rst $38                                       ; $6c55: $ff
    cp $95                                        ; $6c56: $fe $95
    ldh [rSCX], a                                 ; $6c58: $e0 $43
    ld h, d                                       ; $6c5a: $62
    ld b, e                                       ; $6c5b: $43
    jp nz, $c283                                  ; $6c5c: $c2 $83 $c2

    add e                                         ; $6c5f: $83
    rst $38                                       ; $6c60: $ff
    add d                                         ; $6c61: $82
    inc bc                                        ; $6c62: $03
    add d                                         ; $6c63: $82
    add e                                         ; $6c64: $83
    jp nz, $feff                                  ; $6c65: $c2 $ff $fe

    rst $38                                       ; $6c68: $ff
    ld bc, $0000                                  ; $6c69: $01 $00 $00
    nop                                           ; $6c6c: $00
    nop                                           ; $6c6d: $00

    db $ff, $ff, $00, $ff, $7f, $c0, $41, $c3, $43, $ff, $c4, $44, $c6, $44, $cf, $4f
    db $d0, $51, $fe, $f0, $e0, $ff, $f8, $fc, $07, $ff, $18, $ff, $e7, $20, $ff, $e0
    db $fa, $e0, $e0, $e0, $fe, $03, $02, $ff, $03, $82, $c3, $e2, $23, $f2, $13, $f2
    db $ff, $0b, $fa, $df, $5f, $cd, $4c, $c5, $44, $ff, $cf, $4e, $d6, $50, $df, $50
    db $d5, $59, $ff, $cf, $4f, $c6, $ff, $7f, $7f, $db, $93, $ff, $ef, $d7, $af, $c6
    db $fe, $03, $ef, $e0, $ff, $ef, $e0, $0b, $fa, $8b, $fa, $eb, $fa, $df, $f3, $fa
    db $73, $72, $f3, $fe, $e0, $63, $72, $ff, $cf, $4f, $c5, $45, $c3, $46, $c1, $43
    db $ff, $c2, $47, $c7, $47, $ff, $7f, $ff, $00, $ff, $de, $c0, $7b, $03, $f2, $07
    db $cc, $1f, $ef, $f1, $ff, $5a, $ff, $ff, $e0, $00, $e3, $e2, $7f, $c3, $e2, $e3
    db $e2, $83, $c2, $43, $a0, $e0, $0f, $ff, $fe, $ff, $00, $00, $00

    nop                                           ; $6d0b: $00

    db $ff, $ff, $00, $ff, $7f, $c0, $40, $c0, $41, $ff, $c3, $47, $c4, $4d, $c8, $5b
    db $c8, $5b, $fe, $f0, $e0, $ff, $3e, $7f, $e1, $ff, $18, $ff, $e7, $04, $ff, $07
    db $fa, $e0, $e0, $e0, $fe, $03, $02, $ff, $c3, $c2, $23, $22, $e3, $22, $f3, $f2
    db $ff, $0b, $fa, $c9, $5f, $cf, $5f, $c7, $4f, $ff, $c7, $47, $c7, $47, $c6, $46
    db $c3, $46, $ff, $c2, $42, $e3, $ff, $ff, $fe, $db, $f9, $ff, $d7, $cb, $f6, $e3
    db $af, $60, $f7, $8f, $ff, $f7, $07, $fb, $fa, $b3, $32, $e3, $62, $fe, $fe, $e0
    db $72, $f3, $12, $73, $12, $e3, $f2, $9f, $c1, $43, $c0, $41, $c1, $fe, $e0, $9c
    db $e0, $40, $ff, $ff, $7f, $ff, $00, $5b, $03, $dc, $c0, $ff, $df, $c1, $ff, $e0
    db $6e, $60, $27, $21, $fd, $ff, $a2, $e0, $a3, $a2, $c3, $42, $03, $c2, $ff, $83
    db $82, $83, $82, $03, $02, $ff, $fe, $03, $ff, $00, $00, $00

    nop                                           ; $6da8: $00

    db $ff, $ff, $00, $ff, $7f, $c0, $40, $c1, $43, $ff, $c3, $47, $c7, $47, $c6, $47
    db $c4, $4f, $de, $f0, $e0, $ff, $7c, $fe, $ff, $ff, $e0, $01, $ff, $ef, $38, $ff
    db $7c, $ff, $e0, $e0, $fe, $03, $02, $ff, $03, $82, $83, $c2, $c3, $e2, $e3, $e2
    db $ff, $63, $f2, $cc, $4f, $cf, $4f, $c7, $4f, $f7, $c7, $47, $c7, $f8, $e0, $df
    db $5f, $cf, $5f, $ff, $7c, $ff, $fc, $ff, $f8, $ff, $e3, $ff, $f9, $c7, $fe, $e0
    db $ca, $e1, $73, $f2, $73, $f2, $f3, $63, $f2, $e3, $fc, $e0, $fe, $e3, $d2, $e1
    db $c3, $47, $a0, $e2, $1f, $4f, $ff, $7f, $ff, $00, $d8, $e1, $d6, $e3, $d1, $e2
    db $bf, $00, $e3, $f2, $c3, $e2, $83, $a2, $e3, $f2, $0f, $ff, $fe, $ff, $00, $00
    db $00

    nop                                           ; $6e2a: $00
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    nop                                           ; $6e2d: $00
    rst $38                                       ; $6e2e: $ff
    ld a, a                                       ; $6e2f: $7f
    ret z                                         ; $6e30: $c8

    ld c, a                                       ; $6e31: $4f
    rst $08                                       ; $6e32: $cf
    ld c, b                                       ; $6e33: $48
    rst $38                                       ; $6e34: $ff
    bit 1, b                                      ; $6e35: $cb $48
    rst $08                                       ; $6e37: $cf
    ld c, a                                       ; $6e38: $4f
    ret nc                                        ; $6e39: $d0

    ld e, a                                       ; $6e3a: $5f
    db $ec                                        ; $6e3b: $ec
    ld a, a                                       ; $6e3c: $7f
    cp $f0                                        ; $6e3d: $fe $f0
    ldh [rIE], a                                  ; $6e3f: $e0 $ff
    ld b, $ff                                     ; $6e41: $06 $ff
    add c                                         ; $6e43: $81
    ccf                                           ; $6e44: $3f
    nop                                           ; $6e45: $00
    ld a, a                                       ; $6e46: $7f
    cp a                                          ; $6e47: $bf
    ldh [rIE], a                                  ; $6e48: $e0 $ff
    jr @+$01                                      ; $6e4a: $18 $ff

    halt                                          ; $6e4c: $76
    rst $38                                       ; $6e4d: $ff
    ldh [$e0], a                                  ; $6e4e: $e0 $e0
    cp $ff                                        ; $6e50: $fe $ff
    inc bc                                        ; $6e52: $03
    ld [bc], a                                    ; $6e53: $02
    add e                                         ; $6e54: $83
    add d                                         ; $6e55: $82
    ld b, e                                       ; $6e56: $43
    jp nz, $fa3b                                  ; $6e57: $c2 $3b $fa

    rst $38                                       ; $6e5a: $ff
    rrca                                          ; $6e5b: $0f
    cp $17                                        ; $6e5c: $fe $17
    ld a, [$7fef]                                 ; $6e5e: $fa $ef $7f
    sbc $5b                                       ; $6e61: $de $5b
    rst $38                                       ; $6e63: $ff
    rst $38                                       ; $6e64: $ff
    ld a, l                                       ; $6e65: $7d
    cp $7b                                        ; $6e66: $fe $7b
    call nc, $fa5c                                ; $6e68: $d4 $5c $fa

Jump_04c_6e6b:
    ld a, h                                       ; $6e6b: $7c
    rst $38                                       ; $6e6c: $ff
    ret c                                         ; $6e6d: $d8

    ld a, h                                       ; $6e6e: $7c
    rst $28                                       ; $6e6f: $ef
    ld a, a                                       ; $6e70: $7f
    rst $38                                       ; $6e71: $ff
    rst $38                                       ; $6e72: $ff
    ld [hl], l                                    ; $6e73: $75
    ld b, l                                       ; $6e74: $45
    rst $38                                       ; $6e75: $ff
    db $fd                                        ; $6e76: $fd
    and l                                         ; $6e77: $a5
    halt                                          ; $6e78: $76
    rst $00                                       ; $6e79: $c7
    ld a, [hl-]                                   ; $6e7a: $3a
    ld a, a                                       ; $6e7b: $7f
    rla                                           ; $6e7c: $17
    add hl, sp                                    ; $6e7d: $39
    rst $38                                       ; $6e7e: $ff
    ld l, a                                       ; $6e7f: $6f
    rst $38                                       ; $6e80: $ff
    rst $38                                       ; $6e81: $ff
    rst $38                                       ; $6e82: $ff
    xor a                                         ; $6e83: $af
    ld [c], a                                     ; $6e84: $e2
    ld e, a                                       ; $6e85: $5f
    jp nz, Jump_04c_7bff                          ; $6e86: $c2 $ff $7b

    jp nc, $e67f                                  ; $6e89: $d2 $7f $e6

    ld d, a                                       ; $6e8c: $57
    xor $ef                                       ; $6e8d: $ee $ef
    cp $ff                                        ; $6e8f: $fe $ff
    rst $10                                       ; $6e91: $d7
    cp $a3                                        ; $6e92: $fe $a3
    cp $ee                                        ; $6e94: $fe $ee
    ld l, [hl]                                    ; $6e96: $6e
    push af                                       ; $6e97: $f5
    halt                                          ; $6e98: $76
    ccf                                           ; $6e99: $3f
    rst $10                                       ; $6e9a: $d7
    ld [hl], a                                    ; $6e9b: $77
    rst $38                                       ; $6e9c: $ff
    ld [hl], b                                    ; $6e9d: $70
    or $72                                        ; $6e9e: $f6 $72
    call nc, $a2e0                                ; $6ea0: $d4 $e0 $a2
    pop hl                                        ; $6ea3: $e1
    rst $38                                       ; $6ea4: $ff
    db $fc                                        ; $6ea5: $fc
    ccf                                           ; $6ea6: $3f
    ld a, h                                       ; $6ea7: $7c
    db $dd                                        ; $6ea8: $dd
    db $e3                                        ; $6ea9: $e3
    rst $30                                       ; $6eaa: $f7
    rrca                                          ; $6eab: $0f
    rst $18                                       ; $6eac: $df
    ei                                            ; $6ead: $fb
    rra                                           ; $6eae: $1f
    cp $d2                                        ; $6eaf: $fe $d2
    ldh [rIE], a                                  ; $6eb1: $e0 $ff
    nop                                           ; $6eb3: $00
    and e                                         ; $6eb4: $a3
    ld a, [hl]                                    ; $6eb5: $7e
    ld h, e                                       ; $6eb6: $63
    rst $38                                       ; $6eb7: $ff
    cp $eb                                        ; $6eb8: $fe $eb
    cp $e7                                        ; $6eba: $fe $e7
    cp $e3                                        ; $6ebc: $fe $e3
    cp $f3                                        ; $6ebe: $fe $f3
    rra                                           ; $6ec0: $1f
    ld a, [hl]                                    ; $6ec1: $7e
    rst $38                                       ; $6ec2: $ff
    cp $ff                                        ; $6ec3: $fe $ff
    nop                                           ; $6ec5: $00
    nop                                           ; $6ec6: $00
    nop                                           ; $6ec7: $00
    nop                                           ; $6ec8: $00
    nop                                           ; $6ec9: $00
    nop                                           ; $6eca: $00
    rlca                                          ; $6ecb: $07
    inc bc                                        ; $6ecc: $03
    rra                                           ; $6ecd: $1f
    inc c                                         ; $6ece: $0c
    inc sp                                        ; $6ecf: $33
    inc e                                         ; $6ed0: $1c
    ld h, $39                                     ; $6ed1: $26 $39
    ld a, h                                       ; $6ed3: $7c
    inc hl                                        ; $6ed4: $23
    ld a, h                                       ; $6ed5: $7c
    ld b, e                                       ; $6ed6: $43
    ld e, [hl]                                    ; $6ed7: $5e
    ld h, c                                       ; $6ed8: $61
    nop                                           ; $6ed9: $00
    nop                                           ; $6eda: $00
    ldh [$c0], a                                  ; $6edb: $e0 $c0
    ld hl, sp+$30                                 ; $6edd: $f8 $30
    call z, Call_04c_6438                         ; $6edf: $cc $38 $64
    sbc h                                         ; $6ee2: $9c
    ld a, $c4                                     ; $6ee3: $3e $c4
    ld a, $c2                                     ; $6ee5: $3e $c2
    ld a, d                                       ; $6ee7: $7a

jr_04c_6ee8:
    add [hl]                                      ; $6ee8: $86
    rlca                                          ; $6ee9: $07
    inc bc                                        ; $6eea: $03
    nop                                           ; $6eeb: $00
    nop                                           ; $6eec: $00
    inc bc                                        ; $6eed: $03
    ld bc, $060f                                  ; $6eee: $01 $0f $06
    add hl, de                                    ; $6ef1: $19
    ld c, $13                                     ; $6ef2: $0e $13
    inc e                                         ; $6ef4: $1c
    ld a, $11                                     ; $6ef5: $3e $11
    ld a, $21                                     ; $6ef7: $3e $21
    ld hl, sp-$10                                 ; $6ef9: $f8 $f0
    nop                                           ; $6efb: $00
    nop                                           ; $6efc: $00
    ldh a, [$e0]                                  ; $6efd: $f0 $e0
    db $fc                                        ; $6eff: $fc
    jr jr_04c_6ee8                                ; $6f00: $18 $e6

    inc e                                         ; $6f02: $1c
    ld [hl-], a                                   ; $6f03: $32
    adc $1f                                       ; $6f04: $ce $1f
    ld [c], a                                     ; $6f06: $e2
    rra                                           ; $6f07: $1f
    pop hl                                        ; $6f08: $e1
    ld b, $03                                     ; $6f09: $06 $03
    inc bc                                        ; $6f0b: $03
    ld bc, $0000                                  ; $6f0c: $01 $00 $00
    ld bc, $0700                                  ; $6f0f: $01 $00 $07
    inc bc                                        ; $6f12: $03
    inc c                                         ; $6f13: $0c
    rlca                                          ; $6f14: $07
    add hl, bc                                    ; $6f15: $09
    ld c, $9f                                     ; $6f16: $0e $9f
    ld [$fc06], sp                                ; $6f18: $08 $06 $fc
    db $fc                                        ; $6f1b: $fc
    ld hl, sp+$00                                 ; $6f1c: $f8 $00
    nop                                           ; $6f1e: $00
    ld hl, sp-$10                                 ; $6f1f: $f8 $f0
    cp $0c                                        ; $6f21: $fe $0c
    di                                            ; $6f23: $f3
    ld c, $99                                     ; $6f24: $0e $99
    ld h, a                                       ; $6f26: $67
    rrca                                          ; $6f27: $0f
    pop af                                        ; $6f28: $f1
    ld [bc], a                                    ; $6f29: $02
    inc bc                                        ; $6f2a: $03
    inc bc                                        ; $6f2b: $03
    ld bc, $0001                                  ; $6f2c: $01 $01 $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    inc bc                                        ; $6f33: $03
    ld bc, $0386                                  ; $6f34: $01 $86 $03
    add h                                         ; $6f37: $84
    add a                                         ; $6f38: $87
    ld bc, $03ff                                  ; $6f39: $01 $ff $03
    cp $fe                                        ; $6f3c: $fe $fe
    db $fc                                        ; $6f3e: $fc
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    db $fc                                        ; $6f41: $fc
    ld a, b                                       ; $6f42: $78
    rst $38                                       ; $6f43: $ff
    add [hl]                                      ; $6f44: $86
    ld a, c                                       ; $6f45: $79
    add a                                         ; $6f46: $87
    call z, $c333                                 ; $6f47: $cc $33 $c3
    add c                                         ; $6f4a: $81
    add c                                         ; $6f4b: $81
    add c                                         ; $6f4c: $81
    add c                                         ; $6f4d: $81
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    nop                                           ; $6f53: $00
    nop                                           ; $6f54: $00
    add c                                         ; $6f55: $81
    nop                                           ; $6f56: $00
    jp $2481                                      ; $6f57: $c3 $81 $24


    rst $38                                       ; $6f5a: $ff
    nop                                           ; $6f5b: $00
    rst $38                                       ; $6f5c: $ff
    add c                                         ; $6f5d: $81
    rst $38                                       ; $6f5e: $ff
    rst $38                                       ; $6f5f: $ff
    ld a, [hl]                                    ; $6f60: $7e
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    ld a, [hl]                                    ; $6f63: $7e
    inc a                                         ; $6f64: $3c
    rst $38                                       ; $6f65: $ff
    jp $c33c                                      ; $6f66: $c3 $3c $c3


    di                                            ; $6f69: $f3
    pop hl                                        ; $6f6a: $e1
    ld h, c                                       ; $6f6b: $61
    ret nz                                        ; $6f6c: $c0

    ld b, b                                       ; $6f6d: $40
    ret nz                                        ; $6f6e: $c0

    ret nz                                        ; $6f6f: $c0

    add b                                         ; $6f70: $80
    add b                                         ; $6f71: $80
    nop                                           ; $6f72: $00
    nop                                           ; $6f73: $00
    nop                                           ; $6f74: $00
    nop                                           ; $6f75: $00
    nop                                           ; $6f76: $00
    ret nz                                        ; $6f77: $c0

    add b                                         ; $6f78: $80
    jp nc, $92ff                                  ; $6f79: $d2 $ff $92

    rst $38                                       ; $6f7c: $ff
    add b                                         ; $6f7d: $80
    rst $38                                       ; $6f7e: $ff
    ret nz                                        ; $6f7f: $c0

    ld a, a                                       ; $6f80: $7f
    ld a, a                                       ; $6f81: $7f
    ccf                                           ; $6f82: $3f
    nop                                           ; $6f83: $00
    nop                                           ; $6f84: $00
    ccf                                           ; $6f85: $3f
    ld e, $ff                                     ; $6f86: $1e $ff
    ld h, c                                       ; $6f88: $61
    ld sp, hl                                     ; $6f89: $f9
    sbc c                                         ; $6f8a: $99
    ld a, c                                       ; $6f8b: $79
    ldh a, [$30]                                  ; $6f8c: $f0 $30
    ldh [rNR41], a                                ; $6f8e: $e0 $20
    ldh [$60], a                                  ; $6f90: $e0 $60
    ret nz                                        ; $6f92: $c0

    ret nz                                        ; $6f93: $c0

    add b                                         ; $6f94: $80
    nop                                           ; $6f95: $00
    nop                                           ; $6f96: $00
    add b                                         ; $6f97: $80
    nop                                           ; $6f98: $00
    rst $38                                       ; $6f99: $ff
    sbc a                                         ; $6f9a: $9f
    jp hl                                         ; $6f9b: $e9


    rst $38                                       ; $6f9c: $ff
    ret                                           ; $6f9d: $c9


    ld a, a                                       ; $6f9e: $7f
    ld b, b                                       ; $6f9f: $40
    ld a, a                                       ; $6fa0: $7f
    ld h, b                                       ; $6fa1: $60
    ccf                                           ; $6fa2: $3f
    ccf                                           ; $6fa3: $3f
    rra                                           ; $6fa4: $1f
    nop                                           ; $6fa5: $00
    nop                                           ; $6fa6: $00
    rra                                           ; $6fa7: $1f
    rrca                                          ; $6fa8: $0f
    db $e4                                        ; $6fa9: $e4
    inc e                                         ; $6faa: $1c
    db $fc                                        ; $6fab: $fc
    call z, $f8bc                                 ; $6fac: $cc $bc $f8
    sbc b                                         ; $6faf: $98
    ldh a, [rNR10]                                ; $6fb0: $f0 $10
    ldh a, [$30]                                  ; $6fb2: $f0 $30
    ldh [$e0], a                                  ; $6fb4: $e0 $e0
    ret nz                                        ; $6fb6: $c0

    nop                                           ; $6fb7: $00
    nop                                           ; $6fb8: $00
    sbc a                                         ; $6fb9: $9f
    ldh [rIE], a                                  ; $6fba: $e0 $ff
    rst $08                                       ; $6fbc: $cf
    db $f4                                        ; $6fbd: $f4
    ld a, a                                       ; $6fbe: $7f
    ld h, h                                       ; $6fbf: $64
    ccf                                           ; $6fc0: $3f
    jr nz, jr_04c_7002                            ; $6fc1: $20 $3f

    jr nc, jr_04c_6fe4                            ; $6fc3: $30 $1f

    rra                                           ; $6fc5: $1f
    rrca                                          ; $6fc6: $0f
    nop                                           ; $6fc7: $00
    nop                                           ; $6fc8: $00
    ld a, [c]                                     ; $6fc9: $f2
    ld c, $f2                                     ; $6fca: $0e $f2
    ld c, $fe                                     ; $6fcc: $0e $fe
    and $5e                                       ; $6fce: $e6 $5e
    db $fc                                        ; $6fd0: $fc
    ld c, h                                       ; $6fd1: $4c
    ld hl, sp+$08                                 ; $6fd2: $f8 $08
    ld hl, sp+$18                                 ; $6fd4: $f8 $18
    ldh a, [$f0]                                  ; $6fd6: $f0 $f0
    ldh [rVBK], a                                 ; $6fd8: $e0 $4f
    ld [hl], b                                    ; $6fda: $70
    ld c, a                                       ; $6fdb: $4f
    ld [hl], b                                    ; $6fdc: $70
    ld a, a                                       ; $6fdd: $7f
    ld h, a                                       ; $6fde: $67
    ld a, d                                       ; $6fdf: $7a
    ccf                                           ; $6fe0: $3f
    ld [hl-], a                                   ; $6fe1: $32
    rra                                           ; $6fe2: $1f
    db $10                                        ; $6fe3: $10

jr_04c_6fe4:
    rra                                           ; $6fe4: $1f
    jr jr_04c_6ff6                                ; $6fe5: $18 $0f

    rrca                                          ; $6fe7: $0f
    rlca                                          ; $6fe8: $07
    dec a                                         ; $6fe9: $3d
    jp Jump_000_07f9                              ; $6fea: $c3 $f9 $07


    ld sp, hl                                     ; $6fed: $f9
    rlca                                          ; $6fee: $07
    rst $38                                       ; $6fef: $ff
    di                                            ; $6ff0: $f3
    cpl                                           ; $6ff1: $2f
    cp $26                                        ; $6ff2: $fe $26
    db $fc                                        ; $6ff4: $fc
    inc b                                         ; $6ff5: $04

jr_04c_6ff6:
    db $fc                                        ; $6ff6: $fc
    inc c                                         ; $6ff7: $0c
    ld hl, sp+$2f                                 ; $6ff8: $f8 $2f
    jr nc, jr_04c_7023                            ; $6ffa: $30 $27

    jr c, jr_04c_7025                             ; $6ffc: $38 $27

    jr c, @+$41                                   ; $6ffe: $38 $3f

    inc sp                                        ; $7000: $33
    dec a                                         ; $7001: $3d

jr_04c_7002:
    rra                                           ; $7002: $1f
    add hl, de                                    ; $7003: $19
    rrca                                          ; $7004: $0f
    ld [$0c0f], sp                                ; $7005: $08 $0f $0c
    rlca                                          ; $7008: $07
    rrca                                          ; $7009: $0f
    ldh a, [$9e]                                  ; $700a: $f0 $9e
    ld h, c                                       ; $700c: $61
    db $fc                                        ; $700d: $fc
    inc bc                                        ; $700e: $03
    db $fc                                        ; $700f: $fc
    inc bc                                        ; $7010: $03
    rst $38                                       ; $7011: $ff
    ld sp, hl                                     ; $7012: $f9
    sub a                                         ; $7013: $97
    rst $38                                       ; $7014: $ff
    sub e                                         ; $7015: $93
    cp $02                                        ; $7016: $fe $02
    cp $9f                                        ; $7018: $fe $9f
    sub b                                         ; $701a: $90
    sub a                                         ; $701b: $97
    sbc b                                         ; $701c: $98
    sub e                                         ; $701d: $93
    sbc h                                         ; $701e: $9c
    sub e                                         ; $701f: $93
    sbc h                                         ; $7020: $9c
    sbc a                                         ; $7021: $9f
    sbc c                                         ; $7022: $99

jr_04c_7023:
    sbc [hl]                                      ; $7023: $9e
    rrca                                          ; $7024: $0f

jr_04c_7025:
    inc c                                         ; $7025: $0c
    rlca                                          ; $7026: $07
    inc b                                         ; $7027: $04
    rlca                                          ; $7028: $07
    add a                                         ; $7029: $87
    ld a, b                                       ; $702a: $78
    add a                                         ; $702b: $87
    ld a, b                                       ; $702c: $78
    rst $08                                       ; $702d: $cf

jr_04c_702e:
    jr nc, jr_04c_702e                            ; $702e: $30 $fe

    ld bc, $01fe                                  ; $7030: $01 $fe $01
    rst $38                                       ; $7033: $ff
    db $fc                                        ; $7034: $fc
    ld c, e                                       ; $7035: $4b
    rst $38                                       ; $7036: $ff
    ld c, c                                       ; $7037: $49
    rst $38                                       ; $7038: $ff
    rst $08                                       ; $7039: $cf
    add h                                         ; $703a: $84
    rst $08                                       ; $703b: $cf
    ld c, b                                       ; $703c: $48
    ld c, e                                       ; $703d: $4b
    call z, $ce49                                 ; $703e: $cc $49 $ce
    ld c, c                                       ; $7041: $49
    adc $cf                                       ; $7042: $ce $cf
    call z, $87cf                                 ; $7044: $cc $cf $87
    add [hl]                                      ; $7047: $86
    inc bc                                        ; $7048: $03
    ld h, [hl]                                    ; $7049: $66
    sbc c                                         ; $704a: $99
    jp $c33c                                      ; $704b: $c3 $3c $c3


    inc a                                         ; $704e: $3c
    rst $20                                       ; $704f: $e7
    jr @+$01                                      ; $7050: $18 $ff

    nop                                           ; $7052: $00
    rst $38                                       ; $7053: $ff
    nop                                           ; $7054: $00
    rst $38                                       ; $7055: $ff
    ld a, [hl]                                    ; $7056: $7e
    and l                                         ; $7057: $a5
    rst $38                                       ; $7058: $ff
    ld b, d                                       ; $7059: $42
    jp $42e7                                      ; $705a: $c3 $e7 $42


    rst $20                                       ; $705d: $e7
    inc h                                         ; $705e: $24
    and l                                         ; $705f: $a5
    ld h, [hl]                                    ; $7060: $66
    inc h                                         ; $7061: $24
    rst $20                                       ; $7062: $e7
    inc h                                         ; $7063: $24
    rst $20                                       ; $7064: $e7
    rst $20                                       ; $7065: $e7
    ld h, [hl]                                    ; $7066: $66
    rst $20                                       ; $7067: $e7
    jp $e19e                                      ; $7068: $c3 $9e $e1


    inc sp                                        ; $706b: $33
    call z, Call_000_1ee1                         ; $706c: $cc $e1 $1e
    pop hl                                        ; $706f: $e1
    ld e, $f3                                     ; $7070: $1e $f3
    inc c                                         ; $7072: $0c
    ld a, a                                       ; $7073: $7f
    add b                                         ; $7074: $80
    ld a, a                                       ; $7075: $7f
    add b                                         ; $7076: $80
    rst $38                                       ; $7077: $ff
    ccf                                           ; $7078: $3f
    ld h, c                                       ; $7079: $61
    ret nz                                        ; $707a: $c0

    ld hl, $f3e1                                  ; $707b: $21 $e1 $f3
    ld hl, $12f3                                  ; $707e: $21 $f3 $12
    jp nc, $9233                                  ; $7081: $d2 $33 $92

    ld [hl], e                                    ; $7084: $73
    sub d                                         ; $7085: $92
    ld [hl], e                                    ; $7086: $73
    di                                            ; $7087: $f3
    inc sp                                        ; $7088: $33
    ld a, a                                       ; $7089: $7f
    jr nc, @-$2f                                  ; $708a: $30 $cf

    ld [hl], b                                    ; $708c: $70
    sbc c                                         ; $708d: $99
    and $f0                                       ; $708e: $e6 $f0
    adc a                                         ; $7090: $8f
    ldh a, [rIF]                                  ; $7091: $f0 $0f
    ld a, c                                       ; $7093: $79
    add [hl]                                      ; $7094: $86
    ccf                                           ; $7095: $3f
    ret nz                                        ; $7096: $c0

    ccf                                           ; $7097: $3f
    ret nz                                        ; $7098: $c0

    ldh [$c0], a                                  ; $7099: $e0 $c0
    jr nc, @-$1e                                  ; $709b: $30 $e0

    sub b                                         ; $709d: $90
    ld [hl], b                                    ; $709e: $70
    ld sp, hl                                     ; $709f: $f9
    db $10                                        ; $70a0: $10
    ld sp, hl                                     ; $70a1: $f9
    add hl, bc                                    ; $70a2: $09
    jp hl                                         ; $70a3: $e9


    add hl, de                                    ; $70a4: $19
    ret                                           ; $70a5: $c9


    add hl, sp                                    ; $70a6: $39
    ret                                           ; $70a7: $c9


    add hl, sp                                    ; $70a8: $39
    rrca                                          ; $70a9: $0f
    rlca                                          ; $70aa: $07
    ccf                                           ; $70ab: $3f
    jr jr_04c_7115                                ; $70ac: $18 $67

    jr c, jr_04c_70fc                             ; $70ae: $38 $4c

    ld [hl], e                                    ; $70b0: $73
    ld hl, sp+$47                                 ; $70b1: $f8 $47
    ld hl, sp-$79                                 ; $70b3: $f8 $87
    cp h                                          ; $70b5: $bc
    jp $e09f                                      ; $70b6: $c3 $9f $e0


    ret nz                                        ; $70b9: $c0

    add b                                         ; $70ba: $80
    ldh a, [$60]                                  ; $70bb: $f0 $60
    sbc b                                         ; $70bd: $98
    ld [hl], b                                    ; $70be: $70
    ret z                                         ; $70bf: $c8

    jr c, @+$7e                                   ; $70c0: $38 $7c

    adc b                                         ; $70c2: $88
    ld a, h                                       ; $70c3: $7c
    add h                                         ; $70c4: $84
    db $f4                                        ; $70c5: $f4
    inc c                                         ; $70c6: $0c
    db $e4                                        ; $70c7: $e4
    inc e                                         ; $70c8: $1c
    rst $28                                       ; $70c9: $ef
    ld b, $07                                     ; $70ca: $06 $07
    ld a, [bc]                                    ; $70cc: $0a
    dec bc                                        ; $70cd: $0b
    rst $38                                       ; $70ce: $ff
    ld [$060c], a                                 ; $70cf: $ea $0c $06
    rlca                                          ; $70d2: $07
    db $fd                                        ; $70d3: $fd
    nop                                           ; $70d4: $00
    rst $38                                       ; $70d5: $ff
    add sp, $16                                   ; $70d6: $e8 $16
    rla                                           ; $70d8: $17
    dec c                                         ; $70d9: $0d
    ld e, $1c                                     ; $70da: $1e $1c
    dec e                                         ; $70dc: $1d
    ld a, a                                       ; $70dd: $7f
    ld e, $1f                                     ; $70de: $1e $1f
    ld a, [hl+]                                   ; $70e0: $2a
    dec hl                                        ; $70e1: $2b
    ld a, [hl+]                                   ; $70e2: $2a
    ld a, [hl-]                                   ; $70e3: $3a
    ld e, $ff                                     ; $70e4: $1e $ff
    pop hl                                        ; $70e6: $e1
    ld [hl], a                                    ; $70e7: $77
    ld c, $16                                     ; $70e8: $0e $16
    rla                                           ; $70ea: $17
    ldh [$e9], a                                  ; $70eb: $e0 $e9
    ld h, $27                                     ; $70ed: $26 $27
    dec c                                         ; $70ef: $0d
    jp hl                                         ; $70f0: $e9


    ld [c], a                                     ; $70f1: $e2
    xor $fb                                       ; $70f2: $ee $fb
    and $0e                                       ; $70f4: $e6 $0e
    ld h, $27                                     ; $70f6: $26 $27
    ret nz                                        ; $70f8: $c0

    jp hl                                         ; $70f9: $e9


    ld [hl], $37                                  ; $70fa: $36 $37

jr_04c_70fc:
    rrca                                          ; $70fc: $0f
    dec e                                         ; $70fd: $1d
    ld a, [de]                                    ; $70fe: $1a
    rst $38                                       ; $70ff: $ff
    ld [$361b], a                                 ; $7100: $ea $1b $36
    scf                                           ; $7103: $37
    and b                                         ; $7104: $a0
    jp hl                                         ; $7105: $e9


    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    rlca                                          ; $7109: $07
    ld a, [bc]                                    ; $710a: $0a
    ld a, [bc]                                    ; $710b: $0a
    ld [$ecff], sp                                ; $710c: $08 $ff $ec
    xor $eb                                       ; $710f: $ee $eb
    ldh [rIE], a                                  ; $7111: $e0 $ff
    ldh [rIE], a                                  ; $7113: $e0 $ff

jr_04c_7115:
    ldh [$f9], a                                  ; $7115: $e0 $f9
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00

    db $ff, $00, $01, $01, $03, $02, $07, $05, $06, $ff, $07, $0c, $0a, $1d, $17, $19
    db $17, $19, $ff, $0a, $1d, $05, $0e, $02, $07, $01, $03, $f7, $00, $01, $00, $ff
    db $e2, $ec, $fe, $56, $bb, $ff, $ff, $13, $ff, $13, $6f, $f3, $fe, $e1, $ff, $bf
    db $e0, $3d, $a6, $ee, $f7, $df, $37, $ff, $ff, $17, $7f, $97, $bf, $df, $7e, $ff
    db $fb, $30, $78, $dc, $e3, $00, $00, $01, $03, $06, $ff, $8f, $cb, $fc, $b7, $78
    db $ef, $33, $fd, $ff, $23, $ef, $30, $f7, $38, $fd, $1e, $fb, $df, $1f, $f9, $fb
    db $70, $f8, $e0, $e5, $80, $c0, $ff, $5b, $ff, $b4, $6f, $ff, $20, $fb, $27, $ff
    db $ff, $27, $ee, $37, $fe, $17, $ff, $17, $3f, $bf, $d7, $fe, $ff, $34, $7e, $c0
    db $e5, $7a, $e0, $ff, $81, $81, $c1, $c0, $c1, $c0, $c0, $80, $ff, $c0, $00, $00
    db $c1, $e3, $e3, $32, $f3, $ff, $32, $f1, $f3, $60, $f1, $00, $00, $18, $ff, $3c
    db $2c, $76, $5e, $e6, $b6, $ce, $6e, $ff, $9e, $74, $8e, $ba, $c7, $5d, $e3, $2d
    db $ff, $73, $5a, $e7, $b7, $cf, $ef, $1f, $dc, $ef, $3f, $f8, $fc, $f0, $a0, $e0
    db $03, $07, $06, $ff, $05, $07, $04, $07, $04, $1b, $3c, $65, $ff, $fe, $bb, $c6
    db $7b, $b6, $d5, $2e, $fb, $ff, $1c, $eb, $1c, $7f, $84, $df, $e4, $7f, $b7, $ff
    db $1d, $3f, $85, $e1, $80, $c0, $ff, $e1, $cc, $ff, $de, $b2, $ff, $dd, $e3, $bd
    db $db, $ea, $ff, $97, $fe, $8f, $f7, $8f, $bf, $c3, $ef, $df, $f3, $fd, $ff, $8e
    db $df, $42, $e5, $03, $02, $fb, $3b, $7e, $ce, $e0, $86, $df, $3e, $bf, $7e, $ff
    db $df, $3e, $7e, $87, $bf, $c7, $67, $ff, $ef, $3e, $7f, $0c, $1e, $42, $e5, $c0
    db $60, $e0, $ff, $60, $e0, $30, $f0, $70, $e0, $70, $c0, $ff, $60, $a0, $70, $e0
    db $30, $d0, $38, $78, $07, $98, $f8, $f8, $20, $e1, $00, $00

    nop                                           ; $7256: $00
    add b                                         ; $7257: $80
    ld a, l                                       ; $7258: $7d
    rra                                           ; $7259: $1f
    ld l, b                                       ; $725a: $68
    ld c, h                                       ; $725b: $4c
    ld l, b                                       ; $725c: $68
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    rst $38                                       ; $725f: $ff
    ld a, h                                       ; $7260: $7c
    cp $fa                                        ; $7261: $fe $fa
    add a                                         ; $7263: $87
    cp l                                          ; $7264: $bd
    jp $c17e                                      ; $7265: $c3 $7e $c1


    rst $38                                       ; $7268: $ff
    ld a, e                                       ; $7269: $7b
    ld c, h                                       ; $726a: $4c
    ld a, l                                       ; $726b: $7d
    ld c, [hl]                                    ; $726c: $4e
    ld a, [hl]                                    ; $726d: $7e
    ld c, a                                       ; $726e: $4f
    ld a, [hl]                                    ; $726f: $7e
    ld c, a                                       ; $7270: $4f
    rst $38                                       ; $7271: $ff
    ld a, l                                       ; $7272: $7d
    ld c, [hl]                                    ; $7273: $4e
    ld a, e                                       ; $7274: $7b
    ld c, h                                       ; $7275: $4c
    ld a, a                                       ; $7276: $7f
    ld b, b                                       ; $7277: $40
    ld a, [hl]                                    ; $7278: $7e
    ld b, c                                       ; $7279: $41
    ld a, a                                       ; $727a: $7f
    ld a, e                                       ; $727b: $7b
    ld b, a                                       ; $727c: $47
    ccf                                           ; $727d: $3f
    ld a, a                                       ; $727e: $7f
    ld e, $3f                                     ; $727f: $1e $3f
    nop                                           ; $7281: $00
    rst $38                                       ; $7282: $ff
    db $e3                                        ; $7283: $e3
    rst $38                                       ; $7284: $ff
    add b                                         ; $7285: $80
    add c                                         ; $7286: $81
    jp $ef46                                      ; $7287: $c3 $46 $ef


    xor e                                         ; $728a: $ab
    ld a, h                                       ; $728b: $7c
    rst $10                                       ; $728c: $d7
    rst $38                                       ; $728d: $ff
    jr c, @+$01                                   ; $728e: $38 $ff

    inc de                                        ; $7290: $13
    db $dd                                        ; $7291: $dd
    inc sp                                        ; $7292: $33
    xor a                                         ; $7293: $af
    ld [hl], b                                    ; $7294: $70
    ld [hl], a                                    ; $7295: $77
    ld a, a                                       ; $7296: $7f
    ld hl, sp-$13                                 ; $7297: $f8 $ed
    cp $c3                                        ; $7299: $fe $c3
    rst $20                                       ; $729b: $e7
    add c                                         ; $729c: $81
    jp $e4e2                                      ; $729d: $c3 $e2 $e4


    rst $38                                       ; $72a0: $ff
    nop                                           ; $72a1: $00
    inc bc                                        ; $72a2: $03
    rlca                                          ; $72a3: $07
    add a                                         ; $72a4: $87
    call nz, $fc4f                                ; $72a5: $c4 $4f $fc
    cp a                                          ; $72a8: $bf
    rst $38                                       ; $72a9: $ff
    ld [hl], b                                    ; $72aa: $70
    rst $28                                       ; $72ab: $ef
    inc a                                         ; $72ac: $3c
    rst $20                                       ; $72ad: $e7
    inc l                                         ; $72ae: $2c
    rst $20                                       ; $72af: $e7
    inc h                                         ; $72b0: $24
    rst $20                                       ; $72b1: $e7
    rst $38                                       ; $72b2: $ff
    inc [hl]                                      ; $72b3: $34
    db $dd                                        ; $72b4: $dd
    ld a, $fb                                     ; $72b5: $3e $fb
    ld e, $ba                                     ; $72b7: $1e $ba
    db $db                                        ; $72b9: $db
    ld sp, hl                                     ; $72ba: $f9
    rst $30                                       ; $72bb: $f7
    ei                                            ; $72bc: $fb
    jr nc, jr_04c_7338                            ; $72bd: $30 $79

    ret nz                                        ; $72bf: $c0

    push hl                                       ; $72c0: $e5
    add e                                         ; $72c1: $83
    rst $00                                       ; $72c2: $c7
    adc h                                         ; $72c3: $8c
    rst $18                                       ; $72c4: $df
    rst $38                                       ; $72c5: $ff
    rst $10                                       ; $72c6: $d7
    ld a, b                                       ; $72c7: $78
    xor a                                         ; $72c8: $af
    ldh a, [$df]                                  ; $72c9: $f0 $df
    and $bb                                       ; $72cb: $e6 $bb
    add $ff                                       ; $72cd: $c6 $ff
    ld e, a                                       ; $72cf: $5f
    ldh [$cf], a                                  ; $72d0: $e0 $cf
    ld [hl], b                                    ; $72d2: $70
    cp e                                          ; $72d3: $bb
    ld a, h                                       ; $72d4: $7c
    rst $30                                       ; $72d5: $f7
    ccf                                           ; $72d6: $3f
    rst $28                                       ; $72d7: $ef
    di                                            ; $72d8: $f3
    rst $30                                       ; $72d9: $f7
    ldh [$f0], a                                  ; $72da: $e0 $f0
    cp [hl]                                       ; $72dc: $be
    push hl                                       ; $72dd: $e5
    nop                                           ; $72de: $00
    add b                                         ; $72df: $80
    add b                                         ; $72e0: $80
    rst $18                                       ; $72e1: $df
    ret nz                                        ; $72e2: $c0

    ld b, b                                       ; $72e3: $40
    ldh [$e0], a                                  ; $72e4: $e0 $e0
    ld h, b                                       ; $72e6: $60
    cp $e3                                        ; $72e7: $fe $e3
    and b                                         ; $72e9: $a0
    ld [hl], b                                    ; $72ea: $70
    ld a, a                                       ; $72eb: $7f
    ldh a, [$30]                                  ; $72ec: $f0 $30
    ld [hl], b                                    ; $72ee: $70
    or b                                          ; $72ef: $b0
    ldh a, [$f0]                                  ; $72f0: $f0 $f0
    ld h, b                                       ; $72f2: $60
    ldh [$e0], a                                  ; $72f3: $e0 $e0
    rst $38                                       ; $72f5: $ff
    ld b, $0f                                     ; $72f6: $06 $0f
    dec bc                                        ; $72f8: $0b
    dec e                                         ; $72f9: $1d
    rla                                           ; $72fa: $17
    add hl, sp                                    ; $72fb: $39
    dec l                                         ; $72fc: $2d
    ld [hl], e                                    ; $72fd: $73
    rst $38                                       ; $72fe: $ff
    ld e, e                                       ; $72ff: $5b
    ld h, a                                       ; $7300: $67
    ld e, l                                       ; $7301: $5d
    ld h, e                                       ; $7302: $63
    ld l, $71                                     ; $7303: $2e $71
    rla                                           ; $7305: $17
    jr c, @+$01                                   ; $7306: $38 $ff

    dec bc                                        ; $7308: $0b
    inc e                                         ; $7309: $1c
    ld d, $39                                     ; $730a: $16 $39
    ld l, l                                       ; $730c: $6d
    di                                            ; $730d: $f3
    ei                                            ; $730e: $fb
    add a                                         ; $730f: $87
    cp a                                          ; $7310: $bf
    rst $30                                       ; $7311: $f7

jr_04c_7312:
    adc a                                         ; $7312: $8f
    ld a, [hl]                                    ; $7313: $7e
    rst $38                                       ; $7314: $ff
    inc a                                         ; $7315: $3c
    ld a, [hl]                                    ; $7316: $7e
    ld h, b                                       ; $7317: $60
    ldh [rSB], a                                  ; $7318: $e0 $01
    ei                                            ; $731a: $fb
    ld bc, $ff81                                  ; $731b: $01 $81 $ff
    pop hl                                        ; $731e: $e1
    add [hl]                                      ; $731f: $86
    adc a                                         ; $7320: $8f
    add hl, de                                    ; $7321: $19
    cp a                                          ; $7322: $bf
    xor [hl]                                      ; $7323: $ae
    rst $38                                       ; $7324: $ff
    pop af                                        ; $7325: $f1
    ld e, [hl]                                    ; $7326: $5e
    db $ed                                        ; $7327: $ed
    ld [hl], l                                    ; $7328: $75
    set 7, [hl]                                   ; $7329: $cb $fe
    rst $00                                       ; $732b: $c7
    ld a, [$c7ff]                                 ; $732c: $fa $ff $c7
    rst $18                                       ; $732f: $df
    pop hl                                        ; $7330: $e1
    scf                                           ; $7331: $37
    ld sp, hl                                     ; $7332: $f9
    rra                                           ; $7333: $1f
    ccf                                           ; $7334: $3f
    rlca                                          ; $7335: $07
    rst $18                                       ; $7336: $df
    rrca                                          ; $7337: $0f

jr_04c_7338:
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    ret nz                                        ; $733a: $c0

    ldh [$b2], a                                  ; $733b: $e0 $b2
    pop hl                                        ; $733d: $e1
    ldh a, [$30]                                  ; $733e: $f0 $30
    rst $38                                       ; $7340: $ff
    di                                            ; $7341: $f3
    scf                                           ; $7342: $37
    ld a, h                                       ; $7343: $7c
    cp a                                          ; $7344: $bf
    rst $30                                       ; $7345: $f7
    cp b                                          ; $7346: $b8
    rst $28                                       ; $7347: $ef
    or [hl]                                       ; $7348: $b6
    rst $38                                       ; $7349: $ff
    ld a, d                                       ; $734a: $7a
    and l                                         ; $734b: $a5
    rst $38                                       ; $734c: $ff
    inc hl                                        ; $734d: $23
    db $fd                                        ; $734e: $fd
    inc hl                                        ; $734f: $23
    rst $28                                       ; $7350: $ef
    jr nc, jr_04c_7312                            ; $7351: $30 $bf

    ei                                            ; $7353: $fb
    inc a                                         ; $7354: $3c
    rst $30                                       ; $7355: $f7
    rst $38                                       ; $7356: $ff
    ld h, e                                       ; $7357: $63
    rst $30                                       ; $7358: $f7
    add b                                         ; $7359: $80
    and $00                                       ; $735a: $e6 $00
    rst $38                                       ; $735c: $ff
    ld c, $9f                                     ; $735d: $0e $9f
    or a                                          ; $735f: $b7
    ld sp, hl                                     ; $7360: $f9
    ld e, a                                       ; $7361: $5f
    pop hl                                        ; $7362: $e1
    ld [hl], a                                    ; $7363: $77
    rst $08                                       ; $7364: $cf
    rst $38                                       ; $7365: $ff
    xor a                                         ; $7366: $af
    rst $18                                       ; $7367: $df
    or a                                          ; $7368: $b7
    rst $08                                       ; $7369: $cf
    rst $18                                       ; $736a: $df
    pop hl                                        ; $736b: $e1
    rst $28                                       ; $736c: $ef
    pop af                                        ; $736d: $f1
    cp a                                          ; $736e: $bf
    reti                                          ; $736f: $d9


    rst $38                                       ; $7370: $ff
    rst $08                                       ; $7371: $cf
    rst $18                                       ; $7372: $df
    add e                                         ; $7373: $83
    rst $00                                       ; $7374: $c7
    nop                                           ; $7375: $00
    db $e3                                        ; $7376: $e3
    ld h, b                                       ; $7377: $60
    rst $38                                       ; $7378: $ff
    ldh a, [$f0]                                  ; $7379: $f0 $f0
    sub b                                         ; $737b: $90
    ldh a, [$98]                                  ; $737c: $f0 $98
    ld hl, sp+$0c                                 ; $737e: $f8 $0c
    db $fc                                        ; $7380: $fc
    rst $38                                       ; $7381: $ff
    sbc h                                         ; $7382: $9c
    ld hl, sp-$64                                 ; $7383: $f8 $9c
    ldh a, [$98]                                  ; $7385: $f0 $98
    add sp, -$64                                  ; $7387: $e8 $9c
    cp b                                          ; $7389: $b8
    rst $38                                       ; $738a: $ff
    call z, $cef4                                 ; $738b: $cc $f4 $ce
    sbc $e6                                       ; $738e: $de $e6
    cp [hl]                                       ; $7390: $be
    cp $1c                                        ; $7391: $fe $1c
    rlca                                          ; $7393: $07
    cp [hl]                                       ; $7394: $be
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00

    db $ff, $ff, $ff, $bf, $c0, $ff, $bf, $e0, $a0, $9e, $fe, $f5, $ff, $ff, $ff, $00
    db $fd, $e0, $ff, $f6, $ff, $7f, $ff, $fd, $03, $ff, $fd, $07, $05, $fe, $f5, $00
    db $00, $00, $fb, $e0, $a0, $fe, $f5, $ff, $bf, $bf, $c0, $ff, $eb, $ff, $00, $ff
    db $f6, $ff, $e3, $e0, $ff, $ff, $07, $fd, $05, $fe, $f5, $ff, $fd, $fd, $03, $ff
    db $ff, $00, $00, $00, $15, $00, $ff, $ec, $ff, $ff, $fc, $00, $fe, $ec, $ef, $ed
    db $ff, $f5, $7f, $82, $00, $12, $00, $36, $00, $66, $91, $e2, $ff, $04, $00, $08
    db $00, $19, $00, $13, $00, $c7, $33, $00, $37, $8f, $ee, $a6, $e9, $a0, $e4, $ff
    db $89, $ff, $ff, $f7, $89, $fb, $fd, $8b, $7d, $fb, $f7, $8d, $fb, $fd, $7f, $e0
    db $fe, $23, $ff, $6f, $ff, $b3, $7f, $bf, $69, $bf, $6f, $b5, $6f, $fd, $b3, $6f
    db $e0, $ef, $12, $ff, $76, $9b, $f6, $ff, $fb, $16, $fb, $76, $9b, $7f, $9f, $ff
    db $ff, $00, $fe, $ff, $46, $ff, $da, $67, $df, $bf, $7f, $c6, $7f, $de, $67, $fe
    db $4f, $e1, $3f, $ff, $e4, $3f, $ed, $36, $ed, $f6, $2d, $f6, $fa, $fa, $e0, $36
    db $10, $ef, $80, $80, $80, $ff, $80, $e1, $c8, $fb, $e0, $05, $e0, $fa, $e1, $fb
    db $c1, $00, $ad, $00, $f9, $40, $12, $e2, $f0, $c0, $01, $01, $01, $ff, $01, $99
    db $6b, $fb, $e0, $e5, $c0, $01, $01, $d8, $e1, $ce, $e0, $a3, $e3, $80, $de, $ce
    db $e3, $ce, $c1, $bc, $c0, $2d, $00, $f2, $b8, $c4, $c3, $d8, $e1, $ce, $e0, $1b
    db $01, $f5, $ce, $e3, $6e, $ce, $cf, $cc, $77, $00, $7f, $fe, $e0, $b9, $c1, $f7
    db $08, $0f, $f3, $0c, $f9, $06, $8f, $c9, $83, $c1, $06, $e7, $fe, $c3, $7f, $ff
    db $1f, $f0, $1f, $f6, $1f, $f7, $fa, $e0, $ff, $fe, $1f, $f6, $16, $f0, $10, $ff
    db $f0, $ff, $df, $ff, $88, $ff, $da, $ff, $db, $ff, $bf, $db, $fe, $db, $da, $cb
    db $ca, $7d, $c1, $8d, $df, $ff, $af, $ff, $ad, $fd, $fe, $e0, $ad, $85, $ff, $85
    db $ff, $0e, $fb, $ff, $18, $ff, $5a, $fe, $fe, $e0, $1a, $ff, $da, $da, $1a, $1a
    db $ff, $ff, $70, $df, $f8, $8f, $f8, $df, $f8, $df, $dd, $f0, $fe, $e0, $d8, $cf
    db $c8, $10, $cd, $80, $bc, $ff, $80, $e3, $80, $9f, $80, $f0, $80, $8f, $fe, $fc
    db $e0, $df, $80, $80, $00, $ce, $00, $39, $ff, $00, $c7, $00, $78, $00, $8f, $00
    db $f0, $fb, $00, $1f, $e2, $a0, $cc, $00, $3b, $00, $c6, $7b, $00, $79, $f0, $e5
    db $01, $1d, $01, $e7, $22, $e2, $df, $0f, $01, $f9, $01, $07, $ea, $c1, $c1, $c9
    db $3f, $c0, $ca, $c0, $cb, $c0, $c9, $fc, $e0, $fe, $e0, $fe, $c0, $a1, $7f, $7f
    db $1f, $1f, $0f, $4f, $0f, $ff, $4f, $0b, $2b, $4b, $6b, $df, $20, $cf, $ff, $30
    db $67, $98, $67, $98, $23, $dc, $23, $ff, $dc, $01, $fe, $01, $fe, $f8, $07, $fc
    db $ff, $03, $9c, $63, $cc, $33, $66, $99, $66, $1f, $99, $22, $dd, $02, $fd, $08
    db $e5, $02, $eb, $b6, $a2, $bc, $93, $af, $83, $a1, $3f, $e1, $3f, $ef, $fe, $e0
    db $e3, $7e, $fa, $e1, $29, $ef, $29, $ff, $03, $fe, $10, $e4, $fe, $0c, $e0, $5a
    db $08, $08, $ff, $80, $ff, $f8, $f7, $c7, $fc, $d7, $fe, $e0, $c7, $fc, $df, $dc
    db $f3, $47, $44, $60, $bd, $04, $c0, $9b, $80, $f6, $80, $ff, $cd, $80, $bb, $80
    db $e6, $80, $99, $80, $dd, $f7, $20, $a0, $cf, $00, $70, $02, $e0, $76, $00, $f7
    db $99, $00, $e6, $f4, $c0, $ff, $00, $c3, $00, $f7, $fc, $00, $03, $fc, $e0, $27
    db $00, $dc, $00, $fd, $33, $f4, $a0, $9f, $01, $71, $01, $8f, $01, $7f, $79, $01
    db $c7, $01, $3d, $01, $e3, $0a, $e2, $d7, $cd, $c4, $cd, $00, $e0, $cd, $fe, $c1
    db $4b, $6b, $ef, $0b, $2b, $0b, $4b, $fe, $e4, $0b, $0b, $4b, $be, $d0, $87, $01
    db $ff, $03, $ff, $07, $c0, $82, $10, $2f, $ff, $60, $ff, $c0, $57, $e0, $88, $56
    db $c0, $0c, $c5, $78, $04, $c7, $b4, $89, $fe, $d0, $3e, $e1, $3f, $ed, $fe, $e5
    db $f7, $2d, $e1, $21, $7d, $81, $11, $ff, $55, $ff, $ff, $75, $ff, $75, $df, $75
    db $55, $70, $50, $3a, $e0, $81, $ab, $fe, $e5, $aa, $83, $82, $60, $9f, $ff, $ff
    db $dc, $ff, $ff, $f8, $f7, $0f, $ff, $9e, $fe, $e0, $be, $ff, $f7, $3c, $ff, $7d
    db $fe, $e0, $ff, $ff, $30, $ff, $ff, $70, $ff, $71, $ff, $e3, $ff, $e7, $ff, $f9
    db $ef, $b0, $63, $bd, $fc, $ff, $f8, $87, $ff, $b4, $8b, $ff, $b5, $fe, $e1, $b5
    db $22, $a0, $f0, $62, $12, $e1, $d5, $7f, $ff, $d5, $55, $db, $5b, $ff, $7f, $6f
    db $60, $ff, $e0, $1f, $f0, $5f, $f0, $1f, $f0, $7f, $03, $70, $1f, $e2, $80, $6e
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f8, $ff, $ff, $ff, $ff, $91, $52
    db $63, $00, $1e, $00, $71, $af, $00, $4f, $00, $32, $95, $60, $40, $32, $62, $01
    db $eb, $00, $fe, $3e, $a2, $a7, $24, $80, $00, $01, $32, $ff, $01, $dc, $01, $62
    db $01, $be, $01, $c6, $0f, $01, $78, $01, $9e, $b1, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $b8, $ff, $ff, $ff, $ff, $34, $22, $3f, $00, $60, $48, $60, $70, $cb, $00
    db $0f, $3a, $80, $5f, $22, $20, $30, $6c, $01, $e6, $ef, $01, $38, $01, $8e, $06
    db $e0, $86, $01, $f8, $07, $01, $06, $01, $b0, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $5c, $ff, $ff, $35, $03, $6f, $00, $1a, $44, $60, $4d, $4a, $40, $7f
    db $76, $00, $19, $7f, $00, $00, $3e, $40, $62, $d7, $9b, $00, $6c, $2a, $40, $f8
    db $f5, $a0, $60, $01, $77, $9e, $01, $70, $fe, $c2, $c6, $01, $3c, $f0, $7f, $80
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f8, $f7, $20, $00
    db $92, $65, $82, $6d, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff
    db $00, $f0, $f2, $00, $00

    nop                                           ; $776f: $00

    db $5b, $29, $09, $ff, $ee, $29, $0b, $ff, $e1, $08, $ff, $e3, $12, $e0, $f1, $0f
    db $ff, $e1, $e0, $f8, $0e, $ff, $e1, $c0, $e5, $b8, $e4, $1e, $f9, $e8, $29, $0d
    db $0d, $0d, $f3, $e7, $e0, $f0, $f3, $f6, $80, $e0, $ff, $e0, $ff, $e0, $ff, $e0
    db $ff, $e0, $ff, $e0, $ff, $a0, $c4, $2a, $08, $e0, $cf, $ed, $ea, $e0, $f0, $0a
    db $f3, $ea, $ff, $e5, $f5, $ea, $e0, $ff, $00, $e0, $ff, $e0, $ff, $dd, $a1, $00
    db $00

    nop                                           ; $77c1: $00

    db $fd, $02, $ff, $f0, $1a, $1b, $1c, $1d, $1e, $90, $7c, $ff, $e3, $e0, $f1, $2a
    db $2b, $2c, $2d, $2e, $e0, $e4, $7d, $08, $ff, $f0, $3a, $3b, $3c, $3d, $3e, $c0
    db $e4, $f7, $18, $10, $11, $ff, $ec, $12, $18, $4a, $4b, $f7, $4c, $4d, $4e, $a0
    db $e4, $28, $20, $21, $22, $e6, $fe, $eb, $23, $28, $85, $e4, $7e, $e2, $38, $30
    db $5d, $6b, $5e, $5f, $fd, $e3, $21, $f6, $e3, $33, $38, $e0, $e9, $5f, $03, $20
    db $6d, $6e, $6f, $fd, $e3, $31, $f6, $e3, $fb, $23, $03, $c0, $e9, $09, $30, $7d
    db $7e, $7f, $5a, $fd, $e3, $21, $f6, $e3, $33, $09, $a0, $e9, $19, $80, $ef, $e5
    db $19, $80, $e9, $29, $80, $e7, $77, $e0, $31, $32, $31, $17, $32, $33, $29, $60
    db $e9, $39, $80, $e7, $77, $e0, $40, $e2, $45, $39, $40, $e9, $04, $80, $e7, $77
    db $e0, $c0, $e2, $04, $20, $e9, $ed, $06, $00, $ee, $33, $07, $00, $e9, $16, $13
    db $14, $b6, $ff, $ec, $15, $17, $e0, $c9, $26, $27, $fe, $e4, $24, $b5, $25, $f6
    db $e5, $27, $c0, $c9, $36, $37, $fe, $e4, $34, $b5, $35, $f6, $e5, $37, $a0, $c9
    db $46, $47, $fe, $e4, $34, $d5, $35, $f6, $e5, $47, $80, $c9, $01, $ff, $e5, $34
    db $35, $00, $f5, $e6, $60, $c9, $00, $00

    nop                                           ; $789a: $00

    db $6f, $ff, $ff, $fd, $83, $fe, $e5, $81, $ff, $ff, $e1, $ab, $dd, $33, $fe, $e5
    db $11, $f0, $e1, $00, $fe, $f0, $cc, $ff, $fd, $ce, $f9, $7e, $f3, $3c, $f7, $38
    db $ff, $e7, $18, $ff, $40, $df, $60, $df, $6a, $ff, $5a, $ef, $5a, $ef, $5e, $e5
    db $fd, $76, $03, $85, $7a, $00, $00

    nop                                           ; $78d2: $00

    db $7f, $ff, $ff, $ff, $81, $81, $c3, $bd, $fe, $e2, $f5, $81, $f3, $e0, $00, $ff
    db $ec, $ff, $ff, $11, $11, $cd, $bb, $fe, $e4, $ff, $11, $e0, $ef, $ff, $ff, $00
    db $00, $9d, $cc, $ff, $e0, $78, $78, $30, $ff, $e0, $d4, $ef, $40, $7a, $ff, $e0
    db $4a, $ff, $e2, $44, $44, $74, $74, $b4, $ef, $ff, $f0, $f0, $f0, $10, $10, $10
    db $50, $b0, $02, $fe, $e1, $10, $f3, $e0, $92, $ed, $00, $00

    nop                                           ; $791f: $00

    db $fb, $02, $03, $ff, $ee, $04, $14, $15, $16, $17, $ff, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $2b, $05, $20, $ff, $ee, $06, $e0, $fd, $00, $ff, $e8, $e0, $fd
    db $0b, $07, $08, $ff, $ee, $09, $c0, $e9, $00, $00

    nop                                           ; $794a: $00

    db $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f4, $00, $00

    nop                                           ; $7959: $00
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

Jump_04c_7bff:
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
