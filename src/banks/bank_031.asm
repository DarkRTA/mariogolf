; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

    db $10, $40

    sub l                                         ; $4002: $95
    ld b, a                                       ; $4003: $47
    ld b, [hl]                                    ; $4004: $46
    ld c, c                                       ; $4005: $49
    jp nc, $ce52                                  ; $4006: $d2 $52 $ce

    ld e, e                                       ; $4009: $5b
    ld e, a                                       ; $400a: $5f
    ld h, h                                       ; $400b: $64
    ld h, a                                       ; $400c: $67
    ld [hl], b                                    ; $400d: $70
    or c                                          ; $400e: $b1
    halt                                          ; $400f: $76

    db $3f, $40, $46, $40, $1e, $40, $4f, $40, $50, $40, $51, $40, $52, $40, $be, $7c
    db $00, $0a, $00, $ff, $00, $00, $00, $40, $01, $15, $be, $7c, $00, $15, $00, $0b
    db $00, $00, $00, $40, $01, $13, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $01
    db $c0, $00, $01, $00, $01

    rst $38                                       ; $4045: $ff

    db $01, $ff, $00, $00, $00, $00, $05, $02

    rst $38                                       ; $404e: $ff
    rst $38                                       ; $404f: $ff
    rst $38                                       ; $4050: $ff
    rst $38                                       ; $4051: $ff

    call Call_031_43b9                            ; $4052: $cd $b9 $43
    ret                                           ; $4055: $c9


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
    jr c, jr_031_409c                             ; $4062: $38 $38

    ld d, h                                       ; $4064: $54
    ld l, h                                       ; $4065: $6c
    ld a, e                                       ; $4066: $7b
    ld b, a                                       ; $4067: $47
    ld e, l                                       ; $4068: $5d
    ld h, e                                       ; $4069: $63
    ld l, $31                                     ; $406a: $2e $31
    rla                                           ; $406c: $17
    jr jr_031_407a                                ; $406d: $18 $0b

    inc c                                         ; $406f: $0c
    dec c                                         ; $4070: $0d
    ld c, $15                                     ; $4071: $0e $15
    ld a, [de]                                    ; $4073: $1a
    rra                                           ; $4074: $1f
    db $10                                        ; $4075: $10
    rla                                           ; $4076: $17
    jr jr_031_4084                                ; $4077: $18 $0b

    inc c                                         ; $4079: $0c

jr_031_407a:
    rlca                                          ; $407a: $07
    rlca                                          ; $407b: $07
    nop                                           ; $407c: $00
    nop                                           ; $407d: $00
    nop                                           ; $407e: $00
    nop                                           ; $407f: $00
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00

jr_031_4084:
    nop                                           ; $4084: $00
    nop                                           ; $4085: $00
    ldh a, [$f0]                                  ; $4086: $f0 $f0
    ld l, b                                       ; $4088: $68
    sbc b                                         ; $4089: $98
    db $f4                                        ; $408a: $f4
    inc c                                         ; $408b: $0c
    db $fc                                        ; $408c: $fc
    inc b                                         ; $408d: $04
    ld a, [$f606]                                 ; $408e: $fa $06 $f6
    ld c, $f9                                     ; $4091: $0e $f9
    rlca                                          ; $4093: $07
    db $fd                                        ; $4094: $fd
    inc bc                                        ; $4095: $03
    sbc d                                         ; $4096: $9a
    ld h, [hl]                                    ; $4097: $66
    ld d, h                                       ; $4098: $54
    db $ec                                        ; $4099: $ec
    xor b                                         ; $409a: $a8
    ret c                                         ; $409b: $d8

jr_031_409c:
    sub b                                         ; $409c: $90
    ldh a, [$60]                                  ; $409d: $f0 $60
    ld h, b                                       ; $409f: $60

    db $2f, $1d, $00, $7c, $1f, $00, $00, $00, $67, $29, $ff, $6b, $58, $1e, $00, $00

    nop                                           ; $40b0: $00
    nop                                           ; $40b1: $00
    nop                                           ; $40b2: $00
    nop                                           ; $40b3: $00
    nop                                           ; $40b4: $00
    nop                                           ; $40b5: $00
    inc bc                                        ; $40b6: $03
    inc bc                                        ; $40b7: $03
    rlca                                          ; $40b8: $07
    inc b                                         ; $40b9: $04
    rrca                                          ; $40ba: $0f
    ld [$101f], sp                                ; $40bb: $08 $1f $10
    rra                                           ; $40be: $1f
    ld de, $223e                                  ; $40bf: $11 $3e $22
    ld a, $22                                     ; $40c2: $3e $22
    ld a, h                                       ; $40c4: $7c
    ld b, h                                       ; $40c5: $44
    ld a, h                                       ; $40c6: $7c
    ld b, h                                       ; $40c7: $44
    ld a, h                                       ; $40c8: $7c
    ld b, h                                       ; $40c9: $44
    ld a, a                                       ; $40ca: $7f
    ld b, e                                       ; $40cb: $43
    ld a, a                                       ; $40cc: $7f
    ld b, b                                       ; $40cd: $40
    ccf                                           ; $40ce: $3f
    jr nz, jr_031_4110                            ; $40cf: $20 $3f

    jr nz, jr_031_40f2                            ; $40d1: $20 $1f

    ld de, $0e0e                                  ; $40d3: $11 $0e $0e
    nop                                           ; $40d6: $00
    nop                                           ; $40d7: $00
    ld bc, $0301                                  ; $40d8: $01 $01 $03
    ld [bc], a                                    ; $40db: $02
    inc bc                                        ; $40dc: $03
    inc bc                                        ; $40dd: $03
    nop                                           ; $40de: $00
    nop                                           ; $40df: $00
    nop                                           ; $40e0: $00
    nop                                           ; $40e1: $00
    nop                                           ; $40e2: $00
    nop                                           ; $40e3: $00
    nop                                           ; $40e4: $00
    nop                                           ; $40e5: $00
    nop                                           ; $40e6: $00
    nop                                           ; $40e7: $00
    nop                                           ; $40e8: $00
    nop                                           ; $40e9: $00
    nop                                           ; $40ea: $00
    nop                                           ; $40eb: $00
    nop                                           ; $40ec: $00
    nop                                           ; $40ed: $00
    nop                                           ; $40ee: $00
    nop                                           ; $40ef: $00
    nop                                           ; $40f0: $00
    nop                                           ; $40f1: $00

jr_031_40f2:
    ld a, $3e                                     ; $40f2: $3e $3e
    rst $38                                       ; $40f4: $ff
    pop bc                                        ; $40f5: $c1
    rst $38                                       ; $40f6: $ff
    nop                                           ; $40f7: $00
    rst $38                                       ; $40f8: $ff
    nop                                           ; $40f9: $00
    rst $38                                       ; $40fa: $ff
    inc a                                         ; $40fb: $3c
    jp Jump_000_00c3                              ; $40fc: $c3 $c3 $00


    nop                                           ; $40ff: $00
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    nop                                           ; $4103: $00
    nop                                           ; $4104: $00
    nop                                           ; $4105: $00
    nop                                           ; $4106: $00
    nop                                           ; $4107: $00
    nop                                           ; $4108: $00
    nop                                           ; $4109: $00
    nop                                           ; $410a: $00
    nop                                           ; $410b: $00
    add c                                         ; $410c: $81
    add c                                         ; $410d: $81
    add e                                         ; $410e: $83
    add d                                         ; $410f: $82

jr_031_4110:
    adc a                                         ; $4110: $8f
    adc h                                         ; $4111: $8c
    rra                                           ; $4112: $1f
    db $10                                        ; $4113: $10
    ld a, a                                       ; $4114: $7f
    ld h, c                                       ; $4115: $61
    cp $86                                        ; $4116: $fe $86
    ld hl, sp+$18                                 ; $4118: $f8 $18
    ldh [$60], a                                  ; $411a: $e0 $60
    add b                                         ; $411c: $80
    add b                                         ; $411d: $80
    nop                                           ; $411e: $00
    nop                                           ; $411f: $00
    nop                                           ; $4120: $00
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    nop                                           ; $4126: $00
    nop                                           ; $4127: $00
    nop                                           ; $4128: $00
    nop                                           ; $4129: $00
    nop                                           ; $412a: $00
    nop                                           ; $412b: $00
    nop                                           ; $412c: $00
    nop                                           ; $412d: $00
    nop                                           ; $412e: $00
    nop                                           ; $412f: $00
    nop                                           ; $4130: $00
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    add b                                         ; $4134: $80
    add b                                         ; $4135: $80
    ret nz                                        ; $4136: $c0

    ld b, b                                       ; $4137: $40
    ldh [rNR41], a                                ; $4138: $e0 $20
    ldh a, [rNR10]                                ; $413a: $f0 $10
    ld hl, sp+$08                                 ; $413c: $f8 $08
    ld hl, sp-$78                                 ; $413e: $f8 $88
    db $fc                                        ; $4140: $fc
    add h                                         ; $4141: $84
    ld a, h                                       ; $4142: $7c
    ld b, h                                       ; $4143: $44
    ld a, h                                       ; $4144: $7c
    ld b, h                                       ; $4145: $44
    ld a, h                                       ; $4146: $7c
    ld b, h                                       ; $4147: $44
    db $fc                                        ; $4148: $fc
    add h                                         ; $4149: $84
    ld hl, sp-$78                                 ; $414a: $f8 $88
    ld hl, sp+$08                                 ; $414c: $f8 $08
    ldh a, [rNR10]                                ; $414e: $f0 $10
    ldh [rNR41], a                                ; $4150: $e0 $20
    ret nz                                        ; $4152: $c0

    ld b, b                                       ; $4153: $40
    add b                                         ; $4154: $80
    add b                                         ; $4155: $80
    nop                                           ; $4156: $00
    nop                                           ; $4157: $00
    nop                                           ; $4158: $00
    nop                                           ; $4159: $00
    nop                                           ; $415a: $00
    nop                                           ; $415b: $00
    nop                                           ; $415c: $00
    nop                                           ; $415d: $00
    nop                                           ; $415e: $00
    nop                                           ; $415f: $00
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    nop                                           ; $4163: $00
    nop                                           ; $4164: $00
    nop                                           ; $4165: $00
    nop                                           ; $4166: $00
    nop                                           ; $4167: $00
    nop                                           ; $4168: $00
    nop                                           ; $4169: $00
    nop                                           ; $416a: $00
    nop                                           ; $416b: $00
    nop                                           ; $416c: $00
    nop                                           ; $416d: $00
    nop                                           ; $416e: $00
    nop                                           ; $416f: $00
    nop                                           ; $4170: $00
    nop                                           ; $4171: $00
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    ld b, $06                                     ; $4174: $06 $06
    add hl, bc                                    ; $4176: $09
    rrca                                          ; $4177: $0f
    db $10                                        ; $4178: $10
    rra                                           ; $4179: $1f
    db $10                                        ; $417a: $10
    rra                                           ; $417b: $1f
    db $10                                        ; $417c: $10
    rra                                           ; $417d: $1f
    ld [$060f], sp                                ; $417e: $08 $0f $06
    rlca                                          ; $4181: $07
    ld bc, $0001                                  ; $4182: $01 $01 $00
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    nop                                           ; $418a: $00
    nop                                           ; $418b: $00
    ld [$0808], sp                                ; $418c: $08 $08 $08
    ld [$1f17], sp                                ; $418f: $08 $17 $1f
    db $10                                        ; $4192: $10
    rra                                           ; $4193: $1f
    db $10                                        ; $4194: $10
    rra                                           ; $4195: $1f
    ld de, $0a1f                                  ; $4196: $11 $1f $0a
    ld c, $04                                     ; $4199: $0e $04
    inc b                                         ; $419b: $04
    nop                                           ; $419c: $00
    nop                                           ; $419d: $00
    nop                                           ; $419e: $00
    nop                                           ; $419f: $00
    nop                                           ; $41a0: $00
    nop                                           ; $41a1: $00
    nop                                           ; $41a2: $00
    nop                                           ; $41a3: $00
    nop                                           ; $41a4: $00
    nop                                           ; $41a5: $00
    nop                                           ; $41a6: $00
    nop                                           ; $41a7: $00
    nop                                           ; $41a8: $00
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00
    nop                                           ; $41ab: $00
    nop                                           ; $41ac: $00
    nop                                           ; $41ad: $00
    nop                                           ; $41ae: $00
    nop                                           ; $41af: $00
    nop                                           ; $41b0: $00
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    nop                                           ; $41b3: $00
    nop                                           ; $41b4: $00
    nop                                           ; $41b5: $00
    ld bc, $8101                                  ; $41b6: $01 $01 $81
    add c                                         ; $41b9: $81
    add d                                         ; $41ba: $82
    add e                                         ; $41bb: $83
    ld b, d                                       ; $41bc: $42
    jp $c744                                      ; $41bd: $c3 $44 $c7


    inc h                                         ; $41c0: $24
    rst $20                                       ; $41c1: $e7
    jr @+$01                                      ; $41c2: $18 $ff

    adc c                                         ; $41c4: $89
    rst $38                                       ; $41c5: $ff
    ld b, d                                       ; $41c6: $42
    ld a, [hl]                                    ; $41c7: $7e
    ld [hl+], a                                   ; $41c8: $22
    ld a, $21                                     ; $41c9: $3e $21
    ccf                                           ; $41cb: $3f
    ld c, c                                       ; $41cc: $49
    ld a, a                                       ; $41cd: $7f
    sub h                                         ; $41ce: $94
    rst $30                                       ; $41cf: $f7
    ld [hl+], a                                   ; $41d0: $22
    db $e3                                        ; $41d1: $e3
    ld b, c                                       ; $41d2: $41
    pop bc                                        ; $41d3: $c1
    add b                                         ; $41d4: $80
    add b                                         ; $41d5: $80
    nop                                           ; $41d6: $00
    nop                                           ; $41d7: $00
    nop                                           ; $41d8: $00
    nop                                           ; $41d9: $00
    nop                                           ; $41da: $00
    nop                                           ; $41db: $00
    nop                                           ; $41dc: $00
    nop                                           ; $41dd: $00
    nop                                           ; $41de: $00
    nop                                           ; $41df: $00
    nop                                           ; $41e0: $00
    nop                                           ; $41e1: $00
    nop                                           ; $41e2: $00
    nop                                           ; $41e3: $00
    nop                                           ; $41e4: $00
    nop                                           ; $41e5: $00
    nop                                           ; $41e6: $00
    nop                                           ; $41e7: $00
    nop                                           ; $41e8: $00
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    nop                                           ; $41eb: $00
    nop                                           ; $41ec: $00
    nop                                           ; $41ed: $00
    nop                                           ; $41ee: $00
    nop                                           ; $41ef: $00
    nop                                           ; $41f0: $00
    nop                                           ; $41f1: $00
    ld h, b                                       ; $41f2: $60
    ld h, b                                       ; $41f3: $60

jr_031_41f4:
    sub b                                         ; $41f4: $90
    ldh a, [$08]                                  ; $41f5: $f0 $08
    ld hl, sp+$08                                 ; $41f7: $f8 $08
    ld hl, sp+$08                                 ; $41f9: $f8 $08
    ld hl, sp+$10                                 ; $41fb: $f8 $10
    ldh a, [rNR41]                                ; $41fd: $f0 $20
    ldh [rLCDC], a                                ; $41ff: $e0 $40
    ret nz                                        ; $4201: $c0

    add b                                         ; $4202: $80
    add b                                         ; $4203: $80
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    nop                                           ; $4206: $00
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    nop                                           ; $420a: $00
    nop                                           ; $420b: $00
    nop                                           ; $420c: $00
    nop                                           ; $420d: $00
    add b                                         ; $420e: $80
    add b                                         ; $420f: $80
    ld b, b                                       ; $4210: $40
    ret nz                                        ; $4211: $c0

    jr nz, jr_031_41f4                            ; $4212: $20 $e0

    and b                                         ; $4214: $a0
    ldh [$50], a                                  ; $4215: $e0 $50
    ld [hl], b                                    ; $4217: $70
    jr z, @+$3a                                   ; $4218: $28 $38

    inc d                                         ; $421a: $14
    inc e                                         ; $421b: $1c
    inc c                                         ; $421c: $0c
    inc c                                         ; $421d: $0c
    nop                                           ; $421e: $00
    nop                                           ; $421f: $00
    nop                                           ; $4220: $00
    nop                                           ; $4221: $00
    nop                                           ; $4222: $00
    nop                                           ; $4223: $00
    nop                                           ; $4224: $00
    nop                                           ; $4225: $00
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    nop                                           ; $4228: $00
    nop                                           ; $4229: $00
    nop                                           ; $422a: $00
    nop                                           ; $422b: $00
    nop                                           ; $422c: $00
    nop                                           ; $422d: $00
    nop                                           ; $422e: $00
    nop                                           ; $422f: $00

    db $10, $08, $00, $00, $20, $08, $02, $00, $10, $10, $04, $00, $20, $10, $06, $00
    db $10, $18, $08, $00, $20, $18, $0a, $00, $80, $10, $08, $00, $00, $20, $08, $02
    db $00, $10, $10, $04, $00, $20, $10, $06, $00, $10, $18, $08, $00, $20, $18, $0a
    db $00, $80

Call_031_4262:
    call Call_000_0341                            ; $4262: $cd $41 $03
    ld a, $00                                     ; $4265: $3e $00
    ldh [rVBK], a                                 ; $4267: $e0 $4f
    ld hl, $4060                                  ; $4269: $21 $60 $40
    ld de, $8600                                  ; $426c: $11 $00 $86
    ld c, $04                                     ; $426f: $0e $04
    call Call_000_2096                            ; $4271: $cd $96 $20
    ld hl, $40a0                                  ; $4274: $21 $a0 $40
    ld de, $0a02                                  ; $4277: $11 $02 $0a
    call Call_000_0595                            ; $427a: $cd $95 $05
    ld hl, $40b0                                  ; $427d: $21 $b0 $40
    ld de, $8400                                  ; $4280: $11 $00 $84
    ld c, $20                                     ; $4283: $0e $20
    call Call_000_2096                            ; $4285: $cd $96 $20
    call Call_000_0371                            ; $4288: $cd $71 $03
    ret                                           ; $428b: $c9


Call_031_428c:
    ld a, $05                                     ; $428c: $3e $05
    ldh [$96], a                                  ; $428e: $e0 $96
    ldh [rSVBK], a                                ; $4290: $e0 $70
    rst $18                                       ; $4292: $df

    db $1c, $05

    ld hl, $d084                                  ; $4295: $21 $84 $d0
    ld de, $d484                                  ; $4298: $11 $84 $d4
    ld bc, $06e0                                  ; $429b: $01 $e0 $06
    ld a, $20                                     ; $429e: $3e $20
    rst $18                                       ; $42a0: $df

    db $08, $06

    ld hl, $d08d                                  ; $42a3: $21 $8d $d0
    ld de, $d48d                                  ; $42a6: $11 $8d $d4
    ld bc, $07f0                                  ; $42a9: $01 $f0 $07
    ld a, $20                                     ; $42ac: $3e $20
    rst $18                                       ; $42ae: $df

    db $08, $06

    ld hl, $d080                                  ; $42b1: $21 $80 $d0
    ld de, $9880                                  ; $42b4: $11 $80 $98
    ld c, $06                                     ; $42b7: $0e $06
    call Call_000_0468                            ; $42b9: $cd $68 $04
    ld hl, $d480                                  ; $42bc: $21 $80 $d4
    ld de, $b880                                  ; $42bf: $11 $80 $b8
    ld c, $06                                     ; $42c2: $0e $06
    call Call_000_0468                            ; $42c4: $cd $68 $04
    ret                                           ; $42c7: $c9


Call_031_42c8:
    ld hl, $42e7                                  ; $42c8: $21 $e7 $42
    add a                                         ; $42cb: $87
    add l                                         ; $42cc: $85
    ld l, a                                       ; $42cd: $6f
    jr nc, jr_031_42d1                            ; $42ce: $30 $01

    inc h                                         ; $42d0: $24

jr_031_42d1:
    ld a, [hl+]                                   ; $42d1: $2a
    ld b, $06                                     ; $42d2: $06 $06
    ld de, $8e00                                  ; $42d4: $11 $00 $8e
    rst $18                                       ; $42d7: $df

    db $06, $06

    ld a, [hl+]                                   ; $42da: $2a
    ld b, $07                                     ; $42db: $06 $07
    ld de, $8f00                                  ; $42dd: $11 $00 $8f
    rst $18                                       ; $42e0: $df

    db $06, $06

    call Call_000_2e3b                            ; $42e3: $cd $3b $2e
    ret                                           ; $42e6: $c9


    db $05, $04

    inc bc                                        ; $42e9: $03
    nop                                           ; $42ea: $00

    db $02, $01, $06, $07

Call_031_42ef:
    call Call_000_2e3b                            ; $42ef: $cd $3b $2e
    and a                                         ; $42f2: $a7
    jr z, jr_031_4337                             ; $42f3: $28 $42

    jr jr_031_4315                                ; $42f5: $18 $1e

jr_031_42f7:
    ldh a, [$94]                                  ; $42f7: $f0 $94
    bit 1, a                                      ; $42f9: $cb $4f
    jr nz, jr_031_430f                            ; $42fb: $20 $12

    bit 0, a                                      ; $42fd: $cb $47
    jr nz, jr_031_430b                            ; $42ff: $20 $0a

    bit 5, a                                      ; $4301: $cb $6f
    jr nz, jr_031_4315                            ; $4303: $20 $10

    bit 4, a                                      ; $4305: $cb $67
    jr nz, jr_031_4337                            ; $4307: $20 $2e

    jr jr_031_4357                                ; $4309: $18 $4c

jr_031_430b:
    rst $08                                       ; $430b: $cf

    db $5c

    jr jr_031_435c                                ; $430d: $18 $4d

jr_031_430f:
    rst $08                                       ; $430f: $cf
    ld e, l                                       ; $4310: $5d
    ld h, $ff                                     ; $4311: $26 $ff
    jr jr_031_435c                                ; $4313: $18 $47

jr_031_4315:
    ld a, [$c471]                                 ; $4315: $fa $71 $c4
    cp $30                                        ; $4318: $fe $30
    jr z, jr_031_4333                             ; $431a: $28 $17

    ld a, $30                                     ; $431c: $3e $30
    ld [$c471], a                                 ; $431e: $ea $71 $c4
    ld a, $40                                     ; $4321: $3e $40
    ld [$c472], a                                 ; $4323: $ea $72 $c4
    ld a, $02                                     ; $4326: $3e $02
    ld bc, $0800                                  ; $4328: $01 $00 $08
    ld de, $0700                                  ; $432b: $11 $00 $07
    rst $18                                       ; $432e: $df

    db $22, $0a

    rst $08                                       ; $4331: $cf

    db $5b

jr_031_4333:
    ld h, $01                                     ; $4333: $26 $01
    jr jr_031_4357                                ; $4335: $18 $20

jr_031_4337:
    ld a, [$c471]                                 ; $4337: $fa $71 $c4
    cp $78                                        ; $433a: $fe $78
    jr z, jr_031_4355                             ; $433c: $28 $17

    ld a, $78                                     ; $433e: $3e $78
    ld [$c471], a                                 ; $4340: $ea $71 $c4
    ld a, $40                                     ; $4343: $3e $40
    ld [$c472], a                                 ; $4345: $ea $72 $c4
    ld a, $02                                     ; $4348: $3e $02
    ld bc, $0c00                                  ; $434a: $01 $00 $0c
    ld de, $0700                                  ; $434d: $11 $00 $07
    rst $18                                       ; $4350: $df

    db $22, $0a

    rst $08                                       ; $4353: $cf

    db $5b

jr_031_4355:
    ld h, $00                                     ; $4355: $26 $00

jr_031_4357:
    call Call_000_2e3b                            ; $4357: $cd $3b $2e
    jr jr_031_42f7                                ; $435a: $18 $9b

jr_031_435c:
    ld a, h                                       ; $435c: $7c
    ret                                           ; $435d: $c9


Call_031_435e:
    ld a, [$c471]                                 ; $435e: $fa $71 $c4
    ld d, a                                       ; $4361: $57
    ld a, [$c472]                                 ; $4362: $fa $72 $c4
    ld e, a                                       ; $4365: $5f
    ld a, [$c4b2]                                 ; $4366: $fa $b2 $c4
    rrca                                          ; $4369: $0f
    and $07                                       ; $436a: $e6 $07
    add d                                         ; $436c: $82
    ld d, a                                       ; $436d: $57
    ld a, [$c4b2]                                 ; $436e: $fa $b2 $c4
    rrca                                          ; $4371: $0f
    and $07                                       ; $4372: $e6 $07
    add e                                         ; $4374: $83
    ld e, a                                       ; $4375: $5f
    ld bc, $0360                                  ; $4376: $01 $60 $03
    call Call_000_26a4                            ; $4379: $cd $a4 $26
    ret                                           ; $437c: $c9


Call_031_437d:
    ld a, [$c470]                                 ; $437d: $fa $70 $c4
    and a                                         ; $4380: $a7
    jr z, jr_031_43b1                             ; $4381: $28 $2e

    ld hl, $4230                                  ; $4383: $21 $30 $42
    ld bc, $0240                                  ; $4386: $01 $40 $02
    ld de, $2020                                  ; $4389: $11 $20 $20
    bit 0, a                                      ; $438c: $cb $47
    jr z, jr_031_4396                             ; $438e: $28 $06

    ld hl, $4249                                  ; $4390: $21 $49 $42
    ld bc, $024c                                  ; $4393: $01 $4c $02

jr_031_4396:
    push af                                       ; $4396: $f5
    call Call_000_26ea                            ; $4397: $cd $ea $26
    pop af                                        ; $439a: $f1
    ld hl, $4230                                  ; $439b: $21 $30 $42
    ld bc, $0240                                  ; $439e: $01 $40 $02
    ld de, $6820                                  ; $43a1: $11 $20 $68
    bit 1, a                                      ; $43a4: $cb $4f
    jr z, jr_031_43ae                             ; $43a6: $28 $06

    ld hl, $4249                                  ; $43a8: $21 $49 $42
    ld bc, $024c                                  ; $43ab: $01 $4c $02

jr_031_43ae:
    call Call_000_26ea                            ; $43ae: $cd $ea $26

jr_031_43b1:
    ret                                           ; $43b1: $c9


    call Call_031_437d                            ; $43b2: $cd $7d $43
    call Call_031_435e                            ; $43b5: $cd $5e $43
    ret                                           ; $43b8: $c9


Call_031_43b9:
    rst $18                                       ; $43b9: $df

    db $14, $02

    call Call_000_2cf9                            ; $43bc: $cd $f9 $2c
    rst $20                                       ; $43bf: $e7

    db $80, $03

    call Call_031_4262                            ; $43c2: $cd $62 $42
    xor a                                         ; $43c5: $af
    ld [$c470], a                                 ; $43c6: $ea $70 $c4
    ldh [$8b], a                                  ; $43c9: $e0 $8b
    ldh [$8a], a                                  ; $43cb: $e0 $8a
    ld a, $f0                                     ; $43cd: $3e $f0
    ld [$c471], a                                 ; $43cf: $ea $71 $c4
    ld a, $f0                                     ; $43d2: $3e $f0
    ld [$c472], a                                 ; $43d4: $ea $72 $c4
    ld hl, $0845                                  ; $43d7: $21 $45 $08
    rst $18                                       ; $43da: $df

    db $0e, $0a

    ld a, $01                                     ; $43dd: $3e $01
    ld hl, $43b2                                  ; $43df: $21 $b2 $43
    call Call_000_23e8                            ; $43e2: $cd $e8 $23
    ld a, [$c296]                                 ; $43e5: $fa $96 $c2
    ld bc, $3f00                                  ; $43e8: $01 $00 $3f
    ld de, $3f00                                  ; $43eb: $11 $00 $3f
    rst $18                                       ; $43ee: $df

    db $20, $0a

    ld a, [$c298]                                 ; $43f1: $fa $98 $c2
    ld bc, $3f00                                  ; $43f4: $01 $00 $3f
    ld de, $3f00                                  ; $43f7: $11 $00 $3f
    rst $18                                       ; $43fa: $df

    db $20, $0a

    ld c, $08                                     ; $43fd: $0e $08
    call Call_000_25af                            ; $43ff: $cd $af $25
    call Call_000_2625                            ; $4402: $cd $25 $26
    call Call_000_2ed5                            ; $4405: $cd $d5 $2e

    db $01

    ld a, $03                                     ; $4409: $3e $03
    ld bc, $0a00                                  ; $440b: $01 $00 $0a
    ld de, $0b00                                  ; $440e: $11 $00 $0b
    rst $18                                       ; $4411: $df

    db $22, $0a

    ld a, $03                                     ; $4414: $3e $03
    rst $18                                       ; $4416: $df

    db $1e, $0a

    ld a, $03                                     ; $4419: $3e $03
    ld b, $40                                     ; $441b: $06 $40
    rst $18                                       ; $441d: $df

    db $2c, $0a

    push af                                       ; $4420: $f5
    ld a, $14                                     ; $4421: $3e $14
    rst $18                                       ; $4423: $df

    db $04, $0a

    pop af                                        ; $4426: $f1
    ld a, $03                                     ; $4427: $3e $03
    ld b, a                                       ; $4429: $47
    ld a, $05                                     ; $442a: $3e $05
    rst $18                                       ; $442c: $df

    db $32, $0a

    ld a, $03                                     ; $442f: $3e $03
    rst $18                                       ; $4431: $df

    db $34, $0a

    push af                                       ; $4434: $f5
    ld a, $14                                     ; $4435: $3e $14
    rst $18                                       ; $4437: $df

    db $04, $0a

    pop af                                        ; $443a: $f1
    ld a, $03                                     ; $443b: $3e $03
    ld bc, $0200                                  ; $443d: $01 $00 $02
    ld de, $0b00                                  ; $4440: $11 $00 $0b
    rst $18                                       ; $4443: $df

    db $22, $0a

    ld a, $03                                     ; $4446: $3e $03
    rst $18                                       ; $4448: $df

    db $1e, $0a

    ld a, $03                                     ; $444b: $3e $03
    ld b, $40                                     ; $444d: $06 $40
    rst $18                                       ; $444f: $df

    db $2c, $0a

    push af                                       ; $4452: $f5
    ld a, $14                                     ; $4453: $3e $14
    rst $18                                       ; $4455: $df

    db $04, $0a

    pop af                                        ; $4458: $f1
    ld a, $8b                                     ; $4459: $3e $8b
    rst $18                                       ; $445b: $df

    db $08, $0a

    ld a, $8b                                     ; $445e: $3e $8b
    rst $18                                       ; $4460: $df

    db $08, $0a

    ld a, $02                                     ; $4463: $3e $02
    ld bc, $0a00                                  ; $4465: $01 $00 $0a
    ld de, $0700                                  ; $4468: $11 $00 $07
    rst $18                                       ; $446b: $df

    db $22, $0a

    ld a, $02                                     ; $446e: $3e $02
    rst $18                                       ; $4470: $df

    db $1e, $0a

    call Call_031_428c                            ; $4473: $cd $8c $42

Jump_031_4476:
    ld a, $00                                     ; $4476: $3e $00
    call Call_031_42c8                            ; $4478: $cd $c8 $42
    xor a                                         ; $447b: $af
    ld [$c470], a                                 ; $447c: $ea $70 $c4
    ld hl, $0847                                  ; $447f: $21 $47 $08
    rst $18                                       ; $4482: $df

    db $0e, $0a

    ld a, $8b                                     ; $4485: $3e $8b
    rst $18                                       ; $4487: $df

    db $0a, $0a

jr_031_448a:
    ld a, $00                                     ; $448a: $3e $00
    call Call_031_42ef                            ; $448c: $cd $ef $42
    cp $ff                                        ; $448f: $fe $ff
    jr z, jr_031_448a                             ; $4491: $28 $f7

    ld [$c473], a                                 ; $4493: $ea $73 $c4
    rst $28                                       ; $4496: $ef

    db $00, $00

    or a                                          ; $4499: $b7
    jr z, jr_031_449f                             ; $449a: $28 $03

    rst $20                                       ; $449c: $e7

    db $00, $00

jr_031_449f:
    push af                                       ; $449f: $f5
    inc a                                         ; $44a0: $3c
    ld [$c470], a                                 ; $44a1: $ea $70 $c4
    ld a, $f0                                     ; $44a4: $3e $f0
    ld [$c471], a                                 ; $44a6: $ea $71 $c4
    rst $18                                       ; $44a9: $df

    db $0c, $0a

    ld a, $02                                     ; $44ac: $3e $02
    ld bc, $0a00                                  ; $44ae: $01 $00 $0a
    ld de, $0700                                  ; $44b1: $11 $00 $07
    rst $18                                       ; $44b4: $df

    db $22, $0a

    ld a, $02                                     ; $44b7: $3e $02
    rst $18                                       ; $44b9: $df

    db $1e, $0a

    ld a, $02                                     ; $44bc: $3e $02
    ld b, $40                                     ; $44be: $06 $40
    rst $18                                       ; $44c0: $df

    db $2c, $0a

    push af                                       ; $44c3: $f5
    ld a, $0a                                     ; $44c4: $3e $0a
    rst $18                                       ; $44c6: $df

    db $04, $0a

    pop af                                        ; $44c9: $f1
    ld a, $02                                     ; $44ca: $3e $02
    ld b, a                                       ; $44cc: $47
    ld a, $05                                     ; $44cd: $3e $05
    rst $18                                       ; $44cf: $df

    db $32, $0a

    ld a, $02                                     ; $44d2: $3e $02
    rst $18                                       ; $44d4: $df

    db $34, $0a

    push af                                       ; $44d7: $f5
    ld a, $14                                     ; $44d8: $3e $14
    rst $18                                       ; $44da: $df

    db $04, $0a

    pop af                                        ; $44dd: $f1
    pop af                                        ; $44de: $f1

Jump_031_44df:
    ld a, [$c473]                                 ; $44df: $fa $73 $c4
    inc a                                         ; $44e2: $3c
    call Call_031_42c8                            ; $44e3: $cd $c8 $42
    xor a                                         ; $44e6: $af
    ld [$c470], a                                 ; $44e7: $ea $70 $c4
    ld hl, $0848                                  ; $44ea: $21 $48 $08
    rst $18                                       ; $44ed: $df

    db $0e, $0a

    ld a, $8b                                     ; $44f0: $3e $8b
    rst $18                                       ; $44f2: $df

    db $0a, $0a

    ld a, $00                                     ; $44f5: $3e $00
    call Call_031_42ef                            ; $44f7: $cd $ef $42
    cp $ff                                        ; $44fa: $fe $ff
    jr nz, jr_031_453d                            ; $44fc: $20 $3f

    ld a, $ff                                     ; $44fe: $3e $ff
    ld [$c470], a                                 ; $4500: $ea $70 $c4
    ld a, $f0                                     ; $4503: $3e $f0
    ld [$c471], a                                 ; $4505: $ea $71 $c4
    ld a, $02                                     ; $4508: $3e $02
    ld bc, $0a00                                  ; $450a: $01 $00 $0a
    ld de, $0700                                  ; $450d: $11 $00 $07
    rst $18                                       ; $4510: $df
    ld [hl+], a                                   ; $4511: $22
    ld a, [bc]                                    ; $4512: $0a
    ld a, $02                                     ; $4513: $3e $02
    rst $18                                       ; $4515: $df
    ld e, $0a                                     ; $4516: $1e $0a
    ld a, $02                                     ; $4518: $3e $02
    ld b, $40                                     ; $451a: $06 $40
    rst $18                                       ; $451c: $df
    inc l                                         ; $451d: $2c
    ld a, [bc]                                    ; $451e: $0a
    push af                                       ; $451f: $f5
    ld a, $0a                                     ; $4520: $3e $0a
    rst $18                                       ; $4522: $df
    inc b                                         ; $4523: $04
    ld a, [bc]                                    ; $4524: $0a
    pop af                                        ; $4525: $f1
    ld a, $02                                     ; $4526: $3e $02
    ld b, a                                       ; $4528: $47
    ld a, $06                                     ; $4529: $3e $06
    rst $18                                       ; $452b: $df
    ld [hl-], a                                   ; $452c: $32
    ld a, [bc]                                    ; $452d: $0a
    ld a, $02                                     ; $452e: $3e $02
    rst $18                                       ; $4530: $df
    inc [hl]                                      ; $4531: $34
    ld a, [bc]                                    ; $4532: $0a
    push af                                       ; $4533: $f5
    ld a, $0a                                     ; $4534: $3e $0a
    rst $18                                       ; $4536: $df
    inc b                                         ; $4537: $04
    ld a, [bc]                                    ; $4538: $0a
    pop af                                        ; $4539: $f1
    jp Jump_031_4476                              ; $453a: $c3 $76 $44


jr_031_453d:
    rst $28                                       ; $453d: $ef

    db $20, $00

    or a                                          ; $4540: $b7
    jr z, jr_031_4546                             ; $4541: $28 $03

    rst $20                                       ; $4543: $e7
    jr nz, jr_031_4546                            ; $4544: $20 $00

jr_031_4546:
    inc a                                         ; $4546: $3c
    ld [$c470], a                                 ; $4547: $ea $70 $c4
    ld a, $f0                                     ; $454a: $3e $f0
    ld [$c471], a                                 ; $454c: $ea $71 $c4
    rst $18                                       ; $454f: $df

    db $0c, $0a

    ld a, $02                                     ; $4552: $3e $02
    ld bc, $0a00                                  ; $4554: $01 $00 $0a
    ld de, $0700                                  ; $4557: $11 $00 $07
    rst $18                                       ; $455a: $df

    db $22, $0a

    ld a, $02                                     ; $455d: $3e $02
    rst $18                                       ; $455f: $df

    db $1e, $0a

    ld a, $02                                     ; $4562: $3e $02
    ld b, $40                                     ; $4564: $06 $40
    rst $18                                       ; $4566: $df

    db $2c, $0a

    push af                                       ; $4569: $f5
    ld a, $0a                                     ; $456a: $3e $0a
    rst $18                                       ; $456c: $df

    db $04, $0a

    pop af                                        ; $456f: $f1
    ld a, $02                                     ; $4570: $3e $02
    ld b, a                                       ; $4572: $47
    ld a, $05                                     ; $4573: $3e $05
    rst $18                                       ; $4575: $df

    db $32, $0a

    ld a, $02                                     ; $4578: $3e $02
    rst $18                                       ; $457a: $df

    db $34, $0a

    push af                                       ; $457d: $f5
    ld a, $14                                     ; $457e: $3e $14
    rst $18                                       ; $4580: $df

    db $04, $0a

    pop af                                        ; $4583: $f1
    ld a, $03                                     ; $4584: $3e $03
    call Call_031_42c8                            ; $4586: $cd $c8 $42
    xor a                                         ; $4589: $af
    ld [$c470], a                                 ; $458a: $ea $70 $c4
    ld hl, $0849                                  ; $458d: $21 $49 $08
    rst $18                                       ; $4590: $df

    db $0e, $0a

    ld a, $8b                                     ; $4593: $3e $8b
    rst $18                                       ; $4595: $df

    db $0a, $0a

    ld a, $00                                     ; $4598: $3e $00
    call Call_031_42ef                            ; $459a: $cd $ef $42
    cp $ff                                        ; $459d: $fe $ff
    jr nz, jr_031_45e0                            ; $459f: $20 $3f

    ld a, $ff                                     ; $45a1: $3e $ff
    ld [$c470], a                                 ; $45a3: $ea $70 $c4
    ld a, $f0                                     ; $45a6: $3e $f0
    ld [$c471], a                                 ; $45a8: $ea $71 $c4
    ld a, $02                                     ; $45ab: $3e $02
    ld bc, $0a00                                  ; $45ad: $01 $00 $0a
    ld de, $0700                                  ; $45b0: $11 $00 $07
    rst $18                                       ; $45b3: $df
    ld [hl+], a                                   ; $45b4: $22
    ld a, [bc]                                    ; $45b5: $0a
    ld a, $02                                     ; $45b6: $3e $02
    rst $18                                       ; $45b8: $df
    ld e, $0a                                     ; $45b9: $1e $0a
    ld a, $02                                     ; $45bb: $3e $02
    ld b, $40                                     ; $45bd: $06 $40
    rst $18                                       ; $45bf: $df
    inc l                                         ; $45c0: $2c
    ld a, [bc]                                    ; $45c1: $0a
    push af                                       ; $45c2: $f5
    ld a, $0a                                     ; $45c3: $3e $0a
    rst $18                                       ; $45c5: $df
    inc b                                         ; $45c6: $04
    ld a, [bc]                                    ; $45c7: $0a
    pop af                                        ; $45c8: $f1
    ld a, $02                                     ; $45c9: $3e $02
    ld b, a                                       ; $45cb: $47
    ld a, $06                                     ; $45cc: $3e $06
    rst $18                                       ; $45ce: $df
    ld [hl-], a                                   ; $45cf: $32
    ld a, [bc]                                    ; $45d0: $0a
    ld a, $02                                     ; $45d1: $3e $02
    rst $18                                       ; $45d3: $df
    inc [hl]                                      ; $45d4: $34
    ld a, [bc]                                    ; $45d5: $0a
    push af                                       ; $45d6: $f5
    ld a, $0a                                     ; $45d7: $3e $0a
    rst $18                                       ; $45d9: $df
    inc b                                         ; $45da: $04
    ld a, [bc]                                    ; $45db: $0a
    pop af                                        ; $45dc: $f1
    jp Jump_031_44df                              ; $45dd: $c3 $df $44


jr_031_45e0:
    rst $28                                       ; $45e0: $ef

    db $40, $00

    or a                                          ; $45e3: $b7
    jr z, jr_031_45e9                             ; $45e4: $28 $03

    rst $20                                       ; $45e6: $e7

    db $40, $00

jr_031_45e9:
    inc a                                         ; $45e9: $3c
    ld [$c470], a                                 ; $45ea: $ea $70 $c4
    ld a, $f0                                     ; $45ed: $3e $f0
    ld [$c471], a                                 ; $45ef: $ea $71 $c4
    rst $18                                       ; $45f2: $df

    db $0c, $0a

    ld a, $02                                     ; $45f5: $3e $02
    ld bc, $0a00                                  ; $45f7: $01 $00 $0a
    ld de, $0700                                  ; $45fa: $11 $00 $07
    rst $18                                       ; $45fd: $df

    db $22, $0a

    ld a, $02                                     ; $4600: $3e $02
    rst $18                                       ; $4602: $df

    db $1e, $0a

    ld a, $02                                     ; $4605: $3e $02
    ld b, $40                                     ; $4607: $06 $40
    rst $18                                       ; $4609: $df

    db $2c, $0a

    push af                                       ; $460c: $f5
    ld a, $0a                                     ; $460d: $3e $0a
    rst $18                                       ; $460f: $df

    db $04, $0a

    pop af                                        ; $4612: $f1
    ld a, $02                                     ; $4613: $3e $02
    ld b, a                                       ; $4615: $47
    ld a, $05                                     ; $4616: $3e $05
    rst $18                                       ; $4618: $df

    db $32, $0a

    ld a, $02                                     ; $461b: $3e $02
    rst $18                                       ; $461d: $df

    db $34, $0a

    push af                                       ; $4620: $f5
    ld a, $14                                     ; $4621: $3e $14
    rst $18                                       ; $4623: $df

    db $04, $0a

    pop af                                        ; $4626: $f1

Jump_031_4627:
    xor a                                         ; $4627: $af
    rst $30                                       ; $4628: $f7

    db $00, $00

    jr z, jr_031_462f                             ; $462b: $28 $02

    set 0, a                                      ; $462d: $cb $c7

jr_031_462f:
    rst $30                                       ; $462f: $f7

    db $20, $00

    jr z, jr_031_4636                             ; $4632: $28 $02

    set 1, a                                      ; $4634: $cb $cf

jr_031_4636:
    ld hl, $4791                                  ; $4636: $21 $91 $47
    add l                                         ; $4639: $85
    ld l, a                                       ; $463a: $6f
    jr nc, jr_031_463e                            ; $463b: $30 $01

    inc h                                         ; $463d: $24

jr_031_463e:
    ld d, [hl]                                    ; $463e: $56
    xor a                                         ; $463f: $af
    rst $18                                       ; $4640: $df

    db $16, $02

    ld hl, $c811                                  ; $4643: $21 $11 $c8
    rst $30                                       ; $4646: $f7

    db $40, $00

    jr z, jr_031_464d                             ; $4649: $28 $02

    ld [hl], $01                                  ; $464b: $36 $01

jr_031_464d:
    call Call_000_0a61                            ; $464d: $cd $61 $0a
    ld a, h                                       ; $4650: $7c
    and $07                                       ; $4651: $e6 $07
    cp $06                                        ; $4653: $fe $06
    jr nz, jr_031_4658                            ; $4655: $20 $01

    xor a                                         ; $4657: $af

jr_031_4658:
    ld [$c83e], a                                 ; $4658: $ea $3e $c8
    xor a                                         ; $465b: $af
    ld [$c470], a                                 ; $465c: $ea $70 $c4
    ld c, $10                                     ; $465f: $0e $10
    call Call_000_25a1                            ; $4661: $cd $a1 $25
    call Call_000_2625                            ; $4664: $cd $25 $26
    rst $28                                       ; $4667: $ef

    db $80, $03

    rst $20                                       ; $466a: $e7

    db $00, $03

    rst $20                                       ; $466d: $e7

    db $80, $02

    xor a                                         ; $4670: $af
    ld c, $00                                     ; $4671: $0e $00
    rst $18                                       ; $4673: $df

    db $24, $41

    rst $28                                       ; $4676: $ef

    db $80, $02

    rst $28                                       ; $4679: $ef

    db $00, $03

    rst $20                                       ; $467c: $e7

    db $80, $03

    push af                                       ; $467f: $f5
    ld a, $01                                     ; $4680: $3e $01
    ldh [$96], a                                  ; $4682: $e0 $96
    ldh [rSVBK], a                                ; $4684: $e0 $70
    call Call_031_4262                            ; $4686: $cd $62 $42
    call Call_000_2e3b                            ; $4689: $cd $3b $2e
    rst $18                                       ; $468c: $df

    db $1c, $05

    call Call_000_2e3b                            ; $468f: $cd $3b $2e
    ld a, $05                                     ; $4692: $3e $05
    ldh [$96], a                                  ; $4694: $e0 $96
    ldh [rSVBK], a                                ; $4696: $e0 $70
    ld hl, $d000                                  ; $4698: $21 $00 $d0
    ld de, $9800                                  ; $469b: $11 $00 $98
    ld c, $24                                     ; $469e: $0e $24
    call Call_000_0468                            ; $46a0: $cd $68 $04
    call Call_000_2e3b                            ; $46a3: $cd $3b $2e
    ld hl, $d400                                  ; $46a6: $21 $00 $d4
    ld de, $b800                                  ; $46a9: $11 $00 $b8
    ld c, $24                                     ; $46ac: $0e $24
    call Call_000_0468                            ; $46ae: $cd $68 $04
    ld c, $10                                     ; $46b1: $0e $10
    call Call_000_25af                            ; $46b3: $cd $af $25
    call Call_000_2625                            ; $46b6: $cd $25 $26
    pop af                                        ; $46b9: $f1
    and a                                         ; $46ba: $a7
    jr nz, jr_031_46c6                            ; $46bb: $20 $09

    call Call_000_2e3b                            ; $46bd: $cd $3b $2e
    call Call_031_428c                            ; $46c0: $cd $8c $42
    jp Jump_031_4476                              ; $46c3: $c3 $76 $44


jr_031_46c6:
    ld hl, $084a                                  ; $46c6: $21 $4a $08
    rst $18                                       ; $46c9: $df

    db $0e, $0a

    ld a, $8b                                     ; $46cc: $3e $8b
    rst $18                                       ; $46ce: $df

    db $08, $0a

    xor a                                         ; $46d1: $af
    ld [$c470], a                                 ; $46d2: $ea $70 $c4
    rst $20                                       ; $46d5: $e7

    db $80, $02

    rst $18                                       ; $46d8: $df

    db $02, $06

    rst $28                                       ; $46db: $ef

    db $80, $02

    cp $ff                                        ; $46de: $fe $ff
    jr nz, jr_031_46f0                            ; $46e0: $20 $0e

    rst $20                                       ; $46e2: $e7
    add b                                         ; $46e3: $80
    ld [bc], a                                    ; $46e4: $02
    ld c, $7f                                     ; $46e5: $0e $7f
    call Call_000_25a1                            ; $46e7: $cd $a1 $25
    call Call_000_2625                            ; $46ea: $cd $25 $26
    jp Jump_031_4627                              ; $46ed: $c3 $27 $46


jr_031_46f0:
    rst $28                                       ; $46f0: $ef

    db $c0, $02

    ld a, [$c82d]                                 ; $46f3: $fa $2d $c8
    and $7f                                       ; $46f6: $e6 $7f
    ld [$c82d], a                                 ; $46f8: $ea $2d $c8
    rst $18                                       ; $46fb: $df

    db $1c, $05

    ld a, $05                                     ; $46fe: $3e $05
    ldh [$96], a                                  ; $4700: $e0 $96
    ldh [rSVBK], a                                ; $4702: $e0 $70
    ld hl, $d000                                  ; $4704: $21 $00 $d0
    ld de, $9800                                  ; $4707: $11 $00 $98
    ld c, $24                                     ; $470a: $0e $24
    call Call_000_0468                            ; $470c: $cd $68 $04
    ld hl, $d400                                  ; $470f: $21 $00 $d4
    ld de, $b800                                  ; $4712: $11 $00 $b8
    ld c, $24                                     ; $4715: $0e $24
    call Call_000_0468                            ; $4717: $cd $68 $04
    ld hl, $084b                                  ; $471a: $21 $4b $08
    rst $18                                       ; $471d: $df

    db $0e, $0a

    ld a, $8b                                     ; $4720: $3e $8b
    rst $18                                       ; $4722: $df

    db $08, $0a

    ld hl, $43b2                                  ; $4725: $21 $b2 $43
    call Call_000_2449                            ; $4728: $cd $49 $24
    call Call_000_2ed5                            ; $472b: $cd $d5 $2e

    db $0a

    ld c, $04                                     ; $472f: $0e $04
    call Call_000_25a1                            ; $4731: $cd $a1 $25
    call Call_000_2625                            ; $4734: $cd $25 $26
    push af                                       ; $4737: $f5
    ld a, $46                                     ; $4738: $3e $46
    rst $18                                       ; $473a: $df

    db $04, $0a

    pop af                                        ; $473d: $f1
    ld hl, $c210                                  ; $473e: $21 $10 $c2
    ld bc, $0030                                  ; $4741: $01 $30 $00
    call Call_000_039f                            ; $4744: $cd $9f $03
    rst $20                                       ; $4747: $e7

    db $80, $02

    ld c, $04                                     ; $474a: $0e $04
    call Call_000_25af                            ; $474c: $cd $af $25
    call Call_000_2625                            ; $474f: $cd $25 $26
    rst $08                                       ; $4752: $cf

    db $00

    ld hl, $c82d                                  ; $4754: $21 $2d $c8
    set 7, [hl]                                   ; $4757: $cb $fe
    ld hl, $0486                                  ; $4759: $21 $86 $04
    rst $18                                       ; $475c: $df

    db $0e, $0a

    ld a, $86                                     ; $475f: $3e $86
    rst $18                                       ; $4761: $df

    db $0a, $0a

    push af                                       ; $4764: $f5
    ld a, $6e                                     ; $4765: $3e $6e
    rst $18                                       ; $4767: $df

    db $04, $0a

    pop af                                        ; $476a: $f1
    rst $18                                       ; $476b: $df

    db $0c, $0a

    ld hl, $c82d                                  ; $476e: $21 $2d $c8
    res 7, [hl]                                   ; $4771: $cb $be
    ld c, $04                                     ; $4773: $0e $04
    call Call_000_25a1                            ; $4775: $cd $a1 $25
    call Call_000_2625                            ; $4778: $cd $25 $26
    push af                                       ; $477b: $f5
    ld a, $3c                                     ; $477c: $3e $3c
    rst $18                                       ; $477e: $df

    db $04, $0a

    pop af                                        ; $4781: $f1
    rst $28                                       ; $4782: $ef

    db $80, $02

    ld a, $01                                     ; $4785: $3e $01
    ld [$c441], a                                 ; $4787: $ea $41 $c4
    rst $20                                       ; $478a: $e7

    db $20, $0c

    rst $28                                       ; $478d: $ef

    db $80, $03

    ret                                           ; $4790: $c9


    nop                                           ; $4791: $00

    db $01

    inc bc                                        ; $4793: $03
    ld [bc], a                                    ; $4794: $02
    xor h                                         ; $4795: $ac
    ld b, a                                       ; $4796: $47
    or e                                          ; $4797: $b3
    ld b, a                                       ; $4798: $47
    and e                                         ; $4799: $a3
    ld b, a                                       ; $479a: $47
    call nc, $d547                                ; $479b: $d4 $47 $d5
    ld b, a                                       ; $479e: $47
    sub $47                                       ; $479f: $d6 $47
    rst $10                                       ; $47a1: $d7
    ld b, a                                       ; $47a2: $47
    nop                                           ; $47a3: $00
    nop                                           ; $47a4: $00
    nop                                           ; $47a5: $00
    nop                                           ; $47a6: $00
    nop                                           ; $47a7: $00
    nop                                           ; $47a8: $00
    nop                                           ; $47a9: $00
    nop                                           ; $47aa: $00
    rst $38                                       ; $47ab: $ff
    ld bc, $00c0                                  ; $47ac: $01 $c0 $00
    add hl, bc                                    ; $47af: $09
    nop                                           ; $47b0: $00
    add hl, bc                                    ; $47b1: $09
    rst $38                                       ; $47b2: $ff
    inc b                                         ; $47b3: $04
    rst $38                                       ; $47b4: $ff
    nop                                           ; $47b5: $00
    nop                                           ; $47b6: $00
    nop                                           ; $47b7: $00
    nop                                           ; $47b8: $00
    inc bc                                        ; $47b9: $03
    ld bc, $ff05                                  ; $47ba: $01 $05 $ff
    nop                                           ; $47bd: $00
    nop                                           ; $47be: $00
    nop                                           ; $47bf: $00
    nop                                           ; $47c0: $00
    ld e, $01                                     ; $47c1: $1e $01
    ld a, [bc]                                    ; $47c3: $0a
    rst $38                                       ; $47c4: $ff
    nop                                           ; $47c5: $00
    nop                                           ; $47c6: $00
    nop                                           ; $47c7: $00
    nop                                           ; $47c8: $00
    rra                                           ; $47c9: $1f
    ld [bc], a                                    ; $47ca: $02
    dec bc                                        ; $47cb: $0b
    rst $38                                       ; $47cc: $ff
    nop                                           ; $47cd: $00
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    nop                                           ; $47d0: $00
    rra                                           ; $47d1: $1f
    ld bc, $ffff                                  ; $47d2: $01 $ff $ff
    rst $38                                       ; $47d5: $ff
    rst $38                                       ; $47d6: $ff
    call Call_000_2e3b                            ; $47d7: $cd $3b $2e
    ld hl, $11c0                                  ; $47da: $21 $c0 $11
    ld de, $0480                                  ; $47dd: $11 $80 $04
    call Call_000_1a03                            ; $47e0: $cd $03 $1a
    call Call_000_2e3b                            ; $47e3: $cd $3b $2e
    ld hl, $115c                                  ; $47e6: $21 $5c $11
    ld de, $0480                                  ; $47e9: $11 $80 $04
    call Call_000_1a03                            ; $47ec: $cd $03 $1a
    call Call_000_2e3b                            ; $47ef: $cd $3b $2e
    ld hl, $11f8                                  ; $47f2: $21 $f8 $11
    ld de, $044c                                  ; $47f5: $11 $4c $04
    call Call_000_1a03                            ; $47f8: $cd $03 $1a
    push hl                                       ; $47fb: $e5
    push de                                       ; $47fc: $d5
    ld h, b                                       ; $47fd: $60
    ld l, c                                       ; $47fe: $69
    ld de, $090c                                  ; $47ff: $11 $0c $09
    call Call_000_22bc                            ; $4802: $cd $bc $22
    pop de                                        ; $4805: $d1
    pop hl                                        ; $4806: $e1
    call Call_000_2e3b                            ; $4807: $cd $3b $2e
    ld hl, $11f8                                  ; $480a: $21 $f8 $11
    ld de, $0480                                  ; $480d: $11 $80 $04
    call Call_000_1a03                            ; $4810: $cd $03 $1a
    push hl                                       ; $4813: $e5
    push de                                       ; $4814: $d5
    ld h, b                                       ; $4815: $60
    ld l, c                                       ; $4816: $69
    ld de, $090d                                  ; $4817: $11 $0d $09
    call Call_000_22bc                            ; $481a: $cd $bc $22
    pop de                                        ; $481d: $d1
    pop hl                                        ; $481e: $e1
    call Call_000_2e3b                            ; $481f: $cd $3b $2e
    ld hl, $11f8                                  ; $4822: $21 $f8 $11
    ld de, $04e4                                  ; $4825: $11 $e4 $04
    call Call_000_1a03                            ; $4828: $cd $03 $1a
    push hl                                       ; $482b: $e5
    push de                                       ; $482c: $d5
    ld h, b                                       ; $482d: $60
    ld l, c                                       ; $482e: $69
    ld de, $090e                                  ; $482f: $11 $0e $09
    call Call_000_22bc                            ; $4832: $cd $bc $22
    pop de                                        ; $4835: $d1
    pop hl                                        ; $4836: $e1
    call Call_000_2e3b                            ; $4837: $cd $3b $2e
    call Call_031_483e                            ; $483a: $cd $3e $48
    ret                                           ; $483d: $c9


Call_031_483e:
    ld a, $00                                     ; $483e: $3e $00
    ld b, $00                                     ; $4840: $06 $00
    rst $18                                       ; $4842: $df
    ld b, [hl]                                    ; $4843: $46
    ld a, [bc]                                    ; $4844: $0a
    ld c, $08                                     ; $4845: $0e $08
    call Call_000_25af                            ; $4847: $cd $af $25
    call Call_000_2625                            ; $484a: $cd $25 $26

jr_031_484d:
    ld hl, $0085                                  ; $484d: $21 $85 $00
    ld de, $0101                                  ; $4850: $11 $01 $01
    rst $18                                       ; $4853: $df
    ld b, h                                       ; $4854: $44
    ld a, [bc]                                    ; $4855: $0a
    cp $ff                                        ; $4856: $fe $ff
    jr z, jr_031_484d                             ; $4858: $28 $f3

    add a                                         ; $485a: $87
    ld hl, $4867                                  ; $485b: $21 $67 $48
    add l                                         ; $485e: $85
    ld l, a                                       ; $485f: $6f
    jr nc, jr_031_4863                            ; $4860: $30 $01

    inc h                                         ; $4862: $24

jr_031_4863:
    ld a, [hl+]                                   ; $4863: $2a
    ld h, [hl]                                    ; $4864: $66
    ld l, a                                       ; $4865: $6f
    jp hl                                         ; $4866: $e9


    ld [hl], e                                    ; $4867: $73
    ld c, b                                       ; $4868: $48
    and e                                         ; $4869: $a3
    ld c, b                                       ; $486a: $48
    db $d3                                        ; $486b: $d3
    ld c, b                                       ; $486c: $48
    ld [bc], a                                    ; $486d: $02
    ld c, c                                       ; $486e: $49
    ld [de], a                                    ; $486f: $12
    ld c, c                                       ; $4870: $49
    ld b, b                                       ; $4871: $40
    ld c, c                                       ; $4872: $49
    rst $18                                       ; $4873: $df
    inc e                                         ; $4874: $1c
    db $10                                        ; $4875: $10
    ld a, [$c450]                                 ; $4876: $fa $50 $c4
    ld b, a                                       ; $4879: $47
    ld a, [$c46a]                                 ; $487a: $fa $6a $c4
    ld c, a                                       ; $487d: $4f
    rst $18                                       ; $487e: $df
    ld c, [hl]                                    ; $487f: $4e
    ld a, [bc]                                    ; $4880: $0a
    ld a, $01                                     ; $4881: $3e $01
    ld [$c834], a                                 ; $4883: $ea $34 $c8
    ld bc, $8000                                  ; $4886: $01 $00 $80
    rst $18                                       ; $4889: $df
    ld e, $02                                     ; $488a: $1e $02
    ld bc, $ff01                                  ; $488c: $01 $01 $ff
    rst $18                                       ; $488f: $df
    ld e, $02                                     ; $4890: $1e $02
    ld hl, $0101                                  ; $4892: $21 $01 $01
    rst $18                                       ; $4895: $df
    db $10                                        ; $4896: $10
    db $10                                        ; $4897: $10
    ld a, $01                                     ; $4898: $3e $01
    rst $18                                       ; $489a: $df
    ld [de], a                                    ; $489b: $12
    db $10                                        ; $489c: $10
    rst $18                                       ; $489d: $df
    jr nc, jr_031_48b0                            ; $489e: $30 $10

    jp Jump_031_4945                              ; $48a0: $c3 $45 $49


    rst $18                                       ; $48a3: $df
    inc e                                         ; $48a4: $1c
    db $10                                        ; $48a5: $10
    ld a, [$c450]                                 ; $48a6: $fa $50 $c4
    ld b, a                                       ; $48a9: $47
    ld a, [$c46a]                                 ; $48aa: $fa $6a $c4
    ld c, a                                       ; $48ad: $4f
    rst $18                                       ; $48ae: $df
    ld c, [hl]                                    ; $48af: $4e

jr_031_48b0:
    ld a, [bc]                                    ; $48b0: $0a
    ld a, $02                                     ; $48b1: $3e $02
    ld [$c834], a                                 ; $48b3: $ea $34 $c8
    ld bc, $8000                                  ; $48b6: $01 $00 $80
    rst $18                                       ; $48b9: $df
    ld e, $02                                     ; $48ba: $1e $02
    ld bc, $8001                                  ; $48bc: $01 $01 $80
    rst $18                                       ; $48bf: $df
    ld e, $02                                     ; $48c0: $1e $02
    ld hl, $0103                                  ; $48c2: $21 $03 $01
    rst $18                                       ; $48c5: $df
    db $10                                        ; $48c6: $10
    db $10                                        ; $48c7: $10
    ld a, $01                                     ; $48c8: $3e $01
    rst $18                                       ; $48ca: $df
    ld [de], a                                    ; $48cb: $12
    db $10                                        ; $48cc: $10
    rst $18                                       ; $48cd: $df
    jr nc, jr_031_48e0                            ; $48ce: $30 $10

    jp Jump_031_4945                              ; $48d0: $c3 $45 $49


    rst $18                                       ; $48d3: $df
    inc e                                         ; $48d4: $1c
    db $10                                        ; $48d5: $10
    ld a, [$c450]                                 ; $48d6: $fa $50 $c4
    ld b, a                                       ; $48d9: $47
    ld a, [$c46a]                                 ; $48da: $fa $6a $c4
    ld c, a                                       ; $48dd: $4f
    rst $18                                       ; $48de: $df
    ld c, [hl]                                    ; $48df: $4e

jr_031_48e0:
    ld a, [bc]                                    ; $48e0: $0a
    ld a, $06                                     ; $48e1: $3e $06
    ld [$c834], a                                 ; $48e3: $ea $34 $c8
    ld bc, $8000                                  ; $48e6: $01 $00 $80
    rst $18                                       ; $48e9: $df
    ld e, $02                                     ; $48ea: $1e $02
    ld bc, $ff01                                  ; $48ec: $01 $01 $ff
    rst $18                                       ; $48ef: $df
    ld e, $02                                     ; $48f0: $1e $02
    ld hl, $0102                                  ; $48f2: $21 $02 $01
    rst $18                                       ; $48f5: $df
    db $10                                        ; $48f6: $10
    db $10                                        ; $48f7: $10
    ld a, $01                                     ; $48f8: $3e $01
    rst $18                                       ; $48fa: $df
    ld [de], a                                    ; $48fb: $12
    db $10                                        ; $48fc: $10
    rst $18                                       ; $48fd: $df
    jr nc, jr_031_4910                            ; $48fe: $30 $10

    jr jr_031_4945                                ; $4900: $18 $43

    rst $18                                       ; $4902: $df
    inc e                                         ; $4903: $1c
    db $10                                        ; $4904: $10
    rst $18                                       ; $4905: $df
    ld e, b                                       ; $4906: $58
    ld a, [bc]                                    ; $4907: $0a
    rst $18                                       ; $4908: $df
    jr nc, @+$12                                  ; $4909: $30 $10

    ld a, $04                                     ; $490b: $3e $04
    ld [$c441], a                                 ; $490d: $ea $41 $c4

jr_031_4910:
    jr jr_031_4945                                ; $4910: $18 $33

    rst $18                                       ; $4912: $df
    inc e                                         ; $4913: $1c
    db $10                                        ; $4914: $10
    ld a, $02                                     ; $4915: $3e $02
    ld [$c836], a                                 ; $4917: $ea $36 $c8
    ld a, $0b                                     ; $491a: $3e $0b
    ld [$c837], a                                 ; $491c: $ea $37 $c8
    ld a, $01                                     ; $491f: $3e $01
    ld [$c834], a                                 ; $4921: $ea $34 $c8
    ld a, $00                                     ; $4924: $3e $00
    ld [$c4bd], a                                 ; $4926: $ea $bd $c4
    ld a, $00                                     ; $4929: $3e $00
    ld [$c83a], a                                 ; $492b: $ea $3a $c8
    ld a, $00                                     ; $492e: $3e $00
    ld [$c890], a                                 ; $4930: $ea $90 $c8
    ld a, $04                                     ; $4933: $3e $04
    ld [$c8d0], a                                 ; $4935: $ea $d0 $c8
    rst $18                                       ; $4938: $df
    nop                                           ; $4939: $00
    ld c, $df                                     ; $493a: $0e $df
    jr nc, jr_031_494e                            ; $493c: $30 $10

    jr jr_031_4945                                ; $493e: $18 $05

    ld a, $05                                     ; $4940: $3e $05
    ld [$c441], a                                 ; $4942: $ea $41 $c4

Jump_031_4945:
jr_031_4945:
    ret                                           ; $4945: $c9


    and l                                         ; $4946: $a5
    ld c, c                                       ; $4947: $49
    call c, Call_031_5449                         ; $4948: $dc $49 $54
    ld c, c                                       ; $494b: $49
    sub a                                         ; $494c: $97
    ld c, e                                       ; $494d: $4b

jr_031_494e:
    ret nz                                        ; $494e: $c0

    ld c, e                                       ; $494f: $4b
    db $db                                        ; $4950: $db
    ld c, e                                       ; $4951: $4b
    db $ec                                        ; $4952: $ec
    ld c, e                                       ; $4953: $4b
    add hl, de                                    ; $4954: $19
    ld a, l                                       ; $4955: $7d
    nop                                           ; $4956: $00
    jr jr_031_4959                                ; $4957: $18 $00

jr_031_4959:
    add hl, sp                                    ; $4959: $39
    nop                                           ; $495a: $00
    nop                                           ; $495b: $00
    nop                                           ; $495c: $00
    nop                                           ; $495d: $00
    ld bc, $2416                                  ; $495e: $01 $16 $24
    ld a, l                                       ; $4961: $7d
    nop                                           ; $4962: $00
    inc d                                         ; $4963: $14
    nop                                           ; $4964: $00
    add hl, sp                                    ; $4965: $39
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    ld bc, $2d16                                  ; $496a: $01 $16 $2d
    ld a, l                                       ; $496d: $7d
    nop                                           ; $496e: $00
    jr nz, jr_031_4971                            ; $496f: $20 $00

jr_031_4971:
    add hl, sp                                    ; $4971: $39
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    ld bc, $be0d                                  ; $4976: $01 $0d $be
    ld a, h                                       ; $4979: $7c
    nop                                           ; $497a: $00
    inc h                                         ; $497b: $24
    nop                                           ; $497c: $00
    add hl, sp                                    ; $497d: $39
    nop                                           ; $497e: $00
    nop                                           ; $497f: $00
    nop                                           ; $4980: $00
    add b                                         ; $4981: $80
    ld bc, $be0e                                  ; $4982: $01 $0e $be
    ld a, h                                       ; $4985: $7c
    nop                                           ; $4986: $00
    ld h, $00                                     ; $4987: $26 $00
    inc a                                         ; $4989: $3c
    nop                                           ; $498a: $00
    nop                                           ; $498b: $00
    nop                                           ; $498c: $00
    add b                                         ; $498d: $80
    ld bc, $be0a                                  ; $498e: $01 $0a $be
    ld a, h                                       ; $4991: $7c
    nop                                           ; $4992: $00
    inc e                                         ; $4993: $1c
    nop                                           ; $4994: $00
    scf                                           ; $4995: $37
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    ld b, b                                       ; $4999: $40
    ld bc, $0026                                  ; $499a: $01 $26 $00
    nop                                           ; $499d: $00
    nop                                           ; $499e: $00
    nop                                           ; $499f: $00
    nop                                           ; $49a0: $00
    nop                                           ; $49a1: $00
    nop                                           ; $49a2: $00
    nop                                           ; $49a3: $00
    rst $38                                       ; $49a4: $ff
    ld bc, $00c0                                  ; $49a5: $01 $c0 $00
    ld a, [de]                                    ; $49a8: $1a
    nop                                           ; $49a9: $00
    dec a                                         ; $49aa: $3d
    ld [bc], a                                    ; $49ab: $02
    ld b, b                                       ; $49ac: $40
    nop                                           ; $49ad: $00
    dec e                                         ; $49ae: $1d
    nop                                           ; $49af: $00
    inc sp                                        ; $49b0: $33
    inc b                                         ; $49b1: $04
    ret nz                                        ; $49b2: $c0

    nop                                           ; $49b3: $00
    inc d                                         ; $49b4: $14
    nop                                           ; $49b5: $00
    dec sp                                        ; $49b6: $3b
    dec b                                         ; $49b7: $05
    ret nz                                        ; $49b8: $c0

    nop                                           ; $49b9: $00
    jr nz, jr_031_49bc                            ; $49ba: $20 $00

jr_031_49bc:
    dec sp                                        ; $49bc: $3b
    ld b, $c0                                     ; $49bd: $06 $c0
    nop                                           ; $49bf: $00
    inc d                                         ; $49c0: $14
    nop                                           ; $49c1: $00
    dec sp                                        ; $49c2: $3b
    rlca                                          ; $49c3: $07
    ret nz                                        ; $49c4: $c0

    nop                                           ; $49c5: $00
    jr nz, jr_031_49c8                            ; $49c6: $20 $00

jr_031_49c8:
    dec sp                                        ; $49c8: $3b
    ld [$00c0], sp                                ; $49c9: $08 $c0 $00
    inc d                                         ; $49cc: $14
    nop                                           ; $49cd: $00
    dec sp                                        ; $49ce: $3b
    add hl, bc                                    ; $49cf: $09
    ret nz                                        ; $49d0: $c0

    nop                                           ; $49d1: $00
    jr nz, jr_031_49d4                            ; $49d2: $20 $00

jr_031_49d4:
    dec sp                                        ; $49d4: $3b
    ld h, e                                       ; $49d5: $63
    ld b, b                                       ; $49d6: $40
    nop                                           ; $49d7: $00
    dec de                                        ; $49d8: $1b
    nop                                           ; $49d9: $00
    add hl, hl                                    ; $49da: $29
    rst $38                                       ; $49db: $ff
    ld bc, $00ff                                  ; $49dc: $01 $ff $00
    nop                                           ; $49df: $00
    nop                                           ; $49e0: $00
    nop                                           ; $49e1: $00
    ld [$0203], sp                                ; $49e2: $08 $03 $02
    rst $38                                       ; $49e5: $ff
    nop                                           ; $49e6: $00
    nop                                           ; $49e7: $00
    nop                                           ; $49e8: $00
    nop                                           ; $49e9: $00
    inc c                                         ; $49ea: $0c
    ld [bc], a                                    ; $49eb: $02
    inc b                                         ; $49ec: $04
    rst $38                                       ; $49ed: $ff
    nop                                           ; $49ee: $00
    nop                                           ; $49ef: $00
    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    inc c                                         ; $49f2: $0c
    inc b                                         ; $49f3: $04
    dec b                                         ; $49f4: $05
    rst $38                                       ; $49f5: $ff
    nop                                           ; $49f6: $00
    nop                                           ; $49f7: $00
    nop                                           ; $49f8: $00
    nop                                           ; $49f9: $00
    inc c                                         ; $49fa: $0c
    dec b                                         ; $49fb: $05
    ld b, $ff                                     ; $49fc: $06 $ff
    nop                                           ; $49fe: $00
    nop                                           ; $49ff: $00
    nop                                           ; $4a00: $00
    nop                                           ; $4a01: $00
    inc c                                         ; $4a02: $0c
    ld b, $07                                     ; $4a03: $06 $07
    rst $38                                       ; $4a05: $ff
    nop                                           ; $4a06: $00
    nop                                           ; $4a07: $00
    nop                                           ; $4a08: $00
    nop                                           ; $4a09: $00
    inc c                                         ; $4a0a: $0c
    rlca                                          ; $4a0b: $07
    ld [$00ff], sp                                ; $4a0c: $08 $ff $00
    nop                                           ; $4a0f: $00
    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    inc c                                         ; $4a12: $0c
    ld [$ff09], sp                                ; $4a13: $08 $09 $ff
    nop                                           ; $4a16: $00
    nop                                           ; $4a17: $00
    nop                                           ; $4a18: $00
    nop                                           ; $4a19: $00
    inc c                                         ; $4a1a: $0c
    add hl, bc                                    ; $4a1b: $09
    rst $38                                       ; $4a1c: $ff
    ld hl, $0d17                                  ; $4a1d: $21 $17 $0d
    rst $18                                       ; $4a20: $df
    ld c, $0a                                     ; $4a21: $0e $0a
    ld a, $02                                     ; $4a23: $3e $02
    rst $18                                       ; $4a25: $df
    ld a, [bc]                                    ; $4a26: $0a
    ld a, [bc]                                    ; $4a27: $0a
    push af                                       ; $4a28: $f5
    ld a, $05                                     ; $4a29: $3e $05
    rst $18                                       ; $4a2b: $df
    inc b                                         ; $4a2c: $04
    ld a, [bc]                                    ; $4a2d: $0a
    pop af                                        ; $4a2e: $f1
    rst $18                                       ; $4a2f: $df
    ld [de], a                                    ; $4a30: $12
    ld a, [bc]                                    ; $4a31: $0a
    rst $18                                       ; $4a32: $df
    inc c                                         ; $4a33: $0c
    ld a, [bc]                                    ; $4a34: $0a
    push af                                       ; $4a35: $f5
    ld a, $05                                     ; $4a36: $3e $05
    rst $18                                       ; $4a38: $df
    inc b                                         ; $4a39: $04
    ld a, [bc]                                    ; $4a3a: $0a
    pop af                                        ; $4a3b: $f1
    and a                                         ; $4a3c: $a7
    jr nz, jr_031_4a45                            ; $4a3d: $20 $06

    ld a, $02                                     ; $4a3f: $3e $02
    rst $18                                       ; $4a41: $df
    ld [$c90a], sp                                ; $4a42: $08 $0a $c9

jr_031_4a45:
    rst $18                                       ; $4a45: $df
    db $10                                        ; $4a46: $10
    ld a, [bc]                                    ; $4a47: $0a
    ld a, $02                                     ; $4a48: $3e $02
    rst $18                                       ; $4a4a: $df
    ld [$c90a], sp                                ; $4a4b: $08 $0a $c9
    ld hl, $0d1b                                  ; $4a4e: $21 $1b $0d
    rst $18                                       ; $4a51: $df
    ld c, $0a                                     ; $4a52: $0e $0a
    ld a, $06                                     ; $4a54: $3e $06
    rst $18                                       ; $4a56: $df
    ld a, [bc]                                    ; $4a57: $0a
    ld a, [bc]                                    ; $4a58: $0a
    push af                                       ; $4a59: $f5
    ld a, $05                                     ; $4a5a: $3e $05
    rst $18                                       ; $4a5c: $df
    inc b                                         ; $4a5d: $04
    ld a, [bc]                                    ; $4a5e: $0a
    pop af                                        ; $4a5f: $f1
    rst $18                                       ; $4a60: $df
    ld [de], a                                    ; $4a61: $12
    ld a, [bc]                                    ; $4a62: $0a
    rst $18                                       ; $4a63: $df
    inc c                                         ; $4a64: $0c
    ld a, [bc]                                    ; $4a65: $0a
    push af                                       ; $4a66: $f5
    ld a, $05                                     ; $4a67: $3e $05
    rst $18                                       ; $4a69: $df
    inc b                                         ; $4a6a: $04
    ld a, [bc]                                    ; $4a6b: $0a
    pop af                                        ; $4a6c: $f1
    and a                                         ; $4a6d: $a7
    jr nz, jr_031_4a76                            ; $4a6e: $20 $06

    ld a, $06                                     ; $4a70: $3e $06
    rst $18                                       ; $4a72: $df
    ld [$c90a], sp                                ; $4a73: $08 $0a $c9

jr_031_4a76:
    rst $18                                       ; $4a76: $df
    db $10                                        ; $4a77: $10
    ld a, [bc]                                    ; $4a78: $0a
    ld a, $06                                     ; $4a79: $3e $06
    rst $18                                       ; $4a7b: $df
    ld [$c90a], sp                                ; $4a7c: $08 $0a $c9
    ld hl, $0d16                                  ; $4a7f: $21 $16 $0d
    rst $18                                       ; $4a82: $df
    ld c, $0a                                     ; $4a83: $0e $0a
    ld a, $06                                     ; $4a85: $3e $06
    rst $18                                       ; $4a87: $df
    ld [$c90a], sp                                ; $4a88: $08 $0a $c9
    rst $30                                       ; $4a8b: $f7
    and b                                         ; $4a8c: $a0
    inc c                                         ; $4a8d: $0c
    jr z, jr_031_4a94                             ; $4a8e: $28 $04

    call Call_031_4e9f                            ; $4a90: $cd $9f $4e
    ret                                           ; $4a93: $c9


jr_031_4a94:
    ld hl, $102f                                  ; $4a94: $21 $2f $10
    rst $18                                       ; $4a97: $df
    ld c, $0a                                     ; $4a98: $0e $0a
    ld a, $03                                     ; $4a9a: $3e $03
    rst $18                                       ; $4a9c: $df
    ld a, [bc]                                    ; $4a9d: $0a
    ld a, [bc]                                    ; $4a9e: $0a
    rst $18                                       ; $4a9f: $df
    ld [de], a                                    ; $4aa0: $12
    ld a, [bc]                                    ; $4aa1: $0a
    rst $18                                       ; $4aa2: $df
    inc c                                         ; $4aa3: $0c
    ld a, [bc]                                    ; $4aa4: $0a
    push af                                       ; $4aa5: $f5
    ld a, $05                                     ; $4aa6: $3e $05
    rst $18                                       ; $4aa8: $df
    inc b                                         ; $4aa9: $04
    ld a, [bc]                                    ; $4aaa: $0a
    pop af                                        ; $4aab: $f1
    and a                                         ; $4aac: $a7
    jr z, jr_031_4ab6                             ; $4aad: $28 $07

    ld a, $03                                     ; $4aaf: $3e $03
    rst $18                                       ; $4ab1: $df
    ld [$180a], sp                                ; $4ab2: $08 $0a $18
    ld e, d                                       ; $4ab5: $5a

jr_031_4ab6:
    rst $18                                       ; $4ab6: $df
    db $10                                        ; $4ab7: $10
    ld a, [bc]                                    ; $4ab8: $0a
    ld a, $03                                     ; $4ab9: $3e $03
    rst $18                                       ; $4abb: $df
    ld [$df0a], sp                                ; $4abc: $08 $0a $df
    inc e                                         ; $4abf: $1c
    db $10                                        ; $4ac0: $10
    ld a, $0c                                     ; $4ac1: $3e $0c
    ld b, a                                       ; $4ac3: $47
    ld a, $04                                     ; $4ac4: $3e $04
    ld c, a                                       ; $4ac6: $4f
    rst $18                                       ; $4ac7: $df
    ld c, [hl]                                    ; $4ac8: $4e
    ld a, [bc]                                    ; $4ac9: $0a
    ld a, $06                                     ; $4aca: $3e $06
    ld [$c834], a                                 ; $4acc: $ea $34 $c8
    ld hl, $4c88                                  ; $4acf: $21 $88 $4c
    ld de, $c600                                  ; $4ad2: $11 $00 $c6
    ld c, $04                                     ; $4ad5: $0e $04
    call Call_000_03eb                            ; $4ad7: $cd $eb $03
    ld bc, $4f00                                  ; $4ada: $01 $00 $4f
    rst $18                                       ; $4add: $df
    ld e, $02                                     ; $4ade: $1e $02
    ld bc, $ff01                                  ; $4ae0: $01 $01 $ff
    rst $18                                       ; $4ae3: $df
    ld e, $02                                     ; $4ae4: $1e $02
    ld hl, $0707                                  ; $4ae6: $21 $07 $07
    rst $18                                       ; $4ae9: $df
    db $10                                        ; $4aea: $10
    db $10                                        ; $4aeb: $10
    ld a, $00                                     ; $4aec: $3e $00
    rst $18                                       ; $4aee: $df
    ld e, $10                                     ; $4aef: $1e $10
    ld hl, $1400                                  ; $4af1: $21 $00 $14
    ld de, $3980                                  ; $4af4: $11 $80 $39
    rst $18                                       ; $4af7: $df
    jr nz, jr_031_4b0a                            ; $4af8: $20 $10

    ld de, $c005                                  ; $4afa: $11 $05 $c0
    rst $18                                       ; $4afd: $df
    ld [hl+], a                                   ; $4afe: $22
    db $10                                        ; $4aff: $10
    ldh a, [$95]                                  ; $4b00: $f0 $95
    ld hl, $4c98                                  ; $4b02: $21 $98 $4c
    rst $18                                       ; $4b05: $df
    ld a, [de]                                    ; $4b06: $1a
    db $10                                        ; $4b07: $10
    ld a, $01                                     ; $4b08: $3e $01

jr_031_4b0a:
    rst $18                                       ; $4b0a: $df
    ld [de], a                                    ; $4b0b: $12
    db $10                                        ; $4b0c: $10
    rst $18                                       ; $4b0d: $df
    jr nc, jr_031_4b20                            ; $4b0e: $30 $10

    ret                                           ; $4b10: $c9


    rst $30                                       ; $4b11: $f7
    ret nz                                        ; $4b12: $c0

    inc c                                         ; $4b13: $0c
    jr z, jr_031_4b1a                             ; $4b14: $28 $04

    call Call_031_512d                            ; $4b16: $cd $2d $51
    ret                                           ; $4b19: $c9


jr_031_4b1a:
    ld hl, $103f                                  ; $4b1a: $21 $3f $10
    rst $18                                       ; $4b1d: $df
    ld c, $0a                                     ; $4b1e: $0e $0a

jr_031_4b20:
    ld a, $04                                     ; $4b20: $3e $04
    rst $18                                       ; $4b22: $df
    ld a, [bc]                                    ; $4b23: $0a
    ld a, [bc]                                    ; $4b24: $0a
    rst $18                                       ; $4b25: $df
    ld [de], a                                    ; $4b26: $12
    ld a, [bc]                                    ; $4b27: $0a
    rst $18                                       ; $4b28: $df
    inc c                                         ; $4b29: $0c
    ld a, [bc]                                    ; $4b2a: $0a
    push af                                       ; $4b2b: $f5
    ld a, $05                                     ; $4b2c: $3e $05
    rst $18                                       ; $4b2e: $df
    inc b                                         ; $4b2f: $04
    ld a, [bc]                                    ; $4b30: $0a
    pop af                                        ; $4b31: $f1
    and a                                         ; $4b32: $a7
    jr z, jr_031_4b3c                             ; $4b33: $28 $07

    ld a, $04                                     ; $4b35: $3e $04
    rst $18                                       ; $4b37: $df
    ld [$180a], sp                                ; $4b38: $08 $0a $18
    ld e, d                                       ; $4b3b: $5a

jr_031_4b3c:
    rst $18                                       ; $4b3c: $df
    db $10                                        ; $4b3d: $10
    ld a, [bc]                                    ; $4b3e: $0a
    ld a, $04                                     ; $4b3f: $3e $04
    rst $18                                       ; $4b41: $df
    ld [$df0a], sp                                ; $4b42: $08 $0a $df
    inc e                                         ; $4b45: $1c
    db $10                                        ; $4b46: $10
    ld a, $0c                                     ; $4b47: $3e $0c
    ld b, a                                       ; $4b49: $47
    ld a, $05                                     ; $4b4a: $3e $05
    ld c, a                                       ; $4b4c: $4f
    rst $18                                       ; $4b4d: $df
    ld c, [hl]                                    ; $4b4e: $4e
    ld a, [bc]                                    ; $4b4f: $0a
    ld a, $06                                     ; $4b50: $3e $06
    ld [$c834], a                                 ; $4b52: $ea $34 $c8
    ld hl, $4f66                                  ; $4b55: $21 $66 $4f
    ld de, $c600                                  ; $4b58: $11 $00 $c6
    ld c, $04                                     ; $4b5b: $0e $04
    call Call_000_03eb                            ; $4b5d: $cd $eb $03
    ld bc, $4e00                                  ; $4b60: $01 $00 $4e
    rst $18                                       ; $4b63: $df
    ld e, $02                                     ; $4b64: $1e $02
    ld bc, $ff01                                  ; $4b66: $01 $01 $ff
    rst $18                                       ; $4b69: $df
    ld e, $02                                     ; $4b6a: $1e $02
    ld hl, $0707                                  ; $4b6c: $21 $07 $07
    rst $18                                       ; $4b6f: $df
    db $10                                        ; $4b70: $10
    db $10                                        ; $4b71: $10
    ld a, $00                                     ; $4b72: $3e $00
    rst $18                                       ; $4b74: $df
    ld e, $10                                     ; $4b75: $1e $10
    ld hl, $2000                                  ; $4b77: $21 $00 $20
    ld de, $38e0                                  ; $4b7a: $11 $e0 $38
    rst $18                                       ; $4b7d: $df
    jr nz, jr_031_4b90                            ; $4b7e: $20 $10

    ld de, $c005                                  ; $4b80: $11 $05 $c0
    rst $18                                       ; $4b83: $df
    ld [hl+], a                                   ; $4b84: $22
    db $10                                        ; $4b85: $10
    ldh a, [$95]                                  ; $4b86: $f0 $95
    ld hl, $4f76                                  ; $4b88: $21 $76 $4f
    rst $18                                       ; $4b8b: $df
    ld a, [de]                                    ; $4b8c: $1a
    db $10                                        ; $4b8d: $10
    ld a, $01                                     ; $4b8e: $3e $01

jr_031_4b90:
    rst $18                                       ; $4b90: $df
    ld [de], a                                    ; $4b91: $12
    db $10                                        ; $4b92: $10
    rst $18                                       ; $4b93: $df
    jr nc, jr_031_4ba6                            ; $4b94: $30 $10

    ret                                           ; $4b96: $c9


    ld [bc], a                                    ; $4b97: $02
    rst $38                                       ; $4b98: $ff
    nop                                           ; $4b99: $00
    nop                                           ; $4b9a: $00
    dec e                                         ; $4b9b: $1d
    ld c, d                                       ; $4b9c: $4a
    dec bc                                        ; $4b9d: $0b
    nop                                           ; $4b9e: $00
    inc bc                                        ; $4b9f: $03
    rst $38                                       ; $4ba0: $ff
    nop                                           ; $4ba1: $00
    nop                                           ; $4ba2: $00
    adc e                                         ; $4ba3: $8b
    ld c, d                                       ; $4ba4: $4a
    dec bc                                        ; $4ba5: $0b

jr_031_4ba6:
    nop                                           ; $4ba6: $00
    inc b                                         ; $4ba7: $04
    rst $38                                       ; $4ba8: $ff
    nop                                           ; $4ba9: $00
    nop                                           ; $4baa: $00
    ld de, $0b4b                                  ; $4bab: $11 $4b $0b
    nop                                           ; $4bae: $00
    dec b                                         ; $4baf: $05
    rst $38                                       ; $4bb0: $ff
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    ld a, [de]                                    ; $4bb3: $1a
    dec c                                         ; $4bb4: $0d
    inc bc                                        ; $4bb5: $03
    nop                                           ; $4bb6: $00
    ld b, $ff                                     ; $4bb7: $06 $ff
    nop                                           ; $4bb9: $00
    nop                                           ; $4bba: $00
    dec de                                        ; $4bbb: $1b
    dec c                                         ; $4bbc: $0d
    inc bc                                        ; $4bbd: $03
    nop                                           ; $4bbe: $00
    rst $38                                       ; $4bbf: $ff
    ld bc, $00ff                                  ; $4bc0: $01 $ff $00
    nop                                           ; $4bc3: $00
    jr @+$7f                                      ; $4bc4: $18 $7d

    ld b, $00                                     ; $4bc6: $06 $00
    rst $38                                       ; $4bc8: $ff
    rst $18                                       ; $4bc9: $df
    nop                                           ; $4bca: $00
    ld a, [bc]                                    ; $4bcb: $0a
    ld hl, $0857                                  ; $4bcc: $21 $57 $08
    rst $18                                       ; $4bcf: $df
    ld c, $0a                                     ; $4bd0: $0e $0a
    ld a, $00                                     ; $4bd2: $3e $00
    rst $18                                       ; $4bd4: $df
    ld [$df0a], sp                                ; $4bd5: $08 $0a $df
    ld [bc], a                                    ; $4bd8: $02
    ld a, [bc]                                    ; $4bd9: $0a
    ret                                           ; $4bda: $c9


    ld bc, $00ff                                  ; $4bdb: $01 $ff $00
    nop                                           ; $4bde: $00
    ret                                           ; $4bdf: $c9


    ld c, e                                       ; $4be0: $4b
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    rrca                                          ; $4be3: $0f
    rst $38                                       ; $4be4: $ff
    nop                                           ; $4be5: $00
    nop                                           ; $4be6: $00
    db $f4                                        ; $4be7: $f4
    ld d, c                                       ; $4be8: $51
    ld bc, $ff00                                  ; $4be9: $01 $00 $ff
    ld c, $08                                     ; $4bec: $0e $08
    call Call_000_25af                            ; $4bee: $cd $af $25
    call Call_000_2625                            ; $4bf1: $cd $25 $26
    ld a, [$c46a]                                 ; $4bf4: $fa $6a $c4
    cp $01                                        ; $4bf7: $fe $01
    jr z, jr_031_4c03                             ; $4bf9: $28 $08

    push af                                       ; $4bfb: $f5
    xor a                                         ; $4bfc: $af
    ld hl, $c4b4                                  ; $4bfd: $21 $b4 $c4
    ld [hl+], a                                   ; $4c00: $22
    ld [hl+], a                                   ; $4c01: $22
    pop af                                        ; $4c02: $f1

jr_031_4c03:
    cp $04                                        ; $4c03: $fe $04
    jr nz, jr_031_4c0d                            ; $4c05: $20 $06

    call Call_031_4ea9                            ; $4c07: $cd $a9 $4e
    jp Jump_031_4c87                              ; $4c0a: $c3 $87 $4c


jr_031_4c0d:
    cp $05                                        ; $4c0d: $fe $05
    jr nz, jr_031_4c17                            ; $4c0f: $20 $06

    call Call_031_5137                            ; $4c11: $cd $37 $51
    jp Jump_031_4c87                              ; $4c14: $c3 $87 $4c


jr_031_4c17:
    cp $06                                        ; $4c17: $fe $06
    jr nz, jr_031_4c49                            ; $4c19: $20 $2e

    call Call_031_4d9c                            ; $4c1b: $cd $9c $4d
    rst $30                                       ; $4c1e: $f7
    ld b, b                                       ; $4c1f: $40
    inc c                                         ; $4c20: $0c
    jr z, jr_031_4c87                             ; $4c21: $28 $64

    rst $28                                       ; $4c23: $ef
    ld b, b                                       ; $4c24: $40
    inc c                                         ; $4c25: $0c
    rst $30                                       ; $4c26: $f7
    ld b, b                                       ; $4c27: $40
    inc d                                         ; $4c28: $14
    jr nz, jr_031_4c87                            ; $4c29: $20 $5c

    call Call_000_2ed5                            ; $4c2b: $cd $d5 $2e
    ld e, $e7                                     ; $4c2e: $1e $e7
    ld b, b                                       ; $4c30: $40
    inc d                                         ; $4c31: $14
    ld de, $0014                                  ; $4c32: $11 $14 $00
    call Call_031_7da4                            ; $4c35: $cd $a4 $7d
    ld b, $00                                     ; $4c38: $06 $00
    ld c, $fa                                     ; $4c3a: $0e $fa
    rst $18                                       ; $4c3c: $df
    ld c, [hl]                                    ; $4c3d: $4e
    ld a, [bc]                                    ; $4c3e: $0a
    rst $18                                       ; $4c3f: $df
    inc [hl]                                      ; $4c40: $34
    ld [bc], a                                    ; $4c41: $02
    ld a, $08                                     ; $4c42: $3e $08
    ld [$c441], a                                 ; $4c44: $ea $41 $c4
    jr jr_031_4c87                                ; $4c47: $18 $3e

jr_031_4c49:
    cp $07                                        ; $4c49: $fe $07
    jr nz, jr_031_4c7b                            ; $4c4b: $20 $2e

    call Call_031_507a                            ; $4c4d: $cd $7a $50
    rst $30                                       ; $4c50: $f7
    ld b, b                                       ; $4c51: $40
    inc c                                         ; $4c52: $0c
    jr z, jr_031_4c87                             ; $4c53: $28 $32

    rst $28                                       ; $4c55: $ef
    ld b, b                                       ; $4c56: $40
    inc c                                         ; $4c57: $0c
    rst $30                                       ; $4c58: $f7
    ld h, b                                       ; $4c59: $60
    inc d                                         ; $4c5a: $14
    jr nz, jr_031_4c87                            ; $4c5b: $20 $2a

    call Call_000_2ed5                            ; $4c5d: $cd $d5 $2e
    ld e, $e7                                     ; $4c60: $1e $e7
    ld h, b                                       ; $4c62: $60
    inc d                                         ; $4c63: $14
    ld de, $0014                                  ; $4c64: $11 $14 $00
    call Call_031_7da4                            ; $4c67: $cd $a4 $7d
    ld b, $00                                     ; $4c6a: $06 $00
    ld c, $fa                                     ; $4c6c: $0e $fa
    rst $18                                       ; $4c6e: $df
    ld c, [hl]                                    ; $4c6f: $4e
    ld a, [bc]                                    ; $4c70: $0a
    rst $18                                       ; $4c71: $df
    inc [hl]                                      ; $4c72: $34
    ld [bc], a                                    ; $4c73: $02
    ld a, $09                                     ; $4c74: $3e $09
    ld [$c441], a                                 ; $4c76: $ea $41 $c4
    jr jr_031_4c87                                ; $4c79: $18 $0c

jr_031_4c7b:
    cp $fa                                        ; $4c7b: $fe $fa
    jr nz, jr_031_4c87                            ; $4c7d: $20 $08

    rst $30                                       ; $4c7f: $f7
    add b                                         ; $4c80: $80
    inc c                                         ; $4c81: $0c
    jr z, jr_031_4c87                             ; $4c82: $28 $03

    rst $28                                       ; $4c84: $ef
    add b                                         ; $4c85: $80
    inc c                                         ; $4c86: $0c

Jump_031_4c87:
jr_031_4c87:
    ret                                           ; $4c87: $c9


    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    inc d                                         ; $4c8a: $14
    nop                                           ; $4c8b: $00
    add b                                         ; $4c8c: $80
    add hl, sp                                    ; $4c8d: $39
    jp nc, Jump_000_00c4                          ; $4c8e: $d2 $c4 $00

    ld bc, $003c                                  ; $4c91: $01 $3c $00
    ld bc, $0000                                  ; $4c94: $01 $00 $00
    nop                                           ; $4c97: $00
    cp b                                          ; $4c98: $b8
    ld c, h                                       ; $4c99: $4c
    nop                                           ; $4c9a: $00
    ld c, l                                       ; $4c9b: $4d
    nop                                           ; $4c9c: $00
    nop                                           ; $4c9d: $00
    nop                                           ; $4c9e: $00
    nop                                           ; $4c9f: $00
    nop                                           ; $4ca0: $00
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    nop                                           ; $4ca3: $00
    nop                                           ; $4ca4: $00
    nop                                           ; $4ca5: $00
    nop                                           ; $4ca6: $00
    nop                                           ; $4ca7: $00
    nop                                           ; $4ca8: $00
    nop                                           ; $4ca9: $00
    nop                                           ; $4caa: $00
    nop                                           ; $4cab: $00
    nop                                           ; $4cac: $00
    nop                                           ; $4cad: $00
    nop                                           ; $4cae: $00
    nop                                           ; $4caf: $00
    nop                                           ; $4cb0: $00
    nop                                           ; $4cb1: $00
    nop                                           ; $4cb2: $00
    nop                                           ; $4cb3: $00
    nop                                           ; $4cb4: $00
    nop                                           ; $4cb5: $00
    nop                                           ; $4cb6: $00
    nop                                           ; $4cb7: $00
    ldh a, [$96]                                  ; $4cb8: $f0 $96
    push af                                       ; $4cba: $f5
    ld a, $06                                     ; $4cbb: $3e $06
    ldh [$96], a                                  ; $4cbd: $e0 $96
    ldh [rSVBK], a                                ; $4cbf: $e0 $70
    rst $18                                       ; $4cc1: $df
    ld a, [hl+]                                   ; $4cc2: $2a
    db $10                                        ; $4cc3: $10
    ld a, $03                                     ; $4cc4: $3e $03
    ld de, $0a03                                  ; $4cc6: $11 $03 $0a
    ld hl, $1032                                  ; $4cc9: $21 $32 $10
    rst $18                                       ; $4ccc: $df
    ld c, d                                       ; $4ccd: $4a
    dec b                                         ; $4cce: $05
    ld a, $03                                     ; $4ccf: $3e $03
    ld de, $0a03                                  ; $4cd1: $11 $03 $0a
    ld hl, $1033                                  ; $4cd4: $21 $33 $10
    rst $18                                       ; $4cd7: $df
    ld c, d                                       ; $4cd8: $4a
    dec b                                         ; $4cd9: $05
    ld a, $03                                     ; $4cda: $3e $03
    ld de, $0a03                                  ; $4cdc: $11 $03 $0a
    ld hl, $1034                                  ; $4cdf: $21 $34 $10
    rst $18                                       ; $4ce2: $df
    ld c, d                                       ; $4ce3: $4a
    dec b                                         ; $4ce4: $05
    push af                                       ; $4ce5: $f5
    ld a, $3c                                     ; $4ce6: $3e $3c
    rst $18                                       ; $4ce8: $df
    inc b                                         ; $4ce9: $04
    ld a, [bc]                                    ; $4cea: $0a
    pop af                                        ; $4ceb: $f1
    ld a, $03                                     ; $4cec: $3e $03
    ld de, $0a03                                  ; $4cee: $11 $03 $0a
    ld hl, $1035                                  ; $4cf1: $21 $35 $10
    rst $18                                       ; $4cf4: $df
    ld c, d                                       ; $4cf5: $4a
    dec b                                         ; $4cf6: $05
    rst $18                                       ; $4cf7: $df
    inc l                                         ; $4cf8: $2c
    db $10                                        ; $4cf9: $10
    pop af                                        ; $4cfa: $f1
    ldh [$96], a                                  ; $4cfb: $e0 $96
    ldh [rSVBK], a                                ; $4cfd: $e0 $70
    ret                                           ; $4cff: $c9


    ldh a, [$96]                                  ; $4d00: $f0 $96
    push af                                       ; $4d02: $f5
    rst $18                                       ; $4d03: $df
    ld a, [hl+]                                   ; $4d04: $2a
    db $10                                        ; $4d05: $10
    ld a, $82                                     ; $4d06: $3e $82
    rst $18                                       ; $4d08: $df
    ld l, $10                                     ; $4d09: $2e $10
    rst $18                                       ; $4d0b: $df
    inc l                                         ; $4d0c: $2c
    db $10                                        ; $4d0d: $10
    pop af                                        ; $4d0e: $f1
    ldh [$96], a                                  ; $4d0f: $e0 $96
    ldh [rSVBK], a                                ; $4d11: $e0 $70
    ret                                           ; $4d13: $c9


    inc [hl]                                      ; $4d14: $34
    ld c, l                                       ; $4d15: $4d
    ld [hl], c                                    ; $4d16: $71
    ld c, l                                       ; $4d17: $4d
    nop                                           ; $4d18: $00
    nop                                           ; $4d19: $00
    nop                                           ; $4d1a: $00
    nop                                           ; $4d1b: $00
    nop                                           ; $4d1c: $00
    nop                                           ; $4d1d: $00
    nop                                           ; $4d1e: $00
    nop                                           ; $4d1f: $00
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    nop                                           ; $4d25: $00
    nop                                           ; $4d26: $00
    nop                                           ; $4d27: $00
    nop                                           ; $4d28: $00
    nop                                           ; $4d29: $00
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    nop                                           ; $4d2c: $00
    nop                                           ; $4d2d: $00
    nop                                           ; $4d2e: $00
    nop                                           ; $4d2f: $00
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    ldh a, [$96]                                  ; $4d34: $f0 $96
    push af                                       ; $4d36: $f5
    ld a, $06                                     ; $4d37: $3e $06
    ldh [$96], a                                  ; $4d39: $e0 $96
    ldh [rSVBK], a                                ; $4d3b: $e0 $70
    rst $18                                       ; $4d3d: $df
    ld a, [hl+]                                   ; $4d3e: $2a
    db $10                                        ; $4d3f: $10
    ld a, $03                                     ; $4d40: $3e $03
    ld de, $0a03                                  ; $4d42: $11 $03 $0a
    ld hl, $1037                                  ; $4d45: $21 $37 $10
    rst $18                                       ; $4d48: $df
    ld c, d                                       ; $4d49: $4a
    dec b                                         ; $4d4a: $05
    ld a, $03                                     ; $4d4b: $3e $03
    ld de, $0a03                                  ; $4d4d: $11 $03 $0a
    ld hl, $1038                                  ; $4d50: $21 $38 $10
    rst $18                                       ; $4d53: $df
    ld c, d                                       ; $4d54: $4a
    dec b                                         ; $4d55: $05
    push af                                       ; $4d56: $f5
    ld a, $3c                                     ; $4d57: $3e $3c
    rst $18                                       ; $4d59: $df
    inc b                                         ; $4d5a: $04
    ld a, [bc]                                    ; $4d5b: $0a
    pop af                                        ; $4d5c: $f1
    ld a, $03                                     ; $4d5d: $3e $03
    ld de, $0a03                                  ; $4d5f: $11 $03 $0a
    ld hl, $1039                                  ; $4d62: $21 $39 $10
    rst $18                                       ; $4d65: $df
    ld c, d                                       ; $4d66: $4a
    dec b                                         ; $4d67: $05
    rst $18                                       ; $4d68: $df
    inc l                                         ; $4d69: $2c
    db $10                                        ; $4d6a: $10
    pop af                                        ; $4d6b: $f1
    ldh [$96], a                                  ; $4d6c: $e0 $96
    ldh [rSVBK], a                                ; $4d6e: $e0 $70
    ret                                           ; $4d70: $c9


    rst $18                                       ; $4d71: $df
    ld a, [hl+]                                   ; $4d72: $2a
    db $10                                        ; $4d73: $10
    ld a, [$c834]                                 ; $4d74: $fa $34 $c8
    or a                                          ; $4d77: $b7
    jr nz, jr_031_4d81                            ; $4d78: $20 $07

    ld a, $08                                     ; $4d7a: $3e $08
    ld [$c961], a                                 ; $4d7c: $ea $61 $c9
    jr jr_031_4d93                                ; $4d7f: $18 $12

jr_031_4d81:
    call Call_031_4e5a                            ; $4d81: $cd $5a $4e
    ld [$c968], a                                 ; $4d84: $ea $68 $c9
    rst $28                                       ; $4d87: $ef
    ld h, b                                       ; $4d88: $60
    inc c                                         ; $4d89: $0c
    ld a, [$c8aa]                                 ; $4d8a: $fa $aa $c8
    or a                                          ; $4d8d: $b7
    jr z, jr_031_4d93                             ; $4d8e: $28 $03

    rst $20                                       ; $4d90: $e7
    ld h, b                                       ; $4d91: $60
    inc c                                         ; $4d92: $0c

jr_031_4d93:
    ld a, $82                                     ; $4d93: $3e $82
    rst $18                                       ; $4d95: $df
    ld l, $10                                     ; $4d96: $2e $10
    rst $18                                       ; $4d98: $df
    inc l                                         ; $4d99: $2c
    db $10                                        ; $4d9a: $10
    ret                                           ; $4d9b: $c9


Call_031_4d9c:
    rst $18                                       ; $4d9c: $df
    nop                                           ; $4d9d: $00
    ld a, [bc]                                    ; $4d9e: $0a
    ldh a, [$95]                                  ; $4d9f: $f0 $95
    ld b, a                                       ; $4da1: $47
    ld a, $03                                     ; $4da2: $3e $03
    ld de, $7cbe                                  ; $4da4: $11 $be $7c
    rst $18                                       ; $4da7: $df
    jr @+$0c                                      ; $4da8: $18 $0a

    ld a, [$c296]                                 ; $4daa: $fa $96 $c2
    ld b, a                                       ; $4dad: $47
    ld a, $03                                     ; $4dae: $3e $03
    rst $18                                       ; $4db0: $df
    ld l, $0a                                     ; $4db1: $2e $0a
    ld c, $08                                     ; $4db3: $0e $08
    call Call_000_25af                            ; $4db5: $cd $af $25
    call Call_000_2625                            ; $4db8: $cd $25 $26
    push af                                       ; $4dbb: $f5
    ld a, $1e                                     ; $4dbc: $3e $1e
    rst $18                                       ; $4dbe: $df
    inc b                                         ; $4dbf: $04
    ld a, [bc]                                    ; $4dc0: $0a
    pop af                                        ; $4dc1: $f1
    ld a, [$c968]                                 ; $4dc2: $fa $68 $c9
    or a                                          ; $4dc5: $b7
    jr nz, jr_031_4def                            ; $4dc6: $20 $27

    ld a, $03                                     ; $4dc8: $3e $03
    ld b, a                                       ; $4dca: $47
    ld a, $07                                     ; $4dcb: $3e $07
    rst $18                                       ; $4dcd: $df
    ld [hl-], a                                   ; $4dce: $32
    ld a, [bc]                                    ; $4dcf: $0a
    ld a, $03                                     ; $4dd0: $3e $03
    rst $18                                       ; $4dd2: $df
    inc [hl]                                      ; $4dd3: $34
    ld a, [bc]                                    ; $4dd4: $0a
    push af                                       ; $4dd5: $f5
    ld a, $1e                                     ; $4dd6: $3e $1e
    rst $18                                       ; $4dd8: $df
    inc b                                         ; $4dd9: $04
    ld a, [bc]                                    ; $4dda: $0a
    pop af                                        ; $4ddb: $f1
    ld hl, $103c                                  ; $4ddc: $21 $3c $10
    rst $18                                       ; $4ddf: $df
    ld c, $0a                                     ; $4de0: $0e $0a
    ld a, $03                                     ; $4de2: $3e $03
    rst $18                                       ; $4de4: $df
    ld [$e70a], sp                                ; $4de5: $08 $0a $e7
    ld b, b                                       ; $4de8: $40
    inc c                                         ; $4de9: $0c
    rst $28                                       ; $4dea: $ef
    and b                                         ; $4deb: $a0
    inc c                                         ; $4dec: $0c
    jr jr_031_4e44                                ; $4ded: $18 $55

jr_031_4def:
    cp $01                                        ; $4def: $fe $01
    jr nz, jr_031_4e07                            ; $4df1: $20 $14

    push af                                       ; $4df3: $f5
    ld a, $1e                                     ; $4df4: $3e $1e
    rst $18                                       ; $4df6: $df
    inc b                                         ; $4df7: $04
    ld a, [bc]                                    ; $4df8: $0a
    pop af                                        ; $4df9: $f1
    ld hl, $103b                                  ; $4dfa: $21 $3b $10
    rst $18                                       ; $4dfd: $df
    ld c, $0a                                     ; $4dfe: $0e $0a
    ld a, $03                                     ; $4e00: $3e $03
    rst $18                                       ; $4e02: $df
    ld [$180a], sp                                ; $4e03: $08 $0a $18
    dec a                                         ; $4e06: $3d

jr_031_4e07:
    cp $02                                        ; $4e07: $fe $02
    jr nz, jr_031_4e1f                            ; $4e09: $20 $14

    push af                                       ; $4e0b: $f5
    ld a, $1e                                     ; $4e0c: $3e $1e
    rst $18                                       ; $4e0e: $df
    inc b                                         ; $4e0f: $04
    ld a, [bc]                                    ; $4e10: $0a
    pop af                                        ; $4e11: $f1
    ld hl, $103a                                  ; $4e12: $21 $3a $10
    rst $18                                       ; $4e15: $df
    ld c, $0a                                     ; $4e16: $0e $0a
    ld a, $03                                     ; $4e18: $3e $03
    rst $18                                       ; $4e1a: $df
    ld [$180a], sp                                ; $4e1b: $08 $0a $18
    dec h                                         ; $4e1e: $25

jr_031_4e1f:
    ld a, $03                                     ; $4e1f: $3e $03
    ld b, a                                       ; $4e21: $47
    ld a, $07                                     ; $4e22: $3e $07
    rst $18                                       ; $4e24: $df
    ld [hl-], a                                   ; $4e25: $32
    ld a, [bc]                                    ; $4e26: $0a
    ld a, $03                                     ; $4e27: $3e $03
    rst $18                                       ; $4e29: $df
    inc [hl]                                      ; $4e2a: $34
    ld a, [bc]                                    ; $4e2b: $0a
    push af                                       ; $4e2c: $f5
    ld a, $1e                                     ; $4e2d: $3e $1e
    rst $18                                       ; $4e2f: $df
    inc b                                         ; $4e30: $04
    ld a, [bc]                                    ; $4e31: $0a
    pop af                                        ; $4e32: $f1
    ld hl, $103e                                  ; $4e33: $21 $3e $10
    rst $18                                       ; $4e36: $df
    ld c, $0a                                     ; $4e37: $0e $0a
    ld a, $03                                     ; $4e39: $3e $03
    rst $18                                       ; $4e3b: $df
    ld [$e70a], sp                                ; $4e3c: $08 $0a $e7
    ld b, b                                       ; $4e3f: $40
    inc c                                         ; $4e40: $0c
    rst $28                                       ; $4e41: $ef
    and b                                         ; $4e42: $a0
    inc c                                         ; $4e43: $0c

jr_031_4e44:
    ldh a, [$95]                                  ; $4e44: $f0 $95
    ld b, a                                       ; $4e46: $47
    ld a, $03                                     ; $4e47: $3e $03
    ld de, $7d24                                  ; $4e49: $11 $24 $7d
    rst $18                                       ; $4e4c: $df
    jr jr_031_4e59                                ; $4e4d: $18 $0a

    ld a, $03                                     ; $4e4f: $3e $03
    ld b, $00                                     ; $4e51: $06 $00
    rst $18                                       ; $4e53: $df
    inc l                                         ; $4e54: $2c
    ld a, [bc]                                    ; $4e55: $0a
    rst $18                                       ; $4e56: $df
    ld [bc], a                                    ; $4e57: $02
    ld a, [bc]                                    ; $4e58: $0a

jr_031_4e59:
    ret                                           ; $4e59: $c9


Call_031_4e5a:
    ld a, $06                                     ; $4e5a: $3e $06
    ldh [$96], a                                  ; $4e5c: $e0 $96
    ldh [rSVBK], a                                ; $4e5e: $e0 $70
    rst $18                                       ; $4e60: $df
    inc [hl]                                      ; $4e61: $34
    db $10                                        ; $4e62: $10
    cp $00                                        ; $4e63: $fe $00
    jr nz, jr_031_4e9c                            ; $4e65: $20 $35

    ld hl, $d680                                  ; $4e67: $21 $80 $d6
    ld bc, $000a                                  ; $4e6a: $01 $0a $00
    add hl, bc                                    ; $4e6d: $09
    ld b, [hl]                                    ; $4e6e: $46
    inc hl                                        ; $4e6f: $23
    ld a, [hl]                                    ; $4e70: $7e
    bit 7, a                                      ; $4e71: $cb $7f
    jr z, jr_031_4e77                             ; $4e73: $28 $02

    cpl                                           ; $4e75: $2f
    inc a                                         ; $4e76: $3c

jr_031_4e77:
    ld c, a                                       ; $4e77: $4f
    ld a, b                                       ; $4e78: $78
    cp $3c                                        ; $4e79: $fe $3c
    jr nz, jr_031_4e8e                            ; $4e7b: $20 $11

    ld a, c                                       ; $4e7d: $79
    or a                                          ; $4e7e: $b7
    jr nz, jr_031_4e8e                            ; $4e7f: $20 $0d

    dec hl                                        ; $4e81: $2b
    dec hl                                        ; $4e82: $2b
    ld a, [hl]                                    ; $4e83: $7e
    or a                                          ; $4e84: $b7
    jr z, jr_031_4e8a                             ; $4e85: $28 $03

    xor a                                         ; $4e87: $af
    jr jr_031_4e9e                                ; $4e88: $18 $14

jr_031_4e8a:
    ld a, $03                                     ; $4e8a: $3e $03
    jr jr_031_4e9e                                ; $4e8c: $18 $10

jr_031_4e8e:
    ld a, b                                       ; $4e8e: $78
    cp $34                                        ; $4e8f: $fe $34
    jr c, jr_031_4e9c                             ; $4e91: $38 $09

    ld a, c                                       ; $4e93: $79
    cp $04                                        ; $4e94: $fe $04
    jr nc, jr_031_4e9c                            ; $4e96: $30 $04

    ld a, $01                                     ; $4e98: $3e $01
    jr jr_031_4e9e                                ; $4e9a: $18 $02

jr_031_4e9c:
    ld a, $02                                     ; $4e9c: $3e $02

jr_031_4e9e:
    ret                                           ; $4e9e: $c9


Call_031_4e9f:
    ld hl, $0d11                                  ; $4e9f: $21 $11 $0d
    rst $18                                       ; $4ea2: $df
    ld c, $0a                                     ; $4ea3: $0e $0a
    call Call_031_4ed5                            ; $4ea5: $cd $d5 $4e
    ret                                           ; $4ea8: $c9


Call_031_4ea9:
    rst $18                                       ; $4ea9: $df
    nop                                           ; $4eaa: $00
    ld a, [bc]                                    ; $4eab: $0a
    ldh a, [$95]                                  ; $4eac: $f0 $95
    ld b, a                                       ; $4eae: $47
    ld a, $03                                     ; $4eaf: $3e $03
    ld de, $7cbe                                  ; $4eb1: $11 $be $7c
    rst $18                                       ; $4eb4: $df
    jr @+$0c                                      ; $4eb5: $18 $0a

    ld a, [$c296]                                 ; $4eb7: $fa $96 $c2
    ld b, a                                       ; $4eba: $47
    ld a, $03                                     ; $4ebb: $3e $03
    rst $18                                       ; $4ebd: $df
    ld l, $0a                                     ; $4ebe: $2e $0a
    ld c, $08                                     ; $4ec0: $0e $08
    call Call_000_25af                            ; $4ec2: $cd $af $25
    call Call_000_2625                            ; $4ec5: $cd $25 $26
    ld hl, $1036                                  ; $4ec8: $21 $36 $10
    rst $18                                       ; $4ecb: $df
    ld c, $0a                                     ; $4ecc: $0e $0a
    call Call_031_4ed5                            ; $4ece: $cd $d5 $4e
    rst $18                                       ; $4ed1: $df
    ld [bc], a                                    ; $4ed2: $02
    ld a, [bc]                                    ; $4ed3: $0a
    ret                                           ; $4ed4: $c9


Call_031_4ed5:
    ld a, $03                                     ; $4ed5: $3e $03
    rst $18                                       ; $4ed7: $df
    ld a, [bc]                                    ; $4ed8: $0a
    ld a, [bc]                                    ; $4ed9: $0a
    rst $18                                       ; $4eda: $df
    ld [de], a                                    ; $4edb: $12
    ld a, [bc]                                    ; $4edc: $0a
    rst $18                                       ; $4edd: $df
    inc c                                         ; $4ede: $0c
    ld a, [bc]                                    ; $4edf: $0a
    push af                                       ; $4ee0: $f5
    ld a, $05                                     ; $4ee1: $3e $05
    rst $18                                       ; $4ee3: $df
    inc b                                         ; $4ee4: $04
    ld a, [bc]                                    ; $4ee5: $0a
    pop af                                        ; $4ee6: $f1
    and a                                         ; $4ee7: $a7
    jr z, jr_031_4f09                             ; $4ee8: $28 $1f

    ld hl, $103d                                  ; $4eea: $21 $3d $10
    rst $18                                       ; $4eed: $df
    ld c, $0a                                     ; $4eee: $0e $0a
    ld a, $03                                     ; $4ef0: $3e $03
    rst $18                                       ; $4ef2: $df
    ld [$f00a], sp                                ; $4ef3: $08 $0a $f0
    sub l                                         ; $4ef6: $95
    ld b, a                                       ; $4ef7: $47
    ld a, $03                                     ; $4ef8: $3e $03
    ld de, $7d24                                  ; $4efa: $11 $24 $7d
    rst $18                                       ; $4efd: $df
    jr jr_031_4f0a                                ; $4efe: $18 $0a

    ld a, $03                                     ; $4f00: $3e $03
    ld b, $00                                     ; $4f02: $06 $00
    rst $18                                       ; $4f04: $df
    inc l                                         ; $4f05: $2c
    ld a, [bc]                                    ; $4f06: $0a
    jr jr_031_4f65                                ; $4f07: $18 $5c

jr_031_4f09:
    rst $20                                       ; $4f09: $e7

jr_031_4f0a:
    and b                                         ; $4f0a: $a0
    inc c                                         ; $4f0b: $0c
    rst $18                                       ; $4f0c: $df
    inc e                                         ; $4f0d: $1c
    db $10                                        ; $4f0e: $10
    rst $30                                       ; $4f0f: $f7
    ld b, b                                       ; $4f10: $40
    inc d                                         ; $4f11: $14
    jr nz, jr_031_4f19                            ; $4f12: $20 $05

    ld a, $08                                     ; $4f14: $3e $08
    ld [$c82c], a                                 ; $4f16: $ea $2c $c8

jr_031_4f19:
    ld a, $0c                                     ; $4f19: $3e $0c
    ld b, a                                       ; $4f1b: $47
    ld a, $06                                     ; $4f1c: $3e $06
    ld c, a                                       ; $4f1e: $4f
    rst $18                                       ; $4f1f: $df
    ld c, [hl]                                    ; $4f20: $4e
    ld a, [bc]                                    ; $4f21: $0a
    ld a, $06                                     ; $4f22: $3e $06
    ld [$c834], a                                 ; $4f24: $ea $34 $c8
    ld bc, $8000                                  ; $4f27: $01 $00 $80
    rst $18                                       ; $4f2a: $df
    ld e, $02                                     ; $4f2b: $1e $02
    ld bc, $ff01                                  ; $4f2d: $01 $01 $ff
    rst $18                                       ; $4f30: $df
    ld e, $02                                     ; $4f31: $1e $02
    ld hl, $0707                                  ; $4f33: $21 $07 $07
    rst $18                                       ; $4f36: $df
    db $10                                        ; $4f37: $10
    db $10                                        ; $4f38: $10
    ld a, $00                                     ; $4f39: $3e $00
    rst $18                                       ; $4f3b: $df
    ld e, $10                                     ; $4f3c: $1e $10
    ld hl, $1400                                  ; $4f3e: $21 $00 $14
    ld de, $3980                                  ; $4f41: $11 $80 $39
    rst $18                                       ; $4f44: $df
    jr nz, jr_031_4f57                            ; $4f45: $20 $10

    ld e, $00                                     ; $4f47: $1e $00
    ld bc, $c4d2                                  ; $4f49: $01 $d2 $c4
    rst $18                                       ; $4f4c: $df
    ld h, $10                                     ; $4f4d: $26 $10
    ld de, $c005                                  ; $4f4f: $11 $05 $c0
    rst $18                                       ; $4f52: $df
    ld [hl+], a                                   ; $4f53: $22
    db $10                                        ; $4f54: $10
    ldh a, [$95]                                  ; $4f55: $f0 $95

jr_031_4f57:
    ld hl, $4d14                                  ; $4f57: $21 $14 $4d
    rst $18                                       ; $4f5a: $df
    ld a, [de]                                    ; $4f5b: $1a
    db $10                                        ; $4f5c: $10
    ld a, $01                                     ; $4f5d: $3e $01
    rst $18                                       ; $4f5f: $df
    ld [de], a                                    ; $4f60: $12
    db $10                                        ; $4f61: $10
    rst $18                                       ; $4f62: $df
    jr nc, jr_031_4f75                            ; $4f63: $30 $10

jr_031_4f65:
    ret                                           ; $4f65: $c9


    nop                                           ; $4f66: $00
    nop                                           ; $4f67: $00
    jr nz, jr_031_4f6a                            ; $4f68: $20 $00

jr_031_4f6a:
    ldh [$38], a                                  ; $4f6a: $e0 $38
    ld b, b                                       ; $4f6c: $40
    cp l                                          ; $4f6d: $bd
    inc bc                                        ; $4f6e: $03
    nop                                           ; $4f6f: $00
    inc a                                         ; $4f70: $3c
    nop                                           ; $4f71: $00
    ld bc, $0000                                  ; $4f72: $01 $00 $00

jr_031_4f75:
    nop                                           ; $4f75: $00
    sub [hl]                                      ; $4f76: $96
    ld c, a                                       ; $4f77: $4f
    sbc $4f                                       ; $4f78: $de $4f
    nop                                           ; $4f7a: $00
    nop                                           ; $4f7b: $00
    nop                                           ; $4f7c: $00
    nop                                           ; $4f7d: $00
    nop                                           ; $4f7e: $00
    nop                                           ; $4f7f: $00
    nop                                           ; $4f80: $00
    nop                                           ; $4f81: $00
    nop                                           ; $4f82: $00
    nop                                           ; $4f83: $00
    nop                                           ; $4f84: $00
    nop                                           ; $4f85: $00
    nop                                           ; $4f86: $00
    nop                                           ; $4f87: $00
    nop                                           ; $4f88: $00
    nop                                           ; $4f89: $00
    nop                                           ; $4f8a: $00
    nop                                           ; $4f8b: $00
    nop                                           ; $4f8c: $00
    nop                                           ; $4f8d: $00
    nop                                           ; $4f8e: $00
    nop                                           ; $4f8f: $00
    nop                                           ; $4f90: $00
    nop                                           ; $4f91: $00
    nop                                           ; $4f92: $00
    nop                                           ; $4f93: $00
    nop                                           ; $4f94: $00
    nop                                           ; $4f95: $00
    ldh a, [$96]                                  ; $4f96: $f0 $96
    push af                                       ; $4f98: $f5
    ld a, $06                                     ; $4f99: $3e $06
    ldh [$96], a                                  ; $4f9b: $e0 $96
    ldh [rSVBK], a                                ; $4f9d: $e0 $70
    rst $18                                       ; $4f9f: $df
    ld a, [hl+]                                   ; $4fa0: $2a
    db $10                                        ; $4fa1: $10
    ld a, $04                                     ; $4fa2: $3e $04
    ld de, $0a03                                  ; $4fa4: $11 $03 $0a
    ld hl, $1042                                  ; $4fa7: $21 $42 $10
    rst $18                                       ; $4faa: $df
    ld c, d                                       ; $4fab: $4a
    dec b                                         ; $4fac: $05
    ld a, $04                                     ; $4fad: $3e $04
    ld de, $0a03                                  ; $4faf: $11 $03 $0a
    ld hl, $1043                                  ; $4fb2: $21 $43 $10
    rst $18                                       ; $4fb5: $df
    ld c, d                                       ; $4fb6: $4a
    dec b                                         ; $4fb7: $05
    ld a, $04                                     ; $4fb8: $3e $04
    ld de, $0a03                                  ; $4fba: $11 $03 $0a
    ld hl, $1044                                  ; $4fbd: $21 $44 $10
    rst $18                                       ; $4fc0: $df
    ld c, d                                       ; $4fc1: $4a
    dec b                                         ; $4fc2: $05
    push af                                       ; $4fc3: $f5
    ld a, $3c                                     ; $4fc4: $3e $3c
    rst $18                                       ; $4fc6: $df
    inc b                                         ; $4fc7: $04
    ld a, [bc]                                    ; $4fc8: $0a
    pop af                                        ; $4fc9: $f1
    ld a, $04                                     ; $4fca: $3e $04
    ld de, $0a03                                  ; $4fcc: $11 $03 $0a
    ld hl, $1045                                  ; $4fcf: $21 $45 $10
    rst $18                                       ; $4fd2: $df
    ld c, d                                       ; $4fd3: $4a
    dec b                                         ; $4fd4: $05
    rst $18                                       ; $4fd5: $df
    inc l                                         ; $4fd6: $2c
    db $10                                        ; $4fd7: $10
    pop af                                        ; $4fd8: $f1
    ldh [$96], a                                  ; $4fd9: $e0 $96
    ldh [rSVBK], a                                ; $4fdb: $e0 $70
    ret                                           ; $4fdd: $c9


    ldh a, [$96]                                  ; $4fde: $f0 $96
    push af                                       ; $4fe0: $f5
    rst $18                                       ; $4fe1: $df
    ld a, [hl+]                                   ; $4fe2: $2a
    db $10                                        ; $4fe3: $10
    ld a, $82                                     ; $4fe4: $3e $82
    rst $18                                       ; $4fe6: $df
    ld l, $10                                     ; $4fe7: $2e $10
    rst $18                                       ; $4fe9: $df
    inc l                                         ; $4fea: $2c
    db $10                                        ; $4feb: $10
    pop af                                        ; $4fec: $f1
    ldh [$96], a                                  ; $4fed: $e0 $96
    ldh [rSVBK], a                                ; $4fef: $e0 $70
    ret                                           ; $4ff1: $c9


    ld [de], a                                    ; $4ff2: $12
    ld d, b                                       ; $4ff3: $50
    ld c, a                                       ; $4ff4: $4f
    ld d, b                                       ; $4ff5: $50
    nop                                           ; $4ff6: $00
    nop                                           ; $4ff7: $00
    nop                                           ; $4ff8: $00
    nop                                           ; $4ff9: $00
    nop                                           ; $4ffa: $00
    nop                                           ; $4ffb: $00
    nop                                           ; $4ffc: $00
    nop                                           ; $4ffd: $00
    nop                                           ; $4ffe: $00
    nop                                           ; $4fff: $00
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    nop                                           ; $5007: $00
    nop                                           ; $5008: $00
    nop                                           ; $5009: $00
    nop                                           ; $500a: $00
    nop                                           ; $500b: $00
    nop                                           ; $500c: $00
    nop                                           ; $500d: $00
    nop                                           ; $500e: $00
    nop                                           ; $500f: $00
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    ldh a, [$96]                                  ; $5012: $f0 $96
    push af                                       ; $5014: $f5
    ld a, $06                                     ; $5015: $3e $06
    ldh [$96], a                                  ; $5017: $e0 $96
    ldh [rSVBK], a                                ; $5019: $e0 $70
    rst $18                                       ; $501b: $df
    ld a, [hl+]                                   ; $501c: $2a
    db $10                                        ; $501d: $10
    ld a, $04                                     ; $501e: $3e $04
    ld de, $0a03                                  ; $5020: $11 $03 $0a
    ld hl, $1047                                  ; $5023: $21 $47 $10
    rst $18                                       ; $5026: $df
    ld c, d                                       ; $5027: $4a
    dec b                                         ; $5028: $05
    ld a, $04                                     ; $5029: $3e $04
    ld de, $0a03                                  ; $502b: $11 $03 $0a
    ld hl, $1048                                  ; $502e: $21 $48 $10
    rst $18                                       ; $5031: $df
    ld c, d                                       ; $5032: $4a
    dec b                                         ; $5033: $05
    push af                                       ; $5034: $f5
    ld a, $3c                                     ; $5035: $3e $3c
    rst $18                                       ; $5037: $df
    inc b                                         ; $5038: $04
    ld a, [bc]                                    ; $5039: $0a
    pop af                                        ; $503a: $f1
    ld a, $04                                     ; $503b: $3e $04
    ld de, $0a03                                  ; $503d: $11 $03 $0a
    ld hl, $1049                                  ; $5040: $21 $49 $10
    rst $18                                       ; $5043: $df
    ld c, d                                       ; $5044: $4a
    dec b                                         ; $5045: $05
    rst $18                                       ; $5046: $df
    inc l                                         ; $5047: $2c
    db $10                                        ; $5048: $10
    pop af                                        ; $5049: $f1
    ldh [$96], a                                  ; $504a: $e0 $96
    ldh [rSVBK], a                                ; $504c: $e0 $70
    ret                                           ; $504e: $c9


    rst $18                                       ; $504f: $df
    ld a, [hl+]                                   ; $5050: $2a
    db $10                                        ; $5051: $10
    ld a, [$c834]                                 ; $5052: $fa $34 $c8
    or a                                          ; $5055: $b7
    jr nz, jr_031_505f                            ; $5056: $20 $07

    ld a, $09                                     ; $5058: $3e $09
    ld [$c961], a                                 ; $505a: $ea $61 $c9
    jr jr_031_5071                                ; $505d: $18 $12

jr_031_505f:
    call Call_031_510d                            ; $505f: $cd $0d $51
    ld [$c968], a                                 ; $5062: $ea $68 $c9
    rst $28                                       ; $5065: $ef
    ld h, b                                       ; $5066: $60
    inc c                                         ; $5067: $0c
    ld a, [$c8aa]                                 ; $5068: $fa $aa $c8
    or a                                          ; $506b: $b7
    jr z, jr_031_5071                             ; $506c: $28 $03

    rst $20                                       ; $506e: $e7
    ld h, b                                       ; $506f: $60
    inc c                                         ; $5070: $0c

jr_031_5071:
    ld a, $82                                     ; $5071: $3e $82
    rst $18                                       ; $5073: $df
    ld l, $10                                     ; $5074: $2e $10
    rst $18                                       ; $5076: $df
    inc l                                         ; $5077: $2c
    db $10                                        ; $5078: $10
    ret                                           ; $5079: $c9


Call_031_507a:
    rst $18                                       ; $507a: $df
    nop                                           ; $507b: $00
    ld a, [bc]                                    ; $507c: $0a
    ldh a, [$95]                                  ; $507d: $f0 $95
    ld b, a                                       ; $507f: $47
    ld a, $04                                     ; $5080: $3e $04
    ld de, $7cbe                                  ; $5082: $11 $be $7c
    rst $18                                       ; $5085: $df
    jr @+$0c                                      ; $5086: $18 $0a

    ld a, [$c296]                                 ; $5088: $fa $96 $c2
    ld b, a                                       ; $508b: $47
    ld a, $04                                     ; $508c: $3e $04
    rst $18                                       ; $508e: $df
    ld l, $0a                                     ; $508f: $2e $0a
    ld c, $08                                     ; $5091: $0e $08
    call Call_000_25af                            ; $5093: $cd $af $25
    call Call_000_2625                            ; $5096: $cd $25 $26
    push af                                       ; $5099: $f5
    ld a, $1e                                     ; $509a: $3e $1e
    rst $18                                       ; $509c: $df
    inc b                                         ; $509d: $04
    ld a, [bc]                                    ; $509e: $0a
    pop af                                        ; $509f: $f1
    ld a, [$c968]                                 ; $50a0: $fa $68 $c9
    or a                                          ; $50a3: $b7
    jr nz, jr_031_50cd                            ; $50a4: $20 $27

    ld a, $04                                     ; $50a6: $3e $04
    ld b, a                                       ; $50a8: $47
    ld a, $07                                     ; $50a9: $3e $07
    rst $18                                       ; $50ab: $df
    ld [hl-], a                                   ; $50ac: $32
    ld a, [bc]                                    ; $50ad: $0a
    ld a, $04                                     ; $50ae: $3e $04
    rst $18                                       ; $50b0: $df
    inc [hl]                                      ; $50b1: $34
    ld a, [bc]                                    ; $50b2: $0a
    push af                                       ; $50b3: $f5
    ld a, $1e                                     ; $50b4: $3e $1e
    rst $18                                       ; $50b6: $df
    inc b                                         ; $50b7: $04
    ld a, [bc]                                    ; $50b8: $0a
    pop af                                        ; $50b9: $f1
    ld a, $04                                     ; $50ba: $3e $04
    ld de, $0a03                                  ; $50bc: $11 $03 $0a
    ld hl, $104c                                  ; $50bf: $21 $4c $10
    rst $18                                       ; $50c2: $df
    ld c, d                                       ; $50c3: $4a
    dec b                                         ; $50c4: $05
    rst $20                                       ; $50c5: $e7
    ld b, b                                       ; $50c6: $40
    inc c                                         ; $50c7: $0c
    rst $28                                       ; $50c8: $ef
    ret nz                                        ; $50c9: $c0

    inc c                                         ; $50ca: $0c
    jr jr_031_50f7                                ; $50cb: $18 $2a

jr_031_50cd:
    cp $01                                        ; $50cd: $fe $01
    jr nz, jr_031_50e5                            ; $50cf: $20 $14

    push af                                       ; $50d1: $f5
    ld a, $1e                                     ; $50d2: $3e $1e
    rst $18                                       ; $50d4: $df
    inc b                                         ; $50d5: $04
    ld a, [bc]                                    ; $50d6: $0a
    pop af                                        ; $50d7: $f1
    ld a, $04                                     ; $50d8: $3e $04
    ld de, $0a03                                  ; $50da: $11 $03 $0a
    ld hl, $104b                                  ; $50dd: $21 $4b $10
    rst $18                                       ; $50e0: $df
    ld c, d                                       ; $50e1: $4a
    dec b                                         ; $50e2: $05
    jr jr_031_50f7                                ; $50e3: $18 $12

jr_031_50e5:
    push af                                       ; $50e5: $f5
    ld a, $1e                                     ; $50e6: $3e $1e
    rst $18                                       ; $50e8: $df
    inc b                                         ; $50e9: $04
    ld a, [bc]                                    ; $50ea: $0a
    pop af                                        ; $50eb: $f1
    ld a, $04                                     ; $50ec: $3e $04
    ld de, $0a03                                  ; $50ee: $11 $03 $0a
    ld hl, $104a                                  ; $50f1: $21 $4a $10
    rst $18                                       ; $50f4: $df
    ld c, d                                       ; $50f5: $4a
    dec b                                         ; $50f6: $05

jr_031_50f7:
    ldh a, [$95]                                  ; $50f7: $f0 $95
    ld b, a                                       ; $50f9: $47
    ld a, $04                                     ; $50fa: $3e $04
    ld de, $7d2d                                  ; $50fc: $11 $2d $7d
    rst $18                                       ; $50ff: $df
    jr jr_031_510c                                ; $5100: $18 $0a

    ld a, $04                                     ; $5102: $3e $04
    ld b, $00                                     ; $5104: $06 $00
    rst $18                                       ; $5106: $df
    inc l                                         ; $5107: $2c
    ld a, [bc]                                    ; $5108: $0a
    rst $18                                       ; $5109: $df
    ld [bc], a                                    ; $510a: $02
    ld a, [bc]                                    ; $510b: $0a

jr_031_510c:
    ret                                           ; $510c: $c9


Call_031_510d:
    ld a, $06                                     ; $510d: $3e $06
    ldh [$96], a                                  ; $510f: $e0 $96
    ldh [rSVBK], a                                ; $5111: $e0 $70
    ld hl, $00a0                                  ; $5113: $21 $a0 $00
    call Call_031_7d53                            ; $5116: $cd $53 $7d
    or a                                          ; $5119: $b7
    jr nz, jr_031_511f                            ; $511a: $20 $03

    xor a                                         ; $511c: $af
    jr jr_031_512c                                ; $511d: $18 $0d

jr_031_511f:
    rst $18                                       ; $511f: $df
    inc [hl]                                      ; $5120: $34
    db $10                                        ; $5121: $10
    cp $06                                        ; $5122: $fe $06
    jr nz, jr_031_512a                            ; $5124: $20 $04

    ld a, $01                                     ; $5126: $3e $01
    jr jr_031_512c                                ; $5128: $18 $02

jr_031_512a:
    ld a, $02                                     ; $512a: $3e $02

jr_031_512c:
    ret                                           ; $512c: $c9


Call_031_512d:
    ld hl, $0d12                                  ; $512d: $21 $12 $0d
    rst $18                                       ; $5130: $df
    ld c, $0a                                     ; $5131: $0e $0a
    call Call_031_5163                            ; $5133: $cd $63 $51
    ret                                           ; $5136: $c9


Call_031_5137:
    rst $18                                       ; $5137: $df
    nop                                           ; $5138: $00
    ld a, [bc]                                    ; $5139: $0a
    ldh a, [$95]                                  ; $513a: $f0 $95
    ld b, a                                       ; $513c: $47
    ld a, $04                                     ; $513d: $3e $04
    ld de, $7cbe                                  ; $513f: $11 $be $7c
    rst $18                                       ; $5142: $df
    jr @+$0c                                      ; $5143: $18 $0a

    ld a, [$c296]                                 ; $5145: $fa $96 $c2
    ld b, a                                       ; $5148: $47
    ld a, $04                                     ; $5149: $3e $04
    rst $18                                       ; $514b: $df
    ld l, $0a                                     ; $514c: $2e $0a
    ld c, $08                                     ; $514e: $0e $08
    call Call_000_25af                            ; $5150: $cd $af $25
    call Call_000_2625                            ; $5153: $cd $25 $26
    ld hl, $1046                                  ; $5156: $21 $46 $10
    rst $18                                       ; $5159: $df
    ld c, $0a                                     ; $515a: $0e $0a
    call Call_031_5163                            ; $515c: $cd $63 $51
    rst $18                                       ; $515f: $df
    ld [bc], a                                    ; $5160: $02
    ld a, [bc]                                    ; $5161: $0a
    ret                                           ; $5162: $c9


Call_031_5163:
    ld a, $04                                     ; $5163: $3e $04
    rst $18                                       ; $5165: $df
    ld a, [bc]                                    ; $5166: $0a
    ld a, [bc]                                    ; $5167: $0a
    rst $18                                       ; $5168: $df
    ld [de], a                                    ; $5169: $12
    ld a, [bc]                                    ; $516a: $0a
    rst $18                                       ; $516b: $df
    inc c                                         ; $516c: $0c
    ld a, [bc]                                    ; $516d: $0a
    push af                                       ; $516e: $f5
    ld a, $05                                     ; $516f: $3e $05
    rst $18                                       ; $5171: $df
    inc b                                         ; $5172: $04
    ld a, [bc]                                    ; $5173: $0a
    pop af                                        ; $5174: $f1
    and a                                         ; $5175: $a7
    jr z, jr_031_5197                             ; $5176: $28 $1f

    ld hl, $104d                                  ; $5178: $21 $4d $10
    rst $18                                       ; $517b: $df
    ld c, $0a                                     ; $517c: $0e $0a
    ld a, $04                                     ; $517e: $3e $04
    rst $18                                       ; $5180: $df
    ld [$f00a], sp                                ; $5181: $08 $0a $f0
    sub l                                         ; $5184: $95
    ld b, a                                       ; $5185: $47
    ld a, $04                                     ; $5186: $3e $04
    ld de, $7d2d                                  ; $5188: $11 $2d $7d
    rst $18                                       ; $518b: $df
    jr jr_031_5198                                ; $518c: $18 $0a

    ld a, $04                                     ; $518e: $3e $04
    ld b, $00                                     ; $5190: $06 $00
    rst $18                                       ; $5192: $df
    inc l                                         ; $5193: $2c
    ld a, [bc]                                    ; $5194: $0a
    jr jr_031_51f3                                ; $5195: $18 $5c

jr_031_5197:
    rst $20                                       ; $5197: $e7

jr_031_5198:
    ret nz                                        ; $5198: $c0

    inc c                                         ; $5199: $0c
    rst $18                                       ; $519a: $df
    inc e                                         ; $519b: $1c
    db $10                                        ; $519c: $10
    rst $30                                       ; $519d: $f7
    ld h, b                                       ; $519e: $60
    inc d                                         ; $519f: $14
    jr nz, jr_031_51a7                            ; $51a0: $20 $05

    ld a, $08                                     ; $51a2: $3e $08
    ld [$c82c], a                                 ; $51a4: $ea $2c $c8

jr_031_51a7:
    ld a, $0c                                     ; $51a7: $3e $0c
    ld b, a                                       ; $51a9: $47
    ld a, $07                                     ; $51aa: $3e $07
    ld c, a                                       ; $51ac: $4f
    rst $18                                       ; $51ad: $df
    ld c, [hl]                                    ; $51ae: $4e
    ld a, [bc]                                    ; $51af: $0a
    ld a, $06                                     ; $51b0: $3e $06
    ld [$c834], a                                 ; $51b2: $ea $34 $c8
    ld bc, $8000                                  ; $51b5: $01 $00 $80
    rst $18                                       ; $51b8: $df
    ld e, $02                                     ; $51b9: $1e $02
    ld bc, $ff01                                  ; $51bb: $01 $01 $ff
    rst $18                                       ; $51be: $df
    ld e, $02                                     ; $51bf: $1e $02
    ld hl, $0707                                  ; $51c1: $21 $07 $07
    rst $18                                       ; $51c4: $df
    db $10                                        ; $51c5: $10
    db $10                                        ; $51c6: $10
    ld a, $00                                     ; $51c7: $3e $00
    rst $18                                       ; $51c9: $df
    ld e, $10                                     ; $51ca: $1e $10
    ld hl, $2000                                  ; $51cc: $21 $00 $20
    ld de, $38e0                                  ; $51cf: $11 $e0 $38
    rst $18                                       ; $51d2: $df
    jr nz, jr_031_51e5                            ; $51d3: $20 $10

    ld e, $03                                     ; $51d5: $1e $03
    ld bc, $bd40                                  ; $51d7: $01 $40 $bd
    rst $18                                       ; $51da: $df
    ld h, $10                                     ; $51db: $26 $10
    ld de, $c005                                  ; $51dd: $11 $05 $c0
    rst $18                                       ; $51e0: $df
    ld [hl+], a                                   ; $51e1: $22
    db $10                                        ; $51e2: $10
    ldh a, [$95]                                  ; $51e3: $f0 $95

jr_031_51e5:
    ld hl, $4ff2                                  ; $51e5: $21 $f2 $4f
    rst $18                                       ; $51e8: $df
    ld a, [de]                                    ; $51e9: $1a
    db $10                                        ; $51ea: $10
    ld a, $01                                     ; $51eb: $3e $01
    rst $18                                       ; $51ed: $df
    ld [de], a                                    ; $51ee: $12
    db $10                                        ; $51ef: $10
    rst $18                                       ; $51f0: $df
    jr nc, jr_031_5203                            ; $51f1: $30 $10

jr_031_51f3:
    ret                                           ; $51f3: $c9


    rst $18                                       ; $51f4: $df
    nop                                           ; $51f5: $00
    ld a, [bc]                                    ; $51f6: $0a
    ld hl, $0c60                                  ; $51f7: $21 $60 $0c
    rst $18                                       ; $51fa: $df
    ld c, $0a                                     ; $51fb: $0e $0a
    ld a, $80                                     ; $51fd: $3e $80
    rst $18                                       ; $51ff: $df
    ld a, [bc]                                    ; $5200: $0a
    ld a, [bc]                                    ; $5201: $0a
    rst $18                                       ; $5202: $df

jr_031_5203:
    ld [de], a                                    ; $5203: $12
    ld a, [bc]                                    ; $5204: $0a
    rst $18                                       ; $5205: $df
    inc c                                         ; $5206: $0c
    ld a, [bc]                                    ; $5207: $0a
    push af                                       ; $5208: $f5
    ld a, $05                                     ; $5209: $3e $05
    rst $18                                       ; $520b: $df
    inc b                                         ; $520c: $04
    ld a, [bc]                                    ; $520d: $0a
    pop af                                        ; $520e: $f1
    and a                                         ; $520f: $a7
    jr z, jr_031_5214                             ; $5210: $28 $02

    jr jr_031_5217                                ; $5212: $18 $03

jr_031_5214:
    call Call_031_521b                            ; $5214: $cd $1b $52

jr_031_5217:
    rst $18                                       ; $5217: $df
    ld [bc], a                                    ; $5218: $02
    ld a, [bc]                                    ; $5219: $0a
    ret                                           ; $521a: $c9


Call_031_521b:
    rst $20                                       ; $521b: $e7
    add b                                         ; $521c: $80
    inc c                                         ; $521d: $0c
    rst $18                                       ; $521e: $df
    inc e                                         ; $521f: $1c
    db $10                                        ; $5220: $10
    call Call_031_5263                            ; $5221: $cd $63 $52
    rst $18                                       ; $5224: $df
    inc h                                         ; $5225: $24
    db $10                                        ; $5226: $10
    ld bc, $8000                                  ; $5227: $01 $00 $80
    rst $18                                       ; $522a: $df
    ld e, $02                                     ; $522b: $1e $02
    ld bc, $ff01                                  ; $522d: $01 $01 $ff
    rst $18                                       ; $5230: $df
    ld e, $02                                     ; $5231: $1e $02
    ld a, $06                                     ; $5233: $3e $06
    ld [$c834], a                                 ; $5235: $ea $34 $c8
    ld a, $00                                     ; $5238: $3e $00
    rst $18                                       ; $523a: $df
    ld e, $10                                     ; $523b: $1e $10
    ld hl, $c2a2                                  ; $523d: $21 $a2 $c2
    ld a, [hl+]                                   ; $5240: $2a
    ld d, [hl]                                    ; $5241: $56
    ld e, a                                       ; $5242: $5f
    ld hl, $c2a0                                  ; $5243: $21 $a0 $c2
    ld a, [hl+]                                   ; $5246: $2a
    ld h, [hl]                                    ; $5247: $66
    ld l, a                                       ; $5248: $6f
    rst $18                                       ; $5249: $df
    jr nz, jr_031_525c                            ; $524a: $20 $10

    ld de, $c000                                  ; $524c: $11 $00 $c0
    rst $18                                       ; $524f: $df
    ld [hl+], a                                   ; $5250: $22
    db $10                                        ; $5251: $10
    ldh a, [$95]                                  ; $5252: $f0 $95
    ld hl, $5296                                  ; $5254: $21 $96 $52
    rst $18                                       ; $5257: $df
    ld a, [de]                                    ; $5258: $1a
    db $10                                        ; $5259: $10
    ld a, $01                                     ; $525a: $3e $01

jr_031_525c:
    rst $18                                       ; $525c: $df
    ld [de], a                                    ; $525d: $12
    db $10                                        ; $525e: $10
    rst $18                                       ; $525f: $df
    jr nc, jr_031_5272                            ; $5260: $30 $10

    ret                                           ; $5262: $c9


Call_031_5263:
    ld a, [$c450]                                 ; $5263: $fa $50 $c4
    ld hl, $5276                                  ; $5266: $21 $76 $52
    cp [hl]                                       ; $5269: $be
    jr z, jr_031_527a                             ; $526a: $28 $0e

    inc hl                                        ; $526c: $23
    cp [hl]                                       ; $526d: $be
    jr z, jr_031_5281                             ; $526e: $28 $11

    inc hl                                        ; $5270: $23
    cp [hl]                                       ; $5271: $be

jr_031_5272:
    jr z, jr_031_5288                             ; $5272: $28 $14

    jr jr_031_528f                                ; $5274: $18 $19

    inc c                                         ; $5276: $0c
    rrca                                          ; $5277: $0f
    ld [de], a                                    ; $5278: $12
    dec d                                         ; $5279: $15

jr_031_527a:
    ld hl, $0707                                  ; $527a: $21 $07 $07
    rst $18                                       ; $527d: $df
    db $10                                        ; $527e: $10
    db $10                                        ; $527f: $10
    ret                                           ; $5280: $c9


jr_031_5281:
    ld hl, $070a                                  ; $5281: $21 $0a $07
    rst $18                                       ; $5284: $df
    db $10                                        ; $5285: $10
    db $10                                        ; $5286: $10
    ret                                           ; $5287: $c9


jr_031_5288:
    ld hl, $070d                                  ; $5288: $21 $0d $07
    rst $18                                       ; $528b: $df
    db $10                                        ; $528c: $10
    db $10                                        ; $528d: $10
    ret                                           ; $528e: $c9


jr_031_528f:
    ld hl, $0710                                  ; $528f: $21 $10 $07
    rst $18                                       ; $5292: $df
    db $10                                        ; $5293: $10
    db $10                                        ; $5294: $10
    ret                                           ; $5295: $c9


    or [hl]                                       ; $5296: $b6
    ld d, d                                       ; $5297: $52
    or a                                          ; $5298: $b7
    ld d, d                                       ; $5299: $52
    nop                                           ; $529a: $00
    nop                                           ; $529b: $00
    nop                                           ; $529c: $00
    nop                                           ; $529d: $00
    nop                                           ; $529e: $00
    nop                                           ; $529f: $00
    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    nop                                           ; $52a2: $00
    nop                                           ; $52a3: $00
    nop                                           ; $52a4: $00
    nop                                           ; $52a5: $00
    nop                                           ; $52a6: $00
    nop                                           ; $52a7: $00
    nop                                           ; $52a8: $00
    nop                                           ; $52a9: $00
    nop                                           ; $52aa: $00
    nop                                           ; $52ab: $00
    nop                                           ; $52ac: $00
    nop                                           ; $52ad: $00
    nop                                           ; $52ae: $00
    nop                                           ; $52af: $00
    nop                                           ; $52b0: $00

jr_031_52b1:
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    nop                                           ; $52b3: $00
    nop                                           ; $52b4: $00
    nop                                           ; $52b5: $00
    ret                                           ; $52b6: $c9


    rst $18                                       ; $52b7: $df
    ld a, [hl+]                                   ; $52b8: $2a
    db $10                                        ; $52b9: $10
    ld a, [$c834]                                 ; $52ba: $fa $34 $c8

jr_031_52bd:
    or a                                          ; $52bd: $b7
    jr nz, jr_031_52c9                            ; $52be: $20 $09

    ld a, $82                                     ; $52c0: $3e $82
    rst $18                                       ; $52c2: $df
    ld l, $10                                     ; $52c3: $2e $10
    rst $18                                       ; $52c5: $df
    inc l                                         ; $52c6: $2c
    db $10                                        ; $52c7: $10
    ret                                           ; $52c8: $c9


jr_031_52c9:
    ld a, $01                                     ; $52c9: $3e $01
    rst $18                                       ; $52cb: $df
    ld l, $10                                     ; $52cc: $2e $10
    rst $18                                       ; $52ce: $df
    inc l                                         ; $52cf: $2c
    db $10                                        ; $52d0: $10
    ret                                           ; $52d1: $c9


    dec h                                         ; $52d2: $25
    ld d, e                                       ; $52d3: $53
    ld e, h                                       ; $52d4: $5c
    ld d, e                                       ; $52d5: $53
    ldh [rHDMA2], a                               ; $52d6: $e0 $52
    ld a, l                                       ; $52d8: $7d
    ld d, e                                       ; $52d9: $53
    ld sp, $3a55                                  ; $52da: $31 $55 $3a
    ld d, l                                       ; $52dd: $55
    ld b, e                                       ; $52de: $43
    ld d, l                                       ; $52df: $55
    add hl, de                                    ; $52e0: $19
    ld a, l                                       ; $52e1: $7d
    nop                                           ; $52e2: $00
    inc h                                         ; $52e3: $24
    ret nz                                        ; $52e4: $c0

    add hl, sp                                    ; $52e5: $39
    nop                                           ; $52e6: $00
    nop                                           ; $52e7: $00
    nop                                           ; $52e8: $00
    nop                                           ; $52e9: $00
    ld bc, $2416                                  ; $52ea: $01 $16 $24
    ld a, l                                       ; $52ed: $7d
    nop                                           ; $52ee: $00
    jr nz, jr_031_52b1                            ; $52ef: $20 $c0

    add hl, sp                                    ; $52f1: $39
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00
    nop                                           ; $52f4: $00
    nop                                           ; $52f5: $00
    ld bc, $2d16                                  ; $52f6: $01 $16 $2d
    ld a, l                                       ; $52f9: $7d
    nop                                           ; $52fa: $00
    jr jr_031_52bd                                ; $52fb: $18 $c0

    add hl, sp                                    ; $52fd: $39
    nop                                           ; $52fe: $00
    nop                                           ; $52ff: $00
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    ld bc, $360d                                  ; $5302: $01 $0d $36
    ld a, l                                       ; $5305: $7d
    nop                                           ; $5306: $00
    inc d                                         ; $5307: $14
    ret nz                                        ; $5308: $c0

    add hl, sp                                    ; $5309: $39
    nop                                           ; $530a: $00
    nop                                           ; $530b: $00
    nop                                           ; $530c: $00
    nop                                           ; $530d: $00
    ld bc, $be0a                                  ; $530e: $01 $0a $be
    ld a, h                                       ; $5311: $7c
    nop                                           ; $5312: $00
    inc de                                        ; $5313: $13
    nop                                           ; $5314: $00
    dec a                                         ; $5315: $3d
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    nop                                           ; $5318: $00
    nop                                           ; $5319: $00
    ld bc, $000e                                  ; $531a: $01 $0e $00
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    nop                                           ; $531f: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    rst $38                                       ; $5324: $ff
    ld bc, $00c0                                  ; $5325: $01 $c0 $00
    ld e, $00                                     ; $5328: $1e $00
    dec a                                         ; $532a: $3d
    ld [bc], a                                    ; $532b: $02
    ret nz                                        ; $532c: $c0

    nop                                           ; $532d: $00
    ld e, $00                                     ; $532e: $1e $00
    dec a                                         ; $5330: $3d
    inc b                                         ; $5331: $04
    ret nz                                        ; $5332: $c0

    nop                                           ; $5333: $00
    jr nz, jr_031_5336                            ; $5334: $20 $00

jr_031_5336:
    inc a                                         ; $5336: $3c
    dec b                                         ; $5337: $05
    ret nz                                        ; $5338: $c0

    nop                                           ; $5339: $00
    jr jr_031_533c                                ; $533a: $18 $00

jr_031_533c:
    inc a                                         ; $533c: $3c
    ld b, $c0                                     ; $533d: $06 $c0
    nop                                           ; $533f: $00
    jr nz, jr_031_5342                            ; $5340: $20 $00

jr_031_5342:
    inc a                                         ; $5342: $3c
    rlca                                          ; $5343: $07
    ret nz                                        ; $5344: $c0

    nop                                           ; $5345: $00
    jr jr_031_5348                                ; $5346: $18 $00

jr_031_5348:
    inc a                                         ; $5348: $3c
    ld [$00c0], sp                                ; $5349: $08 $c0 $00
    jr nz, jr_031_534e                            ; $534c: $20 $00

jr_031_534e:
    inc a                                         ; $534e: $3c
    add hl, bc                                    ; $534f: $09
    ret nz                                        ; $5350: $c0

    nop                                           ; $5351: $00
    jr jr_031_5354                                ; $5352: $18 $00

jr_031_5354:
    inc a                                         ; $5354: $3c
    ld h, e                                       ; $5355: $63
    ld b, b                                       ; $5356: $40
    nop                                           ; $5357: $00
    dec de                                        ; $5358: $1b
    nop                                           ; $5359: $00
    add hl, hl                                    ; $535a: $29
    rst $38                                       ; $535b: $ff
    ld bc, $00ff                                  ; $535c: $01 $ff $00
    nop                                           ; $535f: $00
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    add hl, bc                                    ; $5362: $09
    inc bc                                        ; $5363: $03
    ld [bc], a                                    ; $5364: $02
    rst $38                                       ; $5365: $ff
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    rrca                                          ; $536a: $0f
    ld [bc], a                                    ; $536b: $02
    ld [$00ff], sp                                ; $536c: $08 $ff $00
    nop                                           ; $536f: $00
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    rrca                                          ; $5372: $0f
    ld [$ff09], sp                                ; $5373: $08 $09 $ff
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    rrca                                          ; $537a: $0f
    add hl, bc                                    ; $537b: $09
    rst $38                                       ; $537c: $ff
    ld [bc], a                                    ; $537d: $02
    rst $38                                       ; $537e: $ff
    nop                                           ; $537f: $00
    nop                                           ; $5380: $00
    and [hl]                                      ; $5381: $a6
    ld d, e                                       ; $5382: $53
    dec bc                                        ; $5383: $0b
    nop                                           ; $5384: $00
    inc bc                                        ; $5385: $03
    rst $38                                       ; $5386: $ff
    nop                                           ; $5387: $00
    nop                                           ; $5388: $00
    ld c, $54                                     ; $5389: $0e $54
    dec bc                                        ; $538b: $0b
    nop                                           ; $538c: $00
    inc b                                         ; $538d: $04
    rst $38                                       ; $538e: $ff
    nop                                           ; $538f: $00
    nop                                           ; $5390: $00
    and d                                         ; $5391: $a2
    ld d, h                                       ; $5392: $54
    dec bc                                        ; $5393: $0b
    nop                                           ; $5394: $00
    dec b                                         ; $5395: $05
    rst $38                                       ; $5396: $ff
    nop                                           ; $5397: $00
    nop                                           ; $5398: $00
    ld hl, $0b0d                                  ; $5399: $21 $0d $0b
    nop                                           ; $539c: $00
    ld b, $ff                                     ; $539d: $06 $ff
    nop                                           ; $539f: $00
    nop                                           ; $53a0: $00
    ld [hl+], a                                   ; $53a1: $22
    dec c                                         ; $53a2: $0d
    inc bc                                        ; $53a3: $03
    nop                                           ; $53a4: $00
    rst $38                                       ; $53a5: $ff
    ld hl, $0d1c                                  ; $53a6: $21 $1c $0d
    rst $18                                       ; $53a9: $df
    ld c, $0a                                     ; $53aa: $0e $0a
    ld a, $02                                     ; $53ac: $3e $02
    rst $18                                       ; $53ae: $df
    ld a, [bc]                                    ; $53af: $0a
    ld a, [bc]                                    ; $53b0: $0a
    push af                                       ; $53b1: $f5
    ld a, $05                                     ; $53b2: $3e $05
    rst $18                                       ; $53b4: $df
    inc b                                         ; $53b5: $04
    ld a, [bc]                                    ; $53b6: $0a
    pop af                                        ; $53b7: $f1
    rst $18                                       ; $53b8: $df
    ld [de], a                                    ; $53b9: $12
    ld a, [bc]                                    ; $53ba: $0a
    rst $18                                       ; $53bb: $df
    inc c                                         ; $53bc: $0c
    ld a, [bc]                                    ; $53bd: $0a
    push af                                       ; $53be: $f5
    ld a, $05                                     ; $53bf: $3e $05
    rst $18                                       ; $53c1: $df
    inc b                                         ; $53c2: $04
    ld a, [bc]                                    ; $53c3: $0a
    pop af                                        ; $53c4: $f1
    and a                                         ; $53c5: $a7
    jr nz, jr_031_53ce                            ; $53c6: $20 $06

    ld a, $02                                     ; $53c8: $3e $02
    rst $18                                       ; $53ca: $df
    ld [$c90a], sp                                ; $53cb: $08 $0a $c9

jr_031_53ce:
    rst $18                                       ; $53ce: $df
    db $10                                        ; $53cf: $10
    ld a, [bc]                                    ; $53d0: $0a
    ld a, $02                                     ; $53d1: $3e $02
    rst $18                                       ; $53d3: $df
    ld a, [bc]                                    ; $53d4: $0a
    ld a, [bc]                                    ; $53d5: $0a
    push af                                       ; $53d6: $f5
    ld a, $05                                     ; $53d7: $3e $05
    rst $18                                       ; $53d9: $df
    inc b                                         ; $53da: $04
    ld a, [bc]                                    ; $53db: $0a
    pop af                                        ; $53dc: $f1
    rst $18                                       ; $53dd: $df
    ld [de], a                                    ; $53de: $12
    ld a, [bc]                                    ; $53df: $0a
    rst $18                                       ; $53e0: $df
    inc c                                         ; $53e1: $0c
    ld a, [bc]                                    ; $53e2: $0a
    push af                                       ; $53e3: $f5
    ld a, $05                                     ; $53e4: $3e $05
    rst $18                                       ; $53e6: $df
    inc b                                         ; $53e7: $04
    ld a, [bc]                                    ; $53e8: $0a
    pop af                                        ; $53e9: $f1
    and a                                         ; $53ea: $a7
    jr z, jr_031_53f0                             ; $53eb: $28 $03

    rst $18                                       ; $53ed: $df
    db $10                                        ; $53ee: $10
    ld a, [bc]                                    ; $53ef: $0a

jr_031_53f0:
    ld a, $02                                     ; $53f0: $3e $02
    rst $18                                       ; $53f2: $df
    ld [$c90a], sp                                ; $53f3: $08 $0a $c9
    ld hl, $0d16                                  ; $53f6: $21 $16 $0d
    rst $18                                       ; $53f9: $df
    ld c, $0a                                     ; $53fa: $0e $0a
    ld a, $03                                     ; $53fc: $3e $03
    rst $18                                       ; $53fe: $df
    ld [$c90a], sp                                ; $53ff: $08 $0a $c9
    ld hl, $0d16                                  ; $5402: $21 $16 $0d
    rst $18                                       ; $5405: $df
    ld c, $0a                                     ; $5406: $0e $0a
    ld a, $04                                     ; $5408: $3e $04
    rst $18                                       ; $540a: $df
    ld [$c90a], sp                                ; $540b: $08 $0a $c9
    rst $30                                       ; $540e: $f7
    and b                                         ; $540f: $a0
    inc c                                         ; $5410: $0c
    jr z, jr_031_5417                             ; $5411: $28 $04

    call Call_031_584c                            ; $5413: $cd $4c $58
    ret                                           ; $5416: $c9


jr_031_5417:
    ld hl, $104e                                  ; $5417: $21 $4e $10
    rst $18                                       ; $541a: $df
    ld c, $0a                                     ; $541b: $0e $0a
    ld a, $03                                     ; $541d: $3e $03
    rst $18                                       ; $541f: $df
    ld a, [bc]                                    ; $5420: $0a
    ld a, [bc]                                    ; $5421: $0a
    rst $18                                       ; $5422: $df
    ld [de], a                                    ; $5423: $12
    ld a, [bc]                                    ; $5424: $0a
    rst $18                                       ; $5425: $df
    inc c                                         ; $5426: $0c
    ld a, [bc]                                    ; $5427: $0a
    push af                                       ; $5428: $f5
    ld a, $05                                     ; $5429: $3e $05
    rst $18                                       ; $542b: $df
    inc b                                         ; $542c: $04
    ld a, [bc]                                    ; $542d: $0a
    pop af                                        ; $542e: $f1
    and a                                         ; $542f: $a7
    jr z, jr_031_5439                             ; $5430: $28 $07

    ld a, $03                                     ; $5432: $3e $03
    rst $18                                       ; $5434: $df
    ld [$180a], sp                                ; $5435: $08 $0a $18
    ld l, b                                       ; $5438: $68

jr_031_5439:
    rst $18                                       ; $5439: $df
    db $10                                        ; $543a: $10
    ld a, [bc]                                    ; $543b: $0a
    ld a, $03                                     ; $543c: $3e $03
    rst $18                                       ; $543e: $df
    ld [$df0a], sp                                ; $543f: $08 $0a $df
    inc e                                         ; $5442: $1c
    db $10                                        ; $5443: $10
    ld a, $0f                                     ; $5444: $3e $0f
    ld b, a                                       ; $5446: $47
    ld a, $04                                     ; $5447: $3e $04

Call_031_5449:
    ld c, a                                       ; $5449: $4f
    rst $18                                       ; $544a: $df
    ld c, [hl]                                    ; $544b: $4e
    ld a, [bc]                                    ; $544c: $0a
    ld a, $06                                     ; $544d: $3e $06
    ld [$c834], a                                 ; $544f: $ea $34 $c8
    ld hl, $5600                                  ; $5452: $21 $00 $56
    ld de, $c600                                  ; $5455: $11 $00 $c6
    ld c, $04                                     ; $5458: $0e $04
    call Call_000_03eb                            ; $545a: $cd $eb $03
    ld bc, $4f00                                  ; $545d: $01 $00 $4f
    rst $18                                       ; $5460: $df
    ld e, $02                                     ; $5461: $1e $02
    ld bc, $ff01                                  ; $5463: $01 $01 $ff
    rst $18                                       ; $5466: $df
    ld e, $02                                     ; $5467: $1e $02
    ld hl, $070a                                  ; $5469: $21 $0a $07
    rst $18                                       ; $546c: $df
    db $10                                        ; $546d: $10
    db $10                                        ; $546e: $10
    ld a, $00                                     ; $546f: $3e $00
    rst $18                                       ; $5471: $df
    ld e, $10                                     ; $5472: $1e $10
    ld hl, $2000                                  ; $5474: $21 $00 $20
    ld de, $3a80                                  ; $5477: $11 $80 $3a
    rst $18                                       ; $547a: $df
    jr nz, @+$12                                  ; $547b: $20 $10

    ld de, $c000                                  ; $547d: $11 $00 $c0
    rst $18                                       ; $5480: $df
    ld [hl+], a                                   ; $5481: $22
    db $10                                        ; $5482: $10
    ld a, $03                                     ; $5483: $3e $03
    ld [$c89d], a                                 ; $5485: $ea $9d $c8
    ld hl, $c89a                                  ; $5488: $21 $9a $c8
    ld de, $00d2                                  ; $548b: $11 $d2 $00
    ld a, e                                       ; $548e: $7b
    ld [hl+], a                                   ; $548f: $22
    ld [hl], d                                    ; $5490: $72
    ldh a, [$95]                                  ; $5491: $f0 $95
    ld hl, $5610                                  ; $5493: $21 $10 $56
    rst $18                                       ; $5496: $df
    ld a, [de]                                    ; $5497: $1a
    db $10                                        ; $5498: $10
    ld a, $01                                     ; $5499: $3e $01
    rst $18                                       ; $549b: $df
    ld [de], a                                    ; $549c: $12
    db $10                                        ; $549d: $10
    rst $18                                       ; $549e: $df
    jr nc, jr_031_54b1                            ; $549f: $30 $10

    ret                                           ; $54a1: $c9


    rst $30                                       ; $54a2: $f7
    ret nz                                        ; $54a3: $c0

    inc c                                         ; $54a4: $0c
    jr z, jr_031_54ab                             ; $54a5: $28 $04

    call Call_031_5ada                            ; $54a7: $cd $da $5a
    ret                                           ; $54aa: $c9


jr_031_54ab:
    ld hl, $1061                                  ; $54ab: $21 $61 $10
    rst $18                                       ; $54ae: $df
    ld c, $0a                                     ; $54af: $0e $0a

jr_031_54b1:
    ld a, $04                                     ; $54b1: $3e $04
    rst $18                                       ; $54b3: $df
    ld a, [bc]                                    ; $54b4: $0a
    ld a, [bc]                                    ; $54b5: $0a
    rst $18                                       ; $54b6: $df
    ld [de], a                                    ; $54b7: $12
    ld a, [bc]                                    ; $54b8: $0a
    rst $18                                       ; $54b9: $df
    inc c                                         ; $54ba: $0c
    ld a, [bc]                                    ; $54bb: $0a
    push af                                       ; $54bc: $f5
    ld a, $05                                     ; $54bd: $3e $05
    rst $18                                       ; $54bf: $df
    inc b                                         ; $54c0: $04
    ld a, [bc]                                    ; $54c1: $0a
    pop af                                        ; $54c2: $f1
    and a                                         ; $54c3: $a7
    jr z, jr_031_54cd                             ; $54c4: $28 $07

    ld a, $04                                     ; $54c6: $3e $04
    rst $18                                       ; $54c8: $df
    ld [$180a], sp                                ; $54c9: $08 $0a $18
    ld h, e                                       ; $54cc: $63

jr_031_54cd:
    rst $18                                       ; $54cd: $df
    db $10                                        ; $54ce: $10
    ld a, [bc]                                    ; $54cf: $0a
    ld a, $04                                     ; $54d0: $3e $04
    rst $18                                       ; $54d2: $df
    ld [$df0a], sp                                ; $54d3: $08 $0a $df
    inc e                                         ; $54d6: $1c
    db $10                                        ; $54d7: $10
    ld a, $0f                                     ; $54d8: $3e $0f
    ld b, a                                       ; $54da: $47
    ld a, $05                                     ; $54db: $3e $05
    ld c, a                                       ; $54dd: $4f
    rst $18                                       ; $54de: $df
    ld c, [hl]                                    ; $54df: $4e
    ld a, [bc]                                    ; $54e0: $0a
    ld a, $06                                     ; $54e1: $3e $06
    ld [$c834], a                                 ; $54e3: $ea $34 $c8
    ld hl, $5913                                  ; $54e6: $21 $13 $59
    ld de, $c600                                  ; $54e9: $11 $00 $c6
    ld c, $04                                     ; $54ec: $0e $04
    call Call_000_03eb                            ; $54ee: $cd $eb $03
    ld bc, $4e00                                  ; $54f1: $01 $00 $4e
    rst $18                                       ; $54f4: $df
    ld e, $02                                     ; $54f5: $1e $02
    ld bc, $ff01                                  ; $54f7: $01 $01 $ff
    rst $18                                       ; $54fa: $df
    ld e, $02                                     ; $54fb: $1e $02
    ld hl, $070a                                  ; $54fd: $21 $0a $07
    rst $18                                       ; $5500: $df
    db $10                                        ; $5501: $10
    db $10                                        ; $5502: $10
    ld a, $00                                     ; $5503: $3e $00
    rst $18                                       ; $5505: $df
    ld e, $10                                     ; $5506: $1e $10
    ld hl, $17c0                                  ; $5508: $21 $c0 $17
    ld de, $3a40                                  ; $550b: $11 $40 $3a
    rst $18                                       ; $550e: $df
    jr nz, @+$12                                  ; $550f: $20 $10

    ld de, $4005                                  ; $5511: $11 $05 $40
    rst $18                                       ; $5514: $df
    ld [hl+], a                                   ; $5515: $22
    db $10                                        ; $5516: $10
    ld hl, $c89a                                  ; $5517: $21 $9a $c8
    ld de, $00d2                                  ; $551a: $11 $d2 $00
    ld a, e                                       ; $551d: $7b
    ld [hl+], a                                   ; $551e: $22
    ld [hl], d                                    ; $551f: $72
    ldh a, [$95]                                  ; $5520: $f0 $95
    ld hl, $5923                                  ; $5522: $21 $23 $59
    rst $18                                       ; $5525: $df
    ld a, [de]                                    ; $5526: $1a
    db $10                                        ; $5527: $10
    ld a, $01                                     ; $5528: $3e $01
    rst $18                                       ; $552a: $df
    ld [de], a                                    ; $552b: $12
    db $10                                        ; $552c: $10
    rst $18                                       ; $552d: $df
    jr nc, jr_031_5540                            ; $552e: $30 $10

    ret                                           ; $5530: $c9


    ld bc, $00ff                                  ; $5531: $01 $ff $00
    nop                                           ; $5534: $00
    jr @+$7f                                      ; $5535: $18 $7d

    ld b, $00                                     ; $5537: $06 $00
    rst $38                                       ; $5539: $ff
    rrca                                          ; $553a: $0f
    rst $38                                       ; $553b: $ff
    nop                                           ; $553c: $00
    nop                                           ; $553d: $00
    db $f4                                        ; $553e: $f4
    ld d, c                                       ; $553f: $51

jr_031_5540:
    ld bc, $ff00                                  ; $5540: $01 $00 $ff
    ld a, [$c46a]                                 ; $5543: $fa $6a $c4
    cp $01                                        ; $5546: $fe $01
    jr z, jr_031_5552                             ; $5548: $28 $08

    push af                                       ; $554a: $f5
    xor a                                         ; $554b: $af
    ld hl, $c4b4                                  ; $554c: $21 $b4 $c4
    ld [hl+], a                                   ; $554f: $22
    ld [hl+], a                                   ; $5550: $22
    pop af                                        ; $5551: $f1

jr_031_5552:
    cp $04                                        ; $5552: $fe $04
    jr nz, jr_031_555c                            ; $5554: $20 $06

    call Call_031_5856                            ; $5556: $cd $56 $58
    jp Jump_031_55d6                              ; $5559: $c3 $d6 $55


jr_031_555c:
    cp $05                                        ; $555c: $fe $05
    jr nz, jr_031_5566                            ; $555e: $20 $06

    call Call_031_5ae4                            ; $5560: $cd $e4 $5a
    jp Jump_031_55d6                              ; $5563: $c3 $d6 $55


jr_031_5566:
    cp $06                                        ; $5566: $fe $06
    jr nz, jr_031_5598                            ; $5568: $20 $2e

    call Call_031_5711                            ; $556a: $cd $11 $57
    rst $30                                       ; $556d: $f7
    ld b, b                                       ; $556e: $40
    inc c                                         ; $556f: $0c
    jr z, jr_031_55d6                             ; $5570: $28 $64

    rst $28                                       ; $5572: $ef
    ld b, b                                       ; $5573: $40
    inc c                                         ; $5574: $0c
    rst $30                                       ; $5575: $f7
    ret nz                                        ; $5576: $c0

    inc d                                         ; $5577: $14
    jr nz, jr_031_55d6                            ; $5578: $20 $5c

    call Call_000_2ed5                            ; $557a: $cd $d5 $2e
    ld e, $e7                                     ; $557d: $1e $e7
    ret nz                                        ; $557f: $c0

    inc d                                         ; $5580: $14
    ld de, $0019                                  ; $5581: $11 $19 $00
    call Call_031_7da4                            ; $5584: $cd $a4 $7d
    ld b, $00                                     ; $5587: $06 $00
    ld c, $fa                                     ; $5589: $0e $fa
    rst $18                                       ; $558b: $df
    ld c, [hl]                                    ; $558c: $4e
    ld a, [bc]                                    ; $558d: $0a
    rst $18                                       ; $558e: $df
    inc [hl]                                      ; $558f: $34
    ld [bc], a                                    ; $5590: $02
    ld a, $08                                     ; $5591: $3e $08
    ld [$c441], a                                 ; $5593: $ea $41 $c4
    jr jr_031_55d6                                ; $5596: $18 $3e

jr_031_5598:
    cp $07                                        ; $5598: $fe $07
    jr nz, jr_031_55ca                            ; $559a: $20 $2e

    call Call_031_5a27                            ; $559c: $cd $27 $5a
    rst $30                                       ; $559f: $f7
    ld b, b                                       ; $55a0: $40
    inc c                                         ; $55a1: $0c
    jr z, jr_031_55d6                             ; $55a2: $28 $32

    rst $28                                       ; $55a4: $ef
    ld b, b                                       ; $55a5: $40
    inc c                                         ; $55a6: $0c
    rst $30                                       ; $55a7: $f7
    ldh [rNR14], a                                ; $55a8: $e0 $14
    jr nz, jr_031_55d6                            ; $55aa: $20 $2a

    call Call_000_2ed5                            ; $55ac: $cd $d5 $2e
    ld e, $e7                                     ; $55af: $1e $e7
    ldh [rNR14], a                                ; $55b1: $e0 $14
    ld de, $0019                                  ; $55b3: $11 $19 $00
    call Call_031_7da4                            ; $55b6: $cd $a4 $7d
    ld b, $00                                     ; $55b9: $06 $00
    ld c, $fa                                     ; $55bb: $0e $fa
    rst $18                                       ; $55bd: $df
    ld c, [hl]                                    ; $55be: $4e
    ld a, [bc]                                    ; $55bf: $0a
    rst $18                                       ; $55c0: $df
    inc [hl]                                      ; $55c1: $34
    ld [bc], a                                    ; $55c2: $02
    ld a, $09                                     ; $55c3: $3e $09
    ld [$c441], a                                 ; $55c5: $ea $41 $c4
    jr jr_031_55d6                                ; $55c8: $18 $0c

jr_031_55ca:
    cp $fa                                        ; $55ca: $fe $fa
    jr nz, jr_031_55d6                            ; $55cc: $20 $08

    rst $30                                       ; $55ce: $f7
    add b                                         ; $55cf: $80
    inc c                                         ; $55d0: $0c
    jr z, jr_031_55d6                             ; $55d1: $28 $03

    rst $28                                       ; $55d3: $ef
    add b                                         ; $55d4: $80
    inc c                                         ; $55d5: $0c

Jump_031_55d6:
jr_031_55d6:
    ret                                           ; $55d6: $c9


    ld bc, $0d0a                                  ; $55d7: $01 $0a $0d
    ld c, $05                                     ; $55da: $0e $05
    nop                                           ; $55dc: $00
    dec c                                         ; $55dd: $0d
    dec de                                        ; $55de: $1b
    ld bc, $0700                                  ; $55df: $01 $00 $07
    add b                                         ; $55e2: $80
    nop                                           ; $55e3: $00
    ld bc, $0102                                  ; $55e4: $01 $02 $01
    ld b, [hl]                                    ; $55e7: $46
    rlca                                          ; $55e8: $07
    nop                                           ; $55e9: $00
    nop                                           ; $55ea: $00
    ld [bc], a                                    ; $55eb: $02
    ld [bc], a                                    ; $55ec: $02
    ld bc, $075a                                  ; $55ed: $01 $5a $07
    add b                                         ; $55f0: $80
    nop                                           ; $55f1: $00
    ld [bc], a                                    ; $55f2: $02
    ld [bc], a                                    ; $55f3: $02
    ld bc, $0746                                  ; $55f4: $01 $46 $07
    nop                                           ; $55f7: $00
    nop                                           ; $55f8: $00
    ld bc, $0102                                  ; $55f9: $01 $02 $01
    ld e, d                                       ; $55fc: $5a
    inc c                                         ; $55fd: $0c
    db $e3                                        ; $55fe: $e3
    rst $38                                       ; $55ff: $ff
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    jr nz, jr_031_5604                            ; $5602: $20 $00

jr_031_5604:
    add b                                         ; $5604: $80
    ld a, [hl-]                                   ; $5605: $3a
    ret nz                                        ; $5606: $c0

    push bc                                       ; $5607: $c5
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    inc a                                         ; $560a: $3c
    nop                                           ; $560b: $00
    ld de, $0000                                  ; $560c: $11 $00 $00
    nop                                           ; $560f: $00
    jr nc, jr_031_5668                            ; $5610: $30 $56

    ld l, l                                       ; $5612: $6d
    ld d, [hl]                                    ; $5613: $56
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    nop                                           ; $561b: $00
    nop                                           ; $561c: $00
    nop                                           ; $561d: $00
    nop                                           ; $561e: $00
    nop                                           ; $561f: $00
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    nop                                           ; $562a: $00
    nop                                           ; $562b: $00
    nop                                           ; $562c: $00
    nop                                           ; $562d: $00
    nop                                           ; $562e: $00
    nop                                           ; $562f: $00
    ldh a, [$96]                                  ; $5630: $f0 $96
    push af                                       ; $5632: $f5
    ld a, $06                                     ; $5633: $3e $06
    ldh [$96], a                                  ; $5635: $e0 $96
    ldh [rSVBK], a                                ; $5637: $e0 $70
    rst $18                                       ; $5639: $df
    ld a, [hl+]                                   ; $563a: $2a
    db $10                                        ; $563b: $10
    ld a, $03                                     ; $563c: $3e $03
    ld de, $0a03                                  ; $563e: $11 $03 $0a
    ld hl, $1051                                  ; $5641: $21 $51 $10
    rst $18                                       ; $5644: $df
    ld c, d                                       ; $5645: $4a
    dec b                                         ; $5646: $05
    ld a, $03                                     ; $5647: $3e $03
    ld de, $0a03                                  ; $5649: $11 $03 $0a
    ld hl, $1052                                  ; $564c: $21 $52 $10
    rst $18                                       ; $564f: $df
    ld c, d                                       ; $5650: $4a
    dec b                                         ; $5651: $05
    push af                                       ; $5652: $f5
    ld a, $3c                                     ; $5653: $3e $3c
    rst $18                                       ; $5655: $df
    inc b                                         ; $5656: $04
    ld a, [bc]                                    ; $5657: $0a
    pop af                                        ; $5658: $f1
    ld a, $03                                     ; $5659: $3e $03
    ld de, $0a03                                  ; $565b: $11 $03 $0a
    ld hl, $1054                                  ; $565e: $21 $54 $10
    rst $18                                       ; $5661: $df
    ld c, d                                       ; $5662: $4a
    dec b                                         ; $5663: $05
    rst $18                                       ; $5664: $df
    inc l                                         ; $5665: $2c
    db $10                                        ; $5666: $10
    pop af                                        ; $5667: $f1

jr_031_5668:
    ldh [$96], a                                  ; $5668: $e0 $96
    ldh [rSVBK], a                                ; $566a: $e0 $70
    ret                                           ; $566c: $c9


    ldh a, [$96]                                  ; $566d: $f0 $96
    push af                                       ; $566f: $f5
    rst $18                                       ; $5670: $df
    ld a, [hl+]                                   ; $5671: $2a
    db $10                                        ; $5672: $10
    ld a, $82                                     ; $5673: $3e $82
    rst $18                                       ; $5675: $df
    ld l, $10                                     ; $5676: $2e $10
    rst $18                                       ; $5678: $df
    inc l                                         ; $5679: $2c
    db $10                                        ; $567a: $10
    pop af                                        ; $567b: $f1
    ldh [$96], a                                  ; $567c: $e0 $96
    ldh [rSVBK], a                                ; $567e: $e0 $70
    ret                                           ; $5680: $c9


    and c                                         ; $5681: $a1
    ld d, [hl]                                    ; $5682: $56
    sbc $56                                       ; $5683: $de $56
    nop                                           ; $5685: $00
    nop                                           ; $5686: $00
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    nop                                           ; $568a: $00
    nop                                           ; $568b: $00
    nop                                           ; $568c: $00
    nop                                           ; $568d: $00
    nop                                           ; $568e: $00
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    nop                                           ; $5697: $00
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    nop                                           ; $569a: $00
    nop                                           ; $569b: $00
    nop                                           ; $569c: $00
    nop                                           ; $569d: $00
    nop                                           ; $569e: $00
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    ldh a, [$96]                                  ; $56a1: $f0 $96
    push af                                       ; $56a3: $f5
    ld a, $06                                     ; $56a4: $3e $06
    ldh [$96], a                                  ; $56a6: $e0 $96
    ldh [rSVBK], a                                ; $56a8: $e0 $70
    rst $18                                       ; $56aa: $df
    ld a, [hl+]                                   ; $56ab: $2a
    db $10                                        ; $56ac: $10
    ld a, $03                                     ; $56ad: $3e $03
    ld de, $0a03                                  ; $56af: $11 $03 $0a
    ld hl, $1058                                  ; $56b2: $21 $58 $10
    rst $18                                       ; $56b5: $df
    ld c, d                                       ; $56b6: $4a
    dec b                                         ; $56b7: $05
    ld a, $03                                     ; $56b8: $3e $03
    ld de, $0a03                                  ; $56ba: $11 $03 $0a
    ld hl, $1059                                  ; $56bd: $21 $59 $10
    rst $18                                       ; $56c0: $df
    ld c, d                                       ; $56c1: $4a
    dec b                                         ; $56c2: $05
    push af                                       ; $56c3: $f5
    ld a, $3c                                     ; $56c4: $3e $3c
    rst $18                                       ; $56c6: $df
    inc b                                         ; $56c7: $04
    ld a, [bc]                                    ; $56c8: $0a
    pop af                                        ; $56c9: $f1
    ld a, $03                                     ; $56ca: $3e $03
    ld de, $0a03                                  ; $56cc: $11 $03 $0a
    ld hl, $105a                                  ; $56cf: $21 $5a $10
    rst $18                                       ; $56d2: $df
    ld c, d                                       ; $56d3: $4a
    dec b                                         ; $56d4: $05
    rst $18                                       ; $56d5: $df
    inc l                                         ; $56d6: $2c
    db $10                                        ; $56d7: $10
    pop af                                        ; $56d8: $f1
    ldh [$96], a                                  ; $56d9: $e0 $96
    ldh [rSVBK], a                                ; $56db: $e0 $70
    ret                                           ; $56dd: $c9


    rst $18                                       ; $56de: $df
    ld a, [hl+]                                   ; $56df: $2a
    db $10                                        ; $56e0: $10
    ld a, [$c834]                                 ; $56e1: $fa $34 $c8
    or a                                          ; $56e4: $b7
    jr nz, jr_031_56ee                            ; $56e5: $20 $07

    ld a, $08                                     ; $56e7: $3e $08
    ld [$c961], a                                 ; $56e9: $ea $61 $c9
    jr jr_031_5708                                ; $56ec: $18 $1a

jr_031_56ee:
    ldh a, [$96]                                  ; $56ee: $f0 $96
    push af                                       ; $56f0: $f5
    call Call_031_5800                            ; $56f1: $cd $00 $58
    ld [$c968], a                                 ; $56f4: $ea $68 $c9
    pop af                                        ; $56f7: $f1
    ldh [$96], a                                  ; $56f8: $e0 $96
    ldh [rSVBK], a                                ; $56fa: $e0 $70
    rst $28                                       ; $56fc: $ef
    ld h, b                                       ; $56fd: $60
    inc c                                         ; $56fe: $0c
    ld a, [$c8aa]                                 ; $56ff: $fa $aa $c8
    or a                                          ; $5702: $b7
    jr z, jr_031_5708                             ; $5703: $28 $03

    rst $20                                       ; $5705: $e7
    ld h, b                                       ; $5706: $60
    inc c                                         ; $5707: $0c

jr_031_5708:
    ld a, $82                                     ; $5708: $3e $82
    rst $18                                       ; $570a: $df
    ld l, $10                                     ; $570b: $2e $10
    rst $18                                       ; $570d: $df
    inc l                                         ; $570e: $2c
    db $10                                        ; $570f: $10
    ret                                           ; $5710: $c9


Call_031_5711:
    rst $18                                       ; $5711: $df
    nop                                           ; $5712: $00
    ld a, [bc]                                    ; $5713: $0a
    ldh a, [$95]                                  ; $5714: $f0 $95
    ld b, a                                       ; $5716: $47
    ld a, $03                                     ; $5717: $3e $03
    ld de, $7cbe                                  ; $5719: $11 $be $7c
    rst $18                                       ; $571c: $df
    jr @+$0c                                      ; $571d: $18 $0a

    ld a, [$c296]                                 ; $571f: $fa $96 $c2
    ld b, a                                       ; $5722: $47
    ld a, $03                                     ; $5723: $3e $03
    rst $18                                       ; $5725: $df
    ld l, $0a                                     ; $5726: $2e $0a
    ld c, $08                                     ; $5728: $0e $08
    call Call_000_25af                            ; $572a: $cd $af $25
    call Call_000_2625                            ; $572d: $cd $25 $26
    push af                                       ; $5730: $f5
    ld a, $1e                                     ; $5731: $3e $1e
    rst $18                                       ; $5733: $df
    inc b                                         ; $5734: $04
    ld a, [bc]                                    ; $5735: $0a
    pop af                                        ; $5736: $f1
    ld a, [$c968]                                 ; $5737: $fa $68 $c9
    or a                                          ; $573a: $b7
    jr nz, jr_031_5765                            ; $573b: $20 $28

    ld a, $03                                     ; $573d: $3e $03
    ld b, a                                       ; $573f: $47
    ld a, $07                                     ; $5740: $3e $07
    rst $18                                       ; $5742: $df
    ld [hl-], a                                   ; $5743: $32
    ld a, [bc]                                    ; $5744: $0a
    ld a, $03                                     ; $5745: $3e $03
    rst $18                                       ; $5747: $df
    inc [hl]                                      ; $5748: $34
    ld a, [bc]                                    ; $5749: $0a
    push af                                       ; $574a: $f5
    ld a, $1e                                     ; $574b: $3e $1e
    rst $18                                       ; $574d: $df
    inc b                                         ; $574e: $04
    ld a, [bc]                                    ; $574f: $0a
    pop af                                        ; $5750: $f1
    ld hl, $105d                                  ; $5751: $21 $5d $10
    rst $18                                       ; $5754: $df
    ld c, $0a                                     ; $5755: $0e $0a
    ld a, $03                                     ; $5757: $3e $03
    rst $18                                       ; $5759: $df
    ld [$e70a], sp                                ; $575a: $08 $0a $e7
    ld b, b                                       ; $575d: $40
    inc c                                         ; $575e: $0c
    rst $28                                       ; $575f: $ef
    and b                                         ; $5760: $a0
    inc c                                         ; $5761: $0c
    jp $57ea                                      ; $5762: $c3 $ea $57


jr_031_5765:
    cp $01                                        ; $5765: $fe $01
    jr nz, jr_031_577d                            ; $5767: $20 $14

    push af                                       ; $5769: $f5
    ld a, $1e                                     ; $576a: $3e $1e
    rst $18                                       ; $576c: $df
    inc b                                         ; $576d: $04
    ld a, [bc]                                    ; $576e: $0a
    pop af                                        ; $576f: $f1
    ld hl, $105c                                  ; $5770: $21 $5c $10
    rst $18                                       ; $5773: $df
    ld c, $0a                                     ; $5774: $0e $0a
    ld a, $03                                     ; $5776: $3e $03
    rst $18                                       ; $5778: $df
    ld [$180a], sp                                ; $5779: $08 $0a $18
    ld l, l                                       ; $577c: $6d

jr_031_577d:
    cp $02                                        ; $577d: $fe $02
    jr nz, jr_031_5795                            ; $577f: $20 $14

    push af                                       ; $5781: $f5
    ld a, $1e                                     ; $5782: $3e $1e
    rst $18                                       ; $5784: $df
    inc b                                         ; $5785: $04
    ld a, [bc]                                    ; $5786: $0a
    pop af                                        ; $5787: $f1
    ld hl, $105b                                  ; $5788: $21 $5b $10
    rst $18                                       ; $578b: $df
    ld c, $0a                                     ; $578c: $0e $0a
    ld a, $03                                     ; $578e: $3e $03
    rst $18                                       ; $5790: $df
    ld [$180a], sp                                ; $5791: $08 $0a $18
    ld d, l                                       ; $5794: $55

jr_031_5795:
    cp $03                                        ; $5795: $fe $03
    jr nz, jr_031_57ad                            ; $5797: $20 $14

    push af                                       ; $5799: $f5
    ld a, $1e                                     ; $579a: $3e $1e
    rst $18                                       ; $579c: $df
    inc b                                         ; $579d: $04
    ld a, [bc]                                    ; $579e: $0a
    pop af                                        ; $579f: $f1
    ld hl, $105f                                  ; $57a0: $21 $5f $10
    rst $18                                       ; $57a3: $df
    ld c, $0a                                     ; $57a4: $0e $0a
    ld a, $03                                     ; $57a6: $3e $03
    rst $18                                       ; $57a8: $df
    ld [$180a], sp                                ; $57a9: $08 $0a $18
    dec a                                         ; $57ac: $3d

jr_031_57ad:
    cp $04                                        ; $57ad: $fe $04
    jr nz, jr_031_57d8                            ; $57af: $20 $27

    ld a, $03                                     ; $57b1: $3e $03
    ld b, a                                       ; $57b3: $47
    ld a, $07                                     ; $57b4: $3e $07
    rst $18                                       ; $57b6: $df
    ld [hl-], a                                   ; $57b7: $32
    ld a, [bc]                                    ; $57b8: $0a
    ld a, $03                                     ; $57b9: $3e $03
    rst $18                                       ; $57bb: $df
    inc [hl]                                      ; $57bc: $34
    ld a, [bc]                                    ; $57bd: $0a
    push af                                       ; $57be: $f5
    ld a, $1e                                     ; $57bf: $3e $1e
    rst $18                                       ; $57c1: $df
    inc b                                         ; $57c2: $04
    ld a, [bc]                                    ; $57c3: $0a
    pop af                                        ; $57c4: $f1
    ld hl, $105e                                  ; $57c5: $21 $5e $10
    rst $18                                       ; $57c8: $df
    ld c, $0a                                     ; $57c9: $0e $0a
    ld a, $03                                     ; $57cb: $3e $03
    rst $18                                       ; $57cd: $df
    ld [$e70a], sp                                ; $57ce: $08 $0a $e7
    ld b, b                                       ; $57d1: $40
    inc c                                         ; $57d2: $0c
    rst $28                                       ; $57d3: $ef
    and b                                         ; $57d4: $a0
    inc c                                         ; $57d5: $0c
    jr @+$14                                      ; $57d6: $18 $12

jr_031_57d8:
    push af                                       ; $57d8: $f5
    ld a, $1e                                     ; $57d9: $3e $1e
    rst $18                                       ; $57db: $df
    inc b                                         ; $57dc: $04
    ld a, [bc]                                    ; $57dd: $0a
    pop af                                        ; $57de: $f1
    ld hl, $1060                                  ; $57df: $21 $60 $10
    rst $18                                       ; $57e2: $df
    ld c, $0a                                     ; $57e3: $0e $0a
    ld a, $03                                     ; $57e5: $3e $03
    rst $18                                       ; $57e7: $df
    ld [$f00a], sp                                ; $57e8: $08 $0a $f0
    sub l                                         ; $57eb: $95
    ld b, a                                       ; $57ec: $47
    ld a, $03                                     ; $57ed: $3e $03
    ld de, $7d2d                                  ; $57ef: $11 $2d $7d
    rst $18                                       ; $57f2: $df
    jr jr_031_57ff                                ; $57f3: $18 $0a

    ld a, $03                                     ; $57f5: $3e $03
    ld b, $00                                     ; $57f7: $06 $00
    rst $18                                       ; $57f9: $df
    inc l                                         ; $57fa: $2c
    ld a, [bc]                                    ; $57fb: $0a
    rst $18                                       ; $57fc: $df
    ld [bc], a                                    ; $57fd: $02
    ld a, [bc]                                    ; $57fe: $0a

jr_031_57ff:
    ret                                           ; $57ff: $c9


Call_031_5800:
    ld a, $06                                     ; $5800: $3e $06
    ldh [$96], a                                  ; $5802: $e0 $96
    ldh [rSVBK], a                                ; $5804: $e0 $70
    rst $18                                       ; $5806: $df
    inc [hl]                                      ; $5807: $34
    db $10                                        ; $5808: $10
    cp $00                                        ; $5809: $fe $00
    jr nz, jr_031_5849                            ; $580b: $20 $3c

    ld hl, $d680                                  ; $580d: $21 $80 $d6
    ld bc, $000c                                  ; $5810: $01 $0c $00
    add hl, bc                                    ; $5813: $09
    ld a, [hl]                                    ; $5814: $7e
    and $30                                       ; $5815: $e6 $30
    ld a, $03                                     ; $5817: $3e $03
    ret z                                         ; $5819: $c8

    ld hl, $d404                                  ; $581a: $21 $04 $d4
    ld a, [hl+]                                   ; $581d: $2a
    ld h, [hl]                                    ; $581e: $66
    ld l, a                                       ; $581f: $6f
    ld de, $2480                                  ; $5820: $11 $80 $24
    call Call_000_08ac                            ; $5823: $cd $ac $08
    bit 7, h                                      ; $5826: $cb $7c
    jr nz, jr_031_583d                            ; $5828: $20 $13

    ld a, $05                                     ; $582a: $3e $05
    ret                                           ; $582c: $c9


    ld hl, $d401                                  ; $582d: $21 $01 $d4
    ld a, [hl+]                                   ; $5830: $2a
    ld h, [hl]                                    ; $5831: $66
    ld l, a                                       ; $5832: $6f
    ld de, $1c80                                  ; $5833: $11 $80 $1c
    call Call_000_08ac                            ; $5836: $cd $ac $08
    bit 7, h                                      ; $5839: $cb $7c
    jr nz, jr_031_5849                            ; $583b: $20 $0c

jr_031_583d:
    ld a, [$d48e]                                 ; $583d: $fa $8e $d4
    bit 4, a                                      ; $5840: $cb $67
    jr z, jr_031_5847                             ; $5842: $28 $03

    ld a, $04                                     ; $5844: $3e $04
    ret                                           ; $5846: $c9


jr_031_5847:
    xor a                                         ; $5847: $af
    ret                                           ; $5848: $c9


jr_031_5849:
    ld a, $02                                     ; $5849: $3e $02
    ret                                           ; $584b: $c9


Call_031_584c:
    ld hl, $0d11                                  ; $584c: $21 $11 $0d
    rst $18                                       ; $584f: $df
    ld c, $0a                                     ; $5850: $0e $0a
    call Call_031_5882                            ; $5852: $cd $82 $58
    ret                                           ; $5855: $c9


Call_031_5856:
    rst $18                                       ; $5856: $df
    nop                                           ; $5857: $00
    ld a, [bc]                                    ; $5858: $0a
    ldh a, [$95]                                  ; $5859: $f0 $95
    ld b, a                                       ; $585b: $47
    ld a, $03                                     ; $585c: $3e $03
    ld de, $7cbe                                  ; $585e: $11 $be $7c
    rst $18                                       ; $5861: $df
    jr @+$0c                                      ; $5862: $18 $0a

    ld a, [$c296]                                 ; $5864: $fa $96 $c2
    ld b, a                                       ; $5867: $47
    ld a, $03                                     ; $5868: $3e $03
    rst $18                                       ; $586a: $df
    ld l, $0a                                     ; $586b: $2e $0a
    ld c, $08                                     ; $586d: $0e $08
    call Call_000_25af                            ; $586f: $cd $af $25
    call Call_000_2625                            ; $5872: $cd $25 $26
    ld hl, $1056                                  ; $5875: $21 $56 $10
    rst $18                                       ; $5878: $df
    ld c, $0a                                     ; $5879: $0e $0a
    call Call_031_5882                            ; $587b: $cd $82 $58
    rst $18                                       ; $587e: $df
    ld [bc], a                                    ; $587f: $02
    ld a, [bc]                                    ; $5880: $0a
    ret                                           ; $5881: $c9


Call_031_5882:
    ld a, $03                                     ; $5882: $3e $03
    rst $18                                       ; $5884: $df
    ld a, [bc]                                    ; $5885: $0a
    ld a, [bc]                                    ; $5886: $0a
    rst $18                                       ; $5887: $df
    ld [de], a                                    ; $5888: $12
    ld a, [bc]                                    ; $5889: $0a
    rst $18                                       ; $588a: $df
    inc c                                         ; $588b: $0c
    ld a, [bc]                                    ; $588c: $0a
    push af                                       ; $588d: $f5
    ld a, $05                                     ; $588e: $3e $05
    rst $18                                       ; $5890: $df
    inc b                                         ; $5891: $04
    ld a, [bc]                                    ; $5892: $0a
    pop af                                        ; $5893: $f1
    and a                                         ; $5894: $a7
    jr z, jr_031_58b6                             ; $5895: $28 $1f

    ld hl, $1057                                  ; $5897: $21 $57 $10
    rst $18                                       ; $589a: $df
    ld c, $0a                                     ; $589b: $0e $0a
    ld a, $03                                     ; $589d: $3e $03
    rst $18                                       ; $589f: $df
    ld [$f00a], sp                                ; $58a0: $08 $0a $f0
    sub l                                         ; $58a3: $95
    ld b, a                                       ; $58a4: $47
    ld a, $03                                     ; $58a5: $3e $03
    ld de, $7d24                                  ; $58a7: $11 $24 $7d
    rst $18                                       ; $58aa: $df
    jr jr_031_58b7                                ; $58ab: $18 $0a

    ld a, $03                                     ; $58ad: $3e $03
    ld b, $00                                     ; $58af: $06 $00
    rst $18                                       ; $58b1: $df
    inc l                                         ; $58b2: $2c
    ld a, [bc]                                    ; $58b3: $0a
    jr jr_031_5912                                ; $58b4: $18 $5c

jr_031_58b6:
    rst $20                                       ; $58b6: $e7

jr_031_58b7:
    and b                                         ; $58b7: $a0
    inc c                                         ; $58b8: $0c
    rst $18                                       ; $58b9: $df
    inc e                                         ; $58ba: $1c
    db $10                                        ; $58bb: $10
    rst $30                                       ; $58bc: $f7
    ret nz                                        ; $58bd: $c0

    inc d                                         ; $58be: $14
    jr nz, jr_031_58c6                            ; $58bf: $20 $05

    ld a, $0a                                     ; $58c1: $3e $0a
    ld [$c82c], a                                 ; $58c3: $ea $2c $c8

jr_031_58c6:
    ld a, $0f                                     ; $58c6: $3e $0f
    ld b, a                                       ; $58c8: $47
    ld a, $06                                     ; $58c9: $3e $06
    ld c, a                                       ; $58cb: $4f
    rst $18                                       ; $58cc: $df
    ld c, [hl]                                    ; $58cd: $4e
    ld a, [bc]                                    ; $58ce: $0a
    ld a, $06                                     ; $58cf: $3e $06
    ld [$c834], a                                 ; $58d1: $ea $34 $c8
    ld bc, $8000                                  ; $58d4: $01 $00 $80
    rst $18                                       ; $58d7: $df
    ld e, $02                                     ; $58d8: $1e $02
    ld bc, $ff01                                  ; $58da: $01 $01 $ff
    rst $18                                       ; $58dd: $df
    ld e, $02                                     ; $58de: $1e $02
    ld hl, $070a                                  ; $58e0: $21 $0a $07
    rst $18                                       ; $58e3: $df
    db $10                                        ; $58e4: $10
    db $10                                        ; $58e5: $10
    ld a, $00                                     ; $58e6: $3e $00
    rst $18                                       ; $58e8: $df
    ld e, $10                                     ; $58e9: $1e $10
    ld hl, $2000                                  ; $58eb: $21 $00 $20
    ld de, $3a80                                  ; $58ee: $11 $80 $3a
    rst $18                                       ; $58f1: $df
    jr nz, jr_031_5904                            ; $58f2: $20 $10

    ld e, $00                                     ; $58f4: $1e $00
    ld bc, $c000                                  ; $58f6: $01 $00 $c0
    rst $18                                       ; $58f9: $df
    ld h, $10                                     ; $58fa: $26 $10
    ld de, $c000                                  ; $58fc: $11 $00 $c0
    rst $18                                       ; $58ff: $df
    ld [hl+], a                                   ; $5900: $22
    db $10                                        ; $5901: $10
    ldh a, [$95]                                  ; $5902: $f0 $95

jr_031_5904:
    ld hl, $5681                                  ; $5904: $21 $81 $56
    rst $18                                       ; $5907: $df
    ld a, [de]                                    ; $5908: $1a
    db $10                                        ; $5909: $10
    ld a, $01                                     ; $590a: $3e $01
    rst $18                                       ; $590c: $df
    ld [de], a                                    ; $590d: $12
    db $10                                        ; $590e: $10
    rst $18                                       ; $590f: $df
    jr nc, jr_031_5922                            ; $5910: $30 $10

jr_031_5912:
    ret                                           ; $5912: $c9


    nop                                           ; $5913: $00
    ret nz                                        ; $5914: $c0

    rla                                           ; $5915: $17
    nop                                           ; $5916: $00
    ld b, b                                       ; $5917: $40
    ld a, [hl-]                                   ; $5918: $3a
    ld c, h                                       ; $5919: $4c
    cp a                                          ; $591a: $bf
    inc bc                                        ; $591b: $03
    nop                                           ; $591c: $00
    ld a, [hl-]                                   ; $591d: $3a
    nop                                           ; $591e: $00
    ld bc, $0000                                  ; $591f: $01 $00 $00

jr_031_5922:
    nop                                           ; $5922: $00
    ld b, e                                       ; $5923: $43
    ld e, c                                       ; $5924: $59
    adc e                                         ; $5925: $8b
    ld e, c                                       ; $5926: $59
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    nop                                           ; $592b: $00
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    nop                                           ; $592e: $00
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    nop                                           ; $593b: $00
    nop                                           ; $593c: $00
    nop                                           ; $593d: $00
    nop                                           ; $593e: $00
    nop                                           ; $593f: $00
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    ldh a, [$96]                                  ; $5943: $f0 $96
    push af                                       ; $5945: $f5
    ld a, $06                                     ; $5946: $3e $06
    ldh [$96], a                                  ; $5948: $e0 $96
    ldh [rSVBK], a                                ; $594a: $e0 $70
    rst $18                                       ; $594c: $df
    ld a, [hl+]                                   ; $594d: $2a
    db $10                                        ; $594e: $10
    ld a, $04                                     ; $594f: $3e $04
    ld de, $0a03                                  ; $5951: $11 $03 $0a
    ld hl, $1064                                  ; $5954: $21 $64 $10
    rst $18                                       ; $5957: $df
    ld c, d                                       ; $5958: $4a
    dec b                                         ; $5959: $05
    ld a, $04                                     ; $595a: $3e $04
    ld de, $0a03                                  ; $595c: $11 $03 $0a
    ld hl, $1065                                  ; $595f: $21 $65 $10
    rst $18                                       ; $5962: $df
    ld c, d                                       ; $5963: $4a
    dec b                                         ; $5964: $05
    ld a, $04                                     ; $5965: $3e $04
    ld de, $0a03                                  ; $5967: $11 $03 $0a
    ld hl, $1066                                  ; $596a: $21 $66 $10
    rst $18                                       ; $596d: $df
    ld c, d                                       ; $596e: $4a
    dec b                                         ; $596f: $05
    push af                                       ; $5970: $f5
    ld a, $3c                                     ; $5971: $3e $3c
    rst $18                                       ; $5973: $df
    inc b                                         ; $5974: $04
    ld a, [bc]                                    ; $5975: $0a
    pop af                                        ; $5976: $f1
    ld a, $04                                     ; $5977: $3e $04
    ld de, $0a03                                  ; $5979: $11 $03 $0a
    ld hl, $1067                                  ; $597c: $21 $67 $10
    rst $18                                       ; $597f: $df
    ld c, d                                       ; $5980: $4a
    dec b                                         ; $5981: $05
    rst $18                                       ; $5982: $df
    inc l                                         ; $5983: $2c
    db $10                                        ; $5984: $10
    pop af                                        ; $5985: $f1
    ldh [$96], a                                  ; $5986: $e0 $96
    ldh [rSVBK], a                                ; $5988: $e0 $70
    ret                                           ; $598a: $c9


    ldh a, [$96]                                  ; $598b: $f0 $96
    push af                                       ; $598d: $f5
    rst $18                                       ; $598e: $df
    ld a, [hl+]                                   ; $598f: $2a
    db $10                                        ; $5990: $10
    ld a, $82                                     ; $5991: $3e $82
    rst $18                                       ; $5993: $df
    ld l, $10                                     ; $5994: $2e $10
    rst $18                                       ; $5996: $df
    inc l                                         ; $5997: $2c
    db $10                                        ; $5998: $10
    pop af                                        ; $5999: $f1
    ldh [$96], a                                  ; $599a: $e0 $96
    ldh [rSVBK], a                                ; $599c: $e0 $70
    ret                                           ; $599e: $c9


    cp a                                          ; $599f: $bf
    ld e, c                                       ; $59a0: $59
    db $fc                                        ; $59a1: $fc
    ld e, c                                       ; $59a2: $59
    nop                                           ; $59a3: $00
    nop                                           ; $59a4: $00
    nop                                           ; $59a5: $00
    nop                                           ; $59a6: $00
    nop                                           ; $59a7: $00
    nop                                           ; $59a8: $00
    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    nop                                           ; $59ab: $00
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
    ldh a, [$96]                                  ; $59bf: $f0 $96
    push af                                       ; $59c1: $f5
    ld a, $06                                     ; $59c2: $3e $06
    ldh [$96], a                                  ; $59c4: $e0 $96
    ldh [rSVBK], a                                ; $59c6: $e0 $70
    rst $18                                       ; $59c8: $df
    ld a, [hl+]                                   ; $59c9: $2a
    db $10                                        ; $59ca: $10
    ld a, $04                                     ; $59cb: $3e $04
    ld de, $0a03                                  ; $59cd: $11 $03 $0a
    ld hl, $106a                                  ; $59d0: $21 $6a $10
    rst $18                                       ; $59d3: $df
    ld c, d                                       ; $59d4: $4a
    dec b                                         ; $59d5: $05
    ld a, $04                                     ; $59d6: $3e $04
    ld de, $0a03                                  ; $59d8: $11 $03 $0a
    ld hl, $106b                                  ; $59db: $21 $6b $10
    rst $18                                       ; $59de: $df
    ld c, d                                       ; $59df: $4a
    dec b                                         ; $59e0: $05
    push af                                       ; $59e1: $f5
    ld a, $3c                                     ; $59e2: $3e $3c
    rst $18                                       ; $59e4: $df
    inc b                                         ; $59e5: $04
    ld a, [bc]                                    ; $59e6: $0a
    pop af                                        ; $59e7: $f1
    ld a, $04                                     ; $59e8: $3e $04
    ld de, $0a03                                  ; $59ea: $11 $03 $0a
    ld hl, $106c                                  ; $59ed: $21 $6c $10
    rst $18                                       ; $59f0: $df
    ld c, d                                       ; $59f1: $4a
    dec b                                         ; $59f2: $05
    rst $18                                       ; $59f3: $df
    inc l                                         ; $59f4: $2c
    db $10                                        ; $59f5: $10
    pop af                                        ; $59f6: $f1
    ldh [$96], a                                  ; $59f7: $e0 $96
    ldh [rSVBK], a                                ; $59f9: $e0 $70
    ret                                           ; $59fb: $c9


    rst $18                                       ; $59fc: $df
    ld a, [hl+]                                   ; $59fd: $2a
    db $10                                        ; $59fe: $10
    ld a, [$c834]                                 ; $59ff: $fa $34 $c8
    or a                                          ; $5a02: $b7
    jr nz, jr_031_5a0c                            ; $5a03: $20 $07

    ld a, $09                                     ; $5a05: $3e $09
    ld [$c961], a                                 ; $5a07: $ea $61 $c9
    jr jr_031_5a1e                                ; $5a0a: $18 $12

jr_031_5a0c:
    call Call_031_5aba                            ; $5a0c: $cd $ba $5a
    ld [$c968], a                                 ; $5a0f: $ea $68 $c9
    rst $28                                       ; $5a12: $ef
    ld h, b                                       ; $5a13: $60
    inc c                                         ; $5a14: $0c
    ld a, [$c8aa]                                 ; $5a15: $fa $aa $c8
    or a                                          ; $5a18: $b7
    jr z, jr_031_5a1e                             ; $5a19: $28 $03

    rst $20                                       ; $5a1b: $e7
    ld h, b                                       ; $5a1c: $60
    inc c                                         ; $5a1d: $0c

jr_031_5a1e:
    ld a, $82                                     ; $5a1e: $3e $82
    rst $18                                       ; $5a20: $df
    ld l, $10                                     ; $5a21: $2e $10
    rst $18                                       ; $5a23: $df
    inc l                                         ; $5a24: $2c
    db $10                                        ; $5a25: $10
    ret                                           ; $5a26: $c9


Call_031_5a27:
    rst $18                                       ; $5a27: $df
    nop                                           ; $5a28: $00
    ld a, [bc]                                    ; $5a29: $0a
    ldh a, [$95]                                  ; $5a2a: $f0 $95
    ld b, a                                       ; $5a2c: $47
    ld a, $04                                     ; $5a2d: $3e $04
    ld de, $7cbe                                  ; $5a2f: $11 $be $7c
    rst $18                                       ; $5a32: $df
    jr @+$0c                                      ; $5a33: $18 $0a

    ld a, [$c296]                                 ; $5a35: $fa $96 $c2
    ld b, a                                       ; $5a38: $47
    ld a, $04                                     ; $5a39: $3e $04
    rst $18                                       ; $5a3b: $df
    ld l, $0a                                     ; $5a3c: $2e $0a
    ld c, $08                                     ; $5a3e: $0e $08
    call Call_000_25af                            ; $5a40: $cd $af $25
    call Call_000_2625                            ; $5a43: $cd $25 $26
    push af                                       ; $5a46: $f5
    ld a, $1e                                     ; $5a47: $3e $1e
    rst $18                                       ; $5a49: $df
    inc b                                         ; $5a4a: $04
    ld a, [bc]                                    ; $5a4b: $0a
    pop af                                        ; $5a4c: $f1
    ld a, [$c968]                                 ; $5a4d: $fa $68 $c9
    or a                                          ; $5a50: $b7
    jr nz, jr_031_5a7a                            ; $5a51: $20 $27

    ld a, $04                                     ; $5a53: $3e $04
    ld b, a                                       ; $5a55: $47
    ld a, $07                                     ; $5a56: $3e $07
    rst $18                                       ; $5a58: $df
    ld [hl-], a                                   ; $5a59: $32
    ld a, [bc]                                    ; $5a5a: $0a
    ld a, $04                                     ; $5a5b: $3e $04
    rst $18                                       ; $5a5d: $df
    inc [hl]                                      ; $5a5e: $34
    ld a, [bc]                                    ; $5a5f: $0a
    push af                                       ; $5a60: $f5
    ld a, $1e                                     ; $5a61: $3e $1e
    rst $18                                       ; $5a63: $df
    inc b                                         ; $5a64: $04
    ld a, [bc]                                    ; $5a65: $0a
    pop af                                        ; $5a66: $f1
    ld hl, $106f                                  ; $5a67: $21 $6f $10
    rst $18                                       ; $5a6a: $df
    ld c, $0a                                     ; $5a6b: $0e $0a
    ld a, $04                                     ; $5a6d: $3e $04
    rst $18                                       ; $5a6f: $df
    ld [$e70a], sp                                ; $5a70: $08 $0a $e7
    ld b, b                                       ; $5a73: $40
    inc c                                         ; $5a74: $0c
    rst $28                                       ; $5a75: $ef
    ret nz                                        ; $5a76: $c0

    inc c                                         ; $5a77: $0c
    jr @+$2c                                      ; $5a78: $18 $2a

jr_031_5a7a:
    cp $01                                        ; $5a7a: $fe $01
    jr nz, jr_031_5a92                            ; $5a7c: $20 $14

    push af                                       ; $5a7e: $f5
    ld a, $1e                                     ; $5a7f: $3e $1e
    rst $18                                       ; $5a81: $df
    inc b                                         ; $5a82: $04
    ld a, [bc]                                    ; $5a83: $0a
    pop af                                        ; $5a84: $f1
    ld hl, $106e                                  ; $5a85: $21 $6e $10
    rst $18                                       ; $5a88: $df
    ld c, $0a                                     ; $5a89: $0e $0a
    ld a, $04                                     ; $5a8b: $3e $04
    rst $18                                       ; $5a8d: $df
    ld [$180a], sp                                ; $5a8e: $08 $0a $18
    ld [de], a                                    ; $5a91: $12

jr_031_5a92:
    push af                                       ; $5a92: $f5
    ld a, $1e                                     ; $5a93: $3e $1e
    rst $18                                       ; $5a95: $df
    inc b                                         ; $5a96: $04
    ld a, [bc]                                    ; $5a97: $0a
    pop af                                        ; $5a98: $f1
    ld hl, $106d                                  ; $5a99: $21 $6d $10
    rst $18                                       ; $5a9c: $df
    ld c, $0a                                     ; $5a9d: $0e $0a
    ld a, $04                                     ; $5a9f: $3e $04
    rst $18                                       ; $5aa1: $df
    ld [$f00a], sp                                ; $5aa2: $08 $0a $f0
    sub l                                         ; $5aa5: $95
    ld b, a                                       ; $5aa6: $47
    ld a, $04                                     ; $5aa7: $3e $04
    ld de, $7d2d                                  ; $5aa9: $11 $2d $7d
    rst $18                                       ; $5aac: $df
    jr jr_031_5ab9                                ; $5aad: $18 $0a

    ld a, $04                                     ; $5aaf: $3e $04
    ld b, $00                                     ; $5ab1: $06 $00
    rst $18                                       ; $5ab3: $df
    inc l                                         ; $5ab4: $2c
    ld a, [bc]                                    ; $5ab5: $0a
    rst $18                                       ; $5ab6: $df
    ld [bc], a                                    ; $5ab7: $02
    ld a, [bc]                                    ; $5ab8: $0a

jr_031_5ab9:
    ret                                           ; $5ab9: $c9


Call_031_5aba:
    ld a, $06                                     ; $5aba: $3e $06
    ldh [$96], a                                  ; $5abc: $e0 $96
    ldh [rSVBK], a                                ; $5abe: $e0 $70
    ld hl, $00a0                                  ; $5ac0: $21 $a0 $00
    call Call_031_7d53                            ; $5ac3: $cd $53 $7d
    or a                                          ; $5ac6: $b7
    jr nz, jr_031_5acc                            ; $5ac7: $20 $03

    xor a                                         ; $5ac9: $af
    jr jr_031_5ad9                                ; $5aca: $18 $0d

jr_031_5acc:
    rst $18                                       ; $5acc: $df
    inc [hl]                                      ; $5acd: $34
    db $10                                        ; $5ace: $10
    cp $06                                        ; $5acf: $fe $06
    jr nz, jr_031_5ad7                            ; $5ad1: $20 $04

    ld a, $01                                     ; $5ad3: $3e $01
    jr jr_031_5ad9                                ; $5ad5: $18 $02

jr_031_5ad7:
    ld a, $02                                     ; $5ad7: $3e $02

jr_031_5ad9:
    ret                                           ; $5ad9: $c9


Call_031_5ada:
    ld hl, $0d12                                  ; $5ada: $21 $12 $0d
    rst $18                                       ; $5add: $df
    ld c, $0a                                     ; $5ade: $0e $0a
    call Call_031_5b10                            ; $5ae0: $cd $10 $5b
    ret                                           ; $5ae3: $c9


Call_031_5ae4:
    rst $18                                       ; $5ae4: $df
    nop                                           ; $5ae5: $00
    ld a, [bc]                                    ; $5ae6: $0a
    ldh a, [$95]                                  ; $5ae7: $f0 $95
    ld b, a                                       ; $5ae9: $47
    ld a, $04                                     ; $5aea: $3e $04
    ld de, $7cbe                                  ; $5aec: $11 $be $7c
    rst $18                                       ; $5aef: $df
    jr @+$0c                                      ; $5af0: $18 $0a

    ld a, [$c296]                                 ; $5af2: $fa $96 $c2
    ld b, a                                       ; $5af5: $47
    ld a, $04                                     ; $5af6: $3e $04
    rst $18                                       ; $5af8: $df
    ld l, $0a                                     ; $5af9: $2e $0a
    ld c, $08                                     ; $5afb: $0e $08
    call Call_000_25af                            ; $5afd: $cd $af $25
    call Call_000_2625                            ; $5b00: $cd $25 $26
    ld hl, $1068                                  ; $5b03: $21 $68 $10
    rst $18                                       ; $5b06: $df
    ld c, $0a                                     ; $5b07: $0e $0a
    call Call_031_5b10                            ; $5b09: $cd $10 $5b
    rst $18                                       ; $5b0c: $df
    ld [bc], a                                    ; $5b0d: $02
    ld a, [bc]                                    ; $5b0e: $0a
    ret                                           ; $5b0f: $c9


Call_031_5b10:
    ld a, $04                                     ; $5b10: $3e $04
    rst $18                                       ; $5b12: $df
    ld a, [bc]                                    ; $5b13: $0a
    ld a, [bc]                                    ; $5b14: $0a
    rst $18                                       ; $5b15: $df
    ld [de], a                                    ; $5b16: $12
    ld a, [bc]                                    ; $5b17: $0a
    rst $18                                       ; $5b18: $df
    inc c                                         ; $5b19: $0c
    ld a, [bc]                                    ; $5b1a: $0a
    push af                                       ; $5b1b: $f5
    ld a, $05                                     ; $5b1c: $3e $05
    rst $18                                       ; $5b1e: $df
    inc b                                         ; $5b1f: $04
    ld a, [bc]                                    ; $5b20: $0a
    pop af                                        ; $5b21: $f1
    and a                                         ; $5b22: $a7
    jr z, jr_031_5b44                             ; $5b23: $28 $1f

    ld hl, $1069                                  ; $5b25: $21 $69 $10
    rst $18                                       ; $5b28: $df
    ld c, $0a                                     ; $5b29: $0e $0a
    ld a, $04                                     ; $5b2b: $3e $04
    rst $18                                       ; $5b2d: $df
    ld [$f00a], sp                                ; $5b2e: $08 $0a $f0
    sub l                                         ; $5b31: $95
    ld b, a                                       ; $5b32: $47
    ld a, $04                                     ; $5b33: $3e $04
    ld de, $7d2d                                  ; $5b35: $11 $2d $7d
    rst $18                                       ; $5b38: $df
    jr jr_031_5b45                                ; $5b39: $18 $0a

    ld a, $04                                     ; $5b3b: $3e $04
    ld b, $00                                     ; $5b3d: $06 $00
    rst $18                                       ; $5b3f: $df
    inc l                                         ; $5b40: $2c
    ld a, [bc]                                    ; $5b41: $0a
    jr jr_031_5ba0                                ; $5b42: $18 $5c

jr_031_5b44:
    rst $20                                       ; $5b44: $e7

jr_031_5b45:
    ret nz                                        ; $5b45: $c0

    inc c                                         ; $5b46: $0c
    rst $18                                       ; $5b47: $df
    inc e                                         ; $5b48: $1c
    db $10                                        ; $5b49: $10
    rst $30                                       ; $5b4a: $f7
    ldh [rNR14], a                                ; $5b4b: $e0 $14
    jr nz, jr_031_5b54                            ; $5b4d: $20 $05

    ld a, $0a                                     ; $5b4f: $3e $0a
    ld [$c82c], a                                 ; $5b51: $ea $2c $c8

jr_031_5b54:
    ld a, $0f                                     ; $5b54: $3e $0f
    ld b, a                                       ; $5b56: $47
    ld a, $07                                     ; $5b57: $3e $07
    ld c, a                                       ; $5b59: $4f
    rst $18                                       ; $5b5a: $df
    ld c, [hl]                                    ; $5b5b: $4e
    ld a, [bc]                                    ; $5b5c: $0a
    ld a, $06                                     ; $5b5d: $3e $06
    ld [$c834], a                                 ; $5b5f: $ea $34 $c8
    ld bc, $8000                                  ; $5b62: $01 $00 $80
    rst $18                                       ; $5b65: $df
    ld e, $02                                     ; $5b66: $1e $02
    ld bc, $ff01                                  ; $5b68: $01 $01 $ff
    rst $18                                       ; $5b6b: $df
    ld e, $02                                     ; $5b6c: $1e $02
    ld hl, $070a                                  ; $5b6e: $21 $0a $07
    rst $18                                       ; $5b71: $df
    db $10                                        ; $5b72: $10
    db $10                                        ; $5b73: $10
    ld a, $00                                     ; $5b74: $3e $00
    rst $18                                       ; $5b76: $df
    ld e, $10                                     ; $5b77: $1e $10
    ld hl, $17c0                                  ; $5b79: $21 $c0 $17
    ld de, $3a40                                  ; $5b7c: $11 $40 $3a
    rst $18                                       ; $5b7f: $df
    jr nz, jr_031_5b92                            ; $5b80: $20 $10

    ld e, $03                                     ; $5b82: $1e $03
    ld bc, $bf4c                                  ; $5b84: $01 $4c $bf
    rst $18                                       ; $5b87: $df
    ld h, $10                                     ; $5b88: $26 $10
    ld de, $4005                                  ; $5b8a: $11 $05 $40
    rst $18                                       ; $5b8d: $df
    ld [hl+], a                                   ; $5b8e: $22
    db $10                                        ; $5b8f: $10
    ldh a, [$95]                                  ; $5b90: $f0 $95

jr_031_5b92:
    ld hl, $599f                                  ; $5b92: $21 $9f $59
    rst $18                                       ; $5b95: $df
    ld a, [de]                                    ; $5b96: $1a
    db $10                                        ; $5b97: $10
    ld a, $01                                     ; $5b98: $3e $01
    rst $18                                       ; $5b9a: $df
    ld [de], a                                    ; $5b9b: $12
    db $10                                        ; $5b9c: $10
    rst $18                                       ; $5b9d: $df
    jr nc, jr_031_5bb0                            ; $5b9e: $30 $10

jr_031_5ba0:
    ret                                           ; $5ba0: $c9


jr_031_5ba1:
    pop bc                                        ; $5ba1: $c1
    ld e, e                                       ; $5ba2: $5b
    jp nz, Jump_000_005b                          ; $5ba3: $c2 $5b $00

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

jr_031_5bb0:
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
    nop                                           ; $5bc0: $00
    ret                                           ; $5bc1: $c9


    rst $18                                       ; $5bc2: $df
    ld a, [hl+]                                   ; $5bc3: $2a
    db $10                                        ; $5bc4: $10

jr_031_5bc5:
    ld a, $82                                     ; $5bc5: $3e $82
    rst $18                                       ; $5bc7: $df
    ld l, $10                                     ; $5bc8: $2e $10
    rst $18                                       ; $5bca: $df
    inc l                                         ; $5bcb: $2c
    db $10                                        ; $5bcc: $10
    ret                                           ; $5bcd: $c9


    ld hl, $585c                                  ; $5bce: $21 $5c $58
    ld e, h                                       ; $5bd1: $5c
    call c, $995b                                 ; $5bd2: $dc $5b $99
    ld e, h                                       ; $5bd5: $5c
    ld d, c                                       ; $5bd6: $51
    ld e, [hl]                                    ; $5bd7: $5e
    ld e, d                                       ; $5bd8: $5a
    ld e, [hl]                                    ; $5bd9: $5e
    ld h, e                                       ; $5bda: $63
    ld e, [hl]                                    ; $5bdb: $5e
    add hl, de                                    ; $5bdc: $19
    ld a, l                                       ; $5bdd: $7d
    nop                                           ; $5bde: $00
    jr jr_031_5ba1                                ; $5bdf: $18 $c0

    add hl, sp                                    ; $5be1: $39
    nop                                           ; $5be2: $00
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    nop                                           ; $5be5: $00
    ld bc, $2416                                  ; $5be6: $01 $16 $24
    ld a, l                                       ; $5be9: $7d
    nop                                           ; $5bea: $00
    inc h                                         ; $5beb: $24
    ret nz                                        ; $5bec: $c0

    add hl, sp                                    ; $5bed: $39
    nop                                           ; $5bee: $00
    nop                                           ; $5bef: $00
    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    ld bc, $2d16                                  ; $5bf2: $01 $16 $2d
    ld a, l                                       ; $5bf5: $7d
    nop                                           ; $5bf6: $00
    rrca                                          ; $5bf7: $0f
    nop                                           ; $5bf8: $00
    dec l                                         ; $5bf9: $2d
    nop                                           ; $5bfa: $00
    nop                                           ; $5bfb: $00
    nop                                           ; $5bfc: $00
    nop                                           ; $5bfd: $00
    ld bc, $360d                                  ; $5bfe: $01 $0d $36
    ld a, l                                       ; $5c01: $7d
    nop                                           ; $5c02: $00
    jr nz, jr_031_5bc5                            ; $5c03: $20 $c0

    add hl, sp                                    ; $5c05: $39
    nop                                           ; $5c06: $00
    nop                                           ; $5c07: $00
    nop                                           ; $5c08: $00
    nop                                           ; $5c09: $00
    ld bc, $be0a                                  ; $5c0a: $01 $0a $be
    ld a, h                                       ; $5c0d: $7c
    nop                                           ; $5c0e: $00
    inc d                                         ; $5c0f: $14
    ret nz                                        ; $5c10: $c0

    add hl, sp                                    ; $5c11: $39
    nop                                           ; $5c12: $00
    nop                                           ; $5c13: $00
    nop                                           ; $5c14: $00
    nop                                           ; $5c15: $00
    ld bc, $000e                                  ; $5c16: $01 $0e $00
    nop                                           ; $5c19: $00
    nop                                           ; $5c1a: $00
    nop                                           ; $5c1b: $00
    nop                                           ; $5c1c: $00
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    rst $38                                       ; $5c20: $ff
    ld bc, $00c0                                  ; $5c21: $01 $c0 $00
    jr jr_031_5c26                                ; $5c24: $18 $00

jr_031_5c26:
    dec a                                         ; $5c26: $3d
    ld [bc], a                                    ; $5c27: $02
    ld b, b                                       ; $5c28: $40
    nop                                           ; $5c29: $00
    jr jr_031_5c2c                                ; $5c2a: $18 $00

jr_031_5c2c:
    dec a                                         ; $5c2c: $3d
    inc b                                         ; $5c2d: $04
    nop                                           ; $5c2e: $00
    nop                                           ; $5c2f: $00
    ld [hl+], a                                   ; $5c30: $22
    nop                                           ; $5c31: $00
    ld a, [hl-]                                   ; $5c32: $3a
    dec b                                         ; $5c33: $05
    nop                                           ; $5c34: $00
    nop                                           ; $5c35: $00
    dec c                                         ; $5c36: $0d
    nop                                           ; $5c37: $00
    dec l                                         ; $5c38: $2d
    ld b, $00                                     ; $5c39: $06 $00
    nop                                           ; $5c3b: $00
    ld [hl+], a                                   ; $5c3c: $22
    nop                                           ; $5c3d: $00
    ld a, [hl-]                                   ; $5c3e: $3a
    rlca                                          ; $5c3f: $07
    nop                                           ; $5c40: $00
    nop                                           ; $5c41: $00
    dec c                                         ; $5c42: $0d
    nop                                           ; $5c43: $00
    dec l                                         ; $5c44: $2d
    ld [$0000], sp                                ; $5c45: $08 $00 $00
    ld [hl+], a                                   ; $5c48: $22
    nop                                           ; $5c49: $00
    ld a, [hl-]                                   ; $5c4a: $3a
    add hl, bc                                    ; $5c4b: $09
    nop                                           ; $5c4c: $00
    nop                                           ; $5c4d: $00
    dec c                                         ; $5c4e: $0d
    nop                                           ; $5c4f: $00
    dec l                                         ; $5c50: $2d
    ld h, e                                       ; $5c51: $63
    ld b, b                                       ; $5c52: $40
    nop                                           ; $5c53: $00
    dec de                                        ; $5c54: $1b
    nop                                           ; $5c55: $00
    add hl, hl                                    ; $5c56: $29
    rst $38                                       ; $5c57: $ff
    ld bc, $00ff                                  ; $5c58: $01 $ff $00
    nop                                           ; $5c5b: $00
    nop                                           ; $5c5c: $00
    nop                                           ; $5c5d: $00
    ld a, [bc]                                    ; $5c5e: $0a
    inc bc                                        ; $5c5f: $03
    ld [bc], a                                    ; $5c60: $02
    rst $38                                       ; $5c61: $ff
    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    nop                                           ; $5c64: $00
    nop                                           ; $5c65: $00
    ld [de], a                                    ; $5c66: $12
    ld [bc], a                                    ; $5c67: $02
    inc b                                         ; $5c68: $04
    rst $38                                       ; $5c69: $ff
    nop                                           ; $5c6a: $00
    nop                                           ; $5c6b: $00
    nop                                           ; $5c6c: $00
    nop                                           ; $5c6d: $00
    ld [de], a                                    ; $5c6e: $12
    inc b                                         ; $5c6f: $04
    dec b                                         ; $5c70: $05
    rst $38                                       ; $5c71: $ff
    nop                                           ; $5c72: $00
    nop                                           ; $5c73: $00
    nop                                           ; $5c74: $00
    nop                                           ; $5c75: $00
    ld [de], a                                    ; $5c76: $12
    dec b                                         ; $5c77: $05
    ld b, $ff                                     ; $5c78: $06 $ff
    nop                                           ; $5c7a: $00
    nop                                           ; $5c7b: $00
    nop                                           ; $5c7c: $00
    nop                                           ; $5c7d: $00
    ld [de], a                                    ; $5c7e: $12
    ld b, $07                                     ; $5c7f: $06 $07
    rst $38                                       ; $5c81: $ff
    nop                                           ; $5c82: $00
    nop                                           ; $5c83: $00
    nop                                           ; $5c84: $00
    nop                                           ; $5c85: $00
    ld [de], a                                    ; $5c86: $12
    rlca                                          ; $5c87: $07
    ld [$00ff], sp                                ; $5c88: $08 $ff $00
    nop                                           ; $5c8b: $00
    nop                                           ; $5c8c: $00
    nop                                           ; $5c8d: $00
    ld [de], a                                    ; $5c8e: $12
    ld [$ff09], sp                                ; $5c8f: $08 $09 $ff
    nop                                           ; $5c92: $00
    nop                                           ; $5c93: $00
    nop                                           ; $5c94: $00
    nop                                           ; $5c95: $00
    ld [de], a                                    ; $5c96: $12
    add hl, bc                                    ; $5c97: $09
    rst $38                                       ; $5c98: $ff
    ld [bc], a                                    ; $5c99: $02
    rst $38                                       ; $5c9a: $ff
    nop                                           ; $5c9b: $00
    nop                                           ; $5c9c: $00
    jp nz, Jump_000_0b5c                          ; $5c9d: $c2 $5c $0b

    nop                                           ; $5ca0: $00
    inc bc                                        ; $5ca1: $03
    rst $38                                       ; $5ca2: $ff
    nop                                           ; $5ca3: $00
    nop                                           ; $5ca4: $00
    ld a, [hl+]                                   ; $5ca5: $2a
    ld e, l                                       ; $5ca6: $5d
    dec bc                                        ; $5ca7: $0b
    nop                                           ; $5ca8: $00
    inc b                                         ; $5ca9: $04
    rst $38                                       ; $5caa: $ff
    nop                                           ; $5cab: $00
    nop                                           ; $5cac: $00
    cp a                                          ; $5cad: $bf
    ld e, l                                       ; $5cae: $5d
    dec bc                                        ; $5caf: $0b
    nop                                           ; $5cb0: $00
    dec b                                         ; $5cb1: $05
    rst $38                                       ; $5cb2: $ff
    nop                                           ; $5cb3: $00
    nop                                           ; $5cb4: $00
    dec bc                                        ; $5cb5: $0b
    db $10                                        ; $5cb6: $10
    dec bc                                        ; $5cb7: $0b
    nop                                           ; $5cb8: $00
    ld b, $ff                                     ; $5cb9: $06 $ff
    nop                                           ; $5cbb: $00
    nop                                           ; $5cbc: $00
    inc c                                         ; $5cbd: $0c
    db $10                                        ; $5cbe: $10
    inc bc                                        ; $5cbf: $03
    nop                                           ; $5cc0: $00
    rst $38                                       ; $5cc1: $ff
    ld hl, $1006                                  ; $5cc2: $21 $06 $10
    rst $18                                       ; $5cc5: $df
    ld c, $0a                                     ; $5cc6: $0e $0a
    ld a, $02                                     ; $5cc8: $3e $02
    rst $18                                       ; $5cca: $df
    ld a, [bc]                                    ; $5ccb: $0a
    ld a, [bc]                                    ; $5ccc: $0a
    push af                                       ; $5ccd: $f5
    ld a, $05                                     ; $5cce: $3e $05
    rst $18                                       ; $5cd0: $df
    inc b                                         ; $5cd1: $04
    ld a, [bc]                                    ; $5cd2: $0a
    pop af                                        ; $5cd3: $f1
    rst $18                                       ; $5cd4: $df
    ld [de], a                                    ; $5cd5: $12
    ld a, [bc]                                    ; $5cd6: $0a
    rst $18                                       ; $5cd7: $df
    inc c                                         ; $5cd8: $0c
    ld a, [bc]                                    ; $5cd9: $0a
    push af                                       ; $5cda: $f5
    ld a, $05                                     ; $5cdb: $3e $05
    rst $18                                       ; $5cdd: $df
    inc b                                         ; $5cde: $04
    ld a, [bc]                                    ; $5cdf: $0a
    pop af                                        ; $5ce0: $f1
    and a                                         ; $5ce1: $a7
    jr nz, jr_031_5cea                            ; $5ce2: $20 $06

    ld a, $02                                     ; $5ce4: $3e $02
    rst $18                                       ; $5ce6: $df
    ld [$c90a], sp                                ; $5ce7: $08 $0a $c9

jr_031_5cea:
    rst $18                                       ; $5cea: $df
    db $10                                        ; $5ceb: $10
    ld a, [bc]                                    ; $5cec: $0a
    ld a, $02                                     ; $5ced: $3e $02
    rst $18                                       ; $5cef: $df
    ld a, [bc]                                    ; $5cf0: $0a
    ld a, [bc]                                    ; $5cf1: $0a
    push af                                       ; $5cf2: $f5
    ld a, $05                                     ; $5cf3: $3e $05
    rst $18                                       ; $5cf5: $df
    inc b                                         ; $5cf6: $04
    ld a, [bc]                                    ; $5cf7: $0a
    pop af                                        ; $5cf8: $f1
    rst $18                                       ; $5cf9: $df
    ld [de], a                                    ; $5cfa: $12
    ld a, [bc]                                    ; $5cfb: $0a
    rst $18                                       ; $5cfc: $df
    inc c                                         ; $5cfd: $0c
    ld a, [bc]                                    ; $5cfe: $0a
    push af                                       ; $5cff: $f5
    ld a, $05                                     ; $5d00: $3e $05
    rst $18                                       ; $5d02: $df
    inc b                                         ; $5d03: $04
    ld a, [bc]                                    ; $5d04: $0a
    pop af                                        ; $5d05: $f1
    and a                                         ; $5d06: $a7
    jr z, jr_031_5d0c                             ; $5d07: $28 $03

    rst $18                                       ; $5d09: $df
    db $10                                        ; $5d0a: $10
    ld a, [bc]                                    ; $5d0b: $0a

jr_031_5d0c:
    ld a, $02                                     ; $5d0c: $3e $02
    rst $18                                       ; $5d0e: $df
    ld [$c90a], sp                                ; $5d0f: $08 $0a $c9
    ld hl, $0d16                                  ; $5d12: $21 $16 $0d
    rst $18                                       ; $5d15: $df
    ld c, $0a                                     ; $5d16: $0e $0a
    ld a, $03                                     ; $5d18: $3e $03
    rst $18                                       ; $5d1a: $df
    ld [$c90a], sp                                ; $5d1b: $08 $0a $c9
    ld hl, $0d16                                  ; $5d1e: $21 $16 $0d
    rst $18                                       ; $5d21: $df
    ld c, $0a                                     ; $5d22: $0e $0a
    ld a, $04                                     ; $5d24: $3e $04
    rst $18                                       ; $5d26: $df
    ld [$c90a], sp                                ; $5d27: $08 $0a $c9
    rst $30                                       ; $5d2a: $f7
    and b                                         ; $5d2b: $a0
    inc c                                         ; $5d2c: $0c
    jr z, jr_031_5d33                             ; $5d2d: $28 $04

    call Call_031_60b6                            ; $5d2f: $cd $b6 $60
    ret                                           ; $5d32: $c9


jr_031_5d33:
    ld hl, $1070                                  ; $5d33: $21 $70 $10
    rst $18                                       ; $5d36: $df
    ld c, $0a                                     ; $5d37: $0e $0a
    ld a, $03                                     ; $5d39: $3e $03
    rst $18                                       ; $5d3b: $df
    ld a, [bc]                                    ; $5d3c: $0a
    ld a, [bc]                                    ; $5d3d: $0a
    rst $18                                       ; $5d3e: $df
    ld [de], a                                    ; $5d3f: $12
    ld a, [bc]                                    ; $5d40: $0a
    rst $18                                       ; $5d41: $df
    inc c                                         ; $5d42: $0c
    ld a, [bc]                                    ; $5d43: $0a
    push af                                       ; $5d44: $f5
    ld a, $05                                     ; $5d45: $3e $05
    rst $18                                       ; $5d47: $df
    inc b                                         ; $5d48: $04
    ld a, [bc]                                    ; $5d49: $0a
    pop af                                        ; $5d4a: $f1
    and a                                         ; $5d4b: $a7
    jr z, jr_031_5d55                             ; $5d4c: $28 $07

    ld a, $03                                     ; $5d4e: $3e $03
    rst $18                                       ; $5d50: $df
    ld [$180a], sp                                ; $5d51: $08 $0a $18
    ld l, c                                       ; $5d54: $69

jr_031_5d55:
    rst $18                                       ; $5d55: $df
    db $10                                        ; $5d56: $10
    ld a, [bc]                                    ; $5d57: $0a
    ld a, $03                                     ; $5d58: $3e $03
    rst $18                                       ; $5d5a: $df
    ld [$df0a], sp                                ; $5d5b: $08 $0a $df
    inc e                                         ; $5d5e: $1c
    db $10                                        ; $5d5f: $10
    ld a, $12                                     ; $5d60: $3e $12
    ld b, a                                       ; $5d62: $47
    ld a, $04                                     ; $5d63: $3e $04
    ld c, a                                       ; $5d65: $4f
    rst $18                                       ; $5d66: $df
    ld c, [hl]                                    ; $5d67: $4e
    ld a, [bc]                                    ; $5d68: $0a
    ld a, $06                                     ; $5d69: $3e $06
    ld [$c834], a                                 ; $5d6b: $ea $34 $c8
    ld hl, $5ef7                                  ; $5d6e: $21 $f7 $5e
    ld de, $c600                                  ; $5d71: $11 $00 $c6
    ld c, $04                                     ; $5d74: $0e $04
    call Call_000_03eb                            ; $5d76: $cd $eb $03
    ld bc, $4f00                                  ; $5d79: $01 $00 $4f
    rst $18                                       ; $5d7c: $df
    ld e, $02                                     ; $5d7d: $1e $02
    ld bc, $ff01                                  ; $5d7f: $01 $01 $ff
    rst $18                                       ; $5d82: $df
    ld e, $02                                     ; $5d83: $1e $02
    ld hl, $070d                                  ; $5d85: $21 $0d $07
    rst $18                                       ; $5d88: $df
    db $10                                        ; $5d89: $10
    db $10                                        ; $5d8a: $10
    ld a, $00                                     ; $5d8b: $3e $00
    rst $18                                       ; $5d8d: $df
    ld e, $10                                     ; $5d8e: $1e $10
    ld hl, $2400                                  ; $5d90: $21 $00 $24
    ld de, $3a40                                  ; $5d93: $11 $40 $3a
    rst $18                                       ; $5d96: $df
    jr nz, @+$12                                  ; $5d97: $20 $10

    ld de, $4002                                  ; $5d99: $11 $02 $40
    rst $18                                       ; $5d9c: $df
    ld [hl+], a                                   ; $5d9d: $22
    db $10                                        ; $5d9e: $10
    ld hl, $c89a                                  ; $5d9f: $21 $9a $c8
    ld de, $00dc                                  ; $5da2: $11 $dc $00
    ld a, e                                       ; $5da5: $7b
    ld [hl+], a                                   ; $5da6: $22
    ld [hl], d                                    ; $5da7: $72
    ld hl, $c89c                                  ; $5da8: $21 $9c $c8
    ld a, $04                                     ; $5dab: $3e $04
    ld [hl], a                                    ; $5dad: $77
    ldh a, [$95]                                  ; $5dae: $f0 $95
    ld hl, $5f07                                  ; $5db0: $21 $07 $5f
    rst $18                                       ; $5db3: $df
    ld a, [de]                                    ; $5db4: $1a
    db $10                                        ; $5db5: $10
    ld a, $01                                     ; $5db6: $3e $01
    rst $18                                       ; $5db8: $df
    ld [de], a                                    ; $5db9: $12
    db $10                                        ; $5dba: $10
    rst $18                                       ; $5dbb: $df
    jr nc, jr_031_5dce                            ; $5dbc: $30 $10

    ret                                           ; $5dbe: $c9


    rst $30                                       ; $5dbf: $f7
    ret nz                                        ; $5dc0: $c0

    inc c                                         ; $5dc1: $0c
    jr z, jr_031_5dc8                             ; $5dc2: $28 $04

    call Call_031_6368                            ; $5dc4: $cd $68 $63
    ret                                           ; $5dc7: $c9


jr_031_5dc8:
    ld hl, $1080                                  ; $5dc8: $21 $80 $10
    rst $18                                       ; $5dcb: $df
    ld c, $0a                                     ; $5dcc: $0e $0a

jr_031_5dce:
    ld a, $04                                     ; $5dce: $3e $04
    rst $18                                       ; $5dd0: $df
    ld a, [bc]                                    ; $5dd1: $0a
    ld a, [bc]                                    ; $5dd2: $0a
    rst $18                                       ; $5dd3: $df
    ld [de], a                                    ; $5dd4: $12
    ld a, [bc]                                    ; $5dd5: $0a
    rst $18                                       ; $5dd6: $df
    inc c                                         ; $5dd7: $0c
    ld a, [bc]                                    ; $5dd8: $0a
    push af                                       ; $5dd9: $f5
    ld a, $05                                     ; $5dda: $3e $05
    rst $18                                       ; $5ddc: $df
    inc b                                         ; $5ddd: $04
    ld a, [bc]                                    ; $5dde: $0a
    pop af                                        ; $5ddf: $f1
    and a                                         ; $5de0: $a7
    jr z, jr_031_5dea                             ; $5de1: $28 $07

    ld a, $04                                     ; $5de3: $3e $04
    rst $18                                       ; $5de5: $df
    ld [$180a], sp                                ; $5de6: $08 $0a $18
    ld h, [hl]                                    ; $5de9: $66

jr_031_5dea:
    rst $18                                       ; $5dea: $df
    db $10                                        ; $5deb: $10
    ld a, [bc]                                    ; $5dec: $0a
    ld a, $04                                     ; $5ded: $3e $04
    rst $18                                       ; $5def: $df
    ld [$df0a], sp                                ; $5df0: $08 $0a $df
    inc e                                         ; $5df3: $1c
    db $10                                        ; $5df4: $10
    ld a, $12                                     ; $5df5: $3e $12
    ld b, a                                       ; $5df7: $47
    ld a, $05                                     ; $5df8: $3e $05
    ld c, a                                       ; $5dfa: $4f
    rst $18                                       ; $5dfb: $df
    ld c, [hl]                                    ; $5dfc: $4e
    ld a, [bc]                                    ; $5dfd: $0a
    ld a, $06                                     ; $5dfe: $3e $06
    ld [$c834], a                                 ; $5e00: $ea $34 $c8
    ld hl, $6185                                  ; $5e03: $21 $85 $61
    ld de, $c600                                  ; $5e06: $11 $00 $c6
    ld c, $04                                     ; $5e09: $0e $04
    call Call_000_03eb                            ; $5e0b: $cd $eb $03
    ld bc, $4e00                                  ; $5e0e: $01 $00 $4e
    rst $18                                       ; $5e11: $df
    ld e, $02                                     ; $5e12: $1e $02
    ld bc, $ff01                                  ; $5e14: $01 $01 $ff
    rst $18                                       ; $5e17: $df
    ld e, $02                                     ; $5e18: $1e $02
    ld hl, $070d                                  ; $5e1a: $21 $0d $07
    rst $18                                       ; $5e1d: $df
    db $10                                        ; $5e1e: $10
    db $10                                        ; $5e1f: $10
    ld a, $00                                     ; $5e20: $3e $00
    rst $18                                       ; $5e22: $df
    ld e, $10                                     ; $5e23: $1e $10
    ld hl, $1000                                  ; $5e25: $21 $00 $10
    ld de, $2d80                                  ; $5e28: $11 $80 $2d
    rst $18                                       ; $5e2b: $df
    jr nz, jr_031_5e3e                            ; $5e2c: $20 $10

    rst $18                                       ; $5e2e: $df
    inc h                                         ; $5e2f: $24
    db $10                                        ; $5e30: $10
    ld de, $4000                                  ; $5e31: $11 $00 $40
    rst $18                                       ; $5e34: $df
    ld [hl+], a                                   ; $5e35: $22
    db $10                                        ; $5e36: $10
    ld hl, $c89a                                  ; $5e37: $21 $9a $c8
    ld de, $00dc                                  ; $5e3a: $11 $dc $00
    ld a, e                                       ; $5e3d: $7b

jr_031_5e3e:
    ld [hl+], a                                   ; $5e3e: $22
    ld [hl], d                                    ; $5e3f: $72
    ldh a, [$95]                                  ; $5e40: $f0 $95
    ld hl, $6195                                  ; $5e42: $21 $95 $61
    rst $18                                       ; $5e45: $df
    ld a, [de]                                    ; $5e46: $1a
    db $10                                        ; $5e47: $10
    ld a, $01                                     ; $5e48: $3e $01
    rst $18                                       ; $5e4a: $df
    ld [de], a                                    ; $5e4b: $12
    db $10                                        ; $5e4c: $10
    rst $18                                       ; $5e4d: $df
    jr nc, jr_031_5e60                            ; $5e4e: $30 $10

    ret                                           ; $5e50: $c9


    ld bc, $00ff                                  ; $5e51: $01 $ff $00
    nop                                           ; $5e54: $00
    jr @+$7f                                      ; $5e55: $18 $7d

    ld b, $00                                     ; $5e57: $06 $00
    rst $38                                       ; $5e59: $ff
    rrca                                          ; $5e5a: $0f
    rst $38                                       ; $5e5b: $ff
    nop                                           ; $5e5c: $00
    nop                                           ; $5e5d: $00
    db $f4                                        ; $5e5e: $f4
    ld d, c                                       ; $5e5f: $51

jr_031_5e60:
    ld bc, $ff00                                  ; $5e60: $01 $00 $ff
    ld a, [$c46a]                                 ; $5e63: $fa $6a $c4
    cp $01                                        ; $5e66: $fe $01
    jr z, jr_031_5e72                             ; $5e68: $28 $08

    push af                                       ; $5e6a: $f5
    xor a                                         ; $5e6b: $af
    ld hl, $c4b4                                  ; $5e6c: $21 $b4 $c4
    ld [hl+], a                                   ; $5e6f: $22
    ld [hl+], a                                   ; $5e70: $22
    pop af                                        ; $5e71: $f1

jr_031_5e72:
    cp $04                                        ; $5e72: $fe $04
    jr nz, jr_031_5e7c                            ; $5e74: $20 $06

    call Call_031_60c0                            ; $5e76: $cd $c0 $60
    jp Jump_031_5ef6                              ; $5e79: $c3 $f6 $5e


jr_031_5e7c:
    cp $05                                        ; $5e7c: $fe $05
    jr nz, jr_031_5e86                            ; $5e7e: $20 $06

    call Call_031_6372                            ; $5e80: $cd $72 $63
    jp Jump_031_5ef6                              ; $5e83: $c3 $f6 $5e


jr_031_5e86:
    cp $06                                        ; $5e86: $fe $06
    jr nz, jr_031_5eb8                            ; $5e88: $20 $2e

    call Call_031_5fe8                            ; $5e8a: $cd $e8 $5f
    rst $30                                       ; $5e8d: $f7
    ld b, b                                       ; $5e8e: $40
    inc c                                         ; $5e8f: $0c
    jr z, jr_031_5ef6                             ; $5e90: $28 $64

    rst $28                                       ; $5e92: $ef
    ld b, b                                       ; $5e93: $40
    inc c                                         ; $5e94: $0c
    rst $30                                       ; $5e95: $f7
    ld b, b                                       ; $5e96: $40
    dec d                                         ; $5e97: $15
    jr nz, jr_031_5ef6                            ; $5e98: $20 $5c

    call Call_000_2ed5                            ; $5e9a: $cd $d5 $2e
    ld e, $e7                                     ; $5e9d: $1e $e7
    ld b, b                                       ; $5e9f: $40
    dec d                                         ; $5ea0: $15
    ld de, $002d                                  ; $5ea1: $11 $2d $00
    call Call_031_7da4                            ; $5ea4: $cd $a4 $7d
    ld b, $00                                     ; $5ea7: $06 $00
    ld c, $fa                                     ; $5ea9: $0e $fa
    rst $18                                       ; $5eab: $df
    ld c, [hl]                                    ; $5eac: $4e
    ld a, [bc]                                    ; $5ead: $0a
    rst $18                                       ; $5eae: $df
    inc [hl]                                      ; $5eaf: $34
    ld [bc], a                                    ; $5eb0: $02
    ld a, $08                                     ; $5eb1: $3e $08
    ld [$c441], a                                 ; $5eb3: $ea $41 $c4
    jr jr_031_5ef6                                ; $5eb6: $18 $3e

jr_031_5eb8:
    cp $07                                        ; $5eb8: $fe $07
    jr nz, jr_031_5eea                            ; $5eba: $20 $2e

    call Call_031_628e                            ; $5ebc: $cd $8e $62
    rst $30                                       ; $5ebf: $f7
    ld b, b                                       ; $5ec0: $40
    inc c                                         ; $5ec1: $0c
    jr z, jr_031_5ef6                             ; $5ec2: $28 $32

    rst $28                                       ; $5ec4: $ef
    ld b, b                                       ; $5ec5: $40
    inc c                                         ; $5ec6: $0c
    rst $30                                       ; $5ec7: $f7
    ld h, b                                       ; $5ec8: $60
    dec d                                         ; $5ec9: $15
    jr nz, jr_031_5ef6                            ; $5eca: $20 $2a

    call Call_000_2ed5                            ; $5ecc: $cd $d5 $2e
    ld e, $e7                                     ; $5ecf: $1e $e7
    ld h, b                                       ; $5ed1: $60
    dec d                                         ; $5ed2: $15
    ld de, $002d                                  ; $5ed3: $11 $2d $00
    call Call_031_7da4                            ; $5ed6: $cd $a4 $7d
    ld b, $00                                     ; $5ed9: $06 $00
    ld c, $fa                                     ; $5edb: $0e $fa
    rst $18                                       ; $5edd: $df
    ld c, [hl]                                    ; $5ede: $4e
    ld a, [bc]                                    ; $5edf: $0a
    rst $18                                       ; $5ee0: $df
    inc [hl]                                      ; $5ee1: $34
    ld [bc], a                                    ; $5ee2: $02
    ld a, $09                                     ; $5ee3: $3e $09
    ld [$c441], a                                 ; $5ee5: $ea $41 $c4
    jr jr_031_5ef6                                ; $5ee8: $18 $0c

jr_031_5eea:
    cp $fa                                        ; $5eea: $fe $fa
    jr nz, jr_031_5ef6                            ; $5eec: $20 $08

    rst $30                                       ; $5eee: $f7
    add b                                         ; $5eef: $80
    inc c                                         ; $5ef0: $0c
    jr z, jr_031_5ef6                             ; $5ef1: $28 $03

    rst $28                                       ; $5ef3: $ef
    add b                                         ; $5ef4: $80
    inc c                                         ; $5ef5: $0c

Jump_031_5ef6:
jr_031_5ef6:
    ret                                           ; $5ef6: $c9


    nop                                           ; $5ef7: $00
    nop                                           ; $5ef8: $00
    inc h                                         ; $5ef9: $24
    nop                                           ; $5efa: $00
    ld b, b                                       ; $5efb: $40
    ld a, [hl-]                                   ; $5efc: $3a
    nop                                           ; $5efd: $00
    jp nz, $000a                                  ; $5efe: $c2 $0a $00

    ld [hl], $00                                  ; $5f01: $36 $00
    add c                                         ; $5f03: $81
    nop                                           ; $5f04: $00
    nop                                           ; $5f05: $00
    nop                                           ; $5f06: $00
    daa                                           ; $5f07: $27
    ld e, a                                       ; $5f08: $5f
    ld d, d                                       ; $5f09: $52
    ld e, a                                       ; $5f0a: $5f
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
    ldh a, [$96]                                  ; $5f27: $f0 $96
    push af                                       ; $5f29: $f5
    ld a, $06                                     ; $5f2a: $3e $06
    ldh [$96], a                                  ; $5f2c: $e0 $96
    ldh [rSVBK], a                                ; $5f2e: $e0 $70
    rst $18                                       ; $5f30: $df
    ld a, [hl+]                                   ; $5f31: $2a
    db $10                                        ; $5f32: $10
    ld a, $03                                     ; $5f33: $3e $03
    ld de, $0a03                                  ; $5f35: $11 $03 $0a
    ld hl, $1073                                  ; $5f38: $21 $73 $10
    rst $18                                       ; $5f3b: $df
    ld c, d                                       ; $5f3c: $4a
    dec b                                         ; $5f3d: $05
    ld a, $03                                     ; $5f3e: $3e $03
    ld de, $0a03                                  ; $5f40: $11 $03 $0a
    ld hl, $1074                                  ; $5f43: $21 $74 $10
    rst $18                                       ; $5f46: $df
    ld c, d                                       ; $5f47: $4a
    dec b                                         ; $5f48: $05
    rst $18                                       ; $5f49: $df
    inc l                                         ; $5f4a: $2c
    db $10                                        ; $5f4b: $10
    pop af                                        ; $5f4c: $f1
    ldh [$96], a                                  ; $5f4d: $e0 $96
    ldh [rSVBK], a                                ; $5f4f: $e0 $70
    ret                                           ; $5f51: $c9


    ld a, $82                                     ; $5f52: $3e $82
    rst $18                                       ; $5f54: $df
    ld l, $10                                     ; $5f55: $2e $10
    ret                                           ; $5f57: $c9


    ld a, b                                       ; $5f58: $78
    ld e, a                                       ; $5f59: $5f
    or l                                          ; $5f5a: $b5
    ld e, a                                       ; $5f5b: $5f
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
    ldh a, [$96]                                  ; $5f78: $f0 $96
    push af                                       ; $5f7a: $f5
    ld a, $06                                     ; $5f7b: $3e $06
    ldh [$96], a                                  ; $5f7d: $e0 $96
    ldh [rSVBK], a                                ; $5f7f: $e0 $70
    rst $18                                       ; $5f81: $df
    ld a, [hl+]                                   ; $5f82: $2a
    db $10                                        ; $5f83: $10
    ld a, $03                                     ; $5f84: $3e $03
    ld de, $0a03                                  ; $5f86: $11 $03 $0a
    ld hl, $1079                                  ; $5f89: $21 $79 $10
    rst $18                                       ; $5f8c: $df
    ld c, d                                       ; $5f8d: $4a
    dec b                                         ; $5f8e: $05
    ld a, $03                                     ; $5f8f: $3e $03
    ld de, $0a03                                  ; $5f91: $11 $03 $0a
    ld hl, $107a                                  ; $5f94: $21 $7a $10
    rst $18                                       ; $5f97: $df
    ld c, d                                       ; $5f98: $4a
    dec b                                         ; $5f99: $05
    push af                                       ; $5f9a: $f5
    ld a, $3c                                     ; $5f9b: $3e $3c
    rst $18                                       ; $5f9d: $df
    inc b                                         ; $5f9e: $04
    ld a, [bc]                                    ; $5f9f: $0a
    pop af                                        ; $5fa0: $f1
    ld a, $03                                     ; $5fa1: $3e $03
    ld de, $0a03                                  ; $5fa3: $11 $03 $0a
    ld hl, $107b                                  ; $5fa6: $21 $7b $10
    rst $18                                       ; $5fa9: $df
    ld c, d                                       ; $5faa: $4a
    dec b                                         ; $5fab: $05
    rst $18                                       ; $5fac: $df
    inc l                                         ; $5fad: $2c
    db $10                                        ; $5fae: $10
    pop af                                        ; $5faf: $f1
    ldh [$96], a                                  ; $5fb0: $e0 $96
    ldh [rSVBK], a                                ; $5fb2: $e0 $70
    ret                                           ; $5fb4: $c9


    rst $18                                       ; $5fb5: $df
    ld a, [hl+]                                   ; $5fb6: $2a
    db $10                                        ; $5fb7: $10
    ld a, [$c834]                                 ; $5fb8: $fa $34 $c8
    or a                                          ; $5fbb: $b7
    jr nz, jr_031_5fc5                            ; $5fbc: $20 $07

    ld a, $08                                     ; $5fbe: $3e $08
    ld [$c961], a                                 ; $5fc0: $ea $61 $c9
    jr jr_031_5fdf                                ; $5fc3: $18 $1a

jr_031_5fc5:
    rst $28                                       ; $5fc5: $ef
    ld h, b                                       ; $5fc6: $60
    inc c                                         ; $5fc7: $0c
    ld a, [$c8aa]                                 ; $5fc8: $fa $aa $c8
    or a                                          ; $5fcb: $b7
    jr z, jr_031_5fd1                             ; $5fcc: $28 $03

    rst $20                                       ; $5fce: $e7
    ld h, b                                       ; $5fcf: $60
    inc c                                         ; $5fd0: $0c

jr_031_5fd1:
    ldh a, [$96]                                  ; $5fd1: $f0 $96
    push af                                       ; $5fd3: $f5
    call Call_031_607b                            ; $5fd4: $cd $7b $60
    ld [$c968], a                                 ; $5fd7: $ea $68 $c9
    pop af                                        ; $5fda: $f1
    ldh [$96], a                                  ; $5fdb: $e0 $96
    ldh [rSVBK], a                                ; $5fdd: $e0 $70

jr_031_5fdf:
    ld a, $82                                     ; $5fdf: $3e $82
    rst $18                                       ; $5fe1: $df
    ld l, $10                                     ; $5fe2: $2e $10
    rst $18                                       ; $5fe4: $df
    inc l                                         ; $5fe5: $2c
    db $10                                        ; $5fe6: $10
    ret                                           ; $5fe7: $c9


Call_031_5fe8:
    rst $18                                       ; $5fe8: $df
    nop                                           ; $5fe9: $00
    ld a, [bc]                                    ; $5fea: $0a
    ldh a, [$95]                                  ; $5feb: $f0 $95
    ld b, a                                       ; $5fed: $47
    ld a, $03                                     ; $5fee: $3e $03
    ld de, $7cbe                                  ; $5ff0: $11 $be $7c
    rst $18                                       ; $5ff3: $df
    jr @+$0c                                      ; $5ff4: $18 $0a

    ld a, [$c296]                                 ; $5ff6: $fa $96 $c2
    ld b, a                                       ; $5ff9: $47
    ld a, $03                                     ; $5ffa: $3e $03
    rst $18                                       ; $5ffc: $df
    ld l, $0a                                     ; $5ffd: $2e $0a
    ld c, $08                                     ; $5fff: $0e $08
    call Call_000_25af                            ; $6001: $cd $af $25
    call Call_000_2625                            ; $6004: $cd $25 $26
    push af                                       ; $6007: $f5
    ld a, $1e                                     ; $6008: $3e $1e
    rst $18                                       ; $600a: $df
    inc b                                         ; $600b: $04
    ld a, [bc]                                    ; $600c: $0a
    pop af                                        ; $600d: $f1
    ld a, [$c968]                                 ; $600e: $fa $68 $c9
    or a                                          ; $6011: $b7
    jr nz, jr_031_603b                            ; $6012: $20 $27

    ld a, $03                                     ; $6014: $3e $03
    ld b, a                                       ; $6016: $47
    ld a, $07                                     ; $6017: $3e $07
    rst $18                                       ; $6019: $df
    ld [hl-], a                                   ; $601a: $32
    ld a, [bc]                                    ; $601b: $0a
    ld a, $03                                     ; $601c: $3e $03
    rst $18                                       ; $601e: $df
    inc [hl]                                      ; $601f: $34
    ld a, [bc]                                    ; $6020: $0a
    push af                                       ; $6021: $f5
    ld a, $1e                                     ; $6022: $3e $1e
    rst $18                                       ; $6024: $df
    inc b                                         ; $6025: $04
    ld a, [bc]                                    ; $6026: $0a
    pop af                                        ; $6027: $f1
    ld hl, $107e                                  ; $6028: $21 $7e $10
    rst $18                                       ; $602b: $df
    ld c, $0a                                     ; $602c: $0e $0a
    ld a, $03                                     ; $602e: $3e $03
    rst $18                                       ; $6030: $df
    ld [$e70a], sp                                ; $6031: $08 $0a $e7
    ld b, b                                       ; $6034: $40
    inc c                                         ; $6035: $0c
    rst $28                                       ; $6036: $ef
    and b                                         ; $6037: $a0
    inc c                                         ; $6038: $0c
    jr @+$2c                                      ; $6039: $18 $2a

jr_031_603b:
    cp $01                                        ; $603b: $fe $01
    jr nz, jr_031_6053                            ; $603d: $20 $14

    push af                                       ; $603f: $f5
    ld a, $1e                                     ; $6040: $3e $1e
    rst $18                                       ; $6042: $df
    inc b                                         ; $6043: $04
    ld a, [bc]                                    ; $6044: $0a
    pop af                                        ; $6045: $f1
    ld hl, $107d                                  ; $6046: $21 $7d $10
    rst $18                                       ; $6049: $df
    ld c, $0a                                     ; $604a: $0e $0a
    ld a, $03                                     ; $604c: $3e $03
    rst $18                                       ; $604e: $df
    ld [$180a], sp                                ; $604f: $08 $0a $18
    ld [de], a                                    ; $6052: $12

jr_031_6053:
    push af                                       ; $6053: $f5
    ld a, $1e                                     ; $6054: $3e $1e
    rst $18                                       ; $6056: $df
    inc b                                         ; $6057: $04
    ld a, [bc]                                    ; $6058: $0a
    pop af                                        ; $6059: $f1
    ld hl, $107c                                  ; $605a: $21 $7c $10
    rst $18                                       ; $605d: $df
    ld c, $0a                                     ; $605e: $0e $0a
    ld a, $03                                     ; $6060: $3e $03
    rst $18                                       ; $6062: $df
    ld [$f00a], sp                                ; $6063: $08 $0a $f0
    sub l                                         ; $6066: $95
    ld b, a                                       ; $6067: $47
    ld a, $03                                     ; $6068: $3e $03
    ld de, $7d2d                                  ; $606a: $11 $2d $7d
    rst $18                                       ; $606d: $df
    jr jr_031_607a                                ; $606e: $18 $0a

    ld a, $03                                     ; $6070: $3e $03
    ld b, $00                                     ; $6072: $06 $00
    rst $18                                       ; $6074: $df
    inc l                                         ; $6075: $2c
    ld a, [bc]                                    ; $6076: $0a
    rst $18                                       ; $6077: $df
    ld [bc], a                                    ; $6078: $02
    ld a, [bc]                                    ; $6079: $0a

jr_031_607a:
    ret                                           ; $607a: $c9


Call_031_607b:
    xor a                                         ; $607b: $af
    rst $30                                       ; $607c: $f7
    ld h, b                                       ; $607d: $60
    inc c                                         ; $607e: $0c
    ret nz                                        ; $607f: $c0

    ld a, $06                                     ; $6080: $3e $06
    ldh [$96], a                                  ; $6082: $e0 $96
    ldh [rSVBK], a                                ; $6084: $e0 $70
    rst $18                                       ; $6086: $df
    inc [hl]                                      ; $6087: $34
    db $10                                        ; $6088: $10
    cp $06                                        ; $6089: $fe $06
    jr nz, jr_031_60b3                            ; $608b: $20 $26

    ld hl, $d680                                  ; $608d: $21 $80 $d6
    ld bc, $000a                                  ; $6090: $01 $0a $00
    add hl, bc                                    ; $6093: $09
    ld b, [hl]                                    ; $6094: $46
    inc hl                                        ; $6095: $23
    ld a, [hl+]                                   ; $6096: $2a
    bit 7, a                                      ; $6097: $cb $7f
    jr z, jr_031_609d                             ; $6099: $28 $02

    cpl                                           ; $609b: $2f
    inc a                                         ; $609c: $3c

jr_031_609d:
    ld c, a                                       ; $609d: $4f
    ld a, [hl]                                    ; $609e: $7e
    bit 7, a                                      ; $609f: $cb $7f
    jr z, jr_031_60b3                             ; $60a1: $28 $10

    ld hl, $00a0                                  ; $60a3: $21 $a0 $00
    call Call_031_7d53                            ; $60a6: $cd $53 $7d
    or a                                          ; $60a9: $b7
    jr nz, jr_031_60af                            ; $60aa: $20 $03

    xor a                                         ; $60ac: $af
    jr jr_031_60b5                                ; $60ad: $18 $06

jr_031_60af:
    ld a, $01                                     ; $60af: $3e $01
    jr jr_031_60b5                                ; $60b1: $18 $02

jr_031_60b3:
    ld a, $02                                     ; $60b3: $3e $02

jr_031_60b5:
    ret                                           ; $60b5: $c9


Call_031_60b6:
    ld hl, $0d11                                  ; $60b6: $21 $11 $0d
    rst $18                                       ; $60b9: $df
    ld c, $0a                                     ; $60ba: $0e $0a
    call Call_031_60ec                            ; $60bc: $cd $ec $60
    ret                                           ; $60bf: $c9


Call_031_60c0:
    rst $18                                       ; $60c0: $df
    nop                                           ; $60c1: $00
    ld a, [bc]                                    ; $60c2: $0a
    ldh a, [$95]                                  ; $60c3: $f0 $95
    ld b, a                                       ; $60c5: $47
    ld a, $03                                     ; $60c6: $3e $03
    ld de, $7cbe                                  ; $60c8: $11 $be $7c
    rst $18                                       ; $60cb: $df
    jr @+$0c                                      ; $60cc: $18 $0a

    ld a, [$c296]                                 ; $60ce: $fa $96 $c2
    ld b, a                                       ; $60d1: $47
    ld a, $03                                     ; $60d2: $3e $03
    rst $18                                       ; $60d4: $df
    ld l, $0a                                     ; $60d5: $2e $0a
    ld c, $08                                     ; $60d7: $0e $08
    call Call_000_25af                            ; $60d9: $cd $af $25
    call Call_000_2625                            ; $60dc: $cd $25 $26
    ld hl, $1078                                  ; $60df: $21 $78 $10
    rst $18                                       ; $60e2: $df
    ld c, $0a                                     ; $60e3: $0e $0a
    call Call_031_60ec                            ; $60e5: $cd $ec $60
    rst $18                                       ; $60e8: $df
    ld [bc], a                                    ; $60e9: $02
    ld a, [bc]                                    ; $60ea: $0a
    ret                                           ; $60eb: $c9


Call_031_60ec:
    ld a, $03                                     ; $60ec: $3e $03
    rst $18                                       ; $60ee: $df
    ld a, [bc]                                    ; $60ef: $0a
    ld a, [bc]                                    ; $60f0: $0a
    rst $18                                       ; $60f1: $df
    ld [de], a                                    ; $60f2: $12
    ld a, [bc]                                    ; $60f3: $0a
    rst $18                                       ; $60f4: $df
    inc c                                         ; $60f5: $0c
    ld a, [bc]                                    ; $60f6: $0a
    push af                                       ; $60f7: $f5
    ld a, $05                                     ; $60f8: $3e $05
    rst $18                                       ; $60fa: $df
    inc b                                         ; $60fb: $04
    ld a, [bc]                                    ; $60fc: $0a
    pop af                                        ; $60fd: $f1
    and a                                         ; $60fe: $a7
    jr z, jr_031_6120                             ; $60ff: $28 $1f

    ld hl, $107f                                  ; $6101: $21 $7f $10
    rst $18                                       ; $6104: $df
    ld c, $0a                                     ; $6105: $0e $0a
    ld a, $03                                     ; $6107: $3e $03
    rst $18                                       ; $6109: $df
    ld [$f00a], sp                                ; $610a: $08 $0a $f0
    sub l                                         ; $610d: $95
    ld b, a                                       ; $610e: $47
    ld a, $03                                     ; $610f: $3e $03
    ld de, $7d24                                  ; $6111: $11 $24 $7d
    rst $18                                       ; $6114: $df
    jr jr_031_6121                                ; $6115: $18 $0a

    ld a, $03                                     ; $6117: $3e $03
    ld b, $00                                     ; $6119: $06 $00
    rst $18                                       ; $611b: $df
    inc l                                         ; $611c: $2c
    ld a, [bc]                                    ; $611d: $0a
    jr jr_031_6184                                ; $611e: $18 $64

jr_031_6120:
    rst $20                                       ; $6120: $e7

jr_031_6121:
    and b                                         ; $6121: $a0
    inc c                                         ; $6122: $0c
    rst $18                                       ; $6123: $df
    inc e                                         ; $6124: $1c
    db $10                                        ; $6125: $10
    rst $30                                       ; $6126: $f7
    ld b, b                                       ; $6127: $40
    dec d                                         ; $6128: $15
    jr nz, jr_031_6130                            ; $6129: $20 $05

    ld a, $09                                     ; $612b: $3e $09
    ld [$c82c], a                                 ; $612d: $ea $2c $c8

jr_031_6130:
    ld a, $12                                     ; $6130: $3e $12
    ld b, a                                       ; $6132: $47
    ld a, $06                                     ; $6133: $3e $06
    ld c, a                                       ; $6135: $4f
    rst $18                                       ; $6136: $df
    ld c, [hl]                                    ; $6137: $4e
    ld a, [bc]                                    ; $6138: $0a
    ld a, $06                                     ; $6139: $3e $06
    ld [$c834], a                                 ; $613b: $ea $34 $c8
    ld bc, $8000                                  ; $613e: $01 $00 $80
    rst $18                                       ; $6141: $df
    ld e, $02                                     ; $6142: $1e $02
    ld bc, $ff01                                  ; $6144: $01 $01 $ff
    rst $18                                       ; $6147: $df
    ld e, $02                                     ; $6148: $1e $02
    ld hl, $070d                                  ; $614a: $21 $0d $07
    rst $18                                       ; $614d: $df
    db $10                                        ; $614e: $10
    db $10                                        ; $614f: $10
    ld a, $00                                     ; $6150: $3e $00
    rst $18                                       ; $6152: $df
    ld e, $10                                     ; $6153: $1e $10
    ld hl, $2400                                  ; $6155: $21 $00 $24
    ld de, $3a40                                  ; $6158: $11 $40 $3a
    rst $18                                       ; $615b: $df
    jr nz, jr_031_616e                            ; $615c: $20 $10

    ld e, $04                                     ; $615e: $1e $04
    ld bc, $c2f8                                  ; $6160: $01 $f8 $c2
    rst $18                                       ; $6163: $df
    ld h, $10                                     ; $6164: $26 $10
    ld de, $4002                                  ; $6166: $11 $02 $40
    rst $18                                       ; $6169: $df
    ld [hl+], a                                   ; $616a: $22
    db $10                                        ; $616b: $10
    ld e, $0a                                     ; $616c: $1e $0a

jr_031_616e:
    ld bc, $c2f8                                  ; $616e: $01 $f8 $c2
    rst $18                                       ; $6171: $df
    ld h, $10                                     ; $6172: $26 $10
    ldh a, [$95]                                  ; $6174: $f0 $95
    ld hl, $5f58                                  ; $6176: $21 $58 $5f
    rst $18                                       ; $6179: $df
    ld a, [de]                                    ; $617a: $1a
    db $10                                        ; $617b: $10
    ld a, $01                                     ; $617c: $3e $01
    rst $18                                       ; $617e: $df
    ld [de], a                                    ; $617f: $12
    db $10                                        ; $6180: $10
    rst $18                                       ; $6181: $df
    jr nc, jr_031_6194                            ; $6182: $30 $10

jr_031_6184:
    ret                                           ; $6184: $c9


    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    stop                                          ; $6187: $10 $00
    add b                                         ; $6189: $80
    dec l                                         ; $618a: $2d
    ld a, b                                       ; $618b: $78
    ldh [$03], a                                  ; $618c: $e0 $03
    nop                                           ; $618e: $00
    jr nz, @-$02                                  ; $618f: $20 $fc

    ld bc, $0000                                  ; $6191: $01 $00 $00

jr_031_6194:
    nop                                           ; $6194: $00
    or l                                          ; $6195: $b5
    ld h, c                                       ; $6196: $61
    ld a, [c]                                     ; $6197: $f2
    ld h, c                                       ; $6198: $61
    nop                                           ; $6199: $00
    nop                                           ; $619a: $00
    nop                                           ; $619b: $00
    nop                                           ; $619c: $00
    nop                                           ; $619d: $00
    nop                                           ; $619e: $00
    nop                                           ; $619f: $00
    nop                                           ; $61a0: $00
    nop                                           ; $61a1: $00
    nop                                           ; $61a2: $00
    nop                                           ; $61a3: $00
    nop                                           ; $61a4: $00
    nop                                           ; $61a5: $00
    nop                                           ; $61a6: $00
    nop                                           ; $61a7: $00
    nop                                           ; $61a8: $00
    nop                                           ; $61a9: $00
    nop                                           ; $61aa: $00
    nop                                           ; $61ab: $00
    nop                                           ; $61ac: $00
    nop                                           ; $61ad: $00
    nop                                           ; $61ae: $00
    nop                                           ; $61af: $00
    nop                                           ; $61b0: $00
    nop                                           ; $61b1: $00
    nop                                           ; $61b2: $00
    nop                                           ; $61b3: $00
    nop                                           ; $61b4: $00
    ldh a, [$96]                                  ; $61b5: $f0 $96
    push af                                       ; $61b7: $f5
    ld a, $06                                     ; $61b8: $3e $06
    ldh [$96], a                                  ; $61ba: $e0 $96
    ldh [rSVBK], a                                ; $61bc: $e0 $70
    rst $18                                       ; $61be: $df
    ld a, [hl+]                                   ; $61bf: $2a
    db $10                                        ; $61c0: $10
    ld a, $04                                     ; $61c1: $3e $04
    ld de, $0a03                                  ; $61c3: $11 $03 $0a
    ld hl, $1083                                  ; $61c6: $21 $83 $10
    rst $18                                       ; $61c9: $df
    ld c, d                                       ; $61ca: $4a
    dec b                                         ; $61cb: $05
    ld a, $04                                     ; $61cc: $3e $04
    ld de, $0a03                                  ; $61ce: $11 $03 $0a
    ld hl, $1084                                  ; $61d1: $21 $84 $10
    rst $18                                       ; $61d4: $df
    ld c, d                                       ; $61d5: $4a
    dec b                                         ; $61d6: $05
    push af                                       ; $61d7: $f5
    ld a, $3c                                     ; $61d8: $3e $3c
    rst $18                                       ; $61da: $df
    inc b                                         ; $61db: $04
    ld a, [bc]                                    ; $61dc: $0a
    pop af                                        ; $61dd: $f1
    ld a, $04                                     ; $61de: $3e $04
    ld de, $0a03                                  ; $61e0: $11 $03 $0a
    ld hl, $1086                                  ; $61e3: $21 $86 $10
    rst $18                                       ; $61e6: $df
    ld c, d                                       ; $61e7: $4a
    dec b                                         ; $61e8: $05
    rst $18                                       ; $61e9: $df
    inc l                                         ; $61ea: $2c
    db $10                                        ; $61eb: $10
    pop af                                        ; $61ec: $f1
    ldh [$96], a                                  ; $61ed: $e0 $96
    ldh [rSVBK], a                                ; $61ef: $e0 $70
    ret                                           ; $61f1: $c9


    ldh a, [$96]                                  ; $61f2: $f0 $96
    push af                                       ; $61f4: $f5
    rst $18                                       ; $61f5: $df
    ld a, [hl+]                                   ; $61f6: $2a
    db $10                                        ; $61f7: $10
    ld a, $82                                     ; $61f8: $3e $82
    rst $18                                       ; $61fa: $df
    ld l, $10                                     ; $61fb: $2e $10
    rst $18                                       ; $61fd: $df
    inc l                                         ; $61fe: $2c
    db $10                                        ; $61ff: $10
    pop af                                        ; $6200: $f1
    ldh [$96], a                                  ; $6201: $e0 $96
    ldh [rSVBK], a                                ; $6203: $e0 $70
    ret                                           ; $6205: $c9


    ld h, $62                                     ; $6206: $26 $62
    ld h, e                                       ; $6208: $63
    ld h, d                                       ; $6209: $62
    nop                                           ; $620a: $00
    nop                                           ; $620b: $00
    nop                                           ; $620c: $00
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    nop                                           ; $620f: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    nop                                           ; $6216: $00
    nop                                           ; $6217: $00
    nop                                           ; $6218: $00
    nop                                           ; $6219: $00
    nop                                           ; $621a: $00
    nop                                           ; $621b: $00
    nop                                           ; $621c: $00
    nop                                           ; $621d: $00
    nop                                           ; $621e: $00
    nop                                           ; $621f: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    ldh a, [$96]                                  ; $6226: $f0 $96
    push af                                       ; $6228: $f5
    ld a, $06                                     ; $6229: $3e $06
    ldh [$96], a                                  ; $622b: $e0 $96
    ldh [rSVBK], a                                ; $622d: $e0 $70
    rst $18                                       ; $622f: $df
    ld a, [hl+]                                   ; $6230: $2a
    db $10                                        ; $6231: $10
    ld a, $04                                     ; $6232: $3e $04
    ld de, $0a03                                  ; $6234: $11 $03 $0a
    ld hl, $1088                                  ; $6237: $21 $88 $10
    rst $18                                       ; $623a: $df
    ld c, d                                       ; $623b: $4a
    dec b                                         ; $623c: $05
    ld a, $04                                     ; $623d: $3e $04
    ld de, $0a03                                  ; $623f: $11 $03 $0a
    ld hl, $1089                                  ; $6242: $21 $89 $10
    rst $18                                       ; $6245: $df
    ld c, d                                       ; $6246: $4a
    dec b                                         ; $6247: $05
    push af                                       ; $6248: $f5
    ld a, $3c                                     ; $6249: $3e $3c
    rst $18                                       ; $624b: $df
    inc b                                         ; $624c: $04
    ld a, [bc]                                    ; $624d: $0a
    pop af                                        ; $624e: $f1
    ld a, $04                                     ; $624f: $3e $04
    ld de, $0a03                                  ; $6251: $11 $03 $0a
    ld hl, $108a                                  ; $6254: $21 $8a $10
    rst $18                                       ; $6257: $df
    ld c, d                                       ; $6258: $4a
    dec b                                         ; $6259: $05
    rst $18                                       ; $625a: $df
    inc l                                         ; $625b: $2c
    db $10                                        ; $625c: $10
    pop af                                        ; $625d: $f1
    ldh [$96], a                                  ; $625e: $e0 $96
    ldh [rSVBK], a                                ; $6260: $e0 $70
    ret                                           ; $6262: $c9


    rst $18                                       ; $6263: $df
    ld a, [hl+]                                   ; $6264: $2a
    db $10                                        ; $6265: $10
    ld a, [$c834]                                 ; $6266: $fa $34 $c8
    or a                                          ; $6269: $b7
    jr nz, jr_031_6273                            ; $626a: $20 $07

    ld a, $09                                     ; $626c: $3e $09
    ld [$c961], a                                 ; $626e: $ea $61 $c9
    jr jr_031_6285                                ; $6271: $18 $12

jr_031_6273:
    call Call_031_6321                            ; $6273: $cd $21 $63
    ld [$c968], a                                 ; $6276: $ea $68 $c9
    rst $28                                       ; $6279: $ef
    ld h, b                                       ; $627a: $60
    inc c                                         ; $627b: $0c
    ld a, [$c8aa]                                 ; $627c: $fa $aa $c8
    or a                                          ; $627f: $b7
    jr z, jr_031_6285                             ; $6280: $28 $03

    rst $20                                       ; $6282: $e7
    ld h, b                                       ; $6283: $60
    inc c                                         ; $6284: $0c

jr_031_6285:
    ld a, $82                                     ; $6285: $3e $82
    rst $18                                       ; $6287: $df
    ld l, $10                                     ; $6288: $2e $10
    rst $18                                       ; $628a: $df
    inc l                                         ; $628b: $2c
    db $10                                        ; $628c: $10
    ret                                           ; $628d: $c9


Call_031_628e:
    rst $18                                       ; $628e: $df
    nop                                           ; $628f: $00
    ld a, [bc]                                    ; $6290: $0a
    ldh a, [$95]                                  ; $6291: $f0 $95
    ld b, a                                       ; $6293: $47
    ld a, $04                                     ; $6294: $3e $04
    ld de, $7cbe                                  ; $6296: $11 $be $7c
    rst $18                                       ; $6299: $df
    jr @+$0c                                      ; $629a: $18 $0a

    ld a, [$c296]                                 ; $629c: $fa $96 $c2
    ld b, a                                       ; $629f: $47
    ld a, $04                                     ; $62a0: $3e $04
    rst $18                                       ; $62a2: $df
    ld l, $0a                                     ; $62a3: $2e $0a
    ld c, $08                                     ; $62a5: $0e $08
    call Call_000_25af                            ; $62a7: $cd $af $25
    call Call_000_2625                            ; $62aa: $cd $25 $26
    push af                                       ; $62ad: $f5
    ld a, $1e                                     ; $62ae: $3e $1e
    rst $18                                       ; $62b0: $df
    inc b                                         ; $62b1: $04
    ld a, [bc]                                    ; $62b2: $0a
    pop af                                        ; $62b3: $f1
    ld a, [$c968]                                 ; $62b4: $fa $68 $c9
    or a                                          ; $62b7: $b7
    jr nz, jr_031_62e1                            ; $62b8: $20 $27

    ld a, $04                                     ; $62ba: $3e $04
    ld b, a                                       ; $62bc: $47
    ld a, $07                                     ; $62bd: $3e $07
    rst $18                                       ; $62bf: $df
    ld [hl-], a                                   ; $62c0: $32
    ld a, [bc]                                    ; $62c1: $0a
    ld a, $04                                     ; $62c2: $3e $04
    rst $18                                       ; $62c4: $df
    inc [hl]                                      ; $62c5: $34
    ld a, [bc]                                    ; $62c6: $0a
    push af                                       ; $62c7: $f5
    ld a, $1e                                     ; $62c8: $3e $1e
    rst $18                                       ; $62ca: $df
    inc b                                         ; $62cb: $04
    ld a, [bc]                                    ; $62cc: $0a
    pop af                                        ; $62cd: $f1
    ld hl, $108c                                  ; $62ce: $21 $8c $10
    rst $18                                       ; $62d1: $df
    ld c, $0a                                     ; $62d2: $0e $0a
    ld a, $04                                     ; $62d4: $3e $04
    rst $18                                       ; $62d6: $df
    ld [$e70a], sp                                ; $62d7: $08 $0a $e7
    ld b, b                                       ; $62da: $40
    inc c                                         ; $62db: $0c
    rst $28                                       ; $62dc: $ef
    ret nz                                        ; $62dd: $c0

    inc c                                         ; $62de: $0c
    jr @+$2c                                      ; $62df: $18 $2a

jr_031_62e1:
    cp $01                                        ; $62e1: $fe $01
    jr nz, jr_031_62f9                            ; $62e3: $20 $14

    push af                                       ; $62e5: $f5
    ld a, $1e                                     ; $62e6: $3e $1e
    rst $18                                       ; $62e8: $df
    inc b                                         ; $62e9: $04
    ld a, [bc]                                    ; $62ea: $0a
    pop af                                        ; $62eb: $f1
    ld hl, $108b                                  ; $62ec: $21 $8b $10
    rst $18                                       ; $62ef: $df
    ld c, $0a                                     ; $62f0: $0e $0a
    ld a, $04                                     ; $62f2: $3e $04
    rst $18                                       ; $62f4: $df
    ld [$180a], sp                                ; $62f5: $08 $0a $18
    ld [de], a                                    ; $62f8: $12

jr_031_62f9:
    push af                                       ; $62f9: $f5
    ld a, $1e                                     ; $62fa: $3e $1e
    rst $18                                       ; $62fc: $df
    inc b                                         ; $62fd: $04
    ld a, [bc]                                    ; $62fe: $0a
    pop af                                        ; $62ff: $f1
    ld hl, $108e                                  ; $6300: $21 $8e $10
    rst $18                                       ; $6303: $df
    ld c, $0a                                     ; $6304: $0e $0a
    ld a, $04                                     ; $6306: $3e $04
    rst $18                                       ; $6308: $df
    ld [$f00a], sp                                ; $6309: $08 $0a $f0
    sub l                                         ; $630c: $95
    ld b, a                                       ; $630d: $47
    ld a, $04                                     ; $630e: $3e $04
    ld de, $7d2d                                  ; $6310: $11 $2d $7d
    rst $18                                       ; $6313: $df
    jr jr_031_6320                                ; $6314: $18 $0a

    ld a, $04                                     ; $6316: $3e $04
    ld b, $00                                     ; $6318: $06 $00
    rst $18                                       ; $631a: $df
    inc l                                         ; $631b: $2c
    ld a, [bc]                                    ; $631c: $0a
    rst $18                                       ; $631d: $df
    ld [bc], a                                    ; $631e: $02
    ld a, [bc]                                    ; $631f: $0a

jr_031_6320:
    ret                                           ; $6320: $c9


Call_031_6321:
    ld a, $06                                     ; $6321: $3e $06
    ldh [$96], a                                  ; $6323: $e0 $96
    ldh [rSVBK], a                                ; $6325: $e0 $70
    rst $18                                       ; $6327: $df
    inc [hl]                                      ; $6328: $34
    db $10                                        ; $6329: $10
    cp $00                                        ; $632a: $fe $00
    jr nz, jr_031_6361                            ; $632c: $20 $33

    ld hl, $d401                                  ; $632e: $21 $01 $d4
    ld a, [hl+]                                   ; $6331: $2a
    ld b, [hl]                                    ; $6332: $46
    ld c, a                                       ; $6333: $4f
    ld hl, $d404                                  ; $6334: $21 $04 $d4
    ld a, [hl+]                                   ; $6337: $2a
    ld h, [hl]                                    ; $6338: $66
    ld l, a                                       ; $6339: $6f
    ld de, $2100                                  ; $633a: $11 $00 $21
    call Call_000_08ac                            ; $633d: $cd $ac $08
    bit 7, h                                      ; $6340: $cb $7c
    jr nz, jr_031_6352                            ; $6342: $20 $0e

    ld h, b                                       ; $6344: $60
    ld l, c                                       ; $6345: $69
    ld de, $1980                                  ; $6346: $11 $80 $19
    call Call_000_08ac                            ; $6349: $cd $ac $08
    bit 7, h                                      ; $634c: $cb $7c
    jr z, jr_031_6365                             ; $634e: $28 $15

    jr jr_031_635e                                ; $6350: $18 $0c

jr_031_6352:
    ld h, b                                       ; $6352: $60
    ld l, c                                       ; $6353: $69
    ld de, $2100                                  ; $6354: $11 $00 $21
    call Call_000_08ac                            ; $6357: $cd $ac $08
    bit 7, h                                      ; $635a: $cb $7c
    jr z, jr_031_6365                             ; $635c: $28 $07

jr_031_635e:
    xor a                                         ; $635e: $af
    jr jr_031_6367                                ; $635f: $18 $06

jr_031_6361:
    ld a, $01                                     ; $6361: $3e $01
    jr jr_031_6367                                ; $6363: $18 $02

jr_031_6365:
    ld a, $02                                     ; $6365: $3e $02

jr_031_6367:
    ret                                           ; $6367: $c9


Call_031_6368:
    ld hl, $0d12                                  ; $6368: $21 $12 $0d
    rst $18                                       ; $636b: $df
    ld c, $0a                                     ; $636c: $0e $0a
    call Call_031_639e                            ; $636e: $cd $9e $63
    ret                                           ; $6371: $c9


Call_031_6372:
    rst $18                                       ; $6372: $df
    nop                                           ; $6373: $00
    ld a, [bc]                                    ; $6374: $0a
    ldh a, [$95]                                  ; $6375: $f0 $95
    ld b, a                                       ; $6377: $47
    ld a, $04                                     ; $6378: $3e $04
    ld de, $7cbe                                  ; $637a: $11 $be $7c
    rst $18                                       ; $637d: $df
    jr @+$0c                                      ; $637e: $18 $0a

    ld a, [$c296]                                 ; $6380: $fa $96 $c2
    ld b, a                                       ; $6383: $47
    ld a, $04                                     ; $6384: $3e $04
    rst $18                                       ; $6386: $df
    ld l, $0a                                     ; $6387: $2e $0a
    ld c, $08                                     ; $6389: $0e $08
    call Call_000_25af                            ; $638b: $cd $af $25
    call Call_000_2625                            ; $638e: $cd $25 $26
    ld hl, $1087                                  ; $6391: $21 $87 $10
    rst $18                                       ; $6394: $df
    ld c, $0a                                     ; $6395: $0e $0a
    call Call_031_639e                            ; $6397: $cd $9e $63
    rst $18                                       ; $639a: $df
    ld [bc], a                                    ; $639b: $02
    ld a, [bc]                                    ; $639c: $0a
    ret                                           ; $639d: $c9


Call_031_639e:
    ld a, $04                                     ; $639e: $3e $04
    rst $18                                       ; $63a0: $df
    ld a, [bc]                                    ; $63a1: $0a
    ld a, [bc]                                    ; $63a2: $0a
    rst $18                                       ; $63a3: $df
    ld [de], a                                    ; $63a4: $12
    ld a, [bc]                                    ; $63a5: $0a
    rst $18                                       ; $63a6: $df
    inc c                                         ; $63a7: $0c
    ld a, [bc]                                    ; $63a8: $0a
    push af                                       ; $63a9: $f5
    ld a, $05                                     ; $63aa: $3e $05
    rst $18                                       ; $63ac: $df
    inc b                                         ; $63ad: $04
    ld a, [bc]                                    ; $63ae: $0a
    pop af                                        ; $63af: $f1
    and a                                         ; $63b0: $a7
    jr z, jr_031_63d2                             ; $63b1: $28 $1f

    ld hl, $108d                                  ; $63b3: $21 $8d $10
    rst $18                                       ; $63b6: $df
    ld c, $0a                                     ; $63b7: $0e $0a
    ld a, $04                                     ; $63b9: $3e $04
    rst $18                                       ; $63bb: $df
    ld [$f00a], sp                                ; $63bc: $08 $0a $f0
    sub l                                         ; $63bf: $95
    ld b, a                                       ; $63c0: $47
    ld a, $04                                     ; $63c1: $3e $04
    ld de, $7d2d                                  ; $63c3: $11 $2d $7d
    rst $18                                       ; $63c6: $df
    jr jr_031_63d3                                ; $63c7: $18 $0a

    ld a, $04                                     ; $63c9: $3e $04
    ld b, $00                                     ; $63cb: $06 $00
    rst $18                                       ; $63cd: $df
    inc l                                         ; $63ce: $2c
    ld a, [bc]                                    ; $63cf: $0a
    jr jr_031_6431                                ; $63d0: $18 $5f

jr_031_63d2:
    rst $20                                       ; $63d2: $e7

jr_031_63d3:
    ret nz                                        ; $63d3: $c0

    inc c                                         ; $63d4: $0c
    rst $18                                       ; $63d5: $df
    inc e                                         ; $63d6: $1c
    db $10                                        ; $63d7: $10
    rst $30                                       ; $63d8: $f7
    ld h, b                                       ; $63d9: $60
    dec d                                         ; $63da: $15
    jr nz, jr_031_63e2                            ; $63db: $20 $05

    ld a, $09                                     ; $63dd: $3e $09
    ld [$c82c], a                                 ; $63df: $ea $2c $c8

jr_031_63e2:
    ld a, $12                                     ; $63e2: $3e $12
    ld b, a                                       ; $63e4: $47
    ld a, $07                                     ; $63e5: $3e $07
    ld c, a                                       ; $63e7: $4f
    rst $18                                       ; $63e8: $df
    ld c, [hl]                                    ; $63e9: $4e
    ld a, [bc]                                    ; $63ea: $0a
    ld a, $06                                     ; $63eb: $3e $06
    ld [$c834], a                                 ; $63ed: $ea $34 $c8
    ld bc, $8000                                  ; $63f0: $01 $00 $80
    rst $18                                       ; $63f3: $df
    ld e, $02                                     ; $63f4: $1e $02
    ld bc, $ff01                                  ; $63f6: $01 $01 $ff
    rst $18                                       ; $63f9: $df
    ld e, $02                                     ; $63fa: $1e $02
    ld hl, $070d                                  ; $63fc: $21 $0d $07
    rst $18                                       ; $63ff: $df
    db $10                                        ; $6400: $10
    db $10                                        ; $6401: $10
    ld a, $00                                     ; $6402: $3e $00
    rst $18                                       ; $6404: $df
    ld e, $10                                     ; $6405: $1e $10
    ld hl, $1000                                  ; $6407: $21 $00 $10
    ld de, $2d80                                  ; $640a: $11 $80 $2d
    rst $18                                       ; $640d: $df
    jr nz, jr_031_6420                            ; $640e: $20 $10

    rst $18                                       ; $6410: $df
    inc h                                         ; $6411: $24
    db $10                                        ; $6412: $10
    ld e, $06                                     ; $6413: $1e $06
    ld bc, $e078                                  ; $6415: $01 $78 $e0
    rst $18                                       ; $6418: $df
    ld h, $10                                     ; $6419: $26 $10
    ld de, $4000                                  ; $641b: $11 $00 $40
    rst $18                                       ; $641e: $df
    ld [hl+], a                                   ; $641f: $22

jr_031_6420:
    db $10                                        ; $6420: $10
    ldh a, [$95]                                  ; $6421: $f0 $95
    ld hl, $6206                                  ; $6423: $21 $06 $62
    rst $18                                       ; $6426: $df
    ld a, [de]                                    ; $6427: $1a
    db $10                                        ; $6428: $10
    ld a, $01                                     ; $6429: $3e $01
    rst $18                                       ; $642b: $df
    ld [de], a                                    ; $642c: $12
    db $10                                        ; $642d: $10
    rst $18                                       ; $642e: $df
    jr nc, jr_031_6441                            ; $642f: $30 $10

jr_031_6431:
    ret                                           ; $6431: $c9


    pop bc                                        ; $6432: $c1
    ld e, e                                       ; $6433: $5b
    jp nz, Jump_000_005b                          ; $6434: $c2 $5b $00

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

jr_031_6441:
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    nop                                           ; $644c: $00
    nop                                           ; $644d: $00
    nop                                           ; $644e: $00
    nop                                           ; $644f: $00
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    ret                                           ; $6452: $c9


    rst $18                                       ; $6453: $df
    ld a, [hl+]                                   ; $6454: $2a
    db $10                                        ; $6455: $10
    ld a, $82                                     ; $6456: $3e $82
    rst $18                                       ; $6458: $df
    ld l, $10                                     ; $6459: $2e $10
    rst $18                                       ; $645b: $df
    inc l                                         ; $645c: $2c
    db $10                                        ; $645d: $10
    ret                                           ; $645e: $c9


    or d                                          ; $645f: $b2
    ld h, h                                       ; $6460: $64
    push af                                       ; $6461: $f5

jr_031_6462:
    ld h, h                                       ; $6462: $64
    ld l, l                                       ; $6463: $6d
    ld h, h                                       ; $6464: $64
    ld b, [hl]                                    ; $6465: $46
    ld h, l                                       ; $6466: $65
    or [hl]                                       ; $6467: $b6
    ld h, a                                       ; $6468: $67
    cp a                                          ; $6469: $bf
    ld h, a                                       ; $646a: $67
    ret z                                         ; $646b: $c8

    ld h, a                                       ; $646c: $67
    add hl, de                                    ; $646d: $19
    ld a, l                                       ; $646e: $7d
    nop                                           ; $646f: $00
    inc e                                         ; $6470: $1c
    ret nz                                        ; $6471: $c0

    add hl, sp                                    ; $6472: $39
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    ld bc, $be16                                  ; $6477: $01 $16 $be
    ld a, h                                       ; $647a: $7c
    nop                                           ; $647b: $00
    dec l                                         ; $647c: $2d
    nop                                           ; $647d: $00
    ld hl, $0000                                  ; $647e: $21 $00 $00
    nop                                           ; $6481: $00
    ret nz                                        ; $6482: $c0

    ld bc, $be16                                  ; $6483: $01 $16 $be
    ld a, h                                       ; $6486: $7c
    nop                                           ; $6487: $00
    inc d                                         ; $6488: $14
    nop                                           ; $6489: $00
    dec h                                         ; $648a: $25
    nop                                           ; $648b: $00
    nop                                           ; $648c: $00
    nop                                           ; $648d: $00
    ret nz                                        ; $648e: $c0

    ld bc, $240d                                  ; $648f: $01 $0d $24
    ld a, l                                       ; $6492: $7d
    nop                                           ; $6493: $00
    inc h                                         ; $6494: $24
    ret nz                                        ; $6495: $c0

    add hl, sp                                    ; $6496: $39
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    ld bc, $be0a                                  ; $649b: $01 $0a $be
    ld a, h                                       ; $649e: $7c
    nop                                           ; $649f: $00
    jr z, jr_031_6462                             ; $64a0: $28 $c0

    add hl, sp                                    ; $64a2: $39
    nop                                           ; $64a3: $00
    nop                                           ; $64a4: $00
    nop                                           ; $64a5: $00
    add b                                         ; $64a6: $80
    ld bc, $000e                                  ; $64a7: $01 $0e $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    nop                                           ; $64ac: $00
    nop                                           ; $64ad: $00
    nop                                           ; $64ae: $00
    nop                                           ; $64af: $00
    nop                                           ; $64b0: $00
    rst $38                                       ; $64b1: $ff
    ld bc, $00c0                                  ; $64b2: $01 $c0 $00
    dec de                                        ; $64b5: $1b
    nop                                           ; $64b6: $00
    dec a                                         ; $64b7: $3d
    ld [bc], a                                    ; $64b8: $02
    ld b, b                                       ; $64b9: $40
    nop                                           ; $64ba: $00
    dec e                                         ; $64bb: $1d
    nop                                           ; $64bc: $00
    inc sp                                        ; $64bd: $33
    inc b                                         ; $64be: $04
    add b                                         ; $64bf: $80
    nop                                           ; $64c0: $00
    cpl                                           ; $64c1: $2f
    nop                                           ; $64c2: $00
    ld hl, $0005                                  ; $64c3: $21 $05 $00
    nop                                           ; $64c6: $00
    ld [de], a                                    ; $64c7: $12
    nop                                           ; $64c8: $00
    dec h                                         ; $64c9: $25
    ld b, $80                                     ; $64ca: $06 $80
    nop                                           ; $64cc: $00
    cpl                                           ; $64cd: $2f
    nop                                           ; $64ce: $00
    ld hl, $0007                                  ; $64cf: $21 $07 $00
    nop                                           ; $64d2: $00
    ld [de], a                                    ; $64d3: $12
    nop                                           ; $64d4: $00
    dec h                                         ; $64d5: $25
    ld [$0080], sp                                ; $64d6: $08 $80 $00
    cpl                                           ; $64d9: $2f
    nop                                           ; $64da: $00
    ld hl, $0009                                  ; $64db: $21 $09 $00
    nop                                           ; $64de: $00
    ld [de], a                                    ; $64df: $12
    nop                                           ; $64e0: $00
    dec h                                         ; $64e1: $25
    ld a, [bc]                                    ; $64e2: $0a
    add b                                         ; $64e3: $80
    nop                                           ; $64e4: $00
    cpl                                           ; $64e5: $2f
    nop                                           ; $64e6: $00
    ld hl, $000b                                  ; $64e7: $21 $0b $00
    nop                                           ; $64ea: $00
    ld [de], a                                    ; $64eb: $12
    nop                                           ; $64ec: $00
    dec h                                         ; $64ed: $25
    ld h, e                                       ; $64ee: $63
    ld b, b                                       ; $64ef: $40
    nop                                           ; $64f0: $00
    dec de                                        ; $64f1: $1b
    nop                                           ; $64f2: $00
    add hl, hl                                    ; $64f3: $29
    rst $38                                       ; $64f4: $ff
    ld bc, $00ff                                  ; $64f5: $01 $ff $00
    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    nop                                           ; $64fa: $00
    dec bc                                        ; $64fb: $0b
    inc bc                                        ; $64fc: $03
    ld [bc], a                                    ; $64fd: $02
    rst $38                                       ; $64fe: $ff
    nop                                           ; $64ff: $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    inc c                                         ; $6503: $0c
    ld [bc], a                                    ; $6504: $02
    inc b                                         ; $6505: $04
    rst $38                                       ; $6506: $ff
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    dec d                                         ; $650b: $15
    inc b                                         ; $650c: $04
    dec b                                         ; $650d: $05
    rst $38                                       ; $650e: $ff
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    dec d                                         ; $6513: $15
    dec b                                         ; $6514: $05
    ld b, $ff                                     ; $6515: $06 $ff
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00
    dec d                                         ; $651b: $15
    ld b, $07                                     ; $651c: $06 $07
    rst $38                                       ; $651e: $ff
    nop                                           ; $651f: $00
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    dec d                                         ; $6523: $15
    rlca                                          ; $6524: $07
    ld [$00ff], sp                                ; $6525: $08 $ff $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    dec d                                         ; $652b: $15
    ld [$ff09], sp                                ; $652c: $08 $09 $ff
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    dec d                                         ; $6533: $15
    add hl, bc                                    ; $6534: $09
    ld a, [bc]                                    ; $6535: $0a
    rst $38                                       ; $6536: $ff
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653a: $00
    dec d                                         ; $653b: $15
    ld a, [bc]                                    ; $653c: $0a
    dec bc                                        ; $653d: $0b
    rst $38                                       ; $653e: $ff
    nop                                           ; $653f: $00
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    dec d                                         ; $6543: $15
    dec bc                                        ; $6544: $0b
    rst $38                                       ; $6545: $ff
    ld [bc], a                                    ; $6546: $02
    rst $38                                       ; $6547: $ff
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    ld l, a                                       ; $654a: $6f
    ld h, l                                       ; $654b: $65
    dec bc                                        ; $654c: $0b
    nop                                           ; $654d: $00
    inc bc                                        ; $654e: $03
    rst $38                                       ; $654f: $ff
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    cp b                                          ; $6552: $b8
    ld h, l                                       ; $6553: $65
    dec bc                                        ; $6554: $0b
    nop                                           ; $6555: $00
    inc b                                         ; $6556: $04
    rst $38                                       ; $6557: $ff
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    ld l, a                                       ; $655a: $6f
    ld h, [hl]                                    ; $655b: $66
    dec bc                                        ; $655c: $0b
    nop                                           ; $655d: $00
    dec b                                         ; $655e: $05
    rst $38                                       ; $655f: $ff
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    db $10                                        ; $6562: $10
    db $10                                        ; $6563: $10
    dec bc                                        ; $6564: $0b
    nop                                           ; $6565: $00
    ld b, $ff                                     ; $6566: $06 $ff
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    ld de, $0b10                                  ; $656a: $11 $10 $0b
    nop                                           ; $656d: $00
    rst $38                                       ; $656e: $ff
    ld hl, $100d                                  ; $656f: $21 $0d $10
    rst $18                                       ; $6572: $df
    ld c, $0a                                     ; $6573: $0e $0a
    ld a, $02                                     ; $6575: $3e $02
    rst $18                                       ; $6577: $df
    ld a, [bc]                                    ; $6578: $0a
    ld a, [bc]                                    ; $6579: $0a
    push af                                       ; $657a: $f5
    ld a, $05                                     ; $657b: $3e $05
    rst $18                                       ; $657d: $df
    inc b                                         ; $657e: $04
    ld a, [bc]                                    ; $657f: $0a
    pop af                                        ; $6580: $f1
    rst $18                                       ; $6581: $df
    ld [de], a                                    ; $6582: $12
    ld a, [bc]                                    ; $6583: $0a
    rst $18                                       ; $6584: $df
    inc c                                         ; $6585: $0c
    ld a, [bc]                                    ; $6586: $0a
    push af                                       ; $6587: $f5
    ld a, $05                                     ; $6588: $3e $05
    rst $18                                       ; $658a: $df
    inc b                                         ; $658b: $04
    ld a, [bc]                                    ; $658c: $0a
    pop af                                        ; $658d: $f1
    and a                                         ; $658e: $a7
    jr nz, jr_031_6597                            ; $658f: $20 $06

    ld a, $02                                     ; $6591: $3e $02
    rst $18                                       ; $6593: $df
    ld [$c90a], sp                                ; $6594: $08 $0a $c9

jr_031_6597:
    rst $18                                       ; $6597: $df
    db $10                                        ; $6598: $10
    ld a, [bc]                                    ; $6599: $0a
    ld a, $02                                     ; $659a: $3e $02
    rst $18                                       ; $659c: $df
    ld [$c90a], sp                                ; $659d: $08 $0a $c9
    ld hl, $0d16                                  ; $65a0: $21 $16 $0d
    rst $18                                       ; $65a3: $df
    ld c, $0a                                     ; $65a4: $0e $0a
    ld a, $03                                     ; $65a6: $3e $03
    rst $18                                       ; $65a8: $df
    ld [$c90a], sp                                ; $65a9: $08 $0a $c9
    ld hl, $0d16                                  ; $65ac: $21 $16 $0d
    rst $18                                       ; $65af: $df
    ld c, $0a                                     ; $65b0: $0e $0a
    ld a, $04                                     ; $65b2: $3e $04
    rst $18                                       ; $65b4: $df
    ld [$c90a], sp                                ; $65b5: $08 $0a $c9
    rst $30                                       ; $65b8: $f7
    and b                                         ; $65b9: $a0
    inc c                                         ; $65ba: $0c
    jr z, jr_031_65c1                             ; $65bb: $28 $04

    call Call_031_6bc1                            ; $65bd: $cd $c1 $6b
    ret                                           ; $65c0: $c9


jr_031_65c1:
    rst $30                                       ; $65c1: $f7
    nop                                           ; $65c2: $00
    inc e                                         ; $65c3: $1c
    jr z, jr_031_65ce                             ; $65c4: $28 $08

    ld hl, $1015                                  ; $65c6: $21 $15 $10
    rst $18                                       ; $65c9: $df
    ld c, $0a                                     ; $65ca: $0e $0a
    jr jr_031_65d4                                ; $65cc: $18 $06

jr_031_65ce:
    ld hl, $108f                                  ; $65ce: $21 $8f $10
    rst $18                                       ; $65d1: $df
    ld c, $0a                                     ; $65d2: $0e $0a

jr_031_65d4:
    ld a, $03                                     ; $65d4: $3e $03
    rst $18                                       ; $65d6: $df
    ld a, [bc]                                    ; $65d7: $0a
    ld a, [bc]                                    ; $65d8: $0a
    rst $18                                       ; $65d9: $df
    ld [de], a                                    ; $65da: $12
    ld a, [bc]                                    ; $65db: $0a
    rst $18                                       ; $65dc: $df
    inc c                                         ; $65dd: $0c
    ld a, [bc]                                    ; $65de: $0a
    push af                                       ; $65df: $f5
    ld a, $05                                     ; $65e0: $3e $05
    rst $18                                       ; $65e2: $df
    inc b                                         ; $65e3: $04
    ld a, [bc]                                    ; $65e4: $0a
    pop af                                        ; $65e5: $f1
    and a                                         ; $65e6: $a7
    jr z, jr_031_65f1                             ; $65e7: $28 $08

    ld a, $03                                     ; $65e9: $3e $03
    rst $18                                       ; $65eb: $df
    ld [$c30a], sp                                ; $65ec: $08 $0a $c3
    ld l, [hl]                                    ; $65ef: $6e
    ld h, [hl]                                    ; $65f0: $66

jr_031_65f1:
    rst $18                                       ; $65f1: $df
    db $10                                        ; $65f2: $10
    ld a, [bc]                                    ; $65f3: $0a
    ld a, $03                                     ; $65f4: $3e $03
    rst $18                                       ; $65f6: $df
    ld [$df0a], sp                                ; $65f7: $08 $0a $df
    inc e                                         ; $65fa: $1c
    db $10                                        ; $65fb: $10
    ld a, $07                                     ; $65fc: $3e $07
    ld [$c82c], a                                 ; $65fe: $ea $2c $c8
    ld a, $15                                     ; $6601: $3e $15
    ld b, a                                       ; $6603: $47
    ld a, $04                                     ; $6604: $3e $04
    ld c, a                                       ; $6606: $4f
    rst $18                                       ; $6607: $df
    ld c, [hl]                                    ; $6608: $4e
    ld a, [bc]                                    ; $6609: $0a
    ld a, $06                                     ; $660a: $3e $06
    ld [$c834], a                                 ; $660c: $ea $34 $c8
    ld hl, $68d9                                  ; $660f: $21 $d9 $68
    ld de, $c600                                  ; $6612: $11 $00 $c6
    ld c, $04                                     ; $6615: $0e $04
    call Call_000_03eb                            ; $6617: $cd $eb $03
    ld bc, $4f00                                  ; $661a: $01 $00 $4f
    rst $18                                       ; $661d: $df
    ld e, $02                                     ; $661e: $1e $02
    ld bc, $ff01                                  ; $6620: $01 $01 $ff
    rst $18                                       ; $6623: $df
    ld e, $02                                     ; $6624: $1e $02
    ld hl, $000a                                  ; $6626: $21 $0a $00
    rst $18                                       ; $6629: $df
    db $10                                        ; $662a: $10
    db $10                                        ; $662b: $10
    ld a, $00                                     ; $662c: $3e $00
    rst $18                                       ; $662e: $df
    ld e, $10                                     ; $662f: $1e $10
    ld hl, $2c60                                  ; $6631: $21 $60 $2c
    ld de, $2120                                  ; $6634: $11 $20 $21
    rst $18                                       ; $6637: $df
    jr nz, jr_031_664a                            ; $6638: $20 $10

    rst $18                                       ; $663a: $df
    inc h                                         ; $663b: $24
    db $10                                        ; $663c: $10
    rst $30                                       ; $663d: $f7
    nop                                           ; $663e: $00
    inc e                                         ; $663f: $1c
    jr z, jr_031_664a                             ; $6640: $28 $08

    ld de, $6000                                  ; $6642: $11 $00 $60
    rst $18                                       ; $6645: $df
    ld [hl+], a                                   ; $6646: $22
    db $10                                        ; $6647: $10
    jr jr_031_6650                                ; $6648: $18 $06

jr_031_664a:
    ld de, $c000                                  ; $664a: $11 $00 $c0
    rst $18                                       ; $664d: $df
    ld [hl+], a                                   ; $664e: $22
    db $10                                        ; $664f: $10

jr_031_6650:
    ldh a, [$95]                                  ; $6650: $f0 $95
    ld hl, $68e9                                  ; $6652: $21 $e9 $68
    rst $18                                       ; $6655: $df
    ld a, [de]                                    ; $6656: $1a
    db $10                                        ; $6657: $10
    ld a, $03                                     ; $6658: $3e $03
    ld [$c89d], a                                 ; $665a: $ea $9d $c8
    ld hl, $c89a                                  ; $665d: $21 $9a $c8
    ld de, $00f5                                  ; $6660: $11 $f5 $00
    ld a, e                                       ; $6663: $7b
    ld [hl+], a                                   ; $6664: $22
    ld [hl], d                                    ; $6665: $72
    ld a, $01                                     ; $6666: $3e $01
    rst $18                                       ; $6668: $df
    ld [de], a                                    ; $6669: $12
    db $10                                        ; $666a: $10
    rst $18                                       ; $666b: $df
    jr nc, @+$12                                  ; $666c: $30 $10

    ret                                           ; $666e: $c9


    rst $30                                       ; $666f: $f7
    ret nz                                        ; $6670: $c0

    inc c                                         ; $6671: $0c
    jr z, jr_031_6678                             ; $6672: $28 $04

    call Call_031_6f64                            ; $6674: $cd $64 $6f
    ret                                           ; $6677: $c9


jr_031_6678:
    rst $30                                       ; $6678: $f7
    jr nz, @+$1e                                  ; $6679: $20 $1c

    jr nz, jr_031_66a0                            ; $667b: $20 $23

    ld hl, $109f                                  ; $667d: $21 $9f $10
    rst $18                                       ; $6680: $df
    ld c, $0a                                     ; $6681: $0e $0a
    ld a, $04                                     ; $6683: $3e $04
    rst $18                                       ; $6685: $df
    ld a, [bc]                                    ; $6686: $0a
    ld a, [bc]                                    ; $6687: $0a
    rst $18                                       ; $6688: $df
    ld [de], a                                    ; $6689: $12
    ld a, [bc]                                    ; $668a: $0a
    rst $18                                       ; $668b: $df
    inc c                                         ; $668c: $0c
    ld a, [bc]                                    ; $668d: $0a
    push af                                       ; $668e: $f5
    ld a, $05                                     ; $668f: $3e $05
    rst $18                                       ; $6691: $df
    inc b                                         ; $6692: $04
    ld a, [bc]                                    ; $6693: $0a
    pop af                                        ; $6694: $f1
    and a                                         ; $6695: $a7
    jr z, jr_031_66de                             ; $6696: $28 $46

    ld a, $04                                     ; $6698: $3e $04
    rst $18                                       ; $669a: $df
    ld [$c30a], sp                                ; $669b: $08 $0a $c3
    ld h, e                                       ; $669e: $63
    ld h, a                                       ; $669f: $67

jr_031_66a0:
    ld hl, $1020                                  ; $66a0: $21 $20 $10
    rst $18                                       ; $66a3: $df
    ld c, $0a                                     ; $66a4: $0e $0a
    ld a, $04                                     ; $66a6: $3e $04
    rst $18                                       ; $66a8: $df
    ld a, [bc]                                    ; $66a9: $0a
    ld a, [bc]                                    ; $66aa: $0a
    rst $18                                       ; $66ab: $df
    ld [de], a                                    ; $66ac: $12
    ld a, [bc]                                    ; $66ad: $0a
    rst $18                                       ; $66ae: $df
    inc c                                         ; $66af: $0c
    ld a, [bc]                                    ; $66b0: $0a
    push af                                       ; $66b1: $f5
    ld a, $05                                     ; $66b2: $3e $05
    rst $18                                       ; $66b4: $df
    inc b                                         ; $66b5: $04
    ld a, [bc]                                    ; $66b6: $0a
    pop af                                        ; $66b7: $f1
    and a                                         ; $66b8: $a7
    jr z, jr_031_66de                             ; $66b9: $28 $23

    rst $30                                       ; $66bb: $f7
    ld h, b                                       ; $66bc: $60
    ld de, $0820                                  ; $66bd: $11 $20 $08
    ld a, $04                                     ; $66c0: $3e $04
    rst $18                                       ; $66c2: $df
    ld [$c30a], sp                                ; $66c3: $08 $0a $c3
    ld h, e                                       ; $66c6: $63
    ld h, a                                       ; $66c7: $67
    ld hl, $1028                                  ; $66c8: $21 $28 $10
    rst $18                                       ; $66cb: $df
    ld c, $0a                                     ; $66cc: $0e $0a
    ld a, $04                                     ; $66ce: $3e $04
    rst $18                                       ; $66d0: $df
    ld [$c30a], sp                                ; $66d1: $08 $0a $c3
    ld h, e                                       ; $66d4: $63
    ld h, a                                       ; $66d5: $67
    ld a, $04                                     ; $66d6: $3e $04
    rst $18                                       ; $66d8: $df
    ld [$c30a], sp                                ; $66d9: $08 $0a $c3
    ld h, e                                       ; $66dc: $63
    ld h, a                                       ; $66dd: $67

jr_031_66de:
    rst $30                                       ; $66de: $f7
    jr nz, @+$1e                                  ; $66df: $20 $1c

    jr nz, @+$0a                                  ; $66e1: $20 $08

    rst $18                                       ; $66e3: $df
    db $10                                        ; $66e4: $10
    ld a, [bc]                                    ; $66e5: $0a
    ld a, $04                                     ; $66e6: $3e $04
    rst $18                                       ; $66e8: $df
    ld [$df0a], sp                                ; $66e9: $08 $0a $df
    inc e                                         ; $66ec: $1c
    db $10                                        ; $66ed: $10
    ld a, $07                                     ; $66ee: $3e $07
    ld [$c82c], a                                 ; $66f0: $ea $2c $c8
    ld a, $15                                     ; $66f3: $3e $15
    ld b, a                                       ; $66f5: $47
    ld a, $05                                     ; $66f6: $3e $05
    ld c, a                                       ; $66f8: $4f
    rst $18                                       ; $66f9: $df
    ld c, [hl]                                    ; $66fa: $4e
    ld a, [bc]                                    ; $66fb: $0a
    ld a, $06                                     ; $66fc: $3e $06
    ld [$c834], a                                 ; $66fe: $ea $34 $c8
    ld hl, $6ca6                                  ; $6701: $21 $a6 $6c
    ld de, $c600                                  ; $6704: $11 $00 $c6
    ld c, $04                                     ; $6707: $0e $04
    call Call_000_03eb                            ; $6709: $cd $eb $03
    ld bc, $4e00                                  ; $670c: $01 $00 $4e
    rst $18                                       ; $670f: $df
    ld e, $02                                     ; $6710: $1e $02
    ld bc, $ff01                                  ; $6712: $01 $01 $ff
    rst $18                                       ; $6715: $df
    ld e, $02                                     ; $6716: $1e $02
    ld hl, $0710                                  ; $6718: $21 $10 $07
    rst $18                                       ; $671b: $df
    db $10                                        ; $671c: $10
    db $10                                        ; $671d: $10
    ld a, $00                                     ; $671e: $3e $00
    rst $18                                       ; $6720: $df
    ld e, $10                                     ; $6721: $1e $10
    ld hl, $1500                                  ; $6723: $21 $00 $15
    ld de, $2540                                  ; $6726: $11 $40 $25
    rst $18                                       ; $6729: $df
    jr nz, @+$12                                  ; $672a: $20 $10

    ld a, $06                                     ; $672c: $3e $06
    ldh [$96], a                                  ; $672e: $e0 $96
    ldh [rSVBK], a                                ; $6730: $e0 $70
    ld hl, $d4e3                                  ; $6732: $21 $e3 $d4
    ld [hl], $21                                  ; $6735: $36 $21
    ld hl, $c89a                                  ; $6737: $21 $9a $c8
    ld de, $00e6                                  ; $673a: $11 $e6 $00
    ld a, e                                       ; $673d: $7b
    ld [hl+], a                                   ; $673e: $22
    ld [hl], d                                    ; $673f: $72
    rst $30                                       ; $6740: $f7
    jr nz, jr_031_675f                            ; $6741: $20 $1c

    jr z, jr_031_674d                             ; $6743: $28 $08

    ld de, $0004                                  ; $6745: $11 $04 $00
    rst $18                                       ; $6748: $df
    ld [hl+], a                                   ; $6749: $22
    db $10                                        ; $674a: $10
    jr jr_031_6753                                ; $674b: $18 $06

jr_031_674d:
    ld de, $c000                                  ; $674d: $11 $00 $c0
    rst $18                                       ; $6750: $df
    ld [hl+], a                                   ; $6751: $22
    db $10                                        ; $6752: $10

jr_031_6753:
    ldh a, [$95]                                  ; $6753: $f0 $95
    ld hl, $6cb6                                  ; $6755: $21 $b6 $6c
    rst $18                                       ; $6758: $df
    ld a, [de]                                    ; $6759: $1a
    db $10                                        ; $675a: $10
    ld a, $01                                     ; $675b: $3e $01
    rst $18                                       ; $675d: $df
    ld [de], a                                    ; $675e: $12

jr_031_675f:
    db $10                                        ; $675f: $10
    rst $18                                       ; $6760: $df
    jr nc, jr_031_6773                            ; $6761: $30 $10

    ret                                           ; $6763: $c9


    ld [bc], a                                    ; $6764: $02
    rst $38                                       ; $6765: $ff
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    ld [de], a                                    ; $6768: $12
    db $10                                        ; $6769: $10
    dec bc                                        ; $676a: $0b
    nop                                           ; $676b: $00
    inc bc                                        ; $676c: $03
    rst $38                                       ; $676d: $ff
    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    cp b                                          ; $6770: $b8
    ld h, l                                       ; $6771: $65
    dec bc                                        ; $6772: $0b

jr_031_6773:
    nop                                           ; $6773: $00
    inc b                                         ; $6774: $04
    rst $38                                       ; $6775: $ff
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
    ld l, a                                       ; $6778: $6f
    ld h, [hl]                                    ; $6779: $66
    dec bc                                        ; $677a: $0b
    nop                                           ; $677b: $00
    dec b                                         ; $677c: $05
    rst $38                                       ; $677d: $ff
    nop                                           ; $677e: $00
    nop                                           ; $677f: $00
    inc de                                        ; $6780: $13
    db $10                                        ; $6781: $10
    dec bc                                        ; $6782: $0b
    nop                                           ; $6783: $00
    ld b, $ff                                     ; $6784: $06 $ff
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    inc d                                         ; $6788: $14
    db $10                                        ; $6789: $10
    inc bc                                        ; $678a: $03
    nop                                           ; $678b: $00
    rst $38                                       ; $678c: $ff
    ld [bc], a                                    ; $678d: $02
    rst $38                                       ; $678e: $ff
    nop                                           ; $678f: $00
    nop                                           ; $6790: $00
    ld a, [hl+]                                   ; $6791: $2a
    db $10                                        ; $6792: $10
    dec bc                                        ; $6793: $0b
    nop                                           ; $6794: $00
    inc bc                                        ; $6795: $03
    rst $38                                       ; $6796: $ff
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    cp b                                          ; $6799: $b8
    ld h, l                                       ; $679a: $65
    dec bc                                        ; $679b: $0b
    nop                                           ; $679c: $00
    inc b                                         ; $679d: $04
    rst $38                                       ; $679e: $ff
    nop                                           ; $679f: $00
    nop                                           ; $67a0: $00
    ld l, a                                       ; $67a1: $6f
    ld h, [hl]                                    ; $67a2: $66
    dec bc                                        ; $67a3: $0b
    nop                                           ; $67a4: $00
    dec b                                         ; $67a5: $05
    rst $38                                       ; $67a6: $ff
    nop                                           ; $67a7: $00
    nop                                           ; $67a8: $00
    dec hl                                        ; $67a9: $2b
    db $10                                        ; $67aa: $10
    dec bc                                        ; $67ab: $0b
    nop                                           ; $67ac: $00
    ld b, $ff                                     ; $67ad: $06 $ff
    nop                                           ; $67af: $00
    nop                                           ; $67b0: $00
    inc l                                         ; $67b1: $2c
    db $10                                        ; $67b2: $10
    inc bc                                        ; $67b3: $03
    nop                                           ; $67b4: $00
    rst $38                                       ; $67b5: $ff
    ld bc, $00ff                                  ; $67b6: $01 $ff $00
    nop                                           ; $67b9: $00
    jr @+$7f                                      ; $67ba: $18 $7d

    ld b, $00                                     ; $67bc: $06 $00
    rst $38                                       ; $67be: $ff
    rrca                                          ; $67bf: $0f
    rst $38                                       ; $67c0: $ff
    nop                                           ; $67c1: $00
    nop                                           ; $67c2: $00
    db $f4                                        ; $67c3: $f4
    ld d, c                                       ; $67c4: $51
    ld bc, $ff00                                  ; $67c5: $01 $00 $ff
    call Call_031_7051                            ; $67c8: $cd $51 $70
    rst $30                                       ; $67cb: $f7
    ld h, b                                       ; $67cc: $60
    ld de, $0b28                                  ; $67cd: $11 $28 $0b
    ld hl, $678d                                  ; $67d0: $21 $8d $67
    ld de, $000c                                  ; $67d3: $11 $0c $00
    rst $18                                       ; $67d6: $df
    ld c, h                                       ; $67d7: $4c
    ld a, [bc]                                    ; $67d8: $0a
    jr jr_031_67e9                                ; $67d9: $18 $0e

    rst $30                                       ; $67db: $f7
    ld h, b                                       ; $67dc: $60
    ld c, $28                                     ; $67dd: $0e $28
    add hl, bc                                    ; $67df: $09
    ld hl, $6764                                  ; $67e0: $21 $64 $67
    ld de, $000c                                  ; $67e3: $11 $0c $00
    rst $18                                       ; $67e6: $df
    ld c, h                                       ; $67e7: $4c
    ld a, [bc]                                    ; $67e8: $0a

jr_031_67e9:
    ld a, [$c46a]                                 ; $67e9: $fa $6a $c4
    cp $01                                        ; $67ec: $fe $01
    jr z, jr_031_67f8                             ; $67ee: $28 $08

    push af                                       ; $67f0: $f5
    xor a                                         ; $67f1: $af
    ld hl, $c4b4                                  ; $67f2: $21 $b4 $c4
    ld [hl+], a                                   ; $67f5: $22
    ld [hl+], a                                   ; $67f6: $22
    pop af                                        ; $67f7: $f1

jr_031_67f8:
    cp $04                                        ; $67f8: $fe $04
    jr nz, jr_031_6800                            ; $67fa: $20 $04

    call Call_031_6bcb                            ; $67fc: $cd $cb $6b
    ret                                           ; $67ff: $c9


jr_031_6800:
    cp $05                                        ; $6800: $fe $05
    jr nz, jr_031_6808                            ; $6802: $20 $04

    call Call_031_6f6e                            ; $6804: $cd $6e $6f
    ret                                           ; $6807: $c9


jr_031_6808:
    cp $06                                        ; $6808: $fe $06
    jr nz, jr_031_6863                            ; $680a: $20 $57

    rst $30                                       ; $680c: $f7
    nop                                           ; $680d: $00
    inc e                                         ; $680e: $1c
    jr z, jr_031_683c                             ; $680f: $28 $2b

    call Call_031_6ae3                            ; $6811: $cd $e3 $6a
    rst $30                                       ; $6814: $f7
    ld b, b                                       ; $6815: $40
    inc c                                         ; $6816: $0c
    ret z                                         ; $6817: $c8

    rst $28                                       ; $6818: $ef
    ld b, b                                       ; $6819: $40
    inc c                                         ; $681a: $0c
    rst $30                                       ; $681b: $f7
    ret nz                                        ; $681c: $c0

    dec de                                        ; $681d: $1b
    ret nz                                        ; $681e: $c0

    call Call_000_2ed5                            ; $681f: $cd $d5 $2e
    ld e, $e7                                     ; $6822: $1e $e7
    ret nz                                        ; $6824: $c0

    dec de                                        ; $6825: $1b
    ld de, $0032                                  ; $6826: $11 $32 $00
    call Call_031_7da4                            ; $6829: $cd $a4 $7d
    ld b, $00                                     ; $682c: $06 $00
    ld c, $fa                                     ; $682e: $0e $fa
    rst $18                                       ; $6830: $df
    ld c, [hl]                                    ; $6831: $4e
    ld a, [bc]                                    ; $6832: $0a
    rst $18                                       ; $6833: $df
    inc [hl]                                      ; $6834: $34
    ld [bc], a                                    ; $6835: $02
    ld a, $0a                                     ; $6836: $3e $0a
    ld [$c441], a                                 ; $6838: $ea $41 $c4
    ret                                           ; $683b: $c9


jr_031_683c:
    call Call_031_6a56                            ; $683c: $cd $56 $6a
    rst $30                                       ; $683f: $f7
    ld b, b                                       ; $6840: $40
    inc c                                         ; $6841: $0c
    ret z                                         ; $6842: $c8

    rst $28                                       ; $6843: $ef
    ld b, b                                       ; $6844: $40
    inc c                                         ; $6845: $0c
    rst $30                                       ; $6846: $f7
    ret nz                                        ; $6847: $c0

    dec d                                         ; $6848: $15
    ret nz                                        ; $6849: $c0

    rst $20                                       ; $684a: $e7
    ret nz                                        ; $684b: $c0

    dec d                                         ; $684c: $15
    ld de, $0032                                  ; $684d: $11 $32 $00
    call Call_031_7da4                            ; $6850: $cd $a4 $7d
    ld b, $00                                     ; $6853: $06 $00
    ld c, $fa                                     ; $6855: $0e $fa
    rst $18                                       ; $6857: $df
    ld c, [hl]                                    ; $6858: $4e
    ld a, [bc]                                    ; $6859: $0a
    rst $18                                       ; $685a: $df
    inc [hl]                                      ; $685b: $34
    ld [bc], a                                    ; $685c: $02
    ld a, $08                                     ; $685d: $3e $08
    ld [$c441], a                                 ; $685f: $ea $41 $c4
    ret                                           ; $6862: $c9


jr_031_6863:
    cp $07                                        ; $6863: $fe $07
    jr nz, jr_031_68be                            ; $6865: $20 $57

    rst $30                                       ; $6867: $f7
    jr nz, @+$1e                                  ; $6868: $20 $1c

    jr z, jr_031_6893                             ; $686a: $28 $27

    call Call_031_6e9d                            ; $686c: $cd $9d $6e
    rst $30                                       ; $686f: $f7
    ld b, b                                       ; $6870: $40
    inc c                                         ; $6871: $0c
    ret z                                         ; $6872: $c8

    rst $28                                       ; $6873: $ef
    ld b, b                                       ; $6874: $40
    inc c                                         ; $6875: $0c
    rst $30                                       ; $6876: $f7
    ldh [rNR31], a                                ; $6877: $e0 $1b
    ret nz                                        ; $6879: $c0

    rst $20                                       ; $687a: $e7
    ldh [rNR31], a                                ; $687b: $e0 $1b
    ld de, $0032                                  ; $687d: $11 $32 $00
    call Call_031_7da4                            ; $6880: $cd $a4 $7d
    ld b, $00                                     ; $6883: $06 $00
    ld c, $fa                                     ; $6885: $0e $fa
    rst $18                                       ; $6887: $df
    ld c, [hl]                                    ; $6888: $4e
    ld a, [bc]                                    ; $6889: $0a
    rst $18                                       ; $688a: $df
    inc [hl]                                      ; $688b: $34
    ld [bc], a                                    ; $688c: $02
    ld a, $0b                                     ; $688d: $3e $0b
    ld [$c441], a                                 ; $688f: $ea $41 $c4
    ret                                           ; $6892: $c9


jr_031_6893:
    call Call_031_6df8                            ; $6893: $cd $f8 $6d
    rst $30                                       ; $6896: $f7
    ld b, b                                       ; $6897: $40
    inc c                                         ; $6898: $0c
    ret z                                         ; $6899: $c8

    rst $28                                       ; $689a: $ef
    ld b, b                                       ; $689b: $40
    inc c                                         ; $689c: $0c
    rst $30                                       ; $689d: $f7
    ldh [$15], a                                  ; $689e: $e0 $15
    ret nz                                        ; $68a0: $c0

    call Call_000_2ed5                            ; $68a1: $cd $d5 $2e
    ld e, $e7                                     ; $68a4: $1e $e7
    ldh [$15], a                                  ; $68a6: $e0 $15
    ld de, $0032                                  ; $68a8: $11 $32 $00
    call Call_031_7da4                            ; $68ab: $cd $a4 $7d
    ld b, $00                                     ; $68ae: $06 $00
    ld c, $fa                                     ; $68b0: $0e $fa
    rst $18                                       ; $68b2: $df
    ld c, [hl]                                    ; $68b3: $4e
    ld a, [bc]                                    ; $68b4: $0a
    rst $18                                       ; $68b5: $df
    inc [hl]                                      ; $68b6: $34
    ld [bc], a                                    ; $68b7: $02
    ld a, $09                                     ; $68b8: $3e $09
    ld [$c441], a                                 ; $68ba: $ea $41 $c4
    ret                                           ; $68bd: $c9


jr_031_68be:
    cp $0a                                        ; $68be: $fe $0a
    jr nz, jr_031_68c6                            ; $68c0: $20 $04

    call Call_031_6b5a                            ; $68c2: $cd $5a $6b
    ret                                           ; $68c5: $c9


jr_031_68c6:
    cp $0b                                        ; $68c6: $fe $0b
    jr nz, jr_031_68ce                            ; $68c8: $20 $04

    call Call_031_6f14                            ; $68ca: $cd $14 $6f
    ret                                           ; $68cd: $c9


jr_031_68ce:
    cp $fa                                        ; $68ce: $fe $fa
    ret nz                                        ; $68d0: $c0

    rst $30                                       ; $68d1: $f7
    add b                                         ; $68d2: $80
    inc c                                         ; $68d3: $0c
    ret z                                         ; $68d4: $c8

    rst $28                                       ; $68d5: $ef
    add b                                         ; $68d6: $80
    inc c                                         ; $68d7: $0c
    ret                                           ; $68d8: $c9


    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    dec l                                         ; $68db: $2d
    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    ld hl, $b5af                                  ; $68de: $21 $af $b5
    inc bc                                        ; $68e1: $03
    nop                                           ; $68e2: $00
    inc a                                         ; $68e3: $3c
    nop                                           ; $68e4: $00
    sub c                                         ; $68e5: $91
    nop                                           ; $68e6: $00
    nop                                           ; $68e7: $00
    nop                                           ; $68e8: $00
    add hl, bc                                    ; $68e9: $09
    ld l, c                                       ; $68ea: $69
    ld a, l                                       ; $68eb: $7d
    ld l, c                                       ; $68ec: $69
    nop                                           ; $68ed: $00
    nop                                           ; $68ee: $00
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    nop                                           ; $68f4: $00
    nop                                           ; $68f5: $00
    nop                                           ; $68f6: $00
    nop                                           ; $68f7: $00
    nop                                           ; $68f8: $00
    nop                                           ; $68f9: $00
    nop                                           ; $68fa: $00
    nop                                           ; $68fb: $00
    nop                                           ; $68fc: $00
    nop                                           ; $68fd: $00
    nop                                           ; $68fe: $00
    nop                                           ; $68ff: $00
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    call Call_031_7051                            ; $6909: $cd $51 $70
    ldh a, [$96]                                  ; $690c: $f0 $96
    push af                                       ; $690e: $f5
    ld a, $06                                     ; $690f: $3e $06
    ldh [$96], a                                  ; $6911: $e0 $96
    ldh [rSVBK], a                                ; $6913: $e0 $70
    rst $18                                       ; $6915: $df
    ld a, [hl+]                                   ; $6916: $2a
    db $10                                        ; $6917: $10
    rst $30                                       ; $6918: $f7
    nop                                           ; $6919: $00
    inc e                                         ; $691a: $1c
    jr z, jr_031_694c                             ; $691b: $28 $2f

    rst $30                                       ; $691d: $f7
    and b                                         ; $691e: $a0
    inc c                                         ; $691f: $0c
    jr nz, jr_031_6974                            ; $6920: $20 $52

    ld a, $03                                     ; $6922: $3e $03
    ld de, $0a03                                  ; $6924: $11 $03 $0a
    ld hl, $1018                                  ; $6927: $21 $18 $10
    rst $18                                       ; $692a: $df
    ld c, d                                       ; $692b: $4a
    dec b                                         ; $692c: $05
    push af                                       ; $692d: $f5
    ld a, $32                                     ; $692e: $3e $32
    rst $18                                       ; $6930: $df
    inc b                                         ; $6931: $04
    ld a, [bc]                                    ; $6932: $0a
    pop af                                        ; $6933: $f1
    ld a, $03                                     ; $6934: $3e $03
    ld de, $0a03                                  ; $6936: $11 $03 $0a
    ld hl, $1019                                  ; $6939: $21 $19 $10
    rst $18                                       ; $693c: $df
    ld c, d                                       ; $693d: $4a
    dec b                                         ; $693e: $05
    ld a, $03                                     ; $693f: $3e $03
    ld de, $0a03                                  ; $6941: $11 $03 $0a
    ld hl, $101a                                  ; $6944: $21 $1a $10
    rst $18                                       ; $6947: $df
    ld c, d                                       ; $6948: $4a
    dec b                                         ; $6949: $05
    jr jr_031_6974                                ; $694a: $18 $28

jr_031_694c:
    ld a, $03                                     ; $694c: $3e $03
    ld de, $0a03                                  ; $694e: $11 $03 $0a
    ld hl, $1092                                  ; $6951: $21 $92 $10
    rst $18                                       ; $6954: $df
    ld c, d                                       ; $6955: $4a
    dec b                                         ; $6956: $05
    push af                                       ; $6957: $f5
    ld a, $32                                     ; $6958: $3e $32
    rst $18                                       ; $695a: $df
    inc b                                         ; $695b: $04
    ld a, [bc]                                    ; $695c: $0a
    pop af                                        ; $695d: $f1
    ld a, $03                                     ; $695e: $3e $03
    ld de, $0a03                                  ; $6960: $11 $03 $0a
    ld hl, $1094                                  ; $6963: $21 $94 $10
    rst $18                                       ; $6966: $df
    ld c, d                                       ; $6967: $4a
    dec b                                         ; $6968: $05
    ld a, $03                                     ; $6969: $3e $03
    ld de, $0a03                                  ; $696b: $11 $03 $0a
    ld hl, $1095                                  ; $696e: $21 $95 $10
    rst $18                                       ; $6971: $df
    ld c, d                                       ; $6972: $4a
    dec b                                         ; $6973: $05

jr_031_6974:
    rst $18                                       ; $6974: $df
    inc l                                         ; $6975: $2c
    db $10                                        ; $6976: $10
    pop af                                        ; $6977: $f1
    ldh [$96], a                                  ; $6978: $e0 $96
    ldh [rSVBK], a                                ; $697a: $e0 $70
    ret                                           ; $697c: $c9


    call Call_031_7051                            ; $697d: $cd $51 $70
    rst $18                                       ; $6980: $df
    ld a, [hl+]                                   ; $6981: $2a
    db $10                                        ; $6982: $10
    rst $30                                       ; $6983: $f7
    nop                                           ; $6984: $00
    inc e                                         ; $6985: $1c
    jr z, jr_031_6993                             ; $6986: $28 $0b

    rst $18                                       ; $6988: $df
    inc b                                         ; $6989: $04
    db $10                                        ; $698a: $10
    ld d, h                                       ; $698b: $54
    ld e, l                                       ; $698c: $5d
    ld hl, $c968                                  ; $698d: $21 $68 $c9
    ld a, e                                       ; $6990: $7b
    ld [hl+], a                                   ; $6991: $22
    ld [hl], d                                    ; $6992: $72

jr_031_6993:
    ld a, $82                                     ; $6993: $3e $82
    rst $18                                       ; $6995: $df
    ld l, $10                                     ; $6996: $2e $10
    rst $18                                       ; $6998: $df
    inc l                                         ; $6999: $2c
    db $10                                        ; $699a: $10
    ret                                           ; $699b: $c9


    cp h                                          ; $699c: $bc
    ld l, c                                       ; $699d: $69
    ld [bc], a                                    ; $699e: $02
    ld l, d                                       ; $699f: $6a
    nop                                           ; $69a0: $00
    nop                                           ; $69a1: $00
    nop                                           ; $69a2: $00
    nop                                           ; $69a3: $00
    nop                                           ; $69a4: $00
    nop                                           ; $69a5: $00
    nop                                           ; $69a6: $00
    nop                                           ; $69a7: $00
    nop                                           ; $69a8: $00
    nop                                           ; $69a9: $00
    nop                                           ; $69aa: $00
    nop                                           ; $69ab: $00
    nop                                           ; $69ac: $00
    nop                                           ; $69ad: $00
    nop                                           ; $69ae: $00
    nop                                           ; $69af: $00
    nop                                           ; $69b0: $00
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    nop                                           ; $69b3: $00
    nop                                           ; $69b4: $00
    nop                                           ; $69b5: $00
    nop                                           ; $69b6: $00
    nop                                           ; $69b7: $00
    nop                                           ; $69b8: $00
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    nop                                           ; $69bb: $00
    call Call_031_7051                            ; $69bc: $cd $51 $70
    rst $30                                       ; $69bf: $f7
    nop                                           ; $69c0: $00
    inc e                                         ; $69c1: $1c
    jr z, jr_031_69c5                             ; $69c2: $28 $01

    ret                                           ; $69c4: $c9


jr_031_69c5:
    ldh a, [$96]                                  ; $69c5: $f0 $96
    push af                                       ; $69c7: $f5
    ld a, $06                                     ; $69c8: $3e $06
    ldh [$96], a                                  ; $69ca: $e0 $96
    ldh [rSVBK], a                                ; $69cc: $e0 $70
    rst $18                                       ; $69ce: $df
    ld a, [hl+]                                   ; $69cf: $2a
    db $10                                        ; $69d0: $10
    ld a, $03                                     ; $69d1: $3e $03
    ld de, $0a03                                  ; $69d3: $11 $03 $0a
    ld hl, $1098                                  ; $69d6: $21 $98 $10
    rst $18                                       ; $69d9: $df
    ld c, d                                       ; $69da: $4a
    dec b                                         ; $69db: $05
    ld a, $03                                     ; $69dc: $3e $03
    ld de, $0a03                                  ; $69de: $11 $03 $0a
    ld hl, $1099                                  ; $69e1: $21 $99 $10
    rst $18                                       ; $69e4: $df
    ld c, d                                       ; $69e5: $4a
    dec b                                         ; $69e6: $05
    push af                                       ; $69e7: $f5
    ld a, $32                                     ; $69e8: $3e $32
    rst $18                                       ; $69ea: $df
    inc b                                         ; $69eb: $04
    ld a, [bc]                                    ; $69ec: $0a
    pop af                                        ; $69ed: $f1
    ld a, $03                                     ; $69ee: $3e $03
    ld de, $0a03                                  ; $69f0: $11 $03 $0a
    ld hl, $109a                                  ; $69f3: $21 $9a $10
    rst $18                                       ; $69f6: $df
    ld c, d                                       ; $69f7: $4a
    dec b                                         ; $69f8: $05
    rst $18                                       ; $69f9: $df
    inc l                                         ; $69fa: $2c
    db $10                                        ; $69fb: $10
    pop af                                        ; $69fc: $f1
    ldh [$96], a                                  ; $69fd: $e0 $96
    ldh [rSVBK], a                                ; $69ff: $e0 $70
    ret                                           ; $6a01: $c9


    call Call_031_7051                            ; $6a02: $cd $51 $70
    rst $18                                       ; $6a05: $df
    ld a, [hl+]                                   ; $6a06: $2a
    db $10                                        ; $6a07: $10
    ld a, [$c834]                                 ; $6a08: $fa $34 $c8
    or a                                          ; $6a0b: $b7
    jr nz, jr_031_6a15                            ; $6a0c: $20 $07

    ld a, $08                                     ; $6a0e: $3e $08
    ld [$c961], a                                 ; $6a10: $ea $61 $c9
    jr jr_031_6a4d                                ; $6a13: $18 $38

jr_031_6a15:
    rst $30                                       ; $6a15: $f7
    nop                                           ; $6a16: $00
    inc e                                         ; $6a17: $1c
    jr z, jr_031_6a27                             ; $6a18: $28 $0d

    rst $18                                       ; $6a1a: $df
    inc b                                         ; $6a1b: $04
    db $10                                        ; $6a1c: $10
    ld d, h                                       ; $6a1d: $54
    ld e, l                                       ; $6a1e: $5d
    ld hl, $c96a                                  ; $6a1f: $21 $6a $c9
    ld a, e                                       ; $6a22: $7b
    ld [hl+], a                                   ; $6a23: $22
    ld [hl], d                                    ; $6a24: $72
    jr jr_031_6a41                                ; $6a25: $18 $1a

jr_031_6a27:
    rst $28                                       ; $6a27: $ef
    ld h, b                                       ; $6a28: $60
    inc c                                         ; $6a29: $0c
    ld a, [$c8aa]                                 ; $6a2a: $fa $aa $c8
    or a                                          ; $6a2d: $b7
    jr z, jr_031_6a33                             ; $6a2e: $28 $03

    rst $20                                       ; $6a30: $e7
    ld h, b                                       ; $6a31: $60
    inc c                                         ; $6a32: $0c

jr_031_6a33:
    ldh a, [$96]                                  ; $6a33: $f0 $96
    push af                                       ; $6a35: $f5
    call Call_031_6b8b                            ; $6a36: $cd $8b $6b
    ld [$c968], a                                 ; $6a39: $ea $68 $c9
    pop af                                        ; $6a3c: $f1
    ldh [$96], a                                  ; $6a3d: $e0 $96
    ldh [rSVBK], a                                ; $6a3f: $e0 $70

jr_031_6a41:
    rst $28                                       ; $6a41: $ef
    ld h, b                                       ; $6a42: $60
    inc c                                         ; $6a43: $0c
    ld a, [$c8aa]                                 ; $6a44: $fa $aa $c8
    or a                                          ; $6a47: $b7
    jr z, jr_031_6a4d                             ; $6a48: $28 $03

    rst $20                                       ; $6a4a: $e7
    ld h, b                                       ; $6a4b: $60
    inc c                                         ; $6a4c: $0c

jr_031_6a4d:
    ld a, $82                                     ; $6a4d: $3e $82
    rst $18                                       ; $6a4f: $df
    ld l, $10                                     ; $6a50: $2e $10
    rst $18                                       ; $6a52: $df
    inc l                                         ; $6a53: $2c
    db $10                                        ; $6a54: $10
    ret                                           ; $6a55: $c9


Call_031_6a56:
    rst $18                                       ; $6a56: $df
    nop                                           ; $6a57: $00
    ld a, [bc]                                    ; $6a58: $0a
    ldh a, [$95]                                  ; $6a59: $f0 $95
    ld b, a                                       ; $6a5b: $47
    ld a, $03                                     ; $6a5c: $3e $03
    ld de, $7cbe                                  ; $6a5e: $11 $be $7c
    rst $18                                       ; $6a61: $df
    jr @+$0c                                      ; $6a62: $18 $0a

    ld a, [$c296]                                 ; $6a64: $fa $96 $c2
    ld b, a                                       ; $6a67: $47
    ld a, $03                                     ; $6a68: $3e $03
    rst $18                                       ; $6a6a: $df
    ld l, $0a                                     ; $6a6b: $2e $0a
    ld c, $08                                     ; $6a6d: $0e $08
    call Call_000_25af                            ; $6a6f: $cd $af $25
    call Call_000_2625                            ; $6a72: $cd $25 $26
    push af                                       ; $6a75: $f5
    ld a, $1e                                     ; $6a76: $3e $1e
    rst $18                                       ; $6a78: $df
    inc b                                         ; $6a79: $04
    ld a, [bc]                                    ; $6a7a: $0a
    pop af                                        ; $6a7b: $f1
    ld a, [$c968]                                 ; $6a7c: $fa $68 $c9
    or a                                          ; $6a7f: $b7
    jr nz, jr_031_6aa9                            ; $6a80: $20 $27

    ld a, $03                                     ; $6a82: $3e $03
    ld b, a                                       ; $6a84: $47
    ld a, $07                                     ; $6a85: $3e $07
    rst $18                                       ; $6a87: $df
    ld [hl-], a                                   ; $6a88: $32
    ld a, [bc]                                    ; $6a89: $0a
    ld a, $03                                     ; $6a8a: $3e $03
    rst $18                                       ; $6a8c: $df
    inc [hl]                                      ; $6a8d: $34
    ld a, [bc]                                    ; $6a8e: $0a
    push af                                       ; $6a8f: $f5
    ld a, $1e                                     ; $6a90: $3e $1e
    rst $18                                       ; $6a92: $df
    inc b                                         ; $6a93: $04
    ld a, [bc]                                    ; $6a94: $0a
    pop af                                        ; $6a95: $f1
    ld hl, $109d                                  ; $6a96: $21 $9d $10
    rst $18                                       ; $6a99: $df
    ld c, $0a                                     ; $6a9a: $0e $0a
    ld a, $03                                     ; $6a9c: $3e $03
    rst $18                                       ; $6a9e: $df
    ld [$e70a], sp                                ; $6a9f: $08 $0a $e7
    ld b, b                                       ; $6aa2: $40
    inc c                                         ; $6aa3: $0c
    rst $28                                       ; $6aa4: $ef
    and b                                         ; $6aa5: $a0
    inc c                                         ; $6aa6: $0c
    jr @+$2c                                      ; $6aa7: $18 $2a

jr_031_6aa9:
    cp $01                                        ; $6aa9: $fe $01
    jr nz, jr_031_6ac1                            ; $6aab: $20 $14

    push af                                       ; $6aad: $f5
    ld a, $1e                                     ; $6aae: $3e $1e
    rst $18                                       ; $6ab0: $df
    inc b                                         ; $6ab1: $04
    ld a, [bc]                                    ; $6ab2: $0a
    pop af                                        ; $6ab3: $f1
    ld hl, $109c                                  ; $6ab4: $21 $9c $10
    rst $18                                       ; $6ab7: $df
    ld c, $0a                                     ; $6ab8: $0e $0a
    ld a, $03                                     ; $6aba: $3e $03
    rst $18                                       ; $6abc: $df
    ld [$180a], sp                                ; $6abd: $08 $0a $18
    ld [de], a                                    ; $6ac0: $12

jr_031_6ac1:
    push af                                       ; $6ac1: $f5
    ld a, $1e                                     ; $6ac2: $3e $1e
    rst $18                                       ; $6ac4: $df
    inc b                                         ; $6ac5: $04
    ld a, [bc]                                    ; $6ac6: $0a
    pop af                                        ; $6ac7: $f1
    ld hl, $109b                                  ; $6ac8: $21 $9b $10
    rst $18                                       ; $6acb: $df
    ld c, $0a                                     ; $6acc: $0e $0a
    ld a, $03                                     ; $6ace: $3e $03
    rst $18                                       ; $6ad0: $df
    ld [$f70a], sp                                ; $6ad1: $08 $0a $f7
    ld b, b                                       ; $6ad4: $40
    inc c                                         ; $6ad5: $0c
    jr nz, jr_031_6adf                            ; $6ad6: $20 $07

    ld a, $03                                     ; $6ad8: $3e $03
    ld b, $c0                                     ; $6ada: $06 $c0
    rst $18                                       ; $6adc: $df
    inc l                                         ; $6add: $2c
    ld a, [bc]                                    ; $6ade: $0a

jr_031_6adf:
    rst $18                                       ; $6adf: $df
    ld [bc], a                                    ; $6ae0: $02
    ld a, [bc]                                    ; $6ae1: $0a
    ret                                           ; $6ae2: $c9


Call_031_6ae3:
    rst $28                                       ; $6ae3: $ef
    and b                                         ; $6ae4: $a0
    inc c                                         ; $6ae5: $0c
    rst $18                                       ; $6ae6: $df
    nop                                           ; $6ae7: $00
    ld a, [bc]                                    ; $6ae8: $0a
    ld a, [$c296]                                 ; $6ae9: $fa $96 $c2
    ld b, a                                       ; $6aec: $47
    ld a, $03                                     ; $6aed: $3e $03
    rst $18                                       ; $6aef: $df
    ld l, $0a                                     ; $6af0: $2e $0a
    ld c, $08                                     ; $6af2: $0e $08
    call Call_000_25af                            ; $6af4: $cd $af $25
    call Call_000_2625                            ; $6af7: $cd $25 $26
    push af                                       ; $6afa: $f5
    ld a, $1e                                     ; $6afb: $3e $1e
    rst $18                                       ; $6afd: $df
    inc b                                         ; $6afe: $04
    ld a, [bc]                                    ; $6aff: $0a
    pop af                                        ; $6b00: $f1
    ld hl, $c968                                  ; $6b01: $21 $68 $c9
    ld a, [hl+]                                   ; $6b04: $2a
    ld d, [hl]                                    ; $6b05: $56
    ld e, a                                       ; $6b06: $5f
    ld hl, $c96a                                  ; $6b07: $21 $6a $c9
    ld a, [hl+]                                   ; $6b0a: $2a
    ld h, [hl]                                    ; $6b0b: $66
    ld l, a                                       ; $6b0c: $6f
    call Call_000_08ac                            ; $6b0d: $cd $ac $08
    bit 7, h                                      ; $6b10: $cb $7c
    jr z, jr_031_6b38                             ; $6b12: $28 $24

    ld a, $03                                     ; $6b14: $3e $03
    ld b, a                                       ; $6b16: $47
    ld a, $07                                     ; $6b17: $3e $07
    rst $18                                       ; $6b19: $df
    ld [hl-], a                                   ; $6b1a: $32
    ld a, [bc]                                    ; $6b1b: $0a
    ld a, $03                                     ; $6b1c: $3e $03
    rst $18                                       ; $6b1e: $df
    inc [hl]                                      ; $6b1f: $34
    ld a, [bc]                                    ; $6b20: $0a
    push af                                       ; $6b21: $f5
    ld a, $1e                                     ; $6b22: $3e $1e
    rst $18                                       ; $6b24: $df
    inc b                                         ; $6b25: $04
    ld a, [bc]                                    ; $6b26: $0a
    pop af                                        ; $6b27: $f1
    ld hl, $101c                                  ; $6b28: $21 $1c $10
    rst $18                                       ; $6b2b: $df
    ld c, $0a                                     ; $6b2c: $0e $0a
    ld a, $03                                     ; $6b2e: $3e $03
    rst $18                                       ; $6b30: $df
    ld [$e70a], sp                                ; $6b31: $08 $0a $e7
    ld b, b                                       ; $6b34: $40
    inc c                                         ; $6b35: $0c
    jr @+$14                                      ; $6b36: $18 $12

jr_031_6b38:
    push af                                       ; $6b38: $f5
    ld a, $1e                                     ; $6b39: $3e $1e
    rst $18                                       ; $6b3b: $df
    inc b                                         ; $6b3c: $04
    ld a, [bc]                                    ; $6b3d: $0a
    pop af                                        ; $6b3e: $f1
    ld hl, $101d                                  ; $6b3f: $21 $1d $10
    rst $18                                       ; $6b42: $df
    ld c, $0a                                     ; $6b43: $0e $0a
    ld a, $03                                     ; $6b45: $3e $03
    rst $18                                       ; $6b47: $df
    ld [$f70a], sp                                ; $6b48: $08 $0a $f7
    ld b, b                                       ; $6b4b: $40
    inc c                                         ; $6b4c: $0c
    jr nz, jr_031_6b56                            ; $6b4d: $20 $07

    ld a, $03                                     ; $6b4f: $3e $03
    ld b, $c0                                     ; $6b51: $06 $c0
    rst $18                                       ; $6b53: $df
    inc l                                         ; $6b54: $2c
    ld a, [bc]                                    ; $6b55: $0a

jr_031_6b56:
    rst $18                                       ; $6b56: $df
    ld [bc], a                                    ; $6b57: $02
    ld a, [bc]                                    ; $6b58: $0a
    ret                                           ; $6b59: $c9


Call_031_6b5a:
    rst $18                                       ; $6b5a: $df
    nop                                           ; $6b5b: $00
    ld a, [bc]                                    ; $6b5c: $0a
    ld a, [$c296]                                 ; $6b5d: $fa $96 $c2
    ld b, a                                       ; $6b60: $47
    ld a, $03                                     ; $6b61: $3e $03
    rst $18                                       ; $6b63: $df
    ld l, $0a                                     ; $6b64: $2e $0a
    ld c, $08                                     ; $6b66: $0e $08
    call Call_000_25af                            ; $6b68: $cd $af $25
    call Call_000_2625                            ; $6b6b: $cd $25 $26
    push af                                       ; $6b6e: $f5
    ld a, $1e                                     ; $6b6f: $3e $1e
    rst $18                                       ; $6b71: $df
    inc b                                         ; $6b72: $04
    ld a, [bc]                                    ; $6b73: $0a
    pop af                                        ; $6b74: $f1
    ld hl, $101e                                  ; $6b75: $21 $1e $10
    rst $18                                       ; $6b78: $df
    ld c, $0a                                     ; $6b79: $0e $0a
    ld a, $03                                     ; $6b7b: $3e $03
    rst $18                                       ; $6b7d: $df
    ld [$3e0a], sp                                ; $6b7e: $08 $0a $3e
    inc bc                                        ; $6b81: $03
    ld b, $c0                                     ; $6b82: $06 $c0
    rst $18                                       ; $6b84: $df
    inc l                                         ; $6b85: $2c
    ld a, [bc]                                    ; $6b86: $0a
    rst $18                                       ; $6b87: $df
    ld [bc], a                                    ; $6b88: $02
    ld a, [bc]                                    ; $6b89: $0a
    ret                                           ; $6b8a: $c9


Call_031_6b8b:
    xor a                                         ; $6b8b: $af
    rst $30                                       ; $6b8c: $f7
    ld h, b                                       ; $6b8d: $60
    inc c                                         ; $6b8e: $0c
    ret nz                                        ; $6b8f: $c0

    ld a, $06                                     ; $6b90: $3e $06
    ldh [$96], a                                  ; $6b92: $e0 $96
    ldh [rSVBK], a                                ; $6b94: $e0 $70
    rst $18                                       ; $6b96: $df
    inc [hl]                                      ; $6b97: $34
    db $10                                        ; $6b98: $10
    cp $06                                        ; $6b99: $fe $06
    jr nz, jr_031_6bbe                            ; $6b9b: $20 $21

    ld hl, $d680                                  ; $6b9d: $21 $80 $d6
    ld bc, $000a                                  ; $6ba0: $01 $0a $00
    add hl, bc                                    ; $6ba3: $09
    ld b, [hl]                                    ; $6ba4: $46
    inc hl                                        ; $6ba5: $23
    ld a, [hl+]                                   ; $6ba6: $2a
    bit 7, a                                      ; $6ba7: $cb $7f
    jr z, jr_031_6bad                             ; $6ba9: $28 $02

    cpl                                           ; $6bab: $2f
    inc a                                         ; $6bac: $3c

jr_031_6bad:
    ld c, a                                       ; $6bad: $4f
    ld hl, $00a0                                  ; $6bae: $21 $a0 $00
    call Call_031_7d53                            ; $6bb1: $cd $53 $7d
    or a                                          ; $6bb4: $b7
    jr nz, jr_031_6bba                            ; $6bb5: $20 $03

    xor a                                         ; $6bb7: $af
    jr jr_031_6bc0                                ; $6bb8: $18 $06

jr_031_6bba:
    ld a, $01                                     ; $6bba: $3e $01
    jr jr_031_6bc0                                ; $6bbc: $18 $02

jr_031_6bbe:
    ld a, $02                                     ; $6bbe: $3e $02

jr_031_6bc0:
    ret                                           ; $6bc0: $c9


Call_031_6bc1:
    ld hl, $0d11                                  ; $6bc1: $21 $11 $0d
    rst $18                                       ; $6bc4: $df
    ld c, $0a                                     ; $6bc5: $0e $0a
    call Call_031_6bf7                            ; $6bc7: $cd $f7 $6b
    ret                                           ; $6bca: $c9


Call_031_6bcb:
    rst $18                                       ; $6bcb: $df
    nop                                           ; $6bcc: $00
    ld a, [bc]                                    ; $6bcd: $0a
    ldh a, [$95]                                  ; $6bce: $f0 $95
    ld b, a                                       ; $6bd0: $47
    ld a, $03                                     ; $6bd1: $3e $03
    ld de, $7cbe                                  ; $6bd3: $11 $be $7c
    rst $18                                       ; $6bd6: $df
    jr @+$0c                                      ; $6bd7: $18 $0a

    ld a, [$c296]                                 ; $6bd9: $fa $96 $c2
    ld b, a                                       ; $6bdc: $47
    ld a, $03                                     ; $6bdd: $3e $03
    rst $18                                       ; $6bdf: $df
    ld l, $0a                                     ; $6be0: $2e $0a
    ld c, $08                                     ; $6be2: $0e $08
    call Call_000_25af                            ; $6be4: $cd $af $25
    call Call_000_2625                            ; $6be7: $cd $25 $26
    ld hl, $1097                                  ; $6bea: $21 $97 $10
    rst $18                                       ; $6bed: $df
    ld c, $0a                                     ; $6bee: $0e $0a
    call Call_031_6bf7                            ; $6bf0: $cd $f7 $6b
    rst $18                                       ; $6bf3: $df
    ld [bc], a                                    ; $6bf4: $02
    ld a, [bc]                                    ; $6bf5: $0a
    ret                                           ; $6bf6: $c9


Call_031_6bf7:
    ld a, $03                                     ; $6bf7: $3e $03
    rst $18                                       ; $6bf9: $df
    ld a, [bc]                                    ; $6bfa: $0a
    ld a, [bc]                                    ; $6bfb: $0a
    rst $18                                       ; $6bfc: $df
    ld [de], a                                    ; $6bfd: $12
    ld a, [bc]                                    ; $6bfe: $0a
    rst $18                                       ; $6bff: $df
    inc c                                         ; $6c00: $0c
    ld a, [bc]                                    ; $6c01: $0a
    push af                                       ; $6c02: $f5
    ld a, $05                                     ; $6c03: $3e $05
    rst $18                                       ; $6c05: $df
    inc b                                         ; $6c06: $04
    ld a, [bc]                                    ; $6c07: $0a
    pop af                                        ; $6c08: $f1
    and a                                         ; $6c09: $a7
    jr z, jr_031_6c21                             ; $6c0a: $28 $15

    ld hl, $109e                                  ; $6c0c: $21 $9e $10
    rst $18                                       ; $6c0f: $df
    ld c, $0a                                     ; $6c10: $0e $0a
    ld a, $03                                     ; $6c12: $3e $03
    rst $18                                       ; $6c14: $df
    ld [$3e0a], sp                                ; $6c15: $08 $0a $3e
    inc bc                                        ; $6c18: $03
    ld b, $00                                     ; $6c19: $06 $00
    rst $18                                       ; $6c1b: $df
    inc l                                         ; $6c1c: $2c
    ld a, [bc]                                    ; $6c1d: $0a
    jp Jump_031_6ca5                              ; $6c1e: $c3 $a5 $6c


jr_031_6c21:
    rst $20                                       ; $6c21: $e7
    and b                                         ; $6c22: $a0
    inc c                                         ; $6c23: $0c
    rst $18                                       ; $6c24: $df
    inc e                                         ; $6c25: $1c
    db $10                                        ; $6c26: $10
    ld a, $15                                     ; $6c27: $3e $15
    ld b, a                                       ; $6c29: $47
    ld a, $06                                     ; $6c2a: $3e $06
    ld c, a                                       ; $6c2c: $4f
    rst $18                                       ; $6c2d: $df
    ld c, [hl]                                    ; $6c2e: $4e
    ld a, [bc]                                    ; $6c2f: $0a
    ld a, $06                                     ; $6c30: $3e $06
    ld [$c834], a                                 ; $6c32: $ea $34 $c8
    ld bc, $8000                                  ; $6c35: $01 $00 $80
    rst $18                                       ; $6c38: $df
    ld e, $02                                     ; $6c39: $1e $02
    ld bc, $ff01                                  ; $6c3b: $01 $01 $ff
    rst $18                                       ; $6c3e: $df
    ld e, $02                                     ; $6c3f: $1e $02
    ld hl, $000a                                  ; $6c41: $21 $0a $00
    rst $18                                       ; $6c44: $df
    db $10                                        ; $6c45: $10
    db $10                                        ; $6c46: $10
    ld a, $00                                     ; $6c47: $3e $00
    rst $18                                       ; $6c49: $df
    ld e, $10                                     ; $6c4a: $1e $10
    ld hl, $2c60                                  ; $6c4c: $21 $60 $2c
    ld de, $2120                                  ; $6c4f: $11 $20 $21
    rst $18                                       ; $6c52: $df
    jr nz, jr_031_6c65                            ; $6c53: $20 $10

    rst $18                                       ; $6c55: $df
    inc h                                         ; $6c56: $24
    db $10                                        ; $6c57: $10
    ld e, $03                                     ; $6c58: $1e $03
    ld bc, $b61d                                  ; $6c5a: $01 $1d $b6
    rst $18                                       ; $6c5d: $df
    ld h, $10                                     ; $6c5e: $26 $10
    rst $30                                       ; $6c60: $f7
    nop                                           ; $6c61: $00
    inc e                                         ; $6c62: $1c
    jr z, jr_031_6c7e                             ; $6c63: $28 $19

jr_031_6c65:
    rst $30                                       ; $6c65: $f7
    ret nz                                        ; $6c66: $c0

    dec de                                        ; $6c67: $1b
    jr nz, jr_031_6c71                            ; $6c68: $20 $07

    ld a, $0b                                     ; $6c6a: $3e $0b
    ld [$c82c], a                                 ; $6c6c: $ea $2c $c8
    jr jr_031_6c76                                ; $6c6f: $18 $05

jr_031_6c71:
    ld a, $07                                     ; $6c71: $3e $07
    ld [$c82c], a                                 ; $6c73: $ea $2c $c8

jr_031_6c76:
    ld de, $6000                                  ; $6c76: $11 $00 $60
    rst $18                                       ; $6c79: $df
    ld [hl+], a                                   ; $6c7a: $22
    db $10                                        ; $6c7b: $10
    jr jr_031_6c95                                ; $6c7c: $18 $17

jr_031_6c7e:
    rst $30                                       ; $6c7e: $f7
    ret nz                                        ; $6c7f: $c0

    dec d                                         ; $6c80: $15
    jr nz, jr_031_6c8a                            ; $6c81: $20 $07

    ld a, $0b                                     ; $6c83: $3e $0b
    ld [$c82c], a                                 ; $6c85: $ea $2c $c8
    jr jr_031_6c8f                                ; $6c88: $18 $05

jr_031_6c8a:
    ld a, $07                                     ; $6c8a: $3e $07
    ld [$c82c], a                                 ; $6c8c: $ea $2c $c8

jr_031_6c8f:
    ld de, $c000                                  ; $6c8f: $11 $00 $c0
    rst $18                                       ; $6c92: $df
    ld [hl+], a                                   ; $6c93: $22
    db $10                                        ; $6c94: $10

jr_031_6c95:
    ldh a, [$95]                                  ; $6c95: $f0 $95
    ld hl, $699c                                  ; $6c97: $21 $9c $69
    rst $18                                       ; $6c9a: $df
    ld a, [de]                                    ; $6c9b: $1a
    db $10                                        ; $6c9c: $10
    ld a, $01                                     ; $6c9d: $3e $01
    rst $18                                       ; $6c9f: $df
    ld [de], a                                    ; $6ca0: $12
    db $10                                        ; $6ca1: $10
    rst $18                                       ; $6ca2: $df
    jr nc, jr_031_6cb5                            ; $6ca3: $30 $10

Jump_031_6ca5:
    ret                                           ; $6ca5: $c9


    nop                                           ; $6ca6: $00
    nop                                           ; $6ca7: $00
    dec d                                         ; $6ca8: $15
    nop                                           ; $6ca9: $00
    ld b, b                                       ; $6caa: $40
    dec h                                         ; $6cab: $25
    nop                                           ; $6cac: $00
    ret                                           ; $6cad: $c9


    inc bc                                        ; $6cae: $03
    ld bc, $003a                                  ; $6caf: $01 $3a $00
    ld bc, $0000                                  ; $6cb2: $01 $00 $00

jr_031_6cb5:
    nop                                           ; $6cb5: $00
    sub $6c                                       ; $6cb6: $d6 $6c
    inc sp                                        ; $6cb8: $33
    ld l, l                                       ; $6cb9: $6d
    nop                                           ; $6cba: $00
    nop                                           ; $6cbb: $00
    nop                                           ; $6cbc: $00
    nop                                           ; $6cbd: $00
    nop                                           ; $6cbe: $00
    nop                                           ; $6cbf: $00
    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    nop                                           ; $6cc2: $00
    nop                                           ; $6cc3: $00
    nop                                           ; $6cc4: $00
    nop                                           ; $6cc5: $00
    nop                                           ; $6cc6: $00
    nop                                           ; $6cc7: $00
    nop                                           ; $6cc8: $00
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    nop                                           ; $6ccb: $00
    nop                                           ; $6ccc: $00
    nop                                           ; $6ccd: $00
    nop                                           ; $6cce: $00
    nop                                           ; $6ccf: $00
    nop                                           ; $6cd0: $00
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    call Call_031_7051                            ; $6cd6: $cd $51 $70
    ldh a, [$96]                                  ; $6cd9: $f0 $96
    push af                                       ; $6cdb: $f5
    ld a, $06                                     ; $6cdc: $3e $06
    ldh [$96], a                                  ; $6cde: $e0 $96
    ldh [rSVBK], a                                ; $6ce0: $e0 $70
    rst $18                                       ; $6ce2: $df
    ld a, [hl+]                                   ; $6ce3: $2a
    db $10                                        ; $6ce4: $10
    rst $30                                       ; $6ce5: $f7
    jr nz, jr_031_6d04                            ; $6ce6: $20 $1c

    jr z, jr_031_6cf7                             ; $6ce8: $28 $0d

    ld a, $04                                     ; $6cea: $3e $04
    ld de, $0a03                                  ; $6cec: $11 $03 $0a
    ld hl, $1023                                  ; $6cef: $21 $23 $10
    rst $18                                       ; $6cf2: $df
    ld c, d                                       ; $6cf3: $4a
    dec b                                         ; $6cf4: $05
    jr jr_031_6d2a                                ; $6cf5: $18 $33

jr_031_6cf7:
    ld a, $04                                     ; $6cf7: $3e $04
    ld de, $0a03                                  ; $6cf9: $11 $03 $0a
    ld hl, $10a2                                  ; $6cfc: $21 $a2 $10
    rst $18                                       ; $6cff: $df
    ld c, d                                       ; $6d00: $4a
    dec b                                         ; $6d01: $05
    ld a, $04                                     ; $6d02: $3e $04

jr_031_6d04:
    ld de, $0a03                                  ; $6d04: $11 $03 $0a
    ld hl, $10a3                                  ; $6d07: $21 $a3 $10
    rst $18                                       ; $6d0a: $df
    ld c, d                                       ; $6d0b: $4a
    dec b                                         ; $6d0c: $05
    push af                                       ; $6d0d: $f5
    ld a, $32                                     ; $6d0e: $3e $32
    rst $18                                       ; $6d10: $df
    inc b                                         ; $6d11: $04
    ld a, [bc]                                    ; $6d12: $0a
    pop af                                        ; $6d13: $f1
    ld a, $04                                     ; $6d14: $3e $04
    ld de, $0a03                                  ; $6d16: $11 $03 $0a
    ld hl, $10a4                                  ; $6d19: $21 $a4 $10
    rst $18                                       ; $6d1c: $df
    ld c, d                                       ; $6d1d: $4a
    dec b                                         ; $6d1e: $05
    ld a, $04                                     ; $6d1f: $3e $04
    ld de, $0a03                                  ; $6d21: $11 $03 $0a
    ld hl, $10a5                                  ; $6d24: $21 $a5 $10
    rst $18                                       ; $6d27: $df
    ld c, d                                       ; $6d28: $4a
    dec b                                         ; $6d29: $05

jr_031_6d2a:
    rst $18                                       ; $6d2a: $df
    inc l                                         ; $6d2b: $2c
    db $10                                        ; $6d2c: $10
    pop af                                        ; $6d2d: $f1
    ldh [$96], a                                  ; $6d2e: $e0 $96
    ldh [rSVBK], a                                ; $6d30: $e0 $70
    ret                                           ; $6d32: $c9


    call Call_031_7051                            ; $6d33: $cd $51 $70
    rst $18                                       ; $6d36: $df
    ld a, [hl+]                                   ; $6d37: $2a
    db $10                                        ; $6d38: $10
    rst $30                                       ; $6d39: $f7
    jr nz, jr_031_6d58                            ; $6d3a: $20 $1c

    jr z, jr_031_6d49                             ; $6d3c: $28 $0b

    rst $18                                       ; $6d3e: $df
    inc b                                         ; $6d3f: $04
    db $10                                        ; $6d40: $10
    ld d, h                                       ; $6d41: $54
    ld e, l                                       ; $6d42: $5d
    ld hl, $c968                                  ; $6d43: $21 $68 $c9
    ld a, e                                       ; $6d46: $7b
    ld [hl+], a                                   ; $6d47: $22
    ld [hl], d                                    ; $6d48: $72

jr_031_6d49:
    ld a, $82                                     ; $6d49: $3e $82
    rst $18                                       ; $6d4b: $df
    ld l, $10                                     ; $6d4c: $2e $10
    rst $18                                       ; $6d4e: $df
    inc l                                         ; $6d4f: $2c
    db $10                                        ; $6d50: $10
    ret                                           ; $6d51: $c9


    ld [hl], d                                    ; $6d52: $72
    ld l, l                                       ; $6d53: $6d
    cp b                                          ; $6d54: $b8
    ld l, l                                       ; $6d55: $6d
    nop                                           ; $6d56: $00
    nop                                           ; $6d57: $00

jr_031_6d58:
    nop                                           ; $6d58: $00
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    nop                                           ; $6d5b: $00
    nop                                           ; $6d5c: $00
    nop                                           ; $6d5d: $00
    nop                                           ; $6d5e: $00
    nop                                           ; $6d5f: $00
    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    nop                                           ; $6d67: $00
    nop                                           ; $6d68: $00
    nop                                           ; $6d69: $00
    nop                                           ; $6d6a: $00
    nop                                           ; $6d6b: $00
    nop                                           ; $6d6c: $00
    nop                                           ; $6d6d: $00
    nop                                           ; $6d6e: $00
    nop                                           ; $6d6f: $00
    nop                                           ; $6d70: $00
    nop                                           ; $6d71: $00
    call Call_031_7051                            ; $6d72: $cd $51 $70
    rst $30                                       ; $6d75: $f7
    jr nz, jr_031_6d94                            ; $6d76: $20 $1c

    jr z, jr_031_6d7b                             ; $6d78: $28 $01

    ret                                           ; $6d7a: $c9


jr_031_6d7b:
    ldh a, [$96]                                  ; $6d7b: $f0 $96
    push af                                       ; $6d7d: $f5
    ld a, $06                                     ; $6d7e: $3e $06
    ldh [$96], a                                  ; $6d80: $e0 $96
    ldh [rSVBK], a                                ; $6d82: $e0 $70
    rst $18                                       ; $6d84: $df
    ld a, [hl+]                                   ; $6d85: $2a
    db $10                                        ; $6d86: $10
    ld a, $04                                     ; $6d87: $3e $04
    ld de, $0a03                                  ; $6d89: $11 $03 $0a
    ld hl, $10a8                                  ; $6d8c: $21 $a8 $10
    rst $18                                       ; $6d8f: $df
    ld c, d                                       ; $6d90: $4a
    dec b                                         ; $6d91: $05
    ld a, $04                                     ; $6d92: $3e $04

jr_031_6d94:
    ld de, $0a03                                  ; $6d94: $11 $03 $0a
    ld hl, $10a9                                  ; $6d97: $21 $a9 $10
    rst $18                                       ; $6d9a: $df
    ld c, d                                       ; $6d9b: $4a
    dec b                                         ; $6d9c: $05
    push af                                       ; $6d9d: $f5
    ld a, $3c                                     ; $6d9e: $3e $3c
    rst $18                                       ; $6da0: $df
    inc b                                         ; $6da1: $04
    ld a, [bc]                                    ; $6da2: $0a
    pop af                                        ; $6da3: $f1
    ld a, $04                                     ; $6da4: $3e $04
    ld de, $0a03                                  ; $6da6: $11 $03 $0a
    ld hl, $10aa                                  ; $6da9: $21 $aa $10
    rst $18                                       ; $6dac: $df
    ld c, d                                       ; $6dad: $4a
    dec b                                         ; $6dae: $05
    rst $18                                       ; $6daf: $df
    inc l                                         ; $6db0: $2c
    db $10                                        ; $6db1: $10
    pop af                                        ; $6db2: $f1
    ldh [$96], a                                  ; $6db3: $e0 $96
    ldh [rSVBK], a                                ; $6db5: $e0 $70
    ret                                           ; $6db7: $c9


    call Call_031_7051                            ; $6db8: $cd $51 $70
    rst $18                                       ; $6dbb: $df
    ld a, [hl+]                                   ; $6dbc: $2a
    db $10                                        ; $6dbd: $10
    ld a, [$c834]                                 ; $6dbe: $fa $34 $c8
    or a                                          ; $6dc1: $b7
    jr nz, jr_031_6dcb                            ; $6dc2: $20 $07

    ld a, $09                                     ; $6dc4: $3e $09
    ld [$c961], a                                 ; $6dc6: $ea $61 $c9
    jr jr_031_6def                                ; $6dc9: $18 $24

jr_031_6dcb:
    rst $30                                       ; $6dcb: $f7
    jr nz, jr_031_6dea                            ; $6dcc: $20 $1c

    jr z, jr_031_6ddd                             ; $6dce: $28 $0d

    rst $18                                       ; $6dd0: $df
    inc b                                         ; $6dd1: $04
    db $10                                        ; $6dd2: $10
    ld d, h                                       ; $6dd3: $54
    ld e, l                                       ; $6dd4: $5d
    ld hl, $c96a                                  ; $6dd5: $21 $6a $c9
    ld a, e                                       ; $6dd8: $7b
    ld [hl+], a                                   ; $6dd9: $22
    ld [hl], d                                    ; $6dda: $72
    jr jr_031_6de3                                ; $6ddb: $18 $06

jr_031_6ddd:
    call Call_031_6f45                            ; $6ddd: $cd $45 $6f
    ld [$c968], a                                 ; $6de0: $ea $68 $c9

jr_031_6de3:
    rst $28                                       ; $6de3: $ef
    ld h, b                                       ; $6de4: $60
    inc c                                         ; $6de5: $0c
    ld a, [$c8aa]                                 ; $6de6: $fa $aa $c8
    or a                                          ; $6de9: $b7

jr_031_6dea:
    jr z, jr_031_6def                             ; $6dea: $28 $03

    rst $20                                       ; $6dec: $e7
    ld h, b                                       ; $6ded: $60
    inc c                                         ; $6dee: $0c

jr_031_6def:
    ld a, $82                                     ; $6def: $3e $82
    rst $18                                       ; $6df1: $df
    ld l, $10                                     ; $6df2: $2e $10
    rst $18                                       ; $6df4: $df
    inc l                                         ; $6df5: $2c
    db $10                                        ; $6df6: $10
    ret                                           ; $6df7: $c9


Call_031_6df8:
    rst $18                                       ; $6df8: $df
    nop                                           ; $6df9: $00
    ld a, [bc]                                    ; $6dfa: $0a
    ldh a, [$95]                                  ; $6dfb: $f0 $95
    ld b, a                                       ; $6dfd: $47
    ld a, $04                                     ; $6dfe: $3e $04
    ld de, $7cbe                                  ; $6e00: $11 $be $7c
    rst $18                                       ; $6e03: $df
    jr @+$0c                                      ; $6e04: $18 $0a

    ld a, [$c296]                                 ; $6e06: $fa $96 $c2
    ld b, a                                       ; $6e09: $47
    ld a, $04                                     ; $6e0a: $3e $04
    rst $18                                       ; $6e0c: $df
    ld l, $0a                                     ; $6e0d: $2e $0a
    ld c, $08                                     ; $6e0f: $0e $08
    call Call_000_25af                            ; $6e11: $cd $af $25
    call Call_000_2625                            ; $6e14: $cd $25 $26
    push af                                       ; $6e17: $f5
    ld a, $1e                                     ; $6e18: $3e $1e
    rst $18                                       ; $6e1a: $df
    inc b                                         ; $6e1b: $04
    ld a, [bc]                                    ; $6e1c: $0a
    pop af                                        ; $6e1d: $f1
    ld a, [$c968]                                 ; $6e1e: $fa $68 $c9
    or a                                          ; $6e21: $b7
    jr nz, jr_031_6e4b                            ; $6e22: $20 $27

    ld a, $04                                     ; $6e24: $3e $04
    ld b, a                                       ; $6e26: $47
    ld a, $07                                     ; $6e27: $3e $07
    rst $18                                       ; $6e29: $df
    ld [hl-], a                                   ; $6e2a: $32
    ld a, [bc]                                    ; $6e2b: $0a
    ld a, $04                                     ; $6e2c: $3e $04
    rst $18                                       ; $6e2e: $df
    inc [hl]                                      ; $6e2f: $34
    ld a, [bc]                                    ; $6e30: $0a
    push af                                       ; $6e31: $f5
    ld a, $1e                                     ; $6e32: $3e $1e
    rst $18                                       ; $6e34: $df
    inc b                                         ; $6e35: $04
    ld a, [bc]                                    ; $6e36: $0a
    pop af                                        ; $6e37: $f1
    ld hl, $10ad                                  ; $6e38: $21 $ad $10
    rst $18                                       ; $6e3b: $df
    ld c, $0a                                     ; $6e3c: $0e $0a
    ld a, $04                                     ; $6e3e: $3e $04
    rst $18                                       ; $6e40: $df
    ld [$e70a], sp                                ; $6e41: $08 $0a $e7
    ld b, b                                       ; $6e44: $40
    inc c                                         ; $6e45: $0c
    rst $28                                       ; $6e46: $ef
    ret nz                                        ; $6e47: $c0

    inc c                                         ; $6e48: $0c
    jr @+$44                                      ; $6e49: $18 $42

jr_031_6e4b:
    cp $01                                        ; $6e4b: $fe $01
    jr nz, jr_031_6e63                            ; $6e4d: $20 $14

    push af                                       ; $6e4f: $f5
    ld a, $1e                                     ; $6e50: $3e $1e
    rst $18                                       ; $6e52: $df
    inc b                                         ; $6e53: $04
    ld a, [bc]                                    ; $6e54: $0a
    pop af                                        ; $6e55: $f1
    ld hl, $10ac                                  ; $6e56: $21 $ac $10
    rst $18                                       ; $6e59: $df
    ld c, $0a                                     ; $6e5a: $0e $0a
    ld a, $04                                     ; $6e5c: $3e $04
    rst $18                                       ; $6e5e: $df
    ld [$180a], sp                                ; $6e5f: $08 $0a $18
    ld a, [hl+]                                   ; $6e62: $2a

jr_031_6e63:
    cp $02                                        ; $6e63: $fe $02
    jr nz, jr_031_6e7b                            ; $6e65: $20 $14

    push af                                       ; $6e67: $f5
    ld a, $1e                                     ; $6e68: $3e $1e
    rst $18                                       ; $6e6a: $df
    inc b                                         ; $6e6b: $04
    ld a, [bc]                                    ; $6e6c: $0a
    pop af                                        ; $6e6d: $f1
    ld hl, $10ab                                  ; $6e6e: $21 $ab $10
    rst $18                                       ; $6e71: $df
    ld c, $0a                                     ; $6e72: $0e $0a
    ld a, $04                                     ; $6e74: $3e $04
    rst $18                                       ; $6e76: $df
    ld [$180a], sp                                ; $6e77: $08 $0a $18
    ld [de], a                                    ; $6e7a: $12

jr_031_6e7b:
    push af                                       ; $6e7b: $f5
    ld a, $1e                                     ; $6e7c: $3e $1e
    rst $18                                       ; $6e7e: $df
    inc b                                         ; $6e7f: $04
    ld a, [bc]                                    ; $6e80: $0a
    pop af                                        ; $6e81: $f1
    ld hl, $10af                                  ; $6e82: $21 $af $10
    rst $18                                       ; $6e85: $df
    ld c, $0a                                     ; $6e86: $0e $0a
    ld a, $04                                     ; $6e88: $3e $04
    rst $18                                       ; $6e8a: $df
    ld [$f70a], sp                                ; $6e8b: $08 $0a $f7
    ld b, b                                       ; $6e8e: $40
    inc c                                         ; $6e8f: $0c
    jr nz, jr_031_6e99                            ; $6e90: $20 $07

    ld a, $04                                     ; $6e92: $3e $04
    ld b, $c0                                     ; $6e94: $06 $c0
    rst $18                                       ; $6e96: $df
    inc l                                         ; $6e97: $2c
    ld a, [bc]                                    ; $6e98: $0a

jr_031_6e99:
    rst $18                                       ; $6e99: $df
    ld [bc], a                                    ; $6e9a: $02
    ld a, [bc]                                    ; $6e9b: $0a
    ret                                           ; $6e9c: $c9


Call_031_6e9d:
    rst $28                                       ; $6e9d: $ef
    ret nz                                        ; $6e9e: $c0

    inc c                                         ; $6e9f: $0c
    rst $18                                       ; $6ea0: $df
    nop                                           ; $6ea1: $00
    ld a, [bc]                                    ; $6ea2: $0a
    ld a, [$c296]                                 ; $6ea3: $fa $96 $c2
    ld b, a                                       ; $6ea6: $47
    ld a, $04                                     ; $6ea7: $3e $04
    rst $18                                       ; $6ea9: $df
    ld l, $0a                                     ; $6eaa: $2e $0a
    ld c, $08                                     ; $6eac: $0e $08
    call Call_000_25af                            ; $6eae: $cd $af $25
    call Call_000_2625                            ; $6eb1: $cd $25 $26
    push af                                       ; $6eb4: $f5
    ld a, $1e                                     ; $6eb5: $3e $1e
    rst $18                                       ; $6eb7: $df
    inc b                                         ; $6eb8: $04
    ld a, [bc]                                    ; $6eb9: $0a
    pop af                                        ; $6eba: $f1
    ld hl, $c968                                  ; $6ebb: $21 $68 $c9
    ld a, [hl+]                                   ; $6ebe: $2a
    ld d, [hl]                                    ; $6ebf: $56
    ld e, a                                       ; $6ec0: $5f
    ld hl, $c96a                                  ; $6ec1: $21 $6a $c9
    ld a, [hl+]                                   ; $6ec4: $2a
    ld h, [hl]                                    ; $6ec5: $66
    ld l, a                                       ; $6ec6: $6f
    call Call_000_08ac                            ; $6ec7: $cd $ac $08
    bit 7, h                                      ; $6eca: $cb $7c
    jr z, jr_031_6ef2                             ; $6ecc: $28 $24

    ld a, $04                                     ; $6ece: $3e $04
    ld b, a                                       ; $6ed0: $47
    ld a, $07                                     ; $6ed1: $3e $07
    rst $18                                       ; $6ed3: $df
    ld [hl-], a                                   ; $6ed4: $32
    ld a, [bc]                                    ; $6ed5: $0a
    ld a, $04                                     ; $6ed6: $3e $04
    rst $18                                       ; $6ed8: $df
    inc [hl]                                      ; $6ed9: $34
    ld a, [bc]                                    ; $6eda: $0a
    push af                                       ; $6edb: $f5
    ld a, $1e                                     ; $6edc: $3e $1e
    rst $18                                       ; $6ede: $df
    inc b                                         ; $6edf: $04
    ld a, [bc]                                    ; $6ee0: $0a
    pop af                                        ; $6ee1: $f1
    ld hl, $1026                                  ; $6ee2: $21 $26 $10
    rst $18                                       ; $6ee5: $df
    ld c, $0a                                     ; $6ee6: $0e $0a
    ld a, $04                                     ; $6ee8: $3e $04
    rst $18                                       ; $6eea: $df
    ld [$e70a], sp                                ; $6eeb: $08 $0a $e7
    ld b, b                                       ; $6eee: $40
    inc c                                         ; $6eef: $0c
    jr @+$14                                      ; $6ef0: $18 $12

jr_031_6ef2:
    push af                                       ; $6ef2: $f5
    ld a, $1e                                     ; $6ef3: $3e $1e
    rst $18                                       ; $6ef5: $df
    inc b                                         ; $6ef6: $04
    ld a, [bc]                                    ; $6ef7: $0a
    pop af                                        ; $6ef8: $f1
    ld hl, $1027                                  ; $6ef9: $21 $27 $10
    rst $18                                       ; $6efc: $df
    ld c, $0a                                     ; $6efd: $0e $0a
    ld a, $04                                     ; $6eff: $3e $04
    rst $18                                       ; $6f01: $df
    ld [$f70a], sp                                ; $6f02: $08 $0a $f7
    ld b, b                                       ; $6f05: $40
    inc c                                         ; $6f06: $0c
    jr nz, jr_031_6f10                            ; $6f07: $20 $07

    ld a, $04                                     ; $6f09: $3e $04
    ld b, $c0                                     ; $6f0b: $06 $c0
    rst $18                                       ; $6f0d: $df
    inc l                                         ; $6f0e: $2c
    ld a, [bc]                                    ; $6f0f: $0a

jr_031_6f10:
    rst $18                                       ; $6f10: $df
    ld [bc], a                                    ; $6f11: $02
    ld a, [bc]                                    ; $6f12: $0a
    ret                                           ; $6f13: $c9


Call_031_6f14:
    rst $18                                       ; $6f14: $df
    nop                                           ; $6f15: $00
    ld a, [bc]                                    ; $6f16: $0a
    ld a, [$c296]                                 ; $6f17: $fa $96 $c2
    ld b, a                                       ; $6f1a: $47
    ld a, $04                                     ; $6f1b: $3e $04
    rst $18                                       ; $6f1d: $df
    ld l, $0a                                     ; $6f1e: $2e $0a
    ld c, $08                                     ; $6f20: $0e $08
    call Call_000_25af                            ; $6f22: $cd $af $25
    call Call_000_2625                            ; $6f25: $cd $25 $26
    push af                                       ; $6f28: $f5
    ld a, $1e                                     ; $6f29: $3e $1e
    rst $18                                       ; $6f2b: $df
    inc b                                         ; $6f2c: $04
    ld a, [bc]                                    ; $6f2d: $0a
    pop af                                        ; $6f2e: $f1
    ld hl, $1028                                  ; $6f2f: $21 $28 $10
    rst $18                                       ; $6f32: $df
    ld c, $0a                                     ; $6f33: $0e $0a
    ld a, $04                                     ; $6f35: $3e $04
    rst $18                                       ; $6f37: $df
    ld [$3e0a], sp                                ; $6f38: $08 $0a $3e
    inc b                                         ; $6f3b: $04
    ld b, $c0                                     ; $6f3c: $06 $c0
    rst $18                                       ; $6f3e: $df
    inc l                                         ; $6f3f: $2c
    ld a, [bc]                                    ; $6f40: $0a
    rst $18                                       ; $6f41: $df
    ld [bc], a                                    ; $6f42: $02
    ld a, [bc]                                    ; $6f43: $0a
    ret                                           ; $6f44: $c9


Call_031_6f45:
    rst $18                                       ; $6f45: $df
    inc [hl]                                      ; $6f46: $34
    db $10                                        ; $6f47: $10
    cp $06                                        ; $6f48: $fe $06
    jr nz, jr_031_6f5a                            ; $6f4a: $20 $0e

    ld hl, $00a0                                  ; $6f4c: $21 $a0 $00
    call Call_031_7d53                            ; $6f4f: $cd $53 $7d
    or a                                          ; $6f52: $b7
    jr nz, jr_031_6f57                            ; $6f53: $20 $02

    xor a                                         ; $6f55: $af
    ret                                           ; $6f56: $c9


jr_031_6f57:
    ld a, $03                                     ; $6f57: $3e $03
    ret                                           ; $6f59: $c9


jr_031_6f5a:
    cp $02                                        ; $6f5a: $fe $02
    jr z, jr_031_6f61                             ; $6f5c: $28 $03

    ld a, $01                                     ; $6f5e: $3e $01
    ret                                           ; $6f60: $c9


jr_031_6f61:
    ld a, $02                                     ; $6f61: $3e $02
    ret                                           ; $6f63: $c9


Call_031_6f64:
    ld hl, $0d12                                  ; $6f64: $21 $12 $0d
    rst $18                                       ; $6f67: $df
    ld c, $0a                                     ; $6f68: $0e $0a
    call Call_031_6f9a                            ; $6f6a: $cd $9a $6f
    ret                                           ; $6f6d: $c9


Call_031_6f6e:
    rst $18                                       ; $6f6e: $df
    nop                                           ; $6f6f: $00
    ld a, [bc]                                    ; $6f70: $0a
    ldh a, [$95]                                  ; $6f71: $f0 $95
    ld b, a                                       ; $6f73: $47
    ld a, $04                                     ; $6f74: $3e $04
    ld de, $7cbe                                  ; $6f76: $11 $be $7c
    rst $18                                       ; $6f79: $df
    jr @+$0c                                      ; $6f7a: $18 $0a

    ld a, [$c296]                                 ; $6f7c: $fa $96 $c2
    ld b, a                                       ; $6f7f: $47
    ld a, $04                                     ; $6f80: $3e $04
    rst $18                                       ; $6f82: $df
    ld l, $0a                                     ; $6f83: $2e $0a
    ld c, $08                                     ; $6f85: $0e $08
    call Call_000_25af                            ; $6f87: $cd $af $25
    call Call_000_2625                            ; $6f8a: $cd $25 $26
    ld hl, $10a7                                  ; $6f8d: $21 $a7 $10
    rst $18                                       ; $6f90: $df
    ld c, $0a                                     ; $6f91: $0e $0a
    call Call_031_6f9a                            ; $6f93: $cd $9a $6f
    rst $18                                       ; $6f96: $df
    ld [bc], a                                    ; $6f97: $02
    ld a, [bc]                                    ; $6f98: $0a
    ret                                           ; $6f99: $c9


Call_031_6f9a:
    ld a, $04                                     ; $6f9a: $3e $04
    rst $18                                       ; $6f9c: $df
    ld a, [bc]                                    ; $6f9d: $0a
    ld a, [bc]                                    ; $6f9e: $0a
    rst $18                                       ; $6f9f: $df
    ld [de], a                                    ; $6fa0: $12
    ld a, [bc]                                    ; $6fa1: $0a
    rst $18                                       ; $6fa2: $df
    inc c                                         ; $6fa3: $0c
    ld a, [bc]                                    ; $6fa4: $0a
    push af                                       ; $6fa5: $f5
    ld a, $05                                     ; $6fa6: $3e $05
    rst $18                                       ; $6fa8: $df
    inc b                                         ; $6fa9: $04
    ld a, [bc]                                    ; $6faa: $0a
    pop af                                        ; $6fab: $f1
    and a                                         ; $6fac: $a7
    jr z, jr_031_6fc4                             ; $6fad: $28 $15

    ld hl, $10ae                                  ; $6faf: $21 $ae $10
    rst $18                                       ; $6fb2: $df
    ld c, $0a                                     ; $6fb3: $0e $0a
    ld a, $04                                     ; $6fb5: $3e $04
    rst $18                                       ; $6fb7: $df
    ld [$3e0a], sp                                ; $6fb8: $08 $0a $3e
    inc b                                         ; $6fbb: $04
    ld b, $00                                     ; $6fbc: $06 $00
    rst $18                                       ; $6fbe: $df
    inc l                                         ; $6fbf: $2c
    ld a, [bc]                                    ; $6fc0: $0a
    jp Jump_031_7050                              ; $6fc1: $c3 $50 $70


jr_031_6fc4:
    rst $20                                       ; $6fc4: $e7
    ret nz                                        ; $6fc5: $c0

    inc c                                         ; $6fc6: $0c
    rst $18                                       ; $6fc7: $df
    inc e                                         ; $6fc8: $1c
    db $10                                        ; $6fc9: $10
    ld a, $15                                     ; $6fca: $3e $15
    ld b, a                                       ; $6fcc: $47
    ld a, $07                                     ; $6fcd: $3e $07
    ld c, a                                       ; $6fcf: $4f
    rst $18                                       ; $6fd0: $df
    ld c, [hl]                                    ; $6fd1: $4e
    ld a, [bc]                                    ; $6fd2: $0a
    ld a, $06                                     ; $6fd3: $3e $06
    ld [$c834], a                                 ; $6fd5: $ea $34 $c8
    ld bc, $8000                                  ; $6fd8: $01 $00 $80
    rst $18                                       ; $6fdb: $df
    ld e, $02                                     ; $6fdc: $1e $02
    ld bc, $ff01                                  ; $6fde: $01 $01 $ff
    rst $18                                       ; $6fe1: $df
    ld e, $02                                     ; $6fe2: $1e $02
    ld hl, $0710                                  ; $6fe4: $21 $10 $07
    rst $18                                       ; $6fe7: $df
    db $10                                        ; $6fe8: $10
    db $10                                        ; $6fe9: $10
    ld a, $00                                     ; $6fea: $3e $00
    rst $18                                       ; $6fec: $df
    ld e, $10                                     ; $6fed: $1e $10
    ld hl, $1500                                  ; $6fef: $21 $00 $15
    ld de, $2540                                  ; $6ff2: $11 $40 $25
    rst $18                                       ; $6ff5: $df
    jr nz, jr_031_7008                            ; $6ff6: $20 $10

    ld a, $06                                     ; $6ff8: $3e $06
    ldh [$96], a                                  ; $6ffa: $e0 $96
    ldh [rSVBK], a                                ; $6ffc: $e0 $70
    ld hl, $d4e3                                  ; $6ffe: $21 $e3 $d4
    ld [hl], $21                                  ; $7001: $36 $21
    ld e, $03                                     ; $7003: $1e $03
    ld bc, $c982                                  ; $7005: $01 $82 $c9

jr_031_7008:
    rst $18                                       ; $7008: $df
    ld h, $10                                     ; $7009: $26 $10
    rst $30                                       ; $700b: $f7
    jr nz, jr_031_702a                            ; $700c: $20 $1c

    jr z, jr_031_7029                             ; $700e: $28 $19

    rst $30                                       ; $7010: $f7
    ldh [rNR31], a                                ; $7011: $e0 $1b
    jr nz, jr_031_701c                            ; $7013: $20 $07

    ld a, $0b                                     ; $7015: $3e $0b
    ld [$c82c], a                                 ; $7017: $ea $2c $c8
    jr jr_031_7021                                ; $701a: $18 $05

jr_031_701c:
    ld a, $07                                     ; $701c: $3e $07
    ld [$c82c], a                                 ; $701e: $ea $2c $c8

jr_031_7021:
    ld de, $0004                                  ; $7021: $11 $04 $00
    rst $18                                       ; $7024: $df
    ld [hl+], a                                   ; $7025: $22
    db $10                                        ; $7026: $10
    jr jr_031_7040                                ; $7027: $18 $17

jr_031_7029:
    rst $30                                       ; $7029: $f7

jr_031_702a:
    ldh [$15], a                                  ; $702a: $e0 $15
    jr nz, jr_031_7035                            ; $702c: $20 $07

    ld a, $0b                                     ; $702e: $3e $0b
    ld [$c82c], a                                 ; $7030: $ea $2c $c8
    jr jr_031_703a                                ; $7033: $18 $05

jr_031_7035:
    ld a, $07                                     ; $7035: $3e $07
    ld [$c82c], a                                 ; $7037: $ea $2c $c8

jr_031_703a:
    ld de, $c000                                  ; $703a: $11 $00 $c0
    rst $18                                       ; $703d: $df
    ld [hl+], a                                   ; $703e: $22
    db $10                                        ; $703f: $10

jr_031_7040:
    ldh a, [$95]                                  ; $7040: $f0 $95
    ld hl, $6d52                                  ; $7042: $21 $52 $6d
    rst $18                                       ; $7045: $df
    ld a, [de]                                    ; $7046: $1a
    db $10                                        ; $7047: $10
    ld a, $01                                     ; $7048: $3e $01
    rst $18                                       ; $704a: $df
    ld [de], a                                    ; $704b: $12
    db $10                                        ; $704c: $10
    rst $18                                       ; $704d: $df
    jr nc, @+$12                                  ; $704e: $30 $10

Jump_031_7050:
    ret                                           ; $7050: $c9


Call_031_7051:
    rst $30                                       ; $7051: $f7
    ld h, b                                       ; $7052: $60
    ld de, $1028                                  ; $7053: $11 $28 $10
    rst $30                                       ; $7056: $f7
    ret nz                                        ; $7057: $c0

    dec d                                         ; $7058: $15
    jr z, jr_031_705e                             ; $7059: $28 $03

    rst $20                                       ; $705b: $e7
    nop                                           ; $705c: $00
    inc e                                         ; $705d: $1c

jr_031_705e:
    rst $30                                       ; $705e: $f7
    ldh [$15], a                                  ; $705f: $e0 $15
    jr z, jr_031_7066                             ; $7061: $28 $03

    rst $20                                       ; $7063: $e7
    jr nz, jr_031_7082                            ; $7064: $20 $1c

jr_031_7066:
    ret                                           ; $7066: $c9


    jp nc, $df70                                  ; $7067: $d2 $70 $df

    ld [hl], b                                    ; $706a: $70
    ld [hl], l                                    ; $706b: $75
    ld [hl], b                                    ; $706c: $70
    xor $70                                       ; $706d: $ee $70
    sbc b                                         ; $706f: $98
    ld [hl], c                                    ; $7070: $71
    sbc d                                         ; $7071: $9a
    ld [hl], d                                    ; $7072: $72
    and e                                         ; $7073: $a3
    ld [hl], d                                    ; $7074: $72
    cp [hl]                                       ; $7075: $be
    ld a, h                                       ; $7076: $7c
    nop                                           ; $7077: $00
    ld [hl+], a                                   ; $7078: $22
    nop                                           ; $7079: $00
    dec a                                         ; $707a: $3d
    nop                                           ; $707b: $00
    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    add b                                         ; $707e: $80
    ld bc, $190a                                  ; $707f: $01 $0a $19

jr_031_7082:
    ld a, l                                       ; $7082: $7d
    nop                                           ; $7083: $00
    inc e                                         ; $7084: $1c
    nop                                           ; $7085: $00
    jr c, jr_031_7088                             ; $7086: $38 $00

jr_031_7088:
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    nop                                           ; $708a: $00
    ld bc, $2416                                  ; $708b: $01 $16 $24
    ld a, l                                       ; $708e: $7d
    nop                                           ; $708f: $00
    inc h                                         ; $7090: $24
    nop                                           ; $7091: $00
    jr c, jr_031_7094                             ; $7092: $38 $00

jr_031_7094:
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    ld bc, $be16                                  ; $7097: $01 $16 $be
    ld a, h                                       ; $709a: $7c
    nop                                           ; $709b: $00
    ld e, $00                                     ; $709c: $1e $00
    add hl, sp                                    ; $709e: $39
    nop                                           ; $709f: $00
    nop                                           ; $70a0: $00
    nop                                           ; $70a1: $00
    ret nz                                        ; $70a2: $c0

    ld bc, $be0e                                  ; $70a3: $01 $0e $be
    ld a, h                                       ; $70a6: $7c
    nop                                           ; $70a7: $00
    ld [hl+], a                                   ; $70a8: $22
    nop                                           ; $70a9: $00
    add hl, sp                                    ; $70aa: $39
    nop                                           ; $70ab: $00
    nop                                           ; $70ac: $00
    nop                                           ; $70ad: $00
    ret nz                                        ; $70ae: $c0

    ld bc, $be0e                                  ; $70af: $01 $0e $be
    ld a, h                                       ; $70b2: $7c
    nop                                           ; $70b3: $00
    ld a, [de]                                    ; $70b4: $1a
    nop                                           ; $70b5: $00
    ld a, [hl-]                                   ; $70b6: $3a
    nop                                           ; $70b7: $00
    nop                                           ; $70b8: $00
    nop                                           ; $70b9: $00
    ret nz                                        ; $70ba: $c0

    ld bc, $be0e                                  ; $70bb: $01 $0e $be
    ld a, h                                       ; $70be: $7c
    nop                                           ; $70bf: $00
    ld h, $00                                     ; $70c0: $26 $00
    ld a, [hl-]                                   ; $70c2: $3a
    nop                                           ; $70c3: $00
    nop                                           ; $70c4: $00
    nop                                           ; $70c5: $00
    ret nz                                        ; $70c6: $c0

    ld bc, $000e                                  ; $70c7: $01 $0e $00
    nop                                           ; $70ca: $00
    nop                                           ; $70cb: $00
    nop                                           ; $70cc: $00
    nop                                           ; $70cd: $00
    nop                                           ; $70ce: $00
    nop                                           ; $70cf: $00
    nop                                           ; $70d0: $00
    rst $38                                       ; $70d1: $ff
    ld bc, $00c0                                  ; $70d2: $01 $c0 $00
    jr nz, jr_031_70d7                            ; $70d5: $20 $00

jr_031_70d7:
    dec a                                         ; $70d7: $3d
    ld [bc], a                                    ; $70d8: $02
    ret nz                                        ; $70d9: $c0

    nop                                           ; $70da: $00
    jr nz, jr_031_70dd                            ; $70db: $20 $00

jr_031_70dd:
    add hl, sp                                    ; $70dd: $39
    rst $38                                       ; $70de: $ff
    ld bc, $00ff                                  ; $70df: $01 $ff $00
    nop                                           ; $70e2: $00
    nop                                           ; $70e3: $00
    nop                                           ; $70e4: $00
    ld [bc], a                                    ; $70e5: $02
    inc c                                         ; $70e6: $0c
    rst $38                                       ; $70e7: $ff
    ld a, $01                                     ; $70e8: $3e $01
    ld [$c441], a                                 ; $70ea: $ea $41 $c4
    ret                                           ; $70ed: $c9


    ld [bc], a                                    ; $70ee: $02
    rst $38                                       ; $70ef: $ff
    nop                                           ; $70f0: $00
    nop                                           ; $70f1: $00
    ld e, a                                       ; $70f2: $5f
    dec d                                         ; $70f3: $15
    ld bc, $0300                                  ; $70f4: $01 $00 $03
    rst $38                                       ; $70f7: $ff
    nop                                           ; $70f8: $00
    nop                                           ; $70f9: $00
    daa                                           ; $70fa: $27
    ld [hl], c                                    ; $70fb: $71
    dec bc                                        ; $70fc: $0b
    nop                                           ; $70fd: $00
    inc b                                         ; $70fe: $04
    rst $38                                       ; $70ff: $ff
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    ld e, a                                       ; $7102: $5f
    ld [hl], c                                    ; $7103: $71
    dec bc                                        ; $7104: $0b
    nop                                           ; $7105: $00
    dec b                                         ; $7106: $05
    rst $38                                       ; $7107: $ff
    nop                                           ; $7108: $00
    nop                                           ; $7109: $00
    sbc c                                         ; $710a: $99
    ld [hl], c                                    ; $710b: $71
    nop                                           ; $710c: $00
    nop                                           ; $710d: $00
    ld b, $ff                                     ; $710e: $06 $ff
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    db $d3                                        ; $7112: $d3
    ld [hl], c                                    ; $7113: $71
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    rlca                                          ; $7116: $07
    rst $38                                       ; $7117: $ff
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    ld h, d                                       ; $711a: $62
    dec d                                         ; $711b: $15
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    ld [$00ff], sp                                ; $711e: $08 $ff $00
    nop                                           ; $7121: $00
    ld h, e                                       ; $7122: $63
    dec d                                         ; $7123: $15
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    rst $38                                       ; $7126: $ff
    rst $18                                       ; $7127: $df
    nop                                           ; $7128: $00
    ld a, [bc]                                    ; $7129: $0a
    ldh a, [$95]                                  ; $712a: $f0 $95
    ld b, a                                       ; $712c: $47
    ld a, $03                                     ; $712d: $3e $03
    ld de, $7cbe                                  ; $712f: $11 $be $7c
    rst $18                                       ; $7132: $df
    jr @+$0c                                      ; $7133: $18 $0a

    ld a, [$c296]                                 ; $7135: $fa $96 $c2
    ld b, a                                       ; $7138: $47
    ld a, $03                                     ; $7139: $3e $03
    rst $18                                       ; $713b: $df
    ld l, $0a                                     ; $713c: $2e $0a
    ld hl, $1560                                  ; $713e: $21 $60 $15
    rst $18                                       ; $7141: $df
    ld c, $0a                                     ; $7142: $0e $0a
    ld a, $03                                     ; $7144: $3e $03
    rst $18                                       ; $7146: $df
    ld [$f00a], sp                                ; $7147: $08 $0a $f0
    sub l                                         ; $714a: $95
    ld b, a                                       ; $714b: $47
    ld a, $03                                     ; $714c: $3e $03
    ld de, $7d19                                  ; $714e: $11 $19 $7d
    rst $18                                       ; $7151: $df
    jr jr_031_715e                                ; $7152: $18 $0a

    ld a, $03                                     ; $7154: $3e $03
    ld b, $00                                     ; $7156: $06 $00
    rst $18                                       ; $7158: $df
    inc l                                         ; $7159: $2c
    ld a, [bc]                                    ; $715a: $0a
    rst $18                                       ; $715b: $df
    ld [bc], a                                    ; $715c: $02
    ld a, [bc]                                    ; $715d: $0a

jr_031_715e:
    ret                                           ; $715e: $c9


    rst $18                                       ; $715f: $df
    nop                                           ; $7160: $00
    ld a, [bc]                                    ; $7161: $0a
    ldh a, [$95]                                  ; $7162: $f0 $95
    ld b, a                                       ; $7164: $47
    ld a, $04                                     ; $7165: $3e $04
    ld de, $7cbe                                  ; $7167: $11 $be $7c
    rst $18                                       ; $716a: $df
    jr @+$0c                                      ; $716b: $18 $0a

    ld a, [$c296]                                 ; $716d: $fa $96 $c2
    ld b, a                                       ; $7170: $47
    ld a, $04                                     ; $7171: $3e $04
    rst $18                                       ; $7173: $df
    ld l, $0a                                     ; $7174: $2e $0a
    ld hl, $1561                                  ; $7176: $21 $61 $15
    rst $18                                       ; $7179: $df
    ld c, $0a                                     ; $717a: $0e $0a
    ld a, $04                                     ; $717c: $3e $04
    rst $18                                       ; $717e: $df
    ld [$f00a], sp                                ; $717f: $08 $0a $f0
    sub l                                         ; $7182: $95
    ld b, a                                       ; $7183: $47
    ld a, $04                                     ; $7184: $3e $04
    ld de, $7d24                                  ; $7186: $11 $24 $7d
    rst $18                                       ; $7189: $df
    jr jr_031_7196                                ; $718a: $18 $0a

    ld a, $04                                     ; $718c: $3e $04
    ld b, $00                                     ; $718e: $06 $00
    rst $18                                       ; $7190: $df
    inc l                                         ; $7191: $2c
    ld a, [bc]                                    ; $7192: $0a
    rst $18                                       ; $7193: $df
    ld [bc], a                                    ; $7194: $02
    ld a, [bc]                                    ; $7195: $0a

jr_031_7196:
    ret                                           ; $7196: $c9


    ret                                           ; $7197: $c9


    rst $38                                       ; $7198: $ff
    rst $18                                       ; $7199: $df
    nop                                           ; $719a: $00
    ld a, [bc]                                    ; $719b: $0a
    ld a, [$c296]                                 ; $719c: $fa $96 $c2
    ld b, a                                       ; $719f: $47
    ld a, $05                                     ; $71a0: $3e $05
    rst $18                                       ; $71a2: $df
    ld l, $0a                                     ; $71a3: $2e $0a
    ld hl, $1564                                  ; $71a5: $21 $64 $15
    rst $18                                       ; $71a8: $df
    ld c, $0a                                     ; $71a9: $0e $0a
    ld a, $05                                     ; $71ab: $3e $05
    rst $18                                       ; $71ad: $df
    ld a, [bc]                                    ; $71ae: $0a
    ld a, [bc]                                    ; $71af: $0a
    rst $18                                       ; $71b0: $df
    ld [de], a                                    ; $71b1: $12
    ld a, [bc]                                    ; $71b2: $0a
    rst $18                                       ; $71b3: $df
    inc c                                         ; $71b4: $0c
    ld a, [bc]                                    ; $71b5: $0a
    push af                                       ; $71b6: $f5
    ld a, $05                                     ; $71b7: $3e $05
    rst $18                                       ; $71b9: $df
    inc b                                         ; $71ba: $04
    ld a, [bc]                                    ; $71bb: $0a
    pop af                                        ; $71bc: $f1
    and a                                         ; $71bd: $a7
    jr nz, jr_031_71c3                            ; $71be: $20 $03

    call Call_031_7252                            ; $71c0: $cd $52 $72

jr_031_71c3:
    ld a, $05                                     ; $71c3: $3e $05
    rst $18                                       ; $71c5: $df
    ld [$3e0a], sp                                ; $71c6: $08 $0a $3e
    dec b                                         ; $71c9: $05
    ld b, $c0                                     ; $71ca: $06 $c0
    rst $18                                       ; $71cc: $df
    inc l                                         ; $71cd: $2c
    ld a, [bc]                                    ; $71ce: $0a
    rst $18                                       ; $71cf: $df
    ld [bc], a                                    ; $71d0: $02
    ld a, [bc]                                    ; $71d1: $0a
    ret                                           ; $71d2: $c9


    rst $18                                       ; $71d3: $df
    nop                                           ; $71d4: $00
    ld a, [bc]                                    ; $71d5: $0a
    ld a, [$c296]                                 ; $71d6: $fa $96 $c2
    ld b, a                                       ; $71d9: $47
    ld a, $06                                     ; $71da: $3e $06
    rst $18                                       ; $71dc: $df
    ld l, $0a                                     ; $71dd: $2e $0a
    ld hl, $1564                                  ; $71df: $21 $64 $15
    rst $18                                       ; $71e2: $df
    ld c, $0a                                     ; $71e3: $0e $0a
    ld a, $06                                     ; $71e5: $3e $06
    rst $18                                       ; $71e7: $df
    ld a, [bc]                                    ; $71e8: $0a
    ld a, [bc]                                    ; $71e9: $0a
    rst $18                                       ; $71ea: $df
    ld [de], a                                    ; $71eb: $12
    ld a, [bc]                                    ; $71ec: $0a
    rst $18                                       ; $71ed: $df
    inc c                                         ; $71ee: $0c
    ld a, [bc]                                    ; $71ef: $0a
    push af                                       ; $71f0: $f5
    ld a, $05                                     ; $71f1: $3e $05
    rst $18                                       ; $71f3: $df
    inc b                                         ; $71f4: $04
    ld a, [bc]                                    ; $71f5: $0a
    pop af                                        ; $71f6: $f1
    and a                                         ; $71f7: $a7
    jr nz, jr_031_71fd                            ; $71f8: $20 $03

    call Call_031_7252                            ; $71fa: $cd $52 $72

jr_031_71fd:
    ld a, $06                                     ; $71fd: $3e $06
    rst $18                                       ; $71ff: $df
    ld [$3e0a], sp                                ; $7200: $08 $0a $3e
    ld b, $06                                     ; $7203: $06 $06
    ret nz                                        ; $7205: $c0

    rst $18                                       ; $7206: $df
    inc l                                         ; $7207: $2c
    ld a, [bc]                                    ; $7208: $0a
    rst $18                                       ; $7209: $df
    ld [bc], a                                    ; $720a: $02
    ld a, [bc]                                    ; $720b: $0a
    ret                                           ; $720c: $c9


    rst $18                                       ; $720d: $df
    nop                                           ; $720e: $00
    ld a, [bc]                                    ; $720f: $0a
    ld hl, $1564                                  ; $7210: $21 $64 $15
    rst $18                                       ; $7213: $df
    ld c, $0a                                     ; $7214: $0e $0a
    ld a, $05                                     ; $7216: $3e $05
    rst $18                                       ; $7218: $df
    ld a, [bc]                                    ; $7219: $0a
    ld a, [bc]                                    ; $721a: $0a
    rst $18                                       ; $721b: $df
    ld [de], a                                    ; $721c: $12
    ld a, [bc]                                    ; $721d: $0a
    rst $18                                       ; $721e: $df
    inc c                                         ; $721f: $0c
    ld a, [bc]                                    ; $7220: $0a
    push af                                       ; $7221: $f5
    ld a, $05                                     ; $7222: $3e $05
    rst $18                                       ; $7224: $df
    inc b                                         ; $7225: $04
    ld a, [bc]                                    ; $7226: $0a
    pop af                                        ; $7227: $f1
    and a                                         ; $7228: $a7
    jr nz, jr_031_7232                            ; $7229: $20 $07

    call Call_031_7252                            ; $722b: $cd $52 $72
    rst $18                                       ; $722e: $df
    ld [bc], a                                    ; $722f: $02
    ld a, [bc]                                    ; $7230: $0a
    ret                                           ; $7231: $c9


jr_031_7232:
    ld a, $05                                     ; $7232: $3e $05
    rst $18                                       ; $7234: $df
    ld [$3e0a], sp                                ; $7235: $08 $0a $3e
    dec b                                         ; $7238: $05
    ld b, $c0                                     ; $7239: $06 $c0
    rst $18                                       ; $723b: $df
    inc l                                         ; $723c: $2c
    ld a, [bc]                                    ; $723d: $0a
    ld a, $00                                     ; $723e: $3e $00
    ld bc, $2000                                  ; $7240: $01 $00 $20
    ld de, $3900                                  ; $7243: $11 $00 $39
    rst $18                                       ; $7246: $df
    ld [hl+], a                                   ; $7247: $22
    ld a, [bc]                                    ; $7248: $0a
    ld a, $00                                     ; $7249: $3e $00
    rst $18                                       ; $724b: $df
    ld e, $0a                                     ; $724c: $1e $0a
    rst $18                                       ; $724e: $df
    ld [bc], a                                    ; $724f: $02
    ld a, [bc]                                    ; $7250: $0a
    ret                                           ; $7251: $c9


Call_031_7252:
    rst $18                                       ; $7252: $df
    inc e                                         ; $7253: $1c
    db $10                                        ; $7254: $10
    ld a, $2d                                     ; $7255: $3e $2d
    ld b, a                                       ; $7257: $47
    ld a, $02                                     ; $7258: $3e $02
    ld c, a                                       ; $725a: $4f
    rst $18                                       ; $725b: $df
    ld c, [hl]                                    ; $725c: $4e
    ld a, [bc]                                    ; $725d: $0a
    ld a, $06                                     ; $725e: $3e $06
    ld [$c834], a                                 ; $7260: $ea $34 $c8
    ld bc, $8000                                  ; $7263: $01 $00 $80
    rst $18                                       ; $7266: $df
    ld e, $02                                     ; $7267: $1e $02
    ld bc, $ff01                                  ; $7269: $01 $01 $ff
    rst $18                                       ; $726c: $df
    ld e, $02                                     ; $726d: $1e $02
    ld hl, $0006                                  ; $726f: $21 $06 $00
    rst $18                                       ; $7272: $df
    db $10                                        ; $7273: $10
    db $10                                        ; $7274: $10
    ld a, $00                                     ; $7275: $3e $00
    rst $18                                       ; $7277: $df
    ld e, $10                                     ; $7278: $1e $10
    ld hl, $2000                                  ; $727a: $21 $00 $20
    ld de, $3800                                  ; $727d: $11 $00 $38
    rst $18                                       ; $7280: $df
    jr nz, jr_031_7293                            ; $7281: $20 $10

    ld de, $c000                                  ; $7283: $11 $00 $c0
    rst $18                                       ; $7286: $df
    ld [hl+], a                                   ; $7287: $22
    db $10                                        ; $7288: $10
    ldh a, [$95]                                  ; $7289: $f0 $95
    ld hl, $75c0                                  ; $728b: $21 $c0 $75
    rst $18                                       ; $728e: $df
    ld a, [de]                                    ; $728f: $1a
    db $10                                        ; $7290: $10
    ld a, $01                                     ; $7291: $3e $01

jr_031_7293:
    rst $18                                       ; $7293: $df
    ld [de], a                                    ; $7294: $12
    db $10                                        ; $7295: $10
    rst $18                                       ; $7296: $df
    jr nc, @+$12                                  ; $7297: $30 $10

    ret                                           ; $7299: $c9


    ld bc, $00ff                                  ; $729a: $01 $ff $00
    nop                                           ; $729d: $00
    dec c                                         ; $729e: $0d
    ld [hl], d                                    ; $729f: $72
    nop                                           ; $72a0: $00
    nop                                           ; $72a1: $00
    rst $38                                       ; $72a2: $ff
    ld a, [$c46a]                                 ; $72a3: $fa $6a $c4
    cp $02                                        ; $72a6: $fe $02
    jr nz, jr_031_72c4                            ; $72a8: $20 $1a

    rst $30                                       ; $72aa: $f7
    ld h, b                                       ; $72ab: $60
    inc c                                         ; $72ac: $0c
    jr z, jr_031_72bd                             ; $72ad: $28 $0e

    ld c, $04                                     ; $72af: $0e $04
    call Call_000_25af                            ; $72b1: $cd $af $25
    call Call_000_2625                            ; $72b4: $cd $25 $26
    call Call_031_72cf                            ; $72b7: $cd $cf $72
    call Call_031_7444                            ; $72ba: $cd $44 $74

jr_031_72bd:
    xor a                                         ; $72bd: $af
    ld hl, $c4b4                                  ; $72be: $21 $b4 $c4
    ld [hl+], a                                   ; $72c1: $22
    ld [hl+], a                                   ; $72c2: $22
    ret                                           ; $72c3: $c9


jr_031_72c4:
    cp $fa                                        ; $72c4: $fe $fa
    jr nz, jr_031_72ce                            ; $72c6: $20 $06

    xor a                                         ; $72c8: $af
    ld hl, $c4b4                                  ; $72c9: $21 $b4 $c4
    ld [hl+], a                                   ; $72cc: $22
    ld [hl+], a                                   ; $72cd: $22

jr_031_72ce:
    ret                                           ; $72ce: $c9


Call_031_72cf:
    rst $18                                       ; $72cf: $df
    nop                                           ; $72d0: $00
    ld a, [bc]                                    ; $72d1: $0a
    rst $30                                       ; $72d2: $f7
    ld h, b                                       ; $72d3: $60
    inc c                                         ; $72d4: $0c
    jp nz, Jump_031_7308                          ; $72d5: $c2 $08 $73

    ld a, $03                                     ; $72d8: $3e $03
    ld b, a                                       ; $72da: $47
    ld a, $05                                     ; $72db: $3e $05
    rst $18                                       ; $72dd: $df
    ld l, $0a                                     ; $72de: $2e $0a
    ld hl, $1562                                  ; $72e0: $21 $62 $15
    rst $18                                       ; $72e3: $df
    ld c, $0a                                     ; $72e4: $0e $0a
    ld a, $05                                     ; $72e6: $3e $05
    rst $18                                       ; $72e8: $df
    ld [$3e0a], sp                                ; $72e9: $08 $0a $3e
    dec b                                         ; $72ec: $05
    ld b, $c0                                     ; $72ed: $06 $c0
    rst $18                                       ; $72ef: $df
    inc l                                         ; $72f0: $2c
    ld a, [bc]                                    ; $72f1: $0a
    rst $18                                       ; $72f2: $df
    ld [bc], a                                    ; $72f3: $02
    ld a, [bc]                                    ; $72f4: $0a
    ret                                           ; $72f5: $c9


    sub d                                         ; $72f6: $92
    ld [hl], e                                    ; $72f7: $73
    ld hl, $2e73                                  ; $72f8: $21 $73 $2e
    ld [hl], e                                    ; $72fb: $73
    dec sp                                        ; $72fc: $3b
    ld [hl], e                                    ; $72fd: $73
    ld c, b                                       ; $72fe: $48
    ld [hl], e                                    ; $72ff: $73
    ld d, l                                       ; $7300: $55
    ld [hl], e                                    ; $7301: $73
    ld h, d                                       ; $7302: $62
    ld [hl], e                                    ; $7303: $73
    ld l, a                                       ; $7304: $6f
    ld [hl], e                                    ; $7305: $73
    ld a, h                                       ; $7306: $7c
    ld [hl], e                                    ; $7307: $73

Jump_031_7308:
    ld a, [$c296]                                 ; $7308: $fa $96 $c2
    ld b, a                                       ; $730b: $47
    ld a, $05                                     ; $730c: $3e $05
    rst $18                                       ; $730e: $df
    ld l, $0a                                     ; $730f: $2e $0a
    ld a, [$c968]                                 ; $7311: $fa $68 $c9
    add a                                         ; $7314: $87
    ld hl, $72f6                                  ; $7315: $21 $f6 $72
    add l                                         ; $7318: $85
    ld l, a                                       ; $7319: $6f
    jr nc, jr_031_731d                            ; $731a: $30 $01

    inc h                                         ; $731c: $24

jr_031_731d:
    ld a, [hl+]                                   ; $731d: $2a
    ld h, [hl]                                    ; $731e: $66
    ld l, a                                       ; $731f: $6f
    jp hl                                         ; $7320: $e9


    ld hl, $15bc                                  ; $7321: $21 $bc $15
    rst $18                                       ; $7324: $df
    ld c, $0a                                     ; $7325: $0e $0a
    ld a, $05                                     ; $7327: $3e $05
    rst $18                                       ; $7329: $df
    ld [$180a], sp                                ; $732a: $08 $0a $18
    ld e, c                                       ; $732d: $59
    ld hl, $15bd                                  ; $732e: $21 $bd $15
    rst $18                                       ; $7331: $df
    ld c, $0a                                     ; $7332: $0e $0a
    ld a, $05                                     ; $7334: $3e $05
    rst $18                                       ; $7336: $df
    ld [$180a], sp                                ; $7337: $08 $0a $18
    ld c, h                                       ; $733a: $4c
    ld hl, $15be                                  ; $733b: $21 $be $15
    rst $18                                       ; $733e: $df
    ld c, $0a                                     ; $733f: $0e $0a
    ld a, $05                                     ; $7341: $3e $05
    rst $18                                       ; $7343: $df
    ld [$180a], sp                                ; $7344: $08 $0a $18
    ccf                                           ; $7347: $3f
    ld hl, $15bf                                  ; $7348: $21 $bf $15
    rst $18                                       ; $734b: $df
    ld c, $0a                                     ; $734c: $0e $0a
    ld a, $05                                     ; $734e: $3e $05
    rst $18                                       ; $7350: $df
    ld [$180a], sp                                ; $7351: $08 $0a $18
    ld [hl-], a                                   ; $7354: $32
    ld hl, $15c1                                  ; $7355: $21 $c1 $15
    rst $18                                       ; $7358: $df
    ld c, $0a                                     ; $7359: $0e $0a
    ld a, $05                                     ; $735b: $3e $05
    rst $18                                       ; $735d: $df
    ld [$180a], sp                                ; $735e: $08 $0a $18
    dec h                                         ; $7361: $25
    ld hl, $15c2                                  ; $7362: $21 $c2 $15
    rst $18                                       ; $7365: $df
    ld c, $0a                                     ; $7366: $0e $0a
    ld a, $05                                     ; $7368: $3e $05
    rst $18                                       ; $736a: $df
    ld [$180a], sp                                ; $736b: $08 $0a $18
    jr jr_031_7391                                ; $736e: $18 $21

    jp $df15                                      ; $7370: $c3 $15 $df


    ld c, $0a                                     ; $7373: $0e $0a
    ld a, $05                                     ; $7375: $3e $05
    rst $18                                       ; $7377: $df
    ld [$180a], sp                                ; $7378: $08 $0a $18
    dec bc                                        ; $737b: $0b
    ld hl, $15c4                                  ; $737c: $21 $c4 $15
    rst $18                                       ; $737f: $df
    ld c, $0a                                     ; $7380: $0e $0a
    ld a, $05                                     ; $7382: $3e $05
    rst $18                                       ; $7384: $df
    ld [$3e0a], sp                                ; $7385: $08 $0a $3e
    dec b                                         ; $7388: $05
    ld b, $c0                                     ; $7389: $06 $c0
    rst $18                                       ; $738b: $df
    inc l                                         ; $738c: $2c
    ld a, [bc]                                    ; $738d: $0a
    rst $18                                       ; $738e: $df
    ld [bc], a                                    ; $738f: $02
    ld a, [bc]                                    ; $7390: $0a

jr_031_7391:
    ret                                           ; $7391: $c9


    ld a, $05                                     ; $7392: $3e $05
    ldh [$96], a                                  ; $7394: $e0 $96
    ldh [rSVBK], a                                ; $7396: $e0 $70
    call Call_031_7691                            ; $7398: $cd $91 $76
    ld d, h                                       ; $739b: $54
    ld e, l                                       ; $739c: $5d
    call Call_031_756a                            ; $739d: $cd $6a $75
    ld hl, $1566                                  ; $73a0: $21 $66 $15
    add l                                         ; $73a3: $85
    ld l, a                                       ; $73a4: $6f
    jr nc, jr_031_73a8                            ; $73a5: $30 $01

    inc h                                         ; $73a7: $24

jr_031_73a8:
    ld de, $dd74                                  ; $73a8: $11 $74 $dd
    rst $18                                       ; $73ab: $df
    ld e, h                                       ; $73ac: $5c
    dec b                                         ; $73ad: $05
    ld hl, $dd74                                  ; $73ae: $21 $74 $dd
    rst $18                                       ; $73b1: $df
    ld d, h                                       ; $73b2: $54
    dec b                                         ; $73b3: $05
    call Call_031_76a2                            ; $73b4: $cd $a2 $76
    inc a                                         ; $73b7: $3c
    inc a                                         ; $73b8: $3c
    inc a                                         ; $73b9: $3c
    inc a                                         ; $73ba: $3c
    ld hl, $1572                                  ; $73bb: $21 $72 $15
    add l                                         ; $73be: $85
    ld l, a                                       ; $73bf: $6f
    jr nc, jr_031_73c3                            ; $73c0: $30 $01

    inc h                                         ; $73c2: $24

jr_031_73c3:
    ld de, $dd94                                  ; $73c3: $11 $94 $dd
    rst $18                                       ; $73c6: $df
    ld e, h                                       ; $73c7: $5c
    dec b                                         ; $73c8: $05
    ld hl, $dd94                                  ; $73c9: $21 $94 $dd
    rst $18                                       ; $73cc: $df
    ld d, h                                       ; $73cd: $54
    dec b                                         ; $73ce: $05
    ld hl, $c81c                                  ; $73cf: $21 $1c $c8
    ld a, [hl+]                                   ; $73d2: $2a
    inc hl                                        ; $73d3: $23
    push hl                                       ; $73d4: $e5
    inc a                                         ; $73d5: $3c
    inc a                                         ; $73d6: $3c
    inc a                                         ; $73d7: $3c
    inc a                                         ; $73d8: $3c
    ld b, a                                       ; $73d9: $47
    ld a, $08                                     ; $73da: $3e $08
    sub b                                         ; $73dc: $90
    ld hl, $1584                                  ; $73dd: $21 $84 $15
    add l                                         ; $73e0: $85
    ld l, a                                       ; $73e1: $6f
    jr nc, jr_031_73e5                            ; $73e2: $30 $01

    inc h                                         ; $73e4: $24

jr_031_73e5:
    ld de, $ddb4                                  ; $73e5: $11 $b4 $dd
    rst $18                                       ; $73e8: $df
    ld e, h                                       ; $73e9: $5c
    dec b                                         ; $73ea: $05
    ld hl, $ddb4                                  ; $73eb: $21 $b4 $dd
    rst $18                                       ; $73ee: $df
    ld d, h                                       ; $73ef: $54
    dec b                                         ; $73f0: $05
    pop hl                                        ; $73f1: $e1
    ld a, [hl+]                                   ; $73f2: $2a
    inc a                                         ; $73f3: $3c
    inc a                                         ; $73f4: $3c
    inc a                                         ; $73f5: $3c
    inc a                                         ; $73f6: $3c
    ld b, a                                       ; $73f7: $47
    ld a, $08                                     ; $73f8: $3e $08
    sub b                                         ; $73fa: $90
    push hl                                       ; $73fb: $e5
    ld hl, $1596                                  ; $73fc: $21 $96 $15
    add l                                         ; $73ff: $85
    ld l, a                                       ; $7400: $6f
    jr nc, jr_031_7404                            ; $7401: $30 $01

    inc h                                         ; $7403: $24

jr_031_7404:
    ld de, $ddd4                                  ; $7404: $11 $d4 $dd
    rst $18                                       ; $7407: $df
    ld e, h                                       ; $7408: $5c
    dec b                                         ; $7409: $05
    ld hl, $ddd4                                  ; $740a: $21 $d4 $dd
    rst $18                                       ; $740d: $df
    ld d, h                                       ; $740e: $54
    dec b                                         ; $740f: $05
    pop hl                                        ; $7410: $e1
    ld a, [hl+]                                   ; $7411: $2a
    inc a                                         ; $7412: $3c
    inc a                                         ; $7413: $3c
    inc a                                         ; $7414: $3c
    inc a                                         ; $7415: $3c
    ld b, a                                       ; $7416: $47
    ld a, $08                                     ; $7417: $3e $08
    sub b                                         ; $7419: $90
    ld hl, $15a8                                  ; $741a: $21 $a8 $15
    add l                                         ; $741d: $85
    ld l, a                                       ; $741e: $6f
    jr nc, jr_031_7422                            ; $741f: $30 $01

    inc h                                         ; $7421: $24

jr_031_7422:
    ld de, $ddf4                                  ; $7422: $11 $f4 $dd
    rst $18                                       ; $7425: $df
    ld e, h                                       ; $7426: $5c
    dec b                                         ; $7427: $05
    ld hl, $ddf4                                  ; $7428: $21 $f4 $dd
    rst $18                                       ; $742b: $df
    ld d, h                                       ; $742c: $54
    dec b                                         ; $742d: $05
    ld hl, $15ba                                  ; $742e: $21 $ba $15
    rst $18                                       ; $7431: $df
    ld c, $0a                                     ; $7432: $0e $0a
    ld a, $05                                     ; $7434: $3e $05
    rst $18                                       ; $7436: $df
    ld [$3e0a], sp                                ; $7437: $08 $0a $3e
    dec b                                         ; $743a: $05
    ld b, $c0                                     ; $743b: $06 $c0
    rst $18                                       ; $743d: $df
    inc l                                         ; $743e: $2c
    ld a, [bc]                                    ; $743f: $0a
    rst $18                                       ; $7440: $df
    ld [bc], a                                    ; $7441: $02
    ld a, [bc]                                    ; $7442: $0a
    ret                                           ; $7443: $c9


Call_031_7444:
    rst $18                                       ; $7444: $df
    nop                                           ; $7445: $00
    ld a, [bc]                                    ; $7446: $0a
    rst $30                                       ; $7447: $f7
    ld h, b                                       ; $7448: $60
    inc c                                         ; $7449: $0c
    jr nz, jr_031_747c                            ; $744a: $20 $30

    ld a, $04                                     ; $744c: $3e $04
    ld b, a                                       ; $744e: $47
    ld a, $06                                     ; $744f: $3e $06
    rst $18                                       ; $7451: $df
    ld l, $0a                                     ; $7452: $2e $0a
    ld hl, $1563                                  ; $7454: $21 $63 $15
    rst $18                                       ; $7457: $df
    ld c, $0a                                     ; $7458: $0e $0a
    ld a, $06                                     ; $745a: $3e $06
    rst $18                                       ; $745c: $df
    ld [$3e0a], sp                                ; $745d: $08 $0a $3e
    ld b, $06                                     ; $7460: $06 $06
    ret nz                                        ; $7462: $c0

    rst $18                                       ; $7463: $df
    inc l                                         ; $7464: $2c
    ld a, [bc]                                    ; $7465: $0a
    rst $18                                       ; $7466: $df
    ld [bc], a                                    ; $7467: $02
    ld a, [bc]                                    ; $7468: $0a
    ret                                           ; $7469: $c9


    cp b                                          ; $746a: $b8
    ld [hl], h                                    ; $746b: $74
    sub l                                         ; $746c: $95
    ld [hl], h                                    ; $746d: $74
    sub l                                         ; $746e: $95
    ld [hl], h                                    ; $746f: $74
    sub l                                         ; $7470: $95
    ld [hl], h                                    ; $7471: $74
    sub l                                         ; $7472: $95
    ld [hl], h                                    ; $7473: $74
    and d                                         ; $7474: $a2
    ld [hl], h                                    ; $7475: $74
    and d                                         ; $7476: $a2
    ld [hl], h                                    ; $7477: $74
    and d                                         ; $7478: $a2
    ld [hl], h                                    ; $7479: $74
    and d                                         ; $747a: $a2
    ld [hl], h                                    ; $747b: $74

jr_031_747c:
    ld a, [$c296]                                 ; $747c: $fa $96 $c2
    ld b, a                                       ; $747f: $47
    ld a, $06                                     ; $7480: $3e $06
    rst $18                                       ; $7482: $df
    ld l, $0a                                     ; $7483: $2e $0a
    ld a, [$c968]                                 ; $7485: $fa $68 $c9
    add a                                         ; $7488: $87
    ld hl, $746a                                  ; $7489: $21 $6a $74
    add l                                         ; $748c: $85
    ld l, a                                       ; $748d: $6f
    jr nc, jr_031_7491                            ; $748e: $30 $01

    inc h                                         ; $7490: $24

jr_031_7491:
    ld a, [hl+]                                   ; $7491: $2a
    ld h, [hl]                                    ; $7492: $66
    ld l, a                                       ; $7493: $6f
    jp hl                                         ; $7494: $e9


    ld hl, $15c0                                  ; $7495: $21 $c0 $15
    rst $18                                       ; $7498: $df
    ld c, $0a                                     ; $7499: $0e $0a
    ld a, $06                                     ; $749b: $3e $06
    rst $18                                       ; $749d: $df
    ld [$180a], sp                                ; $749e: $08 $0a $18
    dec bc                                        ; $74a1: $0b
    ld hl, $15c5                                  ; $74a2: $21 $c5 $15
    rst $18                                       ; $74a5: $df
    ld c, $0a                                     ; $74a6: $0e $0a
    ld a, $06                                     ; $74a8: $3e $06
    rst $18                                       ; $74aa: $df
    ld [$3e0a], sp                                ; $74ab: $08 $0a $3e
    ld b, $06                                     ; $74ae: $06 $06
    ret nz                                        ; $74b0: $c0

    rst $18                                       ; $74b1: $df
    inc l                                         ; $74b2: $2c
    ld a, [bc]                                    ; $74b3: $0a
    rst $18                                       ; $74b4: $df
    ld [bc], a                                    ; $74b5: $02
    ld a, [bc]                                    ; $74b6: $0a
    ret                                           ; $74b7: $c9


    ld a, $05                                     ; $74b8: $3e $05
    ldh [$96], a                                  ; $74ba: $e0 $96
    ldh [rSVBK], a                                ; $74bc: $e0 $70
    call Call_031_7691                            ; $74be: $cd $91 $76
    ld d, h                                       ; $74c1: $54
    ld e, l                                       ; $74c2: $5d
    call Call_031_756a                            ; $74c3: $cd $6a $75
    ld hl, $156c                                  ; $74c6: $21 $6c $15
    add l                                         ; $74c9: $85
    ld l, a                                       ; $74ca: $6f
    jr nc, jr_031_74ce                            ; $74cb: $30 $01

    inc h                                         ; $74cd: $24

jr_031_74ce:
    ld de, $dd74                                  ; $74ce: $11 $74 $dd
    rst $18                                       ; $74d1: $df
    ld e, h                                       ; $74d2: $5c
    dec b                                         ; $74d3: $05
    ld hl, $dd74                                  ; $74d4: $21 $74 $dd
    rst $18                                       ; $74d7: $df
    ld d, h                                       ; $74d8: $54
    dec b                                         ; $74d9: $05
    call Call_031_76a2                            ; $74da: $cd $a2 $76
    inc a                                         ; $74dd: $3c
    inc a                                         ; $74de: $3c
    inc a                                         ; $74df: $3c
    inc a                                         ; $74e0: $3c
    ld hl, $157b                                  ; $74e1: $21 $7b $15
    add l                                         ; $74e4: $85
    ld l, a                                       ; $74e5: $6f
    jr nc, jr_031_74e9                            ; $74e6: $30 $01

    inc h                                         ; $74e8: $24

jr_031_74e9:
    ld de, $dd94                                  ; $74e9: $11 $94 $dd
    rst $18                                       ; $74ec: $df
    ld e, h                                       ; $74ed: $5c
    dec b                                         ; $74ee: $05
    ld hl, $dd94                                  ; $74ef: $21 $94 $dd
    rst $18                                       ; $74f2: $df
    ld d, h                                       ; $74f3: $54
    dec b                                         ; $74f4: $05
    ld hl, $c81c                                  ; $74f5: $21 $1c $c8
    ld a, [hl+]                                   ; $74f8: $2a
    inc hl                                        ; $74f9: $23
    push hl                                       ; $74fa: $e5
    inc a                                         ; $74fb: $3c
    inc a                                         ; $74fc: $3c
    inc a                                         ; $74fd: $3c
    inc a                                         ; $74fe: $3c
    ld b, a                                       ; $74ff: $47
    ld a, $08                                     ; $7500: $3e $08
    sub b                                         ; $7502: $90
    ld hl, $158d                                  ; $7503: $21 $8d $15
    add l                                         ; $7506: $85
    ld l, a                                       ; $7507: $6f
    jr nc, jr_031_750b                            ; $7508: $30 $01

    inc h                                         ; $750a: $24

jr_031_750b:
    ld de, $ddb4                                  ; $750b: $11 $b4 $dd
    rst $18                                       ; $750e: $df
    ld e, h                                       ; $750f: $5c
    dec b                                         ; $7510: $05
    ld hl, $ddb4                                  ; $7511: $21 $b4 $dd
    rst $18                                       ; $7514: $df
    ld d, h                                       ; $7515: $54
    dec b                                         ; $7516: $05
    pop hl                                        ; $7517: $e1
    ld a, [hl+]                                   ; $7518: $2a
    push hl                                       ; $7519: $e5
    inc a                                         ; $751a: $3c
    inc a                                         ; $751b: $3c
    inc a                                         ; $751c: $3c
    inc a                                         ; $751d: $3c
    ld b, a                                       ; $751e: $47
    ld a, $08                                     ; $751f: $3e $08
    sub b                                         ; $7521: $90
    ld hl, $159f                                  ; $7522: $21 $9f $15
    add l                                         ; $7525: $85
    ld l, a                                       ; $7526: $6f
    jr nc, jr_031_752a                            ; $7527: $30 $01

    inc h                                         ; $7529: $24

jr_031_752a:
    ld de, $ddd4                                  ; $752a: $11 $d4 $dd
    rst $18                                       ; $752d: $df
    ld e, h                                       ; $752e: $5c
    dec b                                         ; $752f: $05
    ld hl, $ddd4                                  ; $7530: $21 $d4 $dd
    rst $18                                       ; $7533: $df
    ld d, h                                       ; $7534: $54
    dec b                                         ; $7535: $05
    pop hl                                        ; $7536: $e1
    ld a, [hl+]                                   ; $7537: $2a
    inc a                                         ; $7538: $3c
    inc a                                         ; $7539: $3c
    inc a                                         ; $753a: $3c
    inc a                                         ; $753b: $3c
    ld b, a                                       ; $753c: $47
    ld a, $08                                     ; $753d: $3e $08
    sub b                                         ; $753f: $90
    ld hl, $15b1                                  ; $7540: $21 $b1 $15
    add l                                         ; $7543: $85
    ld l, a                                       ; $7544: $6f
    jr nc, jr_031_7548                            ; $7545: $30 $01

    inc h                                         ; $7547: $24

jr_031_7548:
    ld de, $ddf4                                  ; $7548: $11 $f4 $dd
    rst $18                                       ; $754b: $df
    ld e, h                                       ; $754c: $5c
    dec b                                         ; $754d: $05
    ld hl, $ddf4                                  ; $754e: $21 $f4 $dd
    rst $18                                       ; $7551: $df
    ld d, h                                       ; $7552: $54
    dec b                                         ; $7553: $05
    ld hl, $15bb                                  ; $7554: $21 $bb $15
    rst $18                                       ; $7557: $df
    ld c, $0a                                     ; $7558: $0e $0a
    ld a, $06                                     ; $755a: $3e $06
    rst $18                                       ; $755c: $df
    ld [$3e0a], sp                                ; $755d: $08 $0a $3e
    ld b, $06                                     ; $7560: $06 $06
    ret nz                                        ; $7562: $c0

    rst $18                                       ; $7563: $df
    inc l                                         ; $7564: $2c
    ld a, [bc]                                    ; $7565: $0a
    rst $18                                       ; $7566: $df
    ld [bc], a                                    ; $7567: $02
    ld a, [bc]                                    ; $7568: $0a
    ret                                           ; $7569: $c9


Call_031_756a:
    push hl                                       ; $756a: $e5
    ld b, d                                       ; $756b: $42
    ld c, e                                       ; $756c: $4b
    ld h, b                                       ; $756d: $60
    ld l, c                                       ; $756e: $69
    ld de, $012d                                  ; $756f: $11 $2d $01
    call Call_000_08ac                            ; $7572: $cd $ac $08
    bit 7, h                                      ; $7575: $cb $7c
    jr nz, jr_031_757d                            ; $7577: $20 $04

    ld a, $05                                     ; $7579: $3e $05
    pop hl                                        ; $757b: $e1
    ret                                           ; $757c: $c9


jr_031_757d:
    ld h, b                                       ; $757d: $60
    ld l, c                                       ; $757e: $69
    ld de, $0119                                  ; $757f: $11 $19 $01
    call Call_000_08ac                            ; $7582: $cd $ac $08
    bit 7, h                                      ; $7585: $cb $7c
    jr nz, jr_031_758d                            ; $7587: $20 $04

    ld a, $04                                     ; $7589: $3e $04
    pop hl                                        ; $758b: $e1
    ret                                           ; $758c: $c9


jr_031_758d:
    ld h, b                                       ; $758d: $60
    ld l, c                                       ; $758e: $69
    ld de, $0105                                  ; $758f: $11 $05 $01
    call Call_000_08ac                            ; $7592: $cd $ac $08
    bit 7, h                                      ; $7595: $cb $7c
    jr nz, jr_031_759d                            ; $7597: $20 $04

    ld a, $03                                     ; $7599: $3e $03
    pop hl                                        ; $759b: $e1
    ret                                           ; $759c: $c9


jr_031_759d:
    ld h, b                                       ; $759d: $60
    ld l, c                                       ; $759e: $69
    ld de, $00f1                                  ; $759f: $11 $f1 $00
    call Call_000_08ac                            ; $75a2: $cd $ac $08
    bit 7, h                                      ; $75a5: $cb $7c
    jr nz, jr_031_75ad                            ; $75a7: $20 $04

    ld a, $02                                     ; $75a9: $3e $02
    pop hl                                        ; $75ab: $e1
    ret                                           ; $75ac: $c9


jr_031_75ad:
    ld h, b                                       ; $75ad: $60
    ld l, c                                       ; $75ae: $69
    ld de, $00dd                                  ; $75af: $11 $dd $00
    call Call_000_08ac                            ; $75b2: $cd $ac $08
    bit 7, h                                      ; $75b5: $cb $7c
    jr nz, jr_031_75bd                            ; $75b7: $20 $04

    ld a, $01                                     ; $75b9: $3e $01
    pop hl                                        ; $75bb: $e1
    ret                                           ; $75bc: $c9


jr_031_75bd:
    xor a                                         ; $75bd: $af
    pop hl                                        ; $75be: $e1
    ret                                           ; $75bf: $c9


    ldh [$75], a                                  ; $75c0: $e0 $75
    pop hl                                        ; $75c2: $e1
    ld [hl], l                                    ; $75c3: $75
    nop                                           ; $75c4: $00
    nop                                           ; $75c5: $00
    nop                                           ; $75c6: $00
    nop                                           ; $75c7: $00
    nop                                           ; $75c8: $00
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    nop                                           ; $75cb: $00
    nop                                           ; $75cc: $00
    nop                                           ; $75cd: $00
    nop                                           ; $75ce: $00
    nop                                           ; $75cf: $00
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
    ret                                           ; $75e0: $c9


    ld a, [$c834]                                 ; $75e1: $fa $34 $c8
    or a                                          ; $75e4: $b7
    jr z, jr_031_75ec                             ; $75e5: $28 $05

    rst $20                                       ; $75e7: $e7
    ld h, b                                       ; $75e8: $60
    inc c                                         ; $75e9: $0c
    jr jr_031_75ef                                ; $75ea: $18 $03

jr_031_75ec:
    rst $28                                       ; $75ec: $ef
    ld h, b                                       ; $75ed: $60
    inc c                                         ; $75ee: $0c

jr_031_75ef:
    call Call_031_760c                            ; $75ef: $cd $0c $76
    ld [$c968], a                                 ; $75f2: $ea $68 $c9
    ld a, $06                                     ; $75f5: $3e $06
    ldh [$96], a                                  ; $75f7: $e0 $96
    ldh [rSVBK], a                                ; $75f9: $e0 $70
    ld hl, $d680                                  ; $75fb: $21 $80 $d6
    ld bc, $0008                                  ; $75fe: $01 $08 $00
    add hl, bc                                    ; $7601: $09
    ld a, [hl]                                    ; $7602: $7e
    ld [$c969], a                                 ; $7603: $ea $69 $c9
    ld a, $82                                     ; $7606: $3e $82
    rst $18                                       ; $7608: $df
    ld l, $10                                     ; $7609: $2e $10
    ret                                           ; $760b: $c9


Call_031_760c:
    ld a, $06                                     ; $760c: $3e $06
    ldh [$96], a                                  ; $760e: $e0 $96
    ldh [rSVBK], a                                ; $7610: $e0 $70
    ld hl, $d680                                  ; $7612: $21 $80 $d6
    ld bc, $000a                                  ; $7615: $01 $0a $00
    add hl, bc                                    ; $7618: $09
    ld a, [hl+]                                   ; $7619: $2a
    cp $3c                                        ; $761a: $fe $3c
    jr nz, jr_031_7622                            ; $761c: $20 $04

    ld c, $00                                     ; $761e: $0e $00
    jr jr_031_762c                                ; $7620: $18 $0a

jr_031_7622:
    cp $34                                        ; $7622: $fe $34
    jr c, jr_031_762a                             ; $7624: $38 $04

    ld c, $01                                     ; $7626: $0e $01
    jr jr_031_762c                                ; $7628: $18 $02

jr_031_762a:
    ld c, $02                                     ; $762a: $0e $02

jr_031_762c:
    ld a, [hl+]                                   ; $762c: $2a
    bit 7, a                                      ; $762d: $cb $7f
    jr z, jr_031_7633                             ; $762f: $28 $02

    cpl                                           ; $7631: $2f
    inc a                                         ; $7632: $3c

jr_031_7633:
    or a                                          ; $7633: $b7
    jr nz, jr_031_763a                            ; $7634: $20 $04

    ld d, $00                                     ; $7636: $16 $00
    jr jr_031_7644                                ; $7638: $18 $0a

jr_031_763a:
    cp $04                                        ; $763a: $fe $04
    jr nc, jr_031_7642                            ; $763c: $30 $04

    ld d, $01                                     ; $763e: $16 $01
    jr jr_031_7644                                ; $7640: $18 $02

jr_031_7642:
    ld d, $02                                     ; $7642: $16 $02

jr_031_7644:
    ld a, c                                       ; $7644: $79
    or d                                          ; $7645: $b2
    jr nz, jr_031_766c                            ; $7646: $20 $24

    ld a, [hl]                                    ; $7648: $7e
    bit 4, a                                      ; $7649: $cb $67
    jr z, jr_031_7651                             ; $764b: $28 $04

    ld a, $05                                     ; $764d: $3e $05
    jr jr_031_7690                                ; $764f: $18 $3f

jr_031_7651:
    bit 5, a                                      ; $7651: $cb $6f
    jr z, jr_031_7659                             ; $7653: $28 $04

    ld a, $06                                     ; $7655: $3e $06
    jr jr_031_7690                                ; $7657: $18 $37

jr_031_7659:
    bit 6, a                                      ; $7659: $cb $77
    jr z, jr_031_7661                             ; $765b: $28 $04

    ld a, $07                                     ; $765d: $3e $07
    jr jr_031_7690                                ; $765f: $18 $2f

jr_031_7661:
    bit 7, a                                      ; $7661: $cb $7f
    jr z, jr_031_7669                             ; $7663: $28 $04

    ld a, $08                                     ; $7665: $3e $08
    jr jr_031_7690                                ; $7667: $18 $27

jr_031_7669:
    xor a                                         ; $7669: $af
    jr jr_031_7690                                ; $766a: $18 $24

jr_031_766c:
    ld a, c                                       ; $766c: $79
    cp $02                                        ; $766d: $fe $02
    jr nz, jr_031_7675                            ; $766f: $20 $04

    ld a, $04                                     ; $7671: $3e $04
    jr jr_031_7690                                ; $7673: $18 $1b

jr_031_7675:
    ld a, d                                       ; $7675: $7a
    cp $02                                        ; $7676: $fe $02
    jr nz, jr_031_767e                            ; $7678: $20 $04

    ld a, $04                                     ; $767a: $3e $04
    jr jr_031_7690                                ; $767c: $18 $12

jr_031_767e:
    ld a, c                                       ; $767e: $79
    and d                                         ; $767f: $a2
    jr z, jr_031_7686                             ; $7680: $28 $04

    ld a, $03                                     ; $7682: $3e $03
    jr jr_031_7690                                ; $7684: $18 $0a

jr_031_7686:
    ld a, c                                       ; $7686: $79
    or a                                          ; $7687: $b7
    jr z, jr_031_768e                             ; $7688: $28 $04

    ld a, $02                                     ; $768a: $3e $02
    jr jr_031_7690                                ; $768c: $18 $02

jr_031_768e:
    ld a, $01                                     ; $768e: $3e $01

jr_031_7690:
    ret                                           ; $7690: $c9


Call_031_7691:
    ld hl, $c81a                                  ; $7691: $21 $1a $c8
    ld a, [hl+]                                   ; $7694: $2a
    ld h, [hl]                                    ; $7695: $66
    ld l, a                                       ; $7696: $6f
    ld a, [$c819]                                 ; $7697: $fa $19 $c8
    ld b, a                                       ; $769a: $47
    ld a, [$c969]                                 ; $769b: $fa $69 $c9
    rst $18                                       ; $769e: $df
    db $10                                        ; $769f: $10
    ld [bc], a                                    ; $76a0: $02
    ret                                           ; $76a1: $c9


Call_031_76a2:
    ld a, [$c819]                                 ; $76a2: $fa $19 $c8
    ld e, a                                       ; $76a5: $5f
    ld a, [$c969]                                 ; $76a6: $fa $69 $c9
    ld d, a                                       ; $76a9: $57
    ld a, [$c81d]                                 ; $76aa: $fa $1d $c8
    rst $18                                       ; $76ad: $df
    ld [hl], h                                    ; $76ae: $74
    ld [bc], a                                    ; $76af: $02
    ret                                           ; $76b0: $c9


    ld hl, sp+$76                                 ; $76b1: $f8 $76
    rla                                           ; $76b3: $17
    ld [hl], a                                    ; $76b4: $77
    cp a                                          ; $76b5: $bf
    halt                                          ; $76b6: $76
    ld h, e                                       ; $76b7: $63
    ld [hl], a                                    ; $76b8: $77
    ld h, l                                       ; $76b9: $65
    ld [hl], a                                    ; $76ba: $77
    ld l, [hl]                                    ; $76bb: $6e
    ld [hl], a                                    ; $76bc: $77
    ld [hl], l                                    ; $76bd: $75
    ld [hl], a                                    ; $76be: $77
    cp [hl]                                       ; $76bf: $be
    ld a, h                                       ; $76c0: $7c
    nop                                           ; $76c1: $00
    dec bc                                        ; $76c2: $0b
    nop                                           ; $76c3: $00
    rrca                                          ; $76c4: $0f
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    nop                                           ; $76c7: $00
    ret nz                                        ; $76c8: $c0

    ld bc, $7f14                                  ; $76c9: $01 $14 $7f
    ld a, e                                       ; $76cc: $7b
    nop                                           ; $76cd: $00
    add hl, bc                                    ; $76ce: $09
    ld h, b                                       ; $76cf: $60
    ld c, $00                                     ; $76d0: $0e $00
    nop                                           ; $76d2: $00
    nop                                           ; $76d3: $00
    ld b, b                                       ; $76d4: $40
    ld bc, $7f29                                  ; $76d5: $01 $29 $7f
    ld a, e                                       ; $76d8: $7b
    nop                                           ; $76d9: $00
    add hl, bc                                    ; $76da: $09
    ld h, b                                       ; $76db: $60
    ld c, $00                                     ; $76dc: $0e $00
    nop                                           ; $76de: $00
    nop                                           ; $76df: $00
    ld b, b                                       ; $76e0: $40
    ld bc, $7f2a                                  ; $76e1: $01 $2a $7f
    ld a, e                                       ; $76e4: $7b
    nop                                           ; $76e5: $00
    add hl, bc                                    ; $76e6: $09
    ld h, b                                       ; $76e7: $60
    ld c, $00                                     ; $76e8: $0e $00
    nop                                           ; $76ea: $00
    nop                                           ; $76eb: $00
    ld b, b                                       ; $76ec: $40
    ld bc, $002b                                  ; $76ed: $01 $2b $00
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    nop                                           ; $76f3: $00
    nop                                           ; $76f4: $00
    nop                                           ; $76f5: $00
    nop                                           ; $76f6: $00
    rst $38                                       ; $76f7: $ff
    ld bc, $0040                                  ; $76f8: $01 $40 $00
    dec bc                                        ; $76fb: $0b
    nop                                           ; $76fc: $00
    ld a, [bc]                                    ; $76fd: $0a
    ld [bc], a                                    ; $76fe: $02
    ld b, b                                       ; $76ff: $40
    nop                                           ; $7700: $00
    dec bc                                        ; $7701: $0b
    nop                                           ; $7702: $00
    ld a, [bc]                                    ; $7703: $0a
    inc bc                                        ; $7704: $03
    ld b, b                                       ; $7705: $40
    nop                                           ; $7706: $00
    dec bc                                        ; $7707: $0b
    nop                                           ; $7708: $00
    ld a, [bc]                                    ; $7709: $0a
    inc b                                         ; $770a: $04
    ld b, b                                       ; $770b: $40
    nop                                           ; $770c: $00
    dec bc                                        ; $770d: $0b
    nop                                           ; $770e: $00
    ld a, [bc]                                    ; $770f: $0a
    ld a, [bc]                                    ; $7710: $0a
    ld b, b                                       ; $7711: $40
    nop                                           ; $7712: $00
    dec bc                                        ; $7713: $0b
    nop                                           ; $7714: $00
    ld a, [bc]                                    ; $7715: $0a
    rst $38                                       ; $7716: $ff
    ld bc, $00ff                                  ; $7717: $01 $ff $00
    nop                                           ; $771a: $00
    nop                                           ; $771b: $00
    nop                                           ; $771c: $00
    ld [$0206], sp                                ; $771d: $08 $06 $02
    rst $38                                       ; $7720: $ff
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    ld [bc], a                                    ; $7726: $02
    rst $38                                       ; $7727: $ff
    ld bc, $00ff                                  ; $7728: $01 $ff $00
    nop                                           ; $772b: $00
    nop                                           ; $772c: $00
    nop                                           ; $772d: $00
    add hl, bc                                    ; $772e: $09
    ld b, $02                                     ; $772f: $06 $02
    rst $38                                       ; $7731: $ff
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    nop                                           ; $7736: $00
    ld [bc], a                                    ; $7737: $02
    rst $38                                       ; $7738: $ff
    ld bc, $00ff                                  ; $7739: $01 $ff $00
    nop                                           ; $773c: $00
    nop                                           ; $773d: $00
    nop                                           ; $773e: $00
    ld a, [bc]                                    ; $773f: $0a
    ld b, $02                                     ; $7740: $06 $02
    rst $38                                       ; $7742: $ff
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    nop                                           ; $7747: $00
    ld [bc], a                                    ; $7748: $02
    rst $38                                       ; $7749: $ff
    ld bc, $00ff                                  ; $774a: $01 $ff $00
    nop                                           ; $774d: $00
    nop                                           ; $774e: $00
    nop                                           ; $774f: $00
    dec bc                                        ; $7750: $0b
    ld b, $02                                     ; $7751: $06 $02
    rst $38                                       ; $7753: $ff
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    ld [bc], a                                    ; $7759: $02
    inc bc                                        ; $775a: $03
    rst $38                                       ; $775b: $ff
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    nop                                           ; $7760: $00
    inc bc                                        ; $7761: $03
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    ret                                           ; $7764: $c9


    ld bc, $00ff                                  ; $7765: $01 $ff $00
    nop                                           ; $7768: $00
    jr jr_031_77e8                                ; $7769: $18 $7d

    ld b, $00                                     ; $776b: $06 $00
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff

Jump_031_776f:
jr_031_776f:
    ld a, $02                                     ; $776f: $3e $02
    ld [$c441], a                                 ; $7771: $ea $41 $c4
    ret                                           ; $7774: $c9


    ld c, $7f                                     ; $7775: $0e $7f
    call Call_000_25a1                            ; $7777: $cd $a1 $25
    ld a, [$c450]                                 ; $777a: $fa $50 $c4
    cp $1b                                        ; $777d: $fe $1b
    jr nz, jr_031_7795                            ; $777f: $20 $14

    ld hl, $774a                                  ; $7781: $21 $4a $77
    ld de, $0008                                  ; $7784: $11 $08 $00
    rst $18                                       ; $7787: $df
    ld c, h                                       ; $7788: $4c
    ld a, [bc]                                    ; $7789: $0a
    ld hl, $7c80                                  ; $778a: $21 $80 $7c
    ld de, $0206                                  ; $778d: $11 $06 $02
    call Call_000_0595                            ; $7790: $cd $95 $05
    jr jr_031_77f5                                ; $7793: $18 $60

jr_031_7795:
    cp $1a                                        ; $7795: $fe $1a
    jr nz, jr_031_77bf                            ; $7797: $20 $26

    rst $30                                       ; $7799: $f7
    and b                                         ; $779a: $a0
    dec c                                         ; $779b: $0d
    jr nz, jr_031_776f                            ; $779c: $20 $d1

    ld a, [$c46a]                                 ; $779e: $fa $6a $c4
    cp $02                                        ; $77a1: $fe $02
    jr nz, jr_031_77a8                            ; $77a3: $20 $03

    rst $20                                       ; $77a5: $e7
    and b                                         ; $77a6: $a0
    dec c                                         ; $77a7: $0d

jr_031_77a8:
    ld hl, $7739                                  ; $77a8: $21 $39 $77
    ld de, $0008                                  ; $77ab: $11 $08 $00
    rst $18                                       ; $77ae: $df
    ld c, h                                       ; $77af: $4c
    ld a, [bc]                                    ; $77b0: $0a
    ld hl, $7c40                                  ; $77b1: $21 $40 $7c
    ld de, $0206                                  ; $77b4: $11 $06 $02
    call Call_000_0595                            ; $77b7: $cd $95 $05
    call Call_031_7cb0                            ; $77ba: $cd $b0 $7c
    jr jr_031_77f5                                ; $77bd: $18 $36

jr_031_77bf:
    cp $19                                        ; $77bf: $fe $19
    jr nz, jr_031_77e6                            ; $77c1: $20 $23

    rst $30                                       ; $77c3: $f7
    add b                                         ; $77c4: $80
    dec c                                         ; $77c5: $0d
    jr nz, jr_031_776f                            ; $77c6: $20 $a7

    ld a, [$c46a]                                 ; $77c8: $fa $6a $c4
    cp $02                                        ; $77cb: $fe $02
    jr nz, jr_031_77d2                            ; $77cd: $20 $03

    rst $20                                       ; $77cf: $e7
    add b                                         ; $77d0: $80
    dec c                                         ; $77d1: $0d

jr_031_77d2:
    ld hl, $7c00                                  ; $77d2: $21 $00 $7c
    ld de, $0206                                  ; $77d5: $11 $06 $02
    call Call_000_0595                            ; $77d8: $cd $95 $05
    ld hl, $7728                                  ; $77db: $21 $28 $77
    ld de, $0008                                  ; $77de: $11 $08 $00
    rst $18                                       ; $77e1: $df
    ld c, h                                       ; $77e2: $4c
    ld a, [bc]                                    ; $77e3: $0a
    jr jr_031_77f5                                ; $77e4: $18 $0f

jr_031_77e6:
    rst $30                                       ; $77e6: $f7
    ld h, b                                       ; $77e7: $60

jr_031_77e8:
    dec c                                         ; $77e8: $0d
    jr nz, jr_031_776f                            ; $77e9: $20 $84

    ld a, [$c46a]                                 ; $77eb: $fa $6a $c4
    cp $02                                        ; $77ee: $fe $02
    jr nz, jr_031_77f5                            ; $77f0: $20 $03

    rst $20                                       ; $77f2: $e7
    ld h, b                                       ; $77f3: $60
    dec c                                         ; $77f4: $0d

jr_031_77f5:
    ld a, [$c46a]                                 ; $77f5: $fa $6a $c4
    cp $02                                        ; $77f8: $fe $02
    jr nc, jr_031_77fd                            ; $77fa: $30 $01

    ret                                           ; $77fc: $c9


jr_031_77fd:
    rst $30                                       ; $77fd: $f7
    ret nz                                        ; $77fe: $c0

    dec c                                         ; $77ff: $0d
    jp nz, Jump_031_782f                          ; $7800: $c2 $2f $78

    ld a, [$c46a]                                 ; $7803: $fa $6a $c4
    cp $02                                        ; $7806: $fe $02
    jr nz, jr_031_786b                            ; $7808: $20 $61

    ld a, $04                                     ; $780a: $3e $04
    ld b, $00                                     ; $780c: $06 $00
    rst $18                                       ; $780e: $df
    ld b, [hl]                                    ; $780f: $46
    ld a, [bc]                                    ; $7810: $0a
    ld a, $05                                     ; $7811: $3e $05
    ld b, $00                                     ; $7813: $06 $00
    rst $18                                       ; $7815: $df
    ld b, [hl]                                    ; $7816: $46
    ld a, [bc]                                    ; $7817: $0a
    call Call_031_78e1                            ; $7818: $cd $e1 $78
    ld a, $01                                     ; $781b: $3e $01
    ld [$c96c], a                                 ; $781d: $ea $6c $c9
    ld a, [$c450]                                 ; $7820: $fa $50 $c4
    cp $1b                                        ; $7823: $fe $1b
    jr nz, jr_031_785e                            ; $7825: $20 $37

    ld c, $04                                     ; $7827: $0e $04
    call Call_000_25a1                            ; $7829: $cd $a1 $25
    call Call_000_2625                            ; $782c: $cd $25 $26

Jump_031_782f:
    ld a, [$c810]                                 ; $782f: $fa $10 $c8
    rst $18                                       ; $7832: $df
    ld [bc], a                                    ; $7833: $02
    ld b, b                                       ; $7834: $40
    rst $18                                       ; $7835: $df
    ld h, $41                                     ; $7836: $26 $41
    ld a, [$c810]                                 ; $7838: $fa $10 $c8
    rst $20                                       ; $783b: $e7
    ret nz                                        ; $783c: $c0

    dec c                                         ; $783d: $0d
    rst $18                                       ; $783e: $df
    inc b                                         ; $783f: $04
    ld b, b                                       ; $7840: $40
    ld a, $00                                     ; $7841: $3e $00
    ld [$c450], a                                 ; $7843: $ea $50 $c4
    ld a, $02                                     ; $7846: $3e $02
    ld [$c46a], a                                 ; $7848: $ea $6a $c4
    xor a                                         ; $784b: $af
    ld [$c96d], a                                 ; $784c: $ea $6d $c9
    ld bc, $ffff                                  ; $784f: $01 $ff $ff
    rst $18                                       ; $7852: $df
    ld c, [hl]                                    ; $7853: $4e
    ld a, [bc]                                    ; $7854: $0a
    rst $18                                       ; $7855: $df
    inc [hl]                                      ; $7856: $34
    ld [bc], a                                    ; $7857: $02
    ld a, $03                                     ; $7858: $3e $03
    ld [$c441], a                                 ; $785a: $ea $41 $c4
    ret                                           ; $785d: $c9


jr_031_785e:
    ld a, [$c967]                                 ; $785e: $fa $67 $c9
    cp $32                                        ; $7861: $fe $32
    jr nz, jr_031_78db                            ; $7863: $20 $76

    ld a, $02                                     ; $7865: $3e $02
    ld [$c441], a                                 ; $7867: $ea $41 $c4
    ret                                           ; $786a: $c9


jr_031_786b:
    rst $30                                       ; $786b: $f7
    ret nz                                        ; $786c: $c0

    dec c                                         ; $786d: $0d
    jp nz, Jump_031_776f                          ; $786e: $c2 $6f $77

    ld a, [$c46a]                                 ; $7871: $fa $6a $c4
    cp $03                                        ; $7874: $fe $03
    jr nz, jr_031_789e                            ; $7876: $20 $26

    call Call_031_7b86                            ; $7878: $cd $86 $7b
    ld a, $03                                     ; $787b: $3e $03
    ld b, $00                                     ; $787d: $06 $00
    rst $18                                       ; $787f: $df
    ld b, [hl]                                    ; $7880: $46
    ld a, [bc]                                    ; $7881: $0a
    ld a, $05                                     ; $7882: $3e $05
    ld b, $00                                     ; $7884: $06 $00
    rst $18                                       ; $7886: $df
    ld b, [hl]                                    ; $7887: $46
    ld a, [bc]                                    ; $7888: $0a
    call Call_031_7b1c                            ; $7889: $cd $1c $7b
    ld a, $02                                     ; $788c: $3e $02
    ld [$c96c], a                                 ; $788e: $ea $6c $c9
    ld a, [$c967]                                 ; $7891: $fa $67 $c9
    cp $32                                        ; $7894: $fe $32
    jr nz, jr_031_78db                            ; $7896: $20 $43

    ld a, $02                                     ; $7898: $3e $02
    ld [$c441], a                                 ; $789a: $ea $41 $c4
    ret                                           ; $789d: $c9


jr_031_789e:
    ld a, [$c46a]                                 ; $789e: $fa $6a $c4
    cp $04                                        ; $78a1: $fe $04
    jr nz, jr_031_78cb                            ; $78a3: $20 $26

    call Call_031_7b96                            ; $78a5: $cd $96 $7b
    ld a, $03                                     ; $78a8: $3e $03
    ld b, $00                                     ; $78aa: $06 $00
    rst $18                                       ; $78ac: $df
    ld b, [hl]                                    ; $78ad: $46
    ld a, [bc]                                    ; $78ae: $0a
    ld a, $04                                     ; $78af: $3e $04
    ld b, $00                                     ; $78b1: $06 $00
    rst $18                                       ; $78b3: $df
    ld b, [hl]                                    ; $78b4: $46
    ld a, [bc]                                    ; $78b5: $0a
    call Call_031_7b1c                            ; $78b6: $cd $1c $7b
    ld a, $03                                     ; $78b9: $3e $03
    ld [$c96c], a                                 ; $78bb: $ea $6c $c9
    ld a, [$c967]                                 ; $78be: $fa $67 $c9
    cp $32                                        ; $78c1: $fe $32
    jr nz, jr_031_78db                            ; $78c3: $20 $16

    ld a, $02                                     ; $78c5: $3e $02
    ld [$c441], a                                 ; $78c7: $ea $41 $c4
    ret                                           ; $78ca: $c9


jr_031_78cb:
    ld a, $63                                     ; $78cb: $3e $63
    ld [$c967], a                                 ; $78cd: $ea $67 $c9
    ld a, $05                                     ; $78d0: $3e $05
    ld [$c96c], a                                 ; $78d2: $ea $6c $c9
    ld a, $01                                     ; $78d5: $3e $01
    ld [$c441], a                                 ; $78d7: $ea $41 $c4
    ret                                           ; $78da: $c9


jr_031_78db:
    ld a, $01                                     ; $78db: $3e $01
    ld [$c441], a                                 ; $78dd: $ea $41 $c4
    ret                                           ; $78e0: $c9


Call_031_78e1:
    rst $18                                       ; $78e1: $df
    nop                                           ; $78e2: $00
    ld a, [bc]                                    ; $78e3: $0a
    rst $08                                       ; $78e4: $cf
    inc b                                         ; $78e5: $04
    push af                                       ; $78e6: $f5
    ld a, $3c                                     ; $78e7: $3e $3c
    rst $18                                       ; $78e9: $df
    inc b                                         ; $78ea: $04
    ld a, [bc]                                    ; $78eb: $0a
    pop af                                        ; $78ec: $f1
    xor a                                         ; $78ed: $af
    ld bc, $0b00                                  ; $78ee: $01 $00 $0b
    ld de, $0e00                                  ; $78f1: $11 $00 $0e
    rst $18                                       ; $78f4: $df
    jr c, jr_031_7901                             ; $78f5: $38 $0a

    rst $18                                       ; $78f7: $df
    inc a                                         ; $78f8: $3c
    ld a, [bc]                                    ; $78f9: $0a
    rst $08                                       ; $78fa: $cf
    sub e                                         ; $78fb: $93
    ld c, $04                                     ; $78fc: $0e $04
    call Call_000_25af                            ; $78fe: $cd $af $25

jr_031_7901:
    call Call_000_2625                            ; $7901: $cd $25 $26
    push af                                       ; $7904: $f5
    ld a, $1e                                     ; $7905: $3e $1e
    rst $18                                       ; $7907: $df
    inc b                                         ; $7908: $04
    ld a, [bc]                                    ; $7909: $0a
    pop af                                        ; $790a: $f1
    ld hl, $0c3c                                  ; $790b: $21 $3c $0c
    rst $18                                       ; $790e: $df
    ld c, $0a                                     ; $790f: $0e $0a
    ld a, $02                                     ; $7911: $3e $02
    ld b, a                                       ; $7913: $47
    ld a, $05                                     ; $7914: $3e $05
    rst $18                                       ; $7916: $df
    ld [hl-], a                                   ; $7917: $32
    ld a, [bc]                                    ; $7918: $0a
    ld a, $02                                     ; $7919: $3e $02
    rst $18                                       ; $791b: $df
    inc [hl]                                      ; $791c: $34
    ld a, [bc]                                    ; $791d: $0a
    push af                                       ; $791e: $f5
    ld a, $0a                                     ; $791f: $3e $0a
    rst $18                                       ; $7921: $df
    inc b                                         ; $7922: $04
    ld a, [bc]                                    ; $7923: $0a
    pop af                                        ; $7924: $f1
    call Call_031_7b5e                            ; $7925: $cd $5e $7b
    ld a, $02                                     ; $7928: $3e $02
    rst $18                                       ; $792a: $df
    ld [$3e0a], sp                                ; $792b: $08 $0a $3e
    nop                                           ; $792e: $00
    ld b, a                                       ; $792f: $47
    ld a, $07                                     ; $7930: $3e $07
    rst $18                                       ; $7932: $df
    ld [hl-], a                                   ; $7933: $32
    ld a, [bc]                                    ; $7934: $0a
    ld a, $00                                     ; $7935: $3e $00
    rst $18                                       ; $7937: $df
    inc [hl]                                      ; $7938: $34
    ld a, [bc]                                    ; $7939: $0a
    ld a, $02                                     ; $793a: $3e $02
    ld b, $40                                     ; $793c: $06 $40
    rst $18                                       ; $793e: $df
    inc l                                         ; $793f: $2c
    ld a, [bc]                                    ; $7940: $0a
    push af                                       ; $7941: $f5
    ld a, $1e                                     ; $7942: $3e $1e
    rst $18                                       ; $7944: $df
    inc b                                         ; $7945: $04
    ld a, [bc]                                    ; $7946: $0a
    pop af                                        ; $7947: $f1
    ld a, $02                                     ; $7948: $3e $02
    ld b, $80                                     ; $794a: $06 $80
    rst $18                                       ; $794c: $df
    inc l                                         ; $794d: $2c
    ld a, [bc]                                    ; $794e: $0a
    push af                                       ; $794f: $f5
    ld a, $1e                                     ; $7950: $3e $1e
    rst $18                                       ; $7952: $df
    inc b                                         ; $7953: $04
    ld a, [bc]                                    ; $7954: $0a
    pop af                                        ; $7955: $f1
    ld a, $02                                     ; $7956: $3e $02
    ld b, $40                                     ; $7958: $06 $40
    rst $18                                       ; $795a: $df
    inc l                                         ; $795b: $2c
    ld a, [bc]                                    ; $795c: $0a
    push af                                       ; $795d: $f5
    ld a, $0a                                     ; $795e: $3e $0a
    rst $18                                       ; $7960: $df
    inc b                                         ; $7961: $04
    ld a, [bc]                                    ; $7962: $0a
    pop af                                        ; $7963: $f1
    ld a, $02                                     ; $7964: $3e $02
    ld b, $00                                     ; $7966: $06 $00
    rst $18                                       ; $7968: $df
    inc l                                         ; $7969: $2c
    ld a, [bc]                                    ; $796a: $0a
    push af                                       ; $796b: $f5
    ld a, $1e                                     ; $796c: $3e $1e
    rst $18                                       ; $796e: $df
    inc b                                         ; $796f: $04
    ld a, [bc]                                    ; $7970: $0a
    pop af                                        ; $7971: $f1
    ld a, $02                                     ; $7972: $3e $02
    ld b, $40                                     ; $7974: $06 $40
    rst $18                                       ; $7976: $df
    inc l                                         ; $7977: $2c
    ld a, [bc]                                    ; $7978: $0a
    ld a, [$c450]                                 ; $7979: $fa $50 $c4
    cp $18                                        ; $797c: $fe $18
    jr nz, jr_031_7986                            ; $797e: $20 $06

    ld hl, $0c3e                                  ; $7980: $21 $3e $0c
    rst $18                                       ; $7983: $df
    ld c, $0a                                     ; $7984: $0e $0a

jr_031_7986:
    ld a, $02                                     ; $7986: $3e $02
    rst $18                                       ; $7988: $df
    ld [$210a], sp                                ; $7989: $08 $0a $21
    ccf                                           ; $798c: $3f
    inc c                                         ; $798d: $0c
    rst $18                                       ; $798e: $df
    ld c, $0a                                     ; $798f: $0e $0a
    rst $08                                       ; $7991: $cf
    sub e                                         ; $7992: $93
    ld a, $00                                     ; $7993: $3e $00
    ld b, $80                                     ; $7995: $06 $80
    rst $18                                       ; $7997: $df
    inc l                                         ; $7998: $2c
    ld a, [bc]                                    ; $7999: $0a
    push af                                       ; $799a: $f5
    ld a, $14                                     ; $799b: $3e $14
    rst $18                                       ; $799d: $df
    inc b                                         ; $799e: $04
    ld a, [bc]                                    ; $799f: $0a
    pop af                                        ; $79a0: $f1
    ld a, $00                                     ; $79a1: $3e $00
    ld b, a                                       ; $79a3: $47
    ld a, $05                                     ; $79a4: $3e $05
    rst $18                                       ; $79a6: $df
    ld [hl-], a                                   ; $79a7: $32
    ld a, [bc]                                    ; $79a8: $0a
    ld a, $00                                     ; $79a9: $3e $00
    rst $18                                       ; $79ab: $df
    inc [hl]                                      ; $79ac: $34
    ld a, [bc]                                    ; $79ad: $0a
    ld a, $00                                     ; $79ae: $3e $00
    ld b, $00                                     ; $79b0: $06 $00
    rst $18                                       ; $79b2: $df
    inc l                                         ; $79b3: $2c
    ld a, [bc]                                    ; $79b4: $0a
    ld a, $00                                     ; $79b5: $3e $00
    ld b, a                                       ; $79b7: $47
    ld a, $05                                     ; $79b8: $3e $05
    rst $18                                       ; $79ba: $df
    ld [hl-], a                                   ; $79bb: $32
    ld a, [bc]                                    ; $79bc: $0a
    ld a, $00                                     ; $79bd: $3e $00
    rst $18                                       ; $79bf: $df
    inc [hl]                                      ; $79c0: $34
    ld a, [bc]                                    ; $79c1: $0a
    push af                                       ; $79c2: $f5
    ld a, $14                                     ; $79c3: $3e $14
    rst $18                                       ; $79c5: $df
    inc b                                         ; $79c6: $04
    ld a, [bc]                                    ; $79c7: $0a
    pop af                                        ; $79c8: $f1
    ld a, $00                                     ; $79c9: $3e $00
    ld b, $40                                     ; $79cb: $06 $40
    rst $18                                       ; $79cd: $df
    inc l                                         ; $79ce: $2c
    ld a, [bc]                                    ; $79cf: $0a
    push af                                       ; $79d0: $f5
    ld a, $14                                     ; $79d1: $3e $14
    rst $18                                       ; $79d3: $df
    inc b                                         ; $79d4: $04
    ld a, [bc]                                    ; $79d5: $0a
    pop af                                        ; $79d6: $f1
    ld a, $00                                     ; $79d7: $3e $00
    ld b, a                                       ; $79d9: $47
    ld a, $05                                     ; $79da: $3e $05
    rst $18                                       ; $79dc: $df
    ld [hl-], a                                   ; $79dd: $32
    ld a, [bc]                                    ; $79de: $0a
    ld a, $00                                     ; $79df: $3e $00
    rst $18                                       ; $79e1: $df
    inc [hl]                                      ; $79e2: $34
    ld a, [bc]                                    ; $79e3: $0a
    ld a, $00                                     ; $79e4: $3e $00
    ld b, a                                       ; $79e6: $47
    ld a, $02                                     ; $79e7: $3e $02
    rst $18                                       ; $79e9: $df
    ld l, $0a                                     ; $79ea: $2e $0a
    push af                                       ; $79ec: $f5
    ld a, $14                                     ; $79ed: $3e $14
    rst $18                                       ; $79ef: $df
    inc b                                         ; $79f0: $04
    ld a, [bc]                                    ; $79f1: $0a
    pop af                                        ; $79f2: $f1
    ld a, $02                                     ; $79f3: $3e $02
    ld b, a                                       ; $79f5: $47
    ld a, $05                                     ; $79f6: $3e $05
    rst $18                                       ; $79f8: $df
    ld [hl-], a                                   ; $79f9: $32
    ld a, [bc]                                    ; $79fa: $0a
    ld a, $02                                     ; $79fb: $3e $02
    rst $18                                       ; $79fd: $df
    inc [hl]                                      ; $79fe: $34
    ld a, [bc]                                    ; $79ff: $0a

Call_031_7a00:
    ld a, $02                                     ; $7a00: $3e $02
    rst $18                                       ; $7a02: $df
    ld [$3e0a], sp                                ; $7a03: $08 $0a $3e
    ld [bc], a                                    ; $7a06: $02
    ld bc, $0008                                  ; $7a07: $01 $08 $00
    rst $18                                       ; $7a0a: $df
    ld d, $0a                                     ; $7a0b: $16 $0a
    ld a, $03                                     ; $7a0d: $3e $03
    ld bc, $0008                                  ; $7a0f: $01 $08 $00
    rst $18                                       ; $7a12: $df
    ld d, $0a                                     ; $7a13: $16 $0a
    ld a, $04                                     ; $7a15: $3e $04
    ld bc, $0008                                  ; $7a17: $01 $08 $00
    rst $18                                       ; $7a1a: $df
    ld d, $0a                                     ; $7a1b: $16 $0a
    ld a, $05                                     ; $7a1d: $3e $05
    ld bc, $0008                                  ; $7a1f: $01 $08 $00
    rst $18                                       ; $7a22: $df
    ld d, $0a                                     ; $7a23: $16 $0a
    ld a, $02                                     ; $7a25: $3e $02
    ld b, $80                                     ; $7a27: $06 $80
    rst $18                                       ; $7a29: $df
    inc l                                         ; $7a2a: $2c
    ld a, [bc]                                    ; $7a2b: $0a
    ld a, $02                                     ; $7a2c: $3e $02
    ld bc, $0a00                                  ; $7a2e: $01 $00 $0a
    ld de, $0f00                                  ; $7a31: $11 $00 $0f
    rst $18                                       ; $7a34: $df
    ld [hl+], a                                   ; $7a35: $22
    ld a, [bc]                                    ; $7a36: $0a
    ld a, $02                                     ; $7a37: $3e $02
    rst $18                                       ; $7a39: $df
    ld e, $0a                                     ; $7a3a: $1e $0a
    ld a, $03                                     ; $7a3c: $3e $03
    ld bc, $0a80                                  ; $7a3e: $01 $80 $0a
    ld de, $0e00                                  ; $7a41: $11 $00 $0e
    rst $18                                       ; $7a44: $df
    ld [hl+], a                                   ; $7a45: $22
    ld a, [bc]                                    ; $7a46: $0a
    ld a, $04                                     ; $7a47: $3e $04
    ld bc, $0a80                                  ; $7a49: $01 $80 $0a
    ld de, $0e00                                  ; $7a4c: $11 $00 $0e
    rst $18                                       ; $7a4f: $df
    ld [hl+], a                                   ; $7a50: $22
    ld a, [bc]                                    ; $7a51: $0a
    ld a, $05                                     ; $7a52: $3e $05
    ld bc, $0a80                                  ; $7a54: $01 $80 $0a
    ld de, $0e00                                  ; $7a57: $11 $00 $0e
    rst $18                                       ; $7a5a: $df
    ld [hl+], a                                   ; $7a5b: $22
    ld a, [bc]                                    ; $7a5c: $0a
    ld a, $02                                     ; $7a5d: $3e $02
    ld b, $01                                     ; $7a5f: $06 $01
    rst $18                                       ; $7a61: $df
    ld a, [hl+]                                   ; $7a62: $2a
    ld a, [bc]                                    ; $7a63: $0a
    ld a, $02                                     ; $7a64: $3e $02
    ld bc, $0a80                                  ; $7a66: $01 $80 $0a
    ld de, $0f00                                  ; $7a69: $11 $00 $0f
    rst $18                                       ; $7a6c: $df
    ld [hl+], a                                   ; $7a6d: $22
    ld a, [bc]                                    ; $7a6e: $0a
    ld a, $02                                     ; $7a6f: $3e $02
    rst $18                                       ; $7a71: $df
    ld e, $0a                                     ; $7a72: $1e $0a
    ld a, $02                                     ; $7a74: $3e $02
    ld b, $00                                     ; $7a76: $06 $00
    rst $18                                       ; $7a78: $df
    ld a, [hl+]                                   ; $7a79: $2a
    ld a, [bc]                                    ; $7a7a: $0a
    ld a, $02                                     ; $7a7b: $3e $02
    ld b, $c0                                     ; $7a7d: $06 $c0
    rst $18                                       ; $7a7f: $df
    inc l                                         ; $7a80: $2c
    ld a, [bc]                                    ; $7a81: $0a
    ld a, $03                                     ; $7a82: $3e $03
    ld bc, $0b40                                  ; $7a84: $01 $40 $0b
    ld de, $0c00                                  ; $7a87: $11 $00 $0c
    rst $18                                       ; $7a8a: $df
    ld [hl+], a                                   ; $7a8b: $22
    ld a, [bc]                                    ; $7a8c: $0a
    ld a, $04                                     ; $7a8d: $3e $04
    ld bc, $0b40                                  ; $7a8f: $01 $40 $0b
    ld de, $0c00                                  ; $7a92: $11 $00 $0c
    rst $18                                       ; $7a95: $df
    ld [hl+], a                                   ; $7a96: $22
    ld a, [bc]                                    ; $7a97: $0a
    ld a, $05                                     ; $7a98: $3e $05
    ld bc, $0b40                                  ; $7a9a: $01 $40 $0b
    ld de, $0c00                                  ; $7a9d: $11 $00 $0c
    rst $18                                       ; $7aa0: $df
    ld [hl+], a                                   ; $7aa1: $22
    ld a, [bc]                                    ; $7aa2: $0a
    ld a, $02                                     ; $7aa3: $3e $02
    ld bc, $0b00                                  ; $7aa5: $01 $00 $0b
    ld de, $0c80                                  ; $7aa8: $11 $80 $0c
    rst $18                                       ; $7aab: $df
    ld [hl+], a                                   ; $7aac: $22
    ld a, [bc]                                    ; $7aad: $0a
    ld a, $02                                     ; $7aae: $3e $02
    rst $18                                       ; $7ab0: $df
    ld e, $0a                                     ; $7ab1: $1e $0a
    ld a, $00                                     ; $7ab3: $3e $00
    ld b, a                                       ; $7ab5: $47
    ld a, $02                                     ; $7ab6: $3e $02
    rst $18                                       ; $7ab8: $df
    ld l, $0a                                     ; $7ab9: $2e $0a
    push af                                       ; $7abb: $f5
    ld a, $14                                     ; $7abc: $3e $14
    rst $18                                       ; $7abe: $df
    inc b                                         ; $7abf: $04
    ld a, [bc]                                    ; $7ac0: $0a
    pop af                                        ; $7ac1: $f1
    ld a, $02                                     ; $7ac2: $3e $02
    ld b, a                                       ; $7ac4: $47
    ld a, $05                                     ; $7ac5: $3e $05
    rst $18                                       ; $7ac7: $df
    ld [hl-], a                                   ; $7ac8: $32
    ld a, [bc]                                    ; $7ac9: $0a
    ld a, $02                                     ; $7aca: $3e $02
    rst $18                                       ; $7acc: $df
    inc [hl]                                      ; $7acd: $34
    ld a, [bc]                                    ; $7ace: $0a
    ld a, $00                                     ; $7acf: $3e $00
    ld b, a                                       ; $7ad1: $47
    ld a, $05                                     ; $7ad2: $3e $05
    rst $18                                       ; $7ad4: $df
    ld [hl-], a                                   ; $7ad5: $32
    ld a, [bc]                                    ; $7ad6: $0a
    ld a, $00                                     ; $7ad7: $3e $00
    rst $18                                       ; $7ad9: $df
    inc [hl]                                      ; $7ada: $34
    ld a, [bc]                                    ; $7adb: $0a
    ld hl, $0c40                                  ; $7adc: $21 $40 $0c
    rst $18                                       ; $7adf: $df
    ld c, $0a                                     ; $7ae0: $0e $0a
    ld a, $02                                     ; $7ae2: $3e $02
    rst $18                                       ; $7ae4: $df
    ld [$cf0a], sp                                ; $7ae5: $08 $0a $cf
    sub e                                         ; $7ae8: $93
    push af                                       ; $7ae9: $f5
    ld a, $1e                                     ; $7aea: $3e $1e
    rst $18                                       ; $7aec: $df
    inc b                                         ; $7aed: $04
    ld a, [bc]                                    ; $7aee: $0a
    pop af                                        ; $7aef: $f1
    ld a, $00                                     ; $7af0: $3e $00
    ld b, a                                       ; $7af2: $47
    ld a, $07                                     ; $7af3: $3e $07
    rst $18                                       ; $7af5: $df
    ld [hl-], a                                   ; $7af6: $32
    ld a, [bc]                                    ; $7af7: $0a
    ld a, $00                                     ; $7af8: $3e $00
    rst $18                                       ; $7afa: $df
    inc [hl]                                      ; $7afb: $34
    ld a, [bc]                                    ; $7afc: $0a
    push af                                       ; $7afd: $f5
    ld a, $1e                                     ; $7afe: $3e $1e
    rst $18                                       ; $7b00: $df
    inc b                                         ; $7b01: $04
    ld a, [bc]                                    ; $7b02: $0a
    pop af                                        ; $7b03: $f1
    ld a, $01                                     ; $7b04: $3e $01
    ld [$c441], a                                 ; $7b06: $ea $41 $c4
    ld c, $08                                     ; $7b09: $0e $08
    call Call_000_25a1                            ; $7b0b: $cd $a1 $25
    call Call_000_2625                            ; $7b0e: $cd $25 $26
    push af                                       ; $7b11: $f5
    ld a, $5a                                     ; $7b12: $3e $5a
    rst $18                                       ; $7b14: $df
    inc b                                         ; $7b15: $04
    ld a, [bc]                                    ; $7b16: $0a
    pop af                                        ; $7b17: $f1
    rst $18                                       ; $7b18: $df
    ld [bc], a                                    ; $7b19: $02
    ld a, [bc]                                    ; $7b1a: $0a
    ret                                           ; $7b1b: $c9


Call_031_7b1c:
    rst $18                                       ; $7b1c: $df
    nop                                           ; $7b1d: $00
    ld a, [bc]                                    ; $7b1e: $0a
    rst $08                                       ; $7b1f: $cf
    inc b                                         ; $7b20: $04
    push af                                       ; $7b21: $f5
    ld a, $3c                                     ; $7b22: $3e $3c
    rst $18                                       ; $7b24: $df
    inc b                                         ; $7b25: $04
    ld a, [bc]                                    ; $7b26: $0a
    pop af                                        ; $7b27: $f1
    ld c, $04                                     ; $7b28: $0e $04
    call Call_000_25af                            ; $7b2a: $cd $af $25
    call Call_000_2625                            ; $7b2d: $cd $25 $26
    push af                                       ; $7b30: $f5
    ld a, $14                                     ; $7b31: $3e $14
    rst $18                                       ; $7b33: $df
    inc b                                         ; $7b34: $04
    ld a, [bc]                                    ; $7b35: $0a
    pop af                                        ; $7b36: $f1
    ld a, $02                                     ; $7b37: $3e $02
    ld b, a                                       ; $7b39: $47
    ld a, $05                                     ; $7b3a: $3e $05
    rst $18                                       ; $7b3c: $df
    ld [hl-], a                                   ; $7b3d: $32
    ld a, [bc]                                    ; $7b3e: $0a
    ld a, $02                                     ; $7b3f: $3e $02
    rst $18                                       ; $7b41: $df
    inc [hl]                                      ; $7b42: $34
    ld a, [bc]                                    ; $7b43: $0a
    ld hl, $0c41                                  ; $7b44: $21 $41 $0c
    rst $18                                       ; $7b47: $df
    ld c, $0a                                     ; $7b48: $0e $0a
    ld hl, $0000                                  ; $7b4a: $21 $00 $00
    ld a, [$c46a]                                 ; $7b4d: $fa $6a $c4
    sub $01                                       ; $7b50: $d6 $01
    add l                                         ; $7b52: $85
    ld l, a                                       ; $7b53: $6f
    jr nc, jr_031_7b57                            ; $7b54: $30 $01

    inc h                                         ; $7b56: $24

jr_031_7b57:
    rst $18                                       ; $7b57: $df
    ld d, [hl]                                    ; $7b58: $56
    dec b                                         ; $7b59: $05
    call Call_031_7a00                            ; $7b5a: $cd $00 $7a
    ret                                           ; $7b5d: $c9


Call_031_7b5e:
    ld a, [$c450]                                 ; $7b5e: $fa $50 $c4
    cp $1b                                        ; $7b61: $fe $1b
    jr nz, jr_031_7b69                            ; $7b63: $20 $04

    ld a, $04                                     ; $7b65: $3e $04
    jr jr_031_7b7b                                ; $7b67: $18 $12

jr_031_7b69:
    cp $1a                                        ; $7b69: $fe $1a
    jr nz, jr_031_7b71                            ; $7b6b: $20 $04

    ld a, $03                                     ; $7b6d: $3e $03
    jr jr_031_7b7b                                ; $7b6f: $18 $0a

jr_031_7b71:
    cp $19                                        ; $7b71: $fe $19
    jr nz, jr_031_7b79                            ; $7b73: $20 $04

    ld a, $02                                     ; $7b75: $3e $02
    jr jr_031_7b7b                                ; $7b77: $18 $02

jr_031_7b79:
    ld a, $01                                     ; $7b79: $3e $01

jr_031_7b7b:
    rst $18                                       ; $7b7b: $df
    ld e, d                                       ; $7b7c: $5a
    dec b                                         ; $7b7d: $05
    ret                                           ; $7b7e: $c9


    db $10                                        ; $7b7f: $10
    ld a, [bc]                                    ; $7b80: $0a
    ld bc, $0c32                                  ; $7b81: $01 $32 $0c
    ei                                            ; $7b84: $fb
    rst $38                                       ; $7b85: $ff

Call_031_7b86:
    ld b, $16                                     ; $7b86: $06 $16
    ld c, $0a                                     ; $7b88: $0e $0a
    ld d, $0a                                     ; $7b8a: $16 $0a
    ld e, $0a                                     ; $7b8c: $1e $0a
    ld h, $02                                     ; $7b8e: $26 $02
    ld l, $02                                     ; $7b90: $2e $02
    rst $18                                       ; $7b92: $df
    ld a, [bc]                                    ; $7b93: $0a
    dec bc                                        ; $7b94: $0b
    ret                                           ; $7b95: $c9


Call_031_7b96:
    ld b, $19                                     ; $7b96: $06 $19
    ld c, $0a                                     ; $7b98: $0e $0a
    ld d, $0a                                     ; $7b9a: $16 $0a
    ld e, $0a                                     ; $7b9c: $1e $0a
    ld h, $02                                     ; $7b9e: $26 $02
    ld l, $02                                     ; $7ba0: $2e $02
    rst $18                                       ; $7ba2: $df
    ld a, [bc]                                    ; $7ba3: $0a
    dec bc                                        ; $7ba4: $0b
    ret                                           ; $7ba5: $c9


    nop                                           ; $7ba6: $00
    nop                                           ; $7ba7: $00
    nop                                           ; $7ba8: $00
    nop                                           ; $7ba9: $00
    nop                                           ; $7baa: $00
    nop                                           ; $7bab: $00
    nop                                           ; $7bac: $00
    nop                                           ; $7bad: $00
    nop                                           ; $7bae: $00
    nop                                           ; $7baf: $00
    add b                                         ; $7bb0: $80
    nop                                           ; $7bb1: $00
    jr nz, @+$57                                  ; $7bb2: $20 $55

    and b                                         ; $7bb4: $a0
    ld a, [hl]                                    ; $7bb5: $7e
    rst $38                                       ; $7bb6: $ff
    ld a, a                                       ; $7bb7: $7f
    ld [$0825], sp                                ; $7bb8: $08 $25 $08
    dec h                                         ; $7bbb: $25
    ld [$0825], sp                                ; $7bbc: $08 $25 $08
    dec h                                         ; $7bbf: $25
    ld h, d                                       ; $7bc0: $62
    ld a, l                                       ; $7bc1: $7d
    jp hl                                         ; $7bc2: $e9


    inc l                                         ; $7bc3: $2c
    add sp, $7e                                   ; $7bc4: $e8 $7e
    rst $38                                       ; $7bc6: $ff
    ld a, a                                       ; $7bc7: $7f
    ld b, b                                       ; $7bc8: $40
    inc bc                                        ; $7bc9: $03
    sub $01                                       ; $7bca: $d6 $01
    ld b, b                                       ; $7bcc: $40
    ld [bc], a                                    ; $7bcd: $02
    ld e, a                                       ; $7bce: $5f
    ld [bc], a                                    ; $7bcf: $02
    add sp, $7e                                   ; $7bd0: $e8 $7e
    jp hl                                         ; $7bd2: $e9


    inc l                                         ; $7bd3: $2c
    sub $01                                       ; $7bd4: $d6 $01
    rst $38                                       ; $7bd6: $ff
    ld a, a                                       ; $7bd7: $7f
    ld b, b                                       ; $7bd8: $40
    inc bc                                        ; $7bd9: $03
    ld a, a                                       ; $7bda: $7f
    inc hl                                        ; $7bdb: $23
    rra                                           ; $7bdc: $1f
    ld h, h                                       ; $7bdd: $64
    ld b, [hl]                                    ; $7bde: $46
    db $10                                        ; $7bdf: $10
    ld b, b                                       ; $7be0: $40
    inc bc                                        ; $7be1: $03
    sbc a                                         ; $7be2: $9f
    ld [bc], a                                    ; $7be3: $02
    dec e                                         ; $7be4: $1d
    nop                                           ; $7be5: $00
    ld b, [hl]                                    ; $7be6: $46
    db $10                                        ; $7be7: $10
    ld [$0825], sp                                ; $7be8: $08 $25 $08
    dec h                                         ; $7beb: $25
    ld [$0825], sp                                ; $7bec: $08 $25 $08
    dec h                                         ; $7bef: $25
    add b                                         ; $7bf0: $80
    nop                                           ; $7bf1: $00
    jr nz, @+$57                                  ; $7bf2: $20 $55

    and b                                         ; $7bf4: $a0
    ld a, [hl]                                    ; $7bf5: $7e
    rst $38                                       ; $7bf6: $ff
    ld a, a                                       ; $7bf7: $7f
    ld [$0825], sp                                ; $7bf8: $08 $25 $08
    dec h                                         ; $7bfb: $25
    ld [$0825], sp                                ; $7bfc: $08 $25 $08
    dec h                                         ; $7bff: $25
    and h                                         ; $7c00: $a4
    ld a, l                                       ; $7c01: $7d
    ld a, [bc]                                    ; $7c02: $0a
    ld sp, $7f2a                                  ; $7c03: $31 $2a $7f
    rst $38                                       ; $7c06: $ff
    ld a, a                                       ; $7c07: $7f
    and $0b                                       ; $7c08: $e6 $0b
    add hl, de                                    ; $7c0a: $19
    ld [bc], a                                    ; $7c0b: $02
    and b                                         ; $7c0c: $a0
    ld [bc], a                                    ; $7c0d: $02
    rra                                           ; $7c0e: $1f
    inc bc                                        ; $7c0f: $03
    ld a, [hl+]                                   ; $7c10: $2a
    ld a, a                                       ; $7c11: $7f
    ld a, [bc]                                    ; $7c12: $0a
    ld sp, $0219                                  ; $7c13: $31 $19 $02
    rst $38                                       ; $7c16: $ff
    ld a, a                                       ; $7c17: $7f
    and $0b                                       ; $7c18: $e6 $0b
    rst $18                                       ; $7c1a: $df
    ld [bc], a                                    ; $7c1b: $02
    rra                                           ; $7c1c: $1f
    ld h, h                                       ; $7c1d: $64
    ld b, [hl]                                    ; $7c1e: $46
    db $10                                        ; $7c1f: $10
    and $0b                                       ; $7c20: $e6 $0b
    rst $38                                       ; $7c22: $ff
    dec sp                                        ; $7c23: $3b
    dec e                                         ; $7c24: $1d
    nop                                           ; $7c25: $00
    ld b, [hl]                                    ; $7c26: $46
    db $10                                        ; $7c27: $10
    ld [$0825], sp                                ; $7c28: $08 $25 $08
    dec h                                         ; $7c2b: $25
    ld [$0825], sp                                ; $7c2c: $08 $25 $08
    dec h                                         ; $7c2f: $25
    add b                                         ; $7c30: $80
    nop                                           ; $7c31: $00
    jr nz, jr_031_7c89                            ; $7c32: $20 $55

    and b                                         ; $7c34: $a0
    ld a, [hl]                                    ; $7c35: $7e
    rst $38                                       ; $7c36: $ff
    ld a, a                                       ; $7c37: $7f
    ld [$0825], sp                                ; $7c38: $08 $25 $08
    dec h                                         ; $7c3b: $25
    ld [$0825], sp                                ; $7c3c: $08 $25 $08
    dec h                                         ; $7c3f: $25
    ld d, c                                       ; $7c40: $51
    ld a, l                                       ; $7c41: $7d
    dec hl                                        ; $7c42: $2b
    dec [hl]                                      ; $7c43: $35
    ld a, [$ff7d]                                 ; $7c44: $fa $7d $ff
    ld a, a                                       ; $7c47: $7f
    ld [hl], $03                                  ; $7c48: $36 $03
    ld e, e                                       ; $7c4a: $5b
    ld bc, $0233                                  ; $7c4b: $01 $33 $02
    ld e, a                                       ; $7c4e: $5f
    ld [de], a                                    ; $7c4f: $12
    ld a, [$2b7d]                                 ; $7c50: $fa $7d $2b
    dec [hl]                                      ; $7c53: $35
    ld e, e                                       ; $7c54: $5b
    ld bc, $7fff                                  ; $7c55: $01 $ff $7f
    ld [hl], $03                                  ; $7c58: $36 $03
    ld a, a                                       ; $7c5a: $7f
    inc hl                                        ; $7c5b: $23
    rra                                           ; $7c5c: $1f
    ld h, h                                       ; $7c5d: $64
    ld b, [hl]                                    ; $7c5e: $46
    db $10                                        ; $7c5f: $10
    ld [hl], $03                                  ; $7c60: $36 $03
    sbc a                                         ; $7c62: $9f
    ld [bc], a                                    ; $7c63: $02
    dec e                                         ; $7c64: $1d
    nop                                           ; $7c65: $00
    ld b, [hl]                                    ; $7c66: $46
    db $10                                        ; $7c67: $10
    ld [$0825], sp                                ; $7c68: $08 $25 $08
    dec h                                         ; $7c6b: $25
    ld [$0825], sp                                ; $7c6c: $08 $25 $08
    dec h                                         ; $7c6f: $25
    add b                                         ; $7c70: $80
    nop                                           ; $7c71: $00
    jr nz, jr_031_7cc9                            ; $7c72: $20 $55

    and b                                         ; $7c74: $a0
    ld a, [hl]                                    ; $7c75: $7e
    rst $38                                       ; $7c76: $ff
    ld a, a                                       ; $7c77: $7f
    ld [$0825], sp                                ; $7c78: $08 $25 $08
    dec h                                         ; $7c7b: $25
    ld [$0825], sp                                ; $7c7c: $08 $25 $08
    dec h                                         ; $7c7f: $25
    or e                                          ; $7c80: $b3
    ld a, h                                       ; $7c81: $7c
    swap h                                        ; $7c82: $cb $34
    call c, $9f7d                                 ; $7c84: $dc $7d $9f
    ld a, a                                       ; $7c87: $7f
    ld b, b                                       ; $7c88: $40

jr_031_7c89:
    ld c, e                                       ; $7c89: $4b
    ld d, a                                       ; $7c8a: $57
    dec e                                         ; $7c8b: $1d
    ld b, b                                       ; $7c8c: $40
    ld a, [hl-]                                   ; $7c8d: $3a
    rra                                           ; $7c8e: $1f
    ld a, [hl-]                                   ; $7c8f: $3a
    call c, $cb7d                                 ; $7c90: $dc $7d $cb
    inc [hl]                                      ; $7c93: $34
    ld d, a                                       ; $7c94: $57
    dec e                                         ; $7c95: $1d
    sbc a                                         ; $7c96: $9f
    ld a, a                                       ; $7c97: $7f
    ld b, b                                       ; $7c98: $40
    ld c, e                                       ; $7c99: $4b
    rst $18                                       ; $7c9a: $df
    ld [bc], a                                    ; $7c9b: $02
    rra                                           ; $7c9c: $1f
    ld h, h                                       ; $7c9d: $64
    ld b, [hl]                                    ; $7c9e: $46
    db $10                                        ; $7c9f: $10
    ld b, b                                       ; $7ca0: $40
    ld c, e                                       ; $7ca1: $4b
    rst $38                                       ; $7ca2: $ff
    dec sp                                        ; $7ca3: $3b
    dec e                                         ; $7ca4: $1d
    nop                                           ; $7ca5: $00
    ld b, [hl]                                    ; $7ca6: $46
    db $10                                        ; $7ca7: $10
    ld [$0825], sp                                ; $7ca8: $08 $25 $08
    dec h                                         ; $7cab: $25
    ld [$0825], sp                                ; $7cac: $08 $25 $08
    dec h                                         ; $7caf: $25

Call_031_7cb0:
    rst $30                                       ; $7cb0: $f7
    ret nz                                        ; $7cb1: $c0

    jr jr_031_7cdc                                ; $7cb2: $18 $28

    ld [$40f7], sp                                ; $7cb4: $08 $f7 $40
    ld c, $28                                     ; $7cb7: $0e $28
    inc bc                                        ; $7cb9: $03
    rst $20                                       ; $7cba: $e7
    add b                                         ; $7cbb: $80
    ld a, [de]                                    ; $7cbc: $1a
    ret                                           ; $7cbd: $c9


    db $00

    dec c                                         ; $7cbf: $0d
    dec de                                        ; $7cc0: $1b
    nop                                           ; $7cc1: $00
    nop                                           ; $7cc2: $00
    nop                                           ; $7cc3: $00
    ld a, [bc]                                    ; $7cc4: $0a
    ld bc, $0c01                                  ; $7cc5: $01 $01 $0c
    db $fc                                        ; $7cc8: $fc

jr_031_7cc9:
    rst $38                                       ; $7cc9: $ff
    inc de                                        ; $7cca: $13
    add hl, bc                                    ; $7ccb: $09
    ld [bc], a                                    ; $7ccc: $02
    ld bc, $0c28                                  ; $7ccd: $01 $28 $0c
    ei                                            ; $7cd0: $fb
    rst $38                                       ; $7cd1: $ff
    inc bc                                        ; $7cd2: $03
    nop                                           ; $7cd3: $00
    dec d                                         ; $7cd4: $15
    nop                                           ; $7cd5: $00
    dec d                                         ; $7cd6: $15
    ld bc, $0414                                  ; $7cd7: $01 $14 $04
    nop                                           ; $7cda: $00
    rla                                           ; $7cdb: $17

jr_031_7cdc:
    nop                                           ; $7cdc: $00
    dec d                                         ; $7cdd: $15
    ld [bc], a                                    ; $7cde: $02
    ld bc, $0614                                  ; $7cdf: $01 $14 $06
    nop                                           ; $7ce2: $00
    nop                                           ; $7ce3: $00
    nop                                           ; $7ce4: $00
    cp $02                                        ; $7ce5: $fe $02
    ld bc, $0714                                  ; $7ce7: $01 $14 $07
    add b                                         ; $7cea: $80
    nop                                           ; $7ceb: $00
    ld [bc], a                                    ; $7cec: $02
    ld [bc], a                                    ; $7ced: $02
    ld bc, $0814                                  ; $7cee: $01 $14 $08
    ld b, b                                       ; $7cf1: $40
    nop                                           ; $7cf2: $00
    ld [bc], a                                    ; $7cf3: $02
    ld [bc], a                                    ; $7cf4: $02
    ld bc, $0d14                                  ; $7cf5: $01 $14 $0d
    ld a, [bc]                                    ; $7cf8: $0a
    nop                                           ; $7cf9: $00
    add hl, de                                    ; $7cfa: $19
    dec c                                         ; $7cfb: $0d
    ld [de], a                                    ; $7cfc: $12
    ld bc, $0200                                  ; $7cfd: $01 $00 $02
    ld bc, $0e14                                  ; $7d00: $01 $14 $0e
    inc c                                         ; $7d03: $0c
    nop                                           ; $7d04: $00
    cp $0d                                        ; $7d05: $fe $0d
    ld [de], a                                    ; $7d07: $12
    ld bc, $0200                                  ; $7d08: $01 $00 $02
    ld bc, $1014                                  ; $7d0b: $01 $14 $10
    inc bc                                        ; $7d0e: $03
    ld bc, $1078                                  ; $7d0f: $01 $78 $10
    ld bc, $1401                                  ; $7d12: $01 $01 $14
    inc c                                         ; $7d15: $0c
    cp h                                          ; $7d16: $bc
    rst $38                                       ; $7d17: $ff
    ret                                           ; $7d18: $c9


    db $10                                        ; $7d19: $10
    inc bc                                        ; $7d1a: $03
    ld bc, $10a0                                  ; $7d1b: $01 $a0 $10
    ld [bc], a                                    ; $7d1e: $02
    ld bc, $0c04                                  ; $7d1f: $01 $04 $0c
    rst $30                                       ; $7d22: $f7
    rst $38                                       ; $7d23: $ff
    ld bc, $1028                                  ; $7d24: $01 $28 $10
    inc bc                                        ; $7d27: $03
    ld bc, $0c78                                  ; $7d28: $01 $78 $0c
    ld sp, hl                                     ; $7d2b: $f9
    rst $38                                       ; $7d2c: $ff
    ld bc, $1050                                  ; $7d2d: $01 $50 $10
    inc bc                                        ; $7d30: $03
    ld bc, $0c78                                  ; $7d31: $01 $78 $0c
    ld sp, hl                                     ; $7d34: $f9
    rst $38                                       ; $7d35: $ff
    ld bc, $108c                                  ; $7d36: $01 $8c $10
    inc bc                                        ; $7d39: $03
    ld bc, $0c78                                  ; $7d3a: $01 $78 $0c
    ld sp, hl                                     ; $7d3d: $f9
    rst $38                                       ; $7d3e: $ff
    push de                                       ; $7d3f: $d5
    ld hl, $c880                                  ; $7d40: $21 $80 $c8
    ld d, $00                                     ; $7d43: $16 $00
    ld e, a                                       ; $7d45: $5f
    ld a, [$c835]                                 ; $7d46: $fa $35 $c8
    or a                                          ; $7d49: $b7
    jr z, jr_031_7d50                             ; $7d4a: $28 $04

    ld a, $40                                     ; $7d4c: $3e $40
    add e                                         ; $7d4e: $83
    ld e, a                                       ; $7d4f: $5f

jr_031_7d50:
    add hl, de                                    ; $7d50: $19
    pop de                                        ; $7d51: $d1
    ret                                           ; $7d52: $c9


Call_031_7d53:
    push bc                                       ; $7d53: $c5
    push de                                       ; $7d54: $d5
    push hl                                       ; $7d55: $e5
    push hl                                       ; $7d56: $e5
    rst $18                                       ; $7d57: $df
    inc b                                         ; $7d58: $04
    db $10                                        ; $7d59: $10
    ld d, h                                       ; $7d5a: $54
    ld e, l                                       ; $7d5b: $5d
    pop hl                                        ; $7d5c: $e1
    call Call_000_08ac                            ; $7d5d: $cd $ac $08
    bit 7, h                                      ; $7d60: $cb $7c
    ld a, $01                                     ; $7d62: $3e $01
    jr nz, jr_031_7d67                            ; $7d64: $20 $01

    xor a                                         ; $7d66: $af

jr_031_7d67:
    pop hl                                        ; $7d67: $e1
    pop de                                        ; $7d68: $d1
    pop bc                                        ; $7d69: $c1
    ret                                           ; $7d6a: $c9


    push af                                       ; $7d6b: $f5
    push bc                                       ; $7d6c: $c5
    ld hl, $c290                                  ; $7d6d: $21 $90 $c2
    ld a, [hl+]                                   ; $7d70: $2a
    ld h, [hl]                                    ; $7d71: $66
    ld l, a                                       ; $7d72: $6f
    ld a, l                                       ; $7d73: $7d
    ldh [$e0], a                                  ; $7d74: $e0 $e0
    ld a, h                                       ; $7d76: $7c
    ldh [$e1], a                                  ; $7d77: $e0 $e1
    ld a, $04                                     ; $7d79: $3e $04
    ldh [$96], a                                  ; $7d7b: $e0 $96
    ldh [rSVBK], a                                ; $7d7d: $e0 $70
    ld hl, $ffe0                                  ; $7d7f: $21 $e0 $ff
    ld a, [hl+]                                   ; $7d82: $2a
    ld h, [hl]                                    ; $7d83: $66
    add $06                                       ; $7d84: $c6 $06
    ld l, a                                       ; $7d86: $6f
    ld a, [hl+]                                   ; $7d87: $2a
    ld d, [hl]                                    ; $7d88: $56
    ld e, a                                       ; $7d89: $5f
    ld hl, $ffe0                                  ; $7d8a: $21 $e0 $ff
    ld a, [hl+]                                   ; $7d8d: $2a
    ld h, [hl]                                    ; $7d8e: $66
    add $04                                       ; $7d8f: $c6 $04
    ld l, a                                       ; $7d91: $6f
    ld a, [hl+]                                   ; $7d92: $2a
    ld h, [hl]                                    ; $7d93: $66
    ld l, a                                       ; $7d94: $6f
    pop bc                                        ; $7d95: $c1
    pop af                                        ; $7d96: $f1
    ret                                           ; $7d97: $c9


Call_031_7d98:
    ld c, $08                                     ; $7d98: $0e $08
    call Call_000_25a1                            ; $7d9a: $cd $a1 $25
    call Call_000_2625                            ; $7d9d: $cd $25 $26
    rst $18                                       ; $7da0: $df
    nop                                           ; $7da1: $00
    ld b, c                                       ; $7da2: $41
    ret                                           ; $7da3: $c9


Call_031_7da4:
    rst $30                                       ; $7da4: $f7
    ld h, b                                       ; $7da5: $60
    inc c                                         ; $7da6: $0c
    jr z, jr_031_7db6                             ; $7da7: $28 $0d

    ld h, d                                       ; $7da9: $62
    ld l, e                                       ; $7daa: $6b
    sra h                                         ; $7dab: $cb $2c
    rr l                                          ; $7dad: $cb $1d
    sra h                                         ; $7daf: $cb $2c
    rr l                                          ; $7db1: $cb $1d
    add hl, de                                    ; $7db3: $19
    ld d, h                                       ; $7db4: $54
    ld e, l                                       ; $7db5: $5d

jr_031_7db6:
    push de                                       ; $7db6: $d5
    rst $18                                       ; $7db7: $df
    ld [hl+], a                                   ; $7db8: $22
    ld [bc], a                                    ; $7db9: $02
    pop hl                                        ; $7dba: $e1
    rst $18                                       ; $7dbb: $df
    ld d, [hl]                                    ; $7dbc: $56
    dec b                                         ; $7dbd: $05
    rst $08                                       ; $7dbe: $cf
    jr c, @+$23                                   ; $7dbf: $38 $21

    dec de                                        ; $7dc1: $1b
    ld bc, $0edf                                  ; $7dc2: $01 $df $0e
    ld a, [bc]                                    ; $7dc5: $0a
    ld a, $80                                     ; $7dc6: $3e $80
    rst $18                                       ; $7dc8: $df
    ld [$cd0a], sp                                ; $7dc9: $08 $0a $cd
    rra                                           ; $7dcc: $1f
    inc l                                         ; $7dcd: $2c
    call Call_031_7d98                            ; $7dce: $cd $98 $7d
    ret                                           ; $7dd1: $c9


    ld a, [$c810]                                 ; $7dd2: $fa $10 $c8
    cp $00                                        ; $7dd5: $fe $00
    jr z, jr_031_7dde                             ; $7dd7: $28 $05

    rst $30                                       ; $7dd9: $f7
    add b                                         ; $7dda: $80
    ld de, $6828                                  ; $7ddb: $11 $28 $68

jr_031_7dde:
    ld a, [$c810]                                 ; $7dde: $fa $10 $c8
    cp $01                                        ; $7de1: $fe $01
    jr z, jr_031_7dea                             ; $7de3: $28 $05

    rst $30                                       ; $7de5: $f7
    and b                                         ; $7de6: $a0
    ld de, $5c28                                  ; $7de7: $11 $28 $5c

jr_031_7dea:
    ld a, [$c810]                                 ; $7dea: $fa $10 $c8
    cp $02                                        ; $7ded: $fe $02
    jr z, jr_031_7df6                             ; $7def: $28 $05

    rst $30                                       ; $7df1: $f7
    ret nz                                        ; $7df2: $c0

    ld de, $5028                                  ; $7df3: $11 $28 $50

jr_031_7df6:
    ld a, [$c810]                                 ; $7df6: $fa $10 $c8
    cp $03                                        ; $7df9: $fe $03
    jr z, jr_031_7e02                             ; $7dfb: $28 $05

    rst $30                                       ; $7dfd: $f7
    ldh [rNR11], a                                ; $7dfe: $e0 $11
    jr z, jr_031_7e46                             ; $7e00: $28 $44

jr_031_7e02:
    ld de, $012c                                  ; $7e02: $11 $2c $01
    push de                                       ; $7e05: $d5
    rst $18                                       ; $7e06: $df
    ld [hl+], a                                   ; $7e07: $22
    ld [bc], a                                    ; $7e08: $02
    pop hl                                        ; $7e09: $e1
    rst $18                                       ; $7e0a: $df
    ld d, [hl]                                    ; $7e0b: $56
    dec b                                         ; $7e0c: $05
    rst $08                                       ; $7e0d: $cf
    jr c, jr_031_7e31                             ; $7e0e: $38 $21

    dec de                                        ; $7e10: $1b
    ld bc, $0edf                                  ; $7e11: $01 $df $0e
    ld a, [bc]                                    ; $7e14: $0a
    ld a, $80                                     ; $7e15: $3e $80
    rst $18                                       ; $7e17: $df
    ld [$cd0a], sp                                ; $7e18: $08 $0a $cd
    rra                                           ; $7e1b: $1f
    inc l                                         ; $7e1c: $2c
    call Call_031_7d98                            ; $7e1d: $cd $98 $7d
    ld b, $00                                     ; $7e20: $06 $00
    ld c, $fa                                     ; $7e22: $0e $fa
    rst $18                                       ; $7e24: $df
    ld c, [hl]                                    ; $7e25: $4e
    ld a, [bc]                                    ; $7e26: $0a
    rst $18                                       ; $7e27: $df
    inc [hl]                                      ; $7e28: $34
    ld [bc], a                                    ; $7e29: $02
    ld a, $fa                                     ; $7e2a: $3e $fa
    ld [$c441], a                                 ; $7e2c: $ea $41 $c4
    ld a, $fa                                     ; $7e2f: $3e $fa

jr_031_7e31:
    ld [$c46a], a                                 ; $7e31: $ea $6a $c4
    ld hl, $c2a0                                  ; $7e34: $21 $a0 $c2
    ld de, $c466                                  ; $7e37: $11 $66 $c4
    ld bc, $0004                                  ; $7e3a: $01 $04 $00
    call MemCopy                            ; $7e3d: $cd $d3 $03
    ld a, [$c2a4]                                 ; $7e40: $fa $a4 $c2
    ld [$c465], a                                 ; $7e43: $ea $65 $c4

jr_031_7e46:
    ret                                           ; $7e46: $c9


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
