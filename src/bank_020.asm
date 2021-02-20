; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

    ld [de], a                                    ; $4000: $12
    ld b, b                                       ; $4001: $40

    db $33, $40

    bit 1, h                                      ; $4004: $cb $4c

    db $5b, $59

    db $eb                                        ; $4008: $eb
    ld h, l                                       ; $4009: $65
    ld a, e                                       ; $400a: $7b
    ld [hl], d                                    ; $400b: $72
    inc sp                                        ; $400c: $33
    ld b, b                                       ; $400d: $40
    inc sp                                        ; $400e: $33
    ld b, b                                       ; $400f: $40
    inc sp                                        ; $4010: $33
    ld b, b                                       ; $4011: $40
    push af                                       ; $4012: $f5
    push bc                                       ; $4013: $c5
    push de                                       ; $4014: $d5
    push hl                                       ; $4015: $e5
    ldh [$95], a                                  ; $4016: $e0 $95
    ld [$2000], a                                 ; $4018: $ea $00 $20

    ld a, c                                       ; $401b: $79
    add a                                         ; $401c: $87
    add l                                         ; $401d: $85
    ld l, a                                       ; $401e: $6f
    jr nc, jr_020_4022                            ; $401f: $30 $01

    inc h                                         ; $4021: $24

jr_020_4022:
    ld a, [hl+]                                   ; $4022: $2a
    ld h, [hl]                                    ; $4023: $66
    ld l, a                                       ; $4024: $6f
    ld c, b                                       ; $4025: $48
    ld b, $00                                     ; $4026: $06 $00
    add hl, bc                                    ; $4028: $09
    ld c, $04                                     ; $4029: $0e $04
    call Call_000_0468                            ; $402b: $cd $68 $04
    pop hl                                        ; $402e: $e1
    pop de                                        ; $402f: $d1
    pop bc                                        ; $4030: $c1
    pop af                                        ; $4031: $f1
    ret                                           ; $4032: $c9


    db $06, $04, $3b, $40, $60, $4c, $3b, $40, $60, $40, $60, $41, $60, $42, $60, $43

    ld h, b                                       ; $4043: $60
    ld b, h                                       ; $4044: $44
    ld h, b                                       ; $4045: $60
    ld b, l                                       ; $4046: $45
    ld h, b                                       ; $4047: $60
    ld b, [hl]                                    ; $4048: $46
    ld h, b                                       ; $4049: $60
    ld b, a                                       ; $404a: $47
    ld h, b                                       ; $404b: $60
    ld c, b                                       ; $404c: $48
    ld h, b                                       ; $404d: $60
    ld c, c                                       ; $404e: $49
    ld h, b                                       ; $404f: $60
    ld c, d                                       ; $4050: $4a
    ld h, b                                       ; $4051: $60
    ld c, e                                       ; $4052: $4b
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    nop                                           ; $4058: $00
    nop                                           ; $4059: $00
    nop                                           ; $405a: $00
    nop                                           ; $405b: $00
    nop                                           ; $405c: $00
    nop                                           ; $405d: $00
    nop                                           ; $405e: $00
    nop                                           ; $405f: $00
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    inc bc                                        ; $4062: $03
    inc bc                                        ; $4063: $03
    inc b                                         ; $4064: $04
    rlca                                          ; $4065: $07
    ld [$090f], sp                                ; $4066: $08 $0f $09
    rrca                                          ; $4069: $0f
    rla                                           ; $406a: $17
    rra                                           ; $406b: $1f
    dec de                                        ; $406c: $1b
    rra                                           ; $406d: $1f
    add hl, bc                                    ; $406e: $09
    rrca                                          ; $406f: $0f
    ld b, $07                                     ; $4070: $06 $07
    inc bc                                        ; $4072: $03
    inc bc                                        ; $4073: $03
    inc bc                                        ; $4074: $03
    inc bc                                        ; $4075: $03
    rlca                                          ; $4076: $07
    rlca                                          ; $4077: $07
    dec bc                                        ; $4078: $0b
    rrca                                          ; $4079: $0f
    ld c, $0f                                     ; $407a: $0e $0f
    rrca                                          ; $407c: $0f
    rrca                                          ; $407d: $0f

jr_020_407e:
    ld b, $06                                     ; $407e: $06 $06
    ld [hl], b                                    ; $4080: $70
    ld [hl], b                                    ; $4081: $70
    ld hl, sp-$08                                 ; $4082: $f8 $f8
    jr c, jr_020_407e                             ; $4084: $38 $f8

    ld [hl], b                                    ; $4086: $70
    ldh a, [$90]                                  ; $4087: $f0 $90
    ldh a, [rNR10]                                ; $4089: $f0 $10
    ldh a, [$30]                                  ; $408b: $f0 $30
    ldh a, [$28]                                  ; $408d: $f0 $28
    ld hl, sp+$08                                 ; $408f: $f8 $08
    ld hl, sp+$10                                 ; $4091: $f8 $10
    ldh a, [$e0]                                  ; $4093: $f0 $e0
    ldh [$f0], a                                  ; $4095: $e0 $f0
    ldh a, [$f0]                                  ; $4097: $f0 $f0
    ldh a, [$38]                                  ; $4099: $f0 $38
    add sp, -$10                                  ; $409b: $e8 $f0
    ret nc                                        ; $409d: $d0

    ldh [$e0], a                                  ; $409e: $e0 $e0
    inc bc                                        ; $40a0: $03
    inc bc                                        ; $40a1: $03
    inc bc                                        ; $40a2: $03
    inc bc                                        ; $40a3: $03
    dec b                                         ; $40a4: $05
    rlca                                          ; $40a5: $07
    dec bc                                        ; $40a6: $0b
    rrca                                          ; $40a7: $0f
    inc c                                         ; $40a8: $0c
    rrca                                          ; $40a9: $0f
    jr jr_020_40cb                                ; $40aa: $18 $1f

    ld a, [hl+]                                   ; $40ac: $2a
    ccf                                           ; $40ad: $3f
    ld [hl+], a                                   ; $40ae: $22
    ccf                                           ; $40af: $3f
    jr c, jr_020_40f1                             ; $40b0: $38 $3f

    ld e, h                                       ; $40b2: $5c
    ld a, a                                       ; $40b3: $7f
    ld a, a                                       ; $40b4: $7f
    ld a, a                                       ; $40b5: $7f
    ld c, a                                       ; $40b6: $4f
    ld c, a                                       ; $40b7: $4f
    ret z                                         ; $40b8: $c8

    rst $08                                       ; $40b9: $cf
    rst $08                                       ; $40ba: $cf
    rst $08                                       ; $40bb: $cf
    rrca                                          ; $40bc: $0f
    ld [$0707], sp                                ; $40bd: $08 $07 $07
    add b                                         ; $40c0: $80
    add b                                         ; $40c1: $80
    ret nz                                        ; $40c2: $c0

    ret nz                                        ; $40c3: $c0

    and b                                         ; $40c4: $a0
    ldh [$d0], a                                  ; $40c5: $e0 $d0
    ldh a, [$30]                                  ; $40c7: $f0 $30
    ldh a, [rNR23]                                ; $40c9: $f0 $18

jr_020_40cb:
    ld hl, sp+$54                                 ; $40cb: $f8 $54
    db $fc                                        ; $40cd: $fc
    ld b, h                                       ; $40ce: $44
    db $fc                                        ; $40cf: $fc
    inc e                                         ; $40d0: $1c
    db $fc                                        ; $40d1: $fc
    inc a                                         ; $40d2: $3c
    db $fc                                        ; $40d3: $fc
    ld a, [$fafe]                                 ; $40d4: $fa $fe $fa
    cp $96                                        ; $40d7: $fe $96
    or $f0                                        ; $40d9: $f6 $f0
    ldh a, [$e0]                                  ; $40db: $f0 $e0
    ldh [rP1], a                                  ; $40dd: $e0 $00
    nop                                           ; $40df: $00
    ld c, $0e                                     ; $40e0: $0e $0e
    rra                                           ; $40e2: $1f
    rra                                           ; $40e3: $1f
    inc e                                         ; $40e4: $1c
    rra                                           ; $40e5: $1f

jr_020_40e6:
    ld c, $0f                                     ; $40e6: $0e $0f
    add hl, bc                                    ; $40e8: $09
    rrca                                          ; $40e9: $0f
    ld [$0c0f], sp                                ; $40ea: $08 $0f $0c
    rrca                                          ; $40ed: $0f
    inc d                                         ; $40ee: $14
    rra                                           ; $40ef: $1f
    db $10                                        ; $40f0: $10

jr_020_40f1:
    rra                                           ; $40f1: $1f
    ld [$070f], sp                                ; $40f2: $08 $0f $07
    rlca                                          ; $40f5: $07
    rrca                                          ; $40f6: $0f
    rrca                                          ; $40f7: $0f
    dec bc                                        ; $40f8: $0b
    rrca                                          ; $40f9: $0f
    ld b, $07                                     ; $40fa: $06 $07
    rrca                                          ; $40fc: $0f
    rrca                                          ; $40fd: $0f
    rlca                                          ; $40fe: $07
    rlca                                          ; $40ff: $07
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00
    ret nz                                        ; $4102: $c0

    ret nz                                        ; $4103: $c0

    jr nz, jr_020_40e6                            ; $4104: $20 $e0

    db $10                                        ; $4106: $10
    ldh a, [$90]                                  ; $4107: $f0 $90
    ldh a, [$e8]                                  ; $4109: $f0 $e8
    ld hl, sp-$28                                 ; $410b: $f8 $d8
    ld hl, sp-$70                                 ; $410d: $f8 $90
    ldh a, [$60]                                  ; $410f: $f0 $60
    ldh [$c0], a                                  ; $4111: $e0 $c0
    ret nz                                        ; $4113: $c0

    ret nz                                        ; $4114: $c0

    ret nz                                        ; $4115: $c0

    ldh [$e0], a                                  ; $4116: $e0 $e0
    ldh [$e0], a                                  ; $4118: $e0 $e0
    ld [hl], b                                    ; $411a: $70
    ret nc                                        ; $411b: $d0

    ldh a, [$90]                                  ; $411c: $f0 $90
    ld h, b                                       ; $411e: $60
    ld h, b                                       ; $411f: $60
    inc bc                                        ; $4120: $03
    inc bc                                        ; $4121: $03
    inc bc                                        ; $4122: $03
    inc bc                                        ; $4123: $03
    inc b                                         ; $4124: $04
    rlca                                          ; $4125: $07

jr_020_4126:
    ld [$080f], sp                                ; $4126: $08 $0f $08
    rrca                                          ; $4129: $0f
    jr jr_020_414b                                ; $412a: $18 $1f

    inc l                                         ; $412c: $2c
    ccf                                           ; $412d: $3f
    daa                                           ; $412e: $27
    ccf                                           ; $412f: $3f
    ld a, h                                       ; $4130: $7c
    ld a, a                                       ; $4131: $7f
    ld e, a                                       ; $4132: $5f
    ld a, a                                       ; $4133: $7f
    ccf                                           ; $4134: $3f
    ccf                                           ; $4135: $3f
    dec bc                                        ; $4136: $0b
    rrca                                          ; $4137: $0f
    ld [$0f0f], sp                                ; $4138: $08 $0f $0f
    rrca                                          ; $413b: $0f
    rrca                                          ; $413c: $0f
    ld [$0707], sp                                ; $413d: $08 $07 $07
    add b                                         ; $4140: $80
    add b                                         ; $4141: $80
    ret nz                                        ; $4142: $c0

    ret nz                                        ; $4143: $c0

    jr nz, jr_020_4126                            ; $4144: $20 $e0

    db $10                                        ; $4146: $10
    ldh a, [rNR10]                                ; $4147: $f0 $10
    ldh a, [rNR23]                                ; $4149: $f0 $18

jr_020_414b:
    ld hl, sp+$34                                 ; $414b: $f8 $34
    db $fc                                        ; $414d: $fc
    and h                                         ; $414e: $a4
    db $fc                                        ; $414f: $fc
    ld a, b                                       ; $4150: $78
    ld hl, sp-$04                                 ; $4151: $f8 $fc
    db $fc                                        ; $4153: $fc
    ei                                            ; $4154: $fb
    rst $38                                       ; $4155: $ff
    db $db                                        ; $4156: $db
    rst $38                                       ; $4157: $ff
    sub [hl]                                      ; $4158: $96
    or $f0                                        ; $4159: $f6 $f0
    ldh a, [$e0]                                  ; $415b: $f0 $e0
    ldh [rP1], a                                  ; $415d: $e0 $00
    nop                                           ; $415f: $00
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    inc bc                                        ; $4162: $03
    inc bc                                        ; $4163: $03
    inc b                                         ; $4164: $04
    rlca                                          ; $4165: $07
    ld [$090f], sp                                ; $4166: $08 $0f $09
    rrca                                          ; $4169: $0f
    rla                                           ; $416a: $17
    rra                                           ; $416b: $1f
    dec de                                        ; $416c: $1b
    rra                                           ; $416d: $1f
    add hl, bc                                    ; $416e: $09
    rrca                                          ; $416f: $0f
    ld b, $07                                     ; $4170: $06 $07
    inc bc                                        ; $4172: $03
    inc bc                                        ; $4173: $03
    inc bc                                        ; $4174: $03
    inc bc                                        ; $4175: $03
    rlca                                          ; $4176: $07
    rlca                                          ; $4177: $07
    rlca                                          ; $4178: $07
    rlca                                          ; $4179: $07
    ld c, $0b                                     ; $417a: $0e $0b
    rrca                                          ; $417c: $0f
    add hl, bc                                    ; $417d: $09

jr_020_417e:
    ld b, $06                                     ; $417e: $06 $06
    ld [hl], b                                    ; $4180: $70
    ld [hl], b                                    ; $4181: $70
    ld hl, sp-$08                                 ; $4182: $f8 $f8
    jr c, jr_020_417e                             ; $4184: $38 $f8

    ld [hl], b                                    ; $4186: $70
    ldh a, [$90]                                  ; $4187: $f0 $90
    ldh a, [rNR10]                                ; $4189: $f0 $10
    ldh a, [$30]                                  ; $418b: $f0 $30
    ldh a, [$28]                                  ; $418d: $f0 $28
    ld hl, sp+$08                                 ; $418f: $f8 $08
    ld hl, sp+$16                                 ; $4191: $f8 $16
    or $ee                                        ; $4193: $f6 $ee
    xor $f8                                       ; $4195: $ee $f8
    ld hl, sp-$30                                 ; $4197: $f8 $d0
    ldh a, [$60]                                  ; $4199: $f0 $60
    ldh [$f0], a                                  ; $419b: $e0 $f0
    ldh a, [$e0]                                  ; $419d: $f0 $e0
    ldh [rSB], a                                  ; $419f: $e0 $01
    ld bc, $0303                                  ; $41a1: $01 $03 $03
    dec b                                         ; $41a4: $05
    rlca                                          ; $41a5: $07
    dec bc                                        ; $41a6: $0b
    rrca                                          ; $41a7: $0f
    inc c                                         ; $41a8: $0c
    rrca                                          ; $41a9: $0f
    jr jr_020_41cb                                ; $41aa: $18 $1f

    ld a, [hl+]                                   ; $41ac: $2a
    ccf                                           ; $41ad: $3f
    ld [hl+], a                                   ; $41ae: $22
    ccf                                           ; $41af: $3f
    jr c, jr_020_41f1                             ; $41b0: $38 $3f

    inc a                                         ; $41b2: $3c
    ccf                                           ; $41b3: $3f
    ccf                                           ; $41b4: $3f
    ccf                                           ; $41b5: $3f
    rst $18                                       ; $41b6: $df
    rst $38                                       ; $41b7: $ff
    jp hl                                         ; $41b8: $e9


    rst $28                                       ; $41b9: $ef
    rrca                                          ; $41ba: $0f
    rrca                                          ; $41bb: $0f
    rlca                                          ; $41bc: $07
    rlca                                          ; $41bd: $07
    nop                                           ; $41be: $00
    nop                                           ; $41bf: $00
    ret nz                                        ; $41c0: $c0

    ret nz                                        ; $41c1: $c0

    ret nz                                        ; $41c2: $c0

    ret nz                                        ; $41c3: $c0

    and b                                         ; $41c4: $a0
    ldh [$d0], a                                  ; $41c5: $e0 $d0
    ldh a, [$30]                                  ; $41c7: $f0 $30
    ldh a, [rNR23]                                ; $41c9: $f0 $18

jr_020_41cb:
    ld hl, sp+$54                                 ; $41cb: $f8 $54
    db $fc                                        ; $41cd: $fc
    ld b, h                                       ; $41ce: $44
    db $fc                                        ; $41cf: $fc
    inc e                                         ; $41d0: $1c
    db $fc                                        ; $41d1: $fc
    ld a, [hl-]                                   ; $41d2: $3a
    cp $fe                                        ; $41d3: $fe $fe
    cp $f0                                        ; $41d5: $fe $f0
    ldh a, [rNR10]                                ; $41d7: $f0 $10
    ldh a, [$f0]                                  ; $41d9: $f0 $f0
    ldh a, [$f0]                                  ; $41db: $f0 $f0
    db $10                                        ; $41dd: $10
    ldh [$e0], a                                  ; $41de: $e0 $e0
    ld c, $0e                                     ; $41e0: $0e $0e
    rra                                           ; $41e2: $1f
    rra                                           ; $41e3: $1f
    inc e                                         ; $41e4: $1c
    rra                                           ; $41e5: $1f

jr_020_41e6:
    ld c, $0f                                     ; $41e6: $0e $0f
    add hl, bc                                    ; $41e8: $09
    rrca                                          ; $41e9: $0f
    ld [$0c0f], sp                                ; $41ea: $08 $0f $0c
    rrca                                          ; $41ed: $0f
    inc d                                         ; $41ee: $14
    rra                                           ; $41ef: $1f
    db $10                                        ; $41f0: $10

jr_020_41f1:
    rra                                           ; $41f1: $1f
    ld [$670f], sp                                ; $41f2: $08 $0f $67
    ld h, a                                       ; $41f5: $67
    ld l, a                                       ; $41f6: $6f
    ld l, a                                       ; $41f7: $6f
    ccf                                           ; $41f8: $3f
    ccf                                           ; $41f9: $3f
    inc e                                         ; $41fa: $1c
    rla                                           ; $41fb: $17
    rrca                                          ; $41fc: $0f
    dec bc                                        ; $41fd: $0b
    rlca                                          ; $41fe: $07
    rlca                                          ; $41ff: $07
    nop                                           ; $4200: $00
    nop                                           ; $4201: $00
    ret nz                                        ; $4202: $c0

    ret nz                                        ; $4203: $c0

    jr nz, jr_020_41e6                            ; $4204: $20 $e0

    db $10                                        ; $4206: $10
    ldh a, [$90]                                  ; $4207: $f0 $90
    ldh a, [$e8]                                  ; $4209: $f0 $e8
    ld hl, sp-$28                                 ; $420b: $f8 $d8
    ld hl, sp-$70                                 ; $420d: $f8 $90
    ldh a, [$60]                                  ; $420f: $f0 $60
    ldh [$c0], a                                  ; $4211: $e0 $c0
    ret nz                                        ; $4213: $c0

    ret nz                                        ; $4214: $c0

    ret nz                                        ; $4215: $c0

    ldh [$e0], a                                  ; $4216: $e0 $e0
    ret nc                                        ; $4218: $d0

    ldh a, [rSVBK]                                ; $4219: $f0 $70
    ldh a, [$f0]                                  ; $421b: $f0 $f0
    ldh a, [$60]                                  ; $421d: $f0 $60
    ld h, b                                       ; $421f: $60
    ld bc, $0301                                  ; $4220: $01 $01 $03
    inc bc                                        ; $4223: $03
    inc b                                         ; $4224: $04
    rlca                                          ; $4225: $07

jr_020_4226:
    ld [$080f], sp                                ; $4226: $08 $0f $08
    rrca                                          ; $4229: $0f
    jr jr_020_424b                                ; $422a: $18 $1f

    inc l                                         ; $422c: $2c
    ccf                                           ; $422d: $3f
    daa                                           ; $422e: $27
    ccf                                           ; $422f: $3f
    inc e                                         ; $4230: $1c
    rra                                           ; $4231: $1f
    ccf                                           ; $4232: $3f
    ccf                                           ; $4233: $3f
    ld e, a                                       ; $4234: $5f
    ld a, a                                       ; $4235: $7f
    ld e, e                                       ; $4236: $5b
    ld a, a                                       ; $4237: $7f
    ld l, c                                       ; $4238: $69
    ld l, a                                       ; $4239: $6f
    rrca                                          ; $423a: $0f
    rrca                                          ; $423b: $0f
    rlca                                          ; $423c: $07
    rlca                                          ; $423d: $07
    nop                                           ; $423e: $00
    nop                                           ; $423f: $00
    ret nz                                        ; $4240: $c0

    ret nz                                        ; $4241: $c0

    ret nz                                        ; $4242: $c0

    ret nz                                        ; $4243: $c0

    jr nz, jr_020_4226                            ; $4244: $20 $e0

    inc de                                        ; $4246: $13
    di                                            ; $4247: $f3
    inc de                                        ; $4248: $13
    di                                            ; $4249: $f3
    add hl, de                                    ; $424a: $19

jr_020_424b:
    ld sp, hl                                     ; $424b: $f9
    dec [hl]                                      ; $424c: $35
    db $fd                                        ; $424d: $fd
    and a                                         ; $424e: $a7
    rst $38                                       ; $424f: $ff
    ld a, [hl]                                    ; $4250: $7e
    cp $fa                                        ; $4251: $fe $fa
    cp $fc                                        ; $4253: $fe $fc
    db $fc                                        ; $4255: $fc
    ret nc                                        ; $4256: $d0

    ldh a, [rNR10]                                ; $4257: $f0 $10
    ldh a, [$f0]                                  ; $4259: $f0 $f0
    ldh a, [$f0]                                  ; $425b: $f0 $f0
    db $10                                        ; $425d: $10
    ldh [$e0], a                                  ; $425e: $e0 $e0
    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    ld bc, $0201                                  ; $4262: $01 $01 $02
    inc bc                                        ; $4265: $03
    inc b                                         ; $4266: $04
    rlca                                          ; $4267: $07
    inc c                                         ; $4268: $0c
    rrca                                          ; $4269: $0f
    rla                                           ; $426a: $17
    rra                                           ; $426b: $1f
    dec bc                                        ; $426c: $0b
    rrca                                          ; $426d: $0f
    add hl, bc                                    ; $426e: $09
    rrca                                          ; $426f: $0f
    ld b, $07                                     ; $4270: $06 $07
    inc bc                                        ; $4272: $03
    inc bc                                        ; $4273: $03
    rlca                                          ; $4274: $07
    rlca                                          ; $4275: $07
    rrca                                          ; $4276: $0f
    rrca                                          ; $4277: $0f
    rrca                                          ; $4278: $0f
    rrca                                          ; $4279: $0f
    dec bc                                        ; $427a: $0b
    rrca                                          ; $427b: $0f
    rlca                                          ; $427c: $07
    inc b                                         ; $427d: $04
    rlca                                          ; $427e: $07
    rlca                                          ; $427f: $07
    jr jr_020_429a                                ; $4280: $18 $18

    db $fc                                        ; $4282: $fc
    db $fc                                        ; $4283: $fc
    inc e                                         ; $4284: $1c
    db $fc                                        ; $4285: $fc
    inc c                                         ; $4286: $0c
    db $fc                                        ; $4287: $fc
    ld a, b                                       ; $4288: $78
    ld hl, sp-$68                                 ; $4289: $f8 $98
    ld hl, sp+$08                                 ; $428b: $f8 $08
    ld hl, sp+$28                                 ; $428d: $f8 $28
    ld hl, sp+$28                                 ; $428f: $f8 $28
    ld hl, sp+$10                                 ; $4291: $f8 $10
    ldh a, [$e0]                                  ; $4293: $f0 $e0
    ldh [$80], a                                  ; $4295: $e0 $80
    add b                                         ; $4297: $80
    ld b, b                                       ; $4298: $40
    ret nz                                        ; $4299: $c0

jr_020_429a:
    and b                                         ; $429a: $a0
    ldh [$f6], a                                  ; $429b: $e0 $f6
    or $9e                                        ; $429d: $f6 $9e
    sbc [hl]                                      ; $429f: $9e
    ld bc, $0601                                  ; $42a0: $01 $01 $06
    rlca                                          ; $42a3: $07
    inc b                                         ; $42a4: $04
    rlca                                          ; $42a5: $07
    dec bc                                        ; $42a6: $0b
    rrca                                          ; $42a7: $0f
    ld c, $0f                                     ; $42a8: $0e $0f
    inc d                                         ; $42aa: $14
    rra                                           ; $42ab: $1f
    ld de, $0d1f                                  ; $42ac: $11 $1f $0d
    rrca                                          ; $42af: $0f
    ld b, $07                                     ; $42b0: $06 $07
    rrca                                          ; $42b2: $0f
    rrca                                          ; $42b3: $0f

jr_020_42b4:
    rrca                                          ; $42b4: $0f
    rrca                                          ; $42b5: $0f
    ld b, $07                                     ; $42b6: $06 $07
    dec b                                         ; $42b8: $05
    rlca                                          ; $42b9: $07
    rrca                                          ; $42ba: $0f
    rrca                                          ; $42bb: $0f
    rra                                           ; $42bc: $1f
    inc de                                        ; $42bd: $13
    rra                                           ; $42be: $1f
    rra                                           ; $42bf: $1f
    ret nz                                        ; $42c0: $c0

    ret nz                                        ; $42c1: $c0

jr_020_42c2:
    jr nc, jr_020_42b4                            ; $42c2: $30 $f0

    ldh a, [$f0]                                  ; $42c4: $f0 $f0
    ldh a, [$f0]                                  ; $42c6: $f0 $f0
    jr jr_020_42c2                                ; $42c8: $18 $f8

    ld [$28f8], sp                                ; $42ca: $08 $f8 $28
    ld hl, sp+$28                                 ; $42cd: $f8 $28
    ld hl, sp+$10                                 ; $42cf: $f8 $10
    ldh a, [$f0]                                  ; $42d1: $f0 $f0
    ldh a, [$f0]                                  ; $42d3: $f0 $f0
    ldh a, [$60]                                  ; $42d5: $f0 $60
    ldh [$a0], a                                  ; $42d7: $e0 $a0
    ldh [$e0], a                                  ; $42d9: $e0 $e0
    ldh [$f0], a                                  ; $42db: $e0 $f0
    sub b                                         ; $42dd: $90
    ldh a, [$f0]                                  ; $42de: $f0 $f0
    jr jr_020_42fa                                ; $42e0: $18 $18

    ccf                                           ; $42e2: $3f
    ccf                                           ; $42e3: $3f
    jr c, @+$41                                   ; $42e4: $38 $3f

    jr nc, jr_020_4327                            ; $42e6: $30 $3f

jr_020_42e8:
    ld e, $1f                                     ; $42e8: $1e $1f
    add hl, de                                    ; $42ea: $19
    rra                                           ; $42eb: $1f
    db $10                                        ; $42ec: $10
    rra                                           ; $42ed: $1f
    inc d                                         ; $42ee: $14
    rra                                           ; $42ef: $1f
    inc d                                         ; $42f0: $14
    rra                                           ; $42f1: $1f
    ld [$070f], sp                                ; $42f2: $08 $0f $07
    rlca                                          ; $42f5: $07
    ld bc, $0201                                  ; $42f6: $01 $01 $02
    inc bc                                        ; $42f9: $03

jr_020_42fa:
    dec b                                         ; $42fa: $05
    rlca                                          ; $42fb: $07
    ld l, a                                       ; $42fc: $6f
    ld l, a                                       ; $42fd: $6f
    ld a, c                                       ; $42fe: $79

jr_020_42ff:
    ld a, c                                       ; $42ff: $79
    nop                                           ; $4300: $00
    nop                                           ; $4301: $00
    add b                                         ; $4302: $80
    add b                                         ; $4303: $80
    ld b, b                                       ; $4304: $40
    ret nz                                        ; $4305: $c0

    jr nz, jr_020_42e8                            ; $4306: $20 $e0

    jr nc, jr_020_42fa                            ; $4308: $30 $f0

    add sp, -$08                                  ; $430a: $e8 $f8
    ret nc                                        ; $430c: $d0

    ldh a, [$90]                                  ; $430d: $f0 $90
    ldh a, [$60]                                  ; $430f: $f0 $60
    ldh [$c0], a                                  ; $4311: $e0 $c0
    ret nz                                        ; $4313: $c0

    ldh [$e0], a                                  ; $4314: $e0 $e0
    ldh a, [$f0]                                  ; $4316: $f0 $f0
    ldh a, [$f0]                                  ; $4318: $f0 $f0
    ret nc                                        ; $431a: $d0

    ldh a, [$e0]                                  ; $431b: $f0 $e0
    jr nz, jr_020_42ff                            ; $431d: $20 $e0

    ldh [$0e], a                                  ; $431f: $e0 $0e
    ld c, $0f                                     ; $4321: $0e $0f
    rrca                                          ; $4323: $0f
    jr jr_020_4345                                ; $4324: $18 $1f

    db $10                                        ; $4326: $10

jr_020_4327:
    rra                                           ; $4327: $1f
    ld [$0c0f], sp                                ; $4328: $08 $0f $0c
    rrca                                          ; $432b: $0f
    dec bc                                        ; $432c: $0b
    rrca                                          ; $432d: $0f
    add hl, bc                                    ; $432e: $09
    rrca                                          ; $432f: $0f
    dec bc                                        ; $4330: $0b
    rrca                                          ; $4331: $0f
    rlca                                          ; $4332: $07
    rlca                                          ; $4333: $07
    rlca                                          ; $4334: $07
    rlca                                          ; $4335: $07
    ld b, $07                                     ; $4336: $06 $07
    dec b                                         ; $4338: $05
    rlca                                          ; $4339: $07
    rlca                                          ; $433a: $07
    rlca                                          ; $433b: $07
    rrca                                          ; $433c: $0f
    add hl, bc                                    ; $433d: $09
    rrca                                          ; $433e: $0f
    rrca                                          ; $433f: $0f
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    ret nz                                        ; $4342: $c0

    ret nz                                        ; $4343: $c0

    ld h, b                                       ; $4344: $60

jr_020_4345:
    ldh [rNR41], a                                ; $4345: $e0 $20
    ldh [rSVBK], a                                ; $4347: $e0 $70
    ldh a, [$88]                                  ; $4349: $f0 $88
    ld hl, sp-$10                                 ; $434b: $f8 $f0
    ldh a, [$e0]                                  ; $434d: $f0 $e0
    ldh [$c0], a                                  ; $434f: $e0 $c0
    ret nz                                        ; $4351: $c0

    ldh [$e0], a                                  ; $4352: $e0 $e0
    ldh a, [$f0]                                  ; $4354: $f0 $f0
    jr nc, @-$0e                                  ; $4356: $30 $f0

    ret nc                                        ; $4358: $d0

    ldh a, [$f0]                                  ; $4359: $f0 $f0
    ldh a, [$f8]                                  ; $435b: $f0 $f8
    ret z                                         ; $435d: $c8

    ld hl, sp-$08                                 ; $435e: $f8 $f8
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    ld bc, $0201                                  ; $4362: $01 $01 $02
    inc bc                                        ; $4365: $03
    inc b                                         ; $4366: $04
    rlca                                          ; $4367: $07
    inc c                                         ; $4368: $0c
    rrca                                          ; $4369: $0f
    rla                                           ; $436a: $17
    rra                                           ; $436b: $1f
    dec bc                                        ; $436c: $0b
    rrca                                          ; $436d: $0f
    add hl, bc                                    ; $436e: $09
    rrca                                          ; $436f: $0f
    ld b, $07                                     ; $4370: $06 $07
    inc bc                                        ; $4372: $03
    inc bc                                        ; $4373: $03
    rlca                                          ; $4374: $07
    rlca                                          ; $4375: $07
    rrca                                          ; $4376: $0f
    rrca                                          ; $4377: $0f
    rrca                                          ; $4378: $0f
    rrca                                          ; $4379: $0f
    dec bc                                        ; $437a: $0b
    rrca                                          ; $437b: $0f
    rlca                                          ; $437c: $07
    inc b                                         ; $437d: $04
    rlca                                          ; $437e: $07
    rlca                                          ; $437f: $07
    jr jr_020_439a                                ; $4380: $18 $18

    db $fc                                        ; $4382: $fc
    db $fc                                        ; $4383: $fc
    inc e                                         ; $4384: $1c
    db $fc                                        ; $4385: $fc
    inc c                                         ; $4386: $0c
    db $fc                                        ; $4387: $fc
    ld a, b                                       ; $4388: $78
    ld hl, sp-$68                                 ; $4389: $f8 $98
    ld hl, sp+$08                                 ; $438b: $f8 $08
    ld hl, sp+$28                                 ; $438d: $f8 $28
    ld hl, sp+$28                                 ; $438f: $f8 $28
    ld hl, sp+$10                                 ; $4391: $f8 $10
    ldh a, [$e0]                                  ; $4393: $f0 $e0
    ldh [$e0], a                                  ; $4395: $e0 $e0
    ldh [rLCDC], a                                ; $4397: $e0 $40
    ret nz                                        ; $4399: $c0

jr_020_439a:
    add b                                         ; $439a: $80
    add b                                         ; $439b: $80
    add b                                         ; $439c: $80
    add b                                         ; $439d: $80
    add b                                         ; $439e: $80
    add b                                         ; $439f: $80
    ld bc, $0601                                  ; $43a0: $01 $01 $06
    rlca                                          ; $43a3: $07
    inc b                                         ; $43a4: $04
    rlca                                          ; $43a5: $07
    dec bc                                        ; $43a6: $0b
    rrca                                          ; $43a7: $0f
    ld c, $0f                                     ; $43a8: $0e $0f
    inc d                                         ; $43aa: $14
    rra                                           ; $43ab: $1f
    ld de, $0d1f                                  ; $43ac: $11 $1f $0d
    rrca                                          ; $43af: $0f
    ld b, $07                                     ; $43b0: $06 $07
    rrca                                          ; $43b2: $0f
    rrca                                          ; $43b3: $0f

jr_020_43b4:
    rrca                                          ; $43b4: $0f
    rrca                                          ; $43b5: $0f
    dec e                                         ; $43b6: $1d
    rra                                           ; $43b7: $1f
    inc a                                         ; $43b8: $3c
    ccf                                           ; $43b9: $3f
    ccf                                           ; $43ba: $3f
    ccf                                           ; $43bb: $3f
    ld e, $12                                     ; $43bc: $1e $12
    ld e, $1e                                     ; $43be: $1e $1e
    ret nz                                        ; $43c0: $c0

    ret nz                                        ; $43c1: $c0

jr_020_43c2:
    jr nc, jr_020_43b4                            ; $43c2: $30 $f0

    ldh a, [$f0]                                  ; $43c4: $f0 $f0
    ldh a, [$f0]                                  ; $43c6: $f0 $f0
    jr jr_020_43c2                                ; $43c8: $18 $f8

    ld [$28f8], sp                                ; $43ca: $08 $f8 $28
    ld hl, sp+$28                                 ; $43cd: $f8 $28
    ld hl, sp+$10                                 ; $43cf: $f8 $10
    ldh a, [$f0]                                  ; $43d1: $f0 $f0
    ldh a, [$f0]                                  ; $43d3: $f0 $f0
    ldh a, [$e0]                                  ; $43d5: $f0 $e0
    ldh [$a0], a                                  ; $43d7: $e0 $a0
    ldh [$e0], a                                  ; $43d9: $e0 $e0
    ldh [$f0], a                                  ; $43db: $e0 $f0
    sub b                                         ; $43dd: $90
    ldh a, [$f0]                                  ; $43de: $f0 $f0
    jr jr_020_43fa                                ; $43e0: $18 $18

    ccf                                           ; $43e2: $3f
    ccf                                           ; $43e3: $3f
    jr c, @+$41                                   ; $43e4: $38 $3f

    jr nc, jr_020_4427                            ; $43e6: $30 $3f

jr_020_43e8:
    ld e, $1f                                     ; $43e8: $1e $1f
    add hl, de                                    ; $43ea: $19
    rra                                           ; $43eb: $1f
    db $10                                        ; $43ec: $10
    rra                                           ; $43ed: $1f
    inc d                                         ; $43ee: $14
    rra                                           ; $43ef: $1f
    inc d                                         ; $43f0: $14
    rra                                           ; $43f1: $1f
    jr jr_020_4413                                ; $43f2: $18 $1f

    rrca                                          ; $43f4: $0f
    rrca                                          ; $43f5: $0f
    dec b                                         ; $43f6: $05
    rlca                                          ; $43f7: $07
    inc bc                                        ; $43f8: $03
    inc bc                                        ; $43f9: $03

jr_020_43fa:
    ld bc, $0101                                  ; $43fa: $01 $01 $01
    ld bc, $0101                                  ; $43fd: $01 $01 $01
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    add b                                         ; $4402: $80
    add b                                         ; $4403: $80
    ld b, b                                       ; $4404: $40
    ret nz                                        ; $4405: $c0

    jr nz, jr_020_43e8                            ; $4406: $20 $e0

    jr nc, jr_020_43fa                            ; $4408: $30 $f0

    add sp, -$08                                  ; $440a: $e8 $f8
    ret nc                                        ; $440c: $d0

    ldh a, [$90]                                  ; $440d: $f0 $90
    ldh a, [$60]                                  ; $440f: $f0 $60
    ldh [$c0], a                                  ; $4411: $e0 $c0

jr_020_4413:
    ret nz                                        ; $4413: $c0

    ldh [$e0], a                                  ; $4414: $e0 $e0
    ldh a, [$f0]                                  ; $4416: $f0 $f0
    ldh a, [$f0]                                  ; $4418: $f0 $f0
    ret nc                                        ; $441a: $d0

    ldh a, [$e0]                                  ; $441b: $f0 $e0
    jr nz, @-$1e                                  ; $441d: $20 $e0

    ldh [$0e], a                                  ; $441f: $e0 $0e
    ld c, $0f                                     ; $4421: $0e $0f
    rrca                                          ; $4423: $0f
    jr jr_020_4445                                ; $4424: $18 $1f

    db $10                                        ; $4426: $10

jr_020_4427:
    rra                                           ; $4427: $1f
    ld [$0c0f], sp                                ; $4428: $08 $0f $0c
    rrca                                          ; $442b: $0f
    dec bc                                        ; $442c: $0b
    rrca                                          ; $442d: $0f
    add hl, bc                                    ; $442e: $09
    rrca                                          ; $442f: $0f
    dec bc                                        ; $4430: $0b
    rrca                                          ; $4431: $0f
    rlca                                          ; $4432: $07
    rlca                                          ; $4433: $07
    inc bc                                        ; $4434: $03
    inc bc                                        ; $4435: $03
    ld [bc], a                                    ; $4436: $02
    inc bc                                        ; $4437: $03
    dec b                                         ; $4438: $05
    rlca                                          ; $4439: $07
    rlca                                          ; $443a: $07
    rlca                                          ; $443b: $07
    rrca                                          ; $443c: $0f
    add hl, bc                                    ; $443d: $09
    rrca                                          ; $443e: $0f
    rrca                                          ; $443f: $0f
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    ret nz                                        ; $4442: $c0

    ret nz                                        ; $4443: $c0

    ld h, b                                       ; $4444: $60

jr_020_4445:
    ldh [rNR41], a                                ; $4445: $e0 $20
    ldh [rSVBK], a                                ; $4447: $e0 $70
    ldh a, [$88]                                  ; $4449: $f0 $88
    ld hl, sp-$10                                 ; $444b: $f8 $f0
    ldh a, [$e0]                                  ; $444d: $f0 $e0
    ldh [$c3], a                                  ; $444f: $e0 $c3
    jp $f7f7                                      ; $4451: $c3 $f7 $f7


    db $fc                                        ; $4454: $fc
    db $fc                                        ; $4455: $fc
    jr nc, @-$0e                                  ; $4456: $30 $f0

    ret nc                                        ; $4458: $d0

    ldh a, [$f0]                                  ; $4459: $f0 $f0
    ldh a, [$78]                                  ; $445b: $f0 $78
    ld c, b                                       ; $445d: $48
    ld a, b                                       ; $445e: $78
    ld a, b                                       ; $445f: $78
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    ld bc, $0201                                  ; $4462: $01 $01 $02
    inc bc                                        ; $4465: $03
    call nz, $ccc7                                ; $4466: $c4 $c7 $cc
    rst $08                                       ; $4469: $cf
    rst $10                                       ; $446a: $d7
    rst $18                                       ; $446b: $df
    ld c, e                                       ; $446c: $4b
    ld c, a                                       ; $446d: $4f
    ld l, c                                       ; $446e: $69
    ld l, a                                       ; $446f: $6f
    ld [hl], $37                                  ; $4470: $36 $37
    rra                                           ; $4472: $1f
    rra                                           ; $4473: $1f
    dec bc                                        ; $4474: $0b
    rrca                                          ; $4475: $0f
    add hl, bc                                    ; $4476: $09
    rrca                                          ; $4477: $0f
    rrca                                          ; $4478: $0f
    rrca                                          ; $4479: $0f
    dec bc                                        ; $447a: $0b
    rrca                                          ; $447b: $0f
    rlca                                          ; $447c: $07
    inc b                                         ; $447d: $04
    rlca                                          ; $447e: $07
    rlca                                          ; $447f: $07
    jr jr_020_449a                                ; $4480: $18 $18

    db $fc                                        ; $4482: $fc
    db $fc                                        ; $4483: $fc
    inc e                                         ; $4484: $1c
    db $fc                                        ; $4485: $fc
    inc c                                         ; $4486: $0c
    db $fc                                        ; $4487: $fc
    ld a, b                                       ; $4488: $78
    ld hl, sp-$68                                 ; $4489: $f8 $98
    ld hl, sp+$08                                 ; $448b: $f8 $08
    ld hl, sp+$28                                 ; $448d: $f8 $28
    ld hl, sp+$28                                 ; $448f: $f8 $28
    ld hl, sp+$10                                 ; $4491: $f8 $10
    ldh a, [$e0]                                  ; $4493: $f0 $e0
    ldh [$c0], a                                  ; $4495: $e0 $c0
    ret nz                                        ; $4497: $c0

    add b                                         ; $4498: $80
    add b                                         ; $4499: $80

jr_020_449a:
    nop                                           ; $449a: $00
    nop                                           ; $449b: $00
    add b                                         ; $449c: $80
    add b                                         ; $449d: $80
    add b                                         ; $449e: $80
    add b                                         ; $449f: $80
    ld bc, $0601                                  ; $44a0: $01 $01 $06
    rlca                                          ; $44a3: $07
    inc b                                         ; $44a4: $04
    rlca                                          ; $44a5: $07
    set 1, a                                      ; $44a6: $cb $cf
    adc $cf                                       ; $44a8: $ce $cf
    ld d, h                                       ; $44aa: $54
    ld e, a                                       ; $44ab: $5f
    ld [hl], c                                    ; $44ac: $71
    ld a, a                                       ; $44ad: $7f
    dec a                                         ; $44ae: $3d
    ccf                                           ; $44af: $3f
    ld d, $1f                                     ; $44b0: $16 $1f
    dec bc                                        ; $44b2: $0b
    rrca                                          ; $44b3: $0f

jr_020_44b4:
    ld b, $07                                     ; $44b4: $06 $07
    rlca                                          ; $44b6: $07
    rlca                                          ; $44b7: $07
    dec b                                         ; $44b8: $05
    rlca                                          ; $44b9: $07
    rrca                                          ; $44ba: $0f
    rrca                                          ; $44bb: $0f
    ld e, $12                                     ; $44bc: $1e $12
    ld e, $1e                                     ; $44be: $1e $1e
    ret nz                                        ; $44c0: $c0

    ret nz                                        ; $44c1: $c0

jr_020_44c2:
    jr nc, jr_020_44b4                            ; $44c2: $30 $f0

    ldh a, [$f0]                                  ; $44c4: $f0 $f0
    ldh a, [$f0]                                  ; $44c6: $f0 $f0
    jr jr_020_44c2                                ; $44c8: $18 $f8

    ld [$28f8], sp                                ; $44ca: $08 $f8 $28
    ld hl, sp+$28                                 ; $44cd: $f8 $28
    ld hl, sp+$10                                 ; $44cf: $f8 $10
    ldh a, [$f0]                                  ; $44d1: $f0 $f0
    ldh a, [$f0]                                  ; $44d3: $f0 $f0
    ldh a, [$e0]                                  ; $44d5: $f0 $e0
    ldh [rNR41], a                                ; $44d7: $e0 $20
    ldh [$e0], a                                  ; $44d9: $e0 $e0
    ldh [$f0], a                                  ; $44db: $e0 $f0
    sub b                                         ; $44dd: $90
    ldh a, [$f0]                                  ; $44de: $f0 $f0
    jr @+$1a                                      ; $44e0: $18 $18

    ccf                                           ; $44e2: $3f
    ccf                                           ; $44e3: $3f
    jr c, @+$41                                   ; $44e4: $38 $3f

    jr nc, jr_020_4527                            ; $44e6: $30 $3f

    ld e, $1f                                     ; $44e8: $1e $1f
    add hl, de                                    ; $44ea: $19
    rra                                           ; $44eb: $1f
    db $10                                        ; $44ec: $10
    rra                                           ; $44ed: $1f
    inc d                                         ; $44ee: $14
    rra                                           ; $44ef: $1f
    inc d                                         ; $44f0: $14
    rra                                           ; $44f1: $1f
    ld [$070f], sp                                ; $44f2: $08 $0f $07
    rlca                                          ; $44f5: $07
    inc bc                                        ; $44f6: $03
    inc bc                                        ; $44f7: $03
    ld bc, $0101                                  ; $44f8: $01 $01 $01
    ld bc, $0101                                  ; $44fb: $01 $01 $01
    ld bc, $0001                                  ; $44fe: $01 $01 $00
    nop                                           ; $4501: $00
    add b                                         ; $4502: $80
    add b                                         ; $4503: $80
    ld b, b                                       ; $4504: $40
    ret nz                                        ; $4505: $c0

    ld h, $e6                                     ; $4506: $26 $e6
    ld [hl], $f6                                  ; $4508: $36 $f6
    cp $fe                                        ; $450a: $fe $fe
    ret c                                         ; $450c: $d8

    ld hl, sp-$70                                 ; $450d: $f8 $90
    ldh a, [$60]                                  ; $450f: $f0 $60
    ldh [$c0], a                                  ; $4511: $e0 $c0
    ret nz                                        ; $4513: $c0

    ldh [$e0], a                                  ; $4514: $e0 $e0
    ldh a, [$f0]                                  ; $4516: $f0 $f0
    ldh a, [$f0]                                  ; $4518: $f0 $f0
    ret nc                                        ; $451a: $d0

    ldh a, [$e0]                                  ; $451b: $f0 $e0
    jr nz, @-$1e                                  ; $451d: $20 $e0

    ldh [$0e], a                                  ; $451f: $e0 $0e
    ld c, $0f                                     ; $4521: $0e $0f
    rrca                                          ; $4523: $0f
    jr jr_020_4545                                ; $4524: $18 $1f

    db $10                                        ; $4526: $10

jr_020_4527:
    rra                                           ; $4527: $1f
    ld [$0c0f], sp                                ; $4528: $08 $0f $0c
    rrca                                          ; $452b: $0f
    dec bc                                        ; $452c: $0b
    rrca                                          ; $452d: $0f
    add hl, bc                                    ; $452e: $09
    rrca                                          ; $452f: $0f
    dec bc                                        ; $4530: $0b
    rrca                                          ; $4531: $0f
    rlca                                          ; $4532: $07
    rlca                                          ; $4533: $07
    inc bc                                        ; $4534: $03
    inc bc                                        ; $4535: $03
    ld [bc], a                                    ; $4536: $02
    inc bc                                        ; $4537: $03
    dec b                                         ; $4538: $05
    rlca                                          ; $4539: $07
    rlca                                          ; $453a: $07
    rlca                                          ; $453b: $07
    rrca                                          ; $453c: $0f
    add hl, bc                                    ; $453d: $09
    rrca                                          ; $453e: $0f
    rrca                                          ; $453f: $0f
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    ret nz                                        ; $4542: $c0

    ret nz                                        ; $4543: $c0

    ld h, e                                       ; $4544: $63

jr_020_4545:
    db $e3                                        ; $4545: $e3
    inc hl                                        ; $4546: $23
    db $e3                                        ; $4547: $e3

jr_020_4548:
    ld [hl], e                                    ; $4548: $73
    di                                            ; $4549: $f3
    adc d                                         ; $454a: $8a
    ld a, [$f6f6]                                 ; $454b: $fa $f6 $f6
    db $e4                                        ; $454e: $e4
    db $e4                                        ; $454f: $e4
    call z, $fccc                                 ; $4550: $cc $cc $fc
    db $fc                                        ; $4553: $fc
    ld hl, sp-$08                                 ; $4554: $f8 $f8
    jr nc, jr_020_4548                            ; $4556: $30 $f0

    ret nc                                        ; $4558: $d0

    ldh a, [$f0]                                  ; $4559: $f0 $f0
    ldh a, [$78]                                  ; $455b: $f0 $78
    ld c, b                                       ; $455d: $48
    ld a, b                                       ; $455e: $78
    ld a, b                                       ; $455f: $78
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    inc bc                                        ; $4562: $03
    inc bc                                        ; $4563: $03
    ld [bc], a                                    ; $4564: $02
    inc bc                                        ; $4565: $03
    ld h, h                                       ; $4566: $64
    ld h, a                                       ; $4567: $67
    ld h, h                                       ; $4568: $64
    ld h, a                                       ; $4569: $67
    ld h, $27                                     ; $456a: $26 $27
    dec [hl]                                      ; $456c: $35
    scf                                           ; $456d: $37
    ld e, $1f                                     ; $456e: $1e $1f
    rrca                                          ; $4570: $0f
    rrca                                          ; $4571: $0f
    rlca                                          ; $4572: $07
    rlca                                          ; $4573: $07
    rlca                                          ; $4574: $07
    rlca                                          ; $4575: $07
    rlca                                          ; $4576: $07
    rlca                                          ; $4577: $07
    ld [bc], a                                    ; $4578: $02
    inc bc                                        ; $4579: $03
    inc bc                                        ; $457a: $03
    inc bc                                        ; $457b: $03
    rlca                                          ; $457c: $07
    inc b                                         ; $457d: $04
    rlca                                          ; $457e: $07
    rlca                                          ; $457f: $07
    ld hl, sp-$08                                 ; $4580: $f8 $f8
    inc a                                         ; $4582: $3c
    db $fc                                        ; $4583: $fc
    inc c                                         ; $4584: $0c
    db $fc                                        ; $4585: $fc
    inc b                                         ; $4586: $04
    db $fc                                        ; $4587: $fc
    inc b                                         ; $4588: $04
    db $fc                                        ; $4589: $fc
    inc b                                         ; $458a: $04
    db $fc                                        ; $458b: $fc
    adc b                                         ; $458c: $88
    ld hl, sp+$58                                 ; $458d: $f8 $58
    ld hl, sp-$10                                 ; $458f: $f8 $f0
    ldh a, [$e0]                                  ; $4591: $f0 $e0
    ldh [$e0], a                                  ; $4593: $e0 $e0
    ldh [$c0], a                                  ; $4595: $e0 $c0
    ret nz                                        ; $4597: $c0

    ld b, b                                       ; $4598: $40
    ret nz                                        ; $4599: $c0

    and b                                         ; $459a: $a0
    ldh [$f0], a                                  ; $459b: $e0 $f0
    sub b                                         ; $459d: $90
    ldh a, [$f0]                                  ; $459e: $f0 $f0
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    inc bc                                        ; $45a2: $03
    inc bc                                        ; $45a3: $03
    inc b                                         ; $45a4: $04
    rlca                                          ; $45a5: $07
    ret z                                         ; $45a6: $c8

    rst $08                                       ; $45a7: $cf
    add sp, -$11                                  ; $45a8: $e8 $ef
    dec sp                                        ; $45aa: $3b
    ccf                                           ; $45ab: $3f
    dec d                                         ; $45ac: $15
    rra                                           ; $45ad: $1f
    inc c                                         ; $45ae: $0c
    rrca                                          ; $45af: $0f
    rlca                                          ; $45b0: $07
    rlca                                          ; $45b1: $07
    inc bc                                        ; $45b2: $03
    inc bc                                        ; $45b3: $03
    inc bc                                        ; $45b4: $03
    inc bc                                        ; $45b5: $03
    rlca                                          ; $45b6: $07
    rlca                                          ; $45b7: $07
    inc c                                         ; $45b8: $0c
    rrca                                          ; $45b9: $0f
    ld e, $17                                     ; $45ba: $1e $17
    rra                                           ; $45bc: $1f
    rla                                           ; $45bd: $17
    ld e, $1e                                     ; $45be: $1e $1e
    ld [hl], b                                    ; $45c0: $70
    ld [hl], b                                    ; $45c1: $70
    cp b                                          ; $45c2: $b8
    ld hl, sp+$18                                 ; $45c3: $f8 $18
    ld hl, sp+$10                                 ; $45c5: $f8 $10
    ldh a, [rSVBK]                                ; $45c7: $f0 $70
    ldh a, [$90]                                  ; $45c9: $f0 $90
    ldh a, [$30]                                  ; $45cb: $f0 $30
    ldh a, [$28]                                  ; $45cd: $f0 $28
    ld hl, sp+$10                                 ; $45cf: $f8 $10
    ldh a, [$f0]                                  ; $45d1: $f0 $f0
    ldh a, [$f0]                                  ; $45d3: $f0 $f0
    ldh a, [$e0]                                  ; $45d5: $f0 $e0
    ldh [$a0], a                                  ; $45d7: $e0 $a0
    ldh [$e0], a                                  ; $45d9: $e0 $e0
    ldh [$f0], a                                  ; $45db: $e0 $f0
    sub b                                         ; $45dd: $90
    ldh a, [$f0]                                  ; $45de: $f0 $f0
    ld bc, $0701                                  ; $45e0: $01 $01 $07
    rlca                                          ; $45e3: $07
    add hl, bc                                    ; $45e4: $09
    rrca                                          ; $45e5: $0f
    rla                                           ; $45e6: $17
    rra                                           ; $45e7: $1f
    inc e                                         ; $45e8: $1c
    rra                                           ; $45e9: $1f
    jr jr_020_460b                                ; $45ea: $18 $1f

    ld a, [de]                                    ; $45ec: $1a
    rra                                           ; $45ed: $1f
    ld [de], a                                    ; $45ee: $12
    rra                                           ; $45ef: $1f
    ld [$070f], sp                                ; $45f0: $08 $0f $07
    rlca                                          ; $45f3: $07
    inc bc                                        ; $45f4: $03
    inc bc                                        ; $45f5: $03
    inc bc                                        ; $45f6: $03
    inc bc                                        ; $45f7: $03
    inc bc                                        ; $45f8: $03
    inc bc                                        ; $45f9: $03
    inc bc                                        ; $45fa: $03
    inc bc                                        ; $45fb: $03
    rlca                                          ; $45fc: $07
    dec b                                         ; $45fd: $05
    rlca                                          ; $45fe: $07

jr_020_45ff:
    rlca                                          ; $45ff: $07
    add b                                         ; $4600: $80
    add b                                         ; $4601: $80
    ret nz                                        ; $4602: $c0

    ret nz                                        ; $4603: $c0

    and b                                         ; $4604: $a0
    ldh [$e6], a                                  ; $4605: $e0 $e6
    and $56                                       ; $4607: $e6 $56
    or $34                                        ; $4609: $f6 $34

jr_020_460b:
    db $f4                                        ; $460b: $f4
    or h                                          ; $460c: $b4
    db $f4                                        ; $460d: $f4
    sbc h                                         ; $460e: $9c
    db $fc                                        ; $460f: $fc
    jr c, @-$06                                   ; $4610: $38 $f8

    add sp, -$08                                  ; $4612: $e8 $f8
    jr nc, @-$0e                                  ; $4614: $30 $f0

    ld [hl], b                                    ; $4616: $70
    ldh a, [$e0]                                  ; $4617: $f0 $e0
    ldh [$a0], a                                  ; $4619: $e0 $a0
    ldh [$e0], a                                  ; $461b: $e0 $e0
    jr nz, jr_020_45ff                            ; $461d: $20 $e0

    ldh [$0e], a                                  ; $461f: $e0 $0e
    ld c, $1d                                     ; $4621: $0e $1d
    rra                                           ; $4623: $1f
    jr @+$21                                      ; $4624: $18 $1f

jr_020_4626:
    rrca                                          ; $4626: $0f
    rrca                                          ; $4627: $0f
    add hl, bc                                    ; $4628: $09
    rrca                                          ; $4629: $0f
    inc c                                         ; $462a: $0c
    rrca                                          ; $462b: $0f
    inc d                                         ; $462c: $14
    rra                                           ; $462d: $1f
    db $10                                        ; $462e: $10
    rra                                           ; $462f: $1f
    add hl, bc                                    ; $4630: $09
    rrca                                          ; $4631: $0f
    rlca                                          ; $4632: $07
    rlca                                          ; $4633: $07
    inc bc                                        ; $4634: $03
    inc bc                                        ; $4635: $03
    inc bc                                        ; $4636: $03
    inc bc                                        ; $4637: $03
    inc bc                                        ; $4638: $03
    inc bc                                        ; $4639: $03
    rlca                                          ; $463a: $07
    rlca                                          ; $463b: $07
    rrca                                          ; $463c: $0f
    add hl, bc                                    ; $463d: $09
    ld c, $0e                                     ; $463e: $0e $0e
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    ret nz                                        ; $4642: $c0

    ret nz                                        ; $4643: $c0

    jr nz, jr_020_4626                            ; $4644: $20 $e0

    inc de                                        ; $4646: $13
    di                                            ; $4647: $f3
    rst $10                                       ; $4648: $d7
    rst $30                                       ; $4649: $f7
    xor h                                         ; $464a: $ac
    db $fc                                        ; $464b: $fc
    ld a, b                                       ; $464c: $78
    ld hl, sp-$50                                 ; $464d: $f8 $b0
    ldh a, [$d0]                                  ; $464f: $f0 $d0
    ldh a, [$e0]                                  ; $4651: $f0 $e0
    ldh [$e0], a                                  ; $4653: $e0 $e0
    ldh [$c0], a                                  ; $4655: $e0 $c0
    ret nz                                        ; $4657: $c0

    ld b, b                                       ; $4658: $40
    ret nz                                        ; $4659: $c0

    ldh [$a0], a                                  ; $465a: $e0 $a0
    ldh [$a0], a                                  ; $465c: $e0 $a0
    ld h, b                                       ; $465e: $60
    ld h, b                                       ; $465f: $60
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    inc bc                                        ; $4664: $03
    inc bc                                        ; $4665: $03
    inc b                                         ; $4666: $04
    rlca                                          ; $4667: $07
    ld [$090f], sp                                ; $4668: $08 $0f $09
    rrca                                          ; $466b: $0f
    rla                                           ; $466c: $17
    rra                                           ; $466d: $1f
    dec de                                        ; $466e: $1b
    rra                                           ; $466f: $1f
    add hl, bc                                    ; $4670: $09
    rrca                                          ; $4671: $0f
    ld b, $07                                     ; $4672: $06 $07
    inc bc                                        ; $4674: $03
    inc bc                                        ; $4675: $03
    rlca                                          ; $4676: $07
    rlca                                          ; $4677: $07
    dec bc                                        ; $4678: $0b
    rrca                                          ; $4679: $0f
    ld c, $0f                                     ; $467a: $0e $0f
    rrca                                          ; $467c: $0f
    rrca                                          ; $467d: $0f
    ld b, $06                                     ; $467e: $06 $06

jr_020_4680:
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    ld [hl], b                                    ; $4682: $70
    ld [hl], b                                    ; $4683: $70
    ld hl, sp-$08                                 ; $4684: $f8 $f8
    jr c, jr_020_4680                             ; $4686: $38 $f8

    ld [hl], b                                    ; $4688: $70
    ldh a, [$90]                                  ; $4689: $f0 $90
    ldh a, [rNR10]                                ; $468b: $f0 $10
    ldh a, [$30]                                  ; $468d: $f0 $30
    ldh a, [$28]                                  ; $468f: $f0 $28
    ld hl, sp+$08                                 ; $4691: $f8 $08
    ld hl, sp-$20                                 ; $4693: $f8 $e0
    ldh [$f0], a                                  ; $4695: $e0 $f0
    ldh a, [$f0]                                  ; $4697: $f0 $f0
    ldh a, [$38]                                  ; $4699: $f0 $38
    add sp, -$10                                  ; $469b: $e8 $f0
    ret nc                                        ; $469d: $d0

    ldh [$e0], a                                  ; $469e: $e0 $e0
    nop                                           ; $46a0: $00
    nop                                           ; $46a1: $00
    inc bc                                        ; $46a2: $03
    inc bc                                        ; $46a3: $03
    inc bc                                        ; $46a4: $03
    inc bc                                        ; $46a5: $03
    dec b                                         ; $46a6: $05
    rlca                                          ; $46a7: $07
    dec bc                                        ; $46a8: $0b
    rrca                                          ; $46a9: $0f
    inc c                                         ; $46aa: $0c
    rrca                                          ; $46ab: $0f
    jr jr_020_46cd                                ; $46ac: $18 $1f

    ld a, [hl+]                                   ; $46ae: $2a
    ccf                                           ; $46af: $3f
    ld [hl+], a                                   ; $46b0: $22
    ccf                                           ; $46b1: $3f
    jr c, jr_020_46f3                             ; $46b2: $38 $3f

    ld a, a                                       ; $46b4: $7f
    ld a, a                                       ; $46b5: $7f
    ld c, a                                       ; $46b6: $4f
    ld c, a                                       ; $46b7: $4f
    ret z                                         ; $46b8: $c8

    rst $08                                       ; $46b9: $cf
    rst $08                                       ; $46ba: $cf
    rst $08                                       ; $46bb: $cf
    rrca                                          ; $46bc: $0f
    ld [$0707], sp                                ; $46bd: $08 $07 $07
    nop                                           ; $46c0: $00
    nop                                           ; $46c1: $00
    add b                                         ; $46c2: $80
    add b                                         ; $46c3: $80
    ret nz                                        ; $46c4: $c0

    ret nz                                        ; $46c5: $c0

    and b                                         ; $46c6: $a0
    ldh [$d0], a                                  ; $46c7: $e0 $d0
    ldh a, [$30]                                  ; $46c9: $f0 $30
    ldh a, [rNR23]                                ; $46cb: $f0 $18

jr_020_46cd:
    ld hl, sp+$54                                 ; $46cd: $f8 $54
    db $fc                                        ; $46cf: $fc
    ld b, h                                       ; $46d0: $44
    db $fc                                        ; $46d1: $fc
    inc e                                         ; $46d2: $1c
    db $fc                                        ; $46d3: $fc
    ld a, [$fafe]                                 ; $46d4: $fa $fe $fa
    cp $96                                        ; $46d7: $fe $96
    or $f0                                        ; $46d9: $f6 $f0
    ldh a, [$e0]                                  ; $46db: $f0 $e0
    ldh [rP1], a                                  ; $46dd: $e0 $00
    nop                                           ; $46df: $00
    nop                                           ; $46e0: $00
    nop                                           ; $46e1: $00
    ld c, $0e                                     ; $46e2: $0e $0e
    rra                                           ; $46e4: $1f
    rra                                           ; $46e5: $1f
    inc e                                         ; $46e6: $1c
    rra                                           ; $46e7: $1f

jr_020_46e8:
    ld c, $0f                                     ; $46e8: $0e $0f
    add hl, bc                                    ; $46ea: $09
    rrca                                          ; $46eb: $0f
    ld [$0c0f], sp                                ; $46ec: $08 $0f $0c
    rrca                                          ; $46ef: $0f
    inc d                                         ; $46f0: $14
    rra                                           ; $46f1: $1f
    db $10                                        ; $46f2: $10

jr_020_46f3:
    rra                                           ; $46f3: $1f
    rlca                                          ; $46f4: $07
    rlca                                          ; $46f5: $07
    rrca                                          ; $46f6: $0f
    rrca                                          ; $46f7: $0f
    dec bc                                        ; $46f8: $0b
    rrca                                          ; $46f9: $0f
    ld b, $07                                     ; $46fa: $06 $07
    rrca                                          ; $46fc: $0f
    rrca                                          ; $46fd: $0f
    rlca                                          ; $46fe: $07
    rlca                                          ; $46ff: $07
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    ret nz                                        ; $4704: $c0

    ret nz                                        ; $4705: $c0

    jr nz, jr_020_46e8                            ; $4706: $20 $e0

    db $10                                        ; $4708: $10
    ldh a, [$90]                                  ; $4709: $f0 $90
    ldh a, [$e8]                                  ; $470b: $f0 $e8
    ld hl, sp-$28                                 ; $470d: $f8 $d8
    ld hl, sp-$70                                 ; $470f: $f8 $90
    ldh a, [$60]                                  ; $4711: $f0 $60
    ldh [$c0], a                                  ; $4713: $e0 $c0
    ret nz                                        ; $4715: $c0

    ldh [$e0], a                                  ; $4716: $e0 $e0
    ldh [$e0], a                                  ; $4718: $e0 $e0
    ld [hl], b                                    ; $471a: $70
    ret nc                                        ; $471b: $d0

    ldh a, [$90]                                  ; $471c: $f0 $90
    ld h, b                                       ; $471e: $60
    ld h, b                                       ; $471f: $60
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    inc bc                                        ; $4722: $03
    inc bc                                        ; $4723: $03
    inc bc                                        ; $4724: $03
    inc bc                                        ; $4725: $03
    inc b                                         ; $4726: $04
    rlca                                          ; $4727: $07

jr_020_4728:
    ld [$080f], sp                                ; $4728: $08 $0f $08
    rrca                                          ; $472b: $0f
    jr jr_020_474d                                ; $472c: $18 $1f

    inc l                                         ; $472e: $2c
    ccf                                           ; $472f: $3f
    daa                                           ; $4730: $27
    ccf                                           ; $4731: $3f
    ld a, h                                       ; $4732: $7c
    ld a, a                                       ; $4733: $7f
    ccf                                           ; $4734: $3f
    ccf                                           ; $4735: $3f
    dec bc                                        ; $4736: $0b
    rrca                                          ; $4737: $0f
    ld [$0f0f], sp                                ; $4738: $08 $0f $0f
    rrca                                          ; $473b: $0f
    rrca                                          ; $473c: $0f
    ld [$0707], sp                                ; $473d: $08 $07 $07
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    add b                                         ; $4742: $80
    add b                                         ; $4743: $80
    ret nz                                        ; $4744: $c0

    ret nz                                        ; $4745: $c0

    jr nz, jr_020_4728                            ; $4746: $20 $e0

    db $10                                        ; $4748: $10
    ldh a, [rNR10]                                ; $4749: $f0 $10
    ldh a, [rNR23]                                ; $474b: $f0 $18

jr_020_474d:
    ld hl, sp+$34                                 ; $474d: $f8 $34
    db $fc                                        ; $474f: $fc
    and h                                         ; $4750: $a4
    db $fc                                        ; $4751: $fc
    ld a, b                                       ; $4752: $78
    ld hl, sp-$05                                 ; $4753: $f8 $fb
    rst $38                                       ; $4755: $ff
    db $db                                        ; $4756: $db
    rst $38                                       ; $4757: $ff
    sub [hl]                                      ; $4758: $96
    or $f0                                        ; $4759: $f6 $f0
    ldh a, [$e0]                                  ; $475b: $f0 $e0
    ldh [rP1], a                                  ; $475d: $e0 $00
    nop                                           ; $475f: $00
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    ld bc, $0201                                  ; $4762: $01 $01 $02
    inc bc                                        ; $4765: $03
    inc b                                         ; $4766: $04
    rlca                                          ; $4767: $07
    inc b                                         ; $4768: $04
    rlca                                          ; $4769: $07
    dec bc                                        ; $476a: $0b
    rrca                                          ; $476b: $0f
    dec c                                         ; $476c: $0d
    rrca                                          ; $476d: $0f
    inc b                                         ; $476e: $04
    rlca                                          ; $476f: $07
    inc bc                                        ; $4770: $03
    inc bc                                        ; $4771: $03
    inc bc                                        ; $4772: $03
    inc bc                                        ; $4773: $03
    inc bc                                        ; $4774: $03
    inc bc                                        ; $4775: $03
    rlca                                          ; $4776: $07
    rlca                                          ; $4777: $07
    dec bc                                        ; $4778: $0b
    rrca                                          ; $4779: $0f
    ld c, $0f                                     ; $477a: $0e $0f
    rrca                                          ; $477c: $0f
    rrca                                          ; $477d: $0f
    ld b, $06                                     ; $477e: $06 $06

jr_020_4780:
    jr c, jr_020_47ba                             ; $4780: $38 $38

    db $fc                                        ; $4782: $fc
    db $fc                                        ; $4783: $fc
    inc e                                         ; $4784: $1c
    db $fc                                        ; $4785: $fc
    jr c, jr_020_4780                             ; $4786: $38 $f8

    ret z                                         ; $4788: $c8

    ld hl, sp-$78                                 ; $4789: $f8 $88
    ld hl, sp-$68                                 ; $478b: $f8 $98
    ld hl, sp-$6c                                 ; $478d: $f8 $94
    db $fc                                        ; $478f: $fc
    inc b                                         ; $4790: $04
    db $fc                                        ; $4791: $fc
    db $10                                        ; $4792: $10
    ldh a, [$e0]                                  ; $4793: $f0 $e0
    ldh [$f0], a                                  ; $4795: $e0 $f0
    ldh a, [$f0]                                  ; $4797: $f0 $f0
    ldh a, [$38]                                  ; $4799: $f0 $38
    add sp, -$10                                  ; $479b: $e8 $f0
    ret nc                                        ; $479d: $d0

    ldh [$e0], a                                  ; $479e: $e0 $e0
    ld bc, $0101                                  ; $47a0: $01 $01 $01
    ld bc, $0302                                  ; $47a3: $01 $02 $03
    dec b                                         ; $47a6: $05
    rlca                                          ; $47a7: $07
    ld b, $07                                     ; $47a8: $06 $07
    inc c                                         ; $47aa: $0c
    rrca                                          ; $47ab: $0f
    dec d                                         ; $47ac: $15
    rra                                           ; $47ad: $1f
    ld de, $1c1f                                  ; $47ae: $11 $1f $1c
    rra                                           ; $47b1: $1f
    ld e, h                                       ; $47b2: $5c
    ld a, a                                       ; $47b3: $7f
    ld a, a                                       ; $47b4: $7f
    ld a, a                                       ; $47b5: $7f
    ld c, a                                       ; $47b6: $4f
    ld c, a                                       ; $47b7: $4f
    ret z                                         ; $47b8: $c8

    rst $08                                       ; $47b9: $cf

jr_020_47ba:
    rst $08                                       ; $47ba: $cf
    rst $08                                       ; $47bb: $cf
    rrca                                          ; $47bc: $0f
    ld [$0707], sp                                ; $47bd: $08 $07 $07
    ret nz                                        ; $47c0: $c0

    ret nz                                        ; $47c1: $c0

    ldh [$e0], a                                  ; $47c2: $e0 $e0
    ret nc                                        ; $47c4: $d0

    ldh a, [$e8]                                  ; $47c5: $f0 $e8
    ld hl, sp+$18                                 ; $47c7: $f8 $18
    ld hl, sp+$0c                                 ; $47c9: $f8 $0c
    db $fc                                        ; $47cb: $fc
    ld a, [hl+]                                   ; $47cc: $2a
    cp $22                                        ; $47cd: $fe $22
    cp $0e                                        ; $47cf: $fe $0e
    cp $3c                                        ; $47d1: $fe $3c
    db $fc                                        ; $47d3: $fc
    ld a, [$fafe]                                 ; $47d4: $fa $fe $fa
    cp $96                                        ; $47d7: $fe $96
    or $f0                                        ; $47d9: $f6 $f0
    ldh a, [$e0]                                  ; $47db: $f0 $e0
    ldh [rP1], a                                  ; $47dd: $e0 $00
    nop                                           ; $47df: $00
    rlca                                          ; $47e0: $07
    rlca                                          ; $47e1: $07
    rrca                                          ; $47e2: $0f
    rrca                                          ; $47e3: $0f
    ld c, $0f                                     ; $47e4: $0e $0f
    rlca                                          ; $47e6: $07
    rlca                                          ; $47e7: $07
    inc b                                         ; $47e8: $04
    rlca                                          ; $47e9: $07
    inc b                                         ; $47ea: $04
    rlca                                          ; $47eb: $07
    ld b, $07                                     ; $47ec: $06 $07
    ld a, [bc]                                    ; $47ee: $0a
    rrca                                          ; $47ef: $0f
    ld [$080f], sp                                ; $47f0: $08 $0f $08
    rrca                                          ; $47f3: $0f
    rlca                                          ; $47f4: $07
    rlca                                          ; $47f5: $07
    rrca                                          ; $47f6: $0f
    rrca                                          ; $47f7: $0f
    dec bc                                        ; $47f8: $0b
    rrca                                          ; $47f9: $0f
    ld b, $07                                     ; $47fa: $06 $07
    rrca                                          ; $47fc: $0f
    rrca                                          ; $47fd: $0f
    rlca                                          ; $47fe: $07
    rlca                                          ; $47ff: $07
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    ldh [$e0], a                                  ; $4802: $e0 $e0
    db $10                                        ; $4804: $10
    ldh a, [$08]                                  ; $4805: $f0 $08
    ld hl, sp-$38                                 ; $4807: $f8 $c8
    ld hl, sp+$74                                 ; $4809: $f8 $74
    db $fc                                        ; $480b: $fc
    ld l, h                                       ; $480c: $6c
    db $fc                                        ; $480d: $fc
    ld c, b                                       ; $480e: $48
    ld hl, sp+$30                                 ; $480f: $f8 $30
    ldh a, [$c0]                                  ; $4811: $f0 $c0
    ret nz                                        ; $4813: $c0

    ret nz                                        ; $4814: $c0

    ret nz                                        ; $4815: $c0

    ldh [$e0], a                                  ; $4816: $e0 $e0
    ldh [$e0], a                                  ; $4818: $e0 $e0
    ld [hl], b                                    ; $481a: $70
    ret nc                                        ; $481b: $d0

    ldh a, [$90]                                  ; $481c: $f0 $90
    ld h, b                                       ; $481e: $60
    ld h, b                                       ; $481f: $60
    ld bc, $0101                                  ; $4820: $01 $01 $01
    ld bc, $0302                                  ; $4823: $01 $02 $03
    inc b                                         ; $4826: $04
    rlca                                          ; $4827: $07
    inc b                                         ; $4828: $04
    rlca                                          ; $4829: $07
    inc c                                         ; $482a: $0c
    rrca                                          ; $482b: $0f
    ld d, $1f                                     ; $482c: $16 $1f
    inc de                                        ; $482e: $13
    rra                                           ; $482f: $1f
    ld a, $3f                                     ; $4830: $3e $3f
    ld e, a                                       ; $4832: $5f
    ld a, a                                       ; $4833: $7f
    ccf                                           ; $4834: $3f
    ccf                                           ; $4835: $3f
    dec bc                                        ; $4836: $0b
    rrca                                          ; $4837: $0f
    ld [$0f0f], sp                                ; $4838: $08 $0f $0f
    rrca                                          ; $483b: $0f
    rrca                                          ; $483c: $0f
    ld [$0707], sp                                ; $483d: $08 $07 $07
    ret nz                                        ; $4840: $c0

    ret nz                                        ; $4841: $c0

    ldh [$e0], a                                  ; $4842: $e0 $e0
    db $10                                        ; $4844: $10
    ldh a, [$08]                                  ; $4845: $f0 $08
    ld hl, sp+$08                                 ; $4847: $f8 $08
    ld hl, sp+$0c                                 ; $4849: $f8 $0c
    db $fc                                        ; $484b: $fc
    ld a, [de]                                    ; $484c: $1a
    cp $d2                                        ; $484d: $fe $d2
    cp $3c                                        ; $484f: $fe $3c
    db $fc                                        ; $4851: $fc
    db $fc                                        ; $4852: $fc
    db $fc                                        ; $4853: $fc
    ei                                            ; $4854: $fb
    rst $38                                       ; $4855: $ff
    db $db                                        ; $4856: $db
    rst $38                                       ; $4857: $ff
    sub [hl]                                      ; $4858: $96
    or $f0                                        ; $4859: $f6 $f0
    ldh a, [$e0]                                  ; $485b: $f0 $e0
    ldh [rP1], a                                  ; $485d: $e0 $00
    nop                                           ; $485f: $00
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    rlca                                          ; $4862: $07
    rlca                                          ; $4863: $07
    ld [$100f], sp                                ; $4864: $08 $0f $10
    rra                                           ; $4867: $1f
    inc de                                        ; $4868: $13
    rra                                           ; $4869: $1f
    ld l, $3f                                     ; $486a: $2e $3f
    ld [hl], $3f                                  ; $486c: $36 $3f
    ld [de], a                                    ; $486e: $12
    rra                                           ; $486f: $1f
    inc c                                         ; $4870: $0c
    rrca                                          ; $4871: $0f
    inc bc                                        ; $4872: $03
    inc bc                                        ; $4873: $03
    inc bc                                        ; $4874: $03
    inc bc                                        ; $4875: $03
    rlca                                          ; $4876: $07
    rlca                                          ; $4877: $07
    dec bc                                        ; $4878: $0b
    rrca                                          ; $4879: $0f
    ld c, $0f                                     ; $487a: $0e $0f
    rrca                                          ; $487c: $0f
    rrca                                          ; $487d: $0f
    ld b, $06                                     ; $487e: $06 $06
    ldh [$e0], a                                  ; $4880: $e0 $e0
    ldh a, [$f0]                                  ; $4882: $f0 $f0
    ld [hl], b                                    ; $4884: $70
    ldh a, [$e0]                                  ; $4885: $f0 $e0
    ldh [rNR41], a                                ; $4887: $e0 $20
    ldh [rNR41], a                                ; $4889: $e0 $20
    ldh [$60], a                                  ; $488b: $e0 $60
    ldh [$50], a                                  ; $488d: $e0 $50
    ldh a, [rNR10]                                ; $488f: $f0 $10
    ldh a, [rNR10]                                ; $4891: $f0 $10
    ldh a, [$e0]                                  ; $4893: $f0 $e0
    ldh [$f0], a                                  ; $4895: $e0 $f0
    ldh a, [$f0]                                  ; $4897: $f0 $f0
    ldh a, [$38]                                  ; $4899: $f0 $38
    add sp, -$10                                  ; $489b: $e8 $f0
    ret nc                                        ; $489d: $d0

    ldh [$e0], a                                  ; $489e: $e0 $e0
    rlca                                          ; $48a0: $07
    rlca                                          ; $48a1: $07
    rlca                                          ; $48a2: $07
    rlca                                          ; $48a3: $07
    dec bc                                        ; $48a4: $0b
    rrca                                          ; $48a5: $0f
    rla                                           ; $48a6: $17
    rra                                           ; $48a7: $1f
    jr jr_020_48c9                                ; $48a8: $18 $1f

    jr nc, @+$41                                  ; $48aa: $30 $3f

    ld d, h                                       ; $48ac: $54
    ld a, a                                       ; $48ad: $7f
    ld b, h                                       ; $48ae: $44
    ld a, a                                       ; $48af: $7f
    ld [hl], b                                    ; $48b0: $70
    ld a, a                                       ; $48b1: $7f
    ld e, h                                       ; $48b2: $5c
    ld a, a                                       ; $48b3: $7f
    ld a, a                                       ; $48b4: $7f
    ld a, a                                       ; $48b5: $7f
    ld c, a                                       ; $48b6: $4f
    ld c, a                                       ; $48b7: $4f
    ret z                                         ; $48b8: $c8

    rst $08                                       ; $48b9: $cf
    rst $08                                       ; $48ba: $cf
    rst $08                                       ; $48bb: $cf
    rrca                                          ; $48bc: $0f
    ld [$0707], sp                                ; $48bd: $08 $07 $07
    nop                                           ; $48c0: $00
    nop                                           ; $48c1: $00
    add b                                         ; $48c2: $80
    add b                                         ; $48c3: $80
    ld b, b                                       ; $48c4: $40
    ret nz                                        ; $48c5: $c0

    and b                                         ; $48c6: $a0
    ldh [$60], a                                  ; $48c7: $e0 $60

jr_020_48c9:
    ldh [$30], a                                  ; $48c9: $e0 $30
    ldh a, [$a8]                                  ; $48cb: $f0 $a8
    ld hl, sp-$78                                 ; $48cd: $f8 $88
    ld hl, sp+$38                                 ; $48cf: $f8 $38
    ld hl, sp+$3c                                 ; $48d1: $f8 $3c
    db $fc                                        ; $48d3: $fc
    ld a, [$fafe]                                 ; $48d4: $fa $fe $fa
    cp $96                                        ; $48d7: $fe $96
    or $f0                                        ; $48d9: $f6 $f0
    ldh a, [$e0]                                  ; $48db: $f0 $e0
    ldh [rP1], a                                  ; $48dd: $e0 $00
    nop                                           ; $48df: $00
    inc e                                         ; $48e0: $1c
    inc e                                         ; $48e1: $1c
    ccf                                           ; $48e2: $3f
    ccf                                           ; $48e3: $3f
    jr c, @+$41                                   ; $48e4: $38 $3f

    inc e                                         ; $48e6: $1c
    rra                                           ; $48e7: $1f

jr_020_48e8:
    inc de                                        ; $48e8: $13
    rra                                           ; $48e9: $1f

jr_020_48ea:
    ld de, $191f                                  ; $48ea: $11 $1f $19
    rra                                           ; $48ed: $1f
    add hl, hl                                    ; $48ee: $29
    ccf                                           ; $48ef: $3f
    jr nz, @+$41                                  ; $48f0: $20 $3f

    ld [$070f], sp                                ; $48f2: $08 $0f $07
    rlca                                          ; $48f5: $07
    rrca                                          ; $48f6: $0f
    rrca                                          ; $48f7: $0f

Call_020_48f8:
    dec bc                                        ; $48f8: $0b
    rrca                                          ; $48f9: $0f
    ld b, $07                                     ; $48fa: $06 $07
    rrca                                          ; $48fc: $0f
    rrca                                          ; $48fd: $0f
    rlca                                          ; $48fe: $07
    rlca                                          ; $48ff: $07
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    add b                                         ; $4902: $80
    add b                                         ; $4903: $80
    ld b, b                                       ; $4904: $40
    ret nz                                        ; $4905: $c0

    jr nz, jr_020_48e8                            ; $4906: $20 $e0

    jr nz, jr_020_48ea                            ; $4908: $20 $e0

    ret nc                                        ; $490a: $d0

    ldh a, [$b0]                                  ; $490b: $f0 $b0
    ldh a, [rNR41]                                ; $490d: $f0 $20
    ldh [$c0], a                                  ; $490f: $e0 $c0
    ret nz                                        ; $4911: $c0

    ret nz                                        ; $4912: $c0

    ret nz                                        ; $4913: $c0

    ret nz                                        ; $4914: $c0

    ret nz                                        ; $4915: $c0

    ldh [$e0], a                                  ; $4916: $e0 $e0
    ldh [$e0], a                                  ; $4918: $e0 $e0
    ld [hl], b                                    ; $491a: $70
    ret nc                                        ; $491b: $d0

    ldh a, [$90]                                  ; $491c: $f0 $90
    ld h, b                                       ; $491e: $60
    ld h, b                                       ; $491f: $60
    rlca                                          ; $4920: $07
    rlca                                          ; $4921: $07
    rlca                                          ; $4922: $07
    rlca                                          ; $4923: $07
    ld [$100f], sp                                ; $4924: $08 $0f $10
    rra                                           ; $4927: $1f

jr_020_4928:
    db $10                                        ; $4928: $10
    rra                                           ; $4929: $1f

jr_020_492a:
    jr nc, jr_020_496b                            ; $492a: $30 $3f

    ld e, b                                       ; $492c: $58
    ld a, a                                       ; $492d: $7f
    ld c, a                                       ; $492e: $4f
    ld a, a                                       ; $492f: $7f
    ld hl, sp-$01                                 ; $4930: $f8 $ff
    ld e, a                                       ; $4932: $5f
    ld a, a                                       ; $4933: $7f
    ccf                                           ; $4934: $3f
    ccf                                           ; $4935: $3f
    dec bc                                        ; $4936: $0b
    rrca                                          ; $4937: $0f
    ld [$0f0f], sp                                ; $4938: $08 $0f $0f
    rrca                                          ; $493b: $0f

jr_020_493c:
    rrca                                          ; $493c: $0f
    ld [$0707], sp                                ; $493d: $08 $07 $07
    nop                                           ; $4940: $00
    nop                                           ; $4941: $00
    add b                                         ; $4942: $80
    add b                                         ; $4943: $80
    ld b, b                                       ; $4944: $40
    ret nz                                        ; $4945: $c0

    jr nz, jr_020_4928                            ; $4946: $20 $e0

    jr nz, jr_020_492a                            ; $4948: $20 $e0

    jr nc, jr_020_493c                            ; $494a: $30 $f0

    ld l, b                                       ; $494c: $68
    ld hl, sp+$48                                 ; $494d: $f8 $48
    ld hl, sp-$10                                 ; $494f: $f8 $f0
    ldh a, [$fc]                                  ; $4951: $f0 $fc
    db $fc                                        ; $4953: $fc
    ei                                            ; $4954: $fb
    rst $38                                       ; $4955: $ff
    db $db                                        ; $4956: $db
    rst $38                                       ; $4957: $ff
    sub [hl]                                      ; $4958: $96
    or $f0                                        ; $4959: $f6 $f0
    ldh a, [$e0]                                  ; $495b: $f0 $e0
    ldh [rP1], a                                  ; $495d: $e0 $00
    nop                                           ; $495f: $00
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    nop                                           ; $4963: $00
    inc bc                                        ; $4964: $03
    inc bc                                        ; $4965: $03
    nop                                           ; $4966: $00
    inc bc                                        ; $4967: $03
    inc b                                         ; $4968: $04
    rlca                                          ; $4969: $07
    dec b                                         ; $496a: $05

jr_020_496b:
    rlca                                          ; $496b: $07
    rrca                                          ; $496c: $0f
    rrca                                          ; $496d: $0f
    dec b                                         ; $496e: $05
    rlca                                          ; $496f: $07
    ld [bc], a                                    ; $4970: $02
    inc bc                                        ; $4971: $03
    inc bc                                        ; $4972: $03
    inc bc                                        ; $4973: $03
    inc bc                                        ; $4974: $03
    inc bc                                        ; $4975: $03
    rlca                                          ; $4976: $07
    rlca                                          ; $4977: $07

jr_020_4978:
    ld b, $07                                     ; $4978: $06 $07
    rlca                                          ; $497a: $07
    rlca                                          ; $497b: $07
    ld [bc], a                                    ; $497c: $02
    ld [bc], a                                    ; $497d: $02
    nop                                           ; $497e: $00
    nop                                           ; $497f: $00
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    ld h, b                                       ; $4982: $60
    ld h, b                                       ; $4983: $60
    ldh a, [$f0]                                  ; $4984: $f0 $f0
    jr nc, jr_020_4978                            ; $4986: $30 $f0

    ld h, b                                       ; $4988: $60
    ldh [$a0], a                                  ; $4989: $e0 $a0
    ldh [rNR41], a                                ; $498b: $e0 $20
    ldh [rNR10], a                                ; $498d: $e0 $10
    ldh a, [rNR10]                                ; $498f: $f0 $10
    ldh a, [rNR41]                                ; $4991: $f0 $20
    ldh [$e0], a                                  ; $4993: $e0 $e0
    ldh [$e0], a                                  ; $4995: $e0 $e0
    ldh [$30], a                                  ; $4997: $e0 $30
    ret nc                                        ; $4999: $d0

    ldh [$e0], a                                  ; $499a: $e0 $e0
    ret nz                                        ; $499c: $c0

    ret nz                                        ; $499d: $c0

    nop                                           ; $499e: $00
    nop                                           ; $499f: $00
    nop                                           ; $49a0: $00
    nop                                           ; $49a1: $00
    inc bc                                        ; $49a2: $03
    inc bc                                        ; $49a3: $03
    inc bc                                        ; $49a4: $03
    inc bc                                        ; $49a5: $03
    ld bc, $0703                                  ; $49a6: $01 $03 $07
    rlca                                          ; $49a9: $07
    inc b                                         ; $49aa: $04
    rlca                                          ; $49ab: $07

jr_020_49ac:
    ld d, $1f                                     ; $49ac: $16 $1f
    ld [de], a                                    ; $49ae: $12
    rra                                           ; $49af: $1f
    inc e                                         ; $49b0: $1c
    rra                                           ; $49b1: $1f
    inc l                                         ; $49b2: $2c
    ccf                                           ; $49b3: $3f
    daa                                           ; $49b4: $27
    daa                                           ; $49b5: $27
    ld h, h                                       ; $49b6: $64
    ld h, a                                       ; $49b7: $67
    ld h, a                                       ; $49b8: $67
    ld h, a                                       ; $49b9: $67
    rlca                                          ; $49ba: $07
    inc b                                         ; $49bb: $04
    inc bc                                        ; $49bc: $03
    inc bc                                        ; $49bd: $03
    nop                                           ; $49be: $00
    nop                                           ; $49bf: $00
    nop                                           ; $49c0: $00
    nop                                           ; $49c1: $00
    add b                                         ; $49c2: $80
    add b                                         ; $49c3: $80
    ret nz                                        ; $49c4: $c0

    ret nz                                        ; $49c5: $c0

    add b                                         ; $49c6: $80
    ret nz                                        ; $49c7: $c0

    ldh [$e0], a                                  ; $49c8: $e0 $e0
    jr nz, jr_020_49ac                            ; $49ca: $20 $e0

    ld l, b                                       ; $49cc: $68
    ld hl, sp+$48                                 ; $49cd: $f8 $48
    ld hl, sp+$38                                 ; $49cf: $f8 $38
    ld hl, sp+$38                                 ; $49d1: $f8 $38
    ld hl, sp-$0c                                 ; $49d3: $f8 $f4
    db $fc                                        ; $49d5: $fc
    xor h                                         ; $49d6: $ac
    db $ec                                        ; $49d7: $ec
    ldh [$e0], a                                  ; $49d8: $e0 $e0
    ret nz                                        ; $49da: $c0

    ret nz                                        ; $49db: $c0

    nop                                           ; $49dc: $00
    nop                                           ; $49dd: $00
    nop                                           ; $49de: $00
    nop                                           ; $49df: $00
    nop                                           ; $49e0: $00
    nop                                           ; $49e1: $00
    ld b, $06                                     ; $49e2: $06 $06
    rrca                                          ; $49e4: $0f
    rrca                                          ; $49e5: $0f
    inc c                                         ; $49e6: $0c
    rrca                                          ; $49e7: $0f
    ld b, $07                                     ; $49e8: $06 $07

jr_020_49ea:
    dec b                                         ; $49ea: $05
    rlca                                          ; $49eb: $07
    inc b                                         ; $49ec: $04
    rlca                                          ; $49ed: $07
    ld [$080f], sp                                ; $49ee: $08 $0f $08
    rrca                                          ; $49f1: $0f
    inc b                                         ; $49f2: $04
    rlca                                          ; $49f3: $07
    rlca                                          ; $49f4: $07
    rlca                                          ; $49f5: $07
    rlca                                          ; $49f6: $07
    rlca                                          ; $49f7: $07
    ld [bc], a                                    ; $49f8: $02
    inc bc                                        ; $49f9: $03
    rlca                                          ; $49fa: $07
    rlca                                          ; $49fb: $07
    inc bc                                        ; $49fc: $03
    inc bc                                        ; $49fd: $03
    nop                                           ; $49fe: $00
    nop                                           ; $49ff: $00
    nop                                           ; $4a00: $00
    nop                                           ; $4a01: $00
    nop                                           ; $4a02: $00
    nop                                           ; $4a03: $00
    ret nz                                        ; $4a04: $c0

    ret nz                                        ; $4a05: $c0

    nop                                           ; $4a06: $00
    ret nz                                        ; $4a07: $c0

    jr nz, jr_020_49ea                            ; $4a08: $20 $e0

    and b                                         ; $4a0a: $a0
    ldh [$f0], a                                  ; $4a0b: $e0 $f0
    ldh a, [$a0]                                  ; $4a0d: $f0 $a0
    ldh [rLCDC], a                                ; $4a0f: $e0 $40
    ret nz                                        ; $4a11: $c0

    ret nz                                        ; $4a12: $c0

    ret nz                                        ; $4a13: $c0

    ret nz                                        ; $4a14: $c0

    ret nz                                        ; $4a15: $c0

    ret nz                                        ; $4a16: $c0

    ret nz                                        ; $4a17: $c0

    ld h, b                                       ; $4a18: $60
    ldh [$e0], a                                  ; $4a19: $e0 $e0
    and b                                         ; $4a1b: $a0
    ld b, b                                       ; $4a1c: $40
    ld b, b                                       ; $4a1d: $40
    nop                                           ; $4a1e: $00
    nop                                           ; $4a1f: $00
    nop                                           ; $4a20: $00
    nop                                           ; $4a21: $00
    inc bc                                        ; $4a22: $03
    inc bc                                        ; $4a23: $03
    inc bc                                        ; $4a24: $03
    inc bc                                        ; $4a25: $03
    nop                                           ; $4a26: $00
    inc bc                                        ; $4a27: $03
    inc b                                         ; $4a28: $04
    rlca                                          ; $4a29: $07

jr_020_4a2a:
    inc b                                         ; $4a2a: $04
    rlca                                          ; $4a2b: $07

jr_020_4a2c:
    inc d                                         ; $4a2c: $14
    rra                                           ; $4a2d: $1f
    inc de                                        ; $4a2e: $13
    rra                                           ; $4a2f: $1f
    inc a                                         ; $4a30: $3c
    ccf                                           ; $4a31: $3f
    cpl                                           ; $4a32: $2f
    ccf                                           ; $4a33: $3f
    rlca                                          ; $4a34: $07
    rlca                                          ; $4a35: $07
    inc b                                         ; $4a36: $04
    rlca                                          ; $4a37: $07
    rlca                                          ; $4a38: $07
    rlca                                          ; $4a39: $07
    rlca                                          ; $4a3a: $07
    inc b                                         ; $4a3b: $04
    inc bc                                        ; $4a3c: $03
    inc bc                                        ; $4a3d: $03
    nop                                           ; $4a3e: $00
    nop                                           ; $4a3f: $00
    nop                                           ; $4a40: $00
    nop                                           ; $4a41: $00
    add b                                         ; $4a42: $80
    add b                                         ; $4a43: $80
    ret nz                                        ; $4a44: $c0

    ret nz                                        ; $4a45: $c0

jr_020_4a46:
    nop                                           ; $4a46: $00
    ret nz                                        ; $4a47: $c0

    jr nz, jr_020_4a2a                            ; $4a48: $20 $e0

    jr nz, jr_020_4a2c                            ; $4a4a: $20 $e0

    jr z, jr_020_4a46                             ; $4a4c: $28 $f8

    adc b                                         ; $4a4e: $88
    ld hl, sp+$70                                 ; $4a4f: $f8 $70
    ldh a, [$f8]                                  ; $4a51: $f0 $f8
    ld hl, sp-$0a                                 ; $4a53: $f8 $f6
    cp $ac                                        ; $4a55: $fe $ac
    db $ec                                        ; $4a57: $ec
    ldh [$e0], a                                  ; $4a58: $e0 $e0
    ret nz                                        ; $4a5a: $c0

    ret nz                                        ; $4a5b: $c0

    nop                                           ; $4a5c: $00
    nop                                           ; $4a5d: $00
    nop                                           ; $4a5e: $00
    nop                                           ; $4a5f: $00
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    nop                                           ; $4a62: $00
    nop                                           ; $4a63: $00
    nop                                           ; $4a64: $00
    nop                                           ; $4a65: $00
    nop                                           ; $4a66: $00
    nop                                           ; $4a67: $00
    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    nop                                           ; $4a6b: $00
    nop                                           ; $4a6c: $00
    nop                                           ; $4a6d: $00
    nop                                           ; $4a6e: $00
    nop                                           ; $4a6f: $00
    nop                                           ; $4a70: $00
    nop                                           ; $4a71: $00
    nop                                           ; $4a72: $00
    nop                                           ; $4a73: $00
    nop                                           ; $4a74: $00
    nop                                           ; $4a75: $00
    nop                                           ; $4a76: $00
    nop                                           ; $4a77: $00
    nop                                           ; $4a78: $00
    nop                                           ; $4a79: $00
    nop                                           ; $4a7a: $00
    nop                                           ; $4a7b: $00
    nop                                           ; $4a7c: $00
    nop                                           ; $4a7d: $00
    nop                                           ; $4a7e: $00
    nop                                           ; $4a7f: $00
    nop                                           ; $4a80: $00
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    nop                                           ; $4a83: $00
    nop                                           ; $4a84: $00
    nop                                           ; $4a85: $00
    nop                                           ; $4a86: $00
    nop                                           ; $4a87: $00
    nop                                           ; $4a88: $00
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    nop                                           ; $4a8b: $00
    nop                                           ; $4a8c: $00
    nop                                           ; $4a8d: $00
    nop                                           ; $4a8e: $00
    nop                                           ; $4a8f: $00
    nop                                           ; $4a90: $00
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    nop                                           ; $4a93: $00
    nop                                           ; $4a94: $00
    nop                                           ; $4a95: $00
    nop                                           ; $4a96: $00
    nop                                           ; $4a97: $00
    nop                                           ; $4a98: $00
    nop                                           ; $4a99: $00
    nop                                           ; $4a9a: $00
    nop                                           ; $4a9b: $00
    nop                                           ; $4a9c: $00
    nop                                           ; $4a9d: $00
    nop                                           ; $4a9e: $00
    nop                                           ; $4a9f: $00
    nop                                           ; $4aa0: $00
    nop                                           ; $4aa1: $00
    inc bc                                        ; $4aa2: $03
    inc bc                                        ; $4aa3: $03
    inc bc                                        ; $4aa4: $03
    inc bc                                        ; $4aa5: $03
    dec b                                         ; $4aa6: $05
    rlca                                          ; $4aa7: $07
    dec bc                                        ; $4aa8: $0b
    rrca                                          ; $4aa9: $0f
    inc c                                         ; $4aaa: $0c
    rrca                                          ; $4aab: $0f
    ld a, [de]                                    ; $4aac: $1a
    rra                                           ; $4aad: $1f
    ld a, a                                       ; $4aae: $7f
    ld a, a                                       ; $4aaf: $7f
    jr z, jr_020_4af1                             ; $4ab0: $28 $3f

    inc l                                         ; $4ab2: $2c
    ccf                                           ; $4ab3: $3f
    rra                                           ; $4ab4: $1f
    rra                                           ; $4ab5: $1f
    rrca                                          ; $4ab6: $0f
    rrca                                          ; $4ab7: $0f
    add hl, bc                                    ; $4ab8: $09
    rrca                                          ; $4ab9: $0f
    rrca                                          ; $4aba: $0f
    rrca                                          ; $4abb: $0f
    dec e                                         ; $4abc: $1d
    inc de                                        ; $4abd: $13
    ld e, $1e                                     ; $4abe: $1e $1e
    nop                                           ; $4ac0: $00
    nop                                           ; $4ac1: $00
    add b                                         ; $4ac2: $80
    add b                                         ; $4ac3: $80
    ret nz                                        ; $4ac4: $c0

    ret nz                                        ; $4ac5: $c0

    and b                                         ; $4ac6: $a0
    ldh [$d0], a                                  ; $4ac7: $e0 $d0
    ldh a, [$33]                                  ; $4ac9: $f0 $33
    di                                            ; $4acb: $f3
    ld e, e                                       ; $4acc: $5b
    ei                                            ; $4acd: $fb
    rst $38                                       ; $4ace: $ff
    rst $38                                       ; $4acf: $ff
    inc d                                         ; $4ad0: $14
    db $fc                                        ; $4ad1: $fc
    inc [hl]                                      ; $4ad2: $34
    db $fc                                        ; $4ad3: $fc
    ld hl, sp-$08                                 ; $4ad4: $f8 $f8
    ldh a, [$f0]                                  ; $4ad6: $f0 $f0
    db $10                                        ; $4ad8: $10
    ldh a, [$f0]                                  ; $4ad9: $f0 $f0
    ldh a, [$b8]                                  ; $4adb: $f0 $b8
    ret z                                         ; $4add: $c8

    ld a, b                                       ; $4ade: $78
    ld a, b                                       ; $4adf: $78
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    nop                                           ; $4ae5: $00
    nop                                           ; $4ae6: $00
    nop                                           ; $4ae7: $00
    nop                                           ; $4ae8: $00
    nop                                           ; $4ae9: $00
    nop                                           ; $4aea: $00
    nop                                           ; $4aeb: $00
    nop                                           ; $4aec: $00
    nop                                           ; $4aed: $00
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00

jr_020_4af1:
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    nop                                           ; $4af4: $00
    nop                                           ; $4af5: $00
    nop                                           ; $4af6: $00
    nop                                           ; $4af7: $00
    nop                                           ; $4af8: $00
    nop                                           ; $4af9: $00
    nop                                           ; $4afa: $00
    nop                                           ; $4afb: $00
    nop                                           ; $4afc: $00
    nop                                           ; $4afd: $00
    nop                                           ; $4afe: $00
    nop                                           ; $4aff: $00
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    nop                                           ; $4b04: $00
    nop                                           ; $4b05: $00
    nop                                           ; $4b06: $00
    nop                                           ; $4b07: $00
    nop                                           ; $4b08: $00
    nop                                           ; $4b09: $00
    nop                                           ; $4b0a: $00
    nop                                           ; $4b0b: $00
    nop                                           ; $4b0c: $00
    nop                                           ; $4b0d: $00
    nop                                           ; $4b0e: $00
    nop                                           ; $4b0f: $00
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    nop                                           ; $4b12: $00
    nop                                           ; $4b13: $00
    nop                                           ; $4b14: $00
    nop                                           ; $4b15: $00
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    nop                                           ; $4b18: $00
    nop                                           ; $4b19: $00
    nop                                           ; $4b1a: $00
    nop                                           ; $4b1b: $00
    nop                                           ; $4b1c: $00
    nop                                           ; $4b1d: $00
    nop                                           ; $4b1e: $00
    nop                                           ; $4b1f: $00
    nop                                           ; $4b20: $00
    nop                                           ; $4b21: $00
    nop                                           ; $4b22: $00
    nop                                           ; $4b23: $00
    inc bc                                        ; $4b24: $03
    inc bc                                        ; $4b25: $03
    inc bc                                        ; $4b26: $03
    inc bc                                        ; $4b27: $03
    inc b                                         ; $4b28: $04
    rlca                                          ; $4b29: $07
    ld [$080f], sp                                ; $4b2a: $08 $0f $08
    rrca                                          ; $4b2d: $0f

jr_020_4b2e:
    rla                                           ; $4b2e: $17
    rra                                           ; $4b2f: $1f
    inc a                                         ; $4b30: $3c
    ccf                                           ; $4b31: $3f
    cpl                                           ; $4b32: $2f
    ccf                                           ; $4b33: $3f
    rra                                           ; $4b34: $1f
    rra                                           ; $4b35: $1f
    dec bc                                        ; $4b36: $0b
    rrca                                          ; $4b37: $0f
    rrca                                          ; $4b38: $0f
    rrca                                          ; $4b39: $0f
    add hl, bc                                    ; $4b3a: $09
    rrca                                          ; $4b3b: $0f
    ld b, $06                                     ; $4b3c: $06 $06
    nop                                           ; $4b3e: $00
    nop                                           ; $4b3f: $00
    nop                                           ; $4b40: $00
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    nop                                           ; $4b43: $00
    nop                                           ; $4b44: $00
    nop                                           ; $4b45: $00
    add b                                         ; $4b46: $80
    add b                                         ; $4b47: $80
    ld b, b                                       ; $4b48: $40
    ret nz                                        ; $4b49: $c0

    jr nz, @-$1e                                  ; $4b4a: $20 $e0

    jr nz, jr_020_4b2e                            ; $4b4c: $20 $e0

    ld d, b                                       ; $4b4e: $50
    ldh a, [$e0]                                  ; $4b4f: $f0 $e0
    ldh [$fc], a                                  ; $4b51: $e0 $fc
    db $fc                                        ; $4b53: $fc
    db $ec                                        ; $4b54: $ec
    db $fc                                        ; $4b55: $fc
    cp b                                          ; $4b56: $b8
    ld hl, sp-$40                                 ; $4b57: $f8 $c0
    ret nz                                        ; $4b59: $c0

    add b                                         ; $4b5a: $80
    add b                                         ; $4b5b: $80
    nop                                           ; $4b5c: $00
    nop                                           ; $4b5d: $00
    nop                                           ; $4b5e: $00
    nop                                           ; $4b5f: $00
    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    nop                                           ; $4b64: $00
    nop                                           ; $4b65: $00
    nop                                           ; $4b66: $00
    nop                                           ; $4b67: $00
    nop                                           ; $4b68: $00
    nop                                           ; $4b69: $00
    nop                                           ; $4b6a: $00
    nop                                           ; $4b6b: $00
    nop                                           ; $4b6c: $00
    nop                                           ; $4b6d: $00
    nop                                           ; $4b6e: $00
    nop                                           ; $4b6f: $00
    nop                                           ; $4b70: $00
    nop                                           ; $4b71: $00
    nop                                           ; $4b72: $00
    nop                                           ; $4b73: $00
    nop                                           ; $4b74: $00
    nop                                           ; $4b75: $00
    nop                                           ; $4b76: $00
    nop                                           ; $4b77: $00
    nop                                           ; $4b78: $00
    nop                                           ; $4b79: $00
    nop                                           ; $4b7a: $00
    nop                                           ; $4b7b: $00
    nop                                           ; $4b7c: $00
    nop                                           ; $4b7d: $00
    nop                                           ; $4b7e: $00
    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    nop                                           ; $4b83: $00
    nop                                           ; $4b84: $00
    nop                                           ; $4b85: $00
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    nop                                           ; $4b88: $00
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    nop                                           ; $4b8b: $00
    nop                                           ; $4b8c: $00
    nop                                           ; $4b8d: $00
    nop                                           ; $4b8e: $00
    nop                                           ; $4b8f: $00
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    nop                                           ; $4b92: $00
    nop                                           ; $4b93: $00
    nop                                           ; $4b94: $00
    nop                                           ; $4b95: $00
    nop                                           ; $4b96: $00
    nop                                           ; $4b97: $00
    nop                                           ; $4b98: $00
    nop                                           ; $4b99: $00
    nop                                           ; $4b9a: $00
    nop                                           ; $4b9b: $00
    nop                                           ; $4b9c: $00
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    nop                                           ; $4b9f: $00
    nop                                           ; $4ba0: $00
    nop                                           ; $4ba1: $00
    inc bc                                        ; $4ba2: $03
    inc bc                                        ; $4ba3: $03
    inc bc                                        ; $4ba4: $03
    inc bc                                        ; $4ba5: $03
    dec b                                         ; $4ba6: $05
    rlca                                          ; $4ba7: $07
    dec bc                                        ; $4ba8: $0b
    rrca                                          ; $4ba9: $0f
    inc c                                         ; $4baa: $0c
    rrca                                          ; $4bab: $0f
    ld a, [de]                                    ; $4bac: $1a
    rra                                           ; $4bad: $1f
    ld a, a                                       ; $4bae: $7f
    ld a, a                                       ; $4baf: $7f
    jr z, jr_020_4bf1                             ; $4bb0: $28 $3f

    inc l                                         ; $4bb2: $2c
    ccf                                           ; $4bb3: $3f
    rra                                           ; $4bb4: $1f
    rra                                           ; $4bb5: $1f
    rrca                                          ; $4bb6: $0f
    rrca                                          ; $4bb7: $0f
    add hl, bc                                    ; $4bb8: $09
    rrca                                          ; $4bb9: $0f
    rrca                                          ; $4bba: $0f
    rrca                                          ; $4bbb: $0f
    dec e                                         ; $4bbc: $1d
    inc de                                        ; $4bbd: $13
    ld e, $1e                                     ; $4bbe: $1e $1e
    nop                                           ; $4bc0: $00
    nop                                           ; $4bc1: $00
    add b                                         ; $4bc2: $80
    add b                                         ; $4bc3: $80
    ret nz                                        ; $4bc4: $c0

    ret nz                                        ; $4bc5: $c0

    and b                                         ; $4bc6: $a0
    ldh [$d0], a                                  ; $4bc7: $e0 $d0
    ldh a, [$33]                                  ; $4bc9: $f0 $33
    di                                            ; $4bcb: $f3
    ld e, e                                       ; $4bcc: $5b
    ei                                            ; $4bcd: $fb
    rst $38                                       ; $4bce: $ff
    rst $38                                       ; $4bcf: $ff
    inc d                                         ; $4bd0: $14
    db $fc                                        ; $4bd1: $fc
    inc [hl]                                      ; $4bd2: $34
    db $fc                                        ; $4bd3: $fc
    ld hl, sp-$08                                 ; $4bd4: $f8 $f8
    ldh a, [$f0]                                  ; $4bd6: $f0 $f0
    db $10                                        ; $4bd8: $10
    ldh a, [$f0]                                  ; $4bd9: $f0 $f0
    ldh a, [$b8]                                  ; $4bdb: $f0 $b8
    ret z                                         ; $4bdd: $c8

    ld a, b                                       ; $4bde: $78
    ld a, b                                       ; $4bdf: $78
    nop                                           ; $4be0: $00
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    nop                                           ; $4be3: $00
    nop                                           ; $4be4: $00
    nop                                           ; $4be5: $00
    nop                                           ; $4be6: $00
    nop                                           ; $4be7: $00
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    nop                                           ; $4beb: $00
    nop                                           ; $4bec: $00
    nop                                           ; $4bed: $00
    nop                                           ; $4bee: $00
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00

jr_020_4bf1:
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    nop                                           ; $4bf3: $00
    nop                                           ; $4bf4: $00
    nop                                           ; $4bf5: $00
    nop                                           ; $4bf6: $00
    nop                                           ; $4bf7: $00
    nop                                           ; $4bf8: $00
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    nop                                           ; $4bfe: $00
    nop                                           ; $4bff: $00
    nop                                           ; $4c00: $00
    nop                                           ; $4c01: $00
    nop                                           ; $4c02: $00
    nop                                           ; $4c03: $00
    nop                                           ; $4c04: $00
    nop                                           ; $4c05: $00
    nop                                           ; $4c06: $00
    nop                                           ; $4c07: $00
    nop                                           ; $4c08: $00
    nop                                           ; $4c09: $00
    nop                                           ; $4c0a: $00
    nop                                           ; $4c0b: $00
    nop                                           ; $4c0c: $00
    nop                                           ; $4c0d: $00
    nop                                           ; $4c0e: $00
    nop                                           ; $4c0f: $00
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    nop                                           ; $4c13: $00
    nop                                           ; $4c14: $00
    nop                                           ; $4c15: $00
    nop                                           ; $4c16: $00
    nop                                           ; $4c17: $00
    nop                                           ; $4c18: $00
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    nop                                           ; $4c1b: $00
    nop                                           ; $4c1c: $00
    nop                                           ; $4c1d: $00
    nop                                           ; $4c1e: $00
    nop                                           ; $4c1f: $00
    nop                                           ; $4c20: $00
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    ld bc, $0301                                  ; $4c24: $01 $01 $03
    inc bc                                        ; $4c27: $03
    inc b                                         ; $4c28: $04
    rlca                                          ; $4c29: $07
    ld [$080f], sp                                ; $4c2a: $08 $0f $08
    rrca                                          ; $4c2d: $0f
    rla                                           ; $4c2e: $17
    rra                                           ; $4c2f: $1f
    inc c                                         ; $4c30: $0c
    rrca                                          ; $4c31: $0f
    rra                                           ; $4c32: $1f
    rra                                           ; $4c33: $1f
    cpl                                           ; $4c34: $2f
    ccf                                           ; $4c35: $3f
    dec sp                                        ; $4c36: $3b
    ccf                                           ; $4c37: $3f
    rrca                                          ; $4c38: $0f
    rrca                                          ; $4c39: $0f
    ld b, $07                                     ; $4c3a: $06 $07
    ld bc, $0001                                  ; $4c3c: $01 $01 $00
    nop                                           ; $4c3f: $00
    nop                                           ; $4c40: $00
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    nop                                           ; $4c43: $00
    add b                                         ; $4c44: $80
    add b                                         ; $4c45: $80
    add b                                         ; $4c46: $80
    add b                                         ; $4c47: $80
    ld b, b                                       ; $4c48: $40
    ret nz                                        ; $4c49: $c0

    jr nz, @-$1e                                  ; $4c4a: $20 $e0

    inc l                                         ; $4c4c: $2c
    db $ec                                        ; $4c4d: $ec
    ld e, h                                       ; $4c4e: $5c
    db $fc                                        ; $4c4f: $fc
    ld hl, sp-$08                                 ; $4c50: $f8 $f8
    add sp, -$08                                  ; $4c52: $e8 $f8
    ldh a, [$f0]                                  ; $4c54: $f0 $f0
    and b                                         ; $4c56: $a0
    ldh [$c0], a                                  ; $4c57: $e0 $c0
    ret nz                                        ; $4c59: $c0

    ld b, b                                       ; $4c5a: $40
    ret nz                                        ; $4c5b: $c0

    add b                                         ; $4c5c: $80
    add b                                         ; $4c5d: $80
    nop                                           ; $4c5e: $00
    nop                                           ; $4c5f: $00

    db $76, $4c, $79, $4c, $7f, $4c

    add d                                         ; $4c66: $82
    ld c, h                                       ; $4c67: $4c
    adc l                                         ; $4c68: $8d
    ld c, h                                       ; $4c69: $4c
    sub h                                         ; $4c6a: $94
    ld c, h                                       ; $4c6b: $4c
    sbc h                                         ; $4c6c: $9c
    ld c, h                                       ; $4c6d: $4c
    or b                                          ; $4c6e: $b0
    ld c, h                                       ; $4c6f: $4c
    cp h                                          ; $4c70: $bc
    ld c, h                                       ; $4c71: $4c
    halt                                          ; $4c72: $76
    ld c, h                                       ; $4c73: $4c
    push bc                                       ; $4c74: $c5
    ld c, h                                       ; $4c75: $4c
    nop                                           ; $4c76: $00
    rst $38                                       ; $4c77: $ff
    db $fd                                        ; $4c78: $fd

    db $00, $1e

    ld bc, $ff1e                                  ; $4c7b: $01 $1e $ff
    nop                                           ; $4c7e: $00

    db $02, $ff

    db $fd                                        ; $4c81: $fd
    ld [bc], a                                    ; $4c82: $02
    inc c                                         ; $4c83: $0c
    inc bc                                        ; $4c84: $03
    inc c                                         ; $4c85: $0c
    inc b                                         ; $4c86: $04
    jr jr_020_4c8b                                ; $4c87: $18 $02

    inc c                                         ; $4c89: $0c
    dec b                                         ; $4c8a: $05

jr_020_4c8b:
    inc c                                         ; $4c8b: $0c
    db $fd                                        ; $4c8c: $fd
    ld [bc], a                                    ; $4c8d: $02
    jr @+$05                                      ; $4c8e: $18 $03

    jr jr_020_4c94                                ; $4c90: $18 $02

    jr @-$01                                      ; $4c92: $18 $fd

jr_020_4c94:
    nop                                           ; $4c94: $00
    ld a, [bc]                                    ; $4c95: $0a
    ld b, $1e                                     ; $4c96: $06 $1e
    nop                                           ; $4c98: $00
    ld a, [bc]                                    ; $4c99: $0a
    cp $01                                        ; $4c9a: $fe $01
    nop                                           ; $4c9c: $00
    ld a, [bc]                                    ; $4c9d: $0a
    rlca                                          ; $4c9e: $07
    ld a, [bc]                                    ; $4c9f: $0a
    nop                                           ; $4ca0: $00
    inc bc                                        ; $4ca1: $03
    ld [$000a], sp                                ; $4ca2: $08 $0a $00
    inc bc                                        ; $4ca5: $03
    rlca                                          ; $4ca6: $07
    ld a, [bc]                                    ; $4ca7: $0a
    nop                                           ; $4ca8: $00
    inc bc                                        ; $4ca9: $03
    ld [$000a], sp                                ; $4caa: $08 $0a $00
    ld a, [bc]                                    ; $4cad: $0a
    cp $01                                        ; $4cae: $fe $01
    nop                                           ; $4cb0: $00
    ld a, [bc]                                    ; $4cb1: $0a
    add hl, bc                                    ; $4cb2: $09
    ld [$0800], sp                                ; $4cb3: $08 $00 $08
    add hl, bc                                    ; $4cb6: $09
    ld [$0a00], sp                                ; $4cb7: $08 $00 $0a
    cp $01                                        ; $4cba: $fe $01
    ld [bc], a                                    ; $4cbc: $02
    ld [de], a                                    ; $4cbd: $12
    inc bc                                        ; $4cbe: $03
    ld [de], a                                    ; $4cbf: $12
    ld [bc], a                                    ; $4cc0: $02
    ld e, $05                                     ; $4cc1: $1e $05
    ld [de], a                                    ; $4cc3: $12
    db $fd                                        ; $4cc4: $fd
    ld a, [bc]                                    ; $4cc5: $0a
    ld e, $0b                                     ; $4cc6: $1e $0b
    ld e, $ff                                     ; $4cc8: $1e $ff
    nop                                           ; $4cca: $00
    dec b                                         ; $4ccb: $05
    inc b                                         ; $4ccc: $04
    db $d3                                        ; $4ccd: $d3
    ld c, h                                       ; $4cce: $4c
    ldh a, [$58]                                  ; $4ccf: $f0 $58
    db $d3                                        ; $4cd1: $d3
    ld c, h                                       ; $4cd2: $4c
    ldh a, [$4c]                                  ; $4cd3: $f0 $4c
    ldh a, [rKEY1]                                ; $4cd5: $f0 $4d
    ldh a, [$4e]                                  ; $4cd7: $f0 $4e
    ldh a, [rVBK]                                 ; $4cd9: $f0 $4f
    ldh a, [$50]                                  ; $4cdb: $f0 $50
    ldh a, [rHDMA1]                               ; $4cdd: $f0 $51
    ldh a, [rHDMA2]                               ; $4cdf: $f0 $52
    ldh a, [rHDMA3]                               ; $4ce1: $f0 $53
    ldh a, [rHDMA4]                               ; $4ce3: $f0 $54
    ldh a, [rHDMA5]                               ; $4ce5: $f0 $55
    ldh a, [rRP]                                  ; $4ce7: $f0 $56
    ldh a, [$57]                                  ; $4ce9: $f0 $57
    nop                                           ; $4ceb: $00
    nop                                           ; $4cec: $00
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    inc bc                                        ; $4cf2: $03
    inc bc                                        ; $4cf3: $03

jr_020_4cf4:
    inc b                                         ; $4cf4: $04
    rlca                                          ; $4cf5: $07
    inc b                                         ; $4cf6: $04
    rlca                                          ; $4cf7: $07
    ld [$0d0f], sp                                ; $4cf8: $08 $0f $0d
    rrca                                          ; $4cfb: $0f

Call_020_4cfc:
    rrca                                          ; $4cfc: $0f
    dec bc                                        ; $4cfd: $0b
    rrca                                          ; $4cfe: $0f
    ld a, [bc]                                    ; $4cff: $0a
    dec a                                         ; $4d00: $3d
    scf                                           ; $4d01: $37
    ld c, a                                       ; $4d02: $4f
    ld a, [hl]                                    ; $4d03: $7e
    ld d, l                                       ; $4d04: $55
    ld [hl], a                                    ; $4d05: $77
    ld [hl+], a                                   ; $4d06: $22
    inc hl                                        ; $4d07: $23
    rlca                                          ; $4d08: $07
    dec b                                         ; $4d09: $05
    dec bc                                        ; $4d0a: $0b
    rrca                                          ; $4d0b: $0f
    add hl, bc                                    ; $4d0c: $09

jr_020_4d0d:
    rrca                                          ; $4d0d: $0f
    ld b, $06                                     ; $4d0e: $06 $06
    ret nz                                        ; $4d10: $c0

    ret nz                                        ; $4d11: $c0

    jr nz, jr_020_4cf4                            ; $4d12: $20 $e0

    ld d, b                                       ; $4d14: $50
    ldh a, [$f0]                                  ; $4d15: $f0 $f0
    ldh a, [$f0]                                  ; $4d17: $f0 $f0
    sub b                                         ; $4d19: $90
    ret nc                                        ; $4d1a: $d0

    jr nc, jr_020_4d0d                            ; $4d1b: $30 $f0

    ldh a, [$f0]                                  ; $4d1d: $f0 $f0
    ld [hl], b                                    ; $4d1f: $70
    ldh a, [rNR10]                                ; $4d20: $f0 $10
    ldh a, [rNR10]                                ; $4d22: $f0 $10
    ldh [rNR41], a                                ; $4d24: $e0 $20
    ret nz                                        ; $4d26: $c0

    ret nz                                        ; $4d27: $c0

    ldh [$60], a                                  ; $4d28: $e0 $60
    ldh a, [$d0]                                  ; $4d2a: $f0 $d0
    and b                                         ; $4d2c: $a0
    ldh [$c0], a                                  ; $4d2d: $e0 $c0
    ret nz                                        ; $4d2f: $c0

    ld bc, $0201                                  ; $4d30: $01 $01 $02
    inc bc                                        ; $4d33: $03
    dec b                                         ; $4d34: $05
    rlca                                          ; $4d35: $07
    rlca                                          ; $4d36: $07
    ld b, $0f                                     ; $4d37: $06 $0f
    inc c                                         ; $4d39: $0c
    ld e, $15                                     ; $4d3a: $1e $15
    rra                                           ; $4d3c: $1f
    rla                                           ; $4d3d: $17
    rrca                                          ; $4d3e: $0f
    dec bc                                        ; $4d3f: $0b
    rla                                           ; $4d40: $17
    inc e                                         ; $4d41: $1c
    ccf                                           ; $4d42: $3f
    inc l                                         ; $4d43: $2c
    dec sp                                        ; $4d44: $3b
    ld a, $27                                     ; $4d45: $3e $27
    daa                                           ; $4d47: $27
    ld h, a                                       ; $4d48: $67
    ld h, h                                       ; $4d49: $64
    ld l, a                                       ; $4d4a: $6f
    ld l, e                                       ; $4d4b: $6b

jr_020_4d4c:
    inc b                                         ; $4d4c: $04
    rlca                                          ; $4d4d: $07
    inc bc                                        ; $4d4e: $03
    inc bc                                        ; $4d4f: $03
    ret c                                         ; $4d50: $d8

    ret c                                         ; $4d51: $d8

    jr z, jr_020_4d4c                             ; $4d52: $28 $f8

    ld d, b                                       ; $4d54: $50
    ldh a, [$f0]                                  ; $4d55: $f0 $f0
    or b                                          ; $4d57: $b0
    ld hl, sp+$18                                 ; $4d58: $f8 $18
    cp h                                          ; $4d5a: $bc
    ld d, h                                       ; $4d5b: $54
    db $fc                                        ; $4d5c: $fc
    db $f4                                        ; $4d5d: $f4
    ld hl, sp+$68                                 ; $4d5e: $f8 $68
    db $f4                                        ; $4d60: $f4
    sbc h                                         ; $4d61: $9c
    db $f4                                        ; $4d62: $f4
    inc e                                         ; $4d63: $1c
    xor $3a                                       ; $4d64: $ee $3a
    cp $fa                                        ; $4d66: $fe $fa
    db $fc                                        ; $4d68: $fc
    sbc h                                         ; $4d69: $9c
    ldh a, [rSVBK]                                ; $4d6a: $f0 $70
    ldh [$e0], a                                  ; $4d6c: $e0 $e0
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    inc bc                                        ; $4d70: $03
    inc bc                                        ; $4d71: $03
    inc b                                         ; $4d72: $04
    rlca                                          ; $4d73: $07
    ld a, [bc]                                    ; $4d74: $0a
    rrca                                          ; $4d75: $0f

jr_020_4d76:
    rrca                                          ; $4d76: $0f
    rrca                                          ; $4d77: $0f

jr_020_4d78:
    rrca                                          ; $4d78: $0f
    add hl, bc                                    ; $4d79: $09
    dec bc                                        ; $4d7a: $0b
    inc c                                         ; $4d7b: $0c
    rrca                                          ; $4d7c: $0f
    rrca                                          ; $4d7d: $0f
    rrca                                          ; $4d7e: $0f
    ld c, $0f                                     ; $4d7f: $0e $0f
    ld [$080f], sp                                ; $4d81: $08 $0f $08
    rlca                                          ; $4d84: $07
    inc b                                         ; $4d85: $04
    dec bc                                        ; $4d86: $0b
    rrca                                          ; $4d87: $0f
    rra                                           ; $4d88: $1f
    ld d, $0b                                     ; $4d89: $16 $0b
    rrca                                          ; $4d8b: $0f
    add hl, bc                                    ; $4d8c: $09
    rrca                                          ; $4d8d: $0f
    rlca                                          ; $4d8e: $07
    rlca                                          ; $4d8f: $07
    nop                                           ; $4d90: $00
    nop                                           ; $4d91: $00
    ret nz                                        ; $4d92: $c0

    ret nz                                        ; $4d93: $c0

    jr nz, jr_020_4d76                            ; $4d94: $20 $e0

    jr nz, jr_020_4d78                            ; $4d96: $20 $e0

    db $10                                        ; $4d98: $10
    ldh a, [$b0]                                  ; $4d99: $f0 $b0
    ldh a, [$f0]                                  ; $4d9b: $f0 $f0
    ret nc                                        ; $4d9d: $d0

    ldh a, [$50]                                  ; $4d9e: $f0 $50
    cp h                                          ; $4da0: $bc
    db $ec                                        ; $4da1: $ec
    ld a, [c]                                     ; $4da2: $f2
    ld a, [hl]                                    ; $4da3: $7e
    xor d                                         ; $4da4: $aa
    xor $44                                       ; $4da5: $ee $44
    call nz, $e0e0                                ; $4da7: $c4 $e0 $e0
    ldh a, [rSVBK]                                ; $4daa: $f0 $70
    ldh a, [$f0]                                  ; $4dac: $f0 $f0
    ld h, b                                       ; $4dae: $60
    ld h, b                                       ; $4daf: $60
    inc bc                                        ; $4db0: $03
    inc bc                                        ; $4db1: $03
    inc b                                         ; $4db2: $04
    rlca                                          ; $4db3: $07
    ld [$080f], sp                                ; $4db4: $08 $0f $08
    rrca                                          ; $4db7: $0f

jr_020_4db8:
    jr @+$21                                      ; $4db8: $18 $1f

    jr c, @+$31                                   ; $4dba: $38 $2f

    jr c, jr_020_4ded                             ; $4dbc: $38 $2f

    dec e                                         ; $4dbe: $1d
    rla                                           ; $4dbf: $17
    ld l, d                                       ; $4dc0: $6a
    ld a, a                                       ; $4dc1: $7f
    ld [hl], e                                    ; $4dc2: $73
    ld e, a                                       ; $4dc3: $5f

jr_020_4dc4:
    add hl, sp                                    ; $4dc4: $39
    ccf                                           ; $4dc5: $3f
    rrca                                          ; $4dc6: $0f
    rrca                                          ; $4dc7: $0f
    rrca                                          ; $4dc8: $0f
    add hl, bc                                    ; $4dc9: $09

jr_020_4dca:
    rra                                           ; $4dca: $1f
    ld d, $09                                     ; $4dcb: $16 $09
    rrca                                          ; $4dcd: $0f
    ld b, $06                                     ; $4dce: $06 $06
    add b                                         ; $4dd0: $80
    add b                                         ; $4dd1: $80
    ld b, b                                       ; $4dd2: $40
    ret nz                                        ; $4dd3: $c0

    jr nz, @-$1e                                  ; $4dd4: $20 $e0

    jr nz, jr_020_4db8                            ; $4dd6: $20 $e0

    jr nc, jr_020_4dca                            ; $4dd8: $30 $f0

jr_020_4dda:
    jr c, jr_020_4dc4                             ; $4dda: $38 $e8

    cp b                                          ; $4ddc: $b8
    add sp, $70                                   ; $4ddd: $e8 $70
    ret nc                                        ; $4ddf: $d0

    jr z, jr_020_4dda                             ; $4de0: $28 $f8

    ld e, e                                       ; $4de2: $5b
    ei                                            ; $4de3: $fb
    cp a                                          ; $4de4: $bf
    rst $30                                       ; $4de5: $f7
    rst $38                                       ; $4de6: $ff
    rst $20                                       ; $4de7: $e7
    ld hl, sp+$38                                 ; $4de8: $f8 $38
    ldh [$e0], a                                  ; $4dea: $e0 $e0
    ret nz                                        ; $4dec: $c0

jr_020_4ded:
    ret nz                                        ; $4ded: $c0

    nop                                           ; $4dee: $00
    nop                                           ; $4def: $00
    nop                                           ; $4df0: $00
    nop                                           ; $4df1: $00
    inc bc                                        ; $4df2: $03
    inc bc                                        ; $4df3: $03

jr_020_4df4:
    inc b                                         ; $4df4: $04
    rlca                                          ; $4df5: $07
    inc b                                         ; $4df6: $04
    rlca                                          ; $4df7: $07
    ld [$0d0f], sp                                ; $4df8: $08 $0f $0d
    rrca                                          ; $4dfb: $0f
    rrca                                          ; $4dfc: $0f
    dec bc                                        ; $4dfd: $0b
    rrca                                          ; $4dfe: $0f
    ld a, [bc]                                    ; $4dff: $0a
    dec a                                         ; $4e00: $3d
    scf                                           ; $4e01: $37
    ld c, a                                       ; $4e02: $4f
    ld a, [hl]                                    ; $4e03: $7e
    ld d, l                                       ; $4e04: $55
    ld [hl], a                                    ; $4e05: $77
    ld [hl+], a                                   ; $4e06: $22
    inc hl                                        ; $4e07: $23
    rlca                                          ; $4e08: $07
    rlca                                          ; $4e09: $07
    rrca                                          ; $4e0a: $0f
    ld c, $0f                                     ; $4e0b: $0e $0f

jr_020_4e0d:
    rrca                                          ; $4e0d: $0f
    ld b, $06                                     ; $4e0e: $06 $06
    ret nz                                        ; $4e10: $c0

    ret nz                                        ; $4e11: $c0

    jr nz, jr_020_4df4                            ; $4e12: $20 $e0

    ld d, b                                       ; $4e14: $50
    ldh a, [$f0]                                  ; $4e15: $f0 $f0
    ldh a, [$f0]                                  ; $4e17: $f0 $f0
    sub b                                         ; $4e19: $90
    ret nc                                        ; $4e1a: $d0

    jr nc, jr_020_4e0d                            ; $4e1b: $30 $f0

    ldh a, [$f0]                                  ; $4e1d: $f0 $f0
    ld [hl], b                                    ; $4e1f: $70
    ldh a, [rNR10]                                ; $4e20: $f0 $10
    ldh a, [rNR10]                                ; $4e22: $f0 $10
    and $26                                       ; $4e24: $e6 $26
    sub $f6                                       ; $4e26: $d6 $f6
    db $fc                                        ; $4e28: $fc
    ld l, h                                       ; $4e29: $6c
    ret nc                                        ; $4e2a: $d0

    ldh a, [$90]                                  ; $4e2b: $f0 $90
    ldh a, [$e0]                                  ; $4e2d: $f0 $e0
    ldh [$0d], a                                  ; $4e2f: $e0 $0d
    dec c                                         ; $4e31: $0d
    ld a, [bc]                                    ; $4e32: $0a
    rrca                                          ; $4e33: $0f

jr_020_4e34:
    dec b                                         ; $4e34: $05
    rlca                                          ; $4e35: $07
    rlca                                          ; $4e36: $07
    ld b, $0f                                     ; $4e37: $06 $0f
    inc c                                         ; $4e39: $0c
    ld e, $15                                     ; $4e3a: $1e $15
    rra                                           ; $4e3c: $1f
    rla                                           ; $4e3d: $17
    rrca                                          ; $4e3e: $0f
    dec bc                                        ; $4e3f: $0b
    rla                                           ; $4e40: $17
    inc e                                         ; $4e41: $1c
    rla                                           ; $4e42: $17
    inc e                                         ; $4e43: $1c
    dec de                                        ; $4e44: $1b
    ld e, $7f                                     ; $4e45: $1e $7f
    ld l, a                                       ; $4e47: $6f
    ld a, a                                       ; $4e48: $7f
    ld a, h                                       ; $4e49: $7c
    rlca                                          ; $4e4a: $07
    rlca                                          ; $4e4b: $07
    inc bc                                        ; $4e4c: $03
    inc bc                                        ; $4e4d: $03
    nop                                           ; $4e4e: $00
    nop                                           ; $4e4f: $00
    ret nz                                        ; $4e50: $c0

    ret nz                                        ; $4e51: $c0

    jr nz, jr_020_4e34                            ; $4e52: $20 $e0

    ld d, b                                       ; $4e54: $50
    ldh a, [$f0]                                  ; $4e55: $f0 $f0
    or b                                          ; $4e57: $b0
    ld hl, sp+$18                                 ; $4e58: $f8 $18
    cp h                                          ; $4e5a: $bc
    ld d, h                                       ; $4e5b: $54
    db $fc                                        ; $4e5c: $fc
    db $f4                                        ; $4e5d: $f4
    ld hl, sp+$68                                 ; $4e5e: $f8 $68
    db $f4                                        ; $4e60: $f4
    sbc h                                         ; $4e61: $9c
    cp $1a                                        ; $4e62: $fe $1a
    xor $3e                                       ; $4e64: $ee $3e
    ldh a, [$f0]                                  ; $4e66: $f0 $f0
    ldh a, [$90]                                  ; $4e68: $f0 $90
    ld hl, sp+$68                                 ; $4e6a: $f8 $68
    sub b                                         ; $4e6c: $90
    ldh a, [$60]                                  ; $4e6d: $f0 $60
    ld h, b                                       ; $4e6f: $60
    inc bc                                        ; $4e70: $03
    inc bc                                        ; $4e71: $03
    inc b                                         ; $4e72: $04
    rlca                                          ; $4e73: $07
    ld a, [bc]                                    ; $4e74: $0a
    rrca                                          ; $4e75: $0f

jr_020_4e76:
    rrca                                          ; $4e76: $0f
    rrca                                          ; $4e77: $0f

jr_020_4e78:
    rrca                                          ; $4e78: $0f
    add hl, bc                                    ; $4e79: $09
    dec bc                                        ; $4e7a: $0b
    inc c                                         ; $4e7b: $0c
    rrca                                          ; $4e7c: $0f
    rrca                                          ; $4e7d: $0f
    rrca                                          ; $4e7e: $0f
    ld c, $0f                                     ; $4e7f: $0e $0f
    ld [$080f], sp                                ; $4e81: $08 $0f $08
    ld h, a                                       ; $4e84: $67
    ld h, h                                       ; $4e85: $64
    ld [hl], e                                    ; $4e86: $73
    ld [hl], e                                    ; $4e87: $73
    rra                                           ; $4e88: $1f
    ld e, $0f                                     ; $4e89: $1e $0f
    dec bc                                        ; $4e8b: $0b
    dec b                                         ; $4e8c: $05
    rlca                                          ; $4e8d: $07
    inc bc                                        ; $4e8e: $03
    inc bc                                        ; $4e8f: $03
    nop                                           ; $4e90: $00
    nop                                           ; $4e91: $00
    ret nz                                        ; $4e92: $c0

    ret nz                                        ; $4e93: $c0

    jr nz, jr_020_4e76                            ; $4e94: $20 $e0

    jr nz, jr_020_4e78                            ; $4e96: $20 $e0

    db $10                                        ; $4e98: $10
    ldh a, [$b0]                                  ; $4e99: $f0 $b0
    ldh a, [$f0]                                  ; $4e9b: $f0 $f0
    ret nc                                        ; $4e9d: $d0

    ldh a, [$50]                                  ; $4e9e: $f0 $50
    cp h                                          ; $4ea0: $bc
    db $ec                                        ; $4ea1: $ec
    ld a, [c]                                     ; $4ea2: $f2
    ld a, [hl]                                    ; $4ea3: $7e
    xor d                                         ; $4ea4: $aa
    xor $44                                       ; $4ea5: $ee $44
    call nz, $a0e0                                ; $4ea7: $c4 $e0 $a0
    ret nc                                        ; $4eaa: $d0

    ldh a, [$90]                                  ; $4eab: $f0 $90
    ldh a, [$60]                                  ; $4ead: $f0 $60
    ld h, b                                       ; $4eaf: $60
    inc bc                                        ; $4eb0: $03
    inc bc                                        ; $4eb1: $03
    inc b                                         ; $4eb2: $04
    rlca                                          ; $4eb3: $07
    ld [$080f], sp                                ; $4eb4: $08 $0f $08
    rrca                                          ; $4eb7: $0f

jr_020_4eb8:
    jr jr_020_4ed9                                ; $4eb8: $18 $1f

    jr c, @+$31                                   ; $4eba: $38 $2f

    ld a, [hl-]                                   ; $4ebc: $3a
    cpl                                           ; $4ebd: $2f
    dec e                                         ; $4ebe: $1d
    rla                                           ; $4ebf: $17
    jr z, jr_020_4f01                             ; $4ec0: $28 $3f

    dec [hl]                                      ; $4ec2: $35
    ccf                                           ; $4ec3: $3f
    ld a, e                                       ; $4ec4: $7b
    ld e, a                                       ; $4ec5: $5f
    ld a, a                                       ; $4ec6: $7f
    ld c, a                                       ; $4ec7: $4f
    ccf                                           ; $4ec8: $3f
    add hl, sp                                    ; $4ec9: $39
    rrca                                          ; $4eca: $0f
    ld c, $07                                     ; $4ecb: $0e $07
    rlca                                          ; $4ecd: $07

jr_020_4ece:
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    add b                                         ; $4ed0: $80
    add b                                         ; $4ed1: $80
    ld b, b                                       ; $4ed2: $40
    ret nz                                        ; $4ed3: $c0

    jr nz, @-$1e                                  ; $4ed4: $20 $e0

    jr nz, jr_020_4eb8                            ; $4ed6: $20 $e0

    inc sp                                        ; $4ed8: $33

jr_020_4ed9:
    di                                            ; $4ed9: $f3
    dec sp                                        ; $4eda: $3b
    db $eb                                        ; $4edb: $eb
    dec sp                                        ; $4edc: $3b
    db $eb                                        ; $4edd: $eb

jr_020_4ede:
    halt                                          ; $4ede: $76
    sub $ac                                       ; $4edf: $d6 $ac
    db $fc                                        ; $4ee1: $fc
    sbc h                                         ; $4ee2: $9c
    db $f4                                        ; $4ee3: $f4
    jr c, jr_020_4ede                             ; $4ee4: $38 $f8

    ldh [$e0], a                                  ; $4ee6: $e0 $e0
    ldh [rNR41], a                                ; $4ee8: $e0 $20
    ldh a, [$d0]                                  ; $4eea: $f0 $d0
    jr nz, jr_020_4ece                            ; $4eec: $20 $e0

    ret nz                                        ; $4eee: $c0

    ret nz                                        ; $4eef: $c0

    nop                                           ; $4ef0: $00
    nop                                           ; $4ef1: $00
    ld bc, $0601                                  ; $4ef2: $01 $01 $06
    rlca                                          ; $4ef5: $07
    inc b                                         ; $4ef6: $04
    rlca                                          ; $4ef7: $07
    ld [$0d0f], sp                                ; $4ef8: $08 $0f $0d
    rrca                                          ; $4efb: $0f
    rrca                                          ; $4efc: $0f
    dec bc                                        ; $4efd: $0b
    ccf                                           ; $4efe: $3f
    ld a, [hl-]                                   ; $4eff: $3a
    ld c, l                                       ; $4f00: $4d

jr_020_4f01:
    ld a, a                                       ; $4f01: $7f
    ld d, a                                       ; $4f02: $57
    halt                                          ; $4f03: $76
    dec h                                         ; $4f04: $25
    daa                                           ; $4f05: $27
    rrca                                          ; $4f06: $0f
    rrca                                          ; $4f07: $0f
    rrca                                          ; $4f08: $0f
    ld c, $0f                                     ; $4f09: $0e $0f
    dec bc                                        ; $4f0b: $0b
    inc b                                         ; $4f0c: $04
    rlca                                          ; $4f0d: $07
    rlca                                          ; $4f0e: $07
    rlca                                          ; $4f0f: $07
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    ldh [$e0], a                                  ; $4f12: $e0 $e0
    sub b                                         ; $4f14: $90
    ldh a, [rOBP0]                                ; $4f15: $f0 $48
    ld hl, sp-$18                                 ; $4f17: $f8 $e8
    cp b                                          ; $4f19: $b8
    ldh a, [rNR10]                                ; $4f1a: $f0 $10
    ret nc                                        ; $4f1c: $d0

    or b                                          ; $4f1d: $b0
    ldh a, [$f0]                                  ; $4f1e: $f0 $f0
    ldh a, [rSVBK]                                ; $4f20: $f0 $70
    ldh a, [rNR10]                                ; $4f22: $f0 $10
    ldh [rNR41], a                                ; $4f24: $e0 $20
    ret nz                                        ; $4f26: $c0

    ret nz                                        ; $4f27: $c0

    add b                                         ; $4f28: $80
    add b                                         ; $4f29: $80
    ret nz                                        ; $4f2a: $c0

    ld b, b                                       ; $4f2b: $40
    or $f6                                        ; $4f2c: $f6 $f6
    sbc [hl]                                      ; $4f2e: $9e
    sbc [hl]                                      ; $4f2f: $9e
    nop                                           ; $4f30: $00
    nop                                           ; $4f31: $00
    dec c                                         ; $4f32: $0d
    dec c                                         ; $4f33: $0d
    ld a, [bc]                                    ; $4f34: $0a
    rrca                                          ; $4f35: $0f

jr_020_4f36:
    inc b                                         ; $4f36: $04
    rlca                                          ; $4f37: $07
    dec c                                         ; $4f38: $0d
    rrca                                          ; $4f39: $0f
    rra                                           ; $4f3a: $1f
    ld d, $1f                                     ; $4f3b: $16 $1f
    inc d                                         ; $4f3d: $14
    rrca                                          ; $4f3e: $0f
    dec bc                                        ; $4f3f: $0b
    rla                                           ; $4f40: $17
    dec e                                         ; $4f41: $1d
    rrca                                          ; $4f42: $0f
    inc c                                         ; $4f43: $0c
    dec bc                                        ; $4f44: $0b
    ld c, $07                                     ; $4f45: $0e $07
    dec b                                         ; $4f47: $05
    rlca                                          ; $4f48: $07
    ld b, $07                                     ; $4f49: $06 $07
    rlca                                          ; $4f4b: $07
    add hl, bc                                    ; $4f4c: $09
    rrca                                          ; $4f4d: $0f
    rrca                                          ; $4f4e: $0f
    rrca                                          ; $4f4f: $0f
    nop                                           ; $4f50: $00
    nop                                           ; $4f51: $00
    ret nz                                        ; $4f52: $c0

    ret nz                                        ; $4f53: $c0

    jr nz, jr_020_4f36                            ; $4f54: $20 $e0

    ld d, b                                       ; $4f56: $50
    ldh a, [$f8]                                  ; $4f57: $f0 $f8
    cp b                                          ; $4f59: $b8
    db $fc                                        ; $4f5a: $fc
    inc d                                         ; $4f5b: $14
    ld e, h                                       ; $4f5c: $5c
    or h                                          ; $4f5d: $b4
    ld hl, sp-$08                                 ; $4f5e: $f8 $f8
    db $f4                                        ; $4f60: $f4
    cp h                                          ; $4f61: $bc
    ld hl, sp+$58                                 ; $4f62: $f8 $58
    ldh a, [$30]                                  ; $4f64: $f0 $30
    ldh a, [$d0]                                  ; $4f66: $f0 $d0
    ldh a, [$b0]                                  ; $4f68: $f0 $b0
    ldh a, [$f0]                                  ; $4f6a: $f0 $f0
    ret z                                         ; $4f6c: $c8

    ld hl, sp-$08                                 ; $4f6d: $f8 $f8
    ld hl, sp+$00                                 ; $4f6f: $f8 $00
    nop                                           ; $4f71: $00
    rlca                                          ; $4f72: $07
    rlca                                          ; $4f73: $07
    add hl, bc                                    ; $4f74: $09
    rrca                                          ; $4f75: $0f
    ld [de], a                                    ; $4f76: $12
    rra                                           ; $4f77: $1f
    rla                                           ; $4f78: $17
    dec e                                         ; $4f79: $1d
    rrca                                          ; $4f7a: $0f
    ld [$0d0b], sp                                ; $4f7b: $08 $0b $0d
    rrca                                          ; $4f7e: $0f
    rrca                                          ; $4f7f: $0f
    rrca                                          ; $4f80: $0f
    ld c, $0f                                     ; $4f81: $0e $0f
    ld [$0407], sp                                ; $4f83: $08 $07 $04
    inc bc                                        ; $4f86: $03
    inc bc                                        ; $4f87: $03
    ld bc, $0301                                  ; $4f88: $01 $01 $03
    ld [bc], a                                    ; $4f8b: $02
    ld l, a                                       ; $4f8c: $6f
    ld l, a                                       ; $4f8d: $6f
    ld a, c                                       ; $4f8e: $79
    ld a, c                                       ; $4f8f: $79
    nop                                           ; $4f90: $00
    nop                                           ; $4f91: $00
    add b                                         ; $4f92: $80
    add b                                         ; $4f93: $80
    ld h, b                                       ; $4f94: $60
    ldh [rNR41], a                                ; $4f95: $e0 $20
    ldh [rNR10], a                                ; $4f97: $e0 $10
    ldh a, [$b0]                                  ; $4f99: $f0 $b0
    ldh a, [$f0]                                  ; $4f9b: $f0 $f0
    ret nc                                        ; $4f9d: $d0

    db $fc                                        ; $4f9e: $fc
    ld e, h                                       ; $4f9f: $5c
    or d                                          ; $4fa0: $b2
    cp $ea                                        ; $4fa1: $fe $ea
    ld l, [hl]                                    ; $4fa3: $6e
    and h                                         ; $4fa4: $a4
    db $e4                                        ; $4fa5: $e4
    ldh a, [$d0]                                  ; $4fa6: $f0 $d0
    ldh a, [$b0]                                  ; $4fa8: $f0 $b0
    ldh a, [$d0]                                  ; $4faa: $f0 $d0
    jr c, @-$16                                   ; $4fac: $38 $e8

    ldh a, [$f0]                                  ; $4fae: $f0 $f0
    rlca                                          ; $4fb0: $07
    rlca                                          ; $4fb1: $07
    inc c                                         ; $4fb2: $0c
    rrca                                          ; $4fb3: $0f
    ld [$100f], sp                                ; $4fb4: $08 $0f $10
    rra                                           ; $4fb7: $1f
    jr jr_020_4fd9                                ; $4fb8: $18 $1f

    jr jr_020_4fdb                                ; $4fba: $18 $1f

    inc e                                         ; $4fbc: $1c
    rla                                           ; $4fbd: $17
    inc e                                         ; $4fbe: $1c
    rla                                           ; $4fbf: $17
    ld c, $0b                                     ; $4fc0: $0e $0b
    dec c                                         ; $4fc2: $0d
    rrca                                          ; $4fc3: $0f
    ld b, $07                                     ; $4fc4: $06 $07
    dec b                                         ; $4fc6: $05
    rlca                                          ; $4fc7: $07
    rlca                                          ; $4fc8: $07
    ld b, $07                                     ; $4fc9: $06 $07
    dec b                                         ; $4fcb: $05
    add hl, bc                                    ; $4fcc: $09
    rrca                                          ; $4fcd: $0f
    rrca                                          ; $4fce: $0f
    rrca                                          ; $4fcf: $0f
    add b                                         ; $4fd0: $80
    add b                                         ; $4fd1: $80
    ld h, b                                       ; $4fd2: $60
    ldh [$30], a                                  ; $4fd3: $e0 $30
    ldh a, [rNR10]                                ; $4fd5: $f0 $10
    ldh a, [rNR10]                                ; $4fd7: $f0 $10

jr_020_4fd9:
    ldh a, [rSVBK]                                ; $4fd9: $f0 $70

jr_020_4fdb:
    ldh a, [$98]                                  ; $4fdb: $f0 $98
    ld hl, sp-$78                                 ; $4fdd: $f8 $88
    ld hl, sp-$28                                 ; $4fdf: $f8 $d8
    ld hl, sp-$10                                 ; $4fe1: $f8 $f0
    ldh a, [rNR41]                                ; $4fe3: $f0 $20
    ldh [$d0], a                                  ; $4fe5: $e0 $d0
    ldh a, [$f0]                                  ; $4fe7: $f0 $f0
    jr nc, jr_020_4fdb                            ; $4fe9: $30 $f0

    ret nc                                        ; $4feb: $d0

    ret z                                         ; $4fec: $c8

    ld hl, sp-$08                                 ; $4fed: $f8 $f8
    ld hl, sp+$00                                 ; $4fef: $f8 $00
    nop                                           ; $4ff1: $00
    ld bc, $0601                                  ; $4ff2: $01 $01 $06
    rlca                                          ; $4ff5: $07
    inc b                                         ; $4ff6: $04
    rlca                                          ; $4ff7: $07
    ld [$0d0f], sp                                ; $4ff8: $08 $0f $0d
    rrca                                          ; $4ffb: $0f
    rrca                                          ; $4ffc: $0f
    dec bc                                        ; $4ffd: $0b
    ccf                                           ; $4ffe: $3f
    ld a, [hl-]                                   ; $4fff: $3a
    ld c, l                                       ; $5000: $4d
    ld a, a                                       ; $5001: $7f
    ld d, a                                       ; $5002: $57
    halt                                          ; $5003: $76
    dec h                                         ; $5004: $25
    daa                                           ; $5005: $27
    rrca                                          ; $5006: $0f
    dec bc                                        ; $5007: $0b
    rrca                                          ; $5008: $0f
    dec c                                         ; $5009: $0d
    rrca                                          ; $500a: $0f
    dec bc                                        ; $500b: $0b
    inc b                                         ; $500c: $04
    rlca                                          ; $500d: $07
    rlca                                          ; $500e: $07
    rlca                                          ; $500f: $07
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    ldh [$e0], a                                  ; $5012: $e0 $e0
    sub b                                         ; $5014: $90
    ldh a, [rOBP0]                                ; $5015: $f0 $48
    ld hl, sp-$18                                 ; $5017: $f8 $e8
    cp b                                          ; $5019: $b8
    ldh a, [rNR10]                                ; $501a: $f0 $10
    ret nc                                        ; $501c: $d0

    or b                                          ; $501d: $b0
    ldh a, [$f0]                                  ; $501e: $f0 $f0
    ldh a, [rSVBK]                                ; $5020: $f0 $70
    ldh a, [rNR10]                                ; $5022: $f0 $10
    ldh [rNR41], a                                ; $5024: $e0 $20
    ret nz                                        ; $5026: $c0

    ret nz                                        ; $5027: $c0

    add b                                         ; $5028: $80
    add b                                         ; $5029: $80
    ret nz                                        ; $502a: $c0

    ret nz                                        ; $502b: $c0

    and b                                         ; $502c: $a0
    ldh [$e0], a                                  ; $502d: $e0 $e0
    ldh [rP1], a                                  ; $502f: $e0 $00
    nop                                           ; $5031: $00
    dec c                                         ; $5032: $0d
    dec c                                         ; $5033: $0d
    ld a, [bc]                                    ; $5034: $0a
    rrca                                          ; $5035: $0f

jr_020_5036:
    inc b                                         ; $5036: $04
    rlca                                          ; $5037: $07
    dec c                                         ; $5038: $0d
    rrca                                          ; $5039: $0f
    rra                                           ; $503a: $1f
    ld d, $1f                                     ; $503b: $16 $1f
    inc d                                         ; $503d: $14
    rrca                                          ; $503e: $0f
    dec bc                                        ; $503f: $0b
    rla                                           ; $5040: $17
    dec e                                         ; $5041: $1d
    rrca                                          ; $5042: $0f
    inc c                                         ; $5043: $0c
    dec de                                        ; $5044: $1b
    ld e, $1f                                     ; $5045: $1e $1f
    dec e                                         ; $5047: $1d
    rrca                                          ; $5048: $0f
    inc c                                         ; $5049: $0c
    rlca                                          ; $504a: $07
    rlca                                          ; $504b: $07
    add hl, bc                                    ; $504c: $09
    rrca                                          ; $504d: $0f
    ld c, $0e                                     ; $504e: $0e $0e
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    ret nz                                        ; $5052: $c0

    ret nz                                        ; $5053: $c0

    jr nz, jr_020_5036                            ; $5054: $20 $e0

    ld d, b                                       ; $5056: $50
    ldh a, [$f8]                                  ; $5057: $f0 $f8
    cp b                                          ; $5059: $b8
    db $fc                                        ; $505a: $fc
    inc d                                         ; $505b: $14
    ld e, h                                       ; $505c: $5c
    or h                                          ; $505d: $b4
    ld hl, sp-$08                                 ; $505e: $f8 $f8
    db $f4                                        ; $5060: $f4
    cp h                                          ; $5061: $bc
    ld hl, sp+$58                                 ; $5062: $f8 $58
    ldh a, [$30]                                  ; $5064: $f0 $30
    ret nc                                        ; $5066: $d0

    ldh a, [$b0]                                  ; $5067: $f0 $b0
    ldh a, [$f0]                                  ; $5069: $f0 $f0
    ldh a, [$c8]                                  ; $506b: $f0 $c8
    ld hl, sp+$78                                 ; $506d: $f8 $78
    ld a, b                                       ; $506f: $78
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    rlca                                          ; $5072: $07
    rlca                                          ; $5073: $07
    add hl, bc                                    ; $5074: $09
    rrca                                          ; $5075: $0f
    ld [de], a                                    ; $5076: $12
    rra                                           ; $5077: $1f
    rla                                           ; $5078: $17
    dec e                                         ; $5079: $1d
    rrca                                          ; $507a: $0f
    ld [$0d0b], sp                                ; $507b: $08 $0b $0d
    rrca                                          ; $507e: $0f
    rrca                                          ; $507f: $0f
    rrca                                          ; $5080: $0f
    ld c, $0f                                     ; $5081: $0e $0f
    ld [$0c0f], sp                                ; $5083: $08 $0f $0c
    rlca                                          ; $5086: $07
    rlca                                          ; $5087: $07
    inc bc                                        ; $5088: $03
    ld [bc], a                                    ; $5089: $02
    ld bc, $0101                                  ; $508a: $01 $01 $01
    ld bc, $0101                                  ; $508d: $01 $01 $01
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    add b                                         ; $5092: $80
    add b                                         ; $5093: $80
    ld h, b                                       ; $5094: $60
    ldh [rNR41], a                                ; $5095: $e0 $20
    ldh [rNR10], a                                ; $5097: $e0 $10
    ldh a, [$b0]                                  ; $5099: $f0 $b0
    ldh a, [$f0]                                  ; $509b: $f0 $f0
    ret nc                                        ; $509d: $d0

    db $fc                                        ; $509e: $fc
    ld e, h                                       ; $509f: $5c
    or d                                          ; $50a0: $b2
    cp $ea                                        ; $50a1: $fe $ea
    ld l, [hl]                                    ; $50a3: $6e
    and h                                         ; $50a4: $a4
    db $e4                                        ; $50a5: $e4
    ldh a, [$d0]                                  ; $50a6: $f0 $d0
    ldh a, [$b0]                                  ; $50a8: $f0 $b0
    ldh a, [$d0]                                  ; $50aa: $f0 $d0
    jr c, @-$16                                   ; $50ac: $38 $e8

    ldh a, [$f0]                                  ; $50ae: $f0 $f0
    rlca                                          ; $50b0: $07
    rlca                                          ; $50b1: $07
    inc c                                         ; $50b2: $0c
    rrca                                          ; $50b3: $0f
    ld [$100f], sp                                ; $50b4: $08 $0f $10
    rra                                           ; $50b7: $1f
    jr jr_020_50d9                                ; $50b8: $18 $1f

    jr jr_020_50db                                ; $50ba: $18 $1f

    inc e                                         ; $50bc: $1c
    rla                                           ; $50bd: $17
    inc e                                         ; $50be: $1c
    rla                                           ; $50bf: $17
    ld c, $0b                                     ; $50c0: $0e $0b
    dec c                                         ; $50c2: $0d
    rrca                                          ; $50c3: $0f
    ld b, $07                                     ; $50c4: $06 $07
    inc bc                                        ; $50c6: $03
    inc bc                                        ; $50c7: $03
    inc bc                                        ; $50c8: $03
    ld [bc], a                                    ; $50c9: $02
    rlca                                          ; $50ca: $07
    dec b                                         ; $50cb: $05
    add hl, bc                                    ; $50cc: $09
    rrca                                          ; $50cd: $0f
    rrca                                          ; $50ce: $0f
    rrca                                          ; $50cf: $0f
    add b                                         ; $50d0: $80
    add b                                         ; $50d1: $80
    ld h, b                                       ; $50d2: $60
    ldh [$30], a                                  ; $50d3: $e0 $30
    ldh a, [rNR10]                                ; $50d5: $f0 $10
    ldh a, [rNR10]                                ; $50d7: $f0 $10

jr_020_50d9:
    ldh a, [rSVBK]                                ; $50d9: $f0 $70

jr_020_50db:
    ldh a, [$98]                                  ; $50db: $f0 $98
    ld hl, sp-$78                                 ; $50dd: $f8 $88
    ld hl, sp-$28                                 ; $50df: $f8 $d8
    ld hl, sp-$0d                                 ; $50e1: $f8 $f3
    di                                            ; $50e3: $f3
    daa                                           ; $50e4: $27
    rst $20                                       ; $50e5: $e7
    call c, $f0fc                                 ; $50e6: $dc $fc $f0
    jr nc, jr_020_50db                            ; $50e9: $30 $f0

    ret nc                                        ; $50eb: $d0

    ld c, b                                       ; $50ec: $48
    ld a, b                                       ; $50ed: $78
    ld a, b                                       ; $50ee: $78
    ld a, b                                       ; $50ef: $78
    ld bc, $0601                                  ; $50f0: $01 $01 $06
    rlca                                          ; $50f3: $07
    inc b                                         ; $50f4: $04
    rlca                                          ; $50f5: $07
    ret z                                         ; $50f6: $c8

    rst $08                                       ; $50f7: $cf
    call $cfcf                                    ; $50f8: $cd $cf $cf
    bit 7, a                                      ; $50fb: $cb $7f
    ld a, d                                       ; $50fd: $7a
    ld c, l                                       ; $50fe: $4d
    ld a, a                                       ; $50ff: $7f
    ld e, a                                       ; $5100: $5f
    ld a, [hl]                                    ; $5101: $7e
    dec a                                         ; $5102: $3d
    ccf                                           ; $5103: $3f
    rra                                           ; $5104: $1f
    rla                                           ; $5105: $17
    ld c, $0b                                     ; $5106: $0e $0b
    rrca                                          ; $5108: $0f
    rrca                                          ; $5109: $0f
    rrca                                          ; $510a: $0f
    dec bc                                        ; $510b: $0b
    inc b                                         ; $510c: $04
    rlca                                          ; $510d: $07
    rlca                                          ; $510e: $07
    rlca                                          ; $510f: $07
    ldh [$e0], a                                  ; $5110: $e0 $e0
    sub b                                         ; $5112: $90
    ldh a, [rOBP0]                                ; $5113: $f0 $48
    ld hl, sp-$18                                 ; $5115: $f8 $e8
    cp b                                          ; $5117: $b8
    ldh a, [rNR10]                                ; $5118: $f0 $10
    ret nc                                        ; $511a: $d0

    or b                                          ; $511b: $b0
    ldh a, [$f0]                                  ; $511c: $f0 $f0
    ldh a, [rSVBK]                                ; $511e: $f0 $70
    ldh a, [rNR10]                                ; $5120: $f0 $10
    ldh [rNR41], a                                ; $5122: $e0 $20
    ret nz                                        ; $5124: $c0

    ret nz                                        ; $5125: $c0

    ld b, b                                       ; $5126: $40
    ret nz                                        ; $5127: $c0

    add b                                         ; $5128: $80
    add b                                         ; $5129: $80
    nop                                           ; $512a: $00
    nop                                           ; $512b: $00
    add b                                         ; $512c: $80
    add b                                         ; $512d: $80
    add b                                         ; $512e: $80
    add b                                         ; $512f: $80
    dec c                                         ; $5130: $0d
    dec c                                         ; $5131: $0d
    ld a, [bc]                                    ; $5132: $0a
    rrca                                          ; $5133: $0f

jr_020_5134:
    inc b                                         ; $5134: $04
    rlca                                          ; $5135: $07
    call $dfcf                                    ; $5136: $cd $cf $df
    sub $df                                       ; $5139: $d6 $df
    call nc, Call_020_6b6f                        ; $513b: $d4 $6f $6b
    scf                                           ; $513e: $37
    dec a                                         ; $513f: $3d
    rra                                           ; $5140: $1f
    inc e                                         ; $5141: $1c
    rrca                                          ; $5142: $0f
    ld a, [bc]                                    ; $5143: $0a
    dec b                                         ; $5144: $05
    rlca                                          ; $5145: $07
    inc bc                                        ; $5146: $03
    inc bc                                        ; $5147: $03
    inc bc                                        ; $5148: $03
    inc bc                                        ; $5149: $03
    rlca                                          ; $514a: $07
    rlca                                          ; $514b: $07
    add hl, bc                                    ; $514c: $09
    rrca                                          ; $514d: $0f
    ld c, $0e                                     ; $514e: $0e $0e
    ret nz                                        ; $5150: $c0

    ret nz                                        ; $5151: $c0

    jr nz, jr_020_5134                            ; $5152: $20 $e0

    ld d, b                                       ; $5154: $50
    ldh a, [$f8]                                  ; $5155: $f0 $f8
    cp b                                          ; $5157: $b8
    db $fc                                        ; $5158: $fc
    inc d                                         ; $5159: $14
    ld e, h                                       ; $515a: $5c
    or h                                          ; $515b: $b4
    ld hl, sp-$08                                 ; $515c: $f8 $f8
    db $f4                                        ; $515e: $f4
    cp h                                          ; $515f: $bc
    ld hl, sp+$58                                 ; $5160: $f8 $58
    ldh a, [$30]                                  ; $5162: $f0 $30
    ldh a, [$f0]                                  ; $5164: $f0 $f0
    ret nc                                        ; $5166: $d0

    ldh a, [$f0]                                  ; $5167: $f0 $f0
    ldh a, [$f0]                                  ; $5169: $f0 $f0
    or b                                          ; $516b: $b0
    ret z                                         ; $516c: $c8

    ld hl, sp+$78                                 ; $516d: $f8 $78
    ld a, b                                       ; $516f: $78
    rlca                                          ; $5170: $07
    rlca                                          ; $5171: $07
    add hl, bc                                    ; $5172: $09
    rrca                                          ; $5173: $0f
    ld [de], a                                    ; $5174: $12
    rra                                           ; $5175: $1f
    rla                                           ; $5176: $17
    dec e                                         ; $5177: $1d
    rrca                                          ; $5178: $0f
    ld [$0d0b], sp                                ; $5179: $08 $0b $0d
    rrca                                          ; $517c: $0f
    rrca                                          ; $517d: $0f
    rrca                                          ; $517e: $0f
    ld c, $0f                                     ; $517f: $0e $0f
    ld [$0407], sp                                ; $5181: $08 $07 $04
    inc bc                                        ; $5184: $03
    inc bc                                        ; $5185: $03
    inc bc                                        ; $5186: $03
    ld [bc], a                                    ; $5187: $02
    ld bc, $0001                                  ; $5188: $01 $01 $00
    nop                                           ; $518b: $00
    ld bc, $0101                                  ; $518c: $01 $01 $01
    ld bc, $8080                                  ; $518f: $01 $80 $80
    ld h, b                                       ; $5192: $60
    ldh [rNR41], a                                ; $5193: $e0 $20
    ldh [rNR13], a                                ; $5195: $e0 $13
    di                                            ; $5197: $f3
    or e                                          ; $5198: $b3
    di                                            ; $5199: $f3
    or $d6                                        ; $519a: $f6 $d6
    db $fc                                        ; $519c: $fc
    ld e, h                                       ; $519d: $5c
    or d                                          ; $519e: $b2
    cp $ea                                        ; $519f: $fe $ea
    ld l, [hl]                                    ; $51a1: $6e
    and h                                         ; $51a2: $a4
    db $e4                                        ; $51a3: $e4
    ldh a, [$f0]                                  ; $51a4: $f0 $f0
    ldh a, [$90]                                  ; $51a6: $f0 $90
    ldh a, [$b0]                                  ; $51a8: $f0 $b0
    ldh a, [$d0]                                  ; $51aa: $f0 $d0
    jr c, @-$16                                   ; $51ac: $38 $e8

    ldh a, [$f0]                                  ; $51ae: $f0 $f0
    rlca                                          ; $51b0: $07
    rlca                                          ; $51b1: $07
    inc c                                         ; $51b2: $0c
    rrca                                          ; $51b3: $0f
    ld [$100f], sp                                ; $51b4: $08 $0f $10
    rra                                           ; $51b7: $1f
    jr jr_020_51d9                                ; $51b8: $18 $1f

    jr jr_020_51db                                ; $51ba: $18 $1f

    inc e                                         ; $51bc: $1c
    rla                                           ; $51bd: $17
    inc e                                         ; $51be: $1c
    rla                                           ; $51bf: $17
    ld c, $0b                                     ; $51c0: $0e $0b
    dec c                                         ; $51c2: $0d
    rrca                                          ; $51c3: $0f
    ld b, $07                                     ; $51c4: $06 $07
    inc bc                                        ; $51c6: $03
    inc bc                                        ; $51c7: $03
    inc bc                                        ; $51c8: $03
    ld [bc], a                                    ; $51c9: $02
    rlca                                          ; $51ca: $07
    dec b                                         ; $51cb: $05
    add hl, bc                                    ; $51cc: $09
    rrca                                          ; $51cd: $0f
    rrca                                          ; $51ce: $0f
    rrca                                          ; $51cf: $0f
    add b                                         ; $51d0: $80
    add b                                         ; $51d1: $80
    ld h, b                                       ; $51d2: $60
    ldh [$33], a                                  ; $51d3: $e0 $33
    di                                            ; $51d5: $f3
    inc de                                        ; $51d6: $13
    di                                            ; $51d7: $f3
    inc de                                        ; $51d8: $13

jr_020_51d9:
    di                                            ; $51d9: $f3
    ld [hl], d                                    ; $51da: $72

jr_020_51db:
    ld a, [c]                                     ; $51db: $f2
    sbc d                                         ; $51dc: $9a
    ld a, [$fe8e]                                 ; $51dd: $fa $8e $fe
    call c, $fcfc                                 ; $51e0: $dc $fc $fc
    db $f4                                        ; $51e3: $f4
    jr z, @-$06                                   ; $51e4: $28 $f8

    ldh a, [$f0]                                  ; $51e6: $f0 $f0
    ldh a, [$30]                                  ; $51e8: $f0 $30
    ldh a, [$d0]                                  ; $51ea: $f0 $d0
    ld c, b                                       ; $51ec: $48
    ld a, b                                       ; $51ed: $78
    ld a, b                                       ; $51ee: $78
    ld a, b                                       ; $51ef: $78
    nop                                           ; $51f0: $00
    nop                                           ; $51f1: $00
    ld bc, $0201                                  ; $51f2: $01 $01 $02
    inc bc                                        ; $51f5: $03
    ld h, d                                       ; $51f6: $62
    ld h, e                                       ; $51f7: $63
    ld h, h                                       ; $51f8: $64
    ld h, a                                       ; $51f9: $67
    inc h                                         ; $51fa: $24
    daa                                           ; $51fb: $27
    inc [hl]                                      ; $51fc: $34
    scf                                           ; $51fd: $37
    dec e                                         ; $51fe: $1d
    rra                                           ; $51ff: $1f
    dec bc                                        ; $5200: $0b
    rrca                                          ; $5201: $0f
    inc c                                         ; $5202: $0c
    rrca                                          ; $5203: $0f
    ld b, $07                                     ; $5204: $06 $07
    inc bc                                        ; $5206: $03
    inc bc                                        ; $5207: $03
    inc bc                                        ; $5208: $03
    ld [bc], a                                    ; $5209: $02
    inc bc                                        ; $520a: $03
    inc bc                                        ; $520b: $03

jr_020_520c:
    inc b                                         ; $520c: $04
    rlca                                          ; $520d: $07
    rlca                                          ; $520e: $07
    rlca                                          ; $520f: $07
    ldh [$e0], a                                  ; $5210: $e0 $e0
    jr c, jr_020_520c                             ; $5212: $38 $f8

    ld [$04f8], sp                                ; $5214: $08 $f8 $04
    db $fc                                        ; $5217: $fc
    inc b                                         ; $5218: $04
    db $fc                                        ; $5219: $fc
    inc b                                         ; $521a: $04
    db $fc                                        ; $521b: $fc
    call nz, Call_000_28fc                        ; $521c: $c4 $fc $28
    ld hl, sp+$28                                 ; $521f: $f8 $28
    ld hl, sp-$10                                 ; $5221: $f8 $f0
    ldh a, [rNR41]                                ; $5223: $f0 $20
    ldh [$e0], a                                  ; $5225: $e0 $e0
    ldh [$c0], a                                  ; $5227: $e0 $c0
    ld b, b                                       ; $5229: $40
    and b                                         ; $522a: $a0
    ldh [$90], a                                  ; $522b: $e0 $90
    ldh a, [$f0]                                  ; $522d: $f0 $f0
    ldh a, [rP1]                                  ; $522f: $f0 $00
    nop                                           ; $5231: $00
    ld bc, $0301                                  ; $5232: $01 $01 $03

jr_020_5235:
    inc bc                                        ; $5235: $03
    ld h, d                                       ; $5236: $62
    ld h, e                                       ; $5237: $63
    ld h, h                                       ; $5238: $64
    ld h, a                                       ; $5239: $67
    ld [hl], $37                                  ; $523a: $36 $37
    rra                                           ; $523c: $1f
    dec e                                         ; $523d: $1d
    rrca                                          ; $523e: $0f
    dec c                                         ; $523f: $0d
    ld e, $1b                                     ; $5240: $1e $1b
    dec h                                         ; $5242: $25
    ccf                                           ; $5243: $3f
    ld l, $3f                                     ; $5244: $2e $3f
    inc de                                        ; $5246: $13
    inc de                                        ; $5247: $13
    inc bc                                        ; $5248: $03
    inc bc                                        ; $5249: $03
    dec b                                         ; $524a: $05
    rlca                                          ; $524b: $07
    dec b                                         ; $524c: $05
    rlca                                          ; $524d: $07
    inc bc                                        ; $524e: $03
    inc bc                                        ; $524f: $03
    ld h, b                                       ; $5250: $60
    ld h, b                                       ; $5251: $60
    or b                                          ; $5252: $b0
    ldh a, [rNR10]                                ; $5253: $f0 $10
    ldh a, [$28]                                  ; $5255: $f0 $28
    ld hl, sp+$78                                 ; $5257: $f8 $78
    ld hl, sp-$08                                 ; $5259: $f8 $f8
    ret z                                         ; $525b: $c8

    add sp, -$68                                  ; $525c: $e8 $98
    ld hl, sp+$78                                 ; $525e: $f8 $78
    ld hl, sp-$48                                 ; $5260: $f8 $b8
    ld hl, sp+$08                                 ; $5262: $f8 $08
    ldh a, [$90]                                  ; $5264: $f0 $90
    ldh [$e0], a                                  ; $5266: $e0 $e0
    ret nc                                        ; $5268: $d0

    ldh a, [$f0]                                  ; $5269: $f0 $f0
    jr nc, jr_020_5235                            ; $526b: $30 $c8

    ld hl, sp+$38                                 ; $526d: $f8 $38
    jr c, jr_020_5274                             ; $526f: $38 $03

    inc bc                                        ; $5271: $03
    inc b                                         ; $5272: $04
    rlca                                          ; $5273: $07

jr_020_5274:
    ld a, [bc]                                    ; $5274: $0a
    rrca                                          ; $5275: $0f
    rrca                                          ; $5276: $0f
    dec c                                         ; $5277: $0d
    dec c                                         ; $5278: $0d
    ld a, [bc]                                    ; $5279: $0a
    rrca                                          ; $527a: $0f
    rrca                                          ; $527b: $0f
    rrca                                          ; $527c: $0f
    ld c, $0f                                     ; $527d: $0e $0f
    add hl, bc                                    ; $527f: $09
    rrca                                          ; $5280: $0f
    ld [$0407], sp                                ; $5281: $08 $07 $04
    rlca                                          ; $5284: $07
    rlca                                          ; $5285: $07
    inc b                                         ; $5286: $04
    rlca                                          ; $5287: $07
    inc bc                                        ; $5288: $03
    inc bc                                        ; $5289: $03
    inc bc                                        ; $528a: $03
    inc bc                                        ; $528b: $03

jr_020_528c:
    dec b                                         ; $528c: $05
    rlca                                          ; $528d: $07

jr_020_528e:
    rlca                                          ; $528e: $07
    rlca                                          ; $528f: $07
    ret c                                         ; $5290: $d8

    ret c                                         ; $5291: $d8

    jr z, jr_020_528c                             ; $5292: $28 $f8

    sub b                                         ; $5294: $90
    ldh a, [$d3]                                  ; $5295: $f0 $d3
    ld [hl], e                                    ; $5297: $73
    ld l, e                                       ; $5298: $6b
    cp e                                          ; $5299: $bb
    rst $38                                       ; $529a: $ff
    rst $30                                       ; $529b: $f7
    db $fc                                        ; $529c: $fc
    call nz, $18f8                                ; $529d: $c4 $f8 $18
    ldh a, [$30]                                  ; $52a0: $f0 $30
    ldh a, [rSVBK]                                ; $52a2: $f0 $70
    ldh a, [$d0]                                  ; $52a4: $f0 $d0
    ldh [$e0], a                                  ; $52a6: $e0 $e0
    ldh [$60], a                                  ; $52a8: $e0 $60
    ldh [$a0], a                                  ; $52aa: $e0 $a0
    jr nz, jr_020_528e                            ; $52ac: $20 $e0

    ldh [$e0], a                                  ; $52ae: $e0 $e0
    rlca                                          ; $52b0: $07
    rlca                                          ; $52b1: $07
    ld [$0e0f], sp                                ; $52b2: $08 $0f $0e
    rrca                                          ; $52b5: $0f

jr_020_52b6:
    rrca                                          ; $52b6: $0f
    add hl, bc                                    ; $52b7: $09
    dec bc                                        ; $52b8: $0b
    inc c                                         ; $52b9: $0c
    rrca                                          ; $52ba: $0f
    rrca                                          ; $52bb: $0f
    rrca                                          ; $52bc: $0f
    ld c, $0f                                     ; $52bd: $0e $0f
    ld [$080f], sp                                ; $52bf: $08 $0f $08
    rlca                                          ; $52c2: $07
    inc b                                         ; $52c3: $04
    inc bc                                        ; $52c4: $03
    inc bc                                        ; $52c5: $03
    inc bc                                        ; $52c6: $03
    inc bc                                        ; $52c7: $03
    dec b                                         ; $52c8: $05
    rlca                                          ; $52c9: $07
    rlca                                          ; $52ca: $07
    ld b, $09                                     ; $52cb: $06 $09
    rrca                                          ; $52cd: $0f
    ld c, $0e                                     ; $52ce: $0e $0e
    nop                                           ; $52d0: $00
    nop                                           ; $52d1: $00
    ret nz                                        ; $52d2: $c0

    ret nz                                        ; $52d3: $c0

    jr nz, jr_020_52b6                            ; $52d4: $20 $e0

    inc de                                        ; $52d6: $13
    di                                            ; $52d7: $f3
    or e                                          ; $52d8: $b3
    di                                            ; $52d9: $f3
    or $d6                                        ; $52da: $f6 $d6
    db $fc                                        ; $52dc: $fc
    db $fc                                        ; $52dd: $fc
    cp h                                          ; $52de: $bc
    db $ec                                        ; $52df: $ec
    jp nc, $ba7e                                  ; $52e0: $d2 $7e $ba

    cp $d4                                        ; $52e3: $fe $d4
    db $f4                                        ; $52e5: $f4
    ldh [$60], a                                  ; $52e6: $e0 $60
    ldh [$a0], a                                  ; $52e8: $e0 $a0
    ret nc                                        ; $52ea: $d0

    ld [hl], b                                    ; $52eb: $70
    ret nc                                        ; $52ec: $d0

    ldh a, [$60]                                  ; $52ed: $f0 $60
    ld h, b                                       ; $52ef: $60
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00
    inc bc                                        ; $52f4: $03
    inc bc                                        ; $52f5: $03

jr_020_52f6:
    inc b                                         ; $52f6: $04
    rlca                                          ; $52f7: $07
    inc b                                         ; $52f8: $04
    rlca                                          ; $52f9: $07
    ld [$0d0f], sp                                ; $52fa: $08 $0f $0d
    rrca                                          ; $52fd: $0f
    rrca                                          ; $52fe: $0f
    dec bc                                        ; $52ff: $0b
    rrca                                          ; $5300: $0f
    ld a, [bc]                                    ; $5301: $0a
    dec a                                         ; $5302: $3d
    scf                                           ; $5303: $37
    ld d, l                                       ; $5304: $55
    ld [hl], a                                    ; $5305: $77
    ld [hl+], a                                   ; $5306: $22
    inc hl                                        ; $5307: $23
    rlca                                          ; $5308: $07
    dec b                                         ; $5309: $05
    dec bc                                        ; $530a: $0b
    rrca                                          ; $530b: $0f
    add hl, bc                                    ; $530c: $09
    rrca                                          ; $530d: $0f
    ld b, $06                                     ; $530e: $06 $06
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    ret nz                                        ; $5312: $c0

    ret nz                                        ; $5313: $c0

    jr nz, jr_020_52f6                            ; $5314: $20 $e0

    ld d, b                                       ; $5316: $50
    ldh a, [$f0]                                  ; $5317: $f0 $f0
    ldh a, [$f0]                                  ; $5319: $f0 $f0
    sub b                                         ; $531b: $90
    ret nc                                        ; $531c: $d0

    jr nc, @-$0e                                  ; $531d: $30 $f0

    ldh a, [$f0]                                  ; $531f: $f0 $f0
    ld [hl], b                                    ; $5321: $70
    ldh a, [rNR10]                                ; $5322: $f0 $10
    ldh [rNR41], a                                ; $5324: $e0 $20
    ret nz                                        ; $5326: $c0

    ret nz                                        ; $5327: $c0

    ldh [$60], a                                  ; $5328: $e0 $60
    ldh a, [$d0]                                  ; $532a: $f0 $d0
    and b                                         ; $532c: $a0
    ldh [$c0], a                                  ; $532d: $e0 $c0
    ret nz                                        ; $532f: $c0

    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    ld bc, $0201                                  ; $5332: $01 $01 $02
    inc bc                                        ; $5335: $03
    dec b                                         ; $5336: $05
    rlca                                          ; $5337: $07
    rlca                                          ; $5338: $07
    ld b, $0f                                     ; $5339: $06 $0f
    inc c                                         ; $533b: $0c
    ld e, $15                                     ; $533c: $1e $15
    rra                                           ; $533e: $1f
    rla                                           ; $533f: $17
    rrca                                          ; $5340: $0f
    dec bc                                        ; $5341: $0b
    rla                                           ; $5342: $17
    inc e                                         ; $5343: $1c
    dec sp                                        ; $5344: $3b
    ld a, $27                                     ; $5345: $3e $27
    daa                                           ; $5347: $27
    ld h, a                                       ; $5348: $67
    ld h, h                                       ; $5349: $64
    ld l, a                                       ; $534a: $6f
    ld l, e                                       ; $534b: $6b
    inc b                                         ; $534c: $04
    rlca                                          ; $534d: $07

jr_020_534e:
    inc bc                                        ; $534e: $03
    inc bc                                        ; $534f: $03
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    ret c                                         ; $5352: $d8

    ret c                                         ; $5353: $d8

    jr z, jr_020_534e                             ; $5354: $28 $f8

    ld d, b                                       ; $5356: $50
    ldh a, [$f0]                                  ; $5357: $f0 $f0
    or b                                          ; $5359: $b0
    ld hl, sp+$18                                 ; $535a: $f8 $18
    cp h                                          ; $535c: $bc
    ld d, h                                       ; $535d: $54
    db $fc                                        ; $535e: $fc
    db $f4                                        ; $535f: $f4
    ld hl, sp+$68                                 ; $5360: $f8 $68
    db $f4                                        ; $5362: $f4
    sbc h                                         ; $5363: $9c
    xor $3a                                       ; $5364: $ee $3a
    cp $fa                                        ; $5366: $fe $fa
    db $fc                                        ; $5368: $fc
    sbc h                                         ; $5369: $9c
    ldh a, [rSVBK]                                ; $536a: $f0 $70
    ldh [$e0], a                                  ; $536c: $e0 $e0
    nop                                           ; $536e: $00
    nop                                           ; $536f: $00
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    inc bc                                        ; $5372: $03
    inc bc                                        ; $5373: $03
    inc b                                         ; $5374: $04
    rlca                                          ; $5375: $07
    ld a, [bc]                                    ; $5376: $0a
    rrca                                          ; $5377: $0f

jr_020_5378:
    rrca                                          ; $5378: $0f
    rrca                                          ; $5379: $0f

jr_020_537a:
    rrca                                          ; $537a: $0f
    add hl, bc                                    ; $537b: $09
    dec bc                                        ; $537c: $0b
    inc c                                         ; $537d: $0c
    rrca                                          ; $537e: $0f
    rrca                                          ; $537f: $0f
    rrca                                          ; $5380: $0f
    ld c, $0f                                     ; $5381: $0e $0f
    ld [$0407], sp                                ; $5383: $08 $07 $04
    dec bc                                        ; $5386: $0b
    rrca                                          ; $5387: $0f
    rra                                           ; $5388: $1f
    ld d, $0b                                     ; $5389: $16 $0b
    rrca                                          ; $538b: $0f
    add hl, bc                                    ; $538c: $09
    rrca                                          ; $538d: $0f
    rlca                                          ; $538e: $07
    rlca                                          ; $538f: $07
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    ret nz                                        ; $5394: $c0

    ret nz                                        ; $5395: $c0

    jr nz, jr_020_5378                            ; $5396: $20 $e0

    jr nz, jr_020_537a                            ; $5398: $20 $e0

    db $10                                        ; $539a: $10
    ldh a, [$b0]                                  ; $539b: $f0 $b0
    ldh a, [$f0]                                  ; $539d: $f0 $f0
    ret nc                                        ; $539f: $d0

    ldh a, [$50]                                  ; $53a0: $f0 $50
    cp h                                          ; $53a2: $bc
    db $ec                                        ; $53a3: $ec
    xor d                                         ; $53a4: $aa
    xor $44                                       ; $53a5: $ee $44
    call nz, $e0e0                                ; $53a7: $c4 $e0 $e0
    ldh a, [rSVBK]                                ; $53aa: $f0 $70
    ldh a, [$f0]                                  ; $53ac: $f0 $f0
    ld h, b                                       ; $53ae: $60
    ld h, b                                       ; $53af: $60
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    inc bc                                        ; $53b2: $03
    inc bc                                        ; $53b3: $03
    inc b                                         ; $53b4: $04
    rlca                                          ; $53b5: $07
    ld [$080f], sp                                ; $53b6: $08 $0f $08
    rrca                                          ; $53b9: $0f

jr_020_53ba:
    jr @+$21                                      ; $53ba: $18 $1f

    jr c, jr_020_53ed                             ; $53bc: $38 $2f

    jr c, jr_020_53ef                             ; $53be: $38 $2f

    dec e                                         ; $53c0: $1d
    rla                                           ; $53c1: $17
    ld l, d                                       ; $53c2: $6a
    ld a, a                                       ; $53c3: $7f
    add hl, sp                                    ; $53c4: $39
    ccf                                           ; $53c5: $3f

jr_020_53c6:
    rrca                                          ; $53c6: $0f
    rrca                                          ; $53c7: $0f
    rrca                                          ; $53c8: $0f
    add hl, bc                                    ; $53c9: $09
    rra                                           ; $53ca: $1f
    ld d, $09                                     ; $53cb: $16 $09
    rrca                                          ; $53cd: $0f
    ld b, $06                                     ; $53ce: $06 $06
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    add b                                         ; $53d2: $80
    add b                                         ; $53d3: $80
    ld b, b                                       ; $53d4: $40
    ret nz                                        ; $53d5: $c0

    jr nz, @-$1e                                  ; $53d6: $20 $e0

    jr nz, jr_020_53ba                            ; $53d8: $20 $e0

    jr nc, @-$0e                                  ; $53da: $30 $f0

jr_020_53dc:
    jr c, jr_020_53c6                             ; $53dc: $38 $e8

    cp b                                          ; $53de: $b8
    add sp, $70                                   ; $53df: $e8 $70
    ret nc                                        ; $53e1: $d0

    jr z, jr_020_53dc                             ; $53e2: $28 $f8

    cp a                                          ; $53e4: $bf
    rst $30                                       ; $53e5: $f7
    rst $38                                       ; $53e6: $ff
    rst $20                                       ; $53e7: $e7
    ld hl, sp+$38                                 ; $53e8: $f8 $38
    ldh [$e0], a                                  ; $53ea: $e0 $e0
    ret nz                                        ; $53ec: $c0

jr_020_53ed:
    ret nz                                        ; $53ed: $c0

    nop                                           ; $53ee: $00

jr_020_53ef:
    nop                                           ; $53ef: $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    ld bc, $0201                                  ; $53f2: $01 $01 $02
    inc bc                                        ; $53f5: $03
    ld [bc], a                                    ; $53f6: $02
    inc bc                                        ; $53f7: $03
    inc b                                         ; $53f8: $04
    rlca                                          ; $53f9: $07
    ld b, $07                                     ; $53fa: $06 $07
    rlca                                          ; $53fc: $07
    dec b                                         ; $53fd: $05
    rlca                                          ; $53fe: $07
    dec b                                         ; $53ff: $05
    ld e, $1b                                     ; $5400: $1e $1b
    ld c, a                                       ; $5402: $4f
    ld a, [hl]                                    ; $5403: $7e
    ld d, l                                       ; $5404: $55
    ld [hl], a                                    ; $5405: $77
    ld [hl+], a                                   ; $5406: $22
    inc hl                                        ; $5407: $23
    rlca                                          ; $5408: $07
    dec b                                         ; $5409: $05
    dec bc                                        ; $540a: $0b
    rrca                                          ; $540b: $0f
    add hl, bc                                    ; $540c: $09
    rrca                                          ; $540d: $0f
    ld b, $06                                     ; $540e: $06 $06
    ld h, b                                       ; $5410: $60
    ld h, b                                       ; $5411: $60
    sub b                                         ; $5412: $90
    ldh a, [$28]                                  ; $5413: $f0 $28
    ld hl, sp+$78                                 ; $5415: $f8 $78
    ld hl, sp+$78                                 ; $5417: $f8 $78
    ret z                                         ; $5419: $c8

    add sp, -$68                                  ; $541a: $e8 $98
    ld hl, sp-$08                                 ; $541c: $f8 $f8
    ld hl, sp+$38                                 ; $541e: $f8 $38
    ld hl, sp-$78                                 ; $5420: $f8 $88
    ldh a, [rNR10]                                ; $5422: $f0 $10
    ldh [rNR41], a                                ; $5424: $e0 $20
    ret nz                                        ; $5426: $c0

    ret nz                                        ; $5427: $c0

    ldh [$60], a                                  ; $5428: $e0 $60
    ldh a, [$d0]                                  ; $542a: $f0 $d0
    and b                                         ; $542c: $a0
    ldh [$c0], a                                  ; $542d: $e0 $c0
    ret nz                                        ; $542f: $c0

    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    ld bc, $0201                                  ; $5432: $01 $01 $02
    inc bc                                        ; $5435: $03
    inc bc                                        ; $5436: $03
    inc bc                                        ; $5437: $03
    rlca                                          ; $5438: $07
    ld b, $0f                                     ; $5439: $06 $0f
    ld a, [bc]                                    ; $543b: $0a
    rrca                                          ; $543c: $0f
    dec bc                                        ; $543d: $0b
    rlca                                          ; $543e: $07
    dec b                                         ; $543f: $05
    dec bc                                        ; $5440: $0b
    ld c, $3f                                     ; $5441: $0e $3f
    inc l                                         ; $5443: $2c
    dec sp                                        ; $5444: $3b
    ld a, $27                                     ; $5445: $3e $27
    daa                                           ; $5447: $27
    ld h, a                                       ; $5448: $67
    ld h, h                                       ; $5449: $64
    ld l, a                                       ; $544a: $6f
    ld l, e                                       ; $544b: $6b
    inc b                                         ; $544c: $04
    rlca                                          ; $544d: $07
    inc bc                                        ; $544e: $03
    inc bc                                        ; $544f: $03
    db $ec                                        ; $5450: $ec
    db $ec                                        ; $5451: $ec
    inc d                                         ; $5452: $14
    db $fc                                        ; $5453: $fc
    xor b                                         ; $5454: $a8
    ld hl, sp-$08                                 ; $5455: $f8 $f8
    ld e, b                                       ; $5457: $58
    db $fc                                        ; $5458: $fc
    inc c                                         ; $5459: $0c
    ld e, [hl]                                    ; $545a: $5e
    xor d                                         ; $545b: $aa
    cp $fa                                        ; $545c: $fe $fa
    db $fc                                        ; $545e: $fc
    or h                                          ; $545f: $b4
    ld a, [$f44e]                                 ; $5460: $fa $4e $f4
    inc e                                         ; $5463: $1c
    xor $3a                                       ; $5464: $ee $3a
    cp $fa                                        ; $5466: $fe $fa
    db $fc                                        ; $5468: $fc
    sbc h                                         ; $5469: $9c
    ldh a, [rSVBK]                                ; $546a: $f0 $70
    ldh [$e0], a                                  ; $546c: $e0 $e0
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00
    ld bc, $0201                                  ; $5470: $01 $01 $02
    inc bc                                        ; $5473: $03
    dec b                                         ; $5474: $05
    rlca                                          ; $5475: $07
    rlca                                          ; $5476: $07
    rlca                                          ; $5477: $07
    rlca                                          ; $5478: $07
    inc b                                         ; $5479: $04
    dec b                                         ; $547a: $05
    ld b, $07                                     ; $547b: $06 $07
    rlca                                          ; $547d: $07
    rlca                                          ; $547e: $07
    rlca                                          ; $547f: $07
    rlca                                          ; $5480: $07
    inc b                                         ; $5481: $04
    rrca                                          ; $5482: $0f
    ld [$0407], sp                                ; $5483: $08 $07 $04
    dec bc                                        ; $5486: $0b
    rrca                                          ; $5487: $0f
    rra                                           ; $5488: $1f
    ld d, $0b                                     ; $5489: $16 $0b
    rrca                                          ; $548b: $0f
    add hl, bc                                    ; $548c: $09
    rrca                                          ; $548d: $0f
    rlca                                          ; $548e: $07
    rlca                                          ; $548f: $07
    add b                                         ; $5490: $80
    add b                                         ; $5491: $80
    ld h, b                                       ; $5492: $60
    ldh [rNR10], a                                ; $5493: $e0 $10
    ldh a, [$90]                                  ; $5495: $f0 $90
    ldh a, [$88]                                  ; $5497: $f0 $88
    ld hl, sp-$28                                 ; $5499: $f8 $d8
    ld a, b                                       ; $549b: $78
    ld hl, sp-$18                                 ; $549c: $f8 $e8
    ld hl, sp+$28                                 ; $549e: $f8 $28
    sbc $76                                       ; $54a0: $de $76
    ld a, [c]                                     ; $54a2: $f2
    ld a, [hl]                                    ; $54a3: $7e
    xor d                                         ; $54a4: $aa
    xor $44                                       ; $54a5: $ee $44
    call nz, $e0e0                                ; $54a7: $c4 $e0 $e0
    ldh a, [rSVBK]                                ; $54aa: $f0 $70
    ldh a, [$f0]                                  ; $54ac: $f0 $f0
    ld h, b                                       ; $54ae: $60
    ld h, b                                       ; $54af: $60
    ld bc, $0201                                  ; $54b0: $01 $01 $02
    inc bc                                        ; $54b3: $03

jr_020_54b4:
    inc b                                         ; $54b4: $04
    rlca                                          ; $54b5: $07
    inc b                                         ; $54b6: $04
    rlca                                          ; $54b7: $07
    inc c                                         ; $54b8: $0c
    rrca                                          ; $54b9: $0f
    inc e                                         ; $54ba: $1c

jr_020_54bb:
    rla                                           ; $54bb: $17
    inc e                                         ; $54bc: $1c
    rla                                           ; $54bd: $17
    ld c, $0b                                     ; $54be: $0e $0b
    dec [hl]                                      ; $54c0: $35
    ccf                                           ; $54c1: $3f
    ld [hl], e                                    ; $54c2: $73
    ld e, a                                       ; $54c3: $5f
    add hl, sp                                    ; $54c4: $39
    ccf                                           ; $54c5: $3f
    rrca                                          ; $54c6: $0f
    rrca                                          ; $54c7: $0f
    rrca                                          ; $54c8: $0f
    add hl, bc                                    ; $54c9: $09
    rra                                           ; $54ca: $1f
    ld d, $09                                     ; $54cb: $16 $09
    rrca                                          ; $54cd: $0f
    ld b, $06                                     ; $54ce: $06 $06
    ret nz                                        ; $54d0: $c0

    ret nz                                        ; $54d1: $c0

    jr nz, jr_020_54b4                            ; $54d2: $20 $e0

    db $10                                        ; $54d4: $10
    ldh a, [rNR10]                                ; $54d5: $f0 $10
    ldh a, [rNR23]                                ; $54d7: $f0 $18
    ld hl, sp+$1c                                 ; $54d9: $f8 $1c
    db $f4                                        ; $54db: $f4
    ld e, h                                       ; $54dc: $5c
    db $f4                                        ; $54dd: $f4
    cp b                                          ; $54de: $b8
    add sp, $14                                   ; $54df: $e8 $14
    db $fc                                        ; $54e1: $fc
    ld e, e                                       ; $54e2: $5b
    ei                                            ; $54e3: $fb
    cp a                                          ; $54e4: $bf
    rst $30                                       ; $54e5: $f7
    rst $38                                       ; $54e6: $ff
    rst $20                                       ; $54e7: $e7
    ld hl, sp+$38                                 ; $54e8: $f8 $38
    ldh [$e0], a                                  ; $54ea: $e0 $e0
    ret nz                                        ; $54ec: $c0

    ret nz                                        ; $54ed: $c0

    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    ld bc, $0601                                  ; $54f0: $01 $01 $06
    rlca                                          ; $54f3: $07
    ld [$090f], sp                                ; $54f4: $08 $0f $09
    rrca                                          ; $54f7: $0f
    ld de, $1b1f                                  ; $54f8: $11 $1f $1b
    ld e, $1f                                     ; $54fb: $1e $1f
    rla                                           ; $54fd: $17
    rra                                           ; $54fe: $1f
    inc d                                         ; $54ff: $14
    ld a, e                                       ; $5500: $7b
    ld l, [hl]                                    ; $5501: $6e
    ld c, a                                       ; $5502: $4f
    ld a, [hl]                                    ; $5503: $7e
    ld d, l                                       ; $5504: $55
    ld [hl], a                                    ; $5505: $77
    ld [hl+], a                                   ; $5506: $22
    inc hl                                        ; $5507: $23
    rlca                                          ; $5508: $07
    dec b                                         ; $5509: $05
    dec bc                                        ; $550a: $0b
    rrca                                          ; $550b: $0f
    add hl, bc                                    ; $550c: $09
    rrca                                          ; $550d: $0f
    ld b, $06                                     ; $550e: $06 $06
    add b                                         ; $5510: $80
    add b                                         ; $5511: $80
    ld b, b                                       ; $5512: $40
    ret nz                                        ; $5513: $c0

    and b                                         ; $5514: $a0
    ldh [$e0], a                                  ; $5515: $e0 $e0
    ldh [$e0], a                                  ; $5517: $e0 $e0
    jr nz, jr_020_54bb                            ; $5519: $20 $a0

    ld h, b                                       ; $551b: $60
    ldh [$e0], a                                  ; $551c: $e0 $e0
    ldh [$e0], a                                  ; $551e: $e0 $e0
    ldh [rNR41], a                                ; $5520: $e0 $20
    ldh a, [rNR10]                                ; $5522: $f0 $10
    ldh [rNR41], a                                ; $5524: $e0 $20
    ret nz                                        ; $5526: $c0

    ret nz                                        ; $5527: $c0

    ldh [$60], a                                  ; $5528: $e0 $60
    ldh a, [$d0]                                  ; $552a: $f0 $d0
    and b                                         ; $552c: $a0
    ldh [$c0], a                                  ; $552d: $e0 $c0
    ret nz                                        ; $552f: $c0

    inc bc                                        ; $5530: $03
    inc bc                                        ; $5531: $03
    inc b                                         ; $5532: $04
    rlca                                          ; $5533: $07
    ld a, [bc]                                    ; $5534: $0a
    rrca                                          ; $5535: $0f
    rrca                                          ; $5536: $0f
    dec c                                         ; $5537: $0d
    rra                                           ; $5538: $1f
    jr jr_020_5578                                ; $5539: $18 $3d

    ld a, [hl+]                                   ; $553b: $2a
    ccf                                           ; $553c: $3f
    cpl                                           ; $553d: $2f
    rra                                           ; $553e: $1f
    ld d, $2f                                     ; $553f: $16 $2f
    add hl, sp                                    ; $5541: $39
    ccf                                           ; $5542: $3f
    inc l                                         ; $5543: $2c
    dec sp                                        ; $5544: $3b
    ld a, $27                                     ; $5545: $3e $27
    daa                                           ; $5547: $27
    ld h, a                                       ; $5548: $67
    ld h, h                                       ; $5549: $64
    ld l, a                                       ; $554a: $6f
    ld l, e                                       ; $554b: $6b
    inc b                                         ; $554c: $04
    rlca                                          ; $554d: $07
    inc bc                                        ; $554e: $03
    inc bc                                        ; $554f: $03
    or b                                          ; $5550: $b0
    or b                                          ; $5551: $b0
    ld d, b                                       ; $5552: $50
    ldh a, [$a0]                                  ; $5553: $f0 $a0
    ldh [$e0], a                                  ; $5555: $e0 $e0
    ld h, b                                       ; $5557: $60
    ldh a, [$30]                                  ; $5558: $f0 $30
    ld a, b                                       ; $555a: $78
    xor b                                         ; $555b: $a8
    ld hl, sp-$18                                 ; $555c: $f8 $e8
    ldh a, [$d0]                                  ; $555e: $f0 $d0
    add sp, $38                                   ; $5560: $e8 $38
    db $f4                                        ; $5562: $f4
    inc e                                         ; $5563: $1c
    xor $3a                                       ; $5564: $ee $3a
    cp $fa                                        ; $5566: $fe $fa
    db $fc                                        ; $5568: $fc
    sbc h                                         ; $5569: $9c
    ldh a, [rSVBK]                                ; $556a: $f0 $70
    ldh [$e0], a                                  ; $556c: $e0 $e0
    nop                                           ; $556e: $00
    nop                                           ; $556f: $00
    ld b, $06                                     ; $5570: $06 $06
    add hl, bc                                    ; $5572: $09
    rrca                                          ; $5573: $0f
    inc d                                         ; $5574: $14
    rra                                           ; $5575: $1f
    ld e, $1f                                     ; $5576: $1e $1f

jr_020_5578:
    ld e, $13                                     ; $5578: $1e $13

jr_020_557a:
    rla                                           ; $557a: $17
    add hl, de                                    ; $557b: $19
    rra                                           ; $557c: $1f
    rra                                           ; $557d: $1f
    rra                                           ; $557e: $1f
    inc e                                         ; $557f: $1c
    rra                                           ; $5580: $1f
    ld de, $080f                                  ; $5581: $11 $0f $08
    rlca                                          ; $5584: $07
    inc b                                         ; $5585: $04
    dec bc                                        ; $5586: $0b
    rrca                                          ; $5587: $0f
    rra                                           ; $5588: $1f
    ld d, $0b                                     ; $5589: $16 $0b
    rrca                                          ; $558b: $0f
    add hl, bc                                    ; $558c: $09
    rrca                                          ; $558d: $0f
    rlca                                          ; $558e: $07
    rlca                                          ; $558f: $07
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    add b                                         ; $5592: $80
    add b                                         ; $5593: $80
    ld b, b                                       ; $5594: $40
    ret nz                                        ; $5595: $c0

    ld b, b                                       ; $5596: $40
    ret nz                                        ; $5597: $c0

    jr nz, jr_020_557a                            ; $5598: $20 $e0

    ld h, b                                       ; $559a: $60
    ldh [$e0], a                                  ; $559b: $e0 $e0
    and b                                         ; $559d: $a0
    ldh [$a0], a                                  ; $559e: $e0 $a0
    ld a, b                                       ; $55a0: $78
    ret c                                         ; $55a1: $d8

    ld a, [c]                                     ; $55a2: $f2
    ld a, [hl]                                    ; $55a3: $7e
    xor d                                         ; $55a4: $aa
    xor $44                                       ; $55a5: $ee $44
    call nz, $e0e0                                ; $55a7: $c4 $e0 $e0
    ldh a, [rSVBK]                                ; $55aa: $f0 $70
    ldh a, [$f0]                                  ; $55ac: $f0 $f0
    ld h, b                                       ; $55ae: $60
    ld h, b                                       ; $55af: $60
    rlca                                          ; $55b0: $07
    rlca                                          ; $55b1: $07
    ld [$100f], sp                                ; $55b2: $08 $0f $10
    rra                                           ; $55b5: $1f
    db $10                                        ; $55b6: $10
    rra                                           ; $55b7: $1f
    jr nc, jr_020_55f9                            ; $55b8: $30 $3f

    ld [hl], b                                    ; $55ba: $70
    ld e, a                                       ; $55bb: $5f
    ld [hl], c                                    ; $55bc: $71
    ld e, a                                       ; $55bd: $5f
    ld a, [hl-]                                   ; $55be: $3a
    cpl                                           ; $55bf: $2f
    call nc, $73ff                                ; $55c0: $d4 $ff $73
    ld e, a                                       ; $55c3: $5f
    add hl, sp                                    ; $55c4: $39
    ccf                                           ; $55c5: $3f
    rrca                                          ; $55c6: $0f
    rrca                                          ; $55c7: $0f
    rrca                                          ; $55c8: $0f
    add hl, bc                                    ; $55c9: $09
    rra                                           ; $55ca: $1f
    ld d, $09                                     ; $55cb: $16 $09
    rrca                                          ; $55cd: $0f
    ld b, $06                                     ; $55ce: $06 $06
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    add b                                         ; $55d2: $80
    add b                                         ; $55d3: $80
    ld b, b                                       ; $55d4: $40
    ret nz                                        ; $55d5: $c0

    ld b, b                                       ; $55d6: $40
    ret nz                                        ; $55d7: $c0

    ld h, b                                       ; $55d8: $60
    ldh [rSVBK], a                                ; $55d9: $e0 $70
    ret nc                                        ; $55db: $d0

    ld [hl], b                                    ; $55dc: $70
    ret nc                                        ; $55dd: $d0

    ldh [$a0], a                                  ; $55de: $e0 $a0
    ld d, b                                       ; $55e0: $50
    ldh a, [$5b]                                  ; $55e1: $f0 $5b
    ei                                            ; $55e3: $fb
    cp a                                          ; $55e4: $bf
    rst $30                                       ; $55e5: $f7
    rst $38                                       ; $55e6: $ff
    rst $20                                       ; $55e7: $e7
    ld hl, sp+$38                                 ; $55e8: $f8 $38
    ldh [$e0], a                                  ; $55ea: $e0 $e0
    ret nz                                        ; $55ec: $c0

    ret nz                                        ; $55ed: $c0

    nop                                           ; $55ee: $00
    nop                                           ; $55ef: $00
    nop                                           ; $55f0: $00
    nop                                           ; $55f1: $00
    nop                                           ; $55f2: $00
    nop                                           ; $55f3: $00
    inc bc                                        ; $55f4: $03
    inc bc                                        ; $55f5: $03
    nop                                           ; $55f6: $00
    inc bc                                        ; $55f7: $03
    nop                                           ; $55f8: $00

jr_020_55f9:
    inc bc                                        ; $55f9: $03
    inc b                                         ; $55fa: $04
    rlca                                          ; $55fb: $07
    rlca                                          ; $55fc: $07
    rlca                                          ; $55fd: $07
    rlca                                          ; $55fe: $07
    ld b, $1d                                     ; $55ff: $06 $1d
    dec de                                        ; $5601: $1b
    daa                                           ; $5602: $27
    ld a, $12                                     ; $5603: $3e $12
    inc de                                        ; $5605: $13
    inc bc                                        ; $5606: $03
    ld bc, $0707                                  ; $5607: $01 $07 $07
    dec b                                         ; $560a: $05
    rlca                                          ; $560b: $07
    ld [bc], a                                    ; $560c: $02
    ld [bc], a                                    ; $560d: $02
    nop                                           ; $560e: $00
    nop                                           ; $560f: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    ret nz                                        ; $5612: $c0

    ret nz                                        ; $5613: $c0

    nop                                           ; $5614: $00
    ret nz                                        ; $5615: $c0

    ld h, b                                       ; $5616: $60
    ldh [$e0], a                                  ; $5617: $e0 $e0
    ldh [$e0], a                                  ; $5619: $e0 $e0
    and b                                         ; $561b: $a0
    ldh [$e0], a                                  ; $561c: $e0 $e0
    ldh [$60], a                                  ; $561e: $e0 $60
    ldh [rNR41], a                                ; $5620: $e0 $20
    ldh [rNR41], a                                ; $5622: $e0 $20
    ret nz                                        ; $5624: $c0

    ret nz                                        ; $5625: $c0

    ret nz                                        ; $5626: $c0

    ld b, b                                       ; $5627: $40
    ldh [$e0], a                                  ; $5628: $e0 $e0
    add b                                         ; $562a: $80
    ret nz                                        ; $562b: $c0

    ret nz                                        ; $562c: $c0

    ret nz                                        ; $562d: $c0

    nop                                           ; $562e: $00
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    ld bc, $0201                                  ; $5632: $01 $01 $02
    inc bc                                        ; $5635: $03
    ld bc, $0303                                  ; $5636: $01 $03 $03
    ld [bc], a                                    ; $5639: $02
    rlca                                          ; $563a: $07
    inc b                                         ; $563b: $04
    rrca                                          ; $563c: $0f
    dec bc                                        ; $563d: $0b
    rlca                                          ; $563e: $07
    rlca                                          ; $563f: $07
    dec bc                                        ; $5640: $0b
    inc c                                         ; $5641: $0c
    rra                                           ; $5642: $1f
    inc d                                         ; $5643: $14
    inc de                                        ; $5644: $13
    inc de                                        ; $5645: $13
    inc sp                                        ; $5646: $33
    jr nc, @+$39                                  ; $5647: $30 $37

    scf                                           ; $5649: $37
    nop                                           ; $564a: $00
    inc bc                                        ; $564b: $03
    inc bc                                        ; $564c: $03
    inc bc                                        ; $564d: $03
    nop                                           ; $564e: $00
    nop                                           ; $564f: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    ldh a, [$f0]                                  ; $5652: $f0 $f0
    db $10                                        ; $5654: $10
    ldh a, [$60]                                  ; $5655: $f0 $60
    ldh [$e0], a                                  ; $5657: $e0 $e0
    and b                                         ; $5659: $a0
    ldh a, [$30]                                  ; $565a: $f0 $30
    ld hl, sp-$18                                 ; $565c: $f8 $e8
    ldh a, [$50]                                  ; $565e: $f0 $50
    add sp, -$48                                  ; $5660: $e8 $b8
    add sp, $38                                   ; $5662: $e8 $38
    db $fc                                        ; $5664: $fc
    db $f4                                        ; $5665: $f4
    ld hl, sp-$48                                 ; $5666: $f8 $b8
    ldh [$60], a                                  ; $5668: $e0 $60
    ret nz                                        ; $566a: $c0

    ret nz                                        ; $566b: $c0

    nop                                           ; $566c: $00
    nop                                           ; $566d: $00
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    inc bc                                        ; $5672: $03
    inc bc                                        ; $5673: $03
    nop                                           ; $5674: $00
    inc bc                                        ; $5675: $03
    ld b, $07                                     ; $5676: $06 $07
    rlca                                          ; $5678: $07
    rlca                                          ; $5679: $07
    rlca                                          ; $567a: $07
    dec b                                         ; $567b: $05

jr_020_567c:
    rlca                                          ; $567c: $07
    rlca                                          ; $567d: $07
    rlca                                          ; $567e: $07
    ld b, $07                                     ; $567f: $06 $07
    inc b                                         ; $5681: $04
    rlca                                          ; $5682: $07
    inc b                                         ; $5683: $04
    rlca                                          ; $5684: $07
    rlca                                          ; $5685: $07
    rrca                                          ; $5686: $0f
    ld a, [bc]                                    ; $5687: $0a
    rlca                                          ; $5688: $07
    rlca                                          ; $5689: $07
    dec b                                         ; $568a: $05
    rlca                                          ; $568b: $07
    inc bc                                        ; $568c: $03
    inc bc                                        ; $568d: $03
    nop                                           ; $568e: $00
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    ret nz                                        ; $5694: $c0

    ret nz                                        ; $5695: $c0

    nop                                           ; $5696: $00
    ret nz                                        ; $5697: $c0

    nop                                           ; $5698: $00
    ret nz                                        ; $5699: $c0

    jr nz, jr_020_567c                            ; $569a: $20 $e0

    ldh [$e0], a                                  ; $569c: $e0 $e0
    ldh [$60], a                                  ; $569e: $e0 $60
    cp b                                          ; $56a0: $b8
    ret c                                         ; $56a1: $d8

    db $e4                                        ; $56a2: $e4
    ld a, h                                       ; $56a3: $7c
    ld c, b                                       ; $56a4: $48
    ret z                                         ; $56a5: $c8

    ret nz                                        ; $56a6: $c0

    ret nz                                        ; $56a7: $c0

    ldh [$60], a                                  ; $56a8: $e0 $60
    ldh [$e0], a                                  ; $56aa: $e0 $e0
    ld b, b                                       ; $56ac: $40
    ld b, b                                       ; $56ad: $40
    nop                                           ; $56ae: $00
    nop                                           ; $56af: $00
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    inc bc                                        ; $56b2: $03
    inc bc                                        ; $56b3: $03
    nop                                           ; $56b4: $00
    inc bc                                        ; $56b5: $03
    inc b                                         ; $56b6: $04
    rlca                                          ; $56b7: $07
    inc b                                         ; $56b8: $04
    rlca                                          ; $56b9: $07
    inc c                                         ; $56ba: $0c
    rrca                                          ; $56bb: $0f

jr_020_56bc:
    inc e                                         ; $56bc: $1c
    rla                                           ; $56bd: $17
    dec c                                         ; $56be: $0d
    dec bc                                        ; $56bf: $0b
    ld [hl], $3f                                  ; $56c0: $36 $3f
    dec sp                                        ; $56c2: $3b
    cpl                                           ; $56c3: $2f
    rlca                                          ; $56c4: $07
    rlca                                          ; $56c5: $07
    rlca                                          ; $56c6: $07
    dec b                                         ; $56c7: $05
    rrca                                          ; $56c8: $0f
    ld a, [bc]                                    ; $56c9: $0a
    dec b                                         ; $56ca: $05
    rlca                                          ; $56cb: $07
    ld [bc], a                                    ; $56cc: $02
    ld [bc], a                                    ; $56cd: $02
    nop                                           ; $56ce: $00
    nop                                           ; $56cf: $00
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    add b                                         ; $56d2: $80
    add b                                         ; $56d3: $80
    ld b, b                                       ; $56d4: $40
    ret nz                                        ; $56d5: $c0

    nop                                           ; $56d6: $00
    ret nz                                        ; $56d7: $c0

    nop                                           ; $56d8: $00
    ret nz                                        ; $56d9: $c0

    jr nz, jr_020_56bc                            ; $56da: $20 $e0

    or b                                          ; $56dc: $b0
    ret nc                                        ; $56dd: $d0

    ld h, b                                       ; $56de: $60
    ldh [rNR10], a                                ; $56df: $e0 $10
    ldh a, [rPCM12]                               ; $56e1: $f0 $76
    or $fe                                        ; $56e3: $f6 $fe
    adc $f0                                       ; $56e5: $ce $f0
    jr nc, @-$3e                                  ; $56e7: $30 $c0

    ret nz                                        ; $56e9: $c0

    ret nz                                        ; $56ea: $c0

    ret nz                                        ; $56eb: $c0

    nop                                           ; $56ec: $00
    nop                                           ; $56ed: $00
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    nop                                           ; $56f0: $00
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    nop                                           ; $56f3: $00
    nop                                           ; $56f4: $00
    nop                                           ; $56f5: $00
    nop                                           ; $56f6: $00
    nop                                           ; $56f7: $00
    nop                                           ; $56f8: $00
    nop                                           ; $56f9: $00
    nop                                           ; $56fa: $00
    nop                                           ; $56fb: $00
    nop                                           ; $56fc: $00
    nop                                           ; $56fd: $00
    nop                                           ; $56fe: $00
    nop                                           ; $56ff: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    nop                                           ; $5706: $00
    nop                                           ; $5707: $00
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    nop                                           ; $570a: $00
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    nop                                           ; $570d: $00
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    ld bc, $0201                                  ; $5732: $01 $01 $02
    inc bc                                        ; $5735: $03

jr_020_5736:
    dec b                                         ; $5736: $05
    rlca                                          ; $5737: $07
    rlca                                          ; $5738: $07
    ld b, $0e                                     ; $5739: $06 $0e
    dec c                                         ; $573b: $0d
    ld a, a                                       ; $573c: $7f
    ld a, a                                       ; $573d: $7f
    rra                                           ; $573e: $1f
    rla                                           ; $573f: $17
    rra                                           ; $5740: $1f
    inc d                                         ; $5741: $14
    rrca                                          ; $5742: $0f
    inc c                                         ; $5743: $0c
    dec bc                                        ; $5744: $0b
    ld c, $05                                     ; $5745: $0e $05
    rlca                                          ; $5747: $07
    rlca                                          ; $5748: $07
    rlca                                          ; $5749: $07
    rlca                                          ; $574a: $07
    inc b                                         ; $574b: $04
    dec bc                                        ; $574c: $0b
    ld c, $0f                                     ; $574d: $0e $0f
    rrca                                          ; $574f: $0f
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    ret nz                                        ; $5752: $c0

    ret nz                                        ; $5753: $c0

    jr nz, jr_020_5736                            ; $5754: $20 $e0

    ld d, b                                       ; $5756: $50
    ldh a, [$f3]                                  ; $5757: $f0 $f3
    or e                                          ; $5759: $b3
    cp e                                          ; $575a: $bb
    ld e, e                                       ; $575b: $5b
    rst $38                                       ; $575c: $ff
    rst $38                                       ; $575d: $ff
    db $fc                                        ; $575e: $fc
    ld [hl], h                                    ; $575f: $74
    db $fc                                        ; $5760: $fc
    sub h                                         ; $5761: $94
    ld hl, sp+$18                                 ; $5762: $f8 $18
    add sp, $38                                   ; $5764: $e8 $38
    ret nc                                        ; $5766: $d0

    ldh a, [$f0]                                  ; $5767: $f0 $f0
    ldh a, [$f0]                                  ; $5769: $f0 $f0
    sub b                                         ; $576b: $90
    add sp, -$48                                  ; $576c: $e8 $b8
    ld a, b                                       ; $576e: $78
    ld a, b                                       ; $576f: $78
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    nop                                           ; $577a: $00
    nop                                           ; $577b: $00
    nop                                           ; $577c: $00
    nop                                           ; $577d: $00
    nop                                           ; $577e: $00
    nop                                           ; $577f: $00
    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
    nop                                           ; $5787: $00
    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    nop                                           ; $578a: $00
    nop                                           ; $578b: $00
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    nop                                           ; $5797: $00
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    nop                                           ; $579a: $00
    nop                                           ; $579b: $00
    nop                                           ; $579c: $00
    nop                                           ; $579d: $00
    nop                                           ; $579e: $00
    nop                                           ; $579f: $00
    nop                                           ; $57a0: $00
    nop                                           ; $57a1: $00
    nop                                           ; $57a2: $00
    nop                                           ; $57a3: $00
    nop                                           ; $57a4: $00
    nop                                           ; $57a5: $00
    nop                                           ; $57a6: $00
    nop                                           ; $57a7: $00
    nop                                           ; $57a8: $00
    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    nop                                           ; $57ab: $00
    nop                                           ; $57ac: $00
    nop                                           ; $57ad: $00
    nop                                           ; $57ae: $00
    nop                                           ; $57af: $00
    nop                                           ; $57b0: $00
    nop                                           ; $57b1: $00
    nop                                           ; $57b2: $00
    nop                                           ; $57b3: $00
    ld bc, $0201                                  ; $57b4: $01 $01 $02
    inc bc                                        ; $57b7: $03
    inc b                                         ; $57b8: $04
    rlca                                          ; $57b9: $07

jr_020_57ba:
    inc b                                         ; $57ba: $04
    rlca                                          ; $57bb: $07

jr_020_57bc:
    inc c                                         ; $57bc: $0c
    rrca                                          ; $57bd: $0f
    ld c, $0b                                     ; $57be: $0e $0b
    dec e                                         ; $57c0: $1d
    rra                                           ; $57c1: $1f
    add hl, de                                    ; $57c2: $19
    rla                                           ; $57c3: $17
    rrca                                          ; $57c4: $0f
    rrca                                          ; $57c5: $0f
    rlca                                          ; $57c6: $07
    inc b                                         ; $57c7: $04
    rrca                                          ; $57c8: $0f
    dec bc                                        ; $57c9: $0b
    inc b                                         ; $57ca: $04
    rlca                                          ; $57cb: $07
    inc bc                                        ; $57cc: $03
    inc bc                                        ; $57cd: $03

jr_020_57ce:
    nop                                           ; $57ce: $00
    nop                                           ; $57cf: $00
    nop                                           ; $57d0: $00
    nop                                           ; $57d1: $00

jr_020_57d2:
    nop                                           ; $57d2: $00
    nop                                           ; $57d3: $00
    add b                                         ; $57d4: $80
    add b                                         ; $57d5: $80
    ld b, b                                       ; $57d6: $40
    ret nz                                        ; $57d7: $c0

    jr nz, jr_020_57ba                            ; $57d8: $20 $e0

    jr nz, jr_020_57bc                            ; $57da: $20 $e0

    jr nc, jr_020_57ce                            ; $57dc: $30 $f0

    ldh a, [$d0]                                  ; $57de: $f0 $d0
    jr nc, jr_020_57d2                            ; $57e0: $30 $f0

    ld e, h                                       ; $57e2: $5c
    db $fc                                        ; $57e3: $fc
    db $fc                                        ; $57e4: $fc
    db $ec                                        ; $57e5: $ec
    ld hl, sp-$48                                 ; $57e6: $f8 $b8
    ldh [$60], a                                  ; $57e8: $e0 $60
    ret nz                                        ; $57ea: $c0

    ret nz                                        ; $57eb: $c0

    nop                                           ; $57ec: $00
    nop                                           ; $57ed: $00
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    nop                                           ; $57f0: $00
    nop                                           ; $57f1: $00
    nop                                           ; $57f2: $00
    nop                                           ; $57f3: $00
    nop                                           ; $57f4: $00
    nop                                           ; $57f5: $00
    nop                                           ; $57f6: $00
    nop                                           ; $57f7: $00
    nop                                           ; $57f8: $00
    nop                                           ; $57f9: $00
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    nop                                           ; $57fc: $00
    nop                                           ; $57fd: $00
    nop                                           ; $57fe: $00
    nop                                           ; $57ff: $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580a: $00
    nop                                           ; $580b: $00
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581a: $00
    nop                                           ; $581b: $00
    nop                                           ; $581c: $00
    nop                                           ; $581d: $00
    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00
    nop                                           ; $582c: $00
    nop                                           ; $582d: $00
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    ld bc, $0201                                  ; $5832: $01 $01 $02
    inc bc                                        ; $5835: $03

jr_020_5836:
    dec b                                         ; $5836: $05
    rlca                                          ; $5837: $07
    rlca                                          ; $5838: $07
    ld b, $0e                                     ; $5839: $06 $0e
    dec c                                         ; $583b: $0d
    ld a, a                                       ; $583c: $7f
    ld a, a                                       ; $583d: $7f
    rra                                           ; $583e: $1f
    rla                                           ; $583f: $17
    rra                                           ; $5840: $1f
    inc d                                         ; $5841: $14
    rrca                                          ; $5842: $0f
    inc c                                         ; $5843: $0c
    dec bc                                        ; $5844: $0b
    ld c, $05                                     ; $5845: $0e $05
    rlca                                          ; $5847: $07
    rlca                                          ; $5848: $07
    rlca                                          ; $5849: $07
    rlca                                          ; $584a: $07
    inc b                                         ; $584b: $04
    dec bc                                        ; $584c: $0b
    ld c, $0f                                     ; $584d: $0e $0f
    rrca                                          ; $584f: $0f
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    ret nz                                        ; $5852: $c0

    ret nz                                        ; $5853: $c0

    jr nz, jr_020_5836                            ; $5854: $20 $e0

    ld d, b                                       ; $5856: $50
    ldh a, [$f3]                                  ; $5857: $f0 $f3
    or e                                          ; $5859: $b3
    cp e                                          ; $585a: $bb
    ld e, e                                       ; $585b: $5b
    rst $38                                       ; $585c: $ff
    rst $38                                       ; $585d: $ff
    db $fc                                        ; $585e: $fc
    ld [hl], h                                    ; $585f: $74
    db $fc                                        ; $5860: $fc
    sub h                                         ; $5861: $94
    ld hl, sp+$18                                 ; $5862: $f8 $18
    add sp, $38                                   ; $5864: $e8 $38
    ret nc                                        ; $5866: $d0

    ldh a, [$f0]                                  ; $5867: $f0 $f0
    ldh a, [$f0]                                  ; $5869: $f0 $f0
    sub b                                         ; $586b: $90
    add sp, -$48                                  ; $586c: $e8 $b8
    ld a, b                                       ; $586e: $78
    ld a, b                                       ; $586f: $78
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    nop                                           ; $5874: $00
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587a: $00
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    nop                                           ; $587d: $00
    nop                                           ; $587e: $00
    nop                                           ; $587f: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588a: $00
    nop                                           ; $588b: $00
    nop                                           ; $588c: $00
    nop                                           ; $588d: $00
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    nop                                           ; $589b: $00
    nop                                           ; $589c: $00
    nop                                           ; $589d: $00
    nop                                           ; $589e: $00
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    nop                                           ; $58a1: $00
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    nop                                           ; $58a4: $00
    nop                                           ; $58a5: $00
    nop                                           ; $58a6: $00
    nop                                           ; $58a7: $00
    nop                                           ; $58a8: $00
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00
    nop                                           ; $58ab: $00
    nop                                           ; $58ac: $00
    nop                                           ; $58ad: $00
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    nop                                           ; $58b2: $00
    nop                                           ; $58b3: $00
    ld bc, $0201                                  ; $58b4: $01 $01 $02
    inc bc                                        ; $58b7: $03
    inc b                                         ; $58b8: $04
    rlca                                          ; $58b9: $07

jr_020_58ba:
    inc b                                         ; $58ba: $04
    rlca                                          ; $58bb: $07
    inc c                                         ; $58bc: $0c
    rrca                                          ; $58bd: $0f
    rrca                                          ; $58be: $0f
    dec bc                                        ; $58bf: $0b
    inc c                                         ; $58c0: $0c
    rrca                                          ; $58c1: $0f
    ld a, [bc]                                    ; $58c2: $0a
    rrca                                          ; $58c3: $0f
    rra                                           ; $58c4: $1f
    rla                                           ; $58c5: $17
    rra                                           ; $58c6: $1f
    dec e                                         ; $58c7: $1d
    rlca                                          ; $58c8: $07
    ld b, $03                                     ; $58c9: $06 $03
    inc bc                                        ; $58cb: $03

jr_020_58cc:
    nop                                           ; $58cc: $00
    nop                                           ; $58cd: $00
    nop                                           ; $58ce: $00
    nop                                           ; $58cf: $00
    nop                                           ; $58d0: $00
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    nop                                           ; $58d3: $00
    add b                                         ; $58d4: $80
    add b                                         ; $58d5: $80
    ld b, b                                       ; $58d6: $40
    ret nz                                        ; $58d7: $c0

    jr nz, jr_020_58ba                            ; $58d8: $20 $e0

    inc l                                         ; $58da: $2c
    db $ec                                        ; $58db: $ec
    inc a                                         ; $58dc: $3c
    db $fc                                        ; $58dd: $fc
    ld [hl], h                                    ; $58de: $74
    call nc, $f8b8                                ; $58df: $d4 $b8 $f8
    sbc b                                         ; $58e2: $98
    add sp, -$10                                  ; $58e3: $e8 $f0
    ldh a, [$e0]                                  ; $58e5: $f0 $e0
    jr nz, @-$0e                                  ; $58e7: $20 $f0

    ret nc                                        ; $58e9: $d0

    jr nz, jr_020_58cc                            ; $58ea: $20 $e0

    ret nz                                        ; $58ec: $c0

    ret nz                                        ; $58ed: $c0

    nop                                           ; $58ee: $00
    nop                                           ; $58ef: $00
    ld b, $59                                     ; $58f0: $06 $59
    add hl, bc                                    ; $58f2: $09
    ld e, c                                       ; $58f3: $59
    rrca                                          ; $58f4: $0f
    ld e, c                                       ; $58f5: $59
    ld [de], a                                    ; $58f6: $12
    ld e, c                                       ; $58f7: $59
    dec e                                         ; $58f8: $1d
    ld e, c                                       ; $58f9: $59
    inc h                                         ; $58fa: $24
    ld e, c                                       ; $58fb: $59
    inc l                                         ; $58fc: $2c
    ld e, c                                       ; $58fd: $59
    ld b, b                                       ; $58fe: $40
    ld e, c                                       ; $58ff: $59
    ld c, h                                       ; $5900: $4c
    ld e, c                                       ; $5901: $59
    ld b, $59                                     ; $5902: $06 $59
    ld d, l                                       ; $5904: $55
    ld e, c                                       ; $5905: $59
    nop                                           ; $5906: $00
    rst $38                                       ; $5907: $ff
    db $fd                                        ; $5908: $fd
    nop                                           ; $5909: $00
    ld e, $01                                     ; $590a: $1e $01
    ld e, $ff                                     ; $590c: $1e $ff
    nop                                           ; $590e: $00
    ld [bc], a                                    ; $590f: $02
    rst $38                                       ; $5910: $ff
    db $fd                                        ; $5911: $fd
    ld [bc], a                                    ; $5912: $02
    inc c                                         ; $5913: $0c
    inc bc                                        ; $5914: $03
    inc c                                         ; $5915: $0c
    inc b                                         ; $5916: $04
    jr jr_020_591b                                ; $5917: $18 $02

    inc c                                         ; $5919: $0c
    dec b                                         ; $591a: $05

jr_020_591b:
    inc c                                         ; $591b: $0c
    db $fd                                        ; $591c: $fd
    ld [bc], a                                    ; $591d: $02
    jr @+$05                                      ; $591e: $18 $03

    jr jr_020_5924                                ; $5920: $18 $02

    jr @-$01                                      ; $5922: $18 $fd

jr_020_5924:
    nop                                           ; $5924: $00
    ld a, [bc]                                    ; $5925: $0a
    ld b, $1e                                     ; $5926: $06 $1e
    nop                                           ; $5928: $00
    ld a, [bc]                                    ; $5929: $0a
    cp $01                                        ; $592a: $fe $01
    nop                                           ; $592c: $00
    ld a, [bc]                                    ; $592d: $0a
    rlca                                          ; $592e: $07
    ld a, [bc]                                    ; $592f: $0a
    nop                                           ; $5930: $00
    inc bc                                        ; $5931: $03
    ld [$000a], sp                                ; $5932: $08 $0a $00
    inc bc                                        ; $5935: $03
    rlca                                          ; $5936: $07
    ld a, [bc]                                    ; $5937: $0a
    nop                                           ; $5938: $00
    inc bc                                        ; $5939: $03
    ld [$000a], sp                                ; $593a: $08 $0a $00
    ld a, [bc]                                    ; $593d: $0a
    cp $01                                        ; $593e: $fe $01
    nop                                           ; $5940: $00
    ld a, [bc]                                    ; $5941: $0a
    add hl, bc                                    ; $5942: $09
    ld [$0800], sp                                ; $5943: $08 $00 $08
    add hl, bc                                    ; $5946: $09
    ld [$0a00], sp                                ; $5947: $08 $00 $0a
    cp $01                                        ; $594a: $fe $01
    ld [bc], a                                    ; $594c: $02
    ld [de], a                                    ; $594d: $12
    inc bc                                        ; $594e: $03
    ld [de], a                                    ; $594f: $12
    ld [bc], a                                    ; $5950: $02
    ld e, $05                                     ; $5951: $1e $05
    ld [de], a                                    ; $5953: $12
    db $fd                                        ; $5954: $fd
    ld a, [bc]                                    ; $5955: $0a
    ld e, $0b                                     ; $5956: $1e $0b
    ld e, $ff                                     ; $5958: $1e $ff
    nop                                           ; $595a: $00

    db $04, $04, $63, $59, $80, $65, $63, $59, $80, $59, $80, $5a, $80, $5b, $80, $5c

    add b                                         ; $596b: $80
    ld e, l                                       ; $596c: $5d

    db $80, $5e

    add b                                         ; $596f: $80
    ld e, a                                       ; $5970: $5f
    add b                                         ; $5971: $80
    ld h, b                                       ; $5972: $60
    add b                                         ; $5973: $80
    ld h, c                                       ; $5974: $61
    add b                                         ; $5975: $80
    ld h, d                                       ; $5976: $62

    db $80, $63, $80, $64

    nop                                           ; $597b: $00
    nop                                           ; $597c: $00
    nop                                           ; $597d: $00
    nop                                           ; $597e: $00
    nop                                           ; $597f: $00
    ld bc, $1a01                                  ; $5980: $01 $01 $1a
    dec de                                        ; $5983: $1b
    daa                                           ; $5984: $27
    ccf                                           ; $5985: $3f
    inc h                                         ; $5986: $24
    ccf                                           ; $5987: $3f
    inc l                                         ; $5988: $2c
    ccf                                           ; $5989: $3f
    rra                                           ; $598a: $1f
    dec de                                        ; $598b: $1b
    rrca                                          ; $598c: $0f
    add hl, bc                                    ; $598d: $09
    rlca                                          ; $598e: $07
    ld b, $03                                     ; $598f: $06 $03
    inc bc                                        ; $5991: $03
    rlca                                          ; $5992: $07
    rlca                                          ; $5993: $07
    rrca                                          ; $5994: $0f
    dec c                                         ; $5995: $0d
    rrca                                          ; $5996: $0f
    dec bc                                        ; $5997: $0b
    ld b, $07                                     ; $5998: $06 $07
    rrca                                          ; $599a: $0f
    rrca                                          ; $599b: $0f
    ld c, $0e                                     ; $599c: $0e $0e
    ld b, $06                                     ; $599e: $06 $06
    add b                                         ; $59a0: $80
    add b                                         ; $59a1: $80
    ld h, b                                       ; $59a2: $60
    ldh [rNR10], a                                ; $59a3: $e0 $10
    ldh a, [rSVBK]                                ; $59a5: $f0 $70
    ldh a, [$f0]                                  ; $59a7: $f0 $f0
    sub b                                         ; $59a9: $90
    ldh a, [$30]                                  ; $59aa: $f0 $30
    ld hl, sp+$28                                 ; $59ac: $f8 $28
    ld hl, sp+$08                                 ; $59ae: $f8 $08
    ldh a, [rNR10]                                ; $59b0: $f0 $10
    ldh [$e0], a                                  ; $59b2: $e0 $e0
    ldh [$60], a                                  ; $59b4: $e0 $60
    ldh a, [$d0]                                  ; $59b6: $f0 $d0
    ld h, b                                       ; $59b8: $60
    ldh [$e0], a                                  ; $59b9: $e0 $e0
    and b                                         ; $59bb: $a0
    sub b                                         ; $59bc: $90
    ldh a, [$60]                                  ; $59bd: $f0 $60
    ld h, b                                       ; $59bf: $60
    scf                                           ; $59c0: $37
    scf                                           ; $59c1: $37
    add hl, hl                                    ; $59c2: $29
    ccf                                           ; $59c3: $3f
    ld d, b                                       ; $59c4: $50
    ld a, a                                       ; $59c5: $7f
    ld d, [hl]                                    ; $59c6: $56
    ld a, a                                       ; $59c7: $7f
    ccf                                           ; $59c8: $3f
    add hl, sp                                    ; $59c9: $39
    ccf                                           ; $59ca: $3f
    ld a, [hl+]                                   ; $59cb: $2a
    ccf                                           ; $59cc: $3f
    ld [hl+], a                                   ; $59cd: $22
    ld a, a                                       ; $59ce: $7f
    ld a, b                                       ; $59cf: $78
    rst $38                                       ; $59d0: $ff
    xor h                                         ; $59d1: $ac
    rst $38                                       ; $59d2: $ff
    ei                                            ; $59d3: $fb
    ld d, a                                       ; $59d4: $57
    ld e, a                                       ; $59d5: $5f
    ld c, c                                       ; $59d6: $49
    ld c, a                                       ; $59d7: $4f
    rst $08                                       ; $59d8: $cf
    rst $08                                       ; $59d9: $cf
    rst $08                                       ; $59da: $cf
    ret                                           ; $59db: $c9


jr_020_59dc:
    add hl, bc                                    ; $59dc: $09
    rrca                                          ; $59dd: $0f
    rlca                                          ; $59de: $07
    rlca                                          ; $59df: $07
    ret c                                         ; $59e0: $d8

    ret c                                         ; $59e1: $d8

    jr z, jr_020_59dc                             ; $59e2: $28 $f8

    inc d                                         ; $59e4: $14
    db $fc                                        ; $59e5: $fc
    call nc, $f8fc                                ; $59e6: $d4 $fc $f8
    jr c, @-$06                                   ; $59e9: $38 $f8

    xor b                                         ; $59eb: $a8
    ld hl, sp-$78                                 ; $59ec: $f8 $88
    ldh a, [$30]                                  ; $59ee: $f0 $30
    ld hl, sp+$68                                 ; $59f0: $f8 $68
    ld hl, sp-$48                                 ; $59f2: $f8 $b8
    call c, Call_000_3cf4                         ; $59f4: $dc $f4 $3c
    db $f4                                        ; $59f7: $f4
    ld hl, sp-$08                                 ; $59f8: $f8 $f8
    ldh [$e0], a                                  ; $59fa: $e0 $e0
    nop                                           ; $59fc: $00
    nop                                           ; $59fd: $00
    nop                                           ; $59fe: $00
    nop                                           ; $59ff: $00
    ld bc, $0601                                  ; $5a00: $01 $01 $06
    rlca                                          ; $5a03: $07
    ld [$0e0f], sp                                ; $5a04: $08 $0f $0e
    rrca                                          ; $5a07: $0f
    rrca                                          ; $5a08: $0f
    add hl, bc                                    ; $5a09: $09
    rrca                                          ; $5a0a: $0f
    inc c                                         ; $5a0b: $0c
    rra                                           ; $5a0c: $1f
    inc d                                         ; $5a0d: $14
    rra                                           ; $5a0e: $1f
    db $10                                        ; $5a0f: $10
    rrca                                          ; $5a10: $0f
    ld [$0707], sp                                ; $5a11: $08 $07 $07
    rrca                                          ; $5a14: $0f
    ld a, [bc]                                    ; $5a15: $0a
    rra                                           ; $5a16: $1f
    rla                                           ; $5a17: $17
    ld c, $0f                                     ; $5a18: $0e $0f
    rrca                                          ; $5a1a: $0f
    rrca                                          ; $5a1b: $0f
    ld c, $0e                                     ; $5a1c: $0e $0e
    ld b, $06                                     ; $5a1e: $06 $06
    add b                                         ; $5a20: $80
    add b                                         ; $5a21: $80
    ld e, b                                       ; $5a22: $58
    ret c                                         ; $5a23: $d8

    db $e4                                        ; $5a24: $e4
    db $fc                                        ; $5a25: $fc
    inc h                                         ; $5a26: $24
    db $fc                                        ; $5a27: $fc
    inc [hl]                                      ; $5a28: $34
    db $fc                                        ; $5a29: $fc
    ld hl, sp-$28                                 ; $5a2a: $f8 $d8
    ldh a, [$90]                                  ; $5a2c: $f0 $90
    ldh [$60], a                                  ; $5a2e: $e0 $60
    ret nz                                        ; $5a30: $c0

    ret nz                                        ; $5a31: $c0

    ret nz                                        ; $5a32: $c0

    ret nz                                        ; $5a33: $c0

    ldh [$60], a                                  ; $5a34: $e0 $60
    ldh [$a0], a                                  ; $5a36: $e0 $a0
    ld h, b                                       ; $5a38: $60
    ldh [$d0], a                                  ; $5a39: $e0 $d0
    or b                                          ; $5a3b: $b0
    ret nc                                        ; $5a3c: $d0

    ldh a, [$60]                                  ; $5a3d: $f0 $60
    ld h, b                                       ; $5a3f: $60
    inc bc                                        ; $5a40: $03
    inc bc                                        ; $5a41: $03
    dec [hl]                                      ; $5a42: $35
    scf                                           ; $5a43: $37
    ld l, b                                       ; $5a44: $68
    ld a, a                                       ; $5a45: $7f
    ld c, b                                       ; $5a46: $48
    ld a, a                                       ; $5a47: $7f
    jr nc, jr_020_5a89                            ; $5a48: $30 $3f

    jr c, @+$31                                   ; $5a4a: $38 $2f

    jr c, jr_020_5a7d                             ; $5a4c: $38 $2f

    inc e                                         ; $5a4e: $1c
    rra                                           ; $5a4f: $1f
    ld l, a                                       ; $5a50: $6f
    ld a, a                                       ; $5a51: $7f
    ld a, a                                       ; $5a52: $7f
    ld e, e                                       ; $5a53: $5b

jr_020_5a54:
    scf                                           ; $5a54: $37
    inc a                                         ; $5a55: $3c

jr_020_5a56:
    add hl, bc                                    ; $5a56: $09
    rrca                                          ; $5a57: $0f
    rrca                                          ; $5a58: $0f
    rrca                                          ; $5a59: $0f
    rrca                                          ; $5a5a: $0f
    add hl, bc                                    ; $5a5b: $09
    add hl, bc                                    ; $5a5c: $09
    rrca                                          ; $5a5d: $0f
    rlca                                          ; $5a5e: $07
    rlca                                          ; $5a5f: $07
    add b                                         ; $5a60: $80
    add b                                         ; $5a61: $80

jr_020_5a62:
    ld e, b                                       ; $5a62: $58
    ret c                                         ; $5a63: $d8

    inc l                                         ; $5a64: $2c
    db $fc                                        ; $5a65: $fc
    inc h                                         ; $5a66: $24
    db $fc                                        ; $5a67: $fc
    jr jr_020_5a62                                ; $5a68: $18 $f8

    jr c, jr_020_5a54                             ; $5a6a: $38 $e8

    jr c, jr_020_5a56                             ; $5a6c: $38 $e8

    ld [hl], b                                    ; $5a6e: $70
    ldh a, [$e8]                                  ; $5a6f: $f0 $e8
    ld hl, sp-$05                                 ; $5a71: $f8 $fb
    cp e                                          ; $5a73: $bb
    rst $18                                       ; $5a74: $df
    ld [hl], a                                    ; $5a75: $77
    inc a                                         ; $5a76: $3c
    db $f4                                        ; $5a77: $f4
    ld hl, sp-$08                                 ; $5a78: $f8 $f8
    ldh [$e0], a                                  ; $5a7a: $e0 $e0
    nop                                           ; $5a7c: $00

jr_020_5a7d:
    nop                                           ; $5a7d: $00
    nop                                           ; $5a7e: $00
    nop                                           ; $5a7f: $00
    ld bc, $1a01                                  ; $5a80: $01 $01 $1a
    dec de                                        ; $5a83: $1b
    daa                                           ; $5a84: $27
    ccf                                           ; $5a85: $3f
    inc h                                         ; $5a86: $24
    ccf                                           ; $5a87: $3f
    inc l                                         ; $5a88: $2c

jr_020_5a89:
    ccf                                           ; $5a89: $3f
    rra                                           ; $5a8a: $1f
    dec de                                        ; $5a8b: $1b
    rrca                                          ; $5a8c: $0f
    add hl, bc                                    ; $5a8d: $09
    rlca                                          ; $5a8e: $07
    ld b, $03                                     ; $5a8f: $06 $03
    inc bc                                        ; $5a91: $03
    inc bc                                        ; $5a92: $03
    inc bc                                        ; $5a93: $03
    rlca                                          ; $5a94: $07
    ld b, $05                                     ; $5a95: $06 $05
    rlca                                          ; $5a97: $07
    ld b, $07                                     ; $5a98: $06 $07
    dec bc                                        ; $5a9a: $0b
    dec c                                         ; $5a9b: $0d
    dec bc                                        ; $5a9c: $0b
    rrca                                          ; $5a9d: $0f
    ld b, $06                                     ; $5a9e: $06 $06
    add b                                         ; $5aa0: $80
    add b                                         ; $5aa1: $80
    ld h, b                                       ; $5aa2: $60
    ldh [rNR10], a                                ; $5aa3: $e0 $10
    ldh a, [rSVBK]                                ; $5aa5: $f0 $70
    ldh a, [$f0]                                  ; $5aa7: $f0 $f0
    sub b                                         ; $5aa9: $90
    ldh a, [$30]                                  ; $5aaa: $f0 $30
    ld hl, sp+$28                                 ; $5aac: $f8 $28
    ld hl, sp+$08                                 ; $5aae: $f8 $08
    ldh a, [rNR10]                                ; $5ab0: $f0 $10
    and $e6                                       ; $5ab2: $e6 $e6
    or $56                                        ; $5ab4: $f6 $56
    db $fc                                        ; $5ab6: $fc
    db $ec                                        ; $5ab7: $ec
    ld [hl], b                                    ; $5ab8: $70
    ldh a, [$f0]                                  ; $5ab9: $f0 $f0
    ldh a, [rSVBK]                                ; $5abb: $f0 $70
    ld [hl], b                                    ; $5abd: $70
    ld h, b                                       ; $5abe: $60
    ld h, b                                       ; $5abf: $60
    scf                                           ; $5ac0: $37
    scf                                           ; $5ac1: $37
    add hl, hl                                    ; $5ac2: $29
    ccf                                           ; $5ac3: $3f
    ld d, b                                       ; $5ac4: $50
    ld a, a                                       ; $5ac5: $7f
    ld d, [hl]                                    ; $5ac6: $56
    ld a, a                                       ; $5ac7: $7f
    ccf                                           ; $5ac8: $3f
    add hl, sp                                    ; $5ac9: $39
    ccf                                           ; $5aca: $3f
    ld a, [hl+]                                   ; $5acb: $2a
    ccf                                           ; $5acc: $3f
    ld [hl+], a                                   ; $5acd: $22
    rra                                           ; $5ace: $1f
    jr jr_020_5b10                                ; $5acf: $18 $3f

    inc l                                         ; $5ad1: $2c
    ccf                                           ; $5ad2: $3f
    dec sp                                        ; $5ad3: $3b
    ld [hl], a                                    ; $5ad4: $77
    ld a, a                                       ; $5ad5: $7f
    ld sp, hl                                     ; $5ad6: $f9
    rst $18                                       ; $5ad7: $df
    rst $38                                       ; $5ad8: $ff
    rst $38                                       ; $5ad9: $ff
    rrca                                          ; $5ada: $0f
    rrca                                          ; $5adb: $0f

jr_020_5adc:
    ld bc, $0101                                  ; $5adc: $01 $01 $01
    ld bc, $d8d8                                  ; $5adf: $01 $d8 $d8
    jr z, jr_020_5adc                             ; $5ae2: $28 $f8

    inc d                                         ; $5ae4: $14
    db $fc                                        ; $5ae5: $fc
    call nc, $f8fc                                ; $5ae6: $d4 $fc $f8
    jr c, @-$06                                   ; $5ae9: $38 $f8

    xor b                                         ; $5aeb: $a8
    ld hl, sp-$78                                 ; $5aec: $f8 $88
    db $fc                                        ; $5aee: $fc
    inc a                                         ; $5aef: $3c
    cp $6a                                        ; $5af0: $fe $6a
    cp $be                                        ; $5af2: $fe $be
    ret nc                                        ; $5af4: $d0

    ldh a, [rNR41]                                ; $5af5: $f0 $20
    ldh [$e0], a                                  ; $5af7: $e0 $e0
    ldh [$e0], a                                  ; $5af9: $e0 $e0
    jr nz, jr_020_5b1d                            ; $5afb: $20 $20

    ldh [$c0], a                                  ; $5afd: $e0 $c0
    ret nz                                        ; $5aff: $c0

    ld bc, $0601                                  ; $5b00: $01 $01 $06
    rlca                                          ; $5b03: $07
    ld [$0e0f], sp                                ; $5b04: $08 $0f $0e
    rrca                                          ; $5b07: $0f
    rrca                                          ; $5b08: $0f
    add hl, bc                                    ; $5b09: $09
    rrca                                          ; $5b0a: $0f
    inc c                                         ; $5b0b: $0c
    rra                                           ; $5b0c: $1f
    inc d                                         ; $5b0d: $14
    rra                                           ; $5b0e: $1f
    db $10                                        ; $5b0f: $10

jr_020_5b10:
    rrca                                          ; $5b10: $0f
    ld [$6767], sp                                ; $5b11: $08 $67 $67
    ld [hl], a                                    ; $5b14: $77
    halt                                          ; $5b15: $76
    rra                                           ; $5b16: $1f
    dec de                                        ; $5b17: $1b
    ld b, $07                                     ; $5b18: $06 $07
    rlca                                          ; $5b1a: $07
    dec b                                         ; $5b1b: $05
    add hl, bc                                    ; $5b1c: $09

jr_020_5b1d:
    rrca                                          ; $5b1d: $0f
    ld b, $06                                     ; $5b1e: $06 $06
    add b                                         ; $5b20: $80
    add b                                         ; $5b21: $80
    ld e, b                                       ; $5b22: $58
    ret c                                         ; $5b23: $d8

    db $e4                                        ; $5b24: $e4
    db $fc                                        ; $5b25: $fc
    inc h                                         ; $5b26: $24
    db $fc                                        ; $5b27: $fc
    inc [hl]                                      ; $5b28: $34
    db $fc                                        ; $5b29: $fc
    ld hl, sp-$28                                 ; $5b2a: $f8 $d8
    ldh a, [$90]                                  ; $5b2c: $f0 $90
    ldh [$60], a                                  ; $5b2e: $e0 $60
    ret nz                                        ; $5b30: $c0

    ret nz                                        ; $5b31: $c0

    ldh [$e0], a                                  ; $5b32: $e0 $e0
    ldh a, [$b0]                                  ; $5b34: $f0 $b0
    ldh a, [$d0]                                  ; $5b36: $f0 $d0
    ld h, b                                       ; $5b38: $60
    ldh [$f0], a                                  ; $5b39: $e0 $f0
    ldh a, [rSVBK]                                ; $5b3b: $f0 $70
    ld [hl], b                                    ; $5b3d: $70
    ld h, b                                       ; $5b3e: $60
    ld h, b                                       ; $5b3f: $60
    inc bc                                        ; $5b40: $03
    inc bc                                        ; $5b41: $03
    dec [hl]                                      ; $5b42: $35
    scf                                           ; $5b43: $37
    ld l, b                                       ; $5b44: $68
    ld a, a                                       ; $5b45: $7f
    ld c, b                                       ; $5b46: $48
    ld a, a                                       ; $5b47: $7f
    jr nc, jr_020_5b89                            ; $5b48: $30 $3f

    jr c, @+$31                                   ; $5b4a: $38 $2f

    jr c, @+$31                                   ; $5b4c: $38 $2f

    inc e                                         ; $5b4e: $1c
    rra                                           ; $5b4f: $1f
    cpl                                           ; $5b50: $2f
    ccf                                           ; $5b51: $3f
    ccf                                           ; $5b52: $3f
    dec sp                                        ; $5b53: $3b
    ld [hl], a                                    ; $5b54: $77
    ld e, h                                       ; $5b55: $5c
    ld a, c                                       ; $5b56: $79
    ld e, a                                       ; $5b57: $5f

jr_020_5b58:
    ccf                                           ; $5b58: $3f
    ccf                                           ; $5b59: $3f
    rrca                                          ; $5b5a: $0f
    rrca                                          ; $5b5b: $0f
    ld bc, $0101                                  ; $5b5c: $01 $01 $01
    ld bc, $8080                                  ; $5b5f: $01 $80 $80

jr_020_5b62:
    ld e, b                                       ; $5b62: $58
    ret c                                         ; $5b63: $d8

    inc l                                         ; $5b64: $2c
    db $fc                                        ; $5b65: $fc
    inc h                                         ; $5b66: $24
    db $fc                                        ; $5b67: $fc
    jr jr_020_5b62                                ; $5b68: $18 $f8

    dec sp                                        ; $5b6a: $3b
    db $eb                                        ; $5b6b: $eb
    dec sp                                        ; $5b6c: $3b
    db $eb                                        ; $5b6d: $eb
    ld [hl], d                                    ; $5b6e: $72
    ld a, [c]                                     ; $5b6f: $f2
    xor $fe                                       ; $5b70: $ee $fe
    db $fc                                        ; $5b72: $fc
    or h                                          ; $5b73: $b4
    ret c                                         ; $5b74: $d8

    ld a, b                                       ; $5b75: $78
    jr nz, jr_020_5b58                            ; $5b76: $20 $e0

    ldh [$e0], a                                  ; $5b78: $e0 $e0
    ldh [rNR41], a                                ; $5b7a: $e0 $20
    jr nz, @-$1e                                  ; $5b7c: $20 $e0

    ret nz                                        ; $5b7e: $c0

    ret nz                                        ; $5b7f: $c0

    nop                                           ; $5b80: $00
    nop                                           ; $5b81: $00
    dec c                                         ; $5b82: $0d
    dec c                                         ; $5b83: $0d

jr_020_5b84:
    rla                                           ; $5b84: $17
    rra                                           ; $5b85: $1f
    ld [hl+], a                                   ; $5b86: $22
    ccf                                           ; $5b87: $3f
    inc h                                         ; $5b88: $24

jr_020_5b89:
    ccf                                           ; $5b89: $3f
    rra                                           ; $5b8a: $1f
    dec de                                        ; $5b8b: $1b
    rrca                                          ; $5b8c: $0f
    add hl, bc                                    ; $5b8d: $09
    rlca                                          ; $5b8e: $07
    ld b, $03                                     ; $5b8f: $06 $03
    inc bc                                        ; $5b91: $03
    rlca                                          ; $5b92: $07
    dec b                                         ; $5b93: $05
    rrca                                          ; $5b94: $0f
    ld [$0d0f], sp                                ; $5b95: $08 $0f $0d
    dec bc                                        ; $5b98: $0b
    rrca                                          ; $5b99: $0f
    rlca                                          ; $5b9a: $07
    dec b                                         ; $5b9b: $05
    inc b                                         ; $5b9c: $04
    rlca                                          ; $5b9d: $07
    rlca                                          ; $5b9e: $07
    rlca                                          ; $5b9f: $07
    ret nz                                        ; $5ba0: $c0

    ret nz                                        ; $5ba1: $c0

    jr nz, jr_020_5b84                            ; $5ba2: $20 $e0

    and b                                         ; $5ba4: $a0
    ldh [rNR10], a                                ; $5ba5: $e0 $10
    ldh a, [$f0]                                  ; $5ba7: $f0 $f0
    ldh a, [$f0]                                  ; $5ba9: $f0 $f0
    sub b                                         ; $5bab: $90
    ldh a, [$30]                                  ; $5bac: $f0 $30
    ld hl, sp+$28                                 ; $5bae: $f8 $28
    ldh a, [rNR10]                                ; $5bb0: $f0 $10
    ldh [$e0], a                                  ; $5bb2: $e0 $e0
    add b                                         ; $5bb4: $80
    add b                                         ; $5bb5: $80
    ret nz                                        ; $5bb6: $c0

    ld b, b                                       ; $5bb7: $40
    ldh [$a0], a                                  ; $5bb8: $e0 $a0
    ldh a, [$f0]                                  ; $5bba: $f0 $f0
    sbc e                                         ; $5bbc: $9b
    sbc e                                         ; $5bbd: $9b
    adc a                                         ; $5bbe: $8f
    adc a                                         ; $5bbf: $8f
    ld [$1508], sp                                ; $5bc0: $08 $08 $15
    dec e                                         ; $5bc3: $1d
    ld [hl+], a                                   ; $5bc4: $22
    ccf                                           ; $5bc5: $3f
    inc hl                                        ; $5bc6: $23
    ccf                                           ; $5bc7: $3f
    dec d                                         ; $5bc8: $15
    rra                                           ; $5bc9: $1f
    rrca                                          ; $5bca: $0f
    ld c, $0f                                     ; $5bcb: $0e $0f
    ld a, [bc]                                    ; $5bcd: $0a
    rrca                                          ; $5bce: $0f
    ld [$0607], sp                                ; $5bcf: $08 $07 $06
    rlca                                          ; $5bd2: $07
    rlca                                          ; $5bd3: $07
    rlca                                          ; $5bd4: $07
    dec b                                         ; $5bd5: $05
    rlca                                          ; $5bd6: $07
    ld b, $07                                     ; $5bd7: $06 $07
    rlca                                          ; $5bd9: $07
    rlca                                          ; $5bda: $07
    dec b                                         ; $5bdb: $05
    add hl, bc                                    ; $5bdc: $09
    rrca                                          ; $5bdd: $0f
    ld c, $0e                                     ; $5bde: $0e $0e
    jr nc, @+$32                                  ; $5be0: $30 $30

    add sp, -$08                                  ; $5be2: $e8 $f8
    or h                                          ; $5be4: $b4
    db $fc                                        ; $5be5: $fc
    call nc, $fcfc                                ; $5be6: $d4 $fc $fc
    inc a                                         ; $5be9: $3c
    ld hl, sp+$08                                 ; $5bea: $f8 $08
    ld hl, sp-$58                                 ; $5bec: $f8 $a8
    ld hl, sp-$58                                 ; $5bee: $f8 $a8
    ldh a, [rNR10]                                ; $5bf0: $f0 $10
    ldh a, [$f0]                                  ; $5bf2: $f0 $f0
    ldh a, [$d0]                                  ; $5bf4: $f0 $d0
    ldh a, [$b0]                                  ; $5bf6: $f0 $b0
    ld [hl], b                                    ; $5bf8: $70
    ldh a, [$f0]                                  ; $5bf9: $f0 $f0
    ret nc                                        ; $5bfb: $d0

    ld c, b                                       ; $5bfc: $48
    ld a, b                                       ; $5bfd: $78
    jr c, jr_020_5c38                             ; $5bfe: $38 $38

    inc bc                                        ; $5c00: $03
    inc bc                                        ; $5c01: $03
    inc b                                         ; $5c02: $04
    rlca                                          ; $5c03: $07
    dec b                                         ; $5c04: $05
    rlca                                          ; $5c05: $07
    ld [$0f0f], sp                                ; $5c06: $08 $0f $0f
    rrca                                          ; $5c09: $0f
    rrca                                          ; $5c0a: $0f
    add hl, bc                                    ; $5c0b: $09
    rrca                                          ; $5c0c: $0f
    inc c                                         ; $5c0d: $0c
    rra                                           ; $5c0e: $1f
    inc d                                         ; $5c0f: $14
    rrca                                          ; $5c10: $0f
    ld [$0707], sp                                ; $5c11: $08 $07 $07
    ld bc, $0301                                  ; $5c14: $01 $01 $03
    ld [bc], a                                    ; $5c17: $02
    rlca                                          ; $5c18: $07
    dec b                                         ; $5c19: $05
    rrca                                          ; $5c1a: $0f
    rrca                                          ; $5c1b: $0f
    reti                                          ; $5c1c: $d9


    reti                                          ; $5c1d: $d9


jr_020_5c1e:
    pop af                                        ; $5c1e: $f1
    pop af                                        ; $5c1f: $f1
    nop                                           ; $5c20: $00
    nop                                           ; $5c21: $00
    or b                                          ; $5c22: $b0
    or b                                          ; $5c23: $b0
    add sp, -$08                                  ; $5c24: $e8 $f8
    ld b, h                                       ; $5c26: $44
    db $fc                                        ; $5c27: $fc
    inc h                                         ; $5c28: $24
    db $fc                                        ; $5c29: $fc
    ld hl, sp-$28                                 ; $5c2a: $f8 $d8
    ldh a, [$90]                                  ; $5c2c: $f0 $90
    ldh [$60], a                                  ; $5c2e: $e0 $60
    ret nz                                        ; $5c30: $c0

    ret nz                                        ; $5c31: $c0

    ldh [$a0], a                                  ; $5c32: $e0 $a0
    ldh a, [rNR10]                                ; $5c34: $f0 $10
    ldh a, [$b0]                                  ; $5c36: $f0 $b0

jr_020_5c38:
    ret nc                                        ; $5c38: $d0

    ldh a, [$e0]                                  ; $5c39: $f0 $e0
    and b                                         ; $5c3b: $a0
    jr nz, jr_020_5c1e                            ; $5c3c: $20 $e0

    ldh [$e0], a                                  ; $5c3e: $e0 $e0
    inc e                                         ; $5c40: $1c
    inc e                                         ; $5c41: $1c
    ld [de], a                                    ; $5c42: $12
    ld e, $23                                     ; $5c43: $1e $23
    ccf                                           ; $5c45: $3f
    inc h                                         ; $5c46: $24
    ccf                                           ; $5c47: $3f
    jr jr_020_5c69                                ; $5c48: $18 $1f

    inc e                                         ; $5c4a: $1c
    rla                                           ; $5c4b: $17
    ld e, $17                                     ; $5c4c: $1e $17
    rra                                           ; $5c4e: $1f
    dec d                                         ; $5c4f: $15
    rrca                                          ; $5c50: $0f
    dec bc                                        ; $5c51: $0b
    rlca                                          ; $5c52: $07
    ld b, $07                                     ; $5c53: $06 $07
    dec b                                         ; $5c55: $05
    ld b, $07                                     ; $5c56: $06 $07
    dec b                                         ; $5c58: $05
    rlca                                          ; $5c59: $07
    rrca                                          ; $5c5a: $0f
    dec bc                                        ; $5c5b: $0b
    inc de                                        ; $5c5c: $13
    rra                                           ; $5c5d: $1f
    rra                                           ; $5c5e: $1f
    rra                                           ; $5c5f: $1f
    jr nc, jr_020_5c92                            ; $5c60: $30 $30

    ret c                                         ; $5c62: $d8

    ld hl, sp+$48                                 ; $5c63: $f8 $48
    ld hl, sp-$50                                 ; $5c65: $f8 $b0
    ldh a, [$50]                                  ; $5c67: $f0 $50

jr_020_5c69:
    ldh a, [rNR10]                                ; $5c69: $f0 $10
    ldh a, [rNR10]                                ; $5c6b: $f0 $10
    ldh a, [rNR41]                                ; $5c6d: $f0 $20
    ldh [$c0], a                                  ; $5c6f: $e0 $c0
    ret nz                                        ; $5c71: $c0

    ldh [$60], a                                  ; $5c72: $e0 $60
    ldh [$a0], a                                  ; $5c74: $e0 $a0
    ld h, b                                       ; $5c76: $60
    ldh [$a0], a                                  ; $5c77: $e0 $a0
    ldh [$e0], a                                  ; $5c79: $e0 $e0
    and b                                         ; $5c7b: $a0
    sub b                                         ; $5c7c: $90
    ldh a, [$f0]                                  ; $5c7d: $f0 $f0
    ldh a, [rP1]                                  ; $5c7f: $f0 $00
    nop                                           ; $5c81: $00
    dec c                                         ; $5c82: $0d
    dec c                                         ; $5c83: $0d

jr_020_5c84:
    rla                                           ; $5c84: $17
    rra                                           ; $5c85: $1f
    ld [hl+], a                                   ; $5c86: $22
    ccf                                           ; $5c87: $3f
    inc h                                         ; $5c88: $24
    ccf                                           ; $5c89: $3f
    rra                                           ; $5c8a: $1f
    dec de                                        ; $5c8b: $1b
    rrca                                          ; $5c8c: $0f
    add hl, bc                                    ; $5c8d: $09
    rlca                                          ; $5c8e: $07
    ld b, $07                                     ; $5c8f: $06 $07
    rlca                                          ; $5c91: $07

jr_020_5c92:
    rrca                                          ; $5c92: $0f
    dec bc                                        ; $5c93: $0b
    rrca                                          ; $5c94: $0f
    dec c                                         ; $5c95: $0d
    ld c, $0f                                     ; $5c96: $0e $0f
    dec bc                                        ; $5c98: $0b
    rrca                                          ; $5c99: $0f
    rlca                                          ; $5c9a: $07
    dec b                                         ; $5c9b: $05
    inc b                                         ; $5c9c: $04
    rlca                                          ; $5c9d: $07
    rlca                                          ; $5c9e: $07
    rlca                                          ; $5c9f: $07
    ret nz                                        ; $5ca0: $c0

    ret nz                                        ; $5ca1: $c0

    jr nz, jr_020_5c84                            ; $5ca2: $20 $e0

    and b                                         ; $5ca4: $a0
    ldh [rNR10], a                                ; $5ca5: $e0 $10
    ldh a, [$f0]                                  ; $5ca7: $f0 $f0
    ldh a, [$f0]                                  ; $5ca9: $f0 $f0
    sub b                                         ; $5cab: $90
    ldh a, [$30]                                  ; $5cac: $f0 $30
    ld hl, sp+$28                                 ; $5cae: $f8 $28
    ldh a, [rNR10]                                ; $5cb0: $f0 $10
    ldh [$e0], a                                  ; $5cb2: $e0 $e0
    ret nz                                        ; $5cb4: $c0

    ld b, b                                       ; $5cb5: $40
    add b                                         ; $5cb6: $80
    add b                                         ; $5cb7: $80
    add b                                         ; $5cb8: $80
    add b                                         ; $5cb9: $80
    nop                                           ; $5cba: $00
    nop                                           ; $5cbb: $00
    add b                                         ; $5cbc: $80
    add b                                         ; $5cbd: $80
    ret nz                                        ; $5cbe: $c0

    ret nz                                        ; $5cbf: $c0

    ld [$1508], sp                                ; $5cc0: $08 $08 $15
    dec e                                         ; $5cc3: $1d
    ld [hl+], a                                   ; $5cc4: $22
    ccf                                           ; $5cc5: $3f
    inc hl                                        ; $5cc6: $23
    ccf                                           ; $5cc7: $3f
    dec d                                         ; $5cc8: $15
    rra                                           ; $5cc9: $1f
    rrca                                          ; $5cca: $0f
    ld c, $0f                                     ; $5ccb: $0e $0f
    ld a, [bc]                                    ; $5ccd: $0a
    rrca                                          ; $5cce: $0f
    ld [$0607], sp                                ; $5ccf: $08 $07 $06
    rlca                                          ; $5cd2: $07
    dec b                                         ; $5cd3: $05
    rra                                           ; $5cd4: $1f
    dec e                                         ; $5cd5: $1d
    dec e                                         ; $5cd6: $1d
    ld e, $0f                                     ; $5cd7: $1e $0f
    rrca                                          ; $5cd9: $0f
    rlca                                          ; $5cda: $07
    dec b                                         ; $5cdb: $05
    add hl, bc                                    ; $5cdc: $09
    rrca                                          ; $5cdd: $0f
    ld c, $0e                                     ; $5cde: $0e $0e
    jr nc, @+$32                                  ; $5ce0: $30 $30

    add sp, -$08                                  ; $5ce2: $e8 $f8
    or h                                          ; $5ce4: $b4
    db $fc                                        ; $5ce5: $fc
    call nc, $fcfc                                ; $5ce6: $d4 $fc $fc
    inc a                                         ; $5ce9: $3c
    ld hl, sp+$08                                 ; $5cea: $f8 $08
    ld hl, sp-$58                                 ; $5cec: $f8 $a8
    ld hl, sp-$58                                 ; $5cee: $f8 $a8
    ldh a, [rNR10]                                ; $5cf0: $f0 $10
    ldh a, [$f0]                                  ; $5cf2: $f0 $f0
    ldh a, [$d0]                                  ; $5cf4: $f0 $d0
    ldh a, [$b0]                                  ; $5cf6: $f0 $b0
    ldh a, [$f0]                                  ; $5cf8: $f0 $f0
    ldh a, [$d0]                                  ; $5cfa: $f0 $d0
    ld c, b                                       ; $5cfc: $48
    ld a, b                                       ; $5cfd: $78
    jr c, jr_020_5d38                             ; $5cfe: $38 $38

    inc bc                                        ; $5d00: $03
    inc bc                                        ; $5d01: $03
    inc b                                         ; $5d02: $04
    rlca                                          ; $5d03: $07
    dec b                                         ; $5d04: $05
    rlca                                          ; $5d05: $07
    ld [$0f0f], sp                                ; $5d06: $08 $0f $0f
    rrca                                          ; $5d09: $0f
    rrca                                          ; $5d0a: $0f
    add hl, bc                                    ; $5d0b: $09
    rrca                                          ; $5d0c: $0f
    inc c                                         ; $5d0d: $0c
    rra                                           ; $5d0e: $1f
    inc d                                         ; $5d0f: $14
    rrca                                          ; $5d10: $0f
    ld [$0707], sp                                ; $5d11: $08 $07 $07
    inc bc                                        ; $5d14: $03
    inc bc                                        ; $5d15: $03
    inc bc                                        ; $5d16: $03
    ld [bc], a                                    ; $5d17: $02
    ld bc, $0001                                  ; $5d18: $01 $01 $00
    nop                                           ; $5d1b: $00
    ld bc, $0101                                  ; $5d1c: $01 $01 $01
    ld bc, $0000                                  ; $5d1f: $01 $00 $00
    or b                                          ; $5d22: $b0
    or b                                          ; $5d23: $b0
    add sp, -$08                                  ; $5d24: $e8 $f8
    ld b, h                                       ; $5d26: $44
    db $fc                                        ; $5d27: $fc
    inc h                                         ; $5d28: $24
    db $fc                                        ; $5d29: $fc
    ld hl, sp-$28                                 ; $5d2a: $f8 $d8
    ldh a, [$90]                                  ; $5d2c: $f0 $90
    ldh [$60], a                                  ; $5d2e: $e0 $60
    ret nz                                        ; $5d30: $c0

    ret nz                                        ; $5d31: $c0

    ldh [$e0], a                                  ; $5d32: $e0 $e0
    ldh a, [$30]                                  ; $5d34: $f0 $30
    ldh a, [$b0]                                  ; $5d36: $f0 $b0

jr_020_5d38:
    ret nc                                        ; $5d38: $d0

    ldh a, [$e0]                                  ; $5d39: $f0 $e0

jr_020_5d3b:
    and b                                         ; $5d3b: $a0
    jr nz, @-$1e                                  ; $5d3c: $20 $e0

    ldh [$e0], a                                  ; $5d3e: $e0 $e0
    inc e                                         ; $5d40: $1c
    inc e                                         ; $5d41: $1c
    ld [de], a                                    ; $5d42: $12
    ld e, $23                                     ; $5d43: $1e $23
    ccf                                           ; $5d45: $3f
    inc h                                         ; $5d46: $24
    ccf                                           ; $5d47: $3f
    jr jr_020_5d69                                ; $5d48: $18 $1f

    inc e                                         ; $5d4a: $1c
    rla                                           ; $5d4b: $17
    ld e, $17                                     ; $5d4c: $1e $17
    rra                                           ; $5d4e: $1f
    dec d                                         ; $5d4f: $15
    rrca                                          ; $5d50: $0f
    dec bc                                        ; $5d51: $0b
    rlca                                          ; $5d52: $07
    ld b, $03                                     ; $5d53: $06 $03
    inc bc                                        ; $5d55: $03
    ld [bc], a                                    ; $5d56: $02
    inc bc                                        ; $5d57: $03
    dec b                                         ; $5d58: $05
    rlca                                          ; $5d59: $07
    rrca                                          ; $5d5a: $0f
    dec bc                                        ; $5d5b: $0b
    ld [de], a                                    ; $5d5c: $12
    ld e, $1e                                     ; $5d5d: $1e $1e
    ld e, $30                                     ; $5d5f: $1e $30
    jr nc, jr_020_5d3b                            ; $5d61: $30 $d8

    ld hl, sp+$48                                 ; $5d63: $f8 $48
    ld hl, sp-$50                                 ; $5d65: $f8 $b0
    ldh a, [$50]                                  ; $5d67: $f0 $50

jr_020_5d69:
    ldh a, [rNR10]                                ; $5d69: $f0 $10
    ldh a, [rNR10]                                ; $5d6b: $f0 $10
    ldh a, [rNR44]                                ; $5d6d: $f0 $23
    db $e3                                        ; $5d6f: $e3
    jp $f7c3                                      ; $5d70: $c3 $c3 $f7


    scf                                           ; $5d73: $37
    db $ec                                        ; $5d74: $ec
    cp h                                          ; $5d75: $bc
    ld [hl], b                                    ; $5d76: $70
    ldh a, [$a0]                                  ; $5d77: $f0 $a0
    ldh [$e0], a                                  ; $5d79: $e0 $e0
    and b                                         ; $5d7b: $a0
    sub b                                         ; $5d7c: $90
    ldh a, [$f0]                                  ; $5d7d: $f0 $f0
    ldh a, [rP1]                                  ; $5d7f: $f0 $00
    nop                                           ; $5d81: $00
    dec c                                         ; $5d82: $0d
    dec c                                         ; $5d83: $0d

jr_020_5d84:
    rst $10                                       ; $5d84: $d7
    rst $18                                       ; $5d85: $df
    ld [c], a                                     ; $5d86: $e2
    rst $38                                       ; $5d87: $ff
    db $e4                                        ; $5d88: $e4
    rst $38                                       ; $5d89: $ff
    ld e, a                                       ; $5d8a: $5f
    ld e, e                                       ; $5d8b: $5b
    ld l, a                                       ; $5d8c: $6f
    ld l, c                                       ; $5d8d: $69
    scf                                           ; $5d8e: $37
    ld [hl], $1f                                  ; $5d8f: $36 $1f
    dec de                                        ; $5d91: $1b
    rrca                                          ; $5d92: $0f
    rrca                                          ; $5d93: $0f
    dec bc                                        ; $5d94: $0b
    ld c, $0f                                     ; $5d95: $0e $0f
    rrca                                          ; $5d97: $0f
    dec bc                                        ; $5d98: $0b
    rrca                                          ; $5d99: $0f
    rlca                                          ; $5d9a: $07
    dec b                                         ; $5d9b: $05
    inc b                                         ; $5d9c: $04
    rlca                                          ; $5d9d: $07
    rlca                                          ; $5d9e: $07
    rlca                                          ; $5d9f: $07
    ret nz                                        ; $5da0: $c0

    ret nz                                        ; $5da1: $c0

    jr nz, jr_020_5d84                            ; $5da2: $20 $e0

    and b                                         ; $5da4: $a0
    ldh [rNR10], a                                ; $5da5: $e0 $10
    ldh a, [$f0]                                  ; $5da7: $f0 $f0
    ldh a, [$f0]                                  ; $5da9: $f0 $f0
    sub b                                         ; $5dab: $90
    ldh a, [$30]                                  ; $5dac: $f0 $30
    ld hl, sp+$28                                 ; $5dae: $f8 $28
    ldh a, [rNR10]                                ; $5db0: $f0 $10
    ldh [$e0], a                                  ; $5db2: $e0 $e0
    ret nz                                        ; $5db4: $c0

    ld b, b                                       ; $5db5: $40
    add b                                         ; $5db6: $80
    add b                                         ; $5db7: $80
    add b                                         ; $5db8: $80
    add b                                         ; $5db9: $80
    nop                                           ; $5dba: $00
    nop                                           ; $5dbb: $00
    add b                                         ; $5dbc: $80
    add b                                         ; $5dbd: $80
    add b                                         ; $5dbe: $80
    add b                                         ; $5dbf: $80
    ld [$1508], sp                                ; $5dc0: $08 $08 $15
    dec e                                         ; $5dc3: $1d
    ld h, d                                       ; $5dc4: $62
    ld a, a                                       ; $5dc5: $7f
    ld h, e                                       ; $5dc6: $63
    ld a, a                                       ; $5dc7: $7f
    dec [hl]                                      ; $5dc8: $35
    ccf                                           ; $5dc9: $3f
    cpl                                           ; $5dca: $2f
    ld l, $3f                                     ; $5dcb: $2e $3f
    ld a, [hl-]                                   ; $5dcd: $3a
    rra                                           ; $5dce: $1f
    jr jr_020_5df0                                ; $5dcf: $18 $1f

    ld e, $0b                                     ; $5dd1: $1e $0b
    rrca                                          ; $5dd3: $0f
    rlca                                          ; $5dd4: $07
    ld b, $07                                     ; $5dd5: $06 $07
    rlca                                          ; $5dd7: $07
    rlca                                          ; $5dd8: $07
    rlca                                          ; $5dd9: $07
    rlca                                          ; $5dda: $07
    dec b                                         ; $5ddb: $05
    add hl, bc                                    ; $5ddc: $09
    rrca                                          ; $5ddd: $0f
    ld c, $0e                                     ; $5dde: $0e $0e
    jr nc, @+$32                                  ; $5de0: $30 $30

    add sp, -$08                                  ; $5de2: $e8 $f8
    or h                                          ; $5de4: $b4
    db $fc                                        ; $5de5: $fc
    call nc, $fcfc                                ; $5de6: $d4 $fc $fc
    inc a                                         ; $5de9: $3c
    ld hl, sp+$08                                 ; $5dea: $f8 $08
    ld hl, sp-$58                                 ; $5dec: $f8 $a8
    ld hl, sp-$58                                 ; $5dee: $f8 $a8

jr_020_5df0:
    ldh a, [rNR10]                                ; $5df0: $f0 $10
    ldh a, [$f0]                                  ; $5df2: $f0 $f0
    ldh a, [$50]                                  ; $5df4: $f0 $50
    ldh a, [$f0]                                  ; $5df6: $f0 $f0
    or b                                          ; $5df8: $b0
    ldh a, [$f0]                                  ; $5df9: $f0 $f0
    ret nc                                        ; $5dfb: $d0

    ld c, b                                       ; $5dfc: $48
    ld a, b                                       ; $5dfd: $78
    jr c, jr_020_5e38                             ; $5dfe: $38 $38

    inc bc                                        ; $5e00: $03
    inc bc                                        ; $5e01: $03
    inc b                                         ; $5e02: $04
    rlca                                          ; $5e03: $07
    dec b                                         ; $5e04: $05
    rlca                                          ; $5e05: $07
    ld [$0f0f], sp                                ; $5e06: $08 $0f $0f
    rrca                                          ; $5e09: $0f
    rrca                                          ; $5e0a: $0f
    add hl, bc                                    ; $5e0b: $09
    rrca                                          ; $5e0c: $0f
    inc c                                         ; $5e0d: $0c
    rra                                           ; $5e0e: $1f
    inc d                                         ; $5e0f: $14
    rrca                                          ; $5e10: $0f
    ld [$0707], sp                                ; $5e11: $08 $07 $07
    inc bc                                        ; $5e14: $03
    inc bc                                        ; $5e15: $03
    ld bc, $0001                                  ; $5e16: $01 $01 $00
    nop                                           ; $5e19: $00
    nop                                           ; $5e1a: $00
    nop                                           ; $5e1b: $00
    ld bc, $0101                                  ; $5e1c: $01 $01 $01
    ld bc, $0000                                  ; $5e1f: $01 $00 $00
    or [hl]                                       ; $5e22: $b6
    or [hl]                                       ; $5e23: $b6
    xor $fe                                       ; $5e24: $ee $fe
    ld b, [hl]                                    ; $5e26: $46
    cp $24                                        ; $5e27: $fe $24
    db $fc                                        ; $5e29: $fc
    ld hl, sp-$28                                 ; $5e2a: $f8 $d8
    ldh a, [$90]                                  ; $5e2c: $f0 $90
    ldh [$60], a                                  ; $5e2e: $e0 $60
    ret nz                                        ; $5e30: $c0

    ret nz                                        ; $5e31: $c0

    ldh [$e0], a                                  ; $5e32: $e0 $e0
    ldh a, [$30]                                  ; $5e34: $f0 $30
    ldh a, [$b0]                                  ; $5e36: $f0 $b0

jr_020_5e38:
    ret nc                                        ; $5e38: $d0

    ldh a, [$e0]                                  ; $5e39: $f0 $e0
    and b                                         ; $5e3b: $a0
    jr nz, @-$1e                                  ; $5e3c: $20 $e0

jr_020_5e3e:
    ldh [$e0], a                                  ; $5e3e: $e0 $e0
    inc e                                         ; $5e40: $1c
    inc e                                         ; $5e41: $1c
    ld [de], a                                    ; $5e42: $12
    ld e, $23                                     ; $5e43: $1e $23
    ccf                                           ; $5e45: $3f
    inc h                                         ; $5e46: $24
    ccf                                           ; $5e47: $3f
    jr jr_020_5e69                                ; $5e48: $18 $1f

    inc e                                         ; $5e4a: $1c
    rla                                           ; $5e4b: $17
    ld e, $17                                     ; $5e4c: $1e $17
    rra                                           ; $5e4e: $1f
    dec d                                         ; $5e4f: $15
    rrca                                          ; $5e50: $0f
    dec bc                                        ; $5e51: $0b
    rlca                                          ; $5e52: $07
    ld b, $03                                     ; $5e53: $06 $03
    inc bc                                        ; $5e55: $03
    ld [bc], a                                    ; $5e56: $02
    inc bc                                        ; $5e57: $03
    dec b                                         ; $5e58: $05
    rlca                                          ; $5e59: $07
    rrca                                          ; $5e5a: $0f
    dec bc                                        ; $5e5b: $0b
    ld [de], a                                    ; $5e5c: $12
    ld e, $1e                                     ; $5e5d: $1e $1e
    ld e, $30                                     ; $5e5f: $1e $30
    jr nc, jr_020_5e3e                            ; $5e61: $30 $db

    ei                                            ; $5e63: $fb
    ld c, e                                       ; $5e64: $4b
    ei                                            ; $5e65: $fb
    or e                                          ; $5e66: $b3
    di                                            ; $5e67: $f3
    ld d, d                                       ; $5e68: $52

jr_020_5e69:
    ld a, [c]                                     ; $5e69: $f2
    ld d, $f6                                     ; $5e6a: $16 $f6
    inc d                                         ; $5e6c: $14
    db $f4                                        ; $5e6d: $f4
    inc a                                         ; $5e6e: $3c
    db $fc                                        ; $5e6f: $fc
    add sp, -$08                                  ; $5e70: $e8 $f8
    ldh a, [$30]                                  ; $5e72: $f0 $30
    ldh [$a0], a                                  ; $5e74: $e0 $a0
    ld h, b                                       ; $5e76: $60
    ldh [$a0], a                                  ; $5e77: $e0 $a0
    ldh [$e0], a                                  ; $5e79: $e0 $e0
    and b                                         ; $5e7b: $a0
    sub b                                         ; $5e7c: $90
    ldh a, [$f0]                                  ; $5e7d: $f0 $f0
    ldh a, [$03]                                  ; $5e7f: $f0 $03
    inc bc                                        ; $5e81: $03
    inc b                                         ; $5e82: $04
    rlca                                          ; $5e83: $07
    inc b                                         ; $5e84: $04
    rlca                                          ; $5e85: $07
    inc bc                                        ; $5e86: $03
    inc bc                                        ; $5e87: $03
    ld h, d                                       ; $5e88: $62
    ld h, e                                       ; $5e89: $63
    ld h, h                                       ; $5e8a: $64
    ld h, a                                       ; $5e8b: $67
    inc [hl]                                      ; $5e8c: $34
    scf                                           ; $5e8d: $37
    ld e, $1f                                     ; $5e8e: $1e $1f
    rrca                                          ; $5e90: $0f
    add hl, bc                                    ; $5e91: $09
    rrca                                          ; $5e92: $0f
    inc c                                         ; $5e93: $0c
    rlca                                          ; $5e94: $07
    inc b                                         ; $5e95: $04
    rlca                                          ; $5e96: $07
    rlca                                          ; $5e97: $07
    inc b                                         ; $5e98: $04
    rlca                                          ; $5e99: $07
    rlca                                          ; $5e9a: $07
    rlca                                          ; $5e9b: $07
    inc b                                         ; $5e9c: $04
    rlca                                          ; $5e9d: $07
    rlca                                          ; $5e9e: $07
    rlca                                          ; $5e9f: $07
    nop                                           ; $5ea0: $00
    nop                                           ; $5ea1: $00
    add b                                         ; $5ea2: $80
    add b                                         ; $5ea3: $80
    call z, Call_000_36cc                         ; $5ea4: $cc $cc $36
    cp $12                                        ; $5ea7: $fe $12
    cp $12                                        ; $5ea9: $fe $12
    cp $0c                                        ; $5eab: $fe $0c
    db $fc                                        ; $5ead: $fc
    ld [$90f8], sp                                ; $5eae: $08 $f8 $90
    ldh a, [$e0]                                  ; $5eb1: $f0 $e0
    ld h, b                                       ; $5eb3: $60
    ret nz                                        ; $5eb4: $c0

    ld b, b                                       ; $5eb5: $40
    ret nz                                        ; $5eb6: $c0

    ret nz                                        ; $5eb7: $c0

    ldh [$a0], a                                  ; $5eb8: $e0 $a0
    ldh [$a0], a                                  ; $5eba: $e0 $a0
    sub b                                         ; $5ebc: $90
    ldh a, [$f0]                                  ; $5ebd: $f0 $f0
    ldh a, [rP1]                                  ; $5ebf: $f0 $00
    nop                                           ; $5ec1: $00
    ld bc, $1201                                  ; $5ec2: $01 $01 $12
    inc de                                        ; $5ec5: $13

jr_020_5ec6:
    cpl                                           ; $5ec6: $2f
    ccf                                           ; $5ec7: $3f

jr_020_5ec8:
    call nz, $c4ff                                ; $5ec8: $c4 $ff $c4
    rst $38                                       ; $5ecb: $ff
    rst $28                                       ; $5ecc: $ef
    ei                                            ; $5ecd: $fb
    ccf                                           ; $5ece: $3f
    add hl, sp                                    ; $5ecf: $39
    rrca                                          ; $5ed0: $0f
    ld c, $07                                     ; $5ed1: $0e $07
    rlca                                          ; $5ed3: $07
    inc bc                                        ; $5ed4: $03
    ld [bc], a                                    ; $5ed5: $02
    inc bc                                        ; $5ed6: $03
    inc bc                                        ; $5ed7: $03
    ld b, $07                                     ; $5ed8: $06 $07
    dec bc                                        ; $5eda: $0b
    dec c                                         ; $5edb: $0d
    dec bc                                        ; $5edc: $0b
    rrca                                          ; $5edd: $0f
    ld b, $06                                     ; $5ede: $06 $06
    add b                                         ; $5ee0: $80
    add b                                         ; $5ee1: $80
    ld b, b                                       ; $5ee2: $40
    ret nz                                        ; $5ee3: $c0

    jr nz, jr_020_5ec6                            ; $5ee4: $20 $e0

    jr nz, jr_020_5ec8                            ; $5ee6: $20 $e0

    ld [hl], b                                    ; $5ee8: $70
    ldh a, [$f0]                                  ; $5ee9: $f0 $f0
    ret nc                                        ; $5eeb: $d0

    ldh a, [$b0]                                  ; $5eec: $f0 $b0
    ld hl, sp+$28                                 ; $5eee: $f8 $28
    ld hl, sp+$08                                 ; $5ef0: $f8 $08
    ldh a, [rNR10]                                ; $5ef2: $f0 $10
    ldh [$e0], a                                  ; $5ef4: $e0 $e0
    ldh [rNR41], a                                ; $5ef6: $e0 $20
    ld h, b                                       ; $5ef8: $60
    ldh [$e0], a                                  ; $5ef9: $e0 $e0
    ldh [$90], a                                  ; $5efb: $e0 $90
    ldh a, [$f0]                                  ; $5efd: $f0 $f0
    ldh a, [rTMA]                                 ; $5eff: $f0 $06
    ld b, $0b                                     ; $5f01: $06 $0b
    rrca                                          ; $5f03: $0f
    ld [de], a                                    ; $5f04: $12
    rra                                           ; $5f05: $1f
    rla                                           ; $5f06: $17
    rra                                           ; $5f07: $1f
    rra                                           ; $5f08: $1f
    inc e                                         ; $5f09: $1c
    rrca                                          ; $5f0a: $0f
    ld a, [bc]                                    ; $5f0b: $0a
    rrca                                          ; $5f0c: $0f
    ld a, [bc]                                    ; $5f0d: $0a
    rrca                                          ; $5f0e: $0f
    ld [$0407], sp                                ; $5f0f: $08 $07 $04
    inc bc                                        ; $5f12: $03
    inc bc                                        ; $5f13: $03
    inc bc                                        ; $5f14: $03
    ld [bc], a                                    ; $5f15: $02
    ld bc, $0101                                  ; $5f16: $01 $01 $01
    ld bc, $0203                                  ; $5f19: $01 $03 $02
    dec b                                         ; $5f1c: $05
    rlca                                          ; $5f1d: $07

jr_020_5f1e:
    rlca                                          ; $5f1e: $07
    rlca                                          ; $5f1f: $07
    nop                                           ; $5f20: $00
    nop                                           ; $5f21: $00
    ret c                                         ; $5f22: $d8

    ret c                                         ; $5f23: $d8

    ld h, h                                       ; $5f24: $64
    db $fc                                        ; $5f25: $fc
    and e                                         ; $5f26: $a3
    rst $38                                       ; $5f27: $ff
    rst $30                                       ; $5f28: $f7
    ld a, a                                       ; $5f29: $7f
    rst $38                                       ; $5f2a: $ff
    xor a                                         ; $5f2b: $af
    db $fc                                        ; $5f2c: $fc
    adc h                                         ; $5f2d: $8c
    ld hl, sp+$38                                 ; $5f2e: $f8 $38
    ldh a, [$50]                                  ; $5f30: $f0 $50
    ldh a, [$b0]                                  ; $5f32: $f0 $b0
    ldh [$e0], a                                  ; $5f34: $e0 $e0
    and b                                         ; $5f36: $a0
    ldh [$e0], a                                  ; $5f37: $e0 $e0
    ldh [$e0], a                                  ; $5f39: $e0 $e0
    and b                                         ; $5f3b: $a0
    jr nz, jr_020_5f1e                            ; $5f3c: $20 $e0

    ldh [$e0], a                                  ; $5f3e: $e0 $e0
    inc bc                                        ; $5f40: $03
    inc bc                                        ; $5f41: $03
    inc c                                         ; $5f42: $0c
    rrca                                          ; $5f43: $0f
    ld de, $1c1f                                  ; $5f44: $11 $1f $1c
    rra                                           ; $5f47: $1f
    ld e, $13                                     ; $5f48: $1e $13
    rra                                           ; $5f4a: $1f
    add hl, de                                    ; $5f4b: $19
    ccf                                           ; $5f4c: $3f
    jr z, jr_020_5f8e                             ; $5f4d: $28 $3f

    ld hl, $121f                                  ; $5f4f: $21 $1f $12
    rrca                                          ; $5f52: $0f
    rrca                                          ; $5f53: $0f
    rrca                                          ; $5f54: $0f
    ld a, [bc]                                    ; $5f55: $0a
    rrca                                          ; $5f56: $0f
    inc c                                         ; $5f57: $0c
    rrca                                          ; $5f58: $0f
    rrca                                          ; $5f59: $0f
    rrca                                          ; $5f5a: $0f
    dec bc                                        ; $5f5b: $0b
    inc de                                        ; $5f5c: $13
    rra                                           ; $5f5d: $1f

jr_020_5f5e:
    inc c                                         ; $5f5e: $0c
    inc c                                         ; $5f5f: $0c
    nop                                           ; $5f60: $00
    nop                                           ; $5f61: $00
    or b                                          ; $5f62: $b0
    or b                                          ; $5f63: $b0
    ret z                                         ; $5f64: $c8

    ld hl, sp+$4f                                 ; $5f65: $f8 $4f
    rst $38                                       ; $5f67: $ff
    rst $28                                       ; $5f68: $ef
    cp a                                          ; $5f69: $bf
    rst $30                                       ; $5f6a: $f7
    scf                                           ; $5f6b: $37
    call c, Call_020_70fc                         ; $5f6c: $dc $fc $70
    ldh a, [$a0]                                  ; $5f6f: $f0 $a0
    ldh [$c0], a                                  ; $5f71: $e0 $c0
    ret nz                                        ; $5f73: $c0

    add b                                         ; $5f74: $80
    add b                                         ; $5f75: $80
    ret nz                                        ; $5f76: $c0

    ret nz                                        ; $5f77: $c0

    ld b, b                                       ; $5f78: $40
    ret nz                                        ; $5f79: $c0

    ldh [$a0], a                                  ; $5f7a: $e0 $a0
    jr nz, jr_020_5f5e                            ; $5f7c: $20 $e0

    ldh [$e0], a                                  ; $5f7e: $e0 $e0
    nop                                           ; $5f80: $00
    nop                                           ; $5f81: $00
    ld bc, $1a01                                  ; $5f82: $01 $01 $1a
    dec de                                        ; $5f85: $1b
    daa                                           ; $5f86: $27
    ccf                                           ; $5f87: $3f
    inc h                                         ; $5f88: $24
    ccf                                           ; $5f89: $3f
    inc l                                         ; $5f8a: $2c
    ccf                                           ; $5f8b: $3f
    rra                                           ; $5f8c: $1f
    dec de                                        ; $5f8d: $1b

jr_020_5f8e:
    rrca                                          ; $5f8e: $0f
    add hl, bc                                    ; $5f8f: $09
    rlca                                          ; $5f90: $07
    ld b, $03                                     ; $5f91: $06 $03
    inc bc                                        ; $5f93: $03
    rrca                                          ; $5f94: $0f
    dec c                                         ; $5f95: $0d
    rrca                                          ; $5f96: $0f
    dec bc                                        ; $5f97: $0b
    ld b, $07                                     ; $5f98: $06 $07
    rrca                                          ; $5f9a: $0f
    rrca                                          ; $5f9b: $0f
    ld c, $0e                                     ; $5f9c: $0e $0e
    ld b, $06                                     ; $5f9e: $06 $06
    nop                                           ; $5fa0: $00
    nop                                           ; $5fa1: $00
    add b                                         ; $5fa2: $80
    add b                                         ; $5fa3: $80
    ld h, b                                       ; $5fa4: $60
    ldh [rNR10], a                                ; $5fa5: $e0 $10
    ldh a, [rSVBK]                                ; $5fa7: $f0 $70
    ldh a, [$f0]                                  ; $5fa9: $f0 $f0
    sub b                                         ; $5fab: $90
    ldh a, [$30]                                  ; $5fac: $f0 $30
    ld hl, sp+$28                                 ; $5fae: $f8 $28
    ld hl, sp+$08                                 ; $5fb0: $f8 $08
    ldh a, [rNR10]                                ; $5fb2: $f0 $10
    ldh [$60], a                                  ; $5fb4: $e0 $60
    ldh a, [$d0]                                  ; $5fb6: $f0 $d0
    ld h, b                                       ; $5fb8: $60
    ldh [$e0], a                                  ; $5fb9: $e0 $e0
    and b                                         ; $5fbb: $a0
    sub b                                         ; $5fbc: $90
    ldh a, [$60]                                  ; $5fbd: $f0 $60
    ld h, b                                       ; $5fbf: $60
    nop                                           ; $5fc0: $00
    nop                                           ; $5fc1: $00
    scf                                           ; $5fc2: $37
    scf                                           ; $5fc3: $37
    add hl, hl                                    ; $5fc4: $29
    ccf                                           ; $5fc5: $3f
    ld d, b                                       ; $5fc6: $50
    ld a, a                                       ; $5fc7: $7f
    ld d, [hl]                                    ; $5fc8: $56
    ld a, a                                       ; $5fc9: $7f
    ccf                                           ; $5fca: $3f
    add hl, sp                                    ; $5fcb: $39
    ccf                                           ; $5fcc: $3f
    ld a, [hl+]                                   ; $5fcd: $2a
    ccf                                           ; $5fce: $3f
    ld [hl+], a                                   ; $5fcf: $22
    ld a, a                                       ; $5fd0: $7f
    ld a, b                                       ; $5fd1: $78
    rst $38                                       ; $5fd2: $ff
    xor h                                         ; $5fd3: $ac
    ld d, a                                       ; $5fd4: $57
    ld e, a                                       ; $5fd5: $5f
    ld c, c                                       ; $5fd6: $49
    ld c, a                                       ; $5fd7: $4f
    rst $08                                       ; $5fd8: $cf
    rst $08                                       ; $5fd9: $cf
    rst $08                                       ; $5fda: $cf
    ret                                           ; $5fdb: $c9


    add hl, bc                                    ; $5fdc: $09
    rrca                                          ; $5fdd: $0f

jr_020_5fde:
    rlca                                          ; $5fde: $07
    rlca                                          ; $5fdf: $07
    nop                                           ; $5fe0: $00
    nop                                           ; $5fe1: $00
    ret c                                         ; $5fe2: $d8

    ret c                                         ; $5fe3: $d8

    jr z, jr_020_5fde                             ; $5fe4: $28 $f8

    inc d                                         ; $5fe6: $14
    db $fc                                        ; $5fe7: $fc
    call nc, $f8fc                                ; $5fe8: $d4 $fc $f8
    jr c, @-$06                                   ; $5feb: $38 $f8

    xor b                                         ; $5fed: $a8
    ld hl, sp-$78                                 ; $5fee: $f8 $88
    ldh a, [$30]                                  ; $5ff0: $f0 $30
    ld hl, sp+$68                                 ; $5ff2: $f8 $68
    call c, Call_000_3cf4                         ; $5ff4: $dc $f4 $3c
    db $f4                                        ; $5ff7: $f4
    ld hl, sp-$08                                 ; $5ff8: $f8 $f8
    ldh [$e0], a                                  ; $5ffa: $e0 $e0
    nop                                           ; $5ffc: $00
    nop                                           ; $5ffd: $00
    nop                                           ; $5ffe: $00
    nop                                           ; $5fff: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    ld bc, $0601                                  ; $6002: $01 $01 $06
    rlca                                          ; $6005: $07
    ld [$0e0f], sp                                ; $6006: $08 $0f $0e
    rrca                                          ; $6009: $0f
    rrca                                          ; $600a: $0f
    add hl, bc                                    ; $600b: $09
    rrca                                          ; $600c: $0f
    inc c                                         ; $600d: $0c
    rra                                           ; $600e: $1f
    inc d                                         ; $600f: $14
    rra                                           ; $6010: $1f
    db $10                                        ; $6011: $10
    rrca                                          ; $6012: $0f
    ld [$0a0f], sp                                ; $6013: $08 $0f $0a
    rra                                           ; $6016: $1f
    rla                                           ; $6017: $17
    ld c, $0f                                     ; $6018: $0e $0f
    rrca                                          ; $601a: $0f
    rrca                                          ; $601b: $0f
    ld c, $0e                                     ; $601c: $0e $0e
    ld b, $06                                     ; $601e: $06 $06
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    add b                                         ; $6022: $80
    add b                                         ; $6023: $80
    ld e, b                                       ; $6024: $58
    ret c                                         ; $6025: $d8

    db $e4                                        ; $6026: $e4
    db $fc                                        ; $6027: $fc
    inc h                                         ; $6028: $24
    db $fc                                        ; $6029: $fc
    inc [hl]                                      ; $602a: $34
    db $fc                                        ; $602b: $fc
    ld hl, sp-$28                                 ; $602c: $f8 $d8
    ldh a, [$90]                                  ; $602e: $f0 $90
    ldh [$60], a                                  ; $6030: $e0 $60
    ret nz                                        ; $6032: $c0

    ret nz                                        ; $6033: $c0

    ldh [$60], a                                  ; $6034: $e0 $60
    ldh [$a0], a                                  ; $6036: $e0 $a0
    ld h, b                                       ; $6038: $60
    ldh [$d0], a                                  ; $6039: $e0 $d0
    or b                                          ; $603b: $b0
    ret nc                                        ; $603c: $d0

    ldh a, [$60]                                  ; $603d: $f0 $60
    ld h, b                                       ; $603f: $60
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    inc bc                                        ; $6042: $03
    inc bc                                        ; $6043: $03
    dec [hl]                                      ; $6044: $35
    scf                                           ; $6045: $37
    ld l, b                                       ; $6046: $68
    ld a, a                                       ; $6047: $7f
    ld c, b                                       ; $6048: $48
    ld a, a                                       ; $6049: $7f
    jr nc, jr_020_608b                            ; $604a: $30 $3f

    jr c, jr_020_607d                             ; $604c: $38 $2f

    jr c, jr_020_607f                             ; $604e: $38 $2f

    inc e                                         ; $6050: $1c
    rra                                           ; $6051: $1f
    ld l, a                                       ; $6052: $6f
    ld a, a                                       ; $6053: $7f
    scf                                           ; $6054: $37
    inc a                                         ; $6055: $3c

jr_020_6056:
    add hl, bc                                    ; $6056: $09
    rrca                                          ; $6057: $0f

jr_020_6058:
    rrca                                          ; $6058: $0f
    rrca                                          ; $6059: $0f
    rrca                                          ; $605a: $0f
    add hl, bc                                    ; $605b: $09
    add hl, bc                                    ; $605c: $09
    rrca                                          ; $605d: $0f
    rlca                                          ; $605e: $07
    rlca                                          ; $605f: $07
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    add b                                         ; $6062: $80
    add b                                         ; $6063: $80

jr_020_6064:
    ld e, b                                       ; $6064: $58
    ret c                                         ; $6065: $d8

    inc l                                         ; $6066: $2c
    db $fc                                        ; $6067: $fc
    inc h                                         ; $6068: $24
    db $fc                                        ; $6069: $fc
    jr jr_020_6064                                ; $606a: $18 $f8

    jr c, jr_020_6056                             ; $606c: $38 $e8

    jr c, jr_020_6058                             ; $606e: $38 $e8

    ld [hl], b                                    ; $6070: $70
    ldh a, [$e8]                                  ; $6071: $f0 $e8
    ld hl, sp-$21                                 ; $6073: $f8 $df
    ld [hl], a                                    ; $6075: $77
    inc a                                         ; $6076: $3c
    db $f4                                        ; $6077: $f4
    ld hl, sp-$08                                 ; $6078: $f8 $f8
    ldh [$e0], a                                  ; $607a: $e0 $e0
    nop                                           ; $607c: $00

jr_020_607d:
    nop                                           ; $607d: $00
    nop                                           ; $607e: $00

jr_020_607f:
    nop                                           ; $607f: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    dec c                                         ; $6082: $0d
    dec c                                         ; $6083: $0d
    inc de                                        ; $6084: $13
    rra                                           ; $6085: $1f
    ld [de], a                                    ; $6086: $12
    rra                                           ; $6087: $1f
    ld d, $1f                                     ; $6088: $16 $1f
    rrca                                          ; $608a: $0f

jr_020_608b:
    dec c                                         ; $608b: $0d
    rlca                                          ; $608c: $07
    inc b                                         ; $608d: $04
    inc bc                                        ; $608e: $03
    inc bc                                        ; $608f: $03
    ld bc, $0701                                  ; $6090: $01 $01 $07
    rlca                                          ; $6093: $07

jr_020_6094:
    rrca                                          ; $6094: $0f
    dec c                                         ; $6095: $0d
    rrca                                          ; $6096: $0f
    dec bc                                        ; $6097: $0b
    ld b, $07                                     ; $6098: $06 $07
    rrca                                          ; $609a: $0f
    rrca                                          ; $609b: $0f
    ld c, $0e                                     ; $609c: $0e $0e
    ld b, $06                                     ; $609e: $06 $06
    ret nz                                        ; $60a0: $c0

    ret nz                                        ; $60a1: $c0

    jr nc, jr_020_6094                            ; $60a2: $30 $f0

    adc b                                         ; $60a4: $88
    ld hl, sp+$38                                 ; $60a5: $f8 $38
    ld hl, sp+$78                                 ; $60a7: $f8 $78
    ret z                                         ; $60a9: $c8

    ld hl, sp-$68                                 ; $60aa: $f8 $98
    db $fc                                        ; $60ac: $fc
    sub h                                         ; $60ad: $94
    db $fc                                        ; $60ae: $fc
    inc b                                         ; $60af: $04
    ld hl, sp-$78                                 ; $60b0: $f8 $88
    ldh [$e0], a                                  ; $60b2: $e0 $e0
    ldh [$60], a                                  ; $60b4: $e0 $60
    ldh a, [$d0]                                  ; $60b6: $f0 $d0
    ld h, b                                       ; $60b8: $60
    ldh [$e0], a                                  ; $60b9: $e0 $e0
    and b                                         ; $60bb: $a0
    sub b                                         ; $60bc: $90
    ldh a, [$60]                                  ; $60bd: $f0 $60
    ld h, b                                       ; $60bf: $60
    dec de                                        ; $60c0: $1b
    dec de                                        ; $60c1: $1b
    inc d                                         ; $60c2: $14
    rra                                           ; $60c3: $1f
    jr z, jr_020_6105                             ; $60c4: $28 $3f

    dec hl                                        ; $60c6: $2b
    ccf                                           ; $60c7: $3f
    rra                                           ; $60c8: $1f
    inc e                                         ; $60c9: $1c
    rra                                           ; $60ca: $1f
    dec d                                         ; $60cb: $15
    rra                                           ; $60cc: $1f
    ld de, $3c3f                                  ; $60cd: $11 $3f $3c
    ld a, a                                       ; $60d0: $7f
    ld d, [hl]                                    ; $60d1: $56
    rst $38                                       ; $60d2: $ff
    ei                                            ; $60d3: $fb
    ld d, a                                       ; $60d4: $57
    ld e, a                                       ; $60d5: $5f
    ld c, c                                       ; $60d6: $49
    ld c, a                                       ; $60d7: $4f
    rst $08                                       ; $60d8: $cf
    rst $08                                       ; $60d9: $cf
    rst $08                                       ; $60da: $cf
    ret                                           ; $60db: $c9


    add hl, bc                                    ; $60dc: $09
    rrca                                          ; $60dd: $0f
    rlca                                          ; $60de: $07
    rlca                                          ; $60df: $07
    db $ec                                        ; $60e0: $ec
    db $ec                                        ; $60e1: $ec
    sub h                                         ; $60e2: $94
    db $fc                                        ; $60e3: $fc
    ld a, [bc]                                    ; $60e4: $0a
    cp $6a                                        ; $60e5: $fe $6a
    cp $fc                                        ; $60e7: $fe $fc
    sbc h                                         ; $60e9: $9c
    db $fc                                        ; $60ea: $fc
    ld d, h                                       ; $60eb: $54
    db $fc                                        ; $60ec: $fc
    ld b, h                                       ; $60ed: $44
    ld hl, sp+$18                                 ; $60ee: $f8 $18
    db $fc                                        ; $60f0: $fc
    inc [hl]                                      ; $60f1: $34
    ld hl, sp-$48                                 ; $60f2: $f8 $b8
    call c, Call_000_3cf4                         ; $60f4: $dc $f4 $3c
    db $f4                                        ; $60f7: $f4
    ld hl, sp-$08                                 ; $60f8: $f8 $f8
    ldh [$e0], a                                  ; $60fa: $e0 $e0
    nop                                           ; $60fc: $00
    nop                                           ; $60fd: $00
    nop                                           ; $60fe: $00
    nop                                           ; $60ff: $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    inc bc                                        ; $6102: $03
    inc bc                                        ; $6103: $03
    inc b                                         ; $6104: $04

jr_020_6105:
    rlca                                          ; $6105: $07
    rlca                                          ; $6106: $07
    rlca                                          ; $6107: $07
    rlca                                          ; $6108: $07
    inc b                                         ; $6109: $04
    rlca                                          ; $610a: $07
    ld b, $0f                                     ; $610b: $06 $0f
    ld a, [bc]                                    ; $610d: $0a
    rrca                                          ; $610e: $0f
    ld [$0407], sp                                ; $610f: $08 $07 $04
    rlca                                          ; $6112: $07
    rlca                                          ; $6113: $07
    rrca                                          ; $6114: $0f
    ld a, [bc]                                    ; $6115: $0a
    rra                                           ; $6116: $1f
    rla                                           ; $6117: $17
    ld c, $0f                                     ; $6118: $0e $0f
    rrca                                          ; $611a: $0f
    rrca                                          ; $611b: $0f
    ld c, $0e                                     ; $611c: $0e $0e
    ld b, $06                                     ; $611e: $06 $06
    ret nz                                        ; $6120: $c0

    ret nz                                        ; $6121: $c0

    inc l                                         ; $6122: $2c
    db $ec                                        ; $6123: $ec
    ld [hl], d                                    ; $6124: $72
    cp $12                                        ; $6125: $fe $12
    cp $9a                                        ; $6127: $fe $9a
    cp $fc                                        ; $6129: $fe $fc
    ld l, h                                       ; $612b: $6c
    ld hl, sp+$48                                 ; $612c: $f8 $48
    ldh a, [$30]                                  ; $612e: $f0 $30
    ldh [$60], a                                  ; $6130: $e0 $60
    ret nz                                        ; $6132: $c0

    ret nz                                        ; $6133: $c0

    ldh [$60], a                                  ; $6134: $e0 $60
    ldh [$a0], a                                  ; $6136: $e0 $a0
    ld h, b                                       ; $6138: $60
    ldh [$d0], a                                  ; $6139: $e0 $d0
    or b                                          ; $613b: $b0
    ret nc                                        ; $613c: $d0

    ldh a, [$60]                                  ; $613d: $f0 $60
    ld h, b                                       ; $613f: $60
    ld bc, $1a01                                  ; $6140: $01 $01 $1a
    dec de                                        ; $6143: $1b
    inc [hl]                                      ; $6144: $34
    ccf                                           ; $6145: $3f
    inc h                                         ; $6146: $24
    ccf                                           ; $6147: $3f
    jr jr_020_6169                                ; $6148: $18 $1f

    inc e                                         ; $614a: $1c
    rla                                           ; $614b: $17
    inc e                                         ; $614c: $1c
    rla                                           ; $614d: $17
    ld c, $0f                                     ; $614e: $0e $0f
    scf                                           ; $6150: $37
    ccf                                           ; $6151: $3f
    ld a, a                                       ; $6152: $7f
    ld e, e                                       ; $6153: $5b
    scf                                           ; $6154: $37
    inc a                                         ; $6155: $3c
    add hl, bc                                    ; $6156: $09
    rrca                                          ; $6157: $0f
    rrca                                          ; $6158: $0f
    rrca                                          ; $6159: $0f
    rrca                                          ; $615a: $0f
    add hl, bc                                    ; $615b: $09
    add hl, bc                                    ; $615c: $09
    rrca                                          ; $615d: $0f
    rlca                                          ; $615e: $07
    rlca                                          ; $615f: $07
    ret nz                                        ; $6160: $c0

    ret nz                                        ; $6161: $c0

    xor h                                         ; $6162: $ac
    db $ec                                        ; $6163: $ec
    ld d, $fe                                     ; $6164: $16 $fe
    ld [de], a                                    ; $6166: $12
    cp $0c                                        ; $6167: $fe $0c

jr_020_6169:
    db $fc                                        ; $6169: $fc
    inc e                                         ; $616a: $1c
    db $f4                                        ; $616b: $f4
    inc e                                         ; $616c: $1c
    db $f4                                        ; $616d: $f4
    jr c, @-$06                                   ; $616e: $38 $f8

    db $f4                                        ; $6170: $f4
    db $fc                                        ; $6171: $fc
    ei                                            ; $6172: $fb
    cp e                                          ; $6173: $bb
    rst $18                                       ; $6174: $df
    ld [hl], a                                    ; $6175: $77
    inc a                                         ; $6176: $3c
    db $f4                                        ; $6177: $f4
    ld hl, sp-$08                                 ; $6178: $f8 $f8
    ldh [$e0], a                                  ; $617a: $e0 $e0
    nop                                           ; $617c: $00
    nop                                           ; $617d: $00
    nop                                           ; $617e: $00
    nop                                           ; $617f: $00
    inc bc                                        ; $6180: $03
    inc bc                                        ; $6181: $03
    inc [hl]                                      ; $6182: $34
    scf                                           ; $6183: $37
    ld c, [hl]                                    ; $6184: $4e
    ld a, a                                       ; $6185: $7f

jr_020_6186:
    ld c, b                                       ; $6186: $48
    ld a, a                                       ; $6187: $7f
    ld e, c                                       ; $6188: $59
    ld a, a                                       ; $6189: $7f
    ccf                                           ; $618a: $3f
    ld [hl], $1f                                  ; $618b: $36 $1f
    ld [de], a                                    ; $618d: $12
    rrca                                          ; $618e: $0f
    inc c                                         ; $618f: $0c
    rlca                                          ; $6190: $07
    ld b, $07                                     ; $6191: $06 $07
    rlca                                          ; $6193: $07
    rrca                                          ; $6194: $0f
    dec c                                         ; $6195: $0d
    rrca                                          ; $6196: $0f
    dec bc                                        ; $6197: $0b
    ld b, $07                                     ; $6198: $06 $07
    rrca                                          ; $619a: $0f
    rrca                                          ; $619b: $0f
    ld c, $0e                                     ; $619c: $0e $0e
    ld b, $06                                     ; $619e: $06 $06
    nop                                           ; $61a0: $00
    nop                                           ; $61a1: $00
    ret nz                                        ; $61a2: $c0

    ret nz                                        ; $61a3: $c0

    jr nz, jr_020_6186                            ; $61a4: $20 $e0

    ldh [$e0], a                                  ; $61a6: $e0 $e0
    ldh [rNR41], a                                ; $61a8: $e0 $20
    ldh [$60], a                                  ; $61aa: $e0 $60
    ldh a, [$50]                                  ; $61ac: $f0 $50
    ldh a, [rNR10]                                ; $61ae: $f0 $10
    ldh [rNR41], a                                ; $61b0: $e0 $20
    ldh [$e0], a                                  ; $61b2: $e0 $e0
    ldh [$60], a                                  ; $61b4: $e0 $60
    ldh a, [$d0]                                  ; $61b6: $f0 $d0
    ld h, b                                       ; $61b8: $60
    ldh [$e0], a                                  ; $61b9: $e0 $e0
    and b                                         ; $61bb: $a0
    sub b                                         ; $61bc: $90
    ldh a, [$60]                                  ; $61bd: $f0 $60
    ld h, b                                       ; $61bf: $60
    ld l, a                                       ; $61c0: $6f
    ld l, a                                       ; $61c1: $6f
    ld d, d                                       ; $61c2: $52
    ld a, a                                       ; $61c3: $7f
    and b                                         ; $61c4: $a0
    rst $38                                       ; $61c5: $ff
    xor l                                         ; $61c6: $ad
    rst $38                                       ; $61c7: $ff
    ld a, a                                       ; $61c8: $7f
    ld [hl], d                                    ; $61c9: $72
    ld a, a                                       ; $61ca: $7f
    ld d, l                                       ; $61cb: $55
    ld a, a                                       ; $61cc: $7f
    ld b, l                                       ; $61cd: $45
    rst $38                                       ; $61ce: $ff
    ldh a, [rIE]                                  ; $61cf: $f0 $ff
    ld e, b                                       ; $61d1: $58
    rst $38                                       ; $61d2: $ff
    ei                                            ; $61d3: $fb
    ld d, a                                       ; $61d4: $57
    ld e, a                                       ; $61d5: $5f
    ld c, c                                       ; $61d6: $49
    ld c, a                                       ; $61d7: $4f
    rst $08                                       ; $61d8: $cf
    rst $08                                       ; $61d9: $cf
    rst $08                                       ; $61da: $cf
    ret                                           ; $61db: $c9


    add hl, bc                                    ; $61dc: $09
    rrca                                          ; $61dd: $0f
    rlca                                          ; $61de: $07
    rlca                                          ; $61df: $07
    or b                                          ; $61e0: $b0
    or b                                          ; $61e1: $b0
    ld d, b                                       ; $61e2: $50
    ldh a, [$28]                                  ; $61e3: $f0 $28
    ld hl, sp-$58                                 ; $61e5: $f8 $a8
    ld hl, sp-$10                                 ; $61e7: $f8 $f0
    ld [hl], b                                    ; $61e9: $70
    ldh a, [$50]                                  ; $61ea: $f0 $50
    ldh a, [rNR10]                                ; $61ec: $f0 $10
    ldh [$60], a                                  ; $61ee: $e0 $60
    ldh a, [$d0]                                  ; $61f0: $f0 $d0
    ld hl, sp-$48                                 ; $61f2: $f8 $b8
    call c, Call_000_3cf4                         ; $61f4: $dc $f4 $3c
    db $f4                                        ; $61f7: $f4
    ld hl, sp-$08                                 ; $61f8: $f8 $f8
    ldh [$e0], a                                  ; $61fa: $e0 $e0
    nop                                           ; $61fc: $00
    nop                                           ; $61fd: $00
    nop                                           ; $61fe: $00
    nop                                           ; $61ff: $00
    inc bc                                        ; $6200: $03
    inc bc                                        ; $6201: $03
    inc c                                         ; $6202: $0c
    rrca                                          ; $6203: $0f
    ld de, $1c1f                                  ; $6204: $11 $1f $1c
    rra                                           ; $6207: $1f
    ld e, $13                                     ; $6208: $1e $13
    rra                                           ; $620a: $1f
    add hl, de                                    ; $620b: $19
    ccf                                           ; $620c: $3f
    add hl, hl                                    ; $620d: $29
    ccf                                           ; $620e: $3f
    jr nz, jr_020_6230                            ; $620f: $20 $1f

    ld de, $0707                                  ; $6211: $11 $07 $07
    rrca                                          ; $6214: $0f
    ld a, [bc]                                    ; $6215: $0a
    rra                                           ; $6216: $1f
    rla                                           ; $6217: $17
    ld c, $0f                                     ; $6218: $0e $0f
    rrca                                          ; $621a: $0f
    rrca                                          ; $621b: $0f
    ld c, $0e                                     ; $621c: $0e $0e
    ld b, $06                                     ; $621e: $06 $06
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    or b                                          ; $6222: $b0
    or b                                          ; $6223: $b0
    ret z                                         ; $6224: $c8

    ld hl, sp+$48                                 ; $6225: $f8 $48
    ld hl, sp+$68                                 ; $6227: $f8 $68
    ld hl, sp-$10                                 ; $6229: $f8 $f0
    or b                                          ; $622b: $b0
    ldh [rNR41], a                                ; $622c: $e0 $20
    ret nz                                        ; $622e: $c0

    ret nz                                        ; $622f: $c0

jr_020_6230:
    add b                                         ; $6230: $80
    add b                                         ; $6231: $80
    ret nz                                        ; $6232: $c0

    ret nz                                        ; $6233: $c0

    ldh [$60], a                                  ; $6234: $e0 $60
    ldh [$a0], a                                  ; $6236: $e0 $a0
    ld h, b                                       ; $6238: $60
    ldh [$d0], a                                  ; $6239: $e0 $d0
    or b                                          ; $623b: $b0
    ret nc                                        ; $623c: $d0

    ldh a, [$60]                                  ; $623d: $f0 $60
    ld h, b                                       ; $623f: $60
    rlca                                          ; $6240: $07
    rlca                                          ; $6241: $07
    ld l, d                                       ; $6242: $6a
    ld l, a                                       ; $6243: $6f
    ret nc                                        ; $6244: $d0

    rst $38                                       ; $6245: $ff
    sub b                                         ; $6246: $90
    rst $38                                       ; $6247: $ff
    ld h, b                                       ; $6248: $60
    ld a, a                                       ; $6249: $7f
    ld [hl], b                                    ; $624a: $70
    ld e, a                                       ; $624b: $5f
    ld [hl], b                                    ; $624c: $70
    ld e, a                                       ; $624d: $5f
    jr c, jr_020_628f                             ; $624e: $38 $3f

    rst $18                                       ; $6250: $df
    rst $38                                       ; $6251: $ff
    ld a, a                                       ; $6252: $7f
    ld e, e                                       ; $6253: $5b
    scf                                           ; $6254: $37
    inc a                                         ; $6255: $3c
    add hl, bc                                    ; $6256: $09
    rrca                                          ; $6257: $0f
    rrca                                          ; $6258: $0f
    rrca                                          ; $6259: $0f
    rrca                                          ; $625a: $0f
    add hl, bc                                    ; $625b: $09
    add hl, bc                                    ; $625c: $09
    rrca                                          ; $625d: $0f
    rlca                                          ; $625e: $07
    rlca                                          ; $625f: $07
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    or b                                          ; $6262: $b0
    or b                                          ; $6263: $b0
    ld e, b                                       ; $6264: $58
    ld hl, sp+$48                                 ; $6265: $f8 $48
    ld hl, sp+$30                                 ; $6267: $f8 $30
    ldh a, [rSVBK]                                ; $6269: $f0 $70
    ret nc                                        ; $626b: $d0

    ld [hl], b                                    ; $626c: $70
    ret nc                                        ; $626d: $d0

    ldh [$e0], a                                  ; $626e: $e0 $e0
    ret nc                                        ; $6270: $d0

    ldh a, [$fb]                                  ; $6271: $f0 $fb
    cp e                                          ; $6273: $bb
    rst $18                                       ; $6274: $df
    ld [hl], a                                    ; $6275: $77
    inc a                                         ; $6276: $3c
    db $f4                                        ; $6277: $f4
    ld hl, sp-$08                                 ; $6278: $f8 $f8
    ldh [$e0], a                                  ; $627a: $e0 $e0
    nop                                           ; $627c: $00
    nop                                           ; $627d: $00
    nop                                           ; $627e: $00
    nop                                           ; $627f: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    ld bc, $0e01                                  ; $6282: $01 $01 $0e
    rrca                                          ; $6285: $0f
    inc de                                        ; $6286: $13
    rra                                           ; $6287: $1f

jr_020_6288:
    db $10                                        ; $6288: $10
    rra                                           ; $6289: $1f
    inc d                                         ; $628a: $14
    rra                                           ; $628b: $1f
    rlca                                          ; $628c: $07
    dec b                                         ; $628d: $05
    inc bc                                        ; $628e: $03

jr_020_628f:
    ld [bc], a                                    ; $628f: $02
    inc bc                                        ; $6290: $03
    inc bc                                        ; $6291: $03
    inc bc                                        ; $6292: $03
    inc bc                                        ; $6293: $03
    rlca                                          ; $6294: $07
    rlca                                          ; $6295: $07
    ld [bc], a                                    ; $6296: $02
    inc bc                                        ; $6297: $03
    rlca                                          ; $6298: $07
    rlca                                          ; $6299: $07
    ld b, $06                                     ; $629a: $06 $06
    ld [bc], a                                    ; $629c: $02
    ld [bc], a                                    ; $629d: $02
    nop                                           ; $629e: $00
    nop                                           ; $629f: $00
    nop                                           ; $62a0: $00
    nop                                           ; $62a1: $00
    add b                                         ; $62a2: $80
    add b                                         ; $62a3: $80
    ld b, b                                       ; $62a4: $40
    ret nz                                        ; $62a5: $c0

    jr nz, jr_020_6288                            ; $62a6: $20 $e0

    ld h, b                                       ; $62a8: $60
    ldh [$e0], a                                  ; $62a9: $e0 $e0
    and b                                         ; $62ab: $a0
    ldh a, [rNR10]                                ; $62ac: $f0 $10
    ldh a, [rNR10]                                ; $62ae: $f0 $10
    ldh [rNR41], a                                ; $62b0: $e0 $20
    ret nz                                        ; $62b2: $c0

    ret nz                                        ; $62b3: $c0

    ldh [$e0], a                                  ; $62b4: $e0 $e0
    ld b, b                                       ; $62b6: $40
    ret nz                                        ; $62b7: $c0

    ret nz                                        ; $62b8: $c0

    add b                                         ; $62b9: $80
    and b                                         ; $62ba: $a0
    ldh [rLCDC], a                                ; $62bb: $e0 $40
    ld b, b                                       ; $62bd: $40
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    dec de                                        ; $62c2: $1b
    dec de                                        ; $62c3: $1b
    dec d                                         ; $62c4: $15
    rra                                           ; $62c5: $1f
    jr z, jr_020_6307                             ; $62c6: $28 $3f

    ld a, [hl+]                                   ; $62c8: $2a
    ccf                                           ; $62c9: $3f
    rra                                           ; $62ca: $1f
    dec e                                         ; $62cb: $1d
    rra                                           ; $62cc: $1f
    ld [de], a                                    ; $62cd: $12
    ccf                                           ; $62ce: $3f
    inc a                                         ; $62cf: $3c
    ld a, a                                       ; $62d0: $7f
    ld d, h                                       ; $62d1: $54
    ld a, a                                       ; $62d2: $7f
    ld a, a                                       ; $62d3: $7f
    dec h                                         ; $62d4: $25
    daa                                           ; $62d5: $27
    ld h, a                                       ; $62d6: $67
    ld h, a                                       ; $62d7: $67
    ld h, a                                       ; $62d8: $67
    ld h, l                                       ; $62d9: $65
    dec b                                         ; $62da: $05
    rlca                                          ; $62db: $07
    inc bc                                        ; $62dc: $03

jr_020_62dd:
    inc bc                                        ; $62dd: $03

jr_020_62de:
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    ldh a, [$f0]                                  ; $62e2: $f0 $f0
    db $10                                        ; $62e4: $10
    ldh a, [$28]                                  ; $62e5: $f0 $28
    ld hl, sp-$18                                 ; $62e7: $f8 $e8
    ld hl, sp-$10                                 ; $62e9: $f8 $f0
    jr nc, jr_020_62dd                            ; $62eb: $30 $f0

    sub b                                         ; $62ed: $90
    ldh [rNR41], a                                ; $62ee: $e0 $20
    ldh a, [$50]                                  ; $62f0: $f0 $50
    ldh a, [$b0]                                  ; $62f2: $f0 $b0
    jr c, jr_020_62de                             ; $62f4: $38 $e8

    ldh a, [$f0]                                  ; $62f6: $f0 $f0
    ret nz                                        ; $62f8: $c0

    ret nz                                        ; $62f9: $c0

    nop                                           ; $62fa: $00
    nop                                           ; $62fb: $00
    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    nop                                           ; $62ff: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    ld bc, $0201                                  ; $6302: $01 $01 $02
    inc bc                                        ; $6305: $03
    inc b                                         ; $6306: $04

jr_020_6307:
    rlca                                          ; $6307: $07
    ld b, $07                                     ; $6308: $06 $07
    rlca                                          ; $630a: $07
    dec b                                         ; $630b: $05
    rrca                                          ; $630c: $0f
    ld [$080f], sp                                ; $630d: $08 $0f $08
    rlca                                          ; $6310: $07
    inc b                                         ; $6311: $04
    inc bc                                        ; $6312: $03
    inc bc                                        ; $6313: $03
    rrca                                          ; $6314: $0f
    dec bc                                        ; $6315: $0b
    ld b, $07                                     ; $6316: $06 $07
    rlca                                          ; $6318: $07
    rlca                                          ; $6319: $07
    ld b, $06                                     ; $631a: $06 $06
    ld [bc], a                                    ; $631c: $02
    ld [bc], a                                    ; $631d: $02
    nop                                           ; $631e: $00
    nop                                           ; $631f: $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    add b                                         ; $6322: $80
    add b                                         ; $6323: $80
    ld [hl], b                                    ; $6324: $70
    ldh a, [$c8]                                  ; $6325: $f0 $c8
    ld hl, sp+$08                                 ; $6327: $f8 $08
    ld hl, sp+$28                                 ; $6329: $f8 $28
    ld hl, sp-$20                                 ; $632b: $f8 $e0
    and b                                         ; $632d: $a0
    ret nz                                        ; $632e: $c0

    ld b, b                                       ; $632f: $40
    ret nz                                        ; $6330: $c0

    ret nz                                        ; $6331: $c0

    ret nz                                        ; $6332: $c0

    ret nz                                        ; $6333: $c0

    ret nz                                        ; $6334: $c0

    add b                                         ; $6335: $80
    ld b, b                                       ; $6336: $40
    ret nz                                        ; $6337: $c0

    ldh [$a0], a                                  ; $6338: $e0 $a0
    ldh [$e0], a                                  ; $633a: $e0 $e0
    ld b, b                                       ; $633c: $40
    ld b, b                                       ; $633d: $40
    nop                                           ; $633e: $00
    nop                                           ; $633f: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    inc bc                                        ; $6342: $03
    inc bc                                        ; $6343: $03
    add hl, de                                    ; $6344: $19
    dec de                                        ; $6345: $1b
    inc [hl]                                      ; $6346: $34
    ccf                                           ; $6347: $3f
    inc h                                         ; $6348: $24
    ccf                                           ; $6349: $3f
    jr jr_020_636b                                ; $634a: $18 $1f

    inc e                                         ; $634c: $1c
    rla                                           ; $634d: $17
    inc c                                         ; $634e: $0c
    rrca                                          ; $634f: $0f
    scf                                           ; $6350: $37
    ccf                                           ; $6351: $3f
    ccf                                           ; $6352: $3f
    cpl                                           ; $6353: $2f
    dec b                                         ; $6354: $05
    rlca                                          ; $6355: $07
    rlca                                          ; $6356: $07
    rlca                                          ; $6357: $07
    rlca                                          ; $6358: $07
    dec b                                         ; $6359: $05
    dec b                                         ; $635a: $05
    rlca                                          ; $635b: $07
    inc bc                                        ; $635c: $03
    inc bc                                        ; $635d: $03

jr_020_635e:
    nop                                           ; $635e: $00
    nop                                           ; $635f: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    add b                                         ; $6362: $80
    add b                                         ; $6363: $80
    ld [hl], b                                    ; $6364: $70
    ldh a, [rNR23]                                ; $6365: $f0 $18
    ld hl, sp+$08                                 ; $6367: $f8 $08
    ld hl, sp+$30                                 ; $6369: $f8 $30

jr_020_636b:
    ldh a, [$30]                                  ; $636b: $f0 $30
    ret nc                                        ; $636d: $d0

    ld h, b                                       ; $636e: $60
    ldh [$d0], a                                  ; $636f: $e0 $d0
    ldh a, [$f6]                                  ; $6371: $f0 $f6
    or [hl]                                       ; $6373: $b6
    jr c, jr_020_635e                             ; $6374: $38 $e8

    ldh a, [$f0]                                  ; $6376: $f0 $f0
    ret nz                                        ; $6378: $c0

    ret nz                                        ; $6379: $c0

    nop                                           ; $637a: $00
    nop                                           ; $637b: $00
    nop                                           ; $637c: $00
    nop                                           ; $637d: $00
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    nop                                           ; $6387: $00
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    nop                                           ; $638c: $00
    nop                                           ; $638d: $00
    nop                                           ; $638e: $00
    nop                                           ; $638f: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    nop                                           ; $639b: $00
    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    nop                                           ; $639e: $00
    nop                                           ; $639f: $00
    nop                                           ; $63a0: $00
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    nop                                           ; $63a3: $00
    nop                                           ; $63a4: $00
    nop                                           ; $63a5: $00
    nop                                           ; $63a6: $00
    nop                                           ; $63a7: $00
    nop                                           ; $63a8: $00
    nop                                           ; $63a9: $00
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00
    nop                                           ; $63ac: $00
    nop                                           ; $63ad: $00
    nop                                           ; $63ae: $00
    nop                                           ; $63af: $00
    nop                                           ; $63b0: $00
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    nop                                           ; $63b3: $00
    nop                                           ; $63b4: $00
    nop                                           ; $63b5: $00
    nop                                           ; $63b6: $00
    nop                                           ; $63b7: $00
    nop                                           ; $63b8: $00
    nop                                           ; $63b9: $00
    nop                                           ; $63ba: $00
    nop                                           ; $63bb: $00
    nop                                           ; $63bc: $00
    nop                                           ; $63bd: $00
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    nop                                           ; $63c0: $00
    nop                                           ; $63c1: $00
    scf                                           ; $63c2: $37
    scf                                           ; $63c3: $37
    add hl, hl                                    ; $63c4: $29
    ccf                                           ; $63c5: $3f
    ld d, [hl]                                    ; $63c6: $56
    ld a, a                                       ; $63c7: $7f
    ld e, a                                       ; $63c8: $5f
    ld a, c                                       ; $63c9: $79
    ccf                                           ; $63ca: $3f
    ld a, [hl-]                                   ; $63cb: $3a
    ccf                                           ; $63cc: $3f
    ld a, [hl+]                                   ; $63cd: $2a
    ld a, a                                       ; $63ce: $7f
    ld a, a                                       ; $63cf: $7f
    ccf                                           ; $63d0: $3f
    jr z, jr_020_6412                             ; $63d1: $28 $3f

    inc l                                         ; $63d3: $2c
    rra                                           ; $63d4: $1f
    dec de                                        ; $63d5: $1b
    rla                                           ; $63d6: $17
    rra                                           ; $63d7: $1f
    add hl, bc                                    ; $63d8: $09
    rrca                                          ; $63d9: $0f
    rrca                                          ; $63da: $0f
    rrca                                          ; $63db: $0f
    ld [de], a                                    ; $63dc: $12
    ld e, $1e                                     ; $63dd: $1e $1e
    ld e, $00                                     ; $63df: $1e $00
    nop                                           ; $63e1: $00
    ret c                                         ; $63e2: $d8

    ret c                                         ; $63e3: $d8

    jr z, @-$06                                   ; $63e4: $28 $f8

    call nc, $f4fc                                ; $63e6: $d4 $fc $f4
    inc a                                         ; $63e9: $3c
    ei                                            ; $63ea: $fb
    cp e                                          ; $63eb: $bb
    ei                                            ; $63ec: $fb
    xor e                                         ; $63ed: $ab
    rst $38                                       ; $63ee: $ff
    rst $38                                       ; $63ef: $ff
    ld hl, sp+$28                                 ; $63f0: $f8 $28
    ld hl, sp+$68                                 ; $63f2: $f8 $68
    ldh a, [$b0]                                  ; $63f4: $f0 $b0
    ret nc                                        ; $63f6: $d0

    ldh a, [$30]                                  ; $63f7: $f0 $30
    ldh a, [$e0]                                  ; $63f9: $f0 $e0
    ldh [$90], a                                  ; $63fb: $e0 $90
    ldh a, [$f0]                                  ; $63fd: $f0 $f0
    ldh a, [rP1]                                  ; $63ff: $f0 $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    nop                                           ; $640a: $00
    nop                                           ; $640b: $00
    nop                                           ; $640c: $00
    nop                                           ; $640d: $00
    nop                                           ; $640e: $00
    nop                                           ; $640f: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00

jr_020_6412:
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641a: $00
    nop                                           ; $641b: $00
    nop                                           ; $641c: $00
    nop                                           ; $641d: $00
    nop                                           ; $641e: $00
    nop                                           ; $641f: $00
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    nop                                           ; $6429: $00
    nop                                           ; $642a: $00
    nop                                           ; $642b: $00
    nop                                           ; $642c: $00
    nop                                           ; $642d: $00
    nop                                           ; $642e: $00
    nop                                           ; $642f: $00
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643a: $00
    nop                                           ; $643b: $00
    nop                                           ; $643c: $00
    nop                                           ; $643d: $00
    nop                                           ; $643e: $00
    nop                                           ; $643f: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    ld bc, $0a01                                  ; $6444: $01 $01 $0a
    dec bc                                        ; $6447: $0b
    inc d                                         ; $6448: $14
    rra                                           ; $6449: $1f
    inc d                                         ; $644a: $14
    rra                                           ; $644b: $1f
    inc c                                         ; $644c: $0c
    rrca                                          ; $644d: $0f
    ld c, $0b                                     ; $644e: $0e $0b
    rra                                           ; $6450: $1f
    rra                                           ; $6451: $1f
    dec e                                         ; $6452: $1d
    rla                                           ; $6453: $17
    ld c, $0b                                     ; $6454: $0e $0b
    rlca                                          ; $6456: $07
    rlca                                          ; $6457: $07
    rlca                                          ; $6458: $07
    inc b                                         ; $6459: $04
    inc b                                         ; $645a: $04
    rlca                                          ; $645b: $07
    inc bc                                        ; $645c: $03
    inc bc                                        ; $645d: $03

jr_020_645e:
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00

jr_020_6462:
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00

jr_020_6464:
    add b                                         ; $6464: $80
    add b                                         ; $6465: $80
    ld d, b                                       ; $6466: $50
    ret nc                                        ; $6467: $d0

    jr z, jr_020_6462                             ; $6468: $28 $f8

    jr z, jr_020_6464                             ; $646a: $28 $f8

    jr nc, jr_020_645e                            ; $646c: $30 $f0

    ld [hl], b                                    ; $646e: $70
    ret nc                                        ; $646f: $d0

    ldh a, [$f0]                                  ; $6470: $f0 $f0
    cp h                                          ; $6472: $bc
    db $fc                                        ; $6473: $fc
    ld a, h                                       ; $6474: $7c
    call z, $f0f0                                 ; $6475: $cc $f0 $f0
    ldh [$a0], a                                  ; $6478: $e0 $a0
    ret nz                                        ; $647a: $c0

    ret nz                                        ; $647b: $c0

    nop                                           ; $647c: $00
    nop                                           ; $647d: $00
    nop                                           ; $647e: $00
    nop                                           ; $647f: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    nop                                           ; $648a: $00
    nop                                           ; $648b: $00
    nop                                           ; $648c: $00
    nop                                           ; $648d: $00
    nop                                           ; $648e: $00
    nop                                           ; $648f: $00
    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    nop                                           ; $649b: $00
    nop                                           ; $649c: $00
    nop                                           ; $649d: $00
    nop                                           ; $649e: $00
    nop                                           ; $649f: $00
    nop                                           ; $64a0: $00
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    nop                                           ; $64a4: $00
    nop                                           ; $64a5: $00
    nop                                           ; $64a6: $00
    nop                                           ; $64a7: $00
    nop                                           ; $64a8: $00
    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    nop                                           ; $64ac: $00
    nop                                           ; $64ad: $00
    nop                                           ; $64ae: $00
    nop                                           ; $64af: $00
    nop                                           ; $64b0: $00
    nop                                           ; $64b1: $00
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    nop                                           ; $64b4: $00
    nop                                           ; $64b5: $00
    nop                                           ; $64b6: $00
    nop                                           ; $64b7: $00
    nop                                           ; $64b8: $00
    nop                                           ; $64b9: $00
    nop                                           ; $64ba: $00
    nop                                           ; $64bb: $00
    nop                                           ; $64bc: $00
    nop                                           ; $64bd: $00
    nop                                           ; $64be: $00
    nop                                           ; $64bf: $00
    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    scf                                           ; $64c2: $37
    scf                                           ; $64c3: $37
    add hl, hl                                    ; $64c4: $29
    ccf                                           ; $64c5: $3f
    ld d, [hl]                                    ; $64c6: $56
    ld a, a                                       ; $64c7: $7f
    ld e, a                                       ; $64c8: $5f
    ld a, c                                       ; $64c9: $79
    ccf                                           ; $64ca: $3f
    ld a, [hl-]                                   ; $64cb: $3a
    ccf                                           ; $64cc: $3f
    ld a, [hl+]                                   ; $64cd: $2a
    ld a, a                                       ; $64ce: $7f
    ld a, a                                       ; $64cf: $7f
    ccf                                           ; $64d0: $3f
    jr z, jr_020_6512                             ; $64d1: $28 $3f

    inc l                                         ; $64d3: $2c
    rra                                           ; $64d4: $1f
    dec de                                        ; $64d5: $1b
    rla                                           ; $64d6: $17
    rra                                           ; $64d7: $1f
    add hl, bc                                    ; $64d8: $09
    rrca                                          ; $64d9: $0f
    rrca                                          ; $64da: $0f
    rrca                                          ; $64db: $0f
    ld [de], a                                    ; $64dc: $12
    ld e, $1e                                     ; $64dd: $1e $1e
    ld e, $00                                     ; $64df: $1e $00
    nop                                           ; $64e1: $00
    ret c                                         ; $64e2: $d8

    ret c                                         ; $64e3: $d8

    jr z, @-$06                                   ; $64e4: $28 $f8

    call nc, $f4fc                                ; $64e6: $d4 $fc $f4
    inc a                                         ; $64e9: $3c
    ei                                            ; $64ea: $fb
    cp e                                          ; $64eb: $bb
    ei                                            ; $64ec: $fb
    xor e                                         ; $64ed: $ab
    rst $38                                       ; $64ee: $ff
    rst $38                                       ; $64ef: $ff
    ld hl, sp+$28                                 ; $64f0: $f8 $28
    ld hl, sp+$68                                 ; $64f2: $f8 $68
    ldh a, [$b0]                                  ; $64f4: $f0 $b0
    ret nc                                        ; $64f6: $d0

    ldh a, [$30]                                  ; $64f7: $f0 $30
    ldh a, [$e0]                                  ; $64f9: $f0 $e0
    ldh [$90], a                                  ; $64fb: $e0 $90
    ldh a, [$f0]                                  ; $64fd: $f0 $f0
    ldh a, [rP1]                                  ; $64ff: $f0 $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    nop                                           ; $650b: $00
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    nop                                           ; $650e: $00
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00

jr_020_6512:
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00
    nop                                           ; $651b: $00
    nop                                           ; $651c: $00
    nop                                           ; $651d: $00
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00
    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653a: $00
    nop                                           ; $653b: $00
    nop                                           ; $653c: $00
    nop                                           ; $653d: $00
    nop                                           ; $653e: $00
    nop                                           ; $653f: $00
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    ld bc, $0a01                                  ; $6544: $01 $01 $0a
    dec bc                                        ; $6547: $0b
    inc d                                         ; $6548: $14
    rra                                           ; $6549: $1f
    inc d                                         ; $654a: $14
    rra                                           ; $654b: $1f
    inc c                                         ; $654c: $0c
    rrca                                          ; $654d: $0f
    ld c, $0b                                     ; $654e: $0e $0b
    rrca                                          ; $6550: $0f
    rrca                                          ; $6551: $0f
    dec e                                         ; $6552: $1d
    rra                                           ; $6553: $1f
    ld e, $13                                     ; $6554: $1e $13
    rrca                                          ; $6556: $0f
    rrca                                          ; $6557: $0f
    rlca                                          ; $6558: $07
    dec b                                         ; $6559: $05
    inc bc                                        ; $655a: $03
    inc bc                                        ; $655b: $03

jr_020_655c:
    nop                                           ; $655c: $00
    nop                                           ; $655d: $00
    nop                                           ; $655e: $00
    nop                                           ; $655f: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00

jr_020_6562:
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00

jr_020_6564:
    add b                                         ; $6564: $80
    add b                                         ; $6565: $80
    ld d, b                                       ; $6566: $50
    ret nc                                        ; $6567: $d0

    jr z, jr_020_6562                             ; $6568: $28 $f8

    jr z, jr_020_6564                             ; $656a: $28 $f8

    inc a                                         ; $656c: $3c
    db $fc                                        ; $656d: $fc
    ld a, h                                       ; $656e: $7c
    call c, $fcfc                                 ; $656f: $dc $fc $fc
    cp b                                          ; $6572: $b8
    add sp, $70                                   ; $6573: $e8 $70
    ret nc                                        ; $6575: $d0

    ldh [$e0], a                                  ; $6576: $e0 $e0
    ldh [rNR41], a                                ; $6578: $e0 $20
    jr nz, jr_020_655c                            ; $657a: $20 $e0

    ret nz                                        ; $657c: $c0

    ret nz                                        ; $657d: $c0

    nop                                           ; $657e: $00
    nop                                           ; $657f: $00

    db $96, $65, $99, $65, $9f, $65, $a2, $65

    xor l                                         ; $6588: $ad
    ld h, l                                       ; $6589: $65
    or h                                          ; $658a: $b4
    ld h, l                                       ; $658b: $65
    cp h                                          ; $658c: $bc
    ld h, l                                       ; $658d: $65
    ret nc                                        ; $658e: $d0

    ld h, l                                       ; $658f: $65
    call c, $9665                                 ; $6590: $dc $65 $96
    ld h, l                                       ; $6593: $65

    db $e5, $65

    nop                                           ; $6596: $00
    rst $38                                       ; $6597: $ff
    db $fd                                        ; $6598: $fd

    db $00, $1e, $01, $1e, $ff, $00, $02, $ff, $fd, $02

    inc c                                         ; $65a3: $0c
    inc bc                                        ; $65a4: $03
    inc c                                         ; $65a5: $0c
    inc b                                         ; $65a6: $04
    jr @+$04                                      ; $65a7: $18 $02

    inc c                                         ; $65a9: $0c

    db $05, $0c, $fd, $02

    jr @+$05                                      ; $65ae: $18 $03

    jr jr_020_65b4                                ; $65b0: $18 $02

    jr @-$01                                      ; $65b2: $18 $fd

jr_020_65b4:
    nop                                           ; $65b4: $00
    ld a, [bc]                                    ; $65b5: $0a
    ld b, $1e                                     ; $65b6: $06 $1e
    nop                                           ; $65b8: $00
    ld a, [bc]                                    ; $65b9: $0a
    cp $01                                        ; $65ba: $fe $01
    nop                                           ; $65bc: $00
    ld a, [bc]                                    ; $65bd: $0a
    rlca                                          ; $65be: $07
    ld a, [bc]                                    ; $65bf: $0a
    nop                                           ; $65c0: $00
    inc bc                                        ; $65c1: $03
    ld [$000a], sp                                ; $65c2: $08 $0a $00
    inc bc                                        ; $65c5: $03
    rlca                                          ; $65c6: $07
    ld a, [bc]                                    ; $65c7: $0a
    nop                                           ; $65c8: $00
    inc bc                                        ; $65c9: $03
    ld [$000a], sp                                ; $65ca: $08 $0a $00
    ld a, [bc]                                    ; $65cd: $0a
    cp $01                                        ; $65ce: $fe $01
    nop                                           ; $65d0: $00
    ld a, [bc]                                    ; $65d1: $0a
    add hl, bc                                    ; $65d2: $09
    ld [$0800], sp                                ; $65d3: $08 $00 $08
    add hl, bc                                    ; $65d6: $09
    ld [$0a00], sp                                ; $65d7: $08 $00 $0a
    cp $01                                        ; $65da: $fe $01
    ld [bc], a                                    ; $65dc: $02
    ld [de], a                                    ; $65dd: $12
    inc bc                                        ; $65de: $03
    ld [de], a                                    ; $65df: $12
    ld [bc], a                                    ; $65e0: $02
    ld e, $05                                     ; $65e1: $1e $05
    ld [de], a                                    ; $65e3: $12
    db $fd                                        ; $65e4: $fd

    db $0a, $1e, $0b, $1e, $ff, $00

    inc b                                         ; $65eb: $04
    inc b                                         ; $65ec: $04
    di                                            ; $65ed: $f3
    ld h, l                                       ; $65ee: $65
    db $10                                        ; $65ef: $10
    ld [hl], d                                    ; $65f0: $72
    di                                            ; $65f1: $f3
    ld h, l                                       ; $65f2: $65
    db $10                                        ; $65f3: $10
    ld h, [hl]                                    ; $65f4: $66
    db $10                                        ; $65f5: $10
    ld h, a                                       ; $65f6: $67
    db $10                                        ; $65f7: $10
    ld l, b                                       ; $65f8: $68
    db $10                                        ; $65f9: $10
    ld l, c                                       ; $65fa: $69
    db $10                                        ; $65fb: $10
    ld l, d                                       ; $65fc: $6a
    db $10                                        ; $65fd: $10
    ld l, e                                       ; $65fe: $6b
    db $10                                        ; $65ff: $10
    ld l, h                                       ; $6600: $6c
    db $10                                        ; $6601: $10
    ld l, l                                       ; $6602: $6d
    db $10                                        ; $6603: $10
    ld l, [hl]                                    ; $6604: $6e
    db $10                                        ; $6605: $10
    ld l, a                                       ; $6606: $6f
    db $10                                        ; $6607: $10
    ld [hl], b                                    ; $6608: $70
    db $10                                        ; $6609: $10
    ld [hl], c                                    ; $660a: $71
    nop                                           ; $660b: $00
    nop                                           ; $660c: $00
    nop                                           ; $660d: $00
    nop                                           ; $660e: $00
    nop                                           ; $660f: $00
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    inc bc                                        ; $6612: $03
    inc bc                                        ; $6613: $03
    inc b                                         ; $6614: $04
    rlca                                          ; $6615: $07
    ld [$0b0f], sp                                ; $6616: $08 $0f $0b
    rrca                                          ; $6619: $0f
    inc [hl]                                      ; $661a: $34
    ccf                                           ; $661b: $3f
    cpl                                           ; $661c: $2f
    dec sp                                        ; $661d: $3b
    cpl                                           ; $661e: $2f
    add hl, sp                                    ; $661f: $39
    rla                                           ; $6620: $17
    ld e, $0b                                     ; $6621: $1e $0b
    rrca                                          ; $6623: $0f
    rlca                                          ; $6624: $07
    ld b, $0f                                     ; $6625: $06 $0f
    dec bc                                        ; $6627: $0b
    inc e                                         ; $6628: $1c
    rla                                           ; $6629: $17
    rrca                                          ; $662a: $0f
    rrca                                          ; $662b: $0f
    rrca                                          ; $662c: $0f
    rrca                                          ; $662d: $0f
    ld b, $06                                     ; $662e: $06 $06
    ldh [$e0], a                                  ; $6630: $e0 $e0
    db $10                                        ; $6632: $10
    ldh a, [$38]                                  ; $6633: $f0 $38
    add sp, -$08                                  ; $6635: $e8 $f8
    ret z                                         ; $6637: $c8

    db $fc                                        ; $6638: $fc
    cp h                                          ; $6639: $bc
    ldh a, [$d0]                                  ; $663a: $f0 $d0
    ldh a, [$30]                                  ; $663c: $f0 $30
    ld hl, sp+$28                                 ; $663e: $f8 $28
    ld hl, sp+$08                                 ; $6640: $f8 $08
    ldh a, [rNR10]                                ; $6642: $f0 $10
    ldh [$e0], a                                  ; $6644: $e0 $e0
    ldh [$60], a                                  ; $6646: $e0 $60
    ldh a, [$d0]                                  ; $6648: $f0 $d0
    ldh [$60], a                                  ; $664a: $e0 $60
    sub b                                         ; $664c: $90
    ldh a, [$60]                                  ; $664d: $f0 $60
    ld h, b                                       ; $664f: $60
    inc bc                                        ; $6650: $03
    inc bc                                        ; $6651: $03
    inc b                                         ; $6652: $04
    rlca                                          ; $6653: $07

jr_020_6654:
    dec bc                                        ; $6654: $0b
    rrca                                          ; $6655: $0f
    rra                                           ; $6656: $1f
    inc e                                         ; $6657: $1c
    ld l, a                                       ; $6658: $6f
    ld a, e                                       ; $6659: $7b
    ld c, a                                       ; $665a: $4f
    ld a, h                                       ; $665b: $7c
    ccf                                           ; $665c: $3f
    dec sp                                        ; $665d: $3b
    ccf                                           ; $665e: $3f
    ld [hl-], a                                   ; $665f: $32
    ld a, a                                       ; $6660: $7f
    ld e, b                                       ; $6661: $58
    ld a, a                                       ; $6662: $7f
    ld a, h                                       ; $6663: $7c
    cpl                                           ; $6664: $2f
    dec hl                                        ; $6665: $2b
    cpl                                           ; $6666: $2f
    cpl                                           ; $6667: $2f
    ld l, b                                       ; $6668: $68
    ld l, a                                       ; $6669: $6f
    ld h, a                                       ; $666a: $67
    ld h, a                                       ; $666b: $67
    inc b                                         ; $666c: $04
    rlca                                          ; $666d: $07
    inc bc                                        ; $666e: $03

jr_020_666f:
    inc bc                                        ; $666f: $03
    ret nz                                        ; $6670: $c0

    ret nz                                        ; $6671: $c0

    jr nz, jr_020_6654                            ; $6672: $20 $e0

    ret nc                                        ; $6674: $d0

    ldh a, [$f8]                                  ; $6675: $f0 $f8
    jr c, jr_020_666f                             ; $6677: $38 $f6

    sbc $f2                                       ; $6679: $de $f2
    ld a, $fc                                     ; $667b: $3e $fc
    call c, Call_020_48f8                         ; $667d: $dc $f8 $48
    ld hl, sp+$18                                 ; $6680: $f8 $18
    ld hl, sp+$28                                 ; $6682: $f8 $28
    db $fc                                        ; $6684: $fc
    call nc, $f4fc                                ; $6685: $d4 $fc $f4
    sbc b                                         ; $6688: $98
    ld hl, sp-$10                                 ; $6689: $f8 $f0
    ldh a, [$e0]                                  ; $668b: $f0 $e0
    ldh [rP1], a                                  ; $668d: $e0 $00
    nop                                           ; $668f: $00
    rlca                                          ; $6690: $07
    rlca                                          ; $6691: $07
    ld [$1c0f], sp                                ; $6692: $08 $0f $1c
    rla                                           ; $6695: $17

jr_020_6696:
    rra                                           ; $6696: $1f
    inc de                                        ; $6697: $13
    ccf                                           ; $6698: $3f
    dec a                                         ; $6699: $3d
    rrca                                          ; $669a: $0f
    dec bc                                        ; $669b: $0b
    rrca                                          ; $669c: $0f
    inc c                                         ; $669d: $0c
    rra                                           ; $669e: $1f
    inc d                                         ; $669f: $14
    rra                                           ; $66a0: $1f
    db $10                                        ; $66a1: $10
    rrca                                          ; $66a2: $0f
    ld [$0707], sp                                ; $66a3: $08 $07 $07
    rrca                                          ; $66a6: $0f
    ld a, [bc]                                    ; $66a7: $0a
    rra                                           ; $66a8: $1f
    rla                                           ; $66a9: $17
    rrca                                          ; $66aa: $0f
    rrca                                          ; $66ab: $0f
    rrca                                          ; $66ac: $0f
    rrca                                          ; $66ad: $0f
    ld b, $06                                     ; $66ae: $06 $06
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    ret nz                                        ; $66b2: $c0

    ret nz                                        ; $66b3: $c0

    jr nz, jr_020_6696                            ; $66b4: $20 $e0

    db $10                                        ; $66b6: $10
    ldh a, [$d0]                                  ; $66b7: $f0 $d0
    ldh a, [$2c]                                  ; $66b9: $f0 $2c
    db $fc                                        ; $66bb: $fc
    db $f4                                        ; $66bc: $f4
    call c, $9cf4                                 ; $66bd: $dc $f4 $9c
    add sp, $78                                   ; $66c0: $e8 $78
    ret nc                                        ; $66c2: $d0

    ldh a, [$e0]                                  ; $66c3: $f0 $e0
    ld h, b                                       ; $66c5: $60
    ldh [$e0], a                                  ; $66c6: $e0 $e0
    ld [hl], b                                    ; $66c8: $70
    ldh a, [$d0]                                  ; $66c9: $f0 $d0
    or b                                          ; $66cb: $b0
    ret nc                                        ; $66cc: $d0

    ldh a, [$60]                                  ; $66cd: $f0 $60
    ld h, b                                       ; $66cf: $60
    inc bc                                        ; $66d0: $03
    inc bc                                        ; $66d1: $03
    inc b                                         ; $66d2: $04
    rlca                                          ; $66d3: $07

jr_020_66d4:
    inc c                                         ; $66d4: $0c
    rrca                                          ; $66d5: $0f
    rra                                           ; $66d6: $1f
    dec de                                        ; $66d7: $1b
    ld h, a                                       ; $66d8: $67
    ld a, h                                       ; $66d9: $7c
    ld b, e                                       ; $66da: $43
    ld a, a                                       ; $66db: $7f
    jr nz, jr_020_671d                            ; $66dc: $20 $3f

    jr nc, jr_020_671f                            ; $66de: $30 $3f

    ld a, h                                       ; $66e0: $7c
    ld e, a                                       ; $66e1: $5f
    ld a, a                                       ; $66e2: $7f
    ld a, e                                       ; $66e3: $7b
    rrca                                          ; $66e4: $0f
    inc c                                         ; $66e5: $0c

jr_020_66e6:
    rrca                                          ; $66e6: $0f
    rrca                                          ; $66e7: $0f
    ld [$070f], sp                                ; $66e8: $08 $0f $07
    rlca                                          ; $66eb: $07
    inc b                                         ; $66ec: $04
    rlca                                          ; $66ed: $07
    inc bc                                        ; $66ee: $03
    inc bc                                        ; $66ef: $03
    ret nz                                        ; $66f0: $c0

    ret nz                                        ; $66f1: $c0

    jr nz, jr_020_66d4                            ; $66f2: $20 $e0

    jr nc, jr_020_66e6                            ; $66f4: $30 $f0

    ld hl, sp-$28                                 ; $66f6: $f8 $d8
    and $3e                                       ; $66f8: $e6 $3e
    jp nz, $04fe                                  ; $66fa: $c2 $fe $04

    db $fc                                        ; $66fd: $fc
    ld [$38f8], sp                                ; $66fe: $08 $f8 $38
    ld hl, sp-$05                                 ; $6701: $f8 $fb
    db $db                                        ; $6703: $db
    rst $38                                       ; $6704: $ff
    scf                                           ; $6705: $37
    db $fc                                        ; $6706: $fc
    db $f4                                        ; $6707: $f4
    sbc b                                         ; $6708: $98
    ld hl, sp-$10                                 ; $6709: $f8 $f0
    ldh a, [$e0]                                  ; $670b: $f0 $e0
    ldh [rP1], a                                  ; $670d: $e0 $00
    nop                                           ; $670f: $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    inc bc                                        ; $6712: $03
    inc bc                                        ; $6713: $03
    inc b                                         ; $6714: $04
    rlca                                          ; $6715: $07
    ld [$0b0f], sp                                ; $6716: $08 $0f $0b
    rrca                                          ; $6719: $0f
    inc [hl]                                      ; $671a: $34
    ccf                                           ; $671b: $3f
    cpl                                           ; $671c: $2f

jr_020_671d:
    dec sp                                        ; $671d: $3b
    cpl                                           ; $671e: $2f

jr_020_671f:
    add hl, sp                                    ; $671f: $39
    rla                                           ; $6720: $17
    ld e, $0b                                     ; $6721: $1e $0b
    rrca                                          ; $6723: $0f
    rlca                                          ; $6724: $07
    ld b, $07                                     ; $6725: $06 $07
    rlca                                          ; $6727: $07
    ld c, $0f                                     ; $6728: $0e $0f
    dec bc                                        ; $672a: $0b
    dec c                                         ; $672b: $0d
    dec bc                                        ; $672c: $0b
    rrca                                          ; $672d: $0f
    ld b, $06                                     ; $672e: $06 $06
    ldh [$e0], a                                  ; $6730: $e0 $e0
    db $10                                        ; $6732: $10
    ldh a, [$38]                                  ; $6733: $f0 $38
    add sp, -$08                                  ; $6735: $e8 $f8
    ret z                                         ; $6737: $c8

    db $fc                                        ; $6738: $fc
    cp h                                          ; $6739: $bc
    ldh a, [$d0]                                  ; $673a: $f0 $d0
    ldh a, [$30]                                  ; $673c: $f0 $30
    ld hl, sp+$28                                 ; $673e: $f8 $28
    ld hl, sp+$08                                 ; $6740: $f8 $08
    or $16                                        ; $6742: $f6 $16
    and $e6                                       ; $6744: $e6 $e6
    db $fc                                        ; $6746: $fc
    ld e, h                                       ; $6747: $5c
    ld hl, sp-$18                                 ; $6748: $f8 $e8
    ldh a, [$f0]                                  ; $674a: $f0 $f0
    ldh a, [$f0]                                  ; $674c: $f0 $f0
    ld h, b                                       ; $674e: $60
    ld h, b                                       ; $674f: $60
    inc bc                                        ; $6750: $03
    inc bc                                        ; $6751: $03
    inc b                                         ; $6752: $04
    rlca                                          ; $6753: $07

jr_020_6754:
    dec bc                                        ; $6754: $0b
    rrca                                          ; $6755: $0f
    rra                                           ; $6756: $1f
    inc e                                         ; $6757: $1c
    ld l, a                                       ; $6758: $6f
    ld a, e                                       ; $6759: $7b
    ld c, a                                       ; $675a: $4f
    ld a, h                                       ; $675b: $7c
    ccf                                           ; $675c: $3f
    dec sp                                        ; $675d: $3b
    rra                                           ; $675e: $1f
    ld [de], a                                    ; $675f: $12
    rra                                           ; $6760: $1f
    jr jr_020_6782                                ; $6761: $18 $1f

    inc d                                         ; $6763: $14
    ccf                                           ; $6764: $3f
    dec hl                                        ; $6765: $2b
    ld a, a                                       ; $6766: $7f
    ld l, a                                       ; $6767: $6f
    ld a, c                                       ; $6768: $79
    ld a, a                                       ; $6769: $7f
    rrca                                          ; $676a: $0f
    rrca                                          ; $676b: $0f
    rlca                                          ; $676c: $07
    rlca                                          ; $676d: $07
    nop                                           ; $676e: $00

jr_020_676f:
    nop                                           ; $676f: $00
    ret nz                                        ; $6770: $c0

    ret nz                                        ; $6771: $c0

    jr nz, jr_020_6754                            ; $6772: $20 $e0

    ret nc                                        ; $6774: $d0

    ldh a, [$f8]                                  ; $6775: $f0 $f8
    jr c, jr_020_676f                             ; $6777: $38 $f6

    sbc $f2                                       ; $6779: $de $f2
    ld a, $fc                                     ; $677b: $3e $fc
    call c, Call_020_4cfc                         ; $677d: $dc $fc $4c
    cp $1a                                        ; $6780: $fe $1a

jr_020_6782:
    cp $3e                                        ; $6782: $fe $3e
    ldh a, [$d0]                                  ; $6784: $f0 $d0
    ldh a, [$f0]                                  ; $6786: $f0 $f0
    db $10                                        ; $6788: $10
    ldh a, [$e0]                                  ; $6789: $f0 $e0
    ldh [rNR41], a                                ; $678b: $e0 $20
    ldh [$c0], a                                  ; $678d: $e0 $c0
    ret nz                                        ; $678f: $c0

    rlca                                          ; $6790: $07
    rlca                                          ; $6791: $07
    ld [$1c0f], sp                                ; $6792: $08 $0f $1c
    rla                                           ; $6795: $17

jr_020_6796:
    rra                                           ; $6796: $1f
    inc de                                        ; $6797: $13
    ccf                                           ; $6798: $3f
    dec a                                         ; $6799: $3d
    rrca                                          ; $679a: $0f
    dec bc                                        ; $679b: $0b
    rrca                                          ; $679c: $0f
    inc c                                         ; $679d: $0c
    rra                                           ; $679e: $1f
    inc d                                         ; $679f: $14
    rra                                           ; $67a0: $1f
    db $10                                        ; $67a1: $10
    rrca                                          ; $67a2: $0f
    ld [$6767], sp                                ; $67a3: $08 $67 $67
    ld [hl], a                                    ; $67a6: $77
    halt                                          ; $67a7: $76
    rra                                           ; $67a8: $1f
    rra                                           ; $67a9: $1f
    rlca                                          ; $67aa: $07
    ld b, $09                                     ; $67ab: $06 $09
    rrca                                          ; $67ad: $0f
    ld b, $06                                     ; $67ae: $06 $06
    nop                                           ; $67b0: $00
    nop                                           ; $67b1: $00

jr_020_67b2:
    ret nz                                        ; $67b2: $c0

    ret nz                                        ; $67b3: $c0

    jr nz, jr_020_6796                            ; $67b4: $20 $e0

    db $10                                        ; $67b6: $10
    ldh a, [$d0]                                  ; $67b7: $f0 $d0
    ldh a, [$2c]                                  ; $67b9: $f0 $2c
    db $fc                                        ; $67bb: $fc
    db $f4                                        ; $67bc: $f4
    call c, $9cf4                                 ; $67bd: $dc $f4 $9c
    add sp, $78                                   ; $67c0: $e8 $78
    ret nc                                        ; $67c2: $d0

    ldh a, [$e0]                                  ; $67c3: $f0 $e0
    ld h, b                                       ; $67c5: $60
    ldh a, [$d0]                                  ; $67c6: $f0 $d0
    jr c, jr_020_67b2                             ; $67c8: $38 $e8

    ldh a, [$f0]                                  ; $67ca: $f0 $f0
    ldh a, [$f0]                                  ; $67cc: $f0 $f0
    ld h, b                                       ; $67ce: $60
    ld h, b                                       ; $67cf: $60
    inc bc                                        ; $67d0: $03
    inc bc                                        ; $67d1: $03
    inc b                                         ; $67d2: $04
    rlca                                          ; $67d3: $07

jr_020_67d4:
    inc c                                         ; $67d4: $0c
    rrca                                          ; $67d5: $0f
    rra                                           ; $67d6: $1f
    dec de                                        ; $67d7: $1b
    ld h, a                                       ; $67d8: $67
    ld a, h                                       ; $67d9: $7c
    ld b, e                                       ; $67da: $43
    ld a, a                                       ; $67db: $7f
    jr nz, @+$41                                  ; $67dc: $20 $3f

    db $10                                        ; $67de: $10
    rra                                           ; $67df: $1f
    inc e                                         ; $67e0: $1c
    rra                                           ; $67e1: $1f
    rra                                           ; $67e2: $1f
    dec de                                        ; $67e3: $1b
    ccf                                           ; $67e4: $3f
    inc l                                         ; $67e5: $2c

jr_020_67e6:
    ccf                                           ; $67e6: $3f
    cpl                                           ; $67e7: $2f
    add hl, de                                    ; $67e8: $19
    rra                                           ; $67e9: $1f
    rrca                                          ; $67ea: $0f
    rrca                                          ; $67eb: $0f
    rlca                                          ; $67ec: $07
    rlca                                          ; $67ed: $07
    nop                                           ; $67ee: $00
    nop                                           ; $67ef: $00
    ret nz                                        ; $67f0: $c0

    ret nz                                        ; $67f1: $c0

    jr nz, jr_020_67d4                            ; $67f2: $20 $e0

    jr nc, jr_020_67e6                            ; $67f4: $30 $f0

    ld hl, sp-$28                                 ; $67f6: $f8 $d8
    rst $20                                       ; $67f8: $e7
    ccf                                           ; $67f9: $3f
    jp $05ff                                      ; $67fa: $c3 $ff $05


    db $fd                                        ; $67fd: $fd
    dec c                                         ; $67fe: $0d
    db $fd                                        ; $67ff: $fd
    ccf                                           ; $6800: $3f
    ei                                            ; $6801: $fb
    cp $de                                        ; $6802: $fe $de
    ldh a, [$30]                                  ; $6804: $f0 $30
    ldh a, [$f0]                                  ; $6806: $f0 $f0
    db $10                                        ; $6808: $10
    ldh a, [$e0]                                  ; $6809: $f0 $e0
    ldh [rNR41], a                                ; $680b: $e0 $20
    ldh [$c0], a                                  ; $680d: $e0 $c0
    ret nz                                        ; $680f: $c0

    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    inc bc                                        ; $6812: $03
    inc bc                                        ; $6813: $03
    inc b                                         ; $6814: $04
    rlca                                          ; $6815: $07
    ld [$080f], sp                                ; $6816: $08 $0f $08
    rrca                                          ; $6819: $0f
    scf                                           ; $681a: $37
    ccf                                           ; $681b: $3f
    ld l, $3b                                     ; $681c: $2e $3b
    cpl                                           ; $681e: $2f
    add hl, sp                                    ; $681f: $39
    rla                                           ; $6820: $17
    ld e, $0f                                     ; $6821: $1e $0f
    dec bc                                        ; $6823: $0b

jr_020_6824:
    rra                                           ; $6824: $1f
    ld de, $1b1f                                  ; $6825: $11 $1f $1b
    rla                                           ; $6828: $17
    rra                                           ; $6829: $1f
    rrca                                          ; $682a: $0f
    dec bc                                        ; $682b: $0b
    inc b                                         ; $682c: $04
    rlca                                          ; $682d: $07
    rlca                                          ; $682e: $07
    rlca                                          ; $682f: $07
    ret nz                                        ; $6830: $c0

    ret nz                                        ; $6831: $c0

    jr nc, jr_020_6824                            ; $6832: $30 $f0

    db $10                                        ; $6834: $10
    ldh a, [$38]                                  ; $6835: $f0 $38
    add sp, -$08                                  ; $6837: $e8 $f8
    ret z                                         ; $6839: $c8

    db $fc                                        ; $683a: $fc
    cp h                                          ; $683b: $bc
    ldh a, [$d0]                                  ; $683c: $f0 $d0
    ldh a, [$30]                                  ; $683e: $f0 $30
    ld hl, sp+$28                                 ; $6840: $f8 $28
    ldh a, [rNR10]                                ; $6842: $f0 $10
    ldh [$e0], a                                  ; $6844: $e0 $e0
    ret nz                                        ; $6846: $c0

    ld b, b                                       ; $6847: $40
    ldh [$a0], a                                  ; $6848: $e0 $a0
    ld h, b                                       ; $684a: $60
    ld h, b                                       ; $684b: $60
    or [hl]                                       ; $684c: $b6
    or [hl]                                       ; $684d: $b6
    sbc [hl]                                      ; $684e: $9e
    sbc [hl]                                      ; $684f: $9e
    ld bc, $0601                                  ; $6850: $01 $01 $06
    rlca                                          ; $6853: $07
    ld [$190f], sp                                ; $6854: $08 $0f $19
    rra                                           ; $6857: $1f
    ld h, a                                       ; $6858: $67
    ld a, [hl]                                    ; $6859: $7e
    ld e, a                                       ; $685a: $5f
    ld a, c                                       ; $685b: $79
    daa                                           ; $685c: $27
    ld a, $1f                                     ; $685d: $3e $1f
    add hl, de                                    ; $685f: $19
    rrca                                          ; $6860: $0f
    dec c                                         ; $6861: $0d
    rlca                                          ; $6862: $07
    ld b, $07                                     ; $6863: $06 $07
    rlca                                          ; $6865: $07
    rlca                                          ; $6866: $07
    dec b                                         ; $6867: $05
    rlca                                          ; $6868: $07
    ld b, $07                                     ; $6869: $06 $07
    rlca                                          ; $686b: $07
    add hl, bc                                    ; $686c: $09
    rrca                                          ; $686d: $0f
    rrca                                          ; $686e: $0f
    rrca                                          ; $686f: $0f
    ldh [$e0], a                                  ; $6870: $e0 $e0
    jr nc, @-$0e                                  ; $6872: $30 $f0

    ld [$ecf8], sp                                ; $6874: $08 $f8 $ec
    db $fc                                        ; $6877: $fc
    or $1e                                        ; $6878: $f6 $1e
    ld a, [$fcee]                                 ; $687a: $fa $ee $fc
    inc e                                         ; $687d: $1c
    ld hl, sp+$28                                 ; $687e: $f8 $28
    ld hl, sp+$28                                 ; $6880: $f8 $28
    ldh a, [rNR10]                                ; $6882: $f0 $10
    ldh a, [$f0]                                  ; $6884: $f0 $f0
    ldh a, [$d0]                                  ; $6886: $f0 $d0
    ldh a, [$b0]                                  ; $6888: $f0 $b0
    ldh a, [rSVBK]                                ; $688a: $f0 $70
    ret z                                         ; $688c: $c8

    ld hl, sp-$08                                 ; $688d: $f8 $f8
    ld hl, sp+$03                                 ; $688f: $f8 $03
    inc bc                                        ; $6891: $03
    inc c                                         ; $6892: $0c
    rrca                                          ; $6893: $0f
    ld [$1c0f], sp                                ; $6894: $08 $0f $1c
    rla                                           ; $6897: $17
    rra                                           ; $6898: $1f
    inc de                                        ; $6899: $13
    ccf                                           ; $689a: $3f
    dec a                                         ; $689b: $3d
    rrca                                          ; $689c: $0f
    dec bc                                        ; $689d: $0b
    rrca                                          ; $689e: $0f
    inc c                                         ; $689f: $0c
    rra                                           ; $68a0: $1f
    inc d                                         ; $68a1: $14
    rrca                                          ; $68a2: $0f
    ld [$0707], sp                                ; $68a3: $08 $07 $07
    inc bc                                        ; $68a6: $03
    ld [bc], a                                    ; $68a7: $02
    rlca                                          ; $68a8: $07
    dec b                                         ; $68a9: $05
    ld b, $06                                     ; $68aa: $06 $06
    ld l, l                                       ; $68ac: $6d
    ld l, l                                       ; $68ad: $6d

jr_020_68ae:
    ld a, c                                       ; $68ae: $79
    ld a, c                                       ; $68af: $79
    nop                                           ; $68b0: $00
    nop                                           ; $68b1: $00
    ret nz                                        ; $68b2: $c0

    ret nz                                        ; $68b3: $c0

    jr nz, @-$1e                                  ; $68b4: $20 $e0

    db $10                                        ; $68b6: $10
    ldh a, [rNR10]                                ; $68b7: $f0 $10
    ldh a, [$ec]                                  ; $68b9: $f0 $ec
    db $fc                                        ; $68bb: $fc
    ld [hl], h                                    ; $68bc: $74
    call c, $9cf4                                 ; $68bd: $dc $f4 $9c
    add sp, $78                                   ; $68c0: $e8 $78
    ldh a, [$d0]                                  ; $68c2: $f0 $d0
    ld hl, sp-$78                                 ; $68c4: $f8 $88
    ld hl, sp-$28                                 ; $68c6: $f8 $d8
    add sp, -$08                                  ; $68c8: $e8 $f8
    ldh a, [$d0]                                  ; $68ca: $f0 $d0
    jr nz, jr_020_68ae                            ; $68cc: $20 $e0

    ldh [$e0], a                                  ; $68ce: $e0 $e0
    inc bc                                        ; $68d0: $03
    inc bc                                        ; $68d1: $03
    inc b                                         ; $68d2: $04
    rlca                                          ; $68d3: $07
    rrca                                          ; $68d4: $0f
    dec bc                                        ; $68d5: $0b
    rla                                           ; $68d6: $17
    ld e, $19                                     ; $68d7: $1e $19
    rra                                           ; $68d9: $1f
    db $10                                        ; $68da: $10
    rra                                           ; $68db: $1f
    ld [$0c0f], sp                                ; $68dc: $08 $0f $0c
    rrca                                          ; $68df: $0f
    rlca                                          ; $68e0: $07
    rlca                                          ; $68e1: $07
    rlca                                          ; $68e2: $07
    inc b                                         ; $68e3: $04

jr_020_68e4:
    rlca                                          ; $68e4: $07

jr_020_68e5:
    dec b                                         ; $68e5: $05
    ld b, $07                                     ; $68e6: $06 $07
    dec b                                         ; $68e8: $05
    rlca                                          ; $68e9: $07
    rlca                                          ; $68ea: $07
    dec b                                         ; $68eb: $05
    add hl, bc                                    ; $68ec: $09
    rrca                                          ; $68ed: $0f
    rrca                                          ; $68ee: $0f
    rrca                                          ; $68ef: $0f
    ret nz                                        ; $68f0: $c0

    ret nz                                        ; $68f1: $c0

    jr nc, jr_020_68e4                            ; $68f2: $30 $f0

    ldh a, [$d0]                                  ; $68f4: $f0 $d0
    db $ec                                        ; $68f6: $ec
    inc a                                         ; $68f7: $3c
    call nz, $04fc                                ; $68f8: $c4 $fc $04
    db $fc                                        ; $68fb: $fc
    ld [$10f8], sp                                ; $68fc: $08 $f8 $10
    ldh a, [$e0]                                  ; $68ff: $f0 $e0
    ldh [$e0], a                                  ; $6901: $e0 $e0
    jr nz, jr_020_68e5                            ; $6903: $20 $e0

    and b                                         ; $6905: $a0
    ld h, b                                       ; $6906: $60
    ldh [$a0], a                                  ; $6907: $e0 $a0
    ldh [$e0], a                                  ; $6909: $e0 $e0
    and b                                         ; $690b: $a0
    sub b                                         ; $690c: $90
    ldh a, [$f0]                                  ; $690d: $f0 $f0
    ldh a, [rP1]                                  ; $690f: $f0 $00
    nop                                           ; $6911: $00
    inc bc                                        ; $6912: $03
    inc bc                                        ; $6913: $03
    inc b                                         ; $6914: $04
    rlca                                          ; $6915: $07
    ld [$080f], sp                                ; $6916: $08 $0f $08
    rrca                                          ; $6919: $0f
    scf                                           ; $691a: $37
    ccf                                           ; $691b: $3f
    ld l, $3b                                     ; $691c: $2e $3b
    cpl                                           ; $691e: $2f
    add hl, sp                                    ; $691f: $39
    rla                                           ; $6920: $17
    ld e, $0f                                     ; $6921: $1e $0f
    dec bc                                        ; $6923: $0b

jr_020_6924:
    rra                                           ; $6924: $1f
    inc de                                        ; $6925: $13
    rra                                           ; $6926: $1f
    dec e                                         ; $6927: $1d
    rla                                           ; $6928: $17
    ld e, $0f                                     ; $6929: $1e $0f
    dec bc                                        ; $692b: $0b
    inc b                                         ; $692c: $04
    rlca                                          ; $692d: $07
    rlca                                          ; $692e: $07
    rlca                                          ; $692f: $07
    ret nz                                        ; $6930: $c0

    ret nz                                        ; $6931: $c0

    jr nc, jr_020_6924                            ; $6932: $30 $f0

    db $10                                        ; $6934: $10
    ldh a, [$38]                                  ; $6935: $f0 $38
    add sp, -$08                                  ; $6937: $e8 $f8
    ret z                                         ; $6939: $c8

    db $fc                                        ; $693a: $fc
    cp h                                          ; $693b: $bc
    ldh a, [$d0]                                  ; $693c: $f0 $d0
    ldh a, [$30]                                  ; $693e: $f0 $30
    ld hl, sp+$28                                 ; $6940: $f8 $28
    ldh a, [rNR10]                                ; $6942: $f0 $10
    ldh [$e0], a                                  ; $6944: $e0 $e0
    ret nz                                        ; $6946: $c0

    ld b, b                                       ; $6947: $40
    add b                                         ; $6948: $80
    add b                                         ; $6949: $80
    nop                                           ; $694a: $00
    nop                                           ; $694b: $00
    add b                                         ; $694c: $80
    add b                                         ; $694d: $80
    add b                                         ; $694e: $80
    add b                                         ; $694f: $80
    ld bc, $0601                                  ; $6950: $01 $01 $06
    rlca                                          ; $6953: $07
    ld [$190f], sp                                ; $6954: $08 $0f $19
    rra                                           ; $6957: $1f
    ld h, a                                       ; $6958: $67
    ld a, [hl]                                    ; $6959: $7e
    ld e, a                                       ; $695a: $5f
    ld a, c                                       ; $695b: $79
    daa                                           ; $695c: $27
    ld a, $1f                                     ; $695d: $3e $1f
    add hl, de                                    ; $695f: $19
    rrca                                          ; $6960: $0f
    dec c                                         ; $6961: $0d
    rlca                                          ; $6962: $07
    ld b, $07                                     ; $6963: $06 $07
    rlca                                          ; $6965: $07
    rra                                           ; $6966: $1f
    dec e                                         ; $6967: $1d
    rra                                           ; $6968: $1f
    inc e                                         ; $6969: $1c
    rrca                                          ; $696a: $0f
    rrca                                          ; $696b: $0f
    add hl, bc                                    ; $696c: $09
    rrca                                          ; $696d: $0f
    rrca                                          ; $696e: $0f
    rrca                                          ; $696f: $0f
    ldh [$e0], a                                  ; $6970: $e0 $e0
    jr nc, @-$0e                                  ; $6972: $30 $f0

    ld [$ecf8], sp                                ; $6974: $08 $f8 $ec
    db $fc                                        ; $6977: $fc
    or $1e                                        ; $6978: $f6 $1e
    ld a, [$fcee]                                 ; $697a: $fa $ee $fc
    inc e                                         ; $697d: $1c
    ld hl, sp+$28                                 ; $697e: $f8 $28
    ld hl, sp+$28                                 ; $6980: $f8 $28
    ldh a, [rNR10]                                ; $6982: $f0 $10
    ldh a, [$f0]                                  ; $6984: $f0 $f0
    ldh a, [$d0]                                  ; $6986: $f0 $d0
    ldh a, [$b0]                                  ; $6988: $f0 $b0
    ldh a, [$f0]                                  ; $698a: $f0 $f0
    ld c, b                                       ; $698c: $48
    ld a, b                                       ; $698d: $78
    ld a, b                                       ; $698e: $78
    ld a, b                                       ; $698f: $78
    inc bc                                        ; $6990: $03
    inc bc                                        ; $6991: $03
    inc c                                         ; $6992: $0c
    rrca                                          ; $6993: $0f
    ld [$1c0f], sp                                ; $6994: $08 $0f $1c
    rla                                           ; $6997: $17
    rra                                           ; $6998: $1f
    inc de                                        ; $6999: $13
    ccf                                           ; $699a: $3f
    dec a                                         ; $699b: $3d
    rrca                                          ; $699c: $0f
    dec bc                                        ; $699d: $0b
    rrca                                          ; $699e: $0f
    inc c                                         ; $699f: $0c
    rra                                           ; $69a0: $1f
    inc d                                         ; $69a1: $14
    rrca                                          ; $69a2: $0f
    ld [$0707], sp                                ; $69a3: $08 $07 $07
    rlca                                          ; $69a6: $07
    dec b                                         ; $69a7: $05
    inc bc                                        ; $69a8: $03
    inc bc                                        ; $69a9: $03
    nop                                           ; $69aa: $00
    nop                                           ; $69ab: $00
    ld bc, $0101                                  ; $69ac: $01 $01 $01
    ld bc, $0000                                  ; $69af: $01 $00 $00
    ret nz                                        ; $69b2: $c0

    ret nz                                        ; $69b3: $c0

    jr nz, @-$1e                                  ; $69b4: $20 $e0

    db $10                                        ; $69b6: $10
    ldh a, [rNR10]                                ; $69b7: $f0 $10
    ldh a, [$ec]                                  ; $69b9: $f0 $ec
    db $fc                                        ; $69bb: $fc
    ld [hl], h                                    ; $69bc: $74
    call c, $9cf4                                 ; $69bd: $dc $f4 $9c
    add sp, $78                                   ; $69c0: $e8 $78
    ldh a, [$90]                                  ; $69c2: $f0 $90
    ld hl, sp+$08                                 ; $69c4: $f8 $08
    ld hl, sp-$68                                 ; $69c6: $f8 $98
    add sp, -$08                                  ; $69c8: $e8 $f8
    ldh a, [$d0]                                  ; $69ca: $f0 $d0
    jr nz, @-$1e                                  ; $69cc: $20 $e0

    ldh [$e0], a                                  ; $69ce: $e0 $e0
    inc bc                                        ; $69d0: $03
    inc bc                                        ; $69d1: $03
    inc b                                         ; $69d2: $04
    rlca                                          ; $69d3: $07
    rrca                                          ; $69d4: $0f
    dec bc                                        ; $69d5: $0b
    rla                                           ; $69d6: $17
    ld e, $19                                     ; $69d7: $1e $19
    rra                                           ; $69d9: $1f
    db $10                                        ; $69da: $10
    rra                                           ; $69db: $1f
    ld [$0c0f], sp                                ; $69dc: $08 $0f $0c
    rrca                                          ; $69df: $0f
    rlca                                          ; $69e0: $07
    rlca                                          ; $69e1: $07
    inc bc                                        ; $69e2: $03
    ld [bc], a                                    ; $69e3: $02

jr_020_69e4:
    inc bc                                        ; $69e4: $03
    inc bc                                        ; $69e5: $03
    ld [bc], a                                    ; $69e6: $02
    inc bc                                        ; $69e7: $03
    inc bc                                        ; $69e8: $03
    inc bc                                        ; $69e9: $03
    rlca                                          ; $69ea: $07
    dec b                                         ; $69eb: $05
    add hl, bc                                    ; $69ec: $09
    rrca                                          ; $69ed: $0f
    rrca                                          ; $69ee: $0f
    rrca                                          ; $69ef: $0f
    ret nz                                        ; $69f0: $c0

    ret nz                                        ; $69f1: $c0

    jr nc, jr_020_69e4                            ; $69f2: $30 $f0

    ldh a, [$d0]                                  ; $69f4: $f0 $d0
    db $ec                                        ; $69f6: $ec
    inc a                                         ; $69f7: $3c
    call nz, $04fc                                ; $69f8: $c4 $fc $04
    db $fc                                        ; $69fb: $fc
    ld [$13f8], sp                                ; $69fc: $08 $f8 $13
    di                                            ; $69ff: $f3
    db $e3                                        ; $6a00: $e3
    db $e3                                        ; $6a01: $e3
    rst $30                                       ; $6a02: $f7
    scf                                           ; $6a03: $37
    db $fc                                        ; $6a04: $fc
    xor h                                         ; $6a05: $ac
    ld [hl], b                                    ; $6a06: $70
    ldh a, [$a0]                                  ; $6a07: $f0 $a0
    ldh [$e0], a                                  ; $6a09: $e0 $e0
    and b                                         ; $6a0b: $a0
    sub b                                         ; $6a0c: $90
    ldh a, [$f0]                                  ; $6a0d: $f0 $f0
    ldh a, [rP1]                                  ; $6a0f: $f0 $00
    nop                                           ; $6a11: $00
    inc bc                                        ; $6a12: $03
    inc bc                                        ; $6a13: $03
    call nz, $c8c7                                ; $6a14: $c4 $c7 $c8
    rst $08                                       ; $6a17: $cf
    ret z                                         ; $6a18: $c8

    rst $08                                       ; $6a19: $cf
    ld [hl], a                                    ; $6a1a: $77
    ld a, a                                       ; $6a1b: $7f
    ld l, $3b                                     ; $6a1c: $2e $3b
    cpl                                           ; $6a1e: $2f
    add hl, sp                                    ; $6a1f: $39
    rla                                           ; $6a20: $17
    ld e, $0f                                     ; $6a21: $1e $0f
    dec bc                                        ; $6a23: $0b

jr_020_6a24:
    rra                                           ; $6a24: $1f
    dec d                                         ; $6a25: $15
    rra                                           ; $6a26: $1f
    rra                                           ; $6a27: $1f
    rla                                           ; $6a28: $17
    rra                                           ; $6a29: $1f
    rrca                                          ; $6a2a: $0f
    dec bc                                        ; $6a2b: $0b
    inc b                                         ; $6a2c: $04
    rlca                                          ; $6a2d: $07
    rlca                                          ; $6a2e: $07
    rlca                                          ; $6a2f: $07
    ret nz                                        ; $6a30: $c0

    ret nz                                        ; $6a31: $c0

    jr nc, jr_020_6a24                            ; $6a32: $30 $f0

    db $10                                        ; $6a34: $10
    ldh a, [$38]                                  ; $6a35: $f0 $38
    add sp, -$08                                  ; $6a37: $e8 $f8
    ret z                                         ; $6a39: $c8

    db $fc                                        ; $6a3a: $fc
    cp h                                          ; $6a3b: $bc
    ldh a, [$d0]                                  ; $6a3c: $f0 $d0
    ldh a, [$30]                                  ; $6a3e: $f0 $30
    ld hl, sp+$28                                 ; $6a40: $f8 $28
    ldh a, [rNR10]                                ; $6a42: $f0 $10
    ldh [$e0], a                                  ; $6a44: $e0 $e0
    add b                                         ; $6a46: $80
    add b                                         ; $6a47: $80
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    add b                                         ; $6a4c: $80
    add b                                         ; $6a4d: $80
    add b                                         ; $6a4e: $80
    add b                                         ; $6a4f: $80
    ld bc, $0601                                  ; $6a50: $01 $01 $06
    rlca                                          ; $6a53: $07
    ret z                                         ; $6a54: $c8

    rst $08                                       ; $6a55: $cf
    reti                                          ; $6a56: $d9


    rst $18                                       ; $6a57: $df
    rst $20                                       ; $6a58: $e7
    cp $5f                                        ; $6a59: $fe $5f
    ld a, c                                       ; $6a5b: $79
    daa                                           ; $6a5c: $27
    ld a, $3f                                     ; $6a5d: $3e $3f
    add hl, sp                                    ; $6a5f: $39
    rra                                           ; $6a60: $1f
    dec e                                         ; $6a61: $1d
    rla                                           ; $6a62: $17
    ld e, $0f                                     ; $6a63: $1e $0f
    dec bc                                        ; $6a65: $0b
    rlca                                          ; $6a66: $07
    dec b                                         ; $6a67: $05
    rlca                                          ; $6a68: $07
    rlca                                          ; $6a69: $07
    rlca                                          ; $6a6a: $07
    rlca                                          ; $6a6b: $07
    add hl, bc                                    ; $6a6c: $09
    rrca                                          ; $6a6d: $0f
    rrca                                          ; $6a6e: $0f
    rrca                                          ; $6a6f: $0f
    ldh [$e0], a                                  ; $6a70: $e0 $e0
    jr nc, @-$0e                                  ; $6a72: $30 $f0

    ld [$ecf8], sp                                ; $6a74: $08 $f8 $ec
    db $fc                                        ; $6a77: $fc
    or $1e                                        ; $6a78: $f6 $1e
    ld a, [$fcee]                                 ; $6a7a: $fa $ee $fc
    inc e                                         ; $6a7d: $1c
    ld hl, sp+$28                                 ; $6a7e: $f8 $28
    ld hl, sp+$28                                 ; $6a80: $f8 $28
    ldh a, [rNR10]                                ; $6a82: $f0 $10
    ldh [$e0], a                                  ; $6a84: $e0 $e0
    ldh [rNR41], a                                ; $6a86: $e0 $20
    ldh [$e0], a                                  ; $6a88: $e0 $e0
    ldh a, [$f0]                                  ; $6a8a: $f0 $f0
    ld c, b                                       ; $6a8c: $48
    ld a, b                                       ; $6a8d: $78
    ld a, b                                       ; $6a8e: $78
    ld a, b                                       ; $6a8f: $78
    inc bc                                        ; $6a90: $03
    inc bc                                        ; $6a91: $03
    inc c                                         ; $6a92: $0c
    rrca                                          ; $6a93: $0f
    ld [$1c0f], sp                                ; $6a94: $08 $0f $1c
    rla                                           ; $6a97: $17
    rra                                           ; $6a98: $1f
    inc de                                        ; $6a99: $13
    ccf                                           ; $6a9a: $3f
    dec a                                         ; $6a9b: $3d
    rrca                                          ; $6a9c: $0f
    dec bc                                        ; $6a9d: $0b
    rrca                                          ; $6a9e: $0f
    inc c                                         ; $6a9f: $0c
    rra                                           ; $6aa0: $1f
    inc d                                         ; $6aa1: $14
    rrca                                          ; $6aa2: $0f
    ld [$0707], sp                                ; $6aa3: $08 $07 $07
    ld bc, $0001                                  ; $6aa6: $01 $01 $00
    nop                                           ; $6aa9: $00
    nop                                           ; $6aaa: $00
    nop                                           ; $6aab: $00
    ld bc, $0101                                  ; $6aac: $01 $01 $01
    ld bc, $0000                                  ; $6aaf: $01 $00 $00
    ret nz                                        ; $6ab2: $c0

    ret nz                                        ; $6ab3: $c0

    ld h, $e6                                     ; $6ab4: $26 $e6
    ld d, $f6                                     ; $6ab6: $16 $f6
    ld e, $fe                                     ; $6ab8: $1e $fe
    db $ec                                        ; $6aba: $ec
    db $fc                                        ; $6abb: $fc
    ld [hl], h                                    ; $6abc: $74
    call c, $9cf4                                 ; $6abd: $dc $f4 $9c
    add sp, $78                                   ; $6ac0: $e8 $78
    ldh a, [$90]                                  ; $6ac2: $f0 $90
    ld hl, sp+$08                                 ; $6ac4: $f8 $08
    ld hl, sp-$68                                 ; $6ac6: $f8 $98
    add sp, -$08                                  ; $6ac8: $e8 $f8
    ldh a, [$d0]                                  ; $6aca: $f0 $d0
    jr nz, @-$1e                                  ; $6acc: $20 $e0

    ldh [$e0], a                                  ; $6ace: $e0 $e0
    inc bc                                        ; $6ad0: $03
    inc bc                                        ; $6ad1: $03
    inc b                                         ; $6ad2: $04
    rlca                                          ; $6ad3: $07
    rrca                                          ; $6ad4: $0f
    dec bc                                        ; $6ad5: $0b
    rla                                           ; $6ad6: $17
    ld e, $19                                     ; $6ad7: $1e $19
    rra                                           ; $6ad9: $1f
    db $10                                        ; $6ada: $10
    rra                                           ; $6adb: $1f
    ld [$0c0f], sp                                ; $6adc: $08 $0f $0c
    rrca                                          ; $6adf: $0f
    rlca                                          ; $6ae0: $07
    rlca                                          ; $6ae1: $07
    inc bc                                        ; $6ae2: $03
    ld [bc], a                                    ; $6ae3: $02

jr_020_6ae4:
    inc bc                                        ; $6ae4: $03
    inc bc                                        ; $6ae5: $03
    ld [bc], a                                    ; $6ae6: $02
    inc bc                                        ; $6ae7: $03
    inc bc                                        ; $6ae8: $03
    inc bc                                        ; $6ae9: $03
    rlca                                          ; $6aea: $07
    dec b                                         ; $6aeb: $05
    add hl, bc                                    ; $6aec: $09
    rrca                                          ; $6aed: $0f
    rrca                                          ; $6aee: $0f
    rrca                                          ; $6aef: $0f
    ret nz                                        ; $6af0: $c0

    ret nz                                        ; $6af1: $c0

    jr nc, jr_020_6ae4                            ; $6af2: $30 $f0

    di                                            ; $6af4: $f3
    db $d3                                        ; $6af5: $d3
    rst $28                                       ; $6af6: $ef
    ccf                                           ; $6af7: $3f

jr_020_6af8:
    rst $00                                       ; $6af8: $c7
    rst $38                                       ; $6af9: $ff
    ld b, $fe                                     ; $6afa: $06 $fe
    inc c                                         ; $6afc: $0c
    db $fc                                        ; $6afd: $fc
    jr jr_020_6af8                                ; $6afe: $18 $f8

    ld hl, sp-$18                                 ; $6b00: $f8 $e8
    ldh a, [$30]                                  ; $6b02: $f0 $30
    ldh [$a0], a                                  ; $6b04: $e0 $a0
    ld h, b                                       ; $6b06: $60
    ldh [$a0], a                                  ; $6b07: $e0 $a0
    ldh [$e0], a                                  ; $6b09: $e0 $e0
    and b                                         ; $6b0b: $a0
    sub b                                         ; $6b0c: $90
    ldh a, [$f0]                                  ; $6b0d: $f0 $f0
    ldh a, [rP1]                                  ; $6b0f: $f0 $00
    nop                                           ; $6b11: $00
    inc bc                                        ; $6b12: $03
    inc bc                                        ; $6b13: $03
    ld b, $07                                     ; $6b14: $06 $07
    rra                                           ; $6b16: $1f
    dec e                                         ; $6b17: $1d
    inc de                                        ; $6b18: $13
    ld e, $69                                     ; $6b19: $1e $69
    ld l, a                                       ; $6b1b: $6f
    ld l, b                                       ; $6b1c: $68
    ld l, a                                       ; $6b1d: $6f
    inc [hl]                                      ; $6b1e: $34
    scf                                           ; $6b1f: $37
    rra                                           ; $6b20: $1f
    rra                                           ; $6b21: $1f
    rrca                                          ; $6b22: $0f
    add hl, bc                                    ; $6b23: $09
    rlca                                          ; $6b24: $07
    inc b                                         ; $6b25: $04
    rlca                                          ; $6b26: $07
    rlca                                          ; $6b27: $07
    inc b                                         ; $6b28: $04
    rlca                                          ; $6b29: $07
    rlca                                          ; $6b2a: $07
    rlca                                          ; $6b2b: $07
    inc b                                         ; $6b2c: $04
    rlca                                          ; $6b2d: $07
    rlca                                          ; $6b2e: $07
    rlca                                          ; $6b2f: $07
    ldh [$e0], a                                  ; $6b30: $e0 $e0
    db $10                                        ; $6b32: $10
    ldh a, [$08]                                  ; $6b33: $f0 $08
    ld hl, sp+$18                                 ; $6b35: $f8 $18
    ld hl, sp-$04                                 ; $6b37: $f8 $fc
    db $ec                                        ; $6b39: $ec

jr_020_6b3a:
    or $1e                                        ; $6b3a: $f6 $1e
    ld [c], a                                     ; $6b3c: $e2
    cp $0c                                        ; $6b3d: $fe $0c
    db $fc                                        ; $6b3f: $fc
    jr jr_020_6b3a                                ; $6b40: $18 $f8

    ldh a, [$f0]                                  ; $6b42: $f0 $f0
    ret nz                                        ; $6b44: $c0

    ld b, b                                       ; $6b45: $40
    ret nz                                        ; $6b46: $c0

    ret nz                                        ; $6b47: $c0

    add b                                         ; $6b48: $80
    add b                                         ; $6b49: $80
    ret nz                                        ; $6b4a: $c0

    ret nz                                        ; $6b4b: $c0

    and b                                         ; $6b4c: $a0
    ldh [$e0], a                                  ; $6b4d: $e0 $e0
    ldh [rP1], a                                  ; $6b4f: $e0 $00
    nop                                           ; $6b51: $00
    inc bc                                        ; $6b52: $03
    inc bc                                        ; $6b53: $03
    inc b                                         ; $6b54: $04
    rlca                                          ; $6b55: $07
    ld [$c80f], sp                                ; $6b56: $08 $0f $c8
    rst $08                                       ; $6b59: $cf
    sub $df                                       ; $6b5a: $d6 $df
    rst $28                                       ; $6b5c: $ef
    rst $38                                       ; $6b5d: $ff
    rra                                           ; $6b5e: $1f
    add hl, de                                    ; $6b5f: $19
    rrca                                          ; $6b60: $0f
    ld c, $07                                     ; $6b61: $0e $07
    rlca                                          ; $6b63: $07
    ld [bc], a                                    ; $6b64: $02
    inc bc                                        ; $6b65: $03
    inc bc                                        ; $6b66: $03
    inc bc                                        ; $6b67: $03
    inc bc                                        ; $6b68: $03
    ld [bc], a                                    ; $6b69: $02
    dec b                                         ; $6b6a: $05
    rlca                                          ; $6b6b: $07
    dec b                                         ; $6b6c: $05
    rlca                                          ; $6b6d: $07
    inc bc                                        ; $6b6e: $03

Call_020_6b6f:
    inc bc                                        ; $6b6f: $03
    ldh [$e0], a                                  ; $6b70: $e0 $e0
    db $10                                        ; $6b72: $10
    ldh a, [$30]                                  ; $6b73: $f0 $30
    ldh a, [$38]                                  ; $6b75: $f0 $38
    add sp, $7c                                   ; $6b77: $e8 $7c
    call c, $f878                                 ; $6b79: $dc $78 $f8
    ld hl, sp-$18                                 ; $6b7c: $f8 $e8
    ld hl, sp+$28                                 ; $6b7e: $f8 $28
    ld hl, sp+$08                                 ; $6b80: $f8 $08
    ldh a, [rNR10]                                ; $6b82: $f0 $10
    ldh [$e0], a                                  ; $6b84: $e0 $e0
    and b                                         ; $6b86: $a0
    ldh [$e0], a                                  ; $6b87: $e0 $e0
    ld h, b                                       ; $6b89: $60
    ldh a, [rSVBK]                                ; $6b8a: $f0 $70
    ret z                                         ; $6b8c: $c8

    ld hl, sp+$78                                 ; $6b8d: $f8 $78
    ld a, b                                       ; $6b8f: $78
    inc bc                                        ; $6b90: $03
    inc bc                                        ; $6b91: $03
    inc b                                         ; $6b92: $04
    rlca                                          ; $6b93: $07
    dec bc                                        ; $6b94: $0b
    rrca                                          ; $6b95: $0f
    rra                                           ; $6b96: $1f
    inc e                                         ; $6b97: $1c
    ccf                                           ; $6b98: $3f
    dec sp                                        ; $6b99: $3b
    cpl                                           ; $6b9a: $2f
    inc a                                         ; $6b9b: $3c
    rra                                           ; $6b9c: $1f
    ld a, [de]                                    ; $6b9d: $1a
    rrca                                          ; $6b9e: $0f
    ld a, [bc]                                    ; $6b9f: $0a
    rrca                                          ; $6ba0: $0f
    ld [$0407], sp                                ; $6ba1: $08 $07 $04

jr_020_6ba4:
    inc bc                                        ; $6ba4: $03
    inc bc                                        ; $6ba5: $03
    inc bc                                        ; $6ba6: $03
    inc bc                                        ; $6ba7: $03
    inc bc                                        ; $6ba8: $03
    ld [bc], a                                    ; $6ba9: $02
    inc bc                                        ; $6baa: $03
    inc bc                                        ; $6bab: $03
    dec b                                         ; $6bac: $05
    rlca                                          ; $6bad: $07

jr_020_6bae:
    rlca                                          ; $6bae: $07
    rlca                                          ; $6baf: $07
    ret nz                                        ; $6bb0: $c0

    ret nz                                        ; $6bb1: $c0

    jr nc, jr_020_6ba4                            ; $6bb2: $30 $f0

    ret z                                         ; $6bb4: $c8

    ld hl, sp-$0c                                 ; $6bb5: $f8 $f4
    inc a                                         ; $6bb7: $3c
    ei                                            ; $6bb8: $fb
    rst $08                                       ; $6bb9: $cf
    push af                                       ; $6bba: $f5
    ccf                                           ; $6bbb: $3f
    ei                                            ; $6bbc: $fb
    ld e, a                                       ; $6bbd: $5f
    cp $4e                                        ; $6bbe: $fe $4e
    db $f4                                        ; $6bc0: $f4
    inc e                                         ; $6bc1: $1c
    ld hl, sp+$38                                 ; $6bc2: $f8 $38
    ldh a, [$d0]                                  ; $6bc4: $f0 $d0
    ldh a, [$b0]                                  ; $6bc6: $f0 $b0
    ldh [$e0], a                                  ; $6bc8: $e0 $e0
    ldh [$a0], a                                  ; $6bca: $e0 $a0
    jr nz, jr_020_6bae                            ; $6bcc: $20 $e0

    ldh [$e0], a                                  ; $6bce: $e0 $e0
    rlca                                          ; $6bd0: $07
    rlca                                          ; $6bd1: $07
    ld c, $0b                                     ; $6bd2: $0e $0b
    rra                                           ; $6bd4: $1f
    ld de, $3f3f                                  ; $6bd5: $11 $3f $3f
    ld c, $0b                                     ; $6bd8: $0e $0b
    rrca                                          ; $6bda: $0f
    dec c                                         ; $6bdb: $0d
    rra                                           ; $6bdc: $1f
    inc d                                         ; $6bdd: $14
    rra                                           ; $6bde: $1f
    db $10                                        ; $6bdf: $10
    rrca                                          ; $6be0: $0f
    add hl, bc                                    ; $6be1: $09
    rlca                                          ; $6be2: $07
    rlca                                          ; $6be3: $07
    dec b                                         ; $6be4: $05
    rlca                                          ; $6be5: $07
    rlca                                          ; $6be6: $07
    rlca                                          ; $6be7: $07
    rlca                                          ; $6be8: $07
    rlca                                          ; $6be9: $07
    rlca                                          ; $6bea: $07
    dec b                                         ; $6beb: $05
    add hl, bc                                    ; $6bec: $09
    rrca                                          ; $6bed: $0f
    ld c, $0e                                     ; $6bee: $0e $0e
    nop                                           ; $6bf0: $00
    nop                                           ; $6bf1: $00
    ret nz                                        ; $6bf2: $c0

    ret nz                                        ; $6bf3: $c0

    jr nz, @-$1e                                  ; $6bf4: $20 $e0

    sub b                                         ; $6bf6: $90
    ldh a, [rHDMA3]                               ; $6bf7: $f0 $53
    di                                            ; $6bf9: $f3
    ld l, e                                       ; $6bfa: $6b
    db $db                                        ; $6bfb: $db
    rst $30                                       ; $6bfc: $f7
    cp a                                          ; $6bfd: $bf
    ret z                                         ; $6bfe: $c8

    ld hl, sp+$70                                 ; $6bff: $f8 $70
    ldh a, [$a0]                                  ; $6c01: $f0 $a0
    ldh [$c0], a                                  ; $6c03: $e0 $c0
    ret nz                                        ; $6c05: $c0

    ld h, b                                       ; $6c06: $60
    ldh [$e0], a                                  ; $6c07: $e0 $e0
    and b                                         ; $6c09: $a0
    ldh a, [$d0]                                  ; $6c0a: $f0 $d0
    sub b                                         ; $6c0c: $90
    ldh a, [$60]                                  ; $6c0d: $f0 $60
    ld h, b                                       ; $6c0f: $60
    nop                                           ; $6c10: $00
    nop                                           ; $6c11: $00
    nop                                           ; $6c12: $00
    nop                                           ; $6c13: $00
    inc bc                                        ; $6c14: $03
    inc bc                                        ; $6c15: $03
    inc b                                         ; $6c16: $04
    rlca                                          ; $6c17: $07
    ld [$0b0f], sp                                ; $6c18: $08 $0f $0b
    rrca                                          ; $6c1b: $0f
    inc [hl]                                      ; $6c1c: $34
    ccf                                           ; $6c1d: $3f
    cpl                                           ; $6c1e: $2f
    dec sp                                        ; $6c1f: $3b
    cpl                                           ; $6c20: $2f
    add hl, sp                                    ; $6c21: $39
    rla                                           ; $6c22: $17
    ld e, $07                                     ; $6c23: $1e $07
    ld b, $0f                                     ; $6c25: $06 $0f
    dec bc                                        ; $6c27: $0b
    inc e                                         ; $6c28: $1c
    rla                                           ; $6c29: $17
    rrca                                          ; $6c2a: $0f
    rrca                                          ; $6c2b: $0f
    rrca                                          ; $6c2c: $0f
    rrca                                          ; $6c2d: $0f
    ld b, $06                                     ; $6c2e: $06 $06
    nop                                           ; $6c30: $00
    nop                                           ; $6c31: $00
    ldh [$e0], a                                  ; $6c32: $e0 $e0
    db $10                                        ; $6c34: $10
    ldh a, [$38]                                  ; $6c35: $f0 $38
    add sp, -$08                                  ; $6c37: $e8 $f8
    ret z                                         ; $6c39: $c8

    db $fc                                        ; $6c3a: $fc
    cp h                                          ; $6c3b: $bc
    ldh a, [$d0]                                  ; $6c3c: $f0 $d0
    ldh a, [$30]                                  ; $6c3e: $f0 $30
    ld hl, sp+$28                                 ; $6c40: $f8 $28
    ld hl, sp+$08                                 ; $6c42: $f8 $08
    ldh [$e0], a                                  ; $6c44: $e0 $e0
    ldh [$60], a                                  ; $6c46: $e0 $60
    ldh a, [$d0]                                  ; $6c48: $f0 $d0
    ldh [$60], a                                  ; $6c4a: $e0 $60
    sub b                                         ; $6c4c: $90
    ldh a, [$60]                                  ; $6c4d: $f0 $60
    ld h, b                                       ; $6c4f: $60
    nop                                           ; $6c50: $00
    nop                                           ; $6c51: $00
    inc bc                                        ; $6c52: $03
    inc bc                                        ; $6c53: $03
    inc b                                         ; $6c54: $04
    rlca                                          ; $6c55: $07

jr_020_6c56:
    dec bc                                        ; $6c56: $0b
    rrca                                          ; $6c57: $0f
    rra                                           ; $6c58: $1f
    inc e                                         ; $6c59: $1c
    ld l, a                                       ; $6c5a: $6f
    ld a, e                                       ; $6c5b: $7b
    ld c, a                                       ; $6c5c: $4f
    ld a, h                                       ; $6c5d: $7c
    ccf                                           ; $6c5e: $3f
    dec sp                                        ; $6c5f: $3b
    ccf                                           ; $6c60: $3f
    ld [hl-], a                                   ; $6c61: $32
    ld a, a                                       ; $6c62: $7f
    ld e, b                                       ; $6c63: $58
    cpl                                           ; $6c64: $2f
    dec hl                                        ; $6c65: $2b
    cpl                                           ; $6c66: $2f
    cpl                                           ; $6c67: $2f
    ld l, b                                       ; $6c68: $68
    ld l, a                                       ; $6c69: $6f
    ld h, a                                       ; $6c6a: $67
    ld h, a                                       ; $6c6b: $67
    inc b                                         ; $6c6c: $04
    rlca                                          ; $6c6d: $07
    inc bc                                        ; $6c6e: $03
    inc bc                                        ; $6c6f: $03
    nop                                           ; $6c70: $00

jr_020_6c71:
    nop                                           ; $6c71: $00
    ret nz                                        ; $6c72: $c0

    ret nz                                        ; $6c73: $c0

    jr nz, jr_020_6c56                            ; $6c74: $20 $e0

    ret nc                                        ; $6c76: $d0

    ldh a, [$f8]                                  ; $6c77: $f0 $f8
    jr c, jr_020_6c71                             ; $6c79: $38 $f6

    sbc $f2                                       ; $6c7b: $de $f2
    ld a, $fc                                     ; $6c7d: $3e $fc
    call c, Call_020_48f8                         ; $6c7f: $dc $f8 $48
    ld hl, sp+$18                                 ; $6c82: $f8 $18
    db $fc                                        ; $6c84: $fc
    call nc, $f4fc                                ; $6c85: $d4 $fc $f4
    sbc b                                         ; $6c88: $98
    ld hl, sp-$10                                 ; $6c89: $f8 $f0
    ldh a, [$e0]                                  ; $6c8b: $f0 $e0
    ldh [rP1], a                                  ; $6c8d: $e0 $00
    nop                                           ; $6c8f: $00
    nop                                           ; $6c90: $00
    nop                                           ; $6c91: $00
    rlca                                          ; $6c92: $07
    rlca                                          ; $6c93: $07
    ld [$1c0f], sp                                ; $6c94: $08 $0f $1c
    rla                                           ; $6c97: $17

jr_020_6c98:
    rra                                           ; $6c98: $1f
    inc de                                        ; $6c99: $13
    ccf                                           ; $6c9a: $3f
    dec a                                         ; $6c9b: $3d
    rrca                                          ; $6c9c: $0f
    dec bc                                        ; $6c9d: $0b
    rrca                                          ; $6c9e: $0f
    inc c                                         ; $6c9f: $0c
    rra                                           ; $6ca0: $1f
    inc d                                         ; $6ca1: $14
    rra                                           ; $6ca2: $1f
    db $10                                        ; $6ca3: $10
    rlca                                          ; $6ca4: $07
    rlca                                          ; $6ca5: $07
    rrca                                          ; $6ca6: $0f
    ld a, [bc]                                    ; $6ca7: $0a
    rra                                           ; $6ca8: $1f
    rla                                           ; $6ca9: $17
    rrca                                          ; $6caa: $0f
    rrca                                          ; $6cab: $0f
    rrca                                          ; $6cac: $0f
    rrca                                          ; $6cad: $0f
    ld b, $06                                     ; $6cae: $06 $06
    nop                                           ; $6cb0: $00
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    nop                                           ; $6cb3: $00
    ret nz                                        ; $6cb4: $c0

    ret nz                                        ; $6cb5: $c0

    jr nz, jr_020_6c98                            ; $6cb6: $20 $e0

    db $10                                        ; $6cb8: $10
    ldh a, [$d0]                                  ; $6cb9: $f0 $d0
    ldh a, [$2c]                                  ; $6cbb: $f0 $2c
    db $fc                                        ; $6cbd: $fc
    db $f4                                        ; $6cbe: $f4
    call c, $9cf4                                 ; $6cbf: $dc $f4 $9c
    add sp, $78                                   ; $6cc2: $e8 $78
    ldh [$60], a                                  ; $6cc4: $e0 $60
    ldh [$e0], a                                  ; $6cc6: $e0 $e0
    ld [hl], b                                    ; $6cc8: $70
    ldh a, [$d0]                                  ; $6cc9: $f0 $d0
    or b                                          ; $6ccb: $b0
    ret nc                                        ; $6ccc: $d0

    ldh a, [$60]                                  ; $6ccd: $f0 $60
    ld h, b                                       ; $6ccf: $60
    nop                                           ; $6cd0: $00
    nop                                           ; $6cd1: $00
    inc bc                                        ; $6cd2: $03
    inc bc                                        ; $6cd3: $03
    inc b                                         ; $6cd4: $04
    rlca                                          ; $6cd5: $07

jr_020_6cd6:
    inc c                                         ; $6cd6: $0c
    rrca                                          ; $6cd7: $0f
    rra                                           ; $6cd8: $1f
    dec de                                        ; $6cd9: $1b
    ld h, a                                       ; $6cda: $67
    ld a, h                                       ; $6cdb: $7c
    ld b, e                                       ; $6cdc: $43
    ld a, a                                       ; $6cdd: $7f
    jr nz, jr_020_6d1f                            ; $6cde: $20 $3f

    jr nc, jr_020_6d21                            ; $6ce0: $30 $3f

    ld a, h                                       ; $6ce2: $7c
    ld e, a                                       ; $6ce3: $5f
    rrca                                          ; $6ce4: $0f
    inc c                                         ; $6ce5: $0c
    rrca                                          ; $6ce6: $0f
    rrca                                          ; $6ce7: $0f

jr_020_6ce8:
    ld [$070f], sp                                ; $6ce8: $08 $0f $07
    rlca                                          ; $6ceb: $07
    inc b                                         ; $6cec: $04
    rlca                                          ; $6ced: $07
    inc bc                                        ; $6cee: $03
    inc bc                                        ; $6cef: $03
    nop                                           ; $6cf0: $00
    nop                                           ; $6cf1: $00
    ret nz                                        ; $6cf2: $c0

    ret nz                                        ; $6cf3: $c0

    jr nz, jr_020_6cd6                            ; $6cf4: $20 $e0

    jr nc, jr_020_6ce8                            ; $6cf6: $30 $f0

    ld hl, sp-$28                                 ; $6cf8: $f8 $d8
    and $3e                                       ; $6cfa: $e6 $3e
    jp nz, $04fe                                  ; $6cfc: $c2 $fe $04

    db $fc                                        ; $6cff: $fc
    ld [$38f8], sp                                ; $6d00: $08 $f8 $38
    ld hl, sp-$01                                 ; $6d03: $f8 $ff
    scf                                           ; $6d05: $37
    db $fc                                        ; $6d06: $fc
    db $f4                                        ; $6d07: $f4
    sbc b                                         ; $6d08: $98
    ld hl, sp-$10                                 ; $6d09: $f8 $f0
    ldh a, [$e0]                                  ; $6d0b: $f0 $e0
    ldh [rP1], a                                  ; $6d0d: $e0 $00
    nop                                           ; $6d0f: $00
    nop                                           ; $6d10: $00
    nop                                           ; $6d11: $00
    ld bc, $0201                                  ; $6d12: $01 $01 $02
    inc bc                                        ; $6d15: $03
    inc b                                         ; $6d16: $04
    rlca                                          ; $6d17: $07
    dec b                                         ; $6d18: $05
    rlca                                          ; $6d19: $07
    ld a, [de]                                    ; $6d1a: $1a
    rra                                           ; $6d1b: $1f
    rla                                           ; $6d1c: $17
    dec e                                         ; $6d1d: $1d
    rla                                           ; $6d1e: $17

jr_020_6d1f:
    inc e                                         ; $6d1f: $1c
    dec bc                                        ; $6d20: $0b

jr_020_6d21:
    rrca                                          ; $6d21: $0f
    dec bc                                        ; $6d22: $0b
    rrca                                          ; $6d23: $0f
    rlca                                          ; $6d24: $07
    ld b, $0f                                     ; $6d25: $06 $0f
    dec bc                                        ; $6d27: $0b
    inc e                                         ; $6d28: $1c
    rla                                           ; $6d29: $17
    rrca                                          ; $6d2a: $0f
    rrca                                          ; $6d2b: $0f
    rrca                                          ; $6d2c: $0f
    rrca                                          ; $6d2d: $0f
    ld b, $06                                     ; $6d2e: $06 $06
    ld [hl], b                                    ; $6d30: $70
    ld [hl], b                                    ; $6d31: $70
    adc b                                         ; $6d32: $88
    ld hl, sp+$1c                                 ; $6d33: $f8 $1c
    db $f4                                        ; $6d35: $f4
    ld a, h                                       ; $6d36: $7c
    db $e4                                        ; $6d37: $e4
    cp $de                                        ; $6d38: $fe $de
    ld a, b                                       ; $6d3a: $78
    add sp, -$08                                  ; $6d3b: $e8 $f8
    sbc b                                         ; $6d3d: $98
    db $fc                                        ; $6d3e: $fc
    sub h                                         ; $6d3f: $94
    db $fc                                        ; $6d40: $fc
    inc b                                         ; $6d41: $04
    ldh a, [rNR10]                                ; $6d42: $f0 $10
    ldh [$e0], a                                  ; $6d44: $e0 $e0
    ldh [$60], a                                  ; $6d46: $e0 $60
    ldh a, [$d0]                                  ; $6d48: $f0 $d0
    ldh [$60], a                                  ; $6d4a: $e0 $60
    sub b                                         ; $6d4c: $90
    ldh a, [$60]                                  ; $6d4d: $f0 $60
    ld h, b                                       ; $6d4f: $60
    ld bc, $0201                                  ; $6d50: $01 $01 $02
    inc bc                                        ; $6d53: $03
    dec b                                         ; $6d54: $05
    rlca                                          ; $6d55: $07
    rrca                                          ; $6d56: $0f
    ld c, $37                                     ; $6d57: $0e $37
    dec a                                         ; $6d59: $3d
    daa                                           ; $6d5a: $27
    ld a, $1f                                     ; $6d5b: $3e $1f
    dec e                                         ; $6d5d: $1d
    rra                                           ; $6d5e: $1f
    add hl, de                                    ; $6d5f: $19
    ccf                                           ; $6d60: $3f
    inc l                                         ; $6d61: $2c
    ld a, a                                       ; $6d62: $7f
    ld a, h                                       ; $6d63: $7c
    cpl                                           ; $6d64: $2f
    dec hl                                        ; $6d65: $2b
    cpl                                           ; $6d66: $2f
    cpl                                           ; $6d67: $2f
    ld l, b                                       ; $6d68: $68
    ld l, a                                       ; $6d69: $6f
    ld h, a                                       ; $6d6a: $67
    ld h, a                                       ; $6d6b: $67
    inc b                                         ; $6d6c: $04
    rlca                                          ; $6d6d: $07
    inc bc                                        ; $6d6e: $03
    inc bc                                        ; $6d6f: $03
    ldh [$e0], a                                  ; $6d70: $e0 $e0
    db $10                                        ; $6d72: $10
    ldh a, [$e8]                                  ; $6d73: $f0 $e8
    ld hl, sp-$04                                 ; $6d75: $f8 $fc
    inc e                                         ; $6d77: $1c
    ei                                            ; $6d78: $fb
    rst $28                                       ; $6d79: $ef
    ld sp, hl                                     ; $6d7a: $f9
    rra                                           ; $6d7b: $1f
    cp $ee                                        ; $6d7c: $fe $ee
    db $fc                                        ; $6d7e: $fc
    inc h                                         ; $6d7f: $24
    db $fc                                        ; $6d80: $fc
    inc c                                         ; $6d81: $0c
    ld hl, sp+$28                                 ; $6d82: $f8 $28
    db $fc                                        ; $6d84: $fc
    call nc, $f4fc                                ; $6d85: $d4 $fc $f4
    sbc b                                         ; $6d88: $98
    ld hl, sp-$10                                 ; $6d89: $f8 $f0
    ldh a, [$e0]                                  ; $6d8b: $f0 $e0
    ldh [rP1], a                                  ; $6d8d: $e0 $00
    nop                                           ; $6d8f: $00
    inc bc                                        ; $6d90: $03
    inc bc                                        ; $6d91: $03
    inc b                                         ; $6d92: $04
    rlca                                          ; $6d93: $07
    ld c, $0b                                     ; $6d94: $0e $0b
    rrca                                          ; $6d96: $0f
    add hl, bc                                    ; $6d97: $09
    rra                                           ; $6d98: $1f
    ld e, $07                                     ; $6d99: $1e $07
    dec b                                         ; $6d9b: $05
    rlca                                          ; $6d9c: $07
    ld b, $0f                                     ; $6d9d: $06 $0f
    ld a, [bc]                                    ; $6d9f: $0a
    rrca                                          ; $6da0: $0f
    ld [$080f], sp                                ; $6da1: $08 $0f $08
    rlca                                          ; $6da4: $07
    rlca                                          ; $6da5: $07
    rrca                                          ; $6da6: $0f
    ld a, [bc]                                    ; $6da7: $0a
    rra                                           ; $6da8: $1f
    rla                                           ; $6da9: $17
    rrca                                          ; $6daa: $0f
    rrca                                          ; $6dab: $0f
    rrca                                          ; $6dac: $0f
    rrca                                          ; $6dad: $0f
    ld b, $06                                     ; $6dae: $06 $06
    add b                                         ; $6db0: $80
    add b                                         ; $6db1: $80
    ld h, b                                       ; $6db2: $60
    ldh [rNR10], a                                ; $6db3: $e0 $10
    ldh a, [$88]                                  ; $6db5: $f0 $88
    ld hl, sp-$18                                 ; $6db7: $f8 $e8
    ld hl, sp-$6a                                 ; $6db9: $f8 $96
    cp $fa                                        ; $6dbb: $fe $fa
    ld l, [hl]                                    ; $6dbd: $6e
    ld a, [$f44e]                                 ; $6dbe: $fa $4e $f4
    inc a                                         ; $6dc1: $3c
    ret nc                                        ; $6dc2: $d0

    ldh a, [$e0]                                  ; $6dc3: $f0 $e0
    ld h, b                                       ; $6dc5: $60
    ldh [$e0], a                                  ; $6dc6: $e0 $e0
    ld [hl], b                                    ; $6dc8: $70
    ldh a, [$d0]                                  ; $6dc9: $f0 $d0
    or b                                          ; $6dcb: $b0
    ret nc                                        ; $6dcc: $d0

    ldh a, [$60]                                  ; $6dcd: $f0 $60
    ld h, b                                       ; $6dcf: $60
    ld bc, $0201                                  ; $6dd0: $01 $01 $02
    inc bc                                        ; $6dd3: $03
    ld b, $07                                     ; $6dd4: $06 $07
    rrca                                          ; $6dd6: $0f
    dec c                                         ; $6dd7: $0d
    inc sp                                        ; $6dd8: $33
    ld a, $21                                     ; $6dd9: $3e $21
    ccf                                           ; $6ddb: $3f
    db $10                                        ; $6ddc: $10
    rra                                           ; $6ddd: $1f
    jr jr_020_6dff                                ; $6dde: $18 $1f

    ld a, $2f                                     ; $6de0: $3e $2f
    ld a, a                                       ; $6de2: $7f
    ld a, e                                       ; $6de3: $7b
    rrca                                          ; $6de4: $0f
    inc c                                         ; $6de5: $0c
    rrca                                          ; $6de6: $0f
    rrca                                          ; $6de7: $0f
    ld [$070f], sp                                ; $6de8: $08 $0f $07
    rlca                                          ; $6deb: $07
    inc b                                         ; $6dec: $04
    rlca                                          ; $6ded: $07
    inc bc                                        ; $6dee: $03
    inc bc                                        ; $6def: $03
    ldh [$e0], a                                  ; $6df0: $e0 $e0
    db $10                                        ; $6df2: $10
    ldh a, [rNR23]                                ; $6df3: $f0 $18
    ld hl, sp-$04                                 ; $6df5: $f8 $fc
    db $ec                                        ; $6df7: $ec
    di                                            ; $6df8: $f3
    rra                                           ; $6df9: $1f
    pop hl                                        ; $6dfa: $e1
    rst $38                                       ; $6dfb: $ff
    ld [bc], a                                    ; $6dfc: $02
    cp $04                                        ; $6dfd: $fe $04

jr_020_6dff:
    db $fc                                        ; $6dff: $fc
    inc e                                         ; $6e00: $1c
    db $fc                                        ; $6e01: $fc
    ei                                            ; $6e02: $fb
    db $db                                        ; $6e03: $db
    rst $38                                       ; $6e04: $ff
    scf                                           ; $6e05: $37
    db $fc                                        ; $6e06: $fc
    db $f4                                        ; $6e07: $f4
    sbc b                                         ; $6e08: $98
    ld hl, sp-$10                                 ; $6e09: $f8 $f0
    ldh a, [$e0]                                  ; $6e0b: $f0 $e0
    ldh [rP1], a                                  ; $6e0d: $e0 $00
    nop                                           ; $6e0f: $00
    ld bc, $0601                                  ; $6e10: $01 $01 $06
    rlca                                          ; $6e13: $07

jr_020_6e14:
    ld [$110f], sp                                ; $6e14: $08 $0f $11
    rra                                           ; $6e17: $1f
    rla                                           ; $6e18: $17
    rra                                           ; $6e19: $1f
    ld l, c                                       ; $6e1a: $69
    ld a, a                                       ; $6e1b: $7f
    ld e, a                                       ; $6e1c: $5f
    halt                                          ; $6e1d: $76
    ld e, a                                       ; $6e1e: $5f
    ld [hl], d                                    ; $6e1f: $72
    cpl                                           ; $6e20: $2f
    inc a                                         ; $6e21: $3c
    dec bc                                        ; $6e22: $0b
    rrca                                          ; $6e23: $0f
    rlca                                          ; $6e24: $07
    ld b, $0f                                     ; $6e25: $06 $0f
    dec bc                                        ; $6e27: $0b
    inc e                                         ; $6e28: $1c
    rla                                           ; $6e29: $17
    rrca                                          ; $6e2a: $0f
    rrca                                          ; $6e2b: $0f
    rrca                                          ; $6e2c: $0f
    rrca                                          ; $6e2d: $0f
    ld b, $06                                     ; $6e2e: $06 $06
    ret nz                                        ; $6e30: $c0

    ret nz                                        ; $6e31: $c0

    jr nz, jr_020_6e14                            ; $6e32: $20 $e0

    ld [hl], b                                    ; $6e34: $70
    ret nc                                        ; $6e35: $d0

    ldh a, [$90]                                  ; $6e36: $f0 $90

jr_020_6e38:
    ld hl, sp+$78                                 ; $6e38: $f8 $78
    ldh [$a0], a                                  ; $6e3a: $e0 $a0
    ldh [$60], a                                  ; $6e3c: $e0 $60
    ldh a, [$50]                                  ; $6e3e: $f0 $50
    ldh a, [rNR10]                                ; $6e40: $f0 $10
    ldh a, [rNR10]                                ; $6e42: $f0 $10
    ldh [$e0], a                                  ; $6e44: $e0 $e0
    ldh [$60], a                                  ; $6e46: $e0 $60
    ldh a, [$d0]                                  ; $6e48: $f0 $d0
    ldh [$60], a                                  ; $6e4a: $e0 $60
    sub b                                         ; $6e4c: $90
    ldh a, [$60]                                  ; $6e4d: $f0 $60
    ld h, b                                       ; $6e4f: $60
    rlca                                          ; $6e50: $07
    rlca                                          ; $6e51: $07
    ld [$170f], sp                                ; $6e52: $08 $0f $17
    rra                                           ; $6e55: $1f
    ccf                                           ; $6e56: $3f
    jr c, jr_020_6e38                             ; $6e57: $38 $df

    rst $30                                       ; $6e59: $f7
    sbc a                                         ; $6e5a: $9f
    ld hl, sp+$7f                                 ; $6e5b: $f8 $7f
    ld [hl], a                                    ; $6e5d: $77
    ld a, a                                       ; $6e5e: $7f
    ld h, h                                       ; $6e5f: $64
    rst $38                                       ; $6e60: $ff
    or b                                          ; $6e61: $b0
    ld a, a                                       ; $6e62: $7f
    ld a, h                                       ; $6e63: $7c
    cpl                                           ; $6e64: $2f
    dec hl                                        ; $6e65: $2b
    cpl                                           ; $6e66: $2f
    cpl                                           ; $6e67: $2f
    ld l, b                                       ; $6e68: $68
    ld l, a                                       ; $6e69: $6f
    ld h, a                                       ; $6e6a: $67
    ld h, a                                       ; $6e6b: $67
    inc b                                         ; $6e6c: $04
    rlca                                          ; $6e6d: $07
    inc bc                                        ; $6e6e: $03
    inc bc                                        ; $6e6f: $03
    add b                                         ; $6e70: $80
    add b                                         ; $6e71: $80
    ld b, b                                       ; $6e72: $40
    ret nz                                        ; $6e73: $c0

    and b                                         ; $6e74: $a0
    ldh [$f0], a                                  ; $6e75: $e0 $f0
    ld [hl], b                                    ; $6e77: $70
    db $ec                                        ; $6e78: $ec
    cp h                                          ; $6e79: $bc
    db $e4                                        ; $6e7a: $e4
    ld a, h                                       ; $6e7b: $7c
    ld hl, sp-$48                                 ; $6e7c: $f8 $b8
    ldh a, [$90]                                  ; $6e7e: $f0 $90
    ldh a, [$30]                                  ; $6e80: $f0 $30
    ld hl, sp+$28                                 ; $6e82: $f8 $28
    db $fc                                        ; $6e84: $fc
    call nc, $f4fc                                ; $6e85: $d4 $fc $f4
    sbc b                                         ; $6e88: $98
    ld hl, sp-$10                                 ; $6e89: $f8 $f0
    ldh a, [$e0]                                  ; $6e8b: $f0 $e0
    ldh [rP1], a                                  ; $6e8d: $e0 $00
    nop                                           ; $6e8f: $00
    ld c, $0e                                     ; $6e90: $0e $0e
    ld de, $381f                                  ; $6e92: $11 $1f $38
    cpl                                           ; $6e95: $2f
    ld a, $27                                     ; $6e96: $3e $27

jr_020_6e98:
    ld a, a                                       ; $6e98: $7f
    ld a, e                                       ; $6e99: $7b
    ld e, $17                                     ; $6e9a: $1e $17
    rra                                           ; $6e9c: $1f
    add hl, de                                    ; $6e9d: $19
    ccf                                           ; $6e9e: $3f
    add hl, hl                                    ; $6e9f: $29
    ccf                                           ; $6ea0: $3f
    jr nz, jr_020_6eb2                            ; $6ea1: $20 $0f

    ld [$0707], sp                                ; $6ea3: $08 $07 $07
    rrca                                          ; $6ea6: $0f
    ld a, [bc]                                    ; $6ea7: $0a
    rra                                           ; $6ea8: $1f
    rla                                           ; $6ea9: $17
    rrca                                          ; $6eaa: $0f
    rrca                                          ; $6eab: $0f
    rrca                                          ; $6eac: $0f
    rrca                                          ; $6ead: $0f
    ld b, $06                                     ; $6eae: $06 $06
    nop                                           ; $6eb0: $00
    nop                                           ; $6eb1: $00

jr_020_6eb2:
    add b                                         ; $6eb2: $80
    add b                                         ; $6eb3: $80
    ld b, b                                       ; $6eb4: $40
    ret nz                                        ; $6eb5: $c0

    jr nz, jr_020_6e98                            ; $6eb6: $20 $e0

    and b                                         ; $6eb8: $a0
    ldh [$58], a                                  ; $6eb9: $e0 $58
    ld hl, sp-$18                                 ; $6ebb: $f8 $e8
    cp b                                          ; $6ebd: $b8
    add sp, $38                                   ; $6ebe: $e8 $38
    ret nc                                        ; $6ec0: $d0

    ldh a, [$d0]                                  ; $6ec1: $f0 $d0
    ldh a, [$e0]                                  ; $6ec3: $f0 $e0
    ld h, b                                       ; $6ec5: $60
    ldh [$e0], a                                  ; $6ec6: $e0 $e0
    ld [hl], b                                    ; $6ec8: $70
    ldh a, [$d0]                                  ; $6ec9: $f0 $d0
    or b                                          ; $6ecb: $b0
    ret nc                                        ; $6ecc: $d0

    ldh a, [$60]                                  ; $6ecd: $f0 $60
    ld h, b                                       ; $6ecf: $60
    rlca                                          ; $6ed0: $07
    rlca                                          ; $6ed1: $07
    ld [$180f], sp                                ; $6ed2: $08 $0f $18
    rra                                           ; $6ed5: $1f
    ccf                                           ; $6ed6: $3f
    scf                                           ; $6ed7: $37
    rst $08                                       ; $6ed8: $cf
    ld hl, sp-$79                                 ; $6ed9: $f8 $87
    rst $38                                       ; $6edb: $ff
    ld b, b                                       ; $6edc: $40
    ld a, a                                       ; $6edd: $7f
    ld h, b                                       ; $6ede: $60
    ld a, a                                       ; $6edf: $7f
    ld hl, sp-$41                                 ; $6ee0: $f8 $bf
    ld a, a                                       ; $6ee2: $7f
    ld a, e                                       ; $6ee3: $7b
    rrca                                          ; $6ee4: $0f
    inc c                                         ; $6ee5: $0c
    rrca                                          ; $6ee6: $0f
    rrca                                          ; $6ee7: $0f
    ld [$070f], sp                                ; $6ee8: $08 $0f $07
    rlca                                          ; $6eeb: $07
    inc b                                         ; $6eec: $04
    rlca                                          ; $6eed: $07
    inc bc                                        ; $6eee: $03
    inc bc                                        ; $6eef: $03
    add b                                         ; $6ef0: $80
    add b                                         ; $6ef1: $80
    ld b, b                                       ; $6ef2: $40
    ret nz                                        ; $6ef3: $c0

    ld h, b                                       ; $6ef4: $60
    ldh [$f0], a                                  ; $6ef5: $e0 $f0
    or b                                          ; $6ef7: $b0
    call z, $847c                                 ; $6ef8: $cc $7c $84
    db $fc                                        ; $6efb: $fc
    ld [$10f8], sp                                ; $6efc: $08 $f8 $10
    ldh a, [rSVBK]                                ; $6eff: $f0 $70
    ldh a, [$fb]                                  ; $6f01: $f0 $fb
    db $db                                        ; $6f03: $db
    rst $38                                       ; $6f04: $ff
    scf                                           ; $6f05: $37
    db $fc                                        ; $6f06: $fc
    db $f4                                        ; $6f07: $f4

jr_020_6f08:
    sbc b                                         ; $6f08: $98
    ld hl, sp-$10                                 ; $6f09: $f8 $f0
    ldh a, [$e0]                                  ; $6f0b: $f0 $e0
    ldh [rP1], a                                  ; $6f0d: $e0 $00
    nop                                           ; $6f0f: $00
    nop                                           ; $6f10: $00
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    nop                                           ; $6f13: $00
    inc bc                                        ; $6f14: $03
    inc bc                                        ; $6f15: $03

jr_020_6f16:
    nop                                           ; $6f16: $00
    inc bc                                        ; $6f17: $03
    inc b                                         ; $6f18: $04
    rlca                                          ; $6f19: $07
    rlca                                          ; $6f1a: $07
    rlca                                          ; $6f1b: $07
    rla                                           ; $6f1c: $17
    rra                                           ; $6f1d: $1f
    rla                                           ; $6f1e: $17
    dec e                                         ; $6f1f: $1d
    dec bc                                        ; $6f20: $0b
    ld c, $07                                     ; $6f21: $0e $07
    rlca                                          ; $6f23: $07
    rlca                                          ; $6f24: $07
    rlca                                          ; $6f25: $07
    inc c                                         ; $6f26: $0c
    dec bc                                        ; $6f27: $0b
    rlca                                          ; $6f28: $07
    rlca                                          ; $6f29: $07
    rlca                                          ; $6f2a: $07
    rlca                                          ; $6f2b: $07
    ld [bc], a                                    ; $6f2c: $02
    ld [bc], a                                    ; $6f2d: $02
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    ret nz                                        ; $6f32: $c0

    ret nz                                        ; $6f33: $c0

    jr nz, jr_020_6f16                            ; $6f34: $20 $e0

    jr nc, jr_020_6f08                            ; $6f36: $30 $d0

    ldh a, [$d0]                                  ; $6f38: $f0 $d0
    ld hl, sp-$48                                 ; $6f3a: $f8 $b8
    ldh [rNR41], a                                ; $6f3c: $e0 $20
    ldh a, [rNR10]                                ; $6f3e: $f0 $10
    ldh a, [rNR10]                                ; $6f40: $f0 $10
    ldh [rNR41], a                                ; $6f42: $e0 $20
    ret nz                                        ; $6f44: $c0

    ld b, b                                       ; $6f45: $40
    ldh [$e0], a                                  ; $6f46: $e0 $e0
    ret nz                                        ; $6f48: $c0

    ld b, b                                       ; $6f49: $40
    and b                                         ; $6f4a: $a0
    ldh [rLCDC], a                                ; $6f4b: $e0 $40
    ld b, b                                       ; $6f4d: $40
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    inc bc                                        ; $6f52: $03
    inc bc                                        ; $6f53: $03
    nop                                           ; $6f54: $00
    inc bc                                        ; $6f55: $03
    rlca                                          ; $6f56: $07
    rlca                                          ; $6f57: $07
    rrca                                          ; $6f58: $0f
    inc c                                         ; $6f59: $0c
    scf                                           ; $6f5a: $37
    ccf                                           ; $6f5b: $3f
    rra                                           ; $6f5c: $1f
    rra                                           ; $6f5d: $1f
    rra                                           ; $6f5e: $1f
    ld a, [de]                                    ; $6f5f: $1a
    ccf                                           ; $6f60: $3f
    inc l                                         ; $6f61: $2c
    ccf                                           ; $6f62: $3f
    inc a                                         ; $6f63: $3c
    rla                                           ; $6f64: $17
    rla                                           ; $6f65: $17
    inc [hl]                                      ; $6f66: $34
    scf                                           ; $6f67: $37
    inc sp                                        ; $6f68: $33
    inc sp                                        ; $6f69: $33
    nop                                           ; $6f6a: $00
    inc bc                                        ; $6f6b: $03
    inc bc                                        ; $6f6c: $03
    inc bc                                        ; $6f6d: $03
    nop                                           ; $6f6e: $00
    nop                                           ; $6f6f: $00
    nop                                           ; $6f70: $00
    nop                                           ; $6f71: $00
    ret nz                                        ; $6f72: $c0

    ret nz                                        ; $6f73: $c0

    nop                                           ; $6f74: $00
    ret nz                                        ; $6f75: $c0

    ldh [$e0], a                                  ; $6f76: $e0 $e0
    ldh a, [$30]                                  ; $6f78: $f0 $30
    db $ec                                        ; $6f7a: $ec

Call_020_6f7b:
    db $fc                                        ; $6f7b: $fc
    ld hl, sp-$08                                 ; $6f7c: $f8 $f8
    ldh a, [$50]                                  ; $6f7e: $f0 $50
    ldh a, [$30]                                  ; $6f80: $f0 $30
    ldh a, [rNR10]                                ; $6f82: $f0 $10
    ld hl, sp-$18                                 ; $6f84: $f8 $e8
    or b                                          ; $6f86: $b0
    ldh a, [$e0]                                  ; $6f87: $f0 $e0
    ldh [$c0], a                                  ; $6f89: $e0 $c0
    ret nz                                        ; $6f8b: $c0

    nop                                           ; $6f8c: $00
    nop                                           ; $6f8d: $00
    nop                                           ; $6f8e: $00
    nop                                           ; $6f8f: $00
    nop                                           ; $6f90: $00
    nop                                           ; $6f91: $00
    inc bc                                        ; $6f92: $03
    inc bc                                        ; $6f93: $03
    inc b                                         ; $6f94: $04
    rlca                                          ; $6f95: $07
    inc c                                         ; $6f96: $0c
    dec bc                                        ; $6f97: $0b
    rrca                                          ; $6f98: $0f
    dec bc                                        ; $6f99: $0b

jr_020_6f9a:
    rra                                           ; $6f9a: $1f
    dec e                                         ; $6f9b: $1d
    rlca                                          ; $6f9c: $07
    inc b                                         ; $6f9d: $04
    rrca                                          ; $6f9e: $0f
    ld [$080f], sp                                ; $6f9f: $08 $0f $08
    rlca                                          ; $6fa2: $07
    inc b                                         ; $6fa3: $04
    rlca                                          ; $6fa4: $07
    ld b, $0f                                     ; $6fa5: $06 $0f
    dec bc                                        ; $6fa7: $0b
    rlca                                          ; $6fa8: $07
    rlca                                          ; $6fa9: $07
    rlca                                          ; $6faa: $07
    rlca                                          ; $6fab: $07
    ld [bc], a                                    ; $6fac: $02
    ld [bc], a                                    ; $6fad: $02
    nop                                           ; $6fae: $00
    nop                                           ; $6faf: $00
    nop                                           ; $6fb0: $00
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00
    nop                                           ; $6fb3: $00
    ret nz                                        ; $6fb4: $c0

    ret nz                                        ; $6fb5: $c0

    nop                                           ; $6fb6: $00
    ret nz                                        ; $6fb7: $c0

    jr nz, jr_020_6f9a                            ; $6fb8: $20 $e0

    ldh [$e0], a                                  ; $6fba: $e0 $e0
    add sp, -$08                                  ; $6fbc: $e8 $f8
    add sp, -$48                                  ; $6fbe: $e8 $b8
    ret nc                                        ; $6fc0: $d0

    ld [hl], b                                    ; $6fc1: $70
    ldh [$e0], a                                  ; $6fc2: $e0 $e0
    ret nz                                        ; $6fc4: $c0

    ret nz                                        ; $6fc5: $c0

    ld h, b                                       ; $6fc6: $60
    ldh [$e0], a                                  ; $6fc7: $e0 $e0
    and b                                         ; $6fc9: $a0
    ldh [$e0], a                                  ; $6fca: $e0 $e0
    ld b, b                                       ; $6fcc: $40
    ld b, b                                       ; $6fcd: $40
    nop                                           ; $6fce: $00
    nop                                           ; $6fcf: $00
    nop                                           ; $6fd0: $00
    nop                                           ; $6fd1: $00
    inc bc                                        ; $6fd2: $03
    inc bc                                        ; $6fd3: $03
    nop                                           ; $6fd4: $00
    inc bc                                        ; $6fd5: $03
    inc b                                         ; $6fd6: $04
    rlca                                          ; $6fd7: $07

jr_020_6fd8:
    rrca                                          ; $6fd8: $0f
    rrca                                          ; $6fd9: $0f
    inc sp                                        ; $6fda: $33
    inc a                                         ; $6fdb: $3c
    db $10                                        ; $6fdc: $10
    rra                                           ; $6fdd: $1f
    jr jr_020_6fff                                ; $6fde: $18 $1f

    inc a                                         ; $6fe0: $3c
    cpl                                           ; $6fe1: $2f
    ccf                                           ; $6fe2: $3f
    ccf                                           ; $6fe3: $3f
    rlca                                          ; $6fe4: $07
    rlca                                          ; $6fe5: $07
    inc b                                         ; $6fe6: $04
    rlca                                          ; $6fe7: $07
    inc bc                                        ; $6fe8: $03
    inc bc                                        ; $6fe9: $03
    nop                                           ; $6fea: $00
    inc bc                                        ; $6feb: $03
    inc bc                                        ; $6fec: $03
    inc bc                                        ; $6fed: $03
    nop                                           ; $6fee: $00
    nop                                           ; $6fef: $00
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    ret nz                                        ; $6ff2: $c0

    ret nz                                        ; $6ff3: $c0

    nop                                           ; $6ff4: $00
    ret nz                                        ; $6ff5: $c0

    jr nz, jr_020_6fd8                            ; $6ff6: $20 $e0

    ldh a, [$f0]                                  ; $6ff8: $f0 $f0
    call z, Call_000_083c                         ; $6ffa: $cc $3c $08
    ld hl, sp+$10                                 ; $6ffd: $f8 $10

jr_020_6fff:
    ldh a, [$30]                                  ; $6fff: $f0 $30
    ldh a, [$f6]                                  ; $7001: $f0 $f6
    or $f8                                        ; $7003: $f6 $f8
    add sp, -$50                                  ; $7005: $e8 $b0
    ldh a, [$e0]                                  ; $7007: $f0 $e0
    ldh [$c0], a                                  ; $7009: $e0 $c0
    ret nz                                        ; $700b: $c0

    nop                                           ; $700c: $00
    nop                                           ; $700d: $00
    nop                                           ; $700e: $00
    nop                                           ; $700f: $00
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
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    nop                                           ; $702b: $00
    nop                                           ; $702c: $00
    nop                                           ; $702d: $00
    nop                                           ; $702e: $00
    nop                                           ; $702f: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703a: $00
    nop                                           ; $703b: $00
    nop                                           ; $703c: $00
    nop                                           ; $703d: $00
    nop                                           ; $703e: $00
    nop                                           ; $703f: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    nop                                           ; $704a: $00
    nop                                           ; $704b: $00
    nop                                           ; $704c: $00
    nop                                           ; $704d: $00
    nop                                           ; $704e: $00
    nop                                           ; $704f: $00
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    inc bc                                        ; $7052: $03
    inc bc                                        ; $7053: $03
    inc b                                         ; $7054: $04
    rlca                                          ; $7055: $07

jr_020_7056:
    dec bc                                        ; $7056: $0b
    rrca                                          ; $7057: $0f
    rra                                           ; $7058: $1f
    inc e                                         ; $7059: $1c
    ld l, a                                       ; $705a: $6f
    ld a, e                                       ; $705b: $7b
    ld c, a                                       ; $705c: $4f
    ld a, [hl]                                    ; $705d: $7e
    cpl                                           ; $705e: $2f
    ld a, [hl-]                                   ; $705f: $3a
    ld a, a                                       ; $7060: $7f
    ld a, a                                       ; $7061: $7f
    rra                                           ; $7062: $1f
    inc d                                         ; $7063: $14
    rra                                           ; $7064: $1f
    ld d, $0f                                     ; $7065: $16 $0f
    rrca                                          ; $7067: $0f
    dec bc                                        ; $7068: $0b
    ld c, $0d                                     ; $7069: $0e $0d
    rrca                                          ; $706b: $0f
    inc de                                        ; $706c: $13
    rra                                           ; $706d: $1f
    ld e, $1e                                     ; $706e: $1e $1e
    nop                                           ; $7070: $00

jr_020_7071:
    nop                                           ; $7071: $00
    ret nz                                        ; $7072: $c0

    ret nz                                        ; $7073: $c0

    jr nz, jr_020_7056                            ; $7074: $20 $e0

    ret nc                                        ; $7076: $d0

    ldh a, [$f8]                                  ; $7077: $f0 $f8
    jr c, jr_020_7071                             ; $7079: $38 $f6

    sbc $f3                                       ; $707b: $de $f3
    ld a, a                                       ; $707d: $7f
    rst $30                                       ; $707e: $f7
    ld e, a                                       ; $707f: $5f
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    ld hl, sp+$28                                 ; $7082: $f8 $28
    ld hl, sp+$68                                 ; $7084: $f8 $68
    ldh a, [$f0]                                  ; $7086: $f0 $f0
    ret nc                                        ; $7088: $d0

    ld [hl], b                                    ; $7089: $70
    or b                                          ; $708a: $b0
    ldh a, [$c8]                                  ; $708b: $f0 $c8
    ld hl, sp+$78                                 ; $708d: $f8 $78
    ld a, b                                       ; $708f: $78
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
    nop                                           ; $70a0: $00
    nop                                           ; $70a1: $00
    nop                                           ; $70a2: $00
    nop                                           ; $70a3: $00
    nop                                           ; $70a4: $00
    nop                                           ; $70a5: $00
    nop                                           ; $70a6: $00
    nop                                           ; $70a7: $00
    nop                                           ; $70a8: $00
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    nop                                           ; $70ab: $00
    nop                                           ; $70ac: $00
    nop                                           ; $70ad: $00
    nop                                           ; $70ae: $00
    nop                                           ; $70af: $00
    nop                                           ; $70b0: $00
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    nop                                           ; $70b3: $00
    nop                                           ; $70b4: $00
    nop                                           ; $70b5: $00
    nop                                           ; $70b6: $00
    nop                                           ; $70b7: $00
    nop                                           ; $70b8: $00
    nop                                           ; $70b9: $00
    nop                                           ; $70ba: $00
    nop                                           ; $70bb: $00
    nop                                           ; $70bc: $00
    nop                                           ; $70bd: $00
    nop                                           ; $70be: $00
    nop                                           ; $70bf: $00
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    nop                                           ; $70c2: $00
    nop                                           ; $70c3: $00
    nop                                           ; $70c4: $00
    nop                                           ; $70c5: $00
    nop                                           ; $70c6: $00
    nop                                           ; $70c7: $00
    nop                                           ; $70c8: $00
    nop                                           ; $70c9: $00
    nop                                           ; $70ca: $00
    nop                                           ; $70cb: $00
    nop                                           ; $70cc: $00
    nop                                           ; $70cd: $00
    nop                                           ; $70ce: $00
    nop                                           ; $70cf: $00
    nop                                           ; $70d0: $00
    nop                                           ; $70d1: $00
    nop                                           ; $70d2: $00
    nop                                           ; $70d3: $00
    ld bc, $0201                                  ; $70d4: $01 $01 $02
    inc bc                                        ; $70d7: $03

jr_020_70d8:
    rlca                                          ; $70d8: $07
    dec b                                         ; $70d9: $05
    rra                                           ; $70da: $1f
    ld e, $11                                     ; $70db: $1e $11
    rra                                           ; $70dd: $1f
    ld [$1e0f], sp                                ; $70de: $08 $0f $1e
    rla                                           ; $70e1: $17
    rra                                           ; $70e2: $1f
    dec e                                         ; $70e3: $1d
    rlca                                          ; $70e4: $07
    ld b, $04                                     ; $70e5: $06 $04
    rlca                                          ; $70e7: $07
    rlca                                          ; $70e8: $07
    rlca                                          ; $70e9: $07
    inc b                                         ; $70ea: $04
    rlca                                          ; $70eb: $07
    inc bc                                        ; $70ec: $03
    inc bc                                        ; $70ed: $03
    nop                                           ; $70ee: $00
    nop                                           ; $70ef: $00
    nop                                           ; $70f0: $00
    nop                                           ; $70f1: $00
    nop                                           ; $70f2: $00
    nop                                           ; $70f3: $00
    ret nz                                        ; $70f4: $c0

    ret nz                                        ; $70f5: $c0

    jr nz, jr_020_70d8                            ; $70f6: $20 $e0

    ldh a, [$d0]                                  ; $70f8: $f0 $d0
    db $fc                                        ; $70fa: $fc
    inc a                                         ; $70fb: $3c

Call_020_70fc:
    call nz, Call_000_08fc                        ; $70fc: $c4 $fc $08
    ld hl, sp+$30                                 ; $70ff: $f8 $30
    ldh a, [$fc]                                  ; $7101: $f0 $fc
    call c, $2cfc                                 ; $7103: $dc $fc $2c
    sub b                                         ; $7106: $90
    ldh a, [$f0]                                  ; $7107: $f0 $f0
    ldh a, [$e0]                                  ; $7109: $f0 $e0
    ldh [rP1], a                                  ; $710b: $e0 $00
    nop                                           ; $710d: $00
    nop                                           ; $710e: $00
    nop                                           ; $710f: $00
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
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712a: $00
    nop                                           ; $712b: $00
    nop                                           ; $712c: $00
    nop                                           ; $712d: $00
    nop                                           ; $712e: $00
    nop                                           ; $712f: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713a: $00
    nop                                           ; $713b: $00
    nop                                           ; $713c: $00
    nop                                           ; $713d: $00
    nop                                           ; $713e: $00
    nop                                           ; $713f: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    nop                                           ; $714b: $00
    nop                                           ; $714c: $00
    nop                                           ; $714d: $00
    nop                                           ; $714e: $00
    nop                                           ; $714f: $00
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    inc bc                                        ; $7152: $03
    inc bc                                        ; $7153: $03
    inc b                                         ; $7154: $04
    rlca                                          ; $7155: $07

jr_020_7156:
    dec bc                                        ; $7156: $0b
    rrca                                          ; $7157: $0f
    rra                                           ; $7158: $1f
    inc e                                         ; $7159: $1c
    ld l, a                                       ; $715a: $6f
    ld a, e                                       ; $715b: $7b
    ld c, a                                       ; $715c: $4f
    ld a, [hl]                                    ; $715d: $7e
    cpl                                           ; $715e: $2f
    ld a, [hl-]                                   ; $715f: $3a
    ld a, a                                       ; $7160: $7f
    ld a, a                                       ; $7161: $7f
    rra                                           ; $7162: $1f
    inc d                                         ; $7163: $14
    rra                                           ; $7164: $1f
    ld d, $0f                                     ; $7165: $16 $0f
    rrca                                          ; $7167: $0f
    dec bc                                        ; $7168: $0b
    ld c, $0d                                     ; $7169: $0e $0d
    rrca                                          ; $716b: $0f
    inc de                                        ; $716c: $13
    rra                                           ; $716d: $1f
    ld e, $1e                                     ; $716e: $1e $1e
    nop                                           ; $7170: $00

jr_020_7171:
    nop                                           ; $7171: $00
    ret nz                                        ; $7172: $c0

    ret nz                                        ; $7173: $c0

    jr nz, jr_020_7156                            ; $7174: $20 $e0

    ret nc                                        ; $7176: $d0

    ldh a, [$f8]                                  ; $7177: $f0 $f8
    jr c, jr_020_7171                             ; $7179: $38 $f6

    sbc $f3                                       ; $717b: $de $f3
    ld a, a                                       ; $717d: $7f
    rst $30                                       ; $717e: $f7
    ld e, a                                       ; $717f: $5f
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    ld hl, sp+$28                                 ; $7182: $f8 $28
    ld hl, sp+$68                                 ; $7184: $f8 $68
    ldh a, [$f0]                                  ; $7186: $f0 $f0
    ret nc                                        ; $7188: $d0

    ld [hl], b                                    ; $7189: $70
    or b                                          ; $718a: $b0
    ldh a, [$c8]                                  ; $718b: $f0 $c8
    ld hl, sp+$78                                 ; $718d: $f8 $78
    ld a, b                                       ; $718f: $78
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
    nop                                           ; $71a0: $00
    nop                                           ; $71a1: $00
    nop                                           ; $71a2: $00
    nop                                           ; $71a3: $00
    nop                                           ; $71a4: $00
    nop                                           ; $71a5: $00
    nop                                           ; $71a6: $00
    nop                                           ; $71a7: $00
    nop                                           ; $71a8: $00
    nop                                           ; $71a9: $00
    nop                                           ; $71aa: $00
    nop                                           ; $71ab: $00
    nop                                           ; $71ac: $00
    nop                                           ; $71ad: $00
    nop                                           ; $71ae: $00
    nop                                           ; $71af: $00
    nop                                           ; $71b0: $00
    nop                                           ; $71b1: $00
    nop                                           ; $71b2: $00
    nop                                           ; $71b3: $00
    nop                                           ; $71b4: $00
    nop                                           ; $71b5: $00
    nop                                           ; $71b6: $00
    nop                                           ; $71b7: $00
    nop                                           ; $71b8: $00
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00
    nop                                           ; $71bb: $00
    nop                                           ; $71bc: $00
    nop                                           ; $71bd: $00
    nop                                           ; $71be: $00
    nop                                           ; $71bf: $00
    nop                                           ; $71c0: $00
    nop                                           ; $71c1: $00
    nop                                           ; $71c2: $00
    nop                                           ; $71c3: $00
    nop                                           ; $71c4: $00
    nop                                           ; $71c5: $00
    nop                                           ; $71c6: $00
    nop                                           ; $71c7: $00
    nop                                           ; $71c8: $00
    nop                                           ; $71c9: $00
    nop                                           ; $71ca: $00
    nop                                           ; $71cb: $00
    nop                                           ; $71cc: $00
    nop                                           ; $71cd: $00
    nop                                           ; $71ce: $00
    nop                                           ; $71cf: $00
    nop                                           ; $71d0: $00
    nop                                           ; $71d1: $00
    nop                                           ; $71d2: $00
    nop                                           ; $71d3: $00
    ld bc, $0201                                  ; $71d4: $01 $01 $02
    inc bc                                        ; $71d7: $03

jr_020_71d8:
    rlca                                          ; $71d8: $07
    dec b                                         ; $71d9: $05
    rra                                           ; $71da: $1f
    ld e, $11                                     ; $71db: $1e $11
    rra                                           ; $71dd: $1f
    ld [$060f], sp                                ; $71de: $08 $0f $06
    rlca                                          ; $71e1: $07
    rrca                                          ; $71e2: $0f
    dec c                                         ; $71e3: $0d
    rrca                                          ; $71e4: $0f
    ld a, [bc]                                    ; $71e5: $0a
    inc b                                         ; $71e6: $04
    rlca                                          ; $71e7: $07
    rlca                                          ; $71e8: $07
    rlca                                          ; $71e9: $07
    inc bc                                        ; $71ea: $03
    inc bc                                        ; $71eb: $03
    nop                                           ; $71ec: $00
    nop                                           ; $71ed: $00
    nop                                           ; $71ee: $00
    nop                                           ; $71ef: $00
    nop                                           ; $71f0: $00
    nop                                           ; $71f1: $00
    nop                                           ; $71f2: $00
    nop                                           ; $71f3: $00
    ret nz                                        ; $71f4: $c0

    ret nz                                        ; $71f5: $c0

    jr nz, jr_020_71d8                            ; $71f6: $20 $e0

    ldh a, [$d0]                                  ; $71f8: $f0 $d0
    db $fc                                        ; $71fa: $fc
    inc a                                         ; $71fb: $3c
    call nz, Call_000_0cfc                        ; $71fc: $c4 $fc $0c
    db $fc                                        ; $71ff: $fc
    inc a                                         ; $7200: $3c
    db $f4                                        ; $7201: $f4
    db $fc                                        ; $7202: $fc
    call c, $30f0                                 ; $7203: $dc $f0 $30
    sub b                                         ; $7206: $90
    ldh a, [$f0]                                  ; $7207: $f0 $f0
    ldh a, [$90]                                  ; $7209: $f0 $90
    ldh a, [$60]                                  ; $720b: $f0 $60
    ld h, b                                       ; $720d: $60
    nop                                           ; $720e: $00
    nop                                           ; $720f: $00
    ld h, $72                                     ; $7210: $26 $72
    add hl, hl                                    ; $7212: $29
    ld [hl], d                                    ; $7213: $72
    cpl                                           ; $7214: $2f
    ld [hl], d                                    ; $7215: $72
    ld [hl-], a                                   ; $7216: $32
    ld [hl], d                                    ; $7217: $72
    dec a                                         ; $7218: $3d
    ld [hl], d                                    ; $7219: $72
    ld b, h                                       ; $721a: $44
    ld [hl], d                                    ; $721b: $72
    ld c, h                                       ; $721c: $4c
    ld [hl], d                                    ; $721d: $72
    ld h, b                                       ; $721e: $60
    ld [hl], d                                    ; $721f: $72
    ld l, h                                       ; $7220: $6c
    ld [hl], d                                    ; $7221: $72
    ld h, $72                                     ; $7222: $26 $72
    ld [hl], l                                    ; $7224: $75
    ld [hl], d                                    ; $7225: $72
    nop                                           ; $7226: $00
    rst $38                                       ; $7227: $ff
    db $fd                                        ; $7228: $fd
    nop                                           ; $7229: $00
    ld e, $01                                     ; $722a: $1e $01
    ld e, $ff                                     ; $722c: $1e $ff
    nop                                           ; $722e: $00
    ld [bc], a                                    ; $722f: $02
    rst $38                                       ; $7230: $ff
    db $fd                                        ; $7231: $fd
    ld [bc], a                                    ; $7232: $02
    inc c                                         ; $7233: $0c
    inc bc                                        ; $7234: $03
    inc c                                         ; $7235: $0c
    inc b                                         ; $7236: $04
    jr jr_020_723b                                ; $7237: $18 $02

    inc c                                         ; $7239: $0c
    dec b                                         ; $723a: $05

jr_020_723b:
    inc c                                         ; $723b: $0c
    db $fd                                        ; $723c: $fd
    ld [bc], a                                    ; $723d: $02
    jr @+$05                                      ; $723e: $18 $03

    jr jr_020_7244                                ; $7240: $18 $02

    jr @-$01                                      ; $7242: $18 $fd

jr_020_7244:
    nop                                           ; $7244: $00
    ld a, [bc]                                    ; $7245: $0a
    ld b, $1e                                     ; $7246: $06 $1e
    nop                                           ; $7248: $00
    ld a, [bc]                                    ; $7249: $0a
    cp $01                                        ; $724a: $fe $01
    nop                                           ; $724c: $00
    ld a, [bc]                                    ; $724d: $0a
    rlca                                          ; $724e: $07
    ld a, [bc]                                    ; $724f: $0a
    nop                                           ; $7250: $00
    inc bc                                        ; $7251: $03
    ld [$000a], sp                                ; $7252: $08 $0a $00
    inc bc                                        ; $7255: $03
    rlca                                          ; $7256: $07
    ld a, [bc]                                    ; $7257: $0a
    nop                                           ; $7258: $00
    inc bc                                        ; $7259: $03
    ld [$000a], sp                                ; $725a: $08 $0a $00
    ld a, [bc]                                    ; $725d: $0a
    cp $01                                        ; $725e: $fe $01
    nop                                           ; $7260: $00
    ld a, [bc]                                    ; $7261: $0a
    add hl, bc                                    ; $7262: $09
    ld [$0800], sp                                ; $7263: $08 $00 $08
    add hl, bc                                    ; $7266: $09
    ld [$0a00], sp                                ; $7267: $08 $00 $0a
    cp $01                                        ; $726a: $fe $01
    ld [bc], a                                    ; $726c: $02
    ld [de], a                                    ; $726d: $12
    inc bc                                        ; $726e: $03
    ld [de], a                                    ; $726f: $12
    ld [bc], a                                    ; $7270: $02
    ld e, $05                                     ; $7271: $1e $05
    ld [de], a                                    ; $7273: $12
    db $fd                                        ; $7274: $fd
    ld a, [bc]                                    ; $7275: $0a
    ld e, $0b                                     ; $7276: $1e $0b
    ld e, $ff                                     ; $7278: $1e $ff
    nop                                           ; $727a: $00
    dec b                                         ; $727b: $05
    inc b                                         ; $727c: $04
    add e                                         ; $727d: $83
    ld [hl], d                                    ; $727e: $72
    and b                                         ; $727f: $a0
    ld a, h                                       ; $7280: $7c
    add e                                         ; $7281: $83
    ld [hl], d                                    ; $7282: $72
    and b                                         ; $7283: $a0
    ld [hl], d                                    ; $7284: $72
    and b                                         ; $7285: $a0
    ld [hl], e                                    ; $7286: $73
    and b                                         ; $7287: $a0
    ld [hl], h                                    ; $7288: $74
    and b                                         ; $7289: $a0
    ld [hl], l                                    ; $728a: $75
    and b                                         ; $728b: $a0
    halt                                          ; $728c: $76
    and b                                         ; $728d: $a0
    ld [hl], a                                    ; $728e: $77
    and b                                         ; $728f: $a0
    ld a, b                                       ; $7290: $78
    and b                                         ; $7291: $a0
    ld a, c                                       ; $7292: $79
    and b                                         ; $7293: $a0
    ld a, d                                       ; $7294: $7a
    and b                                         ; $7295: $a0
    ld a, e                                       ; $7296: $7b
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00

jr_020_7299:
    nop                                           ; $7299: $00
    nop                                           ; $729a: $00
    nop                                           ; $729b: $00
    nop                                           ; $729c: $00
    nop                                           ; $729d: $00
    nop                                           ; $729e: $00
    nop                                           ; $729f: $00
    ld bc, $0601                                  ; $72a0: $01 $01 $06
    rlca                                          ; $72a3: $07

jr_020_72a4:
    ld [$090f], sp                                ; $72a4: $08 $0f $09
    rrca                                          ; $72a7: $0f
    rlca                                          ; $72a8: $07
    rlca                                          ; $72a9: $07
    rrca                                          ; $72aa: $0f
    add hl, bc                                    ; $72ab: $09
    rrca                                          ; $72ac: $0f
    ld [$0607], sp                                ; $72ad: $08 $07 $06
    inc bc                                        ; $72b0: $03
    inc bc                                        ; $72b1: $03
    inc b                                         ; $72b2: $04
    rlca                                          ; $72b3: $07
    ld c, $0b                                     ; $72b4: $0e $0b
    rra                                           ; $72b6: $1f
    rla                                           ; $72b7: $17
    dec de                                        ; $72b8: $1b
    ld a, [de]                                    ; $72b9: $1a
    rrca                                          ; $72ba: $0f
    rrca                                          ; $72bb: $0f
    rrca                                          ; $72bc: $0f
    rrca                                          ; $72bd: $0f
    ld b, $06                                     ; $72be: $06 $06
    ret nz                                        ; $72c0: $c0

    ret nz                                        ; $72c1: $c0

    jr nz, jr_020_72a4                            ; $72c2: $20 $e0

    ret nc                                        ; $72c4: $d0

    ldh a, [$f0]                                  ; $72c5: $f0 $f0
    jr nc, jr_020_7299                            ; $72c7: $30 $d0

    ldh a, [$d0]                                  ; $72c9: $f0 $d0
    ld [hl], b                                    ; $72cb: $70
    ld hl, sp+$28                                 ; $72cc: $f8 $28
    ld hl, sp+$18                                 ; $72ce: $f8 $18
    ldh a, [rNR10]                                ; $72d0: $f0 $10
    ldh a, [$90]                                  ; $72d2: $f0 $90
    ld hl, sp-$18                                 ; $72d4: $f8 $e8
    ld hl, sp-$08                                 ; $72d6: $f8 $f8
    ret nz                                        ; $72d8: $c0

    ld b, b                                       ; $72d9: $40
    ldh a, [$30]                                  ; $72da: $f0 $30
    ret nc                                        ; $72dc: $d0

    ld [hl], b                                    ; $72dd: $70
    ldh [$e0], a                                  ; $72de: $e0 $e0
    inc bc                                        ; $72e0: $03
    inc bc                                        ; $72e1: $03
    inc c                                         ; $72e2: $0c
    rrca                                          ; $72e3: $0f
    inc d                                         ; $72e4: $14
    rra                                           ; $72e5: $1f
    rra                                           ; $72e6: $1f
    dec de                                        ; $72e7: $1b
    rra                                           ; $72e8: $1f
    rra                                           ; $72e9: $1f
    add hl, sp                                    ; $72ea: $39
    cpl                                           ; $72eb: $2f
    ccf                                           ; $72ec: $3f
    ld h, $1f                                     ; $72ed: $26 $1f
    add hl, de                                    ; $72ef: $19
    ccf                                           ; $72f0: $3f
    jr c, jr_020_736a                             ; $72f1: $38 $77

    ld e, h                                       ; $72f3: $5c
    ld a, e                                       ; $72f4: $7b
    ld a, a                                       ; $72f5: $7f
    ld c, a                                       ; $72f6: $4f
    ld c, a                                       ; $72f7: $4f
    rst $08                                       ; $72f8: $cf

jr_020_72f9:
    ret                                           ; $72f9: $c9


    rst $18                                       ; $72fa: $df
    sub $09                                       ; $72fb: $d6 $09
    rrca                                          ; $72fd: $0f
    rlca                                          ; $72fe: $07
    rlca                                          ; $72ff: $07
    add b                                         ; $7300: $80
    add b                                         ; $7301: $80
    ld h, b                                       ; $7302: $60
    ldh [$d0], a                                  ; $7303: $e0 $d0
    ldh a, [$f0]                                  ; $7305: $f0 $f0
    jr nc, jr_020_72f9                            ; $7307: $30 $f0

    ldh a, [$38]                                  ; $7309: $f0 $38
    add sp, -$08                                  ; $730b: $e8 $f8
    ret z                                         ; $730d: $c8

    ldh a, [$30]                                  ; $730e: $f0 $30
    ldh [rNR41], a                                ; $7310: $e0 $20
    ret nc                                        ; $7312: $d0

    ld [hl], b                                    ; $7313: $70
    cp b                                          ; $7314: $b8
    add sp, -$04                                  ; $7315: $e8 $fc
    db $f4                                        ; $7317: $f4
    db $ec                                        ; $7318: $ec
    inc l                                         ; $7319: $2c
    ldh [$e0], a                                  ; $731a: $e0 $e0
    ret nz                                        ; $731c: $c0

    ret nz                                        ; $731d: $c0

    nop                                           ; $731e: $00
    nop                                           ; $731f: $00
    inc bc                                        ; $7320: $03
    inc bc                                        ; $7321: $03
    inc b                                         ; $7322: $04
    rlca                                          ; $7323: $07
    dec bc                                        ; $7324: $0b
    rrca                                          ; $7325: $0f
    rrca                                          ; $7326: $0f
    inc c                                         ; $7327: $0c
    dec bc                                        ; $7328: $0b
    rrca                                          ; $7329: $0f
    dec bc                                        ; $732a: $0b

jr_020_732b:
    ld c, $1f                                     ; $732b: $0e $1f
    inc d                                         ; $732d: $14
    rra                                           ; $732e: $1f
    jr jr_020_7340                                ; $732f: $18 $0f

    ld [$090f], sp                                ; $7331: $08 $0f $09
    rlca                                          ; $7334: $07
    ld b, $07                                     ; $7335: $06 $07
    dec b                                         ; $7337: $05
    inc bc                                        ; $7338: $03
    ld [bc], a                                    ; $7339: $02
    rrca                                          ; $733a: $0f
    rrca                                          ; $733b: $0f
    rrca                                          ; $733c: $0f
    rrca                                          ; $733d: $0f
    ld b, $06                                     ; $733e: $06 $06

jr_020_7340:
    add b                                         ; $7340: $80
    add b                                         ; $7341: $80
    ld h, b                                       ; $7342: $60
    ldh [rNR10], a                                ; $7343: $e0 $10
    ldh a, [$90]                                  ; $7345: $f0 $90
    ldh a, [$e0]                                  ; $7347: $f0 $e0
    ldh [$f0], a                                  ; $7349: $e0 $f0
    sub b                                         ; $734b: $90
    ldh a, [rNR10]                                ; $734c: $f0 $10
    ldh [$60], a                                  ; $734e: $e0 $60
    ret nz                                        ; $7350: $c0

    ret nz                                        ; $7351: $c0

    ld h, b                                       ; $7352: $60
    ldh [$b0], a                                  ; $7353: $e0 $b0
    ldh a, [$f0]                                  ; $7355: $f0 $f0
    ldh a, [$e0]                                  ; $7357: $f0 $e0
    jr nz, jr_020_732b                            ; $7359: $20 $d0

    ld [hl], b                                    ; $735b: $70
    sub b                                         ; $735c: $90
    ldh a, [$e0]                                  ; $735d: $f0 $e0
    ldh [$03], a                                  ; $735f: $e0 $03
    inc bc                                        ; $7361: $03
    inc c                                         ; $7362: $0c
    rrca                                          ; $7363: $0f
    db $10                                        ; $7364: $10
    rra                                           ; $7365: $1f
    db $10                                        ; $7366: $10
    rra                                           ; $7367: $1f
    jr jr_020_7389                                ; $7368: $18 $1f

jr_020_736a:
    inc a                                         ; $736a: $3c
    daa                                           ; $736b: $27
    ccf                                           ; $736c: $3f
    inc hl                                        ; $736d: $23
    rra                                           ; $736e: $1f
    jr jr_020_73a8                                ; $736f: $18 $37

    ccf                                           ; $7371: $3f
    ld [hl], b                                    ; $7372: $70
    ld e, a                                       ; $7373: $5f
    ld a, b                                       ; $7374: $78
    ld a, a                                       ; $7375: $7f
    rrca                                          ; $7376: $0f
    rrca                                          ; $7377: $0f
    rrca                                          ; $7378: $0f
    add hl, bc                                    ; $7379: $09
    rra                                           ; $737a: $1f
    rla                                           ; $737b: $17
    add hl, bc                                    ; $737c: $09
    rrca                                          ; $737d: $0f
    rlca                                          ; $737e: $07
    rlca                                          ; $737f: $07
    add b                                         ; $7380: $80
    add b                                         ; $7381: $80
    ld h, b                                       ; $7382: $60
    ldh [rNR10], a                                ; $7383: $e0 $10
    ldh a, [rNR10]                                ; $7385: $f0 $10
    ldh a, [$30]                                  ; $7387: $f0 $30

jr_020_7389:
    ldh a, [$78]                                  ; $7389: $f0 $78
    ret z                                         ; $738b: $c8

    ld hl, sp-$78                                 ; $738c: $f8 $88
    ldh a, [$30]                                  ; $738e: $f0 $30
    ldh [$e0], a                                  ; $7390: $e0 $e0
    ld d, b                                       ; $7392: $50
    ldh a, [$3e]                                  ; $7393: $f0 $3e
    xor $fe                                       ; $7395: $ee $fe
    or $ec                                        ; $7397: $f6 $ec

jr_020_7399:
    inc l                                         ; $7399: $2c
    ldh [$e0], a                                  ; $739a: $e0 $e0
    ret nz                                        ; $739c: $c0

    ret nz                                        ; $739d: $c0

    nop                                           ; $739e: $00
    nop                                           ; $739f: $00
    ld bc, $0601                                  ; $73a0: $01 $01 $06
    rlca                                          ; $73a3: $07

jr_020_73a4:
    ld [$090f], sp                                ; $73a4: $08 $0f $09
    rrca                                          ; $73a7: $0f

jr_020_73a8:
    rlca                                          ; $73a8: $07
    rlca                                          ; $73a9: $07
    rrca                                          ; $73aa: $0f
    add hl, bc                                    ; $73ab: $09
    rrca                                          ; $73ac: $0f
    ld [$0607], sp                                ; $73ad: $08 $07 $06
    inc bc                                        ; $73b0: $03
    inc bc                                        ; $73b1: $03
    ld b, $07                                     ; $73b2: $06 $07
    dec c                                         ; $73b4: $0d
    rrca                                          ; $73b5: $0f
    rrca                                          ; $73b6: $0f
    rrca                                          ; $73b7: $0f
    rlca                                          ; $73b8: $07
    inc b                                         ; $73b9: $04
    dec bc                                        ; $73ba: $0b
    ld c, $09                                     ; $73bb: $0e $09
    rrca                                          ; $73bd: $0f
    rlca                                          ; $73be: $07
    rlca                                          ; $73bf: $07
    ret nz                                        ; $73c0: $c0

    ret nz                                        ; $73c1: $c0

    jr nz, jr_020_73a4                            ; $73c2: $20 $e0

    ret nc                                        ; $73c4: $d0

    ldh a, [$f0]                                  ; $73c5: $f0 $f0
    jr nc, jr_020_7399                            ; $73c7: $30 $d0

    ldh a, [$d0]                                  ; $73c9: $f0 $d0
    ld [hl], b                                    ; $73cb: $70
    ld hl, sp+$28                                 ; $73cc: $f8 $28
    ldh a, [rNR10]                                ; $73ce: $f0 $10
    db $fc                                        ; $73d0: $fc
    inc e                                         ; $73d1: $1c
    db $fc                                        ; $73d2: $fc
    sbc h                                         ; $73d3: $9c
    ldh a, [rSVBK]                                ; $73d4: $f0 $70
    ldh [$a0], a                                  ; $73d6: $e0 $a0
    ret nz                                        ; $73d8: $c0

    ld b, b                                       ; $73d9: $40
    ldh a, [$f0]                                  ; $73da: $f0 $f0
    ldh a, [$f0]                                  ; $73dc: $f0 $f0
    ld h, b                                       ; $73de: $60
    ld h, b                                       ; $73df: $60
    inc bc                                        ; $73e0: $03
    inc bc                                        ; $73e1: $03
    inc c                                         ; $73e2: $0c
    rrca                                          ; $73e3: $0f
    inc d                                         ; $73e4: $14
    rra                                           ; $73e5: $1f
    rra                                           ; $73e6: $1f
    dec de                                        ; $73e7: $1b
    rra                                           ; $73e8: $1f
    rra                                           ; $73e9: $1f
    add hl, sp                                    ; $73ea: $39
    cpl                                           ; $73eb: $2f
    ccf                                           ; $73ec: $3f
    ld h, $1f                                     ; $73ed: $26 $1f
    add hl, de                                    ; $73ef: $19
    rst $08                                       ; $73f0: $cf
    ret z                                         ; $73f1: $c8

    rst $10                                       ; $73f2: $d7
    call c, Call_020_6f7b                         ; $73f3: $dc $7b $6f
    ld a, a                                       ; $73f6: $7f
    ld e, a                                       ; $73f7: $5f
    ld l, a                                       ; $73f8: $6f

jr_020_73f9:
    ld l, c                                       ; $73f9: $69
    rrca                                          ; $73fa: $0f
    ld c, $07                                     ; $73fb: $0e $07
    rlca                                          ; $73fd: $07

jr_020_73fe:
    ld bc, $8001                                  ; $73fe: $01 $01 $80
    add b                                         ; $7401: $80
    ld h, b                                       ; $7402: $60
    ldh [$d0], a                                  ; $7403: $e0 $d0
    ldh a, [$f0]                                  ; $7405: $f0 $f0
    jr nc, jr_020_73f9                            ; $7407: $30 $f0

    ldh a, [$38]                                  ; $7409: $f0 $38
    add sp, -$08                                  ; $740b: $e8 $f8
    ret z                                         ; $740d: $c8

    ldh a, [$30]                                  ; $740e: $f0 $30
    ld hl, sp+$38                                 ; $7410: $f8 $38
    call c, $bc74                                 ; $7412: $dc $74 $bc
    db $fc                                        ; $7415: $fc
    ldh [$e0], a                                  ; $7416: $e0 $e0
    ldh [rNR41], a                                ; $7418: $e0 $20
    ldh a, [$d0]                                  ; $741a: $f0 $d0
    jr nz, jr_020_73fe                            ; $741c: $20 $e0

    ret nz                                        ; $741e: $c0

    ret nz                                        ; $741f: $c0

    inc bc                                        ; $7420: $03
    inc bc                                        ; $7421: $03
    inc b                                         ; $7422: $04
    rlca                                          ; $7423: $07
    dec bc                                        ; $7424: $0b
    rrca                                          ; $7425: $0f
    rrca                                          ; $7426: $0f
    inc c                                         ; $7427: $0c
    dec bc                                        ; $7428: $0b
    rrca                                          ; $7429: $0f
    dec bc                                        ; $742a: $0b
    ld c, $df                                     ; $742b: $0e $df
    call nc, $d8df                                ; $742d: $d4 $df $d8
    ld c, a                                       ; $7430: $4f
    ld c, b                                       ; $7431: $48
    cpl                                           ; $7432: $2f
    add hl, hl                                    ; $7433: $29

jr_020_7434:
    rra                                           ; $7434: $1f
    rla                                           ; $7435: $17
    rra                                           ; $7436: $1f
    rra                                           ; $7437: $1f
    inc bc                                        ; $7438: $03
    ld [bc], a                                    ; $7439: $02
    rrca                                          ; $743a: $0f
    inc c                                         ; $743b: $0c
    dec bc                                        ; $743c: $0b
    ld c, $07                                     ; $743d: $0e $07
    rlca                                          ; $743f: $07
    add b                                         ; $7440: $80
    add b                                         ; $7441: $80
    ld h, b                                       ; $7442: $60
    ldh [rNR10], a                                ; $7443: $e0 $10
    ldh a, [$90]                                  ; $7445: $f0 $90
    ldh a, [$e0]                                  ; $7447: $f0 $e0
    ldh [$f0], a                                  ; $7449: $e0 $f0
    sub b                                         ; $744b: $90
    ldh a, [rNR10]                                ; $744c: $f0 $10
    ldh [$60], a                                  ; $744e: $e0 $60
    ret nz                                        ; $7450: $c0

    ret nz                                        ; $7451: $c0

    jr nz, jr_020_7434                            ; $7452: $20 $e0

    ld [hl], b                                    ; $7454: $70
    ret nc                                        ; $7455: $d0

    ld hl, sp-$18                                 ; $7456: $f8 $e8
    ret c                                         ; $7458: $d8

    ld e, b                                       ; $7459: $58
    ldh a, [$f0]                                  ; $745a: $f0 $f0
    ldh a, [$f0]                                  ; $745c: $f0 $f0
    ld h, b                                       ; $745e: $60
    ld h, b                                       ; $745f: $60
    inc bc                                        ; $7460: $03
    inc bc                                        ; $7461: $03
    inc c                                         ; $7462: $0c
    rrca                                          ; $7463: $0f
    db $10                                        ; $7464: $10
    rra                                           ; $7465: $1f
    db $10                                        ; $7466: $10
    rra                                           ; $7467: $1f
    jr jr_020_7489                                ; $7468: $18 $1f

    inc a                                         ; $746a: $3c
    daa                                           ; $746b: $27
    ccf                                           ; $746c: $3f
    inc hl                                        ; $746d: $23
    rra                                           ; $746e: $1f
    jr @+$11                                      ; $746f: $18 $0f

    rrca                                          ; $7471: $0f
    inc d                                         ; $7472: $14
    rra                                           ; $7473: $1f
    jr c, jr_020_74a5                             ; $7474: $38 $2f

    ld a, a                                       ; $7476: $7f
    ld e, a                                       ; $7477: $5f
    ld l, a                                       ; $7478: $6f
    ld l, c                                       ; $7479: $69
    rrca                                          ; $747a: $0f
    rrca                                          ; $747b: $0f
    rlca                                          ; $747c: $07
    rlca                                          ; $747d: $07

jr_020_747e:
    ld bc, $8001                                  ; $747e: $01 $01 $80
    add b                                         ; $7481: $80
    ld h, b                                       ; $7482: $60
    ldh [rNR10], a                                ; $7483: $e0 $10
    ldh a, [rNR10]                                ; $7485: $f0 $10
    ldh a, [$30]                                  ; $7487: $f0 $30

jr_020_7489:
    ldh a, [$7e]                                  ; $7489: $f0 $7e
    adc $fe                                       ; $748b: $ce $fe
    adc [hl]                                      ; $748d: $8e
    db $f4                                        ; $748e: $f4
    inc [hl]                                      ; $748f: $34
    call c, $1cfc                                 ; $7490: $dc $fc $1c
    db $f4                                        ; $7493: $f4
    inc a                                         ; $7494: $3c
    db $fc                                        ; $7495: $fc
    ldh [$e0], a                                  ; $7496: $e0 $e0
    ldh [rNR41], a                                ; $7498: $e0 $20
    ldh a, [$d0]                                  ; $749a: $f0 $d0
    jr nz, jr_020_747e                            ; $749c: $20 $e0

    ret nz                                        ; $749e: $c0

    ret nz                                        ; $749f: $c0

    nop                                           ; $74a0: $00
    nop                                           ; $74a1: $00
    ld bc, $0201                                  ; $74a2: $01 $01 $02

jr_020_74a5:
    inc bc                                        ; $74a5: $03
    ld [bc], a                                    ; $74a6: $02
    inc bc                                        ; $74a7: $03
    inc bc                                        ; $74a8: $03
    inc bc                                        ; $74a9: $03
    rlca                                          ; $74aa: $07
    inc b                                         ; $74ab: $04
    rlca                                          ; $74ac: $07
    inc b                                         ; $74ad: $04
    inc bc                                        ; $74ae: $03
    inc bc                                        ; $74af: $03
    ld bc, $0301                                  ; $74b0: $01 $01 $03
    inc bc                                        ; $74b3: $03
    inc b                                         ; $74b4: $04
    rlca                                          ; $74b5: $07
    rrca                                          ; $74b6: $0f
    dec bc                                        ; $74b7: $0b
    rrca                                          ; $74b8: $0f
    ld [$0507], sp                                ; $74b9: $08 $07 $05
    ld c, $0b                                     ; $74bc: $0e $0b
    rrca                                          ; $74be: $0f
    rrca                                          ; $74bf: $0f
    ld [hl], b                                    ; $74c0: $70
    ld [hl], b                                    ; $74c1: $70
    adc b                                         ; $74c2: $88
    ld hl, sp+$04                                 ; $74c3: $f8 $04
    db $fc                                        ; $74c5: $fc
    ld [hl-], a                                   ; $74c6: $32
    cp $7a                                        ; $74c7: $fe $7a
    adc $fc                                       ; $74c9: $ce $fc
    db $ec                                        ; $74cb: $ec
    db $f4                                        ; $74cc: $f4
    inc e                                         ; $74cd: $1c
    db $f4                                        ; $74ce: $f4
    inc e                                         ; $74cf: $1c
    ld hl, sp+$08                                 ; $74d0: $f8 $08
    ld hl, sp+$18                                 ; $74d2: $f8 $18
    ldh [$a0], a                                  ; $74d4: $e0 $a0
    ld b, b                                       ; $74d6: $40
    ret nz                                        ; $74d7: $c0

    ldh [$a0], a                                  ; $74d8: $e0 $a0
    ldh a, [$d0]                                  ; $74da: $f0 $d0
    ld a, e                                       ; $74dc: $7b
    ei                                            ; $74dd: $fb
    rst $08                                       ; $74de: $cf
    rst $08                                       ; $74df: $cf
    ld bc, $0601                                  ; $74e0: $01 $01 $06
    rlca                                          ; $74e3: $07
    ld [$0b0f], sp                                ; $74e4: $08 $0f $0b
    rrca                                          ; $74e7: $0f
    rrca                                          ; $74e8: $0f
    inc c                                         ; $74e9: $0c
    rra                                           ; $74ea: $1f
    rla                                           ; $74eb: $17
    ld e, $13                                     ; $74ec: $1e $13
    rrca                                          ; $74ee: $0f
    dec c                                         ; $74ef: $0d
    rlca                                          ; $74f0: $07
    inc b                                         ; $74f1: $04
    dec bc                                        ; $74f2: $0b
    ld c, $0b                                     ; $74f3: $0e $0b
    rrca                                          ; $74f5: $0f
    rlca                                          ; $74f6: $07
    ld b, $07                                     ; $74f7: $06 $07
    rlca                                          ; $74f9: $07
    rrca                                          ; $74fa: $0f
    dec c                                         ; $74fb: $0d
    inc de                                        ; $74fc: $13
    rra                                           ; $74fd: $1f
    rra                                           ; $74fe: $1f
    rra                                           ; $74ff: $1f
    ret nz                                        ; $7500: $c0

    ret nz                                        ; $7501: $c0

    jr nc, @-$0e                                  ; $7502: $30 $f0

    ld [$28f8], sp                                ; $7504: $08 $f8 $28
    ld hl, sp-$08                                 ; $7507: $f8 $f8
    ret c                                         ; $7509: $d8

    ld hl, sp-$08                                 ; $750a: $f8 $f8
    ld c, b                                       ; $750c: $48
    ld hl, sp-$10                                 ; $750d: $f8 $f0
    or b                                          ; $750f: $b0
    ldh a, [$50]                                  ; $7510: $f0 $50
    ld hl, sp+$18                                 ; $7512: $f8 $18
    add sp, $38                                   ; $7514: $e8 $38
    ldh a, [$d0]                                  ; $7516: $f0 $d0
    ldh a, [rSVBK]                                ; $7518: $f0 $70
    ld hl, sp-$08                                 ; $751a: $f8 $f8
    db $e4                                        ; $751c: $e4
    cp h                                          ; $751d: $bc
    db $fc                                        ; $751e: $fc
    db $fc                                        ; $751f: $fc
    ld c, $0e                                     ; $7520: $0e $0e
    ld de, $201f                                  ; $7522: $11 $1f $20
    ccf                                           ; $7525: $3f
    ld c, h                                       ; $7526: $4c
    ld a, a                                       ; $7527: $7f
    ld e, [hl]                                    ; $7528: $5e
    ld [hl], e                                    ; $7529: $73
    ccf                                           ; $752a: $3f
    scf                                           ; $752b: $37
    cpl                                           ; $752c: $2f
    jr c, jr_020_755e                             ; $752d: $38 $2f

    jr c, jr_020_7550                             ; $752f: $38 $1f

    db $10                                        ; $7531: $10
    rra                                           ; $7532: $1f
    jr jr_020_753c                                ; $7533: $18 $07

    dec b                                         ; $7535: $05

jr_020_7536:
    ld [bc], a                                    ; $7536: $02
    inc bc                                        ; $7537: $03
    rlca                                          ; $7538: $07
    dec b                                         ; $7539: $05
    rrca                                          ; $753a: $0f
    dec bc                                        ; $753b: $0b

jr_020_753c:
    sbc $df                                       ; $753c: $de $df
    di                                            ; $753e: $f3
    di                                            ; $753f: $f3
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    add b                                         ; $7542: $80
    add b                                         ; $7543: $80
    ld b, b                                       ; $7544: $40
    ret nz                                        ; $7545: $c0

    ld b, b                                       ; $7546: $40
    ret nz                                        ; $7547: $c0

    ret nz                                        ; $7548: $c0

    ret nz                                        ; $7549: $c0

    ldh [rNR41], a                                ; $754a: $e0 $20
    ldh [rNR41], a                                ; $754c: $e0 $20
    ret nz                                        ; $754e: $c0

    ret nz                                        ; $754f: $c0

jr_020_7550:
    add b                                         ; $7550: $80
    add b                                         ; $7551: $80
    ret nz                                        ; $7552: $c0

    ret nz                                        ; $7553: $c0

    jr nz, jr_020_7536                            ; $7554: $20 $e0

    ldh a, [$d0]                                  ; $7556: $f0 $d0
    ldh a, [rNR10]                                ; $7558: $f0 $10
    ldh [$a0], a                                  ; $755a: $e0 $a0
    ld [hl], b                                    ; $755c: $70
    ret nc                                        ; $755d: $d0

jr_020_755e:
    ldh a, [$f0]                                  ; $755e: $f0 $f0
    inc bc                                        ; $7560: $03
    inc bc                                        ; $7561: $03
    inc c                                         ; $7562: $0c
    rrca                                          ; $7563: $0f

jr_020_7564:
    db $10                                        ; $7564: $10
    rra                                           ; $7565: $1f
    db $10                                        ; $7566: $10
    rra                                           ; $7567: $1f
    inc e                                         ; $7568: $1c
    rra                                           ; $7569: $1f
    rra                                           ; $756a: $1f
    inc de                                        ; $756b: $13
    rra                                           ; $756c: $1f
    db $10                                        ; $756d: $10
    rrca                                          ; $756e: $0f
    inc c                                         ; $756f: $0c
    rrca                                          ; $7570: $0f
    dec bc                                        ; $7571: $0b
    dec b                                         ; $7572: $05
    rlca                                          ; $7573: $07
    rrca                                          ; $7574: $0f
    dec bc                                        ; $7575: $0b
    rlca                                          ; $7576: $07
    ld b, $07                                     ; $7577: $06 $07
    inc b                                         ; $7579: $04
    rrca                                          ; $757a: $0f
    dec c                                         ; $757b: $0d
    inc de                                        ; $757c: $13
    ld e, $1f                                     ; $757d: $1e $1f
    rra                                           ; $757f: $1f
    ret nz                                        ; $7580: $c0

    ret nz                                        ; $7581: $c0

    jr nz, jr_020_7564                            ; $7582: $20 $e0

    db $10                                        ; $7584: $10
    ldh a, [rNR10]                                ; $7585: $f0 $10
    ldh a, [rNR10]                                ; $7587: $f0 $10
    ldh a, [$f8]                                  ; $7589: $f0 $f8
    add sp, -$08                                  ; $758b: $e8 $f8
    ld [$f0f0], sp                                ; $758d: $08 $f0 $f0
    db $10                                        ; $7590: $10
    ldh a, [rNR10]                                ; $7591: $f0 $10
    ldh a, [$f0]                                  ; $7593: $f0 $f0
    ldh a, [$f0]                                  ; $7595: $f0 $f0
    ld d, b                                       ; $7597: $50
    ldh a, [$f0]                                  ; $7598: $f0 $f0
    ldh a, [$90]                                  ; $759a: $f0 $90
    ld hl, sp-$28                                 ; $759c: $f8 $d8
    ld hl, sp-$08                                 ; $759e: $f8 $f8
    nop                                           ; $75a0: $00
    nop                                           ; $75a1: $00
    ld bc, $0201                                  ; $75a2: $01 $01 $02
    inc bc                                        ; $75a5: $03
    ld [bc], a                                    ; $75a6: $02
    inc bc                                        ; $75a7: $03
    inc bc                                        ; $75a8: $03
    inc bc                                        ; $75a9: $03
    rlca                                          ; $75aa: $07
    inc b                                         ; $75ab: $04
    rlca                                          ; $75ac: $07
    inc b                                         ; $75ad: $04
    inc bc                                        ; $75ae: $03
    inc bc                                        ; $75af: $03
    rlca                                          ; $75b0: $07
    rlca                                          ; $75b1: $07
    rlca                                          ; $75b2: $07
    rlca                                          ; $75b3: $07
    ld b, $07                                     ; $75b4: $06 $07
    rrca                                          ; $75b6: $0f
    rrca                                          ; $75b7: $0f
    rrca                                          ; $75b8: $0f
    ld a, [bc]                                    ; $75b9: $0a
    rlca                                          ; $75ba: $07
    dec b                                         ; $75bb: $05
    ld c, $0b                                     ; $75bc: $0e $0b
    rrca                                          ; $75be: $0f
    rrca                                          ; $75bf: $0f
    ld [hl], b                                    ; $75c0: $70
    ld [hl], b                                    ; $75c1: $70
    adc b                                         ; $75c2: $88
    ld hl, sp+$04                                 ; $75c3: $f8 $04
    db $fc                                        ; $75c5: $fc
    ld [hl-], a                                   ; $75c6: $32
    cp $7a                                        ; $75c7: $fe $7a
    adc $fc                                       ; $75c9: $ce $fc
    db $ec                                        ; $75cb: $ec
    db $f4                                        ; $75cc: $f4
    inc e                                         ; $75cd: $1c
    db $f4                                        ; $75ce: $f4
    inc e                                         ; $75cf: $1c
    ld hl, sp+$08                                 ; $75d0: $f8 $08
    ld hl, sp+$18                                 ; $75d2: $f8 $18
    ldh [$a0], a                                  ; $75d4: $e0 $a0
    ldh [$e0], a                                  ; $75d6: $e0 $e0
    and b                                         ; $75d8: $a0
    ldh [$c0], a                                  ; $75d9: $e0 $c0
    ret nz                                        ; $75db: $c0

    ld b, b                                       ; $75dc: $40
    ret nz                                        ; $75dd: $c0

    ret nz                                        ; $75de: $c0

    ret nz                                        ; $75df: $c0

    ld bc, $0601                                  ; $75e0: $01 $01 $06
    rlca                                          ; $75e3: $07
    ld [$0b0f], sp                                ; $75e4: $08 $0f $0b
    rrca                                          ; $75e7: $0f
    rrca                                          ; $75e8: $0f
    inc c                                         ; $75e9: $0c
    rra                                           ; $75ea: $1f
    rla                                           ; $75eb: $17
    ld e, $13                                     ; $75ec: $1e $13
    rrca                                          ; $75ee: $0f
    dec c                                         ; $75ef: $0d
    rst $08                                       ; $75f0: $cf
    call z, $eeeb                                 ; $75f1: $cc $eb $ee

jr_020_75f4:
    ccf                                           ; $75f4: $3f
    ccf                                           ; $75f5: $3f
    rrca                                          ; $75f6: $0f
    dec c                                         ; $75f7: $0d
    rlca                                          ; $75f8: $07
    rlca                                          ; $75f9: $07
    ld c, $0f                                     ; $75fa: $0e $0f
    inc de                                        ; $75fc: $13
    rra                                           ; $75fd: $1f
    ld e, $1e                                     ; $75fe: $1e $1e
    ret nz                                        ; $7600: $c0

    ret nz                                        ; $7601: $c0

    jr nc, jr_020_75f4                            ; $7602: $30 $f0

    ld [$28f8], sp                                ; $7604: $08 $f8 $28
    ld hl, sp-$08                                 ; $7607: $f8 $f8
    ret c                                         ; $7609: $d8

    ld hl, sp-$08                                 ; $760a: $f8 $f8
    ld c, b                                       ; $760c: $48
    ld hl, sp-$10                                 ; $760d: $f8 $f0
    or b                                          ; $760f: $b0
    ldh a, [$50]                                  ; $7610: $f0 $50
    ldh a, [rNR10]                                ; $7612: $f0 $10
    ldh a, [$30]                                  ; $7614: $f0 $30
    ret nc                                        ; $7616: $d0

    ldh a, [$f0]                                  ; $7617: $f0 $f0
    ld [hl], b                                    ; $7619: $70
    ld hl, sp-$08                                 ; $761a: $f8 $f8
    db $e4                                        ; $761c: $e4
    cp h                                          ; $761d: $bc
    ld a, h                                       ; $761e: $7c
    ld a, h                                       ; $761f: $7c
    ld c, $0e                                     ; $7620: $0e $0e
    ld de, $201f                                  ; $7622: $11 $1f $20
    ccf                                           ; $7625: $3f
    ld c, h                                       ; $7626: $4c
    ld a, a                                       ; $7627: $7f
    ld e, [hl]                                    ; $7628: $5e
    ld [hl], e                                    ; $7629: $73
    ccf                                           ; $762a: $3f
    scf                                           ; $762b: $37
    cpl                                           ; $762c: $2f
    jr c, jr_020_765e                             ; $762d: $38 $2f

    jr c, jr_020_7650                             ; $762f: $38 $1f

    db $10                                        ; $7631: $10
    rra                                           ; $7632: $1f
    jr @+$09                                      ; $7633: $18 $07

    dec b                                         ; $7635: $05
    ld b, $07                                     ; $7636: $06 $07
    inc bc                                        ; $7638: $03
    inc bc                                        ; $7639: $03
    ld bc, $0201                                  ; $763a: $01 $01 $02
    inc bc                                        ; $763d: $03
    inc bc                                        ; $763e: $03
    inc bc                                        ; $763f: $03
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    add b                                         ; $7642: $80
    add b                                         ; $7643: $80
    ld b, b                                       ; $7644: $40
    ret nz                                        ; $7645: $c0

    ld b, b                                       ; $7646: $40
    ret nz                                        ; $7647: $c0

    ret nz                                        ; $7648: $c0

    ret nz                                        ; $7649: $c0

    ldh [rNR41], a                                ; $764a: $e0 $20
    ldh [rNR41], a                                ; $764c: $e0 $20
    ret nz                                        ; $764e: $c0

    ret nz                                        ; $764f: $c0

jr_020_7650:
    ldh [$e0], a                                  ; $7650: $e0 $e0
    and b                                         ; $7652: $a0
    ldh [rNR41], a                                ; $7653: $e0 $20
    ldh [$f0], a                                  ; $7655: $e0 $f0
    ret nc                                        ; $7657: $d0

    ldh a, [rNR10]                                ; $7658: $f0 $10
    ldh [$a0], a                                  ; $765a: $e0 $a0
    ld [hl], b                                    ; $765c: $70
    ret nc                                        ; $765d: $d0

jr_020_765e:
    ldh a, [$f0]                                  ; $765e: $f0 $f0
    inc bc                                        ; $7660: $03
    inc bc                                        ; $7661: $03
    inc c                                         ; $7662: $0c
    rrca                                          ; $7663: $0f

jr_020_7664:
    db $10                                        ; $7664: $10
    rra                                           ; $7665: $1f
    db $10                                        ; $7666: $10
    rra                                           ; $7667: $1f
    inc e                                         ; $7668: $1c
    rra                                           ; $7669: $1f
    rra                                           ; $766a: $1f
    inc de                                        ; $766b: $13
    rra                                           ; $766c: $1f
    db $10                                        ; $766d: $10
    rrca                                          ; $766e: $0f
    inc c                                         ; $766f: $0c
    rrca                                          ; $7670: $0f
    dec bc                                        ; $7671: $0b
    ld b, $07                                     ; $7672: $06 $07
    inc bc                                        ; $7674: $03
    inc bc                                        ; $7675: $03
    inc bc                                        ; $7676: $03
    ld [bc], a                                    ; $7677: $02
    rlca                                          ; $7678: $07
    rlca                                          ; $7679: $07
    rrca                                          ; $767a: $0f
    dec c                                         ; $767b: $0d
    inc de                                        ; $767c: $13
    ld e, $1f                                     ; $767d: $1e $1f
    rra                                           ; $767f: $1f
    ret nz                                        ; $7680: $c0

    ret nz                                        ; $7681: $c0

    jr nz, jr_020_7664                            ; $7682: $20 $e0

    db $10                                        ; $7684: $10
    ldh a, [rNR10]                                ; $7685: $f0 $10
    ldh a, [rNR10]                                ; $7687: $f0 $10
    ldh a, [$f8]                                  ; $7689: $f0 $f8
    add sp, -$08                                  ; $768b: $e8 $f8
    ld [$f0f0], sp                                ; $768d: $08 $f0 $f0
    dec hl                                        ; $7690: $2b
    ei                                            ; $7691: $fb
    rra                                           ; $7692: $1f
    rst $38                                       ; $7693: $ff
    db $fc                                        ; $7694: $fc
    db $ec                                        ; $7695: $ec
    ldh a, [$b0]                                  ; $7696: $f0 $b0
    ldh a, [$d0]                                  ; $7698: $f0 $d0
    ldh a, [$90]                                  ; $769a: $f0 $90
    ld hl, sp-$28                                 ; $769c: $f8 $d8
    ld a, b                                       ; $769e: $78
    ld a, b                                       ; $769f: $78
    nop                                           ; $76a0: $00
    nop                                           ; $76a1: $00
    ld bc, $0201                                  ; $76a2: $01 $01 $02
    inc bc                                        ; $76a5: $03
    ld h, d                                       ; $76a6: $62
    ld h, e                                       ; $76a7: $63
    ld h, e                                       ; $76a8: $63
    ld h, e                                       ; $76a9: $63
    ld h, a                                       ; $76aa: $67
    ld h, h                                       ; $76ab: $64
    scf                                           ; $76ac: $37
    inc [hl]                                      ; $76ad: $34
    rra                                           ; $76ae: $1f
    rra                                           ; $76af: $1f
    rrca                                          ; $76b0: $0f
    dec bc                                        ; $76b1: $0b
    dec d                                         ; $76b2: $15
    rra                                           ; $76b3: $1f
    rra                                           ; $76b4: $1f
    ld e, $0f                                     ; $76b5: $1e $0f
    dec bc                                        ; $76b7: $0b
    rrca                                          ; $76b8: $0f
    add hl, bc                                    ; $76b9: $09
    rlca                                          ; $76ba: $07
    dec b                                         ; $76bb: $05
    ld c, $0b                                     ; $76bc: $0e $0b
    rrca                                          ; $76be: $0f
    rrca                                          ; $76bf: $0f
    ld [hl], b                                    ; $76c0: $70
    ld [hl], b                                    ; $76c1: $70
    adc b                                         ; $76c2: $88
    ld hl, sp+$04                                 ; $76c3: $f8 $04
    db $fc                                        ; $76c5: $fc
    ld [hl-], a                                   ; $76c6: $32
    cp $7a                                        ; $76c7: $fe $7a
    adc $fc                                       ; $76c9: $ce $fc
    db $ec                                        ; $76cb: $ec
    db $f4                                        ; $76cc: $f4
    inc e                                         ; $76cd: $1c
    db $f4                                        ; $76ce: $f4
    inc e                                         ; $76cf: $1c
    ld hl, sp+$08                                 ; $76d0: $f8 $08
    ld hl, sp+$18                                 ; $76d2: $f8 $18
    ldh [$a0], a                                  ; $76d4: $e0 $a0
    ld b, b                                       ; $76d6: $40
    ret nz                                        ; $76d7: $c0

    add b                                         ; $76d8: $80
    add b                                         ; $76d9: $80
    ret nz                                        ; $76da: $c0

    ld b, b                                       ; $76db: $40
    ld b, b                                       ; $76dc: $40
    ret nz                                        ; $76dd: $c0

    ret nz                                        ; $76de: $c0

    ret nz                                        ; $76df: $c0

    ld bc, $0601                                  ; $76e0: $01 $01 $06
    rlca                                          ; $76e3: $07
    ld [$cb0f], sp                                ; $76e4: $08 $0f $cb
    rst $08                                       ; $76e7: $cf
    rst $08                                       ; $76e8: $cf
    call z, $d7df                                 ; $76e9: $cc $df $d7
    ld a, [hl]                                    ; $76ec: $7e
    ld [hl], e                                    ; $76ed: $73
    cpl                                           ; $76ee: $2f
    dec l                                         ; $76ef: $2d
    ccf                                           ; $76f0: $3f
    inc a                                         ; $76f1: $3c
    rla                                           ; $76f2: $17
    ld e, $0f                                     ; $76f3: $1e $0f
    dec bc                                        ; $76f5: $0b
    ld b, $07                                     ; $76f6: $06 $07
    rlca                                          ; $76f8: $07
    rlca                                          ; $76f9: $07
    rrca                                          ; $76fa: $0f
    dec c                                         ; $76fb: $0d
    inc de                                        ; $76fc: $13
    rra                                           ; $76fd: $1f
    ld e, $1e                                     ; $76fe: $1e $1e
    ret nz                                        ; $7700: $c0

    ret nz                                        ; $7701: $c0

    jr nc, @-$0e                                  ; $7702: $30 $f0

    ld [$28f8], sp                                ; $7704: $08 $f8 $28
    ld hl, sp-$08                                 ; $7707: $f8 $f8
    ret c                                         ; $7709: $d8

    ld hl, sp-$08                                 ; $770a: $f8 $f8
    ld c, b                                       ; $770c: $48
    ld hl, sp-$10                                 ; $770d: $f8 $f0
    or b                                          ; $770f: $b0
    ldh a, [$50]                                  ; $7710: $f0 $50
    ldh a, [rNR10]                                ; $7712: $f0 $10
    ldh [rNR41], a                                ; $7714: $e0 $20
    ldh [$e0], a                                  ; $7716: $e0 $e0
    ldh a, [$f0]                                  ; $7718: $f0 $f0
    ld hl, sp-$28                                 ; $771a: $f8 $d8
    db $e4                                        ; $771c: $e4
    cp h                                          ; $771d: $bc
    ld a, h                                       ; $771e: $7c
    ld a, h                                       ; $771f: $7c
    ld c, $0e                                     ; $7720: $0e $0e
    ld de, $201f                                  ; $7722: $11 $1f $20
    ccf                                           ; $7725: $3f
    ld c, h                                       ; $7726: $4c
    ld a, a                                       ; $7727: $7f
    ld e, [hl]                                    ; $7728: $5e
    ld [hl], e                                    ; $7729: $73
    ccf                                           ; $772a: $3f
    scf                                           ; $772b: $37
    cpl                                           ; $772c: $2f
    jr c, jr_020_775e                             ; $772d: $38 $2f

    jr c, jr_020_7750                             ; $772f: $38 $1f

    db $10                                        ; $7731: $10
    rra                                           ; $7732: $1f
    jr @+$09                                      ; $7733: $18 $07

    dec b                                         ; $7735: $05
    inc bc                                        ; $7736: $03
    inc bc                                        ; $7737: $03
    ld bc, $0101                                  ; $7738: $01 $01 $01
    ld bc, $0302                                  ; $773b: $01 $02 $03
    inc bc                                        ; $773e: $03
    inc bc                                        ; $773f: $03
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    add b                                         ; $7742: $80
    add b                                         ; $7743: $80
    ld b, b                                       ; $7744: $40
    ret nz                                        ; $7745: $c0

    ld b, [hl]                                    ; $7746: $46
    add $c6                                       ; $7747: $c6 $c6
    add $e6                                       ; $7749: $c6 $e6
    ld h, $ec                                     ; $774b: $26 $ec
    inc l                                         ; $774d: $2c
    ld hl, sp-$08                                 ; $774e: $f8 $f8

jr_020_7750:
    ld hl, sp-$18                                 ; $7750: $f8 $e8
    or b                                          ; $7752: $b0
    ldh a, [$60]                                  ; $7753: $f0 $60
    ldh [$f0], a                                  ; $7755: $e0 $f0
    sub b                                         ; $7757: $90
    ldh a, [rNR10]                                ; $7758: $f0 $10
    ldh [$a0], a                                  ; $775a: $e0 $a0
    ld [hl], b                                    ; $775c: $70
    ret nc                                        ; $775d: $d0

jr_020_775e:
    ldh a, [$f0]                                  ; $775e: $f0 $f0
    inc bc                                        ; $7760: $03
    inc bc                                        ; $7761: $03
    inc c                                         ; $7762: $0c
    rrca                                          ; $7763: $0f

jr_020_7764:
    db $10                                        ; $7764: $10
    rra                                           ; $7765: $1f
    db $10                                        ; $7766: $10
    rra                                           ; $7767: $1f
    inc e                                         ; $7768: $1c
    rra                                           ; $7769: $1f
    rra                                           ; $776a: $1f
    inc de                                        ; $776b: $13
    rra                                           ; $776c: $1f
    db $10                                        ; $776d: $10
    rrca                                          ; $776e: $0f
    inc c                                         ; $776f: $0c
    rrca                                          ; $7770: $0f
    dec bc                                        ; $7771: $0b
    ld b, $07                                     ; $7772: $06 $07
    inc bc                                        ; $7774: $03
    inc bc                                        ; $7775: $03
    inc bc                                        ; $7776: $03
    ld [bc], a                                    ; $7777: $02
    rlca                                          ; $7778: $07
    rlca                                          ; $7779: $07
    rrca                                          ; $777a: $0f
    dec c                                         ; $777b: $0d

jr_020_777c:
    inc de                                        ; $777c: $13
    ld e, $1f                                     ; $777d: $1e $1f
    rra                                           ; $777f: $1f
    ret nz                                        ; $7780: $c0

    ret nz                                        ; $7781: $c0

    jr nz, jr_020_7764                            ; $7782: $20 $e0

    db $10                                        ; $7784: $10
    ldh a, [rNR13]                                ; $7785: $f0 $13
    di                                            ; $7787: $f3
    inc de                                        ; $7788: $13
    di                                            ; $7789: $f3
    ei                                            ; $778a: $fb
    db $eb                                        ; $778b: $eb
    cp $0e                                        ; $778c: $fe $0e
    db $fc                                        ; $778e: $fc
    db $fc                                        ; $778f: $fc
    ld e, h                                       ; $7790: $5c
    db $f4                                        ; $7791: $f4
    jr c, jr_020_777c                             ; $7792: $38 $e8

    ldh a, [$f0]                                  ; $7794: $f0 $f0
    ldh a, [$b0]                                  ; $7796: $f0 $b0
    ldh a, [$d0]                                  ; $7798: $f0 $d0
    ldh a, [$90]                                  ; $779a: $f0 $90
    ld hl, sp-$28                                 ; $779c: $f8 $d8
    ld a, b                                       ; $779e: $78
    ld a, b                                       ; $779f: $78
    inc bc                                        ; $77a0: $03
    inc bc                                        ; $77a1: $03
    inc b                                         ; $77a2: $04
    rlca                                          ; $77a3: $07
    ret z                                         ; $77a4: $c8

    rst $08                                       ; $77a5: $cf
    ret z                                         ; $77a6: $c8

    rst $08                                       ; $77a7: $cf
    call c, $7cd7                                 ; $77a8: $dc $d7 $7c
    ld [hl], a                                    ; $77ab: $77
    cpl                                           ; $77ac: $2f
    dec hl                                        ; $77ad: $2b
    ccf                                           ; $77ae: $3f
    jr c, jr_020_77d0                             ; $77af: $38 $1f

    rla                                           ; $77b1: $17
    inc d                                         ; $77b2: $14
    rra                                           ; $77b3: $1f

jr_020_77b4:
    rrca                                          ; $77b4: $0f
    rrca                                          ; $77b5: $0f
    rrca                                          ; $77b6: $0f
    ld a, [bc]                                    ; $77b7: $0a
    rrca                                          ; $77b8: $0f
    add hl, bc                                    ; $77b9: $09
    rlca                                          ; $77ba: $07
    dec b                                         ; $77bb: $05
    rrca                                          ; $77bc: $0f
    dec bc                                        ; $77bd: $0b
    rrca                                          ; $77be: $0f
    rrca                                          ; $77bf: $0f
    ret nz                                        ; $77c0: $c0

    ret nz                                        ; $77c1: $c0

    jr nc, jr_020_77b4                            ; $77c2: $30 $f0

    ld [$08f8], sp                                ; $77c4: $08 $f8 $08
    ld hl, sp+$18                                 ; $77c7: $f8 $18
    ld hl, sp+$78                                 ; $77c9: $f8 $78
    add sp, -$08                                  ; $77cb: $e8 $f8
    xor b                                         ; $77cd: $a8
    ldh a, [rNR10]                                ; $77ce: $f0 $10

jr_020_77d0:
    ldh a, [rNR10]                                ; $77d0: $f0 $10
    ldh [$a0], a                                  ; $77d2: $e0 $a0
    ld b, b                                       ; $77d4: $40
    ret nz                                        ; $77d5: $c0

    ret nz                                        ; $77d6: $c0

    ret nz                                        ; $77d7: $c0

    ret nz                                        ; $77d8: $c0

    ret nz                                        ; $77d9: $c0

    ld b, b                                       ; $77da: $40
    ret nz                                        ; $77db: $c0

    and b                                         ; $77dc: $a0
    ldh [$e0], a                                  ; $77dd: $e0 $e0
    ldh [rP1], a                                  ; $77df: $e0 $00
    nop                                           ; $77e1: $00
    inc bc                                        ; $77e2: $03
    inc bc                                        ; $77e3: $03
    call nz, $c8c7                                ; $77e4: $c4 $c7 $c8
    rst $08                                       ; $77e7: $cf
    ret z                                         ; $77e8: $c8

    rst $08                                       ; $77e9: $cf
    ld h, a                                       ; $77ea: $67
    ld h, a                                       ; $77eb: $67
    scf                                           ; $77ec: $37
    inc [hl]                                      ; $77ed: $34
    rra                                           ; $77ee: $1f
    inc e                                         ; $77ef: $1c
    rrca                                          ; $77f0: $0f
    rrca                                          ; $77f1: $0f
    rrca                                          ; $77f2: $0f
    dec bc                                        ; $77f3: $0b
    ld b, $07                                     ; $77f4: $06 $07
    inc bc                                        ; $77f6: $03
    inc bc                                        ; $77f7: $03
    rlca                                          ; $77f8: $07
    inc b                                         ; $77f9: $04
    dec bc                                        ; $77fa: $0b
    ld c, $09                                     ; $77fb: $0e $09
    rrca                                          ; $77fd: $0f
    rlca                                          ; $77fe: $07
    rlca                                          ; $77ff: $07
    ldh [$e0], a                                  ; $7800: $e0 $e0
    db $10                                        ; $7802: $10
    ldh a, [$08]                                  ; $7803: $f0 $08
    ld hl, sp+$68                                 ; $7805: $f8 $68
    ld hl, sp-$08                                 ; $7807: $f8 $f8
    sbc b                                         ; $7809: $98
    add sp, -$08                                  ; $780a: $e8 $f8
    add sp, -$48                                  ; $780c: $e8 $b8
    db $fc                                        ; $780e: $fc
    inc d                                         ; $780f: $14
    ld hl, sp+$08                                 ; $7810: $f8 $08
    ld hl, sp-$78                                 ; $7812: $f8 $88
    ld a, b                                       ; $7814: $78
    add sp, -$30                                  ; $7815: $e8 $d0
    ldh a, [$f0]                                  ; $7817: $f0 $f0
    ld [hl], b                                    ; $7819: $70
    ld hl, sp-$28                                 ; $781a: $f8 $d8
    db $e4                                        ; $781c: $e4
    cp h                                          ; $781d: $bc
    ld a, h                                       ; $781e: $7c
    ld a, h                                       ; $781f: $7c
    rlca                                          ; $7820: $07
    rlca                                          ; $7821: $07
    ld [$100f], sp                                ; $7822: $08 $0f $10
    rra                                           ; $7825: $1f
    dec l                                         ; $7826: $2d
    ccf                                           ; $7827: $3f
    cpl                                           ; $7828: $2f
    dec sp                                        ; $7829: $3b
    ld e, $1f                                     ; $782a: $1e $1f
    inc de                                        ; $782c: $13
    rra                                           ; $782d: $1f
    rrca                                          ; $782e: $0f
    dec c                                         ; $782f: $0d
    rrca                                          ; $7830: $0f
    ld a, [bc]                                    ; $7831: $0a
    rlca                                          ; $7832: $07
    inc b                                         ; $7833: $04
    inc bc                                        ; $7834: $03
    ld [bc], a                                    ; $7835: $02
    inc bc                                        ; $7836: $03
    inc bc                                        ; $7837: $03
    rlca                                          ; $7838: $07
    dec b                                         ; $7839: $05
    rlca                                          ; $783a: $07
    rlca                                          ; $783b: $07
    dec b                                         ; $783c: $05
    rlca                                          ; $783d: $07
    inc bc                                        ; $783e: $03
    inc bc                                        ; $783f: $03
    add b                                         ; $7840: $80
    add b                                         ; $7841: $80
    ld b, b                                       ; $7842: $40
    ret nz                                        ; $7843: $c0

    and e                                         ; $7844: $a3
    db $e3                                        ; $7845: $e3
    di                                            ; $7846: $f3
    ld [hl], e                                    ; $7847: $73
    ei                                            ; $7848: $fb
    db $eb                                        ; $7849: $eb
    ld a, d                                       ; $784a: $7a
    jp z, $96f6                                   ; $784b: $ca $f6 $96

jr_020_784e:
    db $f4                                        ; $784e: $f4
    inc d                                         ; $784f: $14
    db $ec                                        ; $7850: $ec
    inc l                                         ; $7851: $2c
    db $fc                                        ; $7852: $fc
    inc [hl]                                      ; $7853: $34
    ld hl, sp+$68                                 ; $7854: $f8 $68
    cp b                                          ; $7856: $b8
    ld hl, sp-$10                                 ; $7857: $f8 $f0
    ldh a, [$f0]                                  ; $7859: $f0 $f0
    ret nc                                        ; $785b: $d0

    jr nc, jr_020_784e                            ; $785c: $30 $f0

    ldh a, [$f0]                                  ; $785e: $f0 $f0
    rlca                                          ; $7860: $07
    rlca                                          ; $7861: $07
    ld [$160f], sp                                ; $7862: $08 $0f $16
    rra                                           ; $7865: $1f
    rra                                           ; $7866: $1f
    add hl, de                                    ; $7867: $19
    rra                                           ; $7868: $1f
    rra                                           ; $7869: $1f
    rla                                           ; $786a: $17
    dec e                                         ; $786b: $1d
    rla                                           ; $786c: $17
    inc e                                         ; $786d: $1c
    rrca                                          ; $786e: $0f
    ld [$0407], sp                                ; $786f: $08 $07 $04
    rlca                                          ; $7872: $07
    dec b                                         ; $7873: $05
    inc bc                                        ; $7874: $03
    inc bc                                        ; $7875: $03
    inc bc                                        ; $7876: $03
    inc bc                                        ; $7877: $03
    rlca                                          ; $7878: $07
    inc b                                         ; $7879: $04
    rrca                                          ; $787a: $0f
    dec c                                         ; $787b: $0d
    inc de                                        ; $787c: $13
    ld e, $1f                                     ; $787d: $1e $1f
    rra                                           ; $787f: $1f
    add b                                         ; $7880: $80
    add b                                         ; $7881: $80
    ld h, b                                       ; $7882: $60
    ldh [rNR13], a                                ; $7883: $e0 $13
    di                                            ; $7885: $f3
    ld [hl], e                                    ; $7886: $73
    di                                            ; $7887: $f3
    di                                            ; $7888: $f3
    sub e                                         ; $7889: $93
    ld a, [c]                                     ; $788a: $f2
    ld [de], a                                    ; $788b: $12
    and $66                                       ; $788c: $e6 $66
    db $fc                                        ; $788e: $fc
    ld a, h                                       ; $788f: $7c
    call c, $f8f4                                 ; $7890: $dc $f4 $f8
    cp b                                          ; $7893: $b8
    ld e, b                                       ; $7894: $58
    ld hl, sp-$10                                 ; $7895: $f8 $f0
    ldh a, [$f0]                                  ; $7897: $f0 $f0
    ret nc                                        ; $7899: $d0

    add sp, -$48                                  ; $789a: $e8 $b8
    ret c                                         ; $789c: $d8

    ld hl, sp+$70                                 ; $789d: $f8 $70
    ld [hl], b                                    ; $789f: $70
    nop                                           ; $78a0: $00
    nop                                           ; $78a1: $00
    ld bc, $0601                                  ; $78a2: $01 $01 $06
    rlca                                          ; $78a5: $07

jr_020_78a6:
    ld [$090f], sp                                ; $78a6: $08 $0f $09
    rrca                                          ; $78a9: $0f
    rlca                                          ; $78aa: $07
    rlca                                          ; $78ab: $07
    rrca                                          ; $78ac: $0f
    add hl, bc                                    ; $78ad: $09
    rrca                                          ; $78ae: $0f
    ld [$0607], sp                                ; $78af: $08 $07 $06
    inc bc                                        ; $78b2: $03
    inc bc                                        ; $78b3: $03
    ld c, $0b                                     ; $78b4: $0e $0b
    rra                                           ; $78b6: $1f
    rla                                           ; $78b7: $17
    dec de                                        ; $78b8: $1b
    ld a, [de]                                    ; $78b9: $1a
    rrca                                          ; $78ba: $0f
    rrca                                          ; $78bb: $0f
    rrca                                          ; $78bc: $0f
    rrca                                          ; $78bd: $0f
    ld b, $06                                     ; $78be: $06 $06
    nop                                           ; $78c0: $00
    nop                                           ; $78c1: $00
    ret nz                                        ; $78c2: $c0

    ret nz                                        ; $78c3: $c0

    jr nz, jr_020_78a6                            ; $78c4: $20 $e0

    ret nc                                        ; $78c6: $d0

    ldh a, [$f0]                                  ; $78c7: $f0 $f0
    jr nc, @-$2e                                  ; $78c9: $30 $d0

    ldh a, [$d0]                                  ; $78cb: $f0 $d0
    ld [hl], b                                    ; $78cd: $70
    ld hl, sp+$28                                 ; $78ce: $f8 $28
    ld hl, sp+$18                                 ; $78d0: $f8 $18
    ldh a, [rNR10]                                ; $78d2: $f0 $10
    ld hl, sp-$18                                 ; $78d4: $f8 $e8
    ld hl, sp-$08                                 ; $78d6: $f8 $f8
    ret nz                                        ; $78d8: $c0

    ld b, b                                       ; $78d9: $40
    ldh a, [$30]                                  ; $78da: $f0 $30
    ret nc                                        ; $78dc: $d0

    ld [hl], b                                    ; $78dd: $70
    ldh [$e0], a                                  ; $78de: $e0 $e0
    nop                                           ; $78e0: $00
    nop                                           ; $78e1: $00
    inc bc                                        ; $78e2: $03
    inc bc                                        ; $78e3: $03
    inc c                                         ; $78e4: $0c
    rrca                                          ; $78e5: $0f
    inc d                                         ; $78e6: $14
    rra                                           ; $78e7: $1f
    rra                                           ; $78e8: $1f
    dec de                                        ; $78e9: $1b
    rra                                           ; $78ea: $1f
    rra                                           ; $78eb: $1f
    add hl, sp                                    ; $78ec: $39
    cpl                                           ; $78ed: $2f
    ccf                                           ; $78ee: $3f
    ld h, $1f                                     ; $78ef: $26 $1f
    add hl, de                                    ; $78f1: $19
    ccf                                           ; $78f2: $3f
    jr c, jr_020_7970                             ; $78f3: $38 $7b

    ld a, a                                       ; $78f5: $7f
    ld c, a                                       ; $78f6: $4f
    ld c, a                                       ; $78f7: $4f
    rst $08                                       ; $78f8: $cf
    ret                                           ; $78f9: $c9


    rst $18                                       ; $78fa: $df

jr_020_78fb:
    sub $09                                       ; $78fb: $d6 $09
    rrca                                          ; $78fd: $0f
    rlca                                          ; $78fe: $07
    rlca                                          ; $78ff: $07
    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    add b                                         ; $7902: $80
    add b                                         ; $7903: $80
    ld h, b                                       ; $7904: $60
    ldh [$d0], a                                  ; $7905: $e0 $d0
    ldh a, [$f0]                                  ; $7907: $f0 $f0
    jr nc, jr_020_78fb                            ; $7909: $30 $f0

    ldh a, [$38]                                  ; $790b: $f0 $38
    add sp, -$08                                  ; $790d: $e8 $f8
    ret z                                         ; $790f: $c8

    ldh a, [$30]                                  ; $7910: $f0 $30
    ldh [rNR41], a                                ; $7912: $e0 $20
    cp b                                          ; $7914: $b8
    add sp, -$04                                  ; $7915: $e8 $fc
    db $f4                                        ; $7917: $f4
    db $ec                                        ; $7918: $ec
    inc l                                         ; $7919: $2c
    ldh [$e0], a                                  ; $791a: $e0 $e0
    ret nz                                        ; $791c: $c0

    ret nz                                        ; $791d: $c0

    nop                                           ; $791e: $00
    nop                                           ; $791f: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    inc bc                                        ; $7922: $03
    inc bc                                        ; $7923: $03
    inc b                                         ; $7924: $04
    rlca                                          ; $7925: $07
    dec bc                                        ; $7926: $0b
    rrca                                          ; $7927: $0f
    rrca                                          ; $7928: $0f
    inc c                                         ; $7929: $0c
    dec bc                                        ; $792a: $0b

jr_020_792b:
    rrca                                          ; $792b: $0f
    dec bc                                        ; $792c: $0b
    ld c, $1f                                     ; $792d: $0e $1f
    inc d                                         ; $792f: $14
    rra                                           ; $7930: $1f
    jr jr_020_7942                                ; $7931: $18 $0f

    ld [$0607], sp                                ; $7933: $08 $07 $06
    rlca                                          ; $7936: $07
    dec b                                         ; $7937: $05
    inc bc                                        ; $7938: $03
    ld [bc], a                                    ; $7939: $02
    rrca                                          ; $793a: $0f
    rrca                                          ; $793b: $0f
    rrca                                          ; $793c: $0f
    rrca                                          ; $793d: $0f
    ld b, $06                                     ; $793e: $06 $06
    nop                                           ; $7940: $00
    nop                                           ; $7941: $00

jr_020_7942:
    add b                                         ; $7942: $80
    add b                                         ; $7943: $80
    ld h, b                                       ; $7944: $60
    ldh [rNR10], a                                ; $7945: $e0 $10
    ldh a, [$90]                                  ; $7947: $f0 $90
    ldh a, [$e0]                                  ; $7949: $f0 $e0
    ldh [$f0], a                                  ; $794b: $e0 $f0
    sub b                                         ; $794d: $90
    ldh a, [rNR10]                                ; $794e: $f0 $10
    ldh [$60], a                                  ; $7950: $e0 $60
    ret nz                                        ; $7952: $c0

    ret nz                                        ; $7953: $c0

    or b                                          ; $7954: $b0
    ldh a, [$f0]                                  ; $7955: $f0 $f0
    ldh a, [$e0]                                  ; $7957: $f0 $e0
    jr nz, jr_020_792b                            ; $7959: $20 $d0

    ld [hl], b                                    ; $795b: $70
    sub b                                         ; $795c: $90
    ldh a, [$e0]                                  ; $795d: $f0 $e0
    ldh [rP1], a                                  ; $795f: $e0 $00
    nop                                           ; $7961: $00
    inc bc                                        ; $7962: $03
    inc bc                                        ; $7963: $03
    inc c                                         ; $7964: $0c
    rrca                                          ; $7965: $0f
    db $10                                        ; $7966: $10
    rra                                           ; $7967: $1f
    db $10                                        ; $7968: $10
    rra                                           ; $7969: $1f
    jr jr_020_798b                                ; $796a: $18 $1f

    inc a                                         ; $796c: $3c
    daa                                           ; $796d: $27
    ccf                                           ; $796e: $3f
    inc hl                                        ; $796f: $23

jr_020_7970:
    rra                                           ; $7970: $1f
    jr jr_020_79aa                                ; $7971: $18 $37

    ccf                                           ; $7973: $3f
    ld a, b                                       ; $7974: $78
    ld a, a                                       ; $7975: $7f
    rrca                                          ; $7976: $0f
    rrca                                          ; $7977: $0f
    rrca                                          ; $7978: $0f
    add hl, bc                                    ; $7979: $09
    rra                                           ; $797a: $1f
    rla                                           ; $797b: $17
    add hl, bc                                    ; $797c: $09
    rrca                                          ; $797d: $0f
    rlca                                          ; $797e: $07
    rlca                                          ; $797f: $07
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    add b                                         ; $7982: $80
    add b                                         ; $7983: $80
    ld h, b                                       ; $7984: $60
    ldh [rNR10], a                                ; $7985: $e0 $10
    ldh a, [rNR10]                                ; $7987: $f0 $10
    ldh a, [$30]                                  ; $7989: $f0 $30

jr_020_798b:
    ldh a, [$78]                                  ; $798b: $f0 $78
    ret z                                         ; $798d: $c8

    ld hl, sp-$78                                 ; $798e: $f8 $88
    ldh a, [$30]                                  ; $7990: $f0 $30
    ldh [$e0], a                                  ; $7992: $e0 $e0
    ld a, $ee                                     ; $7994: $3e $ee
    cp $f6                                        ; $7996: $fe $f6
    db $ec                                        ; $7998: $ec
    inc l                                         ; $7999: $2c
    ldh [$e0], a                                  ; $799a: $e0 $e0
    ret nz                                        ; $799c: $c0

    ret nz                                        ; $799d: $c0

    nop                                           ; $799e: $00
    nop                                           ; $799f: $00
    nop                                           ; $79a0: $00
    nop                                           ; $79a1: $00
    inc bc                                        ; $79a2: $03
    inc bc                                        ; $79a3: $03
    inc b                                         ; $79a4: $04
    rlca                                          ; $79a5: $07
    inc b                                         ; $79a6: $04
    rlca                                          ; $79a7: $07
    inc bc                                        ; $79a8: $03
    inc bc                                        ; $79a9: $03

jr_020_79aa:
    rlca                                          ; $79aa: $07
    inc b                                         ; $79ab: $04
    rlca                                          ; $79ac: $07
    inc b                                         ; $79ad: $04
    inc bc                                        ; $79ae: $03
    inc bc                                        ; $79af: $03
    ld bc, $0401                                  ; $79b0: $01 $01 $04
    rlca                                          ; $79b3: $07
    ld c, $0b                                     ; $79b4: $0e $0b
    rra                                           ; $79b6: $1f
    rla                                           ; $79b7: $17
    dec de                                        ; $79b8: $1b
    ld a, [de]                                    ; $79b9: $1a
    rrca                                          ; $79ba: $0f
    rrca                                          ; $79bb: $0f
    rrca                                          ; $79bc: $0f
    rrca                                          ; $79bd: $0f
    ld b, $06                                     ; $79be: $06 $06
    ldh [$e0], a                                  ; $79c0: $e0 $e0
    db $10                                        ; $79c2: $10
    ldh a, [rBCPS]                                ; $79c3: $f0 $68
    ld hl, sp-$08                                 ; $79c5: $f8 $f8
    sbc b                                         ; $79c7: $98
    add sp, -$08                                  ; $79c8: $e8 $f8
    add sp, -$48                                  ; $79ca: $e8 $b8
    db $fc                                        ; $79cc: $fc
    inc d                                         ; $79cd: $14
    db $fc                                        ; $79ce: $fc
    inc c                                         ; $79cf: $0c
    ld hl, sp-$78                                 ; $79d0: $f8 $88
    ldh a, [$90]                                  ; $79d2: $f0 $90
    ld hl, sp-$18                                 ; $79d4: $f8 $e8
    ld hl, sp-$08                                 ; $79d6: $f8 $f8
    ret nz                                        ; $79d8: $c0

    ld b, b                                       ; $79d9: $40
    ldh a, [$30]                                  ; $79da: $f0 $30
    ret nc                                        ; $79dc: $d0

    ld [hl], b                                    ; $79dd: $70
    ldh [$e0], a                                  ; $79de: $e0 $e0
    ld bc, $0601                                  ; $79e0: $01 $01 $06
    rlca                                          ; $79e3: $07
    ld a, [bc]                                    ; $79e4: $0a
    rrca                                          ; $79e5: $0f
    rrca                                          ; $79e6: $0f
    dec c                                         ; $79e7: $0d
    rrca                                          ; $79e8: $0f
    rrca                                          ; $79e9: $0f
    inc e                                         ; $79ea: $1c
    rla                                           ; $79eb: $17
    rra                                           ; $79ec: $1f
    inc de                                        ; $79ed: $13
    rrca                                          ; $79ee: $0f
    inc c                                         ; $79ef: $0c
    rra                                           ; $79f0: $1f
    inc e                                         ; $79f1: $1c
    ld [hl], a                                    ; $79f2: $77
    ld e, h                                       ; $79f3: $5c

jr_020_79f4:
    ld a, e                                       ; $79f4: $7b
    ld a, a                                       ; $79f5: $7f
    ld c, a                                       ; $79f6: $4f
    ld c, a                                       ; $79f7: $4f
    rst $08                                       ; $79f8: $cf
    ret                                           ; $79f9: $c9


    rst $18                                       ; $79fa: $df
    sub $09                                       ; $79fb: $d6 $09
    rrca                                          ; $79fd: $0f
    rlca                                          ; $79fe: $07
    rlca                                          ; $79ff: $07
    ret nz                                        ; $7a00: $c0

    ret nz                                        ; $7a01: $c0

    jr nc, jr_020_79f4                            ; $7a02: $30 $f0

    ld l, b                                       ; $7a04: $68
    ld hl, sp-$08                                 ; $7a05: $f8 $f8
    sbc b                                         ; $7a07: $98
    ld hl, sp-$08                                 ; $7a08: $f8 $f8
    sbc h                                         ; $7a0a: $9c
    db $f4                                        ; $7a0b: $f4
    db $fc                                        ; $7a0c: $fc
    ld h, h                                       ; $7a0d: $64
    ld hl, sp-$68                                 ; $7a0e: $f8 $98
    ldh a, [rNR10]                                ; $7a10: $f0 $10
    ret nc                                        ; $7a12: $d0

    ld [hl], b                                    ; $7a13: $70
    cp b                                          ; $7a14: $b8
    add sp, -$04                                  ; $7a15: $e8 $fc
    db $f4                                        ; $7a17: $f4
    db $ec                                        ; $7a18: $ec
    inc l                                         ; $7a19: $2c
    ldh [$e0], a                                  ; $7a1a: $e0 $e0
    ret nz                                        ; $7a1c: $c0

    ret nz                                        ; $7a1d: $c0

    nop                                           ; $7a1e: $00
    nop                                           ; $7a1f: $00
    ld bc, $0201                                  ; $7a20: $01 $01 $02
    inc bc                                        ; $7a23: $03
    dec b                                         ; $7a24: $05
    rlca                                          ; $7a25: $07
    rlca                                          ; $7a26: $07
    ld b, $05                                     ; $7a27: $06 $05
    rlca                                          ; $7a29: $07
    dec b                                         ; $7a2a: $05

jr_020_7a2b:
    rlca                                          ; $7a2b: $07
    rrca                                          ; $7a2c: $0f
    ld a, [bc]                                    ; $7a2d: $0a
    rrca                                          ; $7a2e: $0f
    inc c                                         ; $7a2f: $0c
    rlca                                          ; $7a30: $07
    inc b                                         ; $7a31: $04
    rrca                                          ; $7a32: $0f
    add hl, bc                                    ; $7a33: $09

jr_020_7a34:
    rlca                                          ; $7a34: $07
    ld b, $07                                     ; $7a35: $06 $07
    dec b                                         ; $7a37: $05
    inc bc                                        ; $7a38: $03
    ld [bc], a                                    ; $7a39: $02
    rrca                                          ; $7a3a: $0f
    rrca                                          ; $7a3b: $0f
    rrca                                          ; $7a3c: $0f
    rrca                                          ; $7a3d: $0f
    ld b, $06                                     ; $7a3e: $06 $06
    ret nz                                        ; $7a40: $c0

    ret nz                                        ; $7a41: $c0

    jr nc, jr_020_7a34                            ; $7a42: $30 $f0

    adc b                                         ; $7a44: $88
    ld hl, sp-$38                                 ; $7a45: $f8 $c8
    ld a, b                                       ; $7a47: $78
    ldh a, [$f0]                                  ; $7a48: $f0 $f0
    ld hl, sp+$48                                 ; $7a4a: $f8 $48
    ld hl, sp+$08                                 ; $7a4c: $f8 $08
    ldh a, [$30]                                  ; $7a4e: $f0 $30
    ldh [$60], a                                  ; $7a50: $e0 $60
    ld h, b                                       ; $7a52: $60
    ldh [$b0], a                                  ; $7a53: $e0 $b0
    ldh a, [$f0]                                  ; $7a55: $f0 $f0
    ldh a, [$e0]                                  ; $7a57: $f0 $e0
    jr nz, jr_020_7a2b                            ; $7a59: $20 $d0

    ld [hl], b                                    ; $7a5b: $70
    sub b                                         ; $7a5c: $90
    ldh a, [$e0]                                  ; $7a5d: $f0 $e0
    ldh [rSB], a                                  ; $7a5f: $e0 $01
    ld bc, $0706                                  ; $7a61: $01 $06 $07
    ld [$080f], sp                                ; $7a64: $08 $0f $08
    rrca                                          ; $7a67: $0f
    inc c                                         ; $7a68: $0c
    rrca                                          ; $7a69: $0f
    ld e, $13                                     ; $7a6a: $1e $13
    rra                                           ; $7a6c: $1f
    ld de, $0c0f                                  ; $7a6d: $11 $0f $0c
    dec de                                        ; $7a70: $1b
    rra                                           ; $7a71: $1f
    ld [hl], b                                    ; $7a72: $70
    ld e, a                                       ; $7a73: $5f

jr_020_7a74:
    ld a, b                                       ; $7a74: $78
    ld a, a                                       ; $7a75: $7f
    rrca                                          ; $7a76: $0f
    rrca                                          ; $7a77: $0f
    rrca                                          ; $7a78: $0f
    add hl, bc                                    ; $7a79: $09
    rra                                           ; $7a7a: $1f
    rla                                           ; $7a7b: $17
    add hl, bc                                    ; $7a7c: $09
    rrca                                          ; $7a7d: $0f
    rlca                                          ; $7a7e: $07
    rlca                                          ; $7a7f: $07
    ret nz                                        ; $7a80: $c0

    ret nz                                        ; $7a81: $c0

    jr nc, jr_020_7a74                            ; $7a82: $30 $f0

    ld [$08f8], sp                                ; $7a84: $08 $f8 $08
    ld hl, sp+$18                                 ; $7a87: $f8 $18
    ld hl, sp+$3c                                 ; $7a89: $f8 $3c
    db $e4                                        ; $7a8b: $e4
    db $fc                                        ; $7a8c: $fc
    call nz, $18f8                                ; $7a8d: $c4 $f8 $18
    ldh a, [$f0]                                  ; $7a90: $f0 $f0
    ld d, b                                       ; $7a92: $50
    ldh a, [$3e]                                  ; $7a93: $f0 $3e
    xor $fe                                       ; $7a95: $ee $fe
    or $ec                                        ; $7a97: $f6 $ec
    inc l                                         ; $7a99: $2c
    ldh [$e0], a                                  ; $7a9a: $e0 $e0
    ret nz                                        ; $7a9c: $c0

    ret nz                                        ; $7a9d: $c0

    nop                                           ; $7a9e: $00
    nop                                           ; $7a9f: $00
    inc bc                                        ; $7aa0: $03
    inc bc                                        ; $7aa1: $03
    inc c                                         ; $7aa2: $0c
    rrca                                          ; $7aa3: $0f
    ld de, $131f                                  ; $7aa4: $11 $1f $13
    ld e, $0f                                     ; $7aa7: $1e $0f
    rrca                                          ; $7aa9: $0f
    rra                                           ; $7aaa: $1f
    ld [de], a                                    ; $7aab: $12
    rra                                           ; $7aac: $1f
    db $10                                        ; $7aad: $10
    rrca                                          ; $7aae: $0f
    inc c                                         ; $7aaf: $0c
    rlca                                          ; $7ab0: $07
    ld b, $04                                     ; $7ab1: $06 $04
    rlca                                          ; $7ab3: $07
    ld c, $0b                                     ; $7ab4: $0e $0b
    rra                                           ; $7ab6: $1f
    rla                                           ; $7ab7: $17
    dec de                                        ; $7ab8: $1b
    ld a, [de]                                    ; $7ab9: $1a
    rrca                                          ; $7aba: $0f
    rrca                                          ; $7abb: $0f
    rrca                                          ; $7abc: $0f
    rrca                                          ; $7abd: $0f
    ld b, $06                                     ; $7abe: $06 $06
    add b                                         ; $7ac0: $80
    add b                                         ; $7ac1: $80
    ld b, b                                       ; $7ac2: $40
    ret nz                                        ; $7ac3: $c0

    and b                                         ; $7ac4: $a0
    ldh [$e0], a                                  ; $7ac5: $e0 $e0
    ld h, b                                       ; $7ac7: $60
    and b                                         ; $7ac8: $a0
    ldh [$a0], a                                  ; $7ac9: $e0 $a0
    ldh [$f0], a                                  ; $7acb: $e0 $f0
    ld d, b                                       ; $7acd: $50
    ldh a, [$30]                                  ; $7ace: $f0 $30
    ldh [rNR41], a                                ; $7ad0: $e0 $20
    ldh a, [$90]                                  ; $7ad2: $f0 $90
    ld hl, sp-$18                                 ; $7ad4: $f8 $e8
    ld hl, sp-$08                                 ; $7ad6: $f8 $f8
    ret nz                                        ; $7ad8: $c0

    ld b, b                                       ; $7ad9: $40
    ldh a, [$30]                                  ; $7ada: $f0 $30
    ret nc                                        ; $7adc: $d0

    ld [hl], b                                    ; $7add: $70
    ldh [$e0], a                                  ; $7ade: $e0 $e0
    rlca                                          ; $7ae0: $07
    rlca                                          ; $7ae1: $07
    jr jr_020_7b03                                ; $7ae2: $18 $1f

    add hl, hl                                    ; $7ae4: $29
    ccf                                           ; $7ae5: $3f
    ccf                                           ; $7ae6: $3f
    ld [hl], $3f                                  ; $7ae7: $36 $3f
    ccf                                           ; $7ae9: $3f
    ld [hl], d                                    ; $7aea: $72
    ld e, a                                       ; $7aeb: $5f
    ld a, a                                       ; $7aec: $7f
    ld c, l                                       ; $7aed: $4d
    ccf                                           ; $7aee: $3f
    ld [hl-], a                                   ; $7aef: $32
    ld a, a                                       ; $7af0: $7f
    ld [hl], b                                    ; $7af1: $70
    ld [hl], a                                    ; $7af2: $77
    ld e, h                                       ; $7af3: $5c
    ld a, e                                       ; $7af4: $7b
    ld a, a                                       ; $7af5: $7f
    ld c, a                                       ; $7af6: $4f
    ld c, a                                       ; $7af7: $4f
    rst $08                                       ; $7af8: $cf
    ret                                           ; $7af9: $c9


    rst $18                                       ; $7afa: $df
    sub $09                                       ; $7afb: $d6 $09
    rrca                                          ; $7afd: $0f
    rlca                                          ; $7afe: $07
    rlca                                          ; $7aff: $07
    nop                                           ; $7b00: $00
    nop                                           ; $7b01: $00
    ret nz                                        ; $7b02: $c0

jr_020_7b03:
    ret nz                                        ; $7b03: $c0

    and b                                         ; $7b04: $a0
    ldh [$e0], a                                  ; $7b05: $e0 $e0
    ld h, b                                       ; $7b07: $60
    ldh [$e0], a                                  ; $7b08: $e0 $e0
    ld [hl], b                                    ; $7b0a: $70
    ret nc                                        ; $7b0b: $d0

    ldh a, [$90]                                  ; $7b0c: $f0 $90
    ldh [$60], a                                  ; $7b0e: $e0 $60
    ret nz                                        ; $7b10: $c0

    ld b, b                                       ; $7b11: $40
    ret nc                                        ; $7b12: $d0

    ld [hl], b                                    ; $7b13: $70
    cp b                                          ; $7b14: $b8
    add sp, -$04                                  ; $7b15: $e8 $fc
    db $f4                                        ; $7b17: $f4
    db $ec                                        ; $7b18: $ec
    inc l                                         ; $7b19: $2c
    ldh [$e0], a                                  ; $7b1a: $e0 $e0
    ret nz                                        ; $7b1c: $c0

    ret nz                                        ; $7b1d: $c0

    nop                                           ; $7b1e: $00
    nop                                           ; $7b1f: $00
    rlca                                          ; $7b20: $07
    rlca                                          ; $7b21: $07
    ld [$160f], sp                                ; $7b22: $08 $0f $16
    rra                                           ; $7b25: $1f

jr_020_7b26:
    rra                                           ; $7b26: $1f
    add hl, de                                    ; $7b27: $19

jr_020_7b28:
    rla                                           ; $7b28: $17
    rra                                           ; $7b29: $1f
    rla                                           ; $7b2a: $17

jr_020_7b2b:
    dec e                                         ; $7b2b: $1d
    ccf                                           ; $7b2c: $3f
    jr z, jr_020_7b6e                             ; $7b2d: $28 $3f

    jr nc, jr_020_7b50                            ; $7b2f: $30 $1f

    ld de, $090f                                  ; $7b31: $11 $0f $09
    rlca                                          ; $7b34: $07
    ld b, $07                                     ; $7b35: $06 $07
    dec b                                         ; $7b37: $05
    inc bc                                        ; $7b38: $03
    ld [bc], a                                    ; $7b39: $02
    rrca                                          ; $7b3a: $0f
    rrca                                          ; $7b3b: $0f
    rrca                                          ; $7b3c: $0f
    rrca                                          ; $7b3d: $0f
    ld b, $06                                     ; $7b3e: $06 $06
    nop                                           ; $7b40: $00
    nop                                           ; $7b41: $00
    ret nz                                        ; $7b42: $c0

    ret nz                                        ; $7b43: $c0

    jr nz, jr_020_7b26                            ; $7b44: $20 $e0

    jr nz, jr_020_7b28                            ; $7b46: $20 $e0

    ret nz                                        ; $7b48: $c0

    ret nz                                        ; $7b49: $c0

    ldh [rNR41], a                                ; $7b4a: $e0 $20
    ldh [rNR41], a                                ; $7b4c: $e0 $20
    ret nz                                        ; $7b4e: $c0

    ret nz                                        ; $7b4f: $c0

jr_020_7b50:
    add b                                         ; $7b50: $80
    add b                                         ; $7b51: $80
    ld h, b                                       ; $7b52: $60
    ldh [$b0], a                                  ; $7b53: $e0 $b0
    ldh a, [$f0]                                  ; $7b55: $f0 $f0
    ldh a, [$e0]                                  ; $7b57: $f0 $e0
    jr nz, jr_020_7b2b                            ; $7b59: $20 $d0

    ld [hl], b                                    ; $7b5b: $70
    sub b                                         ; $7b5c: $90
    ldh a, [$e0]                                  ; $7b5d: $f0 $e0
    ldh [rTAC], a                                 ; $7b5f: $e0 $07
    rlca                                          ; $7b61: $07
    jr jr_020_7b83                                ; $7b62: $18 $1f

    jr nz, jr_020_7ba5                            ; $7b64: $20 $3f

jr_020_7b66:
    jr nz, jr_020_7ba7                            ; $7b66: $20 $3f

jr_020_7b68:
    jr nc, jr_020_7ba9                            ; $7b68: $30 $3f

    ld a, b                                       ; $7b6a: $78
    ld c, a                                       ; $7b6b: $4f
    ld a, a                                       ; $7b6c: $7f
    ld b, a                                       ; $7b6d: $47

jr_020_7b6e:
    ccf                                           ; $7b6e: $3f
    jr nc, jr_020_7be0                            ; $7b6f: $30 $6f

    ld a, a                                       ; $7b71: $7f
    ld [hl], b                                    ; $7b72: $70
    ld e, a                                       ; $7b73: $5f
    ld a, b                                       ; $7b74: $78
    ld a, a                                       ; $7b75: $7f
    rrca                                          ; $7b76: $0f
    rrca                                          ; $7b77: $0f
    rrca                                          ; $7b78: $0f
    add hl, bc                                    ; $7b79: $09
    rra                                           ; $7b7a: $1f
    rla                                           ; $7b7b: $17
    add hl, bc                                    ; $7b7c: $09
    rrca                                          ; $7b7d: $0f
    rlca                                          ; $7b7e: $07
    rlca                                          ; $7b7f: $07
    nop                                           ; $7b80: $00
    nop                                           ; $7b81: $00
    ret nz                                        ; $7b82: $c0

jr_020_7b83:
    ret nz                                        ; $7b83: $c0

    jr nz, jr_020_7b66                            ; $7b84: $20 $e0

    jr nz, jr_020_7b68                            ; $7b86: $20 $e0

    ld h, b                                       ; $7b88: $60
    ldh [$f0], a                                  ; $7b89: $e0 $f0
    sub b                                         ; $7b8b: $90
    ldh a, [rNR10]                                ; $7b8c: $f0 $10
    ldh [$60], a                                  ; $7b8e: $e0 $60
    ret nz                                        ; $7b90: $c0

    ret nz                                        ; $7b91: $c0

    ld d, b                                       ; $7b92: $50
    ldh a, [$3e]                                  ; $7b93: $f0 $3e
    xor $fe                                       ; $7b95: $ee $fe
    or $ec                                        ; $7b97: $f6 $ec
    inc l                                         ; $7b99: $2c
    ldh [$e0], a                                  ; $7b9a: $e0 $e0
    ret nz                                        ; $7b9c: $c0

    ret nz                                        ; $7b9d: $c0

    nop                                           ; $7b9e: $00
    nop                                           ; $7b9f: $00
    nop                                           ; $7ba0: $00
    nop                                           ; $7ba1: $00
    ld bc, $0201                                  ; $7ba2: $01 $01 $02

jr_020_7ba5:
    inc bc                                        ; $7ba5: $03
    inc b                                         ; $7ba6: $04

jr_020_7ba7:
    rlca                                          ; $7ba7: $07
    dec b                                         ; $7ba8: $05

jr_020_7ba9:
    rlca                                          ; $7ba9: $07
    inc bc                                        ; $7baa: $03
    inc bc                                        ; $7bab: $03
    rlca                                          ; $7bac: $07
    inc b                                         ; $7bad: $04
    inc bc                                        ; $7bae: $03
    ld [bc], a                                    ; $7baf: $02
    inc bc                                        ; $7bb0: $03
    inc bc                                        ; $7bb1: $03
    nop                                           ; $7bb2: $00
    inc bc                                        ; $7bb3: $03
    rrca                                          ; $7bb4: $0f
    dec bc                                        ; $7bb5: $0b
    rrca                                          ; $7bb6: $0f
    ld c, $07                                     ; $7bb7: $0e $07
    rlca                                          ; $7bb9: $07
    rlca                                          ; $7bba: $07
    rlca                                          ; $7bbb: $07
    ld [bc], a                                    ; $7bbc: $02
    ld [bc], a                                    ; $7bbd: $02
    nop                                           ; $7bbe: $00
    nop                                           ; $7bbf: $00
    nop                                           ; $7bc0: $00
    nop                                           ; $7bc1: $00
    ret nz                                        ; $7bc2: $c0

    ret nz                                        ; $7bc3: $c0

    nop                                           ; $7bc4: $00
    ret nz                                        ; $7bc5: $c0

    ldh [$e0], a                                  ; $7bc6: $e0 $e0
    ldh [rNR41], a                                ; $7bc8: $e0 $20
    ldh [$e0], a                                  ; $7bca: $e0 $e0
    ldh a, [rNR10]                                ; $7bcc: $f0 $10
    ldh a, [$30]                                  ; $7bce: $f0 $30
    ldh [rNR41], a                                ; $7bd0: $e0 $20
    ldh [$a0], a                                  ; $7bd2: $e0 $a0
    ldh a, [$f0]                                  ; $7bd4: $f0 $f0
    ret nz                                        ; $7bd6: $c0

    ld b, b                                       ; $7bd7: $40
    ldh [rNR41], a                                ; $7bd8: $e0 $20
    ldh [$60], a                                  ; $7bda: $e0 $60
    ret nz                                        ; $7bdc: $c0

    ret nz                                        ; $7bdd: $c0

    nop                                           ; $7bde: $00
    nop                                           ; $7bdf: $00

jr_020_7be0:
    nop                                           ; $7be0: $00
    nop                                           ; $7be1: $00
    inc bc                                        ; $7be2: $03
    inc bc                                        ; $7be3: $03
    inc b                                         ; $7be4: $04
    rlca                                          ; $7be5: $07
    ld [$0f0f], sp                                ; $7be6: $08 $0f $0f
    rrca                                          ; $7be9: $0f
    rrca                                          ; $7bea: $0f
    rrca                                          ; $7beb: $0f
    rra                                           ; $7bec: $1f
    ld [de], a                                    ; $7bed: $12
    rrca                                          ; $7bee: $0f
    dec c                                         ; $7bef: $0d
    rra                                           ; $7bf0: $1f
    inc e                                         ; $7bf1: $1c
    dec sp                                        ; $7bf2: $3b
    inc l                                         ; $7bf3: $2c
    daa                                           ; $7bf4: $27
    daa                                           ; $7bf5: $27
    ld h, a                                       ; $7bf6: $67
    ld h, l                                       ; $7bf7: $65
    ld l, a                                       ; $7bf8: $6f
    ld l, d                                       ; $7bf9: $6a
    dec b                                         ; $7bfa: $05
    rlca                                          ; $7bfb: $07
    inc bc                                        ; $7bfc: $03
    inc bc                                        ; $7bfd: $03
    nop                                           ; $7bfe: $00
    nop                                           ; $7bff: $00
    nop                                           ; $7c00: $00
    nop                                           ; $7c01: $00
    add b                                         ; $7c02: $80
    add b                                         ; $7c03: $80
    ld b, b                                       ; $7c04: $40
    ret nz                                        ; $7c05: $c0

    ldh [$e0], a                                  ; $7c06: $e0 $e0
    ldh [rNR41], a                                ; $7c08: $e0 $20
    ldh [$e0], a                                  ; $7c0a: $e0 $e0
    ldh a, [$d0]                                  ; $7c0c: $f0 $d0
    ldh [rNR41], a                                ; $7c0e: $e0 $20
    ret nz                                        ; $7c10: $c0

    nop                                           ; $7c11: $00
    ldh [$60], a                                  ; $7c12: $e0 $60
    ld hl, sp-$18                                 ; $7c14: $f8 $e8
    ret c                                         ; $7c16: $d8

    jr @-$3e                                      ; $7c17: $18 $c0

    ret nz                                        ; $7c19: $c0

    ret nz                                        ; $7c1a: $c0

    ret nz                                        ; $7c1b: $c0

    nop                                           ; $7c1c: $00
    nop                                           ; $7c1d: $00
    nop                                           ; $7c1e: $00
    nop                                           ; $7c1f: $00
    nop                                           ; $7c20: $00
    nop                                           ; $7c21: $00
    inc bc                                        ; $7c22: $03
    inc bc                                        ; $7c23: $03
    nop                                           ; $7c24: $00
    inc bc                                        ; $7c25: $03
    rlca                                          ; $7c26: $07
    rlca                                          ; $7c27: $07

jr_020_7c28:
    rlca                                          ; $7c28: $07
    inc b                                         ; $7c29: $04
    rlca                                          ; $7c2a: $07
    rlca                                          ; $7c2b: $07
    rrca                                          ; $7c2c: $0f
    ld [$0c0f], sp                                ; $7c2d: $08 $0f $0c
    rlca                                          ; $7c30: $07
    inc b                                         ; $7c31: $04
    rlca                                          ; $7c32: $07
    dec b                                         ; $7c33: $05
    inc bc                                        ; $7c34: $03
    ld bc, $0203                                  ; $7c35: $01 $03 $02
    rlca                                          ; $7c38: $07
    rlca                                          ; $7c39: $07
    rlca                                          ; $7c3a: $07
    rlca                                          ; $7c3b: $07
    ld [bc], a                                    ; $7c3c: $02
    ld [bc], a                                    ; $7c3d: $02
    nop                                           ; $7c3e: $00
    nop                                           ; $7c3f: $00
    nop                                           ; $7c40: $00
    nop                                           ; $7c41: $00
    add b                                         ; $7c42: $80
    add b                                         ; $7c43: $80
    ld b, b                                       ; $7c44: $40
    ret nz                                        ; $7c45: $c0

    jr nz, jr_020_7c28                            ; $7c46: $20 $e0

    and b                                         ; $7c48: $a0
    ldh [$c0], a                                  ; $7c49: $e0 $c0
    ret nz                                        ; $7c4b: $c0

    ldh [rNR41], a                                ; $7c4c: $e0 $20
    ret nz                                        ; $7c4e: $c0

    ld b, b                                       ; $7c4f: $40
    ret nz                                        ; $7c50: $c0

    ret nz                                        ; $7c51: $c0

    ld b, b                                       ; $7c52: $40
    ret nz                                        ; $7c53: $c0

    ldh [$e0], a                                  ; $7c54: $e0 $e0
    ret nz                                        ; $7c56: $c0

    nop                                           ; $7c57: $00
    ldh [$60], a                                  ; $7c58: $e0 $60
    and b                                         ; $7c5a: $a0
    ldh [$c0], a                                  ; $7c5b: $e0 $c0
    ret nz                                        ; $7c5d: $c0

    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
    nop                                           ; $7c60: $00
    nop                                           ; $7c61: $00
    inc bc                                        ; $7c62: $03
    inc bc                                        ; $7c63: $03
    inc b                                         ; $7c64: $04
    rlca                                          ; $7c65: $07
    ld [$080f], sp                                ; $7c66: $08 $0f $08
    rrca                                          ; $7c69: $0f

jr_020_7c6a:
    inc c                                         ; $7c6a: $0c
    rrca                                          ; $7c6b: $0f

jr_020_7c6c:
    rra                                           ; $7c6c: $1f
    inc de                                        ; $7c6d: $13
    rrca                                          ; $7c6e: $0f
    inc c                                         ; $7c6f: $0c
    dec de                                        ; $7c70: $1b
    rra                                           ; $7c71: $1f
    jr c, jr_020_7ca3                             ; $7c72: $38 $2f

    rlca                                          ; $7c74: $07
    rlca                                          ; $7c75: $07
    rlca                                          ; $7c76: $07
    dec b                                         ; $7c77: $05
    rrca                                          ; $7c78: $0f
    dec bc                                        ; $7c79: $0b
    dec b                                         ; $7c7a: $05
    rlca                                          ; $7c7b: $07
    inc bc                                        ; $7c7c: $03
    inc bc                                        ; $7c7d: $03
    nop                                           ; $7c7e: $00
    nop                                           ; $7c7f: $00
    nop                                           ; $7c80: $00
    nop                                           ; $7c81: $00
    add b                                         ; $7c82: $80
    add b                                         ; $7c83: $80
    ld b, b                                       ; $7c84: $40
    ret nz                                        ; $7c85: $c0

    jr nz, @-$1e                                  ; $7c86: $20 $e0

    jr nz, jr_020_7c6a                            ; $7c88: $20 $e0

    jr nz, jr_020_7c6c                            ; $7c8a: $20 $e0

    ldh a, [$90]                                  ; $7c8c: $f0 $90
    ldh [rNR41], a                                ; $7c8e: $e0 $20
    ret nz                                        ; $7c90: $c0

    ret nz                                        ; $7c91: $c0

    ld h, b                                       ; $7c92: $60
    ldh [$fc], a                                  ; $7c93: $e0 $fc
    db $ec                                        ; $7c95: $ec
    ret c                                         ; $7c96: $d8

    jr @-$3e                                      ; $7c97: $18 $c0

    ret nz                                        ; $7c99: $c0

    ret nz                                        ; $7c9a: $c0

    ret nz                                        ; $7c9b: $c0

    nop                                           ; $7c9c: $00
    nop                                           ; $7c9d: $00
    nop                                           ; $7c9e: $00
    nop                                           ; $7c9f: $00
    or d                                          ; $7ca0: $b2
    ld a, h                                       ; $7ca1: $7c
    or l                                          ; $7ca2: $b5

jr_020_7ca3:
    ld a, h                                       ; $7ca3: $7c
    cp e                                          ; $7ca4: $bb
    ld a, h                                       ; $7ca5: $7c
    cp [hl]                                       ; $7ca6: $be
    ld a, h                                       ; $7ca7: $7c
    ret                                           ; $7ca8: $c9


    ld a, h                                       ; $7ca9: $7c
    ret nc                                        ; $7caa: $d0

    ld a, h                                       ; $7cab: $7c
    ret c                                         ; $7cac: $d8

    ld a, h                                       ; $7cad: $7c
    db $ec                                        ; $7cae: $ec
    ld a, h                                       ; $7caf: $7c
    ld hl, sp+$7c                                 ; $7cb0: $f8 $7c
    nop                                           ; $7cb2: $00
    rst $38                                       ; $7cb3: $ff
    db $fd                                        ; $7cb4: $fd
    nop                                           ; $7cb5: $00
    ld e, $01                                     ; $7cb6: $1e $01
    ld e, $ff                                     ; $7cb8: $1e $ff
    nop                                           ; $7cba: $00
    ld [bc], a                                    ; $7cbb: $02
    rst $38                                       ; $7cbc: $ff
    db $fd                                        ; $7cbd: $fd
    ld [bc], a                                    ; $7cbe: $02
    inc c                                         ; $7cbf: $0c
    inc bc                                        ; $7cc0: $03
    inc c                                         ; $7cc1: $0c
    inc b                                         ; $7cc2: $04
    jr jr_020_7cc7                                ; $7cc3: $18 $02

    inc c                                         ; $7cc5: $0c
    dec b                                         ; $7cc6: $05

jr_020_7cc7:
    inc c                                         ; $7cc7: $0c
    db $fd                                        ; $7cc8: $fd
    ld [bc], a                                    ; $7cc9: $02
    jr @+$05                                      ; $7cca: $18 $03

    jr jr_020_7cd0                                ; $7ccc: $18 $02

    jr @-$01                                      ; $7cce: $18 $fd

jr_020_7cd0:
    nop                                           ; $7cd0: $00
    ld a, [bc]                                    ; $7cd1: $0a
    ld b, $1e                                     ; $7cd2: $06 $1e
    nop                                           ; $7cd4: $00
    ld a, [bc]                                    ; $7cd5: $0a
    cp $01                                        ; $7cd6: $fe $01
    nop                                           ; $7cd8: $00
    ld a, [bc]                                    ; $7cd9: $0a
    rlca                                          ; $7cda: $07
    ld a, [bc]                                    ; $7cdb: $0a
    nop                                           ; $7cdc: $00
    inc bc                                        ; $7cdd: $03
    ld [$000a], sp                                ; $7cde: $08 $0a $00
    inc bc                                        ; $7ce1: $03
    rlca                                          ; $7ce2: $07
    ld a, [bc]                                    ; $7ce3: $0a
    nop                                           ; $7ce4: $00
    inc bc                                        ; $7ce5: $03
    ld [$000a], sp                                ; $7ce6: $08 $0a $00
    ld a, [bc]                                    ; $7ce9: $0a
    cp $01                                        ; $7cea: $fe $01
    nop                                           ; $7cec: $00
    ld a, [bc]                                    ; $7ced: $0a
    add hl, bc                                    ; $7cee: $09
    ld [$0800], sp                                ; $7cef: $08 $00 $08
    add hl, bc                                    ; $7cf2: $09
    ld [$0a00], sp                                ; $7cf3: $08 $00 $0a
    cp $01                                        ; $7cf6: $fe $01
    ld [bc], a                                    ; $7cf8: $02
    ld [de], a                                    ; $7cf9: $12
    inc bc                                        ; $7cfa: $03
    ld [de], a                                    ; $7cfb: $12
    ld [bc], a                                    ; $7cfc: $02
    ld e, $05                                     ; $7cfd: $1e $05
    ld [de], a                                    ; $7cff: $12
    db $fd                                        ; $7d00: $fd
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
