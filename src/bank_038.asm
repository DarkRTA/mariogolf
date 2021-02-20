; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

    db $06, $40, $02, $6a

    dec bc                                        ; $4004: $0b
    ld d, l                                       ; $4005: $55

    ld a, c                                       ; $4006: $79
    cp $0d                                        ; $4007: $fe $0d
    jr nc, jr_038_4049                            ; $4009: $30 $3e

    ld a, [$d32a]                                 ; $400b: $fa $2a $d3
    cp $02                                        ; $400e: $fe $02
    jr z, jr_038_4037                             ; $4010: $28 $25

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
    jr nz, jr_038_402a                            ; $4024: $20 $04

    ld a, [hl+]                                   ; $4026: $2a
    ld h, [hl]                                    ; $4027: $66
    ld l, a                                       ; $4028: $6f
    ret                                           ; $4029: $c9


jr_038_402a:
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


jr_038_4037:
    ld h, $00                                     ; $4037: $26 $00
    ld l, c                                       ; $4039: $69
    add hl, hl                                    ; $403a: $29
    ld bc, $51cb                                  ; $403b: $01 $cb $51
    add hl, bc                                    ; $403e: $09
    ld a, [hl+]                                   ; $403f: $2a
    ld h, [hl]                                    ; $4040: $66
    ld l, a                                       ; $4041: $6f
    res 0, e                                      ; $4042: $cb $83
    add hl, de                                    ; $4044: $19
    ld l, [hl]                                    ; $4045: $6e
    ld h, $00                                     ; $4046: $26 $00
    ret                                           ; $4048: $c9


jr_038_4049:
    ld hl, $0040                                  ; $4049: $21 $40 $00
    ret                                           ; $404c: $c9


    db $67, $40

    ld h, c                                       ; $404f: $61
    ld b, d                                       ; $4050: $42
    add hl, sp                                    ; $4051: $39
    ld b, h                                       ; $4052: $44

    db $ed, $45

    sub a                                         ; $4055: $97
    ld b, a                                       ; $4056: $47
    db $21                                        ; $4057: $21
    ld c, c                                       ; $4058: $49

    db $8d, $4a, $df, $4b, $1d, $4d

    ld b, l                                       ; $405f: $45
    ld c, [hl]                                    ; $4060: $4e
    ld d, l                                       ; $4061: $55
    ld c, a                                       ; $4062: $4f
    ld c, e                                       ; $4063: $4b
    ld d, b                                       ; $4064: $50

    db $1f, $51

    inc b                                         ; $4067: $04
    nop                                           ; $4068: $00
    ld c, $00                                     ; $4069: $0e $00
    ld hl, $2700                                  ; $406b: $21 $00 $27
    nop                                           ; $406e: $00
    dec l                                         ; $406f: $2d
    nop                                           ; $4070: $00
    ld [hl-], a                                   ; $4071: $32
    nop                                           ; $4072: $00
    scf                                           ; $4073: $37
    nop                                           ; $4074: $00
    dec sp                                        ; $4075: $3b
    nop                                           ; $4076: $00
    ccf                                           ; $4077: $3f
    nop                                           ; $4078: $00
    ld b, h                                       ; $4079: $44
    nop                                           ; $407a: $00
    ld c, b                                       ; $407b: $48
    nop                                           ; $407c: $00
    ld c, e                                       ; $407d: $4b
    nop                                           ; $407e: $00
    ld c, [hl]                                    ; $407f: $4e
    nop                                           ; $4080: $00
    ld d, c                                       ; $4081: $51
    nop                                           ; $4082: $00
    ld d, h                                       ; $4083: $54
    nop                                           ; $4084: $00
    ld d, a                                       ; $4085: $57
    nop                                           ; $4086: $00
    ld e, d                                       ; $4087: $5a
    nop                                           ; $4088: $00
    ld e, h                                       ; $4089: $5c
    nop                                           ; $408a: $00
    ld e, a                                       ; $408b: $5f
    nop                                           ; $408c: $00
    ld h, d                                       ; $408d: $62
    nop                                           ; $408e: $00
    ld h, h                                       ; $408f: $64
    nop                                           ; $4090: $00
    ld h, a                                       ; $4091: $67
    nop                                           ; $4092: $00
    ld l, b                                       ; $4093: $68
    nop                                           ; $4094: $00
    ld l, e                                       ; $4095: $6b
    nop                                           ; $4096: $00
    ld l, [hl]                                    ; $4097: $6e
    nop                                           ; $4098: $00
    ld l, a                                       ; $4099: $6f
    nop                                           ; $409a: $00
    ld [hl], d                                    ; $409b: $72
    nop                                           ; $409c: $00
    ld [hl], h                                    ; $409d: $74
    nop                                           ; $409e: $00
    halt                                          ; $409f: $76
    nop                                           ; $40a0: $00
    ld a, b                                       ; $40a1: $78
    nop                                           ; $40a2: $00
    ld a, d                                       ; $40a3: $7a
    nop                                           ; $40a4: $00
    ld a, h                                       ; $40a5: $7c
    nop                                           ; $40a6: $00
    ld a, a                                       ; $40a7: $7f
    nop                                           ; $40a8: $00
    add b                                         ; $40a9: $80
    nop                                           ; $40aa: $00
    add d                                         ; $40ab: $82
    nop                                           ; $40ac: $00
    add h                                         ; $40ad: $84
    nop                                           ; $40ae: $00
    add [hl]                                      ; $40af: $86
    nop                                           ; $40b0: $00
    adc b                                         ; $40b1: $88
    nop                                           ; $40b2: $00
    adc d                                         ; $40b3: $8a
    nop                                           ; $40b4: $00
    adc h                                         ; $40b5: $8c
    nop                                           ; $40b6: $00
    adc [hl]                                      ; $40b7: $8e
    nop                                           ; $40b8: $00
    sub b                                         ; $40b9: $90
    nop                                           ; $40ba: $00
    sub c                                         ; $40bb: $91
    nop                                           ; $40bc: $00
    sub e                                         ; $40bd: $93
    nop                                           ; $40be: $00
    sub [hl]                                      ; $40bf: $96
    nop                                           ; $40c0: $00
    sub a                                         ; $40c1: $97
    nop                                           ; $40c2: $00
    sbc c                                         ; $40c3: $99
    nop                                           ; $40c4: $00
    sbc e                                         ; $40c5: $9b
    nop                                           ; $40c6: $00
    sbc h                                         ; $40c7: $9c
    nop                                           ; $40c8: $00
    sbc [hl]                                      ; $40c9: $9e
    nop                                           ; $40ca: $00
    and b                                         ; $40cb: $a0
    nop                                           ; $40cc: $00
    and c                                         ; $40cd: $a1
    nop                                           ; $40ce: $00
    and e                                         ; $40cf: $a3
    nop                                           ; $40d0: $00
    and l                                         ; $40d1: $a5
    nop                                           ; $40d2: $00
    and a                                         ; $40d3: $a7
    nop                                           ; $40d4: $00
    xor b                                         ; $40d5: $a8
    nop                                           ; $40d6: $00
    xor d                                         ; $40d7: $aa
    nop                                           ; $40d8: $00
    xor h                                         ; $40d9: $ac
    nop                                           ; $40da: $00
    xor [hl]                                      ; $40db: $ae
    nop                                           ; $40dc: $00
    or b                                          ; $40dd: $b0
    nop                                           ; $40de: $00
    or c                                          ; $40df: $b1
    nop                                           ; $40e0: $00
    or d                                          ; $40e1: $b2
    nop                                           ; $40e2: $00
    or h                                          ; $40e3: $b4
    nop                                           ; $40e4: $00
    or [hl]                                       ; $40e5: $b6
    nop                                           ; $40e6: $00
    cp b                                          ; $40e7: $b8
    nop                                           ; $40e8: $00
    cp c                                          ; $40e9: $b9
    nop                                           ; $40ea: $00
    cp e                                          ; $40eb: $bb
    nop                                           ; $40ec: $00
    cp l                                          ; $40ed: $bd
    nop                                           ; $40ee: $00
    cp a                                          ; $40ef: $bf
    nop                                           ; $40f0: $00
    ret nz                                        ; $40f1: $c0

    nop                                           ; $40f2: $00
    pop bc                                        ; $40f3: $c1
    nop                                           ; $40f4: $00
    jp $c400                                      ; $40f5: $c3 $00 $c4


    nop                                           ; $40f8: $00
    add $00                                       ; $40f9: $c6 $00
    rst $00                                       ; $40fb: $c7
    nop                                           ; $40fc: $00
    jp z, $cb00                                   ; $40fd: $ca $00 $cb

    nop                                           ; $4100: $00
    call $ce00                                    ; $4101: $cd $00 $ce
    nop                                           ; $4104: $00
    ret nc                                        ; $4105: $d0

    nop                                           ; $4106: $00
    pop de                                        ; $4107: $d1
    nop                                           ; $4108: $00
    db $d3                                        ; $4109: $d3
    nop                                           ; $410a: $00
    push de                                       ; $410b: $d5
    nop                                           ; $410c: $00
    rst $10                                       ; $410d: $d7
    nop                                           ; $410e: $00
    ret c                                         ; $410f: $d8

    nop                                           ; $4110: $00
    reti                                          ; $4111: $d9


    nop                                           ; $4112: $00
    db $db                                        ; $4113: $db
    nop                                           ; $4114: $00
    call c, $de00                                 ; $4115: $dc $00 $de
    nop                                           ; $4118: $00
    ldh [rP1], a                                  ; $4119: $e0 $00
    pop hl                                        ; $411b: $e1
    nop                                           ; $411c: $00
    db $e3                                        ; $411d: $e3
    nop                                           ; $411e: $00
    db $e4                                        ; $411f: $e4
    nop                                           ; $4120: $00
    and $00                                       ; $4121: $e6 $00
    rst $20                                       ; $4123: $e7
    nop                                           ; $4124: $00
    jp hl                                         ; $4125: $e9


    nop                                           ; $4126: $00
    ld [$ec00], a                                 ; $4127: $ea $00 $ec
    nop                                           ; $412a: $00
    xor $00                                       ; $412b: $ee $00
    rst $28                                       ; $412d: $ef
    nop                                           ; $412e: $00
    pop af                                        ; $412f: $f1
    nop                                           ; $4130: $00
    di                                            ; $4131: $f3
    nop                                           ; $4132: $00
    db $f4                                        ; $4133: $f4
    nop                                           ; $4134: $00
    push af                                       ; $4135: $f5
    nop                                           ; $4136: $00
    rst $30                                       ; $4137: $f7
    nop                                           ; $4138: $00
    ld hl, sp+$00                                 ; $4139: $f8 $00
    db $fa                                        ; $413b: $fa
    nop                                           ; $413c: $00

    db $fb, $00

    db $fd                                        ; $413f: $fd
    nop                                           ; $4140: $00
    rst $38                                       ; $4141: $ff
    nop                                           ; $4142: $00

    db $ff, $00

    ld bc, $0301                                  ; $4145: $01 $01 $03
    ld bc, HeaderLogo                             ; $4148: $01 $04 $01
    ld b, $01                                     ; $414b: $06 $01
    rlca                                          ; $414d: $07
    db $01                                        ; $414e: $01

    db $09, $01, $0b, $01

    inc c                                         ; $4153: $0c
    ld bc, $010d                                  ; $4154: $01 $0d $01
    rrca                                          ; $4157: $0f
    db $01                                        ; $4158: $01

    db $11, $01

    ld [de], a                                    ; $415b: $12
    ld bc, $0113                                  ; $415c: $01 $13 $01
    dec d                                         ; $415f: $15
    ld bc, $0117                                  ; $4160: $01 $17 $01
    jr jr_038_4166                                ; $4163: $18 $01

    add hl, de                                    ; $4165: $19

jr_038_4166:
    ld bc, $011b                                  ; $4166: $01 $1b $01
    inc e                                         ; $4169: $1c
    ld bc, $011e                                  ; $416a: $01 $1e $01
    rra                                           ; $416d: $1f
    ld bc, $0121                                  ; $416e: $01 $21 $01
    inc hl                                        ; $4171: $23
    ld bc, $0124                                  ; $4172: $01 $24 $01
    ld h, $01                                     ; $4175: $26 $01
    daa                                           ; $4177: $27
    ld bc, $0129                                  ; $4178: $01 $29 $01
    ld a, [hl+]                                   ; $417b: $2a
    ld bc, $012c                                  ; $417c: $01 $2c $01
    dec l                                         ; $417f: $2d
    ld bc, $012f                                  ; $4180: $01 $2f $01
    jr nc, @+$03                                  ; $4183: $30 $01

    ld sp, $3301                                  ; $4185: $31 $01 $33
    ld bc, HeaderTitle                            ; $4188: $01 $34 $01
    ld [hl], $01                                  ; $418b: $36 $01
    jr c, jr_038_4190                             ; $418d: $38 $01

    add hl, sp                                    ; $418f: $39

jr_038_4190:
    ld bc, $013b                                  ; $4190: $01 $3b $01
    inc a                                         ; $4193: $3c
    ld bc, $013d                                  ; $4194: $01 $3d $01
    ccf                                           ; $4197: $3f
    ld bc, $0140                                  ; $4198: $01 $40 $01
    ld b, d                                       ; $419b: $42
    ld bc, HeaderCGBFlag                          ; $419c: $01 $43 $01
    ld b, l                                       ; $419f: $45
    ld bc, HeaderSGBFlag                          ; $41a0: $01 $46 $01
    ld b, a                                       ; $41a3: $47
    ld bc, HeaderRAMSize                          ; $41a4: $01 $49 $01
    ld c, e                                       ; $41a7: $4b
    ld bc, HeaderMaskROMVersion                   ; $41a8: $01 $4c $01
    ld c, [hl]                                    ; $41ab: $4e
    ld bc, $014f                                  ; $41ac: $01 $4f $01
    ld d, c                                       ; $41af: $51
    ld bc, $0152                                  ; $41b0: $01 $52 $01
    ld d, h                                       ; $41b3: $54
    ld bc, $0155                                  ; $41b4: $01 $55 $01
    ld d, a                                       ; $41b7: $57
    ld bc, $0158                                  ; $41b8: $01 $58 $01
    ld e, d                                       ; $41bb: $5a
    ld bc, $015b                                  ; $41bc: $01 $5b $01
    ld e, l                                       ; $41bf: $5d
    ld bc, $015e                                  ; $41c0: $01 $5e $01
    ld e, a                                       ; $41c3: $5f
    ld bc, $0161                                  ; $41c4: $01 $61 $01
    ld h, e                                       ; $41c7: $63
    ld bc, $0164                                  ; $41c8: $01 $64 $01
    ld h, [hl]                                    ; $41cb: $66
    ld bc, $0167                                  ; $41cc: $01 $67 $01
    ld l, c                                       ; $41cf: $69
    ld bc, $016a                                  ; $41d0: $01 $6a $01
    ld l, e                                       ; $41d3: $6b
    ld bc, $016d                                  ; $41d4: $01 $6d $01
    ld l, a                                       ; $41d7: $6f
    ld bc, $0170                                  ; $41d8: $01 $70 $01
    ld [hl], c                                    ; $41db: $71
    ld bc, $0173                                  ; $41dc: $01 $73 $01
    ld [hl], l                                    ; $41df: $75
    ld bc, $0176                                  ; $41e0: $01 $76 $01
    ld a, b                                       ; $41e3: $78
    ld bc, $0179                                  ; $41e4: $01 $79 $01
    ld a, e                                       ; $41e7: $7b
    ld bc, $017c                                  ; $41e8: $01 $7c $01
    ld a, [hl]                                    ; $41eb: $7e
    ld bc, $017f                                  ; $41ec: $01 $7f $01
    add c                                         ; $41ef: $81
    ld bc, $0182                                  ; $41f0: $01 $82 $01
    add h                                         ; $41f3: $84
    ld bc, $0185                                  ; $41f4: $01 $85 $01
    add [hl]                                      ; $41f7: $86
    ld bc, $0188                                  ; $41f8: $01 $88 $01
    adc d                                         ; $41fb: $8a
    ld bc, $018b                                  ; $41fc: $01 $8b $01
    adc l                                         ; $41ff: $8d
    ld bc, $018e                                  ; $4200: $01 $8e $01
    sub b                                         ; $4203: $90
    ld bc, $0191                                  ; $4204: $01 $91 $01
    sub e                                         ; $4207: $93
    ld bc, $0194                                  ; $4208: $01 $94 $01
    sub l                                         ; $420b: $95
    ld bc, $0197                                  ; $420c: $01 $97 $01
    sbc b                                         ; $420f: $98
    ld bc, $019a                                  ; $4210: $01 $9a $01
    sbc h                                         ; $4213: $9c
    ld bc, $019d                                  ; $4214: $01 $9d $01
    sbc [hl]                                      ; $4217: $9e
    ld bc, $01a0                                  ; $4218: $01 $a0 $01
    and d                                         ; $421b: $a2
    ld bc, $01a3                                  ; $421c: $01 $a3 $01
    and l                                         ; $421f: $a5
    ld bc, $01a6                                  ; $4220: $01 $a6 $01
    xor b                                         ; $4223: $a8
    ld bc, $01a9                                  ; $4224: $01 $a9 $01
    xor d                                         ; $4227: $aa
    ld bc, $01ac                                  ; $4228: $01 $ac $01
    xor l                                         ; $422b: $ad
    ld bc, $01af                                  ; $422c: $01 $af $01
    or c                                          ; $422f: $b1
    ld bc, $01b2                                  ; $4230: $01 $b2 $01
    or h                                          ; $4233: $b4
    ld bc, $01b5                                  ; $4234: $01 $b5 $01
    or [hl]                                       ; $4237: $b6
    ld bc, $01b8                                  ; $4238: $01 $b8 $01
    cp c                                          ; $423b: $b9
    ld bc, $01bb                                  ; $423c: $01 $bb $01
    cp h                                          ; $423f: $bc
    ld bc, $01be                                  ; $4240: $01 $be $01
    cp a                                          ; $4243: $bf
    ld bc, $01c1                                  ; $4244: $01 $c1 $01
    jp nz, $c401                                  ; $4247: $c2 $01 $c4

    ld bc, $01c6                                  ; $424a: $01 $c6 $01
    rst $00                                       ; $424d: $c7
    ld bc, $01c8                                  ; $424e: $01 $c8 $01
    jp z, $cb01                                   ; $4251: $ca $01 $cb

    ld bc, $01cd                                  ; $4254: $01 $cd $01
    adc $01                                       ; $4257: $ce $01
    ret nc                                        ; $4259: $d0

    ld bc, $01d2                                  ; $425a: $01 $d2 $01
    db $d3                                        ; $425d: $d3
    ld bc, $01d5                                  ; $425e: $01 $d5 $01
    inc b                                         ; $4261: $04
    nop                                           ; $4262: $00
    rrca                                          ; $4263: $0f
    nop                                           ; $4264: $00
    dec h                                         ; $4265: $25
    nop                                           ; $4266: $00
    dec hl                                        ; $4267: $2b
    nop                                           ; $4268: $00
    ld sp, $3600                                  ; $4269: $31 $00 $36
    nop                                           ; $426c: $00
    inc a                                         ; $426d: $3c
    nop                                           ; $426e: $00
    ld a, $00                                     ; $426f: $3e $00
    ld b, e                                       ; $4271: $43
    nop                                           ; $4272: $00
    ld c, b                                       ; $4273: $48
    nop                                           ; $4274: $00
    ld c, e                                       ; $4275: $4b
    nop                                           ; $4276: $00
    ld c, [hl]                                    ; $4277: $4e
    nop                                           ; $4278: $00
    ld d, c                                       ; $4279: $51
    nop                                           ; $427a: $00
    ld d, l                                       ; $427b: $55
    nop                                           ; $427c: $00
    ld d, a                                       ; $427d: $57
    nop                                           ; $427e: $00
    ld e, d                                       ; $427f: $5a
    nop                                           ; $4280: $00
    ld e, l                                       ; $4281: $5d
    nop                                           ; $4282: $00
    ld h, b                                       ; $4283: $60
    nop                                           ; $4284: $00
    ld h, d                                       ; $4285: $62
    nop                                           ; $4286: $00
    ld h, l                                       ; $4287: $65
    nop                                           ; $4288: $00
    ld h, a                                       ; $4289: $67
    nop                                           ; $428a: $00
    ld l, d                                       ; $428b: $6a
    nop                                           ; $428c: $00
    ld l, h                                       ; $428d: $6c
    nop                                           ; $428e: $00
    ld l, [hl]                                    ; $428f: $6e
    nop                                           ; $4290: $00
    ld [hl], c                                    ; $4291: $71
    nop                                           ; $4292: $00
    ld [hl], e                                    ; $4293: $73
    nop                                           ; $4294: $00
    ld [hl], l                                    ; $4295: $75
    nop                                           ; $4296: $00
    ld [hl], a                                    ; $4297: $77
    nop                                           ; $4298: $00
    ld a, c                                       ; $4299: $79
    nop                                           ; $429a: $00
    ld a, e                                       ; $429b: $7b
    nop                                           ; $429c: $00
    ld a, [hl]                                    ; $429d: $7e
    nop                                           ; $429e: $00
    add b                                         ; $429f: $80
    nop                                           ; $42a0: $00
    add d                                         ; $42a1: $82
    nop                                           ; $42a2: $00
    add h                                         ; $42a3: $84
    nop                                           ; $42a4: $00
    add [hl]                                      ; $42a5: $86
    nop                                           ; $42a6: $00
    adc b                                         ; $42a7: $88
    nop                                           ; $42a8: $00
    adc d                                         ; $42a9: $8a
    nop                                           ; $42aa: $00
    adc h                                         ; $42ab: $8c
    nop                                           ; $42ac: $00
    adc [hl]                                      ; $42ad: $8e
    nop                                           ; $42ae: $00
    sub b                                         ; $42af: $90
    nop                                           ; $42b0: $00
    sub d                                         ; $42b1: $92
    nop                                           ; $42b2: $00
    sub h                                         ; $42b3: $94
    nop                                           ; $42b4: $00
    sub l                                         ; $42b5: $95
    nop                                           ; $42b6: $00
    sbc b                                         ; $42b7: $98
    nop                                           ; $42b8: $00
    sbc c                                         ; $42b9: $99
    nop                                           ; $42ba: $00
    sbc e                                         ; $42bb: $9b
    nop                                           ; $42bc: $00
    sbc l                                         ; $42bd: $9d
    nop                                           ; $42be: $00
    sbc a                                         ; $42bf: $9f
    nop                                           ; $42c0: $00
    and c                                         ; $42c1: $a1
    nop                                           ; $42c2: $00
    and e                                         ; $42c3: $a3
    nop                                           ; $42c4: $00
    and l                                         ; $42c5: $a5
    nop                                           ; $42c6: $00
    and a                                         ; $42c7: $a7
    nop                                           ; $42c8: $00
    xor b                                         ; $42c9: $a8
    nop                                           ; $42ca: $00
    xor d                                         ; $42cb: $aa
    nop                                           ; $42cc: $00
    xor h                                         ; $42cd: $ac
    nop                                           ; $42ce: $00
    xor [hl]                                      ; $42cf: $ae
    nop                                           ; $42d0: $00
    xor a                                         ; $42d1: $af
    nop                                           ; $42d2: $00
    or c                                          ; $42d3: $b1
    nop                                           ; $42d4: $00
    or e                                          ; $42d5: $b3
    nop                                           ; $42d6: $00
    or h                                          ; $42d7: $b4
    nop                                           ; $42d8: $00
    or [hl]                                       ; $42d9: $b6
    nop                                           ; $42da: $00
    cp c                                          ; $42db: $b9
    nop                                           ; $42dc: $00
    cp d                                          ; $42dd: $ba
    nop                                           ; $42de: $00
    cp h                                          ; $42df: $bc
    nop                                           ; $42e0: $00
    cp l                                          ; $42e1: $bd
    nop                                           ; $42e2: $00
    ret nz                                        ; $42e3: $c0

    nop                                           ; $42e4: $00
    pop bc                                        ; $42e5: $c1
    nop                                           ; $42e6: $00
    jp $c500                                      ; $42e7: $c3 $00 $c5


    nop                                           ; $42ea: $00
    rst $00                                       ; $42eb: $c7
    nop                                           ; $42ec: $00
    ret z                                         ; $42ed: $c8

    nop                                           ; $42ee: $00
    jp z, $cc00                                   ; $42ef: $ca $00 $cc

    nop                                           ; $42f2: $00
    adc $00                                       ; $42f3: $ce $00
    rst $08                                       ; $42f5: $cf
    nop                                           ; $42f6: $00
    pop de                                        ; $42f7: $d1
    nop                                           ; $42f8: $00
    db $d3                                        ; $42f9: $d3
    nop                                           ; $42fa: $00
    push de                                       ; $42fb: $d5
    nop                                           ; $42fc: $00
    rst $10                                       ; $42fd: $d7
    nop                                           ; $42fe: $00
    ret c                                         ; $42ff: $d8

    nop                                           ; $4300: $00
    jp c, $dc00                                   ; $4301: $da $00 $dc

    nop                                           ; $4304: $00
    db $dd                                        ; $4305: $dd
    nop                                           ; $4306: $00
    rst $18                                       ; $4307: $df
    nop                                           ; $4308: $00
    ldh [rP1], a                                  ; $4309: $e0 $00
    ld [c], a                                     ; $430b: $e2
    nop                                           ; $430c: $00
    db $e4                                        ; $430d: $e4
    nop                                           ; $430e: $00
    push hl                                       ; $430f: $e5
    nop                                           ; $4310: $00
    rst $20                                       ; $4311: $e7
    nop                                           ; $4312: $00
    jp hl                                         ; $4313: $e9


    nop                                           ; $4314: $00
    db $eb                                        ; $4315: $eb
    nop                                           ; $4316: $00
    db $ec                                        ; $4317: $ec
    nop                                           ; $4318: $00
    xor $00                                       ; $4319: $ee $00
    ldh a, [rP1]                                  ; $431b: $f0 $00
    pop af                                        ; $431d: $f1
    nop                                           ; $431e: $00
    di                                            ; $431f: $f3
    nop                                           ; $4320: $00
    push af                                       ; $4321: $f5
    nop                                           ; $4322: $00
    or $00                                        ; $4323: $f6 $00
    ld hl, sp+$00                                 ; $4325: $f8 $00
    ld a, [$fb00]                                 ; $4327: $fa $00 $fb
    nop                                           ; $432a: $00
    db $fd                                        ; $432b: $fd
    nop                                           ; $432c: $00
    rst $38                                       ; $432d: $ff
    nop                                           ; $432e: $00
    nop                                           ; $432f: $00
    ld bc, $0102                                  ; $4330: $01 $02 $01
    inc b                                         ; $4333: $04
    ld bc, $0106                                  ; $4334: $01 $06 $01
    rlca                                          ; $4337: $07
    ld bc, $0109                                  ; $4338: $01 $09 $01
    ld a, [bc]                                    ; $433b: $0a
    ld bc, $010c                                  ; $433c: $01 $0c $01
    dec c                                         ; $433f: $0d
    ld bc, $010f                                  ; $4340: $01 $0f $01
    ld de, $1301                                  ; $4343: $11 $01 $13
    ld bc, $0114                                  ; $4346: $01 $14 $01
    ld d, $01                                     ; $4349: $16 $01
    jr jr_038_434e                                ; $434b: $18 $01

    ld a, [de]                                    ; $434d: $1a

jr_038_434e:
    ld bc, $011b                                  ; $434e: $01 $1b $01
    dec e                                         ; $4351: $1d
    ld bc, $011e                                  ; $4352: $01 $1e $01
    jr nz, jr_038_4358                            ; $4355: $20 $01

    ld [hl+], a                                   ; $4357: $22

jr_038_4358:
    ld bc, $0123                                  ; $4358: $01 $23 $01
    dec h                                         ; $435b: $25
    ld bc, $0127                                  ; $435c: $01 $27 $01
    add hl, hl                                    ; $435f: $29
    ld bc, $012a                                  ; $4360: $01 $2a $01
    inc l                                         ; $4363: $2c
    ld bc, $012d                                  ; $4364: $01 $2d $01
    cpl                                           ; $4367: $2f
    ld bc, $0131                                  ; $4368: $01 $31 $01
    inc sp                                        ; $436b: $33
    ld bc, HeaderTitle                            ; $436c: $01 $34 $01
    ld [hl], $01                                  ; $436f: $36 $01
    scf                                           ; $4371: $37
    ld bc, $0139                                  ; $4372: $01 $39 $01
    dec sp                                        ; $4375: $3b
    ld bc, $013c                                  ; $4376: $01 $3c $01
    ld a, $01                                     ; $4379: $3e $01
    ld b, b                                       ; $437b: $40
    ld bc, $0141                                  ; $437c: $01 $41 $01
    ld b, e                                       ; $437f: $43
    ld bc, HeaderNewLicenseeCode                  ; $4380: $01 $44 $01
    ld b, [hl]                                    ; $4383: $46
    ld bc, HeaderROMSize                          ; $4384: $01 $48 $01
    ld c, d                                       ; $4387: $4a
    ld bc, HeaderMaskROMVersion                   ; $4388: $01 $4c $01
    ld c, l                                       ; $438b: $4d
    ld bc, $014f                                  ; $438c: $01 $4f $01
    ld d, c                                       ; $438f: $51
    ld bc, $0152                                  ; $4390: $01 $52 $01
    ld d, h                                       ; $4393: $54
    ld bc, $0156                                  ; $4394: $01 $56 $01
    ld d, a                                       ; $4397: $57
    ld bc, $0159                                  ; $4398: $01 $59 $01
    ld e, d                                       ; $439b: $5a
    ld bc, $015c                                  ; $439c: $01 $5c $01
    ld e, [hl]                                    ; $439f: $5e
    ld bc, $0160                                  ; $43a0: $01 $60 $01
    ld h, c                                       ; $43a3: $61
    ld bc, $0163                                  ; $43a4: $01 $63 $01
    ld h, l                                       ; $43a7: $65
    ld bc, $0166                                  ; $43a8: $01 $66 $01
    ld l, b                                       ; $43ab: $68
    ld bc, $016a                                  ; $43ac: $01 $6a $01
    ld l, h                                       ; $43af: $6c
    ld bc, $016d                                  ; $43b0: $01 $6d $01
    ld l, a                                       ; $43b3: $6f
    ld bc, $0170                                  ; $43b4: $01 $70 $01
    ld [hl], d                                    ; $43b7: $72
    ld bc, $0174                                  ; $43b8: $01 $74 $01
    ld [hl], l                                    ; $43bb: $75
    ld bc, $0177                                  ; $43bc: $01 $77 $01
    ld a, c                                       ; $43bf: $79
    ld bc, $017b                                  ; $43c0: $01 $7b $01
    ld a, h                                       ; $43c3: $7c
    ld bc, $017e                                  ; $43c4: $01 $7e $01
    add b                                         ; $43c7: $80
    ld bc, $0181                                  ; $43c8: $01 $81 $01
    add e                                         ; $43cb: $83
    ld bc, $0185                                  ; $43cc: $01 $85 $01
    add [hl]                                      ; $43cf: $86
    ld bc, $0188                                  ; $43d0: $01 $88 $01
    adc d                                         ; $43d3: $8a
    ld bc, $018b                                  ; $43d4: $01 $8b $01
    adc l                                         ; $43d7: $8d
    ld bc, $018f                                  ; $43d8: $01 $8f $01
    sub b                                         ; $43db: $90
    ld bc, $0192                                  ; $43dc: $01 $92 $01
    sub h                                         ; $43df: $94
    ld bc, $0196                                  ; $43e0: $01 $96 $01
    sub a                                         ; $43e3: $97
    ld bc, $0199                                  ; $43e4: $01 $99 $01
    sbc d                                         ; $43e7: $9a
    ld bc, $019c                                  ; $43e8: $01 $9c $01
    sbc [hl]                                      ; $43eb: $9e
    ld bc, $01a0                                  ; $43ec: $01 $a0 $01
    and d                                         ; $43ef: $a2
    ld bc, $01a3                                  ; $43f0: $01 $a3 $01
    and l                                         ; $43f3: $a5
    ld bc, $01a6                                  ; $43f4: $01 $a6 $01
    xor b                                         ; $43f7: $a8
    ld bc, $01aa                                  ; $43f8: $01 $aa $01
    xor e                                         ; $43fb: $ab
    ld bc, $01ad                                  ; $43fc: $01 $ad $01
    xor a                                         ; $43ff: $af
    ld bc, $01b1                                  ; $4400: $01 $b1 $01
    or d                                          ; $4403: $b2
    ld bc, $01b4                                  ; $4404: $01 $b4 $01
    or [hl]                                       ; $4407: $b6
    ld bc, $01b8                                  ; $4408: $01 $b8 $01
    cp c                                          ; $440b: $b9
    ld bc, $01bb                                  ; $440c: $01 $bb $01
    cp l                                          ; $440f: $bd
    ld bc, $01be                                  ; $4410: $01 $be $01
    ret nz                                        ; $4413: $c0

    ld bc, $01c2                                  ; $4414: $01 $c2 $01
    call nz, $c501                                ; $4417: $c4 $01 $c5
    ld bc, $01c7                                  ; $441a: $01 $c7 $01
    ret                                           ; $441d: $c9


    ld bc, $01ca                                  ; $441e: $01 $ca $01
    call z, $ce01                                 ; $4421: $cc $01 $ce
    ld bc, $01cf                                  ; $4424: $01 $cf $01
    pop de                                        ; $4427: $d1
    ld bc, $01d3                                  ; $4428: $01 $d3 $01
    call nc, $d601                                ; $442b: $d4 $01 $d6
    ld bc, $01d8                                  ; $442e: $01 $d8 $01
    reti                                          ; $4431: $d9


    ld bc, $01db                                  ; $4432: $01 $db $01
    db $dd                                        ; $4435: $dd
    ld bc, $01df                                  ; $4436: $01 $df $01
    inc b                                         ; $4439: $04
    nop                                           ; $443a: $00
    stop                                          ; $443b: $10 $00
    jr z, jr_038_443f                             ; $443d: $28 $00

jr_038_443f:
    ld l, $00                                     ; $443f: $2e $00
    inc [hl]                                      ; $4441: $34
    nop                                           ; $4442: $00
    ld a, [hl-]                                   ; $4443: $3a
    nop                                           ; $4444: $00
    ld a, $00                                     ; $4445: $3e $00
    ld b, e                                       ; $4447: $43
    nop                                           ; $4448: $00
    ld c, b                                       ; $4449: $48
    nop                                           ; $444a: $00
    ld c, e                                       ; $444b: $4b
    nop                                           ; $444c: $00
    ld c, [hl]                                    ; $444d: $4e
    nop                                           ; $444e: $00
    ld d, d                                       ; $444f: $52
    nop                                           ; $4450: $00
    ld d, l                                       ; $4451: $55
    nop                                           ; $4452: $00
    ld e, b                                       ; $4453: $58
    nop                                           ; $4454: $00
    ld e, e                                       ; $4455: $5b
    nop                                           ; $4456: $00
    ld e, [hl]                                    ; $4457: $5e
    nop                                           ; $4458: $00
    ld h, c                                       ; $4459: $61
    nop                                           ; $445a: $00
    ld h, h                                       ; $445b: $64
    nop                                           ; $445c: $00
    ld h, [hl]                                    ; $445d: $66
    nop                                           ; $445e: $00
    ld l, c                                       ; $445f: $69
    nop                                           ; $4460: $00
    ld l, e                                       ; $4461: $6b
    nop                                           ; $4462: $00
    ld l, [hl]                                    ; $4463: $6e
    nop                                           ; $4464: $00
    ld [hl], c                                    ; $4465: $71
    nop                                           ; $4466: $00
    ld [hl], e                                    ; $4467: $73
    nop                                           ; $4468: $00
    ld [hl], l                                    ; $4469: $75
    nop                                           ; $446a: $00
    ld [hl], a                                    ; $446b: $77
    nop                                           ; $446c: $00
    ld a, d                                       ; $446d: $7a
    nop                                           ; $446e: $00
    ld a, h                                       ; $446f: $7c
    nop                                           ; $4470: $00
    ld a, [hl]                                    ; $4471: $7e
    nop                                           ; $4472: $00
    add b                                         ; $4473: $80
    nop                                           ; $4474: $00
    add e                                         ; $4475: $83
    nop                                           ; $4476: $00
    add l                                         ; $4477: $85
    nop                                           ; $4478: $00
    add a                                         ; $4479: $87
    nop                                           ; $447a: $00
    adc c                                         ; $447b: $89
    nop                                           ; $447c: $00
    adc e                                         ; $447d: $8b
    nop                                           ; $447e: $00
    adc [hl]                                      ; $447f: $8e
    nop                                           ; $4480: $00
    sub b                                         ; $4481: $90
    nop                                           ; $4482: $00
    sub d                                         ; $4483: $92
    nop                                           ; $4484: $00
    sub h                                         ; $4485: $94
    nop                                           ; $4486: $00
    sub [hl]                                      ; $4487: $96
    nop                                           ; $4488: $00
    sbc b                                         ; $4489: $98
    nop                                           ; $448a: $00
    sbc d                                         ; $448b: $9a
    nop                                           ; $448c: $00
    sbc h                                         ; $448d: $9c
    nop                                           ; $448e: $00
    sbc [hl]                                      ; $448f: $9e
    nop                                           ; $4490: $00
    and b                                         ; $4491: $a0
    nop                                           ; $4492: $00
    and d                                         ; $4493: $a2
    nop                                           ; $4494: $00
    and h                                         ; $4495: $a4
    nop                                           ; $4496: $00
    and [hl]                                      ; $4497: $a6
    nop                                           ; $4498: $00
    xor b                                         ; $4499: $a8
    nop                                           ; $449a: $00
    xor d                                         ; $449b: $aa
    nop                                           ; $449c: $00
    xor e                                         ; $449d: $ab
    nop                                           ; $449e: $00
    xor [hl]                                      ; $449f: $ae
    nop                                           ; $44a0: $00
    xor a                                         ; $44a1: $af
    nop                                           ; $44a2: $00
    or d                                          ; $44a3: $b2
    nop                                           ; $44a4: $00
    or e                                          ; $44a5: $b3
    nop                                           ; $44a6: $00
    or l                                          ; $44a7: $b5
    nop                                           ; $44a8: $00
    or a                                          ; $44a9: $b7
    nop                                           ; $44aa: $00
    cp c                                          ; $44ab: $b9
    nop                                           ; $44ac: $00
    cp e                                          ; $44ad: $bb
    nop                                           ; $44ae: $00
    cp l                                          ; $44af: $bd
    nop                                           ; $44b0: $00
    cp a                                          ; $44b1: $bf
    nop                                           ; $44b2: $00
    pop bc                                        ; $44b3: $c1
    nop                                           ; $44b4: $00
    jp $c500                                      ; $44b5: $c3 $00 $c5


    nop                                           ; $44b8: $00
    add $00                                       ; $44b9: $c6 $00
    ret z                                         ; $44bb: $c8

    nop                                           ; $44bc: $00
    jp z, $cc00                                   ; $44bd: $ca $00 $cc

    nop                                           ; $44c0: $00
    adc $00                                       ; $44c1: $ce $00
    ret nc                                        ; $44c3: $d0

    nop                                           ; $44c4: $00
    jp nc, $d400                                  ; $44c5: $d2 $00 $d4

    nop                                           ; $44c8: $00
    sub $00                                       ; $44c9: $d6 $00
    ret c                                         ; $44cb: $d8

    nop                                           ; $44cc: $00
    reti                                          ; $44cd: $d9


    nop                                           ; $44ce: $00
    db $db                                        ; $44cf: $db
    nop                                           ; $44d0: $00
    db $dd                                        ; $44d1: $dd
    nop                                           ; $44d2: $00
    rst $18                                       ; $44d3: $df
    nop                                           ; $44d4: $00
    ldh [rP1], a                                  ; $44d5: $e0 $00
    ld [c], a                                     ; $44d7: $e2
    nop                                           ; $44d8: $00
    db $e4                                        ; $44d9: $e4
    nop                                           ; $44da: $00
    and $00                                       ; $44db: $e6 $00
    add sp, $00                                   ; $44dd: $e8 $00
    ld [$ec00], a                                 ; $44df: $ea $00 $ec
    nop                                           ; $44e2: $00
    db $ed                                        ; $44e3: $ed
    nop                                           ; $44e4: $00
    rst $28                                       ; $44e5: $ef
    nop                                           ; $44e6: $00
    pop af                                        ; $44e7: $f1
    nop                                           ; $44e8: $00
    di                                            ; $44e9: $f3
    nop                                           ; $44ea: $00
    db $f4                                        ; $44eb: $f4
    nop                                           ; $44ec: $00
    or $00                                        ; $44ed: $f6 $00
    ld hl, sp+$00                                 ; $44ef: $f8 $00
    ld a, [$fc00]                                 ; $44f1: $fa $00 $fc
    nop                                           ; $44f4: $00
    cp $00                                        ; $44f5: $fe $00
    rst $38                                       ; $44f7: $ff
    nop                                           ; $44f8: $00
    ld bc, $0301                                  ; $44f9: $01 $01 $03
    ld bc, $0105                                  ; $44fc: $01 $05 $01
    rlca                                          ; $44ff: $07
    ld bc, $0108                                  ; $4500: $01 $08 $01
    ld a, [bc]                                    ; $4503: $0a
    ld bc, $010c                                  ; $4504: $01 $0c $01
    ld c, $01                                     ; $4507: $0e $01
    db $10                                        ; $4509: $10
    ld bc, $0112                                  ; $450a: $01 $12 $01
    inc de                                        ; $450d: $13
    ld bc, $0115                                  ; $450e: $01 $15 $01
    rla                                           ; $4511: $17
    ld bc, $0119                                  ; $4512: $01 $19 $01
    dec de                                        ; $4515: $1b
    ld bc, $011c                                  ; $4516: $01 $1c $01
    ld e, $01                                     ; $4519: $1e $01
    jr nz, jr_038_451e                            ; $451b: $20 $01

    ld [hl+], a                                   ; $451d: $22

jr_038_451e:
    ld bc, $0123                                  ; $451e: $01 $23 $01
    dec h                                         ; $4521: $25
    ld bc, $0127                                  ; $4522: $01 $27 $01
    add hl, hl                                    ; $4525: $29
    ld bc, $012b                                  ; $4526: $01 $2b $01
    dec l                                         ; $4529: $2d
    ld bc, $012e                                  ; $452a: $01 $2e $01
    jr nc, jr_038_4530                            ; $452d: $30 $01

    ld [hl-], a                                   ; $452f: $32

jr_038_4530:
    ld bc, HeaderTitle                            ; $4530: $01 $34 $01
    ld [hl], $01                                  ; $4533: $36 $01
    scf                                           ; $4535: $37
    ld bc, $0139                                  ; $4536: $01 $39 $01
    dec sp                                        ; $4539: $3b
    ld bc, $013d                                  ; $453a: $01 $3d $01
    ccf                                           ; $453d: $3f
    ld bc, $0141                                  ; $453e: $01 $41 $01
    ld b, d                                       ; $4541: $42
    ld bc, HeaderNewLicenseeCode                  ; $4542: $01 $44 $01
    ld b, [hl]                                    ; $4545: $46
    ld bc, HeaderROMSize                          ; $4546: $01 $48 $01
    ld c, d                                       ; $4549: $4a
    ld bc, HeaderMaskROMVersion                   ; $454a: $01 $4c $01
    ld c, l                                       ; $454d: $4d
    ld bc, $014f                                  ; $454e: $01 $4f $01
    ld d, c                                       ; $4551: $51
    ld bc, $0153                                  ; $4552: $01 $53 $01
    ld d, h                                       ; $4555: $54
    ld bc, $0156                                  ; $4556: $01 $56 $01
    ld e, b                                       ; $4559: $58
    ld bc, $015a                                  ; $455a: $01 $5a $01
    ld e, h                                       ; $455d: $5c
    ld bc, $015e                                  ; $455e: $01 $5e $01
    ld e, a                                       ; $4561: $5f
    ld bc, $0161                                  ; $4562: $01 $61 $01
    ld h, e                                       ; $4565: $63
    ld bc, $0165                                  ; $4566: $01 $65 $01
    ld h, [hl]                                    ; $4569: $66
    ld bc, $0168                                  ; $456a: $01 $68 $01
    ld l, d                                       ; $456d: $6a
    ld bc, $016c                                  ; $456e: $01 $6c $01
    ld l, [hl]                                    ; $4571: $6e
    ld bc, $0170                                  ; $4572: $01 $70 $01
    ld [hl], c                                    ; $4575: $71
    ld bc, $0173                                  ; $4576: $01 $73 $01
    ld [hl], l                                    ; $4579: $75
    ld bc, $0177                                  ; $457a: $01 $77 $01
    ld a, c                                       ; $457d: $79
    ld bc, $017b                                  ; $457e: $01 $7b $01
    ld a, l                                       ; $4581: $7d
    ld bc, $017e                                  ; $4582: $01 $7e $01
    add b                                         ; $4585: $80
    ld bc, $0182                                  ; $4586: $01 $82 $01
    add h                                         ; $4589: $84
    ld bc, $0186                                  ; $458a: $01 $86 $01
    add a                                         ; $458d: $87
    ld bc, $0189                                  ; $458e: $01 $89 $01
    adc e                                         ; $4591: $8b
    ld bc, $018d                                  ; $4592: $01 $8d $01
    adc a                                         ; $4595: $8f
    ld bc, $0190                                  ; $4596: $01 $90 $01
    sub e                                         ; $4599: $93
    ld bc, $0194                                  ; $459a: $01 $94 $01
    sub [hl]                                      ; $459d: $96
    ld bc, $0198                                  ; $459e: $01 $98 $01
    sbc d                                         ; $45a1: $9a
    ld bc, $019b                                  ; $45a2: $01 $9b $01
    sbc [hl]                                      ; $45a5: $9e
    ld bc, $019f                                  ; $45a6: $01 $9f $01
    and c                                         ; $45a9: $a1
    ld bc, $01a3                                  ; $45aa: $01 $a3 $01
    and l                                         ; $45ad: $a5
    ld bc, $01a7                                  ; $45ae: $01 $a7 $01
    xor c                                         ; $45b1: $a9
    ld bc, $01aa                                  ; $45b2: $01 $aa $01
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
    ld bc, $01c1                                  ; $45ca: $01 $c1 $01
    jp $c501                                      ; $45cd: $c3 $01 $c5


    ld bc, $01c6                                  ; $45d0: $01 $c6 $01
    ret z                                         ; $45d3: $c8

    ld bc, $01ca                                  ; $45d4: $01 $ca $01
    call z, $ce01                                 ; $45d7: $cc $01 $ce
    ld bc, $01cf                                  ; $45da: $01 $cf $01
    pop de                                        ; $45dd: $d1
    ld bc, $01d3                                  ; $45de: $01 $d3 $01
    push de                                       ; $45e1: $d5
    ld bc, $01d7                                  ; $45e2: $01 $d7 $01
    reti                                          ; $45e5: $d9


    ld bc, $01db                                  ; $45e6: $01 $db $01
    db $dd                                        ; $45e9: $dd
    ld bc, $01de                                  ; $45ea: $01 $de $01
    inc b                                         ; $45ed: $04
    nop                                           ; $45ee: $00
    rla                                           ; $45ef: $17
    nop                                           ; $45f0: $00
    jr nz, jr_038_45f3                            ; $45f1: $20 $00

jr_038_45f3:
    daa                                           ; $45f3: $27
    nop                                           ; $45f4: $00
    dec l                                         ; $45f5: $2d
    nop                                           ; $45f6: $00
    inc [hl]                                      ; $45f7: $34
    nop                                           ; $45f8: $00
    ld a, [hl-]                                   ; $45f9: $3a
    nop                                           ; $45fa: $00
    ccf                                           ; $45fb: $3f
    nop                                           ; $45fc: $00
    ld b, e                                       ; $45fd: $43
    nop                                           ; $45fe: $00
    ld b, a                                       ; $45ff: $47
    nop                                           ; $4600: $00
    ld c, e                                       ; $4601: $4b
    nop                                           ; $4602: $00
    ld c, a                                       ; $4603: $4f
    nop                                           ; $4604: $00
    ld d, e                                       ; $4605: $53
    nop                                           ; $4606: $00
    ld d, [hl]                                    ; $4607: $56
    nop                                           ; $4608: $00
    ld e, d                                       ; $4609: $5a
    nop                                           ; $460a: $00
    ld e, h                                       ; $460b: $5c
    nop                                           ; $460c: $00
    ld h, c                                       ; $460d: $61
    nop                                           ; $460e: $00
    ld h, h                                       ; $460f: $64
    nop                                           ; $4610: $00
    ld h, [hl]                                    ; $4611: $66
    nop                                           ; $4612: $00
    ld l, c                                       ; $4613: $69
    nop                                           ; $4614: $00
    ld l, l                                       ; $4615: $6d
    nop                                           ; $4616: $00
    ld l, a                                       ; $4617: $6f
    nop                                           ; $4618: $00
    ld [hl], d                                    ; $4619: $72
    nop                                           ; $461a: $00
    ld [hl], l                                    ; $461b: $75
    nop                                           ; $461c: $00
    ld [hl], a                                    ; $461d: $77
    nop                                           ; $461e: $00
    ld a, e                                       ; $461f: $7b
    nop                                           ; $4620: $00
    ld a, l                                       ; $4621: $7d
    nop                                           ; $4622: $00
    add b                                         ; $4623: $80
    nop                                           ; $4624: $00
    add d                                         ; $4625: $82
    nop                                           ; $4626: $00
    add l                                         ; $4627: $85
    nop                                           ; $4628: $00
    adc b                                         ; $4629: $88
    nop                                           ; $462a: $00
    adc c                                         ; $462b: $89
    nop                                           ; $462c: $00
    adc h                                         ; $462d: $8c
    nop                                           ; $462e: $00
    adc a                                         ; $462f: $8f
    nop                                           ; $4630: $00
    sub c                                         ; $4631: $91
    nop                                           ; $4632: $00
    sub h                                         ; $4633: $94
    nop                                           ; $4634: $00
    sub l                                         ; $4635: $95
    nop                                           ; $4636: $00
    sbc b                                         ; $4637: $98
    nop                                           ; $4638: $00
    sbc e                                         ; $4639: $9b
    nop                                           ; $463a: $00
    sbc h                                         ; $463b: $9c
    nop                                           ; $463c: $00
    sbc a                                         ; $463d: $9f
    nop                                           ; $463e: $00
    and c                                         ; $463f: $a1
    nop                                           ; $4640: $00
    and e                                         ; $4641: $a3
    nop                                           ; $4642: $00
    and l                                         ; $4643: $a5
    nop                                           ; $4644: $00
    xor b                                         ; $4645: $a8
    nop                                           ; $4646: $00
    xor d                                         ; $4647: $aa
    nop                                           ; $4648: $00
    xor l                                         ; $4649: $ad
    nop                                           ; $464a: $00
    xor a                                         ; $464b: $af
    nop                                           ; $464c: $00
    or c                                          ; $464d: $b1
    nop                                           ; $464e: $00
    or e                                          ; $464f: $b3
    nop                                           ; $4650: $00
    or l                                          ; $4651: $b5
    nop                                           ; $4652: $00
    or a                                          ; $4653: $b7
    nop                                           ; $4654: $00
    cp d                                          ; $4655: $ba
    nop                                           ; $4656: $00
    cp e                                          ; $4657: $bb
    nop                                           ; $4658: $00
    cp l                                          ; $4659: $bd
    nop                                           ; $465a: $00
    ret nz                                        ; $465b: $c0

    nop                                           ; $465c: $00
    pop bc                                        ; $465d: $c1
    nop                                           ; $465e: $00
    jp $c600                                      ; $465f: $c3 $00 $c6


    nop                                           ; $4662: $00
    ret z                                         ; $4663: $c8

    nop                                           ; $4664: $00
    ret                                           ; $4665: $c9


    nop                                           ; $4666: $00
    rlc b                                         ; $4667: $cb $00
    adc $00                                       ; $4669: $ce $00
    ret nc                                        ; $466b: $d0

    nop                                           ; $466c: $00
    db $d3                                        ; $466d: $d3
    nop                                           ; $466e: $00
    call nc, $d700                                ; $466f: $d4 $00 $d7
    nop                                           ; $4672: $00
    ret c                                         ; $4673: $d8

    nop                                           ; $4674: $00
    jp c, $db00                                   ; $4675: $da $00 $db

    nop                                           ; $4678: $00

    db $de, $00, $e0, $00

    ld [c], a                                     ; $467d: $e2
    nop                                           ; $467e: $00
    db $e4                                        ; $467f: $e4
    nop                                           ; $4680: $00

    db $e6, $00, $e8, $00

    ld [$eb00], a                                 ; $4685: $ea $00 $eb
    nop                                           ; $4688: $00
    db $ed                                        ; $4689: $ed
    nop                                           ; $468a: $00
    ldh a, [rP1]                                  ; $468b: $f0 $00
    ld a, [c]                                     ; $468d: $f2
    nop                                           ; $468e: $00
    di                                            ; $468f: $f3
    nop                                           ; $4690: $00
    push af                                       ; $4691: $f5
    nop                                           ; $4692: $00
    rst $30                                       ; $4693: $f7
    nop                                           ; $4694: $00
    ld sp, hl                                     ; $4695: $f9
    nop                                           ; $4696: $00
    ei                                            ; $4697: $fb
    nop                                           ; $4698: $00
    db $fc                                        ; $4699: $fc
    nop                                           ; $469a: $00
    cp $00                                        ; $469b: $fe $00
    nop                                           ; $469d: $00
    ld bc, $0102                                  ; $469e: $01 $02 $01
    inc b                                         ; $46a1: $04
    ld bc, $0106                                  ; $46a2: $01 $06 $01
    ld [$0a01], sp                                ; $46a5: $08 $01 $0a
    ld bc, $010c                                  ; $46a8: $01 $0c $01
    ld c, $01                                     ; $46ab: $0e $01
    rrca                                          ; $46ad: $0f
    ld bc, $0111                                  ; $46ae: $01 $11 $01
    inc de                                        ; $46b1: $13
    ld bc, $0115                                  ; $46b2: $01 $15 $01
    ld d, $01                                     ; $46b5: $16 $01
    add hl, de                                    ; $46b7: $19
    ld bc, $011a                                  ; $46b8: $01 $1a $01
    dec e                                         ; $46bb: $1d
    ld bc, $011e                                  ; $46bc: $01 $1e $01
    jr nz, jr_038_46c2                            ; $46bf: $20 $01

    ld [hl+], a                                   ; $46c1: $22

jr_038_46c2:
    ld bc, $0124                                  ; $46c2: $01 $24 $01
    dec h                                         ; $46c5: $25
    ld bc, $0127                                  ; $46c6: $01 $27 $01
    add hl, hl                                    ; $46c9: $29
    ld bc, $012b                                  ; $46ca: $01 $2b $01
    dec l                                         ; $46cd: $2d
    ld bc, $012f                                  ; $46ce: $01 $2f $01
    jr nc, jr_038_46d4                            ; $46d1: $30 $01

    ld [hl-], a                                   ; $46d3: $32

jr_038_46d4:
    ld bc, HeaderTitle                            ; $46d4: $01 $34 $01
    ld [hl], $01                                  ; $46d7: $36 $01
    scf                                           ; $46d9: $37
    ld bc, $0139                                  ; $46da: $01 $39 $01
    dec sp                                        ; $46dd: $3b
    ld bc, $013d                                  ; $46de: $01 $3d $01
    ccf                                           ; $46e1: $3f
    ld bc, $0140                                  ; $46e2: $01 $40 $01
    ld b, d                                       ; $46e5: $42
    ld bc, HeaderNewLicenseeCode                  ; $46e6: $01 $44 $01
    ld b, [hl]                                    ; $46e9: $46
    ld bc, HeaderCartridgeType                    ; $46ea: $01 $47 $01
    ld c, c                                       ; $46ed: $49
    ld bc, HeaderOldLicenseeCode                  ; $46ee: $01 $4b $01
    ld c, l                                       ; $46f1: $4d
    ld bc, $014f                                  ; $46f2: $01 $4f $01
    ld d, b                                       ; $46f5: $50
    ld bc, $0153                                  ; $46f6: $01 $53 $01
    ld d, h                                       ; $46f9: $54
    ld bc, $0156                                  ; $46fa: $01 $56 $01
    ld e, b                                       ; $46fd: $58
    ld bc, $015a                                  ; $46fe: $01 $5a $01
    ld e, e                                       ; $4701: $5b
    ld bc, $015d                                  ; $4702: $01 $5d $01
    ld e, a                                       ; $4705: $5f
    ld bc, $0161                                  ; $4706: $01 $61 $01
    ld h, d                                       ; $4709: $62
    ld bc, $0164                                  ; $470a: $01 $64 $01
    ld h, l                                       ; $470d: $65
    ld bc, $0168                                  ; $470e: $01 $68 $01
    ld l, d                                       ; $4711: $6a
    ld bc, $016b                                  ; $4712: $01 $6b $01
    ld l, l                                       ; $4715: $6d
    ld bc, $016e                                  ; $4716: $01 $6e $01
    ld [hl], b                                    ; $4719: $70
    ld bc, $0172                                  ; $471a: $01 $72 $01
    ld [hl], h                                    ; $471d: $74
    ld bc, $0176                                  ; $471e: $01 $76 $01
    ld [hl], a                                    ; $4721: $77
    ld bc, $0179                                  ; $4722: $01 $79 $01
    ld a, e                                       ; $4725: $7b
    ld bc, $017d                                  ; $4726: $01 $7d $01
    ld a, a                                       ; $4729: $7f
    ld bc, $0180                                  ; $472a: $01 $80 $01
    add d                                         ; $472d: $82
    ld bc, $0184                                  ; $472e: $01 $84 $01
    add [hl]                                      ; $4731: $86
    ld bc, $0187                                  ; $4732: $01 $87 $01
    adc c                                         ; $4735: $89
    ld bc, $018b                                  ; $4736: $01 $8b $01
    adc l                                         ; $4739: $8d
    ld bc, $018f                                  ; $473a: $01 $8f $01
    sub b                                         ; $473d: $90
    ld bc, $0192                                  ; $473e: $01 $92 $01
    sub h                                         ; $4741: $94
    ld bc, $0196                                  ; $4742: $01 $96 $01
    sub a                                         ; $4745: $97
    ld bc, $0199                                  ; $4746: $01 $99 $01
    sbc e                                         ; $4749: $9b
    ld bc, $019d                                  ; $474a: $01 $9d $01
    sbc [hl]                                      ; $474d: $9e
    ld bc, $01a0                                  ; $474e: $01 $a0 $01
    and d                                         ; $4751: $a2
    ld bc, $01a4                                  ; $4752: $01 $a4 $01
    and l                                         ; $4755: $a5
    ld bc, $01a7                                  ; $4756: $01 $a7 $01
    xor c                                         ; $4759: $a9
    ld bc, $01ab                                  ; $475a: $01 $ab $01
    xor h                                         ; $475d: $ac
    ld bc, $01ae                                  ; $475e: $01 $ae $01
    or b                                          ; $4761: $b0
    ld bc, $01b1                                  ; $4762: $01 $b1 $01
    or e                                          ; $4765: $b3
    ld bc, $01b5                                  ; $4766: $01 $b5 $01
    or a                                          ; $4769: $b7
    ld bc, $01b9                                  ; $476a: $01 $b9 $01
    cp d                                          ; $476d: $ba
    ld bc, $01bd                                  ; $476e: $01 $bd $01
    cp [hl]                                       ; $4771: $be
    ld bc, $01c0                                  ; $4772: $01 $c0 $01
    jp nz, $c401                                  ; $4775: $c2 $01 $c4

    ld bc, $01c5                                  ; $4778: $01 $c5 $01
    rst $00                                       ; $477b: $c7
    ld bc, $01c8                                  ; $477c: $01 $c8 $01
    jp z, $cc01                                   ; $477f: $ca $01 $cc

    ld bc, $01ce                                  ; $4782: $01 $ce $01
    ret nc                                        ; $4785: $d0

    ld bc, $01d1                                  ; $4786: $01 $d1 $01
    db $d3                                        ; $4789: $d3
    ld bc, $01d5                                  ; $478a: $01 $d5 $01
    rst $10                                       ; $478d: $d7
    ld bc, $01d8                                  ; $478e: $01 $d8 $01
    jp c, $dc01                                   ; $4791: $da $01 $dc

    ld bc, $01de                                  ; $4794: $01 $de $01
    inc b                                         ; $4797: $04
    nop                                           ; $4798: $00
    inc e                                         ; $4799: $1c
    nop                                           ; $479a: $00
    inc h                                         ; $479b: $24
    nop                                           ; $479c: $00
    dec hl                                        ; $479d: $2b
    nop                                           ; $479e: $00
    inc sp                                        ; $479f: $33
    nop                                           ; $47a0: $00
    add hl, sp                                    ; $47a1: $39
    nop                                           ; $47a2: $00
    ld a, $00                                     ; $47a3: $3e $00
    ld b, d                                       ; $47a5: $42
    nop                                           ; $47a6: $00
    ld b, a                                       ; $47a7: $47
    nop                                           ; $47a8: $00
    ld c, e                                       ; $47a9: $4b
    nop                                           ; $47aa: $00
    ld c, a                                       ; $47ab: $4f
    nop                                           ; $47ac: $00
    ld d, e                                       ; $47ad: $53
    nop                                           ; $47ae: $00
    ld d, [hl]                                    ; $47af: $56
    nop                                           ; $47b0: $00
    ld e, d                                       ; $47b1: $5a
    nop                                           ; $47b2: $00
    ld e, [hl]                                    ; $47b3: $5e
    nop                                           ; $47b4: $00
    ld h, c                                       ; $47b5: $61
    nop                                           ; $47b6: $00
    ld h, h                                       ; $47b7: $64
    nop                                           ; $47b8: $00
    ld h, a                                       ; $47b9: $67
    nop                                           ; $47ba: $00
    ld l, d                                       ; $47bb: $6a
    nop                                           ; $47bc: $00
    ld l, l                                       ; $47bd: $6d
    nop                                           ; $47be: $00
    ld [hl], b                                    ; $47bf: $70
    nop                                           ; $47c0: $00
    ld [hl], e                                    ; $47c1: $73
    nop                                           ; $47c2: $00
    halt                                          ; $47c3: $76
    nop                                           ; $47c4: $00
    ld a, c                                       ; $47c5: $79
    nop                                           ; $47c6: $00
    ld a, e                                       ; $47c7: $7b
    nop                                           ; $47c8: $00
    ld a, a                                       ; $47c9: $7f
    nop                                           ; $47ca: $00
    add c                                         ; $47cb: $81
    nop                                           ; $47cc: $00
    add h                                         ; $47cd: $84
    nop                                           ; $47ce: $00
    add [hl]                                      ; $47cf: $86
    nop                                           ; $47d0: $00
    adc c                                         ; $47d1: $89
    nop                                           ; $47d2: $00
    adc h                                         ; $47d3: $8c
    nop                                           ; $47d4: $00
    adc [hl]                                      ; $47d5: $8e
    nop                                           ; $47d6: $00
    sub b                                         ; $47d7: $90
    nop                                           ; $47d8: $00
    sub e                                         ; $47d9: $93
    nop                                           ; $47da: $00
    sub l                                         ; $47db: $95
    nop                                           ; $47dc: $00
    sbc b                                         ; $47dd: $98
    nop                                           ; $47de: $00
    sbc d                                         ; $47df: $9a
    nop                                           ; $47e0: $00
    sbc l                                         ; $47e1: $9d
    nop                                           ; $47e2: $00
    sbc [hl]                                      ; $47e3: $9e
    nop                                           ; $47e4: $00
    and c                                         ; $47e5: $a1
    nop                                           ; $47e6: $00
    and h                                         ; $47e7: $a4
    nop                                           ; $47e8: $00
    and [hl]                                      ; $47e9: $a6
    nop                                           ; $47ea: $00
    xor c                                         ; $47eb: $a9
    nop                                           ; $47ec: $00
    xor e                                         ; $47ed: $ab
    nop                                           ; $47ee: $00
    xor l                                         ; $47ef: $ad
    nop                                           ; $47f0: $00
    xor a                                         ; $47f1: $af
    nop                                           ; $47f2: $00
    or d                                          ; $47f3: $b2
    nop                                           ; $47f4: $00
    or h                                          ; $47f5: $b4
    nop                                           ; $47f6: $00
    or [hl]                                       ; $47f7: $b6
    nop                                           ; $47f8: $00
    cp b                                          ; $47f9: $b8
    nop                                           ; $47fa: $00
    cp d                                          ; $47fb: $ba
    nop                                           ; $47fc: $00
    cp h                                          ; $47fd: $bc
    nop                                           ; $47fe: $00
    cp a                                          ; $47ff: $bf
    nop                                           ; $4800: $00
    pop bc                                        ; $4801: $c1
    nop                                           ; $4802: $00
    jp $c500                                      ; $4803: $c3 $00 $c5


    nop                                           ; $4806: $00
    ret z                                         ; $4807: $c8

    nop                                           ; $4808: $00
    jp z, $cc00                                   ; $4809: $ca $00 $cc

    nop                                           ; $480c: $00
    adc $00                                       ; $480d: $ce $00
    ret nc                                        ; $480f: $d0

    nop                                           ; $4810: $00
    jp nc, $d500                                  ; $4811: $d2 $00 $d5

    nop                                           ; $4814: $00
    sub $00                                       ; $4815: $d6 $00
    ret c                                         ; $4817: $d8

    nop                                           ; $4818: $00
    db $db                                        ; $4819: $db
    nop                                           ; $481a: $00
    db $dd                                        ; $481b: $dd
    nop                                           ; $481c: $00
    rst $18                                       ; $481d: $df
    nop                                           ; $481e: $00
    pop hl                                        ; $481f: $e1
    nop                                           ; $4820: $00
    db $e3                                        ; $4821: $e3
    nop                                           ; $4822: $00
    push hl                                       ; $4823: $e5
    nop                                           ; $4824: $00
    rst $20                                       ; $4825: $e7
    nop                                           ; $4826: $00
    jp hl                                         ; $4827: $e9


    nop                                           ; $4828: $00
    db $eb                                        ; $4829: $eb
    nop                                           ; $482a: $00
    db $ed                                        ; $482b: $ed
    nop                                           ; $482c: $00
    rst $28                                       ; $482d: $ef
    nop                                           ; $482e: $00
    ld a, [c]                                     ; $482f: $f2
    nop                                           ; $4830: $00
    di                                            ; $4831: $f3
    nop                                           ; $4832: $00
    push af                                       ; $4833: $f5
    nop                                           ; $4834: $00
    rst $30                                       ; $4835: $f7
    nop                                           ; $4836: $00
    ld a, [$fc00]                                 ; $4837: $fa $00 $fc
    nop                                           ; $483a: $00
    cp $00                                        ; $483b: $fe $00
    nop                                           ; $483d: $00
    ld bc, $0102                                  ; $483e: $01 $02 $01
    inc b                                         ; $4841: $04
    ld bc, $0106                                  ; $4842: $01 $06 $01
    ld [$0901], sp                                ; $4845: $08 $01 $09
    ld bc, $010c                                  ; $4848: $01 $0c $01
    ld c, $01                                     ; $484b: $0e $01
    db $10                                        ; $484d: $10
    ld bc, $0111                                  ; $484e: $01 $11 $01
    inc d                                         ; $4851: $14
    ld bc, $0116                                  ; $4852: $01 $16 $01
    rla                                           ; $4855: $17
    ld bc, $011a                                  ; $4856: $01 $1a $01
    inc e                                         ; $4859: $1c
    ld bc, $011d                                  ; $485a: $01 $1d $01
    rra                                           ; $485d: $1f
    ld bc, $0121                                  ; $485e: $01 $21 $01
    inc hl                                        ; $4861: $23
    ld bc, $0126                                  ; $4862: $01 $26 $01
    jr z, jr_038_4868                             ; $4865: $28 $01

    add hl, hl                                    ; $4867: $29

jr_038_4868:
    ld bc, $012b                                  ; $4868: $01 $2b $01
    dec l                                         ; $486b: $2d
    ld bc, $012f                                  ; $486c: $01 $2f $01
    ld sp, $3301                                  ; $486f: $31 $01 $33
    ld bc, $0135                                  ; $4872: $01 $35 $01
    scf                                           ; $4875: $37
    ld bc, $0139                                  ; $4876: $01 $39 $01
    dec sp                                        ; $4879: $3b
    ld bc, $013d                                  ; $487a: $01 $3d $01
    ccf                                           ; $487d: $3f
    ld bc, $0141                                  ; $487e: $01 $41 $01
    ld b, e                                       ; $4881: $43
    ld bc, $0145                                  ; $4882: $01 $45 $01
    ld b, a                                       ; $4885: $47
    ld bc, HeaderRAMSize                          ; $4886: $01 $49 $01
    ld c, e                                       ; $4889: $4b
    ld bc, HeaderComplementCheck                  ; $488a: $01 $4d $01
    ld c, a                                       ; $488d: $4f
    ld bc, $0151                                  ; $488e: $01 $51 $01
    ld d, e                                       ; $4891: $53
    ld bc, $0155                                  ; $4892: $01 $55 $01
    ld d, a                                       ; $4895: $57
    ld bc, $0159                                  ; $4896: $01 $59 $01
    ld e, d                                       ; $4899: $5a
    ld bc, $015d                                  ; $489a: $01 $5d $01
    ld e, [hl]                                    ; $489d: $5e
    ld bc, $0160                                  ; $489e: $01 $60 $01
    ld h, d                                       ; $48a1: $62
    ld bc, $0164                                  ; $48a2: $01 $64 $01
    ld h, [hl]                                    ; $48a5: $66
    ld bc, $0169                                  ; $48a6: $01 $69 $01
    ld l, d                                       ; $48a9: $6a
    ld bc, $016c                                  ; $48aa: $01 $6c $01
    ld l, a                                       ; $48ad: $6f
    ld bc, $0170                                  ; $48ae: $01 $70 $01
    ld [hl], d                                    ; $48b1: $72
    ld bc, $0174                                  ; $48b2: $01 $74 $01
    halt                                          ; $48b5: $76
    ld bc, $0178                                  ; $48b6: $01 $78 $01
    ld a, d                                       ; $48b9: $7a
    ld bc, $017c                                  ; $48ba: $01 $7c $01
    ld a, [hl]                                    ; $48bd: $7e
    ld bc, $0180                                  ; $48be: $01 $80 $01
    add d                                         ; $48c1: $82
    ld bc, $0184                                  ; $48c2: $01 $84 $01
    add [hl]                                      ; $48c5: $86
    ld bc, $0188                                  ; $48c6: $01 $88 $01
    adc c                                         ; $48c9: $89
    ld bc, $018b                                  ; $48ca: $01 $8b $01
    adc l                                         ; $48cd: $8d
    ld bc, $018f                                  ; $48ce: $01 $8f $01
    sub c                                         ; $48d1: $91
    ld bc, $0194                                  ; $48d2: $01 $94 $01
    sub [hl]                                      ; $48d5: $96
    ld bc, $0197                                  ; $48d6: $01 $97 $01
    sbc d                                         ; $48d9: $9a
    ld bc, $019b                                  ; $48da: $01 $9b $01
    sbc l                                         ; $48dd: $9d
    ld bc, $019f                                  ; $48de: $01 $9f $01
    and c                                         ; $48e1: $a1
    ld bc, $01a3                                  ; $48e2: $01 $a3 $01
    and l                                         ; $48e5: $a5
    ld bc, $01a7                                  ; $48e6: $01 $a7 $01
    xor c                                         ; $48e9: $a9
    ld bc, $01ab                                  ; $48ea: $01 $ab $01
    xor l                                         ; $48ed: $ad
    ld bc, $01af                                  ; $48ee: $01 $af $01
    or c                                          ; $48f1: $b1
    ld bc, $01b3                                  ; $48f2: $01 $b3 $01
    or l                                          ; $48f5: $b5
    ld bc, $01b7                                  ; $48f6: $01 $b7 $01
    cp c                                          ; $48f9: $b9
    ld bc, $01ba                                  ; $48fa: $01 $ba $01
    cp l                                          ; $48fd: $bd
    ld bc, $01bf                                  ; $48fe: $01 $bf $01
    ret nz                                        ; $4901: $c0

    ld bc, $01c3                                  ; $4902: $01 $c3 $01
    call nz, $c701                                ; $4905: $c4 $01 $c7
    ld bc, $01c9                                  ; $4908: $01 $c9 $01
    jp z, $cc01                                   ; $490b: $ca $01 $cc

    ld bc, $01ce                                  ; $490e: $01 $ce $01
    ret nc                                        ; $4911: $d0

    ld bc, $01d2                                  ; $4912: $01 $d2 $01
    call nc, $d601                                ; $4915: $d4 $01 $d6
    ld bc, $01d8                                  ; $4918: $01 $d8 $01
    jp c, $dc01                                   ; $491b: $da $01 $dc

    ld bc, $01de                                  ; $491e: $01 $de $01
    inc b                                         ; $4921: $04
    nop                                           ; $4922: $00
    jr nz, jr_038_4925                            ; $4923: $20 $00

jr_038_4925:
    add hl, hl                                    ; $4925: $29
    nop                                           ; $4926: $00
    jr nc, jr_038_4929                            ; $4927: $30 $00

jr_038_4929:
    ld [hl], $00                                  ; $4929: $36 $00
    dec a                                         ; $492b: $3d
    nop                                           ; $492c: $00
    ld b, e                                       ; $492d: $43
    nop                                           ; $492e: $00
    ld c, b                                       ; $492f: $48
    nop                                           ; $4930: $00
    ld c, h                                       ; $4931: $4c
    nop                                           ; $4932: $00
    ld d, b                                       ; $4933: $50
    nop                                           ; $4934: $00
    ld d, h                                       ; $4935: $54
    nop                                           ; $4936: $00
    ld e, b                                       ; $4937: $58
    nop                                           ; $4938: $00
    ld e, h                                       ; $4939: $5c
    nop                                           ; $493a: $00
    ld e, a                                       ; $493b: $5f
    nop                                           ; $493c: $00
    ld h, e                                       ; $493d: $63
    nop                                           ; $493e: $00
    ld h, [hl]                                    ; $493f: $66
    nop                                           ; $4940: $00
    ld l, c                                       ; $4941: $69
    nop                                           ; $4942: $00
    ld l, h                                       ; $4943: $6c
    nop                                           ; $4944: $00
    ld [hl], b                                    ; $4945: $70
    nop                                           ; $4946: $00
    ld [hl], e                                    ; $4947: $73
    nop                                           ; $4948: $00
    ld [hl], l                                    ; $4949: $75
    nop                                           ; $494a: $00
    ld a, b                                       ; $494b: $78
    nop                                           ; $494c: $00
    ld a, h                                       ; $494d: $7c
    nop                                           ; $494e: $00
    ld a, [hl]                                    ; $494f: $7e
    nop                                           ; $4950: $00
    add c                                         ; $4951: $81
    nop                                           ; $4952: $00
    add h                                         ; $4953: $84
    nop                                           ; $4954: $00
    add a                                         ; $4955: $87
    nop                                           ; $4956: $00
    adc c                                         ; $4957: $89
    nop                                           ; $4958: $00
    adc h                                         ; $4959: $8c
    nop                                           ; $495a: $00
    adc [hl]                                      ; $495b: $8e
    nop                                           ; $495c: $00
    sub c                                         ; $495d: $91
    nop                                           ; $495e: $00
    sub h                                         ; $495f: $94
    nop                                           ; $4960: $00
    sub [hl]                                      ; $4961: $96
    nop                                           ; $4962: $00
    sbc c                                         ; $4963: $99
    nop                                           ; $4964: $00
    sbc e                                         ; $4965: $9b
    nop                                           ; $4966: $00
    sbc [hl]                                      ; $4967: $9e
    nop                                           ; $4968: $00
    and b                                         ; $4969: $a0
    nop                                           ; $496a: $00
    and e                                         ; $496b: $a3
    nop                                           ; $496c: $00
    and l                                         ; $496d: $a5
    nop                                           ; $496e: $00
    xor b                                         ; $496f: $a8
    nop                                           ; $4970: $00
    xor e                                         ; $4971: $ab
    nop                                           ; $4972: $00
    xor l                                         ; $4973: $ad
    nop                                           ; $4974: $00
    xor a                                         ; $4975: $af
    nop                                           ; $4976: $00
    or c                                          ; $4977: $b1
    nop                                           ; $4978: $00
    or h                                          ; $4979: $b4
    nop                                           ; $497a: $00
    or a                                          ; $497b: $b7
    nop                                           ; $497c: $00
    cp c                                          ; $497d: $b9
    nop                                           ; $497e: $00
    cp e                                          ; $497f: $bb
    nop                                           ; $4980: $00
    cp [hl]                                       ; $4981: $be
    nop                                           ; $4982: $00
    ret nz                                        ; $4983: $c0

    nop                                           ; $4984: $00
    jp nz, $c400                                  ; $4985: $c2 $00 $c4

    nop                                           ; $4988: $00
    rst $00                                       ; $4989: $c7
    nop                                           ; $498a: $00
    ret                                           ; $498b: $c9


    nop                                           ; $498c: $00
    rlc b                                         ; $498d: $cb $00
    adc $00                                       ; $498f: $ce $00
    ret nc                                        ; $4991: $d0

    nop                                           ; $4992: $00
    db $d3                                        ; $4993: $d3
    nop                                           ; $4994: $00
    call nc, $d700                                ; $4995: $d4 $00 $d7
    nop                                           ; $4998: $00
    reti                                          ; $4999: $d9


    nop                                           ; $499a: $00
    db $db                                        ; $499b: $db
    nop                                           ; $499c: $00
    sbc $00                                       ; $499d: $de $00
    rst $18                                       ; $499f: $df
    nop                                           ; $49a0: $00
    pop hl                                        ; $49a1: $e1
    nop                                           ; $49a2: $00
    db $e4                                        ; $49a3: $e4
    nop                                           ; $49a4: $00
    rst $20                                       ; $49a5: $e7
    nop                                           ; $49a6: $00
    add sp, $00                                   ; $49a7: $e8 $00
    db $eb                                        ; $49a9: $eb
    nop                                           ; $49aa: $00
    db $ed                                        ; $49ab: $ed
    nop                                           ; $49ac: $00
    rst $28                                       ; $49ad: $ef
    nop                                           ; $49ae: $00
    ld a, [c]                                     ; $49af: $f2
    nop                                           ; $49b0: $00
    di                                            ; $49b1: $f3
    nop                                           ; $49b2: $00
    or $00                                        ; $49b3: $f6 $00
    ld hl, sp+$00                                 ; $49b5: $f8 $00
    ld a, [$fc00]                                 ; $49b7: $fa $00 $fc
    nop                                           ; $49ba: $00
    rst $38                                       ; $49bb: $ff
    nop                                           ; $49bc: $00
    ld bc, $0301                                  ; $49bd: $01 $01 $03
    ld bc, $0105                                  ; $49c0: $01 $05 $01
    rlca                                          ; $49c3: $07
    ld bc, $010a                                  ; $49c4: $01 $0a $01
    inc c                                         ; $49c7: $0c
    ld bc, $010e                                  ; $49c8: $01 $0e $01
    db $10                                        ; $49cb: $10
    ld bc, $0112                                  ; $49cc: $01 $12 $01
    inc d                                         ; $49cf: $14
    ld bc, $0117                                  ; $49d0: $01 $17 $01
    jr jr_038_49d6                                ; $49d3: $18 $01

    dec de                                        ; $49d5: $1b

jr_038_49d6:
    ld bc, $011d                                  ; $49d6: $01 $1d $01
    rra                                           ; $49d9: $1f
    ld bc, $0121                                  ; $49da: $01 $21 $01
    inc hl                                        ; $49dd: $23
    ld bc, $0126                                  ; $49de: $01 $26 $01
    jr z, jr_038_49e4                             ; $49e1: $28 $01

    ld a, [hl+]                                   ; $49e3: $2a

jr_038_49e4:
    ld bc, $012c                                  ; $49e4: $01 $2c $01
    ld l, $01                                     ; $49e7: $2e $01
    ld sp, $3201                                  ; $49e9: $31 $01 $32
    ld bc, $0135                                  ; $49ec: $01 $35 $01
    scf                                           ; $49ef: $37
    ld bc, $0139                                  ; $49f0: $01 $39 $01
    dec sp                                        ; $49f3: $3b
    ld bc, $013d                                  ; $49f4: $01 $3d $01
    ccf                                           ; $49f7: $3f
    ld bc, $0141                                  ; $49f8: $01 $41 $01
    ld b, h                                       ; $49fb: $44
    ld bc, HeaderSGBFlag                          ; $49fc: $01 $46 $01
    ld c, b                                       ; $49ff: $48
    ld bc, HeaderDestinationCode                  ; $4a00: $01 $4a $01
    ld c, h                                       ; $4a03: $4c
    ld bc, $014f                                  ; $4a04: $01 $4f $01
    ld d, b                                       ; $4a07: $50
    ld bc, $0153                                  ; $4a08: $01 $53 $01
    ld d, l                                       ; $4a0b: $55
    ld bc, $0157                                  ; $4a0c: $01 $57 $01
    ld e, c                                       ; $4a0f: $59
    ld bc, $015b                                  ; $4a10: $01 $5b $01
    ld e, l                                       ; $4a13: $5d
    ld bc, $0160                                  ; $4a14: $01 $60 $01
    ld h, c                                       ; $4a17: $61
    ld bc, $0164                                  ; $4a18: $01 $64 $01
    ld h, [hl]                                    ; $4a1b: $66
    ld bc, $0168                                  ; $4a1c: $01 $68 $01
    ld l, d                                       ; $4a1f: $6a
    ld bc, $016d                                  ; $4a20: $01 $6d $01
    ld l, a                                       ; $4a23: $6f
    ld bc, $0171                                  ; $4a24: $01 $71 $01
    ld [hl], e                                    ; $4a27: $73
    ld bc, $0175                                  ; $4a28: $01 $75 $01
    ld [hl], a                                    ; $4a2b: $77
    ld bc, $0179                                  ; $4a2c: $01 $79 $01
    ld a, e                                       ; $4a2f: $7b
    ld bc, $017d                                  ; $4a30: $01 $7d $01
    add b                                         ; $4a33: $80
    ld bc, $0182                                  ; $4a34: $01 $82 $01
    add h                                         ; $4a37: $84
    ld bc, $0186                                  ; $4a38: $01 $86 $01
    adc b                                         ; $4a3b: $88
    ld bc, $018b                                  ; $4a3c: $01 $8b $01
    adc l                                         ; $4a3f: $8d
    ld bc, $018f                                  ; $4a40: $01 $8f $01
    sub c                                         ; $4a43: $91
    ld bc, $0193                                  ; $4a44: $01 $93 $01
    sub [hl]                                      ; $4a47: $96
    ld bc, $0198                                  ; $4a48: $01 $98 $01
    sbc d                                         ; $4a4b: $9a
    ld bc, $019c                                  ; $4a4c: $01 $9c $01
    sbc [hl]                                      ; $4a4f: $9e
    ld bc, $01a0                                  ; $4a50: $01 $a0 $01
    and d                                         ; $4a53: $a2
    ld bc, $01a4                                  ; $4a54: $01 $a4 $01
    and [hl]                                      ; $4a57: $a6
    ld bc, $01a9                                  ; $4a58: $01 $a9 $01
    xor e                                         ; $4a5b: $ab
    ld bc, $01ad                                  ; $4a5c: $01 $ad $01
    xor a                                         ; $4a5f: $af
    ld bc, $01b1                                  ; $4a60: $01 $b1 $01
    or h                                          ; $4a63: $b4
    ld bc, $01b6                                  ; $4a64: $01 $b6 $01
    cp b                                          ; $4a67: $b8
    ld bc, $01ba                                  ; $4a68: $01 $ba $01
    cp h                                          ; $4a6b: $bc
    ld bc, $01bf                                  ; $4a6c: $01 $bf $01
    pop bc                                        ; $4a6f: $c1
    ld bc, $01c3                                  ; $4a70: $01 $c3 $01
    push bc                                       ; $4a73: $c5
    ld bc, $01c7                                  ; $4a74: $01 $c7 $01
    ret                                           ; $4a77: $c9


    ld bc, $01cc                                  ; $4a78: $01 $cc $01
    adc $01                                       ; $4a7b: $ce $01
    ret nc                                        ; $4a7d: $d0

    ld bc, $01d2                                  ; $4a7e: $01 $d2 $01
    call nc, $d601                                ; $4a81: $d4 $01 $d6
    ld bc, $01d8                                  ; $4a84: $01 $d8 $01
    db $db                                        ; $4a87: $db
    ld bc, $01dd                                  ; $4a88: $01 $dd $01
    rst $18                                       ; $4a8b: $df
    ld bc, $0004                                  ; $4a8c: $01 $04 $00
    inc hl                                        ; $4a8f: $23
    nop                                           ; $4a90: $00
    inc l                                         ; $4a91: $2c
    nop                                           ; $4a92: $00
    inc sp                                        ; $4a93: $33
    nop                                           ; $4a94: $00
    dec sp                                        ; $4a95: $3b
    nop                                           ; $4a96: $00
    ld b, c                                       ; $4a97: $41
    nop                                           ; $4a98: $00
    ld b, [hl]                                    ; $4a99: $46
    nop                                           ; $4a9a: $00
    ld c, e                                       ; $4a9b: $4b
    nop                                           ; $4a9c: $00
    ld c, a                                       ; $4a9d: $4f
    nop                                           ; $4a9e: $00
    ld d, h                                       ; $4a9f: $54
    nop                                           ; $4aa0: $00
    ld e, b                                       ; $4aa1: $58
    nop                                           ; $4aa2: $00
    ld e, h                                       ; $4aa3: $5c
    nop                                           ; $4aa4: $00
    ld h, b                                       ; $4aa5: $60
    nop                                           ; $4aa6: $00
    ld h, h                                       ; $4aa7: $64
    nop                                           ; $4aa8: $00
    ld h, a                                       ; $4aa9: $67
    nop                                           ; $4aaa: $00
    ld l, d                                       ; $4aab: $6a
    nop                                           ; $4aac: $00
    ld l, [hl]                                    ; $4aad: $6e
    nop                                           ; $4aae: $00
    ld [hl], c                                    ; $4aaf: $71
    nop                                           ; $4ab0: $00
    ld [hl], l                                    ; $4ab1: $75
    nop                                           ; $4ab2: $00
    ld a, b                                       ; $4ab3: $78
    nop                                           ; $4ab4: $00
    ld a, e                                       ; $4ab5: $7b
    nop                                           ; $4ab6: $00
    ld a, [hl]                                    ; $4ab7: $7e
    nop                                           ; $4ab8: $00
    add c                                         ; $4ab9: $81
    nop                                           ; $4aba: $00
    add h                                         ; $4abb: $84
    nop                                           ; $4abc: $00
    add [hl]                                      ; $4abd: $86
    nop                                           ; $4abe: $00
    adc d                                         ; $4abf: $8a
    nop                                           ; $4ac0: $00
    adc h                                         ; $4ac1: $8c
    nop                                           ; $4ac2: $00
    adc a                                         ; $4ac3: $8f
    nop                                           ; $4ac4: $00
    sub d                                         ; $4ac5: $92
    nop                                           ; $4ac6: $00
    sub l                                         ; $4ac7: $95
    nop                                           ; $4ac8: $00
    sbc b                                         ; $4ac9: $98
    nop                                           ; $4aca: $00
    sbc d                                         ; $4acb: $9a
    nop                                           ; $4acc: $00
    sbc l                                         ; $4acd: $9d
    nop                                           ; $4ace: $00
    sbc a                                         ; $4acf: $9f
    nop                                           ; $4ad0: $00
    and d                                         ; $4ad1: $a2
    nop                                           ; $4ad2: $00
    and l                                         ; $4ad3: $a5
    nop                                           ; $4ad4: $00
    xor b                                         ; $4ad5: $a8
    nop                                           ; $4ad6: $00
    xor d                                         ; $4ad7: $aa
    nop                                           ; $4ad8: $00
    xor h                                         ; $4ad9: $ac
    nop                                           ; $4ada: $00
    or b                                          ; $4adb: $b0
    nop                                           ; $4adc: $00
    or d                                          ; $4add: $b2
    nop                                           ; $4ade: $00
    or h                                          ; $4adf: $b4
    nop                                           ; $4ae0: $00
    or a                                          ; $4ae1: $b7
    nop                                           ; $4ae2: $00
    cp c                                          ; $4ae3: $b9
    nop                                           ; $4ae4: $00
    cp h                                          ; $4ae5: $bc
    nop                                           ; $4ae6: $00
    cp a                                          ; $4ae7: $bf
    nop                                           ; $4ae8: $00
    ret nz                                        ; $4ae9: $c0

    nop                                           ; $4aea: $00
    jp $c600                                      ; $4aeb: $c3 $00 $c6


    nop                                           ; $4aee: $00
    ret                                           ; $4aef: $c9


    nop                                           ; $4af0: $00
    rlc b                                         ; $4af1: $cb $00
    call $d000                                    ; $4af3: $cd $00 $d0
    nop                                           ; $4af6: $00
    db $d3                                        ; $4af7: $d3
    nop                                           ; $4af8: $00
    push de                                       ; $4af9: $d5
    nop                                           ; $4afa: $00
    rst $10                                       ; $4afb: $d7
    nop                                           ; $4afc: $00
    jp c, $dc00                                   ; $4afd: $da $00 $dc

    nop                                           ; $4b00: $00
    sbc $00                                       ; $4b01: $de $00
    pop hl                                        ; $4b03: $e1
    nop                                           ; $4b04: $00
    db $e3                                        ; $4b05: $e3
    nop                                           ; $4b06: $00
    push hl                                       ; $4b07: $e5
    nop                                           ; $4b08: $00
    add sp, $00                                   ; $4b09: $e8 $00
    ld [$ed00], a                                 ; $4b0b: $ea $00 $ed
    nop                                           ; $4b0e: $00
    rst $28                                       ; $4b0f: $ef
    nop                                           ; $4b10: $00
    ld a, [c]                                     ; $4b11: $f2
    nop                                           ; $4b12: $00
    db $f4                                        ; $4b13: $f4
    nop                                           ; $4b14: $00
    or $00                                        ; $4b15: $f6 $00
    ld sp, hl                                     ; $4b17: $f9
    nop                                           ; $4b18: $00
    ei                                            ; $4b19: $fb
    nop                                           ; $4b1a: $00
    db $fd                                        ; $4b1b: $fd
    nop                                           ; $4b1c: $00

    db $ff, $00, $02, $01

    inc b                                         ; $4b21: $04
    ld bc, $0107                                  ; $4b22: $01 $07 $01
    add hl, bc                                    ; $4b25: $09
    ld bc, $010b                                  ; $4b26: $01 $0b $01
    ld c, $01                                     ; $4b29: $0e $01
    db $10                                        ; $4b2b: $10
    ld bc, $0112                                  ; $4b2c: $01 $12 $01
    inc d                                         ; $4b2f: $14
    ld bc, $0117                                  ; $4b30: $01 $17 $01
    add hl, de                                    ; $4b33: $19
    ld bc, $011c                                  ; $4b34: $01 $1c $01
    ld e, $01                                     ; $4b37: $1e $01
    jr nz, jr_038_4b3c                            ; $4b39: $20 $01

    inc hl                                        ; $4b3b: $23

jr_038_4b3c:
    ld bc, $0125                                  ; $4b3c: $01 $25 $01
    daa                                           ; $4b3f: $27
    ld bc, $0129                                  ; $4b40: $01 $29 $01
    dec hl                                        ; $4b43: $2b
    ld bc, $012e                                  ; $4b44: $01 $2e $01
    jr nc, jr_038_4b4a                            ; $4b47: $30 $01

    inc sp                                        ; $4b49: $33

jr_038_4b4a:
    ld bc, $0135                                  ; $4b4a: $01 $35 $01
    scf                                           ; $4b4d: $37
    ld bc, $0139                                  ; $4b4e: $01 $39 $01
    inc a                                         ; $4b51: $3c
    ld bc, $013e                                  ; $4b52: $01 $3e $01
    ld b, b                                       ; $4b55: $40
    ld bc, $0142                                  ; $4b56: $01 $42 $01
    ld b, l                                       ; $4b59: $45
    ld bc, HeaderCartridgeType                    ; $4b5a: $01 $47 $01
    ld c, d                                       ; $4b5d: $4a
    ld bc, HeaderMaskROMVersion                   ; $4b5e: $01 $4c $01
    ld c, [hl]                                    ; $4b61: $4e
    ld bc, $0151                                  ; $4b62: $01 $51 $01
    ld d, e                                       ; $4b65: $53
    ld bc, $0155                                  ; $4b66: $01 $55 $01
    ld e, b                                       ; $4b69: $58
    ld bc, $015a                                  ; $4b6a: $01 $5a $01
    ld e, h                                       ; $4b6d: $5c
    ld bc, $015f                                  ; $4b6e: $01 $5f $01
    ld h, c                                       ; $4b71: $61
    ld bc, $0163                                  ; $4b72: $01 $63 $01
    ld h, l                                       ; $4b75: $65
    ld bc, $0168                                  ; $4b76: $01 $68 $01
    ld l, d                                       ; $4b79: $6a
    ld bc, $016d                                  ; $4b7a: $01 $6d $01
    ld l, a                                       ; $4b7d: $6f
    ld bc, $0171                                  ; $4b7e: $01 $71 $01
    ld [hl], e                                    ; $4b81: $73
    ld bc, $0176                                  ; $4b82: $01 $76 $01
    ld a, b                                       ; $4b85: $78
    ld bc, $017a                                  ; $4b86: $01 $7a $01
    ld a, l                                       ; $4b89: $7d
    ld bc, $017f                                  ; $4b8a: $01 $7f $01
    add c                                         ; $4b8d: $81
    ld bc, $0184                                  ; $4b8e: $01 $84 $01
    add [hl]                                      ; $4b91: $86
    ld bc, $0189                                  ; $4b92: $01 $89 $01
    adc e                                         ; $4b95: $8b
    ld bc, $018d                                  ; $4b96: $01 $8d $01
    adc a                                         ; $4b99: $8f
    ld bc, $0192                                  ; $4b9a: $01 $92 $01
    sub h                                         ; $4b9d: $94
    ld bc, $0196                                  ; $4b9e: $01 $96 $01
    sbc b                                         ; $4ba1: $98
    ld bc, $019b                                  ; $4ba2: $01 $9b $01
    sbc l                                         ; $4ba5: $9d
    ld bc, $01a0                                  ; $4ba6: $01 $a0 $01
    and d                                         ; $4ba9: $a2
    ld bc, $01a4                                  ; $4baa: $01 $a4 $01
    and a                                         ; $4bad: $a7
    ld bc, $01a9                                  ; $4bae: $01 $a9 $01
    xor h                                         ; $4bb1: $ac
    ld bc, $01ad                                  ; $4bb2: $01 $ad $01
    or b                                          ; $4bb5: $b0
    ld bc, $01b3                                  ; $4bb6: $01 $b3 $01
    or h                                          ; $4bb9: $b4
    ld bc, $01b7                                  ; $4bba: $01 $b7 $01
    cp d                                          ; $4bbd: $ba
    ld bc, $01bc                                  ; $4bbe: $01 $bc $01
    cp [hl]                                       ; $4bc1: $be
    ld bc, $01c0                                  ; $4bc2: $01 $c0 $01
    jp $c501                                      ; $4bc5: $c3 $01 $c5


    ld bc, $01c7                                  ; $4bc8: $01 $c7 $01
    jp z, $cc01                                   ; $4bcb: $ca $01 $cc

    ld bc, $01cf                                  ; $4bce: $01 $cf $01
    pop de                                        ; $4bd1: $d1
    ld bc, $01d3                                  ; $4bd2: $01 $d3 $01
    push de                                       ; $4bd5: $d5
    ld bc, $01d8                                  ; $4bd6: $01 $d8 $01
    jp c, $dd01                                   ; $4bd9: $da $01 $dd

    ld bc, $01df                                  ; $4bdc: $01 $df $01
    inc b                                         ; $4bdf: $04
    nop                                           ; $4be0: $00
    dec h                                         ; $4be1: $25
    nop                                           ; $4be2: $00
    ld l, $00                                     ; $4be3: $2e $00
    scf                                           ; $4be5: $37
    nop                                           ; $4be6: $00
    ld a, $00                                     ; $4be7: $3e $00
    ld b, h                                       ; $4be9: $44
    nop                                           ; $4bea: $00
    ld c, c                                       ; $4beb: $49
    nop                                           ; $4bec: $00
    ld c, [hl]                                    ; $4bed: $4e
    nop                                           ; $4bee: $00
    ld d, e                                       ; $4bef: $53
    nop                                           ; $4bf0: $00
    ld d, a                                       ; $4bf1: $57
    nop                                           ; $4bf2: $00
    ld e, h                                       ; $4bf3: $5c
    nop                                           ; $4bf4: $00
    ld e, a                                       ; $4bf5: $5f
    nop                                           ; $4bf6: $00
    ld h, e                                       ; $4bf7: $63
    nop                                           ; $4bf8: $00
    ld h, a                                       ; $4bf9: $67
    nop                                           ; $4bfa: $00
    ld l, d                                       ; $4bfb: $6a
    nop                                           ; $4bfc: $00
    ld l, [hl]                                    ; $4bfd: $6e
    nop                                           ; $4bfe: $00
    ld [hl], d                                    ; $4bff: $72
    nop                                           ; $4c00: $00
    ld [hl], l                                    ; $4c01: $75
    nop                                           ; $4c02: $00
    ld a, c                                       ; $4c03: $79
    nop                                           ; $4c04: $00
    ld a, h                                       ; $4c05: $7c
    nop                                           ; $4c06: $00
    ld a, a                                       ; $4c07: $7f
    nop                                           ; $4c08: $00
    add d                                         ; $4c09: $82
    nop                                           ; $4c0a: $00
    add l                                         ; $4c0b: $85
    nop                                           ; $4c0c: $00
    adc c                                         ; $4c0d: $89
    nop                                           ; $4c0e: $00
    adc h                                         ; $4c0f: $8c
    nop                                           ; $4c10: $00
    adc [hl]                                      ; $4c11: $8e
    nop                                           ; $4c12: $00
    sub c                                         ; $4c13: $91
    nop                                           ; $4c14: $00
    sub h                                         ; $4c15: $94
    nop                                           ; $4c16: $00
    sub a                                         ; $4c17: $97
    nop                                           ; $4c18: $00
    sbc d                                         ; $4c19: $9a
    nop                                           ; $4c1a: $00
    sbc l                                         ; $4c1b: $9d
    nop                                           ; $4c1c: $00
    and b                                         ; $4c1d: $a0
    nop                                           ; $4c1e: $00
    and e                                         ; $4c1f: $a3
    nop                                           ; $4c20: $00
    and l                                         ; $4c21: $a5
    nop                                           ; $4c22: $00
    xor b                                         ; $4c23: $a8
    nop                                           ; $4c24: $00
    xor e                                         ; $4c25: $ab
    nop                                           ; $4c26: $00
    xor [hl]                                      ; $4c27: $ae
    nop                                           ; $4c28: $00
    or b                                          ; $4c29: $b0
    nop                                           ; $4c2a: $00
    or e                                          ; $4c2b: $b3
    nop                                           ; $4c2c: $00
    or l                                          ; $4c2d: $b5
    nop                                           ; $4c2e: $00
    cp b                                          ; $4c2f: $b8
    nop                                           ; $4c30: $00
    cp d                                          ; $4c31: $ba
    nop                                           ; $4c32: $00
    cp l                                          ; $4c33: $bd
    nop                                           ; $4c34: $00
    pop bc                                        ; $4c35: $c1
    nop                                           ; $4c36: $00
    jp $c500                                      ; $4c37: $c3 $00 $c5


    nop                                           ; $4c3a: $00
    ret                                           ; $4c3b: $c9


    nop                                           ; $4c3c: $00
    rlc b                                         ; $4c3d: $cb $00
    call $d000                                    ; $4c3f: $cd $00 $d0
    nop                                           ; $4c42: $00
    db $d3                                        ; $4c43: $d3
    nop                                           ; $4c44: $00
    push de                                       ; $4c45: $d5
    nop                                           ; $4c46: $00
    ret c                                         ; $4c47: $d8

    nop                                           ; $4c48: $00
    jp c, $dd00                                   ; $4c49: $da $00 $dd

    nop                                           ; $4c4c: $00
    rst $18                                       ; $4c4d: $df
    nop                                           ; $4c4e: $00
    ld [c], a                                     ; $4c4f: $e2
    nop                                           ; $4c50: $00
    push hl                                       ; $4c51: $e5
    nop                                           ; $4c52: $00
    rst $20                                       ; $4c53: $e7
    nop                                           ; $4c54: $00
    ld [$ec00], a                                 ; $4c55: $ea $00 $ec
    nop                                           ; $4c58: $00
    xor $00                                       ; $4c59: $ee $00
    pop af                                        ; $4c5b: $f1
    nop                                           ; $4c5c: $00

    db $f4, $00, $f6, $00

    ld hl, sp+$00                                 ; $4c61: $f8 $00
    ei                                            ; $4c63: $fb
    nop                                           ; $4c64: $00

    db $fd, $00, $00, $01

    ld [bc], a                                    ; $4c69: $02
    ld bc, $0105                                  ; $4c6a: $01 $05 $01
    rlca                                          ; $4c6d: $07
    ld bc, $010a                                  ; $4c6e: $01 $0a $01
    inc c                                         ; $4c71: $0c
    ld bc, $010f                                  ; $4c72: $01 $0f $01
    ld [de], a                                    ; $4c75: $12
    ld bc, $0114                                  ; $4c76: $01 $14 $01
    ld d, $01                                     ; $4c79: $16 $01
    add hl, de                                    ; $4c7b: $19
    ld bc, $011b                                  ; $4c7c: $01 $1b $01
    ld e, $01                                     ; $4c7f: $1e $01
    jr nz, jr_038_4c84                            ; $4c81: $20 $01

    inc hl                                        ; $4c83: $23

jr_038_4c84:
    ld bc, $0125                                  ; $4c84: $01 $25 $01
    daa                                           ; $4c87: $27
    ld bc, $012a                                  ; $4c88: $01 $2a $01
    dec l                                         ; $4c8b: $2d
    ld bc, $012e                                  ; $4c8c: $01 $2e $01
    ld [hl-], a                                   ; $4c8f: $32
    ld bc, HeaderTitle                            ; $4c90: $01 $34 $01
    scf                                           ; $4c93: $37
    ld bc, $0139                                  ; $4c94: $01 $39 $01
    dec sp                                        ; $4c97: $3b
    ld bc, $013e                                  ; $4c98: $01 $3e $01
    ld b, b                                       ; $4c9b: $40
    ld bc, HeaderCGBFlag                          ; $4c9c: $01 $43 $01
    ld b, l                                       ; $4c9f: $45
    ld bc, HeaderROMSize                          ; $4ca0: $01 $48 $01
    ld c, d                                       ; $4ca3: $4a
    ld bc, HeaderComplementCheck                  ; $4ca4: $01 $4d $01
    ld c, a                                       ; $4ca7: $4f
    ld bc, $0152                                  ; $4ca8: $01 $52 $01
    ld d, h                                       ; $4cab: $54
    ld bc, $0156                                  ; $4cac: $01 $56 $01
    ld e, c                                       ; $4caf: $59
    ld bc, $015b                                  ; $4cb0: $01 $5b $01
    ld e, [hl]                                    ; $4cb3: $5e
    ld bc, $0160                                  ; $4cb4: $01 $60 $01
    ld h, e                                       ; $4cb7: $63
    ld bc, $0165                                  ; $4cb8: $01 $65 $01
    ld h, a                                       ; $4cbb: $67
    ld bc, $016a                                  ; $4cbc: $01 $6a $01
    ld l, l                                       ; $4cbf: $6d
    ld bc, $016f                                  ; $4cc0: $01 $6f $01
    ld [hl], c                                    ; $4cc3: $71
    ld bc, $0174                                  ; $4cc4: $01 $74 $01
    ld [hl], a                                    ; $4cc7: $77
    ld bc, $0179                                  ; $4cc8: $01 $79 $01
    ld a, e                                       ; $4ccb: $7b
    ld bc, $017e                                  ; $4ccc: $01 $7e $01
    add b                                         ; $4ccf: $80
    ld bc, $0183                                  ; $4cd0: $01 $83 $01
    add l                                         ; $4cd3: $85
    ld bc, $0188                                  ; $4cd4: $01 $88 $01
    adc d                                         ; $4cd7: $8a
    ld bc, $018d                                  ; $4cd8: $01 $8d $01
    adc a                                         ; $4cdb: $8f
    ld bc, $0192                                  ; $4cdc: $01 $92 $01
    sub h                                         ; $4cdf: $94
    ld bc, $0197                                  ; $4ce0: $01 $97 $01
    sbc c                                         ; $4ce3: $99
    ld bc, $019c                                  ; $4ce4: $01 $9c $01
    sbc [hl]                                      ; $4ce7: $9e
    ld bc, $01a0                                  ; $4ce8: $01 $a0 $01
    and e                                         ; $4ceb: $a3
    ld bc, $01a6                                  ; $4cec: $01 $a6 $01
    xor b                                         ; $4cef: $a8
    ld bc, $01ab                                  ; $4cf0: $01 $ab $01
    xor l                                         ; $4cf3: $ad
    ld bc, $01b0                                  ; $4cf4: $01 $b0 $01
    or d                                          ; $4cf7: $b2
    ld bc, $01b5                                  ; $4cf8: $01 $b5 $01
    or a                                          ; $4cfb: $b7
    ld bc, $01ba                                  ; $4cfc: $01 $ba $01
    cp h                                          ; $4cff: $bc
    ld bc, $01bf                                  ; $4d00: $01 $bf $01
    pop bc                                        ; $4d03: $c1
    ld bc, $01c3                                  ; $4d04: $01 $c3 $01
    add $01                                       ; $4d07: $c6 $01
    ret z                                         ; $4d09: $c8

    ld bc, $01cb                                  ; $4d0a: $01 $cb $01
    adc $01                                       ; $4d0d: $ce $01
    ret nc                                        ; $4d0f: $d0

    ld bc, $01d3                                  ; $4d10: $01 $d3 $01
    push de                                       ; $4d13: $d5
    ld bc, $01d8                                  ; $4d14: $01 $d8 $01
    jp c, $dd01                                   ; $4d17: $da $01 $dd

    ld bc, $01df                                  ; $4d1a: $01 $df $01
    inc b                                         ; $4d1d: $04
    nop                                           ; $4d1e: $00
    add hl, hl                                    ; $4d1f: $29
    nop                                           ; $4d20: $00
    ld [hl-], a                                   ; $4d21: $32
    nop                                           ; $4d22: $00
    add hl, sp                                    ; $4d23: $39
    nop                                           ; $4d24: $00
    ld b, d                                       ; $4d25: $42
    nop                                           ; $4d26: $00
    ld c, b                                       ; $4d27: $48
    nop                                           ; $4d28: $00
    ld c, l                                       ; $4d29: $4d
    nop                                           ; $4d2a: $00
    ld d, d                                       ; $4d2b: $52
    nop                                           ; $4d2c: $00
    ld d, a                                       ; $4d2d: $57
    nop                                           ; $4d2e: $00
    ld e, e                                       ; $4d2f: $5b
    nop                                           ; $4d30: $00
    ld h, b                                       ; $4d31: $60
    nop                                           ; $4d32: $00
    ld h, h                                       ; $4d33: $64
    nop                                           ; $4d34: $00
    ld l, b                                       ; $4d35: $68
    nop                                           ; $4d36: $00
    ld l, h                                       ; $4d37: $6c
    nop                                           ; $4d38: $00
    ld l, a                                       ; $4d39: $6f
    nop                                           ; $4d3a: $00
    ld [hl], e                                    ; $4d3b: $73
    nop                                           ; $4d3c: $00
    ld [hl], a                                    ; $4d3d: $77
    nop                                           ; $4d3e: $00
    ld a, d                                       ; $4d3f: $7a
    nop                                           ; $4d40: $00
    ld a, [hl]                                    ; $4d41: $7e
    nop                                           ; $4d42: $00
    add d                                         ; $4d43: $82
    nop                                           ; $4d44: $00
    add l                                         ; $4d45: $85
    nop                                           ; $4d46: $00
    adc b                                         ; $4d47: $88
    nop                                           ; $4d48: $00
    adc e                                         ; $4d49: $8b
    nop                                           ; $4d4a: $00
    adc a                                         ; $4d4b: $8f
    nop                                           ; $4d4c: $00
    sub d                                         ; $4d4d: $92
    nop                                           ; $4d4e: $00
    sub l                                         ; $4d4f: $95
    nop                                           ; $4d50: $00
    sbc b                                         ; $4d51: $98
    nop                                           ; $4d52: $00
    sbc e                                         ; $4d53: $9b
    nop                                           ; $4d54: $00
    sbc [hl]                                      ; $4d55: $9e
    nop                                           ; $4d56: $00
    and c                                         ; $4d57: $a1
    nop                                           ; $4d58: $00
    and h                                         ; $4d59: $a4
    nop                                           ; $4d5a: $00
    and a                                         ; $4d5b: $a7
    nop                                           ; $4d5c: $00
    xor d                                         ; $4d5d: $aa
    nop                                           ; $4d5e: $00
    xor l                                         ; $4d5f: $ad
    nop                                           ; $4d60: $00
    or b                                          ; $4d61: $b0
    nop                                           ; $4d62: $00
    or e                                          ; $4d63: $b3
    nop                                           ; $4d64: $00
    or l                                          ; $4d65: $b5
    nop                                           ; $4d66: $00
    cp c                                          ; $4d67: $b9
    nop                                           ; $4d68: $00
    cp e                                          ; $4d69: $bb
    nop                                           ; $4d6a: $00
    cp [hl]                                       ; $4d6b: $be
    nop                                           ; $4d6c: $00
    pop bc                                        ; $4d6d: $c1
    nop                                           ; $4d6e: $00
    call nz, $c700                                ; $4d6f: $c4 $00 $c7
    nop                                           ; $4d72: $00
    jp z, $cd00                                   ; $4d73: $ca $00 $cd

    nop                                           ; $4d76: $00
    rst $08                                       ; $4d77: $cf
    nop                                           ; $4d78: $00
    jp nc, $d500                                  ; $4d79: $d2 $00 $d5

    nop                                           ; $4d7c: $00
    ret c                                         ; $4d7d: $d8

    nop                                           ; $4d7e: $00
    jp c, $dd00                                   ; $4d7f: $da $00 $dd

    nop                                           ; $4d82: $00
    ldh [rP1], a                                  ; $4d83: $e0 $00
    ld [c], a                                     ; $4d85: $e2
    nop                                           ; $4d86: $00
    push hl                                       ; $4d87: $e5
    nop                                           ; $4d88: $00
    add sp, $00                                   ; $4d89: $e8 $00
    ld [$ed00], a                                 ; $4d8b: $ea $00 $ed
    nop                                           ; $4d8e: $00
    ldh a, [rP1]                                  ; $4d8f: $f0 $00
    ld a, [c]                                     ; $4d91: $f2
    nop                                           ; $4d92: $00
    push af                                       ; $4d93: $f5
    nop                                           ; $4d94: $00
    ld hl, sp+$00                                 ; $4d95: $f8 $00
    db $fa                                        ; $4d97: $fa
    nop                                           ; $4d98: $00

    db $fd, $00, $00, $01

    inc bc                                        ; $4d9d: $03
    ld bc, $0105                                  ; $4d9e: $01 $05 $01
    ld [$0b01], sp                                ; $4da1: $08 $01 $0b
    ld bc, $010d                                  ; $4da4: $01 $0d $01
    db $10                                        ; $4da7: $10
    ld bc, $0112                                  ; $4da8: $01 $12 $01
    dec d                                         ; $4dab: $15
    ld bc, $0118                                  ; $4dac: $01 $18 $01
    ld a, [de]                                    ; $4daf: $1a
    ld bc, $011d                                  ; $4db0: $01 $1d $01
    jr nz, jr_038_4db6                            ; $4db3: $20 $01

    ld [hl+], a                                   ; $4db5: $22

jr_038_4db6:
    ld bc, $0125                                  ; $4db6: $01 $25 $01
    jr z, jr_038_4dbc                             ; $4db9: $28 $01

    ld a, [hl+]                                   ; $4dbb: $2a

jr_038_4dbc:
    ld bc, $012d                                  ; $4dbc: $01 $2d $01
    cpl                                           ; $4dbf: $2f
    ld bc, $0132                                  ; $4dc0: $01 $32 $01
    dec [hl]                                      ; $4dc3: $35
    ld bc, $0137                                  ; $4dc4: $01 $37 $01
    ld a, [hl-]                                   ; $4dc7: $3a
    ld bc, $013d                                  ; $4dc8: $01 $3d $01
    ld b, b                                       ; $4dcb: $40
    ld bc, $0142                                  ; $4dcc: $01 $42 $01
    ld b, h                                       ; $4dcf: $44
    ld bc, HeaderCartridgeType                    ; $4dd0: $01 $47 $01
    ld c, d                                       ; $4dd3: $4a
    ld bc, HeaderComplementCheck                  ; $4dd4: $01 $4d $01
    ld c, a                                       ; $4dd7: $4f
    ld bc, $0152                                  ; $4dd8: $01 $52 $01
    ld d, h                                       ; $4ddb: $54
    ld bc, $0158                                  ; $4ddc: $01 $58 $01
    ld e, d                                       ; $4ddf: $5a
    ld bc, $015c                                  ; $4de0: $01 $5c $01
    ld e, a                                       ; $4de3: $5f
    ld bc, $0162                                  ; $4de4: $01 $62 $01
    ld h, h                                       ; $4de7: $64
    ld bc, $0167                                  ; $4de8: $01 $67 $01
    ld l, c                                       ; $4deb: $69
    ld bc, $016c                                  ; $4dec: $01 $6c $01
    ld l, a                                       ; $4def: $6f
    ld bc, $0172                                  ; $4df0: $01 $72 $01
    ld [hl], h                                    ; $4df3: $74
    ld bc, $0177                                  ; $4df4: $01 $77 $01
    ld a, d                                       ; $4df7: $7a
    ld bc, $017c                                  ; $4df8: $01 $7c $01
    ld a, a                                       ; $4dfb: $7f
    ld bc, $0182                                  ; $4dfc: $01 $82 $01
    add l                                         ; $4dff: $85
    ld bc, $0187                                  ; $4e00: $01 $87 $01
    adc d                                         ; $4e03: $8a
    ld bc, $018c                                  ; $4e04: $01 $8c $01
    adc a                                         ; $4e07: $8f
    ld bc, $0192                                  ; $4e08: $01 $92 $01
    sub l                                         ; $4e0b: $95
    ld bc, $0197                                  ; $4e0c: $01 $97 $01
    sbc d                                         ; $4e0f: $9a
    ld bc, $019c                                  ; $4e10: $01 $9c $01
    sbc a                                         ; $4e13: $9f
    ld bc, $01a2                                  ; $4e14: $01 $a2 $01
    and h                                         ; $4e17: $a4
    ld bc, $01a7                                  ; $4e18: $01 $a7 $01
    xor d                                         ; $4e1b: $aa
    ld bc, $01ad                                  ; $4e1c: $01 $ad $01
    xor a                                         ; $4e1f: $af
    ld bc, $01b2                                  ; $4e20: $01 $b2 $01
    or l                                          ; $4e23: $b5
    ld bc, $01b7                                  ; $4e24: $01 $b7 $01
    cp d                                          ; $4e27: $ba
    ld bc, $01bd                                  ; $4e28: $01 $bd $01
    cp a                                          ; $4e2b: $bf
    ld bc, $01c2                                  ; $4e2c: $01 $c2 $01
    call nz, $c701                                ; $4e2f: $c4 $01 $c7
    ld bc, $01ca                                  ; $4e32: $01 $ca $01
    call $cf01                                    ; $4e35: $cd $01 $cf
    ld bc, $01d2                                  ; $4e38: $01 $d2 $01
    push de                                       ; $4e3b: $d5
    ld bc, $01d8                                  ; $4e3c: $01 $d8 $01
    jp c, $dd01                                   ; $4e3f: $da $01 $dd

    ld bc, $01df                                  ; $4e42: $01 $df $01
    inc b                                         ; $4e45: $04
    nop                                           ; $4e46: $00
    inc l                                         ; $4e47: $2c
    nop                                           ; $4e48: $00
    dec [hl]                                      ; $4e49: $35
    nop                                           ; $4e4a: $00
    inc a                                         ; $4e4b: $3c
    nop                                           ; $4e4c: $00
    ld b, l                                       ; $4e4d: $45
    nop                                           ; $4e4e: $00
    ld c, h                                       ; $4e4f: $4c
    nop                                           ; $4e50: $00
    ld d, c                                       ; $4e51: $51
    nop                                           ; $4e52: $00
    ld d, a                                       ; $4e53: $57
    nop                                           ; $4e54: $00
    ld e, h                                       ; $4e55: $5c
    nop                                           ; $4e56: $00
    ld h, c                                       ; $4e57: $61
    nop                                           ; $4e58: $00
    ld h, l                                       ; $4e59: $65
    nop                                           ; $4e5a: $00
    ld l, d                                       ; $4e5b: $6a
    nop                                           ; $4e5c: $00
    ld l, l                                       ; $4e5d: $6d
    nop                                           ; $4e5e: $00
    ld [hl], d                                    ; $4e5f: $72
    nop                                           ; $4e60: $00
    ld [hl], l                                    ; $4e61: $75
    nop                                           ; $4e62: $00
    ld a, c                                       ; $4e63: $79
    nop                                           ; $4e64: $00
    ld a, l                                       ; $4e65: $7d
    nop                                           ; $4e66: $00
    add c                                         ; $4e67: $81
    nop                                           ; $4e68: $00
    add l                                         ; $4e69: $85
    nop                                           ; $4e6a: $00
    adc b                                         ; $4e6b: $88
    nop                                           ; $4e6c: $00
    adc h                                         ; $4e6d: $8c
    nop                                           ; $4e6e: $00
    adc a                                         ; $4e6f: $8f
    nop                                           ; $4e70: $00
    sub d                                         ; $4e71: $92
    nop                                           ; $4e72: $00
    sub [hl]                                      ; $4e73: $96
    nop                                           ; $4e74: $00
    sbc c                                         ; $4e75: $99
    nop                                           ; $4e76: $00
    sbc l                                         ; $4e77: $9d
    nop                                           ; $4e78: $00
    sbc a                                         ; $4e79: $9f
    nop                                           ; $4e7a: $00
    and e                                         ; $4e7b: $a3
    nop                                           ; $4e7c: $00
    and [hl]                                      ; $4e7d: $a6
    nop                                           ; $4e7e: $00
    xor c                                         ; $4e7f: $a9
    nop                                           ; $4e80: $00
    xor l                                         ; $4e81: $ad
    nop                                           ; $4e82: $00
    or b                                          ; $4e83: $b0
    nop                                           ; $4e84: $00
    or e                                          ; $4e85: $b3
    nop                                           ; $4e86: $00
    or [hl]                                       ; $4e87: $b6
    nop                                           ; $4e88: $00
    cp c                                          ; $4e89: $b9
    nop                                           ; $4e8a: $00
    cp h                                          ; $4e8b: $bc
    nop                                           ; $4e8c: $00
    cp a                                          ; $4e8d: $bf
    nop                                           ; $4e8e: $00
    jp nz, $c500                                  ; $4e8f: $c2 $00 $c5

    nop                                           ; $4e92: $00
    ret z                                         ; $4e93: $c8

    nop                                           ; $4e94: $00
    rlc b                                         ; $4e95: $cb $00
    adc $00                                       ; $4e97: $ce $00
    pop de                                        ; $4e99: $d1
    nop                                           ; $4e9a: $00
    call nc, $d700                                ; $4e9b: $d4 $00 $d7
    nop                                           ; $4e9e: $00
    jp c, $dd00                                   ; $4e9f: $da $00 $dd

    nop                                           ; $4ea2: $00
    ldh [rP1], a                                  ; $4ea3: $e0 $00
    db $e3                                        ; $4ea5: $e3
    nop                                           ; $4ea6: $00
    and $00                                       ; $4ea7: $e6 $00
    jp hl                                         ; $4ea9: $e9


    nop                                           ; $4eaa: $00
    db $ec                                        ; $4eab: $ec
    nop                                           ; $4eac: $00
    rst $28                                       ; $4ead: $ef
    nop                                           ; $4eae: $00
    pop af                                        ; $4eaf: $f1
    nop                                           ; $4eb0: $00
    db $f4                                        ; $4eb1: $f4
    nop                                           ; $4eb2: $00
    rst $30                                       ; $4eb3: $f7
    nop                                           ; $4eb4: $00
    ld a, [$fd00]                                 ; $4eb5: $fa $00 $fd
    nop                                           ; $4eb8: $00
    nop                                           ; $4eb9: $00
    ld bc, $0103                                  ; $4eba: $01 $03 $01
    ld b, $01                                     ; $4ebd: $06 $01
    ld [$0b01], sp                                ; $4ebf: $08 $01 $0b
    ld bc, $010e                                  ; $4ec2: $01 $0e $01
    ld de, $1401                                  ; $4ec5: $11 $01 $14
    ld bc, $0117                                  ; $4ec8: $01 $17 $01
    ld a, [de]                                    ; $4ecb: $1a
    ld bc, $011c                                  ; $4ecc: $01 $1c $01
    rra                                           ; $4ecf: $1f
    ld bc, $0122                                  ; $4ed0: $01 $22 $01
    dec h                                         ; $4ed3: $25
    ld bc, $0128                                  ; $4ed4: $01 $28 $01
    dec hl                                        ; $4ed7: $2b
    ld bc, $012e                                  ; $4ed8: $01 $2e $01
    jr nc, jr_038_4ede                            ; $4edb: $30 $01

    inc sp                                        ; $4edd: $33

jr_038_4ede:
    ld bc, $0136                                  ; $4ede: $01 $36 $01
    add hl, sp                                    ; $4ee1: $39
    ld bc, $013c                                  ; $4ee2: $01 $3c $01
    ccf                                           ; $4ee5: $3f
    ld bc, $0141                                  ; $4ee6: $01 $41 $01
    ld b, h                                       ; $4ee9: $44
    ld bc, HeaderCartridgeType                    ; $4eea: $01 $47 $01
    ld c, d                                       ; $4eed: $4a
    ld bc, HeaderComplementCheck                  ; $4eee: $01 $4d $01
    ld d, b                                       ; $4ef1: $50
    ld bc, $0152                                  ; $4ef2: $01 $52 $01
    ld d, l                                       ; $4ef5: $55
    ld bc, $0158                                  ; $4ef6: $01 $58 $01
    ld e, e                                       ; $4ef9: $5b
    ld bc, $015e                                  ; $4efa: $01 $5e $01
    ld h, c                                       ; $4efd: $61
    ld bc, $0164                                  ; $4efe: $01 $64 $01
    ld h, a                                       ; $4f01: $67
    ld bc, $0169                                  ; $4f02: $01 $69 $01
    ld l, h                                       ; $4f05: $6c
    ld bc, $016f                                  ; $4f06: $01 $6f $01
    ld [hl], d                                    ; $4f09: $72
    ld bc, $0175                                  ; $4f0a: $01 $75 $01
    ld a, b                                       ; $4f0d: $78
    ld bc, $017b                                  ; $4f0e: $01 $7b $01
    ld a, [hl]                                    ; $4f11: $7e
    ld bc, $0180                                  ; $4f12: $01 $80 $01
    add e                                         ; $4f15: $83
    ld bc, $0186                                  ; $4f16: $01 $86 $01
    adc c                                         ; $4f19: $89
    ld bc, $018c                                  ; $4f1a: $01 $8c $01
    adc [hl]                                      ; $4f1d: $8e
    ld bc, $0191                                  ; $4f1e: $01 $91 $01
    sub l                                         ; $4f21: $95
    ld bc, $0197                                  ; $4f22: $01 $97 $01
    sbc d                                         ; $4f25: $9a
    ld bc, $019d                                  ; $4f26: $01 $9d $01
    and b                                         ; $4f29: $a0
    ld bc, $01a3                                  ; $4f2a: $01 $a3 $01
    and [hl]                                      ; $4f2d: $a6
    ld bc, $01a9                                  ; $4f2e: $01 $a9 $01
    xor e                                         ; $4f31: $ab
    ld bc, $01ae                                  ; $4f32: $01 $ae $01
    or d                                          ; $4f35: $b2
    ld bc, $01b4                                  ; $4f36: $01 $b4 $01
    or a                                          ; $4f39: $b7
    ld bc, $01ba                                  ; $4f3a: $01 $ba $01
    cp l                                          ; $4f3d: $bd
    ld bc, $01c0                                  ; $4f3e: $01 $c0 $01
    jp $c601                                      ; $4f41: $c3 $01 $c6


    ld bc, $01c9                                  ; $4f44: $01 $c9 $01
    rlc c                                         ; $4f47: $cb $01
    adc $01                                       ; $4f49: $ce $01
    pop de                                        ; $4f4b: $d1
    ld bc, $01d4                                  ; $4f4c: $01 $d4 $01
    rst $10                                       ; $4f4f: $d7
    ld bc, $01da                                  ; $4f50: $01 $da $01
    db $dd                                        ; $4f53: $dd
    ld bc, $0003                                  ; $4f54: $01 $03 $00
    cpl                                           ; $4f57: $2f
    nop                                           ; $4f58: $00
    scf                                           ; $4f59: $37
    nop                                           ; $4f5a: $00
    dec a                                         ; $4f5b: $3d
    nop                                           ; $4f5c: $00
    ld b, e                                       ; $4f5d: $43
    nop                                           ; $4f5e: $00
    ld c, l                                       ; $4f5f: $4d
    nop                                           ; $4f60: $00
    ld d, e                                       ; $4f61: $53
    nop                                           ; $4f62: $00
    ld e, b                                       ; $4f63: $58
    nop                                           ; $4f64: $00
    ld e, l                                       ; $4f65: $5d
    nop                                           ; $4f66: $00
    ld h, e                                       ; $4f67: $63
    nop                                           ; $4f68: $00
    ld h, a                                       ; $4f69: $67
    nop                                           ; $4f6a: $00
    ld l, h                                       ; $4f6b: $6c
    nop                                           ; $4f6c: $00
    ld [hl], b                                    ; $4f6d: $70
    nop                                           ; $4f6e: $00
    ld [hl], h                                    ; $4f6f: $74
    nop                                           ; $4f70: $00
    ld a, c                                       ; $4f71: $79
    nop                                           ; $4f72: $00
    ld a, l                                       ; $4f73: $7d
    nop                                           ; $4f74: $00
    add b                                         ; $4f75: $80
    nop                                           ; $4f76: $00
    add l                                         ; $4f77: $85
    nop                                           ; $4f78: $00
    adc b                                         ; $4f79: $88
    nop                                           ; $4f7a: $00
    adc h                                         ; $4f7b: $8c
    nop                                           ; $4f7c: $00
    sub b                                         ; $4f7d: $90
    nop                                           ; $4f7e: $00
    sub h                                         ; $4f7f: $94
    nop                                           ; $4f80: $00
    sbc b                                         ; $4f81: $98
    nop                                           ; $4f82: $00
    sbc e                                         ; $4f83: $9b
    nop                                           ; $4f84: $00
    sbc a                                         ; $4f85: $9f
    nop                                           ; $4f86: $00
    and d                                         ; $4f87: $a2
    nop                                           ; $4f88: $00
    and [hl]                                      ; $4f89: $a6
    nop                                           ; $4f8a: $00
    xor c                                         ; $4f8b: $a9
    nop                                           ; $4f8c: $00
    xor l                                         ; $4f8d: $ad
    nop                                           ; $4f8e: $00
    or b                                          ; $4f8f: $b0
    nop                                           ; $4f90: $00
    or e                                          ; $4f91: $b3
    nop                                           ; $4f92: $00
    cp b                                          ; $4f93: $b8
    nop                                           ; $4f94: $00
    cp e                                          ; $4f95: $bb
    nop                                           ; $4f96: $00
    cp [hl]                                       ; $4f97: $be
    nop                                           ; $4f98: $00
    jp nz, $c500                                  ; $4f99: $c2 $00 $c5

    nop                                           ; $4f9c: $00
    ret                                           ; $4f9d: $c9


    nop                                           ; $4f9e: $00
    call z, $cf00                                 ; $4f9f: $cc $00 $cf
    nop                                           ; $4fa2: $00
    jp nc, $d500                                  ; $4fa3: $d2 $00 $d5

    nop                                           ; $4fa6: $00
    reti                                          ; $4fa7: $d9


    nop                                           ; $4fa8: $00
    call c, $df00                                 ; $4fa9: $dc $00 $df
    nop                                           ; $4fac: $00
    ld [c], a                                     ; $4fad: $e2
    nop                                           ; $4fae: $00
    and $00                                       ; $4faf: $e6 $00
    jp hl                                         ; $4fb1: $e9


    nop                                           ; $4fb2: $00
    db $ec                                        ; $4fb3: $ec
    nop                                           ; $4fb4: $00
    ldh a, [rP1]                                  ; $4fb5: $f0 $00
    di                                            ; $4fb7: $f3
    nop                                           ; $4fb8: $00
    or $00                                        ; $4fb9: $f6 $00
    ld a, [$fc00]                                 ; $4fbb: $fa $00 $fc
    nop                                           ; $4fbe: $00
    nop                                           ; $4fbf: $00
    ld bc, $0103                                  ; $4fc0: $01 $03 $01
    ld b, $01                                     ; $4fc3: $06 $01
    ld a, [bc]                                    ; $4fc5: $0a
    ld bc, $010d                                  ; $4fc6: $01 $0d $01
    db $10                                        ; $4fc9: $10
    ld bc, $0113                                  ; $4fca: $01 $13 $01
    ld d, $01                                     ; $4fcd: $16 $01
    ld a, [de]                                    ; $4fcf: $1a
    ld bc, $011d                                  ; $4fd0: $01 $1d $01
    jr nz, jr_038_4fd6                            ; $4fd3: $20 $01

    inc hl                                        ; $4fd5: $23

jr_038_4fd6:
    ld bc, $0127                                  ; $4fd6: $01 $27 $01
    add hl, hl                                    ; $4fd9: $29
    ld bc, $012d                                  ; $4fda: $01 $2d $01
    jr nc, jr_038_4fe0                            ; $4fdd: $30 $01

    inc sp                                        ; $4fdf: $33

jr_038_4fe0:
    ld bc, $0136                                  ; $4fe0: $01 $36 $01
    ld a, [hl-]                                   ; $4fe3: $3a
    ld bc, $013d                                  ; $4fe4: $01 $3d $01
    ld b, b                                       ; $4fe7: $40
    ld bc, HeaderCGBFlag                          ; $4fe8: $01 $43 $01
    ld b, a                                       ; $4feb: $47
    ld bc, HeaderDestinationCode                  ; $4fec: $01 $4a $01
    ld c, l                                       ; $4fef: $4d
    ld bc, $0150                                  ; $4ff0: $01 $50 $01
    ld d, e                                       ; $4ff3: $53
    ld bc, $0157                                  ; $4ff4: $01 $57 $01
    ld e, d                                       ; $4ff7: $5a
    ld bc, $015d                                  ; $4ff8: $01 $5d $01
    ld h, b                                       ; $4ffb: $60
    ld bc, $0164                                  ; $4ffc: $01 $64 $01
    ld h, a                                       ; $4fff: $67
    ld bc, $016a                                  ; $5000: $01 $6a $01
    ld l, l                                       ; $5003: $6d
    ld bc, $0170                                  ; $5004: $01 $70 $01
    ld [hl], e                                    ; $5007: $73
    ld bc, $0177                                  ; $5008: $01 $77 $01
    ld a, d                                       ; $500b: $7a
    ld bc, $017d                                  ; $500c: $01 $7d $01
    add c                                         ; $500f: $81
    ld bc, $0184                                  ; $5010: $01 $84 $01
    add a                                         ; $5013: $87
    ld bc, $018a                                  ; $5014: $01 $8a $01
    adc [hl]                                      ; $5017: $8e
    ld bc, $0191                                  ; $5018: $01 $91 $01
    sub h                                         ; $501b: $94
    ld bc, $0197                                  ; $501c: $01 $97 $01
    sbc d                                         ; $501f: $9a
    ld bc, $019e                                  ; $5020: $01 $9e $01
    and c                                         ; $5023: $a1
    ld bc, $01a4                                  ; $5024: $01 $a4 $01
    and a                                         ; $5027: $a7
    ld bc, $01aa                                  ; $5028: $01 $aa $01
    xor [hl]                                      ; $502b: $ae
    ld bc, $01b1                                  ; $502c: $01 $b1 $01
    or l                                          ; $502f: $b5
    ld bc, $01b8                                  ; $5030: $01 $b8 $01
    cp e                                          ; $5033: $bb
    ld bc, $01be                                  ; $5034: $01 $be $01
    jp nz, $c501                                  ; $5037: $c2 $01 $c5

    ld bc, $01c8                                  ; $503a: $01 $c8 $01
    call z, $cf01                                 ; $503d: $cc $01 $cf
    ld bc, $01d2                                  ; $5040: $01 $d2 $01
    push de                                       ; $5043: $d5
    ld bc, $01d9                                  ; $5044: $01 $d9 $01
    call c, $df01                                 ; $5047: $dc $01 $df
    ld bc, $0003                                  ; $504a: $01 $03 $00
    jr nc, jr_038_504f                            ; $504d: $30 $00

jr_038_504f:
    add hl, sp                                    ; $504f: $39
    nop                                           ; $5050: $00
    ld b, d                                       ; $5051: $42
    nop                                           ; $5052: $00
    ld c, d                                       ; $5053: $4a
    nop                                           ; $5054: $00
    ld d, c                                       ; $5055: $51
    nop                                           ; $5056: $00
    ld e, d                                       ; $5057: $5a
    nop                                           ; $5058: $00
    ld h, b                                       ; $5059: $60
    nop                                           ; $505a: $00
    ld h, [hl]                                    ; $505b: $66
    nop                                           ; $505c: $00
    ld l, e                                       ; $505d: $6b
    nop                                           ; $505e: $00
    ld [hl], c                                    ; $505f: $71
    nop                                           ; $5060: $00
    halt                                          ; $5061: $76
    nop                                           ; $5062: $00
    ld a, d                                       ; $5063: $7a
    nop                                           ; $5064: $00
    ld a, a                                       ; $5065: $7f
    nop                                           ; $5066: $00
    add h                                         ; $5067: $84
    nop                                           ; $5068: $00
    adc b                                         ; $5069: $88
    nop                                           ; $506a: $00
    adc h                                         ; $506b: $8c
    nop                                           ; $506c: $00
    sub c                                         ; $506d: $91
    nop                                           ; $506e: $00
    sub l                                         ; $506f: $95
    nop                                           ; $5070: $00
    sbc d                                         ; $5071: $9a
    nop                                           ; $5072: $00
    sbc [hl]                                      ; $5073: $9e
    nop                                           ; $5074: $00
    and d                                         ; $5075: $a2
    nop                                           ; $5076: $00
    and [hl]                                      ; $5077: $a6
    nop                                           ; $5078: $00
    xor d                                         ; $5079: $aa
    nop                                           ; $507a: $00
    xor [hl]                                      ; $507b: $ae
    nop                                           ; $507c: $00
    or d                                          ; $507d: $b2
    nop                                           ; $507e: $00
    or [hl]                                       ; $507f: $b6
    nop                                           ; $5080: $00
    cp d                                          ; $5081: $ba
    nop                                           ; $5082: $00
    cp [hl]                                       ; $5083: $be
    nop                                           ; $5084: $00
    jp nz, $c600                                  ; $5085: $c2 $00 $c6

    nop                                           ; $5088: $00
    jp z, $ce00                                   ; $5089: $ca $00 $ce

    nop                                           ; $508c: $00
    pop de                                        ; $508d: $d1
    nop                                           ; $508e: $00
    push de                                       ; $508f: $d5
    nop                                           ; $5090: $00
    reti                                          ; $5091: $d9


    nop                                           ; $5092: $00
    db $dd                                        ; $5093: $dd
    nop                                           ; $5094: $00
    ldh [rP1], a                                  ; $5095: $e0 $00
    db $e4                                        ; $5097: $e4
    nop                                           ; $5098: $00
    add sp, $00                                   ; $5099: $e8 $00
    db $eb                                        ; $509b: $eb
    nop                                           ; $509c: $00
    rst $28                                       ; $509d: $ef
    nop                                           ; $509e: $00
    di                                            ; $509f: $f3
    nop                                           ; $50a0: $00
    rst $30                                       ; $50a1: $f7
    nop                                           ; $50a2: $00
    ld a, [$fe00]                                 ; $50a3: $fa $00 $fe
    nop                                           ; $50a6: $00
    ld [bc], a                                    ; $50a7: $02
    ld bc, $0106                                  ; $50a8: $01 $06 $01
    add hl, bc                                    ; $50ab: $09
    ld bc, $010d                                  ; $50ac: $01 $0d $01
    ld de, $1401                                  ; $50af: $11 $01 $14
    ld bc, $0118                                  ; $50b2: $01 $18 $01
    inc e                                         ; $50b5: $1c
    ld bc, $0120                                  ; $50b6: $01 $20 $01
    inc hl                                        ; $50b9: $23
    ld bc, $0127                                  ; $50ba: $01 $27 $01
    ld a, [hl+]                                   ; $50bd: $2a
    ld bc, $012e                                  ; $50be: $01 $2e $01
    ld [hl-], a                                   ; $50c1: $32
    ld bc, $0136                                  ; $50c2: $01 $36 $01
    add hl, sp                                    ; $50c5: $39
    ld bc, $013d                                  ; $50c6: $01 $3d $01
    ld b, c                                       ; $50c9: $41
    ld bc, HeaderNewLicenseeCode                  ; $50ca: $01 $44 $01
    ld c, b                                       ; $50cd: $48
    ld bc, HeaderOldLicenseeCode                  ; $50ce: $01 $4b $01
    ld c, a                                       ; $50d1: $4f
    ld bc, $0153                                  ; $50d2: $01 $53 $01
    ld d, a                                       ; $50d5: $57
    ld bc, $015b                                  ; $50d6: $01 $5b $01
    ld e, [hl]                                    ; $50d9: $5e
    ld bc, $0161                                  ; $50da: $01 $61 $01
    ld h, [hl]                                    ; $50dd: $66
    ld bc, $0169                                  ; $50de: $01 $69 $01
    ld l, l                                       ; $50e1: $6d
    ld bc, $0171                                  ; $50e2: $01 $71 $01
    ld [hl], h                                    ; $50e5: $74
    ld bc, $0178                                  ; $50e6: $01 $78 $01
    ld a, e                                       ; $50e9: $7b
    ld bc, $017f                                  ; $50ea: $01 $7f $01
    add e                                         ; $50ed: $83
    ld bc, $0186                                  ; $50ee: $01 $86 $01
    adc e                                         ; $50f1: $8b
    ld bc, $018e                                  ; $50f2: $01 $8e $01
    sub d                                         ; $50f5: $92
    ld bc, $0196                                  ; $50f6: $01 $96 $01
    sbc c                                         ; $50f9: $99
    ld bc, $019d                                  ; $50fa: $01 $9d $01
    and c                                         ; $50fd: $a1
    ld bc, $01a4                                  ; $50fe: $01 $a4 $01
    xor b                                         ; $5101: $a8
    ld bc, $01ac                                  ; $5102: $01 $ac $01
    or b                                          ; $5105: $b0
    ld bc, $01b3                                  ; $5106: $01 $b3 $01
    cp b                                          ; $5109: $b8
    ld bc, $01bb                                  ; $510a: $01 $bb $01
    cp a                                          ; $510d: $bf
    ld bc, $01c2                                  ; $510e: $01 $c2 $01
    rst $00                                       ; $5111: $c7
    ld bc, $01ca                                  ; $5112: $01 $ca $01
    adc $01                                       ; $5115: $ce $01
    jp nc, $d501                                  ; $5117: $d2 $01 $d5

    ld bc, $01d9                                  ; $511a: $01 $d9 $01
    db $dd                                        ; $511d: $dd
    ld bc, $0004                                  ; $511e: $01 $04 $00
    scf                                           ; $5121: $37
    nop                                           ; $5122: $00
    ld b, d                                       ; $5123: $42
    nop                                           ; $5124: $00
    ld c, h                                       ; $5125: $4c
    nop                                           ; $5126: $00

    db $56, $00, $5d, $00, $68, $00

    ld l, [hl]                                    ; $512d: $6e
    nop                                           ; $512e: $00
    ld [hl], l                                    ; $512f: $75
    nop                                           ; $5130: $00
    ld a, e                                       ; $5131: $7b
    nop                                           ; $5132: $00
    add c                                         ; $5133: $81
    nop                                           ; $5134: $00

    db $87, $00, $8c, $00, $92, $00, $97, $00

    sbc l                                         ; $513d: $9d
    nop                                           ; $513e: $00

    db $a2, $00, $a7, $00

    xor h                                         ; $5143: $ac
    nop                                           ; $5144: $00
    or c                                          ; $5145: $b1
    nop                                           ; $5146: $00
    or [hl]                                       ; $5147: $b6
    nop                                           ; $5148: $00
    cp e                                          ; $5149: $bb
    nop                                           ; $514a: $00
    ret nz                                        ; $514b: $c0

    nop                                           ; $514c: $00
    push bc                                       ; $514d: $c5
    nop                                           ; $514e: $00
    ret                                           ; $514f: $c9


    nop                                           ; $5150: $00
    adc $00                                       ; $5151: $ce $00
    db $d3                                        ; $5153: $d3
    nop                                           ; $5154: $00

    db $d8, $00

    call c, $e100                                 ; $5157: $dc $00 $e1
    nop                                           ; $515a: $00

    db $e6, $00

    db $ea                                        ; $515d: $ea
    nop                                           ; $515e: $00

    db $ef, $00, $f3, $00

    ld hl, sp+$00                                 ; $5163: $f8 $00
    db $fc                                        ; $5165: $fc
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    ld bc, $0106                                  ; $5168: $01 $06 $01
    ld a, [bc]                                    ; $516b: $0a
    ld bc, $010e                                  ; $516c: $01 $0e $01
    inc de                                        ; $516f: $13
    ld bc, $0117                                  ; $5170: $01 $17 $01
    inc e                                         ; $5173: $1c
    ld bc, $0120                                  ; $5174: $01 $20 $01
    inc h                                         ; $5177: $24
    ld bc, $0129                                  ; $5178: $01 $29 $01
    ld l, $01                                     ; $517b: $2e $01
    ld [hl-], a                                   ; $517d: $32
    ld bc, $0136                                  ; $517e: $01 $36 $01
    ld a, [hl-]                                   ; $5181: $3a
    ld bc, HeaderManufacturerCode                 ; $5182: $01 $3f $01
    ld b, e                                       ; $5185: $43
    ld bc, HeaderROMSize                          ; $5186: $01 $48 $01
    ld c, l                                       ; $5189: $4d
    ld bc, $0151                                  ; $518a: $01 $51 $01
    ld d, [hl]                                    ; $518d: $56
    ld bc, $015a                                  ; $518e: $01 $5a $01
    ld e, [hl]                                    ; $5191: $5e
    ld bc, $0162                                  ; $5192: $01 $62 $01
    ld h, a                                       ; $5195: $67
    ld bc, $016b                                  ; $5196: $01 $6b $01
    ld [hl], b                                    ; $5199: $70
    ld bc, $0174                                  ; $519a: $01 $74 $01
    ld a, c                                       ; $519d: $79
    ld bc, $017d                                  ; $519e: $01 $7d $01
    add d                                         ; $51a1: $82
    ld bc, $0186                                  ; $51a2: $01 $86 $01
    adc e                                         ; $51a5: $8b
    ld bc, $0190                                  ; $51a6: $01 $90 $01
    sub h                                         ; $51a9: $94
    ld bc, $0198                                  ; $51aa: $01 $98 $01
    sbc l                                         ; $51ad: $9d
    ld bc, $01a2                                  ; $51ae: $01 $a2 $01
    and [hl]                                      ; $51b1: $a6
    ld bc, $01aa                                  ; $51b2: $01 $aa $01
    xor a                                         ; $51b5: $af
    ld bc, $01b3                                  ; $51b6: $01 $b3 $01
    or a                                          ; $51b9: $b7
    ld bc, $01bc                                  ; $51ba: $01 $bc $01
    ret nz                                        ; $51bd: $c0

    ld bc, $01c5                                  ; $51be: $01 $c5 $01
    ret                                           ; $51c1: $c9


    ld bc, $01ce                                  ; $51c2: $01 $ce $01
    jp nc, $d701                                  ; $51c5: $d2 $01 $d7

    ld bc, $01dc                                  ; $51c8: $01 $dc $01
    push hl                                       ; $51cb: $e5
    ld d, c                                       ; $51cc: $51
    inc hl                                        ; $51cd: $23
    ld d, d                                       ; $51ce: $52
    ld h, c                                       ; $51cf: $61
    ld d, d                                       ; $51d0: $52
    sbc a                                         ; $51d1: $9f
    ld d, d                                       ; $51d2: $52
    db $dd                                        ; $51d3: $dd
    ld d, d                                       ; $51d4: $52
    dec de                                        ; $51d5: $1b
    ld d, e                                       ; $51d6: $53
    ld e, c                                       ; $51d7: $59
    ld d, e                                       ; $51d8: $53
    sub a                                         ; $51d9: $97
    ld d, e                                       ; $51da: $53
    push de                                       ; $51db: $d5
    ld d, e                                       ; $51dc: $53
    inc de                                        ; $51dd: $13
    ld d, h                                       ; $51de: $54
    ld d, c                                       ; $51df: $51
    ld d, h                                       ; $51e0: $54
    adc a                                         ; $51e1: $8f
    ld d, h                                       ; $51e2: $54

    db $cd, $54

    ld bc, $0e00                                  ; $51e5: $01 $00 $0e
    nop                                           ; $51e8: $00
    dec de                                        ; $51e9: $1b
    nop                                           ; $51ea: $00
    inc h                                         ; $51eb: $24
    nop                                           ; $51ec: $00
    inc l                                         ; $51ed: $2c
    nop                                           ; $51ee: $00
    ld [hl-], a                                   ; $51ef: $32
    nop                                           ; $51f0: $00
    jr c, jr_038_51f3                             ; $51f1: $38 $00

jr_038_51f3:
    dec a                                         ; $51f3: $3d
    nop                                           ; $51f4: $00
    ld b, d                                       ; $51f5: $42
    nop                                           ; $51f6: $00
    ld c, c                                       ; $51f7: $49
    nop                                           ; $51f8: $00
    ld c, l                                       ; $51f9: $4d
    nop                                           ; $51fa: $00
    ld d, b                                       ; $51fb: $50
    nop                                           ; $51fc: $00
    ld d, h                                       ; $51fd: $54
    nop                                           ; $51fe: $00
    ld e, b                                       ; $51ff: $58
    nop                                           ; $5200: $00
    ld e, e                                       ; $5201: $5b
    nop                                           ; $5202: $00
    ld e, [hl]                                    ; $5203: $5e
    nop                                           ; $5204: $00
    ld h, b                                       ; $5205: $60
    nop                                           ; $5206: $00
    ld h, e                                       ; $5207: $63
    nop                                           ; $5208: $00
    ld h, l                                       ; $5209: $65
    nop                                           ; $520a: $00
    ld l, b                                       ; $520b: $68
    nop                                           ; $520c: $00
    ld l, d                                       ; $520d: $6a
    nop                                           ; $520e: $00
    ld l, h                                       ; $520f: $6c
    nop                                           ; $5210: $00
    ld l, a                                       ; $5211: $6f
    nop                                           ; $5212: $00
    ld [hl], b                                    ; $5213: $70
    nop                                           ; $5214: $00
    ld [hl], d                                    ; $5215: $72
    nop                                           ; $5216: $00
    ld [hl], e                                    ; $5217: $73
    nop                                           ; $5218: $00
    ld [hl], l                                    ; $5219: $75
    nop                                           ; $521a: $00
    halt                                          ; $521b: $76
    nop                                           ; $521c: $00
    ld a, b                                       ; $521d: $78
    nop                                           ; $521e: $00
    ld a, c                                       ; $521f: $79
    nop                                           ; $5220: $00
    ld a, d                                       ; $5221: $7a
    nop                                           ; $5222: $00
    ld bc, $1000                                  ; $5223: $01 $00 $10
    nop                                           ; $5226: $00
    ld e, $00                                     ; $5227: $1e $00
    daa                                           ; $5229: $27
    nop                                           ; $522a: $00
    jr nc, jr_038_522d                            ; $522b: $30 $00

jr_038_522d:
    ld [hl], $00                                  ; $522d: $36 $00
    dec a                                         ; $522f: $3d
    nop                                           ; $5230: $00
    ld b, d                                       ; $5231: $42
    nop                                           ; $5232: $00
    ld c, b                                       ; $5233: $48
    nop                                           ; $5234: $00
    ld c, [hl]                                    ; $5235: $4e
    nop                                           ; $5236: $00
    ld d, e                                       ; $5237: $53
    nop                                           ; $5238: $00
    ld d, [hl]                                    ; $5239: $56
    nop                                           ; $523a: $00
    ld e, d                                       ; $523b: $5a
    nop                                           ; $523c: $00
    ld e, l                                       ; $523d: $5d
    nop                                           ; $523e: $00
    ld h, b                                       ; $523f: $60
    nop                                           ; $5240: $00
    ld h, e                                       ; $5241: $63
    nop                                           ; $5242: $00
    ld h, [hl]                                    ; $5243: $66
    nop                                           ; $5244: $00
    ld l, b                                       ; $5245: $68
    nop                                           ; $5246: $00
    ld l, e                                       ; $5247: $6b
    nop                                           ; $5248: $00
    ld l, l                                       ; $5249: $6d
    nop                                           ; $524a: $00
    ld l, a                                       ; $524b: $6f
    nop                                           ; $524c: $00
    ld [hl], c                                    ; $524d: $71
    nop                                           ; $524e: $00
    ld [hl], e                                    ; $524f: $73
    nop                                           ; $5250: $00
    ld [hl], h                                    ; $5251: $74
    nop                                           ; $5252: $00
    halt                                          ; $5253: $76
    nop                                           ; $5254: $00
    ld [hl], a                                    ; $5255: $77
    nop                                           ; $5256: $00
    ld a, c                                       ; $5257: $79
    nop                                           ; $5258: $00
    ld a, d                                       ; $5259: $7a
    nop                                           ; $525a: $00
    ld a, e                                       ; $525b: $7b
    nop                                           ; $525c: $00
    ld a, l                                       ; $525d: $7d
    nop                                           ; $525e: $00
    ld a, [hl]                                    ; $525f: $7e
    nop                                           ; $5260: $00
    ld bc, $1100                                  ; $5261: $01 $00 $11
    nop                                           ; $5264: $00
    jr nz, jr_038_5267                            ; $5265: $20 $00

jr_038_5267:
    ld a, [hl+]                                   ; $5267: $2a
    nop                                           ; $5268: $00
    ld [hl-], a                                   ; $5269: $32
    nop                                           ; $526a: $00
    add hl, sp                                    ; $526b: $39
    nop                                           ; $526c: $00
    ld b, b                                       ; $526d: $40
    nop                                           ; $526e: $00
    ld b, [hl]                                    ; $526f: $46
    nop                                           ; $5270: $00
    ld c, [hl]                                    ; $5271: $4e
    nop                                           ; $5272: $00
    ld d, d                                       ; $5273: $52
    nop                                           ; $5274: $00
    ld d, [hl]                                    ; $5275: $56
    nop                                           ; $5276: $00
    ld e, e                                       ; $5277: $5b
    nop                                           ; $5278: $00
    ld e, a                                       ; $5279: $5f
    nop                                           ; $527a: $00
    ld h, d                                       ; $527b: $62
    nop                                           ; $527c: $00
    ld h, l                                       ; $527d: $65
    nop                                           ; $527e: $00
    ld l, b                                       ; $527f: $68
    nop                                           ; $5280: $00
    ld l, e                                       ; $5281: $6b
    nop                                           ; $5282: $00
    ld l, [hl]                                    ; $5283: $6e
    nop                                           ; $5284: $00
    ld [hl], b                                    ; $5285: $70
    nop                                           ; $5286: $00
    ld [hl], d                                    ; $5287: $72
    nop                                           ; $5288: $00
    ld [hl], h                                    ; $5289: $74
    nop                                           ; $528a: $00
    halt                                          ; $528b: $76
    nop                                           ; $528c: $00
    ld a, b                                       ; $528d: $78
    nop                                           ; $528e: $00
    ld a, c                                       ; $528f: $79
    nop                                           ; $5290: $00
    ld a, e                                       ; $5291: $7b
    nop                                           ; $5292: $00
    ld a, l                                       ; $5293: $7d
    nop                                           ; $5294: $00
    ld a, [hl]                                    ; $5295: $7e
    nop                                           ; $5296: $00
    ld a, a                                       ; $5297: $7f
    nop                                           ; $5298: $00
    add c                                         ; $5299: $81
    nop                                           ; $529a: $00
    add d                                         ; $529b: $82
    nop                                           ; $529c: $00
    add e                                         ; $529d: $83
    nop                                           ; $529e: $00
    ld bc, $1200                                  ; $529f: $01 $00 $12
    nop                                           ; $52a2: $00
    inc e                                         ; $52a3: $1c
    nop                                           ; $52a4: $00
    dec h                                         ; $52a5: $25
    nop                                           ; $52a6: $00
    inc l                                         ; $52a7: $2c
    nop                                           ; $52a8: $00
    inc sp                                        ; $52a9: $33
    nop                                           ; $52aa: $00
    add hl, sp                                    ; $52ab: $39
    nop                                           ; $52ac: $00
    ccf                                           ; $52ad: $3f
    nop                                           ; $52ae: $00
    ld b, l                                       ; $52af: $45
    nop                                           ; $52b0: $00
    ld c, d                                       ; $52b1: $4a
    nop                                           ; $52b2: $00
    ld c, [hl]                                    ; $52b3: $4e
    nop                                           ; $52b4: $00
    ld d, d                                       ; $52b5: $52
    nop                                           ; $52b6: $00
    ld d, [hl]                                    ; $52b7: $56
    nop                                           ; $52b8: $00
    ld e, d                                       ; $52b9: $5a
    nop                                           ; $52ba: $00
    ld e, l                                       ; $52bb: $5d
    nop                                           ; $52bc: $00
    ld h, b                                       ; $52bd: $60
    nop                                           ; $52be: $00
    ld h, e                                       ; $52bf: $63
    nop                                           ; $52c0: $00
    ld h, a                                       ; $52c1: $67
    nop                                           ; $52c2: $00
    ld l, e                                       ; $52c3: $6b
    nop                                           ; $52c4: $00
    ld l, l                                       ; $52c5: $6d
    nop                                           ; $52c6: $00
    ld [hl], b                                    ; $52c7: $70
    nop                                           ; $52c8: $00
    ld [hl], e                                    ; $52c9: $73
    nop                                           ; $52ca: $00
    ld [hl], l                                    ; $52cb: $75
    nop                                           ; $52cc: $00
    ld a, b                                       ; $52cd: $78
    nop                                           ; $52ce: $00
    ld a, d                                       ; $52cf: $7a
    nop                                           ; $52d0: $00
    ld a, h                                       ; $52d1: $7c
    nop                                           ; $52d2: $00
    ld a, a                                       ; $52d3: $7f
    nop                                           ; $52d4: $00
    add c                                         ; $52d5: $81
    nop                                           ; $52d6: $00
    add e                                         ; $52d7: $83
    nop                                           ; $52d8: $00
    add l                                         ; $52d9: $85
    nop                                           ; $52da: $00
    adc b                                         ; $52db: $88
    nop                                           ; $52dc: $00
    ld bc, $1400                                  ; $52dd: $01 $00 $14
    nop                                           ; $52e0: $00
    rra                                           ; $52e1: $1f
    nop                                           ; $52e2: $00
    jr z, jr_038_52e5                             ; $52e3: $28 $00

jr_038_52e5:
    jr nc, jr_038_52e7                            ; $52e5: $30 $00

jr_038_52e7:
    ld [hl], $00                                  ; $52e7: $36 $00
    ccf                                           ; $52e9: $3f
    nop                                           ; $52ea: $00
    ld b, l                                       ; $52eb: $45
    nop                                           ; $52ec: $00
    ld c, d                                       ; $52ed: $4a
    nop                                           ; $52ee: $00
    ld c, a                                       ; $52ef: $4f
    nop                                           ; $52f0: $00
    ld d, e                                       ; $52f1: $53
    nop                                           ; $52f2: $00
    ld d, a                                       ; $52f3: $57
    nop                                           ; $52f4: $00
    ld e, e                                       ; $52f5: $5b
    nop                                           ; $52f6: $00
    ld e, a                                       ; $52f7: $5f
    nop                                           ; $52f8: $00
    ld h, e                                       ; $52f9: $63
    nop                                           ; $52fa: $00
    ld h, a                                       ; $52fb: $67
    nop                                           ; $52fc: $00
    ld l, c                                       ; $52fd: $69
    nop                                           ; $52fe: $00
    ld l, l                                       ; $52ff: $6d
    nop                                           ; $5300: $00
    ld [hl], b                                    ; $5301: $70
    nop                                           ; $5302: $00
    ld [hl], d                                    ; $5303: $72
    nop                                           ; $5304: $00
    ld [hl], l                                    ; $5305: $75
    nop                                           ; $5306: $00
    ld a, b                                       ; $5307: $78
    nop                                           ; $5308: $00
    ld a, d                                       ; $5309: $7a
    nop                                           ; $530a: $00
    ld a, l                                       ; $530b: $7d
    nop                                           ; $530c: $00
    ld a, a                                       ; $530d: $7f
    nop                                           ; $530e: $00
    add c                                         ; $530f: $81
    nop                                           ; $5310: $00
    add e                                         ; $5311: $83
    nop                                           ; $5312: $00
    add l                                         ; $5313: $85
    nop                                           ; $5314: $00
    adc b                                         ; $5315: $88
    nop                                           ; $5316: $00
    adc c                                         ; $5317: $89
    nop                                           ; $5318: $00
    adc h                                         ; $5319: $8c
    nop                                           ; $531a: $00
    ld bc, $1500                                  ; $531b: $01 $00 $15
    nop                                           ; $531e: $00
    ld [hl+], a                                   ; $531f: $22
    nop                                           ; $5320: $00
    inc l                                         ; $5321: $2c
    nop                                           ; $5322: $00
    inc [hl]                                      ; $5323: $34
    nop                                           ; $5324: $00
    dec sp                                        ; $5325: $3b
    nop                                           ; $5326: $00
    ld b, h                                       ; $5327: $44
    nop                                           ; $5328: $00
    ld c, d                                       ; $5329: $4a
    nop                                           ; $532a: $00
    ld c, a                                       ; $532b: $4f
    nop                                           ; $532c: $00
    ld d, l                                       ; $532d: $55
    nop                                           ; $532e: $00
    ld e, d                                       ; $532f: $5a
    nop                                           ; $5330: $00
    ld e, [hl]                                    ; $5331: $5e
    nop                                           ; $5332: $00
    ld h, d                                       ; $5333: $62
    nop                                           ; $5334: $00
    ld h, l                                       ; $5335: $65
    nop                                           ; $5336: $00
    ld l, d                                       ; $5337: $6a
    nop                                           ; $5338: $00
    ld l, [hl]                                    ; $5339: $6e
    nop                                           ; $533a: $00
    ld [hl], c                                    ; $533b: $71
    nop                                           ; $533c: $00
    ld [hl], h                                    ; $533d: $74
    nop                                           ; $533e: $00
    halt                                          ; $533f: $76
    nop                                           ; $5340: $00
    ld a, c                                       ; $5341: $79
    nop                                           ; $5342: $00
    ld a, h                                       ; $5343: $7c
    nop                                           ; $5344: $00
    ld a, [hl]                                    ; $5345: $7e
    nop                                           ; $5346: $00
    add c                                         ; $5347: $81
    nop                                           ; $5348: $00
    add e                                         ; $5349: $83
    nop                                           ; $534a: $00
    add [hl]                                      ; $534b: $86
    nop                                           ; $534c: $00
    adc b                                         ; $534d: $88
    nop                                           ; $534e: $00
    adc d                                         ; $534f: $8a
    nop                                           ; $5350: $00
    adc h                                         ; $5351: $8c
    nop                                           ; $5352: $00
    adc [hl]                                      ; $5353: $8e
    nop                                           ; $5354: $00
    adc a                                         ; $5355: $8f
    nop                                           ; $5356: $00
    sub c                                         ; $5357: $91
    nop                                           ; $5358: $00
    ld bc, $1700                                  ; $5359: $01 $00 $17
    nop                                           ; $535c: $00
    inc h                                         ; $535d: $24
    nop                                           ; $535e: $00
    ld l, $00                                     ; $535f: $2e $00
    jr c, jr_038_5363                             ; $5361: $38 $00

jr_038_5363:
    ld b, b                                       ; $5363: $40
    nop                                           ; $5364: $00
    ld c, b                                       ; $5365: $48
    nop                                           ; $5366: $00
    ld c, [hl]                                    ; $5367: $4e
    nop                                           ; $5368: $00
    ld d, e                                       ; $5369: $53
    nop                                           ; $536a: $00
    ld e, c                                       ; $536b: $59
    nop                                           ; $536c: $00
    ld e, [hl]                                    ; $536d: $5e
    nop                                           ; $536e: $00
    ld h, e                                       ; $536f: $63
    nop                                           ; $5370: $00
    ld h, a                                       ; $5371: $67
    nop                                           ; $5372: $00
    ld l, h                                       ; $5373: $6c
    nop                                           ; $5374: $00
    ld l, a                                       ; $5375: $6f
    nop                                           ; $5376: $00
    ld [hl], e                                    ; $5377: $73
    nop                                           ; $5378: $00
    halt                                          ; $5379: $76
    nop                                           ; $537a: $00
    ld a, c                                       ; $537b: $79
    nop                                           ; $537c: $00
    ld a, h                                       ; $537d: $7c
    nop                                           ; $537e: $00
    add b                                         ; $537f: $80
    nop                                           ; $5380: $00
    add d                                         ; $5381: $82
    nop                                           ; $5382: $00
    add l                                         ; $5383: $85
    nop                                           ; $5384: $00
    add a                                         ; $5385: $87
    nop                                           ; $5386: $00
    adc c                                         ; $5387: $89
    nop                                           ; $5388: $00
    adc h                                         ; $5389: $8c
    nop                                           ; $538a: $00
    adc [hl]                                      ; $538b: $8e
    nop                                           ; $538c: $00
    sub b                                         ; $538d: $90
    nop                                           ; $538e: $00
    sub d                                         ; $538f: $92
    nop                                           ; $5390: $00
    sub h                                         ; $5391: $94
    nop                                           ; $5392: $00
    sub [hl]                                      ; $5393: $96
    nop                                           ; $5394: $00
    sbc b                                         ; $5395: $98
    nop                                           ; $5396: $00
    ld bc, $1800                                  ; $5397: $01 $00 $18
    nop                                           ; $539a: $00
    ld h, $00                                     ; $539b: $26 $00
    ld sp, $3a00                                  ; $539d: $31 $00 $3a
    nop                                           ; $53a0: $00
    ld b, l                                       ; $53a1: $45
    nop                                           ; $53a2: $00
    ld c, e                                       ; $53a3: $4b
    nop                                           ; $53a4: $00
    ld d, d                                       ; $53a5: $52
    nop                                           ; $53a6: $00
    ld e, b                                       ; $53a7: $58
    nop                                           ; $53a8: $00
    ld e, l                                       ; $53a9: $5d
    nop                                           ; $53aa: $00
    ld h, e                                       ; $53ab: $63
    nop                                           ; $53ac: $00
    ld l, b                                       ; $53ad: $68
    nop                                           ; $53ae: $00
    ld l, h                                       ; $53af: $6c
    nop                                           ; $53b0: $00
    ld [hl], c                                    ; $53b1: $71
    nop                                           ; $53b2: $00
    ld [hl], h                                    ; $53b3: $74
    nop                                           ; $53b4: $00
    ld a, b                                       ; $53b5: $78
    nop                                           ; $53b6: $00
    ld a, e                                       ; $53b7: $7b
    nop                                           ; $53b8: $00
    ld a, [hl]                                    ; $53b9: $7e
    nop                                           ; $53ba: $00
    add c                                         ; $53bb: $81
    nop                                           ; $53bc: $00
    add h                                         ; $53bd: $84
    nop                                           ; $53be: $00
    add a                                         ; $53bf: $87
    nop                                           ; $53c0: $00
    adc d                                         ; $53c1: $8a
    nop                                           ; $53c2: $00
    adc h                                         ; $53c3: $8c
    nop                                           ; $53c4: $00
    adc a                                         ; $53c5: $8f
    nop                                           ; $53c6: $00
    sub c                                         ; $53c7: $91
    nop                                           ; $53c8: $00
    sub e                                         ; $53c9: $93
    nop                                           ; $53ca: $00
    sub l                                         ; $53cb: $95
    nop                                           ; $53cc: $00
    sub a                                         ; $53cd: $97
    nop                                           ; $53ce: $00
    sbc c                                         ; $53cf: $99
    nop                                           ; $53d0: $00
    sbc e                                         ; $53d1: $9b
    nop                                           ; $53d2: $00
    sbc l                                         ; $53d3: $9d
    nop                                           ; $53d4: $00
    ld bc, $1a00                                  ; $53d5: $01 $00 $1a
    nop                                           ; $53d8: $00
    jr z, jr_038_53db                             ; $53d9: $28 $00

jr_038_53db:
    inc [hl]                                      ; $53db: $34
    nop                                           ; $53dc: $00
    ld a, $00                                     ; $53dd: $3e $00
    ld c, c                                       ; $53df: $49
    nop                                           ; $53e0: $00
    ld c, a                                       ; $53e1: $4f
    nop                                           ; $53e2: $00
    ld d, a                                       ; $53e3: $57
    nop                                           ; $53e4: $00
    ld e, l                                       ; $53e5: $5d
    nop                                           ; $53e6: $00
    ld h, d                                       ; $53e7: $62
    nop                                           ; $53e8: $00
    ld l, b                                       ; $53e9: $68
    nop                                           ; $53ea: $00
    ld l, l                                       ; $53eb: $6d
    nop                                           ; $53ec: $00
    ld [hl], d                                    ; $53ed: $72
    nop                                           ; $53ee: $00
    halt                                          ; $53ef: $76
    nop                                           ; $53f0: $00
    ld a, d                                       ; $53f1: $7a
    nop                                           ; $53f2: $00
    ld a, [hl]                                    ; $53f3: $7e
    nop                                           ; $53f4: $00
    add d                                         ; $53f5: $82
    nop                                           ; $53f6: $00
    add l                                         ; $53f7: $85
    nop                                           ; $53f8: $00
    adc b                                         ; $53f9: $88
    nop                                           ; $53fa: $00
    adc e                                         ; $53fb: $8b
    nop                                           ; $53fc: $00
    adc [hl]                                      ; $53fd: $8e
    nop                                           ; $53fe: $00
    sub c                                         ; $53ff: $91
    nop                                           ; $5400: $00
    sub e                                         ; $5401: $93
    nop                                           ; $5402: $00
    sub [hl]                                      ; $5403: $96
    nop                                           ; $5404: $00
    sub a                                         ; $5405: $97
    nop                                           ; $5406: $00
    sbc d                                         ; $5407: $9a
    nop                                           ; $5408: $00
    sbc h                                         ; $5409: $9c
    nop                                           ; $540a: $00
    sbc [hl]                                      ; $540b: $9e
    nop                                           ; $540c: $00
    and b                                         ; $540d: $a0
    nop                                           ; $540e: $00
    and d                                         ; $540f: $a2
    nop                                           ; $5410: $00
    and h                                         ; $5411: $a4
    nop                                           ; $5412: $00
    ld bc, $1b00                                  ; $5413: $01 $00 $1b
    nop                                           ; $5416: $00
    dec hl                                        ; $5417: $2b
    nop                                           ; $5418: $00
    jr c, jr_038_541b                             ; $5419: $38 $00

jr_038_541b:
    ld b, e                                       ; $541b: $43
    nop                                           ; $541c: $00
    ld c, h                                       ; $541d: $4c
    nop                                           ; $541e: $00
    ld d, l                                       ; $541f: $55
    nop                                           ; $5420: $00
    ld e, h                                       ; $5421: $5c
    nop                                           ; $5422: $00
    ld h, e                                       ; $5423: $63
    nop                                           ; $5424: $00
    ld l, c                                       ; $5425: $69
    nop                                           ; $5426: $00
    ld l, a                                       ; $5427: $6f
    nop                                           ; $5428: $00
    ld [hl], h                                    ; $5429: $74
    nop                                           ; $542a: $00
    ld a, c                                       ; $542b: $79
    nop                                           ; $542c: $00
    ld a, l                                       ; $542d: $7d
    nop                                           ; $542e: $00
    add c                                         ; $542f: $81
    nop                                           ; $5430: $00
    add l                                         ; $5431: $85
    nop                                           ; $5432: $00
    adc c                                         ; $5433: $89
    nop                                           ; $5434: $00
    adc h                                         ; $5435: $8c
    nop                                           ; $5436: $00
    adc a                                         ; $5437: $8f
    nop                                           ; $5438: $00
    sub e                                         ; $5439: $93
    nop                                           ; $543a: $00
    sub l                                         ; $543b: $95
    nop                                           ; $543c: $00
    sbc b                                         ; $543d: $98
    nop                                           ; $543e: $00
    sbc e                                         ; $543f: $9b
    nop                                           ; $5440: $00
    sbc [hl]                                      ; $5441: $9e
    nop                                           ; $5442: $00
    and b                                         ; $5443: $a0
    nop                                           ; $5444: $00
    and d                                         ; $5445: $a2
    nop                                           ; $5446: $00
    and h                                         ; $5447: $a4
    nop                                           ; $5448: $00
    and [hl]                                      ; $5449: $a6
    nop                                           ; $544a: $00
    xor b                                         ; $544b: $a8
    nop                                           ; $544c: $00
    xor e                                         ; $544d: $ab
    nop                                           ; $544e: $00
    xor l                                         ; $544f: $ad
    nop                                           ; $5450: $00
    ld bc, $1c00                                  ; $5451: $01 $00 $1c
    nop                                           ; $5454: $00
    dec hl                                        ; $5455: $2b
    nop                                           ; $5456: $00
    add hl, sp                                    ; $5457: $39
    nop                                           ; $5458: $00
    ld b, h                                       ; $5459: $44
    nop                                           ; $545a: $00
    ld c, h                                       ; $545b: $4c
    nop                                           ; $545c: $00
    ld d, l                                       ; $545d: $55
    nop                                           ; $545e: $00
    ld e, l                                       ; $545f: $5d
    nop                                           ; $5460: $00
    ld h, e                                       ; $5461: $63
    nop                                           ; $5462: $00
    ld l, d                                       ; $5463: $6a
    nop                                           ; $5464: $00
    ld l, a                                       ; $5465: $6f
    nop                                           ; $5466: $00
    ld [hl], h                                    ; $5467: $74
    nop                                           ; $5468: $00
    ld a, c                                       ; $5469: $79
    nop                                           ; $546a: $00
    ld a, [hl]                                    ; $546b: $7e
    nop                                           ; $546c: $00
    add e                                         ; $546d: $83
    nop                                           ; $546e: $00
    add a                                         ; $546f: $87
    nop                                           ; $5470: $00
    adc e                                         ; $5471: $8b
    nop                                           ; $5472: $00
    adc a                                         ; $5473: $8f
    nop                                           ; $5474: $00
    sub e                                         ; $5475: $93
    nop                                           ; $5476: $00
    sub [hl]                                      ; $5477: $96
    nop                                           ; $5478: $00
    sbc c                                         ; $5479: $99
    nop                                           ; $547a: $00
    sbc h                                         ; $547b: $9c
    nop                                           ; $547c: $00
    sbc a                                         ; $547d: $9f
    nop                                           ; $547e: $00
    and d                                         ; $547f: $a2
    nop                                           ; $5480: $00
    and l                                         ; $5481: $a5
    nop                                           ; $5482: $00
    and a                                         ; $5483: $a7
    nop                                           ; $5484: $00
    xor e                                         ; $5485: $ab
    nop                                           ; $5486: $00
    xor l                                         ; $5487: $ad
    nop                                           ; $5488: $00
    xor a                                         ; $5489: $af
    nop                                           ; $548a: $00
    or d                                          ; $548b: $b2
    nop                                           ; $548c: $00
    or e                                          ; $548d: $b3
    nop                                           ; $548e: $00
    ld bc, $1f00                                  ; $548f: $01 $00 $1f
    nop                                           ; $5492: $00
    jr nc, jr_038_5495                            ; $5493: $30 $00

jr_038_5495:
    ccf                                           ; $5495: $3f
    nop                                           ; $5496: $00
    ld c, d                                       ; $5497: $4a
    nop                                           ; $5498: $00
    ld d, e                                       ; $5499: $53
    nop                                           ; $549a: $00
    ld e, l                                       ; $549b: $5d
    nop                                           ; $549c: $00
    ld h, h                                       ; $549d: $64
    nop                                           ; $549e: $00
    ld l, e                                       ; $549f: $6b
    nop                                           ; $54a0: $00
    ld [hl], d                                    ; $54a1: $72
    nop                                           ; $54a2: $00
    ld a, c                                       ; $54a3: $79
    nop                                           ; $54a4: $00
    ld a, [hl]                                    ; $54a5: $7e
    nop                                           ; $54a6: $00
    add h                                         ; $54a7: $84
    nop                                           ; $54a8: $00
    adc c                                         ; $54a9: $89
    nop                                           ; $54aa: $00
    adc [hl]                                      ; $54ab: $8e
    nop                                           ; $54ac: $00
    sub e                                         ; $54ad: $93
    nop                                           ; $54ae: $00
    sub a                                         ; $54af: $97
    nop                                           ; $54b0: $00
    sbc e                                         ; $54b1: $9b
    nop                                           ; $54b2: $00
    sbc a                                         ; $54b3: $9f
    nop                                           ; $54b4: $00
    and e                                         ; $54b5: $a3
    nop                                           ; $54b6: $00
    and a                                         ; $54b7: $a7
    nop                                           ; $54b8: $00
    xor d                                         ; $54b9: $aa
    nop                                           ; $54ba: $00
    xor [hl]                                      ; $54bb: $ae
    nop                                           ; $54bc: $00
    or c                                          ; $54bd: $b1
    nop                                           ; $54be: $00
    or l                                          ; $54bf: $b5
    nop                                           ; $54c0: $00
    or a                                          ; $54c1: $b7
    nop                                           ; $54c2: $00
    cp d                                          ; $54c3: $ba
    nop                                           ; $54c4: $00
    cp l                                          ; $54c5: $bd
    nop                                           ; $54c6: $00
    ret nz                                        ; $54c7: $c0

    nop                                           ; $54c8: $00
    jp $c600                                      ; $54c9: $c3 $00 $c6


    nop                                           ; $54cc: $00
    db $01                                        ; $54cd: $01
    nop                                           ; $54ce: $00

    db $23

    nop                                           ; $54d0: $00
    jr c, jr_038_54d3                             ; $54d1: $38 $00

jr_038_54d3:
    ld c, b                                       ; $54d3: $48
    nop                                           ; $54d4: $00
    ld d, h                                       ; $54d5: $54
    nop                                           ; $54d6: $00
    ld e, a                                       ; $54d7: $5f
    nop                                           ; $54d8: $00
    ld l, c                                       ; $54d9: $69
    nop                                           ; $54da: $00
    ld [hl], d                                    ; $54db: $72
    nop                                           ; $54dc: $00
    ld a, e                                       ; $54dd: $7b
    nop                                           ; $54de: $00
    add e                                         ; $54df: $83
    nop                                           ; $54e0: $00
    adc d                                         ; $54e1: $8a
    nop                                           ; $54e2: $00
    sub b                                         ; $54e3: $90
    nop                                           ; $54e4: $00
    sub a                                         ; $54e5: $97
    nop                                           ; $54e6: $00
    sbc l                                         ; $54e7: $9d
    nop                                           ; $54e8: $00
    and d                                         ; $54e9: $a2
    nop                                           ; $54ea: $00
    xor b                                         ; $54eb: $a8
    nop                                           ; $54ec: $00
    xor l                                         ; $54ed: $ad
    nop                                           ; $54ee: $00
    or d                                          ; $54ef: $b2
    nop                                           ; $54f0: $00
    or a                                          ; $54f1: $b7
    nop                                           ; $54f2: $00
    cp h                                          ; $54f3: $bc
    nop                                           ; $54f4: $00
    ret nz                                        ; $54f5: $c0

    nop                                           ; $54f6: $00
    call nz, $c800                                ; $54f7: $c4 $00 $c8
    nop                                           ; $54fa: $00

    db $cd

    nop                                           ; $54fc: $00
    ret nc                                        ; $54fd: $d0

    nop                                           ; $54fe: $00
    call nc, $d700                                ; $54ff: $d4 $00 $d7
    nop                                           ; $5502: $00
    db $db                                        ; $5503: $db
    nop                                           ; $5504: $00
    rst $18                                       ; $5505: $df
    nop                                           ; $5506: $00
    ld [c], a                                     ; $5507: $e2
    nop                                           ; $5508: $00
    and $00                                       ; $5509: $e6 $00
    ld a, c                                       ; $550b: $79
    cp $0d                                        ; $550c: $fe $0d
    jr nc, jr_038_554e                            ; $550e: $30 $3e

    ld a, [$d32a]                                 ; $5510: $fa $2a $d3
    cp $02                                        ; $5513: $fe $02
    jr z, jr_038_553c                             ; $5515: $28 $25

    ld h, $00                                     ; $5517: $26 $00
    ld l, c                                       ; $5519: $69
    add hl, hl                                    ; $551a: $29
    ld bc, $5552                                  ; $551b: $01 $52 $55
    add hl, bc                                    ; $551e: $09
    ld a, [hl+]                                   ; $551f: $2a
    ld b, [hl]                                    ; $5520: $46
    ld c, a                                       ; $5521: $4f
    ld h, d                                       ; $5522: $62
    ld l, e                                       ; $5523: $6b
    res 0, l                                      ; $5524: $cb $85
    add hl, bc                                    ; $5526: $09
    bit 0, e                                      ; $5527: $cb $43
    jr nz, jr_038_552f                            ; $5529: $20 $04

    ld a, [hl+]                                   ; $552b: $2a
    ld h, [hl]                                    ; $552c: $66
    ld l, a                                       ; $552d: $6f
    ret                                           ; $552e: $c9


jr_038_552f:
    ld e, [hl]                                    ; $552f: $5e
    inc hl                                        ; $5530: $23
    ld d, [hl]                                    ; $5531: $56
    inc hl                                        ; $5532: $23
    ld a, [hl+]                                   ; $5533: $2a
    ld h, [hl]                                    ; $5534: $66
    ld l, a                                       ; $5535: $6f
    add hl, de                                    ; $5536: $19
    srl h                                         ; $5537: $cb $3c
    rr l                                          ; $5539: $cb $1d
    ret                                           ; $553b: $c9


jr_038_553c:
    ld h, $00                                     ; $553c: $26 $00
    ld l, c                                       ; $553e: $69
    add hl, hl                                    ; $553f: $29
    ld bc, $66c2                                  ; $5540: $01 $c2 $66
    add hl, bc                                    ; $5543: $09
    ld a, [hl+]                                   ; $5544: $2a
    ld h, [hl]                                    ; $5545: $66
    ld l, a                                       ; $5546: $6f
    res 0, e                                      ; $5547: $cb $83
    add hl, de                                    ; $5549: $19
    ld l, [hl]                                    ; $554a: $6e
    ld h, $00                                     ; $554b: $26 $00
    ret                                           ; $554d: $c9


jr_038_554e:
    ld hl, $0040                                  ; $554e: $21 $40 $00
    ret                                           ; $5551: $c9


    ld l, h                                       ; $5552: $6c
    ld d, l                                       ; $5553: $55
    ld h, [hl]                                    ; $5554: $66
    ld d, a                                       ; $5555: $57
    ld a, $59                                     ; $5556: $3e $59
    ld a, [c]                                     ; $5558: $f2
    ld e, d                                       ; $5559: $5a
    sbc [hl]                                      ; $555a: $9e
    ld e, h                                       ; $555b: $5c
    jr z, jr_038_55bc                             ; $555c: $28 $5e

    sub d                                         ; $555e: $92
    ld e, a                                       ; $555f: $5f
    ld [c], a                                     ; $5560: $e2
    ld h, b                                       ; $5561: $60
    ld e, $62                                     ; $5562: $1e $62
    ld b, h                                       ; $5564: $44
    ld h, e                                       ; $5565: $63
    ld d, h                                       ; $5566: $54
    ld h, h                                       ; $5567: $64
    ld b, [hl]                                    ; $5568: $46
    ld h, l                                       ; $5569: $65
    jr jr_038_55d2                                ; $556a: $18 $66

    inc b                                         ; $556c: $04
    nop                                           ; $556d: $00
    ld c, $00                                     ; $556e: $0e $00
    jr nz, jr_038_5572                            ; $5570: $20 $00

jr_038_5572:
    daa                                           ; $5572: $27
    nop                                           ; $5573: $00
    inc l                                         ; $5574: $2c
    nop                                           ; $5575: $00
    ld sp, $3600                                  ; $5576: $31 $00 $36
    nop                                           ; $5579: $00
    ld a, [hl-]                                   ; $557a: $3a
    nop                                           ; $557b: $00
    ccf                                           ; $557c: $3f
    nop                                           ; $557d: $00
    ld b, e                                       ; $557e: $43
    nop                                           ; $557f: $00
    ld b, [hl]                                    ; $5580: $46
    nop                                           ; $5581: $00
    ld c, d                                       ; $5582: $4a
    nop                                           ; $5583: $00
    ld c, l                                       ; $5584: $4d
    nop                                           ; $5585: $00
    ld d, b                                       ; $5586: $50
    nop                                           ; $5587: $00
    ld d, d                                       ; $5588: $52
    nop                                           ; $5589: $00
    ld d, l                                       ; $558a: $55
    nop                                           ; $558b: $00
    ld e, b                                       ; $558c: $58
    nop                                           ; $558d: $00
    ld e, d                                       ; $558e: $5a
    nop                                           ; $558f: $00
    ld e, l                                       ; $5590: $5d
    nop                                           ; $5591: $00
    ld h, b                                       ; $5592: $60
    nop                                           ; $5593: $00
    ld h, d                                       ; $5594: $62
    nop                                           ; $5595: $00
    ld h, l                                       ; $5596: $65
    nop                                           ; $5597: $00
    ld h, a                                       ; $5598: $67
    nop                                           ; $5599: $00
    ld l, c                                       ; $559a: $69
    nop                                           ; $559b: $00
    ld l, e                                       ; $559c: $6b
    nop                                           ; $559d: $00
    ld l, l                                       ; $559e: $6d
    nop                                           ; $559f: $00
    ld [hl], b                                    ; $55a0: $70
    nop                                           ; $55a1: $00
    ld [hl], d                                    ; $55a2: $72
    nop                                           ; $55a3: $00
    ld [hl], h                                    ; $55a4: $74
    nop                                           ; $55a5: $00
    halt                                          ; $55a6: $76
    nop                                           ; $55a7: $00
    ld a, b                                       ; $55a8: $78
    nop                                           ; $55a9: $00
    ld a, d                                       ; $55aa: $7a
    nop                                           ; $55ab: $00
    ld a, h                                       ; $55ac: $7c
    nop                                           ; $55ad: $00
    ld a, [hl]                                    ; $55ae: $7e
    nop                                           ; $55af: $00
    add b                                         ; $55b0: $80
    nop                                           ; $55b1: $00
    add e                                         ; $55b2: $83
    nop                                           ; $55b3: $00
    add h                                         ; $55b4: $84
    nop                                           ; $55b5: $00
    add [hl]                                      ; $55b6: $86
    nop                                           ; $55b7: $00
    adc b                                         ; $55b8: $88
    nop                                           ; $55b9: $00
    adc d                                         ; $55ba: $8a
    nop                                           ; $55bb: $00

jr_038_55bc:
    adc h                                         ; $55bc: $8c
    nop                                           ; $55bd: $00
    adc [hl]                                      ; $55be: $8e
    nop                                           ; $55bf: $00
    sub b                                         ; $55c0: $90
    nop                                           ; $55c1: $00
    sub c                                         ; $55c2: $91
    nop                                           ; $55c3: $00
    sub h                                         ; $55c4: $94
    nop                                           ; $55c5: $00
    sub l                                         ; $55c6: $95
    nop                                           ; $55c7: $00
    sub a                                         ; $55c8: $97
    nop                                           ; $55c9: $00
    sbc b                                         ; $55ca: $98
    nop                                           ; $55cb: $00
    sbc d                                         ; $55cc: $9a
    nop                                           ; $55cd: $00
    sbc h                                         ; $55ce: $9c
    nop                                           ; $55cf: $00
    sbc l                                         ; $55d0: $9d
    nop                                           ; $55d1: $00

jr_038_55d2:
    and b                                         ; $55d2: $a0
    nop                                           ; $55d3: $00
    and c                                         ; $55d4: $a1
    nop                                           ; $55d5: $00
    and e                                         ; $55d6: $a3
    nop                                           ; $55d7: $00
    and l                                         ; $55d8: $a5
    nop                                           ; $55d9: $00
    and [hl]                                      ; $55da: $a6
    nop                                           ; $55db: $00
    xor b                                         ; $55dc: $a8
    nop                                           ; $55dd: $00
    xor d                                         ; $55de: $aa
    nop                                           ; $55df: $00
    xor e                                         ; $55e0: $ab
    nop                                           ; $55e1: $00
    xor l                                         ; $55e2: $ad
    nop                                           ; $55e3: $00
    xor a                                         ; $55e4: $af
    nop                                           ; $55e5: $00
    or c                                          ; $55e6: $b1
    nop                                           ; $55e7: $00
    or e                                          ; $55e8: $b3
    nop                                           ; $55e9: $00
    or h                                          ; $55ea: $b4
    nop                                           ; $55eb: $00
    or [hl]                                       ; $55ec: $b6
    nop                                           ; $55ed: $00
    cp b                                          ; $55ee: $b8
    nop                                           ; $55ef: $00
    cp c                                          ; $55f0: $b9
    nop                                           ; $55f1: $00
    cp d                                          ; $55f2: $ba
    nop                                           ; $55f3: $00
    cp h                                          ; $55f4: $bc
    nop                                           ; $55f5: $00
    cp [hl]                                       ; $55f6: $be
    nop                                           ; $55f7: $00
    ret nz                                        ; $55f8: $c0

    nop                                           ; $55f9: $00
    pop bc                                        ; $55fa: $c1
    nop                                           ; $55fb: $00
    jp $c400                                      ; $55fc: $c3 $00 $c4


    nop                                           ; $55ff: $00
    push bc                                       ; $5600: $c5
    nop                                           ; $5601: $00
    ret z                                         ; $5602: $c8

    nop                                           ; $5603: $00
    jp z, $cb00                                   ; $5604: $ca $00 $cb

    nop                                           ; $5607: $00
    call $ce00                                    ; $5608: $cd $00 $ce
    nop                                           ; $560b: $00
    ret nc                                        ; $560c: $d0

    nop                                           ; $560d: $00
    pop de                                        ; $560e: $d1
    nop                                           ; $560f: $00
    db $d3                                        ; $5610: $d3
    nop                                           ; $5611: $00
    call nc, $d600                                ; $5612: $d4 $00 $d6
    nop                                           ; $5615: $00
    rst $10                                       ; $5616: $d7
    nop                                           ; $5617: $00
    reti                                          ; $5618: $d9


    nop                                           ; $5619: $00
    db $db                                        ; $561a: $db
    nop                                           ; $561b: $00
    call c, $de00                                 ; $561c: $dc $00 $de
    nop                                           ; $561f: $00
    rst $18                                       ; $5620: $df
    nop                                           ; $5621: $00
    pop hl                                        ; $5622: $e1
    nop                                           ; $5623: $00
    ld [c], a                                     ; $5624: $e2
    nop                                           ; $5625: $00
    db $e4                                        ; $5626: $e4
    nop                                           ; $5627: $00
    push hl                                       ; $5628: $e5
    nop                                           ; $5629: $00
    rst $20                                       ; $562a: $e7
    nop                                           ; $562b: $00
    add sp, $00                                   ; $562c: $e8 $00
    ld [$ec00], a                                 ; $562e: $ea $00 $ec
    nop                                           ; $5631: $00
    db $ed                                        ; $5632: $ed
    nop                                           ; $5633: $00
    rst $28                                       ; $5634: $ef
    nop                                           ; $5635: $00
    ldh a, [rP1]                                  ; $5636: $f0 $00
    ld a, [c]                                     ; $5638: $f2
    nop                                           ; $5639: $00
    di                                            ; $563a: $f3
    nop                                           ; $563b: $00
    push af                                       ; $563c: $f5
    nop                                           ; $563d: $00
    or $00                                        ; $563e: $f6 $00
    rst $30                                       ; $5640: $f7
    nop                                           ; $5641: $00
    ld sp, hl                                     ; $5642: $f9
    nop                                           ; $5643: $00
    ei                                            ; $5644: $fb
    nop                                           ; $5645: $00
    db $fd                                        ; $5646: $fd
    nop                                           ; $5647: $00
    cp $00                                        ; $5648: $fe $00
    rst $38                                       ; $564a: $ff
    nop                                           ; $564b: $00
    ld bc, $0301                                  ; $564c: $01 $01 $03
    ld bc, HeaderLogo                             ; $564f: $01 $04 $01
    ld b, $01                                     ; $5652: $06 $01
    rlca                                          ; $5654: $07
    ld bc, $0108                                  ; $5655: $01 $08 $01
    ld a, [bc]                                    ; $5658: $0a
    ld bc, $010b                                  ; $5659: $01 $0b $01
    dec c                                         ; $565c: $0d
    ld bc, $010e                                  ; $565d: $01 $0e $01
    db $10                                        ; $5660: $10
    ld bc, $0111                                  ; $5661: $01 $11 $01
    inc de                                        ; $5664: $13
    ld bc, $0115                                  ; $5665: $01 $15 $01
    ld d, $01                                     ; $5668: $16 $01
    jr jr_038_566d                                ; $566a: $18 $01

    add hl, de                                    ; $566c: $19

jr_038_566d:
    ld bc, $011b                                  ; $566d: $01 $1b $01
    inc e                                         ; $5670: $1c
    ld bc, $011e                                  ; $5671: $01 $1e $01
    rra                                           ; $5674: $1f
    ld bc, $0120                                  ; $5675: $01 $20 $01
    ld [hl+], a                                   ; $5678: $22
    ld bc, $0124                                  ; $5679: $01 $24 $01
    dec h                                         ; $567c: $25
    ld bc, $0127                                  ; $567d: $01 $27 $01
    jr z, jr_038_5683                             ; $5680: $28 $01

    ld a, [hl+]                                   ; $5682: $2a

jr_038_5683:
    ld bc, $012c                                  ; $5683: $01 $2c $01
    dec l                                         ; $5686: $2d
    ld bc, $012e                                  ; $5687: $01 $2e $01
    jr nc, @+$03                                  ; $568a: $30 $01

    ld sp, $3301                                  ; $568c: $31 $01 $33
    ld bc, HeaderTitle                            ; $568f: $01 $34 $01
    ld [hl], $01                                  ; $5692: $36 $01
    scf                                           ; $5694: $37
    ld bc, $0139                                  ; $5695: $01 $39 $01
    ld a, [hl-]                                   ; $5698: $3a
    ld bc, $013c                                  ; $5699: $01 $3c $01
    dec a                                         ; $569c: $3d
    ld bc, HeaderManufacturerCode                 ; $569d: $01 $3f $01
    ld b, b                                       ; $56a0: $40
    ld bc, $0142                                  ; $56a1: $01 $42 $01
    ld b, e                                       ; $56a4: $43
    ld bc, $0145                                  ; $56a5: $01 $45 $01
    ld b, [hl]                                    ; $56a8: $46
    ld bc, HeaderROMSize                          ; $56a9: $01 $48 $01
    ld c, c                                       ; $56ac: $49
    ld bc, HeaderDestinationCode                  ; $56ad: $01 $4a $01
    ld c, h                                       ; $56b0: $4c
    ld bc, HeaderGlobalChecksum                   ; $56b1: $01 $4e $01
    ld c, a                                       ; $56b4: $4f
    ld bc, $0150                                  ; $56b5: $01 $50 $01
    ld d, d                                       ; $56b8: $52
    ld bc, $0154                                  ; $56b9: $01 $54 $01
    ld d, l                                       ; $56bc: $55
    ld bc, $0156                                  ; $56bd: $01 $56 $01
    ld e, b                                       ; $56c0: $58
    ld bc, $015a                                  ; $56c1: $01 $5a $01
    ld e, e                                       ; $56c4: $5b
    ld bc, $015d                                  ; $56c5: $01 $5d $01
    ld e, [hl]                                    ; $56c8: $5e
    ld bc, $0160                                  ; $56c9: $01 $60 $01
    ld h, c                                       ; $56cc: $61
    ld bc, $0163                                  ; $56cd: $01 $63 $01
    ld h, h                                       ; $56d0: $64
    ld bc, $0166                                  ; $56d1: $01 $66 $01
    ld h, a                                       ; $56d4: $67
    ld bc, $0169                                  ; $56d5: $01 $69 $01
    ld l, d                                       ; $56d8: $6a
    ld bc, $016c                                  ; $56d9: $01 $6c $01
    ld l, l                                       ; $56dc: $6d
    ld bc, $016f                                  ; $56dd: $01 $6f $01
    ld [hl], b                                    ; $56e0: $70
    ld bc, $0172                                  ; $56e1: $01 $72 $01
    ld [hl], e                                    ; $56e4: $73
    ld bc, $0175                                  ; $56e5: $01 $75 $01
    halt                                          ; $56e8: $76
    ld bc, $0177                                  ; $56e9: $01 $77 $01
    ld a, c                                       ; $56ec: $79
    ld bc, $017b                                  ; $56ed: $01 $7b $01
    ld a, h                                       ; $56f0: $7c
    ld bc, $017e                                  ; $56f1: $01 $7e $01
    ld a, a                                       ; $56f4: $7f
    ld bc, $0181                                  ; $56f5: $01 $81 $01
    add e                                         ; $56f8: $83
    ld bc, $0184                                  ; $56f9: $01 $84 $01
    add l                                         ; $56fc: $85
    ld bc, $0187                                  ; $56fd: $01 $87 $01
    adc b                                         ; $5700: $88
    ld bc, $018a                                  ; $5701: $01 $8a $01
    adc e                                         ; $5704: $8b
    ld bc, $018d                                  ; $5705: $01 $8d $01
    adc [hl]                                      ; $5708: $8e
    ld bc, $0190                                  ; $5709: $01 $90 $01
    sub c                                         ; $570c: $91
    ld bc, $0193                                  ; $570d: $01 $93 $01
    sub h                                         ; $5710: $94
    ld bc, $0196                                  ; $5711: $01 $96 $01
    sbc b                                         ; $5714: $98
    ld bc, $0199                                  ; $5715: $01 $99 $01
    sbc d                                         ; $5718: $9a
    ld bc, $019c                                  ; $5719: $01 $9c $01
    sbc l                                         ; $571c: $9d
    ld bc, $019f                                  ; $571d: $01 $9f $01
    and b                                         ; $5720: $a0
    ld bc, $01a2                                  ; $5721: $01 $a2 $01
    and e                                         ; $5724: $a3
    ld bc, $01a5                                  ; $5725: $01 $a5 $01
    and [hl]                                      ; $5728: $a6
    ld bc, $01a8                                  ; $5729: $01 $a8 $01
    xor d                                         ; $572c: $aa
    ld bc, $01ab                                  ; $572d: $01 $ab $01
    xor h                                         ; $5730: $ac
    ld bc, $01ae                                  ; $5731: $01 $ae $01
    xor a                                         ; $5734: $af
    ld bc, $01b1                                  ; $5735: $01 $b1 $01
    or d                                          ; $5738: $b2
    ld bc, $01b4                                  ; $5739: $01 $b4 $01
    or l                                          ; $573c: $b5
    ld bc, $01b7                                  ; $573d: $01 $b7 $01
    cp b                                          ; $5740: $b8
    ld bc, $01ba                                  ; $5741: $01 $ba $01
    cp h                                          ; $5744: $bc
    ld bc, $01bd                                  ; $5745: $01 $bd $01
    cp a                                          ; $5748: $bf
    ld bc, $01c0                                  ; $5749: $01 $c0 $01
    jp nz, $c301                                  ; $574c: $c2 $01 $c3

    ld bc, $01c5                                  ; $574f: $01 $c5 $01
    add $01                                       ; $5752: $c6 $01
    ret z                                         ; $5754: $c8

    ld bc, $01c9                                  ; $5755: $01 $c9 $01
    rlc c                                         ; $5758: $cb $01
    call z, $ce01                                 ; $575a: $cc $01 $ce
    ld bc, $01cf                                  ; $575d: $01 $cf $01
    pop de                                        ; $5760: $d1
    ld bc, $01d2                                  ; $5761: $01 $d2 $01
    call nc, Call_000_0401                        ; $5764: $d4 $01 $04
    nop                                           ; $5767: $00
    rrca                                          ; $5768: $0f
    nop                                           ; $5769: $00
    inc h                                         ; $576a: $24
    nop                                           ; $576b: $00
    ld a, [hl+]                                   ; $576c: $2a
    nop                                           ; $576d: $00
    jr nc, jr_038_5770                            ; $576e: $30 $00

jr_038_5770:
    dec [hl]                                      ; $5770: $35
    nop                                           ; $5771: $00
    add hl, sp                                    ; $5772: $39
    nop                                           ; $5773: $00
    ccf                                           ; $5774: $3f
    nop                                           ; $5775: $00
    ld b, e                                       ; $5776: $43
    nop                                           ; $5777: $00
    ld b, [hl]                                    ; $5778: $46
    nop                                           ; $5779: $00
    ld c, d                                       ; $577a: $4a
    nop                                           ; $577b: $00
    ld c, l                                       ; $577c: $4d
    nop                                           ; $577d: $00
    ld d, b                                       ; $577e: $50
    nop                                           ; $577f: $00
    ld d, e                                       ; $5780: $53
    nop                                           ; $5781: $00
    ld d, [hl]                                    ; $5782: $56
    nop                                           ; $5783: $00
    ld e, c                                       ; $5784: $59
    nop                                           ; $5785: $00
    ld e, h                                       ; $5786: $5c
    nop                                           ; $5787: $00
    ld e, [hl]                                    ; $5788: $5e
    nop                                           ; $5789: $00
    ld h, c                                       ; $578a: $61
    nop                                           ; $578b: $00
    ld h, e                                       ; $578c: $63
    nop                                           ; $578d: $00
    ld h, [hl]                                    ; $578e: $66
    nop                                           ; $578f: $00
    ld l, c                                       ; $5790: $69
    nop                                           ; $5791: $00
    ld l, e                                       ; $5792: $6b
    nop                                           ; $5793: $00
    ld l, l                                       ; $5794: $6d
    nop                                           ; $5795: $00
    ld l, a                                       ; $5796: $6f
    nop                                           ; $5797: $00
    ld [hl], c                                    ; $5798: $71
    nop                                           ; $5799: $00
    ld [hl], h                                    ; $579a: $74
    nop                                           ; $579b: $00
    halt                                          ; $579c: $76
    nop                                           ; $579d: $00
    ld a, b                                       ; $579e: $78
    nop                                           ; $579f: $00
    ld a, d                                       ; $57a0: $7a
    nop                                           ; $57a1: $00
    ld a, h                                       ; $57a2: $7c
    nop                                           ; $57a3: $00
    ld a, [hl]                                    ; $57a4: $7e
    nop                                           ; $57a5: $00
    add b                                         ; $57a6: $80
    nop                                           ; $57a7: $00
    add d                                         ; $57a8: $82
    nop                                           ; $57a9: $00
    add l                                         ; $57aa: $85
    nop                                           ; $57ab: $00
    add [hl]                                      ; $57ac: $86
    nop                                           ; $57ad: $00
    adc b                                         ; $57ae: $88
    nop                                           ; $57af: $00
    adc e                                         ; $57b0: $8b
    nop                                           ; $57b1: $00
    adc h                                         ; $57b2: $8c
    nop                                           ; $57b3: $00
    adc [hl]                                      ; $57b4: $8e
    nop                                           ; $57b5: $00
    sub c                                         ; $57b6: $91
    nop                                           ; $57b7: $00
    sub d                                         ; $57b8: $92
    nop                                           ; $57b9: $00
    sub h                                         ; $57ba: $94
    nop                                           ; $57bb: $00
    sub [hl]                                      ; $57bc: $96
    nop                                           ; $57bd: $00
    sbc b                                         ; $57be: $98
    nop                                           ; $57bf: $00
    sbc d                                         ; $57c0: $9a
    nop                                           ; $57c1: $00
    sbc h                                         ; $57c2: $9c
    nop                                           ; $57c3: $00
    sbc [hl]                                      ; $57c4: $9e
    nop                                           ; $57c5: $00
    and b                                         ; $57c6: $a0
    nop                                           ; $57c7: $00
    and d                                         ; $57c8: $a2
    nop                                           ; $57c9: $00
    and e                                         ; $57ca: $a3
    nop                                           ; $57cb: $00
    and l                                         ; $57cc: $a5
    nop                                           ; $57cd: $00
    and a                                         ; $57ce: $a7
    nop                                           ; $57cf: $00
    xor b                                         ; $57d0: $a8
    nop                                           ; $57d1: $00
    xor d                                         ; $57d2: $aa
    nop                                           ; $57d3: $00
    xor l                                         ; $57d4: $ad
    nop                                           ; $57d5: $00
    xor [hl]                                      ; $57d6: $ae
    nop                                           ; $57d7: $00
    or b                                          ; $57d8: $b0
    nop                                           ; $57d9: $00
    or d                                          ; $57da: $b2
    nop                                           ; $57db: $00
    or h                                          ; $57dc: $b4
    nop                                           ; $57dd: $00
    or [hl]                                       ; $57de: $b6
    nop                                           ; $57df: $00
    or a                                          ; $57e0: $b7
    nop                                           ; $57e1: $00
    cp c                                          ; $57e2: $b9
    nop                                           ; $57e3: $00
    cp e                                          ; $57e4: $bb
    nop                                           ; $57e5: $00
    cp h                                          ; $57e6: $bc
    nop                                           ; $57e7: $00
    cp a                                          ; $57e8: $bf
    nop                                           ; $57e9: $00
    ret nz                                        ; $57ea: $c0

    nop                                           ; $57eb: $00
    jp nz, $c400                                  ; $57ec: $c2 $00 $c4

    nop                                           ; $57ef: $00
    add $00                                       ; $57f0: $c6 $00
    rst $00                                       ; $57f2: $c7
    nop                                           ; $57f3: $00
    ret                                           ; $57f4: $c9


    nop                                           ; $57f5: $00
    rlc b                                         ; $57f6: $cb $00
    call $ce00                                    ; $57f8: $cd $00 $ce
    nop                                           ; $57fb: $00
    ret nc                                        ; $57fc: $d0

    nop                                           ; $57fd: $00
    pop de                                        ; $57fe: $d1
    nop                                           ; $57ff: $00
    db $d3                                        ; $5800: $d3
    nop                                           ; $5801: $00
    push de                                       ; $5802: $d5
    nop                                           ; $5803: $00
    rst $10                                       ; $5804: $d7
    nop                                           ; $5805: $00
    reti                                          ; $5806: $d9


    nop                                           ; $5807: $00
    jp c, $dc00                                   ; $5808: $da $00 $dc

    nop                                           ; $580b: $00
    db $dd                                        ; $580c: $dd
    nop                                           ; $580d: $00
    ldh [rP1], a                                  ; $580e: $e0 $00
    pop hl                                        ; $5810: $e1
    nop                                           ; $5811: $00
    db $e3                                        ; $5812: $e3
    nop                                           ; $5813: $00
    db $e4                                        ; $5814: $e4
    nop                                           ; $5815: $00
    and $00                                       ; $5816: $e6 $00
    add sp, $00                                   ; $5818: $e8 $00
    ld [$eb00], a                                 ; $581a: $ea $00 $eb
    nop                                           ; $581d: $00
    db $ed                                        ; $581e: $ed
    nop                                           ; $581f: $00
    rst $28                                       ; $5820: $ef
    nop                                           ; $5821: $00
    ldh a, [rP1]                                  ; $5822: $f0 $00
    ld a, [c]                                     ; $5824: $f2
    nop                                           ; $5825: $00
    di                                            ; $5826: $f3
    nop                                           ; $5827: $00
    push af                                       ; $5828: $f5
    nop                                           ; $5829: $00
    rst $30                                       ; $582a: $f7
    nop                                           ; $582b: $00
    ld sp, hl                                     ; $582c: $f9
    nop                                           ; $582d: $00
    ld a, [$fc00]                                 ; $582e: $fa $00 $fc
    nop                                           ; $5831: $00
    cp $00                                        ; $5832: $fe $00
    rst $38                                       ; $5834: $ff
    nop                                           ; $5835: $00
    ld bc, $0301                                  ; $5836: $01 $01 $03
    ld bc, HeaderLogo                             ; $5839: $01 $04 $01
    ld b, $01                                     ; $583c: $06 $01
    ld [$0901], sp                                ; $583e: $08 $01 $09
    ld bc, $010b                                  ; $5841: $01 $0b $01
    dec c                                         ; $5844: $0d
    ld bc, $010e                                  ; $5845: $01 $0e $01
    db $10                                        ; $5848: $10
    ld bc, $0112                                  ; $5849: $01 $12 $01
    inc de                                        ; $584c: $13
    ld bc, $0115                                  ; $584d: $01 $15 $01
    rla                                           ; $5850: $17
    ld bc, $0118                                  ; $5851: $01 $18 $01
    ld a, [de]                                    ; $5854: $1a
    ld bc, $011c                                  ; $5855: $01 $1c $01
    dec e                                         ; $5858: $1d
    ld bc, $011f                                  ; $5859: $01 $1f $01
    ld hl, $2301                                  ; $585c: $21 $01 $23
    ld bc, $0124                                  ; $585f: $01 $24 $01
    ld h, $01                                     ; $5862: $26 $01
    daa                                           ; $5864: $27
    ld bc, $0129                                  ; $5865: $01 $29 $01
    dec hl                                        ; $5868: $2b
    ld bc, $012d                                  ; $5869: $01 $2d $01
    ld l, $01                                     ; $586c: $2e $01
    jr nc, jr_038_5871                            ; $586e: $30 $01

    ld [hl-], a                                   ; $5870: $32

jr_038_5871:
    ld bc, $0133                                  ; $5871: $01 $33 $01
    dec [hl]                                      ; $5874: $35
    ld bc, $0137                                  ; $5875: $01 $37 $01
    jr c, jr_038_587b                             ; $5878: $38 $01

    ld a, [hl-]                                   ; $587a: $3a

jr_038_587b:
    ld bc, $013c                                  ; $587b: $01 $3c $01
    dec a                                         ; $587e: $3d
    ld bc, HeaderManufacturerCode                 ; $587f: $01 $3f $01
    ld b, c                                       ; $5882: $41
    ld bc, HeaderCGBFlag                          ; $5883: $01 $43 $01
    ld b, h                                       ; $5886: $44
    ld bc, HeaderSGBFlag                          ; $5887: $01 $46 $01
    ld b, a                                       ; $588a: $47
    ld bc, HeaderRAMSize                          ; $588b: $01 $49 $01
    ld c, e                                       ; $588e: $4b
    ld bc, HeaderMaskROMVersion                   ; $588f: $01 $4c $01
    ld c, [hl]                                    ; $5892: $4e
    ld bc, $0150                                  ; $5893: $01 $50 $01
    ld d, d                                       ; $5896: $52
    ld bc, $0154                                  ; $5897: $01 $54 $01
    ld d, l                                       ; $589a: $55
    ld bc, $0157                                  ; $589b: $01 $57 $01
    ld e, b                                       ; $589e: $58
    ld bc, $015a                                  ; $589f: $01 $5a $01
    ld e, h                                       ; $58a2: $5c
    ld bc, $015d                                  ; $58a3: $01 $5d $01
    ld e, a                                       ; $58a6: $5f
    ld bc, $0161                                  ; $58a7: $01 $61 $01
    ld h, d                                       ; $58aa: $62
    ld bc, $0164                                  ; $58ab: $01 $64 $01
    ld h, [hl]                                    ; $58ae: $66
    ld bc, $0168                                  ; $58af: $01 $68 $01
    ld l, c                                       ; $58b2: $69
    ld bc, $016b                                  ; $58b3: $01 $6b $01
    ld l, h                                       ; $58b6: $6c
    ld bc, $016e                                  ; $58b7: $01 $6e $01
    ld [hl], b                                    ; $58ba: $70
    ld bc, $0172                                  ; $58bb: $01 $72 $01
    ld [hl], e                                    ; $58be: $73
    ld bc, $0175                                  ; $58bf: $01 $75 $01
    ld [hl], a                                    ; $58c2: $77
    ld bc, $0178                                  ; $58c3: $01 $78 $01
    ld a, d                                       ; $58c6: $7a
    ld bc, $017c                                  ; $58c7: $01 $7c $01
    ld a, [hl]                                    ; $58ca: $7e
    ld bc, $017f                                  ; $58cb: $01 $7f $01
    add c                                         ; $58ce: $81
    ld bc, $0182                                  ; $58cf: $01 $82 $01
    add l                                         ; $58d2: $85
    ld bc, $0186                                  ; $58d3: $01 $86 $01
    adc b                                         ; $58d6: $88
    ld bc, $0189                                  ; $58d7: $01 $89 $01
    adc e                                         ; $58da: $8b
    ld bc, $018d                                  ; $58db: $01 $8d $01
    adc a                                         ; $58de: $8f
    ld bc, $0190                                  ; $58df: $01 $90 $01
    sub d                                         ; $58e2: $92
    ld bc, $0193                                  ; $58e3: $01 $93 $01
    sub l                                         ; $58e6: $95
    ld bc, $0197                                  ; $58e7: $01 $97 $01
    sbc c                                         ; $58ea: $99
    ld bc, $019b                                  ; $58eb: $01 $9b $01
    sbc h                                         ; $58ee: $9c
    ld bc, $019e                                  ; $58ef: $01 $9e $01
    and b                                         ; $58f2: $a0
    ld bc, $01a1                                  ; $58f3: $01 $a1 $01
    and e                                         ; $58f6: $a3
    ld bc, $01a5                                  ; $58f7: $01 $a5 $01
    and [hl]                                      ; $58fa: $a6
    ld bc, $01a8                                  ; $58fb: $01 $a8 $01
    xor d                                         ; $58fe: $aa
    ld bc, $01ac                                  ; $58ff: $01 $ac $01
    xor l                                         ; $5902: $ad
    ld bc, $01af                                  ; $5903: $01 $af $01
    or c                                          ; $5906: $b1
    ld bc, $01b2                                  ; $5907: $01 $b2 $01
    or h                                          ; $590a: $b4
    ld bc, $01b6                                  ; $590b: $01 $b6 $01
    or a                                          ; $590e: $b7
    ld bc, $01b9                                  ; $590f: $01 $b9 $01
    cp e                                          ; $5912: $bb
    ld bc, $01bd                                  ; $5913: $01 $bd $01
    cp [hl]                                       ; $5916: $be
    ld bc, $01c0                                  ; $5917: $01 $c0 $01
    jp nz, $c301                                  ; $591a: $c2 $01 $c3

    ld bc, $01c5                                  ; $591d: $01 $c5 $01
    rst $00                                       ; $5920: $c7
    ld bc, $01c9                                  ; $5921: $01 $c9 $01
    jp z, $cc01                                   ; $5924: $ca $01 $cc

    ld bc, $01ce                                  ; $5927: $01 $ce $01
    rst $08                                       ; $592a: $cf
    ld bc, $01d1                                  ; $592b: $01 $d1 $01
    db $d3                                        ; $592e: $d3
    ld bc, $01d5                                  ; $592f: $01 $d5 $01
    sub $01                                       ; $5932: $d6 $01
    ret c                                         ; $5934: $d8

    ld bc, $01da                                  ; $5935: $01 $da $01
    call c, $dd01                                 ; $5938: $dc $01 $dd
    ld bc, $01df                                  ; $593b: $01 $df $01
    inc b                                         ; $593e: $04
    nop                                           ; $593f: $00
    stop                                          ; $5940: $10 $00
    daa                                           ; $5942: $27
    nop                                           ; $5943: $00
    dec l                                         ; $5944: $2d
    nop                                           ; $5945: $00
    inc sp                                        ; $5946: $33
    nop                                           ; $5947: $00
    jr c, jr_038_594a                             ; $5948: $38 $00

jr_038_594a:
    ld a, $00                                     ; $594a: $3e $00
    ld b, d                                       ; $594c: $42
    nop                                           ; $594d: $00
    ld b, [hl]                                    ; $594e: $46
    nop                                           ; $594f: $00
    ld c, d                                       ; $5950: $4a
    nop                                           ; $5951: $00
    ld c, l                                       ; $5952: $4d
    nop                                           ; $5953: $00
    ld d, b                                       ; $5954: $50
    nop                                           ; $5955: $00
    ld d, h                                       ; $5956: $54
    nop                                           ; $5957: $00
    ld d, a                                       ; $5958: $57
    nop                                           ; $5959: $00
    ld e, d                                       ; $595a: $5a
    nop                                           ; $595b: $00
    ld e, l                                       ; $595c: $5d
    nop                                           ; $595d: $00
    ld h, b                                       ; $595e: $60
    nop                                           ; $595f: $00
    ld h, d                                       ; $5960: $62
    nop                                           ; $5961: $00
    ld h, l                                       ; $5962: $65
    nop                                           ; $5963: $00
    ld h, a                                       ; $5964: $67
    nop                                           ; $5965: $00
    ld l, d                                       ; $5966: $6a
    nop                                           ; $5967: $00
    ld l, l                                       ; $5968: $6d
    nop                                           ; $5969: $00
    ld l, a                                       ; $596a: $6f
    nop                                           ; $596b: $00
    ld [hl], c                                    ; $596c: $71
    nop                                           ; $596d: $00
    ld [hl], h                                    ; $596e: $74
    nop                                           ; $596f: $00
    halt                                          ; $5970: $76
    nop                                           ; $5971: $00
    ld a, b                                       ; $5972: $78
    nop                                           ; $5973: $00
    ld a, e                                       ; $5974: $7b
    nop                                           ; $5975: $00
    ld a, l                                       ; $5976: $7d
    nop                                           ; $5977: $00
    ld a, a                                       ; $5978: $7f
    nop                                           ; $5979: $00
    add d                                         ; $597a: $82
    nop                                           ; $597b: $00
    add h                                         ; $597c: $84
    nop                                           ; $597d: $00
    add [hl]                                      ; $597e: $86
    nop                                           ; $597f: $00
    adc b                                         ; $5980: $88
    nop                                           ; $5981: $00
    adc d                                         ; $5982: $8a
    nop                                           ; $5983: $00
    adc h                                         ; $5984: $8c
    nop                                           ; $5985: $00
    adc [hl]                                      ; $5986: $8e
    nop                                           ; $5987: $00
    sub b                                         ; $5988: $90
    nop                                           ; $5989: $00
    sub d                                         ; $598a: $92
    nop                                           ; $598b: $00
    sub h                                         ; $598c: $94
    nop                                           ; $598d: $00
    sub [hl]                                      ; $598e: $96
    nop                                           ; $598f: $00
    sbc c                                         ; $5990: $99
    nop                                           ; $5991: $00
    sbc e                                         ; $5992: $9b
    nop                                           ; $5993: $00
    sbc h                                         ; $5994: $9c
    nop                                           ; $5995: $00
    sbc a                                         ; $5996: $9f
    nop                                           ; $5997: $00
    and c                                         ; $5998: $a1
    nop                                           ; $5999: $00
    and e                                         ; $599a: $a3
    nop                                           ; $599b: $00
    and l                                         ; $599c: $a5
    nop                                           ; $599d: $00
    and a                                         ; $599e: $a7
    nop                                           ; $599f: $00
    xor b                                         ; $59a0: $a8
    nop                                           ; $59a1: $00
    xor e                                         ; $59a2: $ab
    nop                                           ; $59a3: $00
    xor h                                         ; $59a4: $ac
    nop                                           ; $59a5: $00
    xor a                                         ; $59a6: $af
    nop                                           ; $59a7: $00
    or b                                          ; $59a8: $b0
    nop                                           ; $59a9: $00
    or d                                          ; $59aa: $b2
    nop                                           ; $59ab: $00
    or l                                          ; $59ac: $b5
    nop                                           ; $59ad: $00
    or [hl]                                       ; $59ae: $b6
    nop                                           ; $59af: $00
    cp b                                          ; $59b0: $b8
    nop                                           ; $59b1: $00
    cp d                                          ; $59b2: $ba
    nop                                           ; $59b3: $00
    cp h                                          ; $59b4: $bc
    nop                                           ; $59b5: $00
    cp [hl]                                       ; $59b6: $be
    nop                                           ; $59b7: $00
    ret nz                                        ; $59b8: $c0

    nop                                           ; $59b9: $00
    jp nz, $c300                                  ; $59ba: $c2 $00 $c3

    nop                                           ; $59bd: $00
    add $00                                       ; $59be: $c6 $00
    ret z                                         ; $59c0: $c8

    nop                                           ; $59c1: $00
    ret                                           ; $59c2: $c9


    nop                                           ; $59c3: $00
    rlc b                                         ; $59c4: $cb $00
    call $cf00                                    ; $59c6: $cd $00 $cf
    nop                                           ; $59c9: $00
    pop de                                        ; $59ca: $d1
    nop                                           ; $59cb: $00
    db $d3                                        ; $59cc: $d3
    nop                                           ; $59cd: $00
    call nc, $d600                                ; $59ce: $d4 $00 $d6
    nop                                           ; $59d1: $00
    ret c                                         ; $59d2: $d8

    nop                                           ; $59d3: $00
    jp c, $dc00                                   ; $59d4: $da $00 $dc

    nop                                           ; $59d7: $00
    sbc $00                                       ; $59d8: $de $00
    ldh [rP1], a                                  ; $59da: $e0 $00
    pop hl                                        ; $59dc: $e1
    nop                                           ; $59dd: $00
    db $e3                                        ; $59de: $e3
    nop                                           ; $59df: $00
    push hl                                       ; $59e0: $e5
    nop                                           ; $59e1: $00
    rst $20                                       ; $59e2: $e7
    nop                                           ; $59e3: $00
    jp hl                                         ; $59e4: $e9


    nop                                           ; $59e5: $00
    db $eb                                        ; $59e6: $eb
    nop                                           ; $59e7: $00
    db $ec                                        ; $59e8: $ec
    nop                                           ; $59e9: $00
    xor $00                                       ; $59ea: $ee $00
    ldh a, [rP1]                                  ; $59ec: $f0 $00
    ld a, [c]                                     ; $59ee: $f2
    nop                                           ; $59ef: $00
    db $f4                                        ; $59f0: $f4
    nop                                           ; $59f1: $00
    or $00                                        ; $59f2: $f6 $00
    rst $30                                       ; $59f4: $f7
    nop                                           ; $59f5: $00
    ld sp, hl                                     ; $59f6: $f9
    nop                                           ; $59f7: $00
    ei                                            ; $59f8: $fb
    nop                                           ; $59f9: $00
    db $fd                                        ; $59fa: $fd
    nop                                           ; $59fb: $00
    rst $38                                       ; $59fc: $ff
    nop                                           ; $59fd: $00
    nop                                           ; $59fe: $00
    ld bc, $0102                                  ; $59ff: $01 $02 $01
    inc b                                         ; $5a02: $04
    ld bc, $0106                                  ; $5a03: $01 $06 $01
    ld [$0a01], sp                                ; $5a06: $08 $01 $0a
    ld bc, $010b                                  ; $5a09: $01 $0b $01
    dec c                                         ; $5a0c: $0d
    ld bc, $010f                                  ; $5a0d: $01 $0f $01
    ld de, $1201                                  ; $5a10: $11 $01 $12
    ld bc, $0114                                  ; $5a13: $01 $14 $01
    ld d, $01                                     ; $5a16: $16 $01
    jr jr_038_5a1b                                ; $5a18: $18 $01

    ld a, [de]                                    ; $5a1a: $1a

jr_038_5a1b:
    ld bc, $011c                                  ; $5a1b: $01 $1c $01
    ld e, $01                                     ; $5a1e: $1e $01
    jr nz, @+$03                                  ; $5a20: $20 $01

    ld hl, $2301                                  ; $5a22: $21 $01 $23
    ld bc, $0125                                  ; $5a25: $01 $25 $01
    ld h, $01                                     ; $5a28: $26 $01
    jr z, jr_038_5a2d                             ; $5a2a: $28 $01

    ld a, [hl+]                                   ; $5a2c: $2a

jr_038_5a2d:
    ld bc, $012c                                  ; $5a2d: $01 $2c $01
    ld l, $01                                     ; $5a30: $2e $01
    jr nc, jr_038_5a35                            ; $5a32: $30 $01

    ld [hl-], a                                   ; $5a34: $32

jr_038_5a35:
    ld bc, $0133                                  ; $5a35: $01 $33 $01
    dec [hl]                                      ; $5a38: $35
    ld bc, $0137                                  ; $5a39: $01 $37 $01
    add hl, sp                                    ; $5a3c: $39
    ld bc, $013b                                  ; $5a3d: $01 $3b $01
    inc a                                         ; $5a40: $3c
    ld bc, $013e                                  ; $5a41: $01 $3e $01
    ld b, b                                       ; $5a44: $40
    ld bc, $0142                                  ; $5a45: $01 $42 $01
    ld b, h                                       ; $5a48: $44
    ld bc, HeaderSGBFlag                          ; $5a49: $01 $46 $01
    ld b, a                                       ; $5a4c: $47
    ld bc, HeaderRAMSize                          ; $5a4d: $01 $49 $01
    ld c, e                                       ; $5a50: $4b
    ld bc, HeaderComplementCheck                  ; $5a51: $01 $4d $01
    ld c, a                                       ; $5a54: $4f
    ld bc, $0151                                  ; $5a55: $01 $51 $01
    ld d, d                                       ; $5a58: $52
    ld bc, $0154                                  ; $5a59: $01 $54 $01
    ld d, [hl]                                    ; $5a5c: $56
    ld bc, $0158                                  ; $5a5d: $01 $58 $01
    ld e, d                                       ; $5a60: $5a
    ld bc, $015c                                  ; $5a61: $01 $5c $01
    ld e, l                                       ; $5a64: $5d
    ld bc, $015f                                  ; $5a65: $01 $5f $01
    ld h, c                                       ; $5a68: $61
    ld bc, $0163                                  ; $5a69: $01 $63 $01
    ld h, h                                       ; $5a6c: $64
    ld bc, $0167                                  ; $5a6d: $01 $67 $01
    ld l, b                                       ; $5a70: $68
    ld bc, $016a                                  ; $5a71: $01 $6a $01
    ld l, h                                       ; $5a74: $6c
    ld bc, $016e                                  ; $5a75: $01 $6e $01
    ld [hl], b                                    ; $5a78: $70
    ld bc, $0172                                  ; $5a79: $01 $72 $01
    ld [hl], e                                    ; $5a7c: $73
    ld bc, $0175                                  ; $5a7d: $01 $75 $01
    ld [hl], a                                    ; $5a80: $77
    ld bc, $0179                                  ; $5a81: $01 $79 $01
    ld a, e                                       ; $5a84: $7b
    ld bc, $017c                                  ; $5a85: $01 $7c $01
    ld a, a                                       ; $5a88: $7f
    ld bc, $0180                                  ; $5a89: $01 $80 $01
    add d                                         ; $5a8c: $82
    ld bc, $0184                                  ; $5a8d: $01 $84 $01
    add [hl]                                      ; $5a90: $86
    ld bc, $0188                                  ; $5a91: $01 $88 $01
    adc c                                         ; $5a94: $89
    ld bc, $018b                                  ; $5a95: $01 $8b $01
    adc l                                         ; $5a98: $8d
    ld bc, $018f                                  ; $5a99: $01 $8f $01
    sub c                                         ; $5a9c: $91
    ld bc, $0193                                  ; $5a9d: $01 $93 $01
    sub h                                         ; $5aa0: $94
    ld bc, $0196                                  ; $5aa1: $01 $96 $01
    sbc b                                         ; $5aa4: $98
    ld bc, $019a                                  ; $5aa5: $01 $9a $01
    sbc h                                         ; $5aa8: $9c
    ld bc, $019e                                  ; $5aa9: $01 $9e $01
    and b                                         ; $5aac: $a0
    ld bc, $01a1                                  ; $5aad: $01 $a1 $01
    and e                                         ; $5ab0: $a3
    ld bc, $01a5                                  ; $5ab1: $01 $a5 $01
    and a                                         ; $5ab4: $a7
    ld bc, $01a9                                  ; $5ab5: $01 $a9 $01
    xor e                                         ; $5ab8: $ab
    ld bc, $01ad                                  ; $5ab9: $01 $ad $01
    xor [hl]                                      ; $5abc: $ae
    ld bc, $01b0                                  ; $5abd: $01 $b0 $01
    or d                                          ; $5ac0: $b2
    ld bc, $01b4                                  ; $5ac1: $01 $b4 $01
    or [hl]                                       ; $5ac4: $b6
    ld bc, $01b8                                  ; $5ac5: $01 $b8 $01
    cp d                                          ; $5ac8: $ba
    ld bc, $01bc                                  ; $5ac9: $01 $bc $01
    cp [hl]                                       ; $5acc: $be
    ld bc, $01bf                                  ; $5acd: $01 $bf $01
    pop bc                                        ; $5ad0: $c1
    ld bc, $01c3                                  ; $5ad1: $01 $c3 $01
    push bc                                       ; $5ad4: $c5
    ld bc, $01c7                                  ; $5ad5: $01 $c7 $01
    ret                                           ; $5ad8: $c9


    ld bc, $01cb                                  ; $5ad9: $01 $cb $01
    call z, $ce01                                 ; $5adc: $cc $01 $ce
    ld bc, $01d0                                  ; $5adf: $01 $d0 $01
    jp nc, $d401                                  ; $5ae2: $d2 $01 $d4

    ld bc, $01d6                                  ; $5ae5: $01 $d6 $01
    ret c                                         ; $5ae8: $d8

    ld bc, $01da                                  ; $5ae9: $01 $da $01
    call c, $dd01                                 ; $5aec: $dc $01 $dd
    ld bc, $01df                                  ; $5aef: $01 $df $01
    inc bc                                        ; $5af2: $03
    nop                                           ; $5af3: $00
    rla                                           ; $5af4: $17
    nop                                           ; $5af5: $00
    rra                                           ; $5af6: $1f
    nop                                           ; $5af7: $00
    daa                                           ; $5af8: $27
    nop                                           ; $5af9: $00
    dec l                                         ; $5afa: $2d
    nop                                           ; $5afb: $00
    inc [hl]                                      ; $5afc: $34
    nop                                           ; $5afd: $00
    add hl, sp                                    ; $5afe: $39
    nop                                           ; $5aff: $00
    ld a, $00                                     ; $5b00: $3e $00
    ld b, d                                       ; $5b02: $42
    nop                                           ; $5b03: $00
    ld b, [hl]                                    ; $5b04: $46
    nop                                           ; $5b05: $00
    ld c, d                                       ; $5b06: $4a
    nop                                           ; $5b07: $00
    ld c, l                                       ; $5b08: $4d
    nop                                           ; $5b09: $00
    ld d, d                                       ; $5b0a: $52
    nop                                           ; $5b0b: $00
    ld d, l                                       ; $5b0c: $55
    nop                                           ; $5b0d: $00
    ld e, b                                       ; $5b0e: $58
    nop                                           ; $5b0f: $00
    ld e, h                                       ; $5b10: $5c
    nop                                           ; $5b11: $00
    ld e, a                                       ; $5b12: $5f
    nop                                           ; $5b13: $00
    ld h, d                                       ; $5b14: $62
    nop                                           ; $5b15: $00
    ld h, l                                       ; $5b16: $65
    nop                                           ; $5b17: $00
    ld l, b                                       ; $5b18: $68
    nop                                           ; $5b19: $00
    ld l, e                                       ; $5b1a: $6b
    nop                                           ; $5b1b: $00
    ld l, [hl]                                    ; $5b1c: $6e
    nop                                           ; $5b1d: $00
    ld [hl], c                                    ; $5b1e: $71
    nop                                           ; $5b1f: $00
    ld [hl], e                                    ; $5b20: $73
    nop                                           ; $5b21: $00
    halt                                          ; $5b22: $76
    nop                                           ; $5b23: $00
    ld a, c                                       ; $5b24: $79
    nop                                           ; $5b25: $00
    ld a, e                                       ; $5b26: $7b
    nop                                           ; $5b27: $00
    ld a, [hl]                                    ; $5b28: $7e
    nop                                           ; $5b29: $00
    add c                                         ; $5b2a: $81
    nop                                           ; $5b2b: $00
    add e                                         ; $5b2c: $83
    nop                                           ; $5b2d: $00
    add [hl]                                      ; $5b2e: $86
    nop                                           ; $5b2f: $00
    adc b                                         ; $5b30: $88
    nop                                           ; $5b31: $00
    adc d                                         ; $5b32: $8a
    nop                                           ; $5b33: $00
    adc h                                         ; $5b34: $8c
    nop                                           ; $5b35: $00
    adc a                                         ; $5b36: $8f
    nop                                           ; $5b37: $00
    sub c                                         ; $5b38: $91
    nop                                           ; $5b39: $00
    sub h                                         ; $5b3a: $94
    nop                                           ; $5b3b: $00
    sub [hl]                                      ; $5b3c: $96
    nop                                           ; $5b3d: $00
    sbc c                                         ; $5b3e: $99
    nop                                           ; $5b3f: $00
    sbc e                                         ; $5b40: $9b
    nop                                           ; $5b41: $00
    sbc l                                         ; $5b42: $9d
    nop                                           ; $5b43: $00
    and b                                         ; $5b44: $a0
    nop                                           ; $5b45: $00
    and d                                         ; $5b46: $a2
    nop                                           ; $5b47: $00
    and h                                         ; $5b48: $a4
    nop                                           ; $5b49: $00
    and [hl]                                      ; $5b4a: $a6
    nop                                           ; $5b4b: $00
    xor b                                         ; $5b4c: $a8
    nop                                           ; $5b4d: $00
    xor d                                         ; $5b4e: $aa
    nop                                           ; $5b4f: $00
    xor l                                         ; $5b50: $ad
    nop                                           ; $5b51: $00
    xor a                                         ; $5b52: $af
    nop                                           ; $5b53: $00
    or c                                          ; $5b54: $b1
    nop                                           ; $5b55: $00
    or e                                          ; $5b56: $b3
    nop                                           ; $5b57: $00
    or [hl]                                       ; $5b58: $b6
    nop                                           ; $5b59: $00
    cp b                                          ; $5b5a: $b8
    nop                                           ; $5b5b: $00
    cp c                                          ; $5b5c: $b9
    nop                                           ; $5b5d: $00
    cp h                                          ; $5b5e: $bc
    nop                                           ; $5b5f: $00
    cp l                                          ; $5b60: $bd
    nop                                           ; $5b61: $00
    ret nz                                        ; $5b62: $c0

    nop                                           ; $5b63: $00
    jp nz, $c400                                  ; $5b64: $c2 $00 $c4

    nop                                           ; $5b67: $00
    add $00                                       ; $5b68: $c6 $00
    rst $00                                       ; $5b6a: $c7
    nop                                           ; $5b6b: $00
    jp z, $cc00                                   ; $5b6c: $ca $00 $cc

    nop                                           ; $5b6f: $00
    call $d000                                    ; $5b70: $cd $00 $d0
    nop                                           ; $5b73: $00
    jp nc, $d400                                  ; $5b74: $d2 $00 $d4

    nop                                           ; $5b77: $00
    rst $10                                       ; $5b78: $d7
    nop                                           ; $5b79: $00
    ret c                                         ; $5b7a: $d8

    nop                                           ; $5b7b: $00
    jp c, $dc00                                   ; $5b7c: $da $00 $dc

    nop                                           ; $5b7f: $00
    sbc $00                                       ; $5b80: $de $00
    ldh [rP1], a                                  ; $5b82: $e0 $00
    ld [c], a                                     ; $5b84: $e2
    nop                                           ; $5b85: $00
    db $e4                                        ; $5b86: $e4
    nop                                           ; $5b87: $00
    push hl                                       ; $5b88: $e5
    nop                                           ; $5b89: $00
    add sp, $00                                   ; $5b8a: $e8 $00
    jp hl                                         ; $5b8c: $e9


    nop                                           ; $5b8d: $00
    db $eb                                        ; $5b8e: $eb
    nop                                           ; $5b8f: $00
    xor $00                                       ; $5b90: $ee $00
    rst $28                                       ; $5b92: $ef
    nop                                           ; $5b93: $00
    pop af                                        ; $5b94: $f1
    nop                                           ; $5b95: $00
    di                                            ; $5b96: $f3
    nop                                           ; $5b97: $00
    push af                                       ; $5b98: $f5
    nop                                           ; $5b99: $00
    rst $30                                       ; $5b9a: $f7
    nop                                           ; $5b9b: $00
    ld sp, hl                                     ; $5b9c: $f9
    nop                                           ; $5b9d: $00
    ei                                            ; $5b9e: $fb
    nop                                           ; $5b9f: $00
    db $fd                                        ; $5ba0: $fd
    nop                                           ; $5ba1: $00
    cp $00                                        ; $5ba2: $fe $00
    nop                                           ; $5ba4: $00
    ld bc, $0102                                  ; $5ba5: $01 $02 $01
    inc b                                         ; $5ba8: $04
    ld bc, $0106                                  ; $5ba9: $01 $06 $01
    ld [$0a01], sp                                ; $5bac: $08 $01 $0a
    ld bc, $010c                                  ; $5baf: $01 $0c $01
    ld c, $01                                     ; $5bb2: $0e $01
    rrca                                          ; $5bb4: $0f
    ld bc, $0111                                  ; $5bb5: $01 $11 $01
    inc de                                        ; $5bb8: $13
    ld bc, $0115                                  ; $5bb9: $01 $15 $01
    rla                                           ; $5bbc: $17
    ld bc, $0119                                  ; $5bbd: $01 $19 $01
    ld a, [de]                                    ; $5bc0: $1a
    ld bc, $011c                                  ; $5bc1: $01 $1c $01
    ld e, $01                                     ; $5bc4: $1e $01
    jr nz, jr_038_5bc9                            ; $5bc6: $20 $01

    ld [hl+], a                                   ; $5bc8: $22

jr_038_5bc9:
    ld bc, $0123                                  ; $5bc9: $01 $23 $01
    dec h                                         ; $5bcc: $25
    ld bc, $0127                                  ; $5bcd: $01 $27 $01
    add hl, hl                                    ; $5bd0: $29
    ld bc, $012a                                  ; $5bd1: $01 $2a $01
    dec l                                         ; $5bd4: $2d
    ld bc, $012e                                  ; $5bd5: $01 $2e $01
    jr nc, jr_038_5bdb                            ; $5bd8: $30 $01

    ld [hl-], a                                   ; $5bda: $32

jr_038_5bdb:
    ld bc, HeaderTitle                            ; $5bdb: $01 $34 $01
    dec [hl]                                      ; $5bde: $35
    ld bc, $0137                                  ; $5bdf: $01 $37 $01
    add hl, sp                                    ; $5be2: $39
    ld bc, $013b                                  ; $5be3: $01 $3b $01
    inc a                                         ; $5be6: $3c
    ld bc, HeaderManufacturerCode                 ; $5be7: $01 $3f $01
    ld b, c                                       ; $5bea: $41
    ld bc, $0142                                  ; $5beb: $01 $42 $01
    ld b, h                                       ; $5bee: $44
    ld bc, HeaderSGBFlag                          ; $5bef: $01 $46 $01
    ld b, a                                       ; $5bf2: $47
    ld bc, HeaderRAMSize                          ; $5bf3: $01 $49 $01
    ld c, e                                       ; $5bf6: $4b
    ld bc, HeaderComplementCheck                  ; $5bf7: $01 $4d $01
    ld c, a                                       ; $5bfa: $4f
    ld bc, $0151                                  ; $5bfb: $01 $51 $01
    ld d, d                                       ; $5bfe: $52
    ld bc, $0154                                  ; $5bff: $01 $54 $01
    ld d, [hl]                                    ; $5c02: $56
    ld bc, $0158                                  ; $5c03: $01 $58 $01
    ld e, d                                       ; $5c06: $5a
    ld bc, $015c                                  ; $5c07: $01 $5c $01
    ld e, l                                       ; $5c0a: $5d
    ld bc, $015f                                  ; $5c0b: $01 $5f $01
    ld h, c                                       ; $5c0e: $61
    ld bc, $0162                                  ; $5c0f: $01 $62 $01
    ld h, l                                       ; $5c12: $65
    ld bc, $0166                                  ; $5c13: $01 $66 $01
    ld l, b                                       ; $5c16: $68
    ld bc, $016a                                  ; $5c17: $01 $6a $01
    ld l, e                                       ; $5c1a: $6b
    ld bc, $016d                                  ; $5c1b: $01 $6d $01
    ld l, a                                       ; $5c1e: $6f
    ld bc, $0171                                  ; $5c1f: $01 $71 $01
    ld [hl], e                                    ; $5c22: $73
    ld bc, $0174                                  ; $5c23: $01 $74 $01
    halt                                          ; $5c26: $76
    ld bc, $0178                                  ; $5c27: $01 $78 $01
    ld a, c                                       ; $5c2a: $79
    ld bc, $017c                                  ; $5c2b: $01 $7c $01
    ld a, l                                       ; $5c2e: $7d
    ld bc, $017f                                  ; $5c2f: $01 $7f $01
    add c                                         ; $5c32: $81
    ld bc, $0182                                  ; $5c33: $01 $82 $01
    add h                                         ; $5c36: $84
    ld bc, $0186                                  ; $5c37: $01 $86 $01
    adc b                                         ; $5c3a: $88
    ld bc, $0189                                  ; $5c3b: $01 $89 $01
    adc h                                         ; $5c3e: $8c
    ld bc, $018d                                  ; $5c3f: $01 $8d $01
    adc a                                         ; $5c42: $8f
    ld bc, $0191                                  ; $5c43: $01 $91 $01
    sub e                                         ; $5c46: $93
    ld bc, $0194                                  ; $5c47: $01 $94 $01
    sub [hl]                                      ; $5c4a: $96
    ld bc, $0198                                  ; $5c4b: $01 $98 $01
    sbc c                                         ; $5c4e: $99
    ld bc, $019b                                  ; $5c4f: $01 $9b $01
    sbc l                                         ; $5c52: $9d
    ld bc, $019f                                  ; $5c53: $01 $9f $01
    and c                                         ; $5c56: $a1
    ld bc, $01a2                                  ; $5c57: $01 $a2 $01
    and h                                         ; $5c5a: $a4
    ld bc, $01a6                                  ; $5c5b: $01 $a6 $01
    xor b                                         ; $5c5e: $a8
    ld bc, $01aa                                  ; $5c5f: $01 $aa $01
    xor e                                         ; $5c62: $ab
    ld bc, $01ad                                  ; $5c63: $01 $ad $01
    xor a                                         ; $5c66: $af
    ld bc, $01b1                                  ; $5c67: $01 $b1 $01
    or e                                          ; $5c6a: $b3
    ld bc, $01b4                                  ; $5c6b: $01 $b4 $01
    or [hl]                                       ; $5c6e: $b6
    ld bc, $01b8                                  ; $5c6f: $01 $b8 $01
    cp c                                          ; $5c72: $b9
    ld bc, $01bb                                  ; $5c73: $01 $bb $01
    cp l                                          ; $5c76: $bd
    ld bc, $01bf                                  ; $5c77: $01 $bf $01
    ret nz                                        ; $5c7a: $c0

    ld bc, $01c2                                  ; $5c7b: $01 $c2 $01
    call nz, $c601                                ; $5c7e: $c4 $01 $c6
    ld bc, $01c8                                  ; $5c81: $01 $c8 $01
    ret                                           ; $5c84: $c9


    ld bc, $01cb                                  ; $5c85: $01 $cb $01
    call $ce01                                    ; $5c88: $cd $01 $ce
    ld bc, $01d1                                  ; $5c8b: $01 $d1 $01
    jp nc, $d401                                  ; $5c8e: $d2 $01 $d4

    ld bc, $01d6                                  ; $5c91: $01 $d6 $01
    ret c                                         ; $5c94: $d8

    ld bc, $01d9                                  ; $5c95: $01 $d9 $01
    db $db                                        ; $5c98: $db
    ld bc, $01dd                                  ; $5c99: $01 $dd $01
    rst $18                                       ; $5c9c: $df
    ld bc, $0003                                  ; $5c9d: $01 $03 $00
    inc e                                         ; $5ca0: $1c
    nop                                           ; $5ca1: $00
    inc h                                         ; $5ca2: $24
    nop                                           ; $5ca3: $00
    dec hl                                        ; $5ca4: $2b
    nop                                           ; $5ca5: $00
    ld sp, $3800                                  ; $5ca6: $31 $00 $38
    nop                                           ; $5ca9: $00
    dec a                                         ; $5caa: $3d
    nop                                           ; $5cab: $00
    ld b, d                                       ; $5cac: $42
    nop                                           ; $5cad: $00
    ld b, [hl]                                    ; $5cae: $46
    nop                                           ; $5caf: $00
    ld c, e                                       ; $5cb0: $4b
    nop                                           ; $5cb1: $00
    ld c, [hl]                                    ; $5cb2: $4e
    nop                                           ; $5cb3: $00
    ld d, d                                       ; $5cb4: $52
    nop                                           ; $5cb5: $00
    ld d, [hl]                                    ; $5cb6: $56
    nop                                           ; $5cb7: $00
    ld e, c                                       ; $5cb8: $59
    nop                                           ; $5cb9: $00
    ld e, l                                       ; $5cba: $5d
    nop                                           ; $5cbb: $00
    ld h, b                                       ; $5cbc: $60
    nop                                           ; $5cbd: $00
    ld h, e                                       ; $5cbe: $63
    nop                                           ; $5cbf: $00
    ld h, [hl]                                    ; $5cc0: $66
    nop                                           ; $5cc1: $00
    ld l, c                                       ; $5cc2: $69
    nop                                           ; $5cc3: $00
    ld l, h                                       ; $5cc4: $6c
    nop                                           ; $5cc5: $00
    ld l, a                                       ; $5cc6: $6f
    nop                                           ; $5cc7: $00
    ld [hl], d                                    ; $5cc8: $72
    nop                                           ; $5cc9: $00
    ld [hl], l                                    ; $5cca: $75
    nop                                           ; $5ccb: $00
    ld a, b                                       ; $5ccc: $78
    nop                                           ; $5ccd: $00
    ld a, e                                       ; $5cce: $7b
    nop                                           ; $5ccf: $00
    ld a, l                                       ; $5cd0: $7d
    nop                                           ; $5cd1: $00
    add b                                         ; $5cd2: $80
    nop                                           ; $5cd3: $00
    add d                                         ; $5cd4: $82
    nop                                           ; $5cd5: $00
    add l                                         ; $5cd6: $85
    nop                                           ; $5cd7: $00
    add a                                         ; $5cd8: $87
    nop                                           ; $5cd9: $00
    adc d                                         ; $5cda: $8a
    nop                                           ; $5cdb: $00
    adc h                                         ; $5cdc: $8c
    nop                                           ; $5cdd: $00
    adc a                                         ; $5cde: $8f
    nop                                           ; $5cdf: $00
    sub c                                         ; $5ce0: $91
    nop                                           ; $5ce1: $00
    sub h                                         ; $5ce2: $94
    nop                                           ; $5ce3: $00
    sub [hl]                                      ; $5ce4: $96
    nop                                           ; $5ce5: $00
    sbc c                                         ; $5ce6: $99
    nop                                           ; $5ce7: $00
    sbc e                                         ; $5ce8: $9b
    nop                                           ; $5ce9: $00
    sbc [hl]                                      ; $5cea: $9e
    nop                                           ; $5ceb: $00
    and b                                         ; $5cec: $a0
    nop                                           ; $5ced: $00
    and d                                         ; $5cee: $a2
    nop                                           ; $5cef: $00
    and l                                         ; $5cf0: $a5
    nop                                           ; $5cf1: $00
    and a                                         ; $5cf2: $a7
    nop                                           ; $5cf3: $00
    xor d                                         ; $5cf4: $aa
    nop                                           ; $5cf5: $00
    xor e                                         ; $5cf6: $ab
    nop                                           ; $5cf7: $00
    xor [hl]                                      ; $5cf8: $ae
    nop                                           ; $5cf9: $00
    or b                                          ; $5cfa: $b0
    nop                                           ; $5cfb: $00
    or d                                          ; $5cfc: $b2
    nop                                           ; $5cfd: $00
    or h                                          ; $5cfe: $b4
    nop                                           ; $5cff: $00
    or a                                          ; $5d00: $b7
    nop                                           ; $5d01: $00
    cp c                                          ; $5d02: $b9
    nop                                           ; $5d03: $00
    cp e                                          ; $5d04: $bb
    nop                                           ; $5d05: $00
    cp [hl]                                       ; $5d06: $be
    nop                                           ; $5d07: $00
    ret nz                                        ; $5d08: $c0

    nop                                           ; $5d09: $00
    jp nz, $c400                                  ; $5d0a: $c2 $00 $c4

    nop                                           ; $5d0d: $00
    add $00                                       ; $5d0e: $c6 $00
    ret                                           ; $5d10: $c9


    nop                                           ; $5d11: $00
    rlc b                                         ; $5d12: $cb $00
    call $cf00                                    ; $5d14: $cd $00 $cf
    nop                                           ; $5d17: $00
    pop de                                        ; $5d18: $d1
    nop                                           ; $5d19: $00
    db $d3                                        ; $5d1a: $d3
    nop                                           ; $5d1b: $00
    push de                                       ; $5d1c: $d5
    nop                                           ; $5d1d: $00
    ret c                                         ; $5d1e: $d8

    nop                                           ; $5d1f: $00
    jp c, $dc00                                   ; $5d20: $da $00 $dc

    nop                                           ; $5d23: $00
    sbc $00                                       ; $5d24: $de $00
    ldh [rP1], a                                  ; $5d26: $e0 $00
    ld [c], a                                     ; $5d28: $e2
    nop                                           ; $5d29: $00
    db $e4                                        ; $5d2a: $e4
    nop                                           ; $5d2b: $00
    and $00                                       ; $5d2c: $e6 $00
    add sp, $00                                   ; $5d2e: $e8 $00
    ld [$ec00], a                                 ; $5d30: $ea $00 $ec
    nop                                           ; $5d33: $00
    rst $28                                       ; $5d34: $ef
    nop                                           ; $5d35: $00
    ldh a, [rP1]                                  ; $5d36: $f0 $00
    di                                            ; $5d38: $f3
    nop                                           ; $5d39: $00
    push af                                       ; $5d3a: $f5
    nop                                           ; $5d3b: $00
    or $00                                        ; $5d3c: $f6 $00
    ld sp, hl                                     ; $5d3e: $f9
    nop                                           ; $5d3f: $00
    ei                                            ; $5d40: $fb
    nop                                           ; $5d41: $00
    db $fc                                        ; $5d42: $fc
    nop                                           ; $5d43: $00
    rst $38                                       ; $5d44: $ff
    nop                                           ; $5d45: $00
    ld bc, $0301                                  ; $5d46: $01 $01 $03
    ld bc, $0105                                  ; $5d49: $01 $05 $01
    rlca                                          ; $5d4c: $07
    ld bc, $0109                                  ; $5d4d: $01 $09 $01
    dec bc                                        ; $5d50: $0b
    ld bc, $010d                                  ; $5d51: $01 $0d $01
    rrca                                          ; $5d54: $0f
    ld bc, $0111                                  ; $5d55: $01 $11 $01
    inc de                                        ; $5d58: $13
    ld bc, $0115                                  ; $5d59: $01 $15 $01
    ld d, $01                                     ; $5d5c: $16 $01
    add hl, de                                    ; $5d5e: $19
    ld bc, $011b                                  ; $5d5f: $01 $1b $01
    dec e                                         ; $5d62: $1d
    ld bc, $011f                                  ; $5d63: $01 $1f $01
    ld hl, $2301                                  ; $5d66: $21 $01 $23
    ld bc, $0125                                  ; $5d69: $01 $25 $01
    daa                                           ; $5d6c: $27
    ld bc, $0129                                  ; $5d6d: $01 $29 $01
    ld a, [hl+]                                   ; $5d70: $2a
    ld bc, $012d                                  ; $5d71: $01 $2d $01
    ld l, $01                                     ; $5d74: $2e $01
    jr nc, jr_038_5d79                            ; $5d76: $30 $01

    ld [hl-], a                                   ; $5d78: $32

jr_038_5d79:
    ld bc, $0135                                  ; $5d79: $01 $35 $01
    ld [hl], $01                                  ; $5d7c: $36 $01
    add hl, sp                                    ; $5d7e: $39
    ld bc, $013b                                  ; $5d7f: $01 $3b $01
    dec a                                         ; $5d82: $3d
    ld bc, HeaderManufacturerCode                 ; $5d83: $01 $3f $01
    ld b, b                                       ; $5d86: $40
    ld bc, $0142                                  ; $5d87: $01 $42 $01
    ld b, h                                       ; $5d8a: $44
    ld bc, HeaderCartridgeType                    ; $5d8b: $01 $47 $01
    ld c, b                                       ; $5d8e: $48
    ld bc, HeaderDestinationCode                  ; $5d8f: $01 $4a $01
    ld c, h                                       ; $5d92: $4c
    ld bc, HeaderGlobalChecksum                   ; $5d93: $01 $4e $01
    ld d, c                                       ; $5d96: $51
    ld bc, $0153                                  ; $5d97: $01 $53 $01
    ld d, l                                       ; $5d9a: $55
    ld bc, $0156                                  ; $5d9b: $01 $56 $01
    ld e, c                                       ; $5d9e: $59
    ld bc, $015b                                  ; $5d9f: $01 $5b $01
    ld e, h                                       ; $5da2: $5c
    ld bc, $015e                                  ; $5da3: $01 $5e $01
    ld h, b                                       ; $5da6: $60
    ld bc, $0162                                  ; $5da7: $01 $62 $01
    ld h, h                                       ; $5daa: $64
    ld bc, $0166                                  ; $5dab: $01 $66 $01
    ld l, b                                       ; $5dae: $68
    ld bc, $016a                                  ; $5daf: $01 $6a $01
    ld l, h                                       ; $5db2: $6c
    ld bc, $016e                                  ; $5db3: $01 $6e $01
    ld [hl], b                                    ; $5db6: $70
    ld bc, $0172                                  ; $5db7: $01 $72 $01
    ld [hl], h                                    ; $5dba: $74
    ld bc, $0176                                  ; $5dbb: $01 $76 $01
    ld a, b                                       ; $5dbe: $78
    ld bc, $017a                                  ; $5dbf: $01 $7a $01
    ld a, h                                       ; $5dc2: $7c
    ld bc, $017e                                  ; $5dc3: $01 $7e $01
    add b                                         ; $5dc6: $80
    ld bc, $0181                                  ; $5dc7: $01 $81 $01
    add h                                         ; $5dca: $84
    ld bc, $0186                                  ; $5dcb: $01 $86 $01
    adc b                                         ; $5dce: $88
    ld bc, $018a                                  ; $5dcf: $01 $8a $01
    adc h                                         ; $5dd2: $8c
    ld bc, $018e                                  ; $5dd3: $01 $8e $01
    sub b                                         ; $5dd6: $90
    ld bc, $0192                                  ; $5dd7: $01 $92 $01
    sub h                                         ; $5dda: $94
    ld bc, $0195                                  ; $5ddb: $01 $95 $01
    sbc b                                         ; $5dde: $98
    ld bc, $0199                                  ; $5ddf: $01 $99 $01
    sbc h                                         ; $5de2: $9c
    ld bc, $019e                                  ; $5de3: $01 $9e $01
    and b                                         ; $5de6: $a0
    ld bc, $01a1                                  ; $5de7: $01 $a1 $01
    and e                                         ; $5dea: $a3
    ld bc, $01a5                                  ; $5deb: $01 $a5 $01
    and a                                         ; $5dee: $a7
    ld bc, $01a9                                  ; $5def: $01 $a9 $01
    xor e                                         ; $5df2: $ab
    ld bc, $01ad                                  ; $5df3: $01 $ad $01
    xor a                                         ; $5df6: $af
    ld bc, $01b1                                  ; $5df7: $01 $b1 $01
    or e                                          ; $5dfa: $b3
    ld bc, $01b5                                  ; $5dfb: $01 $b5 $01
    or a                                          ; $5dfe: $b7
    ld bc, $01b9                                  ; $5dff: $01 $b9 $01
    cp e                                          ; $5e02: $bb
    ld bc, $01bd                                  ; $5e03: $01 $bd $01
    cp a                                          ; $5e06: $bf
    ld bc, $01c1                                  ; $5e07: $01 $c1 $01
    jp $c501                                      ; $5e0a: $c3 $01 $c5


    ld bc, $01c7                                  ; $5e0d: $01 $c7 $01
    ret                                           ; $5e10: $c9


    ld bc, $01cb                                  ; $5e11: $01 $cb $01
    call $cf01                                    ; $5e14: $cd $01 $cf
    ld bc, $01d1                                  ; $5e17: $01 $d1 $01
    db $d3                                        ; $5e1a: $d3
    ld bc, $01d5                                  ; $5e1b: $01 $d5 $01
    rst $10                                       ; $5e1e: $d7
    ld bc, $01d8                                  ; $5e1f: $01 $d8 $01
    jp c, $dc01                                   ; $5e22: $da $01 $dc

    ld bc, $01df                                  ; $5e25: $01 $df $01
    inc b                                         ; $5e28: $04
    nop                                           ; $5e29: $00
    jr nz, jr_038_5e2c                            ; $5e2a: $20 $00

jr_038_5e2c:
    jr z, jr_038_5e2e                             ; $5e2c: $28 $00

jr_038_5e2e:
    cpl                                           ; $5e2e: $2f
    nop                                           ; $5e2f: $00
    scf                                           ; $5e30: $37
    nop                                           ; $5e31: $00
    dec a                                         ; $5e32: $3d
    nop                                           ; $5e33: $00
    ld b, d                                       ; $5e34: $42
    nop                                           ; $5e35: $00
    ld b, a                                       ; $5e36: $47
    nop                                           ; $5e37: $00
    ld c, e                                       ; $5e38: $4b
    nop                                           ; $5e39: $00
    ld c, a                                       ; $5e3a: $4f
    nop                                           ; $5e3b: $00
    ld d, e                                       ; $5e3c: $53
    nop                                           ; $5e3d: $00
    ld d, a                                       ; $5e3e: $57
    nop                                           ; $5e3f: $00
    ld e, d                                       ; $5e40: $5a
    nop                                           ; $5e41: $00
    ld e, [hl]                                    ; $5e42: $5e
    nop                                           ; $5e43: $00
    ld h, d                                       ; $5e44: $62
    nop                                           ; $5e45: $00
    ld h, l                                       ; $5e46: $65
    nop                                           ; $5e47: $00
    ld l, b                                       ; $5e48: $68
    nop                                           ; $5e49: $00
    ld l, e                                       ; $5e4a: $6b
    nop                                           ; $5e4b: $00
    ld l, [hl]                                    ; $5e4c: $6e
    nop                                           ; $5e4d: $00
    ld [hl], c                                    ; $5e4e: $71
    nop                                           ; $5e4f: $00
    ld [hl], l                                    ; $5e50: $75
    nop                                           ; $5e51: $00
    ld a, b                                       ; $5e52: $78
    nop                                           ; $5e53: $00
    ld a, d                                       ; $5e54: $7a
    nop                                           ; $5e55: $00
    ld a, l                                       ; $5e56: $7d
    nop                                           ; $5e57: $00
    add b                                         ; $5e58: $80
    nop                                           ; $5e59: $00
    add e                                         ; $5e5a: $83
    nop                                           ; $5e5b: $00
    add [hl]                                      ; $5e5c: $86
    nop                                           ; $5e5d: $00
    adc b                                         ; $5e5e: $88
    nop                                           ; $5e5f: $00
    adc e                                         ; $5e60: $8b
    nop                                           ; $5e61: $00
    adc l                                         ; $5e62: $8d
    nop                                           ; $5e63: $00
    sub b                                         ; $5e64: $90
    nop                                           ; $5e65: $00
    sub e                                         ; $5e66: $93
    nop                                           ; $5e67: $00
    sub l                                         ; $5e68: $95
    nop                                           ; $5e69: $00
    sbc b                                         ; $5e6a: $98
    nop                                           ; $5e6b: $00
    sbc e                                         ; $5e6c: $9b
    nop                                           ; $5e6d: $00
    sbc l                                         ; $5e6e: $9d
    nop                                           ; $5e6f: $00
    sbc a                                         ; $5e70: $9f
    nop                                           ; $5e71: $00
    and d                                         ; $5e72: $a2
    nop                                           ; $5e73: $00
    and l                                         ; $5e74: $a5
    nop                                           ; $5e75: $00
    and a                                         ; $5e76: $a7
    nop                                           ; $5e77: $00
    xor d                                         ; $5e78: $aa
    nop                                           ; $5e79: $00
    xor h                                         ; $5e7a: $ac
    nop                                           ; $5e7b: $00
    xor a                                         ; $5e7c: $af
    nop                                           ; $5e7d: $00
    or c                                          ; $5e7e: $b1
    nop                                           ; $5e7f: $00
    or e                                          ; $5e80: $b3
    nop                                           ; $5e81: $00
    or l                                          ; $5e82: $b5
    nop                                           ; $5e83: $00
    cp b                                          ; $5e84: $b8
    nop                                           ; $5e85: $00
    cp d                                          ; $5e86: $ba
    nop                                           ; $5e87: $00
    cp h                                          ; $5e88: $bc
    nop                                           ; $5e89: $00
    cp a                                          ; $5e8a: $bf
    nop                                           ; $5e8b: $00
    jp nz, $c400                                  ; $5e8c: $c2 $00 $c4

    nop                                           ; $5e8f: $00
    add $00                                       ; $5e90: $c6 $00
    ret z                                         ; $5e92: $c8

    nop                                           ; $5e93: $00
    rlc b                                         ; $5e94: $cb $00
    call $cf00                                    ; $5e96: $cd $00 $cf
    nop                                           ; $5e99: $00
    jp nc, $d400                                  ; $5e9a: $d2 $00 $d4

    nop                                           ; $5e9d: $00
    sub $00                                       ; $5e9e: $d6 $00
    ret c                                         ; $5ea0: $d8

    nop                                           ; $5ea1: $00
    jp c, $dd00                                   ; $5ea2: $da $00 $dd

    nop                                           ; $5ea5: $00
    rst $18                                       ; $5ea6: $df
    nop                                           ; $5ea7: $00
    ld [c], a                                     ; $5ea8: $e2
    nop                                           ; $5ea9: $00
    db $e3                                        ; $5eaa: $e3
    nop                                           ; $5eab: $00
    and $00                                       ; $5eac: $e6 $00
    add sp, $00                                   ; $5eae: $e8 $00
    ld [$ec00], a                                 ; $5eb0: $ea $00 $ec
    nop                                           ; $5eb3: $00
    xor $00                                       ; $5eb4: $ee $00
    pop af                                        ; $5eb6: $f1
    nop                                           ; $5eb7: $00
    di                                            ; $5eb8: $f3
    nop                                           ; $5eb9: $00
    push af                                       ; $5eba: $f5
    nop                                           ; $5ebb: $00
    ld hl, sp+$00                                 ; $5ebc: $f8 $00
    ld a, [$fc00]                                 ; $5ebe: $fa $00 $fc
    nop                                           ; $5ec1: $00
    cp $00                                        ; $5ec2: $fe $00
    nop                                           ; $5ec4: $00
    ld bc, $0102                                  ; $5ec5: $01 $02 $01
    inc b                                         ; $5ec8: $04
    ld bc, $0107                                  ; $5ec9: $01 $07 $01
    add hl, bc                                    ; $5ecc: $09
    ld bc, $010b                                  ; $5ecd: $01 $0b $01
    dec c                                         ; $5ed0: $0d
    ld bc, $0110                                  ; $5ed1: $01 $10 $01
    ld [de], a                                    ; $5ed4: $12
    ld bc, $0114                                  ; $5ed5: $01 $14 $01
    ld d, $01                                     ; $5ed8: $16 $01
    jr jr_038_5edd                                ; $5eda: $18 $01

    ld a, [de]                                    ; $5edc: $1a

jr_038_5edd:
    ld bc, $011d                                  ; $5edd: $01 $1d $01
    rra                                           ; $5ee0: $1f
    ld bc, $0121                                  ; $5ee1: $01 $21 $01
    inc hl                                        ; $5ee4: $23
    ld bc, $0125                                  ; $5ee5: $01 $25 $01
    jr z, jr_038_5eeb                             ; $5ee8: $28 $01

    ld a, [hl+]                                   ; $5eea: $2a

jr_038_5eeb:
    ld bc, $012c                                  ; $5eeb: $01 $2c $01
    ld l, $01                                     ; $5eee: $2e $01
    jr nc, jr_038_5ef3                            ; $5ef0: $30 $01

    ld [hl-], a                                   ; $5ef2: $32

jr_038_5ef3:
    ld bc, $0135                                  ; $5ef3: $01 $35 $01
    scf                                           ; $5ef6: $37
    ld bc, $0139                                  ; $5ef7: $01 $39 $01
    dec sp                                        ; $5efa: $3b
    ld bc, $013d                                  ; $5efb: $01 $3d $01
    ccf                                           ; $5efe: $3f
    ld bc, $0141                                  ; $5eff: $01 $41 $01
    ld b, e                                       ; $5f02: $43
    ld bc, HeaderSGBFlag                          ; $5f03: $01 $46 $01
    ld c, b                                       ; $5f06: $48
    ld bc, HeaderDestinationCode                  ; $5f07: $01 $4a $01
    ld c, l                                       ; $5f0a: $4d
    ld bc, HeaderGlobalChecksum                   ; $5f0b: $01 $4e $01
    ld d, c                                       ; $5f0e: $51
    ld bc, $0153                                  ; $5f0f: $01 $53 $01
    ld d, l                                       ; $5f12: $55
    ld bc, $0157                                  ; $5f13: $01 $57 $01
    ld e, c                                       ; $5f16: $59
    ld bc, $015b                                  ; $5f17: $01 $5b $01
    ld e, l                                       ; $5f1a: $5d
    ld bc, $015f                                  ; $5f1b: $01 $5f $01
    ld h, d                                       ; $5f1e: $62
    ld bc, $0164                                  ; $5f1f: $01 $64 $01
    ld h, [hl]                                    ; $5f22: $66
    ld bc, $0169                                  ; $5f23: $01 $69 $01
    ld l, e                                       ; $5f26: $6b
    ld bc, $016d                                  ; $5f27: $01 $6d $01
    ld l, a                                       ; $5f2a: $6f
    ld bc, $0171                                  ; $5f2b: $01 $71 $01
    ld [hl], e                                    ; $5f2e: $73
    ld bc, $0176                                  ; $5f2f: $01 $76 $01
    ld a, b                                       ; $5f32: $78
    ld bc, $017a                                  ; $5f33: $01 $7a $01
    ld a, h                                       ; $5f36: $7c
    ld bc, $017e                                  ; $5f37: $01 $7e $01
    add b                                         ; $5f3a: $80
    ld bc, $0182                                  ; $5f3b: $01 $82 $01
    add l                                         ; $5f3e: $85
    ld bc, $0187                                  ; $5f3f: $01 $87 $01
    adc c                                         ; $5f42: $89
    ld bc, $018b                                  ; $5f43: $01 $8b $01
    adc [hl]                                      ; $5f46: $8e
    ld bc, $0190                                  ; $5f47: $01 $90 $01
    sub d                                         ; $5f4a: $92
    ld bc, $0194                                  ; $5f4b: $01 $94 $01
    sub [hl]                                      ; $5f4e: $96
    ld bc, $0198                                  ; $5f4f: $01 $98 $01
    sbc e                                         ; $5f52: $9b
    ld bc, $019d                                  ; $5f53: $01 $9d $01
    sbc a                                         ; $5f56: $9f
    ld bc, $01a1                                  ; $5f57: $01 $a1 $01
    and e                                         ; $5f5a: $a3
    ld bc, $01a5                                  ; $5f5b: $01 $a5 $01
    and a                                         ; $5f5e: $a7
    ld bc, $01aa                                  ; $5f5f: $01 $aa $01
    xor h                                         ; $5f62: $ac
    ld bc, $01ae                                  ; $5f63: $01 $ae $01
    or b                                          ; $5f66: $b0
    ld bc, $01b2                                  ; $5f67: $01 $b2 $01
    or l                                          ; $5f6a: $b5
    ld bc, $01b7                                  ; $5f6b: $01 $b7 $01
    cp c                                          ; $5f6e: $b9
    ld bc, $01bb                                  ; $5f6f: $01 $bb $01
    cp l                                          ; $5f72: $bd
    ld bc, $01bf                                  ; $5f73: $01 $bf $01
    jp nz, $c401                                  ; $5f76: $c2 $01 $c4

    ld bc, $01c6                                  ; $5f79: $01 $c6 $01
    ret z                                         ; $5f7c: $c8

    ld bc, $01ca                                  ; $5f7d: $01 $ca $01
    call $cf01                                    ; $5f80: $cd $01 $cf
    ld bc, $01d1                                  ; $5f83: $01 $d1 $01
    call nc, $d601                                ; $5f86: $d4 $01 $d6
    ld bc, $01d8                                  ; $5f89: $01 $d8 $01
    jp c, $dc01                                   ; $5f8c: $da $01 $dc

    ld bc, $01de                                  ; $5f8f: $01 $de $01
    inc b                                         ; $5f92: $04
    nop                                           ; $5f93: $00
    inc hl                                        ; $5f94: $23
    nop                                           ; $5f95: $00
    dec hl                                        ; $5f96: $2b
    nop                                           ; $5f97: $00
    inc [hl]                                      ; $5f98: $34
    nop                                           ; $5f99: $00
    dec sp                                        ; $5f9a: $3b
    nop                                           ; $5f9b: $00
    ld b, b                                       ; $5f9c: $40
    nop                                           ; $5f9d: $00
    ld b, l                                       ; $5f9e: $45
    nop                                           ; $5f9f: $00
    ld c, d                                       ; $5fa0: $4a
    nop                                           ; $5fa1: $00
    ld c, a                                       ; $5fa2: $4f
    nop                                           ; $5fa3: $00
    ld d, e                                       ; $5fa4: $53
    nop                                           ; $5fa5: $00
    ld d, a                                       ; $5fa6: $57
    nop                                           ; $5fa7: $00
    ld e, e                                       ; $5fa8: $5b
    nop                                           ; $5fa9: $00
    ld e, a                                       ; $5faa: $5f
    nop                                           ; $5fab: $00
    ld h, e                                       ; $5fac: $63
    nop                                           ; $5fad: $00
    ld h, [hl]                                    ; $5fae: $66
    nop                                           ; $5faf: $00
    ld l, d                                       ; $5fb0: $6a
    nop                                           ; $5fb1: $00
    ld l, l                                       ; $5fb2: $6d
    nop                                           ; $5fb3: $00
    ld [hl], b                                    ; $5fb4: $70
    nop                                           ; $5fb5: $00
    ld [hl], h                                    ; $5fb6: $74
    nop                                           ; $5fb7: $00
    ld [hl], a                                    ; $5fb8: $77
    nop                                           ; $5fb9: $00
    ld a, d                                       ; $5fba: $7a
    nop                                           ; $5fbb: $00
    ld a, l                                       ; $5fbc: $7d
    nop                                           ; $5fbd: $00
    add b                                         ; $5fbe: $80
    nop                                           ; $5fbf: $00
    add e                                         ; $5fc0: $83
    nop                                           ; $5fc1: $00
    add [hl]                                      ; $5fc2: $86
    nop                                           ; $5fc3: $00
    adc c                                         ; $5fc4: $89
    nop                                           ; $5fc5: $00
    adc h                                         ; $5fc6: $8c
    nop                                           ; $5fc7: $00
    adc [hl]                                      ; $5fc8: $8e
    nop                                           ; $5fc9: $00
    sub c                                         ; $5fca: $91
    nop                                           ; $5fcb: $00
    sub h                                         ; $5fcc: $94
    nop                                           ; $5fcd: $00
    sub a                                         ; $5fce: $97
    nop                                           ; $5fcf: $00
    sbc d                                         ; $5fd0: $9a
    nop                                           ; $5fd1: $00
    sbc h                                         ; $5fd2: $9c
    nop                                           ; $5fd3: $00
    sbc a                                         ; $5fd4: $9f
    nop                                           ; $5fd5: $00
    and c                                         ; $5fd6: $a1
    nop                                           ; $5fd7: $00
    and h                                         ; $5fd8: $a4
    nop                                           ; $5fd9: $00
    and a                                         ; $5fda: $a7
    nop                                           ; $5fdb: $00
    xor d                                         ; $5fdc: $aa
    nop                                           ; $5fdd: $00
    xor h                                         ; $5fde: $ac
    nop                                           ; $5fdf: $00
    xor a                                         ; $5fe0: $af
    nop                                           ; $5fe1: $00
    or c                                          ; $5fe2: $b1
    nop                                           ; $5fe3: $00
    or h                                          ; $5fe4: $b4
    nop                                           ; $5fe5: $00
    or [hl]                                       ; $5fe6: $b6
    nop                                           ; $5fe7: $00
    cp c                                          ; $5fe8: $b9
    nop                                           ; $5fe9: $00
    cp h                                          ; $5fea: $bc
    nop                                           ; $5feb: $00
    cp [hl]                                       ; $5fec: $be
    nop                                           ; $5fed: $00
    ret nz                                        ; $5fee: $c0

    nop                                           ; $5fef: $00
    jp $c500                                      ; $5ff0: $c3 $00 $c5


    nop                                           ; $5ff3: $00
    ret z                                         ; $5ff4: $c8

    nop                                           ; $5ff5: $00
    rlc b                                         ; $5ff6: $cb $00
    call $cf00                                    ; $5ff8: $cd $00 $cf
    nop                                           ; $5ffb: $00
    jp nc, $d400                                  ; $5ffc: $d2 $00 $d4

    nop                                           ; $5fff: $00
    rst $10                                       ; $6000: $d7
    nop                                           ; $6001: $00
    reti                                          ; $6002: $d9


    nop                                           ; $6003: $00
    call c, $de00                                 ; $6004: $dc $00 $de
    nop                                           ; $6007: $00
    ldh [rP1], a                                  ; $6008: $e0 $00
    db $e3                                        ; $600a: $e3
    nop                                           ; $600b: $00
    push hl                                       ; $600c: $e5
    nop                                           ; $600d: $00
    add sp, $00                                   ; $600e: $e8 $00
    ld [$ec00], a                                 ; $6010: $ea $00 $ec
    nop                                           ; $6013: $00
    rst $28                                       ; $6014: $ef
    nop                                           ; $6015: $00
    pop af                                        ; $6016: $f1
    nop                                           ; $6017: $00
    db $f4                                        ; $6018: $f4
    nop                                           ; $6019: $00
    or $00                                        ; $601a: $f6 $00
    ld hl, sp+$00                                 ; $601c: $f8 $00
    ei                                            ; $601e: $fb
    nop                                           ; $601f: $00
    db $fd                                        ; $6020: $fd
    nop                                           ; $6021: $00
    rst $38                                       ; $6022: $ff
    nop                                           ; $6023: $00
    ld [bc], a                                    ; $6024: $02
    ld bc, HeaderLogo                             ; $6025: $01 $04 $01
    ld b, $01                                     ; $6028: $06 $01
    add hl, bc                                    ; $602a: $09
    ld bc, $010b                                  ; $602b: $01 $0b $01
    dec c                                         ; $602e: $0d
    ld bc, $0110                                  ; $602f: $01 $10 $01
    ld [de], a                                    ; $6032: $12
    ld bc, $0114                                  ; $6033: $01 $14 $01
    rla                                           ; $6036: $17
    ld bc, $0119                                  ; $6037: $01 $19 $01
    dec de                                        ; $603a: $1b
    ld bc, $011e                                  ; $603b: $01 $1e $01
    jr nz, jr_038_6041                            ; $603e: $20 $01

    ld [hl+], a                                   ; $6040: $22

jr_038_6041:
    ld bc, $0125                                  ; $6041: $01 $25 $01
    daa                                           ; $6044: $27
    ld bc, $012a                                  ; $6045: $01 $2a $01
    inc l                                         ; $6048: $2c
    ld bc, $012e                                  ; $6049: $01 $2e $01
    jr nc, jr_038_604f                            ; $604c: $30 $01

    inc sp                                        ; $604e: $33

jr_038_604f:
    ld bc, $0135                                  ; $604f: $01 $35 $01
    scf                                           ; $6052: $37
    ld bc, $013a                                  ; $6053: $01 $3a $01
    inc a                                         ; $6056: $3c
    ld bc, HeaderManufacturerCode                 ; $6057: $01 $3f $01
    ld b, c                                       ; $605a: $41
    ld bc, HeaderCGBFlag                          ; $605b: $01 $43 $01
    ld b, l                                       ; $605e: $45
    ld bc, HeaderROMSize                          ; $605f: $01 $48 $01
    ld c, d                                       ; $6062: $4a
    ld bc, HeaderMaskROMVersion                   ; $6063: $01 $4c $01
    ld c, a                                       ; $6066: $4f
    ld bc, $0151                                  ; $6067: $01 $51 $01
    ld d, h                                       ; $606a: $54
    ld bc, $0156                                  ; $606b: $01 $56 $01
    ld e, b                                       ; $606e: $58
    ld bc, $015a                                  ; $606f: $01 $5a $01
    ld e, l                                       ; $6072: $5d
    ld bc, $015f                                  ; $6073: $01 $5f $01
    ld h, d                                       ; $6076: $62
    ld bc, $0164                                  ; $6077: $01 $64 $01
    ld h, [hl]                                    ; $607a: $66
    ld bc, $0168                                  ; $607b: $01 $68 $01
    ld l, e                                       ; $607e: $6b
    ld bc, $016d                                  ; $607f: $01 $6d $01
    ld l, a                                       ; $6082: $6f
    ld bc, $0172                                  ; $6083: $01 $72 $01
    ld [hl], l                                    ; $6086: $75
    ld bc, $0177                                  ; $6087: $01 $77 $01
    ld a, c                                       ; $608a: $79
    ld bc, $017b                                  ; $608b: $01 $7b $01
    ld a, [hl]                                    ; $608e: $7e
    ld bc, $0180                                  ; $608f: $01 $80 $01
    add d                                         ; $6092: $82
    ld bc, $0185                                  ; $6093: $01 $85 $01
    add a                                         ; $6096: $87
    ld bc, $0189                                  ; $6097: $01 $89 $01
    adc h                                         ; $609a: $8c
    ld bc, $018e                                  ; $609b: $01 $8e $01
    sub b                                         ; $609e: $90
    ld bc, $0193                                  ; $609f: $01 $93 $01
    sub l                                         ; $60a2: $95
    ld bc, $0197                                  ; $60a3: $01 $97 $01
    sbc c                                         ; $60a6: $99
    ld bc, $019c                                  ; $60a7: $01 $9c $01
    sbc a                                         ; $60aa: $9f
    ld bc, $01a1                                  ; $60ab: $01 $a1 $01
    and e                                         ; $60ae: $a3
    ld bc, $01a6                                  ; $60af: $01 $a6 $01
    xor b                                         ; $60b2: $a8
    ld bc, $01aa                                  ; $60b3: $01 $aa $01
    xor h                                         ; $60b6: $ac
    ld bc, $01af                                  ; $60b7: $01 $af $01
    or c                                          ; $60ba: $b1
    ld bc, $01b3                                  ; $60bb: $01 $b3 $01
    or [hl]                                       ; $60be: $b6
    ld bc, $01b8                                  ; $60bf: $01 $b8 $01
    cp e                                          ; $60c2: $bb
    ld bc, $01bd                                  ; $60c3: $01 $bd $01
    ret nz                                        ; $60c6: $c0

    ld bc, $01c2                                  ; $60c7: $01 $c2 $01
    call nz, $c601                                ; $60ca: $c4 $01 $c6
    ld bc, $01c9                                  ; $60cd: $01 $c9 $01
    rlc c                                         ; $60d0: $cb $01
    call $d001                                    ; $60d2: $cd $01 $d0
    ld bc, $01d2                                  ; $60d5: $01 $d2 $01
    push de                                       ; $60d8: $d5
    ld bc, $01d7                                  ; $60d9: $01 $d7 $01
    reti                                          ; $60dc: $d9


    ld bc, $01dc                                  ; $60dd: $01 $dc $01
    sbc $01                                       ; $60e0: $de $01
    inc b                                         ; $60e2: $04
    nop                                           ; $60e3: $00
    dec h                                         ; $60e4: $25
    nop                                           ; $60e5: $00
    ld l, $00                                     ; $60e6: $2e $00
    scf                                           ; $60e8: $37
    nop                                           ; $60e9: $00
    dec a                                         ; $60ea: $3d
    nop                                           ; $60eb: $00
    ld b, e                                       ; $60ec: $43
    nop                                           ; $60ed: $00
    ld c, c                                       ; $60ee: $49
    nop                                           ; $60ef: $00
    ld c, l                                       ; $60f0: $4d
    nop                                           ; $60f1: $00
    ld d, d                                       ; $60f2: $52
    nop                                           ; $60f3: $00
    ld d, a                                       ; $60f4: $57
    nop                                           ; $60f5: $00
    ld e, e                                       ; $60f6: $5b
    nop                                           ; $60f7: $00
    ld e, a                                       ; $60f8: $5f
    nop                                           ; $60f9: $00
    ld h, e                                       ; $60fa: $63
    nop                                           ; $60fb: $00
    ld h, [hl]                                    ; $60fc: $66
    nop                                           ; $60fd: $00
    ld l, d                                       ; $60fe: $6a
    nop                                           ; $60ff: $00
    ld l, [hl]                                    ; $6100: $6e
    nop                                           ; $6101: $00
    ld [hl], c                                    ; $6102: $71
    nop                                           ; $6103: $00
    ld [hl], l                                    ; $6104: $75
    nop                                           ; $6105: $00
    ld a, b                                       ; $6106: $78
    nop                                           ; $6107: $00
    ld a, e                                       ; $6108: $7b
    nop                                           ; $6109: $00
    ld a, [hl]                                    ; $610a: $7e
    nop                                           ; $610b: $00
    add c                                         ; $610c: $81
    nop                                           ; $610d: $00
    add h                                         ; $610e: $84
    nop                                           ; $610f: $00
    adc b                                         ; $6110: $88
    nop                                           ; $6111: $00
    adc d                                         ; $6112: $8a
    nop                                           ; $6113: $00
    adc l                                         ; $6114: $8d
    nop                                           ; $6115: $00
    sub b                                         ; $6116: $90
    nop                                           ; $6117: $00
    sub h                                         ; $6118: $94
    nop                                           ; $6119: $00
    sub [hl]                                      ; $611a: $96
    nop                                           ; $611b: $00
    sbc c                                         ; $611c: $99
    nop                                           ; $611d: $00
    sbc h                                         ; $611e: $9c
    nop                                           ; $611f: $00
    sbc a                                         ; $6120: $9f
    nop                                           ; $6121: $00
    and d                                         ; $6122: $a2
    nop                                           ; $6123: $00
    and h                                         ; $6124: $a4
    nop                                           ; $6125: $00
    xor b                                         ; $6126: $a8
    nop                                           ; $6127: $00
    xor d                                         ; $6128: $aa
    nop                                           ; $6129: $00
    xor l                                         ; $612a: $ad
    nop                                           ; $612b: $00
    or b                                          ; $612c: $b0
    nop                                           ; $612d: $00
    or d                                          ; $612e: $b2
    nop                                           ; $612f: $00
    or l                                          ; $6130: $b5
    nop                                           ; $6131: $00
    cp b                                          ; $6132: $b8
    nop                                           ; $6133: $00
    cp e                                          ; $6134: $bb
    nop                                           ; $6135: $00
    cp l                                          ; $6136: $bd
    nop                                           ; $6137: $00
    ret nz                                        ; $6138: $c0

    nop                                           ; $6139: $00
    jp nz, $c500                                  ; $613a: $c2 $00 $c5

    nop                                           ; $613d: $00
    ret z                                         ; $613e: $c8

    nop                                           ; $613f: $00
    jp z, $cd00                                   ; $6140: $ca $00 $cd

    nop                                           ; $6143: $00
    ret nc                                        ; $6144: $d0

    nop                                           ; $6145: $00
    jp nc, $d500                                  ; $6146: $d2 $00 $d5

    nop                                           ; $6149: $00
    ret c                                         ; $614a: $d8

    nop                                           ; $614b: $00
    jp c, $dd00                                   ; $614c: $da $00 $dd

    nop                                           ; $614f: $00
    rst $18                                       ; $6150: $df
    nop                                           ; $6151: $00
    ld [c], a                                     ; $6152: $e2
    nop                                           ; $6153: $00
    db $e4                                        ; $6154: $e4
    nop                                           ; $6155: $00
    rst $20                                       ; $6156: $e7
    nop                                           ; $6157: $00
    jp hl                                         ; $6158: $e9


    nop                                           ; $6159: $00
    db $ec                                        ; $615a: $ec
    nop                                           ; $615b: $00
    rst $28                                       ; $615c: $ef
    nop                                           ; $615d: $00
    pop af                                        ; $615e: $f1
    nop                                           ; $615f: $00
    di                                            ; $6160: $f3
    nop                                           ; $6161: $00
    or $00                                        ; $6162: $f6 $00
    ld sp, hl                                     ; $6164: $f9
    nop                                           ; $6165: $00
    ei                                            ; $6166: $fb
    nop                                           ; $6167: $00
    cp $00                                        ; $6168: $fe $00
    nop                                           ; $616a: $00
    ld bc, $0103                                  ; $616b: $01 $03 $01
    dec b                                         ; $616e: $05
    ld bc, $0107                                  ; $616f: $01 $07 $01
    ld a, [bc]                                    ; $6172: $0a
    ld bc, $010d                                  ; $6173: $01 $0d $01
    rrca                                          ; $6176: $0f
    ld bc, $0112                                  ; $6177: $01 $12 $01
    inc d                                         ; $617a: $14
    ld bc, $0116                                  ; $617b: $01 $16 $01
    add hl, de                                    ; $617e: $19
    ld bc, $011c                                  ; $617f: $01 $1c $01
    ld e, $01                                     ; $6182: $1e $01
    jr nz, jr_038_6187                            ; $6184: $20 $01

    inc hl                                        ; $6186: $23

jr_038_6187:
    ld bc, $0125                                  ; $6187: $01 $25 $01
    jr z, jr_038_618d                             ; $618a: $28 $01

    dec hl                                        ; $618c: $2b

jr_038_618d:
    ld bc, $012d                                  ; $618d: $01 $2d $01
    cpl                                           ; $6190: $2f
    ld bc, $0132                                  ; $6191: $01 $32 $01
    inc [hl]                                      ; $6194: $34
    ld bc, $0137                                  ; $6195: $01 $37 $01
    add hl, sp                                    ; $6198: $39
    ld bc, $013c                                  ; $6199: $01 $3c $01
    ccf                                           ; $619c: $3f
    ld bc, $0141                                  ; $619d: $01 $41 $01
    ld b, h                                       ; $61a0: $44
    ld bc, HeaderSGBFlag                          ; $61a1: $01 $46 $01
    ld c, b                                       ; $61a4: $48
    ld bc, HeaderOldLicenseeCode                  ; $61a5: $01 $4b $01
    ld c, l                                       ; $61a8: $4d
    ld bc, $0150                                  ; $61a9: $01 $50 $01
    ld d, d                                       ; $61ac: $52
    ld bc, $0155                                  ; $61ad: $01 $55 $01
    ld d, a                                       ; $61b0: $57
    ld bc, $0159                                  ; $61b1: $01 $59 $01
    ld e, h                                       ; $61b4: $5c
    ld bc, $015f                                  ; $61b5: $01 $5f $01
    ld h, c                                       ; $61b8: $61
    ld bc, $0163                                  ; $61b9: $01 $63 $01
    ld h, [hl]                                    ; $61bc: $66
    ld bc, $0169                                  ; $61bd: $01 $69 $01
    ld l, e                                       ; $61c0: $6b
    ld bc, $016e                                  ; $61c1: $01 $6e $01
    ld [hl], b                                    ; $61c4: $70
    ld bc, $0173                                  ; $61c5: $01 $73 $01
    ld [hl], l                                    ; $61c8: $75
    ld bc, $0178                                  ; $61c9: $01 $78 $01
    ld a, d                                       ; $61cc: $7a
    ld bc, $017d                                  ; $61cd: $01 $7d $01
    ld a, a                                       ; $61d0: $7f
    ld bc, $0181                                  ; $61d1: $01 $81 $01
    add h                                         ; $61d4: $84
    ld bc, $0186                                  ; $61d5: $01 $86 $01
    adc c                                         ; $61d8: $89
    ld bc, $018b                                  ; $61d9: $01 $8b $01
    adc [hl]                                      ; $61dc: $8e
    ld bc, $0191                                  ; $61dd: $01 $91 $01
    sub e                                         ; $61e0: $93
    ld bc, $0196                                  ; $61e1: $01 $96 $01
    sbc b                                         ; $61e4: $98
    ld bc, $019a                                  ; $61e5: $01 $9a $01
    sbc l                                         ; $61e8: $9d
    ld bc, $01a0                                  ; $61e9: $01 $a0 $01
    and d                                         ; $61ec: $a2
    ld bc, $01a5                                  ; $61ed: $01 $a5 $01
    and a                                         ; $61f0: $a7
    ld bc, $01aa                                  ; $61f1: $01 $aa $01
    xor h                                         ; $61f4: $ac
    ld bc, $01ae                                  ; $61f5: $01 $ae $01
    or c                                          ; $61f8: $b1
    ld bc, $01b4                                  ; $61f9: $01 $b4 $01
    or [hl]                                       ; $61fc: $b6
    ld bc, $01b9                                  ; $61fd: $01 $b9 $01
    cp e                                          ; $6200: $bb
    ld bc, $01be                                  ; $6201: $01 $be $01
    ret nz                                        ; $6204: $c0

    ld bc, $01c3                                  ; $6205: $01 $c3 $01
    push bc                                       ; $6208: $c5
    ld bc, $01c8                                  ; $6209: $01 $c8 $01
    jp z, $cd01                                   ; $620c: $ca $01 $cd

    ld bc, $01cf                                  ; $620f: $01 $cf $01
    jp nc, $d401                                  ; $6212: $d2 $01 $d4

    ld bc, $01d7                                  ; $6215: $01 $d7 $01
    reti                                          ; $6218: $d9


    ld bc, $01dc                                  ; $6219: $01 $dc $01
    rst $18                                       ; $621c: $df
    ld bc, $0004                                  ; $621d: $01 $04 $00
    add hl, hl                                    ; $6220: $29
    nop                                           ; $6221: $00
    ld sp, $3a00                                  ; $6222: $31 $00 $3a
    nop                                           ; $6225: $00
    ld b, c                                       ; $6226: $41
    nop                                           ; $6227: $00
    ld b, a                                       ; $6228: $47
    nop                                           ; $6229: $00
    ld c, l                                       ; $622a: $4d
    nop                                           ; $622b: $00
    ld d, d                                       ; $622c: $52
    nop                                           ; $622d: $00
    ld d, a                                       ; $622e: $57
    nop                                           ; $622f: $00
    ld e, e                                       ; $6230: $5b
    nop                                           ; $6231: $00
    ld e, a                                       ; $6232: $5f
    nop                                           ; $6233: $00
    ld h, h                                       ; $6234: $64
    nop                                           ; $6235: $00
    ld h, a                                       ; $6236: $67
    nop                                           ; $6237: $00
    ld l, e                                       ; $6238: $6b
    nop                                           ; $6239: $00
    ld l, a                                       ; $623a: $6f
    nop                                           ; $623b: $00
    ld [hl], e                                    ; $623c: $73
    nop                                           ; $623d: $00
    ld [hl], a                                    ; $623e: $77
    nop                                           ; $623f: $00
    ld a, d                                       ; $6240: $7a
    nop                                           ; $6241: $00
    ld a, l                                       ; $6242: $7d
    nop                                           ; $6243: $00
    add c                                         ; $6244: $81
    nop                                           ; $6245: $00
    add h                                         ; $6246: $84
    nop                                           ; $6247: $00
    adc b                                         ; $6248: $88
    nop                                           ; $6249: $00
    adc e                                         ; $624a: $8b
    nop                                           ; $624b: $00
    adc [hl]                                      ; $624c: $8e
    nop                                           ; $624d: $00
    sub c                                         ; $624e: $91
    nop                                           ; $624f: $00
    sub l                                         ; $6250: $95
    nop                                           ; $6251: $00
    sub a                                         ; $6252: $97
    nop                                           ; $6253: $00
    sbc d                                         ; $6254: $9a
    nop                                           ; $6255: $00
    sbc l                                         ; $6256: $9d
    nop                                           ; $6257: $00
    and c                                         ; $6258: $a1
    nop                                           ; $6259: $00
    and h                                         ; $625a: $a4
    nop                                           ; $625b: $00
    and [hl]                                      ; $625c: $a6
    nop                                           ; $625d: $00
    xor d                                         ; $625e: $aa
    nop                                           ; $625f: $00
    xor h                                         ; $6260: $ac
    nop                                           ; $6261: $00
    or b                                          ; $6262: $b0
    nop                                           ; $6263: $00
    or d                                          ; $6264: $b2
    nop                                           ; $6265: $00
    or [hl]                                       ; $6266: $b6
    nop                                           ; $6267: $00
    cp b                                          ; $6268: $b8
    nop                                           ; $6269: $00
    cp e                                          ; $626a: $bb
    nop                                           ; $626b: $00
    cp [hl]                                       ; $626c: $be
    nop                                           ; $626d: $00
    pop bc                                        ; $626e: $c1
    nop                                           ; $626f: $00
    jp $c700                                      ; $6270: $c3 $00 $c7


    nop                                           ; $6273: $00
    ret                                           ; $6274: $c9


    nop                                           ; $6275: $00
    call z, $cf00                                 ; $6276: $cc $00 $cf
    nop                                           ; $6279: $00
    jp nc, $d500                                  ; $627a: $d2 $00 $d5

    nop                                           ; $627d: $00
    rst $10                                       ; $627e: $d7
    nop                                           ; $627f: $00
    jp c, $dd00                                   ; $6280: $da $00 $dd

    nop                                           ; $6283: $00
    rst $18                                       ; $6284: $df
    nop                                           ; $6285: $00
    ld [c], a                                     ; $6286: $e2
    nop                                           ; $6287: $00
    push hl                                       ; $6288: $e5
    nop                                           ; $6289: $00
    add sp, $00                                   ; $628a: $e8 $00
    ld [$ed00], a                                 ; $628c: $ea $00 $ed
    nop                                           ; $628f: $00
    ldh a, [rP1]                                  ; $6290: $f0 $00
    di                                            ; $6292: $f3
    nop                                           ; $6293: $00
    push af                                       ; $6294: $f5
    nop                                           ; $6295: $00
    ld hl, sp+$00                                 ; $6296: $f8 $00
    ei                                            ; $6298: $fb
    nop                                           ; $6299: $00
    db $fd                                        ; $629a: $fd
    nop                                           ; $629b: $00
    nop                                           ; $629c: $00
    ld bc, $0102                                  ; $629d: $01 $02 $01
    dec b                                         ; $62a0: $05
    ld bc, $0108                                  ; $62a1: $01 $08 $01
    dec bc                                        ; $62a4: $0b
    ld bc, $010d                                  ; $62a5: $01 $0d $01
    db $10                                        ; $62a8: $10
    ld bc, $0113                                  ; $62a9: $01 $13 $01
    dec d                                         ; $62ac: $15
    ld bc, $0118                                  ; $62ad: $01 $18 $01
    dec de                                        ; $62b0: $1b
    ld bc, $011d                                  ; $62b1: $01 $1d $01
    jr nz, jr_038_62b7                            ; $62b4: $20 $01

    inc hl                                        ; $62b6: $23

jr_038_62b7:
    ld bc, $0125                                  ; $62b7: $01 $25 $01
    jr z, jr_038_62bd                             ; $62ba: $28 $01

    dec hl                                        ; $62bc: $2b

jr_038_62bd:
    ld bc, $012e                                  ; $62bd: $01 $2e $01
    jr nc, jr_038_62c3                            ; $62c0: $30 $01

    inc sp                                        ; $62c2: $33

jr_038_62c3:
    ld bc, $0136                                  ; $62c3: $01 $36 $01
    jr c, jr_038_62c9                             ; $62c6: $38 $01

    dec sp                                        ; $62c8: $3b

jr_038_62c9:
    ld bc, $013d                                  ; $62c9: $01 $3d $01
    ld b, b                                       ; $62cc: $40
    ld bc, HeaderCGBFlag                          ; $62cd: $01 $43 $01
    ld b, [hl]                                    ; $62d0: $46
    ld bc, HeaderROMSize                          ; $62d1: $01 $48 $01
    ld c, e                                       ; $62d4: $4b
    ld bc, HeaderComplementCheck                  ; $62d5: $01 $4d $01
    ld d, b                                       ; $62d8: $50
    ld bc, $0153                                  ; $62d9: $01 $53 $01
    ld d, l                                       ; $62dc: $55
    ld bc, $0158                                  ; $62dd: $01 $58 $01
    ld e, e                                       ; $62e0: $5b
    ld bc, $015e                                  ; $62e1: $01 $5e $01
    ld h, b                                       ; $62e4: $60
    ld bc, $0163                                  ; $62e5: $01 $63 $01
    ld h, l                                       ; $62e8: $65
    ld bc, $0168                                  ; $62e9: $01 $68 $01
    ld l, e                                       ; $62ec: $6b
    ld bc, $016d                                  ; $62ed: $01 $6d $01
    ld [hl], b                                    ; $62f0: $70
    ld bc, $0173                                  ; $62f1: $01 $73 $01
    halt                                          ; $62f4: $76
    ld bc, $0178                                  ; $62f5: $01 $78 $01
    ld a, e                                       ; $62f8: $7b
    ld bc, $017e                                  ; $62f9: $01 $7e $01
    add b                                         ; $62fc: $80
    ld bc, $0183                                  ; $62fd: $01 $83 $01
    add l                                         ; $6300: $85
    ld bc, $0188                                  ; $6301: $01 $88 $01
    adc e                                         ; $6304: $8b
    ld bc, $018e                                  ; $6305: $01 $8e $01
    sub c                                         ; $6308: $91
    ld bc, $0194                                  ; $6309: $01 $94 $01
    sub [hl]                                      ; $630c: $96
    ld bc, $0199                                  ; $630d: $01 $99 $01
    sbc e                                         ; $6310: $9b
    ld bc, $019e                                  ; $6311: $01 $9e $01
    and c                                         ; $6314: $a1
    ld bc, $01a4                                  ; $6315: $01 $a4 $01
    and [hl]                                      ; $6318: $a6
    ld bc, $01a9                                  ; $6319: $01 $a9 $01
    xor e                                         ; $631c: $ab
    ld bc, $01ae                                  ; $631d: $01 $ae $01
    or c                                          ; $6320: $b1
    ld bc, $01b4                                  ; $6321: $01 $b4 $01
    or [hl]                                       ; $6324: $b6
    ld bc, $01b9                                  ; $6325: $01 $b9 $01
    cp h                                          ; $6328: $bc
    ld bc, $01be                                  ; $6329: $01 $be $01
    pop bc                                        ; $632c: $c1
    ld bc, $01c4                                  ; $632d: $01 $c4 $01
    rst $00                                       ; $6330: $c7
    ld bc, $01c9                                  ; $6331: $01 $c9 $01
    call z, $cf01                                 ; $6334: $cc $01 $cf
    ld bc, $01d2                                  ; $6337: $01 $d2 $01
    call nc, $d701                                ; $633a: $d4 $01 $d7
    ld bc, $01da                                  ; $633d: $01 $da $01
    call c, $df01                                 ; $6340: $dc $01 $df
    ld bc, $0004                                  ; $6343: $01 $04 $00
    inc l                                         ; $6346: $2c
    nop                                           ; $6347: $00
    inc [hl]                                      ; $6348: $34
    nop                                           ; $6349: $00
    dec a                                         ; $634a: $3d
    nop                                           ; $634b: $00
    ld b, l                                       ; $634c: $45
    nop                                           ; $634d: $00
    ld c, e                                       ; $634e: $4b
    nop                                           ; $634f: $00
    ld d, c                                       ; $6350: $51
    nop                                           ; $6351: $00
    ld d, [hl]                                    ; $6352: $56
    nop                                           ; $6353: $00
    ld e, e                                       ; $6354: $5b
    nop                                           ; $6355: $00
    ld h, b                                       ; $6356: $60
    nop                                           ; $6357: $00
    ld h, h                                       ; $6358: $64
    nop                                           ; $6359: $00
    ld l, c                                       ; $635a: $69
    nop                                           ; $635b: $00
    ld l, l                                       ; $635c: $6d
    nop                                           ; $635d: $00
    ld [hl], c                                    ; $635e: $71
    nop                                           ; $635f: $00
    ld [hl], l                                    ; $6360: $75
    nop                                           ; $6361: $00
    ld a, c                                       ; $6362: $79
    nop                                           ; $6363: $00
    ld a, l                                       ; $6364: $7d
    nop                                           ; $6365: $00
    add b                                         ; $6366: $80
    nop                                           ; $6367: $00
    add h                                         ; $6368: $84
    nop                                           ; $6369: $00
    adc b                                         ; $636a: $88
    nop                                           ; $636b: $00
    adc e                                         ; $636c: $8b
    nop                                           ; $636d: $00
    adc a                                         ; $636e: $8f
    nop                                           ; $636f: $00
    sub d                                         ; $6370: $92
    nop                                           ; $6371: $00
    sub l                                         ; $6372: $95
    nop                                           ; $6373: $00
    sbc c                                         ; $6374: $99
    nop                                           ; $6375: $00
    sbc h                                         ; $6376: $9c
    nop                                           ; $6377: $00
    sbc a                                         ; $6378: $9f
    nop                                           ; $6379: $00
    and d                                         ; $637a: $a2
    nop                                           ; $637b: $00
    and [hl]                                      ; $637c: $a6
    nop                                           ; $637d: $00
    xor c                                         ; $637e: $a9
    nop                                           ; $637f: $00
    xor h                                         ; $6380: $ac
    nop                                           ; $6381: $00
    xor a                                         ; $6382: $af
    nop                                           ; $6383: $00
    or d                                          ; $6384: $b2
    nop                                           ; $6385: $00
    or [hl]                                       ; $6386: $b6
    nop                                           ; $6387: $00
    cp b                                          ; $6388: $b8
    nop                                           ; $6389: $00
    cp h                                          ; $638a: $bc
    nop                                           ; $638b: $00
    cp a                                          ; $638c: $bf
    nop                                           ; $638d: $00
    jp nz, $c500                                  ; $638e: $c2 $00 $c5

    nop                                           ; $6391: $00
    ret z                                         ; $6392: $c8

    nop                                           ; $6393: $00
    rlc b                                         ; $6394: $cb $00
    adc $00                                       ; $6396: $ce $00
    pop de                                        ; $6398: $d1
    nop                                           ; $6399: $00
    call nc, $d700                                ; $639a: $d4 $00 $d7
    nop                                           ; $639d: $00
    jp c, $dd00                                   ; $639e: $da $00 $dd

    nop                                           ; $63a1: $00
    ldh [rP1], a                                  ; $63a2: $e0 $00
    db $e3                                        ; $63a4: $e3
    nop                                           ; $63a5: $00
    and $00                                       ; $63a6: $e6 $00
    jp hl                                         ; $63a8: $e9


    nop                                           ; $63a9: $00
    db $eb                                        ; $63aa: $eb
    nop                                           ; $63ab: $00
    rst $28                                       ; $63ac: $ef
    nop                                           ; $63ad: $00
    ld a, [c]                                     ; $63ae: $f2
    nop                                           ; $63af: $00
    db $f4                                        ; $63b0: $f4
    nop                                           ; $63b1: $00
    ld hl, sp+$00                                 ; $63b2: $f8 $00
    ei                                            ; $63b4: $fb
    nop                                           ; $63b5: $00
    db $fd                                        ; $63b6: $fd
    nop                                           ; $63b7: $00
    nop                                           ; $63b8: $00
    ld bc, $0103                                  ; $63b9: $01 $03 $01
    dec b                                         ; $63bc: $05
    ld bc, $0109                                  ; $63bd: $01 $09 $01
    inc c                                         ; $63c0: $0c
    ld bc, $010f                                  ; $63c1: $01 $0f $01
    ld [de], a                                    ; $63c4: $12
    ld bc, $0114                                  ; $63c5: $01 $14 $01
    rla                                           ; $63c8: $17
    ld bc, $011a                                  ; $63c9: $01 $1a $01
    dec e                                         ; $63cc: $1d
    ld bc, $0120                                  ; $63cd: $01 $20 $01
    inc hl                                        ; $63d0: $23
    ld bc, $0125                                  ; $63d1: $01 $25 $01
    add hl, hl                                    ; $63d4: $29
    ld bc, $012b                                  ; $63d5: $01 $2b $01
    ld l, $01                                     ; $63d8: $2e $01
    ld sp, $3401                                  ; $63da: $31 $01 $34
    ld bc, $0137                                  ; $63dd: $01 $37 $01
    ld a, [hl-]                                   ; $63e0: $3a
    ld bc, $013d                                  ; $63e1: $01 $3d $01
    ccf                                           ; $63e4: $3f
    ld bc, $0142                                  ; $63e5: $01 $42 $01
    ld b, l                                       ; $63e8: $45
    ld bc, HeaderROMSize                          ; $63e9: $01 $48 $01
    ld c, e                                       ; $63ec: $4b
    ld bc, HeaderGlobalChecksum                   ; $63ed: $01 $4e $01
    ld d, c                                       ; $63f0: $51
    ld bc, $0154                                  ; $63f1: $01 $54 $01
    ld d, a                                       ; $63f4: $57
    ld bc, $015a                                  ; $63f5: $01 $5a $01
    ld e, h                                       ; $63f8: $5c
    ld bc, $015f                                  ; $63f9: $01 $5f $01
    ld h, d                                       ; $63fc: $62
    ld bc, $0165                                  ; $63fd: $01 $65 $01
    ld l, b                                       ; $6400: $68
    ld bc, $016a                                  ; $6401: $01 $6a $01
    ld l, l                                       ; $6404: $6d
    ld bc, $0171                                  ; $6405: $01 $71 $01
    ld [hl], h                                    ; $6408: $74
    ld bc, $0177                                  ; $6409: $01 $77 $01
    ld a, c                                       ; $640c: $79
    ld bc, $017c                                  ; $640d: $01 $7c $01
    ld a, a                                       ; $6410: $7f
    ld bc, $0181                                  ; $6411: $01 $81 $01
    add l                                         ; $6414: $85
    ld bc, $0188                                  ; $6415: $01 $88 $01
    adc e                                         ; $6418: $8b
    ld bc, $018d                                  ; $6419: $01 $8d $01
    sub b                                         ; $641c: $90
    ld bc, $0193                                  ; $641d: $01 $93 $01
    sub [hl]                                      ; $6420: $96
    ld bc, $0199                                  ; $6421: $01 $99 $01
    sbc h                                         ; $6424: $9c
    ld bc, $019f                                  ; $6425: $01 $9f $01
    and d                                         ; $6428: $a2
    ld bc, $01a4                                  ; $6429: $01 $a4 $01
    xor b                                         ; $642c: $a8
    ld bc, $01aa                                  ; $642d: $01 $aa $01
    xor l                                         ; $6430: $ad
    ld bc, $01b0                                  ; $6431: $01 $b0 $01
    or e                                          ; $6434: $b3
    ld bc, $01b6                                  ; $6435: $01 $b6 $01
    cp c                                          ; $6438: $b9
    ld bc, $01bc                                  ; $6439: $01 $bc $01
    cp a                                          ; $643c: $bf
    ld bc, $01c2                                  ; $643d: $01 $c2 $01
    push bc                                       ; $6440: $c5
    ld bc, $01c8                                  ; $6441: $01 $c8 $01
    rlc c                                         ; $6444: $cb $01
    adc $01                                       ; $6446: $ce $01
    ret nc                                        ; $6448: $d0

    ld bc, $01d3                                  ; $6449: $01 $d3 $01
    sub $01                                       ; $644c: $d6 $01
    reti                                          ; $644e: $d9


    ld bc, $01dc                                  ; $644f: $01 $dc $01
    rst $18                                       ; $6452: $df
    ld bc, $0003                                  ; $6453: $01 $03 $00
    dec l                                         ; $6456: $2d
    nop                                           ; $6457: $00
    ld [hl], $00                                  ; $6458: $36 $00
    dec a                                         ; $645a: $3d
    nop                                           ; $645b: $00
    ld b, e                                       ; $645c: $43
    nop                                           ; $645d: $00
    ld c, l                                       ; $645e: $4d
    nop                                           ; $645f: $00
    ld d, e                                       ; $6460: $53
    nop                                           ; $6461: $00
    ld e, b                                       ; $6462: $58
    nop                                           ; $6463: $00
    ld e, [hl]                                    ; $6464: $5e
    nop                                           ; $6465: $00
    ld h, d                                       ; $6466: $62
    nop                                           ; $6467: $00
    ld h, a                                       ; $6468: $67
    nop                                           ; $6469: $00
    ld l, h                                       ; $646a: $6c
    nop                                           ; $646b: $00
    ld [hl], b                                    ; $646c: $70
    nop                                           ; $646d: $00
    ld [hl], h                                    ; $646e: $74
    nop                                           ; $646f: $00
    ld a, c                                       ; $6470: $79
    nop                                           ; $6471: $00
    ld a, l                                       ; $6472: $7d
    nop                                           ; $6473: $00
    add c                                         ; $6474: $81
    nop                                           ; $6475: $00
    add l                                         ; $6476: $85
    nop                                           ; $6477: $00
    adc c                                         ; $6478: $89
    nop                                           ; $6479: $00
    adc l                                         ; $647a: $8d
    nop                                           ; $647b: $00
    sub b                                         ; $647c: $90
    nop                                           ; $647d: $00
    sub h                                         ; $647e: $94
    nop                                           ; $647f: $00
    sbc b                                         ; $6480: $98
    nop                                           ; $6481: $00
    sbc e                                         ; $6482: $9b
    nop                                           ; $6483: $00
    sbc a                                         ; $6484: $9f
    nop                                           ; $6485: $00
    and e                                         ; $6486: $a3
    nop                                           ; $6487: $00
    and [hl]                                      ; $6488: $a6
    nop                                           ; $6489: $00
    xor d                                         ; $648a: $aa
    nop                                           ; $648b: $00
    xor l                                         ; $648c: $ad
    nop                                           ; $648d: $00
    or c                                          ; $648e: $b1
    nop                                           ; $648f: $00
    or h                                          ; $6490: $b4
    nop                                           ; $6491: $00
    cp b                                          ; $6492: $b8
    nop                                           ; $6493: $00
    cp e                                          ; $6494: $bb
    nop                                           ; $6495: $00
    cp a                                          ; $6496: $bf
    nop                                           ; $6497: $00
    jp nz, $c600                                  ; $6498: $c2 $00 $c6

    nop                                           ; $649b: $00
    ret                                           ; $649c: $c9


    nop                                           ; $649d: $00
    call z, $cf00                                 ; $649e: $cc $00 $cf
    nop                                           ; $64a1: $00
    db $d3                                        ; $64a2: $d3
    nop                                           ; $64a3: $00
    sub $00                                       ; $64a4: $d6 $00
    jp c, $dd00                                   ; $64a6: $da $00 $dd

    nop                                           ; $64a9: $00
    ldh [rP1], a                                  ; $64aa: $e0 $00
    db $e4                                        ; $64ac: $e4
    nop                                           ; $64ad: $00
    rst $20                                       ; $64ae: $e7
    nop                                           ; $64af: $00
    ld [$ed00], a                                 ; $64b0: $ea $00 $ed
    nop                                           ; $64b3: $00
    pop af                                        ; $64b4: $f1
    nop                                           ; $64b5: $00
    db $f4                                        ; $64b6: $f4
    nop                                           ; $64b7: $00
    rst $30                                       ; $64b8: $f7
    nop                                           ; $64b9: $00
    ei                                            ; $64ba: $fb
    nop                                           ; $64bb: $00
    cp $00                                        ; $64bc: $fe $00
    ld [bc], a                                    ; $64be: $02
    ld bc, $0105                                  ; $64bf: $01 $05 $01
    ld [$0b01], sp                                ; $64c2: $08 $01 $0b
    ld bc, $010e                                  ; $64c5: $01 $0e $01
    ld [de], a                                    ; $64c8: $12
    ld bc, $0115                                  ; $64c9: $01 $15 $01
    jr jr_038_64cf                                ; $64cc: $18 $01

    inc e                                         ; $64ce: $1c

jr_038_64cf:
    ld bc, $011e                                  ; $64cf: $01 $1e $01
    ld [hl+], a                                   ; $64d2: $22
    ld bc, $0125                                  ; $64d3: $01 $25 $01
    jr z, jr_038_64d9                             ; $64d6: $28 $01

    inc l                                         ; $64d8: $2c

jr_038_64d9:
    ld bc, $012f                                  ; $64d9: $01 $2f $01
    ld [hl-], a                                   ; $64dc: $32
    ld bc, $0135                                  ; $64dd: $01 $35 $01
    add hl, sp                                    ; $64e0: $39
    ld bc, $013c                                  ; $64e1: $01 $3c $01
    ccf                                           ; $64e4: $3f
    ld bc, $0142                                  ; $64e5: $01 $42 $01
    ld b, l                                       ; $64e8: $45
    ld bc, HeaderRAMSize                          ; $64e9: $01 $49 $01
    ld c, h                                       ; $64ec: $4c
    ld bc, $014f                                  ; $64ed: $01 $4f $01
    ld d, e                                       ; $64f0: $53
    ld bc, $0156                                  ; $64f1: $01 $56 $01
    ld e, c                                       ; $64f4: $59
    ld bc, $015c                                  ; $64f5: $01 $5c $01
    ld e, a                                       ; $64f8: $5f
    ld bc, $0163                                  ; $64f9: $01 $63 $01
    ld h, [hl]                                    ; $64fc: $66
    ld bc, $0169                                  ; $64fd: $01 $69 $01
    ld l, h                                       ; $6500: $6c
    ld bc, $0170                                  ; $6501: $01 $70 $01
    ld [hl], e                                    ; $6504: $73
    ld bc, $0176                                  ; $6505: $01 $76 $01
    ld a, c                                       ; $6508: $79
    ld bc, $017d                                  ; $6509: $01 $7d $01
    add b                                         ; $650c: $80
    ld bc, $0183                                  ; $650d: $01 $83 $01
    add [hl]                                      ; $6510: $86
    ld bc, $018a                                  ; $6511: $01 $8a $01
    adc l                                         ; $6514: $8d
    ld bc, $0190                                  ; $6515: $01 $90 $01
    sub e                                         ; $6518: $93
    ld bc, $0197                                  ; $6519: $01 $97 $01
    sbc d                                         ; $651c: $9a
    ld bc, $019e                                  ; $651d: $01 $9e $01
    and c                                         ; $6520: $a1
    ld bc, $01a4                                  ; $6521: $01 $a4 $01
    xor b                                         ; $6524: $a8
    ld bc, $01ab                                  ; $6525: $01 $ab $01
    xor [hl]                                      ; $6528: $ae
    ld bc, $01b1                                  ; $6529: $01 $b1 $01
    or l                                          ; $652c: $b5
    ld bc, $01b8                                  ; $652d: $01 $b8 $01
    cp e                                          ; $6530: $bb
    ld bc, $01bf                                  ; $6531: $01 $bf $01
    jp nz, $c501                                  ; $6534: $c2 $01 $c5

    ld bc, $01c8                                  ; $6537: $01 $c8 $01
    call z, $cf01                                 ; $653a: $cc $01 $cf
    ld bc, $01d2                                  ; $653d: $01 $d2 $01
    sub $01                                       ; $6540: $d6 $01
    reti                                          ; $6542: $d9


    ld bc, $01dd                                  ; $6543: $01 $dd $01
    inc bc                                        ; $6546: $03
    nop                                           ; $6547: $00
    cpl                                           ; $6548: $2f
    nop                                           ; $6549: $00
    add hl, sp                                    ; $654a: $39
    nop                                           ; $654b: $00
    ld b, d                                       ; $654c: $42
    nop                                           ; $654d: $00
    ld c, d                                       ; $654e: $4a
    nop                                           ; $654f: $00
    ld d, c                                       ; $6550: $51
    nop                                           ; $6551: $00
    ld e, d                                       ; $6552: $5a
    nop                                           ; $6553: $00
    ld h, b                                       ; $6554: $60
    nop                                           ; $6555: $00
    ld h, [hl]                                    ; $6556: $66
    nop                                           ; $6557: $00
    ld l, e                                       ; $6558: $6b
    nop                                           ; $6559: $00
    ld [hl], c                                    ; $655a: $71
    nop                                           ; $655b: $00
    halt                                          ; $655c: $76
    nop                                           ; $655d: $00
    ld a, e                                       ; $655e: $7b
    nop                                           ; $655f: $00
    ld a, a                                       ; $6560: $7f
    nop                                           ; $6561: $00
    add h                                         ; $6562: $84
    nop                                           ; $6563: $00
    adc b                                         ; $6564: $88
    nop                                           ; $6565: $00
    adc l                                         ; $6566: $8d
    nop                                           ; $6567: $00
    sub c                                         ; $6568: $91
    nop                                           ; $6569: $00
    sub [hl]                                      ; $656a: $96
    nop                                           ; $656b: $00
    sbc d                                         ; $656c: $9a
    nop                                           ; $656d: $00
    sbc [hl]                                      ; $656e: $9e
    nop                                           ; $656f: $00
    and e                                         ; $6570: $a3
    nop                                           ; $6571: $00
    and a                                         ; $6572: $a7
    nop                                           ; $6573: $00
    xor e                                         ; $6574: $ab
    nop                                           ; $6575: $00
    xor a                                         ; $6576: $af
    nop                                           ; $6577: $00
    or e                                          ; $6578: $b3
    nop                                           ; $6579: $00
    or a                                          ; $657a: $b7
    nop                                           ; $657b: $00
    cp e                                          ; $657c: $bb
    nop                                           ; $657d: $00
    cp a                                          ; $657e: $bf
    nop                                           ; $657f: $00
    jp $c700                                      ; $6580: $c3 $00 $c7


    nop                                           ; $6583: $00
    rlc b                                         ; $6584: $cb $00
    rst $08                                       ; $6586: $cf
    nop                                           ; $6587: $00
    db $d3                                        ; $6588: $d3
    nop                                           ; $6589: $00
    sub $00                                       ; $658a: $d6 $00
    jp c, $de00                                   ; $658c: $da $00 $de

    nop                                           ; $658f: $00
    ld [c], a                                     ; $6590: $e2
    nop                                           ; $6591: $00
    and $00                                       ; $6592: $e6 $00
    jp hl                                         ; $6594: $e9


    nop                                           ; $6595: $00
    db $ed                                        ; $6596: $ed
    nop                                           ; $6597: $00
    pop af                                        ; $6598: $f1
    nop                                           ; $6599: $00
    db $f4                                        ; $659a: $f4
    nop                                           ; $659b: $00
    ld hl, sp+$00                                 ; $659c: $f8 $00
    db $fd                                        ; $659e: $fd
    nop                                           ; $659f: $00
    nop                                           ; $65a0: $00
    ld bc, HeaderLogo                             ; $65a1: $01 $04 $01
    rlca                                          ; $65a4: $07
    ld bc, $010b                                  ; $65a5: $01 $0b $01
    rrca                                          ; $65a8: $0f
    ld bc, $0113                                  ; $65a9: $01 $13 $01
    rla                                           ; $65ac: $17
    ld bc, $011a                                  ; $65ad: $01 $1a $01
    ld e, $01                                     ; $65b0: $1e $01
    ld [hl+], a                                   ; $65b2: $22
    ld bc, $0125                                  ; $65b3: $01 $25 $01
    add hl, hl                                    ; $65b6: $29
    ld bc, $012d                                  ; $65b7: $01 $2d $01
    ld sp, $3401                                  ; $65ba: $31 $01 $34
    ld bc, $0138                                  ; $65bd: $01 $38 $01
    inc a                                         ; $65c0: $3c
    ld bc, $0140                                  ; $65c1: $01 $40 $01
    ld b, e                                       ; $65c4: $43
    ld bc, HeaderCartridgeType                    ; $65c5: $01 $47 $01
    ld c, e                                       ; $65c8: $4b
    ld bc, $014f                                  ; $65c9: $01 $4f $01
    ld d, d                                       ; $65cc: $52
    ld bc, $0156                                  ; $65cd: $01 $56 $01
    ld e, d                                       ; $65d0: $5a
    ld bc, $015d                                  ; $65d1: $01 $5d $01
    ld h, c                                       ; $65d4: $61
    ld bc, $0165                                  ; $65d5: $01 $65 $01
    ld l, b                                       ; $65d8: $68
    ld bc, $016c                                  ; $65d9: $01 $6c $01
    ld [hl], b                                    ; $65dc: $70
    ld bc, $0174                                  ; $65dd: $01 $74 $01
    ld a, b                                       ; $65e0: $78
    ld bc, $017b                                  ; $65e1: $01 $7b $01
    add b                                         ; $65e4: $80
    ld bc, $0183                                  ; $65e5: $01 $83 $01
    add [hl]                                      ; $65e8: $86
    ld bc, $018b                                  ; $65e9: $01 $8b $01
    adc [hl]                                      ; $65ec: $8e
    ld bc, $0192                                  ; $65ed: $01 $92 $01
    sub [hl]                                      ; $65f0: $96
    ld bc, $019a                                  ; $65f1: $01 $9a $01
    sbc l                                         ; $65f4: $9d
    ld bc, $01a1                                  ; $65f5: $01 $a1 $01
    and l                                         ; $65f8: $a5
    ld bc, $01a9                                  ; $65f9: $01 $a9 $01
    xor l                                         ; $65fc: $ad
    ld bc, $01b0                                  ; $65fd: $01 $b0 $01
    or h                                          ; $6600: $b4
    ld bc, $01b8                                  ; $6601: $01 $b8 $01
    cp h                                          ; $6604: $bc
    ld bc, $01bf                                  ; $6605: $01 $bf $01
    jp $c701                                      ; $6608: $c3 $01 $c7


    ld bc, $01cb                                  ; $660b: $01 $cb $01
    rst $08                                       ; $660e: $cf
    ld bc, $01d3                                  ; $660f: $01 $d3 $01
    sub $01                                       ; $6612: $d6 $01
    jp c, $de01                                   ; $6614: $da $01 $de

    ld bc, $0004                                  ; $6617: $01 $04 $00
    ld [hl], $00                                  ; $661a: $36 $00
    ld b, d                                       ; $661c: $42
    nop                                           ; $661d: $00
    ld c, h                                       ; $661e: $4c
    nop                                           ; $661f: $00
    ld d, [hl]                                    ; $6620: $56
    nop                                           ; $6621: $00
    ld e, [hl]                                    ; $6622: $5e
    nop                                           ; $6623: $00
    ld l, b                                       ; $6624: $68
    nop                                           ; $6625: $00
    ld l, a                                       ; $6626: $6f
    nop                                           ; $6627: $00
    ld [hl], l                                    ; $6628: $75
    nop                                           ; $6629: $00
    ld a, h                                       ; $662a: $7c
    nop                                           ; $662b: $00
    add d                                         ; $662c: $82
    nop                                           ; $662d: $00
    add a                                         ; $662e: $87
    nop                                           ; $662f: $00
    adc l                                         ; $6630: $8d
    nop                                           ; $6631: $00
    sub e                                         ; $6632: $93
    nop                                           ; $6633: $00
    sbc b                                         ; $6634: $98
    nop                                           ; $6635: $00
    sbc [hl]                                      ; $6636: $9e
    nop                                           ; $6637: $00
    and e                                         ; $6638: $a3
    nop                                           ; $6639: $00
    xor b                                         ; $663a: $a8
    nop                                           ; $663b: $00
    xor l                                         ; $663c: $ad
    nop                                           ; $663d: $00
    or d                                          ; $663e: $b2
    nop                                           ; $663f: $00
    cp b                                          ; $6640: $b8
    nop                                           ; $6641: $00
    cp h                                          ; $6642: $bc
    nop                                           ; $6643: $00
    pop bc                                        ; $6644: $c1
    nop                                           ; $6645: $00
    add $00                                       ; $6646: $c6 $00
    rlc b                                         ; $6648: $cb $00
    ret nc                                        ; $664a: $d0

    nop                                           ; $664b: $00
    push de                                       ; $664c: $d5
    nop                                           ; $664d: $00
    reti                                          ; $664e: $d9


    nop                                           ; $664f: $00
    sbc $00                                       ; $6650: $de $00
    ld [c], a                                     ; $6652: $e2
    nop                                           ; $6653: $00
    add sp, $00                                   ; $6654: $e8 $00
    db $ec                                        ; $6656: $ec
    nop                                           ; $6657: $00
    pop af                                        ; $6658: $f1
    nop                                           ; $6659: $00
    push af                                       ; $665a: $f5
    nop                                           ; $665b: $00
    ld a, [$fe00]                                 ; $665c: $fa $00 $fe
    nop                                           ; $665f: $00
    inc bc                                        ; $6660: $03
    ld bc, $0107                                  ; $6661: $01 $07 $01
    inc c                                         ; $6664: $0c
    ld bc, $0111                                  ; $6665: $01 $11 $01
    dec d                                         ; $6668: $15
    ld bc, $0119                                  ; $6669: $01 $19 $01
    ld e, $01                                     ; $666c: $1e $01
    ld [hl+], a                                   ; $666e: $22
    ld bc, $0127                                  ; $666f: $01 $27 $01
    inc l                                         ; $6672: $2c
    ld bc, $0130                                  ; $6673: $01 $30 $01
    inc [hl]                                      ; $6676: $34
    ld bc, $0139                                  ; $6677: $01 $39 $01
    ld a, $01                                     ; $667a: $3e $01
    ld b, d                                       ; $667c: $42
    ld bc, HeaderCartridgeType                    ; $667d: $01 $47 $01
    ld c, e                                       ; $6680: $4b
    ld bc, $0150                                  ; $6681: $01 $50 $01
    ld d, h                                       ; $6684: $54
    ld bc, $0159                                  ; $6685: $01 $59 $01
    ld e, l                                       ; $6688: $5d
    ld bc, $0162                                  ; $6689: $01 $62 $01
    ld h, [hl]                                    ; $668c: $66
    ld bc, $016b                                  ; $668d: $01 $6b $01
    ld l, a                                       ; $6690: $6f
    ld bc, $0173                                  ; $6691: $01 $73 $01
    ld a, b                                       ; $6694: $78
    ld bc, $017d                                  ; $6695: $01 $7d $01
    add c                                         ; $6698: $81
    ld bc, $0186                                  ; $6699: $01 $86 $01
    adc d                                         ; $669c: $8a
    ld bc, $018f                                  ; $669d: $01 $8f $01
    sub h                                         ; $66a0: $94
    ld bc, $0198                                  ; $66a1: $01 $98 $01
    sbc l                                         ; $66a4: $9d
    ld bc, $01a1                                  ; $66a5: $01 $a1 $01
    and l                                         ; $66a8: $a5
    ld bc, $01aa                                  ; $66a9: $01 $aa $01
    xor a                                         ; $66ac: $af
    ld bc, $01b3                                  ; $66ad: $01 $b3 $01
    cp b                                          ; $66b0: $b8
    ld bc, $01bc                                  ; $66b1: $01 $bc $01
    pop bc                                        ; $66b4: $c1
    ld bc, $01c5                                  ; $66b5: $01 $c5 $01
    jp z, $ce01                                   ; $66b8: $ca $01 $ce

    ld bc, $01d3                                  ; $66bb: $01 $d3 $01
    ret c                                         ; $66be: $d8

    ld bc, $01dc                                  ; $66bf: $01 $dc $01
    call c, $1a66                                 ; $66c2: $dc $66 $1a
    ld h, a                                       ; $66c5: $67
    ld e, b                                       ; $66c6: $58
    ld h, a                                       ; $66c7: $67
    sub [hl]                                      ; $66c8: $96
    ld h, a                                       ; $66c9: $67
    call nc, Call_000_1267                        ; $66ca: $d4 $67 $12
    ld l, b                                       ; $66cd: $68
    ld d, b                                       ; $66ce: $50
    ld l, b                                       ; $66cf: $68
    adc [hl]                                      ; $66d0: $8e
    ld l, b                                       ; $66d1: $68
    call z, Call_000_0a68                         ; $66d2: $cc $68 $0a
    ld l, c                                       ; $66d5: $69
    ld c, b                                       ; $66d6: $48
    ld l, c                                       ; $66d7: $69
    add [hl]                                      ; $66d8: $86
    ld l, c                                       ; $66d9: $69
    call nz, Call_000_0169                        ; $66da: $c4 $69 $01
    nop                                           ; $66dd: $00
    ld c, $00                                     ; $66de: $0e $00
    dec de                                        ; $66e0: $1b
    nop                                           ; $66e1: $00
    inc hl                                        ; $66e2: $23
    nop                                           ; $66e3: $00
    dec hl                                        ; $66e4: $2b
    nop                                           ; $66e5: $00
    ld sp, $3700                                  ; $66e6: $31 $00 $37
    nop                                           ; $66e9: $00
    inc a                                         ; $66ea: $3c
    nop                                           ; $66eb: $00
    ld b, c                                       ; $66ec: $41
    nop                                           ; $66ed: $00
    ld b, a                                       ; $66ee: $47
    nop                                           ; $66ef: $00
    ld c, e                                       ; $66f0: $4b
    nop                                           ; $66f1: $00
    ld c, a                                       ; $66f2: $4f
    nop                                           ; $66f3: $00
    ld d, e                                       ; $66f4: $53
    nop                                           ; $66f5: $00
    ld d, [hl]                                    ; $66f6: $56
    nop                                           ; $66f7: $00
    ld e, c                                       ; $66f8: $59
    nop                                           ; $66f9: $00
    ld e, e                                       ; $66fa: $5b
    nop                                           ; $66fb: $00
    ld e, [hl]                                    ; $66fc: $5e
    nop                                           ; $66fd: $00
    ld h, d                                       ; $66fe: $62
    nop                                           ; $66ff: $00
    ld h, h                                       ; $6700: $64
    nop                                           ; $6701: $00
    ld h, [hl]                                    ; $6702: $66
    nop                                           ; $6703: $00
    ld l, b                                       ; $6704: $68
    nop                                           ; $6705: $00
    ld l, d                                       ; $6706: $6a
    nop                                           ; $6707: $00
    ld l, h                                       ; $6708: $6c
    nop                                           ; $6709: $00
    ld l, [hl]                                    ; $670a: $6e
    nop                                           ; $670b: $00
    ld l, a                                       ; $670c: $6f
    nop                                           ; $670d: $00
    ld [hl], c                                    ; $670e: $71
    nop                                           ; $670f: $00
    ld [hl], e                                    ; $6710: $73
    nop                                           ; $6711: $00
    ld [hl], h                                    ; $6712: $74
    nop                                           ; $6713: $00
    ld [hl], l                                    ; $6714: $75
    nop                                           ; $6715: $00
    ld [hl], a                                    ; $6716: $77
    nop                                           ; $6717: $00
    ld a, b                                       ; $6718: $78
    nop                                           ; $6719: $00
    ld bc, $1000                                  ; $671a: $01 $00 $10
    nop                                           ; $671d: $00
    dec e                                         ; $671e: $1d
    nop                                           ; $671f: $00
    ld h, $00                                     ; $6720: $26 $00
    cpl                                           ; $6722: $2f
    nop                                           ; $6723: $00
    dec [hl]                                      ; $6724: $35
    nop                                           ; $6725: $00
    dec sp                                        ; $6726: $3b
    nop                                           ; $6727: $00
    ld b, c                                       ; $6728: $41
    nop                                           ; $6729: $00
    ld c, b                                       ; $672a: $48
    nop                                           ; $672b: $00
    ld c, h                                       ; $672c: $4c
    nop                                           ; $672d: $00
    ld d, b                                       ; $672e: $50
    nop                                           ; $672f: $00
    ld d, h                                       ; $6730: $54
    nop                                           ; $6731: $00
    ld e, b                                       ; $6732: $58
    nop                                           ; $6733: $00
    ld e, e                                       ; $6734: $5b
    nop                                           ; $6735: $00
    ld e, [hl]                                    ; $6736: $5e
    nop                                           ; $6737: $00
    ld h, c                                       ; $6738: $61
    nop                                           ; $6739: $00
    ld h, h                                       ; $673a: $64
    nop                                           ; $673b: $00
    ld h, [hl]                                    ; $673c: $66
    nop                                           ; $673d: $00
    ld l, c                                       ; $673e: $69
    nop                                           ; $673f: $00
    ld l, e                                       ; $6740: $6b
    nop                                           ; $6741: $00
    ld l, l                                       ; $6742: $6d
    nop                                           ; $6743: $00
    ld l, a                                       ; $6744: $6f
    nop                                           ; $6745: $00
    ld [hl], c                                    ; $6746: $71
    nop                                           ; $6747: $00
    ld [hl], d                                    ; $6748: $72
    nop                                           ; $6749: $00
    ld [hl], h                                    ; $674a: $74
    nop                                           ; $674b: $00
    halt                                          ; $674c: $76
    nop                                           ; $674d: $00
    ld [hl], a                                    ; $674e: $77
    nop                                           ; $674f: $00
    ld a, c                                       ; $6750: $79
    nop                                           ; $6751: $00
    ld a, d                                       ; $6752: $7a
    nop                                           ; $6753: $00
    ld a, e                                       ; $6754: $7b
    nop                                           ; $6755: $00
    ld a, h                                       ; $6756: $7c
    nop                                           ; $6757: $00
    ld bc, $1400                                  ; $6758: $01 $00 $14
    nop                                           ; $675b: $00
    rra                                           ; $675c: $1f
    nop                                           ; $675d: $00
    add hl, hl                                    ; $675e: $29
    nop                                           ; $675f: $00
    ld sp, $3900                                  ; $6760: $31 $00 $39
    nop                                           ; $6763: $00
    ccf                                           ; $6764: $3f
    nop                                           ; $6765: $00
    ld b, a                                       ; $6766: $47
    nop                                           ; $6767: $00
    ld c, e                                       ; $6768: $4b
    nop                                           ; $6769: $00
    ld d, b                                       ; $676a: $50
    nop                                           ; $676b: $00
    ld d, l                                       ; $676c: $55
    nop                                           ; $676d: $00
    ld e, c                                       ; $676e: $59
    nop                                           ; $676f: $00
    ld e, h                                       ; $6770: $5c
    nop                                           ; $6771: $00
    ld h, b                                       ; $6772: $60
    nop                                           ; $6773: $00
    ld h, h                                       ; $6774: $64
    nop                                           ; $6775: $00
    ld h, [hl]                                    ; $6776: $66
    nop                                           ; $6777: $00
    ld l, c                                       ; $6778: $69
    nop                                           ; $6779: $00
    ld l, h                                       ; $677a: $6c
    nop                                           ; $677b: $00
    ld l, [hl]                                    ; $677c: $6e
    nop                                           ; $677d: $00
    ld [hl], b                                    ; $677e: $70
    nop                                           ; $677f: $00
    ld [hl], d                                    ; $6780: $72
    nop                                           ; $6781: $00
    ld [hl], h                                    ; $6782: $74
    nop                                           ; $6783: $00
    halt                                          ; $6784: $76
    nop                                           ; $6785: $00
    ld [hl], a                                    ; $6786: $77
    nop                                           ; $6787: $00
    ld a, c                                       ; $6788: $79
    nop                                           ; $6789: $00
    ld a, e                                       ; $678a: $7b
    nop                                           ; $678b: $00
    ld a, h                                       ; $678c: $7c
    nop                                           ; $678d: $00
    ld a, [hl]                                    ; $678e: $7e
    nop                                           ; $678f: $00
    ld a, a                                       ; $6790: $7f
    nop                                           ; $6791: $00
    add b                                         ; $6792: $80
    nop                                           ; $6793: $00
    add d                                         ; $6794: $82
    nop                                           ; $6795: $00
    ld bc, $1200                                  ; $6796: $01 $00 $12
    nop                                           ; $6799: $00
    inc e                                         ; $679a: $1c
    nop                                           ; $679b: $00
    inc h                                         ; $679c: $24
    nop                                           ; $679d: $00
    inc l                                         ; $679e: $2c
    nop                                           ; $679f: $00
    ld [hl-], a                                   ; $67a0: $32
    nop                                           ; $67a1: $00
    ld a, [hl-]                                   ; $67a2: $3a
    nop                                           ; $67a3: $00
    ld a, $00                                     ; $67a4: $3e $00
    ld b, h                                       ; $67a6: $44
    nop                                           ; $67a7: $00
    ld c, b                                       ; $67a8: $48
    nop                                           ; $67a9: $00
    ld c, l                                       ; $67aa: $4d
    nop                                           ; $67ab: $00
    ld d, b                                       ; $67ac: $50
    nop                                           ; $67ad: $00
    ld d, h                                       ; $67ae: $54
    nop                                           ; $67af: $00
    ld e, b                                       ; $67b0: $58
    nop                                           ; $67b1: $00
    ld e, e                                       ; $67b2: $5b
    nop                                           ; $67b3: $00
    ld e, [hl]                                    ; $67b4: $5e
    nop                                           ; $67b5: $00
    ld h, d                                       ; $67b6: $62
    nop                                           ; $67b7: $00
    ld h, [hl]                                    ; $67b8: $66
    nop                                           ; $67b9: $00
    ld l, b                                       ; $67ba: $68
    nop                                           ; $67bb: $00
    ld l, e                                       ; $67bc: $6b
    nop                                           ; $67bd: $00
    ld l, [hl]                                    ; $67be: $6e
    nop                                           ; $67bf: $00
    ld [hl], c                                    ; $67c0: $71
    nop                                           ; $67c1: $00
    ld [hl], e                                    ; $67c2: $73
    nop                                           ; $67c3: $00
    halt                                          ; $67c4: $76
    nop                                           ; $67c5: $00
    ld a, b                                       ; $67c6: $78
    nop                                           ; $67c7: $00
    ld a, e                                       ; $67c8: $7b
    nop                                           ; $67c9: $00
    ld a, l                                       ; $67ca: $7d
    nop                                           ; $67cb: $00
    ld a, a                                       ; $67cc: $7f
    nop                                           ; $67cd: $00
    add c                                         ; $67ce: $81
    nop                                           ; $67cf: $00
    add e                                         ; $67d0: $83
    nop                                           ; $67d1: $00
    add [hl]                                      ; $67d2: $86
    nop                                           ; $67d3: $00
    ld bc, $1300                                  ; $67d4: $01 $00 $13
    nop                                           ; $67d7: $00
    ld e, $00                                     ; $67d8: $1e $00
    jr z, jr_038_67dc                             ; $67da: $28 $00

jr_038_67dc:
    ld sp, $3700                                  ; $67dc: $31 $00 $37
    nop                                           ; $67df: $00
    ld a, $00                                     ; $67e0: $3e $00
    ld b, e                                       ; $67e2: $43
    nop                                           ; $67e3: $00
    ld c, b                                       ; $67e4: $48
    nop                                           ; $67e5: $00
    ld c, l                                       ; $67e6: $4d
    nop                                           ; $67e7: $00
    ld d, d                                       ; $67e8: $52
    nop                                           ; $67e9: $00
    ld d, [hl]                                    ; $67ea: $56
    nop                                           ; $67eb: $00
    ld e, d                                       ; $67ec: $5a
    nop                                           ; $67ed: $00
    ld e, [hl]                                    ; $67ee: $5e
    nop                                           ; $67ef: $00
    ld h, d                                       ; $67f0: $62
    nop                                           ; $67f1: $00
    ld h, [hl]                                    ; $67f2: $66
    nop                                           ; $67f3: $00
    ld l, b                                       ; $67f4: $68
    nop                                           ; $67f5: $00
    ld l, e                                       ; $67f6: $6b
    nop                                           ; $67f7: $00
    ld l, a                                       ; $67f8: $6f
    nop                                           ; $67f9: $00
    ld [hl], d                                    ; $67fa: $72
    nop                                           ; $67fb: $00
    ld [hl], h                                    ; $67fc: $74
    nop                                           ; $67fd: $00
    halt                                          ; $67fe: $76
    nop                                           ; $67ff: $00
    ld a, c                                       ; $6800: $79
    nop                                           ; $6801: $00
    ld a, h                                       ; $6802: $7c
    nop                                           ; $6803: $00
    ld a, [hl]                                    ; $6804: $7e
    nop                                           ; $6805: $00
    add b                                         ; $6806: $80
    nop                                           ; $6807: $00
    add d                                         ; $6808: $82
    nop                                           ; $6809: $00
    add h                                         ; $680a: $84
    nop                                           ; $680b: $00
    add [hl]                                      ; $680c: $86
    nop                                           ; $680d: $00
    adc b                                         ; $680e: $88
    nop                                           ; $680f: $00
    adc d                                         ; $6810: $8a
    nop                                           ; $6811: $00
    ld bc, $1500                                  ; $6812: $01 $00 $15
    nop                                           ; $6815: $00
    ld hl, $2b00                                  ; $6816: $21 $00 $2b
    nop                                           ; $6819: $00
    dec [hl]                                      ; $681a: $35
    nop                                           ; $681b: $00
    inc a                                         ; $681c: $3c
    nop                                           ; $681d: $00
    ld b, e                                       ; $681e: $43
    nop                                           ; $681f: $00
    ld c, c                                       ; $6820: $49
    nop                                           ; $6821: $00
    ld c, a                                       ; $6822: $4f
    nop                                           ; $6823: $00
    ld d, e                                       ; $6824: $53
    nop                                           ; $6825: $00
    ld e, b                                       ; $6826: $58
    nop                                           ; $6827: $00
    ld e, l                                       ; $6828: $5d
    nop                                           ; $6829: $00
    ld h, c                                       ; $682a: $61
    nop                                           ; $682b: $00
    ld h, l                                       ; $682c: $65
    nop                                           ; $682d: $00
    ld l, c                                       ; $682e: $69
    nop                                           ; $682f: $00
    ld l, h                                       ; $6830: $6c
    nop                                           ; $6831: $00
    ld l, a                                       ; $6832: $6f
    nop                                           ; $6833: $00
    ld [hl], d                                    ; $6834: $72
    nop                                           ; $6835: $00
    halt                                          ; $6836: $76
    nop                                           ; $6837: $00
    ld a, b                                       ; $6838: $78
    nop                                           ; $6839: $00
    ld a, e                                       ; $683a: $7b
    nop                                           ; $683b: $00
    ld a, l                                       ; $683c: $7d
    nop                                           ; $683d: $00
    add b                                         ; $683e: $80
    nop                                           ; $683f: $00
    add d                                         ; $6840: $82
    nop                                           ; $6841: $00
    add l                                         ; $6842: $85
    nop                                           ; $6843: $00
    add [hl]                                      ; $6844: $86
    nop                                           ; $6845: $00
    adc c                                         ; $6846: $89
    nop                                           ; $6847: $00
    adc d                                         ; $6848: $8a
    nop                                           ; $6849: $00
    adc l                                         ; $684a: $8d
    nop                                           ; $684b: $00
    adc [hl]                                      ; $684c: $8e
    nop                                           ; $684d: $00
    sub b                                         ; $684e: $90
    nop                                           ; $684f: $00
    ld bc, $1600                                  ; $6850: $01 $00 $16
    nop                                           ; $6853: $00
    inc hl                                        ; $6854: $23
    nop                                           ; $6855: $00
    ld l, $00                                     ; $6856: $2e $00
    jr c, jr_038_685a                             ; $6858: $38 $00

jr_038_685a:
    ld b, b                                       ; $685a: $40
    nop                                           ; $685b: $00
    ld b, a                                       ; $685c: $47
    nop                                           ; $685d: $00
    ld c, l                                       ; $685e: $4d
    nop                                           ; $685f: $00
    ld d, e                                       ; $6860: $53
    nop                                           ; $6861: $00
    ld e, c                                       ; $6862: $59
    nop                                           ; $6863: $00
    ld e, l                                       ; $6864: $5d
    nop                                           ; $6865: $00
    ld h, d                                       ; $6866: $62
    nop                                           ; $6867: $00
    ld h, [hl]                                    ; $6868: $66
    nop                                           ; $6869: $00
    ld l, e                                       ; $686a: $6b
    nop                                           ; $686b: $00
    ld l, [hl]                                    ; $686c: $6e
    nop                                           ; $686d: $00
    ld [hl], c                                    ; $686e: $71
    nop                                           ; $686f: $00
    ld [hl], l                                    ; $6870: $75
    nop                                           ; $6871: $00
    ld a, b                                       ; $6872: $78
    nop                                           ; $6873: $00
    ld a, e                                       ; $6874: $7b
    nop                                           ; $6875: $00
    ld a, [hl]                                    ; $6876: $7e
    nop                                           ; $6877: $00
    add c                                         ; $6878: $81
    nop                                           ; $6879: $00
    add e                                         ; $687a: $83
    nop                                           ; $687b: $00
    add [hl]                                      ; $687c: $86
    nop                                           ; $687d: $00
    adc c                                         ; $687e: $89
    nop                                           ; $687f: $00
    adc e                                         ; $6880: $8b
    nop                                           ; $6881: $00
    adc l                                         ; $6882: $8d
    nop                                           ; $6883: $00
    adc a                                         ; $6884: $8f
    nop                                           ; $6885: $00
    sub c                                         ; $6886: $91
    nop                                           ; $6887: $00
    sub e                                         ; $6888: $93
    nop                                           ; $6889: $00
    sub l                                         ; $688a: $95
    nop                                           ; $688b: $00
    sub a                                         ; $688c: $97
    nop                                           ; $688d: $00
    ld bc, $1800                                  ; $688e: $01 $00 $18
    nop                                           ; $6891: $00
    dec h                                         ; $6892: $25
    nop                                           ; $6893: $00
    ld sp, $3b00                                  ; $6894: $31 $00 $3b
    nop                                           ; $6897: $00
    ld b, h                                       ; $6898: $44
    nop                                           ; $6899: $00
    ld c, d                                       ; $689a: $4a
    nop                                           ; $689b: $00
    ld d, c                                       ; $689c: $51
    nop                                           ; $689d: $00
    ld d, a                                       ; $689e: $57
    nop                                           ; $689f: $00
    ld e, l                                       ; $68a0: $5d
    nop                                           ; $68a1: $00
    ld h, c                                       ; $68a2: $61
    nop                                           ; $68a3: $00
    ld h, [hl]                                    ; $68a4: $66
    nop                                           ; $68a5: $00
    ld l, e                                       ; $68a6: $6b
    nop                                           ; $68a7: $00
    ld l, a                                       ; $68a8: $6f
    nop                                           ; $68a9: $00
    ld [hl], e                                    ; $68aa: $73
    nop                                           ; $68ab: $00
    halt                                          ; $68ac: $76
    nop                                           ; $68ad: $00
    ld a, d                                       ; $68ae: $7a
    nop                                           ; $68af: $00
    ld a, [hl]                                    ; $68b0: $7e
    nop                                           ; $68b1: $00
    add b                                         ; $68b2: $80
    nop                                           ; $68b3: $00
    add h                                         ; $68b4: $84
    nop                                           ; $68b5: $00
    add a                                         ; $68b6: $87
    nop                                           ; $68b7: $00
    adc c                                         ; $68b8: $89
    nop                                           ; $68b9: $00
    adc e                                         ; $68ba: $8b
    nop                                           ; $68bb: $00
    adc [hl]                                      ; $68bc: $8e
    nop                                           ; $68bd: $00
    sub b                                         ; $68be: $90
    nop                                           ; $68bf: $00
    sub d                                         ; $68c0: $92
    nop                                           ; $68c1: $00
    sub h                                         ; $68c2: $94
    nop                                           ; $68c3: $00
    sub a                                         ; $68c4: $97
    nop                                           ; $68c5: $00
    sbc c                                         ; $68c6: $99
    nop                                           ; $68c7: $00
    sbc d                                         ; $68c8: $9a
    nop                                           ; $68c9: $00
    sbc h                                         ; $68ca: $9c
    nop                                           ; $68cb: $00
    ld bc, $1900                                  ; $68cc: $01 $00 $19
    nop                                           ; $68cf: $00
    jr z, jr_038_68d2                             ; $68d0: $28 $00

jr_038_68d2:
    inc [hl]                                      ; $68d2: $34
    nop                                           ; $68d3: $00
    ld a, $00                                     ; $68d4: $3e $00
    ld c, b                                       ; $68d6: $48
    nop                                           ; $68d7: $00
    ld c, a                                       ; $68d8: $4f
    nop                                           ; $68d9: $00
    ld d, [hl]                                    ; $68da: $56
    nop                                           ; $68db: $00
    ld e, h                                       ; $68dc: $5c
    nop                                           ; $68dd: $00
    ld h, d                                       ; $68de: $62
    nop                                           ; $68df: $00
    ld h, a                                       ; $68e0: $67
    nop                                           ; $68e1: $00
    ld l, l                                       ; $68e2: $6d
    nop                                           ; $68e3: $00
    ld [hl], c                                    ; $68e4: $71
    nop                                           ; $68e5: $00
    ld [hl], l                                    ; $68e6: $75
    nop                                           ; $68e7: $00
    ld a, c                                       ; $68e8: $79
    nop                                           ; $68e9: $00
    ld a, l                                       ; $68ea: $7d
    nop                                           ; $68eb: $00
    add b                                         ; $68ec: $80
    nop                                           ; $68ed: $00
    add h                                         ; $68ee: $84
    nop                                           ; $68ef: $00
    add a                                         ; $68f0: $87
    nop                                           ; $68f1: $00
    adc d                                         ; $68f2: $8a
    nop                                           ; $68f3: $00
    adc l                                         ; $68f4: $8d
    nop                                           ; $68f5: $00
    sub b                                         ; $68f6: $90
    nop                                           ; $68f7: $00
    sub e                                         ; $68f8: $93
    nop                                           ; $68f9: $00
    sub l                                         ; $68fa: $95
    nop                                           ; $68fb: $00
    sub a                                         ; $68fc: $97
    nop                                           ; $68fd: $00
    sbc d                                         ; $68fe: $9a
    nop                                           ; $68ff: $00
    sbc e                                         ; $6900: $9b
    nop                                           ; $6901: $00
    sbc [hl]                                      ; $6902: $9e
    nop                                           ; $6903: $00
    and b                                         ; $6904: $a0
    nop                                           ; $6905: $00
    and d                                         ; $6906: $a2
    nop                                           ; $6907: $00
    and h                                         ; $6908: $a4
    nop                                           ; $6909: $00
    ld bc, $1b00                                  ; $690a: $01 $00 $1b
    nop                                           ; $690d: $00
    dec hl                                        ; $690e: $2b
    nop                                           ; $690f: $00
    jr c, jr_038_6912                             ; $6910: $38 $00

jr_038_6912:
    ld b, c                                       ; $6912: $41
    nop                                           ; $6913: $00
    ld c, h                                       ; $6914: $4c
    nop                                           ; $6915: $00
    ld d, h                                       ; $6916: $54
    nop                                           ; $6917: $00
    ld e, e                                       ; $6918: $5b
    nop                                           ; $6919: $00
    ld h, d                                       ; $691a: $62
    nop                                           ; $691b: $00
    ld l, b                                       ; $691c: $68
    nop                                           ; $691d: $00
    ld l, l                                       ; $691e: $6d
    nop                                           ; $691f: $00
    ld [hl], e                                    ; $6920: $73
    nop                                           ; $6921: $00
    ld [hl], a                                    ; $6922: $77
    nop                                           ; $6923: $00
    ld a, h                                       ; $6924: $7c
    nop                                           ; $6925: $00
    add b                                         ; $6926: $80
    nop                                           ; $6927: $00
    add h                                         ; $6928: $84
    nop                                           ; $6929: $00
    adc b                                         ; $692a: $88
    nop                                           ; $692b: $00
    adc e                                         ; $692c: $8b
    nop                                           ; $692d: $00
    adc [hl]                                      ; $692e: $8e
    nop                                           ; $692f: $00
    sub d                                         ; $6930: $92
    nop                                           ; $6931: $00
    sub l                                         ; $6932: $95
    nop                                           ; $6933: $00
    sub a                                         ; $6934: $97
    nop                                           ; $6935: $00
    sbc d                                         ; $6936: $9a
    nop                                           ; $6937: $00
    sbc l                                         ; $6938: $9d
    nop                                           ; $6939: $00
    sbc a                                         ; $693a: $9f
    nop                                           ; $693b: $00
    and c                                         ; $693c: $a1
    nop                                           ; $693d: $00
    and h                                         ; $693e: $a4
    nop                                           ; $693f: $00
    and [hl]                                      ; $6940: $a6
    nop                                           ; $6941: $00
    xor b                                         ; $6942: $a8
    nop                                           ; $6943: $00
    xor e                                         ; $6944: $ab
    nop                                           ; $6945: $00
    xor h                                         ; $6946: $ac
    nop                                           ; $6947: $00
    ld bc, $1c00                                  ; $6948: $01 $00 $1c
    nop                                           ; $694b: $00
    dec hl                                        ; $694c: $2b
    nop                                           ; $694d: $00
    add hl, sp                                    ; $694e: $39
    nop                                           ; $694f: $00
    ld b, h                                       ; $6950: $44
    nop                                           ; $6951: $00
    ld c, h                                       ; $6952: $4c
    nop                                           ; $6953: $00
    ld d, l                                       ; $6954: $55
    nop                                           ; $6955: $00
    ld e, h                                       ; $6956: $5c
    nop                                           ; $6957: $00
    ld h, e                                       ; $6958: $63
    nop                                           ; $6959: $00
    ld l, c                                       ; $695a: $69
    nop                                           ; $695b: $00
    ld l, [hl]                                    ; $695c: $6e
    nop                                           ; $695d: $00
    ld [hl], h                                    ; $695e: $74
    nop                                           ; $695f: $00
    ld a, c                                       ; $6960: $79
    nop                                           ; $6961: $00
    ld a, [hl]                                    ; $6962: $7e
    nop                                           ; $6963: $00
    add e                                         ; $6964: $83
    nop                                           ; $6965: $00
    add a                                         ; $6966: $87
    nop                                           ; $6967: $00
    adc e                                         ; $6968: $8b
    nop                                           ; $6969: $00
    adc a                                         ; $696a: $8f
    nop                                           ; $696b: $00
    sub d                                         ; $696c: $92
    nop                                           ; $696d: $00
    sub [hl]                                      ; $696e: $96
    nop                                           ; $696f: $00
    sbc c                                         ; $6970: $99
    nop                                           ; $6971: $00
    sbc h                                         ; $6972: $9c
    nop                                           ; $6973: $00
    sbc a                                         ; $6974: $9f
    nop                                           ; $6975: $00
    and d                                         ; $6976: $a2
    nop                                           ; $6977: $00
    and l                                         ; $6978: $a5
    nop                                           ; $6979: $00
    xor b                                         ; $697a: $a8
    nop                                           ; $697b: $00
    xor d                                         ; $697c: $aa
    nop                                           ; $697d: $00
    xor l                                         ; $697e: $ad
    nop                                           ; $697f: $00
    or b                                          ; $6980: $b0
    nop                                           ; $6981: $00
    or d                                          ; $6982: $b2
    nop                                           ; $6983: $00
    or h                                          ; $6984: $b4
    nop                                           ; $6985: $00
    ld bc, $1f00                                  ; $6986: $01 $00 $1f
    nop                                           ; $6989: $00
    cpl                                           ; $698a: $2f
    nop                                           ; $698b: $00
    ccf                                           ; $698c: $3f
    nop                                           ; $698d: $00
    ld c, d                                       ; $698e: $4a
    nop                                           ; $698f: $00
    ld d, e                                       ; $6990: $53
    nop                                           ; $6991: $00
    ld e, h                                       ; $6992: $5c
    nop                                           ; $6993: $00
    ld h, h                                       ; $6994: $64
    nop                                           ; $6995: $00
    ld l, e                                       ; $6996: $6b
    nop                                           ; $6997: $00
    ld [hl], d                                    ; $6998: $72
    nop                                           ; $6999: $00
    ld a, b                                       ; $699a: $78
    nop                                           ; $699b: $00
    ld a, [hl]                                    ; $699c: $7e
    nop                                           ; $699d: $00
    add h                                         ; $699e: $84
    nop                                           ; $699f: $00
    adc c                                         ; $69a0: $89
    nop                                           ; $69a1: $00
    adc [hl]                                      ; $69a2: $8e
    nop                                           ; $69a3: $00
    sub d                                         ; $69a4: $92
    nop                                           ; $69a5: $00
    sub a                                         ; $69a6: $97
    nop                                           ; $69a7: $00
    sbc e                                         ; $69a8: $9b
    nop                                           ; $69a9: $00
    and b                                         ; $69aa: $a0
    nop                                           ; $69ab: $00
    and e                                         ; $69ac: $a3
    nop                                           ; $69ad: $00
    and a                                         ; $69ae: $a7
    nop                                           ; $69af: $00
    xor e                                         ; $69b0: $ab
    nop                                           ; $69b1: $00
    xor a                                         ; $69b2: $af
    nop                                           ; $69b3: $00
    or d                                          ; $69b4: $b2
    nop                                           ; $69b5: $00
    or l                                          ; $69b6: $b5
    nop                                           ; $69b7: $00
    cp b                                          ; $69b8: $b8
    nop                                           ; $69b9: $00
    cp e                                          ; $69ba: $bb
    nop                                           ; $69bb: $00
    cp [hl]                                       ; $69bc: $be
    nop                                           ; $69bd: $00
    pop bc                                        ; $69be: $c1
    nop                                           ; $69bf: $00
    call nz, $c700                                ; $69c0: $c4 $00 $c7
    nop                                           ; $69c3: $00
    ld bc, $2300                                  ; $69c4: $01 $00 $23
    nop                                           ; $69c7: $00
    jr c, jr_038_69ca                             ; $69c8: $38 $00

jr_038_69ca:
    ld c, b                                       ; $69ca: $48
    nop                                           ; $69cb: $00
    ld d, h                                       ; $69cc: $54
    nop                                           ; $69cd: $00
    ld e, a                                       ; $69ce: $5f
    nop                                           ; $69cf: $00
    ld l, c                                       ; $69d0: $69
    nop                                           ; $69d1: $00
    ld [hl], d                                    ; $69d2: $72
    nop                                           ; $69d3: $00
    ld a, d                                       ; $69d4: $7a
    nop                                           ; $69d5: $00
    add d                                         ; $69d6: $82
    nop                                           ; $69d7: $00
    adc c                                         ; $69d8: $89
    nop                                           ; $69d9: $00
    sub c                                         ; $69da: $91
    nop                                           ; $69db: $00
    sbc b                                         ; $69dc: $98
    nop                                           ; $69dd: $00
    sbc [hl]                                      ; $69de: $9e
    nop                                           ; $69df: $00
    and e                                         ; $69e0: $a3
    nop                                           ; $69e1: $00
    xor c                                         ; $69e2: $a9
    nop                                           ; $69e3: $00
    xor [hl]                                      ; $69e4: $ae
    nop                                           ; $69e5: $00
    or e                                          ; $69e6: $b3
    nop                                           ; $69e7: $00
    cp b                                          ; $69e8: $b8
    nop                                           ; $69e9: $00
    cp l                                          ; $69ea: $bd
    nop                                           ; $69eb: $00
    pop bc                                        ; $69ec: $c1
    nop                                           ; $69ed: $00
    push bc                                       ; $69ee: $c5
    nop                                           ; $69ef: $00
    ret                                           ; $69f0: $c9


    nop                                           ; $69f1: $00
    adc $00                                       ; $69f2: $ce $00
    jp nc, $d600                                  ; $69f4: $d2 $00 $d6

    nop                                           ; $69f7: $00
    reti                                          ; $69f8: $d9


    nop                                           ; $69f9: $00
    db $dd                                        ; $69fa: $dd
    nop                                           ; $69fb: $00
    ldh [rP1], a                                  ; $69fc: $e0 $00
    db $e3                                        ; $69fe: $e3
    nop                                           ; $69ff: $00
    add sp, $00                                   ; $6a00: $e8 $00

    ld a, c                                       ; $6a02: $79
    cp $0d                                        ; $6a03: $fe $0d
    jr nc, jr_038_6a45                            ; $6a05: $30 $3e

    ld a, [$d32a]                                 ; $6a07: $fa $2a $d3
    cp $02                                        ; $6a0a: $fe $02
    jr z, jr_038_6a33                             ; $6a0c: $28 $25

    ld h, $00                                     ; $6a0e: $26 $00
    ld l, c                                       ; $6a10: $69
    add hl, hl                                    ; $6a11: $29
    ld bc, $6a49                                  ; $6a12: $01 $49 $6a
    add hl, bc                                    ; $6a15: $09
    ld a, [hl+]                                   ; $6a16: $2a
    ld b, [hl]                                    ; $6a17: $46
    ld c, a                                       ; $6a18: $4f
    ld h, d                                       ; $6a19: $62
    ld l, e                                       ; $6a1a: $6b
    res 0, l                                      ; $6a1b: $cb $85
    add hl, bc                                    ; $6a1d: $09
    bit 0, e                                      ; $6a1e: $cb $43
    jr nz, jr_038_6a26                            ; $6a20: $20 $04

    ld a, [hl+]                                   ; $6a22: $2a
    ld h, [hl]                                    ; $6a23: $66
    ld l, a                                       ; $6a24: $6f
    ret                                           ; $6a25: $c9


jr_038_6a26:
    ld e, [hl]                                    ; $6a26: $5e
    inc hl                                        ; $6a27: $23
    ld d, [hl]                                    ; $6a28: $56
    inc hl                                        ; $6a29: $23
    ld a, [hl+]                                   ; $6a2a: $2a
    ld h, [hl]                                    ; $6a2b: $66
    ld l, a                                       ; $6a2c: $6f
    add hl, de                                    ; $6a2d: $19
    srl h                                         ; $6a2e: $cb $3c
    rr l                                          ; $6a30: $cb $1d
    ret                                           ; $6a32: $c9


jr_038_6a33:
    ld h, $00                                     ; $6a33: $26 $00
    ld l, c                                       ; $6a35: $69
    add hl, hl                                    ; $6a36: $29
    ld bc, $7bd1                                  ; $6a37: $01 $d1 $7b
    add hl, bc                                    ; $6a3a: $09
    ld a, [hl+]                                   ; $6a3b: $2a
    ld h, [hl]                                    ; $6a3c: $66
    ld l, a                                       ; $6a3d: $6f
    res 0, e                                      ; $6a3e: $cb $83
    add hl, de                                    ; $6a40: $19
    ld l, [hl]                                    ; $6a41: $6e
    ld h, $00                                     ; $6a42: $26 $00
    ret                                           ; $6a44: $c9


jr_038_6a45:
    ld hl, $0040                                  ; $6a45: $21 $40 $00
    ret                                           ; $6a48: $c9


    ld h, e                                       ; $6a49: $63
    ld l, d                                       ; $6a4a: $6a

    db $5d, $6c

    dec [hl]                                      ; $6a4d: $35
    ld l, [hl]                                    ; $6a4e: $6e
    jp hl                                         ; $6a4f: $e9


    ld l, a                                       ; $6a50: $6f
    sub e                                         ; $6a51: $93
    ld [hl], c                                    ; $6a52: $71
    dec e                                         ; $6a53: $1d
    ld [hl], e                                    ; $6a54: $73
    adc c                                         ; $6a55: $89
    ld [hl], h                                    ; $6a56: $74
    db $db                                        ; $6a57: $db
    ld [hl], l                                    ; $6a58: $75
    add hl, de                                    ; $6a59: $19
    ld [hl], a                                    ; $6a5a: $77
    ld b, c                                       ; $6a5b: $41
    ld a, b                                       ; $6a5c: $78
    ld d, e                                       ; $6a5d: $53
    ld a, c                                       ; $6a5e: $79
    ld c, e                                       ; $6a5f: $4b
    ld a, d                                       ; $6a60: $7a

    db $21, $7b

    dec b                                         ; $6a63: $05
    nop                                           ; $6a64: $00
    ld c, $00                                     ; $6a65: $0e $00
    ld [hl+], a                                   ; $6a67: $22
    nop                                           ; $6a68: $00
    jr z, jr_038_6a6b                             ; $6a69: $28 $00

jr_038_6a6b:
    ld l, $00                                     ; $6a6b: $2e $00
    inc [hl]                                      ; $6a6d: $34
    nop                                           ; $6a6e: $00
    jr c, jr_038_6a71                             ; $6a6f: $38 $00

jr_038_6a71:
    inc a                                         ; $6a71: $3c
    nop                                           ; $6a72: $00
    ld b, d                                       ; $6a73: $42
    nop                                           ; $6a74: $00
    ld b, h                                       ; $6a75: $44
    nop                                           ; $6a76: $00
    ld c, d                                       ; $6a77: $4a
    nop                                           ; $6a78: $00
    ld c, l                                       ; $6a79: $4d
    nop                                           ; $6a7a: $00
    ld d, b                                       ; $6a7b: $50
    nop                                           ; $6a7c: $00
    ld d, e                                       ; $6a7d: $53
    nop                                           ; $6a7e: $00
    ld d, [hl]                                    ; $6a7f: $56
    nop                                           ; $6a80: $00
    ld e, c                                       ; $6a81: $59
    nop                                           ; $6a82: $00
    ld e, h                                       ; $6a83: $5c
    nop                                           ; $6a84: $00
    ld e, [hl]                                    ; $6a85: $5e
    nop                                           ; $6a86: $00
    ld h, c                                       ; $6a87: $61
    nop                                           ; $6a88: $00
    ld h, h                                       ; $6a89: $64
    nop                                           ; $6a8a: $00
    ld h, [hl]                                    ; $6a8b: $66
    nop                                           ; $6a8c: $00
    ld l, c                                       ; $6a8d: $69
    nop                                           ; $6a8e: $00
    ld l, e                                       ; $6a8f: $6b
    nop                                           ; $6a90: $00
    ld l, l                                       ; $6a91: $6d
    nop                                           ; $6a92: $00
    ld [hl], b                                    ; $6a93: $70
    nop                                           ; $6a94: $00
    ld [hl], d                                    ; $6a95: $72
    nop                                           ; $6a96: $00
    ld [hl], h                                    ; $6a97: $74
    nop                                           ; $6a98: $00
    ld [hl], a                                    ; $6a99: $77
    nop                                           ; $6a9a: $00
    ld a, c                                       ; $6a9b: $79
    nop                                           ; $6a9c: $00
    ld a, e                                       ; $6a9d: $7b
    nop                                           ; $6a9e: $00
    ld a, l                                       ; $6a9f: $7d
    nop                                           ; $6aa0: $00
    ld a, a                                       ; $6aa1: $7f
    nop                                           ; $6aa2: $00
    add c                                         ; $6aa3: $81
    nop                                           ; $6aa4: $00
    add e                                         ; $6aa5: $83
    nop                                           ; $6aa6: $00
    add l                                         ; $6aa7: $85
    nop                                           ; $6aa8: $00
    add [hl]                                      ; $6aa9: $86
    nop                                           ; $6aaa: $00
    adc c                                         ; $6aab: $89
    nop                                           ; $6aac: $00
    adc d                                         ; $6aad: $8a
    nop                                           ; $6aae: $00
    adc l                                         ; $6aaf: $8d
    nop                                           ; $6ab0: $00
    adc a                                         ; $6ab1: $8f
    nop                                           ; $6ab2: $00
    sub b                                         ; $6ab3: $90
    nop                                           ; $6ab4: $00
    sub e                                         ; $6ab5: $93
    nop                                           ; $6ab6: $00
    sub h                                         ; $6ab7: $94
    nop                                           ; $6ab8: $00
    sub [hl]                                      ; $6ab9: $96
    nop                                           ; $6aba: $00
    sbc b                                         ; $6abb: $98
    nop                                           ; $6abc: $00
    sbc d                                         ; $6abd: $9a
    nop                                           ; $6abe: $00
    sbc e                                         ; $6abf: $9b
    nop                                           ; $6ac0: $00
    sbc l                                         ; $6ac1: $9d
    nop                                           ; $6ac2: $00
    sbc [hl]                                      ; $6ac3: $9e
    nop                                           ; $6ac4: $00
    and c                                         ; $6ac5: $a1
    nop                                           ; $6ac6: $00
    and d                                         ; $6ac7: $a2
    nop                                           ; $6ac8: $00
    and h                                         ; $6ac9: $a4
    nop                                           ; $6aca: $00
    and l                                         ; $6acb: $a5
    nop                                           ; $6acc: $00
    and a                                         ; $6acd: $a7
    nop                                           ; $6ace: $00
    xor c                                         ; $6acf: $a9
    nop                                           ; $6ad0: $00
    xor e                                         ; $6ad1: $ab
    nop                                           ; $6ad2: $00
    xor l                                         ; $6ad3: $ad
    nop                                           ; $6ad4: $00
    xor a                                         ; $6ad5: $af
    nop                                           ; $6ad6: $00
    or b                                          ; $6ad7: $b0
    nop                                           ; $6ad8: $00
    or d                                          ; $6ad9: $b2
    nop                                           ; $6ada: $00
    or e                                          ; $6adb: $b3
    nop                                           ; $6adc: $00
    or l                                          ; $6add: $b5
    nop                                           ; $6ade: $00
    or a                                          ; $6adf: $b7
    nop                                           ; $6ae0: $00
    cp c                                          ; $6ae1: $b9
    nop                                           ; $6ae2: $00
    cp d                                          ; $6ae3: $ba
    nop                                           ; $6ae4: $00
    cp h                                          ; $6ae5: $bc
    nop                                           ; $6ae6: $00
    cp [hl]                                       ; $6ae7: $be
    nop                                           ; $6ae8: $00
    cp a                                          ; $6ae9: $bf
    nop                                           ; $6aea: $00
    pop bc                                        ; $6aeb: $c1
    nop                                           ; $6aec: $00
    jp nz, $c400                                  ; $6aed: $c2 $00 $c4

    nop                                           ; $6af0: $00
    add $00                                       ; $6af1: $c6 $00
    rst $00                                       ; $6af3: $c7
    nop                                           ; $6af4: $00
    ret                                           ; $6af5: $c9


    nop                                           ; $6af6: $00
    rlc b                                         ; $6af7: $cb $00
    call z, $ce00                                 ; $6af9: $cc $00 $ce
    nop                                           ; $6afc: $00
    rst $08                                       ; $6afd: $cf
    nop                                           ; $6afe: $00
    pop de                                        ; $6aff: $d1
    nop                                           ; $6b00: $00
    jp nc, $d400                                  ; $6b01: $d2 $00 $d4

    nop                                           ; $6b04: $00
    push de                                       ; $6b05: $d5
    nop                                           ; $6b06: $00
    rst $10                                       ; $6b07: $d7
    nop                                           ; $6b08: $00
    reti                                          ; $6b09: $d9


    nop                                           ; $6b0a: $00
    db $db                                        ; $6b0b: $db
    nop                                           ; $6b0c: $00
    call c, $dd00                                 ; $6b0d: $dc $00 $dd
    nop                                           ; $6b10: $00
    rst $18                                       ; $6b11: $df
    nop                                           ; $6b12: $00
    pop hl                                        ; $6b13: $e1
    nop                                           ; $6b14: $00
    ld [c], a                                     ; $6b15: $e2
    nop                                           ; $6b16: $00
    db $e3                                        ; $6b17: $e3
    nop                                           ; $6b18: $00
    push hl                                       ; $6b19: $e5
    nop                                           ; $6b1a: $00
    rst $20                                       ; $6b1b: $e7
    nop                                           ; $6b1c: $00
    jp hl                                         ; $6b1d: $e9


    nop                                           ; $6b1e: $00
    ld [$eb00], a                                 ; $6b1f: $ea $00 $eb
    nop                                           ; $6b22: $00
    db $ed                                        ; $6b23: $ed
    nop                                           ; $6b24: $00
    rst $28                                       ; $6b25: $ef
    nop                                           ; $6b26: $00
    ldh a, [rP1]                                  ; $6b27: $f0 $00
    pop af                                        ; $6b29: $f1
    nop                                           ; $6b2a: $00
    di                                            ; $6b2b: $f3
    nop                                           ; $6b2c: $00
    push af                                       ; $6b2d: $f5
    nop                                           ; $6b2e: $00
    or $00                                        ; $6b2f: $f6 $00
    rst $30                                       ; $6b31: $f7
    nop                                           ; $6b32: $00
    ld sp, hl                                     ; $6b33: $f9
    nop                                           ; $6b34: $00
    ei                                            ; $6b35: $fb
    nop                                           ; $6b36: $00
    db $fc                                        ; $6b37: $fc
    nop                                           ; $6b38: $00
    db $fd                                        ; $6b39: $fd
    nop                                           ; $6b3a: $00
    rst $38                                       ; $6b3b: $ff
    nop                                           ; $6b3c: $00
    nop                                           ; $6b3d: $00
    ld bc, $0102                                  ; $6b3e: $01 $02 $01
    inc b                                         ; $6b41: $04
    ld bc, $0105                                  ; $6b42: $01 $05 $01
    rlca                                          ; $6b45: $07
    ld bc, $0108                                  ; $6b46: $01 $08 $01
    ld a, [bc]                                    ; $6b49: $0a
    ld bc, $010b                                  ; $6b4a: $01 $0b $01
    dec c                                         ; $6b4d: $0d
    ld bc, $010e                                  ; $6b4e: $01 $0e $01
    rrca                                          ; $6b51: $0f
    ld bc, $0111                                  ; $6b52: $01 $11 $01
    inc de                                        ; $6b55: $13
    ld bc, $0114                                  ; $6b56: $01 $14 $01
    dec d                                         ; $6b59: $15
    ld bc, $0117                                  ; $6b5a: $01 $17 $01
    add hl, de                                    ; $6b5d: $19
    ld bc, $011a                                  ; $6b5e: $01 $1a $01
    inc e                                         ; $6b61: $1c
    ld bc, $011d                                  ; $6b62: $01 $1d $01
    rra                                           ; $6b65: $1f
    ld bc, $0120                                  ; $6b66: $01 $20 $01
    ld [hl+], a                                   ; $6b69: $22
    ld bc, $0123                                  ; $6b6a: $01 $23 $01
    dec h                                         ; $6b6d: $25
    ld bc, $0126                                  ; $6b6e: $01 $26 $01
    jr z, jr_038_6b74                             ; $6b71: $28 $01

    add hl, hl                                    ; $6b73: $29

jr_038_6b74:
    ld bc, $012b                                  ; $6b74: $01 $2b $01
    inc l                                         ; $6b77: $2c
    ld bc, $012e                                  ; $6b78: $01 $2e $01
    cpl                                           ; $6b7b: $2f
    ld bc, $0131                                  ; $6b7c: $01 $31 $01
    ld [hl-], a                                   ; $6b7f: $32
    ld bc, HeaderTitle                            ; $6b80: $01 $34 $01
    dec [hl]                                      ; $6b83: $35
    ld bc, $0137                                  ; $6b84: $01 $37 $01
    jr c, jr_038_6b8a                             ; $6b87: $38 $01

    add hl, sp                                    ; $6b89: $39

jr_038_6b8a:
    ld bc, $013b                                  ; $6b8a: $01 $3b $01
    dec a                                         ; $6b8d: $3d
    ld bc, $013e                                  ; $6b8e: $01 $3e $01
    ccf                                           ; $6b91: $3f
    ld bc, $0141                                  ; $6b92: $01 $41 $01
    ld b, d                                       ; $6b95: $42
    ld bc, HeaderNewLicenseeCode                  ; $6b96: $01 $44 $01
    ld b, l                                       ; $6b99: $45
    ld bc, HeaderSGBFlag                          ; $6b9a: $01 $46 $01
    ld c, b                                       ; $6b9d: $48
    ld bc, HeaderDestinationCode                  ; $6b9e: $01 $4a $01
    ld c, h                                       ; $6ba1: $4c
    ld bc, HeaderComplementCheck                  ; $6ba2: $01 $4d $01
    ld c, [hl]                                    ; $6ba5: $4e
    ld bc, $0150                                  ; $6ba6: $01 $50 $01
    ld d, c                                       ; $6ba9: $51
    ld bc, $0152                                  ; $6baa: $01 $52 $01
    ld d, h                                       ; $6bad: $54
    ld bc, $0156                                  ; $6bae: $01 $56 $01
    ld d, a                                       ; $6bb1: $57
    ld bc, $0159                                  ; $6bb2: $01 $59 $01
    ld e, d                                       ; $6bb5: $5a
    ld bc, $015c                                  ; $6bb6: $01 $5c $01
    ld e, l                                       ; $6bb9: $5d
    ld bc, $015f                                  ; $6bba: $01 $5f $01
    ld h, b                                       ; $6bbd: $60
    ld bc, $0162                                  ; $6bbe: $01 $62 $01
    ld h, e                                       ; $6bc1: $63
    ld bc, $0165                                  ; $6bc2: $01 $65 $01
    ld h, [hl]                                    ; $6bc5: $66
    ld bc, $0167                                  ; $6bc6: $01 $67 $01
    ld l, c                                       ; $6bc9: $69
    ld bc, $016b                                  ; $6bca: $01 $6b $01
    ld l, e                                       ; $6bcd: $6b
    ld bc, $016d                                  ; $6bce: $01 $6d $01
    ld l, a                                       ; $6bd1: $6f
    ld bc, $0170                                  ; $6bd2: $01 $70 $01
    ld [hl], d                                    ; $6bd5: $72
    ld bc, $0173                                  ; $6bd6: $01 $73 $01
    ld [hl], l                                    ; $6bd9: $75
    ld bc, $0177                                  ; $6bda: $01 $77 $01
    ld a, b                                       ; $6bdd: $78
    ld bc, $0179                                  ; $6bde: $01 $79 $01
    ld a, e                                       ; $6be1: $7b
    ld bc, $017c                                  ; $6be2: $01 $7c $01
    ld a, [hl]                                    ; $6be5: $7e
    ld bc, $0180                                  ; $6be6: $01 $80 $01
    add c                                         ; $6be9: $81
    ld bc, $0182                                  ; $6bea: $01 $82 $01
    add h                                         ; $6bed: $84
    ld bc, $0185                                  ; $6bee: $01 $85 $01
    add a                                         ; $6bf1: $87
    ld bc, $0188                                  ; $6bf2: $01 $88 $01
    adc d                                         ; $6bf5: $8a
    ld bc, $018b                                  ; $6bf6: $01 $8b $01
    adc l                                         ; $6bf9: $8d
    ld bc, $018f                                  ; $6bfa: $01 $8f $01
    sub b                                         ; $6bfd: $90
    ld bc, $0191                                  ; $6bfe: $01 $91 $01
    sub e                                         ; $6c01: $93
    ld bc, $0194                                  ; $6c02: $01 $94 $01
    sub [hl]                                      ; $6c05: $96
    ld bc, $0197                                  ; $6c06: $01 $97 $01
    sbc c                                         ; $6c09: $99
    ld bc, $019a                                  ; $6c0a: $01 $9a $01
    sbc e                                         ; $6c0d: $9b
    ld bc, $019d                                  ; $6c0e: $01 $9d $01
    sbc [hl]                                      ; $6c11: $9e
    ld bc, $01a0                                  ; $6c12: $01 $a0 $01
    and c                                         ; $6c15: $a1
    ld bc, $01a3                                  ; $6c16: $01 $a3 $01
    and h                                         ; $6c19: $a4
    ld bc, $01a6                                  ; $6c1a: $01 $a6 $01
    xor b                                         ; $6c1d: $a8
    ld bc, $01a9                                  ; $6c1e: $01 $a9 $01
    xor e                                         ; $6c21: $ab
    ld bc, $01ac                                  ; $6c22: $01 $ac $01
    xor l                                         ; $6c25: $ad
    ld bc, $01af                                  ; $6c26: $01 $af $01
    or b                                          ; $6c29: $b0
    ld bc, $01b2                                  ; $6c2a: $01 $b2 $01
    or e                                          ; $6c2d: $b3
    ld bc, $01b5                                  ; $6c2e: $01 $b5 $01
    or [hl]                                       ; $6c31: $b6
    ld bc, $01b8                                  ; $6c32: $01 $b8 $01
    cp c                                          ; $6c35: $b9
    ld bc, $01bb                                  ; $6c36: $01 $bb $01
    cp h                                          ; $6c39: $bc
    ld bc, $01be                                  ; $6c3a: $01 $be $01
    cp a                                          ; $6c3d: $bf
    ld bc, $01c1                                  ; $6c3e: $01 $c1 $01
    jp nz, $c401                                  ; $6c41: $c2 $01 $c4

    ld bc, $01c5                                  ; $6c44: $01 $c5 $01
    rst $00                                       ; $6c47: $c7
    ld bc, $01c8                                  ; $6c48: $01 $c8 $01
    jp z, $cb01                                   ; $6c4b: $ca $01 $cb

    ld bc, $01cd                                  ; $6c4e: $01 $cd $01
    adc $01                                       ; $6c51: $ce $01
    ret nc                                        ; $6c53: $d0

    ld bc, $01d2                                  ; $6c54: $01 $d2 $01
    db $d3                                        ; $6c57: $d3
    ld bc, $01d4                                  ; $6c58: $01 $d4 $01
    sub $01                                       ; $6c5b: $d6 $01
    dec b                                         ; $6c5d: $05
    nop                                           ; $6c5e: $00
    rrca                                          ; $6c5f: $0f
    nop                                           ; $6c60: $00
    dec h                                         ; $6c61: $25
    nop                                           ; $6c62: $00
    inc l                                         ; $6c63: $2c
    nop                                           ; $6c64: $00
    ld [hl-], a                                   ; $6c65: $32
    nop                                           ; $6c66: $00
    scf                                           ; $6c67: $37
    nop                                           ; $6c68: $00
    dec a                                         ; $6c69: $3d
    nop                                           ; $6c6a: $00
    ld b, b                                       ; $6c6b: $40
    nop                                           ; $6c6c: $00
    ld b, [hl]                                    ; $6c6d: $46
    nop                                           ; $6c6e: $00
    ld c, c                                       ; $6c6f: $49
    nop                                           ; $6c70: $00
    ld c, l                                       ; $6c71: $4d
    nop                                           ; $6c72: $00
    ld d, b                                       ; $6c73: $50
    nop                                           ; $6c74: $00
    ld d, e                                       ; $6c75: $53
    nop                                           ; $6c76: $00
    ld d, [hl]                                    ; $6c77: $56
    nop                                           ; $6c78: $00
    ld e, d                                       ; $6c79: $5a
    nop                                           ; $6c7a: $00
    ld e, h                                       ; $6c7b: $5c
    nop                                           ; $6c7c: $00
    ld e, a                                       ; $6c7d: $5f
    nop                                           ; $6c7e: $00
    ld h, c                                       ; $6c7f: $61
    nop                                           ; $6c80: $00
    ld h, h                                       ; $6c81: $64
    nop                                           ; $6c82: $00
    ld h, a                                       ; $6c83: $67
    nop                                           ; $6c84: $00
    ld l, c                                       ; $6c85: $69
    nop                                           ; $6c86: $00
    ld l, e                                       ; $6c87: $6b
    nop                                           ; $6c88: $00
    ld l, [hl]                                    ; $6c89: $6e
    nop                                           ; $6c8a: $00
    ld [hl], b                                    ; $6c8b: $70
    nop                                           ; $6c8c: $00
    ld [hl], e                                    ; $6c8d: $73
    nop                                           ; $6c8e: $00
    ld [hl], l                                    ; $6c8f: $75
    nop                                           ; $6c90: $00
    ld [hl], a                                    ; $6c91: $77
    nop                                           ; $6c92: $00
    ld a, c                                       ; $6c93: $79
    nop                                           ; $6c94: $00
    ld a, e                                       ; $6c95: $7b
    nop                                           ; $6c96: $00
    ld a, l                                       ; $6c97: $7d
    nop                                           ; $6c98: $00
    ld a, a                                       ; $6c99: $7f
    nop                                           ; $6c9a: $00
    add d                                         ; $6c9b: $82
    nop                                           ; $6c9c: $00
    add e                                         ; $6c9d: $83
    nop                                           ; $6c9e: $00
    add [hl]                                      ; $6c9f: $86
    nop                                           ; $6ca0: $00
    adc b                                         ; $6ca1: $88
    nop                                           ; $6ca2: $00
    adc d                                         ; $6ca3: $8a
    nop                                           ; $6ca4: $00
    adc h                                         ; $6ca5: $8c
    nop                                           ; $6ca6: $00
    adc [hl]                                      ; $6ca7: $8e
    nop                                           ; $6ca8: $00
    sub b                                         ; $6ca9: $90
    nop                                           ; $6caa: $00
    sub d                                         ; $6cab: $92
    nop                                           ; $6cac: $00
    sub h                                         ; $6cad: $94
    nop                                           ; $6cae: $00
    sub l                                         ; $6caf: $95
    nop                                           ; $6cb0: $00
    sbc b                                         ; $6cb1: $98
    nop                                           ; $6cb2: $00
    sbc c                                         ; $6cb3: $99
    nop                                           ; $6cb4: $00
    sbc h                                         ; $6cb5: $9c
    nop                                           ; $6cb6: $00
    sbc l                                         ; $6cb7: $9d
    nop                                           ; $6cb8: $00
    sbc a                                         ; $6cb9: $9f
    nop                                           ; $6cba: $00
    and c                                         ; $6cbb: $a1
    nop                                           ; $6cbc: $00
    and d                                         ; $6cbd: $a2
    nop                                           ; $6cbe: $00
    and h                                         ; $6cbf: $a4
    nop                                           ; $6cc0: $00
    and [hl]                                      ; $6cc1: $a6
    nop                                           ; $6cc2: $00
    xor b                                         ; $6cc3: $a8
    nop                                           ; $6cc4: $00
    xor d                                         ; $6cc5: $aa
    nop                                           ; $6cc6: $00
    xor h                                         ; $6cc7: $ac
    nop                                           ; $6cc8: $00
    xor [hl]                                      ; $6cc9: $ae
    nop                                           ; $6cca: $00
    or b                                          ; $6ccb: $b0
    nop                                           ; $6ccc: $00
    or d                                          ; $6ccd: $b2
    nop                                           ; $6cce: $00
    or e                                          ; $6ccf: $b3
    nop                                           ; $6cd0: $00
    or l                                          ; $6cd1: $b5
    nop                                           ; $6cd2: $00
    or a                                          ; $6cd3: $b7
    nop                                           ; $6cd4: $00
    cp b                                          ; $6cd5: $b8
    nop                                           ; $6cd6: $00
    cp d                                          ; $6cd7: $ba
    nop                                           ; $6cd8: $00
    cp h                                          ; $6cd9: $bc
    nop                                           ; $6cda: $00
    cp [hl]                                       ; $6cdb: $be
    nop                                           ; $6cdc: $00
    cp a                                          ; $6cdd: $bf
    nop                                           ; $6cde: $00
    pop bc                                        ; $6cdf: $c1
    nop                                           ; $6ce0: $00
    jp $c500                                      ; $6ce1: $c3 $00 $c5


    nop                                           ; $6ce4: $00
    rst $00                                       ; $6ce5: $c7
    nop                                           ; $6ce6: $00
    ret z                                         ; $6ce7: $c8

    nop                                           ; $6ce8: $00
    jp z, $cb00                                   ; $6ce9: $ca $00 $cb

    nop                                           ; $6cec: $00
    adc $00                                       ; $6ced: $ce $00
    rst $08                                       ; $6cef: $cf
    nop                                           ; $6cf0: $00
    pop de                                        ; $6cf1: $d1
    nop                                           ; $6cf2: $00
    db $d3                                        ; $6cf3: $d3
    nop                                           ; $6cf4: $00
    call nc, $d600                                ; $6cf5: $d4 $00 $d6
    nop                                           ; $6cf8: $00
    ret c                                         ; $6cf9: $d8

    nop                                           ; $6cfa: $00
    jp c, $db00                                   ; $6cfb: $da $00 $db

    nop                                           ; $6cfe: $00
    db $dd                                        ; $6cff: $dd
    nop                                           ; $6d00: $00
    rst $18                                       ; $6d01: $df
    nop                                           ; $6d02: $00
    ldh [rP1], a                                  ; $6d03: $e0 $00
    ld [c], a                                     ; $6d05: $e2
    nop                                           ; $6d06: $00
    db $e4                                        ; $6d07: $e4
    nop                                           ; $6d08: $00
    push hl                                       ; $6d09: $e5
    nop                                           ; $6d0a: $00
    rst $20                                       ; $6d0b: $e7
    nop                                           ; $6d0c: $00
    jp hl                                         ; $6d0d: $e9


    nop                                           ; $6d0e: $00
    db $eb                                        ; $6d0f: $eb
    nop                                           ; $6d10: $00
    db $ec                                        ; $6d11: $ec
    nop                                           ; $6d12: $00
    db $ed                                        ; $6d13: $ed
    nop                                           ; $6d14: $00
    rst $28                                       ; $6d15: $ef
    nop                                           ; $6d16: $00

    db $f1, $00

    di                                            ; $6d19: $f3
    nop                                           ; $6d1a: $00
    push af                                       ; $6d1b: $f5
    nop                                           ; $6d1c: $00
    or $00                                        ; $6d1d: $f6 $00
    ld hl, sp+$00                                 ; $6d1f: $f8 $00

    db $f9, $00, $fb, $00, $fd, $00

    cp $00                                        ; $6d27: $fe $00

    db $00, $01, $01, $01

    inc bc                                        ; $6d2d: $03
    ld bc, $0105                                  ; $6d2e: $01 $05 $01
    rlca                                          ; $6d31: $07
    ld bc, $0108                                  ; $6d32: $01 $08 $01
    ld a, [bc]                                    ; $6d35: $0a
    ld bc, $010c                                  ; $6d36: $01 $0c $01
    dec c                                         ; $6d39: $0d
    ld bc, $010f                                  ; $6d3a: $01 $0f $01
    ld de, $1201                                  ; $6d3d: $11 $01 $12
    ld bc, $0114                                  ; $6d40: $01 $14 $01
    dec d                                         ; $6d43: $15
    ld bc, $0117                                  ; $6d44: $01 $17 $01
    add hl, de                                    ; $6d47: $19
    ld bc, $011a                                  ; $6d48: $01 $1a $01
    inc e                                         ; $6d4b: $1c
    ld bc, $011e                                  ; $6d4c: $01 $1e $01
    jr nz, @+$03                                  ; $6d4f: $20 $01

    ld hl, $2301                                  ; $6d51: $21 $01 $23
    ld bc, $0125                                  ; $6d54: $01 $25 $01
    ld h, $01                                     ; $6d57: $26 $01
    jr z, jr_038_6d5c                             ; $6d59: $28 $01

    add hl, hl                                    ; $6d5b: $29

jr_038_6d5c:
    ld bc, $012b                                  ; $6d5c: $01 $2b $01
    dec l                                         ; $6d5f: $2d
    ld bc, $012e                                  ; $6d60: $01 $2e $01
    jr nc, jr_038_6d66                            ; $6d63: $30 $01

    ld [hl-], a                                   ; $6d65: $32

jr_038_6d66:
    ld bc, HeaderTitle                            ; $6d66: $01 $34 $01
    dec [hl]                                      ; $6d69: $35
    ld bc, $0137                                  ; $6d6a: $01 $37 $01
    jr c, jr_038_6d70                             ; $6d6d: $38 $01

    ld a, [hl-]                                   ; $6d6f: $3a

jr_038_6d70:
    ld bc, $013c                                  ; $6d70: $01 $3c $01
    dec a                                         ; $6d73: $3d
    ld bc, HeaderManufacturerCode                 ; $6d74: $01 $3f $01
    ld b, c                                       ; $6d77: $41
    ld bc, $0142                                  ; $6d78: $01 $42 $01
    ld b, h                                       ; $6d7b: $44
    ld bc, HeaderSGBFlag                          ; $6d7c: $01 $46 $01
    ld b, a                                       ; $6d7f: $47
    ld bc, HeaderRAMSize                          ; $6d80: $01 $49 $01
    ld c, e                                       ; $6d83: $4b
    ld bc, HeaderMaskROMVersion                   ; $6d84: $01 $4c $01
    ld c, [hl]                                    ; $6d87: $4e
    ld bc, $0150                                  ; $6d88: $01 $50 $01
    ld d, d                                       ; $6d8b: $52
    ld bc, $0153                                  ; $6d8c: $01 $53 $01
    ld d, l                                       ; $6d8f: $55
    ld bc, $0156                                  ; $6d90: $01 $56 $01
    ld e, b                                       ; $6d93: $58
    ld bc, $015a                                  ; $6d94: $01 $5a $01
    ld e, e                                       ; $6d97: $5b
    ld bc, $015d                                  ; $6d98: $01 $5d $01
    ld e, a                                       ; $6d9b: $5f
    ld bc, $0160                                  ; $6d9c: $01 $60 $01
    ld h, d                                       ; $6d9f: $62
    ld bc, $0164                                  ; $6da0: $01 $64 $01
    ld h, [hl]                                    ; $6da3: $66
    ld bc, $0167                                  ; $6da4: $01 $67 $01
    ld l, c                                       ; $6da7: $69
    ld bc, $016b                                  ; $6da8: $01 $6b $01
    ld l, h                                       ; $6dab: $6c
    ld bc, $016e                                  ; $6dac: $01 $6e $01
    ld [hl], b                                    ; $6daf: $70
    ld bc, $0171                                  ; $6db0: $01 $71 $01
    ld [hl], e                                    ; $6db3: $73
    ld bc, $0174                                  ; $6db4: $01 $74 $01
    halt                                          ; $6db7: $76
    ld bc, $0177                                  ; $6db8: $01 $77 $01
    ld a, d                                       ; $6dbb: $7a
    ld bc, $017b                                  ; $6dbc: $01 $7b $01
    ld a, l                                       ; $6dbf: $7d
    ld bc, $017f                                  ; $6dc0: $01 $7f $01
    add b                                         ; $6dc3: $80
    ld bc, $0182                                  ; $6dc4: $01 $82 $01
    add h                                         ; $6dc7: $84
    ld bc, $0185                                  ; $6dc8: $01 $85 $01
    add a                                         ; $6dcb: $87
    ld bc, $0188                                  ; $6dcc: $01 $88 $01
    adc d                                         ; $6dcf: $8a
    ld bc, $018c                                  ; $6dd0: $01 $8c $01
    adc l                                         ; $6dd3: $8d
    ld bc, $018f                                  ; $6dd4: $01 $8f $01
    sub c                                         ; $6dd7: $91
    ld bc, $0193                                  ; $6dd8: $01 $93 $01
    sub h                                         ; $6ddb: $94
    ld bc, $0196                                  ; $6ddc: $01 $96 $01
    sbc b                                         ; $6ddf: $98
    ld bc, $0199                                  ; $6de0: $01 $99 $01
    sbc e                                         ; $6de3: $9b
    ld bc, $019d                                  ; $6de4: $01 $9d $01
    sbc [hl]                                      ; $6de7: $9e
    ld bc, $01a0                                  ; $6de8: $01 $a0 $01
    and d                                         ; $6deb: $a2
    ld bc, $01a4                                  ; $6dec: $01 $a4 $01
    and l                                         ; $6def: $a5
    ld bc, $01a7                                  ; $6df0: $01 $a7 $01
    xor c                                         ; $6df3: $a9
    ld bc, $01aa                                  ; $6df4: $01 $aa $01
    xor h                                         ; $6df7: $ac
    ld bc, $01ae                                  ; $6df8: $01 $ae $01
    xor a                                         ; $6dfb: $af
    ld bc, $01b1                                  ; $6dfc: $01 $b1 $01
    or e                                          ; $6dff: $b3
    ld bc, $01b4                                  ; $6e00: $01 $b4 $01
    or [hl]                                       ; $6e03: $b6
    ld bc, $01b8                                  ; $6e04: $01 $b8 $01
    cp c                                          ; $6e07: $b9
    ld bc, $01bb                                  ; $6e08: $01 $bb $01
    cp l                                          ; $6e0b: $bd
    ld bc, $01bf                                  ; $6e0c: $01 $bf $01
    ret nz                                        ; $6e0f: $c0

    ld bc, $01c2                                  ; $6e10: $01 $c2 $01
    call nz, $c501                                ; $6e13: $c4 $01 $c5
    ld bc, $01c7                                  ; $6e16: $01 $c7 $01
    ret                                           ; $6e19: $c9


    ld bc, $01ca                                  ; $6e1a: $01 $ca $01
    call z, $ce01                                 ; $6e1d: $cc $01 $ce
    ld bc, $01cf                                  ; $6e20: $01 $cf $01
    pop de                                        ; $6e23: $d1
    ld bc, $01d3                                  ; $6e24: $01 $d3 $01
    push de                                       ; $6e27: $d5
    ld bc, $01d6                                  ; $6e28: $01 $d6 $01
    ret c                                         ; $6e2b: $d8

    ld bc, $01da                                  ; $6e2c: $01 $da $01
    db $db                                        ; $6e2f: $db
    ld bc, $01dd                                  ; $6e30: $01 $dd $01
    rst $18                                       ; $6e33: $df
    ld bc, $0005                                  ; $6e34: $01 $05 $00
    stop                                          ; $6e37: $10 $00
    jr z, jr_038_6e3b                             ; $6e39: $28 $00

jr_038_6e3b:
    cpl                                           ; $6e3b: $2f
    nop                                           ; $6e3c: $00
    dec [hl]                                      ; $6e3d: $35
    nop                                           ; $6e3e: $00
    ld a, [hl-]                                   ; $6e3f: $3a
    nop                                           ; $6e40: $00
    ld b, b                                       ; $6e41: $40
    nop                                           ; $6e42: $00
    ld b, l                                       ; $6e43: $45
    nop                                           ; $6e44: $00
    ld c, c                                       ; $6e45: $49
    nop                                           ; $6e46: $00
    ld c, h                                       ; $6e47: $4c
    nop                                           ; $6e48: $00
    ld d, b                                       ; $6e49: $50
    nop                                           ; $6e4a: $00
    ld d, e                                       ; $6e4b: $53
    nop                                           ; $6e4c: $00
    ld d, [hl]                                    ; $6e4d: $56
    nop                                           ; $6e4e: $00
    ld e, c                                       ; $6e4f: $59
    nop                                           ; $6e50: $00
    ld e, h                                       ; $6e51: $5c
    nop                                           ; $6e52: $00
    ld e, a                                       ; $6e53: $5f
    nop                                           ; $6e54: $00
    ld h, e                                       ; $6e55: $63
    nop                                           ; $6e56: $00
    ld h, l                                       ; $6e57: $65
    nop                                           ; $6e58: $00
    ld l, b                                       ; $6e59: $68
    nop                                           ; $6e5a: $00
    ld l, e                                       ; $6e5b: $6b
    nop                                           ; $6e5c: $00
    ld l, l                                       ; $6e5d: $6d
    nop                                           ; $6e5e: $00
    ld [hl], b                                    ; $6e5f: $70
    nop                                           ; $6e60: $00
    ld [hl], d                                    ; $6e61: $72
    nop                                           ; $6e62: $00
    ld [hl], h                                    ; $6e63: $74
    nop                                           ; $6e64: $00
    ld [hl], a                                    ; $6e65: $77
    nop                                           ; $6e66: $00
    ld a, c                                       ; $6e67: $79
    nop                                           ; $6e68: $00
    ld a, e                                       ; $6e69: $7b
    nop                                           ; $6e6a: $00
    ld a, [hl]                                    ; $6e6b: $7e
    nop                                           ; $6e6c: $00
    add b                                         ; $6e6d: $80
    nop                                           ; $6e6e: $00
    add d                                         ; $6e6f: $82
    nop                                           ; $6e70: $00
    add h                                         ; $6e71: $84
    nop                                           ; $6e72: $00
    add [hl]                                      ; $6e73: $86
    nop                                           ; $6e74: $00
    adc b                                         ; $6e75: $88
    nop                                           ; $6e76: $00
    adc e                                         ; $6e77: $8b
    nop                                           ; $6e78: $00
    adc l                                         ; $6e79: $8d
    nop                                           ; $6e7a: $00
    adc a                                         ; $6e7b: $8f
    nop                                           ; $6e7c: $00
    sub c                                         ; $6e7d: $91
    nop                                           ; $6e7e: $00
    sub e                                         ; $6e7f: $93
    nop                                           ; $6e80: $00
    sub l                                         ; $6e81: $95
    nop                                           ; $6e82: $00
    sub a                                         ; $6e83: $97
    nop                                           ; $6e84: $00
    sbc c                                         ; $6e85: $99
    nop                                           ; $6e86: $00
    sbc e                                         ; $6e87: $9b
    nop                                           ; $6e88: $00
    sbc l                                         ; $6e89: $9d
    nop                                           ; $6e8a: $00
    sbc a                                         ; $6e8b: $9f
    nop                                           ; $6e8c: $00
    and c                                         ; $6e8d: $a1
    nop                                           ; $6e8e: $00
    and e                                         ; $6e8f: $a3
    nop                                           ; $6e90: $00
    and l                                         ; $6e91: $a5
    nop                                           ; $6e92: $00
    and a                                         ; $6e93: $a7
    nop                                           ; $6e94: $00
    xor c                                         ; $6e95: $a9
    nop                                           ; $6e96: $00
    xor e                                         ; $6e97: $ab
    nop                                           ; $6e98: $00
    xor l                                         ; $6e99: $ad
    nop                                           ; $6e9a: $00
    xor a                                         ; $6e9b: $af
    nop                                           ; $6e9c: $00
    or c                                          ; $6e9d: $b1
    nop                                           ; $6e9e: $00
    or e                                          ; $6e9f: $b3
    nop                                           ; $6ea0: $00
    or l                                          ; $6ea1: $b5
    nop                                           ; $6ea2: $00
    or [hl]                                       ; $6ea3: $b6
    nop                                           ; $6ea4: $00
    cp c                                          ; $6ea5: $b9
    nop                                           ; $6ea6: $00
    cp d                                          ; $6ea7: $ba
    nop                                           ; $6ea8: $00
    cp h                                          ; $6ea9: $bc
    nop                                           ; $6eaa: $00
    cp [hl]                                       ; $6eab: $be
    nop                                           ; $6eac: $00
    ret nz                                        ; $6ead: $c0

    nop                                           ; $6eae: $00
    jp nz, $c400                                  ; $6eaf: $c2 $00 $c4

    nop                                           ; $6eb2: $00
    add $00                                       ; $6eb3: $c6 $00
    ret z                                         ; $6eb5: $c8

    nop                                           ; $6eb6: $00
    jp z, $cc00                                   ; $6eb7: $ca $00 $cc

    nop                                           ; $6eba: $00
    call $cf00                                    ; $6ebb: $cd $00 $cf
    nop                                           ; $6ebe: $00
    pop de                                        ; $6ebf: $d1
    nop                                           ; $6ec0: $00
    db $d3                                        ; $6ec1: $d3
    nop                                           ; $6ec2: $00
    push de                                       ; $6ec3: $d5
    nop                                           ; $6ec4: $00
    sub $00                                       ; $6ec5: $d6 $00
    ret c                                         ; $6ec7: $d8

    nop                                           ; $6ec8: $00
    jp c, $dc00                                   ; $6ec9: $da $00 $dc

    nop                                           ; $6ecc: $00
    sbc $00                                       ; $6ecd: $de $00
    ldh [rP1], a                                  ; $6ecf: $e0 $00
    pop hl                                        ; $6ed1: $e1
    nop                                           ; $6ed2: $00
    db $e4                                        ; $6ed3: $e4
    nop                                           ; $6ed4: $00
    push hl                                       ; $6ed5: $e5
    nop                                           ; $6ed6: $00
    rst $20                                       ; $6ed7: $e7
    nop                                           ; $6ed8: $00
    jp hl                                         ; $6ed9: $e9


    nop                                           ; $6eda: $00
    ld [$ec00], a                                 ; $6edb: $ea $00 $ec
    nop                                           ; $6ede: $00
    xor $00                                       ; $6edf: $ee $00
    ldh a, [rP1]                                  ; $6ee1: $f0 $00
    ld a, [c]                                     ; $6ee3: $f2
    nop                                           ; $6ee4: $00
    db $f4                                        ; $6ee5: $f4
    nop                                           ; $6ee6: $00
    push af                                       ; $6ee7: $f5
    nop                                           ; $6ee8: $00
    rst $30                                       ; $6ee9: $f7
    nop                                           ; $6eea: $00
    ld sp, hl                                     ; $6eeb: $f9
    nop                                           ; $6eec: $00
    ei                                            ; $6eed: $fb
    nop                                           ; $6eee: $00
    db $fd                                        ; $6eef: $fd
    nop                                           ; $6ef0: $00
    rst $38                                       ; $6ef1: $ff
    nop                                           ; $6ef2: $00
    nop                                           ; $6ef3: $00
    ld bc, $0102                                  ; $6ef4: $01 $02 $01
    inc b                                         ; $6ef7: $04
    ld bc, $0106                                  ; $6ef8: $01 $06 $01
    ld [$0901], sp                                ; $6efb: $08 $01 $09
    ld bc, $010b                                  ; $6efe: $01 $0b $01
    dec c                                         ; $6f01: $0d
    ld bc, $010f                                  ; $6f02: $01 $0f $01
    db $10                                        ; $6f05: $10
    ld bc, $0112                                  ; $6f06: $01 $12 $01
    inc d                                         ; $6f09: $14
    ld bc, $0116                                  ; $6f0a: $01 $16 $01
    jr jr_038_6f10                                ; $6f0d: $18 $01

    ld a, [de]                                    ; $6f0f: $1a

jr_038_6f10:
    ld bc, $011c                                  ; $6f10: $01 $1c $01
    dec e                                         ; $6f13: $1d
    ld bc, $011f                                  ; $6f14: $01 $1f $01
    ld hl, $2301                                  ; $6f17: $21 $01 $23
    ld bc, $0124                                  ; $6f1a: $01 $24 $01
    ld h, $01                                     ; $6f1d: $26 $01
    daa                                           ; $6f1f: $27
    ld bc, $012a                                  ; $6f20: $01 $2a $01
    inc l                                         ; $6f23: $2c
    ld bc, $012d                                  ; $6f24: $01 $2d $01
    cpl                                           ; $6f27: $2f
    ld bc, $0131                                  ; $6f28: $01 $31 $01
    inc sp                                        ; $6f2b: $33
    ld bc, $0135                                  ; $6f2c: $01 $35 $01
    ld [hl], $01                                  ; $6f2f: $36 $01
    jr c, jr_038_6f34                             ; $6f31: $38 $01

    ld a, [hl-]                                   ; $6f33: $3a

jr_038_6f34:
    ld bc, $013b                                  ; $6f34: $01 $3b $01
    dec a                                         ; $6f37: $3d
    ld bc, HeaderManufacturerCode                 ; $6f38: $01 $3f $01
    ld b, c                                       ; $6f3b: $41
    ld bc, HeaderCGBFlag                          ; $6f3c: $01 $43 $01
    ld b, l                                       ; $6f3f: $45
    ld bc, HeaderCartridgeType                    ; $6f40: $01 $47 $01
    ld c, b                                       ; $6f43: $48
    ld bc, HeaderDestinationCode                  ; $6f44: $01 $4a $01
    ld c, h                                       ; $6f47: $4c
    ld bc, HeaderGlobalChecksum                   ; $6f48: $01 $4e $01
    ld c, a                                       ; $6f4b: $4f
    ld bc, $0151                                  ; $6f4c: $01 $51 $01
    ld d, e                                       ; $6f4f: $53
    ld bc, $0155                                  ; $6f50: $01 $55 $01
    ld d, a                                       ; $6f53: $57
    ld bc, $0159                                  ; $6f54: $01 $59 $01
    ld e, d                                       ; $6f57: $5a
    ld bc, $015c                                  ; $6f58: $01 $5c $01
    ld e, [hl]                                    ; $6f5b: $5e
    ld bc, $0160                                  ; $6f5c: $01 $60 $01
    ld h, d                                       ; $6f5f: $62
    ld bc, $0164                                  ; $6f60: $01 $64 $01
    ld h, [hl]                                    ; $6f63: $66
    ld bc, $0167                                  ; $6f64: $01 $67 $01
    ld l, c                                       ; $6f67: $69
    ld bc, $016b                                  ; $6f68: $01 $6b $01
    ld l, h                                       ; $6f6b: $6c
    ld bc, $016e                                  ; $6f6c: $01 $6e $01
    ld [hl], b                                    ; $6f6f: $70
    ld bc, $0172                                  ; $6f70: $01 $72 $01
    ld [hl], h                                    ; $6f73: $74
    ld bc, $0176                                  ; $6f74: $01 $76 $01
    ld [hl], a                                    ; $6f77: $77
    ld bc, $017a                                  ; $6f78: $01 $7a $01
    ld a, e                                       ; $6f7b: $7b
    ld bc, $017d                                  ; $6f7c: $01 $7d $01
    ld a, a                                       ; $6f7f: $7f
    ld bc, $0180                                  ; $6f80: $01 $80 $01
    add d                                         ; $6f83: $82
    ld bc, $0184                                  ; $6f84: $01 $84 $01
    add [hl]                                      ; $6f87: $86
    ld bc, $0188                                  ; $6f88: $01 $88 $01
    adc d                                         ; $6f8b: $8a
    ld bc, $018b                                  ; $6f8c: $01 $8b $01
    adc l                                         ; $6f8f: $8d
    ld bc, $018f                                  ; $6f90: $01 $8f $01
    sub c                                         ; $6f93: $91
    ld bc, $0192                                  ; $6f94: $01 $92 $01
    sub h                                         ; $6f97: $94
    ld bc, $0196                                  ; $6f98: $01 $96 $01
    sbc b                                         ; $6f9b: $98
    ld bc, $019a                                  ; $6f9c: $01 $9a $01
    sbc h                                         ; $6f9f: $9c
    ld bc, $019e                                  ; $6fa0: $01 $9e $01
    sbc a                                         ; $6fa3: $9f
    ld bc, $01a1                                  ; $6fa4: $01 $a1 $01
    and e                                         ; $6fa7: $a3
    ld bc, $01a5                                  ; $6fa8: $01 $a5 $01
    and a                                         ; $6fab: $a7
    ld bc, $01a9                                  ; $6fac: $01 $a9 $01
    xor e                                         ; $6faf: $ab
    ld bc, $01ac                                  ; $6fb0: $01 $ac $01
    xor [hl]                                      ; $6fb3: $ae
    ld bc, $01b0                                  ; $6fb4: $01 $b0 $01
    or d                                          ; $6fb7: $b2
    ld bc, $01b4                                  ; $6fb8: $01 $b4 $01
    or l                                          ; $6fbb: $b5
    ld bc, $01b7                                  ; $6fbc: $01 $b7 $01
    cp c                                          ; $6fbf: $b9
    ld bc, $01bb                                  ; $6fc0: $01 $bb $01
    cp l                                          ; $6fc3: $bd
    ld bc, $01bf                                  ; $6fc4: $01 $bf $01
    pop bc                                        ; $6fc7: $c1
    ld bc, $01c2                                  ; $6fc8: $01 $c2 $01
    call nz, $c601                                ; $6fcb: $c4 $01 $c6
    ld bc, $01c8                                  ; $6fce: $01 $c8 $01
    jp z, $cc01                                   ; $6fd1: $ca $01 $cc

    ld bc, $01ce                                  ; $6fd4: $01 $ce $01
    rst $08                                       ; $6fd7: $cf
    ld bc, $01d1                                  ; $6fd8: $01 $d1 $01
    db $d3                                        ; $6fdb: $d3
    ld bc, $01d5                                  ; $6fdc: $01 $d5 $01
    rst $10                                       ; $6fdf: $d7
    ld bc, $01d9                                  ; $6fe0: $01 $d9 $01
    jp c, $dd01                                   ; $6fe3: $da $01 $dd

    ld bc, $01de                                  ; $6fe6: $01 $de $01
    inc b                                         ; $6fe9: $04
    nop                                           ; $6fea: $00
    jr jr_038_6fed                                ; $6feb: $18 $00

jr_038_6fed:
    jr nz, jr_038_6fef                            ; $6fed: $20 $00

jr_038_6fef:
    jr z, jr_038_6ff1                             ; $6fef: $28 $00

jr_038_6ff1:
    ld l, $00                                     ; $6ff1: $2e $00
    dec [hl]                                      ; $6ff3: $35
    nop                                           ; $6ff4: $00
    ld a, [hl-]                                   ; $6ff5: $3a
    nop                                           ; $6ff6: $00
    ld b, b                                       ; $6ff7: $40
    nop                                           ; $6ff8: $00
    ld b, h                                       ; $6ff9: $44
    nop                                           ; $6ffa: $00
    ld c, c                                       ; $6ffb: $49
    nop                                           ; $6ffc: $00
    ld c, h                                       ; $6ffd: $4c
    nop                                           ; $6ffe: $00
    ld d, c                                       ; $6fff: $51
    nop                                           ; $7000: $00
    ld d, h                                       ; $7001: $54
    nop                                           ; $7002: $00
    ld d, a                                       ; $7003: $57
    nop                                           ; $7004: $00
    ld e, e                                       ; $7005: $5b
    nop                                           ; $7006: $00
    ld e, [hl]                                    ; $7007: $5e
    nop                                           ; $7008: $00
    ld h, c                                       ; $7009: $61
    nop                                           ; $700a: $00
    ld h, l                                       ; $700b: $65
    nop                                           ; $700c: $00
    ld l, b                                       ; $700d: $68
    nop                                           ; $700e: $00
    ld l, e                                       ; $700f: $6b
    nop                                           ; $7010: $00
    ld l, [hl]                                    ; $7011: $6e
    nop                                           ; $7012: $00
    ld [hl], c                                    ; $7013: $71
    nop                                           ; $7014: $00
    ld [hl], h                                    ; $7015: $74
    nop                                           ; $7016: $00
    ld [hl], a                                    ; $7017: $77
    nop                                           ; $7018: $00
    ld a, c                                       ; $7019: $79
    nop                                           ; $701a: $00
    ld a, h                                       ; $701b: $7c
    nop                                           ; $701c: $00
    ld a, a                                       ; $701d: $7f
    nop                                           ; $701e: $00
    add c                                         ; $701f: $81
    nop                                           ; $7020: $00
    add h                                         ; $7021: $84
    nop                                           ; $7022: $00
    add [hl]                                      ; $7023: $86
    nop                                           ; $7024: $00
    adc c                                         ; $7025: $89
    nop                                           ; $7026: $00
    adc h                                         ; $7027: $8c
    nop                                           ; $7028: $00
    adc [hl]                                      ; $7029: $8e
    nop                                           ; $702a: $00
    sub b                                         ; $702b: $90
    nop                                           ; $702c: $00
    sub e                                         ; $702d: $93
    nop                                           ; $702e: $00
    sub [hl]                                      ; $702f: $96
    nop                                           ; $7030: $00
    sbc b                                         ; $7031: $98
    nop                                           ; $7032: $00
    sbc d                                         ; $7033: $9a
    nop                                           ; $7034: $00
    sbc h                                         ; $7035: $9c
    nop                                           ; $7036: $00
    sbc a                                         ; $7037: $9f
    nop                                           ; $7038: $00
    and c                                         ; $7039: $a1
    nop                                           ; $703a: $00
    and e                                         ; $703b: $a3
    nop                                           ; $703c: $00
    and l                                         ; $703d: $a5
    nop                                           ; $703e: $00
    and a                                         ; $703f: $a7
    nop                                           ; $7040: $00
    xor d                                         ; $7041: $aa
    nop                                           ; $7042: $00
    xor h                                         ; $7043: $ac
    nop                                           ; $7044: $00
    xor [hl]                                      ; $7045: $ae
    nop                                           ; $7046: $00
    or b                                          ; $7047: $b0
    nop                                           ; $7048: $00
    or d                                          ; $7049: $b2
    nop                                           ; $704a: $00
    or l                                          ; $704b: $b5
    nop                                           ; $704c: $00
    or a                                          ; $704d: $b7
    nop                                           ; $704e: $00
    cp c                                          ; $704f: $b9
    nop                                           ; $7050: $00
    cp e                                          ; $7051: $bb
    nop                                           ; $7052: $00
    cp l                                          ; $7053: $bd
    nop                                           ; $7054: $00
    ret nz                                        ; $7055: $c0

    nop                                           ; $7056: $00
    pop bc                                        ; $7057: $c1
    nop                                           ; $7058: $00
    call nz, $c600                                ; $7059: $c4 $00 $c6
    nop                                           ; $705c: $00
    ret z                                         ; $705d: $c8

    nop                                           ; $705e: $00
    jp z, $cd00                                   ; $705f: $ca $00 $cd

    nop                                           ; $7062: $00
    adc $00                                       ; $7063: $ce $00
    ret nc                                        ; $7065: $d0

    nop                                           ; $7066: $00
    pop de                                        ; $7067: $d1
    nop                                           ; $7068: $00
    call nc, $d600                                ; $7069: $d4 $00 $d6
    nop                                           ; $706c: $00
    ret c                                         ; $706d: $d8

    nop                                           ; $706e: $00
    jp c, $dc00                                   ; $706f: $da $00 $dc

    nop                                           ; $7072: $00
    sbc $00                                       ; $7073: $de $00
    ldh [rP1], a                                  ; $7075: $e0 $00
    db $e3                                        ; $7077: $e3
    nop                                           ; $7078: $00
    db $e4                                        ; $7079: $e4
    nop                                           ; $707a: $00
    and $00                                       ; $707b: $e6 $00
    add sp, $00                                   ; $707d: $e8 $00
    jp hl                                         ; $707f: $e9


    nop                                           ; $7080: $00
    db $eb                                        ; $7081: $eb
    nop                                           ; $7082: $00
    xor $00                                       ; $7083: $ee $00
    ldh a, [rP1]                                  ; $7085: $f0 $00
    ld a, [c]                                     ; $7087: $f2
    nop                                           ; $7088: $00
    di                                            ; $7089: $f3
    nop                                           ; $708a: $00
    push af                                       ; $708b: $f5
    nop                                           ; $708c: $00
    rst $30                                       ; $708d: $f7
    nop                                           ; $708e: $00
    ld sp, hl                                     ; $708f: $f9
    nop                                           ; $7090: $00
    db $fc                                        ; $7091: $fc
    nop                                           ; $7092: $00
    db $fd                                        ; $7093: $fd
    nop                                           ; $7094: $00
    cp $00                                        ; $7095: $fe $00
    nop                                           ; $7097: $00
    ld bc, $0102                                  ; $7098: $01 $02 $01
    inc b                                         ; $709b: $04
    ld bc, $0106                                  ; $709c: $01 $06 $01
    ld [$0a01], sp                                ; $709f: $08 $01 $0a
    ld bc, $010c                                  ; $70a2: $01 $0c $01
    ld c, $01                                     ; $70a5: $0e $01
    db $10                                        ; $70a7: $10
    ld bc, $0112                                  ; $70a8: $01 $12 $01
    inc d                                         ; $70ab: $14
    ld bc, $0115                                  ; $70ac: $01 $15 $01
    rla                                           ; $70af: $17
    ld bc, $0118                                  ; $70b0: $01 $18 $01
    dec de                                        ; $70b3: $1b
    ld bc, $011c                                  ; $70b4: $01 $1c $01
    ld e, $01                                     ; $70b7: $1e $01
    jr nz, jr_038_70bc                            ; $70b9: $20 $01

    ld [hl+], a                                   ; $70bb: $22

jr_038_70bc:
    ld bc, $0124                                  ; $70bc: $01 $24 $01
    ld h, $01                                     ; $70bf: $26 $01
    daa                                           ; $70c1: $27
    ld bc, $0129                                  ; $70c2: $01 $29 $01
    dec hl                                        ; $70c5: $2b
    ld bc, $012d                                  ; $70c6: $01 $2d $01
    ld l, $01                                     ; $70c9: $2e $01
    jr nc, jr_038_70ce                            ; $70cb: $30 $01

    ld [hl-], a                                   ; $70cd: $32

jr_038_70ce:
    ld bc, HeaderTitle                            ; $70ce: $01 $34 $01
    ld [hl], $01                                  ; $70d1: $36 $01
    jr c, jr_038_70d6                             ; $70d3: $38 $01

    ld a, [hl-]                                   ; $70d5: $3a

jr_038_70d6:
    ld bc, $013b                                  ; $70d6: $01 $3b $01
    dec a                                         ; $70d9: $3d
    ld bc, $013e                                  ; $70da: $01 $3e $01
    ld b, b                                       ; $70dd: $40
    ld bc, HeaderCGBFlag                          ; $70de: $01 $43 $01
    ld b, h                                       ; $70e1: $44
    ld bc, HeaderSGBFlag                          ; $70e2: $01 $46 $01
    ld c, b                                       ; $70e5: $48
    ld bc, HeaderRAMSize                          ; $70e6: $01 $49 $01
    ld c, e                                       ; $70e9: $4b
    ld bc, HeaderComplementCheck                  ; $70ea: $01 $4d $01
    ld c, a                                       ; $70ed: $4f
    ld bc, $0150                                  ; $70ee: $01 $50 $01
    ld d, d                                       ; $70f1: $52
    ld bc, $0154                                  ; $70f2: $01 $54 $01
    ld d, [hl]                                    ; $70f5: $56
    ld bc, $0158                                  ; $70f6: $01 $58 $01
    ld e, c                                       ; $70f9: $59
    ld bc, $015b                                  ; $70fa: $01 $5b $01
    ld e, l                                       ; $70fd: $5d
    ld bc, $015f                                  ; $70fe: $01 $5f $01
    ld h, b                                       ; $7101: $60
    ld bc, $0162                                  ; $7102: $01 $62 $01
    ld h, h                                       ; $7105: $64
    ld bc, $0166                                  ; $7106: $01 $66 $01
    ld l, b                                       ; $7109: $68
    ld bc, $0169                                  ; $710a: $01 $69 $01
    ld l, e                                       ; $710d: $6b
    ld bc, $016d                                  ; $710e: $01 $6d $01
    ld l, [hl]                                    ; $7111: $6e
    ld bc, $0171                                  ; $7112: $01 $71 $01
    ld [hl], d                                    ; $7115: $72
    ld bc, $0174                                  ; $7116: $01 $74 $01
    halt                                          ; $7119: $76
    ld bc, $0178                                  ; $711a: $01 $78 $01
    ld a, c                                       ; $711d: $79
    ld bc, $017b                                  ; $711e: $01 $7b $01
    ld a, h                                       ; $7121: $7c
    ld bc, $017f                                  ; $7122: $01 $7f $01
    add b                                         ; $7125: $80
    ld bc, $0182                                  ; $7126: $01 $82 $01
    add h                                         ; $7129: $84
    ld bc, $0186                                  ; $712a: $01 $86 $01
    add a                                         ; $712d: $87
    ld bc, $0189                                  ; $712e: $01 $89 $01
    adc d                                         ; $7131: $8a
    ld bc, $018c                                  ; $7132: $01 $8c $01
    adc a                                         ; $7135: $8f
    ld bc, $0190                                  ; $7136: $01 $90 $01
    sub d                                         ; $7139: $92
    ld bc, $0193                                  ; $713a: $01 $93 $01
    sub [hl]                                      ; $713d: $96
    ld bc, $0197                                  ; $713e: $01 $97 $01
    sbc c                                         ; $7141: $99
    ld bc, $019b                                  ; $7142: $01 $9b $01
    sbc l                                         ; $7145: $9d
    ld bc, $019e                                  ; $7146: $01 $9e $01
    and b                                         ; $7149: $a0
    ld bc, $01a2                                  ; $714a: $01 $a2 $01
    and e                                         ; $714d: $a3
    ld bc, $01a5                                  ; $714e: $01 $a5 $01
    and a                                         ; $7151: $a7
    ld bc, $01a9                                  ; $7152: $01 $a9 $01
    xor e                                         ; $7155: $ab
    ld bc, $01ac                                  ; $7156: $01 $ac $01
    xor [hl]                                      ; $7159: $ae
    ld bc, $01b0                                  ; $715a: $01 $b0 $01
    or c                                          ; $715d: $b1
    ld bc, $01b4                                  ; $715e: $01 $b4 $01
    or l                                          ; $7161: $b5
    ld bc, $01b7                                  ; $7162: $01 $b7 $01
    cp b                                          ; $7165: $b8
    ld bc, $01ba                                  ; $7166: $01 $ba $01
    cp h                                          ; $7169: $bc
    ld bc, $01bd                                  ; $716a: $01 $bd $01
    ret nz                                        ; $716d: $c0

    ld bc, $01c1                                  ; $716e: $01 $c1 $01
    jp $c501                                      ; $7171: $c3 $01 $c5


    ld bc, $01c6                                  ; $7174: $01 $c6 $01
    ret z                                         ; $7177: $c8

    ld bc, $01ca                                  ; $7178: $01 $ca $01
    call z, $cd01                                 ; $717b: $cc $01 $cd
    ld bc, $01cf                                  ; $717e: $01 $cf $01
    pop de                                        ; $7181: $d1
    ld bc, $01d2                                  ; $7182: $01 $d2 $01
    call nc, $d601                                ; $7185: $d4 $01 $d6
    ld bc, $01d8                                  ; $7188: $01 $d8 $01
    jp c, $db01                                   ; $718b: $da $01 $db

    ld bc, $01dd                                  ; $718e: $01 $dd $01
    rst $18                                       ; $7191: $df
    ld bc, $0004                                  ; $7192: $01 $04 $00
    inc e                                         ; $7195: $1c
    nop                                           ; $7196: $00
    dec h                                         ; $7197: $25
    nop                                           ; $7198: $00
    inc l                                         ; $7199: $2c
    nop                                           ; $719a: $00
    ld [hl-], a                                   ; $719b: $32
    nop                                           ; $719c: $00
    jr c, jr_038_719f                             ; $719d: $38 $00

jr_038_719f:
    ld a, $00                                     ; $719f: $3e $00
    ld b, h                                       ; $71a1: $44
    nop                                           ; $71a2: $00
    ld c, b                                       ; $71a3: $48
    nop                                           ; $71a4: $00
    ld c, h                                       ; $71a5: $4c
    nop                                           ; $71a6: $00
    ld d, b                                       ; $71a7: $50
    nop                                           ; $71a8: $00
    ld d, h                                       ; $71a9: $54
    nop                                           ; $71aa: $00
    ld d, a                                       ; $71ab: $57
    nop                                           ; $71ac: $00
    ld e, e                                       ; $71ad: $5b
    nop                                           ; $71ae: $00
    ld e, a                                       ; $71af: $5f
    nop                                           ; $71b0: $00
    ld h, d                                       ; $71b1: $62
    nop                                           ; $71b2: $00
    ld h, l                                       ; $71b3: $65
    nop                                           ; $71b4: $00
    ld l, b                                       ; $71b5: $68
    nop                                           ; $71b6: $00
    ld l, h                                       ; $71b7: $6c
    nop                                           ; $71b8: $00
    ld l, a                                       ; $71b9: $6f
    nop                                           ; $71ba: $00
    ld [hl], d                                    ; $71bb: $72
    nop                                           ; $71bc: $00
    ld [hl], h                                    ; $71bd: $74
    nop                                           ; $71be: $00
    ld a, b                                       ; $71bf: $78
    nop                                           ; $71c0: $00
    ld a, d                                       ; $71c1: $7a
    nop                                           ; $71c2: $00
    ld a, l                                       ; $71c3: $7d
    nop                                           ; $71c4: $00
    add b                                         ; $71c5: $80
    nop                                           ; $71c6: $00
    add d                                         ; $71c7: $82
    nop                                           ; $71c8: $00
    add l                                         ; $71c9: $85
    nop                                           ; $71ca: $00
    adc b                                         ; $71cb: $88
    nop                                           ; $71cc: $00
    adc d                                         ; $71cd: $8a
    nop                                           ; $71ce: $00
    adc l                                         ; $71cf: $8d
    nop                                           ; $71d0: $00
    adc a                                         ; $71d1: $8f
    nop                                           ; $71d2: $00
    sub c                                         ; $71d3: $91
    nop                                           ; $71d4: $00
    sub h                                         ; $71d5: $94
    nop                                           ; $71d6: $00
    sub [hl]                                      ; $71d7: $96
    nop                                           ; $71d8: $00
    sbc c                                         ; $71d9: $99
    nop                                           ; $71da: $00
    sbc h                                         ; $71db: $9c
    nop                                           ; $71dc: $00
    sbc [hl]                                      ; $71dd: $9e
    nop                                           ; $71de: $00
    and b                                         ; $71df: $a0
    nop                                           ; $71e0: $00
    and e                                         ; $71e1: $a3
    nop                                           ; $71e2: $00
    and l                                         ; $71e3: $a5
    nop                                           ; $71e4: $00
    and a                                         ; $71e5: $a7
    nop                                           ; $71e6: $00
    xor d                                         ; $71e7: $aa
    nop                                           ; $71e8: $00
    xor h                                         ; $71e9: $ac
    nop                                           ; $71ea: $00
    xor [hl]                                      ; $71eb: $ae
    nop                                           ; $71ec: $00
    or c                                          ; $71ed: $b1
    nop                                           ; $71ee: $00
    or e                                          ; $71ef: $b3
    nop                                           ; $71f0: $00
    or l                                          ; $71f1: $b5
    nop                                           ; $71f2: $00
    or a                                          ; $71f3: $b7
    nop                                           ; $71f4: $00
    cp c                                          ; $71f5: $b9
    nop                                           ; $71f6: $00
    cp h                                          ; $71f7: $bc
    nop                                           ; $71f8: $00
    cp [hl]                                       ; $71f9: $be
    nop                                           ; $71fa: $00
    ret nz                                        ; $71fb: $c0

    nop                                           ; $71fc: $00
    jp $c400                                      ; $71fd: $c3 $00 $c4


    nop                                           ; $7200: $00
    rst $00                                       ; $7201: $c7
    nop                                           ; $7202: $00
    ret z                                         ; $7203: $c8

    nop                                           ; $7204: $00
    rlc b                                         ; $7205: $cb $00
    call $cf00                                    ; $7207: $cd $00 $cf
    nop                                           ; $720a: $00
    jp nc, $d400                                  ; $720b: $d2 $00 $d4

    nop                                           ; $720e: $00
    sub $00                                       ; $720f: $d6 $00
    ret c                                         ; $7211: $d8

    nop                                           ; $7212: $00
    jp c, $dc00                                   ; $7213: $da $00 $dc

    nop                                           ; $7216: $00
    sbc $00                                       ; $7217: $de $00
    ldh [rP1], a                                  ; $7219: $e0 $00
    db $e3                                        ; $721b: $e3
    nop                                           ; $721c: $00
    db $e4                                        ; $721d: $e4
    nop                                           ; $721e: $00
    and $00                                       ; $721f: $e6 $00
    add sp, $00                                   ; $7221: $e8 $00
    db $eb                                        ; $7223: $eb
    nop                                           ; $7224: $00
    db $ed                                        ; $7225: $ed
    nop                                           ; $7226: $00
    xor $00                                       ; $7227: $ee $00
    ldh a, [rP1]                                  ; $7229: $f0 $00
    di                                            ; $722b: $f3
    nop                                           ; $722c: $00
    push af                                       ; $722d: $f5
    nop                                           ; $722e: $00
    rst $30                                       ; $722f: $f7
    nop                                           ; $7230: $00
    ld sp, hl                                     ; $7231: $f9
    nop                                           ; $7232: $00
    ei                                            ; $7233: $fb
    nop                                           ; $7234: $00
    db $fc                                        ; $7235: $fc
    nop                                           ; $7236: $00
    cp $00                                        ; $7237: $fe $00
    ld bc, $0301                                  ; $7239: $01 $01 $03
    ld bc, $0105                                  ; $723c: $01 $05 $01
    rlca                                          ; $723f: $07
    ld bc, $0109                                  ; $7240: $01 $09 $01
    ld a, [bc]                                    ; $7243: $0a
    ld bc, $010c                                  ; $7244: $01 $0c $01
    rrca                                          ; $7247: $0f
    ld bc, $0111                                  ; $7248: $01 $11 $01
    ld [de], a                                    ; $724b: $12
    ld bc, $0114                                  ; $724c: $01 $14 $01
    ld d, $01                                     ; $724f: $16 $01
    jr jr_038_7254                                ; $7251: $18 $01

    dec de                                        ; $7253: $1b

jr_038_7254:
    ld bc, $011c                                  ; $7254: $01 $1c $01
    rra                                           ; $7257: $1f
    ld bc, $0121                                  ; $7258: $01 $21 $01
    inc hl                                        ; $725b: $23
    ld bc, $0124                                  ; $725c: $01 $24 $01
    ld h, $01                                     ; $725f: $26 $01
    jr z, jr_038_7264                             ; $7261: $28 $01

    ld a, [hl+]                                   ; $7263: $2a

jr_038_7264:
    ld bc, $012c                                  ; $7264: $01 $2c $01
    ld l, $01                                     ; $7267: $2e $01
    jr nc, jr_038_726c                            ; $7269: $30 $01

    ld [hl-], a                                   ; $726b: $32

jr_038_726c:
    ld bc, HeaderTitle                            ; $726c: $01 $34 $01
    ld [hl], $01                                  ; $726f: $36 $01
    jr c, jr_038_7274                             ; $7271: $38 $01

    ld a, [hl-]                                   ; $7273: $3a

jr_038_7274:
    ld bc, $013c                                  ; $7274: $01 $3c $01
    ld a, $01                                     ; $7277: $3e $01
    ld b, b                                       ; $7279: $40
    ld bc, $0142                                  ; $727a: $01 $42 $01
    ld b, h                                       ; $727d: $44
    ld bc, HeaderSGBFlag                          ; $727e: $01 $46 $01
    ld b, a                                       ; $7281: $47
    ld bc, HeaderDestinationCode                  ; $7282: $01 $4a $01
    ld c, h                                       ; $7285: $4c
    ld bc, HeaderComplementCheck                  ; $7286: $01 $4d $01
    ld c, a                                       ; $7289: $4f
    ld bc, $0151                                  ; $728a: $01 $51 $01
    ld d, e                                       ; $728d: $53
    ld bc, $0156                                  ; $728e: $01 $56 $01
    ld d, a                                       ; $7291: $57
    ld bc, $0159                                  ; $7292: $01 $59 $01
    ld e, e                                       ; $7295: $5b
    ld bc, $015d                                  ; $7296: $01 $5d $01
    ld e, a                                       ; $7299: $5f
    ld bc, $0161                                  ; $729a: $01 $61 $01
    ld h, e                                       ; $729d: $63
    ld bc, $0165                                  ; $729e: $01 $65 $01
    ld h, a                                       ; $72a1: $67
    ld bc, $0169                                  ; $72a2: $01 $69 $01
    ld l, e                                       ; $72a5: $6b
    ld bc, $016d                                  ; $72a6: $01 $6d $01
    ld l, a                                       ; $72a9: $6f
    ld bc, $0171                                  ; $72aa: $01 $71 $01
    ld [hl], d                                    ; $72ad: $72
    ld bc, $0174                                  ; $72ae: $01 $74 $01
    ld [hl], a                                    ; $72b1: $77
    ld bc, $0178                                  ; $72b2: $01 $78 $01
    ld a, d                                       ; $72b5: $7a
    ld bc, $017c                                  ; $72b6: $01 $7c $01
    ld a, [hl]                                    ; $72b9: $7e
    ld bc, $0180                                  ; $72ba: $01 $80 $01
    add d                                         ; $72bd: $82
    ld bc, $0184                                  ; $72be: $01 $84 $01
    add [hl]                                      ; $72c1: $86
    ld bc, $0188                                  ; $72c2: $01 $88 $01
    adc c                                         ; $72c5: $89
    ld bc, $018c                                  ; $72c6: $01 $8c $01
    adc [hl]                                      ; $72c9: $8e
    ld bc, $0190                                  ; $72ca: $01 $90 $01
    sub d                                         ; $72cd: $92
    ld bc, $0194                                  ; $72ce: $01 $94 $01
    sub [hl]                                      ; $72d1: $96
    ld bc, $0198                                  ; $72d2: $01 $98 $01
    sbc c                                         ; $72d5: $99
    ld bc, $019c                                  ; $72d6: $01 $9c $01
    sbc [hl]                                      ; $72d9: $9e
    ld bc, $01a0                                  ; $72da: $01 $a0 $01
    and c                                         ; $72dd: $a1
    ld bc, $01a3                                  ; $72de: $01 $a3 $01
    and l                                         ; $72e1: $a5
    ld bc, $01a7                                  ; $72e2: $01 $a7 $01
    xor c                                         ; $72e5: $a9
    ld bc, $01ab                                  ; $72e6: $01 $ab $01
    xor l                                         ; $72e9: $ad
    ld bc, $01af                                  ; $72ea: $01 $af $01
    or c                                          ; $72ed: $b1
    ld bc, $01b3                                  ; $72ee: $01 $b3 $01
    or l                                          ; $72f1: $b5
    ld bc, $01b7                                  ; $72f2: $01 $b7 $01
    cp b                                          ; $72f5: $b8
    ld bc, $01bb                                  ; $72f6: $01 $bb $01
    cp l                                          ; $72f9: $bd
    ld bc, $01bf                                  ; $72fa: $01 $bf $01
    pop bc                                        ; $72fd: $c1
    ld bc, $01c2                                  ; $72fe: $01 $c2 $01
    call nz, $c601                                ; $7301: $c4 $01 $c6
    ld bc, $01c8                                  ; $7304: $01 $c8 $01
    jp z, $cc01                                   ; $7307: $ca $01 $cc

    ld bc, $01ce                                  ; $730a: $01 $ce $01
    ret nc                                        ; $730d: $d0

    ld bc, $01d2                                  ; $730e: $01 $d2 $01
    call nc, $d601                                ; $7311: $d4 $01 $d6
    ld bc, $01d8                                  ; $7314: $01 $d8 $01
    reti                                          ; $7317: $d9


    ld bc, $01dc                                  ; $7318: $01 $dc $01
    sbc $01                                       ; $731b: $de $01
    inc b                                         ; $731d: $04
    nop                                           ; $731e: $00
    jr nz, jr_038_7321                            ; $731f: $20 $00

jr_038_7321:
    add hl, hl                                    ; $7321: $29
    nop                                           ; $7322: $00
    ld sp, $3800                                  ; $7323: $31 $00 $38
    nop                                           ; $7326: $00
    ld a, $00                                     ; $7327: $3e $00
    ld b, e                                       ; $7329: $43
    nop                                           ; $732a: $00
    ld c, b                                       ; $732b: $48
    nop                                           ; $732c: $00
    ld c, l                                       ; $732d: $4d
    nop                                           ; $732e: $00
    ld d, c                                       ; $732f: $51
    nop                                           ; $7330: $00
    ld d, l                                       ; $7331: $55
    nop                                           ; $7332: $00
    ld e, c                                       ; $7333: $59
    nop                                           ; $7334: $00
    ld e, l                                       ; $7335: $5d
    nop                                           ; $7336: $00
    ld h, b                                       ; $7337: $60
    nop                                           ; $7338: $00
    ld h, e                                       ; $7339: $63
    nop                                           ; $733a: $00
    ld h, a                                       ; $733b: $67
    nop                                           ; $733c: $00
    ld l, d                                       ; $733d: $6a
    nop                                           ; $733e: $00
    ld l, l                                       ; $733f: $6d
    nop                                           ; $7340: $00
    ld [hl], c                                    ; $7341: $71
    nop                                           ; $7342: $00
    ld [hl], e                                    ; $7343: $73
    nop                                           ; $7344: $00
    halt                                          ; $7345: $76
    nop                                           ; $7346: $00
    ld a, d                                       ; $7347: $7a
    nop                                           ; $7348: $00
    ld a, h                                       ; $7349: $7c
    nop                                           ; $734a: $00
    ld a, a                                       ; $734b: $7f
    nop                                           ; $734c: $00
    add d                                         ; $734d: $82
    nop                                           ; $734e: $00
    add l                                         ; $734f: $85
    nop                                           ; $7350: $00
    add a                                         ; $7351: $87
    nop                                           ; $7352: $00
    adc d                                         ; $7353: $8a
    nop                                           ; $7354: $00
    adc l                                         ; $7355: $8d
    nop                                           ; $7356: $00
    adc a                                         ; $7357: $8f
    nop                                           ; $7358: $00
    sub d                                         ; $7359: $92
    nop                                           ; $735a: $00
    sub l                                         ; $735b: $95
    nop                                           ; $735c: $00
    sub a                                         ; $735d: $97
    nop                                           ; $735e: $00
    sbc d                                         ; $735f: $9a
    nop                                           ; $7360: $00
    sbc h                                         ; $7361: $9c
    nop                                           ; $7362: $00
    sbc a                                         ; $7363: $9f
    nop                                           ; $7364: $00
    and c                                         ; $7365: $a1
    nop                                           ; $7366: $00
    and h                                         ; $7367: $a4
    nop                                           ; $7368: $00
    and [hl]                                      ; $7369: $a6
    nop                                           ; $736a: $00
    xor c                                         ; $736b: $a9
    nop                                           ; $736c: $00
    xor e                                         ; $736d: $ab
    nop                                           ; $736e: $00
    xor l                                         ; $736f: $ad
    nop                                           ; $7370: $00
    or b                                          ; $7371: $b0
    nop                                           ; $7372: $00
    or e                                          ; $7373: $b3
    nop                                           ; $7374: $00
    or l                                          ; $7375: $b5
    nop                                           ; $7376: $00
    or a                                          ; $7377: $b7
    nop                                           ; $7378: $00
    cp d                                          ; $7379: $ba
    nop                                           ; $737a: $00
    cp h                                          ; $737b: $bc
    nop                                           ; $737c: $00
    cp [hl]                                       ; $737d: $be
    nop                                           ; $737e: $00
    pop bc                                        ; $737f: $c1
    nop                                           ; $7380: $00
    jp $c500                                      ; $7381: $c3 $00 $c5


    nop                                           ; $7384: $00
    rst $00                                       ; $7385: $c7
    nop                                           ; $7386: $00
    jp z, $cc00                                   ; $7387: $ca $00 $cc

    nop                                           ; $738a: $00
    adc $00                                       ; $738b: $ce $00
    pop de                                        ; $738d: $d1
    nop                                           ; $738e: $00
    db $d3                                        ; $738f: $d3
    nop                                           ; $7390: $00
    push de                                       ; $7391: $d5
    nop                                           ; $7392: $00
    rst $10                                       ; $7393: $d7
    nop                                           ; $7394: $00
    jp c, $dc00                                   ; $7395: $da $00 $dc

    nop                                           ; $7398: $00
    rst $18                                       ; $7399: $df
    nop                                           ; $739a: $00
    ldh [rP1], a                                  ; $739b: $e0 $00
    ld [c], a                                     ; $739d: $e2
    nop                                           ; $739e: $00
    push hl                                       ; $739f: $e5
    nop                                           ; $73a0: $00
    rst $20                                       ; $73a1: $e7
    nop                                           ; $73a2: $00
    jp hl                                         ; $73a3: $e9


    nop                                           ; $73a4: $00
    db $eb                                        ; $73a5: $eb
    nop                                           ; $73a6: $00
    db $ed                                        ; $73a7: $ed
    nop                                           ; $73a8: $00
    ldh a, [rP1]                                  ; $73a9: $f0 $00
    ld a, [c]                                     ; $73ab: $f2
    nop                                           ; $73ac: $00
    db $f4                                        ; $73ad: $f4
    nop                                           ; $73ae: $00
    or $00                                        ; $73af: $f6 $00
    ld sp, hl                                     ; $73b1: $f9
    nop                                           ; $73b2: $00
    ei                                            ; $73b3: $fb
    nop                                           ; $73b4: $00
    db $fd                                        ; $73b5: $fd
    nop                                           ; $73b6: $00
    rst $38                                       ; $73b7: $ff
    nop                                           ; $73b8: $00
    ld bc, $0301                                  ; $73b9: $01 $01 $03
    ld bc, $0105                                  ; $73bc: $01 $05 $01
    rlca                                          ; $73bf: $07
    ld bc, $010a                                  ; $73c0: $01 $0a $01
    inc c                                         ; $73c3: $0c
    ld bc, $010e                                  ; $73c4: $01 $0e $01
    db $10                                        ; $73c7: $10
    ld bc, $0113                                  ; $73c8: $01 $13 $01
    inc d                                         ; $73cb: $14
    ld bc, $0117                                  ; $73cc: $01 $17 $01
    add hl, de                                    ; $73cf: $19
    ld bc, $011b                                  ; $73d0: $01 $1b $01
    dec e                                         ; $73d3: $1d
    ld bc, $011f                                  ; $73d4: $01 $1f $01
    ld hl, $2401                                  ; $73d7: $21 $01 $24
    ld bc, $0126                                  ; $73da: $01 $26 $01
    jr z, jr_038_73e0                             ; $73dd: $28 $01

    ld a, [hl+]                                   ; $73df: $2a

jr_038_73e0:
    ld bc, $012c                                  ; $73e0: $01 $2c $01
    ld l, $01                                     ; $73e3: $2e $01
    ld sp, $3301                                  ; $73e5: $31 $01 $33
    ld bc, $0135                                  ; $73e8: $01 $35 $01
    scf                                           ; $73eb: $37
    ld bc, $0139                                  ; $73ec: $01 $39 $01
    dec sp                                        ; $73ef: $3b
    ld bc, $013d                                  ; $73f0: $01 $3d $01
    ccf                                           ; $73f3: $3f
    ld bc, $0142                                  ; $73f4: $01 $42 $01
    ld b, h                                       ; $73f7: $44
    ld bc, HeaderSGBFlag                          ; $73f8: $01 $46 $01
    ld c, b                                       ; $73fb: $48
    ld bc, HeaderDestinationCode                  ; $73fc: $01 $4a $01
    ld c, h                                       ; $73ff: $4c
    ld bc, $014f                                  ; $7400: $01 $4f $01
    ld d, c                                       ; $7403: $51
    ld bc, $0152                                  ; $7404: $01 $52 $01
    ld d, l                                       ; $7407: $55
    ld bc, $0156                                  ; $7408: $01 $56 $01
    ld e, c                                       ; $740b: $59
    ld bc, $015b                                  ; $740c: $01 $5b $01
    ld e, l                                       ; $740f: $5d
    ld bc, $015f                                  ; $7410: $01 $5f $01
    ld h, d                                       ; $7413: $62
    ld bc, $0164                                  ; $7414: $01 $64 $01
    ld h, [hl]                                    ; $7417: $66
    ld bc, $0168                                  ; $7418: $01 $68 $01
    ld l, d                                       ; $741b: $6a
    ld bc, $016c                                  ; $741c: $01 $6c $01
    ld l, a                                       ; $741f: $6f
    ld bc, $0171                                  ; $7420: $01 $71 $01
    ld [hl], e                                    ; $7423: $73
    ld bc, $0175                                  ; $7424: $01 $75 $01
    ld [hl], a                                    ; $7427: $77
    ld bc, $0179                                  ; $7428: $01 $79 $01
    ld a, e                                       ; $742b: $7b
    ld bc, $017e                                  ; $742c: $01 $7e $01
    add b                                         ; $742f: $80
    ld bc, $0182                                  ; $7430: $01 $82 $01
    add h                                         ; $7433: $84
    ld bc, $0186                                  ; $7434: $01 $86 $01
    adc b                                         ; $7437: $88
    ld bc, $018a                                  ; $7438: $01 $8a $01
    adc h                                         ; $743b: $8c
    ld bc, $018e                                  ; $743c: $01 $8e $01
    sub c                                         ; $743f: $91
    ld bc, $0193                                  ; $7440: $01 $93 $01
    sub l                                         ; $7443: $95
    ld bc, $0197                                  ; $7444: $01 $97 $01
    sbc c                                         ; $7447: $99
    ld bc, $019b                                  ; $7448: $01 $9b $01
    sbc [hl]                                      ; $744b: $9e
    ld bc, $01a0                                  ; $744c: $01 $a0 $01
    and d                                         ; $744f: $a2
    ld bc, $01a4                                  ; $7450: $01 $a4 $01
    and [hl]                                      ; $7453: $a6
    ld bc, $01a8                                  ; $7454: $01 $a8 $01
    xor d                                         ; $7457: $aa
    ld bc, $01ad                                  ; $7458: $01 $ad $01
    xor a                                         ; $745b: $af
    ld bc, $01b1                                  ; $745c: $01 $b1 $01
    or e                                          ; $745f: $b3
    ld bc, $01b5                                  ; $7460: $01 $b5 $01
    or a                                          ; $7463: $b7
    ld bc, $01b9                                  ; $7464: $01 $b9 $01
    cp h                                          ; $7467: $bc
    ld bc, $01be                                  ; $7468: $01 $be $01
    ret nz                                        ; $746b: $c0

    ld bc, $01c2                                  ; $746c: $01 $c2 $01
    call nz, $c601                                ; $746f: $c4 $01 $c6
    ld bc, $01c8                                  ; $7472: $01 $c8 $01
    rlc c                                         ; $7475: $cb $01
    call $cf01                                    ; $7477: $cd $01 $cf
    ld bc, $01d1                                  ; $747a: $01 $d1 $01
    db $d3                                        ; $747d: $d3
    ld bc, $01d5                                  ; $747e: $01 $d5 $01
    ret c                                         ; $7481: $d8

    ld bc, $01da                                  ; $7482: $01 $da $01
    call c, $de01                                 ; $7485: $dc $01 $de
    ld bc, $0004                                  ; $7488: $01 $04 $00
    inc hl                                        ; $748b: $23
    nop                                           ; $748c: $00
    inc l                                         ; $748d: $2c
    nop                                           ; $748e: $00
    inc [hl]                                      ; $748f: $34
    nop                                           ; $7490: $00
    inc a                                         ; $7491: $3c
    nop                                           ; $7492: $00
    ld b, d                                       ; $7493: $42
    nop                                           ; $7494: $00
    ld b, a                                       ; $7495: $47
    nop                                           ; $7496: $00
    ld c, h                                       ; $7497: $4c
    nop                                           ; $7498: $00
    ld d, b                                       ; $7499: $50
    nop                                           ; $749a: $00
    ld d, l                                       ; $749b: $55
    nop                                           ; $749c: $00
    ld e, c                                       ; $749d: $59
    nop                                           ; $749e: $00
    ld e, l                                       ; $749f: $5d
    nop                                           ; $74a0: $00
    ld h, c                                       ; $74a1: $61
    nop                                           ; $74a2: $00
    ld h, h                                       ; $74a3: $64
    nop                                           ; $74a4: $00
    ld l, b                                       ; $74a5: $68
    nop                                           ; $74a6: $00
    ld l, e                                       ; $74a7: $6b
    nop                                           ; $74a8: $00
    ld l, a                                       ; $74a9: $6f
    nop                                           ; $74aa: $00
    ld [hl], d                                    ; $74ab: $72
    nop                                           ; $74ac: $00
    halt                                          ; $74ad: $76
    nop                                           ; $74ae: $00
    ld a, c                                       ; $74af: $79
    nop                                           ; $74b0: $00
    ld a, h                                       ; $74b1: $7c
    nop                                           ; $74b2: $00
    ld a, a                                       ; $74b3: $7f
    nop                                           ; $74b4: $00
    add d                                         ; $74b5: $82
    nop                                           ; $74b6: $00
    add l                                         ; $74b7: $85
    nop                                           ; $74b8: $00
    adc b                                         ; $74b9: $88
    nop                                           ; $74ba: $00
    adc e                                         ; $74bb: $8b
    nop                                           ; $74bc: $00
    adc l                                         ; $74bd: $8d
    nop                                           ; $74be: $00
    sub b                                         ; $74bf: $90
    nop                                           ; $74c0: $00
    sub e                                         ; $74c1: $93
    nop                                           ; $74c2: $00
    sub [hl]                                      ; $74c3: $96
    nop                                           ; $74c4: $00
    sbc b                                         ; $74c5: $98
    nop                                           ; $74c6: $00
    sbc e                                         ; $74c7: $9b
    nop                                           ; $74c8: $00
    sbc l                                         ; $74c9: $9d
    nop                                           ; $74ca: $00
    and b                                         ; $74cb: $a0
    nop                                           ; $74cc: $00
    and e                                         ; $74cd: $a3
    nop                                           ; $74ce: $00
    and [hl]                                      ; $74cf: $a6
    nop                                           ; $74d0: $00
    xor c                                         ; $74d1: $a9
    nop                                           ; $74d2: $00
    xor e                                         ; $74d3: $ab
    nop                                           ; $74d4: $00
    xor [hl]                                      ; $74d5: $ae
    nop                                           ; $74d6: $00
    or b                                          ; $74d7: $b0
    nop                                           ; $74d8: $00
    or d                                          ; $74d9: $b2
    nop                                           ; $74da: $00
    or l                                          ; $74db: $b5
    nop                                           ; $74dc: $00
    or a                                          ; $74dd: $b7
    nop                                           ; $74de: $00
    cp d                                          ; $74df: $ba
    nop                                           ; $74e0: $00
    cp h                                          ; $74e1: $bc
    nop                                           ; $74e2: $00
    cp a                                          ; $74e3: $bf
    nop                                           ; $74e4: $00
    jp nz, $c400                                  ; $74e5: $c2 $00 $c4

    nop                                           ; $74e8: $00
    rst $00                                       ; $74e9: $c7
    nop                                           ; $74ea: $00
    ret                                           ; $74eb: $c9


    nop                                           ; $74ec: $00
    call z, $ce00                                 ; $74ed: $cc $00 $ce
    nop                                           ; $74f0: $00
    pop de                                        ; $74f1: $d1
    nop                                           ; $74f2: $00
    db $d3                                        ; $74f3: $d3
    nop                                           ; $74f4: $00
    push de                                       ; $74f5: $d5
    nop                                           ; $74f6: $00
    ret c                                         ; $74f7: $d8

    nop                                           ; $74f8: $00
    jp c, $dc00                                   ; $74f9: $da $00 $dc

    nop                                           ; $74fc: $00
    rst $18                                       ; $74fd: $df
    nop                                           ; $74fe: $00
    pop hl                                        ; $74ff: $e1
    nop                                           ; $7500: $00
    db $e4                                        ; $7501: $e4
    nop                                           ; $7502: $00
    and $00                                       ; $7503: $e6 $00
    jp hl                                         ; $7505: $e9


    nop                                           ; $7506: $00
    db $eb                                        ; $7507: $eb
    nop                                           ; $7508: $00
    db $ed                                        ; $7509: $ed
    nop                                           ; $750a: $00
    rst $28                                       ; $750b: $ef
    nop                                           ; $750c: $00
    ld a, [c]                                     ; $750d: $f2
    nop                                           ; $750e: $00
    db $f4                                        ; $750f: $f4
    nop                                           ; $7510: $00
    rst $30                                       ; $7511: $f7
    nop                                           ; $7512: $00
    ld sp, hl                                     ; $7513: $f9
    nop                                           ; $7514: $00
    ei                                            ; $7515: $fb
    nop                                           ; $7516: $00
    db $fd                                        ; $7517: $fd
    nop                                           ; $7518: $00
    nop                                           ; $7519: $00
    ld bc, $0102                                  ; $751a: $01 $02 $01
    inc b                                         ; $751d: $04
    ld bc, $0107                                  ; $751e: $01 $07 $01
    add hl, bc                                    ; $7521: $09
    ld bc, $010b                                  ; $7522: $01 $0b $01
    ld c, $01                                     ; $7525: $0e $01
    ld de, $1201                                  ; $7527: $11 $01 $12
    ld bc, $0115                                  ; $752a: $01 $15 $01
    rla                                           ; $752d: $17
    ld bc, $011a                                  ; $752e: $01 $1a $01
    inc e                                         ; $7531: $1c
    ld bc, $011e                                  ; $7532: $01 $1e $01
    jr nz, jr_038_7538                            ; $7535: $20 $01

    inc hl                                        ; $7537: $23

jr_038_7538:
    ld bc, $0125                                  ; $7538: $01 $25 $01
    daa                                           ; $753b: $27
    ld bc, $0129                                  ; $753c: $01 $29 $01
    inc l                                         ; $753f: $2c
    ld bc, $012e                                  ; $7540: $01 $2e $01
    jr nc, jr_038_7546                            ; $7543: $30 $01

    inc sp                                        ; $7545: $33

jr_038_7546:
    ld bc, $0135                                  ; $7546: $01 $35 $01
    scf                                           ; $7549: $37
    ld bc, $013a                                  ; $754a: $01 $3a $01
    inc a                                         ; $754d: $3c
    ld bc, $013e                                  ; $754e: $01 $3e $01
    ld b, c                                       ; $7551: $41
    ld bc, HeaderCGBFlag                          ; $7552: $01 $43 $01
    ld b, l                                       ; $7555: $45
    ld bc, HeaderCartridgeType                    ; $7556: $01 $47 $01
    ld c, d                                       ; $7559: $4a
    ld bc, HeaderOldLicenseeCode                  ; $755a: $01 $4b $01
    ld c, [hl]                                    ; $755d: $4e
    ld bc, $0150                                  ; $755e: $01 $50 $01
    ld d, e                                       ; $7561: $53
    ld bc, $0155                                  ; $7562: $01 $55 $01
    ld d, a                                       ; $7565: $57
    ld bc, $015a                                  ; $7566: $01 $5a $01
    ld e, h                                       ; $7569: $5c
    ld bc, $015e                                  ; $756a: $01 $5e $01
    ld h, b                                       ; $756d: $60
    ld bc, $0163                                  ; $756e: $01 $63 $01
    ld h, l                                       ; $7571: $65
    ld bc, $0167                                  ; $7572: $01 $67 $01
    ld l, d                                       ; $7575: $6a
    ld bc, $016c                                  ; $7576: $01 $6c $01
    ld l, [hl]                                    ; $7579: $6e
    ld bc, $0170                                  ; $757a: $01 $70 $01
    ld [hl], e                                    ; $757d: $73
    ld bc, $0175                                  ; $757e: $01 $75 $01
    ld a, b                                       ; $7581: $78
    ld bc, $017a                                  ; $7582: $01 $7a $01
    ld a, h                                       ; $7585: $7c
    ld bc, $017e                                  ; $7586: $01 $7e $01
    add c                                         ; $7589: $81
    ld bc, $0183                                  ; $758a: $01 $83 $01
    add l                                         ; $758d: $85
    ld bc, $0188                                  ; $758e: $01 $88 $01
    adc d                                         ; $7591: $8a
    ld bc, $018c                                  ; $7592: $01 $8c $01
    adc a                                         ; $7595: $8f
    ld bc, $0191                                  ; $7596: $01 $91 $01
    sub e                                         ; $7599: $93
    ld bc, $0196                                  ; $759a: $01 $96 $01
    sbc b                                         ; $759d: $98
    ld bc, $019a                                  ; $759e: $01 $9a $01
    sbc l                                         ; $75a1: $9d
    ld bc, $019f                                  ; $75a2: $01 $9f $01
    and c                                         ; $75a5: $a1
    ld bc, $01a4                                  ; $75a6: $01 $a4 $01
    and [hl]                                      ; $75a9: $a6
    ld bc, $01a8                                  ; $75aa: $01 $a8 $01
    xor d                                         ; $75ad: $aa
    ld bc, $01ac                                  ; $75ae: $01 $ac $01
    xor a                                         ; $75b1: $af
    ld bc, $01b1                                  ; $75b2: $01 $b1 $01
    or h                                          ; $75b5: $b4
    ld bc, $01b6                                  ; $75b6: $01 $b6 $01
    cp b                                          ; $75b9: $b8
    ld bc, $01ba                                  ; $75ba: $01 $ba $01
    cp l                                          ; $75bd: $bd
    ld bc, $01bf                                  ; $75be: $01 $bf $01
    pop bc                                        ; $75c1: $c1
    ld bc, $01c4                                  ; $75c2: $01 $c4 $01
    add $01                                       ; $75c5: $c6 $01
    ret                                           ; $75c7: $c9


    ld bc, $01cb                                  ; $75c8: $01 $cb $01
    call $d001                                    ; $75cb: $cd $01 $d0
    ld bc, $01d2                                  ; $75ce: $01 $d2 $01
    call nc, $d601                                ; $75d1: $d4 $01 $d6
    ld bc, $01d9                                  ; $75d4: $01 $d9 $01
    db $db                                        ; $75d7: $db
    ld bc, $01dd                                  ; $75d8: $01 $dd $01
    inc b                                         ; $75db: $04
    nop                                           ; $75dc: $00
    ld h, $00                                     ; $75dd: $26 $00
    cpl                                           ; $75df: $2f
    nop                                           ; $75e0: $00
    scf                                           ; $75e1: $37
    nop                                           ; $75e2: $00
    ld a, $00                                     ; $75e3: $3e $00
    ld b, l                                       ; $75e5: $45
    nop                                           ; $75e6: $00
    ld c, d                                       ; $75e7: $4a
    nop                                           ; $75e8: $00
    ld c, a                                       ; $75e9: $4f
    nop                                           ; $75ea: $00
    ld d, h                                       ; $75eb: $54
    nop                                           ; $75ec: $00
    ld e, b                                       ; $75ed: $58
    nop                                           ; $75ee: $00
    ld e, h                                       ; $75ef: $5c
    nop                                           ; $75f0: $00
    ld h, b                                       ; $75f1: $60
    nop                                           ; $75f2: $00
    ld h, h                                       ; $75f3: $64
    nop                                           ; $75f4: $00
    ld l, b                                       ; $75f5: $68
    nop                                           ; $75f6: $00
    ld l, e                                       ; $75f7: $6b
    nop                                           ; $75f8: $00
    ld l, a                                       ; $75f9: $6f
    nop                                           ; $75fa: $00
    ld [hl], d                                    ; $75fb: $72
    nop                                           ; $75fc: $00
    halt                                          ; $75fd: $76
    nop                                           ; $75fe: $00
    ld a, c                                       ; $75ff: $79
    nop                                           ; $7600: $00
    ld a, l                                       ; $7601: $7d
    nop                                           ; $7602: $00
    ld a, a                                       ; $7603: $7f
    nop                                           ; $7604: $00
    add e                                         ; $7605: $83
    nop                                           ; $7606: $00
    add [hl]                                      ; $7607: $86
    nop                                           ; $7608: $00
    adc c                                         ; $7609: $89
    nop                                           ; $760a: $00
    adc h                                         ; $760b: $8c
    nop                                           ; $760c: $00
    adc a                                         ; $760d: $8f
    nop                                           ; $760e: $00
    sub d                                         ; $760f: $92
    nop                                           ; $7610: $00
    sub l                                         ; $7611: $95
    nop                                           ; $7612: $00
    sbc b                                         ; $7613: $98
    nop                                           ; $7614: $00
    sbc e                                         ; $7615: $9b
    nop                                           ; $7616: $00
    sbc [hl]                                      ; $7617: $9e
    nop                                           ; $7618: $00
    and b                                         ; $7619: $a0
    nop                                           ; $761a: $00
    and e                                         ; $761b: $a3
    nop                                           ; $761c: $00
    and [hl]                                      ; $761d: $a6
    nop                                           ; $761e: $00
    xor b                                         ; $761f: $a8
    nop                                           ; $7620: $00
    xor e                                         ; $7621: $ab
    nop                                           ; $7622: $00
    xor [hl]                                      ; $7623: $ae
    nop                                           ; $7624: $00
    or c                                          ; $7625: $b1
    nop                                           ; $7626: $00
    or e                                          ; $7627: $b3
    nop                                           ; $7628: $00
    or a                                          ; $7629: $b7
    nop                                           ; $762a: $00
    cp c                                          ; $762b: $b9
    nop                                           ; $762c: $00
    cp e                                          ; $762d: $bb
    nop                                           ; $762e: $00
    cp l                                          ; $762f: $bd
    nop                                           ; $7630: $00
    pop bc                                        ; $7631: $c1
    nop                                           ; $7632: $00
    call nz, $c600                                ; $7633: $c4 $00 $c6
    nop                                           ; $7636: $00
    ret                                           ; $7637: $c9


    nop                                           ; $7638: $00
    rlc b                                         ; $7639: $cb $00
    adc $00                                       ; $763b: $ce $00
    ret nc                                        ; $763d: $d0

    nop                                           ; $763e: $00
    db $d3                                        ; $763f: $d3
    nop                                           ; $7640: $00
    sub $00                                       ; $7641: $d6 $00
    ret c                                         ; $7643: $d8

    nop                                           ; $7644: $00
    db $db                                        ; $7645: $db
    nop                                           ; $7646: $00
    db $dd                                        ; $7647: $dd
    nop                                           ; $7648: $00
    ldh [rP1], a                                  ; $7649: $e0 $00
    ld [c], a                                     ; $764b: $e2
    nop                                           ; $764c: $00
    push hl                                       ; $764d: $e5
    nop                                           ; $764e: $00
    rst $20                                       ; $764f: $e7
    nop                                           ; $7650: $00
    jp hl                                         ; $7651: $e9


    nop                                           ; $7652: $00
    db $ec                                        ; $7653: $ec
    nop                                           ; $7654: $00
    rst $28                                       ; $7655: $ef
    nop                                           ; $7656: $00
    pop af                                        ; $7657: $f1
    nop                                           ; $7658: $00
    di                                            ; $7659: $f3
    nop                                           ; $765a: $00
    or $00                                        ; $765b: $f6 $00
    ld sp, hl                                     ; $765d: $f9
    nop                                           ; $765e: $00
    ei                                            ; $765f: $fb
    nop                                           ; $7660: $00
    cp $00                                        ; $7661: $fe $00
    nop                                           ; $7663: $00
    ld bc, $0102                                  ; $7664: $01 $02 $01
    dec b                                         ; $7667: $05
    ld bc, $0107                                  ; $7668: $01 $07 $01
    add hl, bc                                    ; $766b: $09
    ld bc, $010c                                  ; $766c: $01 $0c $01
    rrca                                          ; $766f: $0f
    ld bc, $0111                                  ; $7670: $01 $11 $01
    inc d                                         ; $7673: $14
    ld bc, $0116                                  ; $7674: $01 $16 $01
    add hl, de                                    ; $7677: $19
    ld bc, $011b                                  ; $7678: $01 $1b $01
    dec e                                         ; $767b: $1d
    ld bc, $0120                                  ; $767c: $01 $20 $01
    ld [hl+], a                                   ; $767f: $22
    ld bc, $0125                                  ; $7680: $01 $25 $01
    daa                                           ; $7683: $27
    ld bc, $012a                                  ; $7684: $01 $2a $01
    inc l                                         ; $7687: $2c
    ld bc, $012e                                  ; $7688: $01 $2e $01
    ld sp, $3301                                  ; $768b: $31 $01 $33
    ld bc, $0136                                  ; $768e: $01 $36 $01
    add hl, sp                                    ; $7691: $39
    ld bc, $013b                                  ; $7692: $01 $3b $01
    dec a                                         ; $7695: $3d
    ld bc, $0140                                  ; $7696: $01 $40 $01
    ld b, d                                       ; $7699: $42
    ld bc, $0145                                  ; $769a: $01 $45 $01
    ld b, a                                       ; $769d: $47
    ld bc, HeaderRAMSize                          ; $769e: $01 $49 $01
    ld c, h                                       ; $76a1: $4c
    ld bc, HeaderGlobalChecksum                   ; $76a2: $01 $4e $01
    ld d, c                                       ; $76a5: $51
    ld bc, $0154                                  ; $76a6: $01 $54 $01
    ld d, [hl]                                    ; $76a9: $56
    ld bc, $0158                                  ; $76aa: $01 $58 $01
    ld e, e                                       ; $76ad: $5b
    ld bc, $015d                                  ; $76ae: $01 $5d $01
    ld e, a                                       ; $76b1: $5f
    ld bc, $0162                                  ; $76b2: $01 $62 $01
    ld h, l                                       ; $76b5: $65
    ld bc, $0167                                  ; $76b6: $01 $67 $01
    ld l, c                                       ; $76b9: $69
    ld bc, $016c                                  ; $76ba: $01 $6c $01
    ld l, [hl]                                    ; $76bd: $6e
    ld bc, $0171                                  ; $76be: $01 $71 $01
    ld [hl], e                                    ; $76c1: $73
    ld bc, $0176                                  ; $76c2: $01 $76 $01
    ld a, b                                       ; $76c5: $78
    ld bc, $017a                                  ; $76c6: $01 $7a $01
    ld a, l                                       ; $76c9: $7d
    ld bc, $0180                                  ; $76ca: $01 $80 $01
    add d                                         ; $76cd: $82
    ld bc, $0185                                  ; $76ce: $01 $85 $01
    add a                                         ; $76d1: $87
    ld bc, $018a                                  ; $76d2: $01 $8a $01
    adc h                                         ; $76d5: $8c
    ld bc, $018e                                  ; $76d6: $01 $8e $01
    sub c                                         ; $76d9: $91
    ld bc, $0193                                  ; $76da: $01 $93 $01
    sub [hl]                                      ; $76dd: $96
    ld bc, $0198                                  ; $76de: $01 $98 $01
    sbc d                                         ; $76e1: $9a
    ld bc, $019d                                  ; $76e2: $01 $9d $01
    and b                                         ; $76e5: $a0
    ld bc, $01a2                                  ; $76e6: $01 $a2 $01
    and l                                         ; $76e9: $a5
    ld bc, $01a7                                  ; $76ea: $01 $a7 $01
    xor d                                         ; $76ed: $aa
    ld bc, $01ac                                  ; $76ee: $01 $ac $01
    xor [hl]                                      ; $76f1: $ae
    ld bc, $01b1                                  ; $76f2: $01 $b1 $01
    or e                                          ; $76f5: $b3
    ld bc, $01b6                                  ; $76f6: $01 $b6 $01
    cp b                                          ; $76f9: $b8
    ld bc, $01bb                                  ; $76fa: $01 $bb $01
    cp l                                          ; $76fd: $bd
    ld bc, $01c0                                  ; $76fe: $01 $c0 $01
    jp nz, $c501                                  ; $7701: $c2 $01 $c5

    ld bc, $01c7                                  ; $7704: $01 $c7 $01
    jp z, $cc01                                   ; $7707: $ca $01 $cc

    ld bc, $01ce                                  ; $770a: $01 $ce $01
    pop de                                        ; $770d: $d1
    ld bc, $01d4                                  ; $770e: $01 $d4 $01
    sub $01                                       ; $7711: $d6 $01
    ret c                                         ; $7713: $d8

    ld bc, $01db                                  ; $7714: $01 $db $01
    db $dd                                        ; $7717: $dd
    ld bc, $0004                                  ; $7718: $01 $04 $00
    add hl, hl                                    ; $771b: $29
    nop                                           ; $771c: $00
    ld [hl-], a                                   ; $771d: $32
    nop                                           ; $771e: $00
    ld a, [hl-]                                   ; $771f: $3a
    nop                                           ; $7720: $00
    ld b, d                                       ; $7721: $42
    nop                                           ; $7722: $00
    ld c, c                                       ; $7723: $49
    nop                                           ; $7724: $00
    ld c, [hl]                                    ; $7725: $4e
    nop                                           ; $7726: $00
    ld d, e                                       ; $7727: $53
    nop                                           ; $7728: $00
    ld e, b                                       ; $7729: $58
    nop                                           ; $772a: $00
    ld e, h                                       ; $772b: $5c
    nop                                           ; $772c: $00
    ld h, c                                       ; $772d: $61
    nop                                           ; $772e: $00
    ld h, l                                       ; $772f: $65
    nop                                           ; $7730: $00
    ld l, c                                       ; $7731: $69
    nop                                           ; $7732: $00
    ld l, l                                       ; $7733: $6d
    nop                                           ; $7734: $00
    ld [hl], b                                    ; $7735: $70
    nop                                           ; $7736: $00
    ld [hl], h                                    ; $7737: $74
    nop                                           ; $7738: $00
    ld a, b                                       ; $7739: $78
    nop                                           ; $773a: $00
    ld a, e                                       ; $773b: $7b
    nop                                           ; $773c: $00
    ld a, a                                       ; $773d: $7f
    nop                                           ; $773e: $00
    add d                                         ; $773f: $82
    nop                                           ; $7740: $00
    add [hl]                                      ; $7741: $86
    nop                                           ; $7742: $00
    adc b                                         ; $7743: $88
    nop                                           ; $7744: $00
    adc h                                         ; $7745: $8c
    nop                                           ; $7746: $00
    adc a                                         ; $7747: $8f
    nop                                           ; $7748: $00
    sub d                                         ; $7749: $92
    nop                                           ; $774a: $00
    sub l                                         ; $774b: $95
    nop                                           ; $774c: $00
    sbc b                                         ; $774d: $98
    nop                                           ; $774e: $00
    sbc e                                         ; $774f: $9b
    nop                                           ; $7750: $00
    sbc [hl]                                      ; $7751: $9e
    nop                                           ; $7752: $00
    and c                                         ; $7753: $a1
    nop                                           ; $7754: $00
    and h                                         ; $7755: $a4
    nop                                           ; $7756: $00
    and a                                         ; $7757: $a7
    nop                                           ; $7758: $00
    xor d                                         ; $7759: $aa
    nop                                           ; $775a: $00
    xor l                                         ; $775b: $ad
    nop                                           ; $775c: $00
    or b                                          ; $775d: $b0
    nop                                           ; $775e: $00
    or e                                          ; $775f: $b3
    nop                                           ; $7760: $00
    or [hl]                                       ; $7761: $b6
    nop                                           ; $7762: $00
    cp c                                          ; $7763: $b9
    nop                                           ; $7764: $00
    cp h                                          ; $7765: $bc
    nop                                           ; $7766: $00
    cp [hl]                                       ; $7767: $be
    nop                                           ; $7768: $00
    pop bc                                        ; $7769: $c1
    nop                                           ; $776a: $00
    call nz, $c700                                ; $776b: $c4 $00 $c7
    nop                                           ; $776e: $00
    jp z, $cc00                                   ; $776f: $ca $00 $cc

    nop                                           ; $7772: $00
    ret nc                                        ; $7773: $d0

    nop                                           ; $7774: $00
    jp nc, $d500                                  ; $7775: $d2 $00 $d5

    nop                                           ; $7778: $00
    rst $10                                       ; $7779: $d7
    nop                                           ; $777a: $00
    jp c, $dd00                                   ; $777b: $da $00 $dd

    nop                                           ; $777e: $00
    rst $18                                       ; $777f: $df
    nop                                           ; $7780: $00
    ld [c], a                                     ; $7781: $e2
    nop                                           ; $7782: $00
    push hl                                       ; $7783: $e5
    nop                                           ; $7784: $00
    add sp, $00                                   ; $7785: $e8 $00
    ld [$ed00], a                                 ; $7787: $ea $00 $ed
    nop                                           ; $778a: $00
    ldh a, [rP1]                                  ; $778b: $f0 $00
    di                                            ; $778d: $f3
    nop                                           ; $778e: $00
    push af                                       ; $778f: $f5
    nop                                           ; $7790: $00
    rst $30                                       ; $7791: $f7
    nop                                           ; $7792: $00
    ld a, [$fd00]                                 ; $7793: $fa $00 $fd
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    ld bc, $0102                                  ; $7798: $01 $02 $01
    dec b                                         ; $779b: $05
    ld bc, $0108                                  ; $779c: $01 $08 $01
    ld a, [bc]                                    ; $779f: $0a
    ld bc, $010d                                  ; $77a0: $01 $0d $01
    rrca                                          ; $77a3: $0f
    ld bc, $0112                                  ; $77a4: $01 $12 $01
    dec d                                         ; $77a7: $15
    ld bc, $0117                                  ; $77a8: $01 $17 $01
    ld a, [de]                                    ; $77ab: $1a
    ld bc, $011d                                  ; $77ac: $01 $1d $01
    rra                                           ; $77af: $1f
    ld bc, $0122                                  ; $77b0: $01 $22 $01
    inc h                                         ; $77b3: $24
    ld bc, $0127                                  ; $77b4: $01 $27 $01
    ld a, [hl+]                                   ; $77b7: $2a
    ld bc, $012d                                  ; $77b8: $01 $2d $01
    cpl                                           ; $77bb: $2f
    ld bc, $0132                                  ; $77bc: $01 $32 $01
    inc [hl]                                      ; $77bf: $34
    ld bc, $0137                                  ; $77c0: $01 $37 $01
    add hl, sp                                    ; $77c3: $39
    ld bc, $013c                                  ; $77c4: $01 $3c $01
    ccf                                           ; $77c7: $3f
    ld bc, $0142                                  ; $77c8: $01 $42 $01
    ld b, h                                       ; $77cb: $44
    ld bc, HeaderCartridgeType                    ; $77cc: $01 $47 $01
    ld c, c                                       ; $77cf: $49
    ld bc, HeaderMaskROMVersion                   ; $77d0: $01 $4c $01
    ld c, a                                       ; $77d3: $4f
    ld bc, $0151                                  ; $77d4: $01 $51 $01
    ld d, h                                       ; $77d7: $54
    ld bc, $0156                                  ; $77d8: $01 $56 $01
    ld e, c                                       ; $77db: $59
    ld bc, $015c                                  ; $77dc: $01 $5c $01
    ld e, [hl]                                    ; $77df: $5e
    ld bc, $0161                                  ; $77e0: $01 $61 $01
    ld h, h                                       ; $77e3: $64
    ld bc, $0166                                  ; $77e4: $01 $66 $01
    ld l, c                                       ; $77e7: $69
    ld bc, $016b                                  ; $77e8: $01 $6b $01
    ld l, [hl]                                    ; $77eb: $6e
    ld bc, $0171                                  ; $77ec: $01 $71 $01
    ld [hl], e                                    ; $77ef: $73
    ld bc, $0176                                  ; $77f0: $01 $76 $01
    ld a, c                                       ; $77f3: $79
    ld bc, $017b                                  ; $77f4: $01 $7b $01
    ld a, [hl]                                    ; $77f7: $7e
    ld bc, $0180                                  ; $77f8: $01 $80 $01
    add e                                         ; $77fb: $83
    ld bc, $0186                                  ; $77fc: $01 $86 $01
    adc b                                         ; $77ff: $88
    ld bc, $018b                                  ; $7800: $01 $8b $01
    adc [hl]                                      ; $7803: $8e
    ld bc, $0191                                  ; $7804: $01 $91 $01
    sub e                                         ; $7807: $93
    ld bc, $0196                                  ; $7808: $01 $96 $01
    sbc b                                         ; $780b: $98
    ld bc, $019b                                  ; $780c: $01 $9b $01
    sbc [hl]                                      ; $780f: $9e
    ld bc, $01a0                                  ; $7810: $01 $a0 $01
    and e                                         ; $7813: $a3
    ld bc, $01a6                                  ; $7814: $01 $a6 $01
    xor b                                         ; $7817: $a8
    ld bc, $01ab                                  ; $7818: $01 $ab $01
    xor l                                         ; $781b: $ad
    ld bc, $01b0                                  ; $781c: $01 $b0 $01
    or e                                          ; $781f: $b3
    ld bc, $01b6                                  ; $7820: $01 $b6 $01
    cp b                                          ; $7823: $b8
    ld bc, $01bb                                  ; $7824: $01 $bb $01
    cp [hl]                                       ; $7827: $be
    ld bc, $01c0                                  ; $7828: $01 $c0 $01
    jp $c601                                      ; $782b: $c3 $01 $c6


    ld bc, $01c8                                  ; $782e: $01 $c8 $01
    rlc c                                         ; $7831: $cb $01
    adc $01                                       ; $7833: $ce $01
    ret nc                                        ; $7835: $d0

    ld bc, $01d3                                  ; $7836: $01 $d3 $01
    push de                                       ; $7839: $d5
    ld bc, $01d8                                  ; $783a: $01 $d8 $01
    db $db                                        ; $783d: $db
    ld bc, $01dd                                  ; $783e: $01 $dd $01
    inc b                                         ; $7841: $04
    nop                                           ; $7842: $00
    dec l                                         ; $7843: $2d
    nop                                           ; $7844: $00
    ld [hl], $00                                  ; $7845: $36 $00
    dec sp                                        ; $7847: $3b
    nop                                           ; $7848: $00
    ld b, [hl]                                    ; $7849: $46
    nop                                           ; $784a: $00
    ld c, l                                       ; $784b: $4d
    nop                                           ; $784c: $00
    ld d, d                                       ; $784d: $52
    nop                                           ; $784e: $00
    ld d, a                                       ; $784f: $57
    nop                                           ; $7850: $00
    ld e, l                                       ; $7851: $5d
    nop                                           ; $7852: $00
    ld h, c                                       ; $7853: $61
    nop                                           ; $7854: $00
    ld h, [hl]                                    ; $7855: $66
    nop                                           ; $7856: $00
    ld l, d                                       ; $7857: $6a
    nop                                           ; $7858: $00
    ld l, [hl]                                    ; $7859: $6e
    nop                                           ; $785a: $00
    ld [hl], d                                    ; $785b: $72
    nop                                           ; $785c: $00
    halt                                          ; $785d: $76
    nop                                           ; $785e: $00
    ld a, d                                       ; $785f: $7a
    nop                                           ; $7860: $00
    ld a, [hl]                                    ; $7861: $7e
    nop                                           ; $7862: $00
    add c                                         ; $7863: $81
    nop                                           ; $7864: $00
    add l                                         ; $7865: $85
    nop                                           ; $7866: $00
    adc c                                         ; $7867: $89
    nop                                           ; $7868: $00
    adc h                                         ; $7869: $8c
    nop                                           ; $786a: $00
    sub b                                         ; $786b: $90
    nop                                           ; $786c: $00
    sub d                                         ; $786d: $92
    nop                                           ; $786e: $00
    sub [hl]                                      ; $786f: $96
    nop                                           ; $7870: $00
    sbc c                                         ; $7871: $99
    nop                                           ; $7872: $00
    sbc l                                         ; $7873: $9d
    nop                                           ; $7874: $00
    and b                                         ; $7875: $a0
    nop                                           ; $7876: $00
    and e                                         ; $7877: $a3
    nop                                           ; $7878: $00
    and [hl]                                      ; $7879: $a6
    nop                                           ; $787a: $00
    xor d                                         ; $787b: $aa
    nop                                           ; $787c: $00
    xor l                                         ; $787d: $ad
    nop                                           ; $787e: $00
    or b                                          ; $787f: $b0
    nop                                           ; $7880: $00
    or e                                          ; $7881: $b3
    nop                                           ; $7882: $00
    or [hl]                                       ; $7883: $b6
    nop                                           ; $7884: $00
    cp c                                          ; $7885: $b9
    nop                                           ; $7886: $00
    cp h                                          ; $7887: $bc
    nop                                           ; $7888: $00
    ret nz                                        ; $7889: $c0

    nop                                           ; $788a: $00
    jp nz, $c500                                  ; $788b: $c2 $00 $c5

    nop                                           ; $788e: $00
    ret z                                         ; $788f: $c8

    nop                                           ; $7890: $00
    call z, $ce00                                 ; $7891: $cc $00 $ce
    nop                                           ; $7894: $00
    pop de                                        ; $7895: $d1
    nop                                           ; $7896: $00
    call nc, $d700                                ; $7897: $d4 $00 $d7
    nop                                           ; $789a: $00
    jp c, $dd00                                   ; $789b: $da $00 $dd

    nop                                           ; $789e: $00
    ldh [rP1], a                                  ; $789f: $e0 $00
    db $e3                                        ; $78a1: $e3
    nop                                           ; $78a2: $00
    and $00                                       ; $78a3: $e6 $00
    jp hl                                         ; $78a5: $e9


    nop                                           ; $78a6: $00
    db $eb                                        ; $78a7: $eb
    nop                                           ; $78a8: $00
    xor $00                                       ; $78a9: $ee $00
    pop af                                        ; $78ab: $f1
    nop                                           ; $78ac: $00
    db $f4                                        ; $78ad: $f4
    nop                                           ; $78ae: $00
    rst $30                                       ; $78af: $f7
    nop                                           ; $78b0: $00
    ld a, [$fd00]                                 ; $78b1: $fa $00 $fd
    nop                                           ; $78b4: $00
    nop                                           ; $78b5: $00
    ld bc, $0102                                  ; $78b6: $01 $02 $01
    dec b                                         ; $78b9: $05
    ld bc, $0108                                  ; $78ba: $01 $08 $01
    dec bc                                        ; $78bd: $0b
    ld bc, $010e                                  ; $78be: $01 $0e $01
    ld de, $1301                                  ; $78c1: $11 $01 $13
    ld bc, $0116                                  ; $78c4: $01 $16 $01
    add hl, de                                    ; $78c7: $19
    ld bc, $011c                                  ; $78c8: $01 $1c $01
    rra                                           ; $78cb: $1f
    ld bc, $0122                                  ; $78cc: $01 $22 $01
    dec h                                         ; $78cf: $25
    ld bc, $0127                                  ; $78d0: $01 $27 $01
    ld a, [hl+]                                   ; $78d3: $2a
    ld bc, $012d                                  ; $78d4: $01 $2d $01
    jr nc, jr_038_78da                            ; $78d7: $30 $01

    ld [hl-], a                                   ; $78d9: $32

jr_038_78da:
    ld bc, $0135                                  ; $78da: $01 $35 $01
    jr c, jr_038_78e0                             ; $78dd: $38 $01

    dec sp                                        ; $78df: $3b

jr_038_78e0:
    ld bc, $013e                                  ; $78e0: $01 $3e $01
    ld b, c                                       ; $78e3: $41
    ld bc, HeaderNewLicenseeCode                  ; $78e4: $01 $44 $01
    ld b, [hl]                                    ; $78e7: $46
    ld bc, HeaderRAMSize                          ; $78e8: $01 $49 $01
    ld c, h                                       ; $78eb: $4c
    ld bc, $014f                                  ; $78ec: $01 $4f $01
    ld d, c                                       ; $78ef: $51
    ld bc, $0154                                  ; $78f0: $01 $54 $01
    ld d, a                                       ; $78f3: $57
    ld bc, $015a                                  ; $78f4: $01 $5a $01
    ld e, l                                       ; $78f7: $5d
    ld bc, $0160                                  ; $78f8: $01 $60 $01
    ld h, e                                       ; $78fb: $63
    ld bc, $0165                                  ; $78fc: $01 $65 $01
    ld l, b                                       ; $78ff: $68
    ld bc, $016b                                  ; $7900: $01 $6b $01
    ld l, [hl]                                    ; $7903: $6e
    ld bc, $0171                                  ; $7904: $01 $71 $01
    ld [hl], h                                    ; $7907: $74
    ld bc, $0177                                  ; $7908: $01 $77 $01
    ld a, c                                       ; $790b: $79
    ld bc, $017c                                  ; $790c: $01 $7c $01
    ld a, a                                       ; $790f: $7f
    ld bc, $0182                                  ; $7910: $01 $82 $01
    add l                                         ; $7913: $85
    ld bc, $0188                                  ; $7914: $01 $88 $01
    adc d                                         ; $7917: $8a
    ld bc, $018d                                  ; $7918: $01 $8d $01
    sub b                                         ; $791b: $90
    ld bc, $0193                                  ; $791c: $01 $93 $01
    sub [hl]                                      ; $791f: $96
    ld bc, $0199                                  ; $7920: $01 $99 $01
    sbc h                                         ; $7923: $9c
    ld bc, $019e                                  ; $7924: $01 $9e $01
    and c                                         ; $7927: $a1
    ld bc, $01a4                                  ; $7928: $01 $a4 $01
    and a                                         ; $792b: $a7
    ld bc, $01aa                                  ; $792c: $01 $aa $01
    xor l                                         ; $792f: $ad
    ld bc, $01b0                                  ; $7930: $01 $b0 $01
    or d                                          ; $7933: $b2
    ld bc, $01b5                                  ; $7934: $01 $b5 $01
    cp b                                          ; $7937: $b8
    ld bc, $01bb                                  ; $7938: $01 $bb $01
    cp [hl]                                       ; $793b: $be
    ld bc, $01c1                                  ; $793c: $01 $c1 $01
    call nz, $c701                                ; $793f: $c4 $01 $c7
    ld bc, $01c9                                  ; $7942: $01 $c9 $01
    call z, $cf01                                 ; $7945: $cc $01 $cf
    ld bc, $01d2                                  ; $7948: $01 $d2 $01
    push de                                       ; $794b: $d5
    ld bc, $01d8                                  ; $794c: $01 $d8 $01
    db $db                                        ; $794f: $db
    ld bc, $01de                                  ; $7950: $01 $de $01
    inc b                                         ; $7953: $04
    nop                                           ; $7954: $00
    cpl                                           ; $7955: $2f
    nop                                           ; $7956: $00
    ld [hl], $00                                  ; $7957: $36 $00
    dec a                                         ; $7959: $3d
    nop                                           ; $795a: $00
    ld b, h                                       ; $795b: $44
    nop                                           ; $795c: $00
    ld c, l                                       ; $795d: $4d
    nop                                           ; $795e: $00
    ld d, e                                       ; $795f: $53
    nop                                           ; $7960: $00
    ld e, c                                       ; $7961: $59
    nop                                           ; $7962: $00
    ld e, [hl]                                    ; $7963: $5e
    nop                                           ; $7964: $00
    ld h, d                                       ; $7965: $62
    nop                                           ; $7966: $00
    ld l, b                                       ; $7967: $68
    nop                                           ; $7968: $00
    ld l, h                                       ; $7969: $6c
    nop                                           ; $796a: $00
    ld [hl], b                                    ; $796b: $70
    nop                                           ; $796c: $00
    ld [hl], h                                    ; $796d: $74
    nop                                           ; $796e: $00
    ld a, b                                       ; $796f: $78
    nop                                           ; $7970: $00
    ld a, l                                       ; $7971: $7d
    nop                                           ; $7972: $00
    add b                                         ; $7973: $80
    nop                                           ; $7974: $00
    add h                                         ; $7975: $84
    nop                                           ; $7976: $00
    adc c                                         ; $7977: $89
    nop                                           ; $7978: $00
    adc h                                         ; $7979: $8c
    nop                                           ; $797a: $00
    sub b                                         ; $797b: $90
    nop                                           ; $797c: $00
    sub h                                         ; $797d: $94
    nop                                           ; $797e: $00
    sub a                                         ; $797f: $97
    nop                                           ; $7980: $00
    sbc e                                         ; $7981: $9b
    nop                                           ; $7982: $00
    sbc a                                         ; $7983: $9f
    nop                                           ; $7984: $00
    and d                                         ; $7985: $a2
    nop                                           ; $7986: $00
    and [hl]                                      ; $7987: $a6
    nop                                           ; $7988: $00
    xor c                                         ; $7989: $a9
    nop                                           ; $798a: $00
    xor l                                         ; $798b: $ad
    nop                                           ; $798c: $00
    or b                                          ; $798d: $b0
    nop                                           ; $798e: $00
    or e                                          ; $798f: $b3
    nop                                           ; $7990: $00
    or [hl]                                       ; $7991: $b6
    nop                                           ; $7992: $00
    cp d                                          ; $7993: $ba
    nop                                           ; $7994: $00
    cp [hl]                                       ; $7995: $be
    nop                                           ; $7996: $00
    pop bc                                        ; $7997: $c1
    nop                                           ; $7998: $00
    push bc                                       ; $7999: $c5
    nop                                           ; $799a: $00
    ret z                                         ; $799b: $c8

    nop                                           ; $799c: $00
    rlc b                                         ; $799d: $cb $00
    rst $08                                       ; $799f: $cf
    nop                                           ; $79a0: $00
    jp nc, $d500                                  ; $79a1: $d2 $00 $d5

    nop                                           ; $79a4: $00
    ret c                                         ; $79a5: $d8

    nop                                           ; $79a6: $00
    db $db                                        ; $79a7: $db
    nop                                           ; $79a8: $00
    rst $18                                       ; $79a9: $df
    nop                                           ; $79aa: $00
    ld [c], a                                     ; $79ab: $e2
    nop                                           ; $79ac: $00
    push hl                                       ; $79ad: $e5
    nop                                           ; $79ae: $00
    add sp, $00                                   ; $79af: $e8 $00
    db $ec                                        ; $79b1: $ec
    nop                                           ; $79b2: $00
    rst $28                                       ; $79b3: $ef
    nop                                           ; $79b4: $00
    ld a, [c]                                     ; $79b5: $f2
    nop                                           ; $79b6: $00
    push af                                       ; $79b7: $f5
    nop                                           ; $79b8: $00
    ld hl, sp+$00                                 ; $79b9: $f8 $00
    ei                                            ; $79bb: $fb
    nop                                           ; $79bc: $00
    cp $00                                        ; $79bd: $fe $00
    ld [bc], a                                    ; $79bf: $02
    ld bc, $0105                                  ; $79c0: $01 $05 $01
    ld [$0c01], sp                                ; $79c3: $08 $01 $0c
    ld bc, $010f                                  ; $79c6: $01 $0f $01
    ld [de], a                                    ; $79c9: $12
    ld bc, $0115                                  ; $79ca: $01 $15 $01
    jr jr_038_79d0                                ; $79cd: $18 $01

    dec de                                        ; $79cf: $1b

jr_038_79d0:
    ld bc, $011f                                  ; $79d0: $01 $1f $01
    ld [hl+], a                                   ; $79d3: $22
    ld bc, $0125                                  ; $79d4: $01 $25 $01
    jr z, jr_038_79da                             ; $79d7: $28 $01

    dec hl                                        ; $79d9: $2b

jr_038_79da:
    ld bc, $012e                                  ; $79da: $01 $2e $01
    ld [hl-], a                                   ; $79dd: $32
    ld bc, $0135                                  ; $79de: $01 $35 $01
    jr c, jr_038_79e4                             ; $79e1: $38 $01

    dec sp                                        ; $79e3: $3b

jr_038_79e4:
    ld bc, $013e                                  ; $79e4: $01 $3e $01
    ld b, d                                       ; $79e7: $42
    ld bc, HeaderNewLicenseeCode                  ; $79e8: $01 $44 $01
    ld c, b                                       ; $79eb: $48
    ld bc, HeaderOldLicenseeCode                  ; $79ec: $01 $4b $01
    ld c, [hl]                                    ; $79ef: $4e
    ld bc, $0151                                  ; $79f0: $01 $51 $01
    ld d, h                                       ; $79f3: $54
    ld bc, $0158                                  ; $79f4: $01 $58 $01
    ld e, e                                       ; $79f7: $5b
    ld bc, $015e                                  ; $79f8: $01 $5e $01
    ld h, c                                       ; $79fb: $61
    ld bc, $0165                                  ; $79fc: $01 $65 $01
    ld l, b                                       ; $79ff: $68
    ld bc, $016b                                  ; $7a00: $01 $6b $01
    ld l, [hl]                                    ; $7a03: $6e
    ld bc, $0171                                  ; $7a04: $01 $71 $01
    ld [hl], h                                    ; $7a07: $74
    ld bc, $0177                                  ; $7a08: $01 $77 $01
    ld a, e                                       ; $7a0b: $7b
    ld bc, $017e                                  ; $7a0c: $01 $7e $01
    add c                                         ; $7a0f: $81
    ld bc, $0184                                  ; $7a10: $01 $84 $01
    adc b                                         ; $7a13: $88
    ld bc, $018a                                  ; $7a14: $01 $8a $01
    adc [hl]                                      ; $7a17: $8e
    ld bc, $0191                                  ; $7a18: $01 $91 $01
    sub h                                         ; $7a1b: $94
    ld bc, $0197                                  ; $7a1c: $01 $97 $01
    sbc e                                         ; $7a1f: $9b
    ld bc, $019e                                  ; $7a20: $01 $9e $01
    and c                                         ; $7a23: $a1
    ld bc, $01a5                                  ; $7a24: $01 $a5 $01
    xor b                                         ; $7a27: $a8
    ld bc, $01ab                                  ; $7a28: $01 $ab $01
    xor [hl]                                      ; $7a2b: $ae
    ld bc, $01b1                                  ; $7a2c: $01 $b1 $01
    or h                                          ; $7a2f: $b4
    ld bc, $01b8                                  ; $7a30: $01 $b8 $01
    cp e                                          ; $7a33: $bb
    ld bc, $01be                                  ; $7a34: $01 $be $01
    pop bc                                        ; $7a37: $c1
    ld bc, $01c5                                  ; $7a38: $01 $c5 $01
    ret z                                         ; $7a3b: $c8

    ld bc, $01cb                                  ; $7a3c: $01 $cb $01
    adc $01                                       ; $7a3f: $ce $01
    pop de                                        ; $7a41: $d1
    ld bc, $01d5                                  ; $7a42: $01 $d5 $01
    ret c                                         ; $7a45: $d8

    ld bc, $01dc                                  ; $7a46: $01 $dc $01
    rst $18                                       ; $7a49: $df
    ld bc, $0004                                  ; $7a4a: $01 $04 $00
    dec l                                         ; $7a4d: $2d
    nop                                           ; $7a4e: $00
    add hl, sp                                    ; $7a4f: $39
    nop                                           ; $7a50: $00
    ld b, d                                       ; $7a51: $42
    nop                                           ; $7a52: $00
    ld c, d                                       ; $7a53: $4a
    nop                                           ; $7a54: $00
    ld d, c                                       ; $7a55: $51
    nop                                           ; $7a56: $00
    ld e, d                                       ; $7a57: $5a
    nop                                           ; $7a58: $00
    ld h, b                                       ; $7a59: $60
    nop                                           ; $7a5a: $00
    ld h, [hl]                                    ; $7a5b: $66
    nop                                           ; $7a5c: $00
    ld l, e                                       ; $7a5d: $6b
    nop                                           ; $7a5e: $00
    ld [hl], b                                    ; $7a5f: $70
    nop                                           ; $7a60: $00
    ld [hl], l                                    ; $7a61: $75
    nop                                           ; $7a62: $00
    ld a, d                                       ; $7a63: $7a
    nop                                           ; $7a64: $00
    ld a, a                                       ; $7a65: $7f
    nop                                           ; $7a66: $00
    add e                                         ; $7a67: $83
    nop                                           ; $7a68: $00
    adc b                                         ; $7a69: $88
    nop                                           ; $7a6a: $00
    adc h                                         ; $7a6b: $8c
    nop                                           ; $7a6c: $00
    sub b                                         ; $7a6d: $90
    nop                                           ; $7a6e: $00
    sub l                                         ; $7a6f: $95
    nop                                           ; $7a70: $00
    sbc c                                         ; $7a71: $99
    nop                                           ; $7a72: $00
    sbc l                                         ; $7a73: $9d
    nop                                           ; $7a74: $00
    and c                                         ; $7a75: $a1
    nop                                           ; $7a76: $00
    and [hl]                                      ; $7a77: $a6
    nop                                           ; $7a78: $00
    xor d                                         ; $7a79: $aa
    nop                                           ; $7a7a: $00
    xor [hl]                                      ; $7a7b: $ae
    nop                                           ; $7a7c: $00
    or c                                          ; $7a7d: $b1
    nop                                           ; $7a7e: $00
    or l                                          ; $7a7f: $b5
    nop                                           ; $7a80: $00
    cp c                                          ; $7a81: $b9
    nop                                           ; $7a82: $00
    cp l                                          ; $7a83: $bd
    nop                                           ; $7a84: $00
    pop bc                                        ; $7a85: $c1
    nop                                           ; $7a86: $00
    push bc                                       ; $7a87: $c5
    nop                                           ; $7a88: $00
    ret                                           ; $7a89: $c9


    nop                                           ; $7a8a: $00
    call $d000                                    ; $7a8b: $cd $00 $d0
    nop                                           ; $7a8e: $00
    call nc, $d800                                ; $7a8f: $d4 $00 $d8
    nop                                           ; $7a92: $00
    call c, $df00                                 ; $7a93: $dc $00 $df
    nop                                           ; $7a96: $00
    db $e3                                        ; $7a97: $e3
    nop                                           ; $7a98: $00
    rst $20                                       ; $7a99: $e7
    nop                                           ; $7a9a: $00
    ld [$ee00], a                                 ; $7a9b: $ea $00 $ee
    nop                                           ; $7a9e: $00
    ld a, [c]                                     ; $7a9f: $f2
    nop                                           ; $7aa0: $00
    push af                                       ; $7aa1: $f5
    nop                                           ; $7aa2: $00
    ld sp, hl                                     ; $7aa3: $f9
    nop                                           ; $7aa4: $00
    db $fd                                        ; $7aa5: $fd
    nop                                           ; $7aa6: $00
    ld bc, $0401                                  ; $7aa7: $01 $01 $04
    ld bc, $0108                                  ; $7aaa: $01 $08 $01
    inc c                                         ; $7aad: $0c
    ld bc, $010f                                  ; $7aae: $01 $0f $01
    inc de                                        ; $7ab1: $13
    ld bc, $0116                                  ; $7ab2: $01 $16 $01
    ld a, [de]                                    ; $7ab5: $1a
    ld bc, $011e                                  ; $7ab6: $01 $1e $01
    ld hl, $2501                                  ; $7ab9: $21 $01 $25
    ld bc, $0129                                  ; $7abc: $01 $29 $01
    inc l                                         ; $7abf: $2c
    ld bc, $0130                                  ; $7ac0: $01 $30 $01
    inc [hl]                                      ; $7ac3: $34
    ld bc, $0137                                  ; $7ac4: $01 $37 $01
    dec sp                                        ; $7ac7: $3b
    ld bc, $013e                                  ; $7ac8: $01 $3e $01
    ld b, d                                       ; $7acb: $42
    ld bc, HeaderSGBFlag                          ; $7acc: $01 $46 $01
    ld c, d                                       ; $7acf: $4a
    ld bc, HeaderComplementCheck                  ; $7ad0: $01 $4d $01
    ld d, b                                       ; $7ad3: $50
    ld bc, $0154                                  ; $7ad4: $01 $54 $01
    ld e, b                                       ; $7ad7: $58
    ld bc, $015b                                  ; $7ad8: $01 $5b $01
    ld e, a                                       ; $7adb: $5f
    ld bc, $0163                                  ; $7adc: $01 $63 $01
    ld h, [hl]                                    ; $7adf: $66
    ld bc, $0169                                  ; $7ae0: $01 $69 $01
    ld l, [hl]                                    ; $7ae3: $6e
    ld bc, $0171                                  ; $7ae4: $01 $71 $01
    ld [hl], l                                    ; $7ae7: $75
    ld bc, $0178                                  ; $7ae8: $01 $78 $01
    ld a, h                                       ; $7aeb: $7c
    ld bc, $017f                                  ; $7aec: $01 $7f $01
    add e                                         ; $7aef: $83
    ld bc, $0187                                  ; $7af0: $01 $87 $01
    adc e                                         ; $7af3: $8b
    ld bc, $018e                                  ; $7af4: $01 $8e $01
    sub d                                         ; $7af7: $92
    ld bc, $0196                                  ; $7af8: $01 $96 $01
    sbc d                                         ; $7afb: $9a
    ld bc, $019d                                  ; $7afc: $01 $9d $01
    and c                                         ; $7aff: $a1
    ld bc, $01a5                                  ; $7b00: $01 $a5 $01
    xor b                                         ; $7b03: $a8
    ld bc, $01ac                                  ; $7b04: $01 $ac $01
    or b                                          ; $7b07: $b0
    ld bc, $01b4                                  ; $7b08: $01 $b4 $01
    or a                                          ; $7b0b: $b7
    ld bc, $01bb                                  ; $7b0c: $01 $bb $01
    cp [hl]                                       ; $7b0f: $be
    ld bc, $01c2                                  ; $7b10: $01 $c2 $01
    add $01                                       ; $7b13: $c6 $01
    jp z, $ce01                                   ; $7b15: $ca $01 $ce

    ld bc, $01d1                                  ; $7b18: $01 $d1 $01
    push de                                       ; $7b1b: $d5
    ld bc, $01d9                                  ; $7b1c: $01 $d9 $01
    call c, Call_000_0401                         ; $7b1f: $dc $01 $04
    nop                                           ; $7b22: $00
    dec [hl]                                      ; $7b23: $35
    nop                                           ; $7b24: $00
    ld b, d                                       ; $7b25: $42
    nop                                           ; $7b26: $00
    ld c, e                                       ; $7b27: $4b
    nop                                           ; $7b28: $00
    ld d, l                                       ; $7b29: $55
    nop                                           ; $7b2a: $00
    ld e, l                                       ; $7b2b: $5d
    nop                                           ; $7b2c: $00
    ld l, b                                       ; $7b2d: $68
    nop                                           ; $7b2e: $00
    ld l, [hl]                                    ; $7b2f: $6e
    nop                                           ; $7b30: $00
    ld [hl], h                                    ; $7b31: $74
    nop                                           ; $7b32: $00
    ld a, d                                       ; $7b33: $7a
    nop                                           ; $7b34: $00
    add c                                         ; $7b35: $81
    nop                                           ; $7b36: $00
    add [hl]                                      ; $7b37: $86
    nop                                           ; $7b38: $00
    adc h                                         ; $7b39: $8c
    nop                                           ; $7b3a: $00
    sub c                                         ; $7b3b: $91
    nop                                           ; $7b3c: $00
    sub [hl]                                      ; $7b3d: $96
    nop                                           ; $7b3e: $00

    db $9c, $00

    and c                                         ; $7b41: $a1
    nop                                           ; $7b42: $00
    and [hl]                                      ; $7b43: $a6
    nop                                           ; $7b44: $00
    xor e                                         ; $7b45: $ab
    nop                                           ; $7b46: $00
    or b                                          ; $7b47: $b0
    nop                                           ; $7b48: $00
    or l                                          ; $7b49: $b5
    nop                                           ; $7b4a: $00
    cp d                                          ; $7b4b: $ba
    nop                                           ; $7b4c: $00
    cp a                                          ; $7b4d: $bf
    nop                                           ; $7b4e: $00

    db $c4, $00, $c8, $00

    db $cd                                        ; $7b53: $cd
    nop                                           ; $7b54: $00

    db $d2, $00

    sub $00                                       ; $7b57: $d6 $00
    db $db                                        ; $7b59: $db
    nop                                           ; $7b5a: $00
    ldh [rP1], a                                  ; $7b5b: $e0 $00
    db $e4                                        ; $7b5d: $e4
    nop                                           ; $7b5e: $00
    add sp, $00                                   ; $7b5f: $e8 $00

    db $ed, $00

    pop af                                        ; $7b63: $f1
    nop                                           ; $7b64: $00
    or $00                                        ; $7b65: $f6 $00
    ld a, [$ff00]                                 ; $7b67: $fa $00 $ff
    nop                                           ; $7b6a: $00
    inc bc                                        ; $7b6b: $03
    ld bc, $0108                                  ; $7b6c: $01 $08 $01
    inc c                                         ; $7b6f: $0c
    ld bc, $0111                                  ; $7b70: $01 $11 $01
    inc d                                         ; $7b73: $14
    ld bc, $0119                                  ; $7b74: $01 $19 $01
    ld e, $01                                     ; $7b77: $1e $01
    ld [hl+], a                                   ; $7b79: $22
    ld bc, $0126                                  ; $7b7a: $01 $26 $01
    dec hl                                        ; $7b7d: $2b
    ld bc, $012f                                  ; $7b7e: $01 $2f $01
    inc sp                                        ; $7b81: $33
    ld bc, $0138                                  ; $7b82: $01 $38 $01
    inc a                                         ; $7b85: $3c
    ld bc, $0140                                  ; $7b86: $01 $40 $01
    ld b, l                                       ; $7b89: $45
    ld bc, HeaderRAMSize                          ; $7b8a: $01 $49 $01
    ld c, [hl]                                    ; $7b8d: $4e
    ld bc, $0152                                  ; $7b8e: $01 $52 $01
    ld d, [hl]                                    ; $7b91: $56
    ld bc, $015b                                  ; $7b92: $01 $5b $01
    ld e, a                                       ; $7b95: $5f
    ld bc, $0163                                  ; $7b96: $01 $63 $01
    ld l, b                                       ; $7b99: $68
    ld bc, $016c                                  ; $7b9a: $01 $6c $01
    ld [hl], c                                    ; $7b9d: $71
    ld bc, $0175                                  ; $7b9e: $01 $75 $01
    ld a, c                                       ; $7ba1: $79
    ld bc, $017e                                  ; $7ba2: $01 $7e $01
    add d                                         ; $7ba5: $82
    ld bc, $0187                                  ; $7ba6: $01 $87 $01
    adc e                                         ; $7ba9: $8b
    ld bc, $018f                                  ; $7baa: $01 $8f $01
    sub h                                         ; $7bad: $94
    ld bc, $0198                                  ; $7bae: $01 $98 $01
    sbc h                                         ; $7bb1: $9c
    ld bc, $01a1                                  ; $7bb2: $01 $a1 $01
    and l                                         ; $7bb5: $a5
    ld bc, $01aa                                  ; $7bb6: $01 $aa $01
    xor [hl]                                      ; $7bb9: $ae
    ld bc, $01b3                                  ; $7bba: $01 $b3 $01
    or a                                          ; $7bbd: $b7
    ld bc, $01bb                                  ; $7bbe: $01 $bb $01
    ret nz                                        ; $7bc1: $c0

    ld bc, $01c4                                  ; $7bc2: $01 $c4 $01
    ret                                           ; $7bc5: $c9


    ld bc, $01cd                                  ; $7bc6: $01 $cd $01
    jp nc, $d601                                  ; $7bc9: $d2 $01 $d6

    ld bc, $01db                                  ; $7bcc: $01 $db $01
    rst $18                                       ; $7bcf: $df
    ld bc, $7beb                                  ; $7bd0: $01 $eb $7b
    add hl, hl                                    ; $7bd3: $29
    ld a, h                                       ; $7bd4: $7c
    ld h, a                                       ; $7bd5: $67
    ld a, h                                       ; $7bd6: $7c
    and l                                         ; $7bd7: $a5
    ld a, h                                       ; $7bd8: $7c
    db $e3                                        ; $7bd9: $e3
    ld a, h                                       ; $7bda: $7c
    ld hl, $5f7d                                  ; $7bdb: $21 $7d $5f
    ld a, l                                       ; $7bde: $7d
    sbc l                                         ; $7bdf: $9d
    ld a, l                                       ; $7be0: $7d
    db $db                                        ; $7be1: $db
    ld a, l                                       ; $7be2: $7d
    add hl, de                                    ; $7be3: $19
    ld a, [hl]                                    ; $7be4: $7e
    ld d, a                                       ; $7be5: $57
    ld a, [hl]                                    ; $7be6: $7e
    sub l                                         ; $7be7: $95
    ld a, [hl]                                    ; $7be8: $7e

    db $d3, $7e

    ld bc, $0e00                                  ; $7beb: $01 $00 $0e
    nop                                           ; $7bee: $00
    inc e                                         ; $7bef: $1c
    nop                                           ; $7bf0: $00
    dec h                                         ; $7bf1: $25
    nop                                           ; $7bf2: $00
    inc l                                         ; $7bf3: $2c
    nop                                           ; $7bf4: $00
    inc sp                                        ; $7bf5: $33
    nop                                           ; $7bf6: $00
    add hl, sp                                    ; $7bf7: $39
    nop                                           ; $7bf8: $00
    ccf                                           ; $7bf9: $3f
    nop                                           ; $7bfa: $00
    ld b, l                                       ; $7bfb: $45
    nop                                           ; $7bfc: $00
    ld c, b                                       ; $7bfd: $48
    nop                                           ; $7bfe: $00
    ld c, [hl]                                    ; $7bff: $4e
    nop                                           ; $7c00: $00
    ld d, e                                       ; $7c01: $53
    nop                                           ; $7c02: $00
    ld d, a                                       ; $7c03: $57
    nop                                           ; $7c04: $00
    ld e, d                                       ; $7c05: $5a
    nop                                           ; $7c06: $00
    ld e, l                                       ; $7c07: $5d
    nop                                           ; $7c08: $00
    ld h, b                                       ; $7c09: $60
    nop                                           ; $7c0a: $00
    ld h, e                                       ; $7c0b: $63
    nop                                           ; $7c0c: $00
    ld h, [hl]                                    ; $7c0d: $66
    nop                                           ; $7c0e: $00
    ld l, b                                       ; $7c0f: $68
    nop                                           ; $7c10: $00
    ld l, e                                       ; $7c11: $6b
    nop                                           ; $7c12: $00
    ld l, l                                       ; $7c13: $6d
    nop                                           ; $7c14: $00
    ld l, a                                       ; $7c15: $6f
    nop                                           ; $7c16: $00
    ld [hl], c                                    ; $7c17: $71
    nop                                           ; $7c18: $00
    ld [hl], e                                    ; $7c19: $73
    nop                                           ; $7c1a: $00
    ld [hl], h                                    ; $7c1b: $74
    nop                                           ; $7c1c: $00
    halt                                          ; $7c1d: $76
    nop                                           ; $7c1e: $00
    ld [hl], a                                    ; $7c1f: $77
    nop                                           ; $7c20: $00
    ld a, c                                       ; $7c21: $79
    nop                                           ; $7c22: $00
    ld a, e                                       ; $7c23: $7b
    nop                                           ; $7c24: $00
    ld a, e                                       ; $7c25: $7b
    nop                                           ; $7c26: $00
    ld a, l                                       ; $7c27: $7d
    nop                                           ; $7c28: $00
    ld bc, $1000                                  ; $7c29: $01 $00 $10
    nop                                           ; $7c2c: $00
    rra                                           ; $7c2d: $1f
    nop                                           ; $7c2e: $00
    jr z, jr_038_7c31                             ; $7c2f: $28 $00

jr_038_7c31:
    jr nc, jr_038_7c33                            ; $7c31: $30 $00

jr_038_7c33:
    scf                                           ; $7c33: $37
    nop                                           ; $7c34: $00
    ld a, $00                                     ; $7c35: $3e $00
    ld b, l                                       ; $7c37: $45
    nop                                           ; $7c38: $00
    ld c, e                                       ; $7c39: $4b
    nop                                           ; $7c3a: $00
    ld d, b                                       ; $7c3b: $50
    nop                                           ; $7c3c: $00
    ld d, h                                       ; $7c3d: $54
    nop                                           ; $7c3e: $00
    ld e, b                                       ; $7c3f: $58
    nop                                           ; $7c40: $00
    ld e, l                                       ; $7c41: $5d
    nop                                           ; $7c42: $00
    ld e, a                                       ; $7c43: $5f
    nop                                           ; $7c44: $00
    ld h, e                                       ; $7c45: $63
    nop                                           ; $7c46: $00
    ld h, l                                       ; $7c47: $65
    nop                                           ; $7c48: $00
    ld l, b                                       ; $7c49: $68
    nop                                           ; $7c4a: $00
    ld l, d                                       ; $7c4b: $6a
    nop                                           ; $7c4c: $00
    ld l, l                                       ; $7c4d: $6d
    nop                                           ; $7c4e: $00
    ld l, a                                       ; $7c4f: $6f
    nop                                           ; $7c50: $00
    ld [hl], d                                    ; $7c51: $72
    nop                                           ; $7c52: $00
    ld [hl], h                                    ; $7c53: $74
    nop                                           ; $7c54: $00
    ld [hl], l                                    ; $7c55: $75
    nop                                           ; $7c56: $00
    ld [hl], a                                    ; $7c57: $77
    nop                                           ; $7c58: $00
    ld a, b                                       ; $7c59: $78
    nop                                           ; $7c5a: $00
    ld a, d                                       ; $7c5b: $7a
    nop                                           ; $7c5c: $00
    ld a, e                                       ; $7c5d: $7b
    nop                                           ; $7c5e: $00
    ld a, h                                       ; $7c5f: $7c
    nop                                           ; $7c60: $00
    ld a, l                                       ; $7c61: $7d
    nop                                           ; $7c62: $00
    ld a, [hl]                                    ; $7c63: $7e
    nop                                           ; $7c64: $00
    ld a, a                                       ; $7c65: $7f
    nop                                           ; $7c66: $00
    ld bc, $1100                                  ; $7c67: $01 $00 $11
    nop                                           ; $7c6a: $00
    ld hl, $2b00                                  ; $7c6b: $21 $00 $2b
    nop                                           ; $7c6e: $00
    inc sp                                        ; $7c6f: $33
    nop                                           ; $7c70: $00
    dec sp                                        ; $7c71: $3b
    nop                                           ; $7c72: $00
    ld b, d                                       ; $7c73: $42
    nop                                           ; $7c74: $00
    ld c, b                                       ; $7c75: $48
    nop                                           ; $7c76: $00
    ld c, a                                       ; $7c77: $4f
    nop                                           ; $7c78: $00
    ld d, l                                       ; $7c79: $55
    nop                                           ; $7c7a: $00
    ld e, b                                       ; $7c7b: $58
    nop                                           ; $7c7c: $00
    ld e, l                                       ; $7c7d: $5d
    nop                                           ; $7c7e: $00
    ld h, c                                       ; $7c7f: $61
    nop                                           ; $7c80: $00
    ld h, e                                       ; $7c81: $63
    nop                                           ; $7c82: $00
    ld h, a                                       ; $7c83: $67
    nop                                           ; $7c84: $00
    ld l, d                                       ; $7c85: $6a
    nop                                           ; $7c86: $00
    ld l, l                                       ; $7c87: $6d
    nop                                           ; $7c88: $00
    ld l, a                                       ; $7c89: $6f
    nop                                           ; $7c8a: $00
    ld [hl], d                                    ; $7c8b: $72
    nop                                           ; $7c8c: $00
    ld [hl], h                                    ; $7c8d: $74
    nop                                           ; $7c8e: $00
    halt                                          ; $7c8f: $76
    nop                                           ; $7c90: $00
    ld a, b                                       ; $7c91: $78
    nop                                           ; $7c92: $00
    ld a, c                                       ; $7c93: $79
    nop                                           ; $7c94: $00
    ld a, h                                       ; $7c95: $7c
    nop                                           ; $7c96: $00
    ld a, h                                       ; $7c97: $7c
    nop                                           ; $7c98: $00
    ld a, [hl]                                    ; $7c99: $7e
    nop                                           ; $7c9a: $00
    add b                                         ; $7c9b: $80
    nop                                           ; $7c9c: $00
    add c                                         ; $7c9d: $81
    nop                                           ; $7c9e: $00
    add d                                         ; $7c9f: $82
    nop                                           ; $7ca0: $00
    add e                                         ; $7ca1: $83
    nop                                           ; $7ca2: $00
    add h                                         ; $7ca3: $84
    nop                                           ; $7ca4: $00
    ld bc, $1200                                  ; $7ca5: $01 $00 $12
    nop                                           ; $7ca8: $00
    inc e                                         ; $7ca9: $1c
    nop                                           ; $7caa: $00
    dec h                                         ; $7cab: $25
    nop                                           ; $7cac: $00
    dec l                                         ; $7cad: $2d
    nop                                           ; $7cae: $00
    inc [hl]                                      ; $7caf: $34
    nop                                           ; $7cb0: $00
    dec sp                                        ; $7cb1: $3b
    nop                                           ; $7cb2: $00
    ld b, c                                       ; $7cb3: $41
    nop                                           ; $7cb4: $00
    ld b, l                                       ; $7cb5: $45
    nop                                           ; $7cb6: $00
    ld c, e                                       ; $7cb7: $4b
    nop                                           ; $7cb8: $00
    ld c, a                                       ; $7cb9: $4f
    nop                                           ; $7cba: $00
    ld d, h                                       ; $7cbb: $54
    nop                                           ; $7cbc: $00
    ld e, b                                       ; $7cbd: $58
    nop                                           ; $7cbe: $00
    ld e, h                                       ; $7cbf: $5c
    nop                                           ; $7cc0: $00
    ld e, a                                       ; $7cc1: $5f
    nop                                           ; $7cc2: $00
    ld h, e                                       ; $7cc3: $63
    nop                                           ; $7cc4: $00
    ld h, [hl]                                    ; $7cc5: $66
    nop                                           ; $7cc6: $00
    ld l, c                                       ; $7cc7: $69
    nop                                           ; $7cc8: $00
    ld l, h                                       ; $7cc9: $6c
    nop                                           ; $7cca: $00
    ld l, a                                       ; $7ccb: $6f
    nop                                           ; $7ccc: $00
    ld [hl], c                                    ; $7ccd: $71
    nop                                           ; $7cce: $00
    ld [hl], h                                    ; $7ccf: $74
    nop                                           ; $7cd0: $00
    halt                                          ; $7cd1: $76
    nop                                           ; $7cd2: $00
    ld a, c                                       ; $7cd3: $79
    nop                                           ; $7cd4: $00
    ld a, l                                       ; $7cd5: $7d
    nop                                           ; $7cd6: $00
    ld a, [hl]                                    ; $7cd7: $7e
    nop                                           ; $7cd8: $00
    add b                                         ; $7cd9: $80
    nop                                           ; $7cda: $00
    add e                                         ; $7cdb: $83
    nop                                           ; $7cdc: $00
    add l                                         ; $7cdd: $85
    nop                                           ; $7cde: $00
    add a                                         ; $7cdf: $87
    nop                                           ; $7ce0: $00
    adc c                                         ; $7ce1: $89
    nop                                           ; $7ce2: $00
    ld bc, $1300                                  ; $7ce3: $01 $00 $13
    nop                                           ; $7ce6: $00
    rra                                           ; $7ce7: $1f
    nop                                           ; $7ce8: $00
    jr z, jr_038_7ceb                             ; $7ce9: $28 $00

jr_038_7ceb:
    ld sp, $3800                                  ; $7ceb: $31 $00 $38
    nop                                           ; $7cee: $00
    ld b, b                                       ; $7cef: $40
    nop                                           ; $7cf0: $00
    ld b, [hl]                                    ; $7cf1: $46
    nop                                           ; $7cf2: $00
    ld c, e                                       ; $7cf3: $4b
    nop                                           ; $7cf4: $00
    ld d, b                                       ; $7cf5: $50
    nop                                           ; $7cf6: $00
    ld d, h                                       ; $7cf7: $54
    nop                                           ; $7cf8: $00
    ld e, c                                       ; $7cf9: $59
    nop                                           ; $7cfa: $00
    ld e, l                                       ; $7cfb: $5d
    nop                                           ; $7cfc: $00
    ld h, b                                       ; $7cfd: $60
    nop                                           ; $7cfe: $00
    ld h, h                                       ; $7cff: $64
    nop                                           ; $7d00: $00
    ld h, a                                       ; $7d01: $67
    nop                                           ; $7d02: $00
    ld l, e                                       ; $7d03: $6b
    nop                                           ; $7d04: $00
    ld l, [hl]                                    ; $7d05: $6e
    nop                                           ; $7d06: $00
    ld [hl], c                                    ; $7d07: $71
    nop                                           ; $7d08: $00
    ld [hl], h                                    ; $7d09: $74
    nop                                           ; $7d0a: $00
    ld [hl], a                                    ; $7d0b: $77
    nop                                           ; $7d0c: $00
    ld a, c                                       ; $7d0d: $79
    nop                                           ; $7d0e: $00
    ld a, e                                       ; $7d0f: $7b
    nop                                           ; $7d10: $00
    ld a, [hl]                                    ; $7d11: $7e
    nop                                           ; $7d12: $00
    add b                                         ; $7d13: $80
    nop                                           ; $7d14: $00
    add e                                         ; $7d15: $83
    nop                                           ; $7d16: $00
    add l                                         ; $7d17: $85
    nop                                           ; $7d18: $00
    add a                                         ; $7d19: $87
    nop                                           ; $7d1a: $00
    adc c                                         ; $7d1b: $89
    nop                                           ; $7d1c: $00
    adc e                                         ; $7d1d: $8b
    nop                                           ; $7d1e: $00
    adc l                                         ; $7d1f: $8d
    nop                                           ; $7d20: $00
    ld bc, $1600                                  ; $7d21: $01 $00 $16
    nop                                           ; $7d24: $00
    ld [hl+], a                                   ; $7d25: $22
    nop                                           ; $7d26: $00
    inc l                                         ; $7d27: $2c
    nop                                           ; $7d28: $00
    inc [hl]                                      ; $7d29: $34
    nop                                           ; $7d2a: $00
    inc a                                         ; $7d2b: $3c
    nop                                           ; $7d2c: $00
    ld b, l                                       ; $7d2d: $45
    nop                                           ; $7d2e: $00
    ld c, e                                       ; $7d2f: $4b
    nop                                           ; $7d30: $00
    ld d, c                                       ; $7d31: $51
    nop                                           ; $7d32: $00
    ld d, [hl]                                    ; $7d33: $56
    nop                                           ; $7d34: $00
    ld e, d                                       ; $7d35: $5a
    nop                                           ; $7d36: $00
    ld e, a                                       ; $7d37: $5f
    nop                                           ; $7d38: $00
    ld h, h                                       ; $7d39: $64
    nop                                           ; $7d3a: $00
    ld h, a                                       ; $7d3b: $67
    nop                                           ; $7d3c: $00
    ld l, e                                       ; $7d3d: $6b
    nop                                           ; $7d3e: $00
    ld l, a                                       ; $7d3f: $6f
    nop                                           ; $7d40: $00
    ld [hl], d                                    ; $7d41: $72
    nop                                           ; $7d42: $00
    ld [hl], l                                    ; $7d43: $75
    nop                                           ; $7d44: $00
    ld a, b                                       ; $7d45: $78
    nop                                           ; $7d46: $00
    ld a, e                                       ; $7d47: $7b
    nop                                           ; $7d48: $00
    ld a, [hl]                                    ; $7d49: $7e
    nop                                           ; $7d4a: $00
    add b                                         ; $7d4b: $80
    nop                                           ; $7d4c: $00
    add d                                         ; $7d4d: $82
    nop                                           ; $7d4e: $00
    add l                                         ; $7d4f: $85
    nop                                           ; $7d50: $00
    add a                                         ; $7d51: $87
    nop                                           ; $7d52: $00
    adc c                                         ; $7d53: $89
    nop                                           ; $7d54: $00
    adc e                                         ; $7d55: $8b
    nop                                           ; $7d56: $00
    adc h                                         ; $7d57: $8c
    nop                                           ; $7d58: $00
    adc [hl]                                      ; $7d59: $8e
    nop                                           ; $7d5a: $00
    sub c                                         ; $7d5b: $91
    nop                                           ; $7d5c: $00
    sub d                                         ; $7d5d: $92
    nop                                           ; $7d5e: $00
    ld bc, $1700                                  ; $7d5f: $01 $00 $17
    nop                                           ; $7d62: $00
    inc h                                         ; $7d63: $24
    nop                                           ; $7d64: $00
    cpl                                           ; $7d65: $2f
    nop                                           ; $7d66: $00
    add hl, sp                                    ; $7d67: $39
    nop                                           ; $7d68: $00
    ld b, d                                       ; $7d69: $42
    nop                                           ; $7d6a: $00
    ld c, c                                       ; $7d6b: $49
    nop                                           ; $7d6c: $00
    ld c, a                                       ; $7d6d: $4f
    nop                                           ; $7d6e: $00
    ld d, l                                       ; $7d6f: $55
    nop                                           ; $7d70: $00
    ld e, d                                       ; $7d71: $5a
    nop                                           ; $7d72: $00
    ld h, b                                       ; $7d73: $60
    nop                                           ; $7d74: $00
    ld h, h                                       ; $7d75: $64
    nop                                           ; $7d76: $00
    ld l, c                                       ; $7d77: $69
    nop                                           ; $7d78: $00
    ld l, h                                       ; $7d79: $6c
    nop                                           ; $7d7a: $00
    ld [hl], c                                    ; $7d7b: $71
    nop                                           ; $7d7c: $00
    ld [hl], h                                    ; $7d7d: $74
    nop                                           ; $7d7e: $00
    ld a, b                                       ; $7d7f: $78
    nop                                           ; $7d80: $00
    ld a, e                                       ; $7d81: $7b
    nop                                           ; $7d82: $00
    ld a, l                                       ; $7d83: $7d
    nop                                           ; $7d84: $00
    add c                                         ; $7d85: $81
    nop                                           ; $7d86: $00
    add h                                         ; $7d87: $84
    nop                                           ; $7d88: $00
    add [hl]                                      ; $7d89: $86
    nop                                           ; $7d8a: $00
    adc b                                         ; $7d8b: $88
    nop                                           ; $7d8c: $00
    adc e                                         ; $7d8d: $8b
    nop                                           ; $7d8e: $00
    adc l                                         ; $7d8f: $8d
    nop                                           ; $7d90: $00
    adc a                                         ; $7d91: $8f
    nop                                           ; $7d92: $00
    sub c                                         ; $7d93: $91
    nop                                           ; $7d94: $00
    sub e                                         ; $7d95: $93
    nop                                           ; $7d96: $00
    sub l                                         ; $7d97: $95
    nop                                           ; $7d98: $00
    sub [hl]                                      ; $7d99: $96
    nop                                           ; $7d9a: $00
    sbc b                                         ; $7d9b: $98
    nop                                           ; $7d9c: $00
    ld bc, $1800                                  ; $7d9d: $01 $00 $18
    nop                                           ; $7da0: $00
    ld h, $00                                     ; $7da1: $26 $00
    ld sp, $3c00                                  ; $7da3: $31 $00 $3c
    nop                                           ; $7da6: $00
    ld b, l                                       ; $7da7: $45
    nop                                           ; $7da8: $00
    ld c, h                                       ; $7da9: $4c
    nop                                           ; $7daa: $00
    ld d, d                                       ; $7dab: $52
    nop                                           ; $7dac: $00
    ld e, c                                       ; $7dad: $59
    nop                                           ; $7dae: $00
    ld e, a                                       ; $7daf: $5f
    nop                                           ; $7db0: $00
    ld h, h                                       ; $7db1: $64
    nop                                           ; $7db2: $00
    ld l, c                                       ; $7db3: $69
    nop                                           ; $7db4: $00
    ld l, l                                       ; $7db5: $6d
    nop                                           ; $7db6: $00
    ld [hl], d                                    ; $7db7: $72
    nop                                           ; $7db8: $00
    halt                                          ; $7db9: $76
    nop                                           ; $7dba: $00
    ld a, c                                       ; $7dbb: $79
    nop                                           ; $7dbc: $00
    ld a, l                                       ; $7dbd: $7d
    nop                                           ; $7dbe: $00
    ld a, a                                       ; $7dbf: $7f
    nop                                           ; $7dc0: $00
    add d                                         ; $7dc1: $82
    nop                                           ; $7dc2: $00
    add [hl]                                      ; $7dc3: $86
    nop                                           ; $7dc4: $00
    adc b                                         ; $7dc5: $88
    nop                                           ; $7dc6: $00
    adc e                                         ; $7dc7: $8b
    nop                                           ; $7dc8: $00
    adc l                                         ; $7dc9: $8d
    nop                                           ; $7dca: $00
    adc a                                         ; $7dcb: $8f
    nop                                           ; $7dcc: $00
    sub c                                         ; $7dcd: $91
    nop                                           ; $7dce: $00
    sub h                                         ; $7dcf: $94
    nop                                           ; $7dd0: $00
    sub [hl]                                      ; $7dd1: $96
    nop                                           ; $7dd2: $00
    sbc b                                         ; $7dd3: $98
    nop                                           ; $7dd4: $00
    sbc d                                         ; $7dd5: $9a
    nop                                           ; $7dd6: $00
    sbc h                                         ; $7dd7: $9c
    nop                                           ; $7dd8: $00
    sbc [hl]                                      ; $7dd9: $9e
    nop                                           ; $7dda: $00
    ld bc, $1a00                                  ; $7ddb: $01 $00 $1a
    nop                                           ; $7dde: $00
    jr z, jr_038_7de1                             ; $7ddf: $28 $00

jr_038_7de1:
    inc [hl]                                      ; $7de1: $34
    nop                                           ; $7de2: $00
    ccf                                           ; $7de3: $3f
    nop                                           ; $7de4: $00
    ld c, d                                       ; $7de5: $4a
    nop                                           ; $7de6: $00
    ld d, c                                       ; $7de7: $51
    nop                                           ; $7de8: $00
    ld e, b                                       ; $7de9: $58
    nop                                           ; $7dea: $00
    ld e, [hl]                                    ; $7deb: $5e
    nop                                           ; $7dec: $00
    ld h, h                                       ; $7ded: $64
    nop                                           ; $7dee: $00
    ld l, c                                       ; $7def: $69
    nop                                           ; $7df0: $00
    ld l, [hl]                                    ; $7df1: $6e
    nop                                           ; $7df2: $00
    ld [hl], e                                    ; $7df3: $73
    nop                                           ; $7df4: $00
    ld [hl], a                                    ; $7df5: $77
    nop                                           ; $7df6: $00
    ld a, e                                       ; $7df7: $7b
    nop                                           ; $7df8: $00
    ld a, a                                       ; $7df9: $7f
    nop                                           ; $7dfa: $00
    add e                                         ; $7dfb: $83
    nop                                           ; $7dfc: $00
    add l                                         ; $7dfd: $85
    nop                                           ; $7dfe: $00
    adc c                                         ; $7dff: $89
    nop                                           ; $7e00: $00
    adc h                                         ; $7e01: $8c
    nop                                           ; $7e02: $00
    adc a                                         ; $7e03: $8f
    nop                                           ; $7e04: $00
    sub c                                         ; $7e05: $91
    nop                                           ; $7e06: $00
    sub h                                         ; $7e07: $94
    nop                                           ; $7e08: $00
    sub [hl]                                      ; $7e09: $96
    nop                                           ; $7e0a: $00
    sbc c                                         ; $7e0b: $99
    nop                                           ; $7e0c: $00
    sbc d                                         ; $7e0d: $9a
    nop                                           ; $7e0e: $00
    sbc l                                         ; $7e0f: $9d
    nop                                           ; $7e10: $00
    sbc a                                         ; $7e11: $9f
    nop                                           ; $7e12: $00
    and c                                         ; $7e13: $a1
    nop                                           ; $7e14: $00
    and e                                         ; $7e15: $a3
    nop                                           ; $7e16: $00
    and h                                         ; $7e17: $a4
    nop                                           ; $7e18: $00
    ld bc, $1c00                                  ; $7e19: $01 $00 $1c
    nop                                           ; $7e1c: $00
    dec hl                                        ; $7e1d: $2b
    nop                                           ; $7e1e: $00
    jr c, jr_038_7e21                             ; $7e1f: $38 $00

jr_038_7e21:
    ld b, d                                       ; $7e21: $42
    nop                                           ; $7e22: $00
    ld c, l                                       ; $7e23: $4d
    nop                                           ; $7e24: $00
    ld d, [hl]                                    ; $7e25: $56
    nop                                           ; $7e26: $00
    ld e, l                                       ; $7e27: $5d
    nop                                           ; $7e28: $00
    ld h, e                                       ; $7e29: $63
    nop                                           ; $7e2a: $00
    ld l, c                                       ; $7e2b: $69
    nop                                           ; $7e2c: $00
    ld l, a                                       ; $7e2d: $6f
    nop                                           ; $7e2e: $00
    ld [hl], h                                    ; $7e2f: $74
    nop                                           ; $7e30: $00
    ld a, c                                       ; $7e31: $79
    nop                                           ; $7e32: $00
    ld a, [hl]                                    ; $7e33: $7e
    nop                                           ; $7e34: $00
    add d                                         ; $7e35: $82
    nop                                           ; $7e36: $00
    add [hl]                                      ; $7e37: $86
    nop                                           ; $7e38: $00
    adc d                                         ; $7e39: $8a
    nop                                           ; $7e3a: $00
    adc l                                         ; $7e3b: $8d
    nop                                           ; $7e3c: $00
    sub b                                         ; $7e3d: $90
    nop                                           ; $7e3e: $00
    sub h                                         ; $7e3f: $94
    nop                                           ; $7e40: $00
    sub [hl]                                      ; $7e41: $96
    nop                                           ; $7e42: $00
    sbc c                                         ; $7e43: $99
    nop                                           ; $7e44: $00
    sbc h                                         ; $7e45: $9c
    nop                                           ; $7e46: $00
    sbc [hl]                                      ; $7e47: $9e
    nop                                           ; $7e48: $00
    and b                                         ; $7e49: $a0
    nop                                           ; $7e4a: $00
    and d                                         ; $7e4b: $a2
    nop                                           ; $7e4c: $00
    and h                                         ; $7e4d: $a4
    nop                                           ; $7e4e: $00
    and a                                         ; $7e4f: $a7
    nop                                           ; $7e50: $00
    xor c                                         ; $7e51: $a9
    nop                                           ; $7e52: $00
    xor e                                         ; $7e53: $ab
    nop                                           ; $7e54: $00
    xor l                                         ; $7e55: $ad
    nop                                           ; $7e56: $00
    ld bc, $1c00                                  ; $7e57: $01 $00 $1c
    nop                                           ; $7e5a: $00
    dec hl                                        ; $7e5b: $2b
    nop                                           ; $7e5c: $00
    add hl, sp                                    ; $7e5d: $39
    nop                                           ; $7e5e: $00
    ld b, h                                       ; $7e5f: $44
    nop                                           ; $7e60: $00
    ld c, l                                       ; $7e61: $4d
    nop                                           ; $7e62: $00
    ld d, l                                       ; $7e63: $55
    nop                                           ; $7e64: $00
    ld e, l                                       ; $7e65: $5d
    nop                                           ; $7e66: $00
    ld h, h                                       ; $7e67: $64
    nop                                           ; $7e68: $00
    ld l, d                                       ; $7e69: $6a
    nop                                           ; $7e6a: $00
    ld [hl], b                                    ; $7e6b: $70
    nop                                           ; $7e6c: $00
    ld [hl], l                                    ; $7e6d: $75
    nop                                           ; $7e6e: $00
    ld a, d                                       ; $7e6f: $7a
    nop                                           ; $7e70: $00
    ld a, [hl]                                    ; $7e71: $7e
    nop                                           ; $7e72: $00
    add e                                         ; $7e73: $83
    nop                                           ; $7e74: $00
    adc b                                         ; $7e75: $88
    nop                                           ; $7e76: $00
    adc e                                         ; $7e77: $8b
    nop                                           ; $7e78: $00
    adc a                                         ; $7e79: $8f
    nop                                           ; $7e7a: $00
    sub d                                         ; $7e7b: $92
    nop                                           ; $7e7c: $00
    sub [hl]                                      ; $7e7d: $96
    nop                                           ; $7e7e: $00
    sbc c                                         ; $7e7f: $99
    nop                                           ; $7e80: $00
    sbc h                                         ; $7e81: $9c
    nop                                           ; $7e82: $00
    sbc a                                         ; $7e83: $9f
    nop                                           ; $7e84: $00
    and d                                         ; $7e85: $a2
    nop                                           ; $7e86: $00
    and h                                         ; $7e87: $a4
    nop                                           ; $7e88: $00
    and a                                         ; $7e89: $a7
    nop                                           ; $7e8a: $00
    xor d                                         ; $7e8b: $aa
    nop                                           ; $7e8c: $00
    xor h                                         ; $7e8d: $ac
    nop                                           ; $7e8e: $00
    xor a                                         ; $7e8f: $af
    nop                                           ; $7e90: $00
    or d                                          ; $7e91: $b2
    nop                                           ; $7e92: $00
    or e                                          ; $7e93: $b3
    nop                                           ; $7e94: $00
    ld bc, $1f00                                  ; $7e95: $01 $00 $1f
    nop                                           ; $7e98: $00
    jr nc, jr_038_7e9b                            ; $7e99: $30 $00

jr_038_7e9b:
    ccf                                           ; $7e9b: $3f
    nop                                           ; $7e9c: $00
    ld c, d                                       ; $7e9d: $4a
    nop                                           ; $7e9e: $00
    ld d, h                                       ; $7e9f: $54
    nop                                           ; $7ea0: $00
    ld e, l                                       ; $7ea1: $5d
    nop                                           ; $7ea2: $00
    ld h, h                                       ; $7ea3: $64
    nop                                           ; $7ea4: $00
    ld l, h                                       ; $7ea5: $6c
    nop                                           ; $7ea6: $00
    ld [hl], d                                    ; $7ea7: $72
    nop                                           ; $7ea8: $00
    ld a, b                                       ; $7ea9: $78
    nop                                           ; $7eaa: $00
    ld a, [hl]                                    ; $7eab: $7e
    nop                                           ; $7eac: $00
    add h                                         ; $7ead: $84
    nop                                           ; $7eae: $00
    adc c                                         ; $7eaf: $89
    nop                                           ; $7eb0: $00
    adc [hl]                                      ; $7eb1: $8e
    nop                                           ; $7eb2: $00
    sub d                                         ; $7eb3: $92
    nop                                           ; $7eb4: $00
    sub [hl]                                      ; $7eb5: $96
    nop                                           ; $7eb6: $00
    sbc e                                         ; $7eb7: $9b
    nop                                           ; $7eb8: $00
    sbc a                                         ; $7eb9: $9f
    nop                                           ; $7eba: $00
    and e                                         ; $7ebb: $a3
    nop                                           ; $7ebc: $00
    and [hl]                                      ; $7ebd: $a6
    nop                                           ; $7ebe: $00
    xor d                                         ; $7ebf: $aa
    nop                                           ; $7ec0: $00
    xor l                                         ; $7ec1: $ad
    nop                                           ; $7ec2: $00
    or c                                          ; $7ec3: $b1
    nop                                           ; $7ec4: $00
    or e                                          ; $7ec5: $b3
    nop                                           ; $7ec6: $00
    or [hl]                                       ; $7ec7: $b6
    nop                                           ; $7ec8: $00
    cp c                                          ; $7ec9: $b9
    nop                                           ; $7eca: $00
    cp l                                          ; $7ecb: $bd
    nop                                           ; $7ecc: $00
    ret nz                                        ; $7ecd: $c0

    nop                                           ; $7ece: $00
    jp nz, $c500                                  ; $7ecf: $c2 $00 $c5

    nop                                           ; $7ed2: $00
    ld bc, $2300                                  ; $7ed3: $01 $00 $23
    nop                                           ; $7ed6: $00
    scf                                           ; $7ed7: $37
    nop                                           ; $7ed8: $00
    ld c, b                                       ; $7ed9: $48
    nop                                           ; $7eda: $00
    ld d, h                                       ; $7edb: $54
    nop                                           ; $7edc: $00
    ld e, a                                       ; $7edd: $5f
    nop                                           ; $7ede: $00
    ld l, c                                       ; $7edf: $69
    nop                                           ; $7ee0: $00
    ld [hl], d                                    ; $7ee1: $72
    nop                                           ; $7ee2: $00
    ld a, d                                       ; $7ee3: $7a
    nop                                           ; $7ee4: $00
    add d                                         ; $7ee5: $82
    nop                                           ; $7ee6: $00
    adc d                                         ; $7ee7: $8a
    nop                                           ; $7ee8: $00
    sub b                                         ; $7ee9: $90
    nop                                           ; $7eea: $00
    sub a                                         ; $7eeb: $97
    nop                                           ; $7eec: $00
    sbc h                                         ; $7eed: $9c
    nop                                           ; $7eee: $00
    and e                                         ; $7eef: $a3
    nop                                           ; $7ef0: $00
    xor b                                         ; $7ef1: $a8
    nop                                           ; $7ef2: $00
    xor l                                         ; $7ef3: $ad
    nop                                           ; $7ef4: $00
    or c                                          ; $7ef5: $b1
    nop                                           ; $7ef6: $00
    or [hl]                                       ; $7ef7: $b6
    nop                                           ; $7ef8: $00
    cp e                                          ; $7ef9: $bb
    nop                                           ; $7efa: $00
    cp a                                          ; $7efb: $bf
    nop                                           ; $7efc: $00
    db $c3                                        ; $7efd: $c3
    nop                                           ; $7efe: $00

    db $c7

    nop                                           ; $7f00: $00
    call z, $cf00                                 ; $7f01: $cc $00 $cf
    nop                                           ; $7f04: $00
    db $d3                                        ; $7f05: $d3
    nop                                           ; $7f06: $00
    rst $10                                       ; $7f07: $d7
    nop                                           ; $7f08: $00
    jp c, $dd00                                   ; $7f09: $da $00 $dd

    nop                                           ; $7f0c: $00
    pop hl                                        ; $7f0d: $e1
    nop                                           ; $7f0e: $00

    db $e4

    nop                                           ; $7f10: $00
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
