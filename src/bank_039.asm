; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $039", ROMX[$4000], BANK[$39]

    ld b, $40                                     ; $4000: $06 $40
    dec h                                         ; $4002: $25
    ld d, l                                       ; $4003: $55
    ld c, b                                       ; $4004: $48
    ld l, d                                       ; $4005: $6a
    ld a, c                                       ; $4006: $79
    cp $0d                                        ; $4007: $fe $0d
    jr nc, jr_039_4049                            ; $4009: $30 $3e

    ld a, [$d32a]                                 ; $400b: $fa $2a $d3
    cp $02                                        ; $400e: $fe $02
    jr z, jr_039_4037                             ; $4010: $28 $25

    ld h, $00                                     ; $4012: $26 $00
    ld l, c                                       ; $4014: $69
    add hl, hl                                    ; $4015: $29
    ld bc, $404d                                  ; $4016: $01 $4d $40
    add hl, bc                                    ; $4019: $09
    ld a, [hl+]                                   ; $401a: $2a
    ld b, [hl]                                    ; $401b: $46
    ld c, a                                       ; $401c: $4f
    ld h, d                                       ; $401d: $62
    ld l, e                                       ; $401e: $6b
    res 0, l                                      ; $401f: $cb $85
    add hl, bc                                    ; $4021: $09
    bit 0, e                                      ; $4022: $cb $43
    jr nz, jr_039_402a                            ; $4024: $20 $04

    ld a, [hl+]                                   ; $4026: $2a
    ld h, [hl]                                    ; $4027: $66
    ld l, a                                       ; $4028: $6f
    ret                                           ; $4029: $c9


jr_039_402a:
    ld e, [hl]                                    ; $402a: $5e
    inc hl                                        ; $402b: $23
    ld d, [hl]                                    ; $402c: $56
    inc hl                                        ; $402d: $23
    ld a, [hl+]                                   ; $402e: $2a
    ld h, [hl]                                    ; $402f: $66
    ld l, a                                       ; $4030: $6f
    add hl, de                                    ; $4031: $19
    srl h                                         ; $4032: $cb $3c
    rr l                                          ; $4034: $cb $1d
    ret                                           ; $4036: $c9


jr_039_4037:
    ld h, $00                                     ; $4037: $26 $00
    ld l, c                                       ; $4039: $69
    add hl, hl                                    ; $403a: $29
    ld bc, $51e5                                  ; $403b: $01 $e5 $51
    add hl, bc                                    ; $403e: $09
    ld a, [hl+]                                   ; $403f: $2a
    ld h, [hl]                                    ; $4040: $66
    ld l, a                                       ; $4041: $6f
    res 0, e                                      ; $4042: $cb $83
    add hl, de                                    ; $4044: $19
    ld l, [hl]                                    ; $4045: $6e
    ld h, $00                                     ; $4046: $26 $00
    ret                                           ; $4048: $c9


jr_039_4049:
    ld hl, $0040                                  ; $4049: $21 $40 $00
    ret                                           ; $404c: $c9


    ld h, a                                       ; $404d: $67
    ld b, b                                       ; $404e: $40
    ld h, c                                       ; $404f: $61
    ld b, d                                       ; $4050: $42
    add hl, sp                                    ; $4051: $39
    ld b, h                                       ; $4052: $44
    db $ed                                        ; $4053: $ed
    ld b, l                                       ; $4054: $45
    sub l                                         ; $4055: $95
    ld b, a                                       ; $4056: $47
    rra                                           ; $4057: $1f
    ld c, c                                       ; $4058: $49
    adc l                                         ; $4059: $8d
    ld c, d                                       ; $405a: $4a
    pop hl                                        ; $405b: $e1
    ld c, e                                       ; $405c: $4b
    ld hl, $4b4d                                  ; $405d: $21 $4d $4b
    ld c, [hl]                                    ; $4060: $4e
    ld e, a                                       ; $4061: $5f
    ld c, a                                       ; $4062: $4f
    ld e, c                                       ; $4063: $59
    ld d, b                                       ; $4064: $50
    inc sp                                        ; $4065: $33
    ld d, c                                       ; $4066: $51
    dec b                                         ; $4067: $05
    nop                                           ; $4068: $00
    ld c, $00                                     ; $4069: $0e $00
    ld [hl+], a                                   ; $406b: $22
    nop                                           ; $406c: $00
    add hl, hl                                    ; $406d: $29
    nop                                           ; $406e: $00
    cpl                                           ; $406f: $2f
    nop                                           ; $4070: $00
    inc [hl]                                      ; $4071: $34
    nop                                           ; $4072: $00
    add hl, sp                                    ; $4073: $39
    nop                                           ; $4074: $00
    ld a, $00                                     ; $4075: $3e $00
    ld b, d                                       ; $4077: $42
    nop                                           ; $4078: $00
    ld b, a                                       ; $4079: $47
    nop                                           ; $407a: $00
    ld c, c                                       ; $407b: $49
    nop                                           ; $407c: $00
    ld c, a                                       ; $407d: $4f
    nop                                           ; $407e: $00
    ld d, d                                       ; $407f: $52
    nop                                           ; $4080: $00
    ld d, l                                       ; $4081: $55
    nop                                           ; $4082: $00
    ld e, c                                       ; $4083: $59
    nop                                           ; $4084: $00
    ld e, e                                       ; $4085: $5b
    nop                                           ; $4086: $00
    ld e, [hl]                                    ; $4087: $5e
    nop                                           ; $4088: $00
    ld h, c                                       ; $4089: $61
    nop                                           ; $408a: $00
    ld h, h                                       ; $408b: $64
    nop                                           ; $408c: $00
    ld h, [hl]                                    ; $408d: $66
    nop                                           ; $408e: $00
    ld l, b                                       ; $408f: $68
    nop                                           ; $4090: $00
    ld l, e                                       ; $4091: $6b
    nop                                           ; $4092: $00
    ld l, l                                       ; $4093: $6d
    nop                                           ; $4094: $00
    ld [hl], b                                    ; $4095: $70
    nop                                           ; $4096: $00
    ld [hl], d                                    ; $4097: $72
    nop                                           ; $4098: $00
    ld [hl], h                                    ; $4099: $74
    nop                                           ; $409a: $00
    ld [hl], a                                    ; $409b: $77
    nop                                           ; $409c: $00
    ld a, c                                       ; $409d: $79
    nop                                           ; $409e: $00
    ld a, e                                       ; $409f: $7b
    nop                                           ; $40a0: $00
    ld a, l                                       ; $40a1: $7d
    nop                                           ; $40a2: $00
    add b                                         ; $40a3: $80
    nop                                           ; $40a4: $00
    add c                                         ; $40a5: $81
    nop                                           ; $40a6: $00
    add h                                         ; $40a7: $84
    nop                                           ; $40a8: $00
    add l                                         ; $40a9: $85
    nop                                           ; $40aa: $00
    add a                                         ; $40ab: $87
    nop                                           ; $40ac: $00
    adc c                                         ; $40ad: $89
    nop                                           ; $40ae: $00
    adc e                                         ; $40af: $8b
    nop                                           ; $40b0: $00
    adc l                                         ; $40b1: $8d
    nop                                           ; $40b2: $00
    adc a                                         ; $40b3: $8f
    nop                                           ; $40b4: $00
    sub c                                         ; $40b5: $91
    nop                                           ; $40b6: $00
    sub e                                         ; $40b7: $93
    nop                                           ; $40b8: $00
    sub l                                         ; $40b9: $95
    nop                                           ; $40ba: $00
    sub a                                         ; $40bb: $97
    nop                                           ; $40bc: $00
    sbc b                                         ; $40bd: $98
    nop                                           ; $40be: $00
    sbc d                                         ; $40bf: $9a
    nop                                           ; $40c0: $00
    sbc h                                         ; $40c1: $9c
    nop                                           ; $40c2: $00
    sbc [hl]                                      ; $40c3: $9e
    nop                                           ; $40c4: $00
    and b                                         ; $40c5: $a0
    nop                                           ; $40c6: $00
    and c                                         ; $40c7: $a1
    nop                                           ; $40c8: $00
    and e                                         ; $40c9: $a3
    nop                                           ; $40ca: $00
    and l                                         ; $40cb: $a5
    nop                                           ; $40cc: $00
    and a                                         ; $40cd: $a7
    nop                                           ; $40ce: $00
    xor c                                         ; $40cf: $a9
    nop                                           ; $40d0: $00
    xor d                                         ; $40d1: $aa
    nop                                           ; $40d2: $00
    xor h                                         ; $40d3: $ac
    nop                                           ; $40d4: $00
    xor [hl]                                      ; $40d5: $ae
    nop                                           ; $40d6: $00
    xor a                                         ; $40d7: $af
    nop                                           ; $40d8: $00
    or c                                          ; $40d9: $b1
    nop                                           ; $40da: $00
    or e                                          ; $40db: $b3
    nop                                           ; $40dc: $00
    or h                                          ; $40dd: $b4
    nop                                           ; $40de: $00
    or [hl]                                       ; $40df: $b6
    nop                                           ; $40e0: $00
    cp b                                          ; $40e1: $b8
    nop                                           ; $40e2: $00
    cp d                                          ; $40e3: $ba
    nop                                           ; $40e4: $00
    cp e                                          ; $40e5: $bb
    nop                                           ; $40e6: $00
    cp l                                          ; $40e7: $bd
    nop                                           ; $40e8: $00
    cp a                                          ; $40e9: $bf
    nop                                           ; $40ea: $00
    ret nz                                        ; $40eb: $c0

    nop                                           ; $40ec: $00
    jp nz, $c300                                  ; $40ed: $c2 $00 $c3

    nop                                           ; $40f0: $00
    push bc                                       ; $40f1: $c5
    nop                                           ; $40f2: $00
    rst $00                                       ; $40f3: $c7
    nop                                           ; $40f4: $00
    ret z                                         ; $40f5: $c8

    nop                                           ; $40f6: $00
    jp z, $cb00                                   ; $40f7: $ca $00 $cb

    nop                                           ; $40fa: $00
    call $cf00                                    ; $40fb: $cd $00 $cf
    nop                                           ; $40fe: $00
    rst $08                                       ; $40ff: $cf
    nop                                           ; $4100: $00
    pop de                                        ; $4101: $d1
    nop                                           ; $4102: $00
    db $d3                                        ; $4103: $d3
    nop                                           ; $4104: $00
    push de                                       ; $4105: $d5
    nop                                           ; $4106: $00
    rst $10                                       ; $4107: $d7
    nop                                           ; $4108: $00
    ret c                                         ; $4109: $d8

    nop                                           ; $410a: $00
    jp c, $db00                                   ; $410b: $da $00 $db

    nop                                           ; $410e: $00
    db $dd                                        ; $410f: $dd
    nop                                           ; $4110: $00
    sbc $00                                       ; $4111: $de $00
    ldh [rP1], a                                  ; $4113: $e0 $00
    ld [c], a                                     ; $4115: $e2
    nop                                           ; $4116: $00
    db $e3                                        ; $4117: $e3
    nop                                           ; $4118: $00
    push hl                                       ; $4119: $e5
    nop                                           ; $411a: $00
    and $00                                       ; $411b: $e6 $00
    add sp, $00                                   ; $411d: $e8 $00
    jp hl                                         ; $411f: $e9


    nop                                           ; $4120: $00
    db $eb                                        ; $4121: $eb
    nop                                           ; $4122: $00
    db $ed                                        ; $4123: $ed
    nop                                           ; $4124: $00
    xor $00                                       ; $4125: $ee $00
    rst $28                                       ; $4127: $ef
    nop                                           ; $4128: $00
    pop af                                        ; $4129: $f1
    nop                                           ; $412a: $00
    ld a, [c]                                     ; $412b: $f2
    nop                                           ; $412c: $00
    db $f4                                        ; $412d: $f4
    nop                                           ; $412e: $00
    or $00                                        ; $412f: $f6 $00
    rst $30                                       ; $4131: $f7
    nop                                           ; $4132: $00
    ld sp, hl                                     ; $4133: $f9
    nop                                           ; $4134: $00
    ld a, [$fb00]                                 ; $4135: $fa $00 $fb
    nop                                           ; $4138: $00
    db $fd                                        ; $4139: $fd
    nop                                           ; $413a: $00
    rst $38                                       ; $413b: $ff
    nop                                           ; $413c: $00
    nop                                           ; $413d: $00
    ld bc, $0102                                  ; $413e: $01 $02 $01
    inc bc                                        ; $4141: $03
    ld bc, $0105                                  ; $4142: $01 $05 $01
    ld b, $01                                     ; $4145: $06 $01
    ld [$0901], sp                                ; $4147: $08 $01 $09
    ld bc, $010b                                  ; $414a: $01 $0b $01
    inc c                                         ; $414d: $0c
    ld bc, $010d                                  ; $414e: $01 $0d $01
    rrca                                          ; $4151: $0f
    ld bc, $0111                                  ; $4152: $01 $11 $01
    ld [de], a                                    ; $4155: $12
    ld bc, $0114                                  ; $4156: $01 $14 $01
    dec d                                         ; $4159: $15
    ld bc, $0117                                  ; $415a: $01 $17 $01
    jr jr_039_4160                                ; $415d: $18 $01

    ld a, [de]                                    ; $415f: $1a

jr_039_4160:
    ld bc, $011b                                  ; $4160: $01 $1b $01
    inc e                                         ; $4163: $1c
    ld bc, $011e                                  ; $4164: $01 $1e $01
    jr nz, @+$03                                  ; $4167: $20 $01

    ld hl, $2201                                  ; $4169: $21 $01 $22
    ld bc, $0124                                  ; $416c: $01 $24 $01
    ld h, $01                                     ; $416f: $26 $01
    daa                                           ; $4171: $27
    ld bc, $0129                                  ; $4172: $01 $29 $01
    ld a, [hl+]                                   ; $4175: $2a
    ld bc, $012c                                  ; $4176: $01 $2c $01
    dec l                                         ; $4179: $2d
    ld bc, $012e                                  ; $417a: $01 $2e $01
    jr nc, jr_039_4180                            ; $417d: $30 $01

    ld [hl-], a                                   ; $417f: $32

jr_039_4180:
    ld bc, $0133                                  ; $4180: $01 $33 $01
    inc [hl]                                      ; $4183: $34
    ld bc, $0136                                  ; $4184: $01 $36 $01
    scf                                           ; $4187: $37
    ld bc, $0139                                  ; $4188: $01 $39 $01
    ld a, [hl-]                                   ; $418b: $3a
    ld bc, $013c                                  ; $418c: $01 $3c $01
    dec a                                         ; $418f: $3d
    ld bc, $013e                                  ; $4190: $01 $3e $01
    ld b, b                                       ; $4193: $40
    ld bc, $0141                                  ; $4194: $01 $41 $01
    ld b, e                                       ; $4197: $43
    ld bc, HeaderNewLicenseeCode                  ; $4198: $01 $44 $01
    ld b, [hl]                                    ; $419b: $46
    ld bc, HeaderROMSize                          ; $419c: $01 $48 $01
    ld c, c                                       ; $419f: $49
    ld bc, HeaderOldLicenseeCode                  ; $41a0: $01 $4b $01
    ld c, h                                       ; $41a3: $4c
    ld bc, HeaderComplementCheck                  ; $41a4: $01 $4d $01
    ld c, a                                       ; $41a7: $4f
    ld bc, $0151                                  ; $41a8: $01 $51 $01
    ld d, c                                       ; $41ab: $51
    ld bc, $0153                                  ; $41ac: $01 $53 $01
    ld d, l                                       ; $41af: $55
    ld bc, $0156                                  ; $41b0: $01 $56 $01
    ld d, a                                       ; $41b3: $57
    ld bc, $0159                                  ; $41b4: $01 $59 $01
    ld e, e                                       ; $41b7: $5b
    ld bc, $015c                                  ; $41b8: $01 $5c $01
    ld e, l                                       ; $41bb: $5d
    ld bc, $015f                                  ; $41bc: $01 $5f $01
    ld h, b                                       ; $41bf: $60
    ld bc, $0162                                  ; $41c0: $01 $62 $01
    ld h, h                                       ; $41c3: $64
    ld bc, $0165                                  ; $41c4: $01 $65 $01
    ld h, a                                       ; $41c7: $67
    ld bc, $0168                                  ; $41c8: $01 $68 $01
    ld l, c                                       ; $41cb: $69
    ld bc, $016b                                  ; $41cc: $01 $6b $01
    ld l, h                                       ; $41cf: $6c
    ld bc, $016e                                  ; $41d0: $01 $6e $01
    ld [hl], b                                    ; $41d3: $70
    ld bc, $0171                                  ; $41d4: $01 $71 $01
    ld [hl], e                                    ; $41d7: $73
    ld bc, $0174                                  ; $41d8: $01 $74 $01
    halt                                          ; $41db: $76
    ld bc, $0177                                  ; $41dc: $01 $77 $01
    ld a, b                                       ; $41df: $78
    ld bc, $017a                                  ; $41e0: $01 $7a $01
    ld a, e                                       ; $41e3: $7b
    ld bc, $017c                                  ; $41e4: $01 $7c $01
    ld a, [hl]                                    ; $41e7: $7e
    ld bc, $017f                                  ; $41e8: $01 $7f $01
    add c                                         ; $41eb: $81
    ld bc, $0183                                  ; $41ec: $01 $83 $01
    add h                                         ; $41ef: $84
    ld bc, $0186                                  ; $41f0: $01 $86 $01
    add a                                         ; $41f3: $87
    ld bc, $0189                                  ; $41f4: $01 $89 $01
    adc d                                         ; $41f7: $8a
    ld bc, $018c                                  ; $41f8: $01 $8c $01
    adc l                                         ; $41fb: $8d
    ld bc, $018f                                  ; $41fc: $01 $8f $01
    sub b                                         ; $41ff: $90
    ld bc, $0192                                  ; $4200: $01 $92 $01
    sub e                                         ; $4203: $93
    ld bc, $0194                                  ; $4204: $01 $94 $01
    sub l                                         ; $4207: $95
    ld bc, $0198                                  ; $4208: $01 $98 $01
    sbc c                                         ; $420b: $99
    ld bc, $019a                                  ; $420c: $01 $9a $01
    sbc h                                         ; $420f: $9c
    ld bc, $019d                                  ; $4210: $01 $9d $01
    sbc a                                         ; $4213: $9f
    ld bc, $01a0                                  ; $4214: $01 $a0 $01
    and d                                         ; $4217: $a2
    ld bc, $01a3                                  ; $4218: $01 $a3 $01
    and l                                         ; $421b: $a5
    ld bc, $01a6                                  ; $421c: $01 $a6 $01
    and a                                         ; $421f: $a7
    ld bc, $01a9                                  ; $4220: $01 $a9 $01
    xor e                                         ; $4223: $ab
    ld bc, $01ac                                  ; $4224: $01 $ac $01
    xor [hl]                                      ; $4227: $ae
    ld bc, $01af                                  ; $4228: $01 $af $01
    or c                                          ; $422b: $b1
    ld bc, $01b2                                  ; $422c: $01 $b2 $01
    or h                                          ; $422f: $b4
    ld bc, $01b5                                  ; $4230: $01 $b5 $01
    or a                                          ; $4233: $b7
    ld bc, $01b8                                  ; $4234: $01 $b8 $01
    cp c                                          ; $4237: $b9
    ld bc, $01bb                                  ; $4238: $01 $bb $01
    cp h                                          ; $423b: $bc
    ld bc, $01be                                  ; $423c: $01 $be $01
    ret nz                                        ; $423f: $c0

    ld bc, $01c1                                  ; $4240: $01 $c1 $01
    jp nz, $c401                                  ; $4243: $c2 $01 $c4

    ld bc, $01c5                                  ; $4246: $01 $c5 $01
    rst $00                                       ; $4249: $c7
    ld bc, $01c8                                  ; $424a: $01 $c8 $01
    jp z, $cc01                                   ; $424d: $ca $01 $cc

    ld bc, $01cd                                  ; $4250: $01 $cd $01
    adc $01                                       ; $4253: $ce $01
    ret nc                                        ; $4255: $d0

    ld bc, $01d2                                  ; $4256: $01 $d2 $01
    db $d3                                        ; $4259: $d3
    ld bc, $01d4                                  ; $425a: $01 $d4 $01
    sub $01                                       ; $425d: $d6 $01
    rst $10                                       ; $425f: $d7
    ld bc, $0005                                  ; $4260: $01 $05 $00
    rrca                                          ; $4263: $0f
    nop                                           ; $4264: $00
    ld h, $00                                     ; $4265: $26 $00
    dec l                                         ; $4267: $2d
    nop                                           ; $4268: $00
    inc sp                                        ; $4269: $33
    nop                                           ; $426a: $00
    jr c, jr_039_426d                             ; $426b: $38 $00

jr_039_426d:
    dec a                                         ; $426d: $3d
    nop                                           ; $426e: $00
    ld b, c                                       ; $426f: $41
    nop                                           ; $4270: $00
    ld b, l                                       ; $4271: $45
    nop                                           ; $4272: $00
    ld c, c                                       ; $4273: $49
    nop                                           ; $4274: $00
    ld c, l                                       ; $4275: $4d
    nop                                           ; $4276: $00
    ld d, d                                       ; $4277: $52
    nop                                           ; $4278: $00
    ld d, l                                       ; $4279: $55
    nop                                           ; $427a: $00
    ld e, b                                       ; $427b: $58
    nop                                           ; $427c: $00
    ld e, e                                       ; $427d: $5b
    nop                                           ; $427e: $00
    ld e, [hl]                                    ; $427f: $5e
    nop                                           ; $4280: $00
    ld h, b                                       ; $4281: $60
    nop                                           ; $4282: $00
    ld h, e                                       ; $4283: $63
    nop                                           ; $4284: $00
    ld h, [hl]                                    ; $4285: $66
    nop                                           ; $4286: $00
    ld l, b                                       ; $4287: $68
    nop                                           ; $4288: $00
    ld l, e                                       ; $4289: $6b
    nop                                           ; $428a: $00
    ld l, l                                       ; $428b: $6d
    nop                                           ; $428c: $00
    ld [hl], b                                    ; $428d: $70
    nop                                           ; $428e: $00
    ld [hl], d                                    ; $428f: $72
    nop                                           ; $4290: $00
    ld [hl], h                                    ; $4291: $74
    nop                                           ; $4292: $00
    halt                                          ; $4293: $76
    nop                                           ; $4294: $00
    ld a, c                                       ; $4295: $79
    nop                                           ; $4296: $00
    ld a, e                                       ; $4297: $7b
    nop                                           ; $4298: $00
    ld a, l                                       ; $4299: $7d
    nop                                           ; $429a: $00
    ld a, a                                       ; $429b: $7f
    nop                                           ; $429c: $00
    add c                                         ; $429d: $81
    nop                                           ; $429e: $00
    add e                                         ; $429f: $83
    nop                                           ; $42a0: $00
    add [hl]                                      ; $42a1: $86
    nop                                           ; $42a2: $00
    adc b                                         ; $42a3: $88
    nop                                           ; $42a4: $00
    adc d                                         ; $42a5: $8a
    nop                                           ; $42a6: $00
    adc h                                         ; $42a7: $8c
    nop                                           ; $42a8: $00
    adc l                                         ; $42a9: $8d
    nop                                           ; $42aa: $00
    sub b                                         ; $42ab: $90
    nop                                           ; $42ac: $00
    sub d                                         ; $42ad: $92
    nop                                           ; $42ae: $00
    sub h                                         ; $42af: $94
    nop                                           ; $42b0: $00
    sub l                                         ; $42b1: $95
    nop                                           ; $42b2: $00
    sbc b                                         ; $42b3: $98
    nop                                           ; $42b4: $00
    sbc c                                         ; $42b5: $99
    nop                                           ; $42b6: $00
    sbc e                                         ; $42b7: $9b
    nop                                           ; $42b8: $00
    sbc l                                         ; $42b9: $9d
    nop                                           ; $42ba: $00
    sbc a                                         ; $42bb: $9f
    nop                                           ; $42bc: $00
    and c                                         ; $42bd: $a1
    nop                                           ; $42be: $00
    and e                                         ; $42bf: $a3
    nop                                           ; $42c0: $00
    and h                                         ; $42c1: $a4
    nop                                           ; $42c2: $00
    and [hl]                                      ; $42c3: $a6
    nop                                           ; $42c4: $00
    xor b                                         ; $42c5: $a8
    nop                                           ; $42c6: $00
    xor d                                         ; $42c7: $aa
    nop                                           ; $42c8: $00
    xor h                                         ; $42c9: $ac
    nop                                           ; $42ca: $00
    xor l                                         ; $42cb: $ad
    nop                                           ; $42cc: $00
    xor a                                         ; $42cd: $af
    nop                                           ; $42ce: $00
    or c                                          ; $42cf: $b1
    nop                                           ; $42d0: $00
    or e                                          ; $42d1: $b3
    nop                                           ; $42d2: $00
    or l                                          ; $42d3: $b5
    nop                                           ; $42d4: $00
    or a                                          ; $42d5: $b7
    nop                                           ; $42d6: $00
    cp b                                          ; $42d7: $b8
    nop                                           ; $42d8: $00
    cp d                                          ; $42d9: $ba
    nop                                           ; $42da: $00
    cp h                                          ; $42db: $bc
    nop                                           ; $42dc: $00
    cp l                                          ; $42dd: $bd
    nop                                           ; $42de: $00
    cp a                                          ; $42df: $bf
    nop                                           ; $42e0: $00
    pop bc                                        ; $42e1: $c1
    nop                                           ; $42e2: $00
    jp $c500                                      ; $42e3: $c3 $00 $c5


    nop                                           ; $42e6: $00
    add $00                                       ; $42e7: $c6 $00
    ret z                                         ; $42e9: $c8

    nop                                           ; $42ea: $00
    jp z, $cc00                                   ; $42eb: $ca $00 $cc

    nop                                           ; $42ee: $00
    adc $00                                       ; $42ef: $ce $00
    rst $08                                       ; $42f1: $cf
    nop                                           ; $42f2: $00
    pop de                                        ; $42f3: $d1
    nop                                           ; $42f4: $00
    db $d3                                        ; $42f5: $d3
    nop                                           ; $42f6: $00
    call nc, $d600                                ; $42f7: $d4 $00 $d6
    nop                                           ; $42fa: $00
    ret c                                         ; $42fb: $d8

    nop                                           ; $42fc: $00
    reti                                          ; $42fd: $d9


    nop                                           ; $42fe: $00
    db $db                                        ; $42ff: $db
    nop                                           ; $4300: $00
    db $dd                                        ; $4301: $dd
    nop                                           ; $4302: $00
    rst $18                                       ; $4303: $df
    nop                                           ; $4304: $00
    ldh [rP1], a                                  ; $4305: $e0 $00
    pop hl                                        ; $4307: $e1
    nop                                           ; $4308: $00
    db $e3                                        ; $4309: $e3
    nop                                           ; $430a: $00
    push hl                                       ; $430b: $e5
    nop                                           ; $430c: $00
    rst $20                                       ; $430d: $e7
    nop                                           ; $430e: $00
    jp hl                                         ; $430f: $e9


    nop                                           ; $4310: $00
    db $eb                                        ; $4311: $eb
    nop                                           ; $4312: $00
    db $ec                                        ; $4313: $ec
    nop                                           ; $4314: $00
    db $ed                                        ; $4315: $ed
    nop                                           ; $4316: $00
    ldh a, [rP1]                                  ; $4317: $f0 $00
    pop af                                        ; $4319: $f1
    nop                                           ; $431a: $00
    di                                            ; $431b: $f3
    nop                                           ; $431c: $00
    db $f4                                        ; $431d: $f4
    nop                                           ; $431e: $00
    or $00                                        ; $431f: $f6 $00
    ld hl, sp+$00                                 ; $4321: $f8 $00
    ld sp, hl                                     ; $4323: $f9
    nop                                           ; $4324: $00
    ld a, [$fc00]                                 ; $4325: $fa $00 $fc
    nop                                           ; $4328: $00
    cp $00                                        ; $4329: $fe $00
    nop                                           ; $432b: $00
    ld bc, $0101                                  ; $432c: $01 $01 $01
    inc bc                                        ; $432f: $03
    ld bc, $0105                                  ; $4330: $01 $05 $01
    rlca                                          ; $4333: $07
    ld bc, $0108                                  ; $4334: $01 $08 $01
    ld a, [bc]                                    ; $4337: $0a
    ld bc, $010c                                  ; $4338: $01 $0c $01
    dec c                                         ; $433b: $0d
    ld bc, $010e                                  ; $433c: $01 $0e $01
    db $10                                        ; $433f: $10
    ld bc, $0112                                  ; $4340: $01 $12 $01
    inc d                                         ; $4343: $14
    ld bc, $0116                                  ; $4344: $01 $16 $01
    rla                                           ; $4347: $17
    ld bc, $0119                                  ; $4348: $01 $19 $01
    ld a, [de]                                    ; $434b: $1a
    ld bc, $011c                                  ; $434c: $01 $1c $01
    ld e, $01                                     ; $434f: $1e $01
    rra                                           ; $4351: $1f
    ld bc, $0121                                  ; $4352: $01 $21 $01
    inc hl                                        ; $4355: $23
    ld bc, $0124                                  ; $4356: $01 $24 $01
    ld h, $01                                     ; $4359: $26 $01
    daa                                           ; $435b: $27
    ld bc, $0129                                  ; $435c: $01 $29 $01
    ld a, [hl+]                                   ; $435f: $2a
    ld bc, $012d                                  ; $4360: $01 $2d $01
    ld l, $01                                     ; $4363: $2e $01
    jr nc, @+$03                                  ; $4365: $30 $01

    ld sp, $3301                                  ; $4367: $31 $01 $33
    ld bc, $0135                                  ; $436a: $01 $35 $01
    ld [hl], $01                                  ; $436d: $36 $01
    jr c, jr_039_4372                             ; $436f: $38 $01

    ld a, [hl-]                                   ; $4371: $3a

jr_039_4372:
    ld bc, $013b                                  ; $4372: $01 $3b $01
    dec a                                         ; $4375: $3d
    ld bc, $013e                                  ; $4376: $01 $3e $01
    ld b, b                                       ; $4379: $40
    ld bc, $0142                                  ; $437a: $01 $42 $01
    ld b, e                                       ; $437d: $43
    ld bc, $0145                                  ; $437e: $01 $45 $01
    ld b, a                                       ; $4381: $47
    ld bc, HeaderRAMSize                          ; $4382: $01 $49 $01
    ld c, d                                       ; $4385: $4a
    ld bc, HeaderOldLicenseeCode                  ; $4386: $01 $4b $01
    ld c, [hl]                                    ; $4389: $4e
    ld bc, $014f                                  ; $438a: $01 $4f $01
    ld d, c                                       ; $438d: $51
    ld bc, $0153                                  ; $438e: $01 $53 $01
    ld d, h                                       ; $4391: $54
    ld bc, $0156                                  ; $4392: $01 $56 $01
    ld d, a                                       ; $4395: $57
    ld bc, $0159                                  ; $4396: $01 $59 $01
    ld e, e                                       ; $4399: $5b
    ld bc, $015c                                  ; $439a: $01 $5c $01
    ld e, [hl]                                    ; $439d: $5e
    ld bc, $0160                                  ; $439e: $01 $60 $01
    ld h, c                                       ; $43a1: $61
    ld bc, $0163                                  ; $43a2: $01 $63 $01
    ld h, l                                       ; $43a5: $65
    ld bc, $0167                                  ; $43a6: $01 $67 $01
    ld l, b                                       ; $43a9: $68
    ld bc, $016a                                  ; $43aa: $01 $6a $01
    ld l, e                                       ; $43ad: $6b
    ld bc, $016d                                  ; $43ae: $01 $6d $01
    ld l, a                                       ; $43b1: $6f
    ld bc, $0170                                  ; $43b2: $01 $70 $01
    ld [hl], d                                    ; $43b5: $72
    ld bc, $0173                                  ; $43b6: $01 $73 $01
    ld [hl], l                                    ; $43b9: $75
    ld bc, $0177                                  ; $43ba: $01 $77 $01
    ld a, c                                       ; $43bd: $79
    ld bc, $017b                                  ; $43be: $01 $7b $01
    ld a, h                                       ; $43c1: $7c
    ld bc, $017e                                  ; $43c2: $01 $7e $01
    ld a, a                                       ; $43c5: $7f
    ld bc, $0181                                  ; $43c6: $01 $81 $01
    add d                                         ; $43c9: $82
    ld bc, $0184                                  ; $43ca: $01 $84 $01
    add [hl]                                      ; $43cd: $86
    ld bc, $0188                                  ; $43ce: $01 $88 $01
    adc c                                         ; $43d1: $89
    ld bc, $018b                                  ; $43d2: $01 $8b $01
    adc l                                         ; $43d5: $8d
    ld bc, $018e                                  ; $43d6: $01 $8e $01
    sub b                                         ; $43d9: $90
    ld bc, $0192                                  ; $43da: $01 $92 $01
    sub e                                         ; $43dd: $93
    ld bc, $0195                                  ; $43de: $01 $95 $01
    sub a                                         ; $43e1: $97
    ld bc, $0198                                  ; $43e2: $01 $98 $01
    sbc d                                         ; $43e5: $9a
    ld bc, $019c                                  ; $43e6: $01 $9c $01
    sbc l                                         ; $43e9: $9d
    ld bc, $019f                                  ; $43ea: $01 $9f $01
    and c                                         ; $43ed: $a1
    ld bc, $01a2                                  ; $43ee: $01 $a2 $01
    and h                                         ; $43f1: $a4
    ld bc, $01a6                                  ; $43f2: $01 $a6 $01
    and a                                         ; $43f5: $a7
    ld bc, $01a9                                  ; $43f6: $01 $a9 $01
    xor e                                         ; $43f9: $ab
    ld bc, $01ac                                  ; $43fa: $01 $ac $01
    xor [hl]                                      ; $43fd: $ae
    ld bc, $01b0                                  ; $43fe: $01 $b0 $01
    or c                                          ; $4401: $b1
    ld bc, $01b3                                  ; $4402: $01 $b3 $01
    or l                                          ; $4405: $b5
    ld bc, $01b6                                  ; $4406: $01 $b6 $01
    cp b                                          ; $4409: $b8
    ld bc, $01ba                                  ; $440a: $01 $ba $01
    cp e                                          ; $440d: $bb
    ld bc, $01bd                                  ; $440e: $01 $bd $01
    cp a                                          ; $4411: $bf
    ld bc, $01c0                                  ; $4412: $01 $c0 $01
    jp nz, $c401                                  ; $4415: $c2 $01 $c4

    ld bc, $01c5                                  ; $4418: $01 $c5 $01
    rst $00                                       ; $441b: $c7
    ld bc, $01c9                                  ; $441c: $01 $c9 $01
    rlc c                                         ; $441f: $cb $01
    call $ce01                                    ; $4421: $cd $01 $ce
    ld bc, $01d0                                  ; $4424: $01 $d0 $01
    jp nc, $d301                                  ; $4427: $d2 $01 $d3

    ld bc, $01d5                                  ; $442a: $01 $d5 $01
    rst $10                                       ; $442d: $d7
    ld bc, $01d8                                  ; $442e: $01 $d8 $01
    jp c, $dc01                                   ; $4431: $da $01 $dc

    ld bc, $01dd                                  ; $4434: $01 $dd $01
    rst $18                                       ; $4437: $df
    ld bc, $0005                                  ; $4438: $01 $05 $00
    stop                                          ; $443b: $10 $00
    add hl, hl                                    ; $443d: $29
    nop                                           ; $443e: $00
    jr nc, jr_039_4441                            ; $443f: $30 $00

jr_039_4441:
    ld [hl], $00                                  ; $4441: $36 $00
    dec sp                                        ; $4443: $3b
    nop                                           ; $4444: $00
    ld b, c                                       ; $4445: $41
    nop                                           ; $4446: $00
    ld b, l                                       ; $4447: $45
    nop                                           ; $4448: $00
    ld c, d                                       ; $4449: $4a
    nop                                           ; $444a: $00
    ld c, [hl]                                    ; $444b: $4e
    nop                                           ; $444c: $00
    ld d, c                                       ; $444d: $51
    nop                                           ; $444e: $00
    ld d, l                                       ; $444f: $55
    nop                                           ; $4450: $00
    ld e, b                                       ; $4451: $58
    nop                                           ; $4452: $00
    ld e, e                                       ; $4453: $5b
    nop                                           ; $4454: $00
    ld e, [hl]                                    ; $4455: $5e
    nop                                           ; $4456: $00
    ld h, c                                       ; $4457: $61
    nop                                           ; $4458: $00
    ld h, h                                       ; $4459: $64
    nop                                           ; $445a: $00
    ld h, a                                       ; $445b: $67
    nop                                           ; $445c: $00
    ld l, d                                       ; $445d: $6a
    nop                                           ; $445e: $00
    ld l, h                                       ; $445f: $6c
    nop                                           ; $4460: $00
    ld l, a                                       ; $4461: $6f
    nop                                           ; $4462: $00
    ld [hl], c                                    ; $4463: $71
    nop                                           ; $4464: $00
    ld [hl], e                                    ; $4465: $73
    nop                                           ; $4466: $00
    halt                                          ; $4467: $76
    nop                                           ; $4468: $00
    ld a, b                                       ; $4469: $78
    nop                                           ; $446a: $00
    ld a, e                                       ; $446b: $7b
    nop                                           ; $446c: $00
    ld a, l                                       ; $446d: $7d
    nop                                           ; $446e: $00
    ld a, a                                       ; $446f: $7f
    nop                                           ; $4470: $00
    add c                                         ; $4471: $81
    nop                                           ; $4472: $00
    add h                                         ; $4473: $84
    nop                                           ; $4474: $00
    add [hl]                                      ; $4475: $86
    nop                                           ; $4476: $00
    adc b                                         ; $4477: $88
    nop                                           ; $4478: $00
    adc d                                         ; $4479: $8a
    nop                                           ; $447a: $00
    adc h                                         ; $447b: $8c
    nop                                           ; $447c: $00
    adc [hl]                                      ; $447d: $8e
    nop                                           ; $447e: $00
    sub b                                         ; $447f: $90
    nop                                           ; $4480: $00
    sub e                                         ; $4481: $93
    nop                                           ; $4482: $00
    sub l                                         ; $4483: $95
    nop                                           ; $4484: $00
    sub a                                         ; $4485: $97
    nop                                           ; $4486: $00
    sbc c                                         ; $4487: $99
    nop                                           ; $4488: $00
    sbc e                                         ; $4489: $9b
    nop                                           ; $448a: $00
    sbc l                                         ; $448b: $9d
    nop                                           ; $448c: $00
    sbc a                                         ; $448d: $9f
    nop                                           ; $448e: $00
    and c                                         ; $448f: $a1
    nop                                           ; $4490: $00
    and e                                         ; $4491: $a3
    nop                                           ; $4492: $00
    and l                                         ; $4493: $a5
    nop                                           ; $4494: $00
    and a                                         ; $4495: $a7
    nop                                           ; $4496: $00
    xor b                                         ; $4497: $a8
    nop                                           ; $4498: $00
    xor e                                         ; $4499: $ab
    nop                                           ; $449a: $00
    xor h                                         ; $449b: $ac
    nop                                           ; $449c: $00
    xor a                                         ; $449d: $af
    nop                                           ; $449e: $00
    or c                                          ; $449f: $b1
    nop                                           ; $44a0: $00
    or e                                          ; $44a1: $b3
    nop                                           ; $44a2: $00
    or l                                          ; $44a3: $b5
    nop                                           ; $44a4: $00
    or [hl]                                       ; $44a5: $b6
    nop                                           ; $44a6: $00
    cp b                                          ; $44a7: $b8
    nop                                           ; $44a8: $00
    cp e                                          ; $44a9: $bb
    nop                                           ; $44aa: $00
    cp h                                          ; $44ab: $bc
    nop                                           ; $44ac: $00
    cp [hl]                                       ; $44ad: $be
    nop                                           ; $44ae: $00
    ret nz                                        ; $44af: $c0

    nop                                           ; $44b0: $00
    jp nz, $c300                                  ; $44b1: $c2 $00 $c3

    nop                                           ; $44b4: $00
    add $00                                       ; $44b5: $c6 $00
    rst $00                                       ; $44b7: $c7
    nop                                           ; $44b8: $00
    ret                                           ; $44b9: $c9


    nop                                           ; $44ba: $00
    rlc b                                         ; $44bb: $cb $00
    call $cf00                                    ; $44bd: $cd $00 $cf
    nop                                           ; $44c0: $00
    pop de                                        ; $44c1: $d1
    nop                                           ; $44c2: $00
    jp nc, $d500                                  ; $44c3: $d2 $00 $d5

    nop                                           ; $44c6: $00
    sub $00                                       ; $44c7: $d6 $00
    ret c                                         ; $44c9: $d8

    nop                                           ; $44ca: $00
    jp c, $db00                                   ; $44cb: $da $00 $db

    nop                                           ; $44ce: $00
    sbc $00                                       ; $44cf: $de $00
    rst $18                                       ; $44d1: $df
    nop                                           ; $44d2: $00
    pop hl                                        ; $44d3: $e1
    nop                                           ; $44d4: $00
    db $e3                                        ; $44d5: $e3
    nop                                           ; $44d6: $00
    push hl                                       ; $44d7: $e5
    nop                                           ; $44d8: $00
    rst $20                                       ; $44d9: $e7
    nop                                           ; $44da: $00
    jp hl                                         ; $44db: $e9


    nop                                           ; $44dc: $00
    ld [$ec00], a                                 ; $44dd: $ea $00 $ec
    nop                                           ; $44e0: $00
    xor $00                                       ; $44e1: $ee $00
    ldh a, [rP1]                                  ; $44e3: $f0 $00
    ld a, [c]                                     ; $44e5: $f2
    nop                                           ; $44e6: $00
    di                                            ; $44e7: $f3
    nop                                           ; $44e8: $00
    push af                                       ; $44e9: $f5
    nop                                           ; $44ea: $00
    rst $30                                       ; $44eb: $f7
    nop                                           ; $44ec: $00
    ld sp, hl                                     ; $44ed: $f9
    nop                                           ; $44ee: $00
    ei                                            ; $44ef: $fb
    nop                                           ; $44f0: $00
    db $fc                                        ; $44f1: $fc
    nop                                           ; $44f2: $00
    cp $00                                        ; $44f3: $fe $00
    nop                                           ; $44f5: $00
    ld bc, $0101                                  ; $44f6: $01 $01 $01
    inc bc                                        ; $44f9: $03
    ld bc, $0105                                  ; $44fa: $01 $05 $01
    rlca                                          ; $44fd: $07
    ld bc, $0109                                  ; $44fe: $01 $09 $01
    ld a, [bc]                                    ; $4501: $0a
    ld bc, $010c                                  ; $4502: $01 $0c $01
    ld c, $01                                     ; $4505: $0e $01
    db $10                                        ; $4507: $10
    ld bc, $0112                                  ; $4508: $01 $12 $01
    inc de                                        ; $450b: $13
    ld bc, $0115                                  ; $450c: $01 $15 $01
    rla                                           ; $450f: $17
    ld bc, $0119                                  ; $4510: $01 $19 $01
    dec de                                        ; $4513: $1b
    ld bc, $011c                                  ; $4514: $01 $1c $01
    ld e, $01                                     ; $4517: $1e $01
    jr nz, jr_039_451c                            ; $4519: $20 $01

    ld [hl+], a                                   ; $451b: $22

jr_039_451c:
    ld bc, $0124                                  ; $451c: $01 $24 $01
    dec h                                         ; $451f: $25
    ld bc, $0127                                  ; $4520: $01 $27 $01
    add hl, hl                                    ; $4523: $29
    ld bc, $012b                                  ; $4524: $01 $2b $01
    dec l                                         ; $4527: $2d
    ld bc, $012e                                  ; $4528: $01 $2e $01
    jr nc, jr_039_452e                            ; $452b: $30 $01

    ld [hl-], a                                   ; $452d: $32

jr_039_452e:
    ld bc, $0133                                  ; $452e: $01 $33 $01
    dec [hl]                                      ; $4531: $35
    ld bc, $0137                                  ; $4532: $01 $37 $01
    add hl, sp                                    ; $4535: $39
    ld bc, $013b                                  ; $4536: $01 $3b $01
    dec a                                         ; $4539: $3d
    ld bc, $013e                                  ; $453a: $01 $3e $01
    ld b, b                                       ; $453d: $40
    ld bc, $0142                                  ; $453e: $01 $42 $01
    ld b, h                                       ; $4541: $44
    ld bc, $0145                                  ; $4542: $01 $45 $01
    ld b, a                                       ; $4545: $47
    ld bc, HeaderRAMSize                          ; $4546: $01 $49 $01
    ld c, e                                       ; $4549: $4b
    ld bc, HeaderComplementCheck                  ; $454a: $01 $4d $01
    ld c, a                                       ; $454d: $4f
    ld bc, $0150                                  ; $454e: $01 $50 $01
    ld d, d                                       ; $4551: $52
    ld bc, $0154                                  ; $4552: $01 $54 $01
    ld d, l                                       ; $4555: $55
    ld bc, $0157                                  ; $4556: $01 $57 $01
    ld e, c                                       ; $4559: $59
    ld bc, $015b                                  ; $455a: $01 $5b $01
    ld e, l                                       ; $455d: $5d
    ld bc, $015f                                  ; $455e: $01 $5f $01
    ld h, c                                       ; $4561: $61
    ld bc, $0162                                  ; $4562: $01 $62 $01
    ld h, h                                       ; $4565: $64
    ld bc, $0166                                  ; $4566: $01 $66 $01
    ld l, b                                       ; $4569: $68
    ld bc, $0169                                  ; $456a: $01 $69 $01
    ld l, e                                       ; $456d: $6b
    ld bc, $016d                                  ; $456e: $01 $6d $01
    ld l, a                                       ; $4571: $6f
    ld bc, $0170                                  ; $4572: $01 $70 $01
    ld [hl], d                                    ; $4575: $72
    ld bc, $0174                                  ; $4576: $01 $74 $01
    halt                                          ; $4579: $76
    ld bc, $0178                                  ; $457a: $01 $78 $01
    ld a, d                                       ; $457d: $7a
    ld bc, $017b                                  ; $457e: $01 $7b $01
    ld a, l                                       ; $4581: $7d
    ld bc, $017f                                  ; $4582: $01 $7f $01
    add c                                         ; $4585: $81
    ld bc, $0183                                  ; $4586: $01 $83 $01
    add l                                         ; $4589: $85
    ld bc, $0186                                  ; $458a: $01 $86 $01
    adc b                                         ; $458d: $88
    ld bc, $018a                                  ; $458e: $01 $8a $01
    adc h                                         ; $4591: $8c
    ld bc, $018e                                  ; $4592: $01 $8e $01
    adc a                                         ; $4595: $8f
    ld bc, $0191                                  ; $4596: $01 $91 $01
    sub e                                         ; $4599: $93
    ld bc, $0195                                  ; $459a: $01 $95 $01
    sub a                                         ; $459d: $97
    ld bc, $0198                                  ; $459e: $01 $98 $01
    sbc d                                         ; $45a1: $9a
    ld bc, $019c                                  ; $45a2: $01 $9c $01
    sbc [hl]                                      ; $45a5: $9e
    ld bc, $01a0                                  ; $45a6: $01 $a0 $01
    and d                                         ; $45a9: $a2
    ld bc, $01a3                                  ; $45aa: $01 $a3 $01
    and l                                         ; $45ad: $a5
    ld bc, $01a7                                  ; $45ae: $01 $a7 $01
    xor c                                         ; $45b1: $a9
    ld bc, $01ab                                  ; $45b2: $01 $ab $01
    xor h                                         ; $45b5: $ac
    ld bc, $01ae                                  ; $45b6: $01 $ae $01
    or b                                          ; $45b9: $b0
    ld bc, $01b2                                  ; $45ba: $01 $b2 $01
    or h                                          ; $45bd: $b4
    ld bc, $01b6                                  ; $45be: $01 $b6 $01
    or a                                          ; $45c1: $b7
    ld bc, $01b9                                  ; $45c2: $01 $b9 $01
    cp e                                          ; $45c5: $bb
    ld bc, $01bd                                  ; $45c6: $01 $bd $01
    cp a                                          ; $45c9: $bf
    ld bc, $01c0                                  ; $45ca: $01 $c0 $01
    jp nz, $c401                                  ; $45cd: $c2 $01 $c4

    ld bc, $01c6                                  ; $45d0: $01 $c6 $01
    ret z                                         ; $45d3: $c8

    ld bc, $01ca                                  ; $45d4: $01 $ca $01
    call z, $ce01                                 ; $45d7: $cc $01 $ce
    ld bc, $01cf                                  ; $45da: $01 $cf $01
    pop de                                        ; $45dd: $d1
    ld bc, $01d3                                  ; $45de: $01 $d3 $01
    push de                                       ; $45e1: $d5
    ld bc, $01d7                                  ; $45e2: $01 $d7 $01
    ret c                                         ; $45e5: $d8

    ld bc, $01da                                  ; $45e6: $01 $da $01
    call c, $de01                                 ; $45e9: $dc $01 $de
    ld bc, $0004                                  ; $45ec: $01 $04 $00
    jr jr_039_45f1                                ; $45ef: $18 $00

jr_039_45f1:
    ld hl, $2800                                  ; $45f1: $21 $00 $28
    nop                                           ; $45f4: $00
    cpl                                           ; $45f5: $2f
    nop                                           ; $45f6: $00
    dec [hl]                                      ; $45f7: $35
    nop                                           ; $45f8: $00
    ld a, [hl-]                                   ; $45f9: $3a
    nop                                           ; $45fa: $00
    ld b, c                                       ; $45fb: $41
    nop                                           ; $45fc: $00
    ld b, l                                       ; $45fd: $45
    nop                                           ; $45fe: $00
    ld c, c                                       ; $45ff: $49
    nop                                           ; $4600: $00
    ld c, l                                       ; $4601: $4d
    nop                                           ; $4602: $00
    ld d, d                                       ; $4603: $52
    nop                                           ; $4604: $00
    ld d, l                                       ; $4605: $55
    nop                                           ; $4606: $00
    ld e, c                                       ; $4607: $59
    nop                                           ; $4608: $00
    ld e, l                                       ; $4609: $5d
    nop                                           ; $460a: $00
    ld h, b                                       ; $460b: $60
    nop                                           ; $460c: $00
    ld h, e                                       ; $460d: $63
    nop                                           ; $460e: $00
    ld h, a                                       ; $460f: $67
    nop                                           ; $4610: $00
    ld l, d                                       ; $4611: $6a
    nop                                           ; $4612: $00
    ld l, h                                       ; $4613: $6c
    nop                                           ; $4614: $00
    ld l, a                                       ; $4615: $6f
    nop                                           ; $4616: $00
    ld [hl], e                                    ; $4617: $73
    nop                                           ; $4618: $00
    halt                                          ; $4619: $76
    nop                                           ; $461a: $00
    ld a, b                                       ; $461b: $78
    nop                                           ; $461c: $00
    ld a, e                                       ; $461d: $7b
    nop                                           ; $461e: $00
    ld a, [hl]                                    ; $461f: $7e
    nop                                           ; $4620: $00
    add c                                         ; $4621: $81
    nop                                           ; $4622: $00
    add e                                         ; $4623: $83
    nop                                           ; $4624: $00
    add [hl]                                      ; $4625: $86
    nop                                           ; $4626: $00
    adc b                                         ; $4627: $88
    nop                                           ; $4628: $00
    adc h                                         ; $4629: $8c
    nop                                           ; $462a: $00
    adc [hl]                                      ; $462b: $8e
    nop                                           ; $462c: $00
    sub b                                         ; $462d: $90
    nop                                           ; $462e: $00
    sub e                                         ; $462f: $93
    nop                                           ; $4630: $00
    sub l                                         ; $4631: $95
    nop                                           ; $4632: $00
    sub a                                         ; $4633: $97
    nop                                           ; $4634: $00
    sbc c                                         ; $4635: $99
    nop                                           ; $4636: $00
    sbc h                                         ; $4637: $9c
    nop                                           ; $4638: $00
    sbc [hl]                                      ; $4639: $9e
    nop                                           ; $463a: $00
    and c                                         ; $463b: $a1
    nop                                           ; $463c: $00
    and e                                         ; $463d: $a3
    nop                                           ; $463e: $00
    and l                                         ; $463f: $a5
    nop                                           ; $4640: $00
    xor b                                         ; $4641: $a8
    nop                                           ; $4642: $00
    xor d                                         ; $4643: $aa
    nop                                           ; $4644: $00
    xor h                                         ; $4645: $ac
    nop                                           ; $4646: $00
    xor [hl]                                      ; $4647: $ae
    nop                                           ; $4648: $00
    or b                                          ; $4649: $b0
    nop                                           ; $464a: $00
    or d                                          ; $464b: $b2
    nop                                           ; $464c: $00
    or l                                          ; $464d: $b5
    nop                                           ; $464e: $00
    or a                                          ; $464f: $b7
    nop                                           ; $4650: $00
    cp c                                          ; $4651: $b9
    nop                                           ; $4652: $00
    cp h                                          ; $4653: $bc
    nop                                           ; $4654: $00
    cp l                                          ; $4655: $bd
    nop                                           ; $4656: $00
    ret nz                                        ; $4657: $c0

    nop                                           ; $4658: $00
    pop bc                                        ; $4659: $c1
    nop                                           ; $465a: $00
    call nz, $c600                                ; $465b: $c4 $00 $c6
    nop                                           ; $465e: $00
    ret z                                         ; $465f: $c8

    nop                                           ; $4660: $00
    jp z, $cc00                                   ; $4661: $ca $00 $cc

    nop                                           ; $4664: $00
    adc $00                                       ; $4665: $ce $00
    ret nc                                        ; $4667: $d0

    nop                                           ; $4668: $00
    db $d3                                        ; $4669: $d3
    nop                                           ; $466a: $00
    call nc, $d600                                ; $466b: $d4 $00 $d6
    nop                                           ; $466e: $00
    reti                                          ; $466f: $d9


    nop                                           ; $4670: $00
    jp c, $dc00                                   ; $4671: $da $00 $dc

    nop                                           ; $4674: $00
    sbc $00                                       ; $4675: $de $00
    ldh [rP1], a                                  ; $4677: $e0 $00
    db $e3                                        ; $4679: $e3
    nop                                           ; $467a: $00
    db $e4                                        ; $467b: $e4
    nop                                           ; $467c: $00
    and $00                                       ; $467d: $e6 $00
    add sp, $00                                   ; $467f: $e8 $00
    ld [$ec00], a                                 ; $4681: $ea $00 $ec
    nop                                           ; $4684: $00
    xor $00                                       ; $4685: $ee $00
    ldh a, [rP1]                                  ; $4687: $f0 $00
    ld a, [c]                                     ; $4689: $f2
    nop                                           ; $468a: $00
    db $f4                                        ; $468b: $f4
    nop                                           ; $468c: $00
    or $00                                        ; $468d: $f6 $00
    ld hl, sp+$00                                 ; $468f: $f8 $00
    ld a, [$fc00]                                 ; $4691: $fa $00 $fc
    nop                                           ; $4694: $00
    db $fd                                        ; $4695: $fd
    nop                                           ; $4696: $00
    rst $38                                       ; $4697: $ff
    nop                                           ; $4698: $00
    ld [bc], a                                    ; $4699: $02
    ld bc, $0103                                  ; $469a: $01 $03 $01
    dec b                                         ; $469d: $05
    ld bc, $0107                                  ; $469e: $01 $07 $01
    ld [$0a01], sp                                ; $46a1: $08 $01 $0a
    ld bc, $010c                                  ; $46a4: $01 $0c $01
    rrca                                          ; $46a7: $0f
    ld bc, $0110                                  ; $46a8: $01 $10 $01
    ld [de], a                                    ; $46ab: $12
    ld bc, $0114                                  ; $46ac: $01 $14 $01
    dec d                                         ; $46af: $15
    ld bc, $0117                                  ; $46b0: $01 $17 $01
    add hl, de                                    ; $46b3: $19
    ld bc, $011b                                  ; $46b4: $01 $1b $01
    dec e                                         ; $46b7: $1d
    ld bc, $011f                                  ; $46b8: $01 $1f $01
    jr nz, jr_039_46be                            ; $46bb: $20 $01

    ld [hl+], a                                   ; $46bd: $22

jr_039_46be:
    ld bc, $0124                                  ; $46be: $01 $24 $01
    ld h, $01                                     ; $46c1: $26 $01
    daa                                           ; $46c3: $27
    ld bc, $012a                                  ; $46c4: $01 $2a $01
    dec hl                                        ; $46c7: $2b
    ld bc, $012e                                  ; $46c8: $01 $2e $01
    cpl                                           ; $46cb: $2f
    ld bc, $0131                                  ; $46cc: $01 $31 $01
    inc sp                                        ; $46cf: $33
    ld bc, HeaderTitle                            ; $46d0: $01 $34 $01
    ld [hl], $01                                  ; $46d3: $36 $01
    jr c, jr_039_46d8                             ; $46d5: $38 $01

    ld a, [hl-]                                   ; $46d7: $3a

jr_039_46d8:
    ld bc, $013c                                  ; $46d8: $01 $3c $01
    dec a                                         ; $46db: $3d
    ld bc, HeaderManufacturerCode                 ; $46dc: $01 $3f $01
    ld b, c                                       ; $46df: $41
    ld bc, HeaderCGBFlag                          ; $46e0: $01 $43 $01
    ld b, l                                       ; $46e3: $45
    ld bc, HeaderSGBFlag                          ; $46e4: $01 $46 $01
    ld c, b                                       ; $46e7: $48
    ld bc, HeaderDestinationCode                  ; $46e8: $01 $4a $01
    ld c, e                                       ; $46eb: $4b
    ld bc, HeaderGlobalChecksum                   ; $46ec: $01 $4e $01
    ld c, a                                       ; $46ef: $4f
    ld bc, $0151                                  ; $46f0: $01 $51 $01
    ld d, d                                       ; $46f3: $52
    ld bc, $0154                                  ; $46f4: $01 $54 $01
    ld d, a                                       ; $46f7: $57
    ld bc, $0158                                  ; $46f8: $01 $58 $01
    ld e, d                                       ; $46fb: $5a
    ld bc, $015b                                  ; $46fc: $01 $5b $01
    ld e, [hl]                                    ; $46ff: $5e
    ld bc, $015f                                  ; $4700: $01 $5f $01
    ld h, c                                       ; $4703: $61
    ld bc, $0163                                  ; $4704: $01 $63 $01
    ld h, l                                       ; $4707: $65
    ld bc, $0166                                  ; $4708: $01 $66 $01
    ld l, b                                       ; $470b: $68
    ld bc, $0169                                  ; $470c: $01 $69 $01
    ld l, h                                       ; $470f: $6c
    ld bc, $016d                                  ; $4710: $01 $6d $01
    ld l, a                                       ; $4713: $6f
    ld bc, $0170                                  ; $4714: $01 $70 $01
    ld [hl], d                                    ; $4717: $72
    ld bc, $0174                                  ; $4718: $01 $74 $01
    halt                                          ; $471b: $76
    ld bc, $0178                                  ; $471c: $01 $78 $01
    ld a, c                                       ; $471f: $79
    ld bc, $017b                                  ; $4720: $01 $7b $01
    ld a, l                                       ; $4723: $7d
    ld bc, $017e                                  ; $4724: $01 $7e $01
    add c                                         ; $4727: $81
    ld bc, $0182                                  ; $4728: $01 $82 $01
    add h                                         ; $472b: $84
    ld bc, $0185                                  ; $472c: $01 $85 $01
    adc b                                         ; $472f: $88
    ld bc, $0189                                  ; $4730: $01 $89 $01
    adc e                                         ; $4733: $8b
    ld bc, $018d                                  ; $4734: $01 $8d $01
    adc [hl]                                      ; $4737: $8e
    ld bc, $0190                                  ; $4738: $01 $90 $01
    sub d                                         ; $473b: $92
    ld bc, $0194                                  ; $473c: $01 $94 $01
    sub l                                         ; $473f: $95
    ld bc, $0197                                  ; $4740: $01 $97 $01
    sbc c                                         ; $4743: $99
    ld bc, $019b                                  ; $4744: $01 $9b $01
    sbc h                                         ; $4747: $9c
    ld bc, $019e                                  ; $4748: $01 $9e $01
    and b                                         ; $474b: $a0
    ld bc, $01a2                                  ; $474c: $01 $a2 $01
    and e                                         ; $474f: $a3
    ld bc, $01a6                                  ; $4750: $01 $a6 $01
    and a                                         ; $4753: $a7
    ld bc, $01a8                                  ; $4754: $01 $a8 $01
    xor e                                         ; $4757: $ab
    ld bc, $01ac                                  ; $4758: $01 $ac $01
    xor [hl]                                      ; $475b: $ae
    ld bc, $01b0                                  ; $475c: $01 $b0 $01
    or c                                          ; $475f: $b1
    ld bc, $01b3                                  ; $4760: $01 $b3 $01
    or l                                          ; $4763: $b5
    ld bc, $01b7                                  ; $4764: $01 $b7 $01
    cp b                                          ; $4767: $b8
    ld bc, $01ba                                  ; $4768: $01 $ba $01
    cp h                                          ; $476b: $bc
    ld bc, $01bd                                  ; $476c: $01 $bd $01
    cp a                                          ; $476f: $bf
    ld bc, $01c1                                  ; $4770: $01 $c1 $01
    jp $c401                                      ; $4773: $c3 $01 $c4


    ld bc, $01c6                                  ; $4776: $01 $c6 $01
    ret z                                         ; $4779: $c8

    ld bc, $01ca                                  ; $477a: $01 $ca $01
    call z, $cd01                                 ; $477d: $cc $01 $cd
    ld bc, $01cf                                  ; $4780: $01 $cf $01
    pop de                                        ; $4783: $d1
    ld bc, $01d2                                  ; $4784: $01 $d2 $01
    call nc, $d501                                ; $4787: $d4 $01 $d5
    ld bc, $01d8                                  ; $478a: $01 $d8 $01
    reti                                          ; $478d: $d9


    ld bc, $01db                                  ; $478e: $01 $db $01
    db $dd                                        ; $4791: $dd
    ld bc, $01df                                  ; $4792: $01 $df $01
    inc b                                         ; $4795: $04
    nop                                           ; $4796: $00
    inc e                                         ; $4797: $1c
    nop                                           ; $4798: $00
    dec h                                         ; $4799: $25
    nop                                           ; $479a: $00
    inc l                                         ; $479b: $2c
    nop                                           ; $479c: $00
    inc sp                                        ; $479d: $33
    nop                                           ; $479e: $00
    add hl, sp                                    ; $479f: $39
    nop                                           ; $47a0: $00
    ld b, b                                       ; $47a1: $40
    nop                                           ; $47a2: $00
    ld b, h                                       ; $47a3: $44
    nop                                           ; $47a4: $00
    ld c, c                                       ; $47a5: $49
    nop                                           ; $47a6: $00
    ld c, [hl]                                    ; $47a7: $4e
    nop                                           ; $47a8: $00
    ld d, c                                       ; $47a9: $51
    nop                                           ; $47aa: $00
    ld d, [hl]                                    ; $47ab: $56
    nop                                           ; $47ac: $00
    ld e, c                                       ; $47ad: $59
    nop                                           ; $47ae: $00
    ld e, l                                       ; $47af: $5d
    nop                                           ; $47b0: $00
    ld h, b                                       ; $47b1: $60
    nop                                           ; $47b2: $00
    ld h, e                                       ; $47b3: $63
    nop                                           ; $47b4: $00
    ld h, [hl]                                    ; $47b5: $66
    nop                                           ; $47b6: $00
    ld l, d                                       ; $47b7: $6a
    nop                                           ; $47b8: $00
    ld l, l                                       ; $47b9: $6d
    nop                                           ; $47ba: $00
    ld [hl], b                                    ; $47bb: $70
    nop                                           ; $47bc: $00
    ld [hl], e                                    ; $47bd: $73
    nop                                           ; $47be: $00
    halt                                          ; $47bf: $76
    nop                                           ; $47c0: $00
    ld a, c                                       ; $47c1: $79
    nop                                           ; $47c2: $00
    ld a, h                                       ; $47c3: $7c
    nop                                           ; $47c4: $00
    ld a, [hl]                                    ; $47c5: $7e
    nop                                           ; $47c6: $00
    add c                                         ; $47c7: $81
    nop                                           ; $47c8: $00
    add h                                         ; $47c9: $84
    nop                                           ; $47ca: $00
    add [hl]                                      ; $47cb: $86
    nop                                           ; $47cc: $00
    adc c                                         ; $47cd: $89
    nop                                           ; $47ce: $00
    adc h                                         ; $47cf: $8c
    nop                                           ; $47d0: $00
    adc [hl]                                      ; $47d1: $8e
    nop                                           ; $47d2: $00
    sub c                                         ; $47d3: $91
    nop                                           ; $47d4: $00
    sub e                                         ; $47d5: $93
    nop                                           ; $47d6: $00
    sub [hl]                                      ; $47d7: $96
    nop                                           ; $47d8: $00
    sbc b                                         ; $47d9: $98
    nop                                           ; $47da: $00
    sbc e                                         ; $47db: $9b
    nop                                           ; $47dc: $00
    sbc l                                         ; $47dd: $9d
    nop                                           ; $47de: $00
    sbc a                                         ; $47df: $9f
    nop                                           ; $47e0: $00
    and d                                         ; $47e1: $a2
    nop                                           ; $47e2: $00
    and h                                         ; $47e3: $a4
    nop                                           ; $47e4: $00
    and [hl]                                      ; $47e5: $a6
    nop                                           ; $47e6: $00
    xor c                                         ; $47e7: $a9
    nop                                           ; $47e8: $00
    xor e                                         ; $47e9: $ab
    nop                                           ; $47ea: $00
    xor [hl]                                      ; $47eb: $ae
    nop                                           ; $47ec: $00
    or b                                          ; $47ed: $b0
    nop                                           ; $47ee: $00
    or d                                          ; $47ef: $b2
    nop                                           ; $47f0: $00
    or h                                          ; $47f1: $b4
    nop                                           ; $47f2: $00
    or [hl]                                       ; $47f3: $b6
    nop                                           ; $47f4: $00
    cp c                                          ; $47f5: $b9
    nop                                           ; $47f6: $00
    cp e                                          ; $47f7: $bb
    nop                                           ; $47f8: $00
    cp l                                          ; $47f9: $bd
    nop                                           ; $47fa: $00
    cp a                                          ; $47fb: $bf
    nop                                           ; $47fc: $00
    jp nz, $c400                                  ; $47fd: $c2 $00 $c4

    nop                                           ; $4800: $00
    add $00                                       ; $4801: $c6 $00
    ret                                           ; $4803: $c9


    nop                                           ; $4804: $00
    rlc b                                         ; $4805: $cb $00
    call z, $cf00                                 ; $4807: $cc $00 $cf
    nop                                           ; $480a: $00
    pop de                                        ; $480b: $d1
    nop                                           ; $480c: $00
    db $d3                                        ; $480d: $d3
    nop                                           ; $480e: $00
    push de                                       ; $480f: $d5
    nop                                           ; $4810: $00
    rst $10                                       ; $4811: $d7
    nop                                           ; $4812: $00
    reti                                          ; $4813: $d9


    nop                                           ; $4814: $00
    call c, $dd00                                 ; $4815: $dc $00 $dd
    nop                                           ; $4818: $00
    rst $18                                       ; $4819: $df
    nop                                           ; $481a: $00
    pop hl                                        ; $481b: $e1
    nop                                           ; $481c: $00
    db $e4                                        ; $481d: $e4
    nop                                           ; $481e: $00
    and $00                                       ; $481f: $e6 $00
    add sp, $00                                   ; $4821: $e8 $00
    ld [$ec00], a                                 ; $4823: $ea $00 $ec
    nop                                           ; $4826: $00
    xor $00                                       ; $4827: $ee $00
    rst $28                                       ; $4829: $ef
    nop                                           ; $482a: $00
    ld a, [c]                                     ; $482b: $f2
    nop                                           ; $482c: $00
    db $f4                                        ; $482d: $f4
    nop                                           ; $482e: $00
    or $00                                        ; $482f: $f6 $00
    ld hl, sp+$00                                 ; $4831: $f8 $00
    ld a, [$fc00]                                 ; $4833: $fa $00 $fc
    nop                                           ; $4836: $00
    cp $00                                        ; $4837: $fe $00
    nop                                           ; $4839: $00
    ld bc, $0102                                  ; $483a: $01 $02 $01
    inc b                                         ; $483d: $04
    ld bc, $0106                                  ; $483e: $01 $06 $01
    ld [$0a01], sp                                ; $4841: $08 $01 $0a
    ld bc, $010c                                  ; $4844: $01 $0c $01
    ld c, $01                                     ; $4847: $0e $01
    db $10                                        ; $4849: $10
    ld bc, $0112                                  ; $484a: $01 $12 $01
    inc d                                         ; $484d: $14
    ld bc, $0116                                  ; $484e: $01 $16 $01
    jr jr_039_4854                                ; $4851: $18 $01

    ld a, [de]                                    ; $4853: $1a

jr_039_4854:
    ld bc, $011c                                  ; $4854: $01 $1c $01
    ld e, $01                                     ; $4857: $1e $01
    jr nz, jr_039_485c                            ; $4859: $20 $01

    ld [hl+], a                                   ; $485b: $22

jr_039_485c:
    ld bc, $0124                                  ; $485c: $01 $24 $01
    ld h, $01                                     ; $485f: $26 $01
    jr z, jr_039_4864                             ; $4861: $28 $01

    ld a, [hl+]                                   ; $4863: $2a

jr_039_4864:
    ld bc, $012c                                  ; $4864: $01 $2c $01
    ld l, $01                                     ; $4867: $2e $01
    jr nc, jr_039_486c                            ; $4869: $30 $01

    ld [hl-], a                                   ; $486b: $32

jr_039_486c:
    ld bc, HeaderTitle                            ; $486c: $01 $34 $01
    dec [hl]                                      ; $486f: $35
    ld bc, $0137                                  ; $4870: $01 $37 $01
    add hl, sp                                    ; $4873: $39
    ld bc, $013b                                  ; $4874: $01 $3b $01
    dec a                                         ; $4877: $3d
    ld bc, HeaderManufacturerCode                 ; $4878: $01 $3f $01
    ld b, c                                       ; $487b: $41
    ld bc, HeaderCGBFlag                          ; $487c: $01 $43 $01
    ld b, l                                       ; $487f: $45
    ld bc, HeaderCartridgeType                    ; $4880: $01 $47 $01
    ld c, c                                       ; $4883: $49
    ld bc, HeaderOldLicenseeCode                  ; $4884: $01 $4b $01
    ld c, l                                       ; $4887: $4d
    ld bc, $014f                                  ; $4888: $01 $4f $01
    ld d, c                                       ; $488b: $51
    ld bc, $0153                                  ; $488c: $01 $53 $01
    ld d, h                                       ; $488f: $54
    ld bc, $0156                                  ; $4890: $01 $56 $01
    ld e, b                                       ; $4893: $58
    ld bc, $015a                                  ; $4894: $01 $5a $01
    ld e, h                                       ; $4897: $5c
    ld bc, $015e                                  ; $4898: $01 $5e $01
    ld h, b                                       ; $489b: $60
    ld bc, $0162                                  ; $489c: $01 $62 $01
    ld h, h                                       ; $489f: $64
    ld bc, $0166                                  ; $48a0: $01 $66 $01
    ld l, b                                       ; $48a3: $68
    ld bc, $016a                                  ; $48a4: $01 $6a $01
    ld l, h                                       ; $48a7: $6c
    ld bc, $016e                                  ; $48a8: $01 $6e $01
    ld l, a                                       ; $48ab: $6f
    ld bc, $0171                                  ; $48ac: $01 $71 $01
    ld [hl], e                                    ; $48af: $73
    ld bc, $0176                                  ; $48b0: $01 $76 $01
    ld [hl], a                                    ; $48b3: $77
    ld bc, $0179                                  ; $48b4: $01 $79 $01
    ld a, e                                       ; $48b7: $7b
    ld bc, $017d                                  ; $48b8: $01 $7d $01
    ld a, a                                       ; $48bb: $7f
    ld bc, $0181                                  ; $48bc: $01 $81 $01
    add e                                         ; $48bf: $83
    ld bc, $0185                                  ; $48c0: $01 $85 $01
    add a                                         ; $48c3: $87
    ld bc, $0189                                  ; $48c4: $01 $89 $01
    adc d                                         ; $48c7: $8a
    ld bc, $018c                                  ; $48c8: $01 $8c $01
    adc [hl]                                      ; $48cb: $8e
    ld bc, $0190                                  ; $48cc: $01 $90 $01
    sub d                                         ; $48cf: $92
    ld bc, $0194                                  ; $48d0: $01 $94 $01
    sub [hl]                                      ; $48d3: $96
    ld bc, $0198                                  ; $48d4: $01 $98 $01
    sbc d                                         ; $48d7: $9a
    ld bc, $019c                                  ; $48d8: $01 $9c $01
    sbc [hl]                                      ; $48db: $9e
    ld bc, $01a0                                  ; $48dc: $01 $a0 $01
    and d                                         ; $48df: $a2
    ld bc, $01a4                                  ; $48e0: $01 $a4 $01
    and l                                         ; $48e3: $a5
    ld bc, $01a7                                  ; $48e4: $01 $a7 $01
    xor d                                         ; $48e7: $aa
    ld bc, $01ac                                  ; $48e8: $01 $ac $01
    xor l                                         ; $48eb: $ad
    ld bc, $01af                                  ; $48ec: $01 $af $01
    or c                                          ; $48ef: $b1
    ld bc, $01b3                                  ; $48f0: $01 $b3 $01
    or l                                          ; $48f3: $b5
    ld bc, $01b7                                  ; $48f4: $01 $b7 $01
    cp c                                          ; $48f7: $b9
    ld bc, $01bb                                  ; $48f8: $01 $bb $01
    cp l                                          ; $48fb: $bd
    ld bc, $01bf                                  ; $48fc: $01 $bf $01
    ret nz                                        ; $48ff: $c0

    ld bc, $01c2                                  ; $4900: $01 $c2 $01
    call nz, $c601                                ; $4903: $c4 $01 $c6
    ld bc, $01c8                                  ; $4906: $01 $c8 $01
    jp z, $cc01                                   ; $4909: $ca $01 $cc

    ld bc, $01ce                                  ; $490c: $01 $ce $01
    ret nc                                        ; $490f: $d0

    ld bc, $01d2                                  ; $4910: $01 $d2 $01
    call nc, $d601                                ; $4913: $d4 $01 $d6
    ld bc, $01d8                                  ; $4916: $01 $d8 $01
    jp c, $dc01                                   ; $4919: $da $01 $dc

    ld bc, $01dd                                  ; $491c: $01 $dd $01
    inc b                                         ; $491f: $04
    nop                                           ; $4920: $00
    jr nz, jr_039_4923                            ; $4921: $20 $00

jr_039_4923:
    ld a, [hl+]                                   ; $4923: $2a
    nop                                           ; $4924: $00
    ld sp, $3800                                  ; $4925: $31 $00 $38
    nop                                           ; $4928: $00
    dec a                                         ; $4929: $3d
    nop                                           ; $492a: $00
    ld b, h                                       ; $492b: $44
    nop                                           ; $492c: $00
    ld c, c                                       ; $492d: $49
    nop                                           ; $492e: $00
    ld c, l                                       ; $492f: $4d
    nop                                           ; $4930: $00
    ld d, d                                       ; $4931: $52
    nop                                           ; $4932: $00
    ld d, [hl]                                    ; $4933: $56
    nop                                           ; $4934: $00
    ld e, d                                       ; $4935: $5a
    nop                                           ; $4936: $00
    ld e, l                                       ; $4937: $5d
    nop                                           ; $4938: $00
    ld h, c                                       ; $4939: $61
    nop                                           ; $493a: $00
    ld h, h                                       ; $493b: $64
    nop                                           ; $493c: $00
    ld l, b                                       ; $493d: $68
    nop                                           ; $493e: $00
    ld l, e                                       ; $493f: $6b
    nop                                           ; $4940: $00
    ld l, [hl]                                    ; $4941: $6e
    nop                                           ; $4942: $00
    ld [hl], d                                    ; $4943: $72
    nop                                           ; $4944: $00
    ld [hl], h                                    ; $4945: $74
    nop                                           ; $4946: $00
    ld a, b                                       ; $4947: $78
    nop                                           ; $4948: $00
    ld a, e                                       ; $4949: $7b
    nop                                           ; $494a: $00
    ld a, l                                       ; $494b: $7d
    nop                                           ; $494c: $00
    add b                                         ; $494d: $80
    nop                                           ; $494e: $00
    add e                                         ; $494f: $83
    nop                                           ; $4950: $00
    add [hl]                                      ; $4951: $86
    nop                                           ; $4952: $00
    adc c                                         ; $4953: $89
    nop                                           ; $4954: $00
    adc e                                         ; $4955: $8b
    nop                                           ; $4956: $00
    adc [hl]                                      ; $4957: $8e
    nop                                           ; $4958: $00
    sub c                                         ; $4959: $91
    nop                                           ; $495a: $00
    sub e                                         ; $495b: $93
    nop                                           ; $495c: $00
    sub [hl]                                      ; $495d: $96
    nop                                           ; $495e: $00
    sbc b                                         ; $495f: $98
    nop                                           ; $4960: $00
    sbc e                                         ; $4961: $9b
    nop                                           ; $4962: $00
    sbc l                                         ; $4963: $9d
    nop                                           ; $4964: $00
    and b                                         ; $4965: $a0
    nop                                           ; $4966: $00
    and d                                         ; $4967: $a2
    nop                                           ; $4968: $00
    and l                                         ; $4969: $a5
    nop                                           ; $496a: $00
    and a                                         ; $496b: $a7
    nop                                           ; $496c: $00
    xor d                                         ; $496d: $aa
    nop                                           ; $496e: $00
    xor h                                         ; $496f: $ac
    nop                                           ; $4970: $00
    xor [hl]                                      ; $4971: $ae
    nop                                           ; $4972: $00
    or c                                          ; $4973: $b1
    nop                                           ; $4974: $00
    or e                                          ; $4975: $b3
    nop                                           ; $4976: $00
    or l                                          ; $4977: $b5
    nop                                           ; $4978: $00
    cp b                                          ; $4979: $b8
    nop                                           ; $497a: $00
    cp e                                          ; $497b: $bb
    nop                                           ; $497c: $00
    cp l                                          ; $497d: $bd
    nop                                           ; $497e: $00
    cp a                                          ; $497f: $bf
    nop                                           ; $4980: $00
    pop bc                                        ; $4981: $c1
    nop                                           ; $4982: $00
    jp $c600                                      ; $4983: $c3 $00 $c6


    nop                                           ; $4986: $00
    ret z                                         ; $4987: $c8

    nop                                           ; $4988: $00
    rlc b                                         ; $4989: $cb $00
    call $cf00                                    ; $498b: $cd $00 $cf
    nop                                           ; $498e: $00
    jp nc, $d400                                  ; $498f: $d2 $00 $d4

    nop                                           ; $4992: $00
    sub $00                                       ; $4993: $d6 $00
    ret c                                         ; $4995: $d8

    nop                                           ; $4996: $00
    jp c, $dd00                                   ; $4997: $da $00 $dd

    nop                                           ; $499a: $00
    rst $18                                       ; $499b: $df
    nop                                           ; $499c: $00
    pop hl                                        ; $499d: $e1
    nop                                           ; $499e: $00
    db $e4                                        ; $499f: $e4
    nop                                           ; $49a0: $00
    push hl                                       ; $49a1: $e5
    nop                                           ; $49a2: $00
    add sp, $00                                   ; $49a3: $e8 $00
    ld [$ec00], a                                 ; $49a5: $ea $00 $ec
    nop                                           ; $49a8: $00
    xor $00                                       ; $49a9: $ee $00
    ldh a, [rP1]                                  ; $49ab: $f0 $00
    ld a, [c]                                     ; $49ad: $f2
    nop                                           ; $49ae: $00
    push af                                       ; $49af: $f5
    nop                                           ; $49b0: $00
    rst $30                                       ; $49b1: $f7
    nop                                           ; $49b2: $00
    ld sp, hl                                     ; $49b3: $f9
    nop                                           ; $49b4: $00
    ei                                            ; $49b5: $fb
    nop                                           ; $49b6: $00
    cp $00                                        ; $49b7: $fe $00
    rst $38                                       ; $49b9: $ff
    nop                                           ; $49ba: $00
    ld [bc], a                                    ; $49bb: $02
    ld bc, HeaderLogo                             ; $49bc: $01 $04 $01
    ld b, $01                                     ; $49bf: $06 $01
    ld [$0a01], sp                                ; $49c1: $08 $01 $0a
    ld bc, $010d                                  ; $49c4: $01 $0d $01
    rrca                                          ; $49c7: $0f
    ld bc, $0111                                  ; $49c8: $01 $11 $01
    inc de                                        ; $49cb: $13
    ld bc, $0115                                  ; $49cc: $01 $15 $01
    rla                                           ; $49cf: $17
    ld bc, $011a                                  ; $49d0: $01 $1a $01
    inc e                                         ; $49d3: $1c
    ld bc, $011e                                  ; $49d4: $01 $1e $01
    jr nz, jr_039_49da                            ; $49d7: $20 $01

    ld [hl+], a                                   ; $49d9: $22

jr_039_49da:
    ld bc, $0124                                  ; $49da: $01 $24 $01
    ld h, $01                                     ; $49dd: $26 $01
    jr z, jr_039_49e2                             ; $49df: $28 $01

    dec hl                                        ; $49e1: $2b

jr_039_49e2:
    ld bc, $012d                                  ; $49e2: $01 $2d $01
    cpl                                           ; $49e5: $2f
    ld bc, $0131                                  ; $49e6: $01 $31 $01
    inc sp                                        ; $49e9: $33
    ld bc, $0135                                  ; $49ea: $01 $35 $01
    scf                                           ; $49ed: $37
    ld bc, $0139                                  ; $49ee: $01 $39 $01
    dec sp                                        ; $49f1: $3b
    ld bc, $013e                                  ; $49f2: $01 $3e $01
    ld b, b                                       ; $49f5: $40
    ld bc, $0142                                  ; $49f6: $01 $42 $01
    ld b, h                                       ; $49f9: $44
    ld bc, HeaderSGBFlag                          ; $49fa: $01 $46 $01
    ld c, b                                       ; $49fd: $48
    ld bc, HeaderDestinationCode                  ; $49fe: $01 $4a $01
    ld c, l                                       ; $4a01: $4d
    ld bc, $014f                                  ; $4a02: $01 $4f $01
    ld d, c                                       ; $4a05: $51
    ld bc, $0152                                  ; $4a06: $01 $52 $01
    ld d, l                                       ; $4a09: $55
    ld bc, $0157                                  ; $4a0a: $01 $57 $01
    ld e, c                                       ; $4a0d: $59
    ld bc, $015b                                  ; $4a0e: $01 $5b $01
    ld e, l                                       ; $4a11: $5d
    ld bc, $0160                                  ; $4a12: $01 $60 $01
    ld h, d                                       ; $4a15: $62
    ld bc, $0164                                  ; $4a16: $01 $64 $01
    ld h, l                                       ; $4a19: $65
    ld bc, $0168                                  ; $4a1a: $01 $68 $01
    ld l, d                                       ; $4a1d: $6a
    ld bc, $016c                                  ; $4a1e: $01 $6c $01
    ld l, a                                       ; $4a21: $6f
    ld bc, $0170                                  ; $4a22: $01 $70 $01
    ld [hl], e                                    ; $4a25: $73
    ld bc, $0175                                  ; $4a26: $01 $75 $01
    ld [hl], a                                    ; $4a29: $77
    ld bc, $0179                                  ; $4a2a: $01 $79 $01
    ld a, e                                       ; $4a2d: $7b
    ld bc, $017d                                  ; $4a2e: $01 $7d $01
    ld a, a                                       ; $4a31: $7f
    ld bc, $0181                                  ; $4a32: $01 $81 $01
    add e                                         ; $4a35: $83
    ld bc, $0186                                  ; $4a36: $01 $86 $01
    adc b                                         ; $4a39: $88
    ld bc, $018a                                  ; $4a3a: $01 $8a $01
    adc h                                         ; $4a3d: $8c
    ld bc, $018e                                  ; $4a3e: $01 $8e $01
    sub b                                         ; $4a41: $90
    ld bc, $0192                                  ; $4a42: $01 $92 $01
    sub h                                         ; $4a45: $94
    ld bc, $0197                                  ; $4a46: $01 $97 $01
    sbc c                                         ; $4a49: $99
    ld bc, $019b                                  ; $4a4a: $01 $9b $01
    sbc l                                         ; $4a4d: $9d
    ld bc, $019f                                  ; $4a4e: $01 $9f $01
    and c                                         ; $4a51: $a1
    ld bc, $01a4                                  ; $4a52: $01 $a4 $01
    and [hl]                                      ; $4a55: $a6
    ld bc, $01a8                                  ; $4a56: $01 $a8 $01
    xor d                                         ; $4a59: $aa
    ld bc, $01ac                                  ; $4a5a: $01 $ac $01
    xor [hl]                                      ; $4a5d: $ae
    ld bc, $01b0                                  ; $4a5e: $01 $b0 $01
    or e                                          ; $4a61: $b3
    ld bc, $01b5                                  ; $4a62: $01 $b5 $01
    or [hl]                                       ; $4a65: $b6
    ld bc, $01b9                                  ; $4a66: $01 $b9 $01
    cp e                                          ; $4a69: $bb
    ld bc, $01bd                                  ; $4a6a: $01 $bd $01
    cp a                                          ; $4a6d: $bf
    ld bc, $01c1                                  ; $4a6e: $01 $c1 $01
    jp $c501                                      ; $4a71: $c3 $01 $c5


    ld bc, $01c8                                  ; $4a74: $01 $c8 $01
    jp z, $cc01                                   ; $4a77: $ca $01 $cc

    ld bc, $01ce                                  ; $4a7a: $01 $ce $01
    ret nc                                        ; $4a7d: $d0

    ld bc, $01d2                                  ; $4a7e: $01 $d2 $01
    call nc, $d701                                ; $4a81: $d4 $01 $d7
    ld bc, $01d9                                  ; $4a84: $01 $d9 $01
    db $db                                        ; $4a87: $db
    ld bc, $01dd                                  ; $4a88: $01 $dd $01
    rst $18                                       ; $4a8b: $df
    ld bc, $0004                                  ; $4a8c: $01 $04 $00
    inc hl                                        ; $4a8f: $23
    nop                                           ; $4a90: $00
    dec l                                         ; $4a91: $2d
    nop                                           ; $4a92: $00
    inc [hl]                                      ; $4a93: $34
    nop                                           ; $4a94: $00
    inc a                                         ; $4a95: $3c
    nop                                           ; $4a96: $00
    ld b, d                                       ; $4a97: $42
    nop                                           ; $4a98: $00
    ld c, b                                       ; $4a99: $48
    nop                                           ; $4a9a: $00
    ld c, l                                       ; $4a9b: $4d
    nop                                           ; $4a9c: $00
    ld d, c                                       ; $4a9d: $51
    nop                                           ; $4a9e: $00
    ld d, [hl]                                    ; $4a9f: $56
    nop                                           ; $4aa0: $00
    ld e, d                                       ; $4aa1: $5a
    nop                                           ; $4aa2: $00
    ld e, [hl]                                    ; $4aa3: $5e
    nop                                           ; $4aa4: $00
    ld h, d                                       ; $4aa5: $62
    nop                                           ; $4aa6: $00
    ld h, l                                       ; $4aa7: $65
    nop                                           ; $4aa8: $00
    ld l, c                                       ; $4aa9: $69
    nop                                           ; $4aaa: $00
    ld l, l                                       ; $4aab: $6d
    nop                                           ; $4aac: $00
    ld [hl], b                                    ; $4aad: $70
    nop                                           ; $4aae: $00
    ld [hl], e                                    ; $4aaf: $73
    nop                                           ; $4ab0: $00
    halt                                          ; $4ab1: $76
    nop                                           ; $4ab2: $00
    ld a, c                                       ; $4ab3: $79
    nop                                           ; $4ab4: $00
    ld a, h                                       ; $4ab5: $7c
    nop                                           ; $4ab6: $00
    ld a, a                                       ; $4ab7: $7f
    nop                                           ; $4ab8: $00
    add e                                         ; $4ab9: $83
    nop                                           ; $4aba: $00
    add [hl]                                      ; $4abb: $86
    nop                                           ; $4abc: $00
    adc c                                         ; $4abd: $89
    nop                                           ; $4abe: $00
    adc e                                         ; $4abf: $8b
    nop                                           ; $4ac0: $00
    adc [hl]                                      ; $4ac1: $8e
    nop                                           ; $4ac2: $00
    sub c                                         ; $4ac3: $91
    nop                                           ; $4ac4: $00
    sub h                                         ; $4ac5: $94
    nop                                           ; $4ac6: $00
    sub [hl]                                      ; $4ac7: $96
    nop                                           ; $4ac8: $00
    sbc c                                         ; $4ac9: $99
    nop                                           ; $4aca: $00
    sbc h                                         ; $4acb: $9c
    nop                                           ; $4acc: $00
    sbc a                                         ; $4acd: $9f
    nop                                           ; $4ace: $00
    and c                                         ; $4acf: $a1
    nop                                           ; $4ad0: $00
    and h                                         ; $4ad1: $a4
    nop                                           ; $4ad2: $00
    and a                                         ; $4ad3: $a7
    nop                                           ; $4ad4: $00
    xor c                                         ; $4ad5: $a9
    nop                                           ; $4ad6: $00
    xor h                                         ; $4ad7: $ac
    nop                                           ; $4ad8: $00
    xor a                                         ; $4ad9: $af
    nop                                           ; $4ada: $00
    or c                                          ; $4adb: $b1
    nop                                           ; $4adc: $00
    or h                                          ; $4add: $b4
    nop                                           ; $4ade: $00
    or [hl]                                       ; $4adf: $b6
    nop                                           ; $4ae0: $00
    cp c                                          ; $4ae1: $b9
    nop                                           ; $4ae2: $00
    cp e                                          ; $4ae3: $bb
    nop                                           ; $4ae4: $00
    cp l                                          ; $4ae5: $bd
    nop                                           ; $4ae6: $00
    cp a                                          ; $4ae7: $bf
    nop                                           ; $4ae8: $00
    jp $c500                                      ; $4ae9: $c3 $00 $c5


    nop                                           ; $4aec: $00
    rst $00                                       ; $4aed: $c7
    nop                                           ; $4aee: $00
    jp z, $cc00                                   ; $4aef: $ca $00 $cc

    nop                                           ; $4af2: $00
    rst $08                                       ; $4af3: $cf
    nop                                           ; $4af4: $00
    pop de                                        ; $4af5: $d1
    nop                                           ; $4af6: $00
    call nc, $d600                                ; $4af7: $d4 $00 $d6
    nop                                           ; $4afa: $00
    ret c                                         ; $4afb: $d8

    nop                                           ; $4afc: $00
    db $db                                        ; $4afd: $db
    nop                                           ; $4afe: $00
    sbc $00                                       ; $4aff: $de $00
    rst $18                                       ; $4b01: $df
    nop                                           ; $4b02: $00
    ld [c], a                                     ; $4b03: $e2
    nop                                           ; $4b04: $00
    db $e4                                        ; $4b05: $e4
    nop                                           ; $4b06: $00
    rst $20                                       ; $4b07: $e7
    nop                                           ; $4b08: $00
    jp hl                                         ; $4b09: $e9


    nop                                           ; $4b0a: $00
    db $eb                                        ; $4b0b: $eb
    nop                                           ; $4b0c: $00
    xor $00                                       ; $4b0d: $ee $00
    ldh a, [rP1]                                  ; $4b0f: $f0 $00
    ld a, [c]                                     ; $4b11: $f2
    nop                                           ; $4b12: $00
    db $f4                                        ; $4b13: $f4
    nop                                           ; $4b14: $00
    rst $30                                       ; $4b15: $f7
    nop                                           ; $4b16: $00
    ld sp, hl                                     ; $4b17: $f9
    nop                                           ; $4b18: $00
    db $fc                                        ; $4b19: $fc
    nop                                           ; $4b1a: $00
    cp $00                                        ; $4b1b: $fe $00
    nop                                           ; $4b1d: $00
    ld bc, $0102                                  ; $4b1e: $01 $02 $01
    dec b                                         ; $4b21: $05
    ld bc, $0107                                  ; $4b22: $01 $07 $01
    ld a, [bc]                                    ; $4b25: $0a
    ld bc, $010c                                  ; $4b26: $01 $0c $01
    ld c, $01                                     ; $4b29: $0e $01
    db $10                                        ; $4b2b: $10
    ld bc, $0112                                  ; $4b2c: $01 $12 $01
    dec d                                         ; $4b2f: $15
    ld bc, $0117                                  ; $4b30: $01 $17 $01
    ld a, [de]                                    ; $4b33: $1a
    ld bc, $011c                                  ; $4b34: $01 $1c $01
    ld e, $01                                     ; $4b37: $1e $01
    jr nz, jr_039_4b3c                            ; $4b39: $20 $01

    inc hl                                        ; $4b3b: $23

jr_039_4b3c:
    ld bc, $0125                                  ; $4b3c: $01 $25 $01
    daa                                           ; $4b3f: $27
    ld bc, $0129                                  ; $4b40: $01 $29 $01
    inc l                                         ; $4b43: $2c
    ld bc, $012e                                  ; $4b44: $01 $2e $01
    jr nc, jr_039_4b4a                            ; $4b47: $30 $01

    inc sp                                        ; $4b49: $33

jr_039_4b4a:
    ld bc, $0135                                  ; $4b4a: $01 $35 $01
    scf                                           ; $4b4d: $37
    ld bc, $013a                                  ; $4b4e: $01 $3a $01
    inc a                                         ; $4b51: $3c
    ld bc, $013e                                  ; $4b52: $01 $3e $01
    ld b, b                                       ; $4b55: $40
    ld bc, $0142                                  ; $4b56: $01 $42 $01
    ld b, l                                       ; $4b59: $45
    ld bc, HeaderCartridgeType                    ; $4b5a: $01 $47 $01
    ld c, d                                       ; $4b5d: $4a
    ld bc, HeaderMaskROMVersion                   ; $4b5e: $01 $4c $01
    ld c, [hl]                                    ; $4b61: $4e
    ld bc, $0150                                  ; $4b62: $01 $50 $01
    ld d, d                                       ; $4b65: $52
    ld bc, $0155                                  ; $4b66: $01 $55 $01
    ld d, a                                       ; $4b69: $57
    ld bc, $0159                                  ; $4b6a: $01 $59 $01
    ld e, h                                       ; $4b6d: $5c
    ld bc, $015e                                  ; $4b6e: $01 $5e $01
    ld h, b                                       ; $4b71: $60
    ld bc, $0162                                  ; $4b72: $01 $62 $01
    ld h, l                                       ; $4b75: $65
    ld bc, $0167                                  ; $4b76: $01 $67 $01
    ld l, c                                       ; $4b79: $69
    ld bc, $016c                                  ; $4b7a: $01 $6c $01
    ld l, [hl]                                    ; $4b7d: $6e
    ld bc, $0170                                  ; $4b7e: $01 $70 $01
    ld [hl], e                                    ; $4b81: $73
    ld bc, $0175                                  ; $4b82: $01 $75 $01
    ld [hl], a                                    ; $4b85: $77
    ld bc, $0179                                  ; $4b86: $01 $79 $01
    ld a, h                                       ; $4b89: $7c
    ld bc, $017e                                  ; $4b8a: $01 $7e $01
    add b                                         ; $4b8d: $80
    ld bc, $0183                                  ; $4b8e: $01 $83 $01
    add l                                         ; $4b91: $85
    ld bc, $0187                                  ; $4b92: $01 $87 $01
    adc d                                         ; $4b95: $8a
    ld bc, $018c                                  ; $4b96: $01 $8c $01
    adc [hl]                                      ; $4b99: $8e
    ld bc, $0190                                  ; $4b9a: $01 $90 $01
    sub e                                         ; $4b9d: $93
    ld bc, $0195                                  ; $4b9e: $01 $95 $01
    sub a                                         ; $4ba1: $97
    ld bc, $019a                                  ; $4ba2: $01 $9a $01
    sbc h                                         ; $4ba5: $9c
    ld bc, $019e                                  ; $4ba6: $01 $9e $01
    and c                                         ; $4ba9: $a1
    ld bc, $01a3                                  ; $4baa: $01 $a3 $01
    and l                                         ; $4bad: $a5
    ld bc, $01a7                                  ; $4bae: $01 $a7 $01
    xor d                                         ; $4bb1: $aa
    ld bc, $01ac                                  ; $4bb2: $01 $ac $01
    xor [hl]                                      ; $4bb5: $ae
    ld bc, $01b0                                  ; $4bb6: $01 $b0 $01
    or e                                          ; $4bb9: $b3
    ld bc, $01b5                                  ; $4bba: $01 $b5 $01
    cp b                                          ; $4bbd: $b8
    ld bc, $01ba                                  ; $4bbe: $01 $ba $01
    cp h                                          ; $4bc1: $bc
    ld bc, $01be                                  ; $4bc2: $01 $be $01
    pop bc                                        ; $4bc5: $c1
    ld bc, $01c3                                  ; $4bc6: $01 $c3 $01
    push bc                                       ; $4bc9: $c5
    ld bc, $01c8                                  ; $4bca: $01 $c8 $01
    jp z, $cc01                                   ; $4bcd: $ca $01 $cc

    ld bc, $01cf                                  ; $4bd0: $01 $cf $01
    pop de                                        ; $4bd3: $d1
    ld bc, $01d3                                  ; $4bd4: $01 $d3 $01
    push de                                       ; $4bd7: $d5
    ld bc, $01d8                                  ; $4bd8: $01 $d8 $01
    jp c, $dc01                                   ; $4bdb: $da $01 $dc

    ld bc, $01df                                  ; $4bde: $01 $df $01
    inc b                                         ; $4be1: $04
    nop                                           ; $4be2: $00
    ld h, $00                                     ; $4be3: $26 $00
    cpl                                           ; $4be5: $2f
    nop                                           ; $4be6: $00
    scf                                           ; $4be7: $37
    nop                                           ; $4be8: $00
    ccf                                           ; $4be9: $3f
    nop                                           ; $4bea: $00
    ld b, [hl]                                    ; $4beb: $46
    nop                                           ; $4bec: $00
    ld c, e                                       ; $4bed: $4b
    nop                                           ; $4bee: $00
    ld d, b                                       ; $4bef: $50
    nop                                           ; $4bf0: $00
    ld d, h                                       ; $4bf1: $54
    nop                                           ; $4bf2: $00
    ld e, c                                       ; $4bf3: $59
    nop                                           ; $4bf4: $00
    ld e, l                                       ; $4bf5: $5d
    nop                                           ; $4bf6: $00
    ld h, c                                       ; $4bf7: $61
    nop                                           ; $4bf8: $00
    ld h, l                                       ; $4bf9: $65
    nop                                           ; $4bfa: $00
    ld l, c                                       ; $4bfb: $69
    nop                                           ; $4bfc: $00
    ld l, l                                       ; $4bfd: $6d
    nop                                           ; $4bfe: $00
    ld [hl], b                                    ; $4bff: $70
    nop                                           ; $4c00: $00
    ld [hl], e                                    ; $4c01: $73
    nop                                           ; $4c02: $00
    ld [hl], a                                    ; $4c03: $77
    nop                                           ; $4c04: $00
    ld a, d                                       ; $4c05: $7a
    nop                                           ; $4c06: $00
    ld a, [hl]                                    ; $4c07: $7e
    nop                                           ; $4c08: $00
    add c                                         ; $4c09: $81
    nop                                           ; $4c0a: $00
    add h                                         ; $4c0b: $84
    nop                                           ; $4c0c: $00
    add a                                         ; $4c0d: $87
    nop                                           ; $4c0e: $00
    adc d                                         ; $4c0f: $8a
    nop                                           ; $4c10: $00
    adc l                                         ; $4c11: $8d
    nop                                           ; $4c12: $00
    sub b                                         ; $4c13: $90
    nop                                           ; $4c14: $00
    sub e                                         ; $4c15: $93
    nop                                           ; $4c16: $00
    sub [hl]                                      ; $4c17: $96
    nop                                           ; $4c18: $00
    sbc b                                         ; $4c19: $98
    nop                                           ; $4c1a: $00
    sbc h                                         ; $4c1b: $9c
    nop                                           ; $4c1c: $00
    sbc [hl]                                      ; $4c1d: $9e
    nop                                           ; $4c1e: $00
    and c                                         ; $4c1f: $a1
    nop                                           ; $4c20: $00
    and h                                         ; $4c21: $a4
    nop                                           ; $4c22: $00
    and a                                         ; $4c23: $a7
    nop                                           ; $4c24: $00
    xor c                                         ; $4c25: $a9
    nop                                           ; $4c26: $00
    xor h                                         ; $4c27: $ac
    nop                                           ; $4c28: $00
    xor a                                         ; $4c29: $af
    nop                                           ; $4c2a: $00
    or d                                          ; $4c2b: $b2
    nop                                           ; $4c2c: $00
    or h                                          ; $4c2d: $b4
    nop                                           ; $4c2e: $00
    or a                                          ; $4c2f: $b7
    nop                                           ; $4c30: $00
    cp c                                          ; $4c31: $b9
    nop                                           ; $4c32: $00
    cp h                                          ; $4c33: $bc
    nop                                           ; $4c34: $00
    cp a                                          ; $4c35: $bf
    nop                                           ; $4c36: $00
    pop bc                                        ; $4c37: $c1
    nop                                           ; $4c38: $00
    call nz, $c700                                ; $4c39: $c4 $00 $c7
    nop                                           ; $4c3c: $00
    ret                                           ; $4c3d: $c9


    nop                                           ; $4c3e: $00
    call z, $ce00                                 ; $4c3f: $cc $00 $ce
    nop                                           ; $4c42: $00
    pop de                                        ; $4c43: $d1
    nop                                           ; $4c44: $00
    call nc, $d600                                ; $4c45: $d4 $00 $d6
    nop                                           ; $4c48: $00
    reti                                          ; $4c49: $d9


    nop                                           ; $4c4a: $00
    db $db                                        ; $4c4b: $db
    nop                                           ; $4c4c: $00
    sbc $00                                       ; $4c4d: $de $00
    ldh [rP1], a                                  ; $4c4f: $e0 $00
    ld [c], a                                     ; $4c51: $e2
    nop                                           ; $4c52: $00
    push hl                                       ; $4c53: $e5
    nop                                           ; $4c54: $00
    rst $20                                       ; $4c55: $e7
    nop                                           ; $4c56: $00
    ld [$ec00], a                                 ; $4c57: $ea $00 $ec
    nop                                           ; $4c5a: $00
    rst $28                                       ; $4c5b: $ef
    nop                                           ; $4c5c: $00
    ld a, [c]                                     ; $4c5d: $f2
    nop                                           ; $4c5e: $00
    db $f4                                        ; $4c5f: $f4
    nop                                           ; $4c60: $00
    or $00                                        ; $4c61: $f6 $00
    ld sp, hl                                     ; $4c63: $f9
    nop                                           ; $4c64: $00
    ei                                            ; $4c65: $fb
    nop                                           ; $4c66: $00
    db $fd                                        ; $4c67: $fd
    nop                                           ; $4c68: $00
    ld bc, $0301                                  ; $4c69: $01 $01 $03
    ld bc, $0105                                  ; $4c6c: $01 $05 $01
    ld [$0a01], sp                                ; $4c6f: $08 $01 $0a
    ld bc, $010c                                  ; $4c72: $01 $0c $01
    rrca                                          ; $4c75: $0f
    ld bc, $0111                                  ; $4c76: $01 $11 $01
    inc de                                        ; $4c79: $13
    ld bc, $0116                                  ; $4c7a: $01 $16 $01
    add hl, de                                    ; $4c7d: $19
    ld bc, $011b                                  ; $4c7e: $01 $1b $01
    ld e, $01                                     ; $4c81: $1e $01
    jr nz, jr_039_4c86                            ; $4c83: $20 $01

    ld [hl+], a                                   ; $4c85: $22

jr_039_4c86:
    ld bc, $0125                                  ; $4c86: $01 $25 $01
    daa                                           ; $4c89: $27
    ld bc, $012a                                  ; $4c8a: $01 $2a $01
    inc l                                         ; $4c8d: $2c
    ld bc, $012f                                  ; $4c8e: $01 $2f $01
    ld sp, $3301                                  ; $4c91: $31 $01 $33
    ld bc, $0136                                  ; $4c94: $01 $36 $01
    jr c, jr_039_4c9a                             ; $4c97: $38 $01

    ld a, [hl-]                                   ; $4c99: $3a

jr_039_4c9a:
    ld bc, $013d                                  ; $4c9a: $01 $3d $01
    ccf                                           ; $4c9d: $3f
    ld bc, $0142                                  ; $4c9e: $01 $42 $01
    ld b, h                                       ; $4ca1: $44
    ld bc, HeaderCartridgeType                    ; $4ca2: $01 $47 $01
    ld c, c                                       ; $4ca5: $49
    ld bc, HeaderMaskROMVersion                   ; $4ca6: $01 $4c $01
    ld c, [hl]                                    ; $4ca9: $4e
    ld bc, $0150                                  ; $4caa: $01 $50 $01
    ld d, e                                       ; $4cad: $53
    ld bc, $0155                                  ; $4cae: $01 $55 $01
    ld e, b                                       ; $4cb1: $58
    ld bc, $015b                                  ; $4cb2: $01 $5b $01
    ld e, l                                       ; $4cb5: $5d
    ld bc, $015f                                  ; $4cb6: $01 $5f $01
    ld h, d                                       ; $4cb9: $62
    ld bc, $0164                                  ; $4cba: $01 $64 $01
    ld h, [hl]                                    ; $4cbd: $66
    ld bc, $0169                                  ; $4cbe: $01 $69 $01
    ld l, e                                       ; $4cc1: $6b
    ld bc, $016e                                  ; $4cc2: $01 $6e $01
    ld [hl], b                                    ; $4cc5: $70
    ld bc, $0173                                  ; $4cc6: $01 $73 $01
    ld [hl], l                                    ; $4cc9: $75
    ld bc, $0177                                  ; $4cca: $01 $77 $01
    ld a, d                                       ; $4ccd: $7a
    ld bc, $017c                                  ; $4cce: $01 $7c $01
    ld a, a                                       ; $4cd1: $7f
    ld bc, $0181                                  ; $4cd2: $01 $81 $01
    add h                                         ; $4cd5: $84
    ld bc, $0186                                  ; $4cd6: $01 $86 $01
    adc c                                         ; $4cd9: $89
    ld bc, $018b                                  ; $4cda: $01 $8b $01
    adc l                                         ; $4cdd: $8d
    ld bc, $0190                                  ; $4cde: $01 $90 $01
    sub d                                         ; $4ce1: $92
    ld bc, $0195                                  ; $4ce2: $01 $95 $01
    sub a                                         ; $4ce5: $97
    ld bc, $019a                                  ; $4ce6: $01 $9a $01
    sbc h                                         ; $4ce9: $9c
    ld bc, $019f                                  ; $4cea: $01 $9f $01
    and c                                         ; $4ced: $a1
    ld bc, $01a3                                  ; $4cee: $01 $a3 $01
    and [hl]                                      ; $4cf1: $a6
    ld bc, $01a9                                  ; $4cf2: $01 $a9 $01
    xor e                                         ; $4cf5: $ab
    ld bc, $01ad                                  ; $4cf6: $01 $ad $01
    or b                                          ; $4cf9: $b0
    ld bc, $01b2                                  ; $4cfa: $01 $b2 $01
    or h                                          ; $4cfd: $b4
    ld bc, $01b7                                  ; $4cfe: $01 $b7 $01
    cp c                                          ; $4d01: $b9
    ld bc, $01bc                                  ; $4d02: $01 $bc $01
    cp [hl]                                       ; $4d05: $be
    ld bc, $01c1                                  ; $4d06: $01 $c1 $01
    jp $c601                                      ; $4d09: $c3 $01 $c6


    ld bc, $01c8                                  ; $4d0c: $01 $c8 $01
    rlc c                                         ; $4d0f: $cb $01
    call $d001                                    ; $4d11: $cd $01 $d0
    ld bc, $01d2                                  ; $4d14: $01 $d2 $01
    push de                                       ; $4d17: $d5
    ld bc, $01d7                                  ; $4d18: $01 $d7 $01
    reti                                          ; $4d1b: $d9


    ld bc, $01dc                                  ; $4d1c: $01 $dc $01
    rst $18                                       ; $4d1f: $df
    ld bc, $0004                                  ; $4d20: $01 $04 $00
    add hl, hl                                    ; $4d23: $29
    nop                                           ; $4d24: $00
    inc sp                                        ; $4d25: $33
    nop                                           ; $4d26: $00
    dec sp                                        ; $4d27: $3b
    nop                                           ; $4d28: $00
    ld b, e                                       ; $4d29: $43
    nop                                           ; $4d2a: $00
    ld c, d                                       ; $4d2b: $4a
    nop                                           ; $4d2c: $00
    ld c, a                                       ; $4d2d: $4f
    nop                                           ; $4d2e: $00
    ld d, h                                       ; $4d2f: $54
    nop                                           ; $4d30: $00
    ld e, c                                       ; $4d31: $59
    nop                                           ; $4d32: $00
    ld e, l                                       ; $4d33: $5d
    nop                                           ; $4d34: $00
    ld h, d                                       ; $4d35: $62
    nop                                           ; $4d36: $00
    ld h, l                                       ; $4d37: $65
    nop                                           ; $4d38: $00
    ld l, c                                       ; $4d39: $69
    nop                                           ; $4d3a: $00
    ld l, [hl]                                    ; $4d3b: $6e
    nop                                           ; $4d3c: $00
    ld [hl], c                                    ; $4d3d: $71
    nop                                           ; $4d3e: $00
    ld [hl], h                                    ; $4d3f: $74
    nop                                           ; $4d40: $00
    ld a, c                                       ; $4d41: $79
    nop                                           ; $4d42: $00
    ld a, h                                       ; $4d43: $7c
    nop                                           ; $4d44: $00
    ld a, a                                       ; $4d45: $7f
    nop                                           ; $4d46: $00
    add e                                         ; $4d47: $83
    nop                                           ; $4d48: $00
    add [hl]                                      ; $4d49: $86
    nop                                           ; $4d4a: $00
    adc c                                         ; $4d4b: $89
    nop                                           ; $4d4c: $00
    adc h                                         ; $4d4d: $8c
    nop                                           ; $4d4e: $00
    sub b                                         ; $4d4f: $90
    nop                                           ; $4d50: $00
    sub e                                         ; $4d51: $93
    nop                                           ; $4d52: $00
    sub [hl]                                      ; $4d53: $96
    nop                                           ; $4d54: $00
    sbc c                                         ; $4d55: $99
    nop                                           ; $4d56: $00
    sbc h                                         ; $4d57: $9c
    nop                                           ; $4d58: $00
    sbc a                                         ; $4d59: $9f
    nop                                           ; $4d5a: $00
    and d                                         ; $4d5b: $a2
    nop                                           ; $4d5c: $00
    and l                                         ; $4d5d: $a5
    nop                                           ; $4d5e: $00
    xor b                                         ; $4d5f: $a8
    nop                                           ; $4d60: $00
    xor d                                         ; $4d61: $aa
    nop                                           ; $4d62: $00
    xor l                                         ; $4d63: $ad
    nop                                           ; $4d64: $00
    or b                                          ; $4d65: $b0
    nop                                           ; $4d66: $00
    or h                                          ; $4d67: $b4
    nop                                           ; $4d68: $00
    or [hl]                                       ; $4d69: $b6
    nop                                           ; $4d6a: $00
    cp c                                          ; $4d6b: $b9
    nop                                           ; $4d6c: $00
    cp h                                          ; $4d6d: $bc
    nop                                           ; $4d6e: $00
    cp a                                          ; $4d6f: $bf
    nop                                           ; $4d70: $00
    pop bc                                        ; $4d71: $c1
    nop                                           ; $4d72: $00
    push bc                                       ; $4d73: $c5
    nop                                           ; $4d74: $00
    rst $00                                       ; $4d75: $c7
    nop                                           ; $4d76: $00
    jp z, $cd00                                   ; $4d77: $ca $00 $cd

    nop                                           ; $4d7a: $00
    ret nc                                        ; $4d7b: $d0

    nop                                           ; $4d7c: $00
    jp nc, $d500                                  ; $4d7d: $d2 $00 $d5

    nop                                           ; $4d80: $00
    ret c                                         ; $4d81: $d8

    nop                                           ; $4d82: $00
    db $db                                        ; $4d83: $db
    nop                                           ; $4d84: $00
    db $dd                                        ; $4d85: $dd
    nop                                           ; $4d86: $00
    ldh [rP1], a                                  ; $4d87: $e0 $00
    db $e3                                        ; $4d89: $e3
    nop                                           ; $4d8a: $00
    push hl                                       ; $4d8b: $e5
    nop                                           ; $4d8c: $00
    add sp, $00                                   ; $4d8d: $e8 $00
    db $eb                                        ; $4d8f: $eb
    nop                                           ; $4d90: $00
    db $ed                                        ; $4d91: $ed
    nop                                           ; $4d92: $00
    ldh a, [rP1]                                  ; $4d93: $f0 $00
    di                                            ; $4d95: $f3
    nop                                           ; $4d96: $00
    push af                                       ; $4d97: $f5
    nop                                           ; $4d98: $00
    ld hl, sp+$00                                 ; $4d99: $f8 $00
    ei                                            ; $4d9b: $fb
    nop                                           ; $4d9c: $00
    db $fd                                        ; $4d9d: $fd
    nop                                           ; $4d9e: $00
    nop                                           ; $4d9f: $00
    ld bc, $0103                                  ; $4da0: $01 $03 $01
    dec b                                         ; $4da3: $05
    ld bc, $0108                                  ; $4da4: $01 $08 $01
    ld a, [bc]                                    ; $4da7: $0a
    ld bc, $010d                                  ; $4da8: $01 $0d $01
    db $10                                        ; $4dab: $10
    ld bc, $0112                                  ; $4dac: $01 $12 $01
    inc d                                         ; $4daf: $14
    ld bc, $0117                                  ; $4db0: $01 $17 $01
    ld a, [de]                                    ; $4db3: $1a
    ld bc, $011c                                  ; $4db4: $01 $1c $01
    rra                                           ; $4db7: $1f
    ld bc, $0122                                  ; $4db8: $01 $22 $01
    inc h                                         ; $4dbb: $24
    ld bc, $0127                                  ; $4dbc: $01 $27 $01
    add hl, hl                                    ; $4dbf: $29
    ld bc, $012c                                  ; $4dc0: $01 $2c $01
    cpl                                           ; $4dc3: $2f
    ld bc, $0131                                  ; $4dc4: $01 $31 $01
    inc [hl]                                      ; $4dc7: $34
    ld bc, $0136                                  ; $4dc8: $01 $36 $01
    add hl, sp                                    ; $4dcb: $39
    ld bc, $013b                                  ; $4dcc: $01 $3b $01
    ld a, $01                                     ; $4dcf: $3e $01
    ld b, c                                       ; $4dd1: $41
    ld bc, HeaderCGBFlag                          ; $4dd2: $01 $43 $01
    ld b, [hl]                                    ; $4dd5: $46
    ld bc, HeaderRAMSize                          ; $4dd6: $01 $49 $01
    ld c, e                                       ; $4dd9: $4b
    ld bc, HeaderGlobalChecksum                   ; $4dda: $01 $4e $01
    ld d, b                                       ; $4ddd: $50
    ld bc, $0153                                  ; $4dde: $01 $53 $01
    ld d, [hl]                                    ; $4de1: $56
    ld bc, $0158                                  ; $4de2: $01 $58 $01
    ld e, e                                       ; $4de5: $5b
    ld bc, $015e                                  ; $4de6: $01 $5e $01
    ld h, b                                       ; $4de9: $60
    ld bc, $0163                                  ; $4dea: $01 $63 $01
    ld h, l                                       ; $4ded: $65
    ld bc, $0168                                  ; $4dee: $01 $68 $01
    ld l, e                                       ; $4df1: $6b
    ld bc, $016d                                  ; $4df2: $01 $6d $01
    ld [hl], b                                    ; $4df5: $70
    ld bc, $0173                                  ; $4df6: $01 $73 $01
    ld [hl], l                                    ; $4df9: $75
    ld bc, $0178                                  ; $4dfa: $01 $78 $01
    ld a, d                                       ; $4dfd: $7a
    ld bc, $017d                                  ; $4dfe: $01 $7d $01
    ld a, a                                       ; $4e01: $7f
    ld bc, $0182                                  ; $4e02: $01 $82 $01
    add l                                         ; $4e05: $85
    ld bc, $0188                                  ; $4e06: $01 $88 $01
    adc d                                         ; $4e09: $8a
    ld bc, $018d                                  ; $4e0a: $01 $8d $01
    adc a                                         ; $4e0d: $8f
    ld bc, $0192                                  ; $4e0e: $01 $92 $01
    sub l                                         ; $4e11: $95
    ld bc, $0197                                  ; $4e12: $01 $97 $01
    sbc d                                         ; $4e15: $9a
    ld bc, $019c                                  ; $4e16: $01 $9c $01
    sbc a                                         ; $4e19: $9f
    ld bc, $01a2                                  ; $4e1a: $01 $a2 $01
    and h                                         ; $4e1d: $a4
    ld bc, $01a7                                  ; $4e1e: $01 $a7 $01
    xor c                                         ; $4e21: $a9
    ld bc, $01ac                                  ; $4e22: $01 $ac $01
    xor a                                         ; $4e25: $af
    ld bc, $01b1                                  ; $4e26: $01 $b1 $01
    or h                                          ; $4e29: $b4
    ld bc, $01b7                                  ; $4e2a: $01 $b7 $01
    cp c                                          ; $4e2d: $b9
    ld bc, $01bc                                  ; $4e2e: $01 $bc $01
    cp a                                          ; $4e31: $bf
    ld bc, $01c2                                  ; $4e32: $01 $c2 $01
    call nz, $c701                                ; $4e35: $c4 $01 $c7
    ld bc, $01c9                                  ; $4e38: $01 $c9 $01
    call z, $cf01                                 ; $4e3b: $cc $01 $cf
    ld bc, $01d1                                  ; $4e3e: $01 $d1 $01
    call nc, $d601                                ; $4e41: $d4 $01 $d6
    ld bc, $01d9                                  ; $4e44: $01 $d9 $01
    db $db                                        ; $4e47: $db
    ld bc, $01de                                  ; $4e48: $01 $de $01
    inc b                                         ; $4e4b: $04
    nop                                           ; $4e4c: $00
    dec l                                         ; $4e4d: $2d
    nop                                           ; $4e4e: $00
    ld [hl], $00                                  ; $4e4f: $36 $00
    ld a, $00                                     ; $4e51: $3e $00
    ld b, [hl]                                    ; $4e53: $46
    nop                                           ; $4e54: $00
    ld c, l                                       ; $4e55: $4d
    nop                                           ; $4e56: $00
    ld d, e                                       ; $4e57: $53
    nop                                           ; $4e58: $00
    ld e, b                                       ; $4e59: $58
    nop                                           ; $4e5a: $00
    ld e, l                                       ; $4e5b: $5d
    nop                                           ; $4e5c: $00
    ld h, d                                       ; $4e5d: $62
    nop                                           ; $4e5e: $00
    ld h, [hl]                                    ; $4e5f: $66
    nop                                           ; $4e60: $00
    ld l, e                                       ; $4e61: $6b
    nop                                           ; $4e62: $00
    ld l, a                                       ; $4e63: $6f
    nop                                           ; $4e64: $00
    ld [hl], e                                    ; $4e65: $73
    nop                                           ; $4e66: $00
    ld [hl], a                                    ; $4e67: $77
    nop                                           ; $4e68: $00
    ld a, e                                       ; $4e69: $7b
    nop                                           ; $4e6a: $00
    ld a, [hl]                                    ; $4e6b: $7e
    nop                                           ; $4e6c: $00
    add d                                         ; $4e6d: $82
    nop                                           ; $4e6e: $00
    add [hl]                                      ; $4e6f: $86
    nop                                           ; $4e70: $00
    adc c                                         ; $4e71: $89
    nop                                           ; $4e72: $00
    adc l                                         ; $4e73: $8d
    nop                                           ; $4e74: $00
    sub b                                         ; $4e75: $90
    nop                                           ; $4e76: $00
    sub e                                         ; $4e77: $93
    nop                                           ; $4e78: $00
    sub [hl]                                      ; $4e79: $96
    nop                                           ; $4e7a: $00
    sbc d                                         ; $4e7b: $9a
    nop                                           ; $4e7c: $00
    sbc l                                         ; $4e7d: $9d
    nop                                           ; $4e7e: $00
    and b                                         ; $4e7f: $a0
    nop                                           ; $4e80: $00
    and e                                         ; $4e81: $a3
    nop                                           ; $4e82: $00
    and a                                         ; $4e83: $a7
    nop                                           ; $4e84: $00
    xor d                                         ; $4e85: $aa
    nop                                           ; $4e86: $00
    xor l                                         ; $4e87: $ad
    nop                                           ; $4e88: $00
    or b                                          ; $4e89: $b0
    nop                                           ; $4e8a: $00
    or h                                          ; $4e8b: $b4
    nop                                           ; $4e8c: $00
    or [hl]                                       ; $4e8d: $b6
    nop                                           ; $4e8e: $00
    cp d                                          ; $4e8f: $ba
    nop                                           ; $4e90: $00
    cp l                                          ; $4e91: $bd
    nop                                           ; $4e92: $00
    ret nz                                        ; $4e93: $c0

    nop                                           ; $4e94: $00
    jp nz, $c600                                  ; $4e95: $c2 $00 $c6

    nop                                           ; $4e98: $00
    ret z                                         ; $4e99: $c8

    nop                                           ; $4e9a: $00
    rlc b                                         ; $4e9b: $cb $00
    rst $08                                       ; $4e9d: $cf
    nop                                           ; $4e9e: $00
    pop de                                        ; $4e9f: $d1
    nop                                           ; $4ea0: $00
    push de                                       ; $4ea1: $d5
    nop                                           ; $4ea2: $00
    rst $10                                       ; $4ea3: $d7
    nop                                           ; $4ea4: $00
    jp c, $dd00                                   ; $4ea5: $da $00 $dd

    nop                                           ; $4ea8: $00
    ldh [rP1], a                                  ; $4ea9: $e0 $00
    db $e3                                        ; $4eab: $e3
    nop                                           ; $4eac: $00
    and $00                                       ; $4ead: $e6 $00
    jp hl                                         ; $4eaf: $e9


    nop                                           ; $4eb0: $00
    db $eb                                        ; $4eb1: $eb
    nop                                           ; $4eb2: $00
    xor $00                                       ; $4eb3: $ee $00
    pop af                                        ; $4eb5: $f1
    nop                                           ; $4eb6: $00
    db $f4                                        ; $4eb7: $f4
    nop                                           ; $4eb8: $00
    rst $30                                       ; $4eb9: $f7
    nop                                           ; $4eba: $00
    ld a, [$fc00]                                 ; $4ebb: $fa $00 $fc
    nop                                           ; $4ebe: $00
    rst $38                                       ; $4ebf: $ff
    nop                                           ; $4ec0: $00
    ld [bc], a                                    ; $4ec1: $02
    ld bc, HeaderLogo                             ; $4ec2: $01 $04 $01
    ld [$0b01], sp                                ; $4ec5: $08 $01 $0b
    ld bc, $010e                                  ; $4ec8: $01 $0e $01
    db $10                                        ; $4ecb: $10
    ld bc, $0113                                  ; $4ecc: $01 $13 $01
    ld d, $01                                     ; $4ecf: $16 $01
    add hl, de                                    ; $4ed1: $19
    ld bc, $011b                                  ; $4ed2: $01 $1b $01
    ld e, $01                                     ; $4ed5: $1e $01
    ld hl, $2401                                  ; $4ed7: $21 $01 $24
    ld bc, $0126                                  ; $4eda: $01 $26 $01
    add hl, hl                                    ; $4edd: $29
    ld bc, $012c                                  ; $4ede: $01 $2c $01
    cpl                                           ; $4ee1: $2f
    ld bc, $0132                                  ; $4ee2: $01 $32 $01
    dec [hl]                                      ; $4ee5: $35
    ld bc, $0138                                  ; $4ee6: $01 $38 $01
    ld a, [hl-]                                   ; $4ee9: $3a
    ld bc, $013d                                  ; $4eea: $01 $3d $01
    ld b, b                                       ; $4eed: $40
    ld bc, HeaderCGBFlag                          ; $4eee: $01 $43 $01
    ld b, [hl]                                    ; $4ef1: $46
    ld bc, HeaderRAMSize                          ; $4ef2: $01 $49 $01
    ld c, e                                       ; $4ef5: $4b
    ld bc, HeaderGlobalChecksum                   ; $4ef6: $01 $4e $01
    ld d, c                                       ; $4ef9: $51
    ld bc, $0153                                  ; $4efa: $01 $53 $01
    ld d, a                                       ; $4efd: $57
    ld bc, $0159                                  ; $4efe: $01 $59 $01
    ld e, h                                       ; $4f01: $5c
    ld bc, $015f                                  ; $4f02: $01 $5f $01
    ld h, d                                       ; $4f05: $62
    ld bc, $0164                                  ; $4f06: $01 $64 $01
    ld h, a                                       ; $4f09: $67
    ld bc, $016a                                  ; $4f0a: $01 $6a $01
    ld l, l                                       ; $4f0d: $6d
    ld bc, $0170                                  ; $4f0e: $01 $70 $01
    ld [hl], e                                    ; $4f11: $73
    ld bc, $0175                                  ; $4f12: $01 $75 $01
    ld a, b                                       ; $4f15: $78
    ld bc, $017b                                  ; $4f16: $01 $7b $01
    ld a, [hl]                                    ; $4f19: $7e
    ld bc, $0181                                  ; $4f1a: $01 $81 $01
    add e                                         ; $4f1d: $83
    ld bc, $0186                                  ; $4f1e: $01 $86 $01
    adc c                                         ; $4f21: $89
    ld bc, $018c                                  ; $4f22: $01 $8c $01
    adc a                                         ; $4f25: $8f
    ld bc, $0192                                  ; $4f26: $01 $92 $01
    sub h                                         ; $4f29: $94
    ld bc, $0197                                  ; $4f2a: $01 $97 $01
    sbc d                                         ; $4f2d: $9a
    ld bc, $019d                                  ; $4f2e: $01 $9d $01
    and b                                         ; $4f31: $a0
    ld bc, $01a3                                  ; $4f32: $01 $a3 $01
    and l                                         ; $4f35: $a5
    ld bc, $01a8                                  ; $4f36: $01 $a8 $01
    xor e                                         ; $4f39: $ab
    ld bc, $01ae                                  ; $4f3a: $01 $ae $01
    or c                                          ; $4f3d: $b1
    ld bc, $01b4                                  ; $4f3e: $01 $b4 $01
    or [hl]                                       ; $4f41: $b6
    ld bc, $01b9                                  ; $4f42: $01 $b9 $01
    cp h                                          ; $4f45: $bc
    ld bc, $01bf                                  ; $4f46: $01 $bf $01
    jp nz, $c501                                  ; $4f49: $c2 $01 $c5

    ld bc, $01c7                                  ; $4f4c: $01 $c7 $01
    jp z, $cd01                                   ; $4f4f: $ca $01 $cd

    ld bc, $01d0                                  ; $4f52: $01 $d0 $01
    db $d3                                        ; $4f55: $d3
    ld bc, $01d6                                  ; $4f56: $01 $d6 $01
    reti                                          ; $4f59: $d9


    ld bc, $01db                                  ; $4f5a: $01 $db $01
    sbc $01                                       ; $4f5d: $de $01
    inc b                                         ; $4f5f: $04
    nop                                           ; $4f60: $00
    cpl                                           ; $4f61: $2f
    nop                                           ; $4f62: $00
    ld [hl], $00                                  ; $4f63: $36 $00
    dec a                                         ; $4f65: $3d
    nop                                           ; $4f66: $00
    ld b, h                                       ; $4f67: $44
    nop                                           ; $4f68: $00
    ld c, l                                       ; $4f69: $4d
    nop                                           ; $4f6a: $00
    ld d, e                                       ; $4f6b: $53
    nop                                           ; $4f6c: $00
    ld e, c                                       ; $4f6d: $59
    nop                                           ; $4f6e: $00
    ld e, [hl]                                    ; $4f6f: $5e
    nop                                           ; $4f70: $00
    ld h, e                                       ; $4f71: $63
    nop                                           ; $4f72: $00
    ld l, b                                       ; $4f73: $68
    nop                                           ; $4f74: $00
    ld l, h                                       ; $4f75: $6c
    nop                                           ; $4f76: $00
    ld [hl], b                                    ; $4f77: $70
    nop                                           ; $4f78: $00
    ld [hl], l                                    ; $4f79: $75
    nop                                           ; $4f7a: $00
    ld a, c                                       ; $4f7b: $79
    nop                                           ; $4f7c: $00
    ld a, l                                       ; $4f7d: $7d
    nop                                           ; $4f7e: $00
    add b                                         ; $4f7f: $80
    nop                                           ; $4f80: $00
    add l                                         ; $4f81: $85
    nop                                           ; $4f82: $00
    adc b                                         ; $4f83: $88
    nop                                           ; $4f84: $00
    adc h                                         ; $4f85: $8c
    nop                                           ; $4f86: $00
    sub b                                         ; $4f87: $90
    nop                                           ; $4f88: $00
    sub h                                         ; $4f89: $94
    nop                                           ; $4f8a: $00
    sub a                                         ; $4f8b: $97
    nop                                           ; $4f8c: $00
    sbc e                                         ; $4f8d: $9b
    nop                                           ; $4f8e: $00
    sbc [hl]                                      ; $4f8f: $9e
    nop                                           ; $4f90: $00
    and d                                         ; $4f91: $a2
    nop                                           ; $4f92: $00
    and l                                         ; $4f93: $a5
    nop                                           ; $4f94: $00
    xor c                                         ; $4f95: $a9
    nop                                           ; $4f96: $00
    xor h                                         ; $4f97: $ac
    nop                                           ; $4f98: $00
    or b                                          ; $4f99: $b0
    nop                                           ; $4f9a: $00
    or e                                          ; $4f9b: $b3
    nop                                           ; $4f9c: $00
    or a                                          ; $4f9d: $b7
    nop                                           ; $4f9e: $00
    cp d                                          ; $4f9f: $ba
    nop                                           ; $4fa0: $00
    cp [hl]                                       ; $4fa1: $be
    nop                                           ; $4fa2: $00
    ret nz                                        ; $4fa3: $c0

    nop                                           ; $4fa4: $00
    call nz, $c700                                ; $4fa5: $c4 $00 $c7
    nop                                           ; $4fa8: $00
    rlc b                                         ; $4fa9: $cb $00
    adc $00                                       ; $4fab: $ce $00
    pop de                                        ; $4fad: $d1
    nop                                           ; $4fae: $00
    call nc, $d700                                ; $4faf: $d4 $00 $d7
    nop                                           ; $4fb2: $00
    db $db                                        ; $4fb3: $db
    nop                                           ; $4fb4: $00
    sbc $00                                       ; $4fb5: $de $00
    pop hl                                        ; $4fb7: $e1
    nop                                           ; $4fb8: $00
    push hl                                       ; $4fb9: $e5
    nop                                           ; $4fba: $00
    add sp, $00                                   ; $4fbb: $e8 $00
    db $eb                                        ; $4fbd: $eb
    nop                                           ; $4fbe: $00
    xor $00                                       ; $4fbf: $ee $00
    pop af                                        ; $4fc1: $f1
    nop                                           ; $4fc2: $00
    db $f4                                        ; $4fc3: $f4
    nop                                           ; $4fc4: $00
    rst $30                                       ; $4fc5: $f7
    nop                                           ; $4fc6: $00
    ei                                            ; $4fc7: $fb
    nop                                           ; $4fc8: $00
    cp $00                                        ; $4fc9: $fe $00
    ld bc, $0401                                  ; $4fcb: $01 $01 $04
    ld bc, $0107                                  ; $4fce: $01 $07 $01
    ld a, [bc]                                    ; $4fd1: $0a
    ld bc, $010d                                  ; $4fd2: $01 $0d $01
    ld de, $1401                                  ; $4fd5: $11 $01 $14
    ld bc, $0117                                  ; $4fd8: $01 $17 $01
    ld a, [de]                                    ; $4fdb: $1a
    ld bc, $011d                                  ; $4fdc: $01 $1d $01
    jr nz, jr_039_4fe2                            ; $4fdf: $20 $01

    inc hl                                        ; $4fe1: $23

jr_039_4fe2:
    ld bc, $0126                                  ; $4fe2: $01 $26 $01
    ld a, [hl+]                                   ; $4fe5: $2a
    ld bc, $012d                                  ; $4fe6: $01 $2d $01
    jr nc, jr_039_4fec                            ; $4fe9: $30 $01

    inc sp                                        ; $4feb: $33

jr_039_4fec:
    ld bc, $0136                                  ; $4fec: $01 $36 $01
    ld a, [hl-]                                   ; $4fef: $3a
    ld bc, $013d                                  ; $4ff0: $01 $3d $01
    ld b, b                                       ; $4ff3: $40
    ld bc, HeaderCGBFlag                          ; $4ff4: $01 $43 $01
    ld b, [hl]                                    ; $4ff7: $46
    ld bc, HeaderRAMSize                          ; $4ff8: $01 $49 $01
    ld c, h                                       ; $4ffb: $4c
    ld bc, $014f                                  ; $4ffc: $01 $4f $01
    ld d, e                                       ; $4fff: $53
    ld bc, $0156                                  ; $5000: $01 $56 $01
    ld e, c                                       ; $5003: $59
    ld bc, $015c                                  ; $5004: $01 $5c $01
    ld h, b                                       ; $5007: $60
    ld bc, $0162                                  ; $5008: $01 $62 $01
    ld h, [hl]                                    ; $500b: $66
    ld bc, $0169                                  ; $500c: $01 $69 $01
    ld l, h                                       ; $500f: $6c
    ld bc, $016f                                  ; $5010: $01 $6f $01
    ld [hl], d                                    ; $5013: $72
    ld bc, $0175                                  ; $5014: $01 $75 $01
    ld a, b                                       ; $5017: $78
    ld bc, $017c                                  ; $5018: $01 $7c $01
    ld a, a                                       ; $501b: $7f
    ld bc, $0182                                  ; $501c: $01 $82 $01
    add l                                         ; $501f: $85
    ld bc, $0188                                  ; $5020: $01 $88 $01
    adc h                                         ; $5023: $8c
    ld bc, $018f                                  ; $5024: $01 $8f $01
    sub d                                         ; $5027: $92
    ld bc, $0195                                  ; $5028: $01 $95 $01
    sbc b                                         ; $502b: $98
    ld bc, $019b                                  ; $502c: $01 $9b $01
    sbc a                                         ; $502f: $9f
    ld bc, $01a2                                  ; $5030: $01 $a2 $01
    and l                                         ; $5033: $a5
    ld bc, $01a8                                  ; $5034: $01 $a8 $01
    xor e                                         ; $5037: $ab
    ld bc, $01ae                                  ; $5038: $01 $ae $01
    or c                                          ; $503b: $b1
    ld bc, $01b5                                  ; $503c: $01 $b5 $01
    cp b                                          ; $503f: $b8
    ld bc, $01bb                                  ; $5040: $01 $bb $01
    cp [hl]                                       ; $5043: $be
    ld bc, $01c1                                  ; $5044: $01 $c1 $01
    push bc                                       ; $5047: $c5
    ld bc, $01c8                                  ; $5048: $01 $c8 $01
    rlc c                                         ; $504b: $cb $01
    adc $01                                       ; $504d: $ce $01
    jp nc, $d501                                  ; $504f: $d2 $01 $d5

    ld bc, $01d8                                  ; $5052: $01 $d8 $01
    db $db                                        ; $5055: $db
    ld bc, $01df                                  ; $5056: $01 $df $01
    inc b                                         ; $5059: $04
    nop                                           ; $505a: $00
    ld sp, $3900                                  ; $505b: $31 $00 $39
    nop                                           ; $505e: $00
    ld b, d                                       ; $505f: $42
    nop                                           ; $5060: $00
    ld c, d                                       ; $5061: $4a
    nop                                           ; $5062: $00
    ld d, c                                       ; $5063: $51
    nop                                           ; $5064: $00
    ld e, d                                       ; $5065: $5a
    nop                                           ; $5066: $00
    ld h, b                                       ; $5067: $60
    nop                                           ; $5068: $00
    ld h, [hl]                                    ; $5069: $66
    nop                                           ; $506a: $00
    ld l, e                                       ; $506b: $6b
    nop                                           ; $506c: $00
    ld [hl], b                                    ; $506d: $70
    nop                                           ; $506e: $00
    ld [hl], l                                    ; $506f: $75
    nop                                           ; $5070: $00
    ld a, d                                       ; $5071: $7a
    nop                                           ; $5072: $00
    ld a, [hl]                                    ; $5073: $7e
    nop                                           ; $5074: $00
    add e                                         ; $5075: $83
    nop                                           ; $5076: $00
    adc b                                         ; $5077: $88
    nop                                           ; $5078: $00
    adc h                                         ; $5079: $8c
    nop                                           ; $507a: $00
    sub b                                         ; $507b: $90
    nop                                           ; $507c: $00
    sub h                                         ; $507d: $94
    nop                                           ; $507e: $00
    sbc c                                         ; $507f: $99
    nop                                           ; $5080: $00
    sbc l                                         ; $5081: $9d
    nop                                           ; $5082: $00
    and c                                         ; $5083: $a1
    nop                                           ; $5084: $00
    and l                                         ; $5085: $a5
    nop                                           ; $5086: $00
    xor c                                         ; $5087: $a9
    nop                                           ; $5088: $00
    xor h                                         ; $5089: $ac
    nop                                           ; $508a: $00
    or c                                          ; $508b: $b1
    nop                                           ; $508c: $00
    or l                                          ; $508d: $b5
    nop                                           ; $508e: $00
    cp b                                          ; $508f: $b8
    nop                                           ; $5090: $00
    cp l                                          ; $5091: $bd
    nop                                           ; $5092: $00
    ret nz                                        ; $5093: $c0

    nop                                           ; $5094: $00
    call nz, $c800                                ; $5095: $c4 $00 $c8
    nop                                           ; $5098: $00
    rlc b                                         ; $5099: $cb $00
    rst $08                                       ; $509b: $cf
    nop                                           ; $509c: $00
    db $d3                                        ; $509d: $d3
    nop                                           ; $509e: $00
    sub $00                                       ; $509f: $d6 $00
    db $db                                        ; $50a1: $db
    nop                                           ; $50a2: $00
    sbc $00                                       ; $50a3: $de $00
    ld [c], a                                     ; $50a5: $e2
    nop                                           ; $50a6: $00
    push hl                                       ; $50a7: $e5
    nop                                           ; $50a8: $00
    jp hl                                         ; $50a9: $e9


    nop                                           ; $50aa: $00
    db $ed                                        ; $50ab: $ed
    nop                                           ; $50ac: $00
    ldh a, [rP1]                                  ; $50ad: $f0 $00
    db $f4                                        ; $50af: $f4
    nop                                           ; $50b0: $00
    ld hl, sp+$00                                 ; $50b1: $f8 $00
    db $fc                                        ; $50b3: $fc
    nop                                           ; $50b4: $00
    rst $38                                       ; $50b5: $ff
    nop                                           ; $50b6: $00
    ld [bc], a                                    ; $50b7: $02
    ld bc, $0106                                  ; $50b8: $01 $06 $01
    ld a, [bc]                                    ; $50bb: $0a
    ld bc, $010e                                  ; $50bc: $01 $0e $01
    ld de, $1501                                  ; $50bf: $11 $01 $15
    ld bc, $0119                                  ; $50c2: $01 $19 $01
    inc e                                         ; $50c5: $1c
    ld bc, $011f                                  ; $50c6: $01 $1f $01
    inc hl                                        ; $50c9: $23
    ld bc, $0127                                  ; $50ca: $01 $27 $01
    ld a, [hl+]                                   ; $50cd: $2a
    ld bc, $012e                                  ; $50ce: $01 $2e $01
    ld sp, $3501                                  ; $50d1: $31 $01 $35
    ld bc, $0139                                  ; $50d4: $01 $39 $01
    dec a                                         ; $50d7: $3d
    ld bc, $0140                                  ; $50d8: $01 $40 $01
    ld b, e                                       ; $50db: $43
    ld bc, HeaderCartridgeType                    ; $50dc: $01 $47 $01
    ld c, d                                       ; $50df: $4a
    ld bc, HeaderGlobalChecksum                   ; $50e0: $01 $4e $01
    ld d, d                                       ; $50e3: $52
    ld bc, $0155                                  ; $50e4: $01 $55 $01
    ld e, c                                       ; $50e7: $59
    ld bc, $015c                                  ; $50e8: $01 $5c $01
    ld h, b                                       ; $50eb: $60
    ld bc, $0164                                  ; $50ec: $01 $64 $01
    ld h, a                                       ; $50ef: $67
    ld bc, $016b                                  ; $50f0: $01 $6b $01
    ld l, [hl]                                    ; $50f3: $6e
    ld bc, $0171                                  ; $50f4: $01 $71 $01
    halt                                          ; $50f7: $76
    ld bc, $0179                                  ; $50f8: $01 $79 $01
    ld a, l                                       ; $50fb: $7d
    ld bc, $0180                                  ; $50fc: $01 $80 $01
    add h                                         ; $50ff: $84
    ld bc, $0187                                  ; $5100: $01 $87 $01
    adc e                                         ; $5103: $8b
    ld bc, $018f                                  ; $5104: $01 $8f $01
    sub d                                         ; $5107: $92
    ld bc, $0196                                  ; $5108: $01 $96 $01
    sbc d                                         ; $510b: $9a
    ld bc, $019d                                  ; $510c: $01 $9d $01
    and c                                         ; $510f: $a1
    ld bc, $01a5                                  ; $5110: $01 $a5 $01
    xor b                                         ; $5113: $a8
    ld bc, $01ac                                  ; $5114: $01 $ac $01
    xor a                                         ; $5117: $af
    ld bc, $01b3                                  ; $5118: $01 $b3 $01
    or a                                          ; $511b: $b7
    ld bc, $01ba                                  ; $511c: $01 $ba $01
    cp [hl]                                       ; $511f: $be
    ld bc, $01c2                                  ; $5120: $01 $c2 $01
    add $01                                       ; $5123: $c6 $01
    ret                                           ; $5125: $c9


    ld bc, $01cd                                  ; $5126: $01 $cd $01
    pop de                                        ; $5129: $d1
    ld bc, $01d4                                  ; $512a: $01 $d4 $01
    ret c                                         ; $512d: $d8

    ld bc, $01dc                                  ; $512e: $01 $dc $01
    rst $18                                       ; $5131: $df
    ld bc, $0004                                  ; $5132: $01 $04 $00
    dec [hl]                                      ; $5135: $35
    nop                                           ; $5136: $00
    ld b, c                                       ; $5137: $41
    nop                                           ; $5138: $00
    ld c, e                                       ; $5139: $4b
    nop                                           ; $513a: $00
    ld d, l                                       ; $513b: $55
    nop                                           ; $513c: $00
    ld e, h                                       ; $513d: $5c
    nop                                           ; $513e: $00
    ld h, a                                       ; $513f: $67
    nop                                           ; $5140: $00
    ld l, [hl]                                    ; $5141: $6e
    nop                                           ; $5142: $00
    ld [hl], h                                    ; $5143: $74
    nop                                           ; $5144: $00
    ld a, d                                       ; $5145: $7a
    nop                                           ; $5146: $00
    add b                                         ; $5147: $80
    nop                                           ; $5148: $00
    add [hl]                                      ; $5149: $86
    nop                                           ; $514a: $00
    adc e                                         ; $514b: $8b
    nop                                           ; $514c: $00
    sub c                                         ; $514d: $91
    nop                                           ; $514e: $00
    sub [hl]                                      ; $514f: $96
    nop                                           ; $5150: $00
    sbc e                                         ; $5151: $9b
    nop                                           ; $5152: $00
    and b                                         ; $5153: $a0
    nop                                           ; $5154: $00
    and l                                         ; $5155: $a5
    nop                                           ; $5156: $00
    xor d                                         ; $5157: $aa
    nop                                           ; $5158: $00
    xor a                                         ; $5159: $af
    nop                                           ; $515a: $00
    or h                                          ; $515b: $b4
    nop                                           ; $515c: $00
    cp b                                          ; $515d: $b8
    nop                                           ; $515e: $00
    cp [hl]                                       ; $515f: $be
    nop                                           ; $5160: $00
    jp nz, $c700                                  ; $5161: $c2 $00 $c7

    nop                                           ; $5164: $00
    call z, $d100                                 ; $5165: $cc $00 $d1
    nop                                           ; $5168: $00
    push de                                       ; $5169: $d5
    nop                                           ; $516a: $00
    jp c, $de00                                   ; $516b: $da $00 $de

    nop                                           ; $516e: $00
    ld [c], a                                     ; $516f: $e2
    nop                                           ; $5170: $00
    rst $20                                       ; $5171: $e7
    nop                                           ; $5172: $00
    db $ec                                        ; $5173: $ec
    nop                                           ; $5174: $00
    ldh a, [rP1]                                  ; $5175: $f0 $00
    db $f4                                        ; $5177: $f4
    nop                                           ; $5178: $00
    ld hl, sp+$00                                 ; $5179: $f8 $00
    db $fd                                        ; $517b: $fd
    nop                                           ; $517c: $00
    ld bc, $0601                                  ; $517d: $01 $01 $06
    ld bc, $010a                                  ; $5180: $01 $0a $01
    ld c, $01                                     ; $5183: $0e $01
    ld [de], a                                    ; $5185: $12
    ld bc, $0117                                  ; $5186: $01 $17 $01
    dec de                                        ; $5189: $1b
    ld bc, $0120                                  ; $518a: $01 $20 $01
    inc h                                         ; $518d: $24
    ld bc, $0128                                  ; $518e: $01 $28 $01
    dec l                                         ; $5191: $2d
    ld bc, $0131                                  ; $5192: $01 $31 $01
    dec [hl]                                      ; $5195: $35
    ld bc, $013a                                  ; $5196: $01 $3a $01
    ld a, $01                                     ; $5199: $3e $01
    ld b, d                                       ; $519b: $42
    ld bc, HeaderSGBFlag                          ; $519c: $01 $46 $01
    ld c, e                                       ; $519f: $4b
    ld bc, $014f                                  ; $51a0: $01 $4f $01
    ld d, h                                       ; $51a3: $54
    ld bc, $0158                                  ; $51a4: $01 $58 $01
    ld e, h                                       ; $51a7: $5c
    ld bc, $0161                                  ; $51a8: $01 $61 $01
    ld h, l                                       ; $51ab: $65
    ld bc, $0169                                  ; $51ac: $01 $69 $01
    ld l, l                                       ; $51af: $6d
    ld bc, $0172                                  ; $51b0: $01 $72 $01
    halt                                          ; $51b3: $76
    ld bc, $017a                                  ; $51b4: $01 $7a $01
    ld a, a                                       ; $51b7: $7f
    ld bc, $0183                                  ; $51b8: $01 $83 $01
    add a                                         ; $51bb: $87
    ld bc, $018c                                  ; $51bc: $01 $8c $01
    sub b                                         ; $51bf: $90
    ld bc, $0195                                  ; $51c0: $01 $95 $01
    sbc c                                         ; $51c3: $99
    ld bc, $019d                                  ; $51c4: $01 $9d $01
    and c                                         ; $51c7: $a1
    ld bc, $01a6                                  ; $51c8: $01 $a6 $01
    xor d                                         ; $51cb: $aa
    ld bc, $01ae                                  ; $51cc: $01 $ae $01
    or e                                          ; $51cf: $b3
    ld bc, $01b7                                  ; $51d0: $01 $b7 $01
    cp e                                          ; $51d3: $bb
    ld bc, $01c0                                  ; $51d4: $01 $c0 $01
    call nz, $c901                                ; $51d7: $c4 $01 $c9
    ld bc, $01cd                                  ; $51da: $01 $cd $01
    jp nc, $d601                                  ; $51dd: $d2 $01 $d6

    ld bc, $01da                                  ; $51e0: $01 $da $01
    rst $18                                       ; $51e3: $df
    ld bc, $51ff                                  ; $51e4: $01 $ff $51
    dec a                                         ; $51e7: $3d
    ld d, d                                       ; $51e8: $52
    ld a, e                                       ; $51e9: $7b
    ld d, d                                       ; $51ea: $52
    cp c                                          ; $51eb: $b9
    ld d, d                                       ; $51ec: $52
    rst $30                                       ; $51ed: $f7
    ld d, d                                       ; $51ee: $52
    dec [hl]                                      ; $51ef: $35
    ld d, e                                       ; $51f0: $53
    ld [hl], e                                    ; $51f1: $73
    ld d, e                                       ; $51f2: $53
    or c                                          ; $51f3: $b1
    ld d, e                                       ; $51f4: $53
    rst $28                                       ; $51f5: $ef
    ld d, e                                       ; $51f6: $53
    dec l                                         ; $51f7: $2d
    ld d, h                                       ; $51f8: $54
    ld l, e                                       ; $51f9: $6b
    ld d, h                                       ; $51fa: $54
    xor c                                         ; $51fb: $a9
    ld d, h                                       ; $51fc: $54
    rst $20                                       ; $51fd: $e7
    ld d, h                                       ; $51fe: $54
    ld bc, $0e00                                  ; $51ff: $01 $00 $0e
    nop                                           ; $5202: $00
    dec e                                         ; $5203: $1d
    nop                                           ; $5204: $00
    ld h, $00                                     ; $5205: $26 $00
    ld l, $00                                     ; $5207: $2e $00
    dec [hl]                                      ; $5209: $35
    nop                                           ; $520a: $00
    dec sp                                        ; $520b: $3b
    nop                                           ; $520c: $00
    ld b, c                                       ; $520d: $41
    nop                                           ; $520e: $00
    ld b, [hl]                                    ; $520f: $46
    nop                                           ; $5210: $00
    ld c, e                                       ; $5211: $4b
    nop                                           ; $5212: $00
    ld d, b                                       ; $5213: $50
    nop                                           ; $5214: $00
    ld d, l                                       ; $5215: $55
    nop                                           ; $5216: $00
    ld e, d                                       ; $5217: $5a
    nop                                           ; $5218: $00
    ld e, l                                       ; $5219: $5d
    nop                                           ; $521a: $00
    ld h, c                                       ; $521b: $61
    nop                                           ; $521c: $00
    ld h, h                                       ; $521d: $64
    nop                                           ; $521e: $00
    ld h, a                                       ; $521f: $67
    nop                                           ; $5220: $00
    ld l, c                                       ; $5221: $69
    nop                                           ; $5222: $00
    ld l, e                                       ; $5223: $6b
    nop                                           ; $5224: $00
    ld l, [hl]                                    ; $5225: $6e
    nop                                           ; $5226: $00
    ld [hl], b                                    ; $5227: $70
    nop                                           ; $5228: $00
    ld [hl], d                                    ; $5229: $72
    nop                                           ; $522a: $00
    ld [hl], h                                    ; $522b: $74
    nop                                           ; $522c: $00
    halt                                          ; $522d: $76
    nop                                           ; $522e: $00
    ld [hl], a                                    ; $522f: $77
    nop                                           ; $5230: $00
    ld a, c                                       ; $5231: $79
    nop                                           ; $5232: $00
    ld a, d                                       ; $5233: $7a
    nop                                           ; $5234: $00
    ld a, h                                       ; $5235: $7c
    nop                                           ; $5236: $00
    ld a, l                                       ; $5237: $7d
    nop                                           ; $5238: $00
    ld a, [hl]                                    ; $5239: $7e
    nop                                           ; $523a: $00
    add b                                         ; $523b: $80
    nop                                           ; $523c: $00
    ld bc, $1000                                  ; $523d: $01 $00 $10
    nop                                           ; $5240: $00
    jr nz, jr_039_5243                            ; $5241: $20 $00

jr_039_5243:
    add hl, hl                                    ; $5243: $29
    nop                                           ; $5244: $00
    ld sp, $3900                                  ; $5245: $31 $00 $39
    nop                                           ; $5248: $00
    ld b, b                                       ; $5249: $40
    nop                                           ; $524a: $00
    ld b, [hl]                                    ; $524b: $46
    nop                                           ; $524c: $00
    ld c, d                                       ; $524d: $4a
    nop                                           ; $524e: $00
    ld d, c                                       ; $524f: $51
    nop                                           ; $5250: $00
    ld d, a                                       ; $5251: $57
    nop                                           ; $5252: $00
    ld e, e                                       ; $5253: $5b
    nop                                           ; $5254: $00
    ld e, [hl]                                    ; $5255: $5e
    nop                                           ; $5256: $00
    ld h, d                                       ; $5257: $62
    nop                                           ; $5258: $00
    ld h, l                                       ; $5259: $65
    nop                                           ; $525a: $00
    ld l, c                                       ; $525b: $69
    nop                                           ; $525c: $00
    ld l, d                                       ; $525d: $6a
    nop                                           ; $525e: $00
    ld l, l                                       ; $525f: $6d
    nop                                           ; $5260: $00
    ld [hl], b                                    ; $5261: $70
    nop                                           ; $5262: $00
    ld [hl], c                                    ; $5263: $71
    nop                                           ; $5264: $00
    ld [hl], h                                    ; $5265: $74
    nop                                           ; $5266: $00
    ld [hl], l                                    ; $5267: $75
    nop                                           ; $5268: $00
    ld [hl], a                                    ; $5269: $77
    nop                                           ; $526a: $00
    ld a, c                                       ; $526b: $79
    nop                                           ; $526c: $00
    ld a, d                                       ; $526d: $7a
    nop                                           ; $526e: $00
    ld a, e                                       ; $526f: $7b
    nop                                           ; $5270: $00
    ld a, l                                       ; $5271: $7d
    nop                                           ; $5272: $00
    ld a, [hl]                                    ; $5273: $7e
    nop                                           ; $5274: $00
    ld a, a                                       ; $5275: $7f
    nop                                           ; $5276: $00
    add b                                         ; $5277: $80
    nop                                           ; $5278: $00
    add c                                         ; $5279: $81
    nop                                           ; $527a: $00
    ld bc, $1100                                  ; $527b: $01 $00 $11
    nop                                           ; $527e: $00
    ld hl, $2b00                                  ; $527f: $21 $00 $2b
    nop                                           ; $5282: $00
    dec [hl]                                      ; $5283: $35
    nop                                           ; $5284: $00
    inc a                                         ; $5285: $3c
    nop                                           ; $5286: $00
    ld b, e                                       ; $5287: $43
    nop                                           ; $5288: $00
    ld c, c                                       ; $5289: $49
    nop                                           ; $528a: $00
    ld d, b                                       ; $528b: $50
    nop                                           ; $528c: $00
    ld d, [hl]                                    ; $528d: $56
    nop                                           ; $528e: $00
    ld e, e                                       ; $528f: $5b
    nop                                           ; $5290: $00
    ld e, a                                       ; $5291: $5f
    nop                                           ; $5292: $00
    ld h, h                                       ; $5293: $64
    nop                                           ; $5294: $00
    ld h, [hl]                                    ; $5295: $66
    nop                                           ; $5296: $00
    ld l, d                                       ; $5297: $6a
    nop                                           ; $5298: $00
    ld l, l                                       ; $5299: $6d
    nop                                           ; $529a: $00
    ld [hl], b                                    ; $529b: $70
    nop                                           ; $529c: $00
    ld [hl], d                                    ; $529d: $72
    nop                                           ; $529e: $00
    ld [hl], l                                    ; $529f: $75
    nop                                           ; $52a0: $00
    ld [hl], a                                    ; $52a1: $77
    nop                                           ; $52a2: $00
    ld a, c                                       ; $52a3: $79
    nop                                           ; $52a4: $00
    ld a, d                                       ; $52a5: $7a
    nop                                           ; $52a6: $00
    ld a, h                                       ; $52a7: $7c
    nop                                           ; $52a8: $00
    ld a, [hl]                                    ; $52a9: $7e
    nop                                           ; $52aa: $00
    ld a, a                                       ; $52ab: $7f
    nop                                           ; $52ac: $00
    add b                                         ; $52ad: $80
    nop                                           ; $52ae: $00
    add d                                         ; $52af: $82
    nop                                           ; $52b0: $00
    add e                                         ; $52b1: $83
    nop                                           ; $52b2: $00
    add e                                         ; $52b3: $83
    nop                                           ; $52b4: $00
    add l                                         ; $52b5: $85
    nop                                           ; $52b6: $00
    add [hl]                                      ; $52b7: $86
    nop                                           ; $52b8: $00
    ld bc, $1200                                  ; $52b9: $01 $00 $12
    nop                                           ; $52bc: $00
    dec e                                         ; $52bd: $1d
    nop                                           ; $52be: $00
    ld h, $00                                     ; $52bf: $26 $00
    dec l                                         ; $52c1: $2d
    nop                                           ; $52c2: $00
    dec [hl]                                      ; $52c3: $35
    nop                                           ; $52c4: $00
    ld a, [hl-]                                   ; $52c5: $3a
    nop                                           ; $52c6: $00
    ld b, d                                       ; $52c7: $42
    nop                                           ; $52c8: $00
    ld c, b                                       ; $52c9: $48
    nop                                           ; $52ca: $00
    ld c, h                                       ; $52cb: $4c
    nop                                           ; $52cc: $00
    ld d, c                                       ; $52cd: $51
    nop                                           ; $52ce: $00
    ld d, l                                       ; $52cf: $55
    nop                                           ; $52d0: $00
    ld e, d                                       ; $52d1: $5a
    nop                                           ; $52d2: $00
    ld e, [hl]                                    ; $52d3: $5e
    nop                                           ; $52d4: $00
    ld h, c                                       ; $52d5: $61
    nop                                           ; $52d6: $00
    ld h, l                                       ; $52d7: $65
    nop                                           ; $52d8: $00
    ld l, b                                       ; $52d9: $68
    nop                                           ; $52da: $00
    ld l, e                                       ; $52db: $6b
    nop                                           ; $52dc: $00
    ld l, [hl]                                    ; $52dd: $6e
    nop                                           ; $52de: $00
    ld [hl], c                                    ; $52df: $71
    nop                                           ; $52e0: $00
    ld [hl], h                                    ; $52e1: $74
    nop                                           ; $52e2: $00
    ld [hl], a                                    ; $52e3: $77
    nop                                           ; $52e4: $00
    ld a, c                                       ; $52e5: $79
    nop                                           ; $52e6: $00
    ld a, h                                       ; $52e7: $7c
    nop                                           ; $52e8: $00
    ld a, [hl]                                    ; $52e9: $7e
    nop                                           ; $52ea: $00
    add c                                         ; $52eb: $81
    nop                                           ; $52ec: $00
    add e                                         ; $52ed: $83
    nop                                           ; $52ee: $00
    add l                                         ; $52ef: $85
    nop                                           ; $52f0: $00
    add a                                         ; $52f1: $87
    nop                                           ; $52f2: $00
    adc c                                         ; $52f3: $89
    nop                                           ; $52f4: $00
    adc h                                         ; $52f5: $8c
    nop                                           ; $52f6: $00
    ld bc, $1400                                  ; $52f7: $01 $00 $14
    nop                                           ; $52fa: $00
    rra                                           ; $52fb: $1f
    nop                                           ; $52fc: $00
    add hl, hl                                    ; $52fd: $29
    nop                                           ; $52fe: $00
    ld sp, $3900                                  ; $52ff: $31 $00 $39
    nop                                           ; $5302: $00
    ld a, $00                                     ; $5303: $3e $00
    ld b, a                                       ; $5305: $47
    nop                                           ; $5306: $00
    ld c, h                                       ; $5307: $4c
    nop                                           ; $5308: $00
    ld d, c                                       ; $5309: $51
    nop                                           ; $530a: $00
    ld d, l                                       ; $530b: $55
    nop                                           ; $530c: $00
    ld e, d                                       ; $530d: $5a
    nop                                           ; $530e: $00
    ld e, a                                       ; $530f: $5f
    nop                                           ; $5310: $00
    ld h, d                                       ; $5311: $62
    nop                                           ; $5312: $00
    ld h, [hl]                                    ; $5313: $66
    nop                                           ; $5314: $00
    ld l, c                                       ; $5315: $69
    nop                                           ; $5316: $00
    ld l, l                                       ; $5317: $6d
    nop                                           ; $5318: $00
    ld [hl], b                                    ; $5319: $70
    nop                                           ; $531a: $00
    ld [hl], e                                    ; $531b: $73
    nop                                           ; $531c: $00
    ld [hl], l                                    ; $531d: $75
    nop                                           ; $531e: $00
    ld a, c                                       ; $531f: $79
    nop                                           ; $5320: $00
    ld a, e                                       ; $5321: $7b
    nop                                           ; $5322: $00
    ld a, l                                       ; $5323: $7d
    nop                                           ; $5324: $00
    add b                                         ; $5325: $80
    nop                                           ; $5326: $00
    add d                                         ; $5327: $82
    nop                                           ; $5328: $00
    add l                                         ; $5329: $85
    nop                                           ; $532a: $00
    add [hl]                                      ; $532b: $86
    nop                                           ; $532c: $00
    adc c                                         ; $532d: $89
    nop                                           ; $532e: $00
    adc d                                         ; $532f: $8a
    nop                                           ; $5330: $00
    adc l                                         ; $5331: $8d
    nop                                           ; $5332: $00
    adc [hl]                                      ; $5333: $8e
    nop                                           ; $5334: $00
    ld bc, $1500                                  ; $5335: $01 $00 $15
    nop                                           ; $5338: $00
    ld [hl+], a                                   ; $5339: $22
    nop                                           ; $533a: $00
    inc l                                         ; $533b: $2c
    nop                                           ; $533c: $00
    ld [hl], $00                                  ; $533d: $36 $00
    dec a                                         ; $533f: $3d
    nop                                           ; $5340: $00
    ld b, [hl]                                    ; $5341: $46
    nop                                           ; $5342: $00
    ld c, h                                       ; $5343: $4c
    nop                                           ; $5344: $00
    ld d, d                                       ; $5345: $52
    nop                                           ; $5346: $00
    ld d, a                                       ; $5347: $57
    nop                                           ; $5348: $00
    ld e, l                                       ; $5349: $5d
    nop                                           ; $534a: $00
    ld h, c                                       ; $534b: $61
    nop                                           ; $534c: $00
    ld h, l                                       ; $534d: $65
    nop                                           ; $534e: $00
    ld l, c                                       ; $534f: $69
    nop                                           ; $5350: $00
    ld l, l                                       ; $5351: $6d
    nop                                           ; $5352: $00
    ld [hl], b                                    ; $5353: $70
    nop                                           ; $5354: $00
    ld [hl], h                                    ; $5355: $74
    nop                                           ; $5356: $00
    halt                                          ; $5357: $76
    nop                                           ; $5358: $00
    ld a, c                                       ; $5359: $79
    nop                                           ; $535a: $00
    ld a, h                                       ; $535b: $7c
    nop                                           ; $535c: $00
    ld a, [hl]                                    ; $535d: $7e
    nop                                           ; $535e: $00
    add c                                         ; $535f: $81
    nop                                           ; $5360: $00
    add h                                         ; $5361: $84
    nop                                           ; $5362: $00
    add [hl]                                      ; $5363: $86
    nop                                           ; $5364: $00
    adc b                                         ; $5365: $88
    nop                                           ; $5366: $00
    adc d                                         ; $5367: $8a
    nop                                           ; $5368: $00
    adc h                                         ; $5369: $8c
    nop                                           ; $536a: $00
    adc [hl]                                      ; $536b: $8e
    nop                                           ; $536c: $00
    adc a                                         ; $536d: $8f
    nop                                           ; $536e: $00
    sub c                                         ; $536f: $91
    nop                                           ; $5370: $00
    sub e                                         ; $5371: $93
    nop                                           ; $5372: $00
    ld bc, $1700                                  ; $5373: $01 $00 $17
    nop                                           ; $5376: $00
    inc h                                         ; $5377: $24
    nop                                           ; $5378: $00
    cpl                                           ; $5379: $2f
    nop                                           ; $537a: $00
    add hl, sp                                    ; $537b: $39
    nop                                           ; $537c: $00
    ld b, b                                       ; $537d: $40
    nop                                           ; $537e: $00
    ld c, d                                       ; $537f: $4a
    nop                                           ; $5380: $00
    ld d, b                                       ; $5381: $50
    nop                                           ; $5382: $00
    ld d, [hl]                                    ; $5383: $56
    nop                                           ; $5384: $00
    ld e, h                                       ; $5385: $5c
    nop                                           ; $5386: $00
    ld h, c                                       ; $5387: $61
    nop                                           ; $5388: $00
    ld h, l                                       ; $5389: $65
    nop                                           ; $538a: $00
    ld l, d                                       ; $538b: $6a
    nop                                           ; $538c: $00
    ld l, [hl]                                    ; $538d: $6e
    nop                                           ; $538e: $00
    ld [hl], d                                    ; $538f: $72
    nop                                           ; $5390: $00
    halt                                          ; $5391: $76
    nop                                           ; $5392: $00
    ld a, c                                       ; $5393: $79
    nop                                           ; $5394: $00
    ld a, h                                       ; $5395: $7c
    nop                                           ; $5396: $00
    ld a, a                                       ; $5397: $7f
    nop                                           ; $5398: $00
    add d                                         ; $5399: $82
    nop                                           ; $539a: $00
    add l                                         ; $539b: $85
    nop                                           ; $539c: $00
    add a                                         ; $539d: $87
    nop                                           ; $539e: $00
    adc d                                         ; $539f: $8a
    nop                                           ; $53a0: $00
    adc h                                         ; $53a1: $8c
    nop                                           ; $53a2: $00
    adc [hl]                                      ; $53a3: $8e
    nop                                           ; $53a4: $00
    sub b                                         ; $53a5: $90
    nop                                           ; $53a6: $00
    sub d                                         ; $53a7: $92
    nop                                           ; $53a8: $00
    sub h                                         ; $53a9: $94
    nop                                           ; $53aa: $00
    sub l                                         ; $53ab: $95
    nop                                           ; $53ac: $00
    sub a                                         ; $53ad: $97
    nop                                           ; $53ae: $00
    sbc c                                         ; $53af: $99
    nop                                           ; $53b0: $00
    ld bc, $1800                                  ; $53b1: $01 $00 $18
    nop                                           ; $53b4: $00
    daa                                           ; $53b5: $27
    nop                                           ; $53b6: $00
    ld [hl-], a                                   ; $53b7: $32
    nop                                           ; $53b8: $00
    inc a                                         ; $53b9: $3c
    nop                                           ; $53ba: $00
    ld b, l                                       ; $53bb: $45
    nop                                           ; $53bc: $00
    ld c, l                                       ; $53bd: $4d
    nop                                           ; $53be: $00
    ld d, h                                       ; $53bf: $54
    nop                                           ; $53c0: $00
    ld e, d                                       ; $53c1: $5a
    nop                                           ; $53c2: $00
    ld h, b                                       ; $53c3: $60
    nop                                           ; $53c4: $00
    ld h, l                                       ; $53c5: $65
    nop                                           ; $53c6: $00
    ld l, d                                       ; $53c7: $6a
    nop                                           ; $53c8: $00
    ld l, [hl]                                    ; $53c9: $6e
    nop                                           ; $53ca: $00
    ld [hl], e                                    ; $53cb: $73
    nop                                           ; $53cc: $00
    ld [hl], a                                    ; $53cd: $77
    nop                                           ; $53ce: $00
    ld a, d                                       ; $53cf: $7a
    nop                                           ; $53d0: $00
    ld a, [hl]                                    ; $53d1: $7e
    nop                                           ; $53d2: $00
    add c                                         ; $53d3: $81
    nop                                           ; $53d4: $00
    add h                                         ; $53d5: $84
    nop                                           ; $53d6: $00
    add a                                         ; $53d7: $87
    nop                                           ; $53d8: $00
    adc d                                         ; $53d9: $8a
    nop                                           ; $53da: $00
    adc h                                         ; $53db: $8c
    nop                                           ; $53dc: $00
    adc [hl]                                      ; $53dd: $8e
    nop                                           ; $53de: $00
    sub c                                         ; $53df: $91
    nop                                           ; $53e0: $00
    sub e                                         ; $53e1: $93
    nop                                           ; $53e2: $00
    sub l                                         ; $53e3: $95
    nop                                           ; $53e4: $00
    sub a                                         ; $53e5: $97
    nop                                           ; $53e6: $00
    sbc c                                         ; $53e7: $99
    nop                                           ; $53e8: $00
    sbc e                                         ; $53e9: $9b
    nop                                           ; $53ea: $00
    sbc l                                         ; $53eb: $9d
    nop                                           ; $53ec: $00
    sbc [hl]                                      ; $53ed: $9e
    nop                                           ; $53ee: $00
    ld bc, $1a00                                  ; $53ef: $01 $00 $1a
    nop                                           ; $53f2: $00
    add hl, hl                                    ; $53f3: $29
    nop                                           ; $53f4: $00
    dec [hl]                                      ; $53f5: $35
    nop                                           ; $53f6: $00
    ccf                                           ; $53f7: $3f
    nop                                           ; $53f8: $00
    ld c, d                                       ; $53f9: $4a
    nop                                           ; $53fa: $00
    ld d, d                                       ; $53fb: $52
    nop                                           ; $53fc: $00
    ld e, c                                       ; $53fd: $59
    nop                                           ; $53fe: $00
    ld e, [hl]                                    ; $53ff: $5e
    nop                                           ; $5400: $00
    ld h, h                                       ; $5401: $64
    nop                                           ; $5402: $00
    ld l, d                                       ; $5403: $6a
    nop                                           ; $5404: $00
    ld [hl], b                                    ; $5405: $70
    nop                                           ; $5406: $00
    ld [hl], e                                    ; $5407: $73
    nop                                           ; $5408: $00
    ld a, b                                       ; $5409: $78
    nop                                           ; $540a: $00
    ld a, l                                       ; $540b: $7d
    nop                                           ; $540c: $00
    add b                                         ; $540d: $80
    nop                                           ; $540e: $00
    add h                                         ; $540f: $84
    nop                                           ; $5410: $00
    add a                                         ; $5411: $87
    nop                                           ; $5412: $00
    adc d                                         ; $5413: $8a
    nop                                           ; $5414: $00
    adc l                                         ; $5415: $8d
    nop                                           ; $5416: $00
    sub b                                         ; $5417: $90
    nop                                           ; $5418: $00
    sub d                                         ; $5419: $92
    nop                                           ; $541a: $00
    sub l                                         ; $541b: $95
    nop                                           ; $541c: $00
    sub a                                         ; $541d: $97
    nop                                           ; $541e: $00
    sbc d                                         ; $541f: $9a
    nop                                           ; $5420: $00
    sbc h                                         ; $5421: $9c
    nop                                           ; $5422: $00
    sbc [hl]                                      ; $5423: $9e
    nop                                           ; $5424: $00
    sbc a                                         ; $5425: $9f
    nop                                           ; $5426: $00
    and c                                         ; $5427: $a1
    nop                                           ; $5428: $00
    and e                                         ; $5429: $a3
    nop                                           ; $542a: $00
    and l                                         ; $542b: $a5
    nop                                           ; $542c: $00
    ld bc, $1c00                                  ; $542d: $01 $00 $1c
    nop                                           ; $5430: $00
    inc l                                         ; $5431: $2c
    nop                                           ; $5432: $00
    jr c, jr_039_5435                             ; $5433: $38 $00

jr_039_5435:
    ld b, e                                       ; $5435: $43
    nop                                           ; $5436: $00
    ld c, a                                       ; $5437: $4f
    nop                                           ; $5438: $00
    ld d, [hl]                                    ; $5439: $56
    nop                                           ; $543a: $00
    ld e, [hl]                                    ; $543b: $5e
    nop                                           ; $543c: $00
    ld h, h                                       ; $543d: $64
    nop                                           ; $543e: $00
    ld l, d                                       ; $543f: $6a
    nop                                           ; $5440: $00
    ld [hl], b                                    ; $5441: $70
    nop                                           ; $5442: $00
    ld [hl], l                                    ; $5443: $75
    nop                                           ; $5444: $00
    ld a, d                                       ; $5445: $7a
    nop                                           ; $5446: $00
    ld a, a                                       ; $5447: $7f
    nop                                           ; $5448: $00
    add e                                         ; $5449: $83
    nop                                           ; $544a: $00
    add a                                         ; $544b: $87
    nop                                           ; $544c: $00
    adc d                                         ; $544d: $8a
    nop                                           ; $544e: $00
    adc [hl]                                      ; $544f: $8e
    nop                                           ; $5450: $00
    sub c                                         ; $5451: $91
    nop                                           ; $5452: $00
    sub l                                         ; $5453: $95
    nop                                           ; $5454: $00
    sub a                                         ; $5455: $97
    nop                                           ; $5456: $00
    sbc d                                         ; $5457: $9a
    nop                                           ; $5458: $00
    sbc h                                         ; $5459: $9c
    nop                                           ; $545a: $00
    sbc a                                         ; $545b: $9f
    nop                                           ; $545c: $00
    and c                                         ; $545d: $a1
    nop                                           ; $545e: $00
    and h                                         ; $545f: $a4
    nop                                           ; $5460: $00
    and [hl]                                      ; $5461: $a6
    nop                                           ; $5462: $00
    xor b                                         ; $5463: $a8
    nop                                           ; $5464: $00
    xor c                                         ; $5465: $a9
    nop                                           ; $5466: $00
    xor e                                         ; $5467: $ab
    nop                                           ; $5468: $00
    xor l                                         ; $5469: $ad
    nop                                           ; $546a: $00
    ld bc, $1c00                                  ; $546b: $01 $00 $1c
    nop                                           ; $546e: $00
    dec hl                                        ; $546f: $2b
    nop                                           ; $5470: $00
    add hl, sp                                    ; $5471: $39
    nop                                           ; $5472: $00
    ld b, l                                       ; $5473: $45
    nop                                           ; $5474: $00
    ld c, l                                       ; $5475: $4d
    nop                                           ; $5476: $00
    ld d, l                                       ; $5477: $55
    nop                                           ; $5478: $00
    ld e, l                                       ; $5479: $5d
    nop                                           ; $547a: $00
    ld h, h                                       ; $547b: $64
    nop                                           ; $547c: $00
    ld l, e                                       ; $547d: $6b
    nop                                           ; $547e: $00
    ld [hl], c                                    ; $547f: $71
    nop                                           ; $5480: $00
    ld [hl], l                                    ; $5481: $75
    nop                                           ; $5482: $00
    ld a, e                                       ; $5483: $7b
    nop                                           ; $5484: $00
    ld a, a                                       ; $5485: $7f
    nop                                           ; $5486: $00
    add h                                         ; $5487: $84
    nop                                           ; $5488: $00
    adc b                                         ; $5489: $88
    nop                                           ; $548a: $00
    adc h                                         ; $548b: $8c
    nop                                           ; $548c: $00
    adc a                                         ; $548d: $8f
    nop                                           ; $548e: $00
    sub d                                         ; $548f: $92
    nop                                           ; $5490: $00
    sub [hl]                                      ; $5491: $96
    nop                                           ; $5492: $00
    sbc c                                         ; $5493: $99
    nop                                           ; $5494: $00
    sbc h                                         ; $5495: $9c
    nop                                           ; $5496: $00
    sbc a                                         ; $5497: $9f
    nop                                           ; $5498: $00
    and d                                         ; $5499: $a2
    nop                                           ; $549a: $00
    and l                                         ; $549b: $a5
    nop                                           ; $549c: $00
    and a                                         ; $549d: $a7
    nop                                           ; $549e: $00
    xor d                                         ; $549f: $aa
    nop                                           ; $54a0: $00
    xor h                                         ; $54a1: $ac
    nop                                           ; $54a2: $00
    xor a                                         ; $54a3: $af
    nop                                           ; $54a4: $00
    or c                                          ; $54a5: $b1
    nop                                           ; $54a6: $00
    or e                                          ; $54a7: $b3
    nop                                           ; $54a8: $00
    ld bc, $1f00                                  ; $54a9: $01 $00 $1f
    nop                                           ; $54ac: $00
    cpl                                           ; $54ad: $2f
    nop                                           ; $54ae: $00
    ccf                                           ; $54af: $3f
    nop                                           ; $54b0: $00
    ld c, d                                       ; $54b1: $4a
    nop                                           ; $54b2: $00
    ld d, h                                       ; $54b3: $54
    nop                                           ; $54b4: $00
    ld e, l                                       ; $54b5: $5d
    nop                                           ; $54b6: $00
    ld h, l                                       ; $54b7: $65
    nop                                           ; $54b8: $00
    ld l, e                                       ; $54b9: $6b
    nop                                           ; $54ba: $00
    ld [hl], d                                    ; $54bb: $72
    nop                                           ; $54bc: $00
    ld a, b                                       ; $54bd: $78
    nop                                           ; $54be: $00
    ld a, a                                       ; $54bf: $7f
    nop                                           ; $54c0: $00
    add h                                         ; $54c1: $84
    nop                                           ; $54c2: $00
    adc c                                         ; $54c3: $89
    nop                                           ; $54c4: $00
    adc [hl]                                      ; $54c5: $8e
    nop                                           ; $54c6: $00
    sub e                                         ; $54c7: $93
    nop                                           ; $54c8: $00
    sub a                                         ; $54c9: $97
    nop                                           ; $54ca: $00
    sbc e                                         ; $54cb: $9b
    nop                                           ; $54cc: $00
    sbc a                                         ; $54cd: $9f
    nop                                           ; $54ce: $00
    and d                                         ; $54cf: $a2
    nop                                           ; $54d0: $00
    and a                                         ; $54d1: $a7
    nop                                           ; $54d2: $00
    xor c                                         ; $54d3: $a9
    nop                                           ; $54d4: $00
    xor l                                         ; $54d5: $ad
    nop                                           ; $54d6: $00
    or b                                          ; $54d7: $b0
    nop                                           ; $54d8: $00
    or e                                          ; $54d9: $b3
    nop                                           ; $54da: $00
    or a                                          ; $54db: $b7
    nop                                           ; $54dc: $00
    cp c                                          ; $54dd: $b9
    nop                                           ; $54de: $00
    cp h                                          ; $54df: $bc
    nop                                           ; $54e0: $00
    cp a                                          ; $54e1: $bf
    nop                                           ; $54e2: $00
    pop bc                                        ; $54e3: $c1
    nop                                           ; $54e4: $00
    call nz, Boot                                 ; $54e5: $c4 $00 $01
    nop                                           ; $54e8: $00
    inc hl                                        ; $54e9: $23
    nop                                           ; $54ea: $00
    jr c, jr_039_54ed                             ; $54eb: $38 $00

jr_039_54ed:
    ld c, b                                       ; $54ed: $48
    nop                                           ; $54ee: $00
    ld d, h                                       ; $54ef: $54
    nop                                           ; $54f0: $00
    ld h, b                                       ; $54f1: $60
    nop                                           ; $54f2: $00
    ld l, c                                       ; $54f3: $69
    nop                                           ; $54f4: $00
    ld [hl], d                                    ; $54f5: $72
    nop                                           ; $54f6: $00
    ld a, e                                       ; $54f7: $7b
    nop                                           ; $54f8: $00
    add d                                         ; $54f9: $82
    nop                                           ; $54fa: $00
    adc d                                         ; $54fb: $8a
    nop                                           ; $54fc: $00
    sub b                                         ; $54fd: $90
    nop                                           ; $54fe: $00
    sub [hl]                                      ; $54ff: $96
    nop                                           ; $5500: $00
    sbc l                                         ; $5501: $9d
    nop                                           ; $5502: $00
    and d                                         ; $5503: $a2
    nop                                           ; $5504: $00
    xor b                                         ; $5505: $a8
    nop                                           ; $5506: $00
    xor h                                         ; $5507: $ac
    nop                                           ; $5508: $00
    or c                                          ; $5509: $b1
    nop                                           ; $550a: $00
    or [hl]                                       ; $550b: $b6
    nop                                           ; $550c: $00
    cp d                                          ; $550d: $ba
    nop                                           ; $550e: $00
    cp [hl]                                       ; $550f: $be
    nop                                           ; $5510: $00
    jp $c600                                      ; $5511: $c3 $00 $c6


    nop                                           ; $5514: $00
    rlc b                                         ; $5515: $cb $00
    adc $00                                       ; $5517: $ce $00
    jp nc, $d500                                  ; $5519: $d2 $00 $d5

    nop                                           ; $551c: $00
    reti                                          ; $551d: $d9


    nop                                           ; $551e: $00
    call c, $df00                                 ; $551f: $dc $00 $df
    nop                                           ; $5522: $00
    ld [c], a                                     ; $5523: $e2
    nop                                           ; $5524: $00
    ld a, c                                       ; $5525: $79
    cp $0d                                        ; $5526: $fe $0d
    jr nc, jr_039_5568                            ; $5528: $30 $3e

    ld a, [$d32a]                                 ; $552a: $fa $2a $d3
    cp $02                                        ; $552d: $fe $02
    jr z, jr_039_5556                             ; $552f: $28 $25

    ld h, $00                                     ; $5531: $26 $00
    ld l, c                                       ; $5533: $69
    add hl, hl                                    ; $5534: $29
    ld bc, $556c                                  ; $5535: $01 $6c $55
    add hl, bc                                    ; $5538: $09
    ld a, [hl+]                                   ; $5539: $2a
    ld b, [hl]                                    ; $553a: $46
    ld c, a                                       ; $553b: $4f
    ld h, d                                       ; $553c: $62
    ld l, e                                       ; $553d: $6b
    res 0, l                                      ; $553e: $cb $85
    add hl, bc                                    ; $5540: $09
    bit 0, e                                      ; $5541: $cb $43
    jr nz, jr_039_5549                            ; $5543: $20 $04

    ld a, [hl+]                                   ; $5545: $2a
    ld h, [hl]                                    ; $5546: $66
    ld l, a                                       ; $5547: $6f
    ret                                           ; $5548: $c9


jr_039_5549:
    ld e, [hl]                                    ; $5549: $5e
    inc hl                                        ; $554a: $23
    ld d, [hl]                                    ; $554b: $56
    inc hl                                        ; $554c: $23
    ld a, [hl+]                                   ; $554d: $2a
    ld h, [hl]                                    ; $554e: $66
    ld l, a                                       ; $554f: $6f
    add hl, de                                    ; $5550: $19
    srl h                                         ; $5551: $cb $3c
    rr l                                          ; $5553: $cb $1d
    ret                                           ; $5555: $c9


jr_039_5556:
    ld h, $00                                     ; $5556: $26 $00
    ld l, c                                       ; $5558: $69
    add hl, hl                                    ; $5559: $29
    ld bc, $6708                                  ; $555a: $01 $08 $67
    add hl, bc                                    ; $555d: $09
    ld a, [hl+]                                   ; $555e: $2a
    ld h, [hl]                                    ; $555f: $66
    ld l, a                                       ; $5560: $6f
    res 0, e                                      ; $5561: $cb $83
    add hl, de                                    ; $5563: $19
    ld l, [hl]                                    ; $5564: $6e
    ld h, $00                                     ; $5565: $26 $00
    ret                                           ; $5567: $c9


jr_039_5568:
    ld hl, $0040                                  ; $5568: $21 $40 $00
    ret                                           ; $556b: $c9


    add [hl]                                      ; $556c: $86
    ld d, l                                       ; $556d: $55
    add b                                         ; $556e: $80
    ld d, a                                       ; $556f: $57
    ld d, [hl]                                    ; $5570: $56
    ld e, c                                       ; $5571: $59
    ld a, [bc]                                    ; $5572: $0a
    ld e, e                                       ; $5573: $5b
    or b                                          ; $5574: $b0
    ld e, h                                       ; $5575: $5c
    ld a, [hl-]                                   ; $5576: $3a
    ld e, [hl]                                    ; $5577: $5e
    xor b                                         ; $5578: $a8
    ld e, a                                       ; $5579: $5f
    db $fc                                        ; $557a: $fc
    ld h, b                                       ; $557b: $60
    inc a                                         ; $557c: $3c
    ld h, d                                       ; $557d: $62
    ld l, b                                       ; $557e: $68
    ld h, e                                       ; $557f: $63
    ld a, h                                       ; $5580: $7c
    ld h, h                                       ; $5581: $64
    ld a, b                                       ; $5582: $78
    ld h, l                                       ; $5583: $65
    ld d, h                                       ; $5584: $54
    ld h, [hl]                                    ; $5585: $66
    dec b                                         ; $5586: $05
    nop                                           ; $5587: $00
    ld c, $00                                     ; $5588: $0e $00
    inc hl                                        ; $558a: $23
    nop                                           ; $558b: $00
    ld a, [hl+]                                   ; $558c: $2a
    nop                                           ; $558d: $00
    ld sp, $3600                                  ; $558e: $31 $00 $36
    nop                                           ; $5591: $00
    dec sp                                        ; $5592: $3b
    nop                                           ; $5593: $00
    ld b, b                                       ; $5594: $40
    nop                                           ; $5595: $00
    ld b, h                                       ; $5596: $44
    nop                                           ; $5597: $00
    ld c, c                                       ; $5598: $49
    nop                                           ; $5599: $00
    ld c, h                                       ; $559a: $4c
    nop                                           ; $559b: $00
    ld d, b                                       ; $559c: $50
    nop                                           ; $559d: $00
    ld d, e                                       ; $559e: $53
    nop                                           ; $559f: $00
    ld e, b                                       ; $55a0: $58
    nop                                           ; $55a1: $00
    ld e, e                                       ; $55a2: $5b
    nop                                           ; $55a3: $00
    ld e, [hl]                                    ; $55a4: $5e
    nop                                           ; $55a5: $00
    ld h, b                                       ; $55a6: $60
    nop                                           ; $55a7: $00
    ld h, e                                       ; $55a8: $63
    nop                                           ; $55a9: $00
    ld h, [hl]                                    ; $55aa: $66
    nop                                           ; $55ab: $00
    ld l, c                                       ; $55ac: $69
    nop                                           ; $55ad: $00
    ld l, e                                       ; $55ae: $6b
    nop                                           ; $55af: $00
    ld l, [hl]                                    ; $55b0: $6e
    nop                                           ; $55b1: $00
    ld [hl], b                                    ; $55b2: $70
    nop                                           ; $55b3: $00
    ld [hl], d                                    ; $55b4: $72
    nop                                           ; $55b5: $00
    ld [hl], l                                    ; $55b6: $75
    nop                                           ; $55b7: $00
    ld [hl], a                                    ; $55b8: $77
    nop                                           ; $55b9: $00
    ld a, d                                       ; $55ba: $7a
    nop                                           ; $55bb: $00
    ld a, e                                       ; $55bc: $7b
    nop                                           ; $55bd: $00
    ld a, [hl]                                    ; $55be: $7e
    nop                                           ; $55bf: $00
    add b                                         ; $55c0: $80
    nop                                           ; $55c1: $00
    add e                                         ; $55c2: $83
    nop                                           ; $55c3: $00
    add h                                         ; $55c4: $84
    nop                                           ; $55c5: $00
    add [hl]                                      ; $55c6: $86
    nop                                           ; $55c7: $00
    adc c                                         ; $55c8: $89
    nop                                           ; $55c9: $00
    adc d                                         ; $55ca: $8a
    nop                                           ; $55cb: $00
    adc h                                         ; $55cc: $8c
    nop                                           ; $55cd: $00
    adc a                                         ; $55ce: $8f
    nop                                           ; $55cf: $00
    sub b                                         ; $55d0: $90
    nop                                           ; $55d1: $00
    sub d                                         ; $55d2: $92
    nop                                           ; $55d3: $00
    sub h                                         ; $55d4: $94
    nop                                           ; $55d5: $00
    sub l                                         ; $55d6: $95
    nop                                           ; $55d7: $00
    sbc b                                         ; $55d8: $98
    nop                                           ; $55d9: $00
    sbc c                                         ; $55da: $99
    nop                                           ; $55db: $00
    sbc e                                         ; $55dc: $9b
    nop                                           ; $55dd: $00
    sbc l                                         ; $55de: $9d
    nop                                           ; $55df: $00
    sbc a                                         ; $55e0: $9f
    nop                                           ; $55e1: $00
    and c                                         ; $55e2: $a1
    nop                                           ; $55e3: $00
    and d                                         ; $55e4: $a2
    nop                                           ; $55e5: $00
    and h                                         ; $55e6: $a4
    nop                                           ; $55e7: $00
    and [hl]                                      ; $55e8: $a6
    nop                                           ; $55e9: $00
    xor b                                         ; $55ea: $a8
    nop                                           ; $55eb: $00
    xor d                                         ; $55ec: $aa
    nop                                           ; $55ed: $00
    xor e                                         ; $55ee: $ab
    nop                                           ; $55ef: $00
    xor l                                         ; $55f0: $ad
    nop                                           ; $55f1: $00
    xor [hl]                                      ; $55f2: $ae
    nop                                           ; $55f3: $00
    or c                                          ; $55f4: $b1
    nop                                           ; $55f5: $00
    or e                                          ; $55f6: $b3
    nop                                           ; $55f7: $00
    or e                                          ; $55f8: $b3
    nop                                           ; $55f9: $00
    or [hl]                                       ; $55fa: $b6
    nop                                           ; $55fb: $00
    or a                                          ; $55fc: $b7
    nop                                           ; $55fd: $00
    cp c                                          ; $55fe: $b9
    nop                                           ; $55ff: $00
    cp e                                          ; $5600: $bb
    nop                                           ; $5601: $00
    cp h                                          ; $5602: $bc
    nop                                           ; $5603: $00
    cp [hl]                                       ; $5604: $be
    nop                                           ; $5605: $00
    cp a                                          ; $5606: $bf
    nop                                           ; $5607: $00
    pop bc                                        ; $5608: $c1
    nop                                           ; $5609: $00
    jp $c400                                      ; $560a: $c3 $00 $c4


    nop                                           ; $560d: $00
    add $00                                       ; $560e: $c6 $00
    ret z                                         ; $5610: $c8

    nop                                           ; $5611: $00
    ret                                           ; $5612: $c9


    nop                                           ; $5613: $00
    rlc b                                         ; $5614: $cb $00
    call z, $ce00                                 ; $5616: $cc $00 $ce
    nop                                           ; $5619: $00
    ret nc                                        ; $561a: $d0

    nop                                           ; $561b: $00
    pop de                                        ; $561c: $d1
    nop                                           ; $561d: $00
    db $d3                                        ; $561e: $d3
    nop                                           ; $561f: $00
    call nc, $d600                                ; $5620: $d4 $00 $d6
    nop                                           ; $5623: $00
    ret c                                         ; $5624: $d8

    nop                                           ; $5625: $00
    reti                                          ; $5626: $d9


    nop                                           ; $5627: $00
    jp c, $dc00                                   ; $5628: $da $00 $dc

    nop                                           ; $562b: $00
    sbc $00                                       ; $562c: $de $00
    ldh [rP1], a                                  ; $562e: $e0 $00
    pop hl                                        ; $5630: $e1
    nop                                           ; $5631: $00
    db $e3                                        ; $5632: $e3
    nop                                           ; $5633: $00
    db $e4                                        ; $5634: $e4
    nop                                           ; $5635: $00
    push hl                                       ; $5636: $e5
    nop                                           ; $5637: $00
    rst $20                                       ; $5638: $e7
    nop                                           ; $5639: $00
    jp hl                                         ; $563a: $e9


    nop                                           ; $563b: $00
    ld [$ec00], a                                 ; $563c: $ea $00 $ec
    nop                                           ; $563f: $00
    xor $00                                       ; $5640: $ee $00
    rst $28                                       ; $5642: $ef
    nop                                           ; $5643: $00
    pop af                                        ; $5644: $f1
    nop                                           ; $5645: $00
    di                                            ; $5646: $f3
    nop                                           ; $5647: $00
    db $f4                                        ; $5648: $f4
    nop                                           ; $5649: $00
    push af                                       ; $564a: $f5
    nop                                           ; $564b: $00
    rst $30                                       ; $564c: $f7
    nop                                           ; $564d: $00
    ld hl, sp+$00                                 ; $564e: $f8 $00
    ld a, [$fb00]                                 ; $5650: $fa $00 $fb
    nop                                           ; $5653: $00
    db $fd                                        ; $5654: $fd
    nop                                           ; $5655: $00
    cp $00                                        ; $5656: $fe $00
    nop                                           ; $5658: $00
    ld bc, $0101                                  ; $5659: $01 $01 $01
    inc bc                                        ; $565c: $03
    ld bc, HeaderLogo                             ; $565d: $01 $04 $01
    ld b, $01                                     ; $5660: $06 $01
    rlca                                          ; $5662: $07
    ld bc, $0109                                  ; $5663: $01 $09 $01
    ld a, [bc]                                    ; $5666: $0a
    ld bc, $010c                                  ; $5667: $01 $0c $01
    dec c                                         ; $566a: $0d
    ld bc, $010f                                  ; $566b: $01 $0f $01
    ld de, $1201                                  ; $566e: $11 $01 $12
    ld bc, $0113                                  ; $5671: $01 $13 $01
    dec d                                         ; $5674: $15
    ld bc, $0117                                  ; $5675: $01 $17 $01
    jr jr_039_567b                                ; $5678: $18 $01

    add hl, de                                    ; $567a: $19

jr_039_567b:
    ld bc, $011b                                  ; $567b: $01 $1b $01
    inc e                                         ; $567e: $1c
    ld bc, $011d                                  ; $567f: $01 $1d $01
    rra                                           ; $5682: $1f
    ld bc, $0121                                  ; $5683: $01 $21 $01
    ld [hl+], a                                   ; $5686: $22
    ld bc, $0124                                  ; $5687: $01 $24 $01
    dec h                                         ; $568a: $25
    ld bc, $0127                                  ; $568b: $01 $27 $01
    jr z, jr_039_5691                             ; $568e: $28 $01

    ld a, [hl+]                                   ; $5690: $2a

jr_039_5691:
    ld bc, $012b                                  ; $5691: $01 $2b $01
    inc l                                         ; $5694: $2c
    ld bc, $012e                                  ; $5695: $01 $2e $01
    cpl                                           ; $5698: $2f
    ld bc, $0131                                  ; $5699: $01 $31 $01
    inc sp                                        ; $569c: $33
    ld bc, $0133                                  ; $569d: $01 $33 $01
    dec [hl]                                      ; $56a0: $35
    ld bc, $0136                                  ; $56a1: $01 $36 $01
    jr c, jr_039_56a7                             ; $56a4: $38 $01

    ld a, [hl-]                                   ; $56a6: $3a

jr_039_56a7:
    ld bc, $013b                                  ; $56a7: $01 $3b $01
    dec a                                         ; $56aa: $3d
    ld bc, $013e                                  ; $56ab: $01 $3e $01
    ld b, b                                       ; $56ae: $40
    ld bc, $0141                                  ; $56af: $01 $41 $01
    ld b, e                                       ; $56b2: $43
    ld bc, HeaderNewLicenseeCode                  ; $56b3: $01 $44 $01
    ld b, l                                       ; $56b6: $45
    ld bc, HeaderCartridgeType                    ; $56b7: $01 $47 $01
    ld c, c                                       ; $56ba: $49
    ld bc, HeaderDestinationCode                  ; $56bb: $01 $4a $01
    ld c, e                                       ; $56be: $4b
    ld bc, HeaderComplementCheck                  ; $56bf: $01 $4d $01
    ld c, [hl]                                    ; $56c2: $4e
    ld bc, $0150                                  ; $56c3: $01 $50 $01
    ld d, d                                       ; $56c6: $52
    ld bc, $0153                                  ; $56c7: $01 $53 $01
    ld d, l                                       ; $56ca: $55
    ld bc, $0156                                  ; $56cb: $01 $56 $01
    ld d, a                                       ; $56ce: $57
    ld bc, $0159                                  ; $56cf: $01 $59 $01
    ld e, d                                       ; $56d2: $5a
    ld bc, $015b                                  ; $56d3: $01 $5b $01
    ld e, l                                       ; $56d6: $5d
    ld bc, $015f                                  ; $56d7: $01 $5f $01
    ld h, b                                       ; $56da: $60
    ld bc, $0162                                  ; $56db: $01 $62 $01
    ld h, e                                       ; $56de: $63
    ld bc, $0164                                  ; $56df: $01 $64 $01
    ld h, l                                       ; $56e2: $65
    ld bc, $0167                                  ; $56e3: $01 $67 $01
    ld l, c                                       ; $56e6: $69
    ld bc, $016a                                  ; $56e7: $01 $6a $01
    ld l, h                                       ; $56ea: $6c
    ld bc, $016d                                  ; $56eb: $01 $6d $01
    ld l, a                                       ; $56ee: $6f
    ld bc, $0170                                  ; $56ef: $01 $70 $01
    ld [hl], d                                    ; $56f2: $72
    ld bc, $0173                                  ; $56f3: $01 $73 $01
    ld [hl], l                                    ; $56f6: $75
    ld bc, $0176                                  ; $56f7: $01 $76 $01
    ld [hl], a                                    ; $56fa: $77
    ld bc, $0179                                  ; $56fb: $01 $79 $01
    ld a, e                                       ; $56fe: $7b
    ld bc, $017c                                  ; $56ff: $01 $7c $01
    ld a, l                                       ; $5702: $7d
    ld bc, $017f                                  ; $5703: $01 $7f $01
    add c                                         ; $5706: $81
    ld bc, $0182                                  ; $5707: $01 $82 $01
    add h                                         ; $570a: $84
    ld bc, $0185                                  ; $570b: $01 $85 $01
    add a                                         ; $570e: $87
    ld bc, $0187                                  ; $570f: $01 $87 $01
    adc c                                         ; $5712: $89
    ld bc, $018b                                  ; $5713: $01 $8b $01
    adc h                                         ; $5716: $8c
    ld bc, $018d                                  ; $5717: $01 $8d $01
    adc a                                         ; $571a: $8f
    ld bc, $0191                                  ; $571b: $01 $91 $01
    sub d                                         ; $571e: $92
    ld bc, $0194                                  ; $571f: $01 $94 $01
    sub l                                         ; $5722: $95
    ld bc, $0197                                  ; $5723: $01 $97 $01
    sbc b                                         ; $5726: $98
    ld bc, $019a                                  ; $5727: $01 $9a $01
    sbc e                                         ; $572a: $9b
    ld bc, $019d                                  ; $572b: $01 $9d $01
    sbc [hl]                                      ; $572e: $9e
    ld bc, $019f                                  ; $572f: $01 $9f $01
    and c                                         ; $5732: $a1
    ld bc, $01a2                                  ; $5733: $01 $a2 $01
    and e                                         ; $5736: $a3
    ld bc, $01a5                                  ; $5737: $01 $a5 $01
    and [hl]                                      ; $573a: $a6
    ld bc, $01a8                                  ; $573b: $01 $a8 $01
    xor d                                         ; $573e: $aa
    ld bc, $01ab                                  ; $573f: $01 $ab $01
    xor l                                         ; $5742: $ad
    ld bc, $01ae                                  ; $5743: $01 $ae $01
    or b                                          ; $5746: $b0
    ld bc, $01b1                                  ; $5747: $01 $b1 $01
    or e                                          ; $574a: $b3
    ld bc, $01b4                                  ; $574b: $01 $b4 $01
    or [hl]                                       ; $574e: $b6
    ld bc, $01b7                                  ; $574f: $01 $b7 $01
    cp b                                          ; $5752: $b8
    ld bc, $01ba                                  ; $5753: $01 $ba $01
    cp e                                          ; $5756: $bb
    ld bc, $01bd                                  ; $5757: $01 $bd $01
    cp [hl]                                       ; $575a: $be
    ld bc, $01c0                                  ; $575b: $01 $c0 $01
    jp nz, $c301                                  ; $575e: $c2 $01 $c3

    ld bc, $01c4                                  ; $5761: $01 $c4 $01
    add $01                                       ; $5764: $c6 $01
    ret z                                         ; $5766: $c8

    ld bc, $01c9                                  ; $5767: $01 $c9 $01
    jp z, $cc01                                   ; $576a: $ca $01 $cc

    ld bc, $01cd                                  ; $576d: $01 $cd $01
    rst $08                                       ; $5770: $cf
    ld bc, $01d0                                  ; $5771: $01 $d0 $01
    jp nc, $d301                                  ; $5774: $d2 $01 $d3

    ld bc, $01d4                                  ; $5777: $01 $d4 $01
    sub $01                                       ; $577a: $d6 $01
    ret c                                         ; $577c: $d8

    ld bc, $01d9                                  ; $577d: $01 $d9 $01
    dec b                                         ; $5780: $05
    nop                                           ; $5781: $00
    rrca                                          ; $5782: $0f
    nop                                           ; $5783: $00
    daa                                           ; $5784: $27
    nop                                           ; $5785: $00
    ld l, $00                                     ; $5786: $2e $00
    inc [hl]                                      ; $5788: $34
    nop                                           ; $5789: $00
    add hl, sp                                    ; $578a: $39
    nop                                           ; $578b: $00
    ld a, $00                                     ; $578c: $3e $00
    ld b, d                                       ; $578e: $42
    nop                                           ; $578f: $00
    ld c, c                                       ; $5790: $49
    nop                                           ; $5791: $00
    ld c, e                                       ; $5792: $4b
    nop                                           ; $5793: $00
    ld d, b                                       ; $5794: $50
    nop                                           ; $5795: $00
    ld d, h                                       ; $5796: $54
    nop                                           ; $5797: $00
    ld d, [hl]                                    ; $5798: $56
    nop                                           ; $5799: $00
    ld e, d                                       ; $579a: $5a
    nop                                           ; $579b: $00
    ld e, l                                       ; $579c: $5d
    nop                                           ; $579d: $00
    ld h, b                                       ; $579e: $60
    nop                                           ; $579f: $00
    ld h, d                                       ; $57a0: $62
    nop                                           ; $57a1: $00
    ld h, l                                       ; $57a2: $65
    nop                                           ; $57a3: $00
    ld l, b                                       ; $57a4: $68
    nop                                           ; $57a5: $00
    ld l, d                                       ; $57a6: $6a
    nop                                           ; $57a7: $00
    ld l, l                                       ; $57a8: $6d
    nop                                           ; $57a9: $00
    ld l, a                                       ; $57aa: $6f
    nop                                           ; $57ab: $00
    ld [hl], c                                    ; $57ac: $71
    nop                                           ; $57ad: $00
    ld [hl], h                                    ; $57ae: $74
    nop                                           ; $57af: $00
    halt                                          ; $57b0: $76
    nop                                           ; $57b1: $00
    ld a, b                                       ; $57b2: $78
    nop                                           ; $57b3: $00
    ld a, e                                       ; $57b4: $7b
    nop                                           ; $57b5: $00
    ld a, l                                       ; $57b6: $7d
    nop                                           ; $57b7: $00
    ld a, a                                       ; $57b8: $7f
    nop                                           ; $57b9: $00
    add c                                         ; $57ba: $81
    nop                                           ; $57bb: $00
    add e                                         ; $57bc: $83
    nop                                           ; $57bd: $00
    add [hl]                                      ; $57be: $86
    nop                                           ; $57bf: $00
    adc b                                         ; $57c0: $88
    nop                                           ; $57c1: $00
    adc c                                         ; $57c2: $89
    nop                                           ; $57c3: $00
    adc h                                         ; $57c4: $8c
    nop                                           ; $57c5: $00
    adc [hl]                                      ; $57c6: $8e
    nop                                           ; $57c7: $00
    sub b                                         ; $57c8: $90
    nop                                           ; $57c9: $00
    sub d                                         ; $57ca: $92
    nop                                           ; $57cb: $00
    sub e                                         ; $57cc: $93
    nop                                           ; $57cd: $00
    sub l                                         ; $57ce: $95
    nop                                           ; $57cf: $00
    sbc b                                         ; $57d0: $98
    nop                                           ; $57d1: $00
    sbc d                                         ; $57d2: $9a
    nop                                           ; $57d3: $00
    sbc e                                         ; $57d4: $9b
    nop                                           ; $57d5: $00
    sbc l                                         ; $57d6: $9d
    nop                                           ; $57d7: $00
    sbc a                                         ; $57d8: $9f
    nop                                           ; $57d9: $00
    and c                                         ; $57da: $a1
    nop                                           ; $57db: $00
    and e                                         ; $57dc: $a3
    nop                                           ; $57dd: $00
    and l                                         ; $57de: $a5
    nop                                           ; $57df: $00
    and [hl]                                      ; $57e0: $a6
    nop                                           ; $57e1: $00
    xor b                                         ; $57e2: $a8
    nop                                           ; $57e3: $00
    xor d                                         ; $57e4: $aa
    nop                                           ; $57e5: $00
    xor h                                         ; $57e6: $ac
    nop                                           ; $57e7: $00
    xor l                                         ; $57e8: $ad
    nop                                           ; $57e9: $00
    xor a                                         ; $57ea: $af
    nop                                           ; $57eb: $00
    or c                                          ; $57ec: $b1
    nop                                           ; $57ed: $00
    or e                                          ; $57ee: $b3
    nop                                           ; $57ef: $00
    or l                                          ; $57f0: $b5
    nop                                           ; $57f1: $00
    or [hl]                                       ; $57f2: $b6
    nop                                           ; $57f3: $00
    cp b                                          ; $57f4: $b8
    nop                                           ; $57f5: $00
    cp d                                          ; $57f6: $ba
    nop                                           ; $57f7: $00
    cp h                                          ; $57f8: $bc
    nop                                           ; $57f9: $00
    cp [hl]                                       ; $57fa: $be
    nop                                           ; $57fb: $00
    cp a                                          ; $57fc: $bf
    nop                                           ; $57fd: $00
    pop bc                                        ; $57fe: $c1
    nop                                           ; $57ff: $00
    jp $c500                                      ; $5800: $c3 $00 $c5


    nop                                           ; $5803: $00
    rst $00                                       ; $5804: $c7
    nop                                           ; $5805: $00
    ret z                                         ; $5806: $c8

    nop                                           ; $5807: $00
    jp z, $cc00                                   ; $5808: $ca $00 $cc

    nop                                           ; $580b: $00
    adc $00                                       ; $580c: $ce $00
    rst $08                                       ; $580e: $cf
    nop                                           ; $580f: $00
    ret nc                                        ; $5810: $d0

    nop                                           ; $5811: $00
    db $d3                                        ; $5812: $d3
    nop                                           ; $5813: $00
    call nc, $d600                                ; $5814: $d4 $00 $d6
    nop                                           ; $5817: $00
    rst $10                                       ; $5818: $d7
    nop                                           ; $5819: $00
    reti                                          ; $581a: $d9


    nop                                           ; $581b: $00
    db $db                                        ; $581c: $db
    nop                                           ; $581d: $00
    db $dd                                        ; $581e: $dd
    nop                                           ; $581f: $00
    rst $18                                       ; $5820: $df
    nop                                           ; $5821: $00
    ldh [rP1], a                                  ; $5822: $e0 $00
    ld [c], a                                     ; $5824: $e2
    nop                                           ; $5825: $00
    db $e4                                        ; $5826: $e4
    nop                                           ; $5827: $00
    push hl                                       ; $5828: $e5
    nop                                           ; $5829: $00
    rst $20                                       ; $582a: $e7
    nop                                           ; $582b: $00
    jp hl                                         ; $582c: $e9


    nop                                           ; $582d: $00
    ld [$ec00], a                                 ; $582e: $ea $00 $ec
    nop                                           ; $5831: $00
    xor $00                                       ; $5832: $ee $00
    rst $28                                       ; $5834: $ef
    nop                                           ; $5835: $00
    pop af                                        ; $5836: $f1
    nop                                           ; $5837: $00
    di                                            ; $5838: $f3
    nop                                           ; $5839: $00
    push af                                       ; $583a: $f5
    nop                                           ; $583b: $00
    or $00                                        ; $583c: $f6 $00
    ld hl, sp+$00                                 ; $583e: $f8 $00
    ld sp, hl                                     ; $5840: $f9
    nop                                           ; $5841: $00
    ei                                            ; $5842: $fb
    nop                                           ; $5843: $00
    db $fd                                        ; $5844: $fd
    nop                                           ; $5845: $00
    cp $00                                        ; $5846: $fe $00
    nop                                           ; $5848: $00
    ld bc, $0101                                  ; $5849: $01 $01 $01
    inc bc                                        ; $584c: $03
    ld bc, HeaderLogo                             ; $584d: $01 $04 $01
    ld b, $01                                     ; $5850: $06 $01
    ld [$0a01], sp                                ; $5852: $08 $01 $0a
    ld bc, $010c                                  ; $5855: $01 $0c $01
    dec c                                         ; $5858: $0d
    ld bc, $010f                                  ; $5859: $01 $0f $01
    db $10                                        ; $585c: $10
    ld bc, $0112                                  ; $585d: $01 $12 $01
    inc d                                         ; $5860: $14
    ld bc, $0115                                  ; $5861: $01 $15 $01
    rla                                           ; $5864: $17
    ld bc, $0118                                  ; $5865: $01 $18 $01
    ld a, [de]                                    ; $5868: $1a
    ld bc, $011c                                  ; $5869: $01 $1c $01
    ld e, $01                                     ; $586c: $1e $01
    rra                                           ; $586e: $1f
    ld bc, $0121                                  ; $586f: $01 $21 $01
    ld [hl+], a                                   ; $5872: $22
    ld bc, $0124                                  ; $5873: $01 $24 $01
    ld h, $01                                     ; $5876: $26 $01
    daa                                           ; $5878: $27
    ld bc, $0129                                  ; $5879: $01 $29 $01
    ld a, [hl+]                                   ; $587c: $2a
    ld bc, $012c                                  ; $587d: $01 $2c $01
    ld l, $01                                     ; $5880: $2e $01
    cpl                                           ; $5882: $2f
    ld bc, $0131                                  ; $5883: $01 $31 $01
    inc sp                                        ; $5886: $33
    ld bc, $0135                                  ; $5887: $01 $35 $01
    ld [hl], $01                                  ; $588a: $36 $01
    jr c, jr_039_588f                             ; $588c: $38 $01

    add hl, sp                                    ; $588e: $39

jr_039_588f:
    ld bc, $013b                                  ; $588f: $01 $3b $01
    dec a                                         ; $5892: $3d
    ld bc, $013e                                  ; $5893: $01 $3e $01
    ld b, b                                       ; $5896: $40
    ld bc, $0141                                  ; $5897: $01 $41 $01
    ld b, e                                       ; $589a: $43
    ld bc, $0145                                  ; $589b: $01 $45 $01
    ld b, [hl]                                    ; $589e: $46
    ld bc, HeaderROMSize                          ; $589f: $01 $48 $01
    ld c, d                                       ; $58a2: $4a
    ld bc, HeaderMaskROMVersion                   ; $58a3: $01 $4c $01
    ld c, l                                       ; $58a6: $4d
    ld bc, $014f                                  ; $58a7: $01 $4f $01
    ld d, b                                       ; $58aa: $50
    ld bc, $0152                                  ; $58ab: $01 $52 $01
    ld d, h                                       ; $58ae: $54
    ld bc, $0155                                  ; $58af: $01 $55 $01
    ld d, a                                       ; $58b2: $57
    ld bc, $0159                                  ; $58b3: $01 $59 $01
    ld e, d                                       ; $58b6: $5a
    ld bc, $015c                                  ; $58b7: $01 $5c $01
    ld e, l                                       ; $58ba: $5d
    ld bc, $015f                                  ; $58bb: $01 $5f $01
    ld h, c                                       ; $58be: $61
    ld bc, $0163                                  ; $58bf: $01 $63 $01
    ld h, h                                       ; $58c2: $64
    ld bc, $0166                                  ; $58c3: $01 $66 $01
    ld h, a                                       ; $58c6: $67
    ld bc, $0169                                  ; $58c7: $01 $69 $01
    ld l, e                                       ; $58ca: $6b
    ld bc, $016c                                  ; $58cb: $01 $6c $01
    ld l, [hl]                                    ; $58ce: $6e
    ld bc, $0170                                  ; $58cf: $01 $70 $01
    ld [hl], d                                    ; $58d2: $72
    ld bc, $0173                                  ; $58d3: $01 $73 $01
    ld [hl], l                                    ; $58d6: $75
    ld bc, $0176                                  ; $58d7: $01 $76 $01
    ld a, b                                       ; $58da: $78
    ld bc, $017a                                  ; $58db: $01 $7a $01
    ld a, e                                       ; $58de: $7b
    ld bc, $017d                                  ; $58df: $01 $7d $01
    ld a, a                                       ; $58e2: $7f
    ld bc, $0180                                  ; $58e3: $01 $80 $01
    add d                                         ; $58e6: $82
    ld bc, $0184                                  ; $58e7: $01 $84 $01
    add l                                         ; $58ea: $85
    ld bc, $0187                                  ; $58eb: $01 $87 $01
    adc c                                         ; $58ee: $89
    ld bc, $018a                                  ; $58ef: $01 $8a $01
    adc h                                         ; $58f2: $8c
    ld bc, $018d                                  ; $58f3: $01 $8d $01
    adc a                                         ; $58f6: $8f
    ld bc, $0191                                  ; $58f7: $01 $91 $01
    sub d                                         ; $58fa: $92
    ld bc, $0194                                  ; $58fb: $01 $94 $01
    sub [hl]                                      ; $58fe: $96
    ld bc, $0198                                  ; $58ff: $01 $98 $01
    sbc c                                         ; $5902: $99
    ld bc, $019b                                  ; $5903: $01 $9b $01
    sbc h                                         ; $5906: $9c
    ld bc, $019e                                  ; $5907: $01 $9e $01
    and b                                         ; $590a: $a0
    ld bc, $01a1                                  ; $590b: $01 $a1 $01
    and e                                         ; $590e: $a3
    ld bc, $01a5                                  ; $590f: $01 $a5 $01
    and a                                         ; $5912: $a7
    ld bc, $01a8                                  ; $5913: $01 $a8 $01
    xor d                                         ; $5916: $aa
    ld bc, $01ac                                  ; $5917: $01 $ac $01
    xor l                                         ; $591a: $ad
    ld bc, $01af                                  ; $591b: $01 $af $01
    or b                                          ; $591e: $b0
    ld bc, $01b2                                  ; $591f: $01 $b2 $01
    or h                                          ; $5922: $b4
    ld bc, $01b5                                  ; $5923: $01 $b5 $01
    or a                                          ; $5926: $b7
    ld bc, $01b9                                  ; $5927: $01 $b9 $01
    cp d                                          ; $592a: $ba
    ld bc, $01bc                                  ; $592b: $01 $bc $01
    cp [hl]                                       ; $592e: $be
    ld bc, $01c0                                  ; $592f: $01 $c0 $01
    pop bc                                        ; $5932: $c1
    ld bc, $01c3                                  ; $5933: $01 $c3 $01
    call nz, $c601                                ; $5936: $c4 $01 $c6
    ld bc, $01c8                                  ; $5939: $01 $c8 $01
    ret                                           ; $593c: $c9


    ld bc, $01cb                                  ; $593d: $01 $cb $01
    call $cf01                                    ; $5940: $cd $01 $cf
    ld bc, $01d0                                  ; $5943: $01 $d0 $01
    jp nc, $d401                                  ; $5946: $d2 $01 $d4

    ld bc, $01d5                                  ; $5949: $01 $d5 $01
    rst $10                                       ; $594c: $d7
    ld bc, $01d9                                  ; $594d: $01 $d9 $01
    jp c, $dc01                                   ; $5950: $da $01 $dc

    ld bc, $01de                                  ; $5953: $01 $de $01
    dec b                                         ; $5956: $05
    nop                                           ; $5957: $00
    stop                                          ; $5958: $10 $00
    ld a, [hl+]                                   ; $595a: $2a
    nop                                           ; $595b: $00
    ld sp, $3700                                  ; $595c: $31 $00 $37
    nop                                           ; $595f: $00
    inc a                                         ; $5960: $3c
    nop                                           ; $5961: $00
    ld b, c                                       ; $5962: $41
    nop                                           ; $5963: $00
    ld b, a                                       ; $5964: $47
    nop                                           ; $5965: $00
    ld c, e                                       ; $5966: $4b
    nop                                           ; $5967: $00
    ld c, [hl]                                    ; $5968: $4e
    nop                                           ; $5969: $00
    ld d, e                                       ; $596a: $53
    nop                                           ; $596b: $00
    ld d, [hl]                                    ; $596c: $56
    nop                                           ; $596d: $00
    ld e, d                                       ; $596e: $5a
    nop                                           ; $596f: $00
    ld e, l                                       ; $5970: $5d
    nop                                           ; $5971: $00
    ld h, b                                       ; $5972: $60
    nop                                           ; $5973: $00
    ld h, e                                       ; $5974: $63
    nop                                           ; $5975: $00
    ld h, [hl]                                    ; $5976: $66
    nop                                           ; $5977: $00
    ld l, c                                       ; $5978: $69
    nop                                           ; $5979: $00
    ld l, e                                       ; $597a: $6b
    nop                                           ; $597b: $00
    ld l, [hl]                                    ; $597c: $6e
    nop                                           ; $597d: $00
    ld [hl], b                                    ; $597e: $70
    nop                                           ; $597f: $00
    ld [hl], e                                    ; $5980: $73
    nop                                           ; $5981: $00
    ld [hl], l                                    ; $5982: $75
    nop                                           ; $5983: $00
    ld [hl], a                                    ; $5984: $77
    nop                                           ; $5985: $00
    ld a, d                                       ; $5986: $7a
    nop                                           ; $5987: $00
    ld a, l                                       ; $5988: $7d
    nop                                           ; $5989: $00
    ld a, a                                       ; $598a: $7f
    nop                                           ; $598b: $00
    add c                                         ; $598c: $81
    nop                                           ; $598d: $00
    add e                                         ; $598e: $83
    nop                                           ; $598f: $00
    add l                                         ; $5990: $85
    nop                                           ; $5991: $00
    adc b                                         ; $5992: $88
    nop                                           ; $5993: $00
    adc d                                         ; $5994: $8a
    nop                                           ; $5995: $00
    adc h                                         ; $5996: $8c
    nop                                           ; $5997: $00
    adc [hl]                                      ; $5998: $8e
    nop                                           ; $5999: $00
    sub b                                         ; $599a: $90
    nop                                           ; $599b: $00
    sub d                                         ; $599c: $92
    nop                                           ; $599d: $00
    sub h                                         ; $599e: $94
    nop                                           ; $599f: $00
    sub [hl]                                      ; $59a0: $96
    nop                                           ; $59a1: $00
    sbc b                                         ; $59a2: $98
    nop                                           ; $59a3: $00
    sbc d                                         ; $59a4: $9a
    nop                                           ; $59a5: $00
    sbc l                                         ; $59a6: $9d
    nop                                           ; $59a7: $00
    sbc [hl]                                      ; $59a8: $9e
    nop                                           ; $59a9: $00
    and b                                         ; $59aa: $a0
    nop                                           ; $59ab: $00
    and e                                         ; $59ac: $a3
    nop                                           ; $59ad: $00
    and l                                         ; $59ae: $a5
    nop                                           ; $59af: $00
    and a                                         ; $59b0: $a7
    nop                                           ; $59b1: $00
    xor c                                         ; $59b2: $a9
    nop                                           ; $59b3: $00
    xor d                                         ; $59b4: $aa
    nop                                           ; $59b5: $00
    xor h                                         ; $59b6: $ac
    nop                                           ; $59b7: $00
    xor a                                         ; $59b8: $af
    nop                                           ; $59b9: $00
    or b                                          ; $59ba: $b0
    nop                                           ; $59bb: $00
    or d                                          ; $59bc: $b2
    nop                                           ; $59bd: $00
    or h                                          ; $59be: $b4
    nop                                           ; $59bf: $00
    or [hl]                                       ; $59c0: $b6
    nop                                           ; $59c1: $00
    or a                                          ; $59c2: $b7
    nop                                           ; $59c3: $00
    cp d                                          ; $59c4: $ba
    nop                                           ; $59c5: $00
    cp h                                          ; $59c6: $bc
    nop                                           ; $59c7: $00
    cp [hl]                                       ; $59c8: $be
    nop                                           ; $59c9: $00
    ret nz                                        ; $59ca: $c0

    nop                                           ; $59cb: $00
    pop bc                                        ; $59cc: $c1
    nop                                           ; $59cd: $00
    jp $c500                                      ; $59ce: $c3 $00 $c5


    nop                                           ; $59d1: $00
    rst $00                                       ; $59d2: $c7
    nop                                           ; $59d3: $00
    ret                                           ; $59d4: $c9


    nop                                           ; $59d5: $00
    rlc b                                         ; $59d6: $cb $00
    call z, $cf00                                 ; $59d8: $cc $00 $cf
    nop                                           ; $59db: $00
    ret nc                                        ; $59dc: $d0

    nop                                           ; $59dd: $00
    jp nc, $d400                                  ; $59de: $d2 $00 $d4

    nop                                           ; $59e1: $00
    sub $00                                       ; $59e2: $d6 $00
    ret c                                         ; $59e4: $d8

    nop                                           ; $59e5: $00
    reti                                          ; $59e6: $d9


    nop                                           ; $59e7: $00
    call c, $dd00                                 ; $59e8: $dc $00 $dd
    nop                                           ; $59eb: $00
    rst $18                                       ; $59ec: $df
    nop                                           ; $59ed: $00
    ldh [rP1], a                                  ; $59ee: $e0 $00
    ld [c], a                                     ; $59f0: $e2
    nop                                           ; $59f1: $00
    db $e4                                        ; $59f2: $e4
    nop                                           ; $59f3: $00
    and $00                                       ; $59f4: $e6 $00
    add sp, $00                                   ; $59f6: $e8 $00
    jp hl                                         ; $59f8: $e9


    nop                                           ; $59f9: $00
    db $eb                                        ; $59fa: $eb
    nop                                           ; $59fb: $00
    xor $00                                       ; $59fc: $ee $00
    rst $28                                       ; $59fe: $ef
    nop                                           ; $59ff: $00
    pop af                                        ; $5a00: $f1
    nop                                           ; $5a01: $00
    di                                            ; $5a02: $f3
    nop                                           ; $5a03: $00
    push af                                       ; $5a04: $f5
    nop                                           ; $5a05: $00
    or $00                                        ; $5a06: $f6 $00
    ld hl, sp+$00                                 ; $5a08: $f8 $00
    ld a, [$fc00]                                 ; $5a0a: $fa $00 $fc
    nop                                           ; $5a0d: $00
    db $fd                                        ; $5a0e: $fd
    nop                                           ; $5a0f: $00
    rst $38                                       ; $5a10: $ff
    nop                                           ; $5a11: $00
    ld bc, $0301                                  ; $5a12: $01 $01 $03
    ld bc, $0105                                  ; $5a15: $01 $05 $01
    rlca                                          ; $5a18: $07
    ld bc, $0108                                  ; $5a19: $01 $08 $01
    ld a, [bc]                                    ; $5a1c: $0a
    ld bc, $010c                                  ; $5a1d: $01 $0c $01
    ld c, $01                                     ; $5a20: $0e $01
    rrca                                          ; $5a22: $0f
    ld bc, $0111                                  ; $5a23: $01 $11 $01
    inc de                                        ; $5a26: $13
    ld bc, $0114                                  ; $5a27: $01 $14 $01
    ld d, $01                                     ; $5a2a: $16 $01
    jr jr_039_5a2f                                ; $5a2c: $18 $01

    ld a, [de]                                    ; $5a2e: $1a

jr_039_5a2f:
    ld bc, $011c                                  ; $5a2f: $01 $1c $01
    ld e, $01                                     ; $5a32: $1e $01
    rra                                           ; $5a34: $1f
    ld bc, $0121                                  ; $5a35: $01 $21 $01
    inc hl                                        ; $5a38: $23
    ld bc, $0125                                  ; $5a39: $01 $25 $01
    ld h, $01                                     ; $5a3c: $26 $01
    jr z, jr_039_5a41                             ; $5a3e: $28 $01

    ld a, [hl+]                                   ; $5a40: $2a

jr_039_5a41:
    ld bc, $012c                                  ; $5a41: $01 $2c $01
    ld l, $01                                     ; $5a44: $2e $01
    cpl                                           ; $5a46: $2f
    ld bc, $0131                                  ; $5a47: $01 $31 $01
    inc sp                                        ; $5a4a: $33
    ld bc, $0135                                  ; $5a4b: $01 $35 $01
    ld [hl], $01                                  ; $5a4e: $36 $01
    jr c, jr_039_5a53                             ; $5a50: $38 $01

    ld a, [hl-]                                   ; $5a52: $3a

jr_039_5a53:
    ld bc, $013c                                  ; $5a53: $01 $3c $01
    ld a, $01                                     ; $5a56: $3e $01
    ld b, b                                       ; $5a58: $40
    ld bc, $0141                                  ; $5a59: $01 $41 $01
    ld b, e                                       ; $5a5c: $43
    ld bc, $0145                                  ; $5a5d: $01 $45 $01
    ld b, a                                       ; $5a60: $47
    ld bc, HeaderROMSize                          ; $5a61: $01 $48 $01
    ld c, d                                       ; $5a64: $4a
    ld bc, HeaderMaskROMVersion                   ; $5a65: $01 $4c $01
    ld c, l                                       ; $5a68: $4d
    ld bc, $014f                                  ; $5a69: $01 $4f $01
    ld d, c                                       ; $5a6c: $51
    ld bc, $0153                                  ; $5a6d: $01 $53 $01
    ld d, h                                       ; $5a70: $54
    ld bc, $0156                                  ; $5a71: $01 $56 $01
    ld e, b                                       ; $5a74: $58
    ld bc, $015a                                  ; $5a75: $01 $5a $01
    ld e, h                                       ; $5a78: $5c
    ld bc, $015e                                  ; $5a79: $01 $5e $01
    ld e, a                                       ; $5a7c: $5f
    ld bc, $0161                                  ; $5a7d: $01 $61 $01
    ld h, e                                       ; $5a80: $63
    ld bc, $0165                                  ; $5a81: $01 $65 $01
    ld h, a                                       ; $5a84: $67
    ld bc, $0168                                  ; $5a85: $01 $68 $01
    ld l, e                                       ; $5a88: $6b
    ld bc, $016c                                  ; $5a89: $01 $6c $01
    ld l, [hl]                                    ; $5a8c: $6e
    ld bc, $016f                                  ; $5a8d: $01 $6f $01
    ld [hl], c                                    ; $5a90: $71
    ld bc, $0173                                  ; $5a91: $01 $73 $01
    ld [hl], l                                    ; $5a94: $75
    ld bc, $0177                                  ; $5a95: $01 $77 $01
    ld a, b                                       ; $5a98: $78
    ld bc, $017a                                  ; $5a99: $01 $7a $01
    ld a, h                                       ; $5a9c: $7c
    ld bc, $017e                                  ; $5a9d: $01 $7e $01
    add b                                         ; $5aa0: $80
    ld bc, $0181                                  ; $5aa1: $01 $81 $01
    add h                                         ; $5aa4: $84
    ld bc, $0185                                  ; $5aa5: $01 $85 $01
    add a                                         ; $5aa8: $87
    ld bc, $0189                                  ; $5aa9: $01 $89 $01
    adc d                                         ; $5aac: $8a
    ld bc, $018c                                  ; $5aad: $01 $8c $01
    adc [hl]                                      ; $5ab0: $8e
    ld bc, $0190                                  ; $5ab1: $01 $90 $01
    sub d                                         ; $5ab4: $92
    ld bc, $0193                                  ; $5ab5: $01 $93 $01
    sub l                                         ; $5ab8: $95
    ld bc, $0197                                  ; $5ab9: $01 $97 $01
    sbc c                                         ; $5abc: $99
    ld bc, $019b                                  ; $5abd: $01 $9b $01
    sbc l                                         ; $5ac0: $9d
    ld bc, $019e                                  ; $5ac1: $01 $9e $01
    and b                                         ; $5ac4: $a0
    ld bc, $01a2                                  ; $5ac5: $01 $a2 $01
    and h                                         ; $5ac8: $a4
    ld bc, $01a6                                  ; $5ac9: $01 $a6 $01
    xor b                                         ; $5acc: $a8
    ld bc, $01a9                                  ; $5acd: $01 $a9 $01
    xor e                                         ; $5ad0: $ab
    ld bc, $01ad                                  ; $5ad1: $01 $ad $01
    xor a                                         ; $5ad4: $af
    ld bc, $01b0                                  ; $5ad5: $01 $b0 $01
    or d                                          ; $5ad8: $b2
    ld bc, $01b4                                  ; $5ad9: $01 $b4 $01
    or [hl]                                       ; $5adc: $b6
    ld bc, $01b8                                  ; $5add: $01 $b8 $01
    cp d                                          ; $5ae0: $ba
    ld bc, $01bb                                  ; $5ae1: $01 $bb $01
    cp l                                          ; $5ae4: $bd
    ld bc, $01bf                                  ; $5ae5: $01 $bf $01
    pop bc                                        ; $5ae8: $c1
    ld bc, $01c3                                  ; $5ae9: $01 $c3 $01
    call nz, $c601                                ; $5aec: $c4 $01 $c6
    ld bc, $01c8                                  ; $5aef: $01 $c8 $01
    jp z, $cb01                                   ; $5af2: $ca $01 $cb

    ld bc, $01cd                                  ; $5af5: $01 $cd $01
    rst $08                                       ; $5af8: $cf
    ld bc, $01d1                                  ; $5af9: $01 $d1 $01
    db $d3                                        ; $5afc: $d3
    ld bc, $01d5                                  ; $5afd: $01 $d5 $01
    rst $10                                       ; $5b00: $d7
    ld bc, $01d8                                  ; $5b01: $01 $d8 $01
    jp c, $dc01                                   ; $5b04: $da $01 $dc

    ld bc, $01de                                  ; $5b07: $01 $de $01
    inc b                                         ; $5b0a: $04
    nop                                           ; $5b0b: $00
    stop                                          ; $5b0c: $10 $00
    ld hl, $2900                                  ; $5b0e: $21 $00 $29
    nop                                           ; $5b11: $00
    jr nc, jr_039_5b14                            ; $5b12: $30 $00

jr_039_5b14:
    ld [hl], $00                                  ; $5b14: $36 $00
    inc a                                         ; $5b16: $3c
    nop                                           ; $5b17: $00
    ld b, b                                       ; $5b18: $40
    nop                                           ; $5b19: $00
    ld b, a                                       ; $5b1a: $47
    nop                                           ; $5b1b: $00
    ld c, e                                       ; $5b1c: $4b
    nop                                           ; $5b1d: $00
    ld c, a                                       ; $5b1e: $4f
    nop                                           ; $5b1f: $00
    ld d, h                                       ; $5b20: $54
    nop                                           ; $5b21: $00
    ld d, a                                       ; $5b22: $57
    nop                                           ; $5b23: $00
    ld e, e                                       ; $5b24: $5b
    nop                                           ; $5b25: $00
    ld e, a                                       ; $5b26: $5f
    nop                                           ; $5b27: $00
    ld h, d                                       ; $5b28: $62
    nop                                           ; $5b29: $00
    ld h, [hl]                                    ; $5b2a: $66
    nop                                           ; $5b2b: $00
    ld l, c                                       ; $5b2c: $69
    nop                                           ; $5b2d: $00
    ld l, h                                       ; $5b2e: $6c
    nop                                           ; $5b2f: $00
    ld l, a                                       ; $5b30: $6f
    nop                                           ; $5b31: $00
    ld [hl], e                                    ; $5b32: $73
    nop                                           ; $5b33: $00
    ld [hl], l                                    ; $5b34: $75
    nop                                           ; $5b35: $00
    ld a, b                                       ; $5b36: $78
    nop                                           ; $5b37: $00
    ld a, d                                       ; $5b38: $7a
    nop                                           ; $5b39: $00
    ld a, l                                       ; $5b3a: $7d
    nop                                           ; $5b3b: $00
    add b                                         ; $5b3c: $80
    nop                                           ; $5b3d: $00
    add e                                         ; $5b3e: $83
    nop                                           ; $5b3f: $00
    add [hl]                                      ; $5b40: $86
    nop                                           ; $5b41: $00
    adc b                                         ; $5b42: $88
    nop                                           ; $5b43: $00
    adc e                                         ; $5b44: $8b
    nop                                           ; $5b45: $00
    adc l                                         ; $5b46: $8d
    nop                                           ; $5b47: $00
    sub b                                         ; $5b48: $90
    nop                                           ; $5b49: $00
    sub e                                         ; $5b4a: $93
    nop                                           ; $5b4b: $00
    sub l                                         ; $5b4c: $95
    nop                                           ; $5b4d: $00
    sub a                                         ; $5b4e: $97
    nop                                           ; $5b4f: $00
    sbc d                                         ; $5b50: $9a
    nop                                           ; $5b51: $00
    sbc h                                         ; $5b52: $9c
    nop                                           ; $5b53: $00
    sbc a                                         ; $5b54: $9f
    nop                                           ; $5b55: $00
    and c                                         ; $5b56: $a1
    nop                                           ; $5b57: $00
    and e                                         ; $5b58: $a3
    nop                                           ; $5b59: $00
    and [hl]                                      ; $5b5a: $a6
    nop                                           ; $5b5b: $00
    xor b                                         ; $5b5c: $a8
    nop                                           ; $5b5d: $00
    xor e                                         ; $5b5e: $ab
    nop                                           ; $5b5f: $00
    xor h                                         ; $5b60: $ac
    nop                                           ; $5b61: $00
    xor a                                         ; $5b62: $af
    nop                                           ; $5b63: $00
    or c                                          ; $5b64: $b1
    nop                                           ; $5b65: $00
    or e                                          ; $5b66: $b3
    nop                                           ; $5b67: $00
    or l                                          ; $5b68: $b5
    nop                                           ; $5b69: $00
    cp b                                          ; $5b6a: $b8
    nop                                           ; $5b6b: $00
    cp d                                          ; $5b6c: $ba
    nop                                           ; $5b6d: $00
    cp h                                          ; $5b6e: $bc
    nop                                           ; $5b6f: $00
    cp [hl]                                       ; $5b70: $be
    nop                                           ; $5b71: $00
    ret nz                                        ; $5b72: $c0

    nop                                           ; $5b73: $00
    jp nz, $c400                                  ; $5b74: $c2 $00 $c4

    nop                                           ; $5b77: $00
    add $00                                       ; $5b78: $c6 $00
    ret z                                         ; $5b7a: $c8

    nop                                           ; $5b7b: $00
    rlc b                                         ; $5b7c: $cb $00
    call $cf00                                    ; $5b7e: $cd $00 $cf
    nop                                           ; $5b81: $00
    pop de                                        ; $5b82: $d1
    nop                                           ; $5b83: $00
    call nc, $d500                                ; $5b84: $d4 $00 $d5
    nop                                           ; $5b87: $00
    rst $10                                       ; $5b88: $d7
    nop                                           ; $5b89: $00
    jp c, $db00                                   ; $5b8a: $da $00 $db

    nop                                           ; $5b8d: $00
    db $dd                                        ; $5b8e: $dd
    nop                                           ; $5b8f: $00
    sbc $00                                       ; $5b90: $de $00
    pop hl                                        ; $5b92: $e1
    nop                                           ; $5b93: $00
    db $e3                                        ; $5b94: $e3
    nop                                           ; $5b95: $00
    push hl                                       ; $5b96: $e5
    nop                                           ; $5b97: $00
    and $00                                       ; $5b98: $e6 $00
    jp hl                                         ; $5b9a: $e9


    nop                                           ; $5b9b: $00
    db $eb                                        ; $5b9c: $eb
    nop                                           ; $5b9d: $00
    db $ed                                        ; $5b9e: $ed
    nop                                           ; $5b9f: $00
    rst $28                                       ; $5ba0: $ef
    nop                                           ; $5ba1: $00
    ldh a, [rP1]                                  ; $5ba2: $f0 $00
    di                                            ; $5ba4: $f3
    nop                                           ; $5ba5: $00
    db $f4                                        ; $5ba6: $f4
    nop                                           ; $5ba7: $00
    rst $30                                       ; $5ba8: $f7
    nop                                           ; $5ba9: $00
    ld hl, sp+$00                                 ; $5baa: $f8 $00
    ld a, [$fd00]                                 ; $5bac: $fa $00 $fd
    nop                                           ; $5baf: $00
    cp $00                                        ; $5bb0: $fe $00
    nop                                           ; $5bb2: $00
    ld bc, $0102                                  ; $5bb3: $01 $02 $01
    inc b                                         ; $5bb6: $04
    ld bc, $0106                                  ; $5bb7: $01 $06 $01
    ld [$0a01], sp                                ; $5bba: $08 $01 $0a
    ld bc, $010b                                  ; $5bbd: $01 $0b $01
    dec c                                         ; $5bc0: $0d
    ld bc, $010f                                  ; $5bc1: $01 $0f $01
    ld de, $1301                                  ; $5bc4: $11 $01 $13
    ld bc, $0115                                  ; $5bc7: $01 $15 $01
    ld d, $01                                     ; $5bca: $16 $01
    add hl, de                                    ; $5bcc: $19
    ld bc, $011a                                  ; $5bcd: $01 $1a $01
    inc e                                         ; $5bd0: $1c
    ld bc, $011e                                  ; $5bd1: $01 $1e $01
    rra                                           ; $5bd4: $1f
    ld bc, $0121                                  ; $5bd5: $01 $21 $01
    inc hl                                        ; $5bd8: $23
    ld bc, $0125                                  ; $5bd9: $01 $25 $01
    daa                                           ; $5bdc: $27
    ld bc, $0128                                  ; $5bdd: $01 $28 $01
    dec hl                                        ; $5be0: $2b
    ld bc, $012c                                  ; $5be1: $01 $2c $01
    ld l, $01                                     ; $5be4: $2e $01
    jr nc, jr_039_5be9                            ; $5be6: $30 $01

    ld [hl-], a                                   ; $5be8: $32

jr_039_5be9:
    ld bc, $0133                                  ; $5be9: $01 $33 $01
    ld [hl], $01                                  ; $5bec: $36 $01
    scf                                           ; $5bee: $37
    ld bc, $0139                                  ; $5bef: $01 $39 $01
    dec sp                                        ; $5bf2: $3b
    ld bc, $013d                                  ; $5bf3: $01 $3d $01
    ccf                                           ; $5bf6: $3f
    ld bc, $0140                                  ; $5bf7: $01 $40 $01
    ld b, d                                       ; $5bfa: $42
    ld bc, HeaderCGBFlag                          ; $5bfb: $01 $43 $01
    ld b, [hl]                                    ; $5bfe: $46
    ld bc, HeaderCartridgeType                    ; $5bff: $01 $47 $01
    ld c, c                                       ; $5c02: $49
    ld bc, HeaderDestinationCode                  ; $5c03: $01 $4a $01
    ld c, l                                       ; $5c06: $4d
    ld bc, HeaderGlobalChecksum                   ; $5c07: $01 $4e $01
    ld d, b                                       ; $5c0a: $50
    ld bc, $0152                                  ; $5c0b: $01 $52 $01
    ld d, h                                       ; $5c0e: $54
    ld bc, $0156                                  ; $5c0f: $01 $56 $01
    ld d, a                                       ; $5c12: $57
    ld bc, $0159                                  ; $5c13: $01 $59 $01
    ld e, e                                       ; $5c16: $5b
    ld bc, $015c                                  ; $5c17: $01 $5c $01
    ld e, a                                       ; $5c1a: $5f
    ld bc, $0160                                  ; $5c1b: $01 $60 $01
    ld h, d                                       ; $5c1e: $62
    ld bc, $0163                                  ; $5c1f: $01 $63 $01
    ld h, l                                       ; $5c22: $65
    ld bc, $0167                                  ; $5c23: $01 $67 $01
    ld l, c                                       ; $5c26: $69
    ld bc, $016b                                  ; $5c27: $01 $6b $01
    ld l, h                                       ; $5c2a: $6c
    ld bc, $016f                                  ; $5c2b: $01 $6f $01
    ld [hl], b                                    ; $5c2e: $70
    ld bc, $0172                                  ; $5c2f: $01 $72 $01
    ld [hl], e                                    ; $5c32: $73
    ld bc, $0175                                  ; $5c33: $01 $75 $01
    ld [hl], a                                    ; $5c36: $77
    ld bc, $0178                                  ; $5c37: $01 $78 $01
    ld a, e                                       ; $5c3a: $7b
    ld bc, $017c                                  ; $5c3b: $01 $7c $01
    ld a, [hl]                                    ; $5c3e: $7e
    ld bc, $017f                                  ; $5c3f: $01 $7f $01
    add d                                         ; $5c42: $82
    ld bc, $0183                                  ; $5c43: $01 $83 $01
    add l                                         ; $5c46: $85
    ld bc, $0187                                  ; $5c47: $01 $87 $01
    adc b                                         ; $5c4a: $88
    ld bc, $018a                                  ; $5c4b: $01 $8a $01
    adc h                                         ; $5c4e: $8c
    ld bc, $018e                                  ; $5c4f: $01 $8e $01
    adc a                                         ; $5c52: $8f
    ld bc, $0191                                  ; $5c53: $01 $91 $01
    sub e                                         ; $5c56: $93
    ld bc, $0194                                  ; $5c57: $01 $94 $01
    sub [hl]                                      ; $5c5a: $96
    ld bc, $0198                                  ; $5c5b: $01 $98 $01
    sbc d                                         ; $5c5e: $9a
    ld bc, $019b                                  ; $5c5f: $01 $9b $01
    sbc l                                         ; $5c62: $9d
    ld bc, $019f                                  ; $5c63: $01 $9f $01
    and b                                         ; $5c66: $a0
    ld bc, $01a3                                  ; $5c67: $01 $a3 $01
    and h                                         ; $5c6a: $a4
    ld bc, $01a6                                  ; $5c6b: $01 $a6 $01
    xor b                                         ; $5c6e: $a8
    ld bc, $01aa                                  ; $5c6f: $01 $aa $01
    xor e                                         ; $5c72: $ab
    ld bc, $01ad                                  ; $5c73: $01 $ad $01
    xor a                                         ; $5c76: $af
    ld bc, $01b0                                  ; $5c77: $01 $b0 $01
    or d                                          ; $5c7a: $b2
    ld bc, $01b4                                  ; $5c7b: $01 $b4 $01
    or l                                          ; $5c7e: $b5
    ld bc, $01b7                                  ; $5c7f: $01 $b7 $01
    cp c                                          ; $5c82: $b9
    ld bc, $01bb                                  ; $5c83: $01 $bb $01
    cp l                                          ; $5c86: $bd
    ld bc, $01be                                  ; $5c87: $01 $be $01
    ret nz                                        ; $5c8a: $c0

    ld bc, $01c1                                  ; $5c8b: $01 $c1 $01
    jp $c501                                      ; $5c8e: $c3 $01 $c5


    ld bc, $01c7                                  ; $5c91: $01 $c7 $01
    ret z                                         ; $5c94: $c8

    ld bc, $01ca                                  ; $5c95: $01 $ca $01
    call z, $ce01                                 ; $5c98: $cc $01 $ce
    ld bc, $01d0                                  ; $5c9b: $01 $d0 $01
    pop de                                        ; $5c9e: $d1
    ld bc, $01d3                                  ; $5c9f: $01 $d3 $01
    push de                                       ; $5ca2: $d5
    ld bc, $01d6                                  ; $5ca3: $01 $d6 $01
    ret c                                         ; $5ca6: $d8

    ld bc, $01da                                  ; $5ca7: $01 $da $01
    call c, $dd01                                 ; $5caa: $dc $01 $dd
    ld bc, $01df                                  ; $5cad: $01 $df $01
    inc b                                         ; $5cb0: $04
    nop                                           ; $5cb1: $00
    dec e                                         ; $5cb2: $1d
    nop                                           ; $5cb3: $00
    ld h, $00                                     ; $5cb4: $26 $00
    dec l                                         ; $5cb6: $2d
    nop                                           ; $5cb7: $00
    dec [hl]                                      ; $5cb8: $35
    nop                                           ; $5cb9: $00
    ld a, [hl-]                                   ; $5cba: $3a
    nop                                           ; $5cbb: $00
    ld b, c                                       ; $5cbc: $41
    nop                                           ; $5cbd: $00
    ld b, [hl]                                    ; $5cbe: $46
    nop                                           ; $5cbf: $00
    ld c, d                                       ; $5cc0: $4a
    nop                                           ; $5cc1: $00
    ld c, a                                       ; $5cc2: $4f
    nop                                           ; $5cc3: $00
    ld d, d                                       ; $5cc4: $52
    nop                                           ; $5cc5: $00
    ld d, a                                       ; $5cc6: $57
    nop                                           ; $5cc7: $00
    ld e, d                                       ; $5cc8: $5a
    nop                                           ; $5cc9: $00
    ld e, [hl]                                    ; $5cca: $5e
    nop                                           ; $5ccb: $00
    ld h, c                                       ; $5ccc: $61
    nop                                           ; $5ccd: $00
    ld h, l                                       ; $5cce: $65
    nop                                           ; $5ccf: $00
    ld l, b                                       ; $5cd0: $68
    nop                                           ; $5cd1: $00
    ld l, h                                       ; $5cd2: $6c
    nop                                           ; $5cd3: $00
    ld l, a                                       ; $5cd4: $6f
    nop                                           ; $5cd5: $00
    ld [hl], c                                    ; $5cd6: $71
    nop                                           ; $5cd7: $00
    ld [hl], h                                    ; $5cd8: $74
    nop                                           ; $5cd9: $00
    ld [hl], a                                    ; $5cda: $77
    nop                                           ; $5cdb: $00
    ld a, d                                       ; $5cdc: $7a
    nop                                           ; $5cdd: $00
    ld a, l                                       ; $5cde: $7d
    nop                                           ; $5cdf: $00
    add b                                         ; $5ce0: $80
    nop                                           ; $5ce1: $00
    add d                                         ; $5ce2: $82
    nop                                           ; $5ce3: $00
    add l                                         ; $5ce4: $85
    nop                                           ; $5ce5: $00
    adc b                                         ; $5ce6: $88
    nop                                           ; $5ce7: $00
    adc d                                         ; $5ce8: $8a
    nop                                           ; $5ce9: $00
    adc l                                         ; $5cea: $8d
    nop                                           ; $5ceb: $00
    sub b                                         ; $5cec: $90
    nop                                           ; $5ced: $00
    sub e                                         ; $5cee: $93
    nop                                           ; $5cef: $00
    sub l                                         ; $5cf0: $95
    nop                                           ; $5cf1: $00
    sub a                                         ; $5cf2: $97
    nop                                           ; $5cf3: $00
    sbc d                                         ; $5cf4: $9a
    nop                                           ; $5cf5: $00
    sbc h                                         ; $5cf6: $9c
    nop                                           ; $5cf7: $00
    sbc [hl]                                      ; $5cf8: $9e
    nop                                           ; $5cf9: $00
    and c                                         ; $5cfa: $a1
    nop                                           ; $5cfb: $00
    and e                                         ; $5cfc: $a3
    nop                                           ; $5cfd: $00
    and l                                         ; $5cfe: $a5
    nop                                           ; $5cff: $00
    xor b                                         ; $5d00: $a8
    nop                                           ; $5d01: $00
    xor d                                         ; $5d02: $aa
    nop                                           ; $5d03: $00
    xor l                                         ; $5d04: $ad
    nop                                           ; $5d05: $00
    xor a                                         ; $5d06: $af
    nop                                           ; $5d07: $00
    or c                                          ; $5d08: $b1
    nop                                           ; $5d09: $00
    or e                                          ; $5d0a: $b3
    nop                                           ; $5d0b: $00
    or [hl]                                       ; $5d0c: $b6
    nop                                           ; $5d0d: $00
    cp b                                          ; $5d0e: $b8
    nop                                           ; $5d0f: $00
    cp e                                          ; $5d10: $bb
    nop                                           ; $5d11: $00
    cp l                                          ; $5d12: $bd
    nop                                           ; $5d13: $00
    cp a                                          ; $5d14: $bf
    nop                                           ; $5d15: $00
    pop bc                                        ; $5d16: $c1
    nop                                           ; $5d17: $00
    jp $c500                                      ; $5d18: $c3 $00 $c5


    nop                                           ; $5d1b: $00
    rst $00                                       ; $5d1c: $c7
    nop                                           ; $5d1d: $00
    ret                                           ; $5d1e: $c9


    nop                                           ; $5d1f: $00
    call z, $cd00                                 ; $5d20: $cc $00 $cd
    nop                                           ; $5d23: $00
    ret nc                                        ; $5d24: $d0

    nop                                           ; $5d25: $00
    jp nc, $d500                                  ; $5d26: $d2 $00 $d5

    nop                                           ; $5d29: $00
    rst $10                                       ; $5d2a: $d7
    nop                                           ; $5d2b: $00
    reti                                          ; $5d2c: $d9


    nop                                           ; $5d2d: $00
    db $db                                        ; $5d2e: $db
    nop                                           ; $5d2f: $00
    db $dd                                        ; $5d30: $dd
    nop                                           ; $5d31: $00
    rst $18                                       ; $5d32: $df
    nop                                           ; $5d33: $00
    pop hl                                        ; $5d34: $e1
    nop                                           ; $5d35: $00
    db $e3                                        ; $5d36: $e3
    nop                                           ; $5d37: $00
    push hl                                       ; $5d38: $e5
    nop                                           ; $5d39: $00
    rst $20                                       ; $5d3a: $e7
    nop                                           ; $5d3b: $00
    jp hl                                         ; $5d3c: $e9


    nop                                           ; $5d3d: $00
    db $ec                                        ; $5d3e: $ec
    nop                                           ; $5d3f: $00
    db $ed                                        ; $5d40: $ed
    nop                                           ; $5d41: $00
    rst $28                                       ; $5d42: $ef
    nop                                           ; $5d43: $00
    pop af                                        ; $5d44: $f1
    nop                                           ; $5d45: $00
    db $f4                                        ; $5d46: $f4
    nop                                           ; $5d47: $00
    or $00                                        ; $5d48: $f6 $00
    rst $30                                       ; $5d4a: $f7
    nop                                           ; $5d4b: $00
    ld sp, hl                                     ; $5d4c: $f9
    nop                                           ; $5d4d: $00
    ei                                            ; $5d4e: $fb
    nop                                           ; $5d4f: $00
    cp $00                                        ; $5d50: $fe $00
    nop                                           ; $5d52: $00
    ld bc, $0101                                  ; $5d53: $01 $01 $01
    inc b                                         ; $5d56: $04
    ld bc, $0106                                  ; $5d57: $01 $06 $01
    rlca                                          ; $5d5a: $07
    ld bc, $0109                                  ; $5d5b: $01 $09 $01
    dec bc                                        ; $5d5e: $0b
    ld bc, $010d                                  ; $5d5f: $01 $0d $01
    rrca                                          ; $5d62: $0f
    ld bc, $0112                                  ; $5d63: $01 $12 $01
    inc de                                        ; $5d66: $13
    ld bc, $0115                                  ; $5d67: $01 $15 $01
    rla                                           ; $5d6a: $17
    ld bc, $0119                                  ; $5d6b: $01 $19 $01
    dec de                                        ; $5d6e: $1b
    ld bc, $011e                                  ; $5d6f: $01 $1e $01
    rra                                           ; $5d72: $1f
    ld bc, $0121                                  ; $5d73: $01 $21 $01
    inc hl                                        ; $5d76: $23
    ld bc, $0125                                  ; $5d77: $01 $25 $01
    daa                                           ; $5d7a: $27
    ld bc, $0129                                  ; $5d7b: $01 $29 $01
    dec hl                                        ; $5d7e: $2b
    ld bc, $012d                                  ; $5d7f: $01 $2d $01
    cpl                                           ; $5d82: $2f
    ld bc, $0130                                  ; $5d83: $01 $30 $01
    inc sp                                        ; $5d86: $33
    ld bc, $0135                                  ; $5d87: $01 $35 $01
    scf                                           ; $5d8a: $37
    ld bc, $0139                                  ; $5d8b: $01 $39 $01
    dec sp                                        ; $5d8e: $3b
    ld bc, $013d                                  ; $5d8f: $01 $3d $01
    ld a, $01                                     ; $5d92: $3e $01
    ld b, b                                       ; $5d94: $40
    ld bc, $0142                                  ; $5d95: $01 $42 $01
    ld b, h                                       ; $5d98: $44
    ld bc, HeaderSGBFlag                          ; $5d99: $01 $46 $01
    ld c, b                                       ; $5d9c: $48
    ld bc, HeaderDestinationCode                  ; $5d9d: $01 $4a $01
    ld c, e                                       ; $5da0: $4b
    ld bc, HeaderComplementCheck                  ; $5da1: $01 $4d $01
    ld d, b                                       ; $5da4: $50
    ld bc, $0152                                  ; $5da5: $01 $52 $01
    ld d, h                                       ; $5da8: $54
    ld bc, $0156                                  ; $5da9: $01 $56 $01
    ld e, b                                       ; $5dac: $58
    ld bc, $0159                                  ; $5dad: $01 $59 $01
    ld e, h                                       ; $5db0: $5c
    ld bc, $015d                                  ; $5db1: $01 $5d $01
    ld e, a                                       ; $5db4: $5f
    ld bc, $0161                                  ; $5db5: $01 $61 $01
    ld h, e                                       ; $5db8: $63
    ld bc, $0165                                  ; $5db9: $01 $65 $01
    ld h, [hl]                                    ; $5dbc: $66
    ld bc, $0169                                  ; $5dbd: $01 $69 $01
    ld l, e                                       ; $5dc0: $6b
    ld bc, $016c                                  ; $5dc1: $01 $6c $01
    ld l, [hl]                                    ; $5dc4: $6e
    ld bc, $0170                                  ; $5dc5: $01 $70 $01
    ld [hl], d                                    ; $5dc8: $72
    ld bc, $0174                                  ; $5dc9: $01 $74 $01
    halt                                          ; $5dcc: $76
    ld bc, $0178                                  ; $5dcd: $01 $78 $01
    ld a, c                                       ; $5dd0: $79
    ld bc, $017c                                  ; $5dd1: $01 $7c $01
    ld a, [hl]                                    ; $5dd4: $7e
    ld bc, $0180                                  ; $5dd5: $01 $80 $01
    add d                                         ; $5dd8: $82
    ld bc, $0184                                  ; $5dd9: $01 $84 $01
    add l                                         ; $5ddc: $85
    ld bc, $0187                                  ; $5ddd: $01 $87 $01
    adc d                                         ; $5de0: $8a
    ld bc, $018b                                  ; $5de1: $01 $8b $01
    adc l                                         ; $5de4: $8d
    ld bc, $018f                                  ; $5de5: $01 $8f $01
    sub c                                         ; $5de8: $91
    ld bc, $0193                                  ; $5de9: $01 $93 $01
    sub h                                         ; $5dec: $94
    ld bc, $0197                                  ; $5ded: $01 $97 $01
    sbc b                                         ; $5df0: $98
    ld bc, $019a                                  ; $5df1: $01 $9a $01
    sbc l                                         ; $5df4: $9d
    ld bc, $019f                                  ; $5df5: $01 $9f $01
    and b                                         ; $5df8: $a0
    ld bc, $01a2                                  ; $5df9: $01 $a2 $01
    and h                                         ; $5dfc: $a4
    ld bc, $01a6                                  ; $5dfd: $01 $a6 $01
    xor b                                         ; $5e00: $a8
    ld bc, $01aa                                  ; $5e01: $01 $aa $01
    xor h                                         ; $5e04: $ac
    ld bc, $01ae                                  ; $5e05: $01 $ae $01
    or b                                          ; $5e08: $b0
    ld bc, $01b2                                  ; $5e09: $01 $b2 $01
    or h                                          ; $5e0c: $b4
    ld bc, $01b5                                  ; $5e0d: $01 $b5 $01
    or a                                          ; $5e10: $b7
    ld bc, $01b9                                  ; $5e11: $01 $b9 $01
    cp e                                          ; $5e14: $bb
    ld bc, $01bd                                  ; $5e15: $01 $bd $01
    cp a                                          ; $5e18: $bf
    ld bc, $01c1                                  ; $5e19: $01 $c1 $01
    jp $c501                                      ; $5e1c: $c3 $01 $c5


    ld bc, $01c7                                  ; $5e1f: $01 $c7 $01
    ret                                           ; $5e22: $c9


    ld bc, $01cb                                  ; $5e23: $01 $cb $01
    call $cf01                                    ; $5e26: $cd $01 $cf
    ld bc, $01d0                                  ; $5e29: $01 $d0 $01
    jp nc, $d401                                  ; $5e2c: $d2 $01 $d4

    ld bc, $01d6                                  ; $5e2f: $01 $d6 $01
    ret c                                         ; $5e32: $d8

    ld bc, $01da                                  ; $5e33: $01 $da $01
    call c, $de01                                 ; $5e36: $dc $01 $de
    ld bc, $0004                                  ; $5e39: $01 $04 $00
    ld hl, $2a00                                  ; $5e3c: $21 $00 $2a
    nop                                           ; $5e3f: $00
    ld [hl-], a                                   ; $5e40: $32
    nop                                           ; $5e41: $00
    jr c, jr_039_5e44                             ; $5e42: $38 $00

jr_039_5e44:
    ld a, $00                                     ; $5e44: $3e $00
    ld b, [hl]                                    ; $5e46: $46
    nop                                           ; $5e47: $00
    ld c, d                                       ; $5e48: $4a
    nop                                           ; $5e49: $00
    ld c, a                                       ; $5e4a: $4f
    nop                                           ; $5e4b: $00
    ld d, e                                       ; $5e4c: $53
    nop                                           ; $5e4d: $00
    ld d, a                                       ; $5e4e: $57
    nop                                           ; $5e4f: $00
    ld e, e                                       ; $5e50: $5b
    nop                                           ; $5e51: $00
    ld e, a                                       ; $5e52: $5f
    nop                                           ; $5e53: $00
    ld h, d                                       ; $5e54: $62
    nop                                           ; $5e55: $00
    ld h, [hl]                                    ; $5e56: $66
    nop                                           ; $5e57: $00
    ld l, c                                       ; $5e58: $69
    nop                                           ; $5e59: $00
    ld l, h                                       ; $5e5a: $6c
    nop                                           ; $5e5b: $00
    ld l, a                                       ; $5e5c: $6f
    nop                                           ; $5e5d: $00
    ld [hl], e                                    ; $5e5e: $73
    nop                                           ; $5e5f: $00
    halt                                          ; $5e60: $76
    nop                                           ; $5e61: $00
    ld a, b                                       ; $5e62: $78
    nop                                           ; $5e63: $00
    ld a, h                                       ; $5e64: $7c
    nop                                           ; $5e65: $00
    ld a, [hl]                                    ; $5e66: $7e
    nop                                           ; $5e67: $00
    add d                                         ; $5e68: $82
    nop                                           ; $5e69: $00
    add h                                         ; $5e6a: $84
    nop                                           ; $5e6b: $00
    adc b                                         ; $5e6c: $88
    nop                                           ; $5e6d: $00
    adc d                                         ; $5e6e: $8a
    nop                                           ; $5e6f: $00
    adc l                                         ; $5e70: $8d
    nop                                           ; $5e71: $00
    sub b                                         ; $5e72: $90
    nop                                           ; $5e73: $00
    sub d                                         ; $5e74: $92
    nop                                           ; $5e75: $00
    sub h                                         ; $5e76: $94
    nop                                           ; $5e77: $00
    sub a                                         ; $5e78: $97
    nop                                           ; $5e79: $00
    sbc c                                         ; $5e7a: $99
    nop                                           ; $5e7b: $00
    sbc h                                         ; $5e7c: $9c
    nop                                           ; $5e7d: $00
    sbc a                                         ; $5e7e: $9f
    nop                                           ; $5e7f: $00
    and c                                         ; $5e80: $a1
    nop                                           ; $5e81: $00
    and h                                         ; $5e82: $a4
    nop                                           ; $5e83: $00
    and [hl]                                      ; $5e84: $a6
    nop                                           ; $5e85: $00
    xor c                                         ; $5e86: $a9
    nop                                           ; $5e87: $00
    xor e                                         ; $5e88: $ab
    nop                                           ; $5e89: $00
    xor l                                         ; $5e8a: $ad
    nop                                           ; $5e8b: $00
    or b                                          ; $5e8c: $b0
    nop                                           ; $5e8d: $00
    or d                                          ; $5e8e: $b2
    nop                                           ; $5e8f: $00
    or l                                          ; $5e90: $b5
    nop                                           ; $5e91: $00
    or a                                          ; $5e92: $b7
    nop                                           ; $5e93: $00
    cp c                                          ; $5e94: $b9
    nop                                           ; $5e95: $00
    cp e                                          ; $5e96: $bb
    nop                                           ; $5e97: $00
    cp a                                          ; $5e98: $bf
    nop                                           ; $5e99: $00
    pop bc                                        ; $5e9a: $c1
    nop                                           ; $5e9b: $00
    jp $c500                                      ; $5e9c: $c3 $00 $c5


    nop                                           ; $5e9f: $00
    rst $00                                       ; $5ea0: $c7
    nop                                           ; $5ea1: $00
    ret                                           ; $5ea2: $c9


    nop                                           ; $5ea3: $00
    rlc b                                         ; $5ea4: $cb $00
    adc $00                                       ; $5ea6: $ce $00
    ret nc                                        ; $5ea8: $d0

    nop                                           ; $5ea9: $00
    db $d3                                        ; $5eaa: $d3
    nop                                           ; $5eab: $00
    push de                                       ; $5eac: $d5
    nop                                           ; $5ead: $00
    rst $10                                       ; $5eae: $d7
    nop                                           ; $5eaf: $00
    jp c, $dc00                                   ; $5eb0: $da $00 $dc

    nop                                           ; $5eb3: $00
    sbc $00                                       ; $5eb4: $de $00
    ldh [rP1], a                                  ; $5eb6: $e0 $00
    ld [c], a                                     ; $5eb8: $e2
    nop                                           ; $5eb9: $00
    db $e4                                        ; $5eba: $e4
    nop                                           ; $5ebb: $00
    rst $20                                       ; $5ebc: $e7
    nop                                           ; $5ebd: $00
    jp hl                                         ; $5ebe: $e9


    nop                                           ; $5ebf: $00
    db $eb                                        ; $5ec0: $eb
    nop                                           ; $5ec1: $00
    db $ed                                        ; $5ec2: $ed
    nop                                           ; $5ec3: $00
    rst $28                                       ; $5ec4: $ef
    nop                                           ; $5ec5: $00
    ld a, [c]                                     ; $5ec6: $f2
    nop                                           ; $5ec7: $00
    db $f4                                        ; $5ec8: $f4
    nop                                           ; $5ec9: $00
    or $00                                        ; $5eca: $f6 $00
    ld hl, sp+$00                                 ; $5ecc: $f8 $00
    ld a, [$fd00]                                 ; $5ece: $fa $00 $fd
    nop                                           ; $5ed1: $00
    cp $00                                        ; $5ed2: $fe $00
    ld bc, $0301                                  ; $5ed4: $01 $01 $03
    ld bc, $0105                                  ; $5ed7: $01 $05 $01
    rlca                                          ; $5eda: $07
    ld bc, $0109                                  ; $5edb: $01 $09 $01
    inc c                                         ; $5ede: $0c
    ld bc, $010d                                  ; $5edf: $01 $0d $01
    db $10                                        ; $5ee2: $10
    ld bc, $0112                                  ; $5ee3: $01 $12 $01
    inc d                                         ; $5ee6: $14
    ld bc, $0116                                  ; $5ee7: $01 $16 $01
    jr jr_039_5eed                                ; $5eea: $18 $01

    ld a, [de]                                    ; $5eec: $1a

jr_039_5eed:
    ld bc, $011c                                  ; $5eed: $01 $1c $01
    ld e, $01                                     ; $5ef0: $1e $01
    jr nz, jr_039_5ef5                            ; $5ef2: $20 $01

    inc hl                                        ; $5ef4: $23

jr_039_5ef5:
    ld bc, $0125                                  ; $5ef5: $01 $25 $01
    daa                                           ; $5ef8: $27
    ld bc, $0129                                  ; $5ef9: $01 $29 $01
    dec hl                                        ; $5efc: $2b
    ld bc, $012e                                  ; $5efd: $01 $2e $01
    cpl                                           ; $5f00: $2f
    ld bc, $0131                                  ; $5f01: $01 $31 $01
    inc sp                                        ; $5f04: $33
    ld bc, $0136                                  ; $5f05: $01 $36 $01
    jr c, jr_039_5f0b                             ; $5f08: $38 $01

    ld a, [hl-]                                   ; $5f0a: $3a

jr_039_5f0b:
    ld bc, $013c                                  ; $5f0b: $01 $3c $01
    ld a, $01                                     ; $5f0e: $3e $01
    ld b, b                                       ; $5f10: $40
    ld bc, $0142                                  ; $5f11: $01 $42 $01
    ld b, h                                       ; $5f14: $44
    ld bc, HeaderCartridgeType                    ; $5f15: $01 $47 $01
    ld c, c                                       ; $5f18: $49
    ld bc, HeaderOldLicenseeCode                  ; $5f19: $01 $4b $01
    ld c, h                                       ; $5f1c: $4c
    ld bc, $014f                                  ; $5f1d: $01 $4f $01
    ld d, c                                       ; $5f20: $51
    ld bc, $0153                                  ; $5f21: $01 $53 $01
    ld d, l                                       ; $5f24: $55
    ld bc, $0158                                  ; $5f25: $01 $58 $01
    ld e, c                                       ; $5f28: $59
    ld bc, $015c                                  ; $5f29: $01 $5c $01
    ld e, [hl]                                    ; $5f2c: $5e
    ld bc, $0160                                  ; $5f2d: $01 $60 $01
    ld h, d                                       ; $5f30: $62
    ld bc, $0164                                  ; $5f31: $01 $64 $01
    ld h, [hl]                                    ; $5f34: $66
    ld bc, $0168                                  ; $5f35: $01 $68 $01
    ld l, d                                       ; $5f38: $6a
    ld bc, $016c                                  ; $5f39: $01 $6c $01
    ld l, [hl]                                    ; $5f3c: $6e
    ld bc, $0170                                  ; $5f3d: $01 $70 $01
    ld [hl], e                                    ; $5f40: $73
    ld bc, $0175                                  ; $5f41: $01 $75 $01
    ld [hl], a                                    ; $5f44: $77
    ld bc, $0179                                  ; $5f45: $01 $79 $01
    ld a, e                                       ; $5f48: $7b
    ld bc, $017d                                  ; $5f49: $01 $7d $01
    add b                                         ; $5f4c: $80
    ld bc, $0182                                  ; $5f4d: $01 $82 $01
    add e                                         ; $5f50: $83
    ld bc, $0186                                  ; $5f51: $01 $86 $01
    adc b                                         ; $5f54: $88
    ld bc, $018a                                  ; $5f55: $01 $8a $01
    adc h                                         ; $5f58: $8c
    ld bc, $018f                                  ; $5f59: $01 $8f $01
    sub b                                         ; $5f5c: $90
    ld bc, $0193                                  ; $5f5d: $01 $93 $01
    sub l                                         ; $5f60: $95
    ld bc, $0197                                  ; $5f61: $01 $97 $01
    sbc c                                         ; $5f64: $99
    ld bc, $019b                                  ; $5f65: $01 $9b $01
    sbc l                                         ; $5f68: $9d
    ld bc, $019f                                  ; $5f69: $01 $9f $01
    and c                                         ; $5f6c: $a1
    ld bc, $01a4                                  ; $5f6d: $01 $a4 $01
    and l                                         ; $5f70: $a5
    ld bc, $01a8                                  ; $5f71: $01 $a8 $01
    xor d                                         ; $5f74: $aa
    ld bc, $01ac                                  ; $5f75: $01 $ac $01
    xor [hl]                                      ; $5f78: $ae
    ld bc, $01b0                                  ; $5f79: $01 $b0 $01
    or d                                          ; $5f7c: $b2
    ld bc, $01b4                                  ; $5f7d: $01 $b4 $01
    or [hl]                                       ; $5f80: $b6
    ld bc, $01b9                                  ; $5f81: $01 $b9 $01
    cp e                                          ; $5f84: $bb
    ld bc, $01bd                                  ; $5f85: $01 $bd $01
    cp a                                          ; $5f88: $bf
    ld bc, $01c1                                  ; $5f89: $01 $c1 $01
    jp $c501                                      ; $5f8c: $c3 $01 $c5


    ld bc, $01c7                                  ; $5f8f: $01 $c7 $01
    ret                                           ; $5f92: $c9


    ld bc, $01cc                                  ; $5f93: $01 $cc $01
    adc $01                                       ; $5f96: $ce $01
    ret nc                                        ; $5f98: $d0

    ld bc, $01d2                                  ; $5f99: $01 $d2 $01
    call nc, $d601                                ; $5f9c: $d4 $01 $d6
    ld bc, $01d8                                  ; $5f9f: $01 $d8 $01
    jp c, $dd01                                   ; $5fa2: $da $01 $dd

    ld bc, $01df                                  ; $5fa5: $01 $df $01
    inc b                                         ; $5fa8: $04
    nop                                           ; $5fa9: $00
    inc hl                                        ; $5faa: $23
    nop                                           ; $5fab: $00
    dec l                                         ; $5fac: $2d
    nop                                           ; $5fad: $00
    dec [hl]                                      ; $5fae: $35
    nop                                           ; $5faf: $00
    dec a                                         ; $5fb0: $3d
    nop                                           ; $5fb1: $00
    ld b, e                                       ; $5fb2: $43
    nop                                           ; $5fb3: $00
    ld c, c                                       ; $5fb4: $49
    nop                                           ; $5fb5: $00
    ld c, l                                       ; $5fb6: $4d
    nop                                           ; $5fb7: $00
    ld d, d                                       ; $5fb8: $52
    nop                                           ; $5fb9: $00
    ld d, a                                       ; $5fba: $57
    nop                                           ; $5fbb: $00
    ld e, d                                       ; $5fbc: $5a
    nop                                           ; $5fbd: $00
    ld e, a                                       ; $5fbe: $5f
    nop                                           ; $5fbf: $00
    ld h, e                                       ; $5fc0: $63
    nop                                           ; $5fc1: $00
    ld h, [hl]                                    ; $5fc2: $66
    nop                                           ; $5fc3: $00
    ld l, d                                       ; $5fc4: $6a
    nop                                           ; $5fc5: $00
    ld l, l                                       ; $5fc6: $6d
    nop                                           ; $5fc7: $00
    ld [hl], c                                    ; $5fc8: $71
    nop                                           ; $5fc9: $00
    ld [hl], h                                    ; $5fca: $74
    nop                                           ; $5fcb: $00
    ld a, b                                       ; $5fcc: $78
    nop                                           ; $5fcd: $00
    ld a, d                                       ; $5fce: $7a
    nop                                           ; $5fcf: $00
    ld a, [hl]                                    ; $5fd0: $7e
    nop                                           ; $5fd1: $00
    add c                                         ; $5fd2: $81
    nop                                           ; $5fd3: $00
    add h                                         ; $5fd4: $84
    nop                                           ; $5fd5: $00
    add [hl]                                      ; $5fd6: $86
    nop                                           ; $5fd7: $00
    adc d                                         ; $5fd8: $8a
    nop                                           ; $5fd9: $00
    adc h                                         ; $5fda: $8c
    nop                                           ; $5fdb: $00
    adc a                                         ; $5fdc: $8f
    nop                                           ; $5fdd: $00
    sub d                                         ; $5fde: $92
    nop                                           ; $5fdf: $00
    sub l                                         ; $5fe0: $95
    nop                                           ; $5fe1: $00
    sbc b                                         ; $5fe2: $98
    nop                                           ; $5fe3: $00
    sbc d                                         ; $5fe4: $9a
    nop                                           ; $5fe5: $00
    sbc l                                         ; $5fe6: $9d
    nop                                           ; $5fe7: $00
    and b                                         ; $5fe8: $a0
    nop                                           ; $5fe9: $00
    and d                                         ; $5fea: $a2
    nop                                           ; $5feb: $00
    and l                                         ; $5fec: $a5
    nop                                           ; $5fed: $00
    xor b                                         ; $5fee: $a8
    nop                                           ; $5fef: $00
    xor d                                         ; $5ff0: $aa
    nop                                           ; $5ff1: $00
    xor l                                         ; $5ff2: $ad
    nop                                           ; $5ff3: $00
    xor a                                         ; $5ff4: $af
    nop                                           ; $5ff5: $00
    or d                                          ; $5ff6: $b2
    nop                                           ; $5ff7: $00
    or h                                          ; $5ff8: $b4
    nop                                           ; $5ff9: $00
    or a                                          ; $5ffa: $b7
    nop                                           ; $5ffb: $00
    cp c                                          ; $5ffc: $b9
    nop                                           ; $5ffd: $00
    cp h                                          ; $5ffe: $bc
    nop                                           ; $5fff: $00
    cp [hl]                                       ; $6000: $be
    nop                                           ; $6001: $00
    pop bc                                        ; $6002: $c1
    nop                                           ; $6003: $00
    jp $c600                                      ; $6004: $c3 $00 $c6


    nop                                           ; $6007: $00
    ret z                                         ; $6008: $c8

    nop                                           ; $6009: $00
    jp z, $cd00                                   ; $600a: $ca $00 $cd

    nop                                           ; $600d: $00
    ret nc                                        ; $600e: $d0

    nop                                           ; $600f: $00
    jp nc, $d500                                  ; $6010: $d2 $00 $d5

    nop                                           ; $6013: $00
    rst $10                                       ; $6014: $d7
    nop                                           ; $6015: $00
    reti                                          ; $6016: $d9


    nop                                           ; $6017: $00
    call c, $de00                                 ; $6018: $dc $00 $de
    nop                                           ; $601b: $00
    pop hl                                        ; $601c: $e1
    nop                                           ; $601d: $00
    ld [c], a                                     ; $601e: $e2
    nop                                           ; $601f: $00
    push hl                                       ; $6020: $e5
    nop                                           ; $6021: $00
    rst $20                                       ; $6022: $e7
    nop                                           ; $6023: $00
    ld [$ec00], a                                 ; $6024: $ea $00 $ec
    nop                                           ; $6027: $00
    rst $28                                       ; $6028: $ef
    nop                                           ; $6029: $00
    pop af                                        ; $602a: $f1
    nop                                           ; $602b: $00
    di                                            ; $602c: $f3
    nop                                           ; $602d: $00
    push af                                       ; $602e: $f5
    nop                                           ; $602f: $00
    ld hl, sp+$00                                 ; $6030: $f8 $00
    ld a, [$fc00]                                 ; $6032: $fa $00 $fc
    nop                                           ; $6035: $00
    cp $00                                        ; $6036: $fe $00
    ld bc, $0301                                  ; $6038: $01 $01 $03
    ld bc, $0105                                  ; $603b: $01 $05 $01
    ld [$0a01], sp                                ; $603e: $08 $01 $0a
    ld bc, $010c                                  ; $6041: $01 $0c $01
    rrca                                          ; $6044: $0f
    ld bc, $0111                                  ; $6045: $01 $11 $01
    inc de                                        ; $6048: $13
    ld bc, $0115                                  ; $6049: $01 $15 $01
    jr jr_039_604f                                ; $604c: $18 $01

    ld a, [de]                                    ; $604e: $1a

jr_039_604f:
    ld bc, $011c                                  ; $604f: $01 $1c $01
    ld e, $01                                     ; $6052: $1e $01
    ld hl, $2301                                  ; $6054: $21 $01 $23
    ld bc, $0125                                  ; $6057: $01 $25 $01
    jr z, jr_039_605d                             ; $605a: $28 $01

    ld a, [hl+]                                   ; $605c: $2a

jr_039_605d:
    ld bc, $012c                                  ; $605d: $01 $2c $01
    cpl                                           ; $6060: $2f
    ld bc, $0131                                  ; $6061: $01 $31 $01
    inc sp                                        ; $6064: $33
    ld bc, $0136                                  ; $6065: $01 $36 $01
    jr c, jr_039_606b                             ; $6068: $38 $01

    ld a, [hl-]                                   ; $606a: $3a

jr_039_606b:
    ld bc, $013c                                  ; $606b: $01 $3c $01
    ld a, $01                                     ; $606e: $3e $01
    ld b, b                                       ; $6070: $40
    ld bc, HeaderCGBFlag                          ; $6071: $01 $43 $01
    ld b, l                                       ; $6074: $45
    ld bc, HeaderCartridgeType                    ; $6075: $01 $47 $01
    ld c, d                                       ; $6078: $4a
    ld bc, HeaderMaskROMVersion                   ; $6079: $01 $4c $01
    ld c, [hl]                                    ; $607c: $4e
    ld bc, $0151                                  ; $607d: $01 $51 $01
    ld d, e                                       ; $6080: $53
    ld bc, $0155                                  ; $6081: $01 $55 $01
    ld d, a                                       ; $6084: $57
    ld bc, $015a                                  ; $6085: $01 $5a $01
    ld e, e                                       ; $6088: $5b
    ld bc, $015e                                  ; $6089: $01 $5e $01
    ld h, b                                       ; $608c: $60
    ld bc, $0163                                  ; $608d: $01 $63 $01
    ld h, l                                       ; $6090: $65
    ld bc, $0167                                  ; $6091: $01 $67 $01
    ld l, c                                       ; $6094: $69
    ld bc, $016b                                  ; $6095: $01 $6b $01
    ld l, [hl]                                    ; $6098: $6e
    ld bc, $0170                                  ; $6099: $01 $70 $01
    ld [hl], d                                    ; $609c: $72
    ld bc, $0174                                  ; $609d: $01 $74 $01
    ld [hl], a                                    ; $60a0: $77
    ld bc, $0179                                  ; $60a1: $01 $79 $01
    ld a, h                                       ; $60a4: $7c
    ld bc, $017e                                  ; $60a5: $01 $7e $01
    add b                                         ; $60a8: $80
    ld bc, $0183                                  ; $60a9: $01 $83 $01
    add h                                         ; $60ac: $84
    ld bc, $0186                                  ; $60ad: $01 $86 $01
    adc c                                         ; $60b0: $89
    ld bc, $018b                                  ; $60b1: $01 $8b $01
    adc l                                         ; $60b4: $8d
    ld bc, $0190                                  ; $60b5: $01 $90 $01
    sub d                                         ; $60b8: $92
    ld bc, $0194                                  ; $60b9: $01 $94 $01
    sub a                                         ; $60bc: $97
    ld bc, $0199                                  ; $60bd: $01 $99 $01
    sbc e                                         ; $60c0: $9b
    ld bc, $019e                                  ; $60c1: $01 $9e $01
    and b                                         ; $60c4: $a0
    ld bc, $01a2                                  ; $60c5: $01 $a2 $01
    and h                                         ; $60c8: $a4
    ld bc, $01a6                                  ; $60c9: $01 $a6 $01
    xor c                                         ; $60cc: $a9
    ld bc, $01ab                                  ; $60cd: $01 $ab $01
    xor [hl]                                      ; $60d0: $ae
    ld bc, $01b0                                  ; $60d1: $01 $b0 $01
    or d                                          ; $60d4: $b2
    ld bc, $01b4                                  ; $60d5: $01 $b4 $01
    or a                                          ; $60d8: $b7
    ld bc, $01b9                                  ; $60d9: $01 $b9 $01
    cp e                                          ; $60dc: $bb
    ld bc, $01be                                  ; $60dd: $01 $be $01
    ret nz                                        ; $60e0: $c0

    ld bc, $01c2                                  ; $60e1: $01 $c2 $01
    call nz, $c701                                ; $60e4: $c4 $01 $c7
    ld bc, $01c9                                  ; $60e7: $01 $c9 $01
    rlc c                                         ; $60ea: $cb $01
    adc $01                                       ; $60ec: $ce $01
    ret nc                                        ; $60ee: $d0

    ld bc, $01d2                                  ; $60ef: $01 $d2 $01
    call nc, $d701                                ; $60f2: $d4 $01 $d7
    ld bc, $01d9                                  ; $60f5: $01 $d9 $01
    db $db                                        ; $60f8: $db
    ld bc, $01de                                  ; $60f9: $01 $de $01
    inc b                                         ; $60fc: $04
    nop                                           ; $60fd: $00
    ld h, $00                                     ; $60fe: $26 $00
    jr nc, jr_039_6102                            ; $6100: $30 $00

jr_039_6102:
    jr c, jr_039_6104                             ; $6102: $38 $00

jr_039_6104:
    ld a, $00                                     ; $6104: $3e $00
    ld b, [hl]                                    ; $6106: $46
    nop                                           ; $6107: $00
    ld c, h                                       ; $6108: $4c
    nop                                           ; $6109: $00
    ld d, b                                       ; $610a: $50
    nop                                           ; $610b: $00
    ld d, [hl]                                    ; $610c: $56
    nop                                           ; $610d: $00
    ld e, d                                       ; $610e: $5a
    nop                                           ; $610f: $00
    ld e, [hl]                                    ; $6110: $5e
    nop                                           ; $6111: $00
    ld h, d                                       ; $6112: $62
    nop                                           ; $6113: $00
    ld h, [hl]                                    ; $6114: $66
    nop                                           ; $6115: $00
    ld l, c                                       ; $6116: $69
    nop                                           ; $6117: $00
    ld l, l                                       ; $6118: $6d
    nop                                           ; $6119: $00
    ld [hl], c                                    ; $611a: $71
    nop                                           ; $611b: $00
    ld [hl], h                                    ; $611c: $74
    nop                                           ; $611d: $00
    ld a, b                                       ; $611e: $78
    nop                                           ; $611f: $00
    ld a, e                                       ; $6120: $7b
    nop                                           ; $6121: $00
    ld a, [hl]                                    ; $6122: $7e
    nop                                           ; $6123: $00
    add d                                         ; $6124: $82
    nop                                           ; $6125: $00
    add h                                         ; $6126: $84
    nop                                           ; $6127: $00
    adc b                                         ; $6128: $88
    nop                                           ; $6129: $00
    adc e                                         ; $612a: $8b
    nop                                           ; $612b: $00
    adc [hl]                                      ; $612c: $8e
    nop                                           ; $612d: $00
    sub c                                         ; $612e: $91
    nop                                           ; $612f: $00
    sub e                                         ; $6130: $93
    nop                                           ; $6131: $00
    sub [hl]                                      ; $6132: $96
    nop                                           ; $6133: $00
    sbc c                                         ; $6134: $99
    nop                                           ; $6135: $00
    sbc h                                         ; $6136: $9c
    nop                                           ; $6137: $00
    sbc a                                         ; $6138: $9f
    nop                                           ; $6139: $00
    and d                                         ; $613a: $a2
    nop                                           ; $613b: $00
    and h                                         ; $613c: $a4
    nop                                           ; $613d: $00
    and a                                         ; $613e: $a7
    nop                                           ; $613f: $00
    xor d                                         ; $6140: $aa
    nop                                           ; $6141: $00
    xor l                                         ; $6142: $ad
    nop                                           ; $6143: $00
    or b                                          ; $6144: $b0
    nop                                           ; $6145: $00
    or d                                          ; $6146: $b2
    nop                                           ; $6147: $00
    or h                                          ; $6148: $b4
    nop                                           ; $6149: $00
    cp b                                          ; $614a: $b8
    nop                                           ; $614b: $00
    cp e                                          ; $614c: $bb
    nop                                           ; $614d: $00
    cp l                                          ; $614e: $bd
    nop                                           ; $614f: $00
    cp a                                          ; $6150: $bf
    nop                                           ; $6151: $00
    jp nz, $c400                                  ; $6152: $c2 $00 $c4

    nop                                           ; $6155: $00
    rst $00                                       ; $6156: $c7
    nop                                           ; $6157: $00
    ret                                           ; $6158: $c9


    nop                                           ; $6159: $00
    call z, $cf00                                 ; $615a: $cc $00 $cf
    nop                                           ; $615d: $00
    pop de                                        ; $615e: $d1
    nop                                           ; $615f: $00
    call nc, $d700                                ; $6160: $d4 $00 $d7
    nop                                           ; $6163: $00
    reti                                          ; $6164: $d9


    nop                                           ; $6165: $00
    call c, $de00                                 ; $6166: $dc $00 $de
    nop                                           ; $6169: $00
    ldh [rP1], a                                  ; $616a: $e0 $00
    db $e3                                        ; $616c: $e3
    nop                                           ; $616d: $00
    and $00                                       ; $616e: $e6 $00
    add sp, $00                                   ; $6170: $e8 $00
    ld [$ed00], a                                 ; $6172: $ea $00 $ed
    nop                                           ; $6175: $00
    rst $28                                       ; $6176: $ef
    nop                                           ; $6177: $00
    ld a, [c]                                     ; $6178: $f2
    nop                                           ; $6179: $00
    push af                                       ; $617a: $f5
    nop                                           ; $617b: $00
    rst $30                                       ; $617c: $f7
    nop                                           ; $617d: $00
    ld sp, hl                                     ; $617e: $f9
    nop                                           ; $617f: $00
    db $fc                                        ; $6180: $fc
    nop                                           ; $6181: $00
    cp $00                                        ; $6182: $fe $00
    nop                                           ; $6184: $00
    ld bc, $0103                                  ; $6185: $01 $03 $01
    dec b                                         ; $6188: $05
    ld bc, $0108                                  ; $6189: $01 $08 $01
    ld a, [bc]                                    ; $618c: $0a
    ld bc, $010c                                  ; $618d: $01 $0c $01
    rrca                                          ; $6190: $0f
    ld bc, $0111                                  ; $6191: $01 $11 $01
    inc d                                         ; $6194: $14
    ld bc, $0116                                  ; $6195: $01 $16 $01
    add hl, de                                    ; $6198: $19
    ld bc, $011b                                  ; $6199: $01 $1b $01
    dec e                                         ; $619c: $1d
    ld bc, $0120                                  ; $619d: $01 $20 $01
    inc hl                                        ; $61a0: $23
    ld bc, $0125                                  ; $61a1: $01 $25 $01
    jr z, jr_039_61a7                             ; $61a4: $28 $01

    ld a, [hl+]                                   ; $61a6: $2a

jr_039_61a7:
    ld bc, $012c                                  ; $61a7: $01 $2c $01
    cpl                                           ; $61aa: $2f
    ld bc, $0131                                  ; $61ab: $01 $31 $01
    inc sp                                        ; $61ae: $33
    ld bc, $0136                                  ; $61af: $01 $36 $01
    jr c, jr_039_61b5                             ; $61b2: $38 $01

    dec sp                                        ; $61b4: $3b

jr_039_61b5:
    ld bc, $013d                                  ; $61b5: $01 $3d $01
    ld b, b                                       ; $61b8: $40
    ld bc, $0142                                  ; $61b9: $01 $42 $01
    ld b, h                                       ; $61bc: $44
    ld bc, HeaderSGBFlag                          ; $61bd: $01 $46 $01
    ld c, c                                       ; $61c0: $49
    ld bc, HeaderOldLicenseeCode                  ; $61c1: $01 $4b $01
    ld c, [hl]                                    ; $61c4: $4e
    ld bc, $0150                                  ; $61c5: $01 $50 $01
    ld d, e                                       ; $61c8: $53
    ld bc, $0155                                  ; $61c9: $01 $55 $01
    ld e, b                                       ; $61cc: $58
    ld bc, $015a                                  ; $61cd: $01 $5a $01
    ld e, h                                       ; $61d0: $5c
    ld bc, $015f                                  ; $61d1: $01 $5f $01
    ld h, c                                       ; $61d4: $61
    ld bc, $0164                                  ; $61d5: $01 $64 $01
    ld h, [hl]                                    ; $61d8: $66
    ld bc, $0168                                  ; $61d9: $01 $68 $01
    ld l, e                                       ; $61dc: $6b
    ld bc, $016d                                  ; $61dd: $01 $6d $01
    ld l, a                                       ; $61e0: $6f
    ld bc, $0172                                  ; $61e1: $01 $72 $01
    ld [hl], l                                    ; $61e4: $75
    ld bc, $0177                                  ; $61e5: $01 $77 $01
    ld a, d                                       ; $61e8: $7a
    ld bc, $017c                                  ; $61e9: $01 $7c $01
    ld a, [hl]                                    ; $61ec: $7e
    ld bc, $0181                                  ; $61ed: $01 $81 $01
    add e                                         ; $61f0: $83
    ld bc, $0185                                  ; $61f1: $01 $85 $01
    adc b                                         ; $61f4: $88
    ld bc, $018b                                  ; $61f5: $01 $8b $01
    adc l                                         ; $61f8: $8d
    ld bc, $018f                                  ; $61f9: $01 $8f $01
    sub d                                         ; $61fc: $92
    ld bc, $0194                                  ; $61fd: $01 $94 $01
    sub [hl]                                      ; $6200: $96
    ld bc, $0199                                  ; $6201: $01 $99 $01
    sbc h                                         ; $6204: $9c
    ld bc, $019e                                  ; $6205: $01 $9e $01
    and b                                         ; $6208: $a0
    ld bc, $01a3                                  ; $6209: $01 $a3 $01
    and l                                         ; $620c: $a5
    ld bc, $01a8                                  ; $620d: $01 $a8 $01
    xor d                                         ; $6210: $aa
    ld bc, $01ac                                  ; $6211: $01 $ac $01
    xor a                                         ; $6214: $af
    ld bc, $01b1                                  ; $6215: $01 $b1 $01
    or h                                          ; $6218: $b4
    ld bc, $01b6                                  ; $6219: $01 $b6 $01
    cp b                                          ; $621c: $b8
    ld bc, $01bb                                  ; $621d: $01 $bb $01
    cp l                                          ; $6220: $bd
    ld bc, $01c0                                  ; $6221: $01 $c0 $01
    jp nz, $c501                                  ; $6224: $c2 $01 $c5

    ld bc, $01c7                                  ; $6227: $01 $c7 $01
    jp z, $cc01                                   ; $622a: $ca $01 $cc

    ld bc, $01cf                                  ; $622d: $01 $cf $01
    pop de                                        ; $6230: $d1
    ld bc, $01d3                                  ; $6231: $01 $d3 $01
    sub $01                                       ; $6234: $d6 $01
    ret c                                         ; $6236: $d8

    ld bc, $01db                                  ; $6237: $01 $db $01
    db $dd                                        ; $623a: $dd
    ld bc, $0004                                  ; $623b: $01 $04 $00
    ld a, [hl+]                                   ; $623e: $2a
    nop                                           ; $623f: $00
    inc sp                                        ; $6240: $33
    nop                                           ; $6241: $00
    inc a                                         ; $6242: $3c
    nop                                           ; $6243: $00
    ld b, e                                       ; $6244: $43
    nop                                           ; $6245: $00
    ld c, d                                       ; $6246: $4a
    nop                                           ; $6247: $00
    ld c, a                                       ; $6248: $4f
    nop                                           ; $6249: $00
    ld d, l                                       ; $624a: $55
    nop                                           ; $624b: $00
    ld e, c                                       ; $624c: $59
    nop                                           ; $624d: $00
    ld e, [hl]                                    ; $624e: $5e
    nop                                           ; $624f: $00
    ld h, d                                       ; $6250: $62
    nop                                           ; $6251: $00
    ld h, a                                       ; $6252: $67
    nop                                           ; $6253: $00
    ld l, d                                       ; $6254: $6a
    nop                                           ; $6255: $00
    ld l, [hl]                                    ; $6256: $6e
    nop                                           ; $6257: $00
    ld [hl], d                                    ; $6258: $72
    nop                                           ; $6259: $00
    halt                                          ; $625a: $76
    nop                                           ; $625b: $00
    ld a, c                                       ; $625c: $79
    nop                                           ; $625d: $00
    ld a, l                                       ; $625e: $7d
    nop                                           ; $625f: $00
    add b                                         ; $6260: $80
    nop                                           ; $6261: $00
    add h                                         ; $6262: $84
    nop                                           ; $6263: $00
    add a                                         ; $6264: $87
    nop                                           ; $6265: $00
    adc d                                         ; $6266: $8a
    nop                                           ; $6267: $00
    adc l                                         ; $6268: $8d
    nop                                           ; $6269: $00
    sub c                                         ; $626a: $91
    nop                                           ; $626b: $00
    sub h                                         ; $626c: $94
    nop                                           ; $626d: $00
    sub a                                         ; $626e: $97
    nop                                           ; $626f: $00
    sbc d                                         ; $6270: $9a
    nop                                           ; $6271: $00
    sbc l                                         ; $6272: $9d
    nop                                           ; $6273: $00
    and b                                         ; $6274: $a0
    nop                                           ; $6275: $00
    and e                                         ; $6276: $a3
    nop                                           ; $6277: $00
    and l                                         ; $6278: $a5
    nop                                           ; $6279: $00
    xor c                                         ; $627a: $a9
    nop                                           ; $627b: $00
    xor e                                         ; $627c: $ab
    nop                                           ; $627d: $00
    xor [hl]                                      ; $627e: $ae
    nop                                           ; $627f: $00
    or c                                          ; $6280: $b1
    nop                                           ; $6281: $00
    or h                                          ; $6282: $b4
    nop                                           ; $6283: $00
    or a                                          ; $6284: $b7
    nop                                           ; $6285: $00
    cp c                                          ; $6286: $b9
    nop                                           ; $6287: $00
    cp h                                          ; $6288: $bc
    nop                                           ; $6289: $00
    ret nz                                        ; $628a: $c0

    nop                                           ; $628b: $00
    jp nz, $c500                                  ; $628c: $c2 $00 $c5

    nop                                           ; $628f: $00
    ret z                                         ; $6290: $c8

    nop                                           ; $6291: $00
    rlc b                                         ; $6292: $cb $00
    call $d000                                    ; $6294: $cd $00 $d0
    nop                                           ; $6297: $00
    db $d3                                        ; $6298: $d3
    nop                                           ; $6299: $00
    push de                                       ; $629a: $d5
    nop                                           ; $629b: $00
    ret c                                         ; $629c: $d8

    nop                                           ; $629d: $00
    db $db                                        ; $629e: $db
    nop                                           ; $629f: $00
    sbc $00                                       ; $62a0: $de $00
    pop hl                                        ; $62a2: $e1
    nop                                           ; $62a3: $00
    db $e3                                        ; $62a4: $e3
    nop                                           ; $62a5: $00
    push hl                                       ; $62a6: $e5
    nop                                           ; $62a7: $00
    add sp, $00                                   ; $62a8: $e8 $00
    db $eb                                        ; $62aa: $eb
    nop                                           ; $62ab: $00
    db $ed                                        ; $62ac: $ed
    nop                                           ; $62ad: $00
    ldh a, [rP1]                                  ; $62ae: $f0 $00
    di                                            ; $62b0: $f3
    nop                                           ; $62b1: $00
    or $00                                        ; $62b2: $f6 $00
    ld hl, sp+$00                                 ; $62b4: $f8 $00
    ld a, [$fd00]                                 ; $62b6: $fa $00 $fd
    nop                                           ; $62b9: $00
    nop                                           ; $62ba: $00
    ld bc, $0102                                  ; $62bb: $01 $02 $01
    dec b                                         ; $62be: $05
    ld bc, $0107                                  ; $62bf: $01 $07 $01
    ld a, [bc]                                    ; $62c2: $0a
    ld bc, $010d                                  ; $62c3: $01 $0d $01
    db $10                                        ; $62c6: $10
    ld bc, $0112                                  ; $62c7: $01 $12 $01
    inc d                                         ; $62ca: $14
    ld bc, $0118                                  ; $62cb: $01 $18 $01
    ld a, [de]                                    ; $62ce: $1a
    ld bc, $011c                                  ; $62cf: $01 $1c $01
    rra                                           ; $62d2: $1f
    ld bc, $0122                                  ; $62d3: $01 $22 $01
    inc h                                         ; $62d6: $24
    ld bc, $0127                                  ; $62d7: $01 $27 $01
    add hl, hl                                    ; $62da: $29
    ld bc, $012c                                  ; $62db: $01 $2c $01
    ld l, $01                                     ; $62de: $2e $01
    ld sp, $3401                                  ; $62e0: $31 $01 $34
    ld bc, $0136                                  ; $62e3: $01 $36 $01
    add hl, sp                                    ; $62e6: $39
    ld bc, $013b                                  ; $62e7: $01 $3b $01
    ld a, $01                                     ; $62ea: $3e $01
    ld b, c                                       ; $62ec: $41
    ld bc, HeaderCGBFlag                          ; $62ed: $01 $43 $01
    ld b, [hl]                                    ; $62f0: $46
    ld bc, HeaderROMSize                          ; $62f1: $01 $48 $01
    ld c, e                                       ; $62f4: $4b
    ld bc, HeaderComplementCheck                  ; $62f5: $01 $4d $01
    ld d, b                                       ; $62f8: $50
    ld bc, $0153                                  ; $62f9: $01 $53 $01
    ld d, l                                       ; $62fc: $55
    ld bc, $0158                                  ; $62fd: $01 $58 $01
    ld e, d                                       ; $6300: $5a
    ld bc, $015d                                  ; $6301: $01 $5d $01
    ld e, a                                       ; $6304: $5f
    ld bc, $0162                                  ; $6305: $01 $62 $01
    ld h, l                                       ; $6308: $65
    ld bc, $0167                                  ; $6309: $01 $67 $01
    ld l, d                                       ; $630c: $6a
    ld bc, $016c                                  ; $630d: $01 $6c $01
    ld l, a                                       ; $6310: $6f
    ld bc, $0172                                  ; $6311: $01 $72 $01
    ld [hl], h                                    ; $6314: $74
    ld bc, $0177                                  ; $6315: $01 $77 $01
    ld a, c                                       ; $6318: $79
    ld bc, $017c                                  ; $6319: $01 $7c $01
    ld a, a                                       ; $631c: $7f
    ld bc, $0181                                  ; $631d: $01 $81 $01
    add h                                         ; $6320: $84
    ld bc, $0187                                  ; $6321: $01 $87 $01
    adc c                                         ; $6324: $89
    ld bc, $018c                                  ; $6325: $01 $8c $01
    adc [hl]                                      ; $6328: $8e
    ld bc, $0191                                  ; $6329: $01 $91 $01
    sub e                                         ; $632c: $93
    ld bc, $0196                                  ; $632d: $01 $96 $01
    sbc c                                         ; $6330: $99
    ld bc, $019b                                  ; $6331: $01 $9b $01
    sbc [hl]                                      ; $6334: $9e
    ld bc, $01a0                                  ; $6335: $01 $a0 $01
    and e                                         ; $6338: $a3
    ld bc, $01a6                                  ; $6339: $01 $a6 $01
    xor b                                         ; $633c: $a8
    ld bc, $01ab                                  ; $633d: $01 $ab $01
    xor [hl]                                      ; $6340: $ae
    ld bc, $01b0                                  ; $6341: $01 $b0 $01
    or e                                          ; $6344: $b3
    ld bc, $01b5                                  ; $6345: $01 $b5 $01
    cp b                                          ; $6348: $b8
    ld bc, $01bb                                  ; $6349: $01 $bb $01
    cp l                                          ; $634c: $bd
    ld bc, $01c0                                  ; $634d: $01 $c0 $01
    jp $c501                                      ; $6350: $c3 $01 $c5


    ld bc, $01c8                                  ; $6353: $01 $c8 $01
    jp z, $cd01                                   ; $6356: $ca $01 $cd

    ld bc, $01d0                                  ; $6359: $01 $d0 $01
    jp nc, $d501                                  ; $635c: $d2 $01 $d5

    ld bc, $01d8                                  ; $635f: $01 $d8 $01
    jp c, $dd01                                   ; $6362: $da $01 $dd

    ld bc, $01df                                  ; $6365: $01 $df $01
    inc b                                         ; $6368: $04
    nop                                           ; $6369: $00
    dec l                                         ; $636a: $2d
    nop                                           ; $636b: $00
    ld [hl], $00                                  ; $636c: $36 $00
    inc a                                         ; $636e: $3c
    nop                                           ; $636f: $00
    ld b, a                                       ; $6370: $47
    nop                                           ; $6371: $00
    ld c, [hl]                                    ; $6372: $4e
    nop                                           ; $6373: $00
    ld d, h                                       ; $6374: $54
    nop                                           ; $6375: $00
    ld e, c                                       ; $6376: $59
    nop                                           ; $6377: $00
    ld e, [hl]                                    ; $6378: $5e
    nop                                           ; $6379: $00
    ld h, e                                       ; $637a: $63
    nop                                           ; $637b: $00
    ld h, a                                       ; $637c: $67
    nop                                           ; $637d: $00
    ld l, e                                       ; $637e: $6b
    nop                                           ; $637f: $00
    ld l, a                                       ; $6380: $6f
    nop                                           ; $6381: $00
    ld [hl], h                                    ; $6382: $74
    nop                                           ; $6383: $00
    ld [hl], a                                    ; $6384: $77
    nop                                           ; $6385: $00
    ld a, e                                       ; $6386: $7b
    nop                                           ; $6387: $00
    ld a, a                                       ; $6388: $7f
    nop                                           ; $6389: $00
    add d                                         ; $638a: $82
    nop                                           ; $638b: $00
    add [hl]                                      ; $638c: $86
    nop                                           ; $638d: $00
    adc d                                         ; $638e: $8a
    nop                                           ; $638f: $00
    adc l                                         ; $6390: $8d
    nop                                           ; $6391: $00
    sub c                                         ; $6392: $91
    nop                                           ; $6393: $00
    sub h                                         ; $6394: $94
    nop                                           ; $6395: $00
    sub a                                         ; $6396: $97
    nop                                           ; $6397: $00
    sbc d                                         ; $6398: $9a
    nop                                           ; $6399: $00
    sbc [hl]                                      ; $639a: $9e
    nop                                           ; $639b: $00
    and c                                         ; $639c: $a1
    nop                                           ; $639d: $00
    and h                                         ; $639e: $a4
    nop                                           ; $639f: $00
    and a                                         ; $63a0: $a7
    nop                                           ; $63a1: $00
    xor d                                         ; $63a2: $aa
    nop                                           ; $63a3: $00
    xor l                                         ; $63a4: $ad
    nop                                           ; $63a5: $00
    or c                                          ; $63a6: $b1
    nop                                           ; $63a7: $00
    or h                                          ; $63a8: $b4
    nop                                           ; $63a9: $00
    or a                                          ; $63aa: $b7
    nop                                           ; $63ab: $00
    cp d                                          ; $63ac: $ba
    nop                                           ; $63ad: $00
    cp l                                          ; $63ae: $bd
    nop                                           ; $63af: $00
    ret nz                                        ; $63b0: $c0

    nop                                           ; $63b1: $00
    jp $c600                                      ; $63b2: $c3 $00 $c6


    nop                                           ; $63b5: $00
    ret                                           ; $63b6: $c9


    nop                                           ; $63b7: $00
    rlc b                                         ; $63b8: $cb $00
    rst $08                                       ; $63ba: $cf
    nop                                           ; $63bb: $00
    jp nc, $d500                                  ; $63bc: $d2 $00 $d5

    nop                                           ; $63bf: $00
    rst $10                                       ; $63c0: $d7
    nop                                           ; $63c1: $00
    jp c, $de00                                   ; $63c2: $da $00 $de

    nop                                           ; $63c5: $00
    ldh [rP1], a                                  ; $63c6: $e0 $00
    db $e3                                        ; $63c8: $e3
    nop                                           ; $63c9: $00
    and $00                                       ; $63ca: $e6 $00
    jp hl                                         ; $63cc: $e9


    nop                                           ; $63cd: $00
    db $ec                                        ; $63ce: $ec
    nop                                           ; $63cf: $00
    xor $00                                       ; $63d0: $ee $00
    pop af                                        ; $63d2: $f1
    nop                                           ; $63d3: $00
    db $f4                                        ; $63d4: $f4
    nop                                           ; $63d5: $00
    rst $30                                       ; $63d6: $f7
    nop                                           ; $63d7: $00
    ld a, [$fd00]                                 ; $63d8: $fa $00 $fd
    nop                                           ; $63db: $00
    nop                                           ; $63dc: $00
    ld bc, $0102                                  ; $63dd: $01 $02 $01
    dec b                                         ; $63e0: $05
    ld bc, $0108                                  ; $63e1: $01 $08 $01
    ld a, [bc]                                    ; $63e4: $0a
    ld bc, $010d                                  ; $63e5: $01 $0d $01
    db $10                                        ; $63e8: $10
    ld bc, $0113                                  ; $63e9: $01 $13 $01
    ld d, $01                                     ; $63ec: $16 $01
    add hl, de                                    ; $63ee: $19
    ld bc, $011b                                  ; $63ef: $01 $1b $01
    ld e, $01                                     ; $63f2: $1e $01
    ld hl, $2301                                  ; $63f4: $21 $01 $23
    ld bc, $0126                                  ; $63f7: $01 $26 $01
    add hl, hl                                    ; $63fa: $29
    ld bc, $012c                                  ; $63fb: $01 $2c $01
    cpl                                           ; $63fe: $2f
    ld bc, $0131                                  ; $63ff: $01 $31 $01
    inc [hl]                                      ; $6402: $34
    ld bc, $0137                                  ; $6403: $01 $37 $01
    ld a, [hl-]                                   ; $6406: $3a
    ld bc, $013d                                  ; $6407: $01 $3d $01
    ccf                                           ; $640a: $3f
    ld bc, $0142                                  ; $640b: $01 $42 $01
    ld b, l                                       ; $640e: $45
    ld bc, HeaderROMSize                          ; $640f: $01 $48 $01
    ld c, d                                       ; $6412: $4a
    ld bc, HeaderComplementCheck                  ; $6413: $01 $4d $01
    ld d, b                                       ; $6416: $50
    ld bc, $0153                                  ; $6417: $01 $53 $01
    ld d, [hl]                                    ; $641a: $56
    ld bc, $0158                                  ; $641b: $01 $58 $01
    ld e, e                                       ; $641e: $5b
    ld bc, $015e                                  ; $641f: $01 $5e $01
    ld h, c                                       ; $6422: $61
    ld bc, $0163                                  ; $6423: $01 $63 $01
    ld h, [hl]                                    ; $6426: $66
    ld bc, $0169                                  ; $6427: $01 $69 $01
    ld l, h                                       ; $642a: $6c
    ld bc, $016f                                  ; $642b: $01 $6f $01
    ld [hl], c                                    ; $642e: $71
    ld bc, $0174                                  ; $642f: $01 $74 $01
    ld [hl], a                                    ; $6432: $77
    ld bc, $017a                                  ; $6433: $01 $7a $01
    ld a, l                                       ; $6436: $7d
    ld bc, $0180                                  ; $6437: $01 $80 $01
    add e                                         ; $643a: $83
    ld bc, $0185                                  ; $643b: $01 $85 $01
    adc b                                         ; $643e: $88
    ld bc, $018b                                  ; $643f: $01 $8b $01
    adc [hl]                                      ; $6442: $8e
    ld bc, $0190                                  ; $6443: $01 $90 $01
    sub e                                         ; $6446: $93
    ld bc, $0196                                  ; $6447: $01 $96 $01
    sbc c                                         ; $644a: $99
    ld bc, $019b                                  ; $644b: $01 $9b $01
    sbc [hl]                                      ; $644e: $9e
    ld bc, $01a1                                  ; $644f: $01 $a1 $01
    and h                                         ; $6452: $a4
    ld bc, $01a7                                  ; $6453: $01 $a7 $01
    xor d                                         ; $6456: $aa
    ld bc, $01ad                                  ; $6457: $01 $ad $01
    xor a                                         ; $645a: $af
    ld bc, $01b2                                  ; $645b: $01 $b2 $01
    or l                                          ; $645e: $b5
    ld bc, $01b8                                  ; $645f: $01 $b8 $01
    cp e                                          ; $6462: $bb
    ld bc, $01bd                                  ; $6463: $01 $bd $01
    ret nz                                        ; $6466: $c0

    ld bc, $01c3                                  ; $6467: $01 $c3 $01
    add $01                                       ; $646a: $c6 $01
    ret                                           ; $646c: $c9


    ld bc, $01cc                                  ; $646d: $01 $cc $01
    adc $01                                       ; $6470: $ce $01
    pop de                                        ; $6472: $d1
    ld bc, $01d4                                  ; $6473: $01 $d4 $01
    rst $10                                       ; $6476: $d7
    ld bc, $01da                                  ; $6477: $01 $da $01
    db $dd                                        ; $647a: $dd
    ld bc, $0004                                  ; $647b: $01 $04 $00
    ld l, $00                                     ; $647e: $2e $00
    dec [hl]                                      ; $6480: $35
    nop                                           ; $6481: $00
    dec a                                         ; $6482: $3d
    nop                                           ; $6483: $00
    ld b, l                                       ; $6484: $45
    nop                                           ; $6485: $00
    ld c, l                                       ; $6486: $4d
    nop                                           ; $6487: $00
    ld d, e                                       ; $6488: $53
    nop                                           ; $6489: $00
    ld e, c                                       ; $648a: $59
    nop                                           ; $648b: $00
    ld e, [hl]                                    ; $648c: $5e
    nop                                           ; $648d: $00
    ld h, e                                       ; $648e: $63
    nop                                           ; $648f: $00
    ld l, b                                       ; $6490: $68
    nop                                           ; $6491: $00
    ld l, h                                       ; $6492: $6c
    nop                                           ; $6493: $00
    ld [hl], c                                    ; $6494: $71
    nop                                           ; $6495: $00
    ld [hl], l                                    ; $6496: $75
    nop                                           ; $6497: $00
    ld a, c                                       ; $6498: $79
    nop                                           ; $6499: $00
    ld a, l                                       ; $649a: $7d
    nop                                           ; $649b: $00
    add c                                         ; $649c: $81
    nop                                           ; $649d: $00
    add l                                         ; $649e: $85
    nop                                           ; $649f: $00
    adc c                                         ; $64a0: $89
    nop                                           ; $64a1: $00
    adc h                                         ; $64a2: $8c
    nop                                           ; $64a3: $00
    sub b                                         ; $64a4: $90
    nop                                           ; $64a5: $00
    sub h                                         ; $64a6: $94
    nop                                           ; $64a7: $00
    sub a                                         ; $64a8: $97
    nop                                           ; $64a9: $00
    sbc e                                         ; $64aa: $9b
    nop                                           ; $64ab: $00
    sbc [hl]                                      ; $64ac: $9e
    nop                                           ; $64ad: $00
    and d                                         ; $64ae: $a2
    nop                                           ; $64af: $00
    and [hl]                                      ; $64b0: $a6
    nop                                           ; $64b1: $00
    xor c                                         ; $64b2: $a9
    nop                                           ; $64b3: $00
    xor h                                         ; $64b4: $ac
    nop                                           ; $64b5: $00
    xor a                                         ; $64b6: $af
    nop                                           ; $64b7: $00
    or e                                          ; $64b8: $b3
    nop                                           ; $64b9: $00
    or [hl]                                       ; $64ba: $b6
    nop                                           ; $64bb: $00
    cp d                                          ; $64bc: $ba
    nop                                           ; $64bd: $00
    cp l                                          ; $64be: $bd
    nop                                           ; $64bf: $00
    pop bc                                        ; $64c0: $c1
    nop                                           ; $64c1: $00
    call nz, $c700                                ; $64c2: $c4 $00 $c7
    nop                                           ; $64c5: $00
    jp z, $ce00                                   ; $64c6: $ca $00 $ce

    nop                                           ; $64c9: $00
    pop de                                        ; $64ca: $d1
    nop                                           ; $64cb: $00
    call nc, $d700                                ; $64cc: $d4 $00 $d7
    nop                                           ; $64cf: $00
    jp c, $dd00                                   ; $64d0: $da $00 $dd

    nop                                           ; $64d3: $00
    ldh [rP1], a                                  ; $64d4: $e0 $00
    db $e4                                        ; $64d6: $e4
    nop                                           ; $64d7: $00
    rst $20                                       ; $64d8: $e7
    nop                                           ; $64d9: $00
    ld [$ed00], a                                 ; $64da: $ea $00 $ed
    nop                                           ; $64dd: $00
    pop af                                        ; $64de: $f1
    nop                                           ; $64df: $00
    di                                            ; $64e0: $f3
    nop                                           ; $64e1: $00
    or $00                                        ; $64e2: $f6 $00
    ld sp, hl                                     ; $64e4: $f9
    nop                                           ; $64e5: $00
    db $fd                                        ; $64e6: $fd
    nop                                           ; $64e7: $00
    nop                                           ; $64e8: $00
    ld bc, $0103                                  ; $64e9: $01 $03 $01
    ld b, $01                                     ; $64ec: $06 $01
    add hl, bc                                    ; $64ee: $09
    ld bc, $010d                                  ; $64ef: $01 $0d $01
    rrca                                          ; $64f2: $0f
    ld bc, $0113                                  ; $64f3: $01 $13 $01
    ld d, $01                                     ; $64f6: $16 $01
    add hl, de                                    ; $64f8: $19
    ld bc, $011c                                  ; $64f9: $01 $1c $01
    rra                                           ; $64fc: $1f
    ld bc, $0122                                  ; $64fd: $01 $22 $01
    dec h                                         ; $6500: $25
    ld bc, $0129                                  ; $6501: $01 $29 $01
    dec hl                                        ; $6504: $2b
    ld bc, $012f                                  ; $6505: $01 $2f $01
    ld [hl-], a                                   ; $6508: $32
    ld bc, $0135                                  ; $6509: $01 $35 $01
    jr c, jr_039_650f                             ; $650c: $38 $01

    dec sp                                        ; $650e: $3b

jr_039_650f:
    ld bc, $013e                                  ; $650f: $01 $3e $01
    ld b, d                                       ; $6512: $42
    ld bc, HeaderNewLicenseeCode                  ; $6513: $01 $44 $01
    ld c, b                                       ; $6516: $48
    ld bc, HeaderOldLicenseeCode                  ; $6517: $01 $4b $01
    ld c, [hl]                                    ; $651a: $4e
    ld bc, $0151                                  ; $651b: $01 $51 $01
    ld d, h                                       ; $651e: $54
    ld bc, $0157                                  ; $651f: $01 $57 $01
    ld e, d                                       ; $6522: $5a
    ld bc, $015e                                  ; $6523: $01 $5e $01
    ld h, b                                       ; $6526: $60
    ld bc, $0164                                  ; $6527: $01 $64 $01
    ld h, [hl]                                    ; $652a: $66
    ld bc, $016a                                  ; $652b: $01 $6a $01
    ld l, l                                       ; $652e: $6d
    ld bc, $0170                                  ; $652f: $01 $70 $01
    ld [hl], e                                    ; $6532: $73
    ld bc, $0176                                  ; $6533: $01 $76 $01
    ld a, d                                       ; $6536: $7a
    ld bc, $017d                                  ; $6537: $01 $7d $01
    add b                                         ; $653a: $80
    ld bc, $0183                                  ; $653b: $01 $83 $01
    add [hl]                                      ; $653e: $86
    ld bc, $0189                                  ; $653f: $01 $89 $01
    adc h                                         ; $6542: $8c
    ld bc, $018f                                  ; $6543: $01 $8f $01
    sub d                                         ; $6546: $92
    ld bc, $0196                                  ; $6547: $01 $96 $01
    sbc c                                         ; $654a: $99
    ld bc, $019c                                  ; $654b: $01 $9c $01
    sbc a                                         ; $654e: $9f
    ld bc, $01a2                                  ; $654f: $01 $a2 $01
    and l                                         ; $6552: $a5
    ld bc, $01a8                                  ; $6553: $01 $a8 $01
    xor h                                         ; $6556: $ac
    ld bc, $01af                                  ; $6557: $01 $af $01
    or d                                          ; $655a: $b2
    ld bc, $01b5                                  ; $655b: $01 $b5 $01
    cp b                                          ; $655e: $b8
    ld bc, $01bb                                  ; $655f: $01 $bb $01
    cp a                                          ; $6562: $bf
    ld bc, $01c2                                  ; $6563: $01 $c2 $01
    push bc                                       ; $6566: $c5
    ld bc, $01c8                                  ; $6567: $01 $c8 $01
    rlc c                                         ; $656a: $cb $01
    adc $01                                       ; $656c: $ce $01
    pop de                                        ; $656e: $d1
    ld bc, $01d5                                  ; $656f: $01 $d5 $01
    ret c                                         ; $6572: $d8

    ld bc, $01db                                  ; $6573: $01 $db $01
    sbc $01                                       ; $6576: $de $01
    inc b                                         ; $6578: $04
    nop                                           ; $6579: $00
    ld sp, $3900                                  ; $657a: $31 $00 $39
    nop                                           ; $657d: $00
    ld b, e                                       ; $657e: $43
    nop                                           ; $657f: $00
    ld c, d                                       ; $6580: $4a
    nop                                           ; $6581: $00
    ld d, c                                       ; $6582: $51
    nop                                           ; $6583: $00
    ld e, d                                       ; $6584: $5a
    nop                                           ; $6585: $00
    ld h, b                                       ; $6586: $60
    nop                                           ; $6587: $00
    ld h, [hl]                                    ; $6588: $66
    nop                                           ; $6589: $00
    ld l, e                                       ; $658a: $6b
    nop                                           ; $658b: $00
    ld [hl], b                                    ; $658c: $70
    nop                                           ; $658d: $00
    ld [hl], l                                    ; $658e: $75
    nop                                           ; $658f: $00
    ld a, d                                       ; $6590: $7a
    nop                                           ; $6591: $00
    ld a, [hl]                                    ; $6592: $7e
    nop                                           ; $6593: $00
    add e                                         ; $6594: $83
    nop                                           ; $6595: $00
    add a                                         ; $6596: $87
    nop                                           ; $6597: $00
    adc h                                         ; $6598: $8c
    nop                                           ; $6599: $00
    sub b                                         ; $659a: $90
    nop                                           ; $659b: $00
    sub h                                         ; $659c: $94
    nop                                           ; $659d: $00
    sbc b                                         ; $659e: $98
    nop                                           ; $659f: $00
    sbc h                                         ; $65a0: $9c
    nop                                           ; $65a1: $00
    and c                                         ; $65a2: $a1
    nop                                           ; $65a3: $00
    and l                                         ; $65a4: $a5
    nop                                           ; $65a5: $00
    xor b                                         ; $65a6: $a8
    nop                                           ; $65a7: $00
    xor h                                         ; $65a8: $ac
    nop                                           ; $65a9: $00
    or b                                          ; $65aa: $b0
    nop                                           ; $65ab: $00
    or h                                          ; $65ac: $b4
    nop                                           ; $65ad: $00
    cp b                                          ; $65ae: $b8
    nop                                           ; $65af: $00
    cp h                                          ; $65b0: $bc
    nop                                           ; $65b1: $00
    ret nz                                        ; $65b2: $c0

    nop                                           ; $65b3: $00
    jp $c700                                      ; $65b4: $c3 $00 $c7


    nop                                           ; $65b7: $00
    rlc b                                         ; $65b8: $cb $00
    adc $00                                       ; $65ba: $ce $00
    jp nc, $d600                                  ; $65bc: $d2 $00 $d6

    nop                                           ; $65bf: $00
    reti                                          ; $65c0: $d9


    nop                                           ; $65c1: $00
    db $dd                                        ; $65c2: $dd
    nop                                           ; $65c3: $00
    pop hl                                        ; $65c4: $e1
    nop                                           ; $65c5: $00
    db $e4                                        ; $65c6: $e4
    nop                                           ; $65c7: $00
    add sp, $00                                   ; $65c8: $e8 $00
    db $ec                                        ; $65ca: $ec
    nop                                           ; $65cb: $00
    rst $28                                       ; $65cc: $ef
    nop                                           ; $65cd: $00
    di                                            ; $65ce: $f3
    nop                                           ; $65cf: $00
    or $00                                        ; $65d0: $f6 $00
    ld a, [$fe00]                                 ; $65d2: $fa $00 $fe
    nop                                           ; $65d5: $00
    ld bc, $0501                                  ; $65d6: $01 $01 $05
    ld bc, $0109                                  ; $65d9: $01 $09 $01
    inc c                                         ; $65dc: $0c
    ld bc, $010f                                  ; $65dd: $01 $0f $01
    inc de                                        ; $65e0: $13
    ld bc, $0117                                  ; $65e1: $01 $17 $01
    ld a, [de]                                    ; $65e4: $1a
    ld bc, $011e                                  ; $65e5: $01 $1e $01
    ld hl, $2501                                  ; $65e8: $21 $01 $25
    ld bc, $0128                                  ; $65eb: $01 $28 $01
    inc l                                         ; $65ee: $2c
    ld bc, $0130                                  ; $65ef: $01 $30 $01
    inc sp                                        ; $65f2: $33
    ld bc, $0137                                  ; $65f3: $01 $37 $01
    ld a, [hl-]                                   ; $65f6: $3a
    ld bc, $013e                                  ; $65f7: $01 $3e $01
    ld b, c                                       ; $65fa: $41
    ld bc, $0145                                  ; $65fb: $01 $45 $01
    ld c, b                                       ; $65fe: $48
    ld bc, HeaderMaskROMVersion                   ; $65ff: $01 $4c $01
    ld c, a                                       ; $6602: $4f
    ld bc, $0153                                  ; $6603: $01 $53 $01
    ld d, [hl]                                    ; $6606: $56
    ld bc, $015a                                  ; $6607: $01 $5a $01
    ld e, [hl]                                    ; $660a: $5e
    ld bc, $0161                                  ; $660b: $01 $61 $01
    ld h, l                                       ; $660e: $65
    ld bc, $0168                                  ; $660f: $01 $68 $01
    ld l, h                                       ; $6612: $6c
    ld bc, $016f                                  ; $6613: $01 $6f $01
    ld [hl], e                                    ; $6616: $73
    ld bc, $0176                                  ; $6617: $01 $76 $01
    ld a, d                                       ; $661a: $7a
    ld bc, $017e                                  ; $661b: $01 $7e $01
    add c                                         ; $661e: $81
    ld bc, $0185                                  ; $661f: $01 $85 $01
    adc b                                         ; $6622: $88
    ld bc, $018c                                  ; $6623: $01 $8c $01
    adc a                                         ; $6626: $8f
    ld bc, $0193                                  ; $6627: $01 $93 $01
    sub a                                         ; $662a: $97
    ld bc, $019a                                  ; $662b: $01 $9a $01
    sbc [hl]                                      ; $662e: $9e
    ld bc, $01a2                                  ; $662f: $01 $a2 $01
    and l                                         ; $6632: $a5
    ld bc, $01a8                                  ; $6633: $01 $a8 $01
    xor h                                         ; $6636: $ac
    ld bc, $01b0                                  ; $6637: $01 $b0 $01
    or h                                          ; $663a: $b4
    ld bc, $01b7                                  ; $663b: $01 $b7 $01
    cp e                                          ; $663e: $bb
    ld bc, $01be                                  ; $663f: $01 $be $01
    jp nz, $c501                                  ; $6642: $c2 $01 $c5

    ld bc, $01c9                                  ; $6645: $01 $c9 $01
    call $d001                                    ; $6648: $cd $01 $d0
    ld bc, $01d4                                  ; $664b: $01 $d4 $01
    ret c                                         ; $664e: $d8

    ld bc, $01dc                                  ; $664f: $01 $dc $01
    rst $18                                       ; $6652: $df
    ld bc, $0004                                  ; $6653: $01 $04 $00
    ld [hl], $00                                  ; $6656: $36 $00
    ld b, c                                       ; $6658: $41
    nop                                           ; $6659: $00
    ld c, e                                       ; $665a: $4b
    nop                                           ; $665b: $00
    ld d, l                                       ; $665c: $55
    nop                                           ; $665d: $00
    ld e, l                                       ; $665e: $5d
    nop                                           ; $665f: $00
    ld h, a                                       ; $6660: $67
    nop                                           ; $6661: $00
    ld l, [hl]                                    ; $6662: $6e
    nop                                           ; $6663: $00
    ld [hl], h                                    ; $6664: $74
    nop                                           ; $6665: $00
    ld a, d                                       ; $6666: $7a
    nop                                           ; $6667: $00
    add b                                         ; $6668: $80
    nop                                           ; $6669: $00
    add [hl]                                      ; $666a: $86
    nop                                           ; $666b: $00
    adc e                                         ; $666c: $8b
    nop                                           ; $666d: $00
    sub b                                         ; $666e: $90
    nop                                           ; $666f: $00
    sub [hl]                                      ; $6670: $96
    nop                                           ; $6671: $00
    sbc e                                         ; $6672: $9b
    nop                                           ; $6673: $00
    and b                                         ; $6674: $a0
    nop                                           ; $6675: $00
    and l                                         ; $6676: $a5
    nop                                           ; $6677: $00
    xor c                                         ; $6678: $a9
    nop                                           ; $6679: $00
    xor [hl]                                      ; $667a: $ae
    nop                                           ; $667b: $00
    or e                                          ; $667c: $b3
    nop                                           ; $667d: $00
    cp b                                          ; $667e: $b8
    nop                                           ; $667f: $00
    cp l                                          ; $6680: $bd
    nop                                           ; $6681: $00
    jp nz, $c600                                  ; $6682: $c2 $00 $c6

    nop                                           ; $6685: $00
    rlc b                                         ; $6686: $cb $00
    rst $08                                       ; $6688: $cf
    nop                                           ; $6689: $00
    call nc, $d900                                ; $668a: $d4 $00 $d9
    nop                                           ; $668d: $00
    db $dd                                        ; $668e: $dd
    nop                                           ; $668f: $00
    pop hl                                        ; $6690: $e1
    nop                                           ; $6691: $00
    and $00                                       ; $6692: $e6 $00
    ld [$ef00], a                                 ; $6694: $ea $00 $ef
    nop                                           ; $6697: $00
    di                                            ; $6698: $f3
    nop                                           ; $6699: $00
    rst $30                                       ; $669a: $f7
    nop                                           ; $669b: $00
    ei                                            ; $669c: $fb
    nop                                           ; $669d: $00
    nop                                           ; $669e: $00
    ld bc, HeaderLogo                             ; $669f: $01 $04 $01
    ld [$0d01], sp                                ; $66a2: $08 $01 $0d
    ld bc, $0110                                  ; $66a5: $01 $10 $01
    dec d                                         ; $66a8: $15
    ld bc, $011a                                  ; $66a9: $01 $1a $01
    ld e, $01                                     ; $66ac: $1e $01
    ld [hl+], a                                   ; $66ae: $22
    ld bc, $0126                                  ; $66af: $01 $26 $01
    dec hl                                        ; $66b2: $2b
    ld bc, $012f                                  ; $66b3: $01 $2f $01
    inc sp                                        ; $66b6: $33
    ld bc, $0137                                  ; $66b7: $01 $37 $01
    inc a                                         ; $66ba: $3c
    ld bc, $0140                                  ; $66bb: $01 $40 $01
    ld b, h                                       ; $66be: $44
    ld bc, HeaderROMSize                          ; $66bf: $01 $48 $01
    ld c, h                                       ; $66c2: $4c
    ld bc, $0151                                  ; $66c3: $01 $51 $01
    ld d, l                                       ; $66c6: $55
    ld bc, $0159                                  ; $66c7: $01 $59 $01
    ld e, [hl]                                    ; $66ca: $5e
    ld bc, $0162                                  ; $66cb: $01 $62 $01
    ld h, [hl]                                    ; $66ce: $66
    ld bc, $016a                                  ; $66cf: $01 $6a $01
    ld l, a                                       ; $66d2: $6f
    ld bc, $0173                                  ; $66d3: $01 $73 $01
    ld [hl], a                                    ; $66d6: $77
    ld bc, $017b                                  ; $66d7: $01 $7b $01
    add b                                         ; $66da: $80
    ld bc, $0184                                  ; $66db: $01 $84 $01
    adc b                                         ; $66de: $88
    ld bc, $018d                                  ; $66df: $01 $8d $01
    sub c                                         ; $66e2: $91
    ld bc, $0196                                  ; $66e3: $01 $96 $01
    sbc c                                         ; $66e6: $99
    ld bc, $019e                                  ; $66e7: $01 $9e $01
    and d                                         ; $66ea: $a2
    ld bc, $01a6                                  ; $66eb: $01 $a6 $01
    xor e                                         ; $66ee: $ab
    ld bc, $01af                                  ; $66ef: $01 $af $01
    or e                                          ; $66f2: $b3
    ld bc, $01b7                                  ; $66f3: $01 $b7 $01
    cp h                                          ; $66f6: $bc
    ld bc, $01c0                                  ; $66f7: $01 $c0 $01
    push bc                                       ; $66fa: $c5
    ld bc, $01c9                                  ; $66fb: $01 $c9 $01
    call $d201                                    ; $66fe: $cd $01 $d2
    ld bc, $01d6                                  ; $6701: $01 $d6 $01
    jp c, $de01                                   ; $6704: $da $01 $de

    ld bc, $6722                                  ; $6707: $01 $22 $67
    ld h, b                                       ; $670a: $60
    ld h, a                                       ; $670b: $67
    sbc [hl]                                      ; $670c: $9e
    ld h, a                                       ; $670d: $67
    call c, Call_000_1a67                         ; $670e: $dc $67 $1a
    ld l, b                                       ; $6711: $68
    ld e, b                                       ; $6712: $58
    ld l, b                                       ; $6713: $68
    sub [hl]                                      ; $6714: $96
    ld l, b                                       ; $6715: $68
    call nc, Call_000_1268                        ; $6716: $d4 $68 $12
    ld l, c                                       ; $6719: $69
    ld d, b                                       ; $671a: $50
    ld l, c                                       ; $671b: $69
    adc [hl]                                      ; $671c: $8e
    ld l, c                                       ; $671d: $69
    call z, Call_000_0a69                         ; $671e: $cc $69 $0a
    ld l, d                                       ; $6721: $6a
    ld bc, $0f00                                  ; $6722: $01 $00 $0f
    nop                                           ; $6725: $00
    dec e                                         ; $6726: $1d
    nop                                           ; $6727: $00
    daa                                           ; $6728: $27
    nop                                           ; $6729: $00
    cpl                                           ; $672a: $2f
    nop                                           ; $672b: $00
    ld [hl], $00                                  ; $672c: $36 $00
    dec a                                         ; $672e: $3d
    nop                                           ; $672f: $00
    ld b, d                                       ; $6730: $42
    nop                                           ; $6731: $00
    ld c, b                                       ; $6732: $48
    nop                                           ; $6733: $00
    ld c, [hl]                                    ; $6734: $4e
    nop                                           ; $6735: $00
    ld d, e                                       ; $6736: $53
    nop                                           ; $6737: $00
    ld d, [hl]                                    ; $6738: $56
    nop                                           ; $6739: $00
    ld e, l                                       ; $673a: $5d
    nop                                           ; $673b: $00
    ld h, c                                       ; $673c: $61
    nop                                           ; $673d: $00
    ld h, e                                       ; $673e: $63
    nop                                           ; $673f: $00
    ld h, [hl]                                    ; $6740: $66
    nop                                           ; $6741: $00
    ld l, c                                       ; $6742: $69
    nop                                           ; $6743: $00
    ld l, h                                       ; $6744: $6c
    nop                                           ; $6745: $00
    ld l, a                                       ; $6746: $6f
    nop                                           ; $6747: $00
    ld [hl], c                                    ; $6748: $71
    nop                                           ; $6749: $00
    ld [hl], e                                    ; $674a: $73
    nop                                           ; $674b: $00
    ld [hl], l                                    ; $674c: $75
    nop                                           ; $674d: $00
    ld a, b                                       ; $674e: $78
    nop                                           ; $674f: $00
    ld a, c                                       ; $6750: $79
    nop                                           ; $6751: $00
    ld a, d                                       ; $6752: $7a
    nop                                           ; $6753: $00
    ld a, h                                       ; $6754: $7c
    nop                                           ; $6755: $00
    ld a, l                                       ; $6756: $7d
    nop                                           ; $6757: $00
    ld a, [hl]                                    ; $6758: $7e
    nop                                           ; $6759: $00
    add b                                         ; $675a: $80
    nop                                           ; $675b: $00
    add c                                         ; $675c: $81
    nop                                           ; $675d: $00
    add e                                         ; $675e: $83
    nop                                           ; $675f: $00
    ld bc, $1000                                  ; $6760: $01 $00 $10
    nop                                           ; $6763: $00
    jr nz, jr_039_6766                            ; $6764: $20 $00

jr_039_6766:
    ld a, [hl+]                                   ; $6766: $2a
    nop                                           ; $6767: $00
    ld [hl-], a                                   ; $6768: $32
    nop                                           ; $6769: $00
    dec sp                                        ; $676a: $3b
    nop                                           ; $676b: $00
    ld b, c                                       ; $676c: $41
    nop                                           ; $676d: $00
    ld b, a                                       ; $676e: $47
    nop                                           ; $676f: $00
    ld c, l                                       ; $6770: $4d
    nop                                           ; $6771: $00
    ld d, e                                       ; $6772: $53
    nop                                           ; $6773: $00
    ld d, a                                       ; $6774: $57
    nop                                           ; $6775: $00
    ld e, e                                       ; $6776: $5b
    nop                                           ; $6777: $00
    ld h, c                                       ; $6778: $61
    nop                                           ; $6779: $00
    ld h, l                                       ; $677a: $65
    nop                                           ; $677b: $00
    ld l, b                                       ; $677c: $68
    nop                                           ; $677d: $00
    ld l, d                                       ; $677e: $6a
    nop                                           ; $677f: $00
    ld l, [hl]                                    ; $6780: $6e
    nop                                           ; $6781: $00
    ld l, a                                       ; $6782: $6f
    nop                                           ; $6783: $00
    ld [hl], d                                    ; $6784: $72
    nop                                           ; $6785: $00
    ld [hl], l                                    ; $6786: $75
    nop                                           ; $6787: $00
    ld [hl], a                                    ; $6788: $77
    nop                                           ; $6789: $00
    ld a, c                                       ; $678a: $79
    nop                                           ; $678b: $00
    ld a, d                                       ; $678c: $7a
    nop                                           ; $678d: $00
    ld a, h                                       ; $678e: $7c
    nop                                           ; $678f: $00
    ld a, l                                       ; $6790: $7d
    nop                                           ; $6791: $00
    ld a, [hl]                                    ; $6792: $7e
    nop                                           ; $6793: $00
    ld a, a                                       ; $6794: $7f
    nop                                           ; $6795: $00
    add b                                         ; $6796: $80
    nop                                           ; $6797: $00
    add d                                         ; $6798: $82
    nop                                           ; $6799: $00
    add d                                         ; $679a: $82
    nop                                           ; $679b: $00
    add e                                         ; $679c: $83
    nop                                           ; $679d: $00
    ld bc, $1100                                  ; $679e: $01 $00 $11
    nop                                           ; $67a1: $00
    ld [hl+], a                                   ; $67a2: $22
    nop                                           ; $67a3: $00
    inc l                                         ; $67a4: $2c
    nop                                           ; $67a5: $00
    ld [hl], $00                                  ; $67a6: $36 $00
    dec a                                         ; $67a8: $3d
    nop                                           ; $67a9: $00
    ld b, l                                       ; $67aa: $45
    nop                                           ; $67ab: $00
    ld c, e                                       ; $67ac: $4b
    nop                                           ; $67ad: $00
    ld d, c                                       ; $67ae: $51
    nop                                           ; $67af: $00
    ld e, b                                       ; $67b0: $58
    nop                                           ; $67b1: $00
    ld e, l                                       ; $67b2: $5d
    nop                                           ; $67b3: $00
    ld h, d                                       ; $67b4: $62
    nop                                           ; $67b5: $00
    ld h, [hl]                                    ; $67b6: $66
    nop                                           ; $67b7: $00
    ld l, c                                       ; $67b8: $69
    nop                                           ; $67b9: $00
    ld l, l                                       ; $67ba: $6d
    nop                                           ; $67bb: $00
    ld l, a                                       ; $67bc: $6f
    nop                                           ; $67bd: $00
    ld [hl], c                                    ; $67be: $71
    nop                                           ; $67bf: $00
    ld [hl], h                                    ; $67c0: $74
    nop                                           ; $67c1: $00
    ld [hl], a                                    ; $67c2: $77
    nop                                           ; $67c3: $00
    ld a, c                                       ; $67c4: $79
    nop                                           ; $67c5: $00
    ld a, e                                       ; $67c6: $7b
    nop                                           ; $67c7: $00
    ld a, h                                       ; $67c8: $7c
    nop                                           ; $67c9: $00
    ld a, [hl]                                    ; $67ca: $7e
    nop                                           ; $67cb: $00
    add b                                         ; $67cc: $80
    nop                                           ; $67cd: $00
    add c                                         ; $67ce: $81
    nop                                           ; $67cf: $00
    add d                                         ; $67d0: $82
    nop                                           ; $67d1: $00
    add h                                         ; $67d2: $84
    nop                                           ; $67d3: $00
    add l                                         ; $67d4: $85
    nop                                           ; $67d5: $00
    add [hl]                                      ; $67d6: $86
    nop                                           ; $67d7: $00
    add a                                         ; $67d8: $87
    nop                                           ; $67d9: $00
    adc b                                         ; $67da: $88
    nop                                           ; $67db: $00
    ld bc, $1000                                  ; $67dc: $01 $00 $10
    nop                                           ; $67df: $00
    dec e                                         ; $67e0: $1d
    nop                                           ; $67e1: $00
    ld h, $00                                     ; $67e2: $26 $00
    ld l, $00                                     ; $67e4: $2e $00
    dec [hl]                                      ; $67e6: $35
    nop                                           ; $67e7: $00
    inc a                                         ; $67e8: $3c
    nop                                           ; $67e9: $00
    ld b, c                                       ; $67ea: $41
    nop                                           ; $67eb: $00
    ld c, c                                       ; $67ec: $49
    nop                                           ; $67ed: $00
    ld c, l                                       ; $67ee: $4d
    nop                                           ; $67ef: $00
    ld d, e                                       ; $67f0: $53
    nop                                           ; $67f1: $00
    ld d, a                                       ; $67f2: $57
    nop                                           ; $67f3: $00
    ld e, e                                       ; $67f4: $5b
    nop                                           ; $67f5: $00
    ld e, a                                       ; $67f6: $5f
    nop                                           ; $67f7: $00
    ld h, e                                       ; $67f8: $63
    nop                                           ; $67f9: $00
    ld h, a                                       ; $67fa: $67
    nop                                           ; $67fb: $00
    ld l, d                                       ; $67fc: $6a
    nop                                           ; $67fd: $00
    ld l, l                                       ; $67fe: $6d
    nop                                           ; $67ff: $00
    ld [hl], b                                    ; $6800: $70
    nop                                           ; $6801: $00
    ld [hl], e                                    ; $6802: $73
    nop                                           ; $6803: $00
    halt                                          ; $6804: $76
    nop                                           ; $6805: $00
    ld a, c                                       ; $6806: $79
    nop                                           ; $6807: $00
    ld a, h                                       ; $6808: $7c
    nop                                           ; $6809: $00
    ld a, [hl]                                    ; $680a: $7e
    nop                                           ; $680b: $00
    add c                                         ; $680c: $81
    nop                                           ; $680d: $00
    add e                                         ; $680e: $83
    nop                                           ; $680f: $00
    add l                                         ; $6810: $85
    nop                                           ; $6811: $00
    add a                                         ; $6812: $87
    nop                                           ; $6813: $00
    adc c                                         ; $6814: $89
    nop                                           ; $6815: $00
    adc e                                         ; $6816: $8b
    nop                                           ; $6817: $00
    adc l                                         ; $6818: $8d
    nop                                           ; $6819: $00
    ld bc, $1400                                  ; $681a: $01 $00 $14
    nop                                           ; $681d: $00
    jr nz, jr_039_6820                            ; $681e: $20 $00

jr_039_6820:
    add hl, hl                                    ; $6820: $29
    nop                                           ; $6821: $00
    ld [hl-], a                                   ; $6822: $32
    nop                                           ; $6823: $00
    add hl, sp                                    ; $6824: $39
    nop                                           ; $6825: $00
    ld b, b                                       ; $6826: $40
    nop                                           ; $6827: $00
    ld c, b                                       ; $6828: $48
    nop                                           ; $6829: $00
    ld c, l                                       ; $682a: $4d
    nop                                           ; $682b: $00
    ld d, d                                       ; $682c: $52
    nop                                           ; $682d: $00
    ld e, b                                       ; $682e: $58
    nop                                           ; $682f: $00
    ld e, e                                       ; $6830: $5b
    nop                                           ; $6831: $00
    ld h, b                                       ; $6832: $60
    nop                                           ; $6833: $00
    ld h, h                                       ; $6834: $64
    nop                                           ; $6835: $00
    ld l, b                                       ; $6836: $68
    nop                                           ; $6837: $00
    ld l, e                                       ; $6838: $6b
    nop                                           ; $6839: $00
    ld l, a                                       ; $683a: $6f
    nop                                           ; $683b: $00
    ld [hl], c                                    ; $683c: $71
    nop                                           ; $683d: $00
    ld [hl], l                                    ; $683e: $75
    nop                                           ; $683f: $00
    ld [hl], a                                    ; $6840: $77
    nop                                           ; $6841: $00
    ld a, d                                       ; $6842: $7a
    nop                                           ; $6843: $00
    ld a, l                                       ; $6844: $7d
    nop                                           ; $6845: $00
    ld a, a                                       ; $6846: $7f
    nop                                           ; $6847: $00
    add d                                         ; $6848: $82
    nop                                           ; $6849: $00
    add h                                         ; $684a: $84
    nop                                           ; $684b: $00
    add [hl]                                      ; $684c: $86
    nop                                           ; $684d: $00
    adc b                                         ; $684e: $88
    nop                                           ; $684f: $00
    adc d                                         ; $6850: $8a
    nop                                           ; $6851: $00
    adc h                                         ; $6852: $8c
    nop                                           ; $6853: $00
    adc [hl]                                      ; $6854: $8e
    nop                                           ; $6855: $00
    sub b                                         ; $6856: $90
    nop                                           ; $6857: $00
    ld bc, $1600                                  ; $6858: $01 $00 $16
    nop                                           ; $685b: $00
    inc hl                                        ; $685c: $23
    nop                                           ; $685d: $00
    dec l                                         ; $685e: $2d
    nop                                           ; $685f: $00
    ld [hl], $00                                  ; $6860: $36 $00
    ccf                                           ; $6862: $3f
    nop                                           ; $6863: $00
    ld b, a                                       ; $6864: $47
    nop                                           ; $6865: $00
    ld c, [hl]                                    ; $6866: $4e
    nop                                           ; $6867: $00
    ld d, e                                       ; $6868: $53
    nop                                           ; $6869: $00
    ld e, c                                       ; $686a: $59
    nop                                           ; $686b: $00
    ld e, [hl]                                    ; $686c: $5e
    nop                                           ; $686d: $00
    ld h, d                                       ; $686e: $62
    nop                                           ; $686f: $00
    ld h, a                                       ; $6870: $67
    nop                                           ; $6871: $00
    ld l, e                                       ; $6872: $6b
    nop                                           ; $6873: $00
    ld l, a                                       ; $6874: $6f
    nop                                           ; $6875: $00
    ld [hl], d                                    ; $6876: $72
    nop                                           ; $6877: $00
    halt                                          ; $6878: $76
    nop                                           ; $6879: $00
    ld a, b                                       ; $687a: $78
    nop                                           ; $687b: $00
    ld a, h                                       ; $687c: $7c
    nop                                           ; $687d: $00
    ld a, [hl]                                    ; $687e: $7e
    nop                                           ; $687f: $00
    add b                                         ; $6880: $80
    nop                                           ; $6881: $00
    add e                                         ; $6882: $83
    nop                                           ; $6883: $00
    add l                                         ; $6884: $85
    nop                                           ; $6885: $00
    adc b                                         ; $6886: $88
    nop                                           ; $6887: $00
    adc d                                         ; $6888: $8a
    nop                                           ; $6889: $00
    adc h                                         ; $688a: $8c
    nop                                           ; $688b: $00
    adc l                                         ; $688c: $8d
    nop                                           ; $688d: $00
    adc a                                         ; $688e: $8f
    nop                                           ; $688f: $00
    sub c                                         ; $6890: $91
    nop                                           ; $6891: $00
    sub e                                         ; $6892: $93
    nop                                           ; $6893: $00
    sub h                                         ; $6894: $94
    nop                                           ; $6895: $00
    ld bc, $1700                                  ; $6896: $01 $00 $17
    nop                                           ; $6899: $00
    dec h                                         ; $689a: $25
    nop                                           ; $689b: $00
    jr nc, jr_039_689e                            ; $689c: $30 $00

jr_039_689e:
    ld a, [hl-]                                   ; $689e: $3a
    nop                                           ; $689f: $00
    ld b, c                                       ; $68a0: $41
    nop                                           ; $68a1: $00
    ld c, e                                       ; $68a2: $4b
    nop                                           ; $68a3: $00
    ld d, d                                       ; $68a4: $52
    nop                                           ; $68a5: $00
    ld e, b                                       ; $68a6: $58
    nop                                           ; $68a7: $00
    ld e, l                                       ; $68a8: $5d
    nop                                           ; $68a9: $00
    ld h, d                                       ; $68aa: $62
    nop                                           ; $68ab: $00
    ld h, a                                       ; $68ac: $67
    nop                                           ; $68ad: $00
    ld l, h                                       ; $68ae: $6c
    nop                                           ; $68af: $00
    ld [hl], b                                    ; $68b0: $70
    nop                                           ; $68b1: $00
    ld [hl], e                                    ; $68b2: $73
    nop                                           ; $68b3: $00
    ld [hl], a                                    ; $68b4: $77
    nop                                           ; $68b5: $00
    ld a, e                                       ; $68b6: $7b
    nop                                           ; $68b7: $00
    ld a, [hl]                                    ; $68b8: $7e
    nop                                           ; $68b9: $00
    add b                                         ; $68ba: $80
    nop                                           ; $68bb: $00
    add h                                         ; $68bc: $84
    nop                                           ; $68bd: $00
    add [hl]                                      ; $68be: $86
    nop                                           ; $68bf: $00
    adc c                                         ; $68c0: $89
    nop                                           ; $68c1: $00
    adc e                                         ; $68c2: $8b
    nop                                           ; $68c3: $00
    adc l                                         ; $68c4: $8d
    nop                                           ; $68c5: $00
    sub b                                         ; $68c6: $90
    nop                                           ; $68c7: $00
    sub d                                         ; $68c8: $92
    nop                                           ; $68c9: $00
    sub h                                         ; $68ca: $94
    nop                                           ; $68cb: $00
    sub l                                         ; $68cc: $95
    nop                                           ; $68cd: $00
    sub a                                         ; $68ce: $97
    nop                                           ; $68cf: $00
    sbc c                                         ; $68d0: $99
    nop                                           ; $68d1: $00
    sbc d                                         ; $68d2: $9a
    nop                                           ; $68d3: $00
    ld bc, $1900                                  ; $68d4: $01 $00 $19
    nop                                           ; $68d7: $00
    daa                                           ; $68d8: $27
    nop                                           ; $68d9: $00
    ld [hl-], a                                   ; $68da: $32
    nop                                           ; $68db: $00
    dec a                                         ; $68dc: $3d
    nop                                           ; $68dd: $00
    ld b, [hl]                                    ; $68de: $46
    nop                                           ; $68df: $00
    ld c, [hl]                                    ; $68e0: $4e
    nop                                           ; $68e1: $00
    ld d, [hl]                                    ; $68e2: $56
    nop                                           ; $68e3: $00
    ld e, e                                       ; $68e4: $5b
    nop                                           ; $68e5: $00
    ld h, c                                       ; $68e6: $61
    nop                                           ; $68e7: $00
    ld h, a                                       ; $68e8: $67
    nop                                           ; $68e9: $00
    ld l, e                                       ; $68ea: $6b
    nop                                           ; $68eb: $00
    ld [hl], b                                    ; $68ec: $70
    nop                                           ; $68ed: $00
    ld [hl], h                                    ; $68ee: $74
    nop                                           ; $68ef: $00
    ld [hl], a                                    ; $68f0: $77
    nop                                           ; $68f1: $00
    ld a, h                                       ; $68f2: $7c
    nop                                           ; $68f3: $00
    add b                                         ; $68f4: $80
    nop                                           ; $68f5: $00
    add d                                         ; $68f6: $82
    nop                                           ; $68f7: $00
    add l                                         ; $68f8: $85
    nop                                           ; $68f9: $00
    adc b                                         ; $68fa: $88
    nop                                           ; $68fb: $00
    adc d                                         ; $68fc: $8a
    nop                                           ; $68fd: $00
    adc l                                         ; $68fe: $8d
    nop                                           ; $68ff: $00
    adc a                                         ; $6900: $8f
    nop                                           ; $6901: $00
    sub d                                         ; $6902: $92
    nop                                           ; $6903: $00
    sub h                                         ; $6904: $94
    nop                                           ; $6905: $00
    sub [hl]                                      ; $6906: $96
    nop                                           ; $6907: $00
    sbc b                                         ; $6908: $98
    nop                                           ; $6909: $00
    sbc d                                         ; $690a: $9a
    nop                                           ; $690b: $00
    sbc h                                         ; $690c: $9c
    nop                                           ; $690d: $00
    sbc l                                         ; $690e: $9d
    nop                                           ; $690f: $00
    sbc a                                         ; $6910: $9f
    nop                                           ; $6911: $00
    ld bc, $1a00                                  ; $6912: $01 $00 $1a
    nop                                           ; $6915: $00
    add hl, hl                                    ; $6916: $29
    nop                                           ; $6917: $00
    dec [hl]                                      ; $6918: $35
    nop                                           ; $6919: $00
    ld b, b                                       ; $691a: $40
    nop                                           ; $691b: $00
    ld c, e                                       ; $691c: $4b
    nop                                           ; $691d: $00
    ld d, e                                       ; $691e: $53
    nop                                           ; $691f: $00
    ld e, c                                       ; $6920: $59
    nop                                           ; $6921: $00
    ld h, c                                       ; $6922: $61
    nop                                           ; $6923: $00
    ld h, a                                       ; $6924: $67
    nop                                           ; $6925: $00
    ld l, h                                       ; $6926: $6c
    nop                                           ; $6927: $00
    ld [hl], c                                    ; $6928: $71
    nop                                           ; $6929: $00
    ld [hl], l                                    ; $692a: $75
    nop                                           ; $692b: $00
    ld a, d                                       ; $692c: $7a
    nop                                           ; $692d: $00
    ld a, [hl]                                    ; $692e: $7e
    nop                                           ; $692f: $00
    add c                                         ; $6930: $81
    nop                                           ; $6931: $00
    add l                                         ; $6932: $85
    nop                                           ; $6933: $00
    adc b                                         ; $6934: $88
    nop                                           ; $6935: $00
    adc e                                         ; $6936: $8b
    nop                                           ; $6937: $00
    adc [hl]                                      ; $6938: $8e
    nop                                           ; $6939: $00
    sub c                                         ; $693a: $91
    nop                                           ; $693b: $00
    sub h                                         ; $693c: $94
    nop                                           ; $693d: $00
    sub [hl]                                      ; $693e: $96
    nop                                           ; $693f: $00
    sbc b                                         ; $6940: $98
    nop                                           ; $6941: $00
    sbc d                                         ; $6942: $9a
    nop                                           ; $6943: $00
    sbc h                                         ; $6944: $9c
    nop                                           ; $6945: $00
    sbc [hl]                                      ; $6946: $9e
    nop                                           ; $6947: $00
    and b                                         ; $6948: $a0
    nop                                           ; $6949: $00
    and d                                         ; $694a: $a2
    nop                                           ; $694b: $00
    and h                                         ; $694c: $a4
    nop                                           ; $694d: $00
    and l                                         ; $694e: $a5
    nop                                           ; $694f: $00
    ld bc, $1c00                                  ; $6950: $01 $00 $1c
    nop                                           ; $6953: $00
    inc l                                         ; $6954: $2c
    nop                                           ; $6955: $00
    add hl, sp                                    ; $6956: $39
    nop                                           ; $6957: $00
    ld b, e                                       ; $6958: $43
    nop                                           ; $6959: $00
    ld d, b                                       ; $695a: $50
    nop                                           ; $695b: $00
    ld e, b                                       ; $695c: $58
    nop                                           ; $695d: $00
    ld e, a                                       ; $695e: $5f
    nop                                           ; $695f: $00
    ld h, [hl]                                    ; $6960: $66
    nop                                           ; $6961: $00
    ld l, h                                       ; $6962: $6c
    nop                                           ; $6963: $00
    ld [hl], d                                    ; $6964: $72
    nop                                           ; $6965: $00
    ld [hl], a                                    ; $6966: $77
    nop                                           ; $6967: $00
    ld a, e                                       ; $6968: $7b
    nop                                           ; $6969: $00
    add b                                         ; $696a: $80
    nop                                           ; $696b: $00
    add h                                         ; $696c: $84
    nop                                           ; $696d: $00
    adc b                                         ; $696e: $88
    nop                                           ; $696f: $00
    adc h                                         ; $6970: $8c
    nop                                           ; $6971: $00
    sub b                                         ; $6972: $90
    nop                                           ; $6973: $00
    sub d                                         ; $6974: $92
    nop                                           ; $6975: $00
    sub l                                         ; $6976: $95
    nop                                           ; $6977: $00
    sbc b                                         ; $6978: $98
    nop                                           ; $6979: $00
    sbc e                                         ; $697a: $9b
    nop                                           ; $697b: $00
    sbc l                                         ; $697c: $9d
    nop                                           ; $697d: $00
    and b                                         ; $697e: $a0
    nop                                           ; $697f: $00
    and d                                         ; $6980: $a2
    nop                                           ; $6981: $00
    and h                                         ; $6982: $a4
    nop                                           ; $6983: $00
    and [hl]                                      ; $6984: $a6
    nop                                           ; $6985: $00
    xor b                                         ; $6986: $a8
    nop                                           ; $6987: $00
    xor d                                         ; $6988: $aa
    nop                                           ; $6989: $00
    xor h                                         ; $698a: $ac
    nop                                           ; $698b: $00
    xor l                                         ; $698c: $ad
    nop                                           ; $698d: $00
    ld bc, $1c00                                  ; $698e: $01 $00 $1c
    nop                                           ; $6991: $00
    inc l                                         ; $6992: $2c
    nop                                           ; $6993: $00
    add hl, sp                                    ; $6994: $39
    nop                                           ; $6995: $00
    ld b, l                                       ; $6996: $45
    nop                                           ; $6997: $00
    ld c, [hl]                                    ; $6998: $4e
    nop                                           ; $6999: $00
    ld d, [hl]                                    ; $699a: $56
    nop                                           ; $699b: $00
    ld e, [hl]                                    ; $699c: $5e
    nop                                           ; $699d: $00
    ld h, h                                       ; $699e: $64
    nop                                           ; $699f: $00
    ld l, d                                       ; $69a0: $6a
    nop                                           ; $69a1: $00
    ld [hl], c                                    ; $69a2: $71
    nop                                           ; $69a3: $00
    halt                                          ; $69a4: $76
    nop                                           ; $69a5: $00
    ld a, e                                       ; $69a6: $7b
    nop                                           ; $69a7: $00
    add b                                         ; $69a8: $80
    nop                                           ; $69a9: $00
    add h                                         ; $69aa: $84
    nop                                           ; $69ab: $00
    adc c                                         ; $69ac: $89
    nop                                           ; $69ad: $00
    adc h                                         ; $69ae: $8c
    nop                                           ; $69af: $00
    sub b                                         ; $69b0: $90
    nop                                           ; $69b1: $00
    sub e                                         ; $69b2: $93
    nop                                           ; $69b3: $00
    sub [hl]                                      ; $69b4: $96
    nop                                           ; $69b5: $00
    sbc c                                         ; $69b6: $99
    nop                                           ; $69b7: $00
    sbc l                                         ; $69b8: $9d
    nop                                           ; $69b9: $00
    sbc a                                         ; $69ba: $9f
    nop                                           ; $69bb: $00
    and d                                         ; $69bc: $a2
    nop                                           ; $69bd: $00
    and h                                         ; $69be: $a4
    nop                                           ; $69bf: $00
    and a                                         ; $69c0: $a7
    nop                                           ; $69c1: $00
    xor d                                         ; $69c2: $aa
    nop                                           ; $69c3: $00
    xor h                                         ; $69c4: $ac
    nop                                           ; $69c5: $00
    xor a                                         ; $69c6: $af
    nop                                           ; $69c7: $00
    or b                                          ; $69c8: $b0
    nop                                           ; $69c9: $00
    or e                                          ; $69ca: $b3
    nop                                           ; $69cb: $00
    ld bc, $1f00                                  ; $69cc: $01 $00 $1f
    nop                                           ; $69cf: $00
    cpl                                           ; $69d0: $2f
    nop                                           ; $69d1: $00
    ccf                                           ; $69d2: $3f
    nop                                           ; $69d3: $00
    ld c, d                                       ; $69d4: $4a
    nop                                           ; $69d5: $00
    ld d, l                                       ; $69d6: $55
    nop                                           ; $69d7: $00
    ld e, l                                       ; $69d8: $5d
    nop                                           ; $69d9: $00
    ld h, l                                       ; $69da: $65
    nop                                           ; $69db: $00
    ld l, h                                       ; $69dc: $6c
    nop                                           ; $69dd: $00
    ld [hl], e                                    ; $69de: $73
    nop                                           ; $69df: $00
    ld a, c                                       ; $69e0: $79
    nop                                           ; $69e1: $00
    ld a, a                                       ; $69e2: $7f
    nop                                           ; $69e3: $00
    add l                                         ; $69e4: $85
    nop                                           ; $69e5: $00
    adc c                                         ; $69e6: $89
    nop                                           ; $69e7: $00
    adc [hl]                                      ; $69e8: $8e
    nop                                           ; $69e9: $00
    sub e                                         ; $69ea: $93
    nop                                           ; $69eb: $00
    sub a                                         ; $69ec: $97
    nop                                           ; $69ed: $00
    sbc h                                         ; $69ee: $9c
    nop                                           ; $69ef: $00
    sbc a                                         ; $69f0: $9f
    nop                                           ; $69f1: $00
    and e                                         ; $69f2: $a3
    nop                                           ; $69f3: $00
    and a                                         ; $69f4: $a7
    nop                                           ; $69f5: $00
    xor d                                         ; $69f6: $aa
    nop                                           ; $69f7: $00
    xor l                                         ; $69f8: $ad
    nop                                           ; $69f9: $00
    or b                                          ; $69fa: $b0
    nop                                           ; $69fb: $00
    or e                                          ; $69fc: $b3
    nop                                           ; $69fd: $00
    or l                                          ; $69fe: $b5
    nop                                           ; $69ff: $00
    cp c                                          ; $6a00: $b9
    nop                                           ; $6a01: $00
    cp e                                          ; $6a02: $bb
    nop                                           ; $6a03: $00
    cp [hl]                                       ; $6a04: $be
    nop                                           ; $6a05: $00
    pop bc                                        ; $6a06: $c1
    nop                                           ; $6a07: $00
    jp Boot                                       ; $6a08: $c3 $00 $01


    nop                                           ; $6a0b: $00
    inc hl                                        ; $6a0c: $23
    nop                                           ; $6a0d: $00
    jr c, jr_039_6a10                             ; $6a0e: $38 $00

jr_039_6a10:
    ld c, b                                       ; $6a10: $48
    nop                                           ; $6a11: $00
    ld d, h                                       ; $6a12: $54
    nop                                           ; $6a13: $00
    ld h, b                                       ; $6a14: $60
    nop                                           ; $6a15: $00
    ld l, d                                       ; $6a16: $6a
    nop                                           ; $6a17: $00
    ld [hl], e                                    ; $6a18: $73
    nop                                           ; $6a19: $00
    ld a, e                                       ; $6a1a: $7b
    nop                                           ; $6a1b: $00
    add d                                         ; $6a1c: $82
    nop                                           ; $6a1d: $00
    adc c                                         ; $6a1e: $89
    nop                                           ; $6a1f: $00
    sub b                                         ; $6a20: $90
    nop                                           ; $6a21: $00
    sub [hl]                                      ; $6a22: $96
    nop                                           ; $6a23: $00
    sbc l                                         ; $6a24: $9d
    nop                                           ; $6a25: $00
    and d                                         ; $6a26: $a2
    nop                                           ; $6a27: $00
    and a                                         ; $6a28: $a7
    nop                                           ; $6a29: $00
    xor h                                         ; $6a2a: $ac
    nop                                           ; $6a2b: $00
    or c                                          ; $6a2c: $b1
    nop                                           ; $6a2d: $00
    or l                                          ; $6a2e: $b5
    nop                                           ; $6a2f: $00
    cp d                                          ; $6a30: $ba
    nop                                           ; $6a31: $00
    cp [hl]                                       ; $6a32: $be
    nop                                           ; $6a33: $00
    jp nz, $c600                                  ; $6a34: $c2 $00 $c6

    nop                                           ; $6a37: $00
    ret                                           ; $6a38: $c9


    nop                                           ; $6a39: $00
    call $d100                                    ; $6a3a: $cd $00 $d1
    nop                                           ; $6a3d: $00
    call nc, $d700                                ; $6a3e: $d4 $00 $d7
    nop                                           ; $6a41: $00
    db $db                                        ; $6a42: $db
    nop                                           ; $6a43: $00
    sbc $00                                       ; $6a44: $de $00
    pop hl                                        ; $6a46: $e1
    nop                                           ; $6a47: $00
    ld a, c                                       ; $6a48: $79
    cp $0d                                        ; $6a49: $fe $0d
    jr nc, jr_039_6a8b                            ; $6a4b: $30 $3e

    ld a, [$d32a]                                 ; $6a4d: $fa $2a $d3
    cp $02                                        ; $6a50: $fe $02
    jr z, jr_039_6a79                             ; $6a52: $28 $25

    ld h, $00                                     ; $6a54: $26 $00
    ld l, c                                       ; $6a56: $69
    add hl, hl                                    ; $6a57: $29
    ld bc, $6a8f                                  ; $6a58: $01 $8f $6a
    add hl, bc                                    ; $6a5b: $09
    ld a, [hl+]                                   ; $6a5c: $2a
    ld b, [hl]                                    ; $6a5d: $46
    ld c, a                                       ; $6a5e: $4f
    ld h, d                                       ; $6a5f: $62
    ld l, e                                       ; $6a60: $6b
    res 0, l                                      ; $6a61: $cb $85
    add hl, bc                                    ; $6a63: $09
    bit 0, e                                      ; $6a64: $cb $43
    jr nz, jr_039_6a6c                            ; $6a66: $20 $04

    ld a, [hl+]                                   ; $6a68: $2a
    ld h, [hl]                                    ; $6a69: $66
    ld l, a                                       ; $6a6a: $6f
    ret                                           ; $6a6b: $c9


jr_039_6a6c:
    ld e, [hl]                                    ; $6a6c: $5e
    inc hl                                        ; $6a6d: $23
    ld d, [hl]                                    ; $6a6e: $56
    inc hl                                        ; $6a6f: $23
    ld a, [hl+]                                   ; $6a70: $2a
    ld h, [hl]                                    ; $6a71: $66
    ld l, a                                       ; $6a72: $6f
    add hl, de                                    ; $6a73: $19
    srl h                                         ; $6a74: $cb $3c
    rr l                                          ; $6a76: $cb $1d
    ret                                           ; $6a78: $c9


jr_039_6a79:
    ld h, $00                                     ; $6a79: $26 $00
    ld l, c                                       ; $6a7b: $69
    add hl, hl                                    ; $6a7c: $29
    ld bc, $7c35                                  ; $6a7d: $01 $35 $7c
    add hl, bc                                    ; $6a80: $09
    ld a, [hl+]                                   ; $6a81: $2a
    ld h, [hl]                                    ; $6a82: $66
    ld l, a                                       ; $6a83: $6f
    res 0, e                                      ; $6a84: $cb $83
    add hl, de                                    ; $6a86: $19
    ld l, [hl]                                    ; $6a87: $6e
    ld h, $00                                     ; $6a88: $26 $00
    ret                                           ; $6a8a: $c9


jr_039_6a8b:
    ld hl, $0040                                  ; $6a8b: $21 $40 $00
    ret                                           ; $6a8e: $c9


    xor c                                         ; $6a8f: $a9
    ld l, d                                       ; $6a90: $6a
    and e                                         ; $6a91: $a3
    ld l, h                                       ; $6a92: $6c
    ld a, c                                       ; $6a93: $79
    ld l, [hl]                                    ; $6a94: $6e
    dec l                                         ; $6a95: $2d
    ld [hl], b                                    ; $6a96: $70
    pop de                                        ; $6a97: $d1
    ld [hl], c                                    ; $6a98: $71
    ld e, e                                       ; $6a99: $5b
    ld [hl], e                                    ; $6a9a: $73
    ret                                           ; $6a9b: $c9


    ld [hl], h                                    ; $6a9c: $74
    rra                                           ; $6a9d: $1f
    halt                                          ; $6a9e: $76
    ld h, c                                       ; $6a9f: $61
    ld [hl], a                                    ; $6aa0: $77
    adc l                                         ; $6aa1: $8d
    ld a, b                                       ; $6aa2: $78
    and e                                         ; $6aa3: $a3
    ld a, c                                       ; $6aa4: $79
    and c                                         ; $6aa5: $a1
    ld a, d                                       ; $6aa6: $7a
    ld a, a                                       ; $6aa7: $7f
    ld a, e                                       ; $6aa8: $7b
    ld b, $00                                     ; $6aa9: $06 $00
    ld c, $00                                     ; $6aab: $0e $00
    jr jr_039_6aaf                                ; $6aad: $18 $00

jr_039_6aaf:
    inc l                                         ; $6aaf: $2c
    nop                                           ; $6ab0: $00
    ld [hl-], a                                   ; $6ab1: $32
    nop                                           ; $6ab2: $00
    jr c, jr_039_6ab5                             ; $6ab3: $38 $00

jr_039_6ab5:
    dec a                                         ; $6ab5: $3d
    nop                                           ; $6ab6: $00
    ld b, d                                       ; $6ab7: $42
    nop                                           ; $6ab8: $00
    ld b, [hl]                                    ; $6ab9: $46
    nop                                           ; $6aba: $00
    ld c, d                                       ; $6abb: $4a
    nop                                           ; $6abc: $00
    ld c, [hl]                                    ; $6abd: $4e
    nop                                           ; $6abe: $00
    ld d, d                                       ; $6abf: $52
    nop                                           ; $6ac0: $00
    ld d, l                                       ; $6ac1: $55
    nop                                           ; $6ac2: $00
    ld e, d                                       ; $6ac3: $5a
    nop                                           ; $6ac4: $00
    ld e, [hl]                                    ; $6ac5: $5e
    nop                                           ; $6ac6: $00
    ld h, c                                       ; $6ac7: $61
    nop                                           ; $6ac8: $00
    ld h, h                                       ; $6ac9: $64
    nop                                           ; $6aca: $00
    ld h, [hl]                                    ; $6acb: $66
    nop                                           ; $6acc: $00
    ld l, d                                       ; $6acd: $6a
    nop                                           ; $6ace: $00
    ld l, h                                       ; $6acf: $6c
    nop                                           ; $6ad0: $00
    ld l, [hl]                                    ; $6ad1: $6e
    nop                                           ; $6ad2: $00
    ld [hl], d                                    ; $6ad3: $72
    nop                                           ; $6ad4: $00
    ld [hl], e                                    ; $6ad5: $73
    nop                                           ; $6ad6: $00
    halt                                          ; $6ad7: $76
    nop                                           ; $6ad8: $00
    ld a, b                                       ; $6ad9: $78
    nop                                           ; $6ada: $00
    ld a, e                                       ; $6adb: $7b
    nop                                           ; $6adc: $00
    ld a, l                                       ; $6add: $7d
    nop                                           ; $6ade: $00
    ld a, a                                       ; $6adf: $7f
    nop                                           ; $6ae0: $00
    add c                                         ; $6ae1: $81
    nop                                           ; $6ae2: $00
    add e                                         ; $6ae3: $83
    nop                                           ; $6ae4: $00
    add [hl]                                      ; $6ae5: $86
    nop                                           ; $6ae6: $00
    adc b                                         ; $6ae7: $88
    nop                                           ; $6ae8: $00
    adc c                                         ; $6ae9: $89
    nop                                           ; $6aea: $00
    adc e                                         ; $6aeb: $8b
    nop                                           ; $6aec: $00
    adc [hl]                                      ; $6aed: $8e
    nop                                           ; $6aee: $00
    sub b                                         ; $6aef: $90
    nop                                           ; $6af0: $00
    sub c                                         ; $6af1: $91
    nop                                           ; $6af2: $00
    sub e                                         ; $6af3: $93
    nop                                           ; $6af4: $00
    sub [hl]                                      ; $6af5: $96
    nop                                           ; $6af6: $00
    sbc b                                         ; $6af7: $98
    nop                                           ; $6af8: $00
    sbc c                                         ; $6af9: $99
    nop                                           ; $6afa: $00
    sbc e                                         ; $6afb: $9b
    nop                                           ; $6afc: $00
    sbc l                                         ; $6afd: $9d
    nop                                           ; $6afe: $00
    sbc a                                         ; $6aff: $9f
    nop                                           ; $6b00: $00
    and c                                         ; $6b01: $a1
    nop                                           ; $6b02: $00
    and e                                         ; $6b03: $a3
    nop                                           ; $6b04: $00
    and h                                         ; $6b05: $a4
    nop                                           ; $6b06: $00
    and [hl]                                      ; $6b07: $a6
    nop                                           ; $6b08: $00
    xor b                                         ; $6b09: $a8
    nop                                           ; $6b0a: $00
    xor d                                         ; $6b0b: $aa
    nop                                           ; $6b0c: $00
    xor h                                         ; $6b0d: $ac
    nop                                           ; $6b0e: $00
    xor l                                         ; $6b0f: $ad
    nop                                           ; $6b10: $00
    xor a                                         ; $6b11: $af
    nop                                           ; $6b12: $00
    or c                                          ; $6b13: $b1
    nop                                           ; $6b14: $00
    or d                                          ; $6b15: $b2
    nop                                           ; $6b16: $00
    or h                                          ; $6b17: $b4
    nop                                           ; $6b18: $00
    or [hl]                                       ; $6b19: $b6
    nop                                           ; $6b1a: $00
    cp b                                          ; $6b1b: $b8
    nop                                           ; $6b1c: $00
    cp c                                          ; $6b1d: $b9
    nop                                           ; $6b1e: $00
    cp d                                          ; $6b1f: $ba
    nop                                           ; $6b20: $00
    cp h                                          ; $6b21: $bc
    nop                                           ; $6b22: $00
    cp [hl]                                       ; $6b23: $be
    nop                                           ; $6b24: $00
    cp a                                          ; $6b25: $bf
    nop                                           ; $6b26: $00
    pop bc                                        ; $6b27: $c1
    nop                                           ; $6b28: $00
    jp $c500                                      ; $6b29: $c3 $00 $c5


    nop                                           ; $6b2c: $00
    add $00                                       ; $6b2d: $c6 $00
    ret z                                         ; $6b2f: $c8

    nop                                           ; $6b30: $00
    ret                                           ; $6b31: $c9


    nop                                           ; $6b32: $00
    rlc b                                         ; $6b33: $cb $00
    call $ce00                                    ; $6b35: $cd $00 $ce
    nop                                           ; $6b38: $00
    rst $08                                       ; $6b39: $cf
    nop                                           ; $6b3a: $00
    jp nc, $d300                                  ; $6b3b: $d2 $00 $d3

    nop                                           ; $6b3e: $00
    push de                                       ; $6b3f: $d5
    nop                                           ; $6b40: $00
    sub $00                                       ; $6b41: $d6 $00
    rst $10                                       ; $6b43: $d7
    nop                                           ; $6b44: $00
    reti                                          ; $6b45: $d9


    nop                                           ; $6b46: $00
    db $db                                        ; $6b47: $db
    nop                                           ; $6b48: $00
    call c, $df00                                 ; $6b49: $dc $00 $df
    nop                                           ; $6b4c: $00
    ldh [rP1], a                                  ; $6b4d: $e0 $00
    pop hl                                        ; $6b4f: $e1
    nop                                           ; $6b50: $00
    db $e3                                        ; $6b51: $e3
    nop                                           ; $6b52: $00
    push hl                                       ; $6b53: $e5
    nop                                           ; $6b54: $00
    and $00                                       ; $6b55: $e6 $00
    add sp, $00                                   ; $6b57: $e8 $00
    jp hl                                         ; $6b59: $e9


    nop                                           ; $6b5a: $00
    db $eb                                        ; $6b5b: $eb
    nop                                           ; $6b5c: $00
    db $ed                                        ; $6b5d: $ed
    nop                                           ; $6b5e: $00
    xor $00                                       ; $6b5f: $ee $00
    ldh a, [rP1]                                  ; $6b61: $f0 $00
    pop af                                        ; $6b63: $f1
    nop                                           ; $6b64: $00
    ld a, [c]                                     ; $6b65: $f2
    nop                                           ; $6b66: $00
    db $f4                                        ; $6b67: $f4
    nop                                           ; $6b68: $00
    push af                                       ; $6b69: $f5
    nop                                           ; $6b6a: $00
    or $00                                        ; $6b6b: $f6 $00
    ld hl, sp+$00                                 ; $6b6d: $f8 $00
    ld a, [$fc00]                                 ; $6b6f: $fa $00 $fc
    nop                                           ; $6b72: $00
    db $fd                                        ; $6b73: $fd
    nop                                           ; $6b74: $00
    rst $38                                       ; $6b75: $ff
    nop                                           ; $6b76: $00
    nop                                           ; $6b77: $00
    ld bc, $0102                                  ; $6b78: $01 $02 $01
    inc b                                         ; $6b7b: $04
    ld bc, $0105                                  ; $6b7c: $01 $05 $01
    ld b, $01                                     ; $6b7f: $06 $01
    ld [$0a01], sp                                ; $6b81: $08 $01 $0a
    ld bc, $010b                                  ; $6b84: $01 $0b $01
    inc c                                         ; $6b87: $0c
    ld bc, $010d                                  ; $6b88: $01 $0d $01
    db $10                                        ; $6b8b: $10
    ld bc, $0110                                  ; $6b8c: $01 $10 $01
    ld [de], a                                    ; $6b8f: $12
    ld bc, $0113                                  ; $6b90: $01 $13 $01
    dec d                                         ; $6b93: $15
    ld bc, $0117                                  ; $6b94: $01 $17 $01
    jr jr_039_6b9a                                ; $6b97: $18 $01

    ld a, [de]                                    ; $6b99: $1a

jr_039_6b9a:
    ld bc, $011b                                  ; $6b9a: $01 $1b $01
    dec e                                         ; $6b9d: $1d
    ld bc, $011e                                  ; $6b9e: $01 $1e $01
    rra                                           ; $6ba1: $1f
    ld bc, $0121                                  ; $6ba2: $01 $21 $01
    ld [hl+], a                                   ; $6ba5: $22
    ld bc, $0124                                  ; $6ba6: $01 $24 $01
    dec h                                         ; $6ba9: $25
    ld bc, $0127                                  ; $6baa: $01 $27 $01
    jr z, jr_039_6bb0                             ; $6bad: $28 $01

    ld a, [hl+]                                   ; $6baf: $2a

jr_039_6bb0:
    ld bc, $012b                                  ; $6bb0: $01 $2b $01
    dec l                                         ; $6bb3: $2d
    ld bc, $012e                                  ; $6bb4: $01 $2e $01
    cpl                                           ; $6bb7: $2f
    ld bc, $0131                                  ; $6bb8: $01 $31 $01
    ld [hl-], a                                   ; $6bbb: $32
    ld bc, HeaderTitle                            ; $6bbc: $01 $34 $01
    ld [hl], $01                                  ; $6bbf: $36 $01
    scf                                           ; $6bc1: $37
    ld bc, $0139                                  ; $6bc2: $01 $39 $01
    ld a, [hl-]                                   ; $6bc5: $3a
    ld bc, $013b                                  ; $6bc6: $01 $3b $01
    dec a                                         ; $6bc9: $3d
    ld bc, HeaderManufacturerCode                 ; $6bca: $01 $3f $01
    ld b, b                                       ; $6bcd: $40
    ld bc, $0141                                  ; $6bce: $01 $41 $01
    ld b, d                                       ; $6bd1: $42
    ld bc, HeaderNewLicenseeCode                  ; $6bd2: $01 $44 $01
    ld b, [hl]                                    ; $6bd5: $46
    ld bc, HeaderCartridgeType                    ; $6bd6: $01 $47 $01
    ld c, c                                       ; $6bd9: $49
    ld bc, HeaderDestinationCode                  ; $6bda: $01 $4a $01
    ld c, e                                       ; $6bdd: $4b
    ld bc, HeaderComplementCheck                  ; $6bde: $01 $4d $01
    ld c, a                                       ; $6be1: $4f
    ld bc, $0150                                  ; $6be2: $01 $50 $01
    ld d, c                                       ; $6be5: $51
    ld bc, $0153                                  ; $6be6: $01 $53 $01
    ld d, l                                       ; $6be9: $55
    ld bc, $0156                                  ; $6bea: $01 $56 $01
    ld e, b                                       ; $6bed: $58
    ld bc, $0159                                  ; $6bee: $01 $59 $01
    ld e, d                                       ; $6bf1: $5a
    ld bc, $015c                                  ; $6bf2: $01 $5c $01
    ld e, l                                       ; $6bf5: $5d
    ld bc, $015f                                  ; $6bf6: $01 $5f $01
    ld h, b                                       ; $6bf9: $60
    ld bc, $0162                                  ; $6bfa: $01 $62 $01
    ld h, e                                       ; $6bfd: $63
    ld bc, $0164                                  ; $6bfe: $01 $64 $01
    ld h, [hl]                                    ; $6c01: $66
    ld bc, $0168                                  ; $6c02: $01 $68 $01
    ld l, c                                       ; $6c05: $69
    ld bc, $016a                                  ; $6c06: $01 $6a $01
    ld l, h                                       ; $6c09: $6c
    ld bc, $016d                                  ; $6c0a: $01 $6d $01
    ld l, a                                       ; $6c0d: $6f
    ld bc, $0170                                  ; $6c0e: $01 $70 $01
    ld [hl], d                                    ; $6c11: $72
    ld bc, $0173                                  ; $6c12: $01 $73 $01
    ld [hl], l                                    ; $6c15: $75
    ld bc, $0176                                  ; $6c16: $01 $76 $01
    ld [hl], a                                    ; $6c19: $77
    ld bc, $0178                                  ; $6c1a: $01 $78 $01
    ld a, d                                       ; $6c1d: $7a
    ld bc, $017c                                  ; $6c1e: $01 $7c $01
    ld a, l                                       ; $6c21: $7d
    ld bc, $017f                                  ; $6c22: $01 $7f $01
    add b                                         ; $6c25: $80
    ld bc, $0182                                  ; $6c26: $01 $82 $01
    add e                                         ; $6c29: $83
    ld bc, $0185                                  ; $6c2a: $01 $85 $01
    add [hl]                                      ; $6c2d: $86
    ld bc, $0188                                  ; $6c2e: $01 $88 $01
    adc c                                         ; $6c31: $89
    ld bc, $018a                                  ; $6c32: $01 $8a $01
    adc h                                         ; $6c35: $8c
    ld bc, $018d                                  ; $6c36: $01 $8d $01
    adc a                                         ; $6c39: $8f
    ld bc, $0190                                  ; $6c3a: $01 $90 $01
    sub c                                         ; $6c3d: $91
    ld bc, $0194                                  ; $6c3e: $01 $94 $01
    sub l                                         ; $6c41: $95
    ld bc, $0196                                  ; $6c42: $01 $96 $01
    sbc b                                         ; $6c45: $98
    ld bc, $0199                                  ; $6c46: $01 $99 $01
    sbc e                                         ; $6c49: $9b
    ld bc, $019c                                  ; $6c4a: $01 $9c $01
    sbc [hl]                                      ; $6c4d: $9e
    ld bc, $019f                                  ; $6c4e: $01 $9f $01
    and c                                         ; $6c51: $a1
    ld bc, $01a2                                  ; $6c52: $01 $a2 $01
    and e                                         ; $6c55: $a3
    ld bc, $01a5                                  ; $6c56: $01 $a5 $01
    and [hl]                                      ; $6c59: $a6
    ld bc, $01a7                                  ; $6c5a: $01 $a7 $01
    xor c                                         ; $6c5d: $a9
    ld bc, $01ab                                  ; $6c5e: $01 $ab $01
    xor h                                         ; $6c61: $ac
    ld bc, $01ad                                  ; $6c62: $01 $ad $01
    xor a                                         ; $6c65: $af
    ld bc, $01b1                                  ; $6c66: $01 $b1 $01
    or e                                          ; $6c69: $b3
    ld bc, $01b3                                  ; $6c6a: $01 $b3 $01
    or l                                          ; $6c6d: $b5
    ld bc, $01b7                                  ; $6c6e: $01 $b7 $01
    cp b                                          ; $6c71: $b8
    ld bc, $01ba                                  ; $6c72: $01 $ba $01
    cp e                                          ; $6c75: $bb
    ld bc, $01bc                                  ; $6c76: $01 $bc $01
    cp [hl]                                       ; $6c79: $be
    ld bc, $01bf                                  ; $6c7a: $01 $bf $01
    pop bc                                        ; $6c7d: $c1
    ld bc, $01c2                                  ; $6c7e: $01 $c2 $01
    call nz, $c501                                ; $6c81: $c4 $01 $c5
    ld bc, $01c7                                  ; $6c84: $01 $c7 $01
    ret z                                         ; $6c87: $c8

    ld bc, $01ca                                  ; $6c88: $01 $ca $01
    rlc c                                         ; $6c8b: $cb $01
    call $ce01                                    ; $6c8d: $cd $01 $ce
    ld bc, $01cf                                  ; $6c90: $01 $cf $01
    pop de                                        ; $6c93: $d1
    ld bc, $01d2                                  ; $6c94: $01 $d2 $01
    call nc, $d501                                ; $6c97: $d4 $01 $d5
    ld bc, $01d7                                  ; $6c9a: $01 $d7 $01
    reti                                          ; $6c9d: $d9


    ld bc, $01da                                  ; $6c9e: $01 $da $01
    db $db                                        ; $6ca1: $db
    ld bc, $0006                                  ; $6ca2: $01 $06 $00
    rrca                                          ; $6ca5: $0f
    nop                                           ; $6ca6: $00
    jr z, jr_039_6ca9                             ; $6ca7: $28 $00

jr_039_6ca9:
    cpl                                           ; $6ca9: $2f
    nop                                           ; $6caa: $00
    ld [hl], $00                                  ; $6cab: $36 $00
    dec sp                                        ; $6cad: $3b
    nop                                           ; $6cae: $00
    ld b, b                                       ; $6caf: $40
    nop                                           ; $6cb0: $00
    ld b, h                                       ; $6cb1: $44
    nop                                           ; $6cb2: $00
    ld c, b                                       ; $6cb3: $48
    nop                                           ; $6cb4: $00
    ld c, [hl]                                    ; $6cb5: $4e
    nop                                           ; $6cb6: $00
    ld d, c                                       ; $6cb7: $51
    nop                                           ; $6cb8: $00
    ld d, l                                       ; $6cb9: $55
    nop                                           ; $6cba: $00
    ld e, c                                       ; $6cbb: $59
    nop                                           ; $6cbc: $00
    ld e, h                                       ; $6cbd: $5c
    nop                                           ; $6cbe: $00
    ld e, a                                       ; $6cbf: $5f
    nop                                           ; $6cc0: $00
    ld h, d                                       ; $6cc1: $62
    nop                                           ; $6cc2: $00
    ld h, h                                       ; $6cc3: $64
    nop                                           ; $6cc4: $00
    ld h, a                                       ; $6cc5: $67
    nop                                           ; $6cc6: $00
    ld l, d                                       ; $6cc7: $6a
    nop                                           ; $6cc8: $00
    ld l, l                                       ; $6cc9: $6d
    nop                                           ; $6cca: $00
    ld l, a                                       ; $6ccb: $6f
    nop                                           ; $6ccc: $00
    ld [hl], d                                    ; $6ccd: $72
    nop                                           ; $6cce: $00
    ld [hl], h                                    ; $6ccf: $74
    nop                                           ; $6cd0: $00
    halt                                          ; $6cd1: $76
    nop                                           ; $6cd2: $00
    ld a, b                                       ; $6cd3: $78
    nop                                           ; $6cd4: $00
    ld a, e                                       ; $6cd5: $7b
    nop                                           ; $6cd6: $00
    ld a, l                                       ; $6cd7: $7d
    nop                                           ; $6cd8: $00
    ld a, a                                       ; $6cd9: $7f
    nop                                           ; $6cda: $00
    add c                                         ; $6cdb: $81
    nop                                           ; $6cdc: $00
    add h                                         ; $6cdd: $84
    nop                                           ; $6cde: $00
    add l                                         ; $6cdf: $85
    nop                                           ; $6ce0: $00
    adc b                                         ; $6ce1: $88
    nop                                           ; $6ce2: $00
    adc d                                         ; $6ce3: $8a
    nop                                           ; $6ce4: $00
    adc h                                         ; $6ce5: $8c
    nop                                           ; $6ce6: $00
    adc [hl]                                      ; $6ce7: $8e
    nop                                           ; $6ce8: $00
    sub b                                         ; $6ce9: $90
    nop                                           ; $6cea: $00
    sub d                                         ; $6ceb: $92
    nop                                           ; $6cec: $00
    sub h                                         ; $6ced: $94
    nop                                           ; $6cee: $00
    sub [hl]                                      ; $6cef: $96
    nop                                           ; $6cf0: $00
    sbc b                                         ; $6cf1: $98
    nop                                           ; $6cf2: $00
    sbc d                                         ; $6cf3: $9a
    nop                                           ; $6cf4: $00
    sbc h                                         ; $6cf5: $9c
    nop                                           ; $6cf6: $00
    sbc [hl]                                      ; $6cf7: $9e
    nop                                           ; $6cf8: $00
    and b                                         ; $6cf9: $a0
    nop                                           ; $6cfa: $00
    and c                                         ; $6cfb: $a1
    nop                                           ; $6cfc: $00
    and e                                         ; $6cfd: $a3
    nop                                           ; $6cfe: $00
    and l                                         ; $6cff: $a5
    nop                                           ; $6d00: $00
    and a                                         ; $6d01: $a7
    nop                                           ; $6d02: $00
    xor c                                         ; $6d03: $a9
    nop                                           ; $6d04: $00
    xor e                                         ; $6d05: $ab
    nop                                           ; $6d06: $00
    xor h                                         ; $6d07: $ac
    nop                                           ; $6d08: $00
    xor [hl]                                      ; $6d09: $ae
    nop                                           ; $6d0a: $00
    or b                                          ; $6d0b: $b0
    nop                                           ; $6d0c: $00
    or d                                          ; $6d0d: $b2
    nop                                           ; $6d0e: $00
    or h                                          ; $6d0f: $b4
    nop                                           ; $6d10: $00
    or [hl]                                       ; $6d11: $b6
    nop                                           ; $6d12: $00
    or a                                          ; $6d13: $b7
    nop                                           ; $6d14: $00
    cp c                                          ; $6d15: $b9
    nop                                           ; $6d16: $00
    cp d                                          ; $6d17: $ba
    nop                                           ; $6d18: $00
    cp l                                          ; $6d19: $bd
    nop                                           ; $6d1a: $00
    cp [hl]                                       ; $6d1b: $be
    nop                                           ; $6d1c: $00
    ret nz                                        ; $6d1d: $c0

    nop                                           ; $6d1e: $00
    jp nz, $c300                                  ; $6d1f: $c2 $00 $c3

    nop                                           ; $6d22: $00
    push bc                                       ; $6d23: $c5
    nop                                           ; $6d24: $00
    rst $00                                       ; $6d25: $c7
    nop                                           ; $6d26: $00
    ret z                                         ; $6d27: $c8

    nop                                           ; $6d28: $00
    jp z, $cc00                                   ; $6d29: $ca $00 $cc

    nop                                           ; $6d2c: $00
    adc $00                                       ; $6d2d: $ce $00
    ret nc                                        ; $6d2f: $d0

    nop                                           ; $6d30: $00
    pop de                                        ; $6d31: $d1
    nop                                           ; $6d32: $00
    call nc, $d500                                ; $6d33: $d4 $00 $d5
    nop                                           ; $6d36: $00
    rst $10                                       ; $6d37: $d7
    nop                                           ; $6d38: $00
    ret c                                         ; $6d39: $d8

    nop                                           ; $6d3a: $00
    jp c, $db00                                   ; $6d3b: $da $00 $db

    nop                                           ; $6d3e: $00
    sbc $00                                       ; $6d3f: $de $00
    rst $18                                       ; $6d41: $df
    nop                                           ; $6d42: $00
    ldh [rP1], a                                  ; $6d43: $e0 $00
    ld [c], a                                     ; $6d45: $e2
    nop                                           ; $6d46: $00
    db $e4                                        ; $6d47: $e4
    nop                                           ; $6d48: $00
    push hl                                       ; $6d49: $e5
    nop                                           ; $6d4a: $00
    rst $20                                       ; $6d4b: $e7
    nop                                           ; $6d4c: $00
    jp hl                                         ; $6d4d: $e9


    nop                                           ; $6d4e: $00
    db $eb                                        ; $6d4f: $eb
    nop                                           ; $6d50: $00
    db $ed                                        ; $6d51: $ed
    nop                                           ; $6d52: $00
    xor $00                                       ; $6d53: $ee $00
    ldh a, [rP1]                                  ; $6d55: $f0 $00
    pop af                                        ; $6d57: $f1
    nop                                           ; $6d58: $00
    di                                            ; $6d59: $f3
    nop                                           ; $6d5a: $00
    push af                                       ; $6d5b: $f5
    nop                                           ; $6d5c: $00
    or $00                                        ; $6d5d: $f6 $00
    ld hl, sp+$00                                 ; $6d5f: $f8 $00
    ld sp, hl                                     ; $6d61: $f9
    nop                                           ; $6d62: $00
    ei                                            ; $6d63: $fb
    nop                                           ; $6d64: $00
    db $fd                                        ; $6d65: $fd
    nop                                           ; $6d66: $00
    rst $38                                       ; $6d67: $ff
    nop                                           ; $6d68: $00
    nop                                           ; $6d69: $00
    ld bc, $0102                                  ; $6d6a: $01 $02 $01
    inc bc                                        ; $6d6d: $03
    ld bc, $0105                                  ; $6d6e: $01 $05 $01
    rlca                                          ; $6d71: $07
    ld bc, $0109                                  ; $6d72: $01 $09 $01
    ld a, [bc]                                    ; $6d75: $0a
    ld bc, $010c                                  ; $6d76: $01 $0c $01
    dec c                                         ; $6d79: $0d
    ld bc, $010e                                  ; $6d7a: $01 $0e $01
    db $10                                        ; $6d7d: $10
    ld bc, $0112                                  ; $6d7e: $01 $12 $01
    inc d                                         ; $6d81: $14
    ld bc, $0115                                  ; $6d82: $01 $15 $01
    rla                                           ; $6d85: $17
    ld bc, $0119                                  ; $6d86: $01 $19 $01
    dec de                                        ; $6d89: $1b
    ld bc, $011c                                  ; $6d8a: $01 $1c $01
    ld e, $01                                     ; $6d8d: $1e $01
    rra                                           ; $6d8f: $1f
    ld bc, $0121                                  ; $6d90: $01 $21 $01
    inc hl                                        ; $6d93: $23
    ld bc, $0124                                  ; $6d94: $01 $24 $01
    ld h, $01                                     ; $6d97: $26 $01
    daa                                           ; $6d99: $27
    ld bc, $0129                                  ; $6d9a: $01 $29 $01
    dec hl                                        ; $6d9d: $2b
    ld bc, $012d                                  ; $6d9e: $01 $2d $01
    ld l, $01                                     ; $6da1: $2e $01
    jr nc, @+$03                                  ; $6da3: $30 $01

    ld sp, $3301                                  ; $6da5: $31 $01 $33
    ld bc, HeaderTitle                            ; $6da8: $01 $34 $01
    ld [hl], $01                                  ; $6dab: $36 $01
    jr c, jr_039_6db0                             ; $6dad: $38 $01

    add hl, sp                                    ; $6daf: $39

jr_039_6db0:
    ld bc, $013b                                  ; $6db0: $01 $3b $01
    dec a                                         ; $6db3: $3d
    ld bc, $013e                                  ; $6db4: $01 $3e $01
    ld b, b                                       ; $6db7: $40
    ld bc, $0142                                  ; $6db8: $01 $42 $01
    ld b, e                                       ; $6dbb: $43
    ld bc, $0145                                  ; $6dbc: $01 $45 $01
    ld b, [hl]                                    ; $6dbf: $46
    ld bc, HeaderROMSize                          ; $6dc0: $01 $48 $01
    ld c, d                                       ; $6dc3: $4a
    ld bc, HeaderOldLicenseeCode                  ; $6dc4: $01 $4b $01
    ld c, l                                       ; $6dc7: $4d
    ld bc, $014f                                  ; $6dc8: $01 $4f $01
    ld d, b                                       ; $6dcb: $50
    ld bc, $0152                                  ; $6dcc: $01 $52 $01
    ld d, h                                       ; $6dcf: $54
    ld bc, $0155                                  ; $6dd0: $01 $55 $01
    ld d, a                                       ; $6dd3: $57
    ld bc, $0158                                  ; $6dd4: $01 $58 $01
    ld e, d                                       ; $6dd7: $5a
    ld bc, $015c                                  ; $6dd8: $01 $5c $01
    ld e, l                                       ; $6ddb: $5d
    ld bc, $015f                                  ; $6ddc: $01 $5f $01
    ld h, c                                       ; $6ddf: $61
    ld bc, $0162                                  ; $6de0: $01 $62 $01
    ld h, h                                       ; $6de3: $64
    ld bc, $0166                                  ; $6de4: $01 $66 $01
    ld h, a                                       ; $6de7: $67
    ld bc, $0169                                  ; $6de8: $01 $69 $01
    ld l, e                                       ; $6deb: $6b
    ld bc, $016c                                  ; $6dec: $01 $6c $01
    ld l, [hl]                                    ; $6def: $6e
    ld bc, $016f                                  ; $6df0: $01 $6f $01
    ld [hl], c                                    ; $6df3: $71
    ld bc, $0173                                  ; $6df4: $01 $73 $01
    ld [hl], h                                    ; $6df7: $74
    ld bc, $0176                                  ; $6df8: $01 $76 $01
    ld a, b                                       ; $6dfb: $78
    ld bc, $017a                                  ; $6dfc: $01 $7a $01
    ld a, e                                       ; $6dff: $7b
    ld bc, $017d                                  ; $6e00: $01 $7d $01
    ld a, [hl]                                    ; $6e03: $7e
    ld bc, $0180                                  ; $6e04: $01 $80 $01
    add c                                         ; $6e07: $81
    ld bc, $0183                                  ; $6e08: $01 $83 $01
    add l                                         ; $6e0b: $85
    ld bc, $0187                                  ; $6e0c: $01 $87 $01
    adc b                                         ; $6e0f: $88
    ld bc, $018a                                  ; $6e10: $01 $8a $01
    adc h                                         ; $6e13: $8c
    ld bc, $018d                                  ; $6e14: $01 $8d $01
    adc a                                         ; $6e17: $8f
    ld bc, $0191                                  ; $6e18: $01 $91 $01
    sub d                                         ; $6e1b: $92
    ld bc, $0194                                  ; $6e1c: $01 $94 $01
    sub [hl]                                      ; $6e1f: $96
    ld bc, $0197                                  ; $6e20: $01 $97 $01
    sbc c                                         ; $6e23: $99
    ld bc, $019a                                  ; $6e24: $01 $9a $01
    sbc h                                         ; $6e27: $9c
    ld bc, $019d                                  ; $6e28: $01 $9d $01
    sbc a                                         ; $6e2b: $9f
    ld bc, $01a1                                  ; $6e2c: $01 $a1 $01
    and e                                         ; $6e2f: $a3
    ld bc, $01a4                                  ; $6e30: $01 $a4 $01
    and [hl]                                      ; $6e33: $a6
    ld bc, $01a7                                  ; $6e34: $01 $a7 $01
    xor c                                         ; $6e37: $a9
    ld bc, $01ab                                  ; $6e38: $01 $ab $01
    xor l                                         ; $6e3b: $ad
    ld bc, $01ae                                  ; $6e3c: $01 $ae $01
    or b                                          ; $6e3f: $b0
    ld bc, $01b1                                  ; $6e40: $01 $b1 $01
    or e                                          ; $6e43: $b3
    ld bc, $01b5                                  ; $6e44: $01 $b5 $01
    or [hl]                                       ; $6e47: $b6
    ld bc, $01b9                                  ; $6e48: $01 $b9 $01
    cp d                                          ; $6e4b: $ba
    ld bc, $01bb                                  ; $6e4c: $01 $bb $01
    cp l                                          ; $6e4f: $bd
    ld bc, $01bf                                  ; $6e50: $01 $bf $01
    pop bc                                        ; $6e53: $c1
    ld bc, $01c2                                  ; $6e54: $01 $c2 $01
    call nz, $c601                                ; $6e57: $c4 $01 $c6
    ld bc, $01c7                                  ; $6e5a: $01 $c7 $01
    ret                                           ; $6e5d: $c9


    ld bc, $01cb                                  ; $6e5e: $01 $cb $01
    call z, $ce01                                 ; $6e61: $cc $01 $ce
    ld bc, $01cf                                  ; $6e64: $01 $cf $01
    pop de                                        ; $6e67: $d1
    ld bc, $01d3                                  ; $6e68: $01 $d3 $01
    call nc, $d601                                ; $6e6b: $d4 $01 $d6
    ld bc, $01d8                                  ; $6e6e: $01 $d8 $01
    jp c, $db01                                   ; $6e71: $da $01 $db

    ld bc, $01dd                                  ; $6e74: $01 $dd $01
    rst $18                                       ; $6e77: $df
    ld bc, $0006                                  ; $6e78: $01 $06 $00
    stop                                          ; $6e7b: $10 $00
    dec hl                                        ; $6e7d: $2b
    nop                                           ; $6e7e: $00
    ld [hl-], a                                   ; $6e7f: $32
    nop                                           ; $6e80: $00
    jr c, jr_039_6e83                             ; $6e81: $38 $00

jr_039_6e83:
    ld a, $00                                     ; $6e83: $3e $00
    ld b, e                                       ; $6e85: $43
    nop                                           ; $6e86: $00
    ld b, a                                       ; $6e87: $47
    nop                                           ; $6e88: $00
    ld c, l                                       ; $6e89: $4d
    nop                                           ; $6e8a: $00
    ld c, a                                       ; $6e8b: $4f
    nop                                           ; $6e8c: $00
    ld d, l                                       ; $6e8d: $55
    nop                                           ; $6e8e: $00
    ld e, c                                       ; $6e8f: $59
    nop                                           ; $6e90: $00
    ld e, e                                       ; $6e91: $5b
    nop                                           ; $6e92: $00
    ld e, a                                       ; $6e93: $5f
    nop                                           ; $6e94: $00
    ld h, d                                       ; $6e95: $62
    nop                                           ; $6e96: $00
    ld h, l                                       ; $6e97: $65
    nop                                           ; $6e98: $00
    ld l, b                                       ; $6e99: $68
    nop                                           ; $6e9a: $00
    ld l, d                                       ; $6e9b: $6a
    nop                                           ; $6e9c: $00
    ld l, l                                       ; $6e9d: $6d
    nop                                           ; $6e9e: $00
    ld [hl], b                                    ; $6e9f: $70
    nop                                           ; $6ea0: $00
    ld [hl], d                                    ; $6ea1: $72
    nop                                           ; $6ea2: $00
    ld [hl], l                                    ; $6ea3: $75
    nop                                           ; $6ea4: $00
    ld [hl], a                                    ; $6ea5: $77
    nop                                           ; $6ea6: $00
    ld a, d                                       ; $6ea7: $7a
    nop                                           ; $6ea8: $00
    ld a, h                                       ; $6ea9: $7c
    nop                                           ; $6eaa: $00
    ld a, [hl]                                    ; $6eab: $7e
    nop                                           ; $6eac: $00
    add b                                         ; $6ead: $80
    nop                                           ; $6eae: $00
    add e                                         ; $6eaf: $83
    nop                                           ; $6eb0: $00
    add l                                         ; $6eb1: $85
    nop                                           ; $6eb2: $00
    add a                                         ; $6eb3: $87
    nop                                           ; $6eb4: $00
    adc c                                         ; $6eb5: $89
    nop                                           ; $6eb6: $00
    adc h                                         ; $6eb7: $8c
    nop                                           ; $6eb8: $00
    adc [hl]                                      ; $6eb9: $8e
    nop                                           ; $6eba: $00
    sub b                                         ; $6ebb: $90
    nop                                           ; $6ebc: $00
    sub d                                         ; $6ebd: $92
    nop                                           ; $6ebe: $00
    sub h                                         ; $6ebf: $94
    nop                                           ; $6ec0: $00
    sub a                                         ; $6ec1: $97
    nop                                           ; $6ec2: $00
    sbc c                                         ; $6ec3: $99
    nop                                           ; $6ec4: $00
    sbc e                                         ; $6ec5: $9b
    nop                                           ; $6ec6: $00
    sbc l                                         ; $6ec7: $9d
    nop                                           ; $6ec8: $00
    sbc [hl]                                      ; $6ec9: $9e
    nop                                           ; $6eca: $00
    and b                                         ; $6ecb: $a0
    nop                                           ; $6ecc: $00
    and d                                         ; $6ecd: $a2
    nop                                           ; $6ece: $00
    and h                                         ; $6ecf: $a4
    nop                                           ; $6ed0: $00
    and [hl]                                      ; $6ed1: $a6
    nop                                           ; $6ed2: $00
    xor b                                         ; $6ed3: $a8
    nop                                           ; $6ed4: $00
    xor d                                         ; $6ed5: $aa
    nop                                           ; $6ed6: $00
    xor h                                         ; $6ed7: $ac
    nop                                           ; $6ed8: $00
    xor [hl]                                      ; $6ed9: $ae
    nop                                           ; $6eda: $00
    or b                                          ; $6edb: $b0
    nop                                           ; $6edc: $00
    or d                                          ; $6edd: $b2
    nop                                           ; $6ede: $00
    or h                                          ; $6edf: $b4
    nop                                           ; $6ee0: $00
    or [hl]                                       ; $6ee1: $b6
    nop                                           ; $6ee2: $00
    cp b                                          ; $6ee3: $b8
    nop                                           ; $6ee4: $00
    cp d                                          ; $6ee5: $ba
    nop                                           ; $6ee6: $00
    cp e                                          ; $6ee7: $bb
    nop                                           ; $6ee8: $00
    cp l                                          ; $6ee9: $bd
    nop                                           ; $6eea: $00
    cp a                                          ; $6eeb: $bf
    nop                                           ; $6eec: $00
    pop bc                                        ; $6eed: $c1
    nop                                           ; $6eee: $00
    jp $c500                                      ; $6eef: $c3 $00 $c5


    nop                                           ; $6ef2: $00
    rst $00                                       ; $6ef3: $c7
    nop                                           ; $6ef4: $00
    ret z                                         ; $6ef5: $c8

    nop                                           ; $6ef6: $00
    rlc b                                         ; $6ef7: $cb $00
    call $ce00                                    ; $6ef9: $cd $00 $ce
    nop                                           ; $6efc: $00
    ret nc                                        ; $6efd: $d0

    nop                                           ; $6efe: $00
    jp nc, $d400                                  ; $6eff: $d2 $00 $d4

    nop                                           ; $6f02: $00
    push de                                       ; $6f03: $d5
    nop                                           ; $6f04: $00
    rst $10                                       ; $6f05: $d7
    nop                                           ; $6f06: $00
    reti                                          ; $6f07: $d9


    nop                                           ; $6f08: $00
    db $db                                        ; $6f09: $db
    nop                                           ; $6f0a: $00
    call c, $de00                                 ; $6f0b: $dc $00 $de
    nop                                           ; $6f0e: $00
    ldh [rP1], a                                  ; $6f0f: $e0 $00
    ld [c], a                                     ; $6f11: $e2
    nop                                           ; $6f12: $00
    db $e4                                        ; $6f13: $e4
    nop                                           ; $6f14: $00
    and $00                                       ; $6f15: $e6 $00
    add sp, $00                                   ; $6f17: $e8 $00
    ld [$ec00], a                                 ; $6f19: $ea $00 $ec
    nop                                           ; $6f1c: $00
    db $ed                                        ; $6f1d: $ed
    nop                                           ; $6f1e: $00
    rst $28                                       ; $6f1f: $ef
    nop                                           ; $6f20: $00
    ldh a, [rP1]                                  ; $6f21: $f0 $00
    di                                            ; $6f23: $f3
    nop                                           ; $6f24: $00
    db $f4                                        ; $6f25: $f4
    nop                                           ; $6f26: $00
    or $00                                        ; $6f27: $f6 $00
    ld hl, sp+$00                                 ; $6f29: $f8 $00
    ld a, [$fb00]                                 ; $6f2b: $fa $00 $fb
    nop                                           ; $6f2e: $00
    db $fd                                        ; $6f2f: $fd
    nop                                           ; $6f30: $00
    rst $38                                       ; $6f31: $ff
    nop                                           ; $6f32: $00
    ld bc, $0201                                  ; $6f33: $01 $01 $02
    ld bc, HeaderLogo                             ; $6f36: $01 $04 $01
    ld b, $01                                     ; $6f39: $06 $01
    ld [$0901], sp                                ; $6f3b: $08 $01 $09
    ld bc, $010b                                  ; $6f3e: $01 $0b $01
    dec c                                         ; $6f41: $0d
    ld bc, $010f                                  ; $6f42: $01 $0f $01
    db $10                                        ; $6f45: $10
    ld bc, $0113                                  ; $6f46: $01 $13 $01
    inc d                                         ; $6f49: $14
    ld bc, $0116                                  ; $6f4a: $01 $16 $01
    jr jr_039_6f50                                ; $6f4d: $18 $01

    ld a, [de]                                    ; $6f4f: $1a

jr_039_6f50:
    ld bc, $011b                                  ; $6f50: $01 $1b $01
    dec e                                         ; $6f53: $1d
    ld bc, $011f                                  ; $6f54: $01 $1f $01
    ld hl, $2301                                  ; $6f57: $21 $01 $23
    ld bc, $0124                                  ; $6f5a: $01 $24 $01
    ld h, $01                                     ; $6f5d: $26 $01
    jr z, jr_039_6f62                             ; $6f5f: $28 $01

    add hl, hl                                    ; $6f61: $29

jr_039_6f62:
    ld bc, $012b                                  ; $6f62: $01 $2b $01
    dec l                                         ; $6f65: $2d
    ld bc, $012e                                  ; $6f66: $01 $2e $01
    ld sp, $3201                                  ; $6f69: $31 $01 $32
    ld bc, HeaderTitle                            ; $6f6c: $01 $34 $01
    ld [hl], $01                                  ; $6f6f: $36 $01
    jr c, jr_039_6f74                             ; $6f71: $38 $01

    add hl, sp                                    ; $6f73: $39

jr_039_6f74:
    ld bc, $013b                                  ; $6f74: $01 $3b $01
    dec a                                         ; $6f77: $3d
    ld bc, $013e                                  ; $6f78: $01 $3e $01
    ld b, b                                       ; $6f7b: $40
    ld bc, $0142                                  ; $6f7c: $01 $42 $01
    ld b, h                                       ; $6f7f: $44
    ld bc, HeaderSGBFlag                          ; $6f80: $01 $46 $01
    ld c, b                                       ; $6f83: $48
    ld bc, HeaderRAMSize                          ; $6f84: $01 $49 $01
    ld c, e                                       ; $6f87: $4b
    ld bc, HeaderComplementCheck                  ; $6f88: $01 $4d $01
    ld c, a                                       ; $6f8b: $4f
    ld bc, $0150                                  ; $6f8c: $01 $50 $01
    ld d, d                                       ; $6f8f: $52
    ld bc, $0154                                  ; $6f90: $01 $54 $01
    ld d, [hl]                                    ; $6f93: $56
    ld bc, $0157                                  ; $6f94: $01 $57 $01
    ld e, c                                       ; $6f97: $59
    ld bc, $015b                                  ; $6f98: $01 $5b $01
    ld e, l                                       ; $6f9b: $5d
    ld bc, $015f                                  ; $6f9c: $01 $5f $01
    ld h, b                                       ; $6f9f: $60
    ld bc, $0162                                  ; $6fa0: $01 $62 $01
    ld h, h                                       ; $6fa3: $64
    ld bc, $0166                                  ; $6fa4: $01 $66 $01
    ld h, a                                       ; $6fa7: $67
    ld bc, $0169                                  ; $6fa8: $01 $69 $01
    ld l, e                                       ; $6fab: $6b
    ld bc, $016c                                  ; $6fac: $01 $6c $01
    ld l, a                                       ; $6faf: $6f
    ld bc, $0171                                  ; $6fb0: $01 $71 $01
    ld [hl], d                                    ; $6fb3: $72
    ld bc, $0174                                  ; $6fb4: $01 $74 $01
    halt                                          ; $6fb7: $76
    ld bc, $0178                                  ; $6fb8: $01 $78 $01
    ld a, d                                       ; $6fbb: $7a
    ld bc, $017b                                  ; $6fbc: $01 $7b $01
    ld a, l                                       ; $6fbf: $7d
    ld bc, $017f                                  ; $6fc0: $01 $7f $01
    add b                                         ; $6fc3: $80
    ld bc, $0182                                  ; $6fc4: $01 $82 $01
    add h                                         ; $6fc7: $84
    ld bc, $0186                                  ; $6fc8: $01 $86 $01
    adc b                                         ; $6fcb: $88
    ld bc, $0189                                  ; $6fcc: $01 $89 $01
    adc e                                         ; $6fcf: $8b
    ld bc, $018d                                  ; $6fd0: $01 $8d $01
    adc a                                         ; $6fd3: $8f
    ld bc, $0191                                  ; $6fd4: $01 $91 $01
    sub d                                         ; $6fd7: $92
    ld bc, $0194                                  ; $6fd8: $01 $94 $01
    sub [hl]                                      ; $6fdb: $96
    ld bc, $0198                                  ; $6fdc: $01 $98 $01
    sbc d                                         ; $6fdf: $9a
    ld bc, $019b                                  ; $6fe0: $01 $9b $01
    sbc l                                         ; $6fe3: $9d
    ld bc, $019f                                  ; $6fe4: $01 $9f $01
    and c                                         ; $6fe7: $a1
    ld bc, $01a2                                  ; $6fe8: $01 $a2 $01
    and h                                         ; $6feb: $a4
    ld bc, $01a6                                  ; $6fec: $01 $a6 $01
    xor b                                         ; $6fef: $a8
    ld bc, $01aa                                  ; $6ff0: $01 $aa $01
    xor e                                         ; $6ff3: $ab
    ld bc, $01ad                                  ; $6ff4: $01 $ad $01
    xor a                                         ; $6ff7: $af
    ld bc, $01b1                                  ; $6ff8: $01 $b1 $01
    or e                                          ; $6ffb: $b3
    ld bc, $01b5                                  ; $6ffc: $01 $b5 $01
    or [hl]                                       ; $6fff: $b6
    ld bc, $01b8                                  ; $7000: $01 $b8 $01
    cp d                                          ; $7003: $ba
    ld bc, $01bc                                  ; $7004: $01 $bc $01
    cp [hl]                                       ; $7007: $be
    ld bc, $01c0                                  ; $7008: $01 $c0 $01
    pop bc                                        ; $700b: $c1
    ld bc, $01c3                                  ; $700c: $01 $c3 $01
    push bc                                       ; $700f: $c5
    ld bc, $01c7                                  ; $7010: $01 $c7 $01
    ret                                           ; $7013: $c9


    ld bc, $01ca                                  ; $7014: $01 $ca $01
    call z, $ce01                                 ; $7017: $cc $01 $ce
    ld bc, $01d0                                  ; $701a: $01 $d0 $01
    jp nc, $d401                                  ; $701d: $d2 $01 $d4

    ld bc, $01d5                                  ; $7020: $01 $d5 $01
    rst $10                                       ; $7023: $d7
    ld bc, $01d9                                  ; $7024: $01 $d9 $01
    db $db                                        ; $7027: $db
    ld bc, $01dd                                  ; $7028: $01 $dd $01
    sbc $01                                       ; $702b: $de $01
    inc b                                         ; $702d: $04
    nop                                           ; $702e: $00
    stop                                          ; $702f: $10 $00
    ld [hl+], a                                   ; $7031: $22
    nop                                           ; $7032: $00
    ld a, [hl+]                                   ; $7033: $2a
    nop                                           ; $7034: $00
    jr nc, jr_039_7037                            ; $7035: $30 $00

jr_039_7037:
    scf                                           ; $7037: $37
    nop                                           ; $7038: $00
    inc a                                         ; $7039: $3c
    nop                                           ; $703a: $00
    ld b, d                                       ; $703b: $42
    nop                                           ; $703c: $00
    ld b, [hl]                                    ; $703d: $46
    nop                                           ; $703e: $00
    ld c, l                                       ; $703f: $4d
    nop                                           ; $7040: $00
    ld d, d                                       ; $7041: $52
    nop                                           ; $7042: $00
    ld d, l                                       ; $7043: $55
    nop                                           ; $7044: $00
    ld e, c                                       ; $7045: $59
    nop                                           ; $7046: $00
    ld e, l                                       ; $7047: $5d
    nop                                           ; $7048: $00
    ld h, c                                       ; $7049: $61
    nop                                           ; $704a: $00
    ld h, l                                       ; $704b: $65
    nop                                           ; $704c: $00
    ld l, b                                       ; $704d: $68
    nop                                           ; $704e: $00
    ld l, e                                       ; $704f: $6b
    nop                                           ; $7050: $00
    ld l, [hl]                                    ; $7051: $6e
    nop                                           ; $7052: $00
    ld [hl], c                                    ; $7053: $71
    nop                                           ; $7054: $00
    ld [hl], h                                    ; $7055: $74
    nop                                           ; $7056: $00
    ld a, b                                       ; $7057: $78
    nop                                           ; $7058: $00
    ld a, d                                       ; $7059: $7a
    nop                                           ; $705a: $00
    ld a, [hl]                                    ; $705b: $7e
    nop                                           ; $705c: $00
    add b                                         ; $705d: $80
    nop                                           ; $705e: $00
    add d                                         ; $705f: $82
    nop                                           ; $7060: $00
    add [hl]                                      ; $7061: $86
    nop                                           ; $7062: $00
    adc b                                         ; $7063: $88
    nop                                           ; $7064: $00
    adc d                                         ; $7065: $8a
    nop                                           ; $7066: $00
    adc l                                         ; $7067: $8d
    nop                                           ; $7068: $00
    sub b                                         ; $7069: $90
    nop                                           ; $706a: $00
    sub d                                         ; $706b: $92
    nop                                           ; $706c: $00
    sub l                                         ; $706d: $95
    nop                                           ; $706e: $00
    sbc b                                         ; $706f: $98
    nop                                           ; $7070: $00
    sbc d                                         ; $7071: $9a
    nop                                           ; $7072: $00
    sbc h                                         ; $7073: $9c
    nop                                           ; $7074: $00
    sbc a                                         ; $7075: $9f
    nop                                           ; $7076: $00
    and d                                         ; $7077: $a2
    nop                                           ; $7078: $00
    and h                                         ; $7079: $a4
    nop                                           ; $707a: $00
    and [hl]                                      ; $707b: $a6
    nop                                           ; $707c: $00
    xor c                                         ; $707d: $a9
    nop                                           ; $707e: $00
    xor e                                         ; $707f: $ab
    nop                                           ; $7080: $00
    xor l                                         ; $7081: $ad
    nop                                           ; $7082: $00
    xor a                                         ; $7083: $af
    nop                                           ; $7084: $00
    or d                                          ; $7085: $b2
    nop                                           ; $7086: $00
    or h                                          ; $7087: $b4
    nop                                           ; $7088: $00
    or [hl]                                       ; $7089: $b6
    nop                                           ; $708a: $00
    cp b                                          ; $708b: $b8
    nop                                           ; $708c: $00
    cp d                                          ; $708d: $ba
    nop                                           ; $708e: $00
    cp l                                          ; $708f: $bd
    nop                                           ; $7090: $00
    cp a                                          ; $7091: $bf
    nop                                           ; $7092: $00
    pop bc                                        ; $7093: $c1
    nop                                           ; $7094: $00
    jp $c500                                      ; $7095: $c3 $00 $c5


    nop                                           ; $7098: $00
    rst $00                                       ; $7099: $c7
    nop                                           ; $709a: $00
    ret                                           ; $709b: $c9


    nop                                           ; $709c: $00
    rlc b                                         ; $709d: $cb $00
    call $d000                                    ; $709f: $cd $00 $d0
    nop                                           ; $70a2: $00
    jp nc, $d400                                  ; $70a3: $d2 $00 $d4

    nop                                           ; $70a6: $00
    push de                                       ; $70a7: $d5
    nop                                           ; $70a8: $00
    ret c                                         ; $70a9: $d8

    nop                                           ; $70aa: $00
    jp c, $db00                                   ; $70ab: $da $00 $db

    nop                                           ; $70ae: $00
    sbc $00                                       ; $70af: $de $00
    ldh [rP1], a                                  ; $70b1: $e0 $00
    ld [c], a                                     ; $70b3: $e2
    nop                                           ; $70b4: $00
    push hl                                       ; $70b5: $e5
    nop                                           ; $70b6: $00
    and $00                                       ; $70b7: $e6 $00
    add sp, $00                                   ; $70b9: $e8 $00
    ld [$ec00], a                                 ; $70bb: $ea $00 $ec
    nop                                           ; $70be: $00
    db $ed                                        ; $70bf: $ed
    nop                                           ; $70c0: $00
    ldh a, [rP1]                                  ; $70c1: $f0 $00
    pop af                                        ; $70c3: $f1
    nop                                           ; $70c4: $00
    db $f4                                        ; $70c5: $f4
    nop                                           ; $70c6: $00
    or $00                                        ; $70c7: $f6 $00
    rst $30                                       ; $70c9: $f7
    nop                                           ; $70ca: $00
    ld sp, hl                                     ; $70cb: $f9
    nop                                           ; $70cc: $00
    ei                                            ; $70cd: $fb
    nop                                           ; $70ce: $00
    cp $00                                        ; $70cf: $fe $00
    rst $38                                       ; $70d1: $ff
    nop                                           ; $70d2: $00
    ld bc, $0301                                  ; $70d3: $01 $01 $03
    ld bc, $0105                                  ; $70d6: $01 $05 $01
    rlca                                          ; $70d9: $07
    ld bc, $0109                                  ; $70da: $01 $09 $01
    ld a, [bc]                                    ; $70dd: $0a
    ld bc, $010d                                  ; $70de: $01 $0d $01
    rrca                                          ; $70e1: $0f
    ld bc, $0110                                  ; $70e2: $01 $10 $01
    ld [de], a                                    ; $70e5: $12
    ld bc, $0114                                  ; $70e6: $01 $14 $01
    ld d, $01                                     ; $70e9: $16 $01
    jr jr_039_70ee                                ; $70eb: $18 $01

    add hl, de                                    ; $70ed: $19

jr_039_70ee:
    ld bc, $011b                                  ; $70ee: $01 $1b $01
    dec e                                         ; $70f1: $1d
    ld bc, $011f                                  ; $70f2: $01 $1f $01
    ld hl, $2201                                  ; $70f5: $21 $01 $22
    ld bc, $0125                                  ; $70f8: $01 $25 $01
    ld h, $01                                     ; $70fb: $26 $01
    jr z, jr_039_7100                             ; $70fd: $28 $01

    ld a, [hl+]                                   ; $70ff: $2a

jr_039_7100:
    ld bc, $012c                                  ; $7100: $01 $2c $01
    ld l, $01                                     ; $7103: $2e $01
    jr nc, @+$03                                  ; $7105: $30 $01

    ld sp, $3301                                  ; $7107: $31 $01 $33
    ld bc, $0135                                  ; $710a: $01 $35 $01
    ld [hl], $01                                  ; $710d: $36 $01
    add hl, sp                                    ; $710f: $39
    ld bc, $013a                                  ; $7110: $01 $3a $01
    inc a                                         ; $7113: $3c
    ld bc, $013d                                  ; $7114: $01 $3d $01
    ccf                                           ; $7117: $3f
    ld bc, $0142                                  ; $7118: $01 $42 $01
    ld b, e                                       ; $711b: $43
    ld bc, $0145                                  ; $711c: $01 $45 $01
    ld b, [hl]                                    ; $711f: $46
    ld bc, HeaderROMSize                          ; $7120: $01 $48 $01
    ld c, d                                       ; $7123: $4a
    ld bc, HeaderMaskROMVersion                   ; $7124: $01 $4c $01
    ld c, l                                       ; $7127: $4d
    ld bc, $0150                                  ; $7128: $01 $50 $01
    ld d, c                                       ; $712b: $51
    ld bc, $0153                                  ; $712c: $01 $53 $01
    ld d, h                                       ; $712f: $54
    ld bc, $0157                                  ; $7130: $01 $57 $01
    ld e, b                                       ; $7133: $58
    ld bc, $015a                                  ; $7134: $01 $5a $01
    ld e, h                                       ; $7137: $5c
    ld bc, $015e                                  ; $7138: $01 $5e $01
    ld e, a                                       ; $713b: $5f
    ld bc, $0161                                  ; $713c: $01 $61 $01
    ld h, e                                       ; $713f: $63
    ld bc, $0165                                  ; $7140: $01 $65 $01
    ld h, [hl]                                    ; $7143: $66
    ld bc, $0168                                  ; $7144: $01 $68 $01
    ld l, d                                       ; $7147: $6a
    ld bc, $016b                                  ; $7148: $01 $6b $01
    ld l, l                                       ; $714b: $6d
    ld bc, $016f                                  ; $714c: $01 $6f $01
    ld [hl], c                                    ; $714f: $71
    ld bc, $0172                                  ; $7150: $01 $72 $01
    ld [hl], l                                    ; $7153: $75
    ld bc, $0176                                  ; $7154: $01 $76 $01
    ld a, b                                       ; $7157: $78
    ld bc, $017a                                  ; $7158: $01 $7a $01
    ld a, e                                       ; $715b: $7b
    ld bc, $017d                                  ; $715c: $01 $7d $01
    ld a, a                                       ; $715f: $7f
    ld bc, $0180                                  ; $7160: $01 $80 $01
    add d                                         ; $7163: $82
    ld bc, $0184                                  ; $7164: $01 $84 $01
    add [hl]                                      ; $7167: $86
    ld bc, $0187                                  ; $7168: $01 $87 $01
    adc c                                         ; $716b: $89
    ld bc, $018b                                  ; $716c: $01 $8b $01
    adc l                                         ; $716f: $8d
    ld bc, $018e                                  ; $7170: $01 $8e $01
    sub b                                         ; $7173: $90
    ld bc, $0192                                  ; $7174: $01 $92 $01
    sub h                                         ; $7177: $94
    ld bc, $0195                                  ; $7178: $01 $95 $01
    sub a                                         ; $717b: $97
    ld bc, $0199                                  ; $717c: $01 $99 $01
    sbc d                                         ; $717f: $9a
    ld bc, $019c                                  ; $7180: $01 $9c $01
    sbc [hl]                                      ; $7183: $9e
    ld bc, $01a0                                  ; $7184: $01 $a0 $01
    and c                                         ; $7187: $a1
    ld bc, $01a4                                  ; $7188: $01 $a4 $01
    and l                                         ; $718b: $a5
    ld bc, $01a6                                  ; $718c: $01 $a6 $01
    xor b                                         ; $718f: $a8
    ld bc, $01aa                                  ; $7190: $01 $aa $01
    xor h                                         ; $7193: $ac
    ld bc, $01ae                                  ; $7194: $01 $ae $01
    xor a                                         ; $7197: $af
    ld bc, $01b1                                  ; $7198: $01 $b1 $01
    or e                                          ; $719b: $b3
    ld bc, $01b4                                  ; $719c: $01 $b4 $01
    or [hl]                                       ; $719f: $b6
    ld bc, $01b8                                  ; $71a0: $01 $b8 $01
    cp d                                          ; $71a3: $ba
    ld bc, $01bc                                  ; $71a4: $01 $bc $01
    cp l                                          ; $71a7: $bd
    ld bc, $01bf                                  ; $71a8: $01 $bf $01
    pop bc                                        ; $71ab: $c1
    ld bc, $01c2                                  ; $71ac: $01 $c2 $01
    call nz, $c501                                ; $71af: $c4 $01 $c5
    ld bc, $01c7                                  ; $71b2: $01 $c7 $01
    ret                                           ; $71b5: $c9


    ld bc, $01cb                                  ; $71b6: $01 $cb $01
    call $ce01                                    ; $71b9: $cd $01 $ce
    ld bc, $01d0                                  ; $71bc: $01 $d0 $01
    jp nc, $d401                                  ; $71bf: $d2 $01 $d4

    ld bc, $01d5                                  ; $71c2: $01 $d5 $01
    rst $10                                       ; $71c5: $d7
    ld bc, $01d9                                  ; $71c6: $01 $d9 $01
    jp c, $dc01                                   ; $71c9: $da $01 $dc

    ld bc, $01de                                  ; $71cc: $01 $de $01
    rst $18                                       ; $71cf: $df
    ld bc, $0004                                  ; $71d0: $01 $04 $00
    dec e                                         ; $71d3: $1d
    nop                                           ; $71d4: $00
    ld h, $00                                     ; $71d5: $26 $00
    ld l, $00                                     ; $71d7: $2e $00
    inc [hl]                                      ; $71d9: $34
    nop                                           ; $71da: $00
    ld a, [hl-]                                   ; $71db: $3a
    nop                                           ; $71dc: $00
    ld b, c                                       ; $71dd: $41
    nop                                           ; $71de: $00
    ld b, a                                       ; $71df: $47
    nop                                           ; $71e0: $00
    ld c, e                                       ; $71e1: $4b
    nop                                           ; $71e2: $00
    ld d, b                                       ; $71e3: $50
    nop                                           ; $71e4: $00
    ld d, e                                       ; $71e5: $53
    nop                                           ; $71e6: $00
    ld e, b                                       ; $71e7: $58
    nop                                           ; $71e8: $00
    ld e, h                                       ; $71e9: $5c
    nop                                           ; $71ea: $00
    ld e, a                                       ; $71eb: $5f
    nop                                           ; $71ec: $00
    ld h, e                                       ; $71ed: $63
    nop                                           ; $71ee: $00
    ld h, a                                       ; $71ef: $67
    nop                                           ; $71f0: $00
    ld l, c                                       ; $71f1: $69
    nop                                           ; $71f2: $00
    ld l, h                                       ; $71f3: $6c
    nop                                           ; $71f4: $00
    ld [hl], b                                    ; $71f5: $70
    nop                                           ; $71f6: $00
    ld [hl], e                                    ; $71f7: $73
    nop                                           ; $71f8: $00
    halt                                          ; $71f9: $76
    nop                                           ; $71fa: $00
    ld a, c                                       ; $71fb: $79
    nop                                           ; $71fc: $00
    ld a, h                                       ; $71fd: $7c
    nop                                           ; $71fe: $00
    ld a, a                                       ; $71ff: $7f
    nop                                           ; $7200: $00
    add d                                         ; $7201: $82
    nop                                           ; $7202: $00
    add h                                         ; $7203: $84
    nop                                           ; $7204: $00
    add a                                         ; $7205: $87
    nop                                           ; $7206: $00
    adc d                                         ; $7207: $8a
    nop                                           ; $7208: $00
    adc h                                         ; $7209: $8c
    nop                                           ; $720a: $00
    adc a                                         ; $720b: $8f
    nop                                           ; $720c: $00
    sub d                                         ; $720d: $92
    nop                                           ; $720e: $00
    sub h                                         ; $720f: $94
    nop                                           ; $7210: $00
    sub a                                         ; $7211: $97
    nop                                           ; $7212: $00
    sbc c                                         ; $7213: $99
    nop                                           ; $7214: $00
    sbc h                                         ; $7215: $9c
    nop                                           ; $7216: $00
    sbc [hl]                                      ; $7217: $9e
    nop                                           ; $7218: $00
    and c                                         ; $7219: $a1
    nop                                           ; $721a: $00
    and d                                         ; $721b: $a2
    nop                                           ; $721c: $00
    and l                                         ; $721d: $a5
    nop                                           ; $721e: $00
    xor b                                         ; $721f: $a8
    nop                                           ; $7220: $00
    xor d                                         ; $7221: $aa
    nop                                           ; $7222: $00
    xor h                                         ; $7223: $ac
    nop                                           ; $7224: $00
    xor [hl]                                      ; $7225: $ae
    nop                                           ; $7226: $00
    or c                                          ; $7227: $b1
    nop                                           ; $7228: $00
    or e                                          ; $7229: $b3
    nop                                           ; $722a: $00
    or l                                          ; $722b: $b5
    nop                                           ; $722c: $00
    cp b                                          ; $722d: $b8
    nop                                           ; $722e: $00
    cp d                                          ; $722f: $ba
    nop                                           ; $7230: $00
    cp h                                          ; $7231: $bc
    nop                                           ; $7232: $00
    cp [hl]                                       ; $7233: $be
    nop                                           ; $7234: $00
    ret nz                                        ; $7235: $c0

    nop                                           ; $7236: $00
    jp $c500                                      ; $7237: $c3 $00 $c5


    nop                                           ; $723a: $00
    rst $00                                       ; $723b: $c7
    nop                                           ; $723c: $00
    ret                                           ; $723d: $c9


    nop                                           ; $723e: $00
    rlc b                                         ; $723f: $cb $00
    adc $00                                       ; $7241: $ce $00
    ret nc                                        ; $7243: $d0

    nop                                           ; $7244: $00
    jp nc, $d400                                  ; $7245: $d2 $00 $d4

    nop                                           ; $7248: $00
    sub $00                                       ; $7249: $d6 $00
    reti                                          ; $724b: $d9


    nop                                           ; $724c: $00
    jp c, $dd00                                   ; $724d: $da $00 $dd

    nop                                           ; $7250: $00
    rst $18                                       ; $7251: $df
    nop                                           ; $7252: $00
    ldh [rP1], a                                  ; $7253: $e0 $00
    db $e3                                        ; $7255: $e3
    nop                                           ; $7256: $00
    push hl                                       ; $7257: $e5
    nop                                           ; $7258: $00
    rst $20                                       ; $7259: $e7
    nop                                           ; $725a: $00
    jp hl                                         ; $725b: $e9


    nop                                           ; $725c: $00
    db $eb                                        ; $725d: $eb
    nop                                           ; $725e: $00
    db $ed                                        ; $725f: $ed
    nop                                           ; $7260: $00
    rst $28                                       ; $7261: $ef
    nop                                           ; $7262: $00
    ld a, [c]                                     ; $7263: $f2
    nop                                           ; $7264: $00
    di                                            ; $7265: $f3
    nop                                           ; $7266: $00
    push af                                       ; $7267: $f5
    nop                                           ; $7268: $00
    rst $30                                       ; $7269: $f7
    nop                                           ; $726a: $00
    ld sp, hl                                     ; $726b: $f9
    nop                                           ; $726c: $00
    ei                                            ; $726d: $fb
    nop                                           ; $726e: $00
    db $fd                                        ; $726f: $fd
    nop                                           ; $7270: $00
    rst $38                                       ; $7271: $ff
    nop                                           ; $7272: $00
    ld bc, $0401                                  ; $7273: $01 $01 $04
    ld bc, $0105                                  ; $7276: $01 $05 $01
    rlca                                          ; $7279: $07
    ld bc, $0109                                  ; $727a: $01 $09 $01
    dec bc                                        ; $727d: $0b
    ld bc, $010d                                  ; $727e: $01 $0d $01
    rrca                                          ; $7281: $0f
    ld bc, $0111                                  ; $7282: $01 $11 $01
    inc de                                        ; $7285: $13
    ld bc, $0115                                  ; $7286: $01 $15 $01
    rla                                           ; $7289: $17
    ld bc, $0119                                  ; $728a: $01 $19 $01
    dec de                                        ; $728d: $1b
    ld bc, $011d                                  ; $728e: $01 $1d $01
    rra                                           ; $7291: $1f
    ld bc, $0120                                  ; $7292: $01 $20 $01
    inc hl                                        ; $7295: $23
    ld bc, $0124                                  ; $7296: $01 $24 $01
    ld h, $01                                     ; $7299: $26 $01
    jr z, jr_039_729e                             ; $729b: $28 $01

    ld a, [hl+]                                   ; $729d: $2a

jr_039_729e:
    ld bc, $012c                                  ; $729e: $01 $2c $01
    ld l, $01                                     ; $72a1: $2e $01
    jr nc, jr_039_72a6                            ; $72a3: $30 $01

    ld [hl-], a                                   ; $72a5: $32

jr_039_72a6:
    ld bc, HeaderTitle                            ; $72a6: $01 $34 $01
    ld [hl], $01                                  ; $72a9: $36 $01
    jr c, jr_039_72ae                             ; $72ab: $38 $01

    ld a, [hl-]                                   ; $72ad: $3a

jr_039_72ae:
    ld bc, $013c                                  ; $72ae: $01 $3c $01
    ld a, $01                                     ; $72b1: $3e $01
    ld b, b                                       ; $72b3: $40
    ld bc, $0142                                  ; $72b4: $01 $42 $01
    ld b, e                                       ; $72b7: $43
    ld bc, $0145                                  ; $72b8: $01 $45 $01
    ld c, b                                       ; $72bb: $48
    ld bc, HeaderDestinationCode                  ; $72bc: $01 $4a $01
    ld c, h                                       ; $72bf: $4c
    ld bc, HeaderComplementCheck                  ; $72c0: $01 $4d $01
    ld c, a                                       ; $72c3: $4f
    ld bc, $0151                                  ; $72c4: $01 $51 $01
    ld d, e                                       ; $72c7: $53
    ld bc, $0155                                  ; $72c8: $01 $55 $01
    ld d, [hl]                                    ; $72cb: $56
    ld bc, $0158                                  ; $72cc: $01 $58 $01
    ld e, e                                       ; $72cf: $5b
    ld bc, $015c                                  ; $72d0: $01 $5c $01
    ld e, [hl]                                    ; $72d3: $5e
    ld bc, $0160                                  ; $72d4: $01 $60 $01
    ld h, d                                       ; $72d7: $62
    ld bc, $0164                                  ; $72d8: $01 $64 $01
    ld h, [hl]                                    ; $72db: $66
    ld bc, $0168                                  ; $72dc: $01 $68 $01
    ld l, d                                       ; $72df: $6a
    ld bc, $016c                                  ; $72e0: $01 $6c $01
    ld l, [hl]                                    ; $72e3: $6e
    ld bc, $0170                                  ; $72e4: $01 $70 $01
    ld [hl], c                                    ; $72e7: $71
    ld bc, $0173                                  ; $72e8: $01 $73 $01
    ld [hl], l                                    ; $72eb: $75
    ld bc, $0177                                  ; $72ec: $01 $77 $01
    ld a, c                                       ; $72ef: $79
    ld bc, $017b                                  ; $72f0: $01 $7b $01
    ld a, l                                       ; $72f3: $7d
    ld bc, $017f                                  ; $72f4: $01 $7f $01
    add c                                         ; $72f7: $81
    ld bc, $0183                                  ; $72f8: $01 $83 $01
    add l                                         ; $72fb: $85
    ld bc, $0186                                  ; $72fc: $01 $86 $01
    adc b                                         ; $72ff: $88
    ld bc, $018a                                  ; $7300: $01 $8a $01
    adc h                                         ; $7303: $8c
    ld bc, $018e                                  ; $7304: $01 $8e $01
    sub b                                         ; $7307: $90
    ld bc, $0192                                  ; $7308: $01 $92 $01
    sub h                                         ; $730b: $94
    ld bc, $0196                                  ; $730c: $01 $96 $01
    sbc b                                         ; $730f: $98
    ld bc, $019a                                  ; $7310: $01 $9a $01
    sbc h                                         ; $7313: $9c
    ld bc, $019e                                  ; $7314: $01 $9e $01
    sbc a                                         ; $7317: $9f
    ld bc, $01a1                                  ; $7318: $01 $a1 $01
    and e                                         ; $731b: $a3
    ld bc, $01a5                                  ; $731c: $01 $a5 $01
    and [hl]                                      ; $731f: $a6
    ld bc, $01a9                                  ; $7320: $01 $a9 $01
    xor e                                         ; $7323: $ab
    ld bc, $01ad                                  ; $7324: $01 $ad $01
    xor a                                         ; $7327: $af
    ld bc, $01b1                                  ; $7328: $01 $b1 $01
    or d                                          ; $732b: $b2
    ld bc, $01b5                                  ; $732c: $01 $b5 $01
    or [hl]                                       ; $732f: $b6
    ld bc, $01b8                                  ; $7330: $01 $b8 $01
    cp d                                          ; $7333: $ba
    ld bc, $01bc                                  ; $7334: $01 $bc $01
    cp [hl]                                       ; $7337: $be
    ld bc, $01c0                                  ; $7338: $01 $c0 $01
    pop bc                                        ; $733b: $c1
    ld bc, $01c4                                  ; $733c: $01 $c4 $01
    add $01                                       ; $733f: $c6 $01
    ret z                                         ; $7341: $c8

    ld bc, $01ca                                  ; $7342: $01 $ca $01
    rlc c                                         ; $7345: $cb $01
    call $cf01                                    ; $7347: $cd $01 $cf
    ld bc, $01d1                                  ; $734a: $01 $d1 $01
    db $d3                                        ; $734d: $d3
    ld bc, $01d5                                  ; $734e: $01 $d5 $01
    sub $01                                       ; $7351: $d6 $01
    reti                                          ; $7353: $d9


    ld bc, $01da                                  ; $7354: $01 $da $01
    db $dd                                        ; $7357: $dd
    ld bc, $01df                                  ; $7358: $01 $df $01
    inc b                                         ; $735b: $04
    nop                                           ; $735c: $00
    ld hl, $2b00                                  ; $735d: $21 $00 $2b
    nop                                           ; $7360: $00
    ld [hl-], a                                   ; $7361: $32
    nop                                           ; $7362: $00
    add hl, sp                                    ; $7363: $39
    nop                                           ; $7364: $00
    ld b, c                                       ; $7365: $41
    nop                                           ; $7366: $00
    ld b, [hl]                                    ; $7367: $46
    nop                                           ; $7368: $00
    ld c, e                                       ; $7369: $4b
    nop                                           ; $736a: $00
    ld c, a                                       ; $736b: $4f
    nop                                           ; $736c: $00
    ld d, h                                       ; $736d: $54
    nop                                           ; $736e: $00
    ld e, b                                       ; $736f: $58
    nop                                           ; $7370: $00
    ld e, h                                       ; $7371: $5c
    nop                                           ; $7372: $00
    ld h, b                                       ; $7373: $60
    nop                                           ; $7374: $00
    ld h, e                                       ; $7375: $63
    nop                                           ; $7376: $00
    ld h, a                                       ; $7377: $67
    nop                                           ; $7378: $00
    ld l, e                                       ; $7379: $6b
    nop                                           ; $737a: $00
    ld l, [hl]                                    ; $737b: $6e
    nop                                           ; $737c: $00
    ld [hl], c                                    ; $737d: $71
    nop                                           ; $737e: $00
    ld [hl], h                                    ; $737f: $74
    nop                                           ; $7380: $00
    ld [hl], a                                    ; $7381: $77
    nop                                           ; $7382: $00
    ld a, d                                       ; $7383: $7a
    nop                                           ; $7384: $00
    ld a, l                                       ; $7385: $7d
    nop                                           ; $7386: $00
    add b                                         ; $7387: $80
    nop                                           ; $7388: $00
    add e                                         ; $7389: $83
    nop                                           ; $738a: $00
    add [hl]                                      ; $738b: $86
    nop                                           ; $738c: $00
    adc b                                         ; $738d: $88
    nop                                           ; $738e: $00
    adc e                                         ; $738f: $8b
    nop                                           ; $7390: $00
    adc [hl]                                      ; $7391: $8e
    nop                                           ; $7392: $00
    sub c                                         ; $7393: $91
    nop                                           ; $7394: $00
    sub e                                         ; $7395: $93
    nop                                           ; $7396: $00
    sub [hl]                                      ; $7397: $96
    nop                                           ; $7398: $00
    sbc c                                         ; $7399: $99
    nop                                           ; $739a: $00
    sbc e                                         ; $739b: $9b
    nop                                           ; $739c: $00
    sbc [hl]                                      ; $739d: $9e
    nop                                           ; $739e: $00
    and b                                         ; $739f: $a0
    nop                                           ; $73a0: $00
    and e                                         ; $73a1: $a3
    nop                                           ; $73a2: $00
    and l                                         ; $73a3: $a5
    nop                                           ; $73a4: $00
    xor b                                         ; $73a5: $a8
    nop                                           ; $73a6: $00
    xor d                                         ; $73a7: $aa
    nop                                           ; $73a8: $00
    xor h                                         ; $73a9: $ac
    nop                                           ; $73aa: $00
    xor a                                         ; $73ab: $af
    nop                                           ; $73ac: $00
    or c                                          ; $73ad: $b1
    nop                                           ; $73ae: $00
    or e                                          ; $73af: $b3
    nop                                           ; $73b0: $00
    or l                                          ; $73b1: $b5
    nop                                           ; $73b2: $00
    cp c                                          ; $73b3: $b9
    nop                                           ; $73b4: $00
    cp e                                          ; $73b5: $bb
    nop                                           ; $73b6: $00
    cp l                                          ; $73b7: $bd
    nop                                           ; $73b8: $00
    cp a                                          ; $73b9: $bf
    nop                                           ; $73ba: $00
    jp nz, $c400                                  ; $73bb: $c2 $00 $c4

    nop                                           ; $73be: $00
    add $00                                       ; $73bf: $c6 $00
    ret z                                         ; $73c1: $c8

    nop                                           ; $73c2: $00
    rlc b                                         ; $73c3: $cb $00
    call $cf00                                    ; $73c5: $cd $00 $cf
    nop                                           ; $73c8: $00
    pop de                                        ; $73c9: $d1
    nop                                           ; $73ca: $00
    db $d3                                        ; $73cb: $d3
    nop                                           ; $73cc: $00
    sub $00                                       ; $73cd: $d6 $00
    reti                                          ; $73cf: $d9


    nop                                           ; $73d0: $00
    jp c, $dd00                                   ; $73d1: $da $00 $dd

    nop                                           ; $73d4: $00
    rst $18                                       ; $73d5: $df
    nop                                           ; $73d6: $00
    pop hl                                        ; $73d7: $e1
    nop                                           ; $73d8: $00
    db $e3                                        ; $73d9: $e3
    nop                                           ; $73da: $00
    and $00                                       ; $73db: $e6 $00
    add sp, $00                                   ; $73dd: $e8 $00
    ld [$ec00], a                                 ; $73df: $ea $00 $ec
    nop                                           ; $73e2: $00
    rst $28                                       ; $73e3: $ef
    nop                                           ; $73e4: $00
    ldh a, [rP1]                                  ; $73e5: $f0 $00
    di                                            ; $73e7: $f3
    nop                                           ; $73e8: $00
    push af                                       ; $73e9: $f5
    nop                                           ; $73ea: $00
    rst $30                                       ; $73eb: $f7
    nop                                           ; $73ec: $00
    ld sp, hl                                     ; $73ed: $f9
    nop                                           ; $73ee: $00
    ei                                            ; $73ef: $fb
    nop                                           ; $73f0: $00
    db $fd                                        ; $73f1: $fd
    nop                                           ; $73f2: $00
    rst $38                                       ; $73f3: $ff
    nop                                           ; $73f4: $00
    ld [bc], a                                    ; $73f5: $02
    ld bc, HeaderLogo                             ; $73f6: $01 $04 $01
    ld b, $01                                     ; $73f9: $06 $01
    ld [$0a01], sp                                ; $73fb: $08 $01 $0a
    ld bc, $010c                                  ; $73fe: $01 $0c $01
    ld c, $01                                     ; $7401: $0e $01
    db $10                                        ; $7403: $10
    ld bc, $0113                                  ; $7404: $01 $13 $01
    dec d                                         ; $7407: $15
    ld bc, $0117                                  ; $7408: $01 $17 $01
    add hl, de                                    ; $740b: $19
    ld bc, $011b                                  ; $740c: $01 $1b $01
    dec e                                         ; $740f: $1d
    ld bc, $011f                                  ; $7410: $01 $1f $01
    ld hl, $2401                                  ; $7413: $21 $01 $24
    ld bc, $0126                                  ; $7416: $01 $26 $01
    daa                                           ; $7419: $27
    ld bc, $012a                                  ; $741a: $01 $2a $01
    inc l                                         ; $741d: $2c
    ld bc, $012e                                  ; $741e: $01 $2e $01
    jr nc, jr_039_7424                            ; $7421: $30 $01

    ld [hl-], a                                   ; $7423: $32

jr_039_7424:
    ld bc, HeaderTitle                            ; $7424: $01 $34 $01
    ld [hl], $01                                  ; $7427: $36 $01
    add hl, sp                                    ; $7429: $39
    ld bc, $013a                                  ; $742a: $01 $3a $01
    dec a                                         ; $742d: $3d
    ld bc, HeaderManufacturerCode                 ; $742e: $01 $3f $01
    ld b, c                                       ; $7431: $41
    ld bc, HeaderCGBFlag                          ; $7432: $01 $43 $01
    ld b, l                                       ; $7435: $45
    ld bc, HeaderCartridgeType                    ; $7436: $01 $47 $01
    ld c, c                                       ; $7439: $49
    ld bc, HeaderOldLicenseeCode                  ; $743a: $01 $4b $01
    ld c, l                                       ; $743d: $4d
    ld bc, $0150                                  ; $743e: $01 $50 $01
    ld d, c                                       ; $7441: $51
    ld bc, $0154                                  ; $7442: $01 $54 $01
    ld d, [hl]                                    ; $7445: $56
    ld bc, $0158                                  ; $7446: $01 $58 $01
    ld e, d                                       ; $7449: $5a
    ld bc, $015c                                  ; $744a: $01 $5c $01
    ld e, [hl]                                    ; $744d: $5e
    ld bc, $0160                                  ; $744e: $01 $60 $01
    ld h, d                                       ; $7451: $62
    ld bc, $0165                                  ; $7452: $01 $65 $01
    ld h, a                                       ; $7455: $67
    ld bc, $0168                                  ; $7456: $01 $68 $01
    ld l, e                                       ; $7459: $6b
    ld bc, $016d                                  ; $745a: $01 $6d $01
    ld l, a                                       ; $745d: $6f
    ld bc, $0171                                  ; $745e: $01 $71 $01
    ld [hl], e                                    ; $7461: $73
    ld bc, $0175                                  ; $7462: $01 $75 $01
    ld [hl], a                                    ; $7465: $77
    ld bc, $017a                                  ; $7466: $01 $7a $01
    ld a, h                                       ; $7469: $7c
    ld bc, $017e                                  ; $746a: $01 $7e $01
    add b                                         ; $746d: $80
    ld bc, $0182                                  ; $746e: $01 $82 $01
    add h                                         ; $7471: $84
    ld bc, $0186                                  ; $7472: $01 $86 $01
    adc b                                         ; $7475: $88
    ld bc, $018a                                  ; $7476: $01 $8a $01
    adc h                                         ; $7479: $8c
    ld bc, $018e                                  ; $747a: $01 $8e $01
    sub b                                         ; $747d: $90
    ld bc, $0192                                  ; $747e: $01 $92 $01
    sub h                                         ; $7481: $94
    ld bc, $0197                                  ; $7482: $01 $97 $01
    sbc c                                         ; $7485: $99
    ld bc, $019b                                  ; $7486: $01 $9b $01
    sbc l                                         ; $7489: $9d
    ld bc, $019f                                  ; $748a: $01 $9f $01
    and c                                         ; $748d: $a1
    ld bc, $01a3                                  ; $748e: $01 $a3 $01
    and l                                         ; $7491: $a5
    ld bc, $01a8                                  ; $7492: $01 $a8 $01
    xor d                                         ; $7495: $aa
    ld bc, $01ac                                  ; $7496: $01 $ac $01
    xor [hl]                                      ; $7499: $ae
    ld bc, $01b0                                  ; $749a: $01 $b0 $01
    or d                                          ; $749d: $b2
    ld bc, $01b4                                  ; $749e: $01 $b4 $01
    or [hl]                                       ; $74a1: $b6
    ld bc, $01b8                                  ; $74a2: $01 $b8 $01
    cp e                                          ; $74a5: $bb
    ld bc, $01bc                                  ; $74a6: $01 $bc $01
    cp a                                          ; $74a9: $bf
    ld bc, $01c1                                  ; $74aa: $01 $c1 $01
    jp $c501                                      ; $74ad: $c3 $01 $c5


    ld bc, $01c7                                  ; $74b0: $01 $c7 $01
    jp z, $cb01                                   ; $74b3: $ca $01 $cb

    ld bc, $01ce                                  ; $74b6: $01 $ce $01
    ret nc                                        ; $74b9: $d0

    ld bc, $01d2                                  ; $74ba: $01 $d2 $01
    db $d3                                        ; $74bd: $d3
    ld bc, $01d6                                  ; $74be: $01 $d6 $01
    ret c                                         ; $74c1: $d8

    ld bc, $01db                                  ; $74c2: $01 $db $01
    db $dd                                        ; $74c5: $dd
    ld bc, $01df                                  ; $74c6: $01 $df $01
    inc b                                         ; $74c9: $04
    nop                                           ; $74ca: $00
    inc h                                         ; $74cb: $24
    nop                                           ; $74cc: $00
    ld l, $00                                     ; $74cd: $2e $00
    ld [hl], $00                                  ; $74cf: $36 $00
    inc a                                         ; $74d1: $3c
    nop                                           ; $74d2: $00
    ld b, e                                       ; $74d3: $43
    nop                                           ; $74d4: $00
    ld c, b                                       ; $74d5: $48
    nop                                           ; $74d6: $00
    ld c, a                                       ; $74d7: $4f
    nop                                           ; $74d8: $00
    ld d, e                                       ; $74d9: $53
    nop                                           ; $74da: $00
    ld e, b                                       ; $74db: $58
    nop                                           ; $74dc: $00
    ld e, h                                       ; $74dd: $5c
    nop                                           ; $74de: $00
    ld h, b                                       ; $74df: $60
    nop                                           ; $74e0: $00
    ld h, h                                       ; $74e1: $64
    nop                                           ; $74e2: $00
    ld l, b                                       ; $74e3: $68
    nop                                           ; $74e4: $00
    ld l, e                                       ; $74e5: $6b
    nop                                           ; $74e6: $00
    ld l, [hl]                                    ; $74e7: $6e
    nop                                           ; $74e8: $00
    ld [hl], d                                    ; $74e9: $72
    nop                                           ; $74ea: $00
    ld [hl], l                                    ; $74eb: $75
    nop                                           ; $74ec: $00
    ld a, b                                       ; $74ed: $78
    nop                                           ; $74ee: $00
    ld a, h                                       ; $74ef: $7c
    nop                                           ; $74f0: $00
    ld a, a                                       ; $74f1: $7f
    nop                                           ; $74f2: $00
    add d                                         ; $74f3: $82
    nop                                           ; $74f4: $00
    add l                                         ; $74f5: $85
    nop                                           ; $74f6: $00
    adc b                                         ; $74f7: $88
    nop                                           ; $74f8: $00
    adc e                                         ; $74f9: $8b
    nop                                           ; $74fa: $00
    adc [hl]                                      ; $74fb: $8e
    nop                                           ; $74fc: $00
    sub b                                         ; $74fd: $90
    nop                                           ; $74fe: $00
    sub e                                         ; $74ff: $93
    nop                                           ; $7500: $00
    sub [hl]                                      ; $7501: $96
    nop                                           ; $7502: $00
    sbc c                                         ; $7503: $99
    nop                                           ; $7504: $00
    sbc e                                         ; $7505: $9b
    nop                                           ; $7506: $00
    sbc [hl]                                      ; $7507: $9e
    nop                                           ; $7508: $00
    and c                                         ; $7509: $a1
    nop                                           ; $750a: $00
    and e                                         ; $750b: $a3
    nop                                           ; $750c: $00
    and [hl]                                      ; $750d: $a6
    nop                                           ; $750e: $00
    xor c                                         ; $750f: $a9
    nop                                           ; $7510: $00
    xor e                                         ; $7511: $ab
    nop                                           ; $7512: $00
    xor [hl]                                      ; $7513: $ae
    nop                                           ; $7514: $00
    or b                                          ; $7515: $b0
    nop                                           ; $7516: $00
    or e                                          ; $7517: $b3
    nop                                           ; $7518: $00
    or l                                          ; $7519: $b5
    nop                                           ; $751a: $00
    cp b                                          ; $751b: $b8
    nop                                           ; $751c: $00
    cp e                                          ; $751d: $bb
    nop                                           ; $751e: $00
    cp l                                          ; $751f: $bd
    nop                                           ; $7520: $00
    cp a                                          ; $7521: $bf
    nop                                           ; $7522: $00
    jp nz, $c400                                  ; $7523: $c2 $00 $c4

    nop                                           ; $7526: $00
    rst $00                                       ; $7527: $c7
    nop                                           ; $7528: $00
    ret                                           ; $7529: $c9


    nop                                           ; $752a: $00
    rlc b                                         ; $752b: $cb $00
    adc $00                                       ; $752d: $ce $00
    ret nc                                        ; $752f: $d0

    nop                                           ; $7530: $00
    db $d3                                        ; $7531: $d3
    nop                                           ; $7532: $00
    push de                                       ; $7533: $d5
    nop                                           ; $7534: $00
    rst $10                                       ; $7535: $d7
    nop                                           ; $7536: $00
    jp c, $dd00                                   ; $7537: $da $00 $dd

    nop                                           ; $753a: $00
    rst $18                                       ; $753b: $df
    nop                                           ; $753c: $00
    pop hl                                        ; $753d: $e1
    nop                                           ; $753e: $00
    db $e4                                        ; $753f: $e4
    nop                                           ; $7540: $00
    and $00                                       ; $7541: $e6 $00
    add sp, $00                                   ; $7543: $e8 $00
    ld [$ed00], a                                 ; $7545: $ea $00 $ed
    nop                                           ; $7548: $00
    rst $28                                       ; $7549: $ef
    nop                                           ; $754a: $00
    pop af                                        ; $754b: $f1
    nop                                           ; $754c: $00
    db $f4                                        ; $754d: $f4
    nop                                           ; $754e: $00
    or $00                                        ; $754f: $f6 $00
    ld hl, sp+$00                                 ; $7551: $f8 $00
    ei                                            ; $7553: $fb
    nop                                           ; $7554: $00
    db $fd                                        ; $7555: $fd
    nop                                           ; $7556: $00
    rst $38                                       ; $7557: $ff
    nop                                           ; $7558: $00
    ld [bc], a                                    ; $7559: $02
    ld bc, HeaderLogo                             ; $755a: $01 $04 $01
    ld b, $01                                     ; $755d: $06 $01
    ld [$0b01], sp                                ; $755f: $08 $01 $0b
    ld bc, $010d                                  ; $7562: $01 $0d $01
    rrca                                          ; $7565: $0f
    ld bc, $0112                                  ; $7566: $01 $12 $01
    inc d                                         ; $7569: $14
    ld bc, $0117                                  ; $756a: $01 $17 $01
    jr jr_039_7570                                ; $756d: $18 $01

    dec de                                        ; $756f: $1b

jr_039_7570:
    ld bc, $011d                                  ; $7570: $01 $1d $01
    rra                                           ; $7573: $1f
    ld bc, $0121                                  ; $7574: $01 $21 $01
    inc h                                         ; $7577: $24
    ld bc, $0126                                  ; $7578: $01 $26 $01
    jr z, jr_039_757e                             ; $757b: $28 $01

    ld a, [hl+]                                   ; $757d: $2a

jr_039_757e:
    ld bc, $012d                                  ; $757e: $01 $2d $01
    cpl                                           ; $7581: $2f
    ld bc, $0132                                  ; $7582: $01 $32 $01
    inc sp                                        ; $7585: $33
    ld bc, $0136                                  ; $7586: $01 $36 $01
    jr c, jr_039_758c                             ; $7589: $38 $01

    ld a, [hl-]                                   ; $758b: $3a

jr_039_758c:
    ld bc, $013d                                  ; $758c: $01 $3d $01
    ccf                                           ; $758f: $3f
    ld bc, $0141                                  ; $7590: $01 $41 $01
    ld b, h                                       ; $7593: $44
    ld bc, HeaderSGBFlag                          ; $7594: $01 $46 $01
    ld c, b                                       ; $7597: $48
    ld bc, HeaderDestinationCode                  ; $7598: $01 $4a $01
    ld c, h                                       ; $759b: $4c
    ld bc, HeaderGlobalChecksum                   ; $759c: $01 $4e $01
    ld d, c                                       ; $759f: $51
    ld bc, $0153                                  ; $75a0: $01 $53 $01
    ld d, l                                       ; $75a3: $55
    ld bc, $0157                                  ; $75a4: $01 $57 $01
    ld e, d                                       ; $75a7: $5a
    ld bc, $015c                                  ; $75a8: $01 $5c $01
    ld e, [hl]                                    ; $75ab: $5e
    ld bc, $0161                                  ; $75ac: $01 $61 $01
    ld h, d                                       ; $75af: $62
    ld bc, $0165                                  ; $75b0: $01 $65 $01
    ld h, a                                       ; $75b3: $67
    ld bc, $0169                                  ; $75b4: $01 $69 $01
    ld l, h                                       ; $75b7: $6c
    ld bc, $016e                                  ; $75b8: $01 $6e $01
    ld [hl], b                                    ; $75bb: $70
    ld bc, $0173                                  ; $75bc: $01 $73 $01
    ld [hl], l                                    ; $75bf: $75
    ld bc, $0177                                  ; $75c0: $01 $77 $01
    ld a, c                                       ; $75c3: $79
    ld bc, $017b                                  ; $75c4: $01 $7b $01
    ld a, l                                       ; $75c7: $7d
    ld bc, $0180                                  ; $75c8: $01 $80 $01
    add e                                         ; $75cb: $83
    ld bc, $0185                                  ; $75cc: $01 $85 $01
    add a                                         ; $75cf: $87
    ld bc, $0189                                  ; $75d0: $01 $89 $01
    adc e                                         ; $75d3: $8b
    ld bc, $018e                                  ; $75d4: $01 $8e $01
    sub b                                         ; $75d7: $90
    ld bc, $0192                                  ; $75d8: $01 $92 $01
    sub h                                         ; $75db: $94
    ld bc, $0196                                  ; $75dc: $01 $96 $01
    sbc c                                         ; $75df: $99
    ld bc, $019b                                  ; $75e0: $01 $9b $01
    sbc l                                         ; $75e3: $9d
    ld bc, $01a0                                  ; $75e4: $01 $a0 $01
    and d                                         ; $75e7: $a2
    ld bc, $01a4                                  ; $75e8: $01 $a4 $01
    and [hl]                                      ; $75eb: $a6
    ld bc, $01a8                                  ; $75ec: $01 $a8 $01
    xor e                                         ; $75ef: $ab
    ld bc, $01ad                                  ; $75f0: $01 $ad $01
    or b                                          ; $75f3: $b0
    ld bc, $01b2                                  ; $75f4: $01 $b2 $01
    or h                                          ; $75f7: $b4
    ld bc, $01b6                                  ; $75f8: $01 $b6 $01
    cp c                                          ; $75fb: $b9
    ld bc, $01bb                                  ; $75fc: $01 $bb $01
    cp l                                          ; $75ff: $bd
    ld bc, $01c0                                  ; $7600: $01 $c0 $01
    jp nz, $c401                                  ; $7603: $c2 $01 $c4

    ld bc, $01c6                                  ; $7606: $01 $c6 $01
    ret                                           ; $7609: $c9


    ld bc, $01cb                                  ; $760a: $01 $cb $01
    call $cf01                                    ; $760d: $cd $01 $cf
    ld bc, $01d2                                  ; $7610: $01 $d2 $01
    call nc, $d601                                ; $7613: $d4 $01 $d6
    ld bc, $01d8                                  ; $7616: $01 $d8 $01
    db $db                                        ; $7619: $db
    ld bc, $01dd                                  ; $761a: $01 $dd $01
    rst $18                                       ; $761d: $df
    ld bc, $0004                                  ; $761e: $01 $04 $00
    daa                                           ; $7621: $27
    nop                                           ; $7622: $00
    ld sp, $3900                                  ; $7623: $31 $00 $39
    nop                                           ; $7626: $00
    ccf                                           ; $7627: $3f
    nop                                           ; $7628: $00
    ld b, l                                       ; $7629: $45
    nop                                           ; $762a: $00
    ld c, l                                       ; $762b: $4d
    nop                                           ; $762c: $00
    ld d, c                                       ; $762d: $51
    nop                                           ; $762e: $00
    ld d, [hl]                                    ; $762f: $56
    nop                                           ; $7630: $00
    ld e, e                                       ; $7631: $5b
    nop                                           ; $7632: $00
    ld e, a                                       ; $7633: $5f
    nop                                           ; $7634: $00
    ld h, e                                       ; $7635: $63
    nop                                           ; $7636: $00
    ld h, a                                       ; $7637: $67
    nop                                           ; $7638: $00
    ld l, e                                       ; $7639: $6b
    nop                                           ; $763a: $00
    ld l, a                                       ; $763b: $6f
    nop                                           ; $763c: $00
    ld [hl], d                                    ; $763d: $72
    nop                                           ; $763e: $00
    ld [hl], l                                    ; $763f: $75
    nop                                           ; $7640: $00
    ld a, c                                       ; $7641: $79
    nop                                           ; $7642: $00
    ld a, h                                       ; $7643: $7c
    nop                                           ; $7644: $00
    add b                                         ; $7645: $80
    nop                                           ; $7646: $00
    add d                                         ; $7647: $82
    nop                                           ; $7648: $00
    add [hl]                                      ; $7649: $86
    nop                                           ; $764a: $00
    adc c                                         ; $764b: $89
    nop                                           ; $764c: $00
    adc e                                         ; $764d: $8b
    nop                                           ; $764e: $00
    adc a                                         ; $764f: $8f
    nop                                           ; $7650: $00
    sub d                                         ; $7651: $92
    nop                                           ; $7652: $00
    sub l                                         ; $7653: $95
    nop                                           ; $7654: $00
    sub a                                         ; $7655: $97
    nop                                           ; $7656: $00
    sbc d                                         ; $7657: $9a
    nop                                           ; $7658: $00
    sbc l                                         ; $7659: $9d
    nop                                           ; $765a: $00
    and b                                         ; $765b: $a0
    nop                                           ; $765c: $00
    and e                                         ; $765d: $a3
    nop                                           ; $765e: $00
    and l                                         ; $765f: $a5
    nop                                           ; $7660: $00
    xor b                                         ; $7661: $a8
    nop                                           ; $7662: $00
    xor e                                         ; $7663: $ab
    nop                                           ; $7664: $00
    xor [hl]                                      ; $7665: $ae
    nop                                           ; $7666: $00
    or b                                          ; $7667: $b0
    nop                                           ; $7668: $00
    or e                                          ; $7669: $b3
    nop                                           ; $766a: $00
    or l                                          ; $766b: $b5
    nop                                           ; $766c: $00
    cp b                                          ; $766d: $b8
    nop                                           ; $766e: $00
    cp e                                          ; $766f: $bb
    nop                                           ; $7670: $00
    cp [hl]                                       ; $7671: $be
    nop                                           ; $7672: $00
    ret nz                                        ; $7673: $c0

    nop                                           ; $7674: $00
    jp $c500                                      ; $7675: $c3 $00 $c5


    nop                                           ; $7678: $00
    ret z                                         ; $7679: $c8

    nop                                           ; $767a: $00
    jp z, $cd00                                   ; $767b: $ca $00 $cd

    nop                                           ; $767e: $00
    ret nc                                        ; $767f: $d0

    nop                                           ; $7680: $00
    jp nc, $d500                                  ; $7681: $d2 $00 $d5

    nop                                           ; $7684: $00
    rst $10                                       ; $7685: $d7
    nop                                           ; $7686: $00
    jp c, $dc00                                   ; $7687: $da $00 $dc

    nop                                           ; $768a: $00
    rst $18                                       ; $768b: $df
    nop                                           ; $768c: $00
    pop hl                                        ; $768d: $e1
    nop                                           ; $768e: $00
    db $e4                                        ; $768f: $e4
    nop                                           ; $7690: $00
    and $00                                       ; $7691: $e6 $00
    jp hl                                         ; $7693: $e9


    nop                                           ; $7694: $00
    db $eb                                        ; $7695: $eb
    nop                                           ; $7696: $00
    db $ed                                        ; $7697: $ed
    nop                                           ; $7698: $00
    ldh a, [rP1]                                  ; $7699: $f0 $00
    di                                            ; $769b: $f3
    nop                                           ; $769c: $00
    db $f4                                        ; $769d: $f4
    nop                                           ; $769e: $00
    rst $30                                       ; $769f: $f7
    nop                                           ; $76a0: $00
    ld a, [$fc00]                                 ; $76a1: $fa $00 $fc
    nop                                           ; $76a4: $00
    cp $00                                        ; $76a5: $fe $00
    ld bc, $0401                                  ; $76a7: $01 $01 $04
    ld bc, $0106                                  ; $76aa: $01 $06 $01
    ld [$0b01], sp                                ; $76ad: $08 $01 $0b
    ld bc, $010d                                  ; $76b0: $01 $0d $01
    rrca                                          ; $76b3: $0f
    ld bc, $0112                                  ; $76b4: $01 $12 $01
    dec d                                         ; $76b7: $15
    ld bc, $0117                                  ; $76b8: $01 $17 $01
    add hl, de                                    ; $76bb: $19
    ld bc, $011b                                  ; $76bc: $01 $1b $01
    ld e, $01                                     ; $76bf: $1e $01
    jr nz, jr_039_76c4                            ; $76c1: $20 $01

    ld [hl+], a                                   ; $76c3: $22

jr_039_76c4:
    ld bc, $0125                                  ; $76c4: $01 $25 $01
    jr z, jr_039_76ca                             ; $76c7: $28 $01

    ld a, [hl+]                                   ; $76c9: $2a

jr_039_76ca:
    ld bc, $012d                                  ; $76ca: $01 $2d $01
    ld l, $01                                     ; $76cd: $2e $01
    ld sp, $3301                                  ; $76cf: $31 $01 $33
    ld bc, $0136                                  ; $76d2: $01 $36 $01
    jr c, jr_039_76d8                             ; $76d5: $38 $01

    dec sp                                        ; $76d7: $3b

jr_039_76d8:
    ld bc, $013d                                  ; $76d8: $01 $3d $01
    ld b, b                                       ; $76db: $40
    ld bc, $0142                                  ; $76dc: $01 $42 $01
    ld b, h                                       ; $76df: $44
    ld bc, HeaderCartridgeType                    ; $76e0: $01 $47 $01
    ld c, c                                       ; $76e3: $49
    ld bc, HeaderOldLicenseeCode                  ; $76e4: $01 $4b $01
    ld c, [hl]                                    ; $76e7: $4e
    ld bc, $0150                                  ; $76e8: $01 $50 $01
    ld d, e                                       ; $76eb: $53
    ld bc, $0155                                  ; $76ec: $01 $55 $01
    ld d, a                                       ; $76ef: $57
    ld bc, $015a                                  ; $76f0: $01 $5a $01
    ld e, h                                       ; $76f3: $5c
    ld bc, $015e                                  ; $76f4: $01 $5e $01
    ld h, c                                       ; $76f7: $61
    ld bc, $0163                                  ; $76f8: $01 $63 $01
    ld h, [hl]                                    ; $76fb: $66
    ld bc, $0168                                  ; $76fc: $01 $68 $01
    ld l, e                                       ; $76ff: $6b
    ld bc, $016d                                  ; $7700: $01 $6d $01
    ld l, a                                       ; $7703: $6f
    ld bc, $0172                                  ; $7704: $01 $72 $01
    ld [hl], h                                    ; $7707: $74
    ld bc, $0177                                  ; $7708: $01 $77 $01
    ld a, c                                       ; $770b: $79
    ld bc, $017b                                  ; $770c: $01 $7b $01
    ld a, [hl]                                    ; $770f: $7e
    ld bc, $0180                                  ; $7710: $01 $80 $01
    add e                                         ; $7713: $83
    ld bc, $0185                                  ; $7714: $01 $85 $01
    adc b                                         ; $7717: $88
    ld bc, $018a                                  ; $7718: $01 $8a $01
    adc h                                         ; $771b: $8c
    ld bc, $018f                                  ; $771c: $01 $8f $01
    sub c                                         ; $771f: $91
    ld bc, $0194                                  ; $7720: $01 $94 $01
    sub [hl]                                      ; $7723: $96
    ld bc, $0198                                  ; $7724: $01 $98 $01
    sbc e                                         ; $7727: $9b
    ld bc, $019d                                  ; $7728: $01 $9d $01
    sbc a                                         ; $772b: $9f
    ld bc, $01a2                                  ; $772c: $01 $a2 $01
    and l                                         ; $772f: $a5
    ld bc, $01a7                                  ; $7730: $01 $a7 $01
    xor c                                         ; $7733: $a9
    ld bc, $01ac                                  ; $7734: $01 $ac $01
    xor [hl]                                      ; $7737: $ae
    ld bc, $01b0                                  ; $7738: $01 $b0 $01
    or e                                          ; $773b: $b3
    ld bc, $01b5                                  ; $773c: $01 $b5 $01
    cp b                                          ; $773f: $b8
    ld bc, $01ba                                  ; $7740: $01 $ba $01
    cp l                                          ; $7743: $bd
    ld bc, $01bf                                  ; $7744: $01 $bf $01
    pop bc                                        ; $7747: $c1
    ld bc, $01c4                                  ; $7748: $01 $c4 $01
    add $01                                       ; $774b: $c6 $01
    ret                                           ; $774d: $c9


    ld bc, $01cb                                  ; $774e: $01 $cb $01
    call $d001                                    ; $7751: $cd $01 $d0
    ld bc, $01d2                                  ; $7754: $01 $d2 $01
    push de                                       ; $7757: $d5
    ld bc, $01d7                                  ; $7758: $01 $d7 $01
    reti                                          ; $775b: $d9


    ld bc, $01dc                                  ; $775c: $01 $dc $01
    rst $18                                       ; $775f: $df
    ld bc, $0005                                  ; $7760: $01 $05 $00
    ld a, [hl+]                                   ; $7763: $2a
    nop                                           ; $7764: $00
    inc [hl]                                      ; $7765: $34
    nop                                           ; $7766: $00
    inc a                                         ; $7767: $3c
    nop                                           ; $7768: $00
    ld b, e                                       ; $7769: $43
    nop                                           ; $776a: $00
    ld c, c                                       ; $776b: $49
    nop                                           ; $776c: $00
    ld d, b                                       ; $776d: $50
    nop                                           ; $776e: $00
    ld d, l                                       ; $776f: $55
    nop                                           ; $7770: $00
    ld e, d                                       ; $7771: $5a
    nop                                           ; $7772: $00
    ld e, a                                       ; $7773: $5f
    nop                                           ; $7774: $00
    ld h, e                                       ; $7775: $63
    nop                                           ; $7776: $00
    ld h, a                                       ; $7777: $67
    nop                                           ; $7778: $00
    ld l, e                                       ; $7779: $6b
    nop                                           ; $777a: $00
    ld l, a                                       ; $777b: $6f
    nop                                           ; $777c: $00
    ld [hl], e                                    ; $777d: $73
    nop                                           ; $777e: $00
    halt                                          ; $777f: $76
    nop                                           ; $7780: $00
    ld a, d                                       ; $7781: $7a
    nop                                           ; $7782: $00
    ld a, [hl]                                    ; $7783: $7e
    nop                                           ; $7784: $00
    add c                                         ; $7785: $81
    nop                                           ; $7786: $00
    add h                                         ; $7787: $84
    nop                                           ; $7788: $00
    adc b                                         ; $7789: $88
    nop                                           ; $778a: $00
    adc e                                         ; $778b: $8b
    nop                                           ; $778c: $00
    adc [hl]                                      ; $778d: $8e
    nop                                           ; $778e: $00
    sub c                                         ; $778f: $91
    nop                                           ; $7790: $00
    sub h                                         ; $7791: $94
    nop                                           ; $7792: $00
    sbc b                                         ; $7793: $98
    nop                                           ; $7794: $00
    sbc e                                         ; $7795: $9b
    nop                                           ; $7796: $00
    sbc [hl]                                      ; $7797: $9e
    nop                                           ; $7798: $00
    and c                                         ; $7799: $a1
    nop                                           ; $779a: $00
    and e                                         ; $779b: $a3
    nop                                           ; $779c: $00
    and [hl]                                      ; $779d: $a6
    nop                                           ; $779e: $00
    xor c                                         ; $779f: $a9
    nop                                           ; $77a0: $00
    xor h                                         ; $77a1: $ac
    nop                                           ; $77a2: $00
    xor a                                         ; $77a3: $af
    nop                                           ; $77a4: $00
    or d                                          ; $77a5: $b2
    nop                                           ; $77a6: $00
    or l                                          ; $77a7: $b5
    nop                                           ; $77a8: $00
    cp b                                          ; $77a9: $b8
    nop                                           ; $77aa: $00
    cp d                                          ; $77ab: $ba
    nop                                           ; $77ac: $00
    cp l                                          ; $77ad: $bd
    nop                                           ; $77ae: $00
    ret nz                                        ; $77af: $c0

    nop                                           ; $77b0: $00
    jp nz, $c500                                  ; $77b1: $c2 $00 $c5

    nop                                           ; $77b4: $00
    ret z                                         ; $77b5: $c8

    nop                                           ; $77b6: $00
    rlc b                                         ; $77b7: $cb $00
    adc $00                                       ; $77b9: $ce $00
    ret nc                                        ; $77bb: $d0

    nop                                           ; $77bc: $00
    db $d3                                        ; $77bd: $d3
    nop                                           ; $77be: $00
    sub $00                                       ; $77bf: $d6 $00
    ret c                                         ; $77c1: $d8

    nop                                           ; $77c2: $00
    db $db                                        ; $77c3: $db
    nop                                           ; $77c4: $00
    sbc $00                                       ; $77c5: $de $00
    pop hl                                        ; $77c7: $e1
    nop                                           ; $77c8: $00
    db $e4                                        ; $77c9: $e4
    nop                                           ; $77ca: $00
    and $00                                       ; $77cb: $e6 $00
    add sp, $00                                   ; $77cd: $e8 $00
    db $eb                                        ; $77cf: $eb
    nop                                           ; $77d0: $00
    xor $00                                       ; $77d1: $ee $00
    ldh a, [rP1]                                  ; $77d3: $f0 $00
    ld a, [c]                                     ; $77d5: $f2
    nop                                           ; $77d6: $00
    or $00                                        ; $77d7: $f6 $00
    ld hl, sp+$00                                 ; $77d9: $f8 $00
    ei                                            ; $77db: $fb
    nop                                           ; $77dc: $00
    cp $00                                        ; $77dd: $fe $00
    nop                                           ; $77df: $00
    ld bc, $0103                                  ; $77e0: $01 $03 $01
    dec b                                         ; $77e3: $05
    ld bc, $0108                                  ; $77e4: $01 $08 $01
    ld a, [bc]                                    ; $77e7: $0a
    ld bc, $010d                                  ; $77e8: $01 $0d $01
    db $10                                        ; $77eb: $10
    ld bc, $0112                                  ; $77ec: $01 $12 $01
    inc d                                         ; $77ef: $14
    ld bc, $0117                                  ; $77f0: $01 $17 $01
    ld a, [de]                                    ; $77f3: $1a
    ld bc, $011c                                  ; $77f4: $01 $1c $01
    rra                                           ; $77f7: $1f
    ld bc, $0121                                  ; $77f8: $01 $21 $01
    inc h                                         ; $77fb: $24
    ld bc, $0127                                  ; $77fc: $01 $27 $01
    ld a, [hl+]                                   ; $77ff: $2a
    ld bc, $012c                                  ; $7800: $01 $2c $01
    ld l, $01                                     ; $7803: $2e $01
    ld sp, $3401                                  ; $7805: $31 $01 $34
    ld bc, $0136                                  ; $7808: $01 $36 $01
    add hl, sp                                    ; $780b: $39
    ld bc, $013b                                  ; $780c: $01 $3b $01
    ld a, $01                                     ; $780f: $3e $01
    ld b, b                                       ; $7811: $40
    ld bc, HeaderCGBFlag                          ; $7812: $01 $43 $01
    ld b, [hl]                                    ; $7815: $46
    ld bc, HeaderROMSize                          ; $7816: $01 $48 $01
    ld c, e                                       ; $7819: $4b
    ld bc, HeaderComplementCheck                  ; $781a: $01 $4d $01
    ld d, b                                       ; $781d: $50
    ld bc, $0153                                  ; $781e: $01 $53 $01
    ld d, l                                       ; $7821: $55
    ld bc, $0157                                  ; $7822: $01 $57 $01
    ld e, d                                       ; $7825: $5a
    ld bc, $015d                                  ; $7826: $01 $5d $01
    ld e, a                                       ; $7829: $5f
    ld bc, $0162                                  ; $782a: $01 $62 $01
    ld h, h                                       ; $782d: $64
    ld bc, $0167                                  ; $782e: $01 $67 $01
    ld l, c                                       ; $7831: $69
    ld bc, $016c                                  ; $7832: $01 $6c $01
    ld l, a                                       ; $7835: $6f
    ld bc, $0171                                  ; $7836: $01 $71 $01
    ld [hl], h                                    ; $7839: $74
    ld bc, $0176                                  ; $783a: $01 $76 $01
    ld a, c                                       ; $783d: $79
    ld bc, $017c                                  ; $783e: $01 $7c $01
    ld a, [hl]                                    ; $7841: $7e
    ld bc, $0181                                  ; $7842: $01 $81 $01
    add e                                         ; $7845: $83
    ld bc, $0186                                  ; $7846: $01 $86 $01
    adc b                                         ; $7849: $88
    ld bc, $018b                                  ; $784a: $01 $8b $01
    adc [hl]                                      ; $784d: $8e
    ld bc, $0190                                  ; $784e: $01 $90 $01
    sub e                                         ; $7851: $93
    ld bc, $0195                                  ; $7852: $01 $95 $01
    sbc b                                         ; $7855: $98
    ld bc, $019b                                  ; $7856: $01 $9b $01
    sbc l                                         ; $7859: $9d
    ld bc, $01a0                                  ; $785a: $01 $a0 $01
    and d                                         ; $785d: $a2
    ld bc, $01a5                                  ; $785e: $01 $a5 $01
    and a                                         ; $7861: $a7
    ld bc, $01aa                                  ; $7862: $01 $aa $01
    xor l                                         ; $7865: $ad
    ld bc, $01af                                  ; $7866: $01 $af $01
    or d                                          ; $7869: $b2
    ld bc, $01b4                                  ; $786a: $01 $b4 $01
    or a                                          ; $786d: $b7
    ld bc, $01ba                                  ; $786e: $01 $ba $01
    cp h                                          ; $7871: $bc
    ld bc, $01bf                                  ; $7872: $01 $bf $01
    pop bc                                        ; $7875: $c1
    ld bc, $01c4                                  ; $7876: $01 $c4 $01
    add $01                                       ; $7879: $c6 $01
    ret                                           ; $787b: $c9


    ld bc, $01cc                                  ; $787c: $01 $cc $01
    adc $01                                       ; $787f: $ce $01
    pop de                                        ; $7881: $d1
    ld bc, $01d4                                  ; $7882: $01 $d4 $01
    sub $01                                       ; $7885: $d6 $01
    reti                                          ; $7887: $d9


    ld bc, $01dc                                  ; $7888: $01 $dc $01
    sbc $01                                       ; $788b: $de $01
    dec b                                         ; $788d: $05
    nop                                           ; $788e: $00
    ld l, $00                                     ; $788f: $2e $00
    scf                                           ; $7891: $37
    nop                                           ; $7892: $00
    ld b, b                                       ; $7893: $40
    nop                                           ; $7894: $00
    ld c, b                                       ; $7895: $48
    nop                                           ; $7896: $00
    ld c, a                                       ; $7897: $4f
    nop                                           ; $7898: $00
    ld d, h                                       ; $7899: $54
    nop                                           ; $789a: $00
    ld e, d                                       ; $789b: $5a
    nop                                           ; $789c: $00
    ld e, a                                       ; $789d: $5f
    nop                                           ; $789e: $00
    ld h, e                                       ; $789f: $63
    nop                                           ; $78a0: $00
    ld l, b                                       ; $78a1: $68
    nop                                           ; $78a2: $00
    ld l, h                                       ; $78a3: $6c
    nop                                           ; $78a4: $00
    ld [hl], b                                    ; $78a5: $70
    nop                                           ; $78a6: $00
    ld [hl], h                                    ; $78a7: $74
    nop                                           ; $78a8: $00
    ld a, b                                       ; $78a9: $78
    nop                                           ; $78aa: $00
    ld a, h                                       ; $78ab: $7c
    nop                                           ; $78ac: $00
    add b                                         ; $78ad: $80
    nop                                           ; $78ae: $00
    add e                                         ; $78af: $83
    nop                                           ; $78b0: $00
    add a                                         ; $78b1: $87
    nop                                           ; $78b2: $00
    adc d                                         ; $78b3: $8a
    nop                                           ; $78b4: $00
    adc [hl]                                      ; $78b5: $8e
    nop                                           ; $78b6: $00
    sub c                                         ; $78b7: $91
    nop                                           ; $78b8: $00
    sub l                                         ; $78b9: $95
    nop                                           ; $78ba: $00
    sbc b                                         ; $78bb: $98
    nop                                           ; $78bc: $00
    sbc e                                         ; $78bd: $9b
    nop                                           ; $78be: $00
    sbc a                                         ; $78bf: $9f
    nop                                           ; $78c0: $00
    and d                                         ; $78c1: $a2
    nop                                           ; $78c2: $00
    and l                                         ; $78c3: $a5
    nop                                           ; $78c4: $00
    xor b                                         ; $78c5: $a8
    nop                                           ; $78c6: $00
    xor e                                         ; $78c7: $ab
    nop                                           ; $78c8: $00
    xor [hl]                                      ; $78c9: $ae
    nop                                           ; $78ca: $00
    or c                                          ; $78cb: $b1
    nop                                           ; $78cc: $00
    or h                                          ; $78cd: $b4
    nop                                           ; $78ce: $00
    or a                                          ; $78cf: $b7
    nop                                           ; $78d0: $00
    cp e                                          ; $78d1: $bb
    nop                                           ; $78d2: $00
    cp [hl]                                       ; $78d3: $be
    nop                                           ; $78d4: $00
    ret nz                                        ; $78d5: $c0

    nop                                           ; $78d6: $00
    jp $c600                                      ; $78d7: $c3 $00 $c6


    nop                                           ; $78da: $00
    ret                                           ; $78db: $c9


    nop                                           ; $78dc: $00
    call z, $d000                                 ; $78dd: $cc $00 $d0
    nop                                           ; $78e0: $00
    jp nc, $d500                                  ; $78e1: $d2 $00 $d5

    nop                                           ; $78e4: $00
    ret c                                         ; $78e5: $d8

    nop                                           ; $78e6: $00
    db $db                                        ; $78e7: $db
    nop                                           ; $78e8: $00
    sbc $00                                       ; $78e9: $de $00
    ldh [rP1], a                                  ; $78eb: $e0 $00
    db $e3                                        ; $78ed: $e3
    nop                                           ; $78ee: $00
    rst $20                                       ; $78ef: $e7
    nop                                           ; $78f0: $00
    jp hl                                         ; $78f1: $e9


    nop                                           ; $78f2: $00
    db $ec                                        ; $78f3: $ec
    nop                                           ; $78f4: $00
    rst $28                                       ; $78f5: $ef
    nop                                           ; $78f6: $00
    ld a, [c]                                     ; $78f7: $f2
    nop                                           ; $78f8: $00
    db $f4                                        ; $78f9: $f4
    nop                                           ; $78fa: $00
    rst $30                                       ; $78fb: $f7
    nop                                           ; $78fc: $00
    ld a, [$fc00]                                 ; $78fd: $fa $00 $fc
    nop                                           ; $7900: $00
    rst $38                                       ; $7901: $ff
    nop                                           ; $7902: $00
    ld [bc], a                                    ; $7903: $02
    ld bc, $0105                                  ; $7904: $01 $05 $01
    ld [$0a01], sp                                ; $7907: $08 $01 $0a
    ld bc, $010d                                  ; $790a: $01 $0d $01
    db $10                                        ; $790d: $10
    ld bc, $0112                                  ; $790e: $01 $12 $01
    ld d, $01                                     ; $7911: $16 $01
    add hl, de                                    ; $7913: $19
    ld bc, $011c                                  ; $7914: $01 $1c $01
    ld e, $01                                     ; $7917: $1e $01
    ld hl, $2301                                  ; $7919: $21 $01 $23
    ld bc, $0126                                  ; $791c: $01 $26 $01
    add hl, hl                                    ; $791f: $29
    ld bc, $012c                                  ; $7920: $01 $2c $01
    cpl                                           ; $7923: $2f
    ld bc, $0132                                  ; $7924: $01 $32 $01
    inc [hl]                                      ; $7927: $34
    ld bc, $0137                                  ; $7928: $01 $37 $01
    add hl, sp                                    ; $792b: $39
    ld bc, $013c                                  ; $792c: $01 $3c $01
    ccf                                           ; $792f: $3f
    ld bc, $0142                                  ; $7930: $01 $42 $01
    ld b, l                                       ; $7933: $45
    ld bc, HeaderROMSize                          ; $7934: $01 $48 $01
    ld c, d                                       ; $7937: $4a
    ld bc, HeaderComplementCheck                  ; $7938: $01 $4d $01
    ld d, b                                       ; $793b: $50
    ld bc, $0152                                  ; $793c: $01 $52 $01
    ld d, l                                       ; $793f: $55
    ld bc, $0158                                  ; $7940: $01 $58 $01
    ld e, e                                       ; $7943: $5b
    ld bc, $015e                                  ; $7944: $01 $5e $01
    ld h, b                                       ; $7947: $60
    ld bc, $0163                                  ; $7948: $01 $63 $01
    ld h, l                                       ; $794b: $65
    ld bc, $0168                                  ; $794c: $01 $68 $01
    ld l, e                                       ; $794f: $6b
    ld bc, $016e                                  ; $7950: $01 $6e $01
    ld [hl], c                                    ; $7953: $71
    ld bc, $0174                                  ; $7954: $01 $74 $01
    halt                                          ; $7957: $76
    ld bc, $0179                                  ; $7958: $01 $79 $01
    ld a, h                                       ; $795b: $7c
    ld bc, $017e                                  ; $795c: $01 $7e $01
    add c                                         ; $795f: $81
    ld bc, $0184                                  ; $7960: $01 $84 $01
    add a                                         ; $7963: $87
    ld bc, $018a                                  ; $7964: $01 $8a $01
    adc l                                         ; $7967: $8d
    ld bc, $018f                                  ; $7968: $01 $8f $01
    sub d                                         ; $796b: $92
    ld bc, $0195                                  ; $796c: $01 $95 $01
    sbc b                                         ; $796f: $98
    ld bc, $019b                                  ; $7970: $01 $9b $01
    sbc l                                         ; $7973: $9d
    ld bc, $01a0                                  ; $7974: $01 $a0 $01
    and e                                         ; $7977: $a3
    ld bc, $01a6                                  ; $7978: $01 $a6 $01
    xor b                                         ; $797b: $a8
    ld bc, $01ab                                  ; $797c: $01 $ab $01
    xor [hl]                                      ; $797f: $ae
    ld bc, $01b1                                  ; $7980: $01 $b1 $01
    or e                                          ; $7983: $b3
    ld bc, $01b6                                  ; $7984: $01 $b6 $01
    cp c                                          ; $7987: $b9
    ld bc, $01bc                                  ; $7988: $01 $bc $01
    cp a                                          ; $798b: $bf
    ld bc, $01c2                                  ; $798c: $01 $c2 $01
    push bc                                       ; $798f: $c5
    ld bc, $01c7                                  ; $7990: $01 $c7 $01
    jp z, $cc01                                   ; $7993: $ca $01 $cc

    ld bc, $01d0                                  ; $7996: $01 $d0 $01
    db $d3                                        ; $7999: $d3
    ld bc, $01d5                                  ; $799a: $01 $d5 $01
    ret c                                         ; $799d: $d8

    ld bc, $01db                                  ; $799e: $01 $db $01
    db $dd                                        ; $79a1: $dd
    ld bc, $0004                                  ; $79a2: $01 $04 $00
    cpl                                           ; $79a5: $2f
    nop                                           ; $79a6: $00
    dec [hl]                                      ; $79a7: $35
    nop                                           ; $79a8: $00
    dec a                                         ; $79a9: $3d
    nop                                           ; $79aa: $00
    ld b, l                                       ; $79ab: $45
    nop                                           ; $79ac: $00
    ld c, [hl]                                    ; $79ad: $4e
    nop                                           ; $79ae: $00
    ld d, h                                       ; $79af: $54
    nop                                           ; $79b0: $00
    ld e, c                                       ; $79b1: $59
    nop                                           ; $79b2: $00
    ld e, a                                       ; $79b3: $5f
    nop                                           ; $79b4: $00
    ld h, h                                       ; $79b5: $64
    nop                                           ; $79b6: $00
    ld l, b                                       ; $79b7: $68
    nop                                           ; $79b8: $00
    ld l, l                                       ; $79b9: $6d
    nop                                           ; $79ba: $00
    ld [hl], c                                    ; $79bb: $71
    nop                                           ; $79bc: $00
    ld [hl], l                                    ; $79bd: $75
    nop                                           ; $79be: $00
    ld a, c                                       ; $79bf: $79
    nop                                           ; $79c0: $00
    ld a, l                                       ; $79c1: $7d
    nop                                           ; $79c2: $00
    add c                                         ; $79c3: $81
    nop                                           ; $79c4: $00
    add l                                         ; $79c5: $85
    nop                                           ; $79c6: $00
    adc c                                         ; $79c7: $89
    nop                                           ; $79c8: $00
    adc l                                         ; $79c9: $8d
    nop                                           ; $79ca: $00
    sub b                                         ; $79cb: $90
    nop                                           ; $79cc: $00
    sub h                                         ; $79cd: $94
    nop                                           ; $79ce: $00
    sub a                                         ; $79cf: $97
    nop                                           ; $79d0: $00
    sbc d                                         ; $79d1: $9a
    nop                                           ; $79d2: $00
    sbc [hl]                                      ; $79d3: $9e
    nop                                           ; $79d4: $00
    and d                                         ; $79d5: $a2
    nop                                           ; $79d6: $00
    and l                                         ; $79d7: $a5
    nop                                           ; $79d8: $00
    xor b                                         ; $79d9: $a8
    nop                                           ; $79da: $00
    xor h                                         ; $79db: $ac
    nop                                           ; $79dc: $00
    or b                                          ; $79dd: $b0
    nop                                           ; $79de: $00
    or e                                          ; $79df: $b3
    nop                                           ; $79e0: $00
    or [hl]                                       ; $79e1: $b6
    nop                                           ; $79e2: $00
    cp c                                          ; $79e3: $b9
    nop                                           ; $79e4: $00
    cp l                                          ; $79e5: $bd
    nop                                           ; $79e6: $00
    ret nz                                        ; $79e7: $c0

    nop                                           ; $79e8: $00
    jp $c700                                      ; $79e9: $c3 $00 $c7


    nop                                           ; $79ec: $00
    jp z, $cd00                                   ; $79ed: $ca $00 $cd

    nop                                           ; $79f0: $00
    ret nc                                        ; $79f1: $d0

    nop                                           ; $79f2: $00
    db $d3                                        ; $79f3: $d3
    nop                                           ; $79f4: $00
    rst $10                                       ; $79f5: $d7
    nop                                           ; $79f6: $00
    jp c, $dd00                                   ; $79f7: $da $00 $dd

    nop                                           ; $79fa: $00
    ldh [rP1], a                                  ; $79fb: $e0 $00
    db $e3                                        ; $79fd: $e3
    nop                                           ; $79fe: $00
    and $00                                       ; $79ff: $e6 $00
    jp hl                                         ; $7a01: $e9


    nop                                           ; $7a02: $00
    db $ed                                        ; $7a03: $ed
    nop                                           ; $7a04: $00
    ldh a, [rP1]                                  ; $7a05: $f0 $00
    di                                            ; $7a07: $f3
    nop                                           ; $7a08: $00
    or $00                                        ; $7a09: $f6 $00
    ld sp, hl                                     ; $7a0b: $f9
    nop                                           ; $7a0c: $00
    db $fc                                        ; $7a0d: $fc
    nop                                           ; $7a0e: $00
    rst $38                                       ; $7a0f: $ff
    nop                                           ; $7a10: $00
    ld [bc], a                                    ; $7a11: $02
    ld bc, $0105                                  ; $7a12: $01 $05 $01
    add hl, bc                                    ; $7a15: $09
    ld bc, $010c                                  ; $7a16: $01 $0c $01
    rrca                                          ; $7a19: $0f
    ld bc, $0112                                  ; $7a1a: $01 $12 $01
    dec d                                         ; $7a1d: $15
    ld bc, $0118                                  ; $7a1e: $01 $18 $01
    dec de                                        ; $7a21: $1b
    ld bc, $011e                                  ; $7a22: $01 $1e $01
    ld hl, $2401                                  ; $7a25: $21 $01 $24
    ld bc, $0127                                  ; $7a28: $01 $27 $01
    ld a, [hl+]                                   ; $7a2b: $2a
    ld bc, $012e                                  ; $7a2c: $01 $2e $01
    jr nc, jr_039_7a32                            ; $7a2f: $30 $01

    inc [hl]                                      ; $7a31: $34

jr_039_7a32:
    ld bc, $0137                                  ; $7a32: $01 $37 $01
    ld a, [hl-]                                   ; $7a35: $3a
    ld bc, $013d                                  ; $7a36: $01 $3d $01
    ld b, b                                       ; $7a39: $40
    ld bc, HeaderCGBFlag                          ; $7a3a: $01 $43 $01
    ld b, [hl]                                    ; $7a3d: $46
    ld bc, HeaderRAMSize                          ; $7a3e: $01 $49 $01
    ld c, h                                       ; $7a41: $4c
    ld bc, $014f                                  ; $7a42: $01 $4f $01
    ld d, d                                       ; $7a45: $52
    ld bc, $0155                                  ; $7a46: $01 $55 $01
    ld e, b                                       ; $7a49: $58
    ld bc, $015c                                  ; $7a4a: $01 $5c $01
    ld e, a                                       ; $7a4d: $5f
    ld bc, $0162                                  ; $7a4e: $01 $62 $01
    ld h, l                                       ; $7a51: $65
    ld bc, $0168                                  ; $7a52: $01 $68 $01
    ld l, e                                       ; $7a55: $6b
    ld bc, $016e                                  ; $7a56: $01 $6e $01
    ld [hl], d                                    ; $7a59: $72
    ld bc, $0175                                  ; $7a5a: $01 $75 $01
    ld a, b                                       ; $7a5d: $78
    ld bc, $017a                                  ; $7a5e: $01 $7a $01
    ld a, [hl]                                    ; $7a61: $7e
    ld bc, $0181                                  ; $7a62: $01 $81 $01
    add h                                         ; $7a65: $84
    ld bc, $0187                                  ; $7a66: $01 $87 $01
    adc d                                         ; $7a69: $8a
    ld bc, $018d                                  ; $7a6a: $01 $8d $01
    sub c                                         ; $7a6d: $91
    ld bc, $0193                                  ; $7a6e: $01 $93 $01
    sub a                                         ; $7a71: $97
    ld bc, $0199                                  ; $7a72: $01 $99 $01
    sbc l                                         ; $7a75: $9d
    ld bc, $01a0                                  ; $7a76: $01 $a0 $01
    and e                                         ; $7a79: $a3
    ld bc, $01a6                                  ; $7a7a: $01 $a6 $01
    xor c                                         ; $7a7d: $a9
    ld bc, $01ac                                  ; $7a7e: $01 $ac $01
    or b                                          ; $7a81: $b0
    ld bc, $01b2                                  ; $7a82: $01 $b2 $01
    or [hl]                                       ; $7a85: $b6
    ld bc, $01b9                                  ; $7a86: $01 $b9 $01
    cp h                                          ; $7a89: $bc
    ld bc, $01bf                                  ; $7a8a: $01 $bf $01
    jp nz, $c501                                  ; $7a8d: $c2 $01 $c5

    ld bc, $01c8                                  ; $7a90: $01 $c8 $01
    rlc c                                         ; $7a93: $cb $01
    adc $01                                       ; $7a95: $ce $01
    jp nc, $d501                                  ; $7a97: $d2 $01 $d5

    ld bc, $01d8                                  ; $7a9a: $01 $d8 $01
    db $db                                        ; $7a9d: $db
    ld bc, $01de                                  ; $7a9e: $01 $de $01
    inc b                                         ; $7aa1: $04
    nop                                           ; $7aa2: $00
    inc [hl]                                      ; $7aa3: $34
    nop                                           ; $7aa4: $00
    add hl, sp                                    ; $7aa5: $39
    nop                                           ; $7aa6: $00
    ld b, e                                       ; $7aa7: $43
    nop                                           ; $7aa8: $00
    ld c, d                                       ; $7aa9: $4a
    nop                                           ; $7aaa: $00
    ld d, h                                       ; $7aab: $54
    nop                                           ; $7aac: $00
    ld e, d                                       ; $7aad: $5a
    nop                                           ; $7aae: $00
    ld h, b                                       ; $7aaf: $60
    nop                                           ; $7ab0: $00
    ld h, [hl]                                    ; $7ab1: $66
    nop                                           ; $7ab2: $00
    ld l, e                                       ; $7ab3: $6b
    nop                                           ; $7ab4: $00
    ld [hl], b                                    ; $7ab5: $70
    nop                                           ; $7ab6: $00
    ld [hl], l                                    ; $7ab7: $75
    nop                                           ; $7ab8: $00
    ld a, d                                       ; $7ab9: $7a
    nop                                           ; $7aba: $00
    ld a, a                                       ; $7abb: $7f
    nop                                           ; $7abc: $00
    add e                                         ; $7abd: $83
    nop                                           ; $7abe: $00
    add a                                         ; $7abf: $87
    nop                                           ; $7ac0: $00
    adc h                                         ; $7ac1: $8c
    nop                                           ; $7ac2: $00
    sub b                                         ; $7ac3: $90
    nop                                           ; $7ac4: $00
    sub h                                         ; $7ac5: $94
    nop                                           ; $7ac6: $00
    sbc b                                         ; $7ac7: $98
    nop                                           ; $7ac8: $00
    sbc h                                         ; $7ac9: $9c
    nop                                           ; $7aca: $00
    and b                                         ; $7acb: $a0
    nop                                           ; $7acc: $00
    and h                                         ; $7acd: $a4
    nop                                           ; $7ace: $00
    xor b                                         ; $7acf: $a8
    nop                                           ; $7ad0: $00
    xor h                                         ; $7ad1: $ac
    nop                                           ; $7ad2: $00
    or b                                          ; $7ad3: $b0
    nop                                           ; $7ad4: $00
    or e                                          ; $7ad5: $b3
    nop                                           ; $7ad6: $00
    cp b                                          ; $7ad7: $b8
    nop                                           ; $7ad8: $00
    cp e                                          ; $7ad9: $bb
    nop                                           ; $7ada: $00
    cp a                                          ; $7adb: $bf
    nop                                           ; $7adc: $00
    jp $c600                                      ; $7add: $c3 $00 $c6


    nop                                           ; $7ae0: $00
    jp z, $ce00                                   ; $7ae1: $ca $00 $ce

    nop                                           ; $7ae4: $00
    pop de                                        ; $7ae5: $d1
    nop                                           ; $7ae6: $00
    push de                                       ; $7ae7: $d5
    nop                                           ; $7ae8: $00
    reti                                          ; $7ae9: $d9


    nop                                           ; $7aea: $00
    call c, $e000                                 ; $7aeb: $dc $00 $e0
    nop                                           ; $7aee: $00
    db $e3                                        ; $7aef: $e3
    nop                                           ; $7af0: $00
    rst $20                                       ; $7af1: $e7
    nop                                           ; $7af2: $00
    db $eb                                        ; $7af3: $eb
    nop                                           ; $7af4: $00
    xor $00                                       ; $7af5: $ee $00
    ld a, [c]                                     ; $7af7: $f2
    nop                                           ; $7af8: $00
    or $00                                        ; $7af9: $f6 $00
    ld sp, hl                                     ; $7afb: $f9
    nop                                           ; $7afc: $00
    db $fd                                        ; $7afd: $fd
    nop                                           ; $7afe: $00
    nop                                           ; $7aff: $00
    ld bc, HeaderLogo                             ; $7b00: $01 $04 $01
    rlca                                          ; $7b03: $07
    ld bc, $010b                                  ; $7b04: $01 $0b $01
    ld c, $01                                     ; $7b07: $0e $01
    ld [de], a                                    ; $7b09: $12
    ld bc, $0115                                  ; $7b0a: $01 $15 $01
    add hl, de                                    ; $7b0d: $19
    ld bc, $011c                                  ; $7b0e: $01 $1c $01
    jr nz, jr_039_7b14                            ; $7b11: $20 $01

    inc hl                                        ; $7b13: $23

jr_039_7b14:
    ld bc, $0127                                  ; $7b14: $01 $27 $01
    ld a, [hl+]                                   ; $7b17: $2a
    ld bc, $012e                                  ; $7b18: $01 $2e $01
    ld [hl-], a                                   ; $7b1b: $32
    ld bc, $0135                                  ; $7b1c: $01 $35 $01
    add hl, sp                                    ; $7b1f: $39
    ld bc, $013c                                  ; $7b20: $01 $3c $01
    ccf                                           ; $7b23: $3f
    ld bc, HeaderCGBFlag                          ; $7b24: $01 $43 $01
    ld b, [hl]                                    ; $7b27: $46
    ld bc, HeaderDestinationCode                  ; $7b28: $01 $4a $01
    ld c, [hl]                                    ; $7b2b: $4e
    ld bc, $0151                                  ; $7b2c: $01 $51 $01
    ld d, h                                       ; $7b2f: $54
    ld bc, $0158                                  ; $7b30: $01 $58 $01
    ld e, h                                       ; $7b33: $5c
    ld bc, $015f                                  ; $7b34: $01 $5f $01
    ld h, d                                       ; $7b37: $62
    ld bc, $0166                                  ; $7b38: $01 $66 $01
    ld l, c                                       ; $7b3b: $69
    ld bc, $016d                                  ; $7b3c: $01 $6d $01
    ld [hl], c                                    ; $7b3f: $71
    ld bc, $0174                                  ; $7b40: $01 $74 $01
    ld [hl], a                                    ; $7b43: $77
    ld bc, $017b                                  ; $7b44: $01 $7b $01
    ld a, a                                       ; $7b47: $7f
    ld bc, $0182                                  ; $7b48: $01 $82 $01
    add l                                         ; $7b4b: $85
    ld bc, $0189                                  ; $7b4c: $01 $89 $01
    adc l                                         ; $7b4f: $8d
    ld bc, $0190                                  ; $7b50: $01 $90 $01
    sub h                                         ; $7b53: $94
    ld bc, $0197                                  ; $7b54: $01 $97 $01
    sbc e                                         ; $7b57: $9b
    ld bc, $019e                                  ; $7b58: $01 $9e $01
    and d                                         ; $7b5b: $a2
    ld bc, $01a5                                  ; $7b5c: $01 $a5 $01
    xor c                                         ; $7b5f: $a9
    ld bc, $01ac                                  ; $7b60: $01 $ac $01
    or b                                          ; $7b63: $b0
    ld bc, $01b4                                  ; $7b64: $01 $b4 $01
    or a                                          ; $7b67: $b7
    ld bc, $01bb                                  ; $7b68: $01 $bb $01
    cp a                                          ; $7b6b: $bf
    ld bc, $01c2                                  ; $7b6c: $01 $c2 $01
    add $01                                       ; $7b6f: $c6 $01
    ret                                           ; $7b71: $c9


    ld bc, $01cd                                  ; $7b72: $01 $cd $01
    ret nc                                        ; $7b75: $d0

    ld bc, $01d4                                  ; $7b76: $01 $d4 $01
    ret c                                         ; $7b79: $d8

    ld bc, $01db                                  ; $7b7a: $01 $db $01
    rst $18                                       ; $7b7d: $df
    ld bc, $0004                                  ; $7b7e: $01 $04 $00
    ld [hl], $00                                  ; $7b81: $36 $00
    ld b, c                                       ; $7b83: $41
    nop                                           ; $7b84: $00
    ld c, h                                       ; $7b85: $4c
    nop                                           ; $7b86: $00
    ld d, l                                       ; $7b87: $55
    nop                                           ; $7b88: $00
    ld e, h                                       ; $7b89: $5c
    nop                                           ; $7b8a: $00
    ld h, a                                       ; $7b8b: $67
    nop                                           ; $7b8c: $00
    ld l, l                                       ; $7b8d: $6d
    nop                                           ; $7b8e: $00
    ld [hl], h                                    ; $7b8f: $74
    nop                                           ; $7b90: $00
    ld a, d                                       ; $7b91: $7a
    nop                                           ; $7b92: $00
    ld a, a                                       ; $7b93: $7f
    nop                                           ; $7b94: $00
    add l                                         ; $7b95: $85
    nop                                           ; $7b96: $00
    adc e                                         ; $7b97: $8b
    nop                                           ; $7b98: $00
    sub b                                         ; $7b99: $90
    nop                                           ; $7b9a: $00
    sub l                                         ; $7b9b: $95
    nop                                           ; $7b9c: $00
    sbc d                                         ; $7b9d: $9a
    nop                                           ; $7b9e: $00
    sbc a                                         ; $7b9f: $9f
    nop                                           ; $7ba0: $00
    and h                                         ; $7ba1: $a4
    nop                                           ; $7ba2: $00
    xor c                                         ; $7ba3: $a9
    nop                                           ; $7ba4: $00
    xor [hl]                                      ; $7ba5: $ae
    nop                                           ; $7ba6: $00
    or e                                          ; $7ba7: $b3
    nop                                           ; $7ba8: $00
    or a                                          ; $7ba9: $b7
    nop                                           ; $7baa: $00
    cp h                                          ; $7bab: $bc
    nop                                           ; $7bac: $00
    ret nz                                        ; $7bad: $c0

    nop                                           ; $7bae: $00
    add $00                                       ; $7baf: $c6 $00
    jp z, $cf00                                   ; $7bb1: $ca $00 $cf

    nop                                           ; $7bb4: $00
    db $d3                                        ; $7bb5: $d3
    nop                                           ; $7bb6: $00
    rst $10                                       ; $7bb7: $d7
    nop                                           ; $7bb8: $00
    db $db                                        ; $7bb9: $db
    nop                                           ; $7bba: $00
    ldh [rP1], a                                  ; $7bbb: $e0 $00
    db $e4                                        ; $7bbd: $e4
    nop                                           ; $7bbe: $00
    jp hl                                         ; $7bbf: $e9


    nop                                           ; $7bc0: $00
    db $ed                                        ; $7bc1: $ed
    nop                                           ; $7bc2: $00
    pop af                                        ; $7bc3: $f1
    nop                                           ; $7bc4: $00
    or $00                                        ; $7bc5: $f6 $00
    ld a, [$fe00]                                 ; $7bc7: $fa $00 $fe
    nop                                           ; $7bca: $00
    ld [bc], a                                    ; $7bcb: $02
    ld bc, $0107                                  ; $7bcc: $01 $07 $01
    dec bc                                        ; $7bcf: $0b
    ld bc, $010f                                  ; $7bd0: $01 $0f $01
    inc de                                        ; $7bd3: $13
    ld bc, $0118                                  ; $7bd4: $01 $18 $01
    dec de                                        ; $7bd7: $1b
    ld bc, $0120                                  ; $7bd8: $01 $20 $01
    inc h                                         ; $7bdb: $24
    ld bc, $0128                                  ; $7bdc: $01 $28 $01
    inc l                                         ; $7bdf: $2c
    ld bc, $0131                                  ; $7be0: $01 $31 $01
    inc [hl]                                      ; $7be3: $34
    ld bc, $0139                                  ; $7be4: $01 $39 $01
    dec a                                         ; $7be7: $3d
    ld bc, $0142                                  ; $7be8: $01 $42 $01
    ld b, [hl]                                    ; $7beb: $46
    ld bc, HeaderDestinationCode                  ; $7bec: $01 $4a $01
    ld c, [hl]                                    ; $7bef: $4e
    ld bc, $0152                                  ; $7bf0: $01 $52 $01
    ld d, a                                       ; $7bf3: $57
    ld bc, $015b                                  ; $7bf4: $01 $5b $01
    ld e, a                                       ; $7bf7: $5f
    ld bc, $0163                                  ; $7bf8: $01 $63 $01
    ld h, a                                       ; $7bfb: $67
    ld bc, $016c                                  ; $7bfc: $01 $6c $01
    ld [hl], b                                    ; $7bff: $70
    ld bc, $0174                                  ; $7c00: $01 $74 $01
    ld a, b                                       ; $7c03: $78
    ld bc, $017c                                  ; $7c04: $01 $7c $01
    add b                                         ; $7c07: $80
    ld bc, $0184                                  ; $7c08: $01 $84 $01
    adc c                                         ; $7c0b: $89
    ld bc, $018d                                  ; $7c0c: $01 $8d $01
    sub d                                         ; $7c0f: $92
    ld bc, $0195                                  ; $7c10: $01 $95 $01
    sbc d                                         ; $7c13: $9a
    ld bc, $019e                                  ; $7c14: $01 $9e $01
    and d                                         ; $7c17: $a2
    ld bc, $01a6                                  ; $7c18: $01 $a6 $01
    xor e                                         ; $7c1b: $ab
    ld bc, $01af                                  ; $7c1c: $01 $af $01
    or e                                          ; $7c1f: $b3
    ld bc, $01b8                                  ; $7c20: $01 $b8 $01
    cp h                                          ; $7c23: $bc
    ld bc, $01c0                                  ; $7c24: $01 $c0 $01
    call nz, $c801                                ; $7c27: $c4 $01 $c8
    ld bc, $01cd                                  ; $7c2a: $01 $cd $01
    pop de                                        ; $7c2d: $d1
    ld bc, $01d6                                  ; $7c2e: $01 $d6 $01
    jp c, $de01                                   ; $7c31: $da $01 $de

    ld bc, $7c4f                                  ; $7c34: $01 $4f $7c
    adc l                                         ; $7c37: $8d
    ld a, h                                       ; $7c38: $7c
    bit 7, h                                      ; $7c39: $cb $7c
    add hl, bc                                    ; $7c3b: $09
    ld a, l                                       ; $7c3c: $7d
    ld b, a                                       ; $7c3d: $47
    ld a, l                                       ; $7c3e: $7d
    add l                                         ; $7c3f: $85
    ld a, l                                       ; $7c40: $7d
    jp $017d                                      ; $7c41: $c3 $7d $01


    ld a, [hl]                                    ; $7c44: $7e
    ccf                                           ; $7c45: $3f
    ld a, [hl]                                    ; $7c46: $7e
    ld a, l                                       ; $7c47: $7d
    ld a, [hl]                                    ; $7c48: $7e
    cp e                                          ; $7c49: $bb
    ld a, [hl]                                    ; $7c4a: $7e
    ld sp, hl                                     ; $7c4b: $f9
    ld a, [hl]                                    ; $7c4c: $7e
    scf                                           ; $7c4d: $37
    ld a, a                                       ; $7c4e: $7f
    ld bc, $0f00                                  ; $7c4f: $01 $00 $0f
    nop                                           ; $7c52: $00
    ld e, $00                                     ; $7c53: $1e $00
    jr z, jr_039_7c57                             ; $7c55: $28 $00

jr_039_7c57:
    jr nc, jr_039_7c59                            ; $7c57: $30 $00

jr_039_7c59:
    jr c, jr_039_7c5b                             ; $7c59: $38 $00

jr_039_7c5b:
    ccf                                           ; $7c5b: $3f
    nop                                           ; $7c5c: $00
    ld b, l                                       ; $7c5d: $45
    nop                                           ; $7c5e: $00
    ld c, e                                       ; $7c5f: $4b
    nop                                           ; $7c60: $00
    ld d, b                                       ; $7c61: $50
    nop                                           ; $7c62: $00
    ld d, l                                       ; $7c63: $55
    nop                                           ; $7c64: $00
    ld e, e                                       ; $7c65: $5b
    nop                                           ; $7c66: $00
    ld e, l                                       ; $7c67: $5d
    nop                                           ; $7c68: $00
    ld h, h                                       ; $7c69: $64
    nop                                           ; $7c6a: $00
    ld h, [hl]                                    ; $7c6b: $66
    nop                                           ; $7c6c: $00
    ld l, d                                       ; $7c6d: $6a
    nop                                           ; $7c6e: $00
    ld l, l                                       ; $7c6f: $6d
    nop                                           ; $7c70: $00
    ld [hl], c                                    ; $7c71: $71
    nop                                           ; $7c72: $00
    ld [hl], e                                    ; $7c73: $73
    nop                                           ; $7c74: $00
    halt                                          ; $7c75: $76
    nop                                           ; $7c76: $00
    ld a, b                                       ; $7c77: $78
    nop                                           ; $7c78: $00
    ld a, d                                       ; $7c79: $7a
    nop                                           ; $7c7a: $00
    ld a, e                                       ; $7c7b: $7b
    nop                                           ; $7c7c: $00
    ld a, h                                       ; $7c7d: $7c
    nop                                           ; $7c7e: $00
    ld a, a                                       ; $7c7f: $7f
    nop                                           ; $7c80: $00
    add b                                         ; $7c81: $80
    nop                                           ; $7c82: $00
    add c                                         ; $7c83: $81
    nop                                           ; $7c84: $00
    add d                                         ; $7c85: $82
    nop                                           ; $7c86: $00
    add e                                         ; $7c87: $83
    nop                                           ; $7c88: $00
    add l                                         ; $7c89: $85
    nop                                           ; $7c8a: $00
    add [hl]                                      ; $7c8b: $86
    nop                                           ; $7c8c: $00
    ld bc, $1000                                  ; $7c8d: $01 $00 $10
    nop                                           ; $7c90: $00
    jr nz, jr_039_7c93                            ; $7c91: $20 $00

jr_039_7c93:
    dec hl                                        ; $7c93: $2b
    nop                                           ; $7c94: $00
    inc [hl]                                      ; $7c95: $34
    nop                                           ; $7c96: $00
    inc a                                         ; $7c97: $3c
    nop                                           ; $7c98: $00
    ld b, e                                       ; $7c99: $43
    nop                                           ; $7c9a: $00
    ld c, c                                       ; $7c9b: $49
    nop                                           ; $7c9c: $00
    ld c, a                                       ; $7c9d: $4f
    nop                                           ; $7c9e: $00
    ld d, l                                       ; $7c9f: $55
    nop                                           ; $7ca0: $00
    ld e, d                                       ; $7ca1: $5a
    nop                                           ; $7ca2: $00
    ld e, [hl]                                    ; $7ca3: $5e
    nop                                           ; $7ca4: $00
    ld h, l                                       ; $7ca5: $65
    nop                                           ; $7ca6: $00
    ld l, b                                       ; $7ca7: $68
    nop                                           ; $7ca8: $00
    ld l, e                                       ; $7ca9: $6b
    nop                                           ; $7caa: $00
    ld l, a                                       ; $7cab: $6f
    nop                                           ; $7cac: $00
    ld [hl], c                                    ; $7cad: $71
    nop                                           ; $7cae: $00
    ld [hl], h                                    ; $7caf: $74
    nop                                           ; $7cb0: $00
    ld [hl], l                                    ; $7cb1: $75
    nop                                           ; $7cb2: $00
    ld a, b                                       ; $7cb3: $78
    nop                                           ; $7cb4: $00
    ld a, c                                       ; $7cb5: $79
    nop                                           ; $7cb6: $00
    ld a, e                                       ; $7cb7: $7b
    nop                                           ; $7cb8: $00
    ld a, l                                       ; $7cb9: $7d
    nop                                           ; $7cba: $00
    ld a, [hl]                                    ; $7cbb: $7e
    nop                                           ; $7cbc: $00
    ld a, a                                       ; $7cbd: $7f
    nop                                           ; $7cbe: $00
    add c                                         ; $7cbf: $81
    nop                                           ; $7cc0: $00
    add d                                         ; $7cc1: $82
    nop                                           ; $7cc2: $00
    add e                                         ; $7cc3: $83
    nop                                           ; $7cc4: $00
    add e                                         ; $7cc5: $83
    nop                                           ; $7cc6: $00
    add l                                         ; $7cc7: $85
    nop                                           ; $7cc8: $00
    add l                                         ; $7cc9: $85
    nop                                           ; $7cca: $00
    ld bc, $1100                                  ; $7ccb: $01 $00 $11
    nop                                           ; $7cce: $00
    ld [hl+], a                                   ; $7ccf: $22
    nop                                           ; $7cd0: $00
    dec l                                         ; $7cd1: $2d
    nop                                           ; $7cd2: $00
    scf                                           ; $7cd3: $37
    nop                                           ; $7cd4: $00
    ccf                                           ; $7cd5: $3f
    nop                                           ; $7cd6: $00
    ld b, [hl]                                    ; $7cd7: $46
    nop                                           ; $7cd8: $00
    ld c, l                                       ; $7cd9: $4d
    nop                                           ; $7cda: $00
    ld d, e                                       ; $7cdb: $53
    nop                                           ; $7cdc: $00
    ld e, b                                       ; $7cdd: $58
    nop                                           ; $7cde: $00
    ld e, [hl]                                    ; $7cdf: $5e
    nop                                           ; $7ce0: $00
    ld h, d                                       ; $7ce1: $62
    nop                                           ; $7ce2: $00
    ld l, b                                       ; $7ce3: $68
    nop                                           ; $7ce4: $00
    ld l, h                                       ; $7ce5: $6c
    nop                                           ; $7ce6: $00
    ld l, a                                       ; $7ce7: $6f
    nop                                           ; $7ce8: $00
    ld [hl], d                                    ; $7ce9: $72
    nop                                           ; $7cea: $00
    ld [hl], l                                    ; $7ceb: $75
    nop                                           ; $7cec: $00
    ld [hl], a                                    ; $7ced: $77
    nop                                           ; $7cee: $00
    ld a, d                                       ; $7cef: $7a
    nop                                           ; $7cf0: $00
    ld a, h                                       ; $7cf1: $7c
    nop                                           ; $7cf2: $00
    ld a, [hl]                                    ; $7cf3: $7e
    nop                                           ; $7cf4: $00
    ld a, a                                       ; $7cf5: $7f
    nop                                           ; $7cf6: $00
    add b                                         ; $7cf7: $80
    nop                                           ; $7cf8: $00
    add d                                         ; $7cf9: $82
    nop                                           ; $7cfa: $00
    add e                                         ; $7cfb: $83
    nop                                           ; $7cfc: $00
    add h                                         ; $7cfd: $84
    nop                                           ; $7cfe: $00
    add [hl]                                      ; $7cff: $86
    nop                                           ; $7d00: $00
    add a                                         ; $7d01: $87
    nop                                           ; $7d02: $00
    adc b                                         ; $7d03: $88
    nop                                           ; $7d04: $00
    adc c                                         ; $7d05: $89
    nop                                           ; $7d06: $00
    adc c                                         ; $7d07: $89
    nop                                           ; $7d08: $00
    ld bc, $1000                                  ; $7d09: $01 $00 $10
    nop                                           ; $7d0c: $00
    ld e, $00                                     ; $7d0d: $1e $00
    daa                                           ; $7d0f: $27
    nop                                           ; $7d10: $00
    cpl                                           ; $7d11: $2f
    nop                                           ; $7d12: $00
    scf                                           ; $7d13: $37
    nop                                           ; $7d14: $00
    ld a, $00                                     ; $7d15: $3e $00
    ld b, e                                       ; $7d17: $43
    nop                                           ; $7d18: $00
    ld c, e                                       ; $7d19: $4b
    nop                                           ; $7d1a: $00
    ld d, b                                       ; $7d1b: $50
    nop                                           ; $7d1c: $00
    ld d, l                                       ; $7d1d: $55
    nop                                           ; $7d1e: $00
    ld e, c                                       ; $7d1f: $59
    nop                                           ; $7d20: $00
    ld e, [hl]                                    ; $7d21: $5e
    nop                                           ; $7d22: $00
    ld h, d                                       ; $7d23: $62
    nop                                           ; $7d24: $00
    ld h, l                                       ; $7d25: $65
    nop                                           ; $7d26: $00
    ld l, c                                       ; $7d27: $69
    nop                                           ; $7d28: $00
    ld l, h                                       ; $7d29: $6c
    nop                                           ; $7d2a: $00
    ld l, a                                       ; $7d2b: $6f
    nop                                           ; $7d2c: $00
    ld [hl], e                                    ; $7d2d: $73
    nop                                           ; $7d2e: $00
    halt                                          ; $7d2f: $76
    nop                                           ; $7d30: $00
    ld a, c                                       ; $7d31: $79
    nop                                           ; $7d32: $00
    ld a, e                                       ; $7d33: $7b
    nop                                           ; $7d34: $00
    ld a, [hl]                                    ; $7d35: $7e
    nop                                           ; $7d36: $00
    add b                                         ; $7d37: $80
    nop                                           ; $7d38: $00
    add e                                         ; $7d39: $83
    nop                                           ; $7d3a: $00
    add [hl]                                      ; $7d3b: $86
    nop                                           ; $7d3c: $00
    adc b                                         ; $7d3d: $88
    nop                                           ; $7d3e: $00
    adc d                                         ; $7d3f: $8a
    nop                                           ; $7d40: $00
    adc h                                         ; $7d41: $8c
    nop                                           ; $7d42: $00
    adc [hl]                                      ; $7d43: $8e
    nop                                           ; $7d44: $00
    sub b                                         ; $7d45: $90
    nop                                           ; $7d46: $00
    ld bc, $1100                                  ; $7d47: $01 $00 $11
    nop                                           ; $7d4a: $00
    jr nz, jr_039_7d4d                            ; $7d4b: $20 $00

jr_039_7d4d:
    ld a, [hl+]                                   ; $7d4d: $2a
    nop                                           ; $7d4e: $00
    inc sp                                        ; $7d4f: $33
    nop                                           ; $7d50: $00
    ld a, [hl-]                                   ; $7d51: $3a
    nop                                           ; $7d52: $00
    ld b, c                                       ; $7d53: $41
    nop                                           ; $7d54: $00
    ld c, c                                       ; $7d55: $49
    nop                                           ; $7d56: $00
    ld c, a                                       ; $7d57: $4f
    nop                                           ; $7d58: $00
    ld d, h                                       ; $7d59: $54
    nop                                           ; $7d5a: $00
    ld e, c                                       ; $7d5b: $59
    nop                                           ; $7d5c: $00
    ld e, l                                       ; $7d5d: $5d
    nop                                           ; $7d5e: $00
    ld h, d                                       ; $7d5f: $62
    nop                                           ; $7d60: $00
    ld h, l                                       ; $7d61: $65
    nop                                           ; $7d62: $00
    ld l, d                                       ; $7d63: $6a
    nop                                           ; $7d64: $00
    ld l, l                                       ; $7d65: $6d
    nop                                           ; $7d66: $00
    ld [hl], b                                    ; $7d67: $70
    nop                                           ; $7d68: $00
    ld [hl], h                                    ; $7d69: $74
    nop                                           ; $7d6a: $00
    halt                                          ; $7d6b: $76
    nop                                           ; $7d6c: $00
    ld a, d                                       ; $7d6d: $7a
    nop                                           ; $7d6e: $00
    ld a, l                                       ; $7d6f: $7d
    nop                                           ; $7d70: $00
    ld a, a                                       ; $7d71: $7f
    nop                                           ; $7d72: $00
    add c                                         ; $7d73: $81
    nop                                           ; $7d74: $00
    add h                                         ; $7d75: $84
    nop                                           ; $7d76: $00
    add [hl]                                      ; $7d77: $86
    nop                                           ; $7d78: $00
    adc b                                         ; $7d79: $88
    nop                                           ; $7d7a: $00
    adc d                                         ; $7d7b: $8a
    nop                                           ; $7d7c: $00
    adc h                                         ; $7d7d: $8c
    nop                                           ; $7d7e: $00
    adc [hl]                                      ; $7d7f: $8e
    nop                                           ; $7d80: $00
    sub b                                         ; $7d81: $90
    nop                                           ; $7d82: $00
    sub d                                         ; $7d83: $92
    nop                                           ; $7d84: $00
    ld bc, $1600                                  ; $7d85: $01 $00 $16
    nop                                           ; $7d88: $00
    inc hl                                        ; $7d89: $23
    nop                                           ; $7d8a: $00
    ld l, $00                                     ; $7d8b: $2e $00
    scf                                           ; $7d8d: $37
    nop                                           ; $7d8e: $00
    ld b, b                                       ; $7d8f: $40
    nop                                           ; $7d90: $00
    ld c, b                                       ; $7d91: $48
    nop                                           ; $7d92: $00
    ld c, a                                       ; $7d93: $4f
    nop                                           ; $7d94: $00
    ld d, h                                       ; $7d95: $54
    nop                                           ; $7d96: $00
    ld e, c                                       ; $7d97: $59
    nop                                           ; $7d98: $00
    ld e, a                                       ; $7d99: $5f
    nop                                           ; $7d9a: $00
    ld h, h                                       ; $7d9b: $64
    nop                                           ; $7d9c: $00
    ld l, c                                       ; $7d9d: $69
    nop                                           ; $7d9e: $00
    ld l, l                                       ; $7d9f: $6d
    nop                                           ; $7da0: $00
    ld [hl], b                                    ; $7da1: $70
    nop                                           ; $7da2: $00
    ld [hl], e                                    ; $7da3: $73
    nop                                           ; $7da4: $00
    ld [hl], a                                    ; $7da5: $77
    nop                                           ; $7da6: $00
    ld a, d                                       ; $7da7: $7a
    nop                                           ; $7da8: $00
    ld a, h                                       ; $7da9: $7c
    nop                                           ; $7daa: $00
    ld a, a                                       ; $7dab: $7f
    nop                                           ; $7dac: $00
    add d                                         ; $7dad: $82
    nop                                           ; $7dae: $00
    add h                                         ; $7daf: $84
    nop                                           ; $7db0: $00
    add a                                         ; $7db1: $87
    nop                                           ; $7db2: $00
    adc c                                         ; $7db3: $89
    nop                                           ; $7db4: $00
    adc e                                         ; $7db5: $8b
    nop                                           ; $7db6: $00
    adc [hl]                                      ; $7db7: $8e
    nop                                           ; $7db8: $00
    adc a                                         ; $7db9: $8f
    nop                                           ; $7dba: $00
    sub c                                         ; $7dbb: $91
    nop                                           ; $7dbc: $00
    sub e                                         ; $7dbd: $93
    nop                                           ; $7dbe: $00
    sub h                                         ; $7dbf: $94
    nop                                           ; $7dc0: $00
    sub [hl]                                      ; $7dc1: $96
    nop                                           ; $7dc2: $00
    ld bc, $1800                                  ; $7dc3: $01 $00 $18
    nop                                           ; $7dc6: $00
    dec h                                         ; $7dc7: $25
    nop                                           ; $7dc8: $00
    ld sp, $3a00                                  ; $7dc9: $31 $00 $3a
    nop                                           ; $7dcc: $00
    ld b, e                                       ; $7dcd: $43
    nop                                           ; $7dce: $00
    ld c, l                                       ; $7dcf: $4d
    nop                                           ; $7dd0: $00
    ld d, e                                       ; $7dd1: $53
    nop                                           ; $7dd2: $00
    ld e, c                                       ; $7dd3: $59
    nop                                           ; $7dd4: $00
    ld e, [hl]                                    ; $7dd5: $5e
    nop                                           ; $7dd6: $00
    ld h, h                                       ; $7dd7: $64
    nop                                           ; $7dd8: $00
    ld l, c                                       ; $7dd9: $69
    nop                                           ; $7dda: $00
    ld l, [hl]                                    ; $7ddb: $6e
    nop                                           ; $7ddc: $00
    ld [hl], d                                    ; $7ddd: $72
    nop                                           ; $7dde: $00
    halt                                          ; $7ddf: $76
    nop                                           ; $7de0: $00
    ld a, c                                       ; $7de1: $79
    nop                                           ; $7de2: $00
    ld a, h                                       ; $7de3: $7c
    nop                                           ; $7de4: $00
    add b                                         ; $7de5: $80
    nop                                           ; $7de6: $00
    add d                                         ; $7de7: $82
    nop                                           ; $7de8: $00
    add l                                         ; $7de9: $85
    nop                                           ; $7dea: $00
    adc b                                         ; $7deb: $88
    nop                                           ; $7dec: $00
    adc d                                         ; $7ded: $8a
    nop                                           ; $7dee: $00
    adc l                                         ; $7def: $8d
    nop                                           ; $7df0: $00
    adc a                                         ; $7df1: $8f
    nop                                           ; $7df2: $00
    sub c                                         ; $7df3: $91
    nop                                           ; $7df4: $00
    sub e                                         ; $7df5: $93
    nop                                           ; $7df6: $00
    sub l                                         ; $7df7: $95
    nop                                           ; $7df8: $00
    sub a                                         ; $7df9: $97
    nop                                           ; $7dfa: $00
    sbc b                                         ; $7dfb: $98
    nop                                           ; $7dfc: $00
    sbc d                                         ; $7dfd: $9a
    nop                                           ; $7dfe: $00
    sbc e                                         ; $7dff: $9b
    nop                                           ; $7e00: $00
    ld bc, $1900                                  ; $7e01: $01 $00 $19
    nop                                           ; $7e04: $00
    daa                                           ; $7e05: $27
    nop                                           ; $7e06: $00
    inc sp                                        ; $7e07: $33
    nop                                           ; $7e08: $00
    dec a                                         ; $7e09: $3d
    nop                                           ; $7e0a: $00
    ld b, a                                       ; $7e0b: $47
    nop                                           ; $7e0c: $00
    ld c, a                                       ; $7e0d: $4f
    nop                                           ; $7e0e: $00
    ld d, [hl]                                    ; $7e0f: $56
    nop                                           ; $7e10: $00
    ld e, l                                       ; $7e11: $5d
    nop                                           ; $7e12: $00
    ld h, e                                       ; $7e13: $63
    nop                                           ; $7e14: $00
    ld h, a                                       ; $7e15: $67
    nop                                           ; $7e16: $00
    ld l, h                                       ; $7e17: $6c
    nop                                           ; $7e18: $00
    ld [hl], d                                    ; $7e19: $72
    nop                                           ; $7e1a: $00
    ld [hl], l                                    ; $7e1b: $75
    nop                                           ; $7e1c: $00
    ld a, d                                       ; $7e1d: $7a
    nop                                           ; $7e1e: $00
    ld a, l                                       ; $7e1f: $7d
    nop                                           ; $7e20: $00
    add c                                         ; $7e21: $81
    nop                                           ; $7e22: $00
    add h                                         ; $7e23: $84
    nop                                           ; $7e24: $00
    add a                                         ; $7e25: $87
    nop                                           ; $7e26: $00
    adc c                                         ; $7e27: $89
    nop                                           ; $7e28: $00
    adc h                                         ; $7e29: $8c
    nop                                           ; $7e2a: $00
    adc a                                         ; $7e2b: $8f
    nop                                           ; $7e2c: $00
    sub c                                         ; $7e2d: $91
    nop                                           ; $7e2e: $00
    sub e                                         ; $7e2f: $93
    nop                                           ; $7e30: $00
    sub l                                         ; $7e31: $95
    nop                                           ; $7e32: $00
    sub a                                         ; $7e33: $97
    nop                                           ; $7e34: $00
    sbc c                                         ; $7e35: $99
    nop                                           ; $7e36: $00
    sbc e                                         ; $7e37: $9b
    nop                                           ; $7e38: $00
    sbc l                                         ; $7e39: $9d
    nop                                           ; $7e3a: $00
    sbc a                                         ; $7e3b: $9f
    nop                                           ; $7e3c: $00
    and b                                         ; $7e3d: $a0
    nop                                           ; $7e3e: $00
    ld bc, $1b00                                  ; $7e3f: $01 $00 $1b
    nop                                           ; $7e42: $00
    add hl, hl                                    ; $7e43: $29
    nop                                           ; $7e44: $00
    ld [hl], $00                                  ; $7e45: $36 $00
    ld b, c                                       ; $7e47: $41
    nop                                           ; $7e48: $00
    ld c, d                                       ; $7e49: $4a
    nop                                           ; $7e4a: $00
    ld d, h                                       ; $7e4b: $54
    nop                                           ; $7e4c: $00
    ld e, e                                       ; $7e4d: $5b
    nop                                           ; $7e4e: $00
    ld h, c                                       ; $7e4f: $61
    nop                                           ; $7e50: $00
    ld h, a                                       ; $7e51: $67
    nop                                           ; $7e52: $00
    ld l, l                                       ; $7e53: $6d
    nop                                           ; $7e54: $00
    ld [hl], d                                    ; $7e55: $72
    nop                                           ; $7e56: $00
    ld [hl], a                                    ; $7e57: $77
    nop                                           ; $7e58: $00
    ld a, e                                       ; $7e59: $7b
    nop                                           ; $7e5a: $00
    add b                                         ; $7e5b: $80
    nop                                           ; $7e5c: $00
    add d                                         ; $7e5d: $82
    nop                                           ; $7e5e: $00
    add [hl]                                      ; $7e5f: $86
    nop                                           ; $7e60: $00
    adc c                                         ; $7e61: $89
    nop                                           ; $7e62: $00
    adc l                                         ; $7e63: $8d
    nop                                           ; $7e64: $00
    sub b                                         ; $7e65: $90
    nop                                           ; $7e66: $00
    sub d                                         ; $7e67: $92
    nop                                           ; $7e68: $00
    sub l                                         ; $7e69: $95
    nop                                           ; $7e6a: $00
    sub a                                         ; $7e6b: $97
    nop                                           ; $7e6c: $00
    sbc d                                         ; $7e6d: $9a
    nop                                           ; $7e6e: $00
    sbc h                                         ; $7e6f: $9c
    nop                                           ; $7e70: $00
    sbc [hl]                                      ; $7e71: $9e
    nop                                           ; $7e72: $00
    sbc a                                         ; $7e73: $9f
    nop                                           ; $7e74: $00
    and c                                         ; $7e75: $a1
    nop                                           ; $7e76: $00
    and e                                         ; $7e77: $a3
    nop                                           ; $7e78: $00
    and l                                         ; $7e79: $a5
    nop                                           ; $7e7a: $00
    and [hl]                                      ; $7e7b: $a6
    nop                                           ; $7e7c: $00
    ld bc, $1c00                                  ; $7e7d: $01 $00 $1c
    nop                                           ; $7e80: $00
    inc l                                         ; $7e81: $2c
    nop                                           ; $7e82: $00
    add hl, sp                                    ; $7e83: $39
    nop                                           ; $7e84: $00
    ld b, h                                       ; $7e85: $44
    nop                                           ; $7e86: $00
    ld d, c                                       ; $7e87: $51
    nop                                           ; $7e88: $00
    ld e, d                                       ; $7e89: $5a
    nop                                           ; $7e8a: $00
    ld h, c                                       ; $7e8b: $61
    nop                                           ; $7e8c: $00
    ld h, a                                       ; $7e8d: $67
    nop                                           ; $7e8e: $00
    ld l, l                                       ; $7e8f: $6d
    nop                                           ; $7e90: $00
    ld [hl], e                                    ; $7e91: $73
    nop                                           ; $7e92: $00
    ld a, c                                       ; $7e93: $79
    nop                                           ; $7e94: $00
    ld a, l                                       ; $7e95: $7d
    nop                                           ; $7e96: $00
    add d                                         ; $7e97: $82
    nop                                           ; $7e98: $00
    add [hl]                                      ; $7e99: $86
    nop                                           ; $7e9a: $00
    adc d                                         ; $7e9b: $8a
    nop                                           ; $7e9c: $00
    adc l                                         ; $7e9d: $8d
    nop                                           ; $7e9e: $00
    sub c                                         ; $7e9f: $91
    nop                                           ; $7ea0: $00
    sub h                                         ; $7ea1: $94
    nop                                           ; $7ea2: $00
    sub a                                         ; $7ea3: $97
    nop                                           ; $7ea4: $00
    sbc c                                         ; $7ea5: $99
    nop                                           ; $7ea6: $00
    sbc h                                         ; $7ea7: $9c
    nop                                           ; $7ea8: $00
    sbc a                                         ; $7ea9: $9f
    nop                                           ; $7eaa: $00
    and c                                         ; $7eab: $a1
    nop                                           ; $7eac: $00
    and e                                         ; $7ead: $a3
    nop                                           ; $7eae: $00
    and l                                         ; $7eaf: $a5
    nop                                           ; $7eb0: $00
    and a                                         ; $7eb1: $a7
    nop                                           ; $7eb2: $00
    xor c                                         ; $7eb3: $a9
    nop                                           ; $7eb4: $00
    xor e                                         ; $7eb5: $ab
    nop                                           ; $7eb6: $00
    xor h                                         ; $7eb7: $ac
    nop                                           ; $7eb8: $00
    xor [hl]                                      ; $7eb9: $ae
    nop                                           ; $7eba: $00
    ld bc, $1c00                                  ; $7ebb: $01 $00 $1c
    nop                                           ; $7ebe: $00
    inc l                                         ; $7ebf: $2c
    nop                                           ; $7ec0: $00
    add hl, sp                                    ; $7ec1: $39
    nop                                           ; $7ec2: $00
    ld b, [hl]                                    ; $7ec3: $46
    nop                                           ; $7ec4: $00
    ld c, [hl]                                    ; $7ec5: $4e
    nop                                           ; $7ec6: $00
    ld d, a                                       ; $7ec7: $57
    nop                                           ; $7ec8: $00
    ld e, a                                       ; $7ec9: $5f
    nop                                           ; $7eca: $00
    ld h, l                                       ; $7ecb: $65
    nop                                           ; $7ecc: $00
    ld l, h                                       ; $7ecd: $6c
    nop                                           ; $7ece: $00
    ld [hl], c                                    ; $7ecf: $71
    nop                                           ; $7ed0: $00
    ld [hl], a                                    ; $7ed1: $77
    nop                                           ; $7ed2: $00
    ld a, h                                       ; $7ed3: $7c
    nop                                           ; $7ed4: $00
    add b                                         ; $7ed5: $80
    nop                                           ; $7ed6: $00
    add l                                         ; $7ed7: $85
    nop                                           ; $7ed8: $00
    adc c                                         ; $7ed9: $89
    nop                                           ; $7eda: $00
    adc l                                         ; $7edb: $8d
    nop                                           ; $7edc: $00
    sub b                                         ; $7edd: $90
    nop                                           ; $7ede: $00
    sub h                                         ; $7edf: $94
    nop                                           ; $7ee0: $00
    sub a                                         ; $7ee1: $97
    nop                                           ; $7ee2: $00
    sbc d                                         ; $7ee3: $9a
    nop                                           ; $7ee4: $00
    sbc l                                         ; $7ee5: $9d
    nop                                           ; $7ee6: $00
    sbc a                                         ; $7ee7: $9f
    nop                                           ; $7ee8: $00
    and d                                         ; $7ee9: $a2
    nop                                           ; $7eea: $00
    and l                                         ; $7eeb: $a5
    nop                                           ; $7eec: $00
    and a                                         ; $7eed: $a7
    nop                                           ; $7eee: $00
    xor d                                         ; $7eef: $aa
    nop                                           ; $7ef0: $00
    xor h                                         ; $7ef1: $ac
    nop                                           ; $7ef2: $00
    xor [hl]                                      ; $7ef3: $ae
    nop                                           ; $7ef4: $00
    or c                                          ; $7ef5: $b1
    nop                                           ; $7ef6: $00
    or e                                          ; $7ef7: $b3
    nop                                           ; $7ef8: $00
    ld bc, $1f00                                  ; $7ef9: $01 $00 $1f
    nop                                           ; $7efc: $00
    jr nc, jr_039_7eff                            ; $7efd: $30 $00

jr_039_7eff:
    ccf                                           ; $7eff: $3f
    nop                                           ; $7f00: $00
    ld c, d                                       ; $7f01: $4a
    nop                                           ; $7f02: $00
    ld d, l                                       ; $7f03: $55
    nop                                           ; $7f04: $00
    ld e, l                                       ; $7f05: $5d
    nop                                           ; $7f06: $00
    ld h, [hl]                                    ; $7f07: $66
    nop                                           ; $7f08: $00
    ld l, h                                       ; $7f09: $6c
    nop                                           ; $7f0a: $00
    ld [hl], e                                    ; $7f0b: $73
    nop                                           ; $7f0c: $00
    ld a, c                                       ; $7f0d: $79
    nop                                           ; $7f0e: $00
    ld a, a                                       ; $7f0f: $7f
    nop                                           ; $7f10: $00
    add l                                         ; $7f11: $85
    nop                                           ; $7f12: $00
    adc d                                         ; $7f13: $8a
    nop                                           ; $7f14: $00
    adc [hl]                                      ; $7f15: $8e
    nop                                           ; $7f16: $00
    sub e                                         ; $7f17: $93
    nop                                           ; $7f18: $00
    sbc b                                         ; $7f19: $98
    nop                                           ; $7f1a: $00
    sbc h                                         ; $7f1b: $9c
    nop                                           ; $7f1c: $00
    sbc a                                         ; $7f1d: $9f
    nop                                           ; $7f1e: $00
    and e                                         ; $7f1f: $a3
    nop                                           ; $7f20: $00
    and a                                         ; $7f21: $a7
    nop                                           ; $7f22: $00
    xor c                                         ; $7f23: $a9
    nop                                           ; $7f24: $00
    xor l                                         ; $7f25: $ad
    nop                                           ; $7f26: $00
    or b                                          ; $7f27: $b0
    nop                                           ; $7f28: $00
    or e                                          ; $7f29: $b3
    nop                                           ; $7f2a: $00
    or [hl]                                       ; $7f2b: $b6
    nop                                           ; $7f2c: $00
    cp b                                          ; $7f2d: $b8
    nop                                           ; $7f2e: $00
    cp h                                          ; $7f2f: $bc
    nop                                           ; $7f30: $00
    cp l                                          ; $7f31: $bd
    nop                                           ; $7f32: $00
    pop bc                                        ; $7f33: $c1
    nop                                           ; $7f34: $00
    jp Boot                                       ; $7f35: $c3 $00 $01


    nop                                           ; $7f38: $00
    inc hl                                        ; $7f39: $23
    nop                                           ; $7f3a: $00
    scf                                           ; $7f3b: $37
    nop                                           ; $7f3c: $00
    ld c, b                                       ; $7f3d: $48
    nop                                           ; $7f3e: $00
    ld d, h                                       ; $7f3f: $54
    nop                                           ; $7f40: $00
    ld e, a                                       ; $7f41: $5f
    nop                                           ; $7f42: $00
    ld l, c                                       ; $7f43: $69
    nop                                           ; $7f44: $00
    ld [hl], d                                    ; $7f45: $72
    nop                                           ; $7f46: $00
    ld a, e                                       ; $7f47: $7b
    nop                                           ; $7f48: $00
    add d                                         ; $7f49: $82
    nop                                           ; $7f4a: $00
    adc d                                         ; $7f4b: $8a
    nop                                           ; $7f4c: $00
    sub b                                         ; $7f4d: $90
    nop                                           ; $7f4e: $00
    sub [hl]                                      ; $7f4f: $96
    nop                                           ; $7f50: $00
    sbc h                                         ; $7f51: $9c
    nop                                           ; $7f52: $00
    and d                                         ; $7f53: $a2
    nop                                           ; $7f54: $00
    and a                                         ; $7f55: $a7
    nop                                           ; $7f56: $00
    xor h                                         ; $7f57: $ac
    nop                                           ; $7f58: $00
    or c                                          ; $7f59: $b1
    nop                                           ; $7f5a: $00
    or l                                          ; $7f5b: $b5
    nop                                           ; $7f5c: $00
    cp c                                          ; $7f5d: $b9
    nop                                           ; $7f5e: $00
    cp l                                          ; $7f5f: $bd
    nop                                           ; $7f60: $00
    pop bc                                        ; $7f61: $c1
    nop                                           ; $7f62: $00
    add $00                                       ; $7f63: $c6 $00
    ret                                           ; $7f65: $c9


    nop                                           ; $7f66: $00
    call $d000                                    ; $7f67: $cd $00 $d0
    nop                                           ; $7f6a: $00
    db $d3                                        ; $7f6b: $d3
    nop                                           ; $7f6c: $00
    sub $00                                       ; $7f6d: $d6 $00
    jp c, $dd00                                   ; $7f6f: $da $00 $dd

    nop                                           ; $7f72: $00
    ldh [rP1], a                                  ; $7f73: $e0 $00
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
