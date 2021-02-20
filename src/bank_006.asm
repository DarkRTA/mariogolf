; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    xor b                                         ; $4000: $a8
    ld c, [hl]                                    ; $4001: $4e

    db $dc, $51

    jr nz, jr_006_4061                            ; $4004: $20 $5b

    db $39, $5b, $40, $60

    and $60                                       ; $400a: $e6 $60

    db $71, $60, $0f, $69

    ld a, $6d                                     ; $4010: $3e $6d
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    nop                                           ; $4018: $00
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    nop                                           ; $401b: $00
    nop                                           ; $401c: $00
    nop                                           ; $401d: $00
    nop                                           ; $401e: $00
    nop                                           ; $401f: $00
    db $10                                        ; $4020: $10
    jr c, jr_006_405b                             ; $4021: $38 $38

    ld l, h                                       ; $4023: $6c
    sub $ee                                       ; $4024: $d6 $ee
    cp $82                                        ; $4026: $fe $82
    ld d, h                                       ; $4028: $54
    xor $7c                                       ; $4029: $ee $7c
    ld d, h                                       ; $402b: $54
    ld l, h                                       ; $402c: $6c
    ld a, h                                       ; $402d: $7c
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    nop                                           ; $4039: $00
    nop                                           ; $403a: $00
    nop                                           ; $403b: $00
    nop                                           ; $403c: $00
    nop                                           ; $403d: $00
    nop                                           ; $403e: $00
    nop                                           ; $403f: $00
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    jr c, jr_006_407c                             ; $4042: $38 $38

    ld d, h                                       ; $4044: $54
    ld l, h                                       ; $4045: $6c
    ld a, e                                       ; $4046: $7b
    ld b, a                                       ; $4047: $47
    ld e, l                                       ; $4048: $5d
    ld h, e                                       ; $4049: $63
    ld l, $31                                     ; $404a: $2e $31
    rla                                           ; $404c: $17
    jr jr_006_405a                                ; $404d: $18 $0b

    inc c                                         ; $404f: $0c
    dec c                                         ; $4050: $0d
    ld c, $15                                     ; $4051: $0e $15
    ld a, [de]                                    ; $4053: $1a
    rra                                           ; $4054: $1f
    db $10                                        ; $4055: $10
    rla                                           ; $4056: $17
    jr jr_006_4064                                ; $4057: $18 $0b

    inc c                                         ; $4059: $0c

jr_006_405a:
    rlca                                          ; $405a: $07

jr_006_405b:
    rlca                                          ; $405b: $07
    nop                                           ; $405c: $00
    nop                                           ; $405d: $00
    nop                                           ; $405e: $00
    nop                                           ; $405f: $00
    nop                                           ; $4060: $00

jr_006_4061:
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00

jr_006_4064:
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    ldh a, [$f0]                                  ; $4066: $f0 $f0
    ld l, b                                       ; $4068: $68
    sbc b                                         ; $4069: $98
    db $f4                                        ; $406a: $f4
    inc c                                         ; $406b: $0c
    db $fc                                        ; $406c: $fc
    inc b                                         ; $406d: $04
    ld a, [$f606]                                 ; $406e: $fa $06 $f6
    ld c, $f9                                     ; $4071: $0e $f9
    rlca                                          ; $4073: $07
    db $fd                                        ; $4074: $fd
    inc bc                                        ; $4075: $03
    sbc d                                         ; $4076: $9a
    ld h, [hl]                                    ; $4077: $66
    ld d, h                                       ; $4078: $54
    db $ec                                        ; $4079: $ec
    xor b                                         ; $407a: $a8
    ret c                                         ; $407b: $d8

jr_006_407c:
    sub b                                         ; $407c: $90
    ldh a, [$60]                                  ; $407d: $f0 $60
    ld h, b                                       ; $407f: $60

    db $2f, $1d, $00, $7c, $1f, $00, $00, $00, $67, $29, $ff, $6b, $58, $1e, $00, $00

    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    ld bc, $0301                                  ; $4092: $01 $01 $03
    ld [bc], a                                    ; $4095: $02
    inc bc                                        ; $4096: $03
    ld [bc], a                                    ; $4097: $02
    rlca                                          ; $4098: $07
    inc b                                         ; $4099: $04
    ld a, a                                       ; $409a: $7f
    ld a, h                                       ; $409b: $7c
    ld a, a                                       ; $409c: $7f
    ld b, b                                       ; $409d: $40
    daa                                           ; $409e: $27
    ld a, [hl-]                                   ; $409f: $3a
    nop                                           ; $40a0: $00
    nop                                           ; $40a1: $00
    add b                                         ; $40a2: $80
    add b                                         ; $40a3: $80
    ret nz                                        ; $40a4: $c0

    ld b, b                                       ; $40a5: $40
    ret nz                                        ; $40a6: $c0

    ld b, b                                       ; $40a7: $40
    ldh [rNR41], a                                ; $40a8: $e0 $20
    cp $3e                                        ; $40aa: $fe $3e
    cp $02                                        ; $40ac: $fe $02
    db $e4                                        ; $40ae: $e4
    ld e, h                                       ; $40af: $5c
    inc de                                        ; $40b0: $13
    ld e, $0a                                     ; $40b1: $1e $0a
    rrca                                          ; $40b3: $0f
    ld [$100f], sp                                ; $40b4: $08 $0f $10
    rra                                           ; $40b7: $1f
    ld de, $261f                                  ; $40b8: $11 $1f $26
    ld a, $38                                     ; $40bb: $3e $38
    jr c, jr_006_40bf                             ; $40bd: $38 $00

jr_006_40bf:
    nop                                           ; $40bf: $00
    ret z                                         ; $40c0: $c8

    ld a, b                                       ; $40c1: $78
    ld d, b                                       ; $40c2: $50
    ldh a, [rNR10]                                ; $40c3: $f0 $10
    ldh a, [$08]                                  ; $40c5: $f0 $08
    ld hl, sp-$78                                 ; $40c7: $f8 $88
    ld hl, sp+$64                                 ; $40c9: $f8 $64
    ld a, h                                       ; $40cb: $7c
    inc e                                         ; $40cc: $1c
    inc e                                         ; $40cd: $1c
    nop                                           ; $40ce: $00
    nop                                           ; $40cf: $00
    nop                                           ; $40d0: $00
    nop                                           ; $40d1: $00
    nop                                           ; $40d2: $00
    nop                                           ; $40d3: $00
    nop                                           ; $40d4: $00
    nop                                           ; $40d5: $00
    nop                                           ; $40d6: $00
    nop                                           ; $40d7: $00
    nop                                           ; $40d8: $00
    nop                                           ; $40d9: $00
    nop                                           ; $40da: $00
    nop                                           ; $40db: $00
    nop                                           ; $40dc: $00
    nop                                           ; $40dd: $00
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
    nop                                           ; $40f2: $00
    nop                                           ; $40f3: $00
    nop                                           ; $40f4: $00
    nop                                           ; $40f5: $00
    nop                                           ; $40f6: $00
    nop                                           ; $40f7: $00
    nop                                           ; $40f8: $00
    nop                                           ; $40f9: $00
    nop                                           ; $40fa: $00
    nop                                           ; $40fb: $00
    nop                                           ; $40fc: $00
    nop                                           ; $40fd: $00
    nop                                           ; $40fe: $00
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
    nop                                           ; $410c: $00
    nop                                           ; $410d: $00
    nop                                           ; $410e: $00
    nop                                           ; $410f: $00
    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    nop                                           ; $4112: $00
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    nop                                           ; $4116: $00
    nop                                           ; $4117: $00
    nop                                           ; $4118: $00
    nop                                           ; $4119: $00
    nop                                           ; $411a: $00
    nop                                           ; $411b: $00
    nop                                           ; $411c: $00
    nop                                           ; $411d: $00
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
    nop                                           ; $4134: $00
    nop                                           ; $4135: $00
    nop                                           ; $4136: $00
    nop                                           ; $4137: $00
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    nop                                           ; $413b: $00
    nop                                           ; $413c: $00
    nop                                           ; $413d: $00
    nop                                           ; $413e: $00
    nop                                           ; $413f: $00
    nop                                           ; $4140: $00
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    nop                                           ; $4143: $00
    nop                                           ; $4144: $00
    nop                                           ; $4145: $00
    nop                                           ; $4146: $00
    nop                                           ; $4147: $00
    nop                                           ; $4148: $00
    nop                                           ; $4149: $00
    nop                                           ; $414a: $00
    nop                                           ; $414b: $00
    nop                                           ; $414c: $00
    nop                                           ; $414d: $00
    nop                                           ; $414e: $00
    nop                                           ; $414f: $00
    nop                                           ; $4150: $00
    nop                                           ; $4151: $00
    nop                                           ; $4152: $00
    nop                                           ; $4153: $00
    nop                                           ; $4154: $00
    nop                                           ; $4155: $00
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
    nop                                           ; $4174: $00
    nop                                           ; $4175: $00
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417a: $00
    nop                                           ; $417b: $00
    nop                                           ; $417c: $00
    nop                                           ; $417d: $00
    nop                                           ; $417e: $00
    nop                                           ; $417f: $00
    nop                                           ; $4180: $00
    nop                                           ; $4181: $00
    nop                                           ; $4182: $00
    nop                                           ; $4183: $00
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    nop                                           ; $418a: $00
    nop                                           ; $418b: $00
    nop                                           ; $418c: $00
    nop                                           ; $418d: $00
    nop                                           ; $418e: $00
    nop                                           ; $418f: $00

    db $9c, $7e, $ff, $4b, $5c, $37, $f7, $7d

    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    nop                                           ; $419a: $00
    nop                                           ; $419b: $00
    nop                                           ; $419c: $00
    nop                                           ; $419d: $00
    nop                                           ; $419e: $00
    nop                                           ; $419f: $00
    nop                                           ; $41a0: $00
    nop                                           ; $41a1: $00
    ld bc, $0301                                  ; $41a2: $01 $01 $03
    ld [bc], a                                    ; $41a5: $02
    inc bc                                        ; $41a6: $03
    ld [bc], a                                    ; $41a7: $02
    rlca                                          ; $41a8: $07
    inc b                                         ; $41a9: $04
    ld a, a                                       ; $41aa: $7f
    ld a, h                                       ; $41ab: $7c
    ld a, a                                       ; $41ac: $7f
    ld b, b                                       ; $41ad: $40
    daa                                           ; $41ae: $27
    ld a, [hl-]                                   ; $41af: $3a
    nop                                           ; $41b0: $00
    nop                                           ; $41b1: $00
    add b                                         ; $41b2: $80
    add b                                         ; $41b3: $80
    ret nz                                        ; $41b4: $c0

    ld b, b                                       ; $41b5: $40
    ret nz                                        ; $41b6: $c0

    ld b, b                                       ; $41b7: $40
    ldh [rNR41], a                                ; $41b8: $e0 $20
    cp $3e                                        ; $41ba: $fe $3e
    cp $02                                        ; $41bc: $fe $02
    db $e4                                        ; $41be: $e4
    ld e, h                                       ; $41bf: $5c
    nop                                           ; $41c0: $00
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    nop                                           ; $41c3: $00
    nop                                           ; $41c4: $00
    nop                                           ; $41c5: $00
    ld bc, $0101                                  ; $41c6: $01 $01 $01
    ld bc, $0203                                  ; $41c9: $01 $03 $02
    ccf                                           ; $41cc: $3f
    ld a, $3f                                     ; $41cd: $3e $3f
    jr nz, jr_006_41d1                            ; $41cf: $20 $00

jr_006_41d1:
    nop                                           ; $41d1: $00
    nop                                           ; $41d2: $00
    nop                                           ; $41d3: $00
    ret nz                                        ; $41d4: $c0

    ret nz                                        ; $41d5: $c0

    ldh [rNR41], a                                ; $41d6: $e0 $20
    ldh [rNR41], a                                ; $41d8: $e0 $20
    ldh a, [rNR10]                                ; $41da: $f0 $10
    rst $38                                       ; $41dc: $ff
    rra                                           ; $41dd: $1f
    rst $38                                       ; $41de: $ff
    ld bc, $0e0e                                  ; $41df: $01 $0e $0e
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
    ld bc, $9f01                                  ; $41ec: $01 $01 $9f
    sbc a                                         ; $41ef: $9f
    rlca                                          ; $41f0: $07
    rlca                                          ; $41f1: $07
    nop                                           ; $41f2: $00
    nop                                           ; $41f3: $00
    nop                                           ; $41f4: $00
    nop                                           ; $41f5: $00
    ld h, b                                       ; $41f6: $60
    ld h, b                                       ; $41f7: $60
    ldh a, [$90]                                  ; $41f8: $f0 $90
    ldh a, [$90]                                  ; $41fa: $f0 $90
    ld hl, sp+$08                                 ; $41fc: $f8 $08
    rst $38                                       ; $41fe: $ff
    rrca                                          ; $41ff: $0f
    add h                                         ; $4200: $84
    add a                                         ; $4201: $87
    add a                                         ; $4202: $87
    add a                                         ; $4203: $87
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
    nop                                           ; $420e: $00
    nop                                           ; $420f: $00
    call z, Call_000_03cf                         ; $4210: $cc $cf $03
    inc bc                                        ; $4213: $03
    nop                                           ; $4214: $00
    nop                                           ; $4215: $00
    nop                                           ; $4216: $00
    nop                                           ; $4217: $00
    jr nc, jr_006_424a                            ; $4218: $30 $30

    ld a, b                                       ; $421a: $78
    ld c, b                                       ; $421b: $48
    ld a, b                                       ; $421c: $78
    ld c, b                                       ; $421d: $48
    db $fc                                        ; $421e: $fc
    add h                                         ; $421f: $84
    add c                                         ; $4220: $81
    add c                                         ; $4221: $81
    ld b, d                                       ; $4222: $42
    jp $c3c3                                      ; $4223: $c3 $c3 $c3


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
    jr @+$01                                      ; $4230: $18 $ff

    ld h, [hl]                                    ; $4232: $66
    rst $20                                       ; $4233: $e7
    add c                                         ; $4234: $81
    add c                                         ; $4235: $81
    nop                                           ; $4236: $00
    nop                                           ; $4237: $00
    nop                                           ; $4238: $00
    nop                                           ; $4239: $00
    jr jr_006_4254                                ; $423a: $18 $18

    inc a                                         ; $423c: $3c
    inc h                                         ; $423d: $24
    inc a                                         ; $423e: $3c
    inc h                                         ; $423f: $24
    ld b, b                                       ; $4240: $40
    ret nz                                        ; $4241: $c0

    ld b, b                                       ; $4242: $40
    ret nz                                        ; $4243: $c0

jr_006_4244:
    ld hl, $e1e1                                  ; $4244: $21 $e1 $e1
    pop hl                                        ; $4247: $e1
    nop                                           ; $4248: $00
    nop                                           ; $4249: $00

jr_006_424a:
    nop                                           ; $424a: $00
    nop                                           ; $424b: $00
    nop                                           ; $424c: $00
    nop                                           ; $424d: $00
    nop                                           ; $424e: $00
    nop                                           ; $424f: $00
    add b                                         ; $4250: $80
    rst $38                                       ; $4251: $ff
    adc h                                         ; $4252: $8c
    rst $38                                       ; $4253: $ff

jr_006_4254:
    inc sp                                        ; $4254: $33
    di                                            ; $4255: $f3
    ret nz                                        ; $4256: $c0

    ret nz                                        ; $4257: $c0

    nop                                           ; $4258: $00
    nop                                           ; $4259: $00
    nop                                           ; $425a: $00
    nop                                           ; $425b: $00
    inc c                                         ; $425c: $0c
    inc c                                         ; $425d: $0c
    ld e, $12                                     ; $425e: $1e $12
    ld b, b                                       ; $4260: $40
    ret nz                                        ; $4261: $c0

    jr nz, jr_006_4244                            ; $4262: $20 $e0

    jr nz, @-$1e                                  ; $4264: $20 $e0

    sub b                                         ; $4266: $90
    ldh a, [rSVBK]                                ; $4267: $f0 $70
    ld [hl], b                                    ; $4269: $70
    nop                                           ; $426a: $00
    nop                                           ; $426b: $00
    nop                                           ; $426c: $00
    nop                                           ; $426d: $00
    nop                                           ; $426e: $00
    nop                                           ; $426f: $00
    jr nz, jr_006_42b1                            ; $4270: $20 $3f

    ld b, b                                       ; $4272: $40
    ld a, a                                       ; $4273: $7f
    ld b, [hl]                                    ; $4274: $46
    ld a, a                                       ; $4275: $7f
    sbc c                                         ; $4276: $99
    ld sp, hl                                     ; $4277: $f9
    ldh [$e0], a                                  ; $4278: $e0 $e0
    nop                                           ; $427a: $00
    nop                                           ; $427b: $00
    nop                                           ; $427c: $00
    nop                                           ; $427d: $00
    ld b, $06                                     ; $427e: $06 $06
    and b                                         ; $4280: $a0
    ldh [rNR41], a                                ; $4281: $e0 $20
    ldh [rNR10], a                                ; $4283: $e0 $10
    ldh a, [rNR10]                                ; $4285: $f0 $10
    ldh a, [$c8]                                  ; $4287: $f0 $c8
    ld hl, sp+$38                                 ; $4289: $f8 $38
    jr c, jr_006_428d                             ; $428b: $38 $00

jr_006_428d:
    nop                                           ; $428d: $00
    nop                                           ; $428e: $00
    nop                                           ; $428f: $00
    inc d                                         ; $4290: $14
    rra                                           ; $4291: $1f
    db $10                                        ; $4292: $10
    rra                                           ; $4293: $1f
    jr nz, @+$41                                  ; $4294: $20 $3f

    inc hl                                        ; $4296: $23
    ccf                                           ; $4297: $3f
    ld c, h                                       ; $4298: $4c
    ld a, h                                       ; $4299: $7c
    ld [hl], b                                    ; $429a: $70
    ld [hl], b                                    ; $429b: $70
    nop                                           ; $429c: $00
    nop                                           ; $429d: $00
    nop                                           ; $429e: $00
    nop                                           ; $429f: $00
    inc de                                        ; $42a0: $13
    ld e, $0a                                     ; $42a1: $1e $0a
    rrca                                          ; $42a3: $0f
    ld [$100f], sp                                ; $42a4: $08 $0f $10
    rra                                           ; $42a7: $1f
    ld de, $261f                                  ; $42a8: $11 $1f $26
    ld a, $38                                     ; $42ab: $3e $38
    jr c, jr_006_42af                             ; $42ad: $38 $00

jr_006_42af:
    nop                                           ; $42af: $00
    ret z                                         ; $42b0: $c8

jr_006_42b1:
    ld a, b                                       ; $42b1: $78
    ld d, b                                       ; $42b2: $50
    ldh a, [rNR10]                                ; $42b3: $f0 $10
    ldh a, [$08]                                  ; $42b5: $f0 $08
    ld hl, sp-$78                                 ; $42b7: $f8 $88
    ld hl, sp+$64                                 ; $42b9: $f8 $64
    ld a, h                                       ; $42bb: $7c
    inc e                                         ; $42bc: $1c
    inc e                                         ; $42bd: $1c
    nop                                           ; $42be: $00
    nop                                           ; $42bf: $00
    inc de                                        ; $42c0: $13
    dec e                                         ; $42c1: $1d
    add hl, bc                                    ; $42c2: $09
    rrca                                          ; $42c3: $0f
    dec b                                         ; $42c4: $05
    rlca                                          ; $42c5: $07
    inc b                                         ; $42c6: $04
    rlca                                          ; $42c7: $07
    ld [$080f], sp                                ; $42c8: $08 $0f $08
    rrca                                          ; $42cb: $0f
    inc de                                        ; $42cc: $13
    rra                                           ; $42cd: $1f

jr_006_42ce:
    inc e                                         ; $42ce: $1c
    inc e                                         ; $42cf: $1c
    ld a, [c]                                     ; $42d0: $f2
    ld l, $e4                                     ; $42d1: $2e $e4
    inc a                                         ; $42d3: $3c
    jr z, jr_006_42ce                             ; $42d4: $28 $f8

    ld [$04f8], sp                                ; $42d6: $08 $f8 $04
    db $fc                                        ; $42d9: $fc
    call nz, Call_000_32fc                        ; $42da: $c4 $fc $32
    ld a, $0e                                     ; $42dd: $3e $0e
    ld c, $9f                                     ; $42df: $0e $9f
    sub b                                         ; $42e1: $90
    add hl, bc                                    ; $42e2: $09
    ld c, $04                                     ; $42e3: $0e $04
    rlca                                          ; $42e5: $07
    ld [bc], a                                    ; $42e6: $02
    inc bc                                        ; $42e7: $03
    ld [bc], a                                    ; $42e8: $02
    inc bc                                        ; $42e9: $03
    inc b                                         ; $42ea: $04
    rlca                                          ; $42eb: $07
    inc b                                         ; $42ec: $04
    rlca                                          ; $42ed: $07
    add hl, bc                                    ; $42ee: $09
    rrca                                          ; $42ef: $0f
    rst $38                                       ; $42f0: $ff
    nop                                           ; $42f1: $00
    ld sp, hl                                     ; $42f2: $f9
    sub a                                         ; $42f3: $97
    ld a, [c]                                     ; $42f4: $f2
    sbc [hl]                                      ; $42f5: $9e
    sub h                                         ; $42f6: $94
    db $fc                                        ; $42f7: $fc
    inc b                                         ; $42f8: $04
    db $fc                                        ; $42f9: $fc
    ld [bc], a                                    ; $42fa: $02
    cp $62                                        ; $42fb: $fe $62
    cp $99                                        ; $42fd: $fe $99
    sbc a                                         ; $42ff: $9f
    rst $08                                       ; $4300: $cf
    rst $08                                       ; $4301: $cf
    rst $08                                       ; $4302: $cf
    ld c, b                                       ; $4303: $48
    add h                                         ; $4304: $84
    add a                                         ; $4305: $87
    ld [bc], a                                    ; $4306: $02
    inc bc                                        ; $4307: $03
    ld bc, $0101                                  ; $4308: $01 $01 $01
    ld bc, $0302                                  ; $430b: $01 $02 $03
    ld [bc], a                                    ; $430e: $02
    inc bc                                        ; $430f: $03
    rst $38                                       ; $4310: $ff
    add a                                         ; $4311: $87
    rst $38                                       ; $4312: $ff
    nop                                           ; $4313: $00
    db $fc                                        ; $4314: $fc
    ld c, e                                       ; $4315: $4b
    ld a, c                                       ; $4316: $79
    rst $08                                       ; $4317: $cf
    ld c, d                                       ; $4318: $4a
    cp $02                                        ; $4319: $fe $02
    cp $01                                        ; $431b: $fe $01
    rst $38                                       ; $431d: $ff
    ld sp, $00ff                                  ; $431e: $31 $ff $00
    nop                                           ; $4321: $00
    rst $20                                       ; $4322: $e7
    rst $20                                       ; $4323: $e7
    rst $20                                       ; $4324: $e7
    inc h                                         ; $4325: $24
    ld b, d                                       ; $4326: $42
    jp $8181                                      ; $4327: $c3 $81 $81


    nop                                           ; $432a: $00
    nop                                           ; $432b: $00
    nop                                           ; $432c: $00
    nop                                           ; $432d: $00
    add c                                         ; $432e: $81
    add c                                         ; $432f: $81
    ld a, [hl]                                    ; $4330: $7e
    ld b, d                                       ; $4331: $42
    rst $38                                       ; $4332: $ff
    jp Jump_000_00ff                              ; $4333: $c3 $ff $00


    ld a, [hl]                                    ; $4336: $7e
    and l                                         ; $4337: $a5
    inc a                                         ; $4338: $3c
    rst $20                                       ; $4339: $e7
    and l                                         ; $433a: $a5
    rst $38                                       ; $433b: $ff
    add c                                         ; $433c: $81
    rst $38                                       ; $433d: $ff
    nop                                           ; $433e: $00
    rst $38                                       ; $433f: $ff
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    di                                            ; $4344: $f3
    di                                            ; $4345: $f3
    di                                            ; $4346: $f3
    ld [de], a                                    ; $4347: $12
    ld hl, $40e1                                  ; $4348: $21 $e1 $40
    ret nz                                        ; $434b: $c0

    add b                                         ; $434c: $80
    add b                                         ; $434d: $80

jr_006_434e:
    add b                                         ; $434e: $80
    add b                                         ; $434f: $80
    ld e, $12                                     ; $4350: $1e $12
    ccf                                           ; $4352: $3f
    ld hl, $e1ff                                  ; $4353: $21 $ff $e1
    rst $38                                       ; $4356: $ff
    nop                                           ; $4357: $00
    ccf                                           ; $4358: $3f
    jp nc, $f39e                                  ; $4359: $d2 $9e $f3

    ld d, d                                       ; $435c: $52
    ld a, a                                       ; $435d: $7f
    ld b, b                                       ; $435e: $40
    ld a, a                                       ; $435f: $7f
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    nop                                           ; $4363: $00
    add b                                         ; $4364: $80
    add b                                         ; $4365: $80
    ld sp, hl                                     ; $4366: $f9
    ld sp, hl                                     ; $4367: $f9
    ld sp, hl                                     ; $4368: $f9
    add hl, bc                                    ; $4369: $09
    sub b                                         ; $436a: $90
    ld [hl], b                                    ; $436b: $70
    jr nz, jr_006_434e                            ; $436c: $20 $e0

    ld b, b                                       ; $436e: $40
    ret nz                                        ; $436f: $c0

    rrca                                          ; $4370: $0f
    add hl, bc                                    ; $4371: $09
    rrca                                          ; $4372: $0f
    add hl, bc                                    ; $4373: $09
    rra                                           ; $4374: $1f
    db $10                                        ; $4375: $10
    rst $38                                       ; $4376: $ff
    ldh a, [rIE]                                  ; $4377: $f0 $ff
    nop                                           ; $4379: $00
    sbc a                                         ; $437a: $9f
    jp hl                                         ; $437b: $e9


    ld c, a                                       ; $437c: $4f
    ld a, c                                       ; $437d: $79
    add hl, hl                                    ; $437e: $29
    ccf                                           ; $437f: $3f
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    add b                                         ; $4382: $80
    add b                                         ; $4383: $80
    add b                                         ; $4384: $80
    add b                                         ; $4385: $80
    ret nz                                        ; $4386: $c0

    ld b, b                                       ; $4387: $40
    db $fc                                        ; $4388: $fc
    ld a, h                                       ; $4389: $7c
    db $fc                                        ; $438a: $fc
    inc b                                         ; $438b: $04
    ret z                                         ; $438c: $c8

    cp b                                          ; $438d: $b8
    sub b                                         ; $438e: $90
    ldh a, [$03]                                  ; $438f: $f0 $03
    inc bc                                        ; $4391: $03
    rlca                                          ; $4392: $07
    inc b                                         ; $4393: $04
    rlca                                          ; $4394: $07
    inc b                                         ; $4395: $04
    rrca                                          ; $4396: $0f
    ld [$f8ff], sp                                ; $4397: $08 $ff $f8
    rst $38                                       ; $439a: $ff
    add b                                         ; $439b: $80
    ld c, a                                       ; $439c: $4f
    ld [hl], h                                    ; $439d: $74
    daa                                           ; $439e: $27
    inc a                                         ; $439f: $3c
    ret z                                         ; $43a0: $c8

    ld a, b                                       ; $43a1: $78
    ld d, b                                       ; $43a2: $50
    ldh a, [rNR10]                                ; $43a3: $f0 $10
    ldh a, [$08]                                  ; $43a5: $f0 $08
    ld hl, sp-$78                                 ; $43a7: $f8 $88
    ld hl, sp+$64                                 ; $43a9: $f8 $64
    ld a, h                                       ; $43ab: $7c
    inc e                                         ; $43ac: $1c
    inc e                                         ; $43ad: $1c
    nop                                           ; $43ae: $00
    nop                                           ; $43af: $00
    inc de                                        ; $43b0: $13
    ld e, $0a                                     ; $43b1: $1e $0a
    rrca                                          ; $43b3: $0f
    ld [$100f], sp                                ; $43b4: $08 $0f $10
    rra                                           ; $43b7: $1f
    ld de, $261f                                  ; $43b8: $11 $1f $26
    ld a, $38                                     ; $43bb: $3e $38
    jr c, jr_006_43bf                             ; $43bd: $38 $00

jr_006_43bf:
    nop                                           ; $43bf: $00
    ld a, [c]                                     ; $43c0: $f2
    ld l, $e4                                     ; $43c1: $2e $e4
    inc a                                         ; $43c3: $3c
    jr z, @-$06                                   ; $43c4: $28 $f8

    ld [$04f8], sp                                ; $43c6: $08 $f8 $04
    db $fc                                        ; $43c9: $fc
    call nz, Call_000_32fc                        ; $43ca: $c4 $fc $32
    ld a, $0e                                     ; $43cd: $3e $0e
    ld c, $13                                     ; $43cf: $0e $13
    dec e                                         ; $43d1: $1d
    add hl, bc                                    ; $43d2: $09
    rrca                                          ; $43d3: $0f
    dec b                                         ; $43d4: $05
    rlca                                          ; $43d5: $07
    inc b                                         ; $43d6: $04
    rlca                                          ; $43d7: $07
    ld [$080f], sp                                ; $43d8: $08 $0f $08
    rrca                                          ; $43db: $0f
    inc de                                        ; $43dc: $13
    rra                                           ; $43dd: $1f
    inc e                                         ; $43de: $1c
    inc e                                         ; $43df: $1c
    rst $38                                       ; $43e0: $ff
    nop                                           ; $43e1: $00
    ld sp, hl                                     ; $43e2: $f9
    sub a                                         ; $43e3: $97
    ld a, [c]                                     ; $43e4: $f2
    sbc [hl]                                      ; $43e5: $9e
    sub h                                         ; $43e6: $94
    db $fc                                        ; $43e7: $fc
    inc b                                         ; $43e8: $04
    db $fc                                        ; $43e9: $fc
    ld [bc], a                                    ; $43ea: $02
    cp $62                                        ; $43eb: $fe $62
    cp $99                                        ; $43ed: $fe $99
    sbc a                                         ; $43ef: $9f
    sbc a                                         ; $43f0: $9f
    sub b                                         ; $43f1: $90
    add hl, bc                                    ; $43f2: $09
    ld c, $04                                     ; $43f3: $0e $04
    rlca                                          ; $43f5: $07
    ld [bc], a                                    ; $43f6: $02
    inc bc                                        ; $43f7: $03
    ld [bc], a                                    ; $43f8: $02
    inc bc                                        ; $43f9: $03
    inc b                                         ; $43fa: $04
    rlca                                          ; $43fb: $07
    inc b                                         ; $43fc: $04
    rlca                                          ; $43fd: $07
    add hl, bc                                    ; $43fe: $09
    rrca                                          ; $43ff: $0f
    rst $38                                       ; $4400: $ff
    add a                                         ; $4401: $87
    rst $38                                       ; $4402: $ff
    nop                                           ; $4403: $00
    db $fc                                        ; $4404: $fc
    ld c, e                                       ; $4405: $4b
    ld a, c                                       ; $4406: $79
    rst $08                                       ; $4407: $cf
    ld c, d                                       ; $4408: $4a
    cp $02                                        ; $4409: $fe $02
    cp $01                                        ; $440b: $fe $01
    rst $38                                       ; $440d: $ff
    ld sp, $cfff                                  ; $440e: $31 $ff $cf
    rst $08                                       ; $4411: $cf
    rst $08                                       ; $4412: $cf
    ld c, b                                       ; $4413: $48
    add h                                         ; $4414: $84
    add a                                         ; $4415: $87
    ld [bc], a                                    ; $4416: $02
    inc bc                                        ; $4417: $03
    ld bc, $0101                                  ; $4418: $01 $01 $01
    ld bc, $0302                                  ; $441b: $01 $02 $03
    ld [bc], a                                    ; $441e: $02
    inc bc                                        ; $441f: $03
    ld a, [hl]                                    ; $4420: $7e
    ld b, d                                       ; $4421: $42
    rst $38                                       ; $4422: $ff
    jp Jump_000_00ff                              ; $4423: $c3 $ff $00


    ld a, [hl]                                    ; $4426: $7e
    and l                                         ; $4427: $a5
    inc a                                         ; $4428: $3c
    rst $20                                       ; $4429: $e7
    and l                                         ; $442a: $a5
    rst $38                                       ; $442b: $ff
    add c                                         ; $442c: $81
    rst $38                                       ; $442d: $ff
    nop                                           ; $442e: $00
    rst $38                                       ; $442f: $ff
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    rst $20                                       ; $4432: $e7
    rst $20                                       ; $4433: $e7
    rst $20                                       ; $4434: $e7
    inc h                                         ; $4435: $24
    ld b, d                                       ; $4436: $42
    jp $8181                                      ; $4437: $c3 $81 $81


    nop                                           ; $443a: $00
    nop                                           ; $443b: $00
    nop                                           ; $443c: $00
    nop                                           ; $443d: $00
    add c                                         ; $443e: $81
    add c                                         ; $443f: $81
    ld e, $12                                     ; $4440: $1e $12
    ccf                                           ; $4442: $3f
    ld hl, $e1ff                                  ; $4443: $21 $ff $e1
    rst $38                                       ; $4446: $ff
    nop                                           ; $4447: $00
    ccf                                           ; $4448: $3f
    jp nc, $f39e                                  ; $4449: $d2 $9e $f3

    ld d, d                                       ; $444c: $52
    ld a, a                                       ; $444d: $7f
    ld b, b                                       ; $444e: $40
    ld a, a                                       ; $444f: $7f
    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    di                                            ; $4454: $f3
    di                                            ; $4455: $f3
    di                                            ; $4456: $f3
    ld [de], a                                    ; $4457: $12
    ld hl, $40e1                                  ; $4458: $21 $e1 $40
    ret nz                                        ; $445b: $c0

    add b                                         ; $445c: $80
    add b                                         ; $445d: $80

jr_006_445e:
    add b                                         ; $445e: $80
    add b                                         ; $445f: $80
    rrca                                          ; $4460: $0f
    add hl, bc                                    ; $4461: $09
    rrca                                          ; $4462: $0f
    add hl, bc                                    ; $4463: $09
    rra                                           ; $4464: $1f
    db $10                                        ; $4465: $10
    rst $38                                       ; $4466: $ff
    ldh a, [rIE]                                  ; $4467: $f0 $ff
    nop                                           ; $4469: $00
    sbc a                                         ; $446a: $9f
    jp hl                                         ; $446b: $e9


    ld c, a                                       ; $446c: $4f
    ld a, c                                       ; $446d: $79
    add hl, hl                                    ; $446e: $29
    ccf                                           ; $446f: $3f
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    nop                                           ; $4473: $00
    add b                                         ; $4474: $80
    add b                                         ; $4475: $80
    ld sp, hl                                     ; $4476: $f9
    ld sp, hl                                     ; $4477: $f9
    ld sp, hl                                     ; $4478: $f9
    add hl, bc                                    ; $4479: $09
    sub b                                         ; $447a: $90
    ld [hl], b                                    ; $447b: $70
    jr nz, jr_006_445e                            ; $447c: $20 $e0

    ld b, b                                       ; $447e: $40
    ret nz                                        ; $447f: $c0

    inc bc                                        ; $4480: $03
    inc bc                                        ; $4481: $03
    rlca                                          ; $4482: $07
    inc b                                         ; $4483: $04
    rlca                                          ; $4484: $07
    inc b                                         ; $4485: $04
    rrca                                          ; $4486: $0f
    ld [$f8ff], sp                                ; $4487: $08 $ff $f8
    rst $38                                       ; $448a: $ff
    add b                                         ; $448b: $80
    ld c, a                                       ; $448c: $4f
    ld [hl], h                                    ; $448d: $74
    daa                                           ; $448e: $27
    inc a                                         ; $448f: $3c
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    add b                                         ; $4492: $80
    add b                                         ; $4493: $80
    add b                                         ; $4494: $80
    add b                                         ; $4495: $80
    ret nz                                        ; $4496: $c0

    ld b, b                                       ; $4497: $40
    db $fc                                        ; $4498: $fc
    ld a, h                                       ; $4499: $7c
    db $fc                                        ; $449a: $fc
    inc b                                         ; $449b: $04
    ret z                                         ; $449c: $c8

    cp b                                          ; $449d: $b8
    sub b                                         ; $449e: $90
    ldh a, [rP1]                                  ; $449f: $f0 $00
    nop                                           ; $44a1: $00
    add b                                         ; $44a2: $80
    add b                                         ; $44a3: $80
    ret nz                                        ; $44a4: $c0

    ld b, b                                       ; $44a5: $40
    ret nz                                        ; $44a6: $c0

    ld b, b                                       ; $44a7: $40
    ldh [rNR41], a                                ; $44a8: $e0 $20
    cp $3e                                        ; $44aa: $fe $3e
    cp $02                                        ; $44ac: $fe $02
    db $e4                                        ; $44ae: $e4
    ld e, h                                       ; $44af: $5c
    nop                                           ; $44b0: $00
    nop                                           ; $44b1: $00
    ld bc, $0301                                  ; $44b2: $01 $01 $03
    ld [bc], a                                    ; $44b5: $02
    inc bc                                        ; $44b6: $03
    ld [bc], a                                    ; $44b7: $02
    rlca                                          ; $44b8: $07
    inc b                                         ; $44b9: $04
    ld a, a                                       ; $44ba: $7f
    ld a, h                                       ; $44bb: $7c
    ld a, a                                       ; $44bc: $7f
    ld b, b                                       ; $44bd: $40
    daa                                           ; $44be: $27
    ld a, [hl-]                                   ; $44bf: $3a
    nop                                           ; $44c0: $00
    nop                                           ; $44c1: $00
    nop                                           ; $44c2: $00
    nop                                           ; $44c3: $00
    ret nz                                        ; $44c4: $c0

    ret nz                                        ; $44c5: $c0

    ldh [rNR41], a                                ; $44c6: $e0 $20
    ldh [rNR41], a                                ; $44c8: $e0 $20
    ldh a, [rNR10]                                ; $44ca: $f0 $10
    rst $38                                       ; $44cc: $ff
    rra                                           ; $44cd: $1f
    rst $38                                       ; $44ce: $ff
    ld bc, $0000                                  ; $44cf: $01 $00 $00
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00
    nop                                           ; $44d4: $00
    nop                                           ; $44d5: $00
    ld bc, $0101                                  ; $44d6: $01 $01 $01
    ld bc, $0203                                  ; $44d9: $01 $03 $02
    ccf                                           ; $44dc: $3f
    ld a, $3f                                     ; $44dd: $3e $3f
    jr nz, jr_006_44e8                            ; $44df: $20 $07

    rlca                                          ; $44e1: $07
    nop                                           ; $44e2: $00
    nop                                           ; $44e3: $00
    nop                                           ; $44e4: $00
    nop                                           ; $44e5: $00
    ld h, b                                       ; $44e6: $60
    ld h, b                                       ; $44e7: $60

jr_006_44e8:
    ldh a, [$90]                                  ; $44e8: $f0 $90
    ldh a, [$90]                                  ; $44ea: $f0 $90
    ld hl, sp+$08                                 ; $44ec: $f8 $08
    rst $38                                       ; $44ee: $ff
    rrca                                          ; $44ef: $0f
    ld c, $0e                                     ; $44f0: $0e $0e
    nop                                           ; $44f2: $00
    nop                                           ; $44f3: $00
    nop                                           ; $44f4: $00
    nop                                           ; $44f5: $00
    nop                                           ; $44f6: $00
    nop                                           ; $44f7: $00
    nop                                           ; $44f8: $00
    nop                                           ; $44f9: $00
    nop                                           ; $44fa: $00
    nop                                           ; $44fb: $00
    ld bc, $9f01                                  ; $44fc: $01 $01 $9f
    sbc a                                         ; $44ff: $9f
    call z, Call_000_03cf                         ; $4500: $cc $cf $03
    inc bc                                        ; $4503: $03
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    jr nc, jr_006_453a                            ; $4508: $30 $30

    ld a, b                                       ; $450a: $78
    ld c, b                                       ; $450b: $48
    ld a, b                                       ; $450c: $78
    ld c, b                                       ; $450d: $48
    db $fc                                        ; $450e: $fc
    add h                                         ; $450f: $84
    add h                                         ; $4510: $84
    add a                                         ; $4511: $87
    add a                                         ; $4512: $87
    add a                                         ; $4513: $87
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    nop                                           ; $4516: $00
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    nop                                           ; $4519: $00
    nop                                           ; $451a: $00
    nop                                           ; $451b: $00
    nop                                           ; $451c: $00
    nop                                           ; $451d: $00
    nop                                           ; $451e: $00
    nop                                           ; $451f: $00
    jr @+$01                                      ; $4520: $18 $ff

    ld h, [hl]                                    ; $4522: $66
    rst $20                                       ; $4523: $e7
    add c                                         ; $4524: $81
    add c                                         ; $4525: $81
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00
    jr jr_006_4544                                ; $452a: $18 $18

    inc a                                         ; $452c: $3c
    inc h                                         ; $452d: $24
    inc a                                         ; $452e: $3c
    inc h                                         ; $452f: $24
    add c                                         ; $4530: $81
    add c                                         ; $4531: $81
    ld b, d                                       ; $4532: $42
    jp $c3c3                                      ; $4533: $c3 $c3 $c3


    nop                                           ; $4536: $00
    nop                                           ; $4537: $00
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00

jr_006_453a:
    nop                                           ; $453a: $00
    nop                                           ; $453b: $00
    nop                                           ; $453c: $00
    nop                                           ; $453d: $00
    nop                                           ; $453e: $00
    nop                                           ; $453f: $00
    add b                                         ; $4540: $80
    rst $38                                       ; $4541: $ff
    adc h                                         ; $4542: $8c
    rst $38                                       ; $4543: $ff

jr_006_4544:
    inc sp                                        ; $4544: $33
    di                                            ; $4545: $f3
    ret nz                                        ; $4546: $c0

    ret nz                                        ; $4547: $c0

    nop                                           ; $4548: $00
    nop                                           ; $4549: $00
    nop                                           ; $454a: $00
    nop                                           ; $454b: $00
    inc c                                         ; $454c: $0c
    inc c                                         ; $454d: $0c
    ld e, $12                                     ; $454e: $1e $12
    ld b, b                                       ; $4550: $40
    ret nz                                        ; $4551: $c0

    ld b, b                                       ; $4552: $40
    ret nz                                        ; $4553: $c0

jr_006_4554:
    ld hl, $e1e1                                  ; $4554: $21 $e1 $e1
    pop hl                                        ; $4557: $e1
    nop                                           ; $4558: $00
    nop                                           ; $4559: $00
    nop                                           ; $455a: $00
    nop                                           ; $455b: $00
    nop                                           ; $455c: $00
    nop                                           ; $455d: $00
    nop                                           ; $455e: $00
    nop                                           ; $455f: $00
    jr nz, @+$41                                  ; $4560: $20 $3f

    ld b, b                                       ; $4562: $40
    ld a, a                                       ; $4563: $7f
    ld b, [hl]                                    ; $4564: $46
    ld a, a                                       ; $4565: $7f
    sbc c                                         ; $4566: $99
    ld sp, hl                                     ; $4567: $f9
    ldh [$e0], a                                  ; $4568: $e0 $e0
    nop                                           ; $456a: $00
    nop                                           ; $456b: $00
    nop                                           ; $456c: $00
    nop                                           ; $456d: $00
    ld b, $06                                     ; $456e: $06 $06
    ld b, b                                       ; $4570: $40
    ret nz                                        ; $4571: $c0

    jr nz, jr_006_4554                            ; $4572: $20 $e0

    jr nz, @-$1e                                  ; $4574: $20 $e0

    sub b                                         ; $4576: $90
    ldh a, [rSVBK]                                ; $4577: $f0 $70
    ld [hl], b                                    ; $4579: $70
    nop                                           ; $457a: $00
    nop                                           ; $457b: $00
    nop                                           ; $457c: $00
    nop                                           ; $457d: $00
    nop                                           ; $457e: $00
    nop                                           ; $457f: $00
    inc d                                         ; $4580: $14
    rra                                           ; $4581: $1f
    db $10                                        ; $4582: $10
    rra                                           ; $4583: $1f
    jr nz, @+$41                                  ; $4584: $20 $3f

    inc hl                                        ; $4586: $23
    ccf                                           ; $4587: $3f
    ld c, h                                       ; $4588: $4c
    ld a, h                                       ; $4589: $7c
    ld [hl], b                                    ; $458a: $70
    ld [hl], b                                    ; $458b: $70
    nop                                           ; $458c: $00
    nop                                           ; $458d: $00
    nop                                           ; $458e: $00
    nop                                           ; $458f: $00
    and b                                         ; $4590: $a0
    ldh [rNR41], a                                ; $4591: $e0 $20
    ldh [rNR10], a                                ; $4593: $e0 $10
    ldh a, [rNR10]                                ; $4595: $f0 $10
    ldh a, [$c8]                                  ; $4597: $f0 $c8
    ld hl, sp+$38                                 ; $4599: $f8 $38
    jr c, jr_006_459d                             ; $459b: $38 $00

jr_006_459d:
    nop                                           ; $459d: $00
    nop                                           ; $459e: $00
    nop                                           ; $459f: $00

    db $02, $03, $03, $03, $04, $f0, $f1, $f0, $f1, $f0, $f1, $f0, $f1, $f0, $f1, $f0
    db $f1, $f0, $f1, $f0, $f4, $f4, $02, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $05, $e0, $e1, $e2, $06, $f2, $02, $03, $03, $03, $03, $03, $03, $03, $04, $f2
    db $f3, $f2, $f3, $f2, $f4, $f4, $05, $20, $b6, $c0, $b6, $c5, $20, $74, $72, $7d
    db $05, $e3, $e4, $e5, $06, $f0, $05, $20, $20, $20, $20, $20, $20, $20, $06, $f0
    db $f1, $f0, $f1, $f0, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $05, $e6, $e7, $e8, $06, $f2, $07, $08, $08, $08, $08, $08, $08, $08, $09, $f2
    db $f3, $f2, $f3, $f2, $00, $00, $05, $20, $67, $20, $97, $20, $8f, $20, $8a, $20
    db $07, $08, $08, $08, $09, $f0, $f1, $f0, $f1, $f0, $f1, $f0, $f1, $f0, $f1, $f0
    db $f1, $f0, $f1, $f0, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $02, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $04, $00, $00, $05, $20, $68, $20, $98, $20, $90, $20, $8b, $20
    db $05, $41, $42, $43, $44, $45, $20, $46, $47, $48, $49, $4a, $20, $4b, $4c, $4d
    db $4e, $4f, $20, $06, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $20, $69, $20, $99, $20, $91, $20, $8c, $20
    db $05, $50, $51, $52, $53, $54, $20, $55, $56, $57, $58, $59, $20, $5a, $20, $2e
    db $2c, $27, $20, $06, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $20, $6a, $20, $9a, $20, $92, $20, $8d, $20
    db $05, $61, $62, $63, $64, $65, $20, $66, $67, $68, $69, $6a, $20, $6b, $6c, $6d
    db $6e, $6f, $20, $06, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $20, $6b, $20, $9b, $20, $93, $20, $8e, $20
    db $05, $70, $71, $72, $73, $74, $20, $75, $76, $77, $78, $79, $20, $7a, $20, $3f
    db $21, $2f, $20, $06, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $8f, $98, $75, $5f, $5f, $20, $20, $9d, $20
    db $05, $30, $31, $32, $33, $34, $20, $35, $36, $37, $38, $39, $20, $25, $26, $28
    db $3d, $29, $20, $06, $00, $00, $05, $20, $00, $00, $00, $20, $20, $20, $20, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $20, $00, $00, $00, $20, $20, $20, $6f, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $44, $45, $4c, $20, $20, $20, $45
    db $4e, $44, $20, $06, $00, $00, $05, $20, $00, $00, $00, $20, $20, $20, $20, $20
    db $07, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $09, $00, $00, $07, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $04, $04, $04, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $01, $01, $01, $01, $00, $00, $00, $00
    db $00, $04, $04, $04, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $04, $04, $04, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $01, $00, $00, $00, $01, $00
    db $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    ld [bc], a                                    ; $4a20: $02
    inc bc                                        ; $4a21: $03
    inc bc                                        ; $4a22: $03
    inc bc                                        ; $4a23: $03
    inc b                                         ; $4a24: $04
    ldh a, [$f1]                                  ; $4a25: $f0 $f1
    ldh a, [$f1]                                  ; $4a27: $f0 $f1
    ldh a, [$f1]                                  ; $4a29: $f0 $f1
    ldh a, [$f1]                                  ; $4a2b: $f0 $f1
    ldh a, [$f1]                                  ; $4a2d: $f0 $f1
    ldh a, [$f1]                                  ; $4a2f: $f0 $f1
    ldh a, [$f1]                                  ; $4a31: $f0 $f1
    ldh a, [$f4]                                  ; $4a33: $f0 $f4
    db $f4                                        ; $4a35: $f4
    ld [bc], a                                    ; $4a36: $02
    inc bc                                        ; $4a37: $03
    inc bc                                        ; $4a38: $03
    inc bc                                        ; $4a39: $03
    inc bc                                        ; $4a3a: $03
    inc bc                                        ; $4a3b: $03
    inc bc                                        ; $4a3c: $03
    inc bc                                        ; $4a3d: $03
    inc bc                                        ; $4a3e: $03
    ld c, $05                                     ; $4a3f: $0e $05
    ldh [$e1], a                                  ; $4a41: $e0 $e1
    ld [c], a                                     ; $4a43: $e2
    ld b, $f2                                     ; $4a44: $06 $f2
    ld [bc], a                                    ; $4a46: $02
    inc bc                                        ; $4a47: $03
    inc bc                                        ; $4a48: $03
    inc bc                                        ; $4a49: $03
    inc bc                                        ; $4a4a: $03
    inc bc                                        ; $4a4b: $03
    inc b                                         ; $4a4c: $04
    ld a, [c]                                     ; $4a4d: $f2
    di                                            ; $4a4e: $f3
    ld a, [c]                                     ; $4a4f: $f2
    di                                            ; $4a50: $f3
    ld a, [c]                                     ; $4a51: $f2
    di                                            ; $4a52: $f3
    ld a, [c]                                     ; $4a53: $f2
    db $f4                                        ; $4a54: $f4
    db $f4                                        ; $4a55: $f4
    dec b                                         ; $4a56: $05
    jr nz, jr_006_4acd                            ; $4a57: $20 $74

    ld [hl], d                                    ; $4a59: $72
    ld a, l                                       ; $4a5a: $7d
    ld [hl], e                                    ; $4a5b: $73
    jr nz, @-$73                                  ; $4a5c: $20 $8b

    sub a                                         ; $4a5e: $97
    halt                                          ; $4a5f: $76
    dec b                                         ; $4a60: $05
    db $e3                                        ; $4a61: $e3
    db $e4                                        ; $4a62: $e4
    push hl                                       ; $4a63: $e5
    ld b, $f0                                     ; $4a64: $06 $f0
    dec b                                         ; $4a66: $05
    jr nz, @+$22                                  ; $4a67: $20 $20

jr_006_4a69:
    jr nz, @+$22                                  ; $4a69: $20 $20

    jr nz, jr_006_4a73                            ; $4a6b: $20 $06

    ldh a, [$f1]                                  ; $4a6d: $f0 $f1
    ldh a, [$f1]                                  ; $4a6f: $f0 $f1
    ldh a, [$f1]                                  ; $4a71: $f0 $f1

jr_006_4a73:
    ldh a, [rP1]                                  ; $4a73: $f0 $00
    nop                                           ; $4a75: $00
    dec b                                         ; $4a76: $05
    jr nz, jr_006_4a99                            ; $4a77: $20 $20

    jr nz, jr_006_4a9b                            ; $4a79: $20 $20

    jr nz, jr_006_4a9d                            ; $4a7b: $20 $20

    jr nz, jr_006_4a9f                            ; $4a7d: $20 $20

    jr nz, jr_006_4a86                            ; $4a7f: $20 $05

    and $e7                                       ; $4a81: $e6 $e7
    add sp, $06                                   ; $4a83: $e8 $06
    ld a, [c]                                     ; $4a85: $f2

jr_006_4a86:
    rlca                                          ; $4a86: $07
    ld [$0808], sp                                ; $4a87: $08 $08 $08
    ld [$0908], sp                                ; $4a8a: $08 $08 $09
    ld a, [c]                                     ; $4a8d: $f2
    di                                            ; $4a8e: $f3
    ld a, [c]                                     ; $4a8f: $f2
    di                                            ; $4a90: $f3
    ld a, [c]                                     ; $4a91: $f2
    di                                            ; $4a92: $f3
    ld a, [c]                                     ; $4a93: $f2
    nop                                           ; $4a94: $00
    nop                                           ; $4a95: $00
    dec b                                         ; $4a96: $05
    jr nz, @-$57                                  ; $4a97: $20 $a7

jr_006_4a99:
    jr nz, @-$27                                  ; $4a99: $20 $d7

jr_006_4a9b:
    jr nz, @-$2f                                  ; $4a9b: $20 $cf

jr_006_4a9d:
    jr nz, jr_006_4a69                            ; $4a9d: $20 $ca

jr_006_4a9f:
    jr nz, @+$09                                  ; $4a9f: $20 $07

    ld [$0808], sp                                ; $4aa1: $08 $08 $08
    add hl, bc                                    ; $4aa4: $09
    ldh a, [$f1]                                  ; $4aa5: $f0 $f1
    ldh a, [$f1]                                  ; $4aa7: $f0 $f1
    ldh a, [$f1]                                  ; $4aa9: $f0 $f1
    ldh a, [$f1]                                  ; $4aab: $f0 $f1

jr_006_4aad:
    ldh a, [$f1]                                  ; $4aad: $f0 $f1
    ldh a, [$f1]                                  ; $4aaf: $f0 $f1
    ldh a, [$f1]                                  ; $4ab1: $f0 $f1

jr_006_4ab3:
    ldh a, [rP1]                                  ; $4ab3: $f0 $00
    nop                                           ; $4ab5: $00
    dec b                                         ; $4ab6: $05
    jr nz, jr_006_4ad9                            ; $4ab7: $20 $20

    jr nz, jr_006_4adb                            ; $4ab9: $20 $20

    jr nz, jr_006_4add                            ; $4abb: $20 $20

    jr nz, jr_006_4adf                            ; $4abd: $20 $20

    jr nz, jr_006_4ac3                            ; $4abf: $20 $02

    inc bc                                        ; $4ac1: $03
    inc bc                                        ; $4ac2: $03

jr_006_4ac3:
    inc bc                                        ; $4ac3: $03
    inc bc                                        ; $4ac4: $03
    inc bc                                        ; $4ac5: $03
    inc bc                                        ; $4ac6: $03
    inc bc                                        ; $4ac7: $03
    inc bc                                        ; $4ac8: $03
    inc bc                                        ; $4ac9: $03
    inc bc                                        ; $4aca: $03
    inc bc                                        ; $4acb: $03
    inc bc                                        ; $4acc: $03

jr_006_4acd:
    inc bc                                        ; $4acd: $03
    inc bc                                        ; $4ace: $03
    inc bc                                        ; $4acf: $03
    inc bc                                        ; $4ad0: $03
    inc bc                                        ; $4ad1: $03
    inc bc                                        ; $4ad2: $03
    inc b                                         ; $4ad3: $04
    nop                                           ; $4ad4: $00
    nop                                           ; $4ad5: $00
    dec b                                         ; $4ad6: $05
    nop                                           ; $4ad7: $00
    xor b                                         ; $4ad8: $a8

jr_006_4ad9:
    jr nz, jr_006_4ab3                            ; $4ad9: $20 $d8

jr_006_4adb:
    jr nz, jr_006_4aad                            ; $4adb: $20 $d0

jr_006_4add:
    jr nz, @-$33                                  ; $4add: $20 $cb

jr_006_4adf:
    jr nz, jr_006_4ae6                            ; $4adf: $20 $05

    ld b, c                                       ; $4ae1: $41
    ld b, d                                       ; $4ae2: $42
    ld b, e                                       ; $4ae3: $43
    ld b, h                                       ; $4ae4: $44
    ld b, l                                       ; $4ae5: $45

jr_006_4ae6:
    jr nz, jr_006_4b2e                            ; $4ae6: $20 $46

    ld b, a                                       ; $4ae8: $47
    ld c, b                                       ; $4ae9: $48
    ld c, c                                       ; $4aea: $49

jr_006_4aeb:
    ld c, d                                       ; $4aeb: $4a
    jr nz, jr_006_4b39                            ; $4aec: $20 $4b

jr_006_4aee:
    ld c, h                                       ; $4aee: $4c
    ld c, l                                       ; $4aef: $4d
    ld c, [hl]                                    ; $4af0: $4e
    ld c, a                                       ; $4af1: $4f
    jr nz, jr_006_4afa                            ; $4af2: $20 $06

jr_006_4af4:
    nop                                           ; $4af4: $00
    nop                                           ; $4af5: $00
    dec b                                         ; $4af6: $05
    nop                                           ; $4af7: $00
    jr nz, @+$22                                  ; $4af8: $20 $20

jr_006_4afa:
    jr nz, @+$22                                  ; $4afa: $20 $20

    jr nz, @+$22                                  ; $4afc: $20 $20

    jr nz, @+$22                                  ; $4afe: $20 $20

    dec b                                         ; $4b00: $05
    jr nz, jr_006_4b23                            ; $4b01: $20 $20

jr_006_4b03:
    jr nz, jr_006_4b25                            ; $4b03: $20 $20

    jr nz, @+$22                                  ; $4b05: $20 $20

    jr nz, jr_006_4b29                            ; $4b07: $20 $20

    jr nz, jr_006_4b2b                            ; $4b09: $20 $20

    jr nz, @+$22                                  ; $4b0b: $20 $20

    jr nz, @+$22                                  ; $4b0d: $20 $20

    jr nz, jr_006_4b31                            ; $4b0f: $20 $20

    jr nz, @+$22                                  ; $4b11: $20 $20

    ld b, $00                                     ; $4b13: $06 $00
    nop                                           ; $4b15: $00
    dec b                                         ; $4b16: $05
    nop                                           ; $4b17: $00
    xor c                                         ; $4b18: $a9
    jr nz, jr_006_4af4                            ; $4b19: $20 $d9

    jr nz, jr_006_4aee                            ; $4b1b: $20 $d1

    jr nz, jr_006_4aeb                            ; $4b1d: $20 $cc

    jr nz, jr_006_4b26                            ; $4b1f: $20 $05

    ld d, b                                       ; $4b21: $50
    ld d, c                                       ; $4b22: $51

jr_006_4b23:
    ld d, d                                       ; $4b23: $52
    ld d, e                                       ; $4b24: $53

jr_006_4b25:
    ld d, h                                       ; $4b25: $54

jr_006_4b26:
    jr nz, jr_006_4b7d                            ; $4b26: $20 $55

    ld d, [hl]                                    ; $4b28: $56

jr_006_4b29:
    ld d, a                                       ; $4b29: $57
    ld e, b                                       ; $4b2a: $58

jr_006_4b2b:
    ld e, c                                       ; $4b2b: $59

jr_006_4b2c:
    jr nz, @+$5c                                  ; $4b2c: $20 $5a

jr_006_4b2e:
    jr nz, @+$30                                  ; $4b2e: $20 $2e

    inc l                                         ; $4b30: $2c

jr_006_4b31:
    daa                                           ; $4b31: $27
    jr nz, @+$08                                  ; $4b32: $20 $06

    nop                                           ; $4b34: $00

jr_006_4b35:
    nop                                           ; $4b35: $00
    dec b                                         ; $4b36: $05
    jr nz, jr_006_4b59                            ; $4b37: $20 $20

jr_006_4b39:
    jr nz, jr_006_4b5b                            ; $4b39: $20 $20

    jr nz, jr_006_4b5d                            ; $4b3b: $20 $20

    jr nz, jr_006_4b5f                            ; $4b3d: $20 $20

    jr nz, @+$07                                  ; $4b3f: $20 $05

    jr nz, jr_006_4b63                            ; $4b41: $20 $20

    jr nz, jr_006_4b65                            ; $4b43: $20 $20

    jr nz, @+$22                                  ; $4b45: $20 $20

    jr nz, jr_006_4b69                            ; $4b47: $20 $20

    jr nz, jr_006_4b6b                            ; $4b49: $20 $20

    jr nz, @+$22                                  ; $4b4b: $20 $20

    jr nz, jr_006_4b6f                            ; $4b4d: $20 $20

    jr nz, jr_006_4b71                            ; $4b4f: $20 $20

    jr nz, @+$22                                  ; $4b51: $20 $20

    ld b, $00                                     ; $4b53: $06 $00
    nop                                           ; $4b55: $00
    dec b                                         ; $4b56: $05
    jr nz, jr_006_4b03                            ; $4b57: $20 $aa

jr_006_4b59:
    jr nz, jr_006_4b35                            ; $4b59: $20 $da

jr_006_4b5b:
    jr nz, @-$2c                                  ; $4b5b: $20 $d2

jr_006_4b5d:
    jr nz, jr_006_4b2c                            ; $4b5d: $20 $cd

jr_006_4b5f:
    jr nz, jr_006_4b66                            ; $4b5f: $20 $05

    ld h, c                                       ; $4b61: $61
    ld h, d                                       ; $4b62: $62

jr_006_4b63:
    ld h, e                                       ; $4b63: $63
    ld h, h                                       ; $4b64: $64

jr_006_4b65:
    ld h, l                                       ; $4b65: $65

jr_006_4b66:
    jr nz, @+$68                                  ; $4b66: $20 $66

    ld h, a                                       ; $4b68: $67

jr_006_4b69:
    ld l, b                                       ; $4b69: $68
    ld l, c                                       ; $4b6a: $69

jr_006_4b6b:
    ld l, d                                       ; $4b6b: $6a
    jr nz, jr_006_4bd9                            ; $4b6c: $20 $6b

    ld l, h                                       ; $4b6e: $6c

jr_006_4b6f:
    ld l, l                                       ; $4b6f: $6d

jr_006_4b70:
    ld l, [hl]                                    ; $4b70: $6e

jr_006_4b71:
    ld l, a                                       ; $4b71: $6f
    jr nz, @+$08                                  ; $4b72: $20 $06

    nop                                           ; $4b74: $00
    nop                                           ; $4b75: $00

jr_006_4b76:
    dec b                                         ; $4b76: $05
    jr nz, jr_006_4b99                            ; $4b77: $20 $20

    jr nz, jr_006_4b9b                            ; $4b79: $20 $20

    jr nz, jr_006_4b9d                            ; $4b7b: $20 $20

jr_006_4b7d:
    jr nz, jr_006_4b9f                            ; $4b7d: $20 $20

    jr nz, @+$07                                  ; $4b7f: $20 $05

    jr nz, jr_006_4ba3                            ; $4b81: $20 $20

    jr nz, jr_006_4ba5                            ; $4b83: $20 $20

    jr nz, @+$22                                  ; $4b85: $20 $20

    jr nz, jr_006_4ba9                            ; $4b87: $20 $20

    jr nz, jr_006_4bab                            ; $4b89: $20 $20

    jr nz, @+$22                                  ; $4b8b: $20 $20

    jr nz, @+$22                                  ; $4b8d: $20 $20

    jr nz, @+$22                                  ; $4b8f: $20 $20

    jr nz, jr_006_4bb3                            ; $4b91: $20 $20

    ld b, $00                                     ; $4b93: $06 $00
    nop                                           ; $4b95: $00
    dec b                                         ; $4b96: $05
    jr nz, @-$53                                  ; $4b97: $20 $ab

jr_006_4b99:
    jr nz, jr_006_4b76                            ; $4b99: $20 $db

jr_006_4b9b:
    jr nz, jr_006_4b70                            ; $4b9b: $20 $d3

jr_006_4b9d:
    jr nz, @-$30                                  ; $4b9d: $20 $ce

jr_006_4b9f:
    jr nz, jr_006_4ba6                            ; $4b9f: $20 $05

    ld [hl], b                                    ; $4ba1: $70
    ld [hl], c                                    ; $4ba2: $71

jr_006_4ba3:
    ld [hl], d                                    ; $4ba3: $72
    ld [hl], e                                    ; $4ba4: $73

jr_006_4ba5:
    ld [hl], h                                    ; $4ba5: $74

jr_006_4ba6:
    jr nz, jr_006_4c1d                            ; $4ba6: $20 $75

    halt                                          ; $4ba8: $76

jr_006_4ba9:
    ld [hl], a                                    ; $4ba9: $77
    ld a, b                                       ; $4baa: $78

jr_006_4bab:
    ld a, c                                       ; $4bab: $79
    jr nz, @+$7c                                  ; $4bac: $20 $7a

    jr nz, @+$41                                  ; $4bae: $20 $3f

    ld hl, $202f                                  ; $4bb0: $21 $2f $20

jr_006_4bb3:
    ld b, $00                                     ; $4bb3: $06 $00
    nop                                           ; $4bb5: $00
    dec b                                         ; $4bb6: $05
    jr nz, jr_006_4bd9                            ; $4bb7: $20 $20

    jr nz, jr_006_4bdb                            ; $4bb9: $20 $20

    jr nz, @+$22                                  ; $4bbb: $20 $20

    jr nz, jr_006_4bdf                            ; $4bbd: $20 $20

    jr nz, @+$07                                  ; $4bbf: $20 $05

    jr nz, jr_006_4be3                            ; $4bc1: $20 $20

    jr nz, jr_006_4be5                            ; $4bc3: $20 $20

    jr nz, @+$22                                  ; $4bc5: $20 $20

    jr nz, @+$22                                  ; $4bc7: $20 $20

    jr nz, @+$22                                  ; $4bc9: $20 $20

    jr nz, @+$22                                  ; $4bcb: $20 $20

    jr nz, @+$22                                  ; $4bcd: $20 $20

    jr nz, jr_006_4bf1                            ; $4bcf: $20 $20

    jr nz, @+$22                                  ; $4bd1: $20 $20

    ld b, $00                                     ; $4bd3: $06 $00
    nop                                           ; $4bd5: $00
    dec b                                         ; $4bd6: $05
    adc a                                         ; $4bd7: $8f
    sbc b                                         ; $4bd8: $98

jr_006_4bd9:
    ld [hl], l                                    ; $4bd9: $75
    ld e, a                                       ; $4bda: $5f

jr_006_4bdb:
    ld e, a                                       ; $4bdb: $5f
    jr nz, @+$22                                  ; $4bdc: $20 $20

    db $dd                                        ; $4bde: $dd

jr_006_4bdf:
    jr nz, jr_006_4be6                            ; $4bdf: $20 $05

    jr nc, @+$33                                  ; $4be1: $30 $31

jr_006_4be3:
    ld [hl-], a                                   ; $4be3: $32
    inc sp                                        ; $4be4: $33

jr_006_4be5:
    inc [hl]                                      ; $4be5: $34

jr_006_4be6:
    jr nz, jr_006_4c1d                            ; $4be6: $20 $35

    ld [hl], $37                                  ; $4be8: $36 $37
    jr c, jr_006_4c25                             ; $4bea: $38 $39

    jr nz, jr_006_4c13                            ; $4bec: $20 $25

    ld h, $28                                     ; $4bee: $26 $28
    dec a                                         ; $4bf0: $3d

jr_006_4bf1:
    add hl, hl                                    ; $4bf1: $29
    jr nz, jr_006_4bfa                            ; $4bf2: $20 $06

    nop                                           ; $4bf4: $00
    nop                                           ; $4bf5: $00
    dec b                                         ; $4bf6: $05
    jr nz, jr_006_4bf9                            ; $4bf7: $20 $00

jr_006_4bf9:
    nop                                           ; $4bf9: $00

jr_006_4bfa:
    nop                                           ; $4bfa: $00
    jr nz, jr_006_4c1d                            ; $4bfb: $20 $20

    jr nz, jr_006_4c1f                            ; $4bfd: $20 $20

    jr nz, @+$07                                  ; $4bff: $20 $05

    jr nz, jr_006_4c23                            ; $4c01: $20 $20

    jr nz, jr_006_4c25                            ; $4c03: $20 $20

    jr nz, jr_006_4c27                            ; $4c05: $20 $20

    jr nz, jr_006_4c29                            ; $4c07: $20 $20

    jr nz, jr_006_4c2b                            ; $4c09: $20 $20

    jr nz, @+$22                                  ; $4c0b: $20 $20

    jr nz, @+$22                                  ; $4c0d: $20 $20

    jr nz, jr_006_4c31                            ; $4c0f: $20 $20

    jr nz, @+$22                                  ; $4c11: $20 $20

jr_006_4c13:
    ld b, $00                                     ; $4c13: $06 $00
    nop                                           ; $4c15: $00
    dec b                                         ; $4c16: $05
    jr nz, jr_006_4c19                            ; $4c17: $20 $00

jr_006_4c19:
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    jr nz, jr_006_4c3d                            ; $4c1b: $20 $20

jr_006_4c1d:
    jr nz, @-$4f                                  ; $4c1d: $20 $af

jr_006_4c1f:
    jr nz, @+$07                                  ; $4c1f: $20 $05

    jr nz, @+$22                                  ; $4c21: $20 $20

jr_006_4c23:
    jr nz, @+$22                                  ; $4c23: $20 $20

jr_006_4c25:
    jr nz, jr_006_4c47                            ; $4c25: $20 $20

jr_006_4c27:
    jr nz, @+$22                                  ; $4c27: $20 $20

jr_006_4c29:
    ld b, h                                       ; $4c29: $44
    ld b, l                                       ; $4c2a: $45

jr_006_4c2b:
    ld c, h                                       ; $4c2b: $4c
    jr nz, @+$22                                  ; $4c2c: $20 $20

    jr nz, jr_006_4c75                            ; $4c2e: $20 $45

    ld c, [hl]                                    ; $4c30: $4e

jr_006_4c31:
    ld b, h                                       ; $4c31: $44
    jr nz, jr_006_4c3a                            ; $4c32: $20 $06

    nop                                           ; $4c34: $00
    nop                                           ; $4c35: $00
    dec b                                         ; $4c36: $05
    jr nz, jr_006_4c39                            ; $4c37: $20 $00

jr_006_4c39:
    nop                                           ; $4c39: $00

jr_006_4c3a:
    nop                                           ; $4c3a: $00
    jr nz, jr_006_4c5d                            ; $4c3b: $20 $20

jr_006_4c3d:
    jr nz, @+$22                                  ; $4c3d: $20 $20

    jr nz, @+$09                                  ; $4c3f: $20 $07

    ld [$0808], sp                                ; $4c41: $08 $08 $08
    ld [$0808], sp                                ; $4c44: $08 $08 $08

jr_006_4c47:
    ld [$0808], sp                                ; $4c47: $08 $08 $08
    ld [$0808], sp                                ; $4c4a: $08 $08 $08
    ld [$0808], sp                                ; $4c4d: $08 $08 $08
    ld [$0808], sp                                ; $4c50: $08 $08 $08
    add hl, bc                                    ; $4c53: $09
    nop                                           ; $4c54: $00
    nop                                           ; $4c55: $00

Call_006_4c56:
    rlca                                          ; $4c56: $07
    ld [$0808], sp                                ; $4c57: $08 $08 $08
    ld [$0808], sp                                ; $4c5a: $08 $08 $08

jr_006_4c5d:
    ld [$0808], sp                                ; $4c5d: $08 $08 $08
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    nop                                           ; $4c62: $00
    nop                                           ; $4c63: $00
    nop                                           ; $4c64: $00
    ld bc, $0101                                  ; $4c65: $01 $01 $01
    ld bc, $0101                                  ; $4c68: $01 $01 $01
    ld bc, $0101                                  ; $4c6b: $01 $01 $01
    ld bc, $0101                                  ; $4c6e: $01 $01 $01
    ld bc, $0101                                  ; $4c71: $01 $01 $01
    nop                                           ; $4c74: $00

jr_006_4c75:
    nop                                           ; $4c75: $00
    nop                                           ; $4c76: $00
    nop                                           ; $4c77: $00
    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    nop                                           ; $4c7b: $00
    nop                                           ; $4c7c: $00
    nop                                           ; $4c7d: $00
    nop                                           ; $4c7e: $00
    nop                                           ; $4c7f: $00
    nop                                           ; $4c80: $00
    inc b                                         ; $4c81: $04
    inc b                                         ; $4c82: $04
    inc b                                         ; $4c83: $04
    nop                                           ; $4c84: $00
    ld bc, $0000                                  ; $4c85: $01 $00 $00
    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    nop                                           ; $4c8c: $00
    ld bc, $0101                                  ; $4c8d: $01 $01 $01
    ld bc, $0101                                  ; $4c90: $01 $01 $01
    ld bc, $0000                                  ; $4c93: $01 $00 $00
    nop                                           ; $4c96: $00
    nop                                           ; $4c97: $00
    nop                                           ; $4c98: $00
    nop                                           ; $4c99: $00
    nop                                           ; $4c9a: $00
    nop                                           ; $4c9b: $00
    nop                                           ; $4c9c: $00
    ld bc, $0001                                  ; $4c9d: $01 $01 $00
    nop                                           ; $4ca0: $00
    inc b                                         ; $4ca1: $04
    inc b                                         ; $4ca2: $04
    inc b                                         ; $4ca3: $04
    nop                                           ; $4ca4: $00
    ld bc, $0000                                  ; $4ca5: $01 $00 $00
    nop                                           ; $4ca8: $00
    nop                                           ; $4ca9: $00
    nop                                           ; $4caa: $00
    nop                                           ; $4cab: $00
    nop                                           ; $4cac: $00
    ld bc, $0101                                  ; $4cad: $01 $01 $01
    ld bc, $0101                                  ; $4cb0: $01 $01 $01
    ld bc, $0000                                  ; $4cb3: $01 $00 $00
    nop                                           ; $4cb6: $00
    nop                                           ; $4cb7: $00
    nop                                           ; $4cb8: $00
    nop                                           ; $4cb9: $00
    nop                                           ; $4cba: $00
    nop                                           ; $4cbb: $00
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    nop                                           ; $4cbf: $00
    nop                                           ; $4cc0: $00
    inc b                                         ; $4cc1: $04
    inc b                                         ; $4cc2: $04
    inc b                                         ; $4cc3: $04
    nop                                           ; $4cc4: $00
    ld bc, $0000                                  ; $4cc5: $01 $00 $00
    nop                                           ; $4cc8: $00
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    nop                                           ; $4ccc: $00
    ld bc, $0101                                  ; $4ccd: $01 $01 $01
    ld bc, $0101                                  ; $4cd0: $01 $01 $01
    ld bc, $0000                                  ; $4cd3: $01 $00 $00
    nop                                           ; $4cd6: $00
    nop                                           ; $4cd7: $00
    ld bc, $0100                                  ; $4cd8: $01 $00 $01
    nop                                           ; $4cdb: $00
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    ld bc, $0000                                  ; $4cde: $01 $00 $00
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    nop                                           ; $4ce3: $00
    nop                                           ; $4ce4: $00
    ld bc, $0101                                  ; $4ce5: $01 $01 $01
    ld bc, $0101                                  ; $4ce8: $01 $01 $01
    ld bc, $0101                                  ; $4ceb: $01 $01 $01
    ld bc, $0101                                  ; $4cee: $01 $01 $01
    ld bc, $0101                                  ; $4cf1: $01 $01 $01
    nop                                           ; $4cf4: $00
    nop                                           ; $4cf5: $00
    nop                                           ; $4cf6: $00

Call_006_4cf7:
    nop                                           ; $4cf7: $00
    nop                                           ; $4cf8: $00
    nop                                           ; $4cf9: $00
    nop                                           ; $4cfa: $00
    nop                                           ; $4cfb: $00
    nop                                           ; $4cfc: $00
    nop                                           ; $4cfd: $00
    nop                                           ; $4cfe: $00
    nop                                           ; $4cff: $00
    nop                                           ; $4d00: $00
    nop                                           ; $4d01: $00
    nop                                           ; $4d02: $00
    nop                                           ; $4d03: $00
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    nop                                           ; $4d07: $00
    nop                                           ; $4d08: $00
    nop                                           ; $4d09: $00
    nop                                           ; $4d0a: $00
    nop                                           ; $4d0b: $00
    nop                                           ; $4d0c: $00
    nop                                           ; $4d0d: $00
    nop                                           ; $4d0e: $00
    nop                                           ; $4d0f: $00
    nop                                           ; $4d10: $00
    nop                                           ; $4d11: $00
    nop                                           ; $4d12: $00
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    nop                                           ; $4d16: $00
    nop                                           ; $4d17: $00
    ld bc, $0100                                  ; $4d18: $01 $00 $01
    nop                                           ; $4d1b: $00
    ld bc, $0100                                  ; $4d1c: $01 $00 $01
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
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    nop                                           ; $4d37: $00
    nop                                           ; $4d38: $00
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    nop                                           ; $4d3b: $00
    nop                                           ; $4d3c: $00
    nop                                           ; $4d3d: $00
    nop                                           ; $4d3e: $00
    nop                                           ; $4d3f: $00
    nop                                           ; $4d40: $00
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    nop                                           ; $4d46: $00
    nop                                           ; $4d47: $00
    nop                                           ; $4d48: $00
    nop                                           ; $4d49: $00
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    nop                                           ; $4d4c: $00
    nop                                           ; $4d4d: $00
    nop                                           ; $4d4e: $00
    nop                                           ; $4d4f: $00
    nop                                           ; $4d50: $00
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    nop                                           ; $4d57: $00
    ld bc, $0100                                  ; $4d58: $01 $00 $01
    nop                                           ; $4d5b: $00
    ld bc, $0100                                  ; $4d5c: $01 $00 $01
    nop                                           ; $4d5f: $00
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    nop                                           ; $4d62: $00
    nop                                           ; $4d63: $00
    nop                                           ; $4d64: $00
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    nop                                           ; $4d67: $00
    nop                                           ; $4d68: $00
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    nop                                           ; $4d6b: $00
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    nop                                           ; $4d72: $00
    nop                                           ; $4d73: $00
    nop                                           ; $4d74: $00
    nop                                           ; $4d75: $00
    nop                                           ; $4d76: $00
    nop                                           ; $4d77: $00
    nop                                           ; $4d78: $00
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    nop                                           ; $4d7e: $00
    nop                                           ; $4d7f: $00
    nop                                           ; $4d80: $00
    nop                                           ; $4d81: $00
    nop                                           ; $4d82: $00
    nop                                           ; $4d83: $00
    nop                                           ; $4d84: $00
    nop                                           ; $4d85: $00
    nop                                           ; $4d86: $00
    nop                                           ; $4d87: $00
    nop                                           ; $4d88: $00
    nop                                           ; $4d89: $00
    nop                                           ; $4d8a: $00
    nop                                           ; $4d8b: $00
    nop                                           ; $4d8c: $00
    nop                                           ; $4d8d: $00
    nop                                           ; $4d8e: $00
    nop                                           ; $4d8f: $00
    nop                                           ; $4d90: $00
    nop                                           ; $4d91: $00
    nop                                           ; $4d92: $00
    nop                                           ; $4d93: $00
    nop                                           ; $4d94: $00
    nop                                           ; $4d95: $00
    nop                                           ; $4d96: $00
    nop                                           ; $4d97: $00
    ld bc, $0100                                  ; $4d98: $01 $00 $01
    nop                                           ; $4d9b: $00
    ld bc, $0000                                  ; $4d9c: $01 $00 $00
    nop                                           ; $4d9f: $00
    nop                                           ; $4da0: $00
    nop                                           ; $4da1: $00
    nop                                           ; $4da2: $00
    nop                                           ; $4da3: $00
    nop                                           ; $4da4: $00
    nop                                           ; $4da5: $00
    nop                                           ; $4da6: $00
    nop                                           ; $4da7: $00
    nop                                           ; $4da8: $00
    nop                                           ; $4da9: $00
    nop                                           ; $4daa: $00
    nop                                           ; $4dab: $00
    nop                                           ; $4dac: $00
    nop                                           ; $4dad: $00
    nop                                           ; $4dae: $00
    nop                                           ; $4daf: $00
    nop                                           ; $4db0: $00
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    nop                                           ; $4db3: $00
    nop                                           ; $4db4: $00
    nop                                           ; $4db5: $00
    nop                                           ; $4db6: $00
    nop                                           ; $4db7: $00
    nop                                           ; $4db8: $00
    nop                                           ; $4db9: $00
    nop                                           ; $4dba: $00
    nop                                           ; $4dbb: $00
    nop                                           ; $4dbc: $00
    nop                                           ; $4dbd: $00
    nop                                           ; $4dbe: $00
    nop                                           ; $4dbf: $00
    nop                                           ; $4dc0: $00
    nop                                           ; $4dc1: $00
    nop                                           ; $4dc2: $00
    nop                                           ; $4dc3: $00
    nop                                           ; $4dc4: $00
    nop                                           ; $4dc5: $00
    nop                                           ; $4dc6: $00
    nop                                           ; $4dc7: $00
    nop                                           ; $4dc8: $00
    nop                                           ; $4dc9: $00
    nop                                           ; $4dca: $00
    nop                                           ; $4dcb: $00
    nop                                           ; $4dcc: $00
    nop                                           ; $4dcd: $00
    nop                                           ; $4dce: $00
    nop                                           ; $4dcf: $00
    nop                                           ; $4dd0: $00
    nop                                           ; $4dd1: $00
    nop                                           ; $4dd2: $00
    nop                                           ; $4dd3: $00
    nop                                           ; $4dd4: $00
    nop                                           ; $4dd5: $00
    nop                                           ; $4dd6: $00
    nop                                           ; $4dd7: $00
    ld bc, $0100                                  ; $4dd8: $01 $00 $01
    nop                                           ; $4ddb: $00
    ld bc, $0000                                  ; $4ddc: $01 $00 $00
    nop                                           ; $4ddf: $00
    nop                                           ; $4de0: $00
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    nop                                           ; $4de3: $00
    nop                                           ; $4de4: $00
    nop                                           ; $4de5: $00
    nop                                           ; $4de6: $00
    nop                                           ; $4de7: $00
    nop                                           ; $4de8: $00
    nop                                           ; $4de9: $00
    nop                                           ; $4dea: $00
    nop                                           ; $4deb: $00
    nop                                           ; $4dec: $00
    nop                                           ; $4ded: $00
    nop                                           ; $4dee: $00
    nop                                           ; $4def: $00
    nop                                           ; $4df0: $00
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    nop                                           ; $4df3: $00
    nop                                           ; $4df4: $00
    nop                                           ; $4df5: $00
    nop                                           ; $4df6: $00
    nop                                           ; $4df7: $00
    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    nop                                           ; $4dfc: $00
    nop                                           ; $4dfd: $00
    nop                                           ; $4dfe: $00
    nop                                           ; $4dff: $00
    nop                                           ; $4e00: $00
    nop                                           ; $4e01: $00
    nop                                           ; $4e02: $00
    nop                                           ; $4e03: $00
    nop                                           ; $4e04: $00
    nop                                           ; $4e05: $00
    nop                                           ; $4e06: $00
    nop                                           ; $4e07: $00
    nop                                           ; $4e08: $00
    nop                                           ; $4e09: $00
    nop                                           ; $4e0a: $00
    nop                                           ; $4e0b: $00
    nop                                           ; $4e0c: $00
    nop                                           ; $4e0d: $00
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    nop                                           ; $4e10: $00
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    nop                                           ; $4e13: $00
    nop                                           ; $4e14: $00
    nop                                           ; $4e15: $00
    nop                                           ; $4e16: $00
    nop                                           ; $4e17: $00
    ld bc, $0000                                  ; $4e18: $01 $00 $00
    nop                                           ; $4e1b: $00
    nop                                           ; $4e1c: $00
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    nop                                           ; $4e1f: $00
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    nop                                           ; $4e22: $00
    nop                                           ; $4e23: $00
    nop                                           ; $4e24: $00
    nop                                           ; $4e25: $00
    nop                                           ; $4e26: $00
    nop                                           ; $4e27: $00
    nop                                           ; $4e28: $00
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    nop                                           ; $4e2b: $00
    nop                                           ; $4e2c: $00
    nop                                           ; $4e2d: $00
    nop                                           ; $4e2e: $00
    nop                                           ; $4e2f: $00
    nop                                           ; $4e30: $00
    nop                                           ; $4e31: $00
    nop                                           ; $4e32: $00
    nop                                           ; $4e33: $00
    nop                                           ; $4e34: $00
    nop                                           ; $4e35: $00
    nop                                           ; $4e36: $00
    nop                                           ; $4e37: $00
    nop                                           ; $4e38: $00
    nop                                           ; $4e39: $00
    nop                                           ; $4e3a: $00
    nop                                           ; $4e3b: $00
    nop                                           ; $4e3c: $00
    nop                                           ; $4e3d: $00
    nop                                           ; $4e3e: $00
    nop                                           ; $4e3f: $00
    nop                                           ; $4e40: $00
    nop                                           ; $4e41: $00
    nop                                           ; $4e42: $00
    nop                                           ; $4e43: $00
    nop                                           ; $4e44: $00
    nop                                           ; $4e45: $00
    nop                                           ; $4e46: $00
    nop                                           ; $4e47: $00
    nop                                           ; $4e48: $00
    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    nop                                           ; $4e4b: $00
    nop                                           ; $4e4c: $00
    nop                                           ; $4e4d: $00
    nop                                           ; $4e4e: $00
    nop                                           ; $4e4f: $00
    nop                                           ; $4e50: $00
    nop                                           ; $4e51: $00
    nop                                           ; $4e52: $00
    nop                                           ; $4e53: $00
    nop                                           ; $4e54: $00
    nop                                           ; $4e55: $00
    nop                                           ; $4e56: $00
    nop                                           ; $4e57: $00
    nop                                           ; $4e58: $00
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    nop                                           ; $4e5b: $00
    nop                                           ; $4e5c: $00
    nop                                           ; $4e5d: $00
    nop                                           ; $4e5e: $00
    nop                                           ; $4e5f: $00
    nop                                           ; $4e60: $00
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    nop                                           ; $4e63: $00
    nop                                           ; $4e64: $00
    nop                                           ; $4e65: $00
    nop                                           ; $4e66: $00
    nop                                           ; $4e67: $00
    nop                                           ; $4e68: $00
    nop                                           ; $4e69: $00
    nop                                           ; $4e6a: $00
    nop                                           ; $4e6b: $00
    nop                                           ; $4e6c: $00
    nop                                           ; $4e6d: $00
    nop                                           ; $4e6e: $00
    nop                                           ; $4e6f: $00
    nop                                           ; $4e70: $00
    nop                                           ; $4e71: $00
    nop                                           ; $4e72: $00
    nop                                           ; $4e73: $00
    nop                                           ; $4e74: $00
    nop                                           ; $4e75: $00
    nop                                           ; $4e76: $00
    nop                                           ; $4e77: $00
    nop                                           ; $4e78: $00
    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    nop                                           ; $4e7b: $00
    nop                                           ; $4e7c: $00
    nop                                           ; $4e7d: $00
    nop                                           ; $4e7e: $00
    nop                                           ; $4e7f: $00
    nop                                           ; $4e80: $00
    nop                                           ; $4e81: $00
    nop                                           ; $4e82: $00
    nop                                           ; $4e83: $00
    nop                                           ; $4e84: $00
    nop                                           ; $4e85: $00
    nop                                           ; $4e86: $00
    nop                                           ; $4e87: $00
    nop                                           ; $4e88: $00
    nop                                           ; $4e89: $00
    nop                                           ; $4e8a: $00
    nop                                           ; $4e8b: $00
    nop                                           ; $4e8c: $00
    nop                                           ; $4e8d: $00
    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    nop                                           ; $4e90: $00
    nop                                           ; $4e91: $00
    nop                                           ; $4e92: $00
    nop                                           ; $4e93: $00
    nop                                           ; $4e94: $00
    nop                                           ; $4e95: $00
    nop                                           ; $4e96: $00
    nop                                           ; $4e97: $00
    nop                                           ; $4e98: $00
    nop                                           ; $4e99: $00
    nop                                           ; $4e9a: $00
    nop                                           ; $4e9b: $00
    nop                                           ; $4e9c: $00
    nop                                           ; $4e9d: $00
    nop                                           ; $4e9e: $00
    nop                                           ; $4e9f: $00

    db $e0, $47, $a0, $45

    ld h, b                                       ; $4ea4: $60
    ld c, h                                       ; $4ea5: $4c
    jr nz, @+$4c                                  ; $4ea6: $20 $4a

    ret                                           ; $4ea8: $c9


Call_006_4ea9:
    ld a, [$c4b3]                                 ; $4ea9: $fa $b3 $c4
    add a                                         ; $4eac: $87
    add a                                         ; $4ead: $87
    ld hl, $4ea0                                  ; $4eae: $21 $a0 $4e
    add l                                         ; $4eb1: $85
    ld l, a                                       ; $4eb2: $6f
    jr nc, jr_006_4eb6                            ; $4eb3: $30 $01

    inc h                                         ; $4eb5: $24

jr_006_4eb6:
    push hl                                       ; $4eb6: $e5
    ld a, [hl+]                                   ; $4eb7: $2a
    ld h, [hl]                                    ; $4eb8: $66
    ld l, a                                       ; $4eb9: $6f
    ld de, $d400                                  ; $4eba: $11 $00 $d4
    ld bc, $0024                                  ; $4ebd: $01 $24 $00
    call Call_000_03eb                            ; $4ec0: $cd $eb $03
    pop hl                                        ; $4ec3: $e1
    inc hl                                        ; $4ec4: $23
    inc hl                                        ; $4ec5: $23
    ld a, [hl+]                                   ; $4ec6: $2a
    ld h, [hl]                                    ; $4ec7: $66
    ld l, a                                       ; $4ec8: $6f
    ld de, $d000                                  ; $4ec9: $11 $00 $d0
    ld bc, $0024                                  ; $4ecc: $01 $24 $00
    call Call_000_03eb                            ; $4ecf: $cd $eb $03
    ret                                           ; $4ed2: $c9


Call_006_4ed3:
    ld hl, $d000                                  ; $4ed3: $21 $00 $d0
    ld de, $9800                                  ; $4ed6: $11 $00 $98
    ld bc, $0024                                  ; $4ed9: $01 $24 $00
    call Call_000_0468                            ; $4edc: $cd $68 $04
    ret                                           ; $4edf: $c9


Call_006_4ee0:
    ld hl, $d400                                  ; $4ee0: $21 $00 $d4
    ld de, $b800                                  ; $4ee3: $11 $00 $b8
    ld bc, $0024                                  ; $4ee6: $01 $24 $00
    call Call_000_0468                            ; $4ee9: $cd $68 $04
    ret                                           ; $4eec: $c9


Call_006_4eed:
    push af                                       ; $4eed: $f5
    ld a, $10                                     ; $4eee: $3e $10
    ld [$c3f6], a                                 ; $4ef0: $ea $f6 $c3
    ld a, $05                                     ; $4ef3: $3e $05
    ld [$c3f7], a                                 ; $4ef5: $ea $f7 $c3
    pop af                                        ; $4ef8: $f1
    ret                                           ; $4ef9: $c9


Call_006_4efa:
    push bc                                       ; $4efa: $c5
    push hl                                       ; $4efb: $e5
    ld hl, $c800                                  ; $4efc: $21 $00 $c8
    ld c, $00                                     ; $4eff: $0e $00

jr_006_4f01:
    ld a, [hl+]                                   ; $4f01: $2a
    cp $00                                        ; $4f02: $fe $00
    jr z, jr_006_4f09                             ; $4f04: $28 $03

    inc c                                         ; $4f06: $0c
    jr jr_006_4f01                                ; $4f07: $18 $f8

jr_006_4f09:
    ld a, c                                       ; $4f09: $79
    pop hl                                        ; $4f0a: $e1
    pop bc                                        ; $4f0b: $c1
    ret                                           ; $4f0c: $c9


Call_006_4f0d:
    push af                                       ; $4f0d: $f5
    push bc                                       ; $4f0e: $c5
    push de                                       ; $4f0f: $d5
    push hl                                       ; $4f10: $e5
    ld hl, $d027                                  ; $4f11: $21 $27 $d0
    ld a, $03                                     ; $4f14: $3e $03
    ld [hl+], a                                   ; $4f16: $22
    ld [hl+], a                                   ; $4f17: $22
    ld [hl+], a                                   ; $4f18: $22
    ld [hl+], a                                   ; $4f19: $22
    ld [hl+], a                                   ; $4f1a: $22
    ld [hl+], a                                   ; $4f1b: $22
    ld [hl+], a                                   ; $4f1c: $22
    ld hl, $d047                                  ; $4f1d: $21 $47 $d0
    ld a, $20                                     ; $4f20: $3e $20
    ld [hl+], a                                   ; $4f22: $22
    ld [hl+], a                                   ; $4f23: $22
    ld [hl+], a                                   ; $4f24: $22
    ld [hl+], a                                   ; $4f25: $22
    ld [hl+], a                                   ; $4f26: $22
    ld [hl+], a                                   ; $4f27: $22
    ld [hl+], a                                   ; $4f28: $22
    ld hl, $d047                                  ; $4f29: $21 $47 $d0
    ld de, $c800                                  ; $4f2c: $11 $00 $c8

jr_006_4f2f:
    ld a, [de]                                    ; $4f2f: $1a
    inc de                                        ; $4f30: $13
    cp $00                                        ; $4f31: $fe $00
    jr z, jr_006_4f45                             ; $4f33: $28 $10

    ld [hl+], a                                   ; $4f35: $22
    jr jr_006_4f2f                                ; $4f36: $18 $f7

    ld bc, $ffdf                                  ; $4f38: $01 $df $ff
    add hl, bc                                    ; $4f3b: $09
    sub $d0                                       ; $4f3c: $d6 $d0
    ld [hl+], a                                   ; $4f3e: $22
    ld bc, $0020                                  ; $4f3f: $01 $20 $00
    add hl, bc                                    ; $4f42: $09
    jr jr_006_4f2f                                ; $4f43: $18 $ea

jr_006_4f45:
    pop hl                                        ; $4f45: $e1
    pop de                                        ; $4f46: $d1
    pop bc                                        ; $4f47: $c1
    pop af                                        ; $4f48: $f1
    ret                                           ; $4f49: $c9


Call_006_4f4a:
    push af                                       ; $4f4a: $f5
    push bc                                       ; $4f4b: $c5
    push de                                       ; $4f4c: $d5
    push hl                                       ; $4f4d: $e5
    call Call_006_4efa                            ; $4f4e: $cd $fa $4e
    and a                                         ; $4f51: $a7
    jr z, jr_006_4f67                             ; $4f52: $28 $13

    ld hl, $c800                                  ; $4f54: $21 $00 $c8

jr_006_4f57:
    ld a, [hl+]                                   ; $4f57: $2a
    cp $00                                        ; $4f58: $fe $00
    jr nz, jr_006_4f57                            ; $4f5a: $20 $fb

    dec hl                                        ; $4f5c: $2b
    dec hl                                        ; $4f5d: $2b
    ld a, [hl]                                    ; $4f5e: $7e
    ld [hl], $00                                  ; $4f5f: $36 $00
    call Call_006_4f0d                            ; $4f61: $cd $0d $4f
    call Call_006_4ed3                            ; $4f64: $cd $d3 $4e

jr_006_4f67:
    pop hl                                        ; $4f67: $e1
    pop de                                        ; $4f68: $d1
    pop bc                                        ; $4f69: $c1
    pop af                                        ; $4f6a: $f1
    ret                                           ; $4f6b: $c9


Call_006_4f6c:
    call Call_006_4ea9                            ; $4f6c: $cd $a9 $4e
    call Call_006_4f0d                            ; $4f6f: $cd $0d $4f
    ld hl, $d021                                  ; $4f72: $21 $21 $d0
    ld de, $d421                                  ; $4f75: $11 $21 $d4
    ld bc, $06e0                                  ; $4f78: $01 $e0 $06
    ld a, $20                                     ; $4f7b: $3e $20
    rst $18                                       ; $4f7d: $df

    db $08, $06

    call Call_006_4ed3                            ; $4f80: $cd $d3 $4e
    call Call_006_4ee0                            ; $4f83: $cd $e0 $4e
    ret                                           ; $4f86: $c9


Call_006_4f87:
    push af                                       ; $4f87: $f5
    push bc                                       ; $4f88: $c5
    push de                                       ; $4f89: $d5
    push hl                                       ; $4f8a: $e5
    ld a, [$c3f6]                                 ; $4f8b: $fa $f6 $c3
    ld d, a                                       ; $4f8e: $57
    ld a, [$c3f7]                                 ; $4f8f: $fa $f7 $c3
    ld e, a                                       ; $4f92: $5f
    ld a, e                                       ; $4f93: $7b
    cp $05                                        ; $4f94: $fe $05
    jr nz, jr_006_4fbc                            ; $4f96: $20 $24

    ld a, d                                       ; $4f98: $7a
    cp $0a                                        ; $4f99: $fe $0a
    jr z, jr_006_4fb0                             ; $4f9b: $28 $13

    ld a, d                                       ; $4f9d: $7a
    cp $10                                        ; $4f9e: $fe $10
    jr z, jr_006_4fb5                             ; $4fa0: $28 $13

    jr jr_006_4fbc                                ; $4fa2: $18 $18

    ld hl, $c4b3                                  ; $4fa4: $21 $b3 $c4
    ld a, [hl]                                    ; $4fa7: $7e
    xor $01                                       ; $4fa8: $ee $01
    ld [hl], a                                    ; $4faa: $77
    call Call_006_4f6c                            ; $4fab: $cd $6c $4f
    jr jr_006_4ffc                                ; $4fae: $18 $4c

jr_006_4fb0:
    call Call_006_4f4a                            ; $4fb0: $cd $4a $4f
    jr jr_006_4ffc                                ; $4fb3: $18 $47

jr_006_4fb5:
    ld hl, $c4b3                                  ; $4fb5: $21 $b3 $c4
    set 7, [hl]                                   ; $4fb8: $cb $fe
    jr jr_006_4ffc                                ; $4fba: $18 $40

jr_006_4fbc:
    ld h, $00                                     ; $4fbc: $26 $00
    ld l, e                                       ; $4fbe: $6b
    add hl, hl                                    ; $4fbf: $29
    add hl, hl                                    ; $4fc0: $29
    add hl, hl                                    ; $4fc1: $29
    add hl, hl                                    ; $4fc2: $29
    add hl, hl                                    ; $4fc3: $29
    add hl, hl                                    ; $4fc4: $29
    ld bc, $00c0                                  ; $4fc5: $01 $c0 $00
    add hl, bc                                    ; $4fc8: $09
    ld a, d                                       ; $4fc9: $7a
    add $01                                       ; $4fca: $c6 $01
    ld e, a                                       ; $4fcc: $5f
    ld d, $00                                     ; $4fcd: $16 $00
    add hl, de                                    ; $4fcf: $19
    ld de, $d000                                  ; $4fd0: $11 $00 $d0
    add hl, de                                    ; $4fd3: $19
    ld a, [hl]                                    ; $4fd4: $7e
    ld d, a                                       ; $4fd5: $57
    jr jr_006_4fdb                                ; $4fd6: $18 $03

    add $40                                       ; $4fd8: $c6 $40
    ld d, a                                       ; $4fda: $57

jr_006_4fdb:
    ld hl, $c800                                  ; $4fdb: $21 $00 $c8

jr_006_4fde:
    ld a, [hl+]                                   ; $4fde: $2a
    cp $00                                        ; $4fdf: $fe $00
    jr nz, jr_006_4fde                            ; $4fe1: $20 $fb

    dec hl                                        ; $4fe3: $2b
    call Call_006_5001                            ; $4fe4: $cd $01 $50
    and a                                         ; $4fe7: $a7
    jr nz, jr_006_4ffc                            ; $4fe8: $20 $12

    ld a, d                                       ; $4fea: $7a
    ld [hl+], a                                   ; $4feb: $22
    ld [hl], $00                                  ; $4fec: $36 $00
    call Call_006_4f0d                            ; $4fee: $cd $0d $4f
    call Call_006_4ed3                            ; $4ff1: $cd $d3 $4e
    call Call_006_4efa                            ; $4ff4: $cd $fa $4e
    cp $07                                        ; $4ff7: $fe $07
    call z, Call_006_4eed                         ; $4ff9: $cc $ed $4e

jr_006_4ffc:
    pop hl                                        ; $4ffc: $e1
    pop de                                        ; $4ffd: $d1
    pop bc                                        ; $4ffe: $c1
    pop af                                        ; $4fff: $f1
    ret                                           ; $5000: $c9


Call_006_5001:
    call Call_006_4efa                            ; $5001: $cd $fa $4e
    cp $05                                        ; $5004: $fe $05
    cp $07                                        ; $5006: $fe $07
    jr c, jr_006_500e                             ; $5008: $38 $04

    ld a, d                                       ; $500a: $7a
    ld a, $ff                                     ; $500b: $3e $ff
    ret                                           ; $500d: $c9


jr_006_500e:
    xor a                                         ; $500e: $af
    ret                                           ; $500f: $c9


    ld [hl], e                                    ; $5010: $73
    or e                                          ; $5011: $b3
    halt                                          ; $5012: $76
    ld [hl], a                                    ; $5013: $77
    ld a, b                                       ; $5014: $78
    ld a, c                                       ; $5015: $79
    ld a, d                                       ; $5016: $7a
    ld a, e                                       ; $5017: $7b
    ld a, h                                       ; $5018: $7c
    ld a, l                                       ; $5019: $7d
    ld a, [hl]                                    ; $501a: $7e
    ld a, a                                       ; $501b: $7f
    add b                                         ; $501c: $80
    add c                                         ; $501d: $81
    add d                                         ; $501e: $82
    add e                                         ; $501f: $83
    add h                                         ; $5020: $84
    or [hl]                                       ; $5021: $b6
    or a                                          ; $5022: $b7
    cp b                                          ; $5023: $b8
    cp c                                          ; $5024: $b9
    cp d                                          ; $5025: $ba
    cp e                                          ; $5026: $bb
    cp h                                          ; $5027: $bc
    cp l                                          ; $5028: $bd
    cp [hl]                                       ; $5029: $be
    cp a                                          ; $502a: $bf
    ret nz                                        ; $502b: $c0

    pop bc                                        ; $502c: $c1
    jp nz, $c4c3                                  ; $502d: $c2 $c3 $c4

    adc d                                         ; $5030: $8a
    adc e                                         ; $5031: $8b
    adc h                                         ; $5032: $8c
    adc l                                         ; $5033: $8d
    adc [hl]                                      ; $5034: $8e
    jp z, $cccb                                   ; $5035: $ca $cb $cc

    call $ffce                                    ; $5038: $cd $ce $ff
    push hl                                       ; $503b: $e5
    ld a, d                                       ; $503c: $7a
    dec hl                                        ; $503d: $2b
    ld e, [hl]                                    ; $503e: $5e
    ld hl, $5010                                  ; $503f: $21 $10 $50
    cp $de                                        ; $5042: $fe $de
    jr z, jr_006_5050                             ; $5044: $28 $0a

    ld hl, $5030                                  ; $5046: $21 $30 $50
    cp $df                                        ; $5049: $fe $df
    jr z, jr_006_5050                             ; $504b: $28 $03

    xor a                                         ; $504d: $af
    pop hl                                        ; $504e: $e1
    ret                                           ; $504f: $c9


jr_006_5050:
    ld a, [hl+]                                   ; $5050: $2a
    cp $ff                                        ; $5051: $fe $ff
    jr z, jr_006_5059                             ; $5053: $28 $04

    cp e                                          ; $5055: $bb
    jr nz, jr_006_5050                            ; $5056: $20 $f8

    xor a                                         ; $5058: $af

jr_006_5059:
    pop hl                                        ; $5059: $e1
    ret                                           ; $505a: $c9


    db $00, $00

    nop                                           ; $505d: $00
    nop                                           ; $505e: $00
    nop                                           ; $505f: $00
    ld bc, $0000                                  ; $5060: $01 $00 $00
    nop                                           ; $5063: $00
    nop                                           ; $5064: $00
    nop                                           ; $5065: $00
    ld bc, $0000                                  ; $5066: $01 $00 $00
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    nop                                           ; $506b: $00

    db $00

    nop                                           ; $506d: $00
    nop                                           ; $506e: $00
    nop                                           ; $506f: $00
    nop                                           ; $5070: $00
    ld bc, $0000                                  ; $5071: $01 $00 $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    ld bc, $0000                                  ; $5077: $01 $00 $00
    nop                                           ; $507a: $00
    nop                                           ; $507b: $00
    nop                                           ; $507c: $00

    db $00

    nop                                           ; $507e: $00
    nop                                           ; $507f: $00
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    ld bc, $0000                                  ; $5082: $01 $00 $00
    nop                                           ; $5085: $00
    nop                                           ; $5086: $00
    nop                                           ; $5087: $00
    ld bc, $0000                                  ; $5088: $01 $00 $00
    nop                                           ; $508b: $00
    nop                                           ; $508c: $00
    nop                                           ; $508d: $00

    db $00

    nop                                           ; $508f: $00
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    ld bc, $0000                                  ; $5093: $01 $00 $00
    nop                                           ; $5096: $00
    nop                                           ; $5097: $00
    nop                                           ; $5098: $00
    ld bc, $0000                                  ; $5099: $01 $00 $00
    nop                                           ; $509c: $00
    nop                                           ; $509d: $00
    nop                                           ; $509e: $00

    db $00, $00, $00, $00, $00, $01, $00

    nop                                           ; $50a6: $00
    nop                                           ; $50a7: $00
    nop                                           ; $50a8: $00
    nop                                           ; $50a9: $00
    ld bc, $0000                                  ; $50aa: $01 $00 $00
    nop                                           ; $50ad: $00
    nop                                           ; $50ae: $00
    nop                                           ; $50af: $00

    db $01, $01

    ld bc, $0101                                  ; $50b2: $01 $01 $01
    db $01                                        ; $50b5: $01

    db $02, $02, $02, $02, $00, $02, $02, $02, $02, $02, $00

Call_006_50c1:
    push af                                       ; $50c1: $f5
    push bc                                       ; $50c2: $c5
    push de                                       ; $50c3: $d5
    push hl                                       ; $50c4: $e5
    ld a, [$c3f6]                                 ; $50c5: $fa $f6 $c3
    ld d, a                                       ; $50c8: $57
    ld a, [$c3f7]                                 ; $50c9: $fa $f7 $c3
    ld e, a                                       ; $50cc: $5f
    ldh a, [$91]                                  ; $50cd: $f0 $91
    ld b, a                                       ; $50cf: $47
    and $f0                                       ; $50d0: $e6 $f0
    jr z, jr_006_5136                             ; $50d2: $28 $62

    rst $08                                       ; $50d4: $cf

    db $5b

jr_006_50d6:
    bit 5, b                                      ; $50d6: $cb $68
    jr z, jr_006_50dd                             ; $50d8: $28 $03

    dec d                                         ; $50da: $15
    jr jr_006_50f2                                ; $50db: $18 $15

jr_006_50dd:
    bit 4, b                                      ; $50dd: $cb $60
    jr z, jr_006_50e4                             ; $50df: $28 $03

    inc d                                         ; $50e1: $14
    jr jr_006_50f2                                ; $50e2: $18 $0e

jr_006_50e4:
    bit 6, b                                      ; $50e4: $cb $70
    jr z, jr_006_50eb                             ; $50e6: $28 $03

    dec e                                         ; $50e8: $1d
    jr jr_006_50f2                                ; $50e9: $18 $07

jr_006_50eb:
    bit 7, b                                      ; $50eb: $cb $78
    jr z, jr_006_50f2                             ; $50ed: $28 $03

    inc e                                         ; $50ef: $1c
    jr jr_006_50f2                                ; $50f0: $18 $00

jr_006_50f2:
    ld a, d                                       ; $50f2: $7a
    bit 7, a                                      ; $50f3: $cb $7f
    jr z, jr_006_50fc                             ; $50f5: $28 $05

    ld a, $11                                     ; $50f7: $3e $11
    dec a                                         ; $50f9: $3d
    jr jr_006_5101                                ; $50fa: $18 $05

jr_006_50fc:
    cp $11                                        ; $50fc: $fe $11
    jr c, jr_006_5101                             ; $50fe: $38 $01

    xor a                                         ; $5100: $af

jr_006_5101:
    ld d, a                                       ; $5101: $57
    ld a, e                                       ; $5102: $7b
    bit 7, a                                      ; $5103: $cb $7f
    jr z, jr_006_510c                             ; $5105: $28 $05

    ld a, $06                                     ; $5107: $3e $06
    dec a                                         ; $5109: $3d
    jr jr_006_5111                                ; $510a: $18 $05

jr_006_510c:
    cp $06                                        ; $510c: $fe $06
    jr c, jr_006_5111                             ; $510e: $38 $01

    xor a                                         ; $5110: $af

jr_006_5111:
    ld e, a                                       ; $5111: $5f
    ld a, e                                       ; $5112: $7b
    add a                                         ; $5113: $87
    add a                                         ; $5114: $87
    add a                                         ; $5115: $87
    add a                                         ; $5116: $87
    add e                                         ; $5117: $83
    add d                                         ; $5118: $82
    ld hl, $505b                                  ; $5119: $21 $5b $50
    add l                                         ; $511c: $85
    ld l, a                                       ; $511d: $6f
    jr nc, jr_006_5121                            ; $511e: $30 $01

    inc h                                         ; $5120: $24

jr_006_5121:
    ld a, [hl]                                    ; $5121: $7e
    cp $00                                        ; $5122: $fe $00
    jr z, jr_006_5136                             ; $5124: $28 $10

    cp $01                                        ; $5126: $fe $01
    jr z, jr_006_50d6                             ; $5128: $28 $ac

    bit 4, b                                      ; $512a: $cb $60
    jr nz, jr_006_50d6                            ; $512c: $20 $a8

    bit 5, b                                      ; $512e: $cb $68
    jr nz, jr_006_50d6                            ; $5130: $20 $a4

    ld b, $10                                     ; $5132: $06 $10
    jr jr_006_50d6                                ; $5134: $18 $a0

jr_006_5136:
    ld a, d                                       ; $5136: $7a
    ld [$c3f6], a                                 ; $5137: $ea $f6 $c3
    ld a, e                                       ; $513a: $7b
    ld [$c3f7], a                                 ; $513b: $ea $f7 $c3
    pop hl                                        ; $513e: $e1
    pop de                                        ; $513f: $d1
    pop bc                                        ; $5140: $c1
    pop af                                        ; $5141: $f1
    ret                                           ; $5142: $c9


Call_006_5143:
    ld a, [$c3f6]                                 ; $5143: $fa $f6 $c3
    add a                                         ; $5146: $87
    add a                                         ; $5147: $87
    add a                                         ; $5148: $87
    add $14                                       ; $5149: $c6 $14
    ld d, a                                       ; $514b: $57
    ld a, [$c3f7]                                 ; $514c: $fa $f7 $c3
    add a                                         ; $514f: $87
    add a                                         ; $5150: $87
    add a                                         ; $5151: $87
    add a                                         ; $5152: $87
    add $44                                       ; $5153: $c6 $44
    ld e, a                                       ; $5155: $5f
    ld a, [$c3f7]                                 ; $5156: $fa $f7 $c3
    cp $05                                        ; $5159: $fe $05
    jr nz, jr_006_516a                            ; $515b: $20 $0d

    ld a, [$c3f6]                                 ; $515d: $fa $f6 $c3
    add a                                         ; $5160: $87
    add a                                         ; $5161: $87
    add a                                         ; $5162: $87
    add $14                                       ; $5163: $c6 $14
    ld d, a                                       ; $5165: $57
    ld a, e                                       ; $5166: $7b
    sub $02                                       ; $5167: $d6 $02
    ld e, a                                       ; $5169: $5f

jr_006_516a:
    ld bc, $0360                                  ; $516a: $01 $60 $03
    call Call_000_26a4                            ; $516d: $cd $a4 $26
    ret                                           ; $5170: $c9


Call_006_5171:
    call Call_006_4efa                            ; $5171: $cd $fa $4e
    ld h, a                                       ; $5174: $67
    ld a, [$c4b2]                                 ; $5175: $fa $b2 $c4
    and $10                                       ; $5178: $e6 $10
    jr nz, jr_006_517d                            ; $517a: $20 $01

    inc h                                         ; $517c: $24

jr_006_517d:
    ld de, $6c14                                  ; $517d: $11 $14 $6c

jr_006_5180:
    ld a, h                                       ; $5180: $7c
    cp $07                                        ; $5181: $fe $07
    jr nc, jr_006_5196                            ; $5183: $30 $11

    ld bc, $0320                                  ; $5185: $01 $20 $03
    push de                                       ; $5188: $d5
    push hl                                       ; $5189: $e5
    call Call_000_2798                            ; $518a: $cd $98 $27
    pop hl                                        ; $518d: $e1
    pop de                                        ; $518e: $d1
    ld a, d                                       ; $518f: $7a
    add $f8                                       ; $5190: $c6 $f8
    ld d, a                                       ; $5192: $57
    inc h                                         ; $5193: $24
    jr jr_006_5180                                ; $5194: $18 $ea

jr_006_5196:
    ret                                           ; $5196: $c9


Call_006_5197:
    ld a, [$c4b2]                                 ; $5197: $fa $b2 $c4
    rrca                                          ; $519a: $0f
    rrca                                          ; $519b: $0f
    and $0f                                       ; $519c: $e6 $0f
    ld h, $00                                     ; $519e: $26 $00
    ld l, a                                       ; $51a0: $6f
    cp $08                                        ; $51a1: $fe $08
    jr c, jr_006_51a8                             ; $51a3: $38 $03

    add $08                                       ; $51a5: $c6 $08
    ld l, a                                       ; $51a7: $6f

jr_006_51a8:
    add hl, hl                                    ; $51a8: $29
    add hl, hl                                    ; $51a9: $29
    add hl, hl                                    ; $51aa: $29
    add hl, hl                                    ; $51ab: $29
    add hl, hl                                    ; $51ac: $29
    ld a, $a0                                     ; $51ad: $3e $a0
    add l                                         ; $51af: $85
    ld l, a                                       ; $51b0: $6f
    ld a, h                                       ; $51b1: $7c
    adc $41                                       ; $51b2: $ce $41
    ld h, a                                       ; $51b4: $67
    push hl                                       ; $51b5: $e5
    ld de, $8f00                                  ; $51b6: $11 $00 $8f
    ld c, $02                                     ; $51b9: $0e $02
    call Call_000_0468                            ; $51bb: $cd $68 $04
    pop hl                                        ; $51be: $e1
    ld de, $0100                                  ; $51bf: $11 $00 $01
    add hl, de                                    ; $51c2: $19
    ld de, $8f20                                  ; $51c3: $11 $20 $8f
    ld c, $02                                     ; $51c6: $0e $02
    call Call_000_0468                            ; $51c8: $cd $68 $04
    ret                                           ; $51cb: $c9


    ld a, $01                                     ; $51cc: $3e $01
    ldh [$96], a                                  ; $51ce: $e0 $96
    ldh [rSVBK], a                                ; $51d0: $e0 $70
    call Call_006_5143                            ; $51d2: $cd $43 $51
    call Call_006_5171                            ; $51d5: $cd $71 $51
    call Call_006_5197                            ; $51d8: $cd $97 $51
    ret                                           ; $51db: $c9


    ld a, $01                                     ; $51dc: $3e $01
    ldh [$96], a                                  ; $51de: $e0 $96
    ldh [rSVBK], a                                ; $51e0: $e0 $70
    xor a                                         ; $51e2: $af
    ldh [$8a], a                                  ; $51e3: $e0 $8a
    ldh [$8b], a                                  ; $51e5: $e0 $8b
    ld [$c4b3], a                                 ; $51e7: $ea $b3 $c4
    ld [$c3f6], a                                 ; $51ea: $ea $f6 $c3
    ld [$c3f7], a                                 ; $51ed: $ea $f7 $c3
    ld a, $00                                     ; $51f0: $3e $00
    ldh [rVBK], a                                 ; $51f2: $e0 $4f
    ld hl, $4040                                  ; $51f4: $21 $40 $40
    ld de, $8600                                  ; $51f7: $11 $00 $86
    ld c, $04                                     ; $51fa: $0e $04
    call Call_000_0468                            ; $51fc: $cd $68 $04
    ld hl, $4080                                  ; $51ff: $21 $80 $40
    ld de, $0a02                                  ; $5202: $11 $02 $0a
    call Call_000_056c                            ; $5205: $cd $6c $05
    ld hl, $4020                                  ; $5208: $21 $20 $40
    ld de, $8200                                  ; $520b: $11 $00 $82
    ld c, $02                                     ; $520e: $0e $02
    call Call_000_0468                            ; $5210: $cd $68 $04
    call Call_000_2e3b                            ; $5213: $cd $3b $2e
    ld hl, $4090                                  ; $5216: $21 $90 $40
    ld de, $8f00                                  ; $5219: $11 $00 $8f
    ld c, $10                                     ; $521c: $0e $10
    call Call_000_0468                            ; $521e: $cd $68 $04
    ld hl, $4190                                  ; $5221: $21 $90 $41
    ld de, $0101                                  ; $5224: $11 $01 $01
    call Call_000_056c                            ; $5227: $cd $6c $05
    ld a, [$c810]                                 ; $522a: $fa $10 $c8
    ld b, $06                                     ; $522d: $06 $06
    ld de, $8e00                                  ; $522f: $11 $00 $8e
    rst $18                                       ; $5232: $df

    db $06, $06

    call Call_000_2e3b                            ; $5235: $cd $3b $2e
    call Call_006_4f6c                            ; $5238: $cd $6c $4f
    ld a, $0f                                     ; $523b: $3e $0f
    ld hl, $51cc                                  ; $523d: $21 $cc $51
    call Call_000_23e8                            ; $5240: $cd $e8 $23
    call Call_000_2e3b                            ; $5243: $cd $3b $2e

jr_006_5246:
    ld a, $01                                     ; $5246: $3e $01
    ldh [$96], a                                  ; $5248: $e0 $96
    ldh [rSVBK], a                                ; $524a: $e0 $70
    ldh a, [$94]                                  ; $524c: $f0 $94
    bit 3, a                                      ; $524e: $cb $5f
    jr z, jr_006_5257                             ; $5250: $28 $05

    rst $08                                       ; $5252: $cf
    ld e, h                                       ; $5253: $5c
    call Call_006_4eed                            ; $5254: $cd $ed $4e

jr_006_5257:
    ldh a, [$94]                                  ; $5257: $f0 $94
    bit 1, a                                      ; $5259: $cb $4f
    jr z, jr_006_526a                             ; $525b: $28 $0d

    call Call_006_4efa                            ; $525d: $cd $fa $4e
    and a                                         ; $5260: $a7
    jr z, jr_006_52dc                             ; $5261: $28 $79

    rst $08                                       ; $5263: $cf
    ld e, l                                       ; $5264: $5d
    call Call_006_4f4a                            ; $5265: $cd $4a $4f
    jr jr_006_527a                                ; $5268: $18 $10

jr_006_526a:
    ldh a, [$94]                                  ; $526a: $f0 $94
    bit 0, a                                      ; $526c: $cb $47
    jr z, jr_006_5277                             ; $526e: $28 $07

    rst $08                                       ; $5270: $cf

    db $5c

    call Call_006_4f87                            ; $5272: $cd $87 $4f
    jr jr_006_527a                                ; $5275: $18 $03

jr_006_5277:
    call Call_006_50c1                            ; $5277: $cd $c1 $50

jr_006_527a:
    call Call_000_2e3b                            ; $527a: $cd $3b $2e
    call Call_000_0a61                            ; $527d: $cd $61 $0a
    ld a, [$c4b3]                                 ; $5280: $fa $b3 $c4
    bit 7, a                                      ; $5283: $cb $7f
    jr z, jr_006_5246                             ; $5285: $28 $bf

    res 7, a                                      ; $5287: $cb $bf
    ld [$c4b3], a                                 ; $5289: $ea $b3 $c4
    call Call_006_4efa                            ; $528c: $cd $fa $4e
    and a                                         ; $528f: $a7
    jr nz, jr_006_52b1                            ; $5290: $20 $1f

    ld a, [$c810]                                 ; $5292: $fa $10 $c8
    ld hl, $0043                                  ; $5295: $21 $43 $00
    add l                                         ; $5298: $85
    ld l, a                                       ; $5299: $6f
    jr nc, jr_006_529d                            ; $529a: $30 $01

    inc h                                         ; $529c: $24

jr_006_529d:
    ld de, $c800                                  ; $529d: $11 $00 $c8
    rst $18                                       ; $52a0: $df
    ld e, h                                       ; $52a1: $5c
    dec b                                         ; $52a2: $05
    ld a, $01                                     ; $52a3: $3e $01
    ldh [$96], a                                  ; $52a5: $e0 $96
    ldh [rSVBK], a                                ; $52a7: $e0 $70
    call Call_006_4f0d                            ; $52a9: $cd $0d $4f
    call Call_006_4ed3                            ; $52ac: $cd $d3 $4e
    jr jr_006_5246                                ; $52af: $18 $95

jr_006_52b1:
    ld hl, $51cc                                  ; $52b1: $21 $cc $51
    call Call_000_2449                            ; $52b4: $cd $49 $24
    call Call_000_0a61                            ; $52b7: $cd $61 $0a
    ld a, h                                       ; $52ba: $7c
    ld [$c80b], a                                 ; $52bb: $ea $0b $c8
    call Call_000_0a61                            ; $52be: $cd $61 $0a
    ld a, h                                       ; $52c1: $7c
    ld [$c80c], a                                 ; $52c2: $ea $0c $c8
    call Call_000_0a61                            ; $52c5: $cd $61 $0a
    ld a, h                                       ; $52c8: $7c
    ld [$c80d], a                                 ; $52c9: $ea $0d $c8
    call Call_000_0a61                            ; $52cc: $cd $61 $0a
    ld a, h                                       ; $52cf: $7c
    ld [$c80e], a                                 ; $52d0: $ea $0e $c8
    call Call_000_0a61                            ; $52d3: $cd $61 $0a
    ld a, h                                       ; $52d6: $7c
    ld [$c80f], a                                 ; $52d7: $ea $0f $c8
    xor a                                         ; $52da: $af
    ret                                           ; $52db: $c9


jr_006_52dc:
    ld hl, $51cc                                  ; $52dc: $21 $cc $51
    call Call_000_2449                            ; $52df: $cd $49 $24
    ld a, $ff                                     ; $52e2: $3e $ff
    ret                                           ; $52e4: $c9


    nop                                           ; $52e5: $00
    nop                                           ; $52e6: $00
    nop                                           ; $52e7: $00
    nop                                           ; $52e8: $00
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00
    nop                                           ; $52eb: $00
    nop                                           ; $52ec: $00
    nop                                           ; $52ed: $00
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    rst $38                                       ; $52f0: $ff
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
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    nop                                           ; $5307: $00
    nop                                           ; $5308: $00
    nop                                           ; $5309: $00
    nop                                           ; $530a: $00
    nop                                           ; $530b: $00
    nop                                           ; $530c: $00
    nop                                           ; $530d: $00
    nop                                           ; $530e: $00
    nop                                           ; $530f: $00
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    nop                                           ; $5318: $00
    nop                                           ; $5319: $00
    nop                                           ; $531a: $00
    nop                                           ; $531b: $00
    nop                                           ; $531c: $00
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    nop                                           ; $531f: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    nop                                           ; $532b: $00
    nop                                           ; $532c: $00
    nop                                           ; $532d: $00
    nop                                           ; $532e: $00
    nop                                           ; $532f: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    nop                                           ; $533c: $00
    nop                                           ; $533d: $00
    nop                                           ; $533e: $00
    nop                                           ; $533f: $00
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    nop                                           ; $5345: $00
    nop                                           ; $5346: $00
    nop                                           ; $5347: $00
    nop                                           ; $5348: $00
    nop                                           ; $5349: $00
    nop                                           ; $534a: $00
    nop                                           ; $534b: $00
    nop                                           ; $534c: $00
    nop                                           ; $534d: $00
    nop                                           ; $534e: $00
    nop                                           ; $534f: $00
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
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
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    nop                                           ; $536d: $00
    nop                                           ; $536e: $00
    nop                                           ; $536f: $00
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537a: $00
    nop                                           ; $537b: $00
    nop                                           ; $537c: $00
    nop                                           ; $537d: $00
    nop                                           ; $537e: $00
    nop                                           ; $537f: $00
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    nop                                           ; $5388: $00
    nop                                           ; $5389: $00
    nop                                           ; $538a: $00
    nop                                           ; $538b: $00
    nop                                           ; $538c: $00
    nop                                           ; $538d: $00
    nop                                           ; $538e: $00
    nop                                           ; $538f: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    nop                                           ; $5398: $00
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    nop                                           ; $539b: $00
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    nop                                           ; $539e: $00
    nop                                           ; $539f: $00
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    nop                                           ; $53a3: $00
    nop                                           ; $53a4: $00
    nop                                           ; $53a5: $00
    nop                                           ; $53a6: $00
    nop                                           ; $53a7: $00
    nop                                           ; $53a8: $00
    nop                                           ; $53a9: $00
    nop                                           ; $53aa: $00
    nop                                           ; $53ab: $00
    nop                                           ; $53ac: $00
    nop                                           ; $53ad: $00
    nop                                           ; $53ae: $00
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    nop                                           ; $53b3: $00
    nop                                           ; $53b4: $00
    nop                                           ; $53b5: $00
    nop                                           ; $53b6: $00
    nop                                           ; $53b7: $00
    nop                                           ; $53b8: $00
    nop                                           ; $53b9: $00
    nop                                           ; $53ba: $00
    nop                                           ; $53bb: $00
    nop                                           ; $53bc: $00
    nop                                           ; $53bd: $00
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    nop                                           ; $53c0: $00
    nop                                           ; $53c1: $00
    nop                                           ; $53c2: $00
    nop                                           ; $53c3: $00
    nop                                           ; $53c4: $00
    nop                                           ; $53c5: $00
    nop                                           ; $53c6: $00
    nop                                           ; $53c7: $00
    nop                                           ; $53c8: $00
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    nop                                           ; $53cb: $00
    nop                                           ; $53cc: $00
    nop                                           ; $53cd: $00
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    nop                                           ; $53d3: $00
    nop                                           ; $53d4: $00
    nop                                           ; $53d5: $00
    nop                                           ; $53d6: $00
    nop                                           ; $53d7: $00
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    nop                                           ; $53da: $00
    nop                                           ; $53db: $00
    nop                                           ; $53dc: $00
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    nop                                           ; $53e0: $00
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
    nop                                           ; $53e4: $00
    nop                                           ; $53e5: $00
    nop                                           ; $53e6: $00
    nop                                           ; $53e7: $00
    nop                                           ; $53e8: $00
    nop                                           ; $53e9: $00
    nop                                           ; $53ea: $00
    nop                                           ; $53eb: $00
    nop                                           ; $53ec: $00
    nop                                           ; $53ed: $00
    nop                                           ; $53ee: $00
    nop                                           ; $53ef: $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    nop                                           ; $53f2: $00
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
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    nop                                           ; $5407: $00
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    nop                                           ; $540a: $00
    nop                                           ; $540b: $00
    nop                                           ; $540c: $00
    nop                                           ; $540d: $00
    nop                                           ; $540e: $00
    nop                                           ; $540f: $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    nop                                           ; $541b: $00
    nop                                           ; $541c: $00
    nop                                           ; $541d: $00
    nop                                           ; $541e: $00
    nop                                           ; $541f: $00
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    nop                                           ; $542a: $00
    nop                                           ; $542b: $00
    nop                                           ; $542c: $00
    nop                                           ; $542d: $00
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543a: $00
    nop                                           ; $543b: $00
    nop                                           ; $543c: $00
    nop                                           ; $543d: $00
    nop                                           ; $543e: $00
    nop                                           ; $543f: $00
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    nop                                           ; $544b: $00
    nop                                           ; $544c: $00
    nop                                           ; $544d: $00
    nop                                           ; $544e: $00
    nop                                           ; $544f: $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    nop                                           ; $545b: $00
    nop                                           ; $545c: $00
    nop                                           ; $545d: $00
    nop                                           ; $545e: $00
    nop                                           ; $545f: $00
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    nop                                           ; $546a: $00
    nop                                           ; $546b: $00
    nop                                           ; $546c: $00
    nop                                           ; $546d: $00
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    nop                                           ; $547a: $00
    nop                                           ; $547b: $00
    nop                                           ; $547c: $00
    nop                                           ; $547d: $00
    nop                                           ; $547e: $00
    nop                                           ; $547f: $00
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    nop                                           ; $548c: $00
    nop                                           ; $548d: $00
    nop                                           ; $548e: $00
    nop                                           ; $548f: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549a: $00
    nop                                           ; $549b: $00
    nop                                           ; $549c: $00
    nop                                           ; $549d: $00
    nop                                           ; $549e: $00
    nop                                           ; $549f: $00
    nop                                           ; $54a0: $00
    nop                                           ; $54a1: $00
    nop                                           ; $54a2: $00
    nop                                           ; $54a3: $00
    nop                                           ; $54a4: $00
    nop                                           ; $54a5: $00
    nop                                           ; $54a6: $00
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00
    nop                                           ; $54ab: $00
    nop                                           ; $54ac: $00
    nop                                           ; $54ad: $00
    nop                                           ; $54ae: $00
    nop                                           ; $54af: $00
    nop                                           ; $54b0: $00
    nop                                           ; $54b1: $00
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    nop                                           ; $54b4: $00
    nop                                           ; $54b5: $00
    nop                                           ; $54b6: $00
    nop                                           ; $54b7: $00
    nop                                           ; $54b8: $00
    nop                                           ; $54b9: $00
    nop                                           ; $54ba: $00
    nop                                           ; $54bb: $00
    nop                                           ; $54bc: $00
    nop                                           ; $54bd: $00
    nop                                           ; $54be: $00
    nop                                           ; $54bf: $00
    nop                                           ; $54c0: $00
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    nop                                           ; $54c3: $00
    nop                                           ; $54c4: $00
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    nop                                           ; $54c9: $00
    nop                                           ; $54ca: $00
    nop                                           ; $54cb: $00
    nop                                           ; $54cc: $00
    nop                                           ; $54cd: $00
    nop                                           ; $54ce: $00
    nop                                           ; $54cf: $00
    nop                                           ; $54d0: $00
    nop                                           ; $54d1: $00
    nop                                           ; $54d2: $00
    nop                                           ; $54d3: $00
    nop                                           ; $54d4: $00
    nop                                           ; $54d5: $00
    nop                                           ; $54d6: $00
    nop                                           ; $54d7: $00
    nop                                           ; $54d8: $00
    nop                                           ; $54d9: $00
    nop                                           ; $54da: $00
    nop                                           ; $54db: $00
    nop                                           ; $54dc: $00
    nop                                           ; $54dd: $00
    nop                                           ; $54de: $00
    nop                                           ; $54df: $00
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    nop                                           ; $54e6: $00
    nop                                           ; $54e7: $00
    nop                                           ; $54e8: $00
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    nop                                           ; $54eb: $00
    nop                                           ; $54ec: $00
    nop                                           ; $54ed: $00
    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    rst $38                                       ; $54f0: $ff
    nop                                           ; $54f1: $00
    rst $38                                       ; $54f2: $ff
    ld a, a                                       ; $54f3: $7f
    ret nz                                        ; $54f4: $c0

    ld b, c                                       ; $54f5: $41
    pop bc                                        ; $54f6: $c1
    ld b, c                                       ; $54f7: $41
    pop bc                                        ; $54f8: $c1
    ld b, c                                       ; $54f9: $41
    pop bc                                        ; $54fa: $c1
    ld b, e                                       ; $54fb: $43
    jp nz, $c043                                  ; $54fc: $c2 $43 $c0

    ld b, [hl]                                    ; $54ff: $46
    rst $38                                       ; $5500: $ff
    nop                                           ; $5501: $00
    rst $38                                       ; $5502: $ff
    rst $38                                       ; $5503: $ff
    ret nz                                        ; $5504: $c0

    ldh [$f0], a                                  ; $5505: $e0 $f0
    ldh a, [$fc]                                  ; $5507: $f0 $fc
    cp $f3                                        ; $5509: $fe $f3
    rst $30                                       ; $550b: $f7
    xor $f0                                       ; $550c: $ee $f0
    rst $38                                       ; $550e: $ff
    nop                                           ; $550f: $00
    rst $38                                       ; $5510: $ff
    nop                                           ; $5511: $00
    rst $38                                       ; $5512: $ff
    cp $03                                        ; $5513: $fe $03
    ld [bc], a                                    ; $5515: $02
    inc bc                                        ; $5516: $03
    ld [bc], a                                    ; $5517: $02
    inc bc                                        ; $5518: $03
    ld [bc], a                                    ; $5519: $02
    inc bc                                        ; $551a: $03
    add d                                         ; $551b: $82
    add e                                         ; $551c: $83
    jp nz, $62c3                                  ; $551d: $c2 $c3 $62

    rst $38                                       ; $5520: $ff
    nop                                           ; $5521: $00
    rst $38                                       ; $5522: $ff
    ld a, a                                       ; $5523: $7f
    ret nz                                        ; $5524: $c0

    ld b, b                                       ; $5525: $40
    pop bc                                        ; $5526: $c1
    ld b, e                                       ; $5527: $43
    jp nz, $c243                                  ; $5528: $c2 $43 $c2

    ld b, a                                       ; $552b: $47
    push bc                                       ; $552c: $c5
    ld b, a                                       ; $552d: $47
    add $46                                       ; $552e: $c6 $46
    rst $38                                       ; $5530: $ff
    nop                                           ; $5531: $00
    rst $38                                       ; $5532: $ff
    rst $38                                       ; $5533: $ff
    ld a, h                                       ; $5534: $7c
    cp $a3                                        ; $5535: $fe $a3
    rst $08                                       ; $5537: $cf
    nop                                           ; $5538: $00
    rst $08                                       ; $5539: $cf
    add $ff                                       ; $553a: $c6 $ff
    ld a, l                                       ; $553c: $7d
    add hl, sp                                    ; $553d: $39
    cp $00                                        ; $553e: $fe $00
    rst $38                                       ; $5540: $ff
    nop                                           ; $5541: $00
    rst $38                                       ; $5542: $ff
    cp $03                                        ; $5543: $fe $03
    ld [bc], a                                    ; $5545: $02
    inc bc                                        ; $5546: $03
    add d                                         ; $5547: $82
    add e                                         ; $5548: $83
    add d                                         ; $5549: $82
    add e                                         ; $554a: $83
    jp nz, $c243                                  ; $554b: $c2 $43 $c2

    jp $ffc2                                      ; $554e: $c3 $c2 $ff


    nop                                           ; $5551: $00
    rst $38                                       ; $5552: $ff
    ld a, a                                       ; $5553: $7f
    ret nz                                        ; $5554: $c0

    ld b, b                                       ; $5555: $40
    ret nz                                        ; $5556: $c0

    ld b, b                                       ; $5557: $40
    ret nc                                        ; $5558: $d0

    ld a, b                                       ; $5559: $78
    ld sp, hl                                     ; $555a: $f9
    ld l, a                                       ; $555b: $6f
    add $4f                                       ; $555c: $c6 $4f
    jp nz, $ff77                                  ; $555e: $c2 $77 $ff

    nop                                           ; $5561: $00
    rst $38                                       ; $5562: $ff
    rst $38                                       ; $5563: $ff
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    ld a, h                                       ; $5568: $7c
    cp $93                                        ; $5569: $fe $93
    rst $00                                       ; $556b: $c7
    nop                                           ; $556c: $00
    rst $38                                       ; $556d: $ff
    ld a, e                                       ; $556e: $7b
    rst $38                                       ; $556f: $ff
    rst $38                                       ; $5570: $ff
    nop                                           ; $5571: $00
    rst $38                                       ; $5572: $ff
    cp $03                                        ; $5573: $fe $03
    ld [bc], a                                    ; $5575: $02
    inc bc                                        ; $5576: $03
    ld [bc], a                                    ; $5577: $02
    inc hl                                        ; $5578: $23
    ld [hl], d                                    ; $5579: $72
    rst $18                                       ; $557a: $df
    sbc $83                                       ; $557b: $de $83
    cp $43                                        ; $557d: $fe $43
    cp $ff                                        ; $557f: $fe $ff
    nop                                           ; $5581: $00
    rst $38                                       ; $5582: $ff
    ld a, a                                       ; $5583: $7f
    jp nz, $c447                                  ; $5584: $c2 $47 $c4

    ld b, [hl]                                    ; $5587: $46
    push bc                                       ; $5588: $c5
    ld b, h                                       ; $5589: $44
    push bc                                       ; $558a: $c5
    ld b, a                                       ; $558b: $47
    add $4f                                       ; $558c: $c6 $4f
    ret                                           ; $558e: $c9


    ld e, h                                       ; $558f: $5c
    rst $38                                       ; $5590: $ff
    nop                                           ; $5591: $00
    rst $38                                       ; $5592: $ff
    rst $38                                       ; $5593: $ff
    ld [hl], e                                    ; $5594: $73
    rlca                                          ; $5595: $07
    db $fc                                        ; $5596: $fc
    ld bc, $00ff                                  ; $5597: $01 $ff $00
    db $fc                                        ; $559a: $fc
    cp $03                                        ; $559b: $fe $03
    ld a, a                                       ; $559d: $7f
    cp $00                                        ; $559e: $fe $00
    rst $38                                       ; $55a0: $ff
    nop                                           ; $55a1: $00
    rst $38                                       ; $55a2: $ff
    cp $43                                        ; $55a3: $fe $43
    ld [c], a                                     ; $55a5: $e2
    and e                                         ; $55a6: $a3
    ld a, [c]                                     ; $55a7: $f2
    ld d, e                                       ; $55a8: $53
    ld [hl], d                                    ; $55a9: $72
    di                                            ; $55aa: $f3
    ld a, d                                       ; $55ab: $7a
    db $eb                                        ; $55ac: $eb
    jp c, $ea4b                                   ; $55ad: $da $4b $ea

    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    nop                                           ; $55b3: $00
    nop                                           ; $55b4: $00
    nop                                           ; $55b5: $00
    nop                                           ; $55b6: $00
    nop                                           ; $55b7: $00
    ld b, $06                                     ; $55b8: $06 $06
    rrca                                          ; $55ba: $0f
    add hl, bc                                    ; $55bb: $09
    ld c, $09                                     ; $55bc: $0e $09
    dec de                                        ; $55be: $1b
    inc e                                         ; $55bf: $1c
    nop                                           ; $55c0: $00
    nop                                           ; $55c1: $00
    nop                                           ; $55c2: $00
    nop                                           ; $55c3: $00
    ld h, e                                       ; $55c4: $63
    ld h, e                                       ; $55c5: $63
    call nc, $f7b7                                ; $55c6: $d4 $b7 $f7
    sub h                                         ; $55c9: $94
    rst $30                                       ; $55ca: $f7
    sub h                                         ; $55cb: $94
    rst $28                                       ; $55cc: $ef
    sbc h                                         ; $55cd: $9c
    cp a                                          ; $55ce: $bf
    call z, $0000                                 ; $55cf: $cc $00 $00
    nop                                           ; $55d2: $00
    nop                                           ; $55d3: $00
    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    add b                                         ; $55d6: $80
    add b                                         ; $55d7: $80
    add b                                         ; $55d8: $80
    add b                                         ; $55d9: $80
    add b                                         ; $55da: $80
    add b                                         ; $55db: $80
    add b                                         ; $55dc: $80
    add b                                         ; $55dd: $80
    add b                                         ; $55de: $80
    add b                                         ; $55df: $80
    nop                                           ; $55e0: $00
    nop                                           ; $55e1: $00
    nop                                           ; $55e2: $00
    nop                                           ; $55e3: $00
    nop                                           ; $55e4: $00
    nop                                           ; $55e5: $00
    nop                                           ; $55e6: $00
    nop                                           ; $55e7: $00
    nop                                           ; $55e8: $00
    nop                                           ; $55e9: $00
    nop                                           ; $55ea: $00
    nop                                           ; $55eb: $00
    nop                                           ; $55ec: $00
    nop                                           ; $55ed: $00
    nop                                           ; $55ee: $00
    nop                                           ; $55ef: $00
    push bc                                       ; $55f0: $c5
    ld b, a                                       ; $55f1: $47
    add $47                                       ; $55f2: $c6 $47
    rst $00                                       ; $55f4: $c7
    ld b, a                                       ; $55f5: $47
    rst $00                                       ; $55f6: $c7
    ld b, a                                       ; $55f7: $47
    push bc                                       ; $55f8: $c5
    ld b, l                                       ; $55f9: $45
    rst $00                                       ; $55fa: $c7
    ld c, h                                       ; $55fb: $4c
    ret                                           ; $55fc: $c9


    ld c, l                                       ; $55fd: $4d
    call z, $fc49                                 ; $55fe: $cc $49 $fc
    cp $07                                        ; $5601: $fe $07
    rst $38                                       ; $5603: $ff

jr_006_5604:
    dec e                                         ; $5604: $1d
    rst $38                                       ; $5605: $ff
    cp [hl]                                       ; $5606: $be
    rst $38                                       ; $5607: $ff
    xor h                                         ; $5608: $ac
    rst $28                                       ; $5609: $ef
    cp h                                          ; $560a: $bc
    rst $20                                       ; $560b: $e7
    inc c                                         ; $560c: $0c
    ld l, a                                       ; $560d: $6f
    nop                                           ; $560e: $00
    rst $38                                       ; $560f: $ff
    and e                                         ; $5610: $a3
    ld [hl+], a                                   ; $5611: $22
    ld h, e                                       ; $5612: $63
    ld [hl-], a                                   ; $5613: $32
    sub e                                         ; $5614: $93
    sub d                                         ; $5615: $92

jr_006_5616:
    sub e                                         ; $5616: $93
    jp nc, $d2d3                                  ; $5617: $d2 $d3 $d2

    db $d3                                        ; $561a: $d3
    ld a, [c]                                     ; $561b: $f2
    or e                                          ; $561c: $b3
    ld a, [$fa5b]                                 ; $561d: $fa $5b $fa
    rst $00                                       ; $5620: $c7
    ld b, [hl]                                    ; $5621: $46
    push bc                                       ; $5622: $c5
    ld b, [hl]                                    ; $5623: $46
    rst $00                                       ; $5624: $c7
    ld b, a                                       ; $5625: $47
    rst $08                                       ; $5626: $cf
    ld e, a                                       ; $5627: $5f
    rst $10                                       ; $5628: $d7
    ld d, a                                       ; $5629: $57
    call c, $db55                                 ; $562a: $dc $55 $db
    ld d, h                                       ; $562d: $54
    push de                                       ; $562e: $d5
    ld e, d                                       ; $562f: $5a
    add hl, sp                                    ; $5630: $39
    add $ff                                       ; $5631: $c6 $ff
    nop                                           ; $5633: $00
    rst $28                                       ; $5634: $ef
    rst $38                                       ; $5635: $ff
    rst $38                                       ; $5636: $ff
    ld a, l                                       ; $5637: $7d
    ld l, l                                       ; $5638: $6d
    ld a, l                                       ; $5639: $7d
    sub $ff                                       ; $563a: $d6 $ff
    rst $38                                       ; $563c: $ff
    jr z, jr_006_5616                             ; $563d: $28 $d7

    jr c, jr_006_5604                             ; $563f: $38 $c3

    jp nz, $c243                                  ; $5641: $c2 $43 $c2

    jp $e3c2                                      ; $5644: $c3 $c2 $e3


    ld a, [c]                                     ; $5647: $f2
    db $d3                                        ; $5648: $d3
    jp nc, $5273                                  ; $5649: $d2 $73 $52

jr_006_564c:
    or e                                          ; $564c: $b3
    ld d, d                                       ; $564d: $52
    ld d, e                                       ; $564e: $53
    or d                                          ; $564f: $b2
    jp nz, $c57f                                  ; $5650: $c2 $7f $c5

    ld a, a                                       ; $5653: $7f
    jp z, $fb7e                                   ; $5654: $ca $7e $fb

    ld a, [hl]                                    ; $5657: $7e
    adc $5e                                       ; $5658: $ce $5e
    push de                                       ; $565a: $d5
    ld e, d                                       ; $565b: $5a
    rst $18                                       ; $565c: $df
    ld d, h                                       ; $565d: $54
    rst $10                                       ; $565e: $d7
    ld d, b                                       ; $565f: $50
    and h                                         ; $5660: $a4
    adc h                                         ; $5661: $8c
    ld e, $41                                     ; $5662: $1e $41
    rst $38                                       ; $5664: $ff
    nop                                           ; $5665: $00
    ld e, l                                       ; $5666: $5d
    ld b, c                                       ; $5667: $41
    cp [hl]                                       ; $5668: $be
    and d                                         ; $5669: $a2
    ld a, a                                       ; $566a: $7f
    db $e3                                        ; $566b: $e3
    dec a                                         ; $566c: $3d
    ld hl, $63ff                                  ; $566d: $21 $ff $63
    and a                                         ; $5670: $a7
    cp $67                                        ; $5671: $fe $67
    cp $e7                                        ; $5673: $fe $e7
    ld a, [hl]                                    ; $5675: $7e
    dec sp                                        ; $5676: $3b
    ld a, [hl]                                    ; $5677: $7e
    db $e3                                        ; $5678: $e3
    and d                                         ; $5679: $a2
    inc hl                                        ; $567a: $23
    or d                                          ; $567b: $b2
    inc de                                        ; $567c: $13
    ld d, d                                       ; $567d: $52
    di                                            ; $567e: $f3
    ld d, d                                       ; $567f: $52
    db $d3                                        ; $5680: $d3
    ld e, a                                       ; $5681: $5f
    sbc $5f                                       ; $5682: $de $5f
    push bc                                       ; $5684: $c5
    ld b, l                                       ; $5685: $45
    add $46                                       ; $5686: $c6 $46
    push bc                                       ; $5688: $c5
    ld c, [hl]                                    ; $5689: $4e
    bit 5, [hl]                                   ; $568a: $cb $6e
    ld [$d27e], a                                 ; $568c: $ea $7e $d2
    ld e, e                                       ; $568f: $5b
    db $fc                                        ; $5690: $fc
    rst $38                                       ; $5691: $ff
    ld [hl], e                                    ; $5692: $73
    rlca                                          ; $5693: $07
    ld [hl], h                                    ; $5694: $74
    adc [hl]                                      ; $5695: $8e
    ei                                            ; $5696: $fb
    adc d                                         ; $5697: $8a
    cp a                                          ; $5698: $bf
    add e                                         ; $5699: $83
    ld e, c                                       ; $569a: $59
    ld b, b                                       ; $569b: $40
    rst $38                                       ; $569c: $ff
    nop                                           ; $569d: $00
    rst $28                                       ; $569e: $ef
    jr nc, jr_006_564c                            ; $569f: $30 $ab

    ld a, [$fa1b]                                 ; $56a1: $fa $1b $fa
    adc e                                         ; $56a4: $8b
    ld a, [$fe6b]                                 ; $56a5: $fa $6b $fe
    ld d, a                                       ; $56a8: $57
    ld a, $97                                     ; $56a9: $3e $97
    ld e, [hl]                                    ; $56ab: $5e
    db $d3                                        ; $56ac: $d3
    ld a, $23                                     ; $56ad: $3e $23
    ld a, [hl]                                    ; $56af: $7e
    ccf                                           ; $56b0: $3f
    inc l                                         ; $56b1: $2c
    dec a                                         ; $56b2: $3d
    ld h, $2b                                     ; $56b3: $26 $2b
    ld [hl], $1e                                  ; $56b5: $36 $1e
    inc de                                        ; $56b7: $13
    rla                                           ; $56b8: $17
    dec de                                        ; $56b9: $1b
    rrca                                          ; $56ba: $0f
    ld [$0c0b], sp                                ; $56bb: $08 $0b $0c
    rlca                                          ; $56be: $07
    inc b                                         ; $56bf: $04
    ld [hl], a                                    ; $56c0: $77
    call z, Call_006_4cf7                         ; $56c1: $cc $f7 $4c
    sbc $6d                                       ; $56c4: $de $6d
    rst $38                                       ; $56c6: $ff
    ld h, c                                       ; $56c7: $61
    rst $38                                       ; $56c8: $ff
    nop                                           ; $56c9: $00
    cp $01                                        ; $56ca: $fe $01
    db $fd                                        ; $56cc: $fd
    inc bc                                        ; $56cd: $03
    rst $38                                       ; $56ce: $ff
    ld [bc], a                                    ; $56cf: $02
    add b                                         ; $56d0: $80
    add b                                         ; $56d1: $80
    add b                                         ; $56d2: $80
    add b                                         ; $56d3: $80
    sbc b                                         ; $56d4: $98
    sbc b                                         ; $56d5: $98
    or h                                          ; $56d6: $b4
    xor h                                         ; $56d7: $ac
    db $f4                                        ; $56d8: $f4
    call z, $88f8                                 ; $56d9: $cc $f8 $88
    add sp, $18                                   ; $56dc: $e8 $18
    ldh a, [rNR10]                                ; $56de: $f0 $10
    nop                                           ; $56e0: $00
    nop                                           ; $56e1: $00
    nop                                           ; $56e2: $00
    nop                                           ; $56e3: $00
    nop                                           ; $56e4: $00
    nop                                           ; $56e5: $00
    nop                                           ; $56e6: $00
    nop                                           ; $56e7: $00
    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    nop                                           ; $56eb: $00
    nop                                           ; $56ec: $00
    nop                                           ; $56ed: $00
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    ret z                                         ; $56f0: $c8

    ld c, a                                       ; $56f1: $4f
    call nz, $c24f                                ; $56f2: $c4 $4f $c2
    ld b, a                                       ; $56f5: $47
    pop bc                                        ; $56f6: $c1
    ld b, e                                       ; $56f7: $43
    rst $00                                       ; $56f8: $c7
    ld b, a                                       ; $56f9: $47
    jp $ff46                                      ; $56fa: $c3 $46 $ff


    ld a, a                                       ; $56fd: $7f
    rst $38                                       ; $56fe: $ff
    nop                                           ; $56ff: $00
    ld b, b                                       ; $5700: $40
    rra                                           ; $5701: $1f
    ld h, c                                       ; $5702: $61
    ld l, a                                       ; $5703: $6f
    ld b, e                                       ; $5704: $43
    sbc a                                         ; $5705: $9f
    adc a                                         ; $5706: $8f
    rst $38                                       ; $5707: $ff
    ld [hl], a                                    ; $5708: $77
    db $fc                                        ; $5709: $fc
    ld a, [hl+]                                   ; $570a: $2a
    ld a, l                                       ; $570b: $7d
    rst $38                                       ; $570c: $ff
    rst $38                                       ; $570d: $ff
    rst $38                                       ; $570e: $ff
    nop                                           ; $570f: $00
    dec de                                        ; $5710: $1b
    ld a, [$fa3b]                                 ; $5711: $fa $3b $fa
    ei                                            ; $5714: $fb
    ld a, [$faf3]                                 ; $5715: $fa $f3 $fa
    jp $83f2                                      ; $5718: $c3 $f2 $83


    jp nz, $feff                                  ; $571b: $c2 $ff $fe

    rst $38                                       ; $571e: $ff
    nop                                           ; $571f: $00
    bit 3, [hl]                                   ; $5720: $cb $5e
    sub $5f                                       ; $5722: $d6 $5f
    ret                                           ; $5724: $c9


    ld e, a                                       ; $5725: $5f
    pop bc                                        ; $5726: $c1
    ld b, c                                       ; $5727: $41
    ret nz                                        ; $5728: $c0

    ld b, c                                       ; $5729: $41
    ret nz                                        ; $572a: $c0

    ld b, b                                       ; $572b: $40
    rst $38                                       ; $572c: $ff
    ld a, a                                       ; $572d: $7f
    rst $38                                       ; $572e: $ff
    nop                                           ; $572f: $00
    rst $38                                       ; $5730: $ff
    nop                                           ; $5731: $00
    cp $39                                        ; $5732: $fe $39
    rst $28                                       ; $5734: $ef
    add hl, sp                                    ; $5735: $39
    ld d, l                                       ; $5736: $55
    sub e                                         ; $5737: $93
    cp $83                                        ; $5738: $fe $83
    cp d                                          ; $573a: $ba
    add $ff                                       ; $573b: $c6 $ff
    rst $38                                       ; $573d: $ff
    rst $38                                       ; $573e: $ff
    nop                                           ; $573f: $00
    and e                                         ; $5740: $a3
    ld a, [c]                                     ; $5741: $f2
    db $d3                                        ; $5742: $d3
    ld a, [c]                                     ; $5743: $f2
    inc hl                                        ; $5744: $23
    ld a, [c]                                     ; $5745: $f2
    inc bc                                        ; $5746: $03
    ld [bc], a                                    ; $5747: $02
    inc bc                                        ; $5748: $03
    ld [bc], a                                    ; $5749: $02
    inc bc                                        ; $574a: $03
    ld [bc], a                                    ; $574b: $02
    rst $38                                       ; $574c: $ff
    cp $ff                                        ; $574d: $fe $ff
    nop                                           ; $574f: $00
    jp z, $c65a                                   ; $5750: $ca $5a $c6

    ld c, a                                       ; $5753: $4f
    pop bc                                        ; $5754: $c1
    ld b, e                                       ; $5755: $43
    pop bc                                        ; $5756: $c1
    ld b, c                                       ; $5757: $41
    pop bc                                        ; $5758: $c1
    ld b, a                                       ; $5759: $47
    push bc                                       ; $575a: $c5
    ld c, h                                       ; $575b: $4c
    rst $38                                       ; $575c: $ff
    ld a, a                                       ; $575d: $7f
    rst $38                                       ; $575e: $ff
    nop                                           ; $575f: $00
    rst $30                                       ; $5760: $f7
    inc b                                         ; $5761: $04
    rst $38                                       ; $5762: $ff
    nop                                           ; $5763: $00
    ld l, $89                                     ; $5764: $2e $89
    set 4, e                                      ; $5766: $cb $e3
    dec a                                         ; $5768: $3d
    ld a, a                                       ; $5769: $7f
    rst $30                                       ; $576a: $f7
    sbc d                                         ; $576b: $9a
    rst $38                                       ; $576c: $ff
    rst $38                                       ; $576d: $ff
    rst $38                                       ; $576e: $ff
    nop                                           ; $576f: $00
    db $d3                                        ; $5770: $d3
    ld [hl], d                                    ; $5771: $72
    ld h, e                                       ; $5772: $63
    ld [hl], d                                    ; $5773: $72
    add e                                         ; $5774: $83

jr_006_5775:
    add d                                         ; $5775: $82
    inc bc                                        ; $5776: $03
    add d                                         ; $5777: $82
    inc bc                                        ; $5778: $03
    add d                                         ; $5779: $82
    add e                                         ; $577a: $83
    jp nz, $feff                                  ; $577b: $c2 $ff $fe

    rst $38                                       ; $577e: $ff
    nop                                           ; $577f: $00
    pop de                                        ; $5780: $d1
    ld h, a                                       ; $5781: $67
    ldh [$7f], a                                  ; $5782: $e0 $7f
    reti                                          ; $5784: $d9


    ld a, a                                       ; $5785: $7f
    add $4f                                       ; $5786: $c6 $4f
    ret nz                                        ; $5788: $c0

    ld b, b                                       ; $5789: $40
    ret nz                                        ; $578a: $c0

    ld b, c                                       ; $578b: $41
    rst $38                                       ; $578c: $ff
    ld a, a                                       ; $578d: $7f
    rst $38                                       ; $578e: $ff
    nop                                           ; $578f: $00
    ld c, [hl]                                    ; $5790: $4e
    ld bc, $83bb                                  ; $5791: $01 $bb $83
    ld b, l                                       ; $5794: $45
    rst $28                                       ; $5795: $ef
    rst $38                                       ; $5796: $ff
    rst $38                                       ; $5797: $ff
    halt                                          ; $5798: $76
    ld e, b                                       ; $5799: $58
    xor c                                         ; $579a: $a9
    ei                                            ; $579b: $fb
    rst $38                                       ; $579c: $ff
    rst $38                                       ; $579d: $ff
    rst $38                                       ; $579e: $ff
    nop                                           ; $579f: $00
    jp Jump_000_03fe                              ; $57a0: $c3 $fe $03


    cp $4f                                        ; $57a3: $fe $4f
    cp $f3                                        ; $57a5: $fe $f3
    ld a, [$c283]                                 ; $57a7: $fa $83 $c2
    ld b, e                                       ; $57aa: $43
    jp nz, $feff                                  ; $57ab: $c2 $ff $fe

    rst $38                                       ; $57ae: $ff
    nop                                           ; $57af: $00
    dec b                                         ; $57b0: $05
    ld b, $03                                     ; $57b1: $06 $03

jr_006_57b3:
    ld [bc], a                                    ; $57b3: $02
    ld [bc], a                                    ; $57b4: $02
    inc bc                                        ; $57b5: $03
    ld bc, $0001                                  ; $57b6: $01 $01 $00
    nop                                           ; $57b9: $00
    nop                                           ; $57ba: $00
    nop                                           ; $57bb: $00
    nop                                           ; $57bc: $00
    nop                                           ; $57bd: $00
    nop                                           ; $57be: $00
    nop                                           ; $57bf: $00
    rst $38                                       ; $57c0: $ff
    ld [bc], a                                    ; $57c1: $02
    rst $38                                       ; $57c2: $ff
    nop                                           ; $57c3: $00
    rst $38                                       ; $57c4: $ff
    nop                                           ; $57c5: $00
    ld a, a                                       ; $57c6: $7f
    add b                                         ; $57c7: $80
    cp l                                          ; $57c8: $bd
    jp Jump_006_7e7e                              ; $57c9: $c3 $7e $7e


    nop                                           ; $57cc: $00
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    nop                                           ; $57cf: $00
    ret nc                                        ; $57d0: $d0

    jr nc, jr_006_57b3                            ; $57d1: $30 $e0

    jr nz, jr_006_5775                            ; $57d3: $20 $a0

    ld h, b                                       ; $57d5: $60
    ld b, b                                       ; $57d6: $40
    ret nz                                        ; $57d7: $c0

    add b                                         ; $57d8: $80
    add b                                         ; $57d9: $80
    nop                                           ; $57da: $00
    nop                                           ; $57db: $00
    nop                                           ; $57dc: $00
    nop                                           ; $57dd: $00
    nop                                           ; $57de: $00
    nop                                           ; $57df: $00
    nop                                           ; $57e0: $00
    nop                                           ; $57e1: $00
    nop                                           ; $57e2: $00
    nop                                           ; $57e3: $00
    nop                                           ; $57e4: $00
    nop                                           ; $57e5: $00
    nop                                           ; $57e6: $00
    nop                                           ; $57e7: $00
    nop                                           ; $57e8: $00
    nop                                           ; $57e9: $00
    nop                                           ; $57ea: $00
    nop                                           ; $57eb: $00
    nop                                           ; $57ec: $00
    nop                                           ; $57ed: $00
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    rst $38                                       ; $57f0: $ff
    nop                                           ; $57f1: $00
    rst $38                                       ; $57f2: $ff
    ld a, a                                       ; $57f3: $7f
    ret nz                                        ; $57f4: $c0

    ld a, a                                       ; $57f5: $7f
    ret nz                                        ; $57f6: $c0

    ld a, a                                       ; $57f7: $7f
    ret nz                                        ; $57f8: $c0

    ld a, a                                       ; $57f9: $7f
    ret nz                                        ; $57fa: $c0

    ld a, a                                       ; $57fb: $7f
    ret nz                                        ; $57fc: $c0

    ld a, a                                       ; $57fd: $7f
    pop bc                                        ; $57fe: $c1
    ld a, a                                       ; $57ff: $7f
    rst $38                                       ; $5800: $ff
    nop                                           ; $5801: $00
    rst $38                                       ; $5802: $ff
    rst $38                                       ; $5803: $ff
    rra                                           ; $5804: $1f
    rst $38                                       ; $5805: $ff
    ccf                                           ; $5806: $3f
    ldh [$3d], a                                  ; $5807: $e0 $3d
    db $fc                                        ; $5809: $fc
    ld a, [bc]                                    ; $580a: $0a
    ld hl, sp-$0b                                 ; $580b: $f8 $f5
    pop af                                        ; $580d: $f1
    ld l, e                                       ; $580e: $6b
    inc bc                                        ; $580f: $03
    rst $38                                       ; $5810: $ff
    nop                                           ; $5811: $00
    rst $38                                       ; $5812: $ff
    cp $c3                                        ; $5813: $fe $c3
    cp $c3                                        ; $5815: $fe $c3
    ld a, [hl]                                    ; $5817: $7e
    jp $c37e                                      ; $5818: $c3 $7e $c3


    ld a, [hl]                                    ; $581b: $7e
    jp $c37e                                      ; $581c: $c3 $7e $c3


    ld a, [hl]                                    ; $581f: $7e
    rst $38                                       ; $5820: $ff
    nop                                           ; $5821: $00
    rst $38                                       ; $5822: $ff
    ld a, a                                       ; $5823: $7f
    ret nz                                        ; $5824: $c0

    ld a, a                                       ; $5825: $7f
    ret nz                                        ; $5826: $c0

    ld a, a                                       ; $5827: $7f
    ret nz                                        ; $5828: $c0

    ld a, a                                       ; $5829: $7f
    ret nz                                        ; $582a: $c0

    ld a, a                                       ; $582b: $7f
    pop bc                                        ; $582c: $c1
    ld a, a                                       ; $582d: $7f
    jp $ff7e                                      ; $582e: $c3 $7e $ff


    nop                                           ; $5831: $00
    rst $38                                       ; $5832: $ff
    rst $38                                       ; $5833: $ff
    rrca                                          ; $5834: $0f
    rst $38                                       ; $5835: $ff
    ld d, $f0                                     ; $5836: $16 $f0
    cpl                                           ; $5838: $2f
    ldh [$3f], a                                  ; $5839: $e0 $3f
    and $3f                                       ; $583b: $e6 $3f
    and $af                                       ; $583d: $e6 $af
    ldh [rIE], a                                  ; $583f: $e0 $ff
    nop                                           ; $5841: $00
    rst $38                                       ; $5842: $ff
    cp $03                                        ; $5843: $fe $03
    cp $83                                        ; $5845: $fe $83
    cp $43                                        ; $5847: $fe $43
    ld a, [hl]                                    ; $5849: $7e
    jp $c37e                                      ; $584a: $c3 $7e $c3


    ld a, [hl]                                    ; $584d: $7e
    ld b, e                                       ; $584e: $43
    ld a, [hl]                                    ; $584f: $7e
    rst $38                                       ; $5850: $ff
    nop                                           ; $5851: $00
    rst $38                                       ; $5852: $ff
    ld a, a                                       ; $5853: $7f
    ret nz                                        ; $5854: $c0

    ld a, a                                       ; $5855: $7f
    pop bc                                        ; $5856: $c1
    ld a, a                                       ; $5857: $7f
    pop bc                                        ; $5858: $c1
    ld a, a                                       ; $5859: $7f
    pop bc                                        ; $585a: $c1
    ld a, a                                       ; $585b: $7f
    pop bc                                        ; $585c: $c1
    ld a, a                                       ; $585d: $7f
    pop bc                                        ; $585e: $c1
    ld a, a                                       ; $585f: $7f
    rst $38                                       ; $5860: $ff
    nop                                           ; $5861: $00
    rst $38                                       ; $5862: $ff
    rst $38                                       ; $5863: $ff
    add $ff                                       ; $5864: $c6 $ff
    dec hl                                        ; $5866: $2b
    add hl, sp                                    ; $5867: $39
    rst $28                                       ; $5868: $ef
    add hl, sp                                    ; $5869: $39
    rst $28                                       ; $586a: $ef
    add hl, sp                                    ; $586b: $39
    rst $30                                       ; $586c: $f7
    ld sp, $31fd                                  ; $586d: $31 $fd $31
    rst $38                                       ; $5870: $ff
    nop                                           ; $5871: $00
    rst $38                                       ; $5872: $ff
    cp $03                                        ; $5873: $fe $03
    cp $03                                        ; $5875: $fe $03
    cp $63                                        ; $5877: $fe $63
    cp $f3                                        ; $5879: $fe $f3
    sbc [hl]                                      ; $587b: $9e
    ld [hl], e                                    ; $587c: $73
    ld e, $db                                     ; $587d: $1e $db
    ld e, $ff                                     ; $587f: $1e $ff
    nop                                           ; $5881: $00
    rst $38                                       ; $5882: $ff
    ld a, a                                       ; $5883: $7f
    ret nz                                        ; $5884: $c0

    ld a, a                                       ; $5885: $7f
    ret nz                                        ; $5886: $c0

    ld a, a                                       ; $5887: $7f
    add $7f                                       ; $5888: $c6 $7f
    rst $08                                       ; $588a: $cf
    ld a, c                                       ; $588b: $79
    adc $78                                       ; $588c: $ce $78
    db $db                                        ; $588e: $db
    ld a, b                                       ; $588f: $78
    rst $38                                       ; $5890: $ff
    nop                                           ; $5891: $00
    rst $38                                       ; $5892: $ff
    rst $38                                       ; $5893: $ff
    ld h, e                                       ; $5894: $63
    rst $38                                       ; $5895: $ff
    call nc, $f79c                                ; $5896: $d4 $9c $f7
    sbc h                                         ; $5899: $9c
    rst $30                                       ; $589a: $f7
    sbc h                                         ; $589b: $9c
    rst $28                                       ; $589c: $ef
    adc h                                         ; $589d: $8c
    cp a                                          ; $589e: $bf
    adc h                                         ; $589f: $8c
    rst $38                                       ; $58a0: $ff
    nop                                           ; $58a1: $00
    rst $38                                       ; $58a2: $ff
    cp $03                                        ; $58a3: $fe $03
    cp $83                                        ; $58a5: $fe $83
    cp $83                                        ; $58a7: $fe $83
    cp $83                                        ; $58a9: $fe $83
    cp $83                                        ; $58ab: $fe $83
    cp $83                                        ; $58ad: $fe $83
    cp $00                                        ; $58af: $fe $00
    nop                                           ; $58b1: $00
    nop                                           ; $58b2: $00
    nop                                           ; $58b3: $00
    nop                                           ; $58b4: $00
    nop                                           ; $58b5: $00
    ld bc, $0101                                  ; $58b6: $01 $01 $01
    ld bc, $0101                                  ; $58b9: $01 $01 $01
    ld bc, $0101                                  ; $58bc: $01 $01 $01
    ld bc, $0000                                  ; $58bf: $01 $00 $00
    nop                                           ; $58c2: $00
    nop                                           ; $58c3: $00
    add $c6                                       ; $58c4: $c6 $c6
    dec hl                                        ; $58c6: $2b
    db $ed                                        ; $58c7: $ed
    rst $28                                       ; $58c8: $ef
    add hl, hl                                    ; $58c9: $29
    rst $28                                       ; $58ca: $ef
    add hl, hl                                    ; $58cb: $29
    rst $30                                       ; $58cc: $f7
    add hl, sp                                    ; $58cd: $39
    db $fd                                        ; $58ce: $fd
    inc sp                                        ; $58cf: $33
    nop                                           ; $58d0: $00
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    nop                                           ; $58d3: $00
    nop                                           ; $58d4: $00
    nop                                           ; $58d5: $00
    nop                                           ; $58d6: $00
    nop                                           ; $58d7: $00
    ld h, b                                       ; $58d8: $60
    ld h, b                                       ; $58d9: $60
    ldh a, [$90]                                  ; $58da: $f0 $90
    ld [hl], b                                    ; $58dc: $70
    sub b                                         ; $58dd: $90
    ret c                                         ; $58de: $d8

    jr c, jr_006_58e1                             ; $58df: $38 $00

jr_006_58e1:
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00
    nop                                           ; $58e3: $00
    nop                                           ; $58e4: $00
    nop                                           ; $58e5: $00
    nop                                           ; $58e6: $00
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    nop                                           ; $58e9: $00
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    nop                                           ; $58ec: $00
    nop                                           ; $58ed: $00
    nop                                           ; $58ee: $00
    nop                                           ; $58ef: $00
    jp nz, $c37e                                  ; $58f0: $c2 $7e $c3

    ld a, [hl]                                    ; $58f3: $7e
    jp $c27e                                      ; $58f4: $c3 $7e $c2


    ld a, [hl]                                    ; $58f7: $7e
    pop bc                                        ; $58f8: $c1
    ld a, a                                       ; $58f9: $7f
    jp nz, $cf7f                                  ; $58fa: $c2 $7f $cf

    ld a, l                                       ; $58fd: $7d
    rst $18                                       ; $58fe: $df
    ld [hl], b                                    ; $58ff: $70
    push af                                       ; $5900: $f5
    rlca                                          ; $5901: $07
    db $fd                                        ; $5902: $fd
    ld h, a                                       ; $5903: $67
    db $fc                                        ; $5904: $fc
    ld h, a                                       ; $5905: $67
    db $f4                                        ; $5906: $f4
    rlca                                          ; $5907: $07
    ld l, b                                       ; $5908: $68
    rrca                                          ; $5909: $0f
    ldh a, [rIE]                                  ; $590a: $f0 $ff
    db $10                                        ; $590c: $10
    rst $38                                       ; $590d: $ff
    cp a                                          ; $590e: $bf
    rst $28                                       ; $590f: $ef
    jp $837e                                      ; $5910: $c3 $7e $83


    cp $03                                        ; $5913: $fe $03
    cp $03                                        ; $5915: $fe $03
    cp $03                                        ; $5917: $fe $03
    cp $03                                        ; $5919: $fe $03
    cp $fb                                        ; $591b: $fe $fb
    cp $f7                                        ; $591d: $fe $f7
    ld c, $c1                                     ; $591f: $0e $c1
    ld a, a                                       ; $5921: $7f
    ret nz                                        ; $5922: $c0

    ld a, a                                       ; $5923: $7f
    pop bc                                        ; $5924: $c1
    ld a, a                                       ; $5925: $7f
    jp nz, $c37e                                  ; $5926: $c2 $7e $c3

    ld a, [hl]                                    ; $5929: $7e
    rst $00                                       ; $592a: $c7
    ld a, a                                       ; $592b: $7f
    rst $08                                       ; $592c: $cf
    ld a, l                                       ; $592d: $7d
    rst $18                                       ; $592e: $df
    ld [hl], b                                    ; $592f: $70
    sub $40                                       ; $5930: $d6 $40
    rst $28                                       ; $5932: $ef
    adc a                                         ; $5933: $8f
    ld [hl], b                                    ; $5934: $70
    rra                                           ; $5935: $1f
    cp b                                          ; $5936: $b8
    cpl                                           ; $5937: $2f
    ld e, h                                       ; $5938: $5c
    ld [hl], a                                    ; $5939: $77
    adc b                                         ; $593a: $88
    rst $38                                       ; $593b: $ff
    ld de, $bbff                                  ; $593c: $11 $ff $bb
    xor $83                                       ; $593f: $ee $83
    cp $03                                        ; $5941: $fe $03
    cp $03                                        ; $5943: $fe $03
    cp $03                                        ; $5945: $fe $03
    cp $03                                        ; $5947: $fe $03
    cp $83                                        ; $5949: $fe $83
    cp $d3                                        ; $594b: $fe $d3
    ld a, [hl]                                    ; $594d: $7e
    ei                                            ; $594e: $fb
    ld l, $c1                                     ; $594f: $2e $c1
    ld a, a                                       ; $5951: $7f
    pop bc                                        ; $5952: $c1
    ld a, a                                       ; $5953: $7f
    reti                                          ; $5954: $d9


    ld a, a                                       ; $5955: $7f
    db $ed                                        ; $5956: $ed
    ld h, a                                       ; $5957: $67
    rst $38                                       ; $5958: $ff
    ld h, e                                       ; $5959: $63
    reti                                          ; $595a: $d9


    ld a, c                                       ; $595b: $79
    rst $38                                       ; $595c: $ff
    ld h, l                                       ; $595d: $65
    rst $38                                       ; $595e: $ff
    halt                                          ; $595f: $76
    xor $22                                       ; $5960: $ee $22
    rst $28                                       ; $5962: $ef
    ld [hl+], a                                   ; $5963: $22
    ld a, e                                       ; $5964: $7b
    ld [hl-], a                                   ; $5965: $32
    rst $38                                       ; $5966: $ff
    add [hl]                                      ; $5967: $86
    rst $38                                       ; $5968: $ff
    nop                                           ; $5969: $00
    ld [hl], l                                    ; $596a: $75
    dec b                                         ; $596b: $05
    xor a                                         ; $596c: $af
    xor d                                         ; $596d: $aa
    rst $38                                       ; $596e: $ff
    ld e, d                                       ; $596f: $5a
    rst $38                                       ; $5970: $ff
    ld [hl], $bf                                  ; $5971: $36 $bf
    ld h, $d7                                     ; $5973: $26 $d7
    ld b, [hl]                                    ; $5975: $46
    ld a, e                                       ; $5976: $7b
    ld c, [hl]                                    ; $5977: $4e
    db $eb                                        ; $5978: $eb
    adc $5b                                       ; $5979: $ce $5b
    ld e, $f7                                     ; $597b: $1e $f7
    and $6f                                       ; $597d: $e6 $6f
    ld [hl], $ff                                  ; $597f: $36 $ff
    ld l, h                                       ; $5981: $6c
    db $fd                                        ; $5982: $fd
    ld h, h                                       ; $5983: $64
    db $eb                                        ; $5984: $eb
    ld h, d                                       ; $5985: $62
    sbc $72                                       ; $5986: $de $72
    rst $10                                       ; $5988: $d7
    ld [hl], e                                    ; $5989: $73
    rst $08                                       ; $598a: $cf
    ld a, a                                       ; $598b: $7f
    rst $08                                       ; $598c: $cf
    ld a, b                                       ; $598d: $78
    rst $00                                       ; $598e: $c7
    ld a, [hl]                                    ; $598f: $7e
    ld [hl], a                                    ; $5990: $77
    ld b, h                                       ; $5991: $44
    rst $30                                       ; $5992: $f7
    ld b, h                                       ; $5993: $44
    sbc $4c                                       ; $5994: $de $4c
    rst $38                                       ; $5996: $ff
    ld h, c                                       ; $5997: $61
    rst $38                                       ; $5998: $ff
    nop                                           ; $5999: $00
    ld a, e                                       ; $599a: $7b
    inc bc                                        ; $599b: $03
    or $84                                        ; $599c: $f6 $84
    xor e                                         ; $599e: $ab
    xor b                                         ; $599f: $a8
    add e                                         ; $59a0: $83
    cp $83                                        ; $59a1: $fe $83
    cp $9b                                        ; $59a3: $fe $9b
    cp $b7                                        ; $59a5: $fe $b7
    and $df                                       ; $59a7: $e6 $df
    add $eb                                       ; $59a9: $c6 $eb
    xor [hl]                                      ; $59ab: $ae
    rst $38                                       ; $59ac: $ff
    ld d, [hl]                                    ; $59ad: $56
    ld a, a                                       ; $59ae: $7f
    ld d, [hl]                                    ; $59af: $56
    ld bc, $0101                                  ; $59b0: $01 $01 $01
    ld bc, $1919                                  ; $59b3: $01 $19 $19
    dec l                                         ; $59b6: $2d
    dec [hl]                                      ; $59b7: $35
    cpl                                           ; $59b8: $2f
    inc sp                                        ; $59b9: $33
    rra                                           ; $59ba: $1f
    ld de, $1817                                  ; $59bb: $11 $17 $18
    rrca                                          ; $59be: $0f

jr_006_59bf:
    ld [$33ee], sp                                ; $59bf: $08 $ee $33
    rst $28                                       ; $59c2: $ef
    ld [hl-], a                                   ; $59c3: $32
    ld a, e                                       ; $59c4: $7b
    or [hl]                                       ; $59c5: $b6
    rst $38                                       ; $59c6: $ff
    add [hl]                                      ; $59c7: $86
    rst $38                                       ; $59c8: $ff
    nop                                           ; $59c9: $00
    ld a, a                                       ; $59ca: $7f
    add b                                         ; $59cb: $80
    cp a                                          ; $59cc: $bf
    ret nz                                        ; $59cd: $c0

    rst $38                                       ; $59ce: $ff
    ld b, b                                       ; $59cf: $40
    db $fc                                        ; $59d0: $fc
    inc [hl]                                      ; $59d1: $34
    cp h                                          ; $59d2: $bc
    ld h, h                                       ; $59d3: $64
    call nc, Call_006_786c                        ; $59d4: $d4 $6c $78
    ret z                                         ; $59d7: $c8

    add sp, -$28                                  ; $59d8: $e8 $d8
    ldh a, [rNR10]                                ; $59da: $f0 $10
    ret nc                                        ; $59dc: $d0

    jr nc, jr_006_59bf                            ; $59dd: $30 $e0

    jr nz, jr_006_59e1                            ; $59df: $20 $00

jr_006_59e1:
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
    rst $18                                       ; $59f0: $df
    ld a, l                                       ; $59f1: $7d
    rst $28                                       ; $59f2: $ef
    ld h, b                                       ; $59f3: $60
    rst $38                                       ; $59f4: $ff
    ld l, l                                       ; $59f5: $6d
    ei                                            ; $59f6: $fb
    ld l, l                                       ; $59f7: $6d
    rst $28                                       ; $59f8: $ef
    ld h, d                                       ; $59f9: $62
    rst $18                                       ; $59fa: $df
    ld a, a                                       ; $59fb: $7f
    rst $38                                       ; $59fc: $ff
    ld a, a                                       ; $59fd: $7f
    rst $38                                       ; $59fe: $ff
    nop                                           ; $59ff: $00
    rst $30                                       ; $5a00: $f7
    ld h, c                                       ; $5a01: $61
    sbc $c7                                       ; $5a02: $de $c7
    cp $57                                        ; $5a04: $fe $57
    ei                                            ; $5a06: $fb
    ld e, c                                       ; $5a07: $59
    ld e, l                                       ; $5a08: $5d
    ld b, c                                       ; $5a09: $41
    cp [hl]                                       ; $5a0a: $be
    rst $38                                       ; $5a0b: $ff
    rst $38                                       ; $5a0c: $ff
    rst $38                                       ; $5a0d: $ff
    rst $38                                       ; $5a0e: $ff
    nop                                           ; $5a0f: $00
    rst $28                                       ; $5a10: $ef
    and $1b                                       ; $5a11: $e6 $1b
    cp $9b                                        ; $5a13: $fe $9b
    cp $ef                                        ; $5a15: $fe $ef
    ld h, [hl]                                    ; $5a17: $66
    ld [hl], a                                    ; $5a18: $77
    ld b, $fb                                     ; $5a19: $06 $fb
    cp $ff                                        ; $5a1b: $fe $ff
    cp $ff                                        ; $5a1d: $fe $ff
    nop                                           ; $5a1f: $00
    rst $18                                       ; $5a20: $df
    ld a, l                                       ; $5a21: $7d
    rst $28                                       ; $5a22: $ef
    ld h, b                                       ; $5a23: $60
    rst $38                                       ; $5a24: $ff
    ld l, l                                       ; $5a25: $6d
    ei                                            ; $5a26: $fb
    ld l, l                                       ; $5a27: $6d
    rst $28                                       ; $5a28: $ef
    ld h, d                                       ; $5a29: $62
    rst $18                                       ; $5a2a: $df
    ld a, a                                       ; $5a2b: $7f
    rst $38                                       ; $5a2c: $ff
    ld a, a                                       ; $5a2d: $7f
    rst $38                                       ; $5a2e: $ff
    nop                                           ; $5a2f: $00
    reti                                          ; $5a30: $d9


    ld c, a                                       ; $5a31: $4f
    db $eb                                        ; $5a32: $eb
    sbc $f7                                       ; $5a33: $de $f7
    ld b, [hl]                                    ; $5a35: $46
    rst $38                                       ; $5a36: $ff
    ld d, l                                       ; $5a37: $55
    ld [hl], l                                    ; $5a38: $75
    ld d, c                                       ; $5a39: $51
    xor [hl]                                      ; $5a3a: $ae
    rst $38                                       ; $5a3b: $ff
    rst $38                                       ; $5a3c: $ff
    rst $38                                       ; $5a3d: $ff
    rst $38                                       ; $5a3e: $ff
    nop                                           ; $5a3f: $00
    rst $18                                       ; $5a40: $df
    halt                                          ; $5a41: $76
    ld a, e                                       ; $5a42: $7b
    ld l, [hl]                                    ; $5a43: $6e
    ei                                            ; $5a44: $fb
    adc [hl]                                      ; $5a45: $8e
    rst $38                                       ; $5a46: $ff
    ld h, [hl]                                    ; $5a47: $66
    ld l, e                                       ; $5a48: $6b
    ld c, $f3                                     ; $5a49: $0e $f3
    cp $ff                                        ; $5a4b: $fe $ff
    cp $ff                                        ; $5a4d: $fe $ff
    nop                                           ; $5a4f: $00
    db $db                                        ; $5a50: $db
    ld c, [hl]                                    ; $5a51: $4e
    rst $30                                       ; $5a52: $f7
    ld e, [hl]                                    ; $5a53: $5e
    rst $30                                       ; $5a54: $f7
    ld e, [hl]                                    ; $5a55: $5e
    xor $4c                                       ; $5a56: $ee $4c
    db $dd                                        ; $5a58: $dd
    ld b, c                                       ; $5a59: $41
    cp $7f                                        ; $5a5a: $fe $7f
    rst $38                                       ; $5a5c: $ff
    ld a, a                                       ; $5a5d: $7f
    rst $38                                       ; $5a5e: $ff
    nop                                           ; $5a5f: $00
    rst $38                                       ; $5a60: $ff
    adc a                                         ; $5a61: $8f
    cp a                                          ; $5a62: $bf
    sbc c                                         ; $5a63: $99
    rst $18                                       ; $5a64: $df
    cp a                                          ; $5a65: $bf
    cp $b7                                        ; $5a66: $fe $b7
    rst $30                                       ; $5a68: $f7
    or c                                          ; $5a69: $b1
    ld c, [hl]                                    ; $5a6a: $4e
    rst $38                                       ; $5a6b: $ff
    rst $38                                       ; $5a6c: $ff
    rst $38                                       ; $5a6d: $ff
    rst $38                                       ; $5a6e: $ff
    nop                                           ; $5a6f: $00
    rst $38                                       ; $5a70: $ff
    halt                                          ; $5a71: $76
    rst $18                                       ; $5a72: $df
    halt                                          ; $5a73: $76
    ld l, a                                       ; $5a74: $6f
    ld h, $f7                                     ; $5a75: $26 $f7
    and $6b                                       ; $5a77: $e6 $6b
    adc $33                                       ; $5a79: $ce $33
    cp $ff                                        ; $5a7b: $fe $ff
    cp $ff                                        ; $5a7d: $fe $ff
    nop                                           ; $5a7f: $00
    rst $08                                       ; $5a80: $cf
    ld a, [hl]                                    ; $5a81: $7e
    rst $10                                       ; $5a82: $d7
    ld [hl], b                                    ; $5a83: $70
    rst $18                                       ; $5a84: $df
    halt                                          ; $5a85: $76
    db $dd                                        ; $5a86: $dd
    ld [hl], h                                    ; $5a87: $74
    sub $70                                       ; $5a88: $d6 $70
    rst $08                                       ; $5a8a: $cf
    ld a, a                                       ; $5a8b: $7f
    rst $38                                       ; $5a8c: $ff
    ld a, a                                       ; $5a8d: $7f
    rst $38                                       ; $5a8e: $ff
    nop                                           ; $5a8f: $00
    rst $38                                       ; $5a90: $ff
    jp c, $14b6                                   ; $5a91: $da $b6 $14

    rst $38                                       ; $5a94: $ff
    rst $08                                       ; $5a95: $cf
    or a                                          ; $5a96: $b7
    sub l                                         ; $5a97: $95
    db $dd                                        ; $5a98: $dd
    cp h                                          ; $5a99: $bc
    ld h, a                                       ; $5a9a: $67
    rst $38                                       ; $5a9b: $ff
    rst $38                                       ; $5a9c: $ff
    rst $38                                       ; $5a9d: $ff
    rst $38                                       ; $5a9e: $ff
    nop                                           ; $5a9f: $00
    cp e                                          ; $5aa0: $bb
    ld a, $e3                                     ; $5aa1: $3e $e3
    cp [hl]                                       ; $5aa3: $be
    and e                                         ; $5aa4: $a3
    ld a, $c3                                     ; $5aa5: $3e $c3
    cp $e3                                        ; $5aa7: $fe $e3
    ld a, $c3                                     ; $5aa9: $3e $c3
    cp $ff                                        ; $5aab: $fe $ff
    cp $ff                                        ; $5aad: $fe $ff
    nop                                           ; $5aaf: $00
    dec bc                                        ; $5ab0: $0b
    inc c                                         ; $5ab1: $0c
    rlca                                          ; $5ab2: $07
    inc b                                         ; $5ab3: $04
    dec b                                         ; $5ab4: $05
    ld b, $02                                     ; $5ab5: $06 $02
    inc bc                                        ; $5ab7: $03
    ld bc, $0001                                  ; $5ab8: $01 $01 $00
    nop                                           ; $5abb: $00
    nop                                           ; $5abc: $00
    nop                                           ; $5abd: $00
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    rst $38                                       ; $5ac0: $ff
    ld b, b                                       ; $5ac1: $40
    rst $38                                       ; $5ac2: $ff
    nop                                           ; $5ac3: $00
    rst $38                                       ; $5ac4: $ff
    nop                                           ; $5ac5: $00
    cp $01                                        ; $5ac6: $fe $01
    cp l                                          ; $5ac8: $bd
    jp Jump_006_7e7e                              ; $5ac9: $c3 $7e $7e


    nop                                           ; $5acc: $00
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    and b                                         ; $5ad0: $a0
    ld h, b                                       ; $5ad1: $60
    ret nz                                        ; $5ad2: $c0

    ld b, b                                       ; $5ad3: $40
    ld b, b                                       ; $5ad4: $40
    ret nz                                        ; $5ad5: $c0

    add b                                         ; $5ad6: $80
    add b                                         ; $5ad7: $80
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
    rra                                           ; $5af0: $1f
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    ld a, h                                       ; $5af3: $7c
    ld [c], a                                     ; $5af4: $e2
    ld a, a                                       ; $5af5: $7f
    adc e                                         ; $5af6: $8b
    ld hl, $218b                                  ; $5af7: $21 $8b $21
    rst $38                                       ; $5afa: $ff
    inc hl                                        ; $5afb: $23
    rst $18                                       ; $5afc: $df
    ld a, a                                       ; $5afd: $7f
    adc e                                         ; $5afe: $8b
    ld hl, $229e                                  ; $5aff: $21 $9e $22
    rst $38                                       ; $5b02: $ff
    ld l, e                                       ; $5b03: $6b
    ld a, [hl]                                    ; $5b04: $7e
    ld hl, $0000                                  ; $5b05: $21 $00 $00
    ld a, a                                       ; $5b08: $7f
    ld [hl-], a                                   ; $5b09: $32
    rst $38                                       ; $5b0a: $ff
    ld l, e                                       ; $5b0b: $6b
    sbc a                                         ; $5b0c: $9f
    ld bc, $0000                                  ; $5b0d: $01 $00 $00
    ccf                                           ; $5b10: $3f
    ld c, d                                       ; $5b11: $4a
    rst $38                                       ; $5b12: $ff
    ld l, e                                       ; $5b13: $6b
    rst $38                                       ; $5b14: $ff
    jr nz, jr_006_5b17                            ; $5b15: $20 $00

jr_006_5b17:
    nop                                           ; $5b17: $00
    rra                                           ; $5b18: $1f
    ld e, [hl]                                    ; $5b19: $5e
    rst $38                                       ; $5b1a: $ff
    ld l, e                                       ; $5b1b: $6b
    ret c                                         ; $5b1c: $d8

    ld a, h                                       ; $5b1d: $7c
    nop                                           ; $5b1e: $00
    nop                                           ; $5b1f: $00
    ld a, $01                                     ; $5b20: $3e $01
    ldh [rVBK], a                                 ; $5b22: $e0 $4f
    ld hl, $52f0                                  ; $5b24: $21 $f0 $52
    ld de, $8800                                  ; $5b27: $11 $00 $88
    ld c, $80                                     ; $5b2a: $0e $80
    call Call_000_2096                            ; $5b2c: $cd $96 $20
    ld hl, $5b00                                  ; $5b2f: $21 $00 $5b
    ld de, $0404                                  ; $5b32: $11 $04 $04
    call Call_000_0595                            ; $5b35: $cd $95 $05
    ret                                           ; $5b38: $c9


    push af                                       ; $5b39: $f5
    push bc                                       ; $5b3a: $c5
    push de                                       ; $5b3b: $d5
    push hl                                       ; $5b3c: $e5
    push af                                       ; $5b3d: $f5
    push bc                                       ; $5b3e: $c5
    ld h, $00                                     ; $5b3f: $26 $00
    ld l, a                                       ; $5b41: $6f
    add hl, hl                                    ; $5b42: $29
    add hl, hl                                    ; $5b43: $29
    add hl, hl                                    ; $5b44: $29
    add l                                         ; $5b45: $85
    ld l, a                                       ; $5b46: $6f
    jr nc, jr_006_5b4a                            ; $5b47: $30 $01

    inc h                                         ; $5b49: $24

jr_006_5b4a:
    add hl, hl                                    ; $5b4a: $29
    add hl, hl                                    ; $5b4b: $29
    add hl, hl                                    ; $5b4c: $29
    add hl, hl                                    ; $5b4d: $29
    ld a, $80                                     ; $5b4e: $3e $80
    add l                                         ; $5b50: $85
    ld l, a                                       ; $5b51: $6f
    ld a, h                                       ; $5b52: $7c
    adc $5b                                       ; $5b53: $ce $5b
    ld h, a                                       ; $5b55: $67
    ld c, $09                                     ; $5b56: $0e $09
    call Call_000_0468                            ; $5b58: $cd $68 $04
    pop bc                                        ; $5b5b: $c1
    pop af                                        ; $5b5c: $f1
    ld h, $00                                     ; $5b5d: $26 $00
    ld l, a                                       ; $5b5f: $6f
    add hl, hl                                    ; $5b60: $29
    add hl, hl                                    ; $5b61: $29
    add hl, hl                                    ; $5b62: $29
    ld a, $00                                     ; $5b63: $3e $00
    add l                                         ; $5b65: $85
    ld l, a                                       ; $5b66: $6f
    ld a, h                                       ; $5b67: $7c
    adc $60                                       ; $5b68: $ce $60
    ld h, a                                       ; $5b6a: $67
    ld d, b                                       ; $5b6b: $50
    ld e, $01                                     ; $5b6c: $1e $01
    call Call_000_056c                            ; $5b6e: $cd $6c $05
    pop hl                                        ; $5b71: $e1
    pop de                                        ; $5b72: $d1
    pop bc                                        ; $5b73: $c1
    pop af                                        ; $5b74: $f1
    ret                                           ; $5b75: $c9


    nop                                           ; $5b76: $00
    nop                                           ; $5b77: $00
    nop                                           ; $5b78: $00
    nop                                           ; $5b79: $00
    nop                                           ; $5b7a: $00
    nop                                           ; $5b7b: $00
    nop                                           ; $5b7c: $00
    nop                                           ; $5b7d: $00
    nop                                           ; $5b7e: $00
    nop                                           ; $5b7f: $00
    rst $38                                       ; $5b80: $ff
    nop                                           ; $5b81: $00
    rst $38                                       ; $5b82: $ff
    ld a, a                                       ; $5b83: $7f
    ret nz                                        ; $5b84: $c0

    ld b, c                                       ; $5b85: $41
    pop bc                                        ; $5b86: $c1
    ld b, c                                       ; $5b87: $41
    pop bc                                        ; $5b88: $c1
    ld b, c                                       ; $5b89: $41
    pop bc                                        ; $5b8a: $c1
    ld b, e                                       ; $5b8b: $43
    jp nz, $c443                                  ; $5b8c: $c2 $43 $c4

    ld b, a                                       ; $5b8f: $47
    rst $38                                       ; $5b90: $ff
    nop                                           ; $5b91: $00
    rst $38                                       ; $5b92: $ff
    rst $38                                       ; $5b93: $ff
    ret nz                                        ; $5b94: $c0

    ldh [$f0], a                                  ; $5b95: $e0 $f0
    ldh a, [$fc]                                  ; $5b97: $f0 $fc
    cp $f3                                        ; $5b99: $fe $f3
    rst $38                                       ; $5b9b: $ff
    ldh [rIE], a                                  ; $5b9c: $e0 $ff
    nop                                           ; $5b9e: $00
    rst $38                                       ; $5b9f: $ff
    rst $38                                       ; $5ba0: $ff
    nop                                           ; $5ba1: $00
    rst $38                                       ; $5ba2: $ff
    cp $03                                        ; $5ba3: $fe $03
    ld [bc], a                                    ; $5ba5: $02
    inc bc                                        ; $5ba6: $03
    ld [bc], a                                    ; $5ba7: $02
    inc bc                                        ; $5ba8: $03
    ld [bc], a                                    ; $5ba9: $02
    inc bc                                        ; $5baa: $03
    add d                                         ; $5bab: $82
    add e                                         ; $5bac: $83
    jp nz, $e243                                  ; $5bad: $c2 $43 $e2

    push bc                                       ; $5bb0: $c5
    ld b, a                                       ; $5bb1: $47
    rst $00                                       ; $5bb2: $c7
    ld b, a                                       ; $5bb3: $47
    call nz, $c747                                ; $5bb4: $c4 $47 $c7
    ld b, a                                       ; $5bb7: $47
    push bc                                       ; $5bb8: $c5
    ld b, l                                       ; $5bb9: $45
    push bc                                       ; $5bba: $c5
    ld c, h                                       ; $5bbb: $4c
    ret                                           ; $5bbc: $c9


    ld c, l                                       ; $5bbd: $4d
    ret z                                         ; $5bbe: $c8

    ld c, a                                       ; $5bbf: $4f
    ld hl, sp-$01                                 ; $5bc0: $f8 $ff
    cp [hl]                                       ; $5bc2: $be
    rst $38                                       ; $5bc3: $ff
    and c                                         ; $5bc4: $a1
    rst $38                                       ; $5bc5: $ff
    jr @+$01                                      ; $5bc6: $18 $ff

    xor h                                         ; $5bc8: $ac
    rst $28                                       ; $5bc9: $ef
    cp h                                          ; $5bca: $bc
    rst $20                                       ; $5bcb: $e7
    inc l                                         ; $5bcc: $2c
    rst $28                                       ; $5bcd: $ef
    add b                                         ; $5bce: $80
    ei                                            ; $5bcf: $fb
    inc hl                                        ; $5bd0: $23
    ld [c], a                                     ; $5bd1: $e2
    inc hl                                        ; $5bd2: $23
    ld a, [c]                                     ; $5bd3: $f2
    inc de                                        ; $5bd4: $13
    ld a, [c]                                     ; $5bd5: $f2
    sub e                                         ; $5bd6: $93
    ld a, [c]                                     ; $5bd7: $f2
    db $d3                                        ; $5bd8: $d3
    ld a, [c]                                     ; $5bd9: $f2
    db $d3                                        ; $5bda: $d3
    ld a, [c]                                     ; $5bdb: $f2
    or e                                          ; $5bdc: $b3
    ld a, [$fa5b]                                 ; $5bdd: $fa $5b $fa
    ret z                                         ; $5be0: $c8

    ld c, a                                       ; $5be1: $4f
    call nz, $c24f                                ; $5be2: $c4 $4f $c2
    ld b, a                                       ; $5be5: $47
    pop bc                                        ; $5be6: $c1
    ld b, e                                       ; $5be7: $43
    rst $00                                       ; $5be8: $c7
    ld b, a                                       ; $5be9: $47
    jp nz, $ff46                                  ; $5bea: $c2 $46 $ff

    ld a, a                                       ; $5bed: $7f
    rst $38                                       ; $5bee: $ff
    nop                                           ; $5bef: $00
    nop                                           ; $5bf0: $00
    rst $38                                       ; $5bf1: $ff
    ld h, c                                       ; $5bf2: $61
    rst $38                                       ; $5bf3: $ff
    inc bc                                        ; $5bf4: $03
    rst $38                                       ; $5bf5: $ff
    adc a                                         ; $5bf6: $8f
    rst $38                                       ; $5bf7: $ff
    ld [hl], l                                    ; $5bf8: $75
    db $fd                                        ; $5bf9: $fd
    xor d                                         ; $5bfa: $aa
    ld a, b                                       ; $5bfb: $78
    rst $38                                       ; $5bfc: $ff
    rst $38                                       ; $5bfd: $ff
    rst $38                                       ; $5bfe: $ff
    nop                                           ; $5bff: $00
    dec de                                        ; $5c00: $1b
    ld a, [$fa3b]                                 ; $5c01: $fa $3b $fa
    di                                            ; $5c04: $f3
    ld a, [$f2c3]                                 ; $5c05: $fa $c3 $f2
    add e                                         ; $5c08: $83
    jp nz, $c283                                  ; $5c09: $c2 $83 $c2

    rst $38                                       ; $5c0c: $ff
    cp $ff                                        ; $5c0d: $fe $ff
    nop                                           ; $5c0f: $00
    rst $38                                       ; $5c10: $ff
    nop                                           ; $5c11: $00
    rst $38                                       ; $5c12: $ff
    ld a, a                                       ; $5c13: $7f
    ret nz                                        ; $5c14: $c0

    ld b, b                                       ; $5c15: $40
    ret nz                                        ; $5c16: $c0

    ld b, b                                       ; $5c17: $40
    ret nc                                        ; $5c18: $d0

    ld a, b                                       ; $5c19: $78
    ld sp, hl                                     ; $5c1a: $f9
    ld l, a                                       ; $5c1b: $6f
    add $4f                                       ; $5c1c: $c6 $4f
    jp nz, $ff77                                  ; $5c1e: $c2 $77 $ff

    nop                                           ; $5c21: $00
    rst $38                                       ; $5c22: $ff
    rst $38                                       ; $5c23: $ff
    nop                                           ; $5c24: $00
    nop                                           ; $5c25: $00
    nop                                           ; $5c26: $00
    nop                                           ; $5c27: $00
    ld a, h                                       ; $5c28: $7c
    cp $93                                        ; $5c29: $fe $93
    rst $00                                       ; $5c2b: $c7
    nop                                           ; $5c2c: $00
    rst $38                                       ; $5c2d: $ff
    ld a, e                                       ; $5c2e: $7b
    rst $38                                       ; $5c2f: $ff
    rst $38                                       ; $5c30: $ff
    nop                                           ; $5c31: $00
    rst $38                                       ; $5c32: $ff
    cp $03                                        ; $5c33: $fe $03
    ld [bc], a                                    ; $5c35: $02
    inc bc                                        ; $5c36: $03
    ld [bc], a                                    ; $5c37: $02
    inc hl                                        ; $5c38: $23
    ld [hl], d                                    ; $5c39: $72
    rst $18                                       ; $5c3a: $df
    sbc $83                                       ; $5c3b: $de $83
    cp $43                                        ; $5c3d: $fe $43
    cp $c2                                        ; $5c3f: $fe $c2
    ld a, a                                       ; $5c41: $7f
    push bc                                       ; $5c42: $c5
    ld a, a                                       ; $5c43: $7f
    jp z, $fb7e                                   ; $5c44: $ca $7e $fb

    ld a, [hl]                                    ; $5c47: $7e
    adc $5e                                       ; $5c48: $ce $5e
    rst $10                                       ; $5c4a: $d7
    ld e, d                                       ; $5c4b: $5a
    rst $18                                       ; $5c4c: $df
    ld d, h                                       ; $5c4d: $54
    rst $10                                       ; $5c4e: $d7
    ld d, b                                       ; $5c4f: $50
    and h                                         ; $5c50: $a4
    adc h                                         ; $5c51: $8c
    ld e, $c1                                     ; $5c52: $1e $c1
    rst $38                                       ; $5c54: $ff
    nop                                           ; $5c55: $00
    ld e, l                                       ; $5c56: $5d
    ld b, c                                       ; $5c57: $41
    cp [hl]                                       ; $5c58: $be
    and d                                         ; $5c59: $a2
    ld a, a                                       ; $5c5a: $7f
    db $e3                                        ; $5c5b: $e3
    dec a                                         ; $5c5c: $3d
    ld hl, $63ff                                  ; $5c5d: $21 $ff $63
    and a                                         ; $5c60: $a7
    cp $67                                        ; $5c61: $fe $67
    cp $e7                                        ; $5c63: $fe $e7
    ld a, [hl]                                    ; $5c65: $7e
    dec sp                                        ; $5c66: $3b
    ld a, [hl]                                    ; $5c67: $7e
    db $e3                                        ; $5c68: $e3
    and d                                         ; $5c69: $a2
    inc hl                                        ; $5c6a: $23
    or d                                          ; $5c6b: $b2
    inc de                                        ; $5c6c: $13
    ld d, d                                       ; $5c6d: $52
    di                                            ; $5c6e: $f3
    ld d, d                                       ; $5c6f: $52
    jp z, $c65a                                   ; $5c70: $ca $5a $c6

    ld c, a                                       ; $5c73: $4f
    pop bc                                        ; $5c74: $c1
    ld b, e                                       ; $5c75: $43
    ret nz                                        ; $5c76: $c0

    ld b, c                                       ; $5c77: $41
    pop bc                                        ; $5c78: $c1
    ld b, a                                       ; $5c79: $47
    push bc                                       ; $5c7a: $c5
    ld c, h                                       ; $5c7b: $4c
    rst $38                                       ; $5c7c: $ff
    ld a, a                                       ; $5c7d: $7f
    rst $38                                       ; $5c7e: $ff
    nop                                           ; $5c7f: $00
    rst $30                                       ; $5c80: $f7
    inc b                                         ; $5c81: $04
    rst $38                                       ; $5c82: $ff
    nop                                           ; $5c83: $00
    ld l, $89                                     ; $5c84: $2e $89
    set 4, e                                      ; $5c86: $cb $e3
    dec a                                         ; $5c88: $3d
    ld a, a                                       ; $5c89: $7f
    rst $30                                       ; $5c8a: $f7
    sbc d                                         ; $5c8b: $9a
    rst $38                                       ; $5c8c: $ff
    rst $38                                       ; $5c8d: $ff
    rst $38                                       ; $5c8e: $ff
    nop                                           ; $5c8f: $00
    db $d3                                        ; $5c90: $d3
    ld [hl], d                                    ; $5c91: $72
    ld h, e                                       ; $5c92: $63
    ld [hl], d                                    ; $5c93: $72
    add e                                         ; $5c94: $83
    add d                                         ; $5c95: $82
    inc bc                                        ; $5c96: $03
    add d                                         ; $5c97: $82
    inc bc                                        ; $5c98: $03
    add d                                         ; $5c99: $82
    add e                                         ; $5c9a: $83
    jp nz, $feff                                  ; $5c9b: $c2 $ff $fe

    rst $38                                       ; $5c9e: $ff
    nop                                           ; $5c9f: $00
    rst $38                                       ; $5ca0: $ff
    nop                                           ; $5ca1: $00
    rst $38                                       ; $5ca2: $ff
    ld a, a                                       ; $5ca3: $7f
    jp nz, $c447                                  ; $5ca4: $c2 $47 $c4

    ld b, [hl]                                    ; $5ca7: $46
    push bc                                       ; $5ca8: $c5
    ld b, h                                       ; $5ca9: $44
    push bc                                       ; $5caa: $c5
    ld b, a                                       ; $5cab: $47
    add $4f                                       ; $5cac: $c6 $4f
    ret                                           ; $5cae: $c9


    ld e, h                                       ; $5caf: $5c
    rst $38                                       ; $5cb0: $ff
    nop                                           ; $5cb1: $00
    rst $38                                       ; $5cb2: $ff
    rst $38                                       ; $5cb3: $ff
    ld [hl], e                                    ; $5cb4: $73
    rlca                                          ; $5cb5: $07
    db $fc                                        ; $5cb6: $fc
    ld bc, $00ff                                  ; $5cb7: $01 $ff $00
    db $fc                                        ; $5cba: $fc
    cp $03                                        ; $5cbb: $fe $03
    ld a, a                                       ; $5cbd: $7f
    cp $00                                        ; $5cbe: $fe $00
    rst $38                                       ; $5cc0: $ff
    nop                                           ; $5cc1: $00
    rst $38                                       ; $5cc2: $ff
    cp $43                                        ; $5cc3: $fe $43
    ld [c], a                                     ; $5cc5: $e2
    and e                                         ; $5cc6: $a3
    ld a, [c]                                     ; $5cc7: $f2
    ld d, e                                       ; $5cc8: $53
    ld [hl], d                                    ; $5cc9: $72
    di                                            ; $5cca: $f3
    ld a, d                                       ; $5ccb: $7a
    db $eb                                        ; $5ccc: $eb
    jp c, $ea4b                                   ; $5ccd: $da $4b $ea

    db $d3                                        ; $5cd0: $d3
    ld e, a                                       ; $5cd1: $5f
    sbc $5f                                       ; $5cd2: $de $5f
    push bc                                       ; $5cd4: $c5
    ld b, l                                       ; $5cd5: $45
    add $46                                       ; $5cd6: $c6 $46
    push bc                                       ; $5cd8: $c5
    ld c, [hl]                                    ; $5cd9: $4e
    bit 5, [hl]                                   ; $5cda: $cb $6e
    ld [$d27e], a                                 ; $5cdc: $ea $7e $d2
    ld e, e                                       ; $5cdf: $5b
    db $fc                                        ; $5ce0: $fc
    rst $38                                       ; $5ce1: $ff
    ld [hl], a                                    ; $5ce2: $77
    rlca                                          ; $5ce3: $07
    ld l, e                                       ; $5ce4: $6b
    adc d                                         ; $5ce5: $8a
    or $8b                                        ; $5ce6: $f6 $8b
    cp a                                          ; $5ce8: $bf
    add e                                         ; $5ce9: $83
    ld e, c                                       ; $5cea: $59
    ld b, b                                       ; $5ceb: $40
    rst $38                                       ; $5cec: $ff
    nop                                           ; $5ced: $00
    rst $28                                       ; $5cee: $ef
    jr nc, @-$53                                  ; $5cef: $30 $ab

    ld a, [$fa1b]                                 ; $5cf1: $fa $1b $fa
    adc e                                         ; $5cf4: $8b
    ld a, [$7e6b]                                 ; $5cf5: $fa $6b $7e
    rst $10                                       ; $5cf8: $d7
    ld a, $97                                     ; $5cf9: $3e $97
    ld e, [hl]                                    ; $5cfb: $5e
    db $d3                                        ; $5cfc: $d3
    ld a, $23                                     ; $5cfd: $3e $23
    ld a, [hl]                                    ; $5cff: $7e
    pop de                                        ; $5d00: $d1
    ld h, a                                       ; $5d01: $67
    ldh [$7f], a                                  ; $5d02: $e0 $7f
    reti                                          ; $5d04: $d9


    ld a, a                                       ; $5d05: $7f
    add $4f                                       ; $5d06: $c6 $4f
    ret nz                                        ; $5d08: $c0

    ld b, b                                       ; $5d09: $40
    ret nz                                        ; $5d0a: $c0

    ld b, c                                       ; $5d0b: $41
    rst $38                                       ; $5d0c: $ff
    ld a, a                                       ; $5d0d: $7f
    rst $38                                       ; $5d0e: $ff
    nop                                           ; $5d0f: $00
    ld c, [hl]                                    ; $5d10: $4e
    ld bc, $83bb                                  ; $5d11: $01 $bb $83
    ld b, l                                       ; $5d14: $45
    rst $28                                       ; $5d15: $ef
    rst $38                                       ; $5d16: $ff
    rst $38                                       ; $5d17: $ff
    halt                                          ; $5d18: $76
    ld e, b                                       ; $5d19: $58
    xor c                                         ; $5d1a: $a9
    ei                                            ; $5d1b: $fb
    rst $38                                       ; $5d1c: $ff
    rst $38                                       ; $5d1d: $ff
    rst $38                                       ; $5d1e: $ff
    nop                                           ; $5d1f: $00
    jp Jump_000_03fe                              ; $5d20: $c3 $fe $03


    cp $4f                                        ; $5d23: $fe $4f
    cp $f3                                        ; $5d25: $fe $f3
    ld a, [$c283]                                 ; $5d27: $fa $83 $c2
    ld b, e                                       ; $5d2a: $43
    jp nz, $feff                                  ; $5d2b: $c2 $ff $fe

    rst $38                                       ; $5d2e: $ff
    nop                                           ; $5d2f: $00
    rst $38                                       ; $5d30: $ff
    nop                                           ; $5d31: $00
    rst $38                                       ; $5d32: $ff
    ld a, a                                       ; $5d33: $7f
    ret nz                                        ; $5d34: $c0

    ld b, b                                       ; $5d35: $40
    pop bc                                        ; $5d36: $c1
    ld b, e                                       ; $5d37: $43
    jp nz, $c243                                  ; $5d38: $c2 $43 $c2

    ld b, a                                       ; $5d3b: $47
    push bc                                       ; $5d3c: $c5
    ld b, a                                       ; $5d3d: $47
    add $46                                       ; $5d3e: $c6 $46
    rst $38                                       ; $5d40: $ff
    nop                                           ; $5d41: $00
    rst $38                                       ; $5d42: $ff
    rst $38                                       ; $5d43: $ff

jr_006_5d44:
    ld a, h                                       ; $5d44: $7c
    cp $a3                                        ; $5d45: $fe $a3
    rst $08                                       ; $5d47: $cf
    nop                                           ; $5d48: $00
    rst $08                                       ; $5d49: $cf
    add $ff                                       ; $5d4a: $c6 $ff
    ld a, l                                       ; $5d4c: $7d
    add hl, sp                                    ; $5d4d: $39
    cp $00                                        ; $5d4e: $fe $00
    rst $38                                       ; $5d50: $ff
    nop                                           ; $5d51: $00
    rst $38                                       ; $5d52: $ff
    cp $03                                        ; $5d53: $fe $03
    ld [bc], a                                    ; $5d55: $02

jr_006_5d56:
    inc bc                                        ; $5d56: $03
    add d                                         ; $5d57: $82
    add e                                         ; $5d58: $83
    add d                                         ; $5d59: $82
    add e                                         ; $5d5a: $83
    jp nz, $c243                                  ; $5d5b: $c2 $43 $c2

    jp $c7c2                                      ; $5d5e: $c3 $c2 $c7


    ld b, [hl]                                    ; $5d61: $46
    push bc                                       ; $5d62: $c5
    ld b, [hl]                                    ; $5d63: $46
    rst $00                                       ; $5d64: $c7
    ld b, a                                       ; $5d65: $47
    rst $08                                       ; $5d66: $cf
    ld e, a                                       ; $5d67: $5f
    rst $10                                       ; $5d68: $d7
    ld d, a                                       ; $5d69: $57
    call c, $db55                                 ; $5d6a: $dc $55 $db
    ld d, h                                       ; $5d6d: $54
    push de                                       ; $5d6e: $d5
    ld e, d                                       ; $5d6f: $5a
    add hl, sp                                    ; $5d70: $39
    add $ff                                       ; $5d71: $c6 $ff
    nop                                           ; $5d73: $00
    rst $28                                       ; $5d74: $ef
    rst $38                                       ; $5d75: $ff
    rst $38                                       ; $5d76: $ff
    ld a, l                                       ; $5d77: $7d
    ld l, l                                       ; $5d78: $6d
    ld a, l                                       ; $5d79: $7d
    sub $ff                                       ; $5d7a: $d6 $ff
    rst $38                                       ; $5d7c: $ff
    jr z, jr_006_5d56                             ; $5d7d: $28 $d7

    jr c, jr_006_5d44                             ; $5d7f: $38 $c3

    jp nz, $c243                                  ; $5d81: $c2 $43 $c2

    jp $e3c2                                      ; $5d84: $c3 $c2 $e3


    ld a, [c]                                     ; $5d87: $f2
    db $d3                                        ; $5d88: $d3
    jp nc, $5273                                  ; $5d89: $d2 $73 $52

    or e                                          ; $5d8c: $b3
    ld d, d                                       ; $5d8d: $52
    ld d, e                                       ; $5d8e: $53
    or d                                          ; $5d8f: $b2
    bit 3, [hl]                                   ; $5d90: $cb $5e
    sub $5f                                       ; $5d92: $d6 $5f
    ret                                           ; $5d94: $c9


    ld e, a                                       ; $5d95: $5f
    pop bc                                        ; $5d96: $c1
    ld b, c                                       ; $5d97: $41
    ret nz                                        ; $5d98: $c0

    ld b, c                                       ; $5d99: $41
    ret nz                                        ; $5d9a: $c0

    ld b, b                                       ; $5d9b: $40
    rst $38                                       ; $5d9c: $ff
    ld a, a                                       ; $5d9d: $7f
    rst $38                                       ; $5d9e: $ff
    nop                                           ; $5d9f: $00
    rst $38                                       ; $5da0: $ff
    nop                                           ; $5da1: $00
    cp $39                                        ; $5da2: $fe $39
    rst $28                                       ; $5da4: $ef
    add hl, sp                                    ; $5da5: $39
    ld d, l                                       ; $5da6: $55
    sub e                                         ; $5da7: $93
    cp $83                                        ; $5da8: $fe $83
    cp d                                          ; $5daa: $ba
    add $ff                                       ; $5dab: $c6 $ff
    rst $38                                       ; $5dad: $ff
    rst $38                                       ; $5dae: $ff
    nop                                           ; $5daf: $00
    and e                                         ; $5db0: $a3
    ld a, [c]                                     ; $5db1: $f2
    db $d3                                        ; $5db2: $d3
    ld a, [c]                                     ; $5db3: $f2
    inc hl                                        ; $5db4: $23
    ld a, [c]                                     ; $5db5: $f2
    inc bc                                        ; $5db6: $03
    ld [bc], a                                    ; $5db7: $02
    inc bc                                        ; $5db8: $03
    ld [bc], a                                    ; $5db9: $02
    inc bc                                        ; $5dba: $03
    ld [bc], a                                    ; $5dbb: $02
    rst $38                                       ; $5dbc: $ff
    cp $ff                                        ; $5dbd: $fe $ff
    nop                                           ; $5dbf: $00
    rst $38                                       ; $5dc0: $ff
    nop                                           ; $5dc1: $00
    rst $38                                       ; $5dc2: $ff
    ld a, a                                       ; $5dc3: $7f
    ret nz                                        ; $5dc4: $c0

    ld a, a                                       ; $5dc5: $7f
    ret nz                                        ; $5dc6: $c0

    ld a, a                                       ; $5dc7: $7f
    ret nz                                        ; $5dc8: $c0

    ld a, a                                       ; $5dc9: $7f
    ret nz                                        ; $5dca: $c0

    ld a, a                                       ; $5dcb: $7f
    ret nz                                        ; $5dcc: $c0

    ld a, a                                       ; $5dcd: $7f
    pop bc                                        ; $5dce: $c1
    ld a, a                                       ; $5dcf: $7f
    rst $38                                       ; $5dd0: $ff
    nop                                           ; $5dd1: $00
    rst $38                                       ; $5dd2: $ff
    rst $38                                       ; $5dd3: $ff
    rra                                           ; $5dd4: $1f
    rst $38                                       ; $5dd5: $ff
    ccf                                           ; $5dd6: $3f
    ldh [$3d], a                                  ; $5dd7: $e0 $3d
    db $fc                                        ; $5dd9: $fc
    ld a, [bc]                                    ; $5dda: $0a
    ld hl, sp-$0b                                 ; $5ddb: $f8 $f5
    pop af                                        ; $5ddd: $f1
    ld l, e                                       ; $5dde: $6b
    inc bc                                        ; $5ddf: $03
    rst $38                                       ; $5de0: $ff
    nop                                           ; $5de1: $00
    rst $38                                       ; $5de2: $ff
    cp $c3                                        ; $5de3: $fe $c3
    cp $c3                                        ; $5de5: $fe $c3
    ld a, [hl]                                    ; $5de7: $7e
    jp $c37e                                      ; $5de8: $c3 $7e $c3


    ld a, [hl]                                    ; $5deb: $7e
    jp $c37e                                      ; $5dec: $c3 $7e $c3


    ld a, [hl]                                    ; $5def: $7e
    jp nz, $c37e                                  ; $5df0: $c2 $7e $c3

    ld a, [hl]                                    ; $5df3: $7e
    jp $c27e                                      ; $5df4: $c3 $7e $c2


    ld a, [hl]                                    ; $5df7: $7e
    pop bc                                        ; $5df8: $c1
    ld a, a                                       ; $5df9: $7f
    ret nz                                        ; $5dfa: $c0

    ld a, a                                       ; $5dfb: $7f
    ret nz                                        ; $5dfc: $c0

    ld a, a                                       ; $5dfd: $7f
    ret nz                                        ; $5dfe: $c0

    ld a, a                                       ; $5dff: $7f
    push af                                       ; $5e00: $f5
    rlca                                          ; $5e01: $07
    db $fd                                        ; $5e02: $fd
    ld h, a                                       ; $5e03: $67
    db $fc                                        ; $5e04: $fc
    ld h, a                                       ; $5e05: $67
    db $f4                                        ; $5e06: $f4
    rlca                                          ; $5e07: $07
    ld l, b                                       ; $5e08: $68
    rrca                                          ; $5e09: $0f
    ldh a, [rIE]                                  ; $5e0a: $f0 $ff
    ld [bc], a                                    ; $5e0c: $02
    rst $38                                       ; $5e0d: $ff
    rlca                                          ; $5e0e: $07
    db $fd                                        ; $5e0f: $fd
    jp $837e                                      ; $5e10: $c3 $7e $83


    cp $03                                        ; $5e13: $fe $03
    cp $03                                        ; $5e15: $fe $03
    cp $03                                        ; $5e17: $fe $03
    cp $03                                        ; $5e19: $fe $03
    cp $03                                        ; $5e1b: $fe $03
    cp $03                                        ; $5e1d: $fe $03
    cp $df                                        ; $5e1f: $fe $df
    ld a, a                                       ; $5e21: $7f
    db $dd                                        ; $5e22: $dd
    ld [hl], b                                    ; $5e23: $70
    rst $18                                       ; $5e24: $df
    ld [hl], l                                    ; $5e25: $75
    rst $18                                       ; $5e26: $df
    ld [hl], l                                    ; $5e27: $75
    rst $18                                       ; $5e28: $df
    ld [hl], l                                    ; $5e29: $75
    rst $18                                       ; $5e2a: $df
    ld [hl], l                                    ; $5e2b: $75
    rst $38                                       ; $5e2c: $ff
    ld a, a                                       ; $5e2d: $7f
    rst $38                                       ; $5e2e: $ff
    nop                                           ; $5e2f: $00
    cp a                                          ; $5e30: $bf
    db $fd                                        ; $5e31: $fd
    ld [hl], a                                    ; $5e32: $77
    ld b, l                                       ; $5e33: $45
    rst $38                                       ; $5e34: $ff
    ld [hl], l                                    ; $5e35: $75
    rst $18                                       ; $5e36: $df
    ld b, l                                       ; $5e37: $45
    rst $38                                       ; $5e38: $ff
    ld d, l                                       ; $5e39: $55
    rst $10                                       ; $5e3a: $d7
    ld b, l                                       ; $5e3b: $45
    rst $38                                       ; $5e3c: $ff
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    nop                                           ; $5e3f: $00
    db $e3                                        ; $5e40: $e3
    cp $53                                        ; $5e41: $fe $53
    ld e, $f3                                     ; $5e43: $1e $f3
    ld e, [hl]                                    ; $5e45: $5e
    di                                            ; $5e46: $f3
    ld e, $f3                                     ; $5e47: $1e $f3
    ld a, [hl]                                    ; $5e49: $7e
    ld [hl], e                                    ; $5e4a: $73
    ld e, $ff                                     ; $5e4b: $1e $ff
    cp $ff                                        ; $5e4d: $fe $ff
    nop                                           ; $5e4f: $00
    rst $38                                       ; $5e50: $ff
    nop                                           ; $5e51: $00
    rst $38                                       ; $5e52: $ff
    ld a, a                                       ; $5e53: $7f
    ret nz                                        ; $5e54: $c0

    ld a, a                                       ; $5e55: $7f
    ret nz                                        ; $5e56: $c0

    ld a, a                                       ; $5e57: $7f
    ret nz                                        ; $5e58: $c0

    ld a, a                                       ; $5e59: $7f
    ret nz                                        ; $5e5a: $c0

    ld a, a                                       ; $5e5b: $7f
    pop bc                                        ; $5e5c: $c1
    ld a, a                                       ; $5e5d: $7f
    jp $ff7e                                      ; $5e5e: $c3 $7e $ff


    nop                                           ; $5e61: $00
    rst $38                                       ; $5e62: $ff
    rst $38                                       ; $5e63: $ff
    rrca                                          ; $5e64: $0f
    rst $38                                       ; $5e65: $ff
    ld d, $f0                                     ; $5e66: $16 $f0
    cpl                                           ; $5e68: $2f
    ldh [$3f], a                                  ; $5e69: $e0 $3f
    and $3f                                       ; $5e6b: $e6 $3f
    and $af                                       ; $5e6d: $e6 $af
    ldh [rIE], a                                  ; $5e6f: $e0 $ff
    nop                                           ; $5e71: $00
    rst $38                                       ; $5e72: $ff
    cp $03                                        ; $5e73: $fe $03
    cp $83                                        ; $5e75: $fe $83
    cp $43                                        ; $5e77: $fe $43
    ld a, [hl]                                    ; $5e79: $7e
    jp $c37e                                      ; $5e7a: $c3 $7e $c3


    ld a, [hl]                                    ; $5e7d: $7e
    ld b, e                                       ; $5e7e: $43
    ld a, [hl]                                    ; $5e7f: $7e
    pop bc                                        ; $5e80: $c1
    ld a, a                                       ; $5e81: $7f
    ret nz                                        ; $5e82: $c0

    ld a, a                                       ; $5e83: $7f
    pop bc                                        ; $5e84: $c1
    ld a, a                                       ; $5e85: $7f
    jp nz, $c37e                                  ; $5e86: $c2 $7e $c3

    ld a, [hl]                                    ; $5e89: $7e
    pop bc                                        ; $5e8a: $c1
    ld a, a                                       ; $5e8b: $7f
    ret nz                                        ; $5e8c: $c0

    ld a, a                                       ; $5e8d: $7f
    ldh a, [$7f]                                  ; $5e8e: $f0 $7f
    sub $40                                       ; $5e90: $d6 $40
    rst $28                                       ; $5e92: $ef
    adc a                                         ; $5e93: $8f
    ld [hl], b                                    ; $5e94: $70
    rra                                           ; $5e95: $1f
    cp b                                          ; $5e96: $b8
    cpl                                           ; $5e97: $2f
    ld e, h                                       ; $5e98: $5c
    ld [hl], a                                    ; $5e99: $77
    adc b                                         ; $5e9a: $88
    rst $38                                       ; $5e9b: $ff
    nop                                           ; $5e9c: $00
    rst $38                                       ; $5e9d: $ff
    nop                                           ; $5e9e: $00
    rst $38                                       ; $5e9f: $ff
    add e                                         ; $5ea0: $83
    cp $03                                        ; $5ea1: $fe $03
    cp $03                                        ; $5ea3: $fe $03
    cp $03                                        ; $5ea5: $fe $03
    cp $03                                        ; $5ea7: $fe $03
    cp $03                                        ; $5ea9: $fe $03
    cp $23                                        ; $5eab: $fe $23
    cp $73                                        ; $5ead: $fe $73
    sbc $de                                       ; $5eaf: $de $de
    ld c, a                                       ; $5eb1: $4f
    ld [hl], l                                    ; $5eb2: $75
    ld d, c                                       ; $5eb3: $51
    rst $38                                       ; $5eb4: $ff
    add l                                         ; $5eb5: $85
    ld a, a                                       ; $5eb6: $7f
    ld d, c                                       ; $5eb7: $51
    rst $38                                       ; $5eb8: $ff
    ld d, a                                       ; $5eb9: $57
    rst $30                                       ; $5eba: $f7
    ld d, c                                       ; $5ebb: $51
    rst $38                                       ; $5ebc: $ff
    ld a, a                                       ; $5ebd: $7f
    rst $38                                       ; $5ebe: $ff
    nop                                           ; $5ebf: $00
    ei                                            ; $5ec0: $fb
    rst $38                                       ; $5ec1: $ff
    push de                                       ; $5ec2: $d5
    inc b                                         ; $5ec3: $04
    rst $38                                       ; $5ec4: $ff
    ld d, a                                       ; $5ec5: $57
    db $fd                                        ; $5ec6: $fd
    ld d, h                                       ; $5ec7: $54
    rst $38                                       ; $5ec8: $ff
    ld d, l                                       ; $5ec9: $55
    db $fd                                        ; $5eca: $fd
    ld d, h                                       ; $5ecb: $54
    rst $38                                       ; $5ecc: $ff
    rst $38                                       ; $5ecd: $ff
    rst $38                                       ; $5ece: $ff
    nop                                           ; $5ecf: $00
    cp $de                                        ; $5ed0: $fe $de
    ld [hl], l                                    ; $5ed2: $75
    ld d, c                                       ; $5ed3: $51
    rst $38                                       ; $5ed4: $ff
    ld d, l                                       ; $5ed5: $55
    rst $38                                       ; $5ed6: $ff
    ld d, c                                       ; $5ed7: $51
    rst $38                                       ; $5ed8: $ff
    ld d, a                                       ; $5ed9: $57
    ld [hl], a                                    ; $5eda: $77
    ld d, c                                       ; $5edb: $51
    cp $fe                                        ; $5edc: $fe $fe
    rst $38                                       ; $5ede: $ff
    nop                                           ; $5edf: $00
    rst $38                                       ; $5ee0: $ff
    nop                                           ; $5ee1: $00
    rst $38                                       ; $5ee2: $ff
    ld a, a                                       ; $5ee3: $7f
    ret nz                                        ; $5ee4: $c0

    ld a, a                                       ; $5ee5: $7f
    pop bc                                        ; $5ee6: $c1
    ld a, a                                       ; $5ee7: $7f
    pop bc                                        ; $5ee8: $c1
    ld a, a                                       ; $5ee9: $7f
    pop bc                                        ; $5eea: $c1
    ld a, a                                       ; $5eeb: $7f
    pop bc                                        ; $5eec: $c1
    ld a, a                                       ; $5eed: $7f
    pop bc                                        ; $5eee: $c1
    ld a, a                                       ; $5eef: $7f
    rst $38                                       ; $5ef0: $ff
    nop                                           ; $5ef1: $00
    rst $38                                       ; $5ef2: $ff
    rst $38                                       ; $5ef3: $ff
    add $ff                                       ; $5ef4: $c6 $ff
    add hl, hl                                    ; $5ef6: $29
    db $fd                                        ; $5ef7: $fd
    xor e                                         ; $5ef8: $ab
    add hl, sp                                    ; $5ef9: $39
    rst $28                                       ; $5efa: $ef
    add hl, sp                                    ; $5efb: $39
    push af                                       ; $5efc: $f5
    add hl, sp                                    ; $5efd: $39
    push af                                       ; $5efe: $f5
    inc sp                                        ; $5eff: $33
    rst $38                                       ; $5f00: $ff
    nop                                           ; $5f01: $00
    rst $38                                       ; $5f02: $ff
    cp $03                                        ; $5f03: $fe $03
    cp $03                                        ; $5f05: $fe $03
    cp $63                                        ; $5f07: $fe $63
    cp $b3                                        ; $5f09: $fe $b3
    sbc [hl]                                      ; $5f0b: $9e
    ld d, e                                       ; $5f0c: $53
    sbc [hl]                                      ; $5f0d: $9e
    ld e, e                                       ; $5f0e: $5b
    ld a, $c1                                     ; $5f0f: $3e $c1
    ld a, a                                       ; $5f11: $7f
    pop bc                                        ; $5f12: $c1
    ld a, a                                       ; $5f13: $7f
    reti                                          ; $5f14: $d9


    ld a, a                                       ; $5f15: $7f
    push hl                                       ; $5f16: $e5
    ld [hl], a                                    ; $5f17: $77
    db $eb                                        ; $5f18: $eb
    ld [hl], e                                    ; $5f19: $73
    push de                                       ; $5f1a: $d5
    ld [hl], c                                    ; $5f1b: $71
    jp nc, $cf7a                                  ; $5f1c: $d2 $7a $cf

    ld a, l                                       ; $5f1f: $7d
    xor $33                                       ; $5f20: $ee $33
    ld l, d                                       ; $5f22: $6a
    ld [hl-], a                                   ; $5f23: $32
    ld a, e                                       ; $5f24: $7b
    or [hl]                                       ; $5f25: $b6
    rst $30                                       ; $5f26: $f7
    add [hl]                                      ; $5f27: $86
    ld a, [hl]                                    ; $5f28: $7e
    nop                                           ; $5f29: $00
    ld a, a                                       ; $5f2a: $7f
    add b                                         ; $5f2b: $80
    cp a                                          ; $5f2c: $bf
    ret nz                                        ; $5f2d: $c0

    ld c, l                                       ; $5f2e: $4d
    ld c, h                                       ; $5f2f: $4c
    or a                                          ; $5f30: $b7
    ld [hl], $af                                  ; $5f31: $36 $af
    ld h, [hl]                                    ; $5f33: $66
    ld d, a                                       ; $5f34: $57
    ld l, [hl]                                    ; $5f35: $6e
    ld c, e                                       ; $5f36: $4b
    adc $eb                                       ; $5f37: $ce $eb
    sbc $d3                                       ; $5f39: $de $d3
    ld e, $d3                                     ; $5f3b: $1e $d3
    ld a, $a3                                     ; $5f3d: $3e $a3
    ld a, $cf                                     ; $5f3f: $3e $cf
    ld a, l                                       ; $5f41: $7d
    rst $00                                       ; $5f42: $c7
    ld a, l                                       ; $5f43: $7d
    rst $00                                       ; $5f44: $c7
    ld a, l                                       ; $5f45: $7d
    rst $00                                       ; $5f46: $c7
    ld a, l                                       ; $5f47: $7d
    rst $00                                       ; $5f48: $c7
    ld a, l                                       ; $5f49: $7d
    rst $00                                       ; $5f4a: $c7
    ld a, l                                       ; $5f4b: $7d
    rst $38                                       ; $5f4c: $ff
    ld a, a                                       ; $5f4d: $7f
    rst $38                                       ; $5f4e: $ff
    nop                                           ; $5f4f: $00
    rst $30                                       ; $5f50: $f7
    di                                            ; $5f51: $f3
    ld e, a                                       ; $5f52: $5f
    ld d, $ff                                     ; $5f53: $16 $ff
    ld b, b                                       ; $5f55: $40
    rst $38                                       ; $5f56: $ff
    ld d, $ff                                     ; $5f57: $16 $ff
    halt                                          ; $5f59: $76
    ld a, a                                       ; $5f5a: $7f
    ld d, $ff                                     ; $5f5b: $16 $ff
    rst $38                                       ; $5f5d: $ff
    rst $38                                       ; $5f5e: $ff
    nop                                           ; $5f5f: $00
    inc hl                                        ; $5f60: $23
    ld a, [hl]                                    ; $5f61: $7e
    jp $c3fe                                      ; $5f62: $c3 $fe $c3


    ld a, [hl]                                    ; $5f65: $7e
    add e                                         ; $5f66: $83
    cp $83                                        ; $5f67: $fe $83
    cp $83                                        ; $5f69: $fe $83
    cp $ff                                        ; $5f6b: $fe $ff
    cp $ff                                        ; $5f6d: $fe $ff
    nop                                           ; $5f6f: $00
    rst $38                                       ; $5f70: $ff
    nop                                           ; $5f71: $00
    rst $38                                       ; $5f72: $ff
    ld a, a                                       ; $5f73: $7f
    ret nz                                        ; $5f74: $c0

    ld a, a                                       ; $5f75: $7f
    ret nz                                        ; $5f76: $c0

    ld a, a                                       ; $5f77: $7f
    add $7f                                       ; $5f78: $c6 $7f
    call $ca79                                    ; $5f7a: $cd $79 $ca
    ld a, c                                       ; $5f7d: $79
    jp c, $ff7c                                   ; $5f7e: $da $7c $ff

    nop                                           ; $5f81: $00
    rst $38                                       ; $5f82: $ff
    rst $38                                       ; $5f83: $ff
    ld h, e                                       ; $5f84: $63
    rst $38                                       ; $5f85: $ff
    call nc, $d5bf                                ; $5f86: $d4 $bf $d5
    sbc h                                         ; $5f89: $9c
    rst $30                                       ; $5f8a: $f7
    sbc h                                         ; $5f8b: $9c
    xor a                                         ; $5f8c: $af
    sbc h                                         ; $5f8d: $9c
    xor a                                         ; $5f8e: $af
    call z, Call_000_00ff                         ; $5f8f: $cc $ff $00
    rst $38                                       ; $5f92: $ff
    cp $03                                        ; $5f93: $fe $03
    cp $83                                        ; $5f95: $fe $83
    cp $83                                        ; $5f97: $fe $83
    cp $83                                        ; $5f99: $fe $83
    cp $83                                        ; $5f9b: $fe $83
    cp $83                                        ; $5f9d: $fe $83
    cp $ed                                        ; $5f9f: $fe $ed
    ld l, h                                       ; $5fa1: $6c
    push hl                                       ; $5fa2: $e5
    ld h, [hl]                                    ; $5fa3: $66
    ld [$d276], a                                 ; $5fa4: $ea $76 $d2
    ld [hl], e                                    ; $5fa7: $73
    rst $10                                       ; $5fa8: $d7
    ld a, e                                       ; $5fa9: $7b
    bit 7, b                                      ; $5faa: $cb $78
    bit 7, h                                      ; $5fac: $cb $7c
    push bc                                       ; $5fae: $c5
    ld a, h                                       ; $5faf: $7c
    ld [hl], a                                    ; $5fb0: $77
    call z, Call_006_4c56                         ; $5fb1: $cc $56 $4c
    sbc $6d                                       ; $5fb4: $de $6d
    rst $28                                       ; $5fb6: $ef
    ld h, c                                       ; $5fb7: $61
    ld a, [hl]                                    ; $5fb8: $7e
    nop                                           ; $5fb9: $00
    cp $03                                        ; $5fba: $fe $03
    rst $38                                       ; $5fbc: $ff
    dec b                                         ; $5fbd: $05
    rst $38                                       ; $5fbe: $ff
    dec b                                         ; $5fbf: $05
    add e                                         ; $5fc0: $83
    cp $83                                        ; $5fc1: $fe $83
    cp $9b                                        ; $5fc3: $fe $9b
    cp $a7                                        ; $5fc5: $fe $a7
    xor $c7                                       ; $5fc7: $ee $c7
    adc $bb                                       ; $5fc9: $ce $bb
    adc [hl]                                      ; $5fcb: $8e
    ld l, e                                       ; $5fcc: $6b
    ld e, $d3                                     ; $5fcd: $1e $d3
    ld e, $de                                     ; $5fcf: $1e $de
    ld a, [hl]                                    ; $5fd1: $7e
    rst $18                                       ; $5fd2: $df
    ld [hl], l                                    ; $5fd3: $75
    rst $18                                       ; $5fd4: $df
    ld [hl], e                                    ; $5fd5: $73
    db $dd                                        ; $5fd6: $dd
    ld [hl], a                                    ; $5fd7: $77
    db $dd                                        ; $5fd8: $dd
    ld [hl], a                                    ; $5fd9: $77
    db $dd                                        ; $5fda: $dd
    ld [hl], a                                    ; $5fdb: $77
    rst $38                                       ; $5fdc: $ff
    ld a, a                                       ; $5fdd: $7f
    rst $38                                       ; $5fde: $ff
    nop                                           ; $5fdf: $00
    cp a                                          ; $5fe0: $bf
    cp l                                          ; $5fe1: $bd
    rst $10                                       ; $5fe2: $d7
    ld b, h                                       ; $5fe3: $44
    rst $38                                       ; $5fe4: $ff
    ld d, l                                       ; $5fe5: $55
    rst $18                                       ; $5fe6: $df
    ld b, l                                       ; $5fe7: $45
    rst $38                                       ; $5fe8: $ff
    ld [hl], l                                    ; $5fe9: $75
    rst $30                                       ; $5fea: $f7
    ld b, l                                       ; $5feb: $45
    rst $38                                       ; $5fec: $ff
    rst $38                                       ; $5fed: $ff
    rst $38                                       ; $5fee: $ff
    nop                                           ; $5fef: $00
    db $d3                                        ; $5ff0: $d3
    cp [hl]                                       ; $5ff1: $be
    ld a, e                                       ; $5ff2: $7b
    ld l, [hl]                                    ; $5ff3: $6e
    rst $38                                       ; $5ff4: $ff
    ld b, [hl]                                    ; $5ff5: $46
    ei                                            ; $5ff6: $fb
    ld l, [hl]                                    ; $5ff7: $6e
    ei                                            ; $5ff8: $fb
    ld l, [hl]                                    ; $5ff9: $6e
    ei                                            ; $5ffa: $fb
    ld l, [hl]                                    ; $5ffb: $6e
    rst $38                                       ; $5ffc: $ff
    cp $ff                                        ; $5ffd: $fe $ff
    nop                                           ; $5fff: $00
    ccf                                           ; $6000: $3f
    ld c, d                                       ; $6001: $4a
    rst $38                                       ; $6002: $ff
    ld l, e                                       ; $6003: $6b
    rst $18                                       ; $6004: $df
    jr jr_006_6007                                ; $6005: $18 $00

jr_006_6007:
    nop                                           ; $6007: $00

    db $7f, $32, $ff, $6b, $5f, $01, $00, $00, $7f, $32, $ff, $6b, $5f, $01, $00, $00

    sbc [hl]                                      ; $6018: $9e
    ld [hl+], a                                   ; $6019: $22
    rst $38                                       ; $601a: $ff
    ld l, e                                       ; $601b: $6b
    rra                                           ; $601c: $1f
    ld [bc], a                                    ; $601d: $02
    nop                                           ; $601e: $00
    nop                                           ; $601f: $00

    db $1f, $5e, $ff, $6b, $d8, $7c, $00, $00, $3f, $4a, $ff, $6b, $ff, $20, $00, $00
    db $1f, $5e, $ff, $6b, $d8, $7c, $00, $00, $3f, $4a, $ff, $6b, $ff, $20, $00, $00

    push af                                       ; $6040: $f5
    push bc                                       ; $6041: $c5
    push de                                       ; $6042: $d5
    push hl                                       ; $6043: $e5
    push de                                       ; $6044: $d5
    ld d, $00                                     ; $6045: $16 $00
    dec a                                         ; $6047: $3d
    dec a                                         ; $6048: $3d
    dec a                                         ; $6049: $3d
    ld e, a                                       ; $604a: $5f
    ld a, c                                       ; $604b: $79
    ld [hl+], a                                   ; $604c: $22
    inc a                                         ; $604d: $3c
    ld [hl+], a                                   ; $604e: $22
    inc a                                         ; $604f: $3c
    ld [hl+], a                                   ; $6050: $22
    inc a                                         ; $6051: $3c
    add hl, de                                    ; $6052: $19
    ld [hl+], a                                   ; $6053: $22
    inc a                                         ; $6054: $3c
    ld [hl+], a                                   ; $6055: $22
    inc a                                         ; $6056: $3c
    ld [hl+], a                                   ; $6057: $22
    inc a                                         ; $6058: $3c
    add hl, de                                    ; $6059: $19
    ld [hl+], a                                   ; $605a: $22
    inc a                                         ; $605b: $3c
    ld [hl+], a                                   ; $605c: $22
    inc a                                         ; $605d: $3c
    ld [hl+], a                                   ; $605e: $22
    pop hl                                        ; $605f: $e1
    ld a, b                                       ; $6060: $78
    ld [hl+], a                                   ; $6061: $22
    ld [hl+], a                                   ; $6062: $22
    ld [hl+], a                                   ; $6063: $22
    add hl, de                                    ; $6064: $19
    ld [hl+], a                                   ; $6065: $22
    ld [hl+], a                                   ; $6066: $22
    ld [hl+], a                                   ; $6067: $22
    add hl, de                                    ; $6068: $19
    ld [hl+], a                                   ; $6069: $22
    ld [hl+], a                                   ; $606a: $22
    ld [hl+], a                                   ; $606b: $22
    pop hl                                        ; $606c: $e1
    pop de                                        ; $606d: $d1
    pop bc                                        ; $606e: $c1
    pop af                                        ; $606f: $f1
    ret                                           ; $6070: $c9


    call Call_006_60e6                            ; $6071: $cd $e6 $60
    ld a, $1f                                     ; $6074: $3e $1f
    ld hl, $66f6                                  ; $6076: $21 $f6 $66
    call Call_000_23e8                            ; $6079: $cd $e8 $23
    ld a, $1e                                     ; $607c: $3e $1e
    ld hl, $6a4e                                  ; $607e: $21 $4e $6a
    call Call_000_23e8                            ; $6081: $cd $e8 $23
    call Call_006_6914                            ; $6084: $cd $14 $69
    call Call_006_6d9a                            ; $6087: $cd $9a $6d
    ld a, $1b                                     ; $608a: $3e $1b
    ld hl, $6e4d                                  ; $608c: $21 $4d $6e
    call Call_000_23e8                            ; $608f: $cd $e8 $23
    call Call_006_6ade                            ; $6092: $cd $de $6a
    ld c, $10                                     ; $6095: $0e $10
    call Call_000_25af                            ; $6097: $cd $af $25
    call Call_000_2625                            ; $609a: $cd $25 $26
    ld a, $1d                                     ; $609d: $3e $1d
    ld hl, $65d9                                  ; $609f: $21 $d9 $65
    call Call_000_23e8                            ; $60a2: $cd $e8 $23
    ld a, $1c                                     ; $60a5: $3e $1c
    ld hl, $6617                                  ; $60a7: $21 $17 $66
    call Call_000_23e8                            ; $60aa: $cd $e8 $23

jr_006_60ad:
    call Call_000_2e3b                            ; $60ad: $cd $3b $2e
    call Call_006_6778                            ; $60b0: $cd $78 $67
    cp $ff                                        ; $60b3: $fe $ff
    jr z, jr_006_60bd                             ; $60b5: $28 $06

    cp $fe                                        ; $60b7: $fe $fe
    jr nz, jr_006_60bd                            ; $60b9: $20 $02

    jr jr_006_60ad                                ; $60bb: $18 $f0

jr_006_60bd:
    push af                                       ; $60bd: $f5
    ld hl, $66f6                                  ; $60be: $21 $f6 $66
    call Call_000_2449                            ; $60c1: $cd $49 $24
    ld hl, $65d9                                  ; $60c4: $21 $d9 $65
    call Call_000_2449                            ; $60c7: $cd $49 $24
    ld hl, $6a4e                                  ; $60ca: $21 $4e $6a
    call Call_000_2449                            ; $60cd: $cd $49 $24
    ld hl, $6617                                  ; $60d0: $21 $17 $66
    call Call_000_2449                            ; $60d3: $cd $49 $24
    ld hl, $6e4d                                  ; $60d6: $21 $4d $6e
    call Call_000_2449                            ; $60d9: $cd $49 $24
    ld c, $10                                     ; $60dc: $0e $10
    call Call_000_25a1                            ; $60de: $cd $a1 $25
    call Call_000_2625                            ; $60e1: $cd $25 $26
    pop af                                        ; $60e4: $f1
    ret                                           ; $60e5: $c9


Call_006_60e6:
    push bc                                       ; $60e6: $c5
    ld a, $06                                     ; $60e7: $3e $06
    ldh [$96], a                                  ; $60e9: $e0 $96
    ldh [rSVBK], a                                ; $60eb: $e0 $70
    ld a, l                                       ; $60ed: $7d
    ld [$d216], a                                 ; $60ee: $ea $16 $d2
    ld a, h                                       ; $60f1: $7c
    ld [$d217], a                                 ; $60f2: $ea $17 $d2
    xor a                                         ; $60f5: $af
    ldh [$8a], a                                  ; $60f6: $e0 $8a
    ldh [$8b], a                                  ; $60f8: $e0 $8b
    call Call_000_0341                            ; $60fa: $cd $41 $03
    call Call_000_23b6                            ; $60fd: $cd $b6 $23
    call Call_006_68f8                            ; $6100: $cd $f8 $68
    ld a, $01                                     ; $6103: $3e $01
    ldh [$96], a                                  ; $6105: $e0 $96
    ldh [rSVBK], a                                ; $6107: $e0 $70
    ld hl, $4c3e                                  ; $6109: $21 $3e $4c
    ld de, $d000                                  ; $610c: $11 $00 $d0
    call Call_000_0234                            ; $610f: $cd $34 $02
    ld hl, $d000                                  ; $6112: $21 $00 $d0
    ld de, $a200                                  ; $6115: $11 $00 $a2
    ld c, $06                                     ; $6118: $0e $06
    call Call_000_04db                            ; $611a: $cd $db $04
    ld hl, $4c40                                  ; $611d: $21 $40 $4c
    ld de, $d000                                  ; $6120: $11 $00 $d0
    call Call_000_0234                            ; $6123: $cd $34 $02
    ld hl, $d000                                  ; $6126: $21 $00 $d0
    ld de, $a260                                  ; $6129: $11 $60 $a2
    ld c, $06                                     ; $612c: $0e $06
    call Call_000_04db                            ; $612e: $cd $db $04
    ld hl, $6255                                  ; $6131: $21 $55 $62
    ld de, $0a01                                  ; $6134: $11 $01 $0a
    call Call_000_0595                            ; $6137: $cd $95 $05
    ld a, $06                                     ; $613a: $3e $06
    ldh [$96], a                                  ; $613c: $e0 $96
    ldh [rSVBK], a                                ; $613e: $e0 $70
    ld hl, $d218                                  ; $6140: $21 $18 $d2
    xor a                                         ; $6143: $af
    ld c, $08                                     ; $6144: $0e $08

jr_006_6146:
    ld [hl+], a                                   ; $6146: $22
    dec c                                         ; $6147: $0d
    jr nz, jr_006_6146                            ; $6148: $20 $fc

    ld hl, $d218                                  ; $614a: $21 $18 $d2
    push hl                                       ; $614d: $e5
    ld hl, $6255                                  ; $614e: $21 $55 $62
    ld a, [hl+]                                   ; $6151: $2a
    ld d, [hl]                                    ; $6152: $56
    ld e, a                                       ; $6153: $5f
    pop hl                                        ; $6154: $e1
    ld [hl], e                                    ; $6155: $73
    inc hl                                        ; $6156: $23
    ld [hl], d                                    ; $6157: $72
    inc hl                                        ; $6158: $23
    push hl                                       ; $6159: $e5
    ld hl, $6255                                  ; $615a: $21 $55 $62
    ld de, $0002                                  ; $615d: $11 $02 $00
    add hl, de                                    ; $6160: $19
    ld a, [hl+]                                   ; $6161: $2a
    ld d, [hl]                                    ; $6162: $56
    ld e, a                                       ; $6163: $5f
    pop hl                                        ; $6164: $e1
    ld [hl], e                                    ; $6165: $73
    inc hl                                        ; $6166: $23
    ld [hl], d                                    ; $6167: $72
    inc hl                                        ; $6168: $23
    push hl                                       ; $6169: $e5
    ld hl, $6255                                  ; $616a: $21 $55 $62
    ld de, $0004                                  ; $616d: $11 $04 $00
    add hl, de                                    ; $6170: $19
    ld a, [hl+]                                   ; $6171: $2a
    ld d, [hl]                                    ; $6172: $56
    ld e, a                                       ; $6173: $5f
    pop hl                                        ; $6174: $e1
    ld [hl], e                                    ; $6175: $73
    inc hl                                        ; $6176: $23
    ld [hl], d                                    ; $6177: $72
    ld a, $01                                     ; $6178: $3e $01
    ldh [$96], a                                  ; $617a: $e0 $96
    ldh [rSVBK], a                                ; $617c: $e0 $70
    pop af                                        ; $617e: $f1
    or a                                          ; $617f: $b7
    jr nz, jr_006_6187                            ; $6180: $20 $05

    ld hl, $4c3a                                  ; $6182: $21 $3a $4c
    jr jr_006_618a                                ; $6185: $18 $03

jr_006_6187:
    ld hl, $4c3c                                  ; $6187: $21 $3c $4c

jr_006_618a:
    ld de, $d000                                  ; $618a: $11 $00 $d0
    call Call_000_0234                            ; $618d: $cd $34 $02
    ld hl, $d000                                  ; $6190: $21 $00 $d0
    ld de, $8e00                                  ; $6193: $11 $00 $8e
    ld c, $14                                     ; $6196: $0e $14
    call Call_000_04db                            ; $6198: $cd $db $04
    ld hl, $624d                                  ; $619b: $21 $4d $62
    ld de, $0801                                  ; $619e: $11 $01 $08
    call Call_000_0595                            ; $61a1: $cd $95 $05
    ld hl, $4c42                                  ; $61a4: $21 $42 $4c
    ld de, $d000                                  ; $61a7: $11 $00 $d0
    call Call_000_0234                            ; $61aa: $cd $34 $02
    ld hl, $d000                                  ; $61ad: $21 $00 $d0
    ld de, $b000                                  ; $61b0: $11 $00 $b0
    ld c, $80                                     ; $61b3: $0e $80
    call Call_000_0468                            ; $61b5: $cd $68 $04
    call Call_006_6347                            ; $61b8: $cd $47 $63
    ld hl, $d800                                  ; $61bb: $21 $00 $d8
    ld de, $a800                                  ; $61be: $11 $00 $a8
    ld c, $80                                     ; $61c1: $0e $80
    call Call_000_04db                            ; $61c3: $cd $db $04
    ld hl, $4c48                                  ; $61c6: $21 $48 $4c
    ld de, $d000                                  ; $61c9: $11 $00 $d0
    call Call_000_0234                            ; $61cc: $cd $34 $02
    ld hl, $d000                                  ; $61cf: $21 $00 $d0
    ld de, $a8b0                                  ; $61d2: $11 $b0 $a8
    ld c, $06                                     ; $61d5: $0e $06
    call Call_000_04db                            ; $61d7: $cd $db $04
    ld hl, $625d                                  ; $61da: $21 $5d $62
    ld de, $0008                                  ; $61dd: $11 $08 $00
    call Call_000_0595                            ; $61e0: $cd $95 $05
    ld hl, $4c44                                  ; $61e3: $21 $44 $4c
    ld de, $d000                                  ; $61e6: $11 $00 $d0
    call Call_000_0234                            ; $61e9: $cd $34 $02
    call Call_006_63f1                            ; $61ec: $cd $f1 $63
    ld hl, $d000                                  ; $61ef: $21 $00 $d0
    ld de, $b800                                  ; $61f2: $11 $00 $b8
    ld c, $24                                     ; $61f5: $0e $24
    call Call_000_0468                            ; $61f7: $cd $68 $04
    ld hl, $4c46                                  ; $61fa: $21 $46 $4c
    ld de, $d200                                  ; $61fd: $11 $00 $d2
    call Call_000_0234                            ; $6200: $cd $34 $02
    call Call_006_6396                            ; $6203: $cd $96 $63
    ld hl, $d200                                  ; $6206: $21 $00 $d2
    ld de, $9800                                  ; $6209: $11 $00 $98
    ld c, $24                                     ; $620c: $0e $24
    call Call_000_04db                            ; $620e: $cd $db $04
    ld a, $01                                     ; $6211: $3e $01
    ldh [$96], a                                  ; $6213: $e0 $96
    ldh [rSVBK], a                                ; $6215: $e0 $70
    ld hl, $4c4a                                  ; $6217: $21 $4a $4c
    ld de, $d000                                  ; $621a: $11 $00 $d0
    call Call_000_0234                            ; $621d: $cd $34 $02
    ld hl, $d000                                  ; $6220: $21 $00 $d0
    ld de, $a920                                  ; $6223: $11 $20 $a9
    ld c, $0c                                     ; $6226: $0e $0c
    call Call_000_04db                            ; $6228: $cd $db $04
    ld hl, $629d                                  ; $622b: $21 $9d $62
    ld de, $0901                                  ; $622e: $11 $01 $09
    call Call_000_0595                            ; $6231: $cd $95 $05
    ld a, $06                                     ; $6234: $3e $06
    ldh [$96], a                                  ; $6236: $e0 $96
    ldh [rSVBK], a                                ; $6238: $e0 $70
    ld hl, $d220                                  ; $623a: $21 $20 $d2
    ld [hl], $1f                                  ; $623d: $36 $1f
    ld hl, $d221                                  ; $623f: $21 $21 $d2
    ld [hl], $1f                                  ; $6242: $36 $1f
    ld hl, $d222                                  ; $6244: $21 $22 $d2
    ld [hl], $00                                  ; $6247: $36 $00
    call Call_000_0371                            ; $6249: $cd $71 $03
    ret                                           ; $624c: $c9


    db $80, $7d, $1f, $68, $4c, $68, $00, $00, $08, $25, $ff, $03, $ff, $6b, $00, $00
    db $d6, $00, $ff, $6b, $58, $1e, $00, $00, $de, $7b, $8e, $7f, $80, $7e, $80, $7d
    db $f8, $03, $44, $03, $00, $02, $40, $01, $78, $3a, $ff, $6b, $80, $12, $00, $00
    db $9e, $22, $ff, $6b, $7e, $21, $00, $00, $7f, $32, $ff, $6b, $9f, $01, $00, $00
    db $3f, $4a, $ff, $6b, $ff, $20, $00, $00, $1f, $5e, $ff, $6b, $d8, $7c, $00, $00
    db $ff, $7f, $7b, $3c, $15, $18, $00, $00

Call_006_62a5:
    push af                                       ; $62a5: $f5
    push bc                                       ; $62a6: $c5
    push de                                       ; $62a7: $d5
    push hl                                       ; $62a8: $e5
    ld a, $06                                     ; $62a9: $3e $06
    ldh [$96], a                                  ; $62ab: $e0 $96
    ldh [rSVBK], a                                ; $62ad: $e0 $70
    ld a, [$d214]                                 ; $62af: $fa $14 $d2
    ld c, a                                       ; $62b2: $4f
    call Call_006_64f8                            ; $62b3: $cd $f8 $64
    ld c, $00                                     ; $62b6: $0e $00

jr_006_62b8:
    call Call_006_62cf                            ; $62b8: $cd $cf $62
    call Call_000_2e3b                            ; $62bb: $cd $3b $2e
    inc c                                         ; $62be: $0c
    ld a, c                                       ; $62bf: $79
    cp $03                                        ; $62c0: $fe $03
    jr nz, jr_006_62b8                            ; $62c2: $20 $f4

    ld a, $01                                     ; $62c4: $3e $01
    ldh [$96], a                                  ; $62c6: $e0 $96
    ldh [rSVBK], a                                ; $62c8: $e0 $70
    pop hl                                        ; $62ca: $e1
    pop de                                        ; $62cb: $d1
    pop bc                                        ; $62cc: $c1
    pop af                                        ; $62cd: $f1
    ret                                           ; $62ce: $c9


Call_006_62cf:
    push bc                                       ; $62cf: $c5
    ld a, c                                       ; $62d0: $79
    add a                                         ; $62d1: $87
    ld hl, $6323                                  ; $62d2: $21 $23 $63
    add l                                         ; $62d5: $85
    ld l, a                                       ; $62d6: $6f
    jr nc, jr_006_62da                            ; $62d7: $30 $01

    inc h                                         ; $62d9: $24

jr_006_62da:
    ld a, [hl+]                                   ; $62da: $2a
    ld h, [hl]                                    ; $62db: $66
    ld l, a                                       ; $62dc: $6f
    ld d, h                                       ; $62dd: $54
    ld e, l                                       ; $62de: $5d
    ld a, $06                                     ; $62df: $3e $06
    ldh [$96], a                                  ; $62e1: $e0 $96
    ldh [rSVBK], a                                ; $62e3: $e0 $70
    ld hl, $d20a                                  ; $62e5: $21 $0a $d2
    ld a, [$d214]                                 ; $62e8: $fa $14 $d2
    add l                                         ; $62eb: $85
    ld l, a                                       ; $62ec: $6f
    jr nc, jr_006_62f0                            ; $62ed: $30 $01

    inc h                                         ; $62ef: $24

jr_006_62f0:
    ld a, [hl+]                                   ; $62f0: $2a
    ld h, [hl]                                    ; $62f1: $66
    ld l, a                                       ; $62f2: $6f
    ld a, l                                       ; $62f3: $7d
    ld hl, $6465                                  ; $62f4: $21 $65 $64
    add l                                         ; $62f7: $85
    ld l, a                                       ; $62f8: $6f
    jr nc, jr_006_62fc                            ; $62f9: $30 $01

    inc h                                         ; $62fb: $24

jr_006_62fc:
    ld a, [hl+]                                   ; $62fc: $2a
    ld h, [hl]                                    ; $62fd: $66
    ld l, a                                       ; $62fe: $6f
    ld c, l                                       ; $62ff: $4d
    ld a, $01                                     ; $6300: $3e $01
    ldh [$96], a                                  ; $6302: $e0 $96
    ldh [rSVBK], a                                ; $6304: $e0 $70
    ld a, $00                                     ; $6306: $3e $00

jr_006_6308:
    ld hl, $d000                                  ; $6308: $21 $00 $d0
    add hl, de                                    ; $630b: $19
    ld [hl], c                                    ; $630c: $71
    ld hl, $d300                                  ; $630d: $21 $00 $d3
    add hl, de                                    ; $6310: $19
    ld [hl], b                                    ; $6311: $70
    inc a                                         ; $6312: $3c
    inc b                                         ; $6313: $04
    inc de                                        ; $6314: $13
    cp $03                                        ; $6315: $fe $03
    jr nz, jr_006_6308                            ; $6317: $20 $ef

    ld a, b                                       ; $6319: $78
    pop bc                                        ; $631a: $c1
    ld b, a                                       ; $631b: $47
    ld a, $06                                     ; $631c: $3e $06
    ldh [$96], a                                  ; $631e: $e0 $96
    ldh [rSVBK], a                                ; $6320: $e0 $70
    ret                                           ; $6322: $c9


    db $c1, $01, $e1, $01, $01, $02

Call_006_6329:
    push hl                                       ; $6329: $e5
    ld a, $01                                     ; $632a: $3e $01
    ldh [$96], a                                  ; $632c: $e0 $96
    ldh [rSVBK], a                                ; $632e: $e0 $70
    ld a, $00                                     ; $6330: $3e $00
    ld hl, $d9e0                                  ; $6332: $21 $e0 $d9
    ld de, $0000                                  ; $6335: $11 $00 $00

jr_006_6338:
    add hl, de                                    ; $6338: $19
    ld de, $0090                                  ; $6339: $11 $90 $00
    cp c                                          ; $633c: $b9
    inc a                                         ; $633d: $3c
    jr c, jr_006_6338                             ; $633e: $38 $f8

    ld d, h                                       ; $6340: $54
    ld e, l                                       ; $6341: $5d
    pop hl                                        ; $6342: $e1
    call Call_000_0234                            ; $6343: $cd $34 $02
    ret                                           ; $6346: $c9


Call_006_6347:
    ld c, $00                                     ; $6347: $0e $00

jr_006_6349:
    ld a, $06                                     ; $6349: $3e $06
    ldh [$96], a                                  ; $634b: $e0 $96
    ldh [rSVBK], a                                ; $634d: $e0 $70
    ld hl, $d20a                                  ; $634f: $21 $0a $d2
    ld a, c                                       ; $6352: $79
    add l                                         ; $6353: $85
    ld l, a                                       ; $6354: $6f
    jr nc, jr_006_6358                            ; $6355: $30 $01

    inc h                                         ; $6357: $24

jr_006_6358:
    ld a, [hl+]                                   ; $6358: $2a
    ld h, [hl]                                    ; $6359: $66
    ld l, a                                       ; $635a: $6f
    ld a, l                                       ; $635b: $7d
    cp $ff                                        ; $635c: $fe $ff
    jr z, jr_006_6371                             ; $635e: $28 $11

    and $0f                                       ; $6360: $e6 $0f
    add a                                         ; $6362: $87
    ld hl, $637e                                  ; $6363: $21 $7e $63
    add l                                         ; $6366: $85
    ld l, a                                       ; $6367: $6f
    jr nc, jr_006_636b                            ; $6368: $30 $01

    inc h                                         ; $636a: $24

jr_006_636b:
    ld a, [hl+]                                   ; $636b: $2a
    ld h, [hl]                                    ; $636c: $66
    ld l, a                                       ; $636d: $6f
    call Call_006_6329                            ; $636e: $cd $29 $63

jr_006_6371:
    inc c                                         ; $6371: $0c
    ld a, c                                       ; $6372: $79
    cp $0a                                        ; $6373: $fe $0a
    jr nz, jr_006_6349                            ; $6375: $20 $d2

    ld a, $01                                     ; $6377: $3e $01
    ldh [$96], a                                  ; $6379: $e0 $96
    ldh [rSVBK], a                                ; $637b: $e0 $70
    ret                                           ; $637d: $c9


    ld e, $4c                                     ; $637e: $1e $4c
    jr nz, jr_006_63ce                            ; $6380: $20 $4c

    ld [hl+], a                                   ; $6382: $22
    ld c, h                                       ; $6383: $4c
    inc h                                         ; $6384: $24
    ld c, h                                       ; $6385: $4c
    ld h, $4c                                     ; $6386: $26 $4c
    jr z, jr_006_63d6                             ; $6388: $28 $4c

    ld a, [hl+]                                   ; $638a: $2a
    ld c, h                                       ; $638b: $4c
    inc l                                         ; $638c: $2c
    ld c, h                                       ; $638d: $4c

    db $2e, $4c, $30, $4c

    inc [hl]                                      ; $6392: $34
    ld c, h                                       ; $6393: $4c

    db $32, $4c

Call_006_6396:
    ld a, $01                                     ; $6396: $3e $01
    ldh [$96], a                                  ; $6398: $e0 $96
    ldh [rSVBK], a                                ; $639a: $e0 $70
    ld c, $00                                     ; $639c: $0e $00

jr_006_639e:
    ld a, $06                                     ; $639e: $3e $06
    ldh [$96], a                                  ; $63a0: $e0 $96
    ldh [rSVBK], a                                ; $63a2: $e0 $70
    ld hl, $d20a                                  ; $63a4: $21 $0a $d2
    ld a, c                                       ; $63a7: $79
    add l                                         ; $63a8: $85
    ld l, a                                       ; $63a9: $6f
    jr nc, jr_006_63ad                            ; $63aa: $30 $01

    inc h                                         ; $63ac: $24

jr_006_63ad:
    ld a, [hl+]                                   ; $63ad: $2a
    ld h, [hl]                                    ; $63ae: $66
    ld l, a                                       ; $63af: $6f
    ld a, l                                       ; $63b0: $7d
    cp $ff                                        ; $63b1: $fe $ff
    jr z, jr_006_63be                             ; $63b3: $28 $09

    call Call_006_64f8                            ; $63b5: $cd $f8 $64
    call Call_006_6503                            ; $63b8: $cd $03 $65
    call Call_006_63cb                            ; $63bb: $cd $cb $63

jr_006_63be:
    inc c                                         ; $63be: $0c
    ld a, c                                       ; $63bf: $79
    cp $0a                                        ; $63c0: $fe $0a
    jr nz, jr_006_639e                            ; $63c2: $20 $da

    ld a, $01                                     ; $63c4: $3e $01
    ldh [$96], a                                  ; $63c6: $e0 $96
    ldh [rSVBK], a                                ; $63c8: $e0 $70
    ret                                           ; $63ca: $c9


Call_006_63cb:
    push af                                       ; $63cb: $f5
    push bc                                       ; $63cc: $c5
    push de                                       ; $63cd: $d5

jr_006_63ce:
    push hl                                       ; $63ce: $e5
    push hl                                       ; $63cf: $e5
    ld a, $01                                     ; $63d0: $3e $01
    ldh [$96], a                                  ; $63d2: $e0 $96
    ldh [rSVBK], a                                ; $63d4: $e0 $70

jr_006_63d6:
    ld c, $00                                     ; $63d6: $0e $00

jr_006_63d8:
    ld a, [hl+]                                   ; $63d8: $2a
    ld h, [hl]                                    ; $63d9: $66
    ld l, a                                       ; $63da: $6f
    ld de, $d200                                  ; $63db: $11 $00 $d2
    add hl, de                                    ; $63de: $19
    ld [hl], b                                    ; $63df: $70
    pop hl                                        ; $63e0: $e1
    inc hl                                        ; $63e1: $23
    inc hl                                        ; $63e2: $23
    push hl                                       ; $63e3: $e5
    inc b                                         ; $63e4: $04
    inc c                                         ; $63e5: $0c
    ld a, c                                       ; $63e6: $79
    cp $09                                        ; $63e7: $fe $09
    jr nz, jr_006_63d8                            ; $63e9: $20 $ed

    pop hl                                        ; $63eb: $e1
    pop hl                                        ; $63ec: $e1
    pop de                                        ; $63ed: $d1
    pop bc                                        ; $63ee: $c1
    pop af                                        ; $63ef: $f1
    ret                                           ; $63f0: $c9


Call_006_63f1:
    ld c, $00                                     ; $63f1: $0e $00

jr_006_63f3:
    ld a, $06                                     ; $63f3: $3e $06
    ldh [$96], a                                  ; $63f5: $e0 $96
    ldh [rSVBK], a                                ; $63f7: $e0 $70
    ld hl, $d20a                                  ; $63f9: $21 $0a $d2
    ld a, c                                       ; $63fc: $79
    add l                                         ; $63fd: $85
    ld l, a                                       ; $63fe: $6f
    jr nc, jr_006_6402                            ; $63ff: $30 $01

    inc h                                         ; $6401: $24

jr_006_6402:
    ld a, [hl+]                                   ; $6402: $2a
    ld h, [hl]                                    ; $6403: $66
    ld l, a                                       ; $6404: $6f
    ld a, l                                       ; $6405: $7d
    cp $ff                                        ; $6406: $fe $ff
    jr z, jr_006_6415                             ; $6408: $28 $0b

    call Call_006_6503                            ; $640a: $cd $03 $65
    push hl                                       ; $640d: $e5
    ld a, [hl+]                                   ; $640e: $2a
    ld d, [hl]                                    ; $640f: $56
    ld e, a                                       ; $6410: $5f
    pop hl                                        ; $6411: $e1
    call Call_006_6422                            ; $6412: $cd $22 $64

jr_006_6415:
    inc c                                         ; $6415: $0c
    ld a, c                                       ; $6416: $79
    cp $0a                                        ; $6417: $fe $0a
    jr nz, jr_006_63f3                            ; $6419: $20 $d8

    ld a, $01                                     ; $641b: $3e $01
    ldh [$96], a                                  ; $641d: $e0 $96
    ldh [rSVBK], a                                ; $641f: $e0 $70
    ret                                           ; $6421: $c9


Call_006_6422:
    push af                                       ; $6422: $f5
    push bc                                       ; $6423: $c5
    push de                                       ; $6424: $d5
    push hl                                       ; $6425: $e5
    push hl                                       ; $6426: $e5
    ld a, $06                                     ; $6427: $3e $06
    ldh [$96], a                                  ; $6429: $e0 $96
    ldh [rSVBK], a                                ; $642b: $e0 $70
    call Call_006_697b                            ; $642d: $cd $7b $69
    ld a, $01                                     ; $6430: $3e $01
    ldh [$96], a                                  ; $6432: $e0 $96
    ldh [rSVBK], a                                ; $6434: $e0 $70
    ld a, l                                       ; $6436: $7d
    ld hl, $6465                                  ; $6437: $21 $65 $64
    add l                                         ; $643a: $85
    ld l, a                                       ; $643b: $6f
    jr nc, jr_006_643f                            ; $643c: $30 $01

    inc h                                         ; $643e: $24

jr_006_643f:
    ld a, [hl+]                                   ; $643f: $2a
    ld h, [hl]                                    ; $6440: $66
    ld l, a                                       ; $6441: $6f
    ld b, l                                       ; $6442: $45
    ld a, $01                                     ; $6443: $3e $01
    ldh [$96], a                                  ; $6445: $e0 $96
    ldh [rSVBK], a                                ; $6447: $e0 $70
    pop hl                                        ; $6449: $e1
    push hl                                       ; $644a: $e5
    ld c, $00                                     ; $644b: $0e $00

jr_006_644d:
    ld a, [hl+]                                   ; $644d: $2a
    ld h, [hl]                                    ; $644e: $66
    ld l, a                                       ; $644f: $6f
    ld de, $d000                                  ; $6450: $11 $00 $d0
    add hl, de                                    ; $6453: $19
    ld [hl], b                                    ; $6454: $70
    pop hl                                        ; $6455: $e1
    inc hl                                        ; $6456: $23
    inc hl                                        ; $6457: $23
    push hl                                       ; $6458: $e5
    inc c                                         ; $6459: $0c
    ld a, c                                       ; $645a: $79
    cp $09                                        ; $645b: $fe $09
    jr nz, jr_006_644d                            ; $645d: $20 $ee

    pop hl                                        ; $645f: $e1
    pop hl                                        ; $6460: $e1
    pop de                                        ; $6461: $d1
    pop bc                                        ; $6462: $c1
    pop af                                        ; $6463: $f1
    ret                                           ; $6464: $c9


    ld c, $0c                                     ; $6465: $0e $0c
    inc c                                         ; $6467: $0c
    dec c                                         ; $6468: $0d
    dec c                                         ; $6469: $0d
    ld c, $0c                                     ; $646a: $0e $0c
    rrca                                          ; $646c: $0f

    db $0e, $0b, $0d, $0e, $f5

    push bc                                       ; $6472: $c5
    push de                                       ; $6473: $d5
    push hl                                       ; $6474: $e5
    ld a, [$d214]                                 ; $6475: $fa $14 $d2
    ld c, a                                       ; $6478: $4f
    call Call_006_697b                            ; $6479: $cd $7b $69
    ld a, l                                       ; $647c: $7d
    add a                                         ; $647d: $87
    ld hl, $6494                                  ; $647e: $21 $94 $64
    add l                                         ; $6481: $85
    ld l, a                                       ; $6482: $6f
    jr nc, jr_006_6486                            ; $6483: $30 $01

    inc h                                         ; $6485: $24

jr_006_6486:
    ld a, [hl+]                                   ; $6486: $2a
    ld h, [hl]                                    ; $6487: $66
    ld l, a                                       ; $6488: $6f
    ld de, $0701                                  ; $6489: $11 $01 $07
    call Call_000_056c                            ; $648c: $cd $6c $05
    pop hl                                        ; $648f: $e1
    pop de                                        ; $6490: $d1
    pop bc                                        ; $6491: $c1
    pop af                                        ; $6492: $f1
    ret                                           ; $6493: $c9


    ret nz                                        ; $6494: $c0

    ld h, h                                       ; $6495: $64
    ldh [$64], a                                  ; $6496: $e0 $64
    ldh a, [$64]                                  ; $6498: $f0 $64
    ret nc                                        ; $649a: $d0

    ld h, h                                       ; $649b: $64
    ret nz                                        ; $649c: $c0

    ld h, h                                       ; $649d: $64
    ret nc                                        ; $649e: $d0

    ld h, h                                       ; $649f: $64
    ldh [$64], a                                  ; $64a0: $e0 $64
    ldh a, [$64]                                  ; $64a2: $f0 $64
    ldh [$64], a                                  ; $64a4: $e0 $64
    or b                                          ; $64a6: $b0
    ld h, h                                       ; $64a7: $64
    ret nz                                        ; $64a8: $c0

    ld h, h                                       ; $64a9: $64
    ldh [$64], a                                  ; $64aa: $e0 $64
    nop                                           ; $64ac: $00
    nop                                           ; $64ad: $00
    nop                                           ; $64ae: $00
    nop                                           ; $64af: $00
    ld a, b                                       ; $64b0: $78
    ld a, [hl-]                                   ; $64b1: $3a
    rst $38                                       ; $64b2: $ff
    ld l, e                                       ; $64b3: $6b
    add b                                         ; $64b4: $80
    ld [de], a                                    ; $64b5: $12
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
    sbc [hl]                                      ; $64c0: $9e
    ld [hl+], a                                   ; $64c1: $22
    rst $38                                       ; $64c2: $ff
    ld l, e                                       ; $64c3: $6b
    ld a, [hl]                                    ; $64c4: $7e
    ld hl, $0000                                  ; $64c5: $21 $00 $00
    nop                                           ; $64c8: $00
    nop                                           ; $64c9: $00
    nop                                           ; $64ca: $00
    nop                                           ; $64cb: $00
    nop                                           ; $64cc: $00
    nop                                           ; $64cd: $00
    nop                                           ; $64ce: $00
    nop                                           ; $64cf: $00
    ld a, a                                       ; $64d0: $7f
    ld [hl-], a                                   ; $64d1: $32
    rst $38                                       ; $64d2: $ff
    ld l, e                                       ; $64d3: $6b
    sbc a                                         ; $64d4: $9f
    ld bc, $0000                                  ; $64d5: $01 $00 $00
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    nop                                           ; $64dc: $00
    nop                                           ; $64dd: $00
    nop                                           ; $64de: $00
    nop                                           ; $64df: $00
    ccf                                           ; $64e0: $3f
    ld c, d                                       ; $64e1: $4a
    rst $38                                       ; $64e2: $ff
    ld l, e                                       ; $64e3: $6b
    rst $38                                       ; $64e4: $ff
    jr nz, jr_006_64e7                            ; $64e5: $20 $00

jr_006_64e7:
    nop                                           ; $64e7: $00
    nop                                           ; $64e8: $00
    nop                                           ; $64e9: $00
    nop                                           ; $64ea: $00
    nop                                           ; $64eb: $00
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    rra                                           ; $64f0: $1f
    ld e, [hl]                                    ; $64f1: $5e
    rst $38                                       ; $64f2: $ff
    ld l, e                                       ; $64f3: $6b
    ret c                                         ; $64f4: $d8

    ld a, h                                       ; $64f5: $7c
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00

Call_006_64f8:
    push af                                       ; $64f8: $f5
    ld a, c                                       ; $64f9: $79
    add a                                         ; $64fa: $87
    add a                                         ; $64fb: $87
    add a                                         ; $64fc: $87
    add c                                         ; $64fd: $81
    add $9e                                       ; $64fe: $c6 $9e
    ld b, a                                       ; $6500: $47
    pop af                                        ; $6501: $f1
    ret                                           ; $6502: $c9


Call_006_6503:
    ld a, c                                       ; $6503: $79
    add a                                         ; $6504: $87
    ld hl, $6511                                  ; $6505: $21 $11 $65
    add l                                         ; $6508: $85
    ld l, a                                       ; $6509: $6f
    jr nc, jr_006_650d                            ; $650a: $30 $01

    inc h                                         ; $650c: $24

jr_006_650d:
    ld a, [hl+]                                   ; $650d: $2a
    ld h, [hl]                                    ; $650e: $66
    ld l, a                                       ; $650f: $6f
    ret                                           ; $6510: $c9


    db $25, $65, $37, $65, $49, $65, $5b, $65, $6d, $65

    ld a, a                                       ; $651b: $7f
    ld h, l                                       ; $651c: $65
    sub c                                         ; $651d: $91
    ld h, l                                       ; $651e: $65
    and e                                         ; $651f: $a3
    ld h, l                                       ; $6520: $65
    or l                                          ; $6521: $b5
    ld h, l                                       ; $6522: $65
    rst $00                                       ; $6523: $c7
    ld h, l                                       ; $6524: $65

    db $a2, $00, $a3, $00, $a4, $00, $c2, $00, $c3, $00, $c4, $00, $e2, $00, $e3, $00
    db $e4, $00, $a5, $00, $a6, $00, $a7, $00, $c5, $00, $c6, $00, $c7, $00, $e5, $00
    db $e6, $00, $e7, $00, $a8, $00, $a9, $00, $aa, $00, $c8, $00, $c9, $00, $ca, $00
    db $e8, $00, $e9, $00, $ea, $00, $ac, $00, $ad, $00, $ae, $00, $cc, $00, $cd, $00
    db $ce, $00, $ec, $00, $ed, $00, $ee, $00, $af, $00, $b0, $00, $b1, $00, $cf, $00
    db $d0, $00, $d1, $00, $ef, $00, $f0, $00, $f1, $00

    ld [hl+], a                                   ; $657f: $22
    ld bc, $0123                                  ; $6580: $01 $23 $01
    inc h                                         ; $6583: $24
    ld bc, $0142                                  ; $6584: $01 $42 $01
    ld b, e                                       ; $6587: $43
    ld bc, HeaderNewLicenseeCode                  ; $6588: $01 $44 $01
    ld h, d                                       ; $658b: $62
    ld bc, $0163                                  ; $658c: $01 $63 $01
    ld h, h                                       ; $658f: $64
    ld bc, $0125                                  ; $6590: $01 $25 $01
    ld h, $01                                     ; $6593: $26 $01
    daa                                           ; $6595: $27
    ld bc, $0145                                  ; $6596: $01 $45 $01
    ld b, [hl]                                    ; $6599: $46
    ld bc, HeaderCartridgeType                    ; $659a: $01 $47 $01
    ld h, l                                       ; $659d: $65
    ld bc, $0166                                  ; $659e: $01 $66 $01
    ld h, a                                       ; $65a1: $67
    ld bc, $0128                                  ; $65a2: $01 $28 $01
    add hl, hl                                    ; $65a5: $29
    ld bc, $012a                                  ; $65a6: $01 $2a $01
    ld c, b                                       ; $65a9: $48
    ld bc, HeaderRAMSize                          ; $65aa: $01 $49 $01
    ld c, d                                       ; $65ad: $4a
    ld bc, $0168                                  ; $65ae: $01 $68 $01
    ld l, c                                       ; $65b1: $69
    ld bc, $016a                                  ; $65b2: $01 $6a $01
    dec hl                                        ; $65b5: $2b
    ld bc, $012c                                  ; $65b6: $01 $2c $01
    dec l                                         ; $65b9: $2d
    ld bc, HeaderOldLicenseeCode                  ; $65ba: $01 $4b $01
    ld c, h                                       ; $65bd: $4c
    ld bc, HeaderComplementCheck                  ; $65be: $01 $4d $01
    ld l, e                                       ; $65c1: $6b
    ld bc, $016c                                  ; $65c2: $01 $6c $01
    ld l, l                                       ; $65c5: $6d
    ld bc, $012f                                  ; $65c6: $01 $2f $01
    jr nc, @+$03                                  ; $65c9: $30 $01

    ld sp, $4f01                                  ; $65cb: $31 $01 $4f
    ld bc, $0150                                  ; $65ce: $01 $50 $01
    ld d, c                                       ; $65d1: $51
    ld bc, $016f                                  ; $65d2: $01 $6f $01
    ld [hl], b                                    ; $65d5: $70
    ld bc, $0171                                  ; $65d6: $01 $71 $01

    ldh a, [$96]                                  ; $65d9: $f0 $96
    push af                                       ; $65db: $f5
    push af                                       ; $65dc: $f5
    push bc                                       ; $65dd: $c5
    push de                                       ; $65de: $d5
    push hl                                       ; $65df: $e5
    ld hl, $65fe                                  ; $65e0: $21 $fe $65
    ld bc, $0a20                                  ; $65e3: $01 $20 $0a
    push hl                                       ; $65e6: $e5
    ld a, $06                                     ; $65e7: $3e $06
    ldh [$96], a                                  ; $65e9: $e0 $96
    ldh [rSVBK], a                                ; $65eb: $e0 $70
    call Call_006_68b6                            ; $65ed: $cd $b6 $68
    pop hl                                        ; $65f0: $e1
    call Call_000_26ea                            ; $65f1: $cd $ea $26
    pop hl                                        ; $65f4: $e1
    pop de                                        ; $65f5: $d1
    pop bc                                        ; $65f6: $c1
    pop af                                        ; $65f7: $f1
    pop af                                        ; $65f8: $f1
    ldh [$96], a                                  ; $65f9: $e0 $96
    ldh [rSVBK], a                                ; $65fb: $e0 $70
    ret                                           ; $65fd: $c9


    db $00, $00, $00, $00, $00, $08, $02, $00, $00, $10, $04, $00, $08, $00, $06, $00
    db $08, $08, $08, $00, $08, $10, $0a, $00, $80

    ldh a, [$96]                                  ; $6617: $f0 $96
    push af                                       ; $6619: $f5
    push af                                       ; $661a: $f5
    push bc                                       ; $661b: $c5
    push de                                       ; $661c: $d5
    push hl                                       ; $661d: $e5
    ld a, $06                                     ; $661e: $3e $06
    ldh [$96], a                                  ; $6620: $e0 $96
    ldh [rSVBK], a                                ; $6622: $e0 $70
    ld hl, $d218                                  ; $6624: $21 $18 $d2
    inc hl                                        ; $6627: $23
    inc hl                                        ; $6628: $23
    push hl                                       ; $6629: $e5
    ld hl, $d220                                  ; $662a: $21 $20 $d2
    push hl                                       ; $662d: $e5
    ld a, [hl+]                                   ; $662e: $2a
    ld h, [hl]                                    ; $662f: $66
    ld l, a                                       ; $6630: $6f
    ld a, l                                       ; $6631: $7d
    inc a                                         ; $6632: $3c
    inc a                                         ; $6633: $3c
    and $3f                                       ; $6634: $e6 $3f
    pop hl                                        ; $6636: $e1
    ld [hl], a                                    ; $6637: $77
    ld hl, $66b6                                  ; $6638: $21 $b6 $66
    add l                                         ; $663b: $85
    ld l, a                                       ; $663c: $6f
    jr nc, jr_006_6640                            ; $663d: $30 $01

    inc h                                         ; $663f: $24

jr_006_6640:
    ld a, [hl+]                                   ; $6640: $2a
    ld h, [hl]                                    ; $6641: $66
    ld l, a                                       ; $6642: $6f
    ld a, l                                       ; $6643: $7d
    and $1f                                       ; $6644: $e6 $1f
    push af                                       ; $6646: $f5
    ld hl, $d221                                  ; $6647: $21 $21 $d2
    push hl                                       ; $664a: $e5
    ld a, [hl+]                                   ; $664b: $2a
    ld h, [hl]                                    ; $664c: $66
    ld l, a                                       ; $664d: $6f
    ld a, l                                       ; $664e: $7d
    inc a                                         ; $664f: $3c
    and $3f                                       ; $6650: $e6 $3f
    pop hl                                        ; $6652: $e1
    ld [hl], a                                    ; $6653: $77
    ld hl, $66b6                                  ; $6654: $21 $b6 $66
    add l                                         ; $6657: $85
    ld l, a                                       ; $6658: $6f
    jr nc, jr_006_665c                            ; $6659: $30 $01

    inc h                                         ; $665b: $24

jr_006_665c:
    ld a, [hl+]                                   ; $665c: $2a
    ld h, [hl]                                    ; $665d: $66
    ld l, a                                       ; $665e: $6f
    ld a, l                                       ; $665f: $7d
    and $1f                                       ; $6660: $e6 $1f
    ld b, a                                       ; $6662: $47
    ld hl, $d222                                  ; $6663: $21 $22 $d2
    push hl                                       ; $6666: $e5
    ld a, [hl+]                                   ; $6667: $2a
    ld h, [hl]                                    ; $6668: $66
    ld l, a                                       ; $6669: $6f
    ld a, l                                       ; $666a: $7d
    inc a                                         ; $666b: $3c
    and $3f                                       ; $666c: $e6 $3f
    pop hl                                        ; $666e: $e1
    ld [hl], a                                    ; $666f: $77
    ld hl, $66b6                                  ; $6670: $21 $b6 $66
    add l                                         ; $6673: $85
    ld l, a                                       ; $6674: $6f
    jr nc, jr_006_6678                            ; $6675: $30 $01

    inc h                                         ; $6677: $24

jr_006_6678:
    ld a, [hl+]                                   ; $6678: $2a
    ld h, [hl]                                    ; $6679: $66
    ld l, a                                       ; $667a: $6f
    ld a, l                                       ; $667b: $7d
    and $1f                                       ; $667c: $e6 $1f
    ld d, a                                       ; $667e: $57
    pop af                                        ; $667f: $f1
    pop hl                                        ; $6680: $e1
    push bc                                       ; $6681: $c5
    sla b                                         ; $6682: $cb $20
    sla b                                         ; $6684: $cb $20
    sla b                                         ; $6686: $cb $20
    sla b                                         ; $6688: $cb $20
    sla b                                         ; $668a: $cb $20
    add b                                         ; $668c: $80
    pop bc                                        ; $668d: $c1
    push af                                       ; $668e: $f5
    ld a, b                                       ; $668f: $78
    sra a                                         ; $6690: $cb $2f
    sra a                                         ; $6692: $cb $2f
    sra a                                         ; $6694: $cb $2f
    and $03                                       ; $6696: $e6 $03
    ld b, a                                       ; $6698: $47
    ld a, d                                       ; $6699: $7a
    sla a                                         ; $669a: $cb $27
    sla a                                         ; $669c: $cb $27
    add b                                         ; $669e: $80
    pop bc                                        ; $669f: $c1
    ld [hl], b                                    ; $66a0: $70
    inc hl                                        ; $66a1: $23
    ld [hl], a                                    ; $66a2: $77
    ld hl, $d218                                  ; $66a3: $21 $18 $d2
    ld de, $0a01                                  ; $66a6: $11 $01 $0a
    call Call_000_056c                            ; $66a9: $cd $6c $05
    pop hl                                        ; $66ac: $e1
    pop de                                        ; $66ad: $d1
    pop bc                                        ; $66ae: $c1
    pop af                                        ; $66af: $f1
    pop af                                        ; $66b0: $f1
    ldh [$96], a                                  ; $66b1: $e0 $96
    ldh [rSVBK], a                                ; $66b3: $e0 $70
    ret                                           ; $66b5: $c9


    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $14, $15, $15, $16, $16, $17, $18, $18, $19, $19, $1a
    db $1a, $19, $19, $18, $18, $17, $17, $16, $16, $15, $15, $14, $14, $13, $12, $11
    db $10, $0f, $0e, $0d, $0c, $0b, $0a, $09, $08, $07, $06, $05, $04, $03, $02, $01

    ldh a, [$8c]                                  ; $66f6: $f0 $8c
    and $3f                                       ; $66f8: $e6 $3f
    ld hl, $670f                                  ; $66fa: $21 $0f $67
    add l                                         ; $66fd: $85
    ld l, a                                       ; $66fe: $6f
    jr nc, jr_006_6702                            ; $66ff: $30 $01

    inc h                                         ; $6701: $24

jr_006_6702:
    ld d, $00                                     ; $6702: $16 $00
    ld e, [hl]                                    ; $6704: $5e
    ld hl, $674f                                  ; $6705: $21 $4f $67
    ld bc, $00e0                                  ; $6708: $01 $e0 $00
    call Call_000_26ea                            ; $670b: $cd $ea $26
    ret                                           ; $670e: $c9


    db $00, $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $01, $01, $01, $00, $00
    db $00, $00, $00, $ff, $ff, $ff, $fe, $fe, $fe, $fd, $fd, $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fe, $fe, $fe, $ff, $ff, $ff, $00, $00
    db $16, $30, $00, $00, $16, $38, $02, $00, $16, $40, $04, $00, $16, $48, $06, $00
    db $16, $50, $08, $00, $16, $58, $0a, $00, $16, $60, $0c, $00, $16, $68, $0e, $00
    db $16, $70, $10, $00, $16, $78, $12, $00, $80

Call_006_6778:
    ld a, [$d214]                                 ; $6778: $fa $14 $d2
    ld [$d215], a                                 ; $677b: $ea $15 $d2
    ldh a, [$91]                                  ; $677e: $f0 $91
    bit 6, a                                      ; $6780: $cb $77
    jp z, Jump_006_679f                           ; $6782: $ca $9f $67

    push af                                       ; $6785: $f5
    ld e, $00                                     ; $6786: $1e $00
    call Call_006_6839                            ; $6788: $cd $39 $68
    ld a, [$d214]                                 ; $678b: $fa $14 $d2
    ld b, a                                       ; $678e: $47
    ld a, [$d215]                                 ; $678f: $fa $15 $d2
    cp b                                          ; $6792: $b8
    jr z, jr_006_67ba                             ; $6793: $28 $25

    call Call_006_6d9a                            ; $6795: $cd $9a $6d
    call Call_006_6ade                            ; $6798: $cd $de $6a
    pop af                                        ; $679b: $f1
    jp Jump_006_67f9                              ; $679c: $c3 $f9 $67


Jump_006_679f:
    bit 5, a                                      ; $679f: $cb $6f
    jp z, Jump_006_67be                           ; $67a1: $ca $be $67

    push af                                       ; $67a4: $f5
    ld e, $01                                     ; $67a5: $1e $01
    call Call_006_6839                            ; $67a7: $cd $39 $68
    ld a, [$d214]                                 ; $67aa: $fa $14 $d2
    ld b, a                                       ; $67ad: $47
    ld a, [$d215]                                 ; $67ae: $fa $15 $d2
    cp b                                          ; $67b1: $b8
    jr z, jr_006_67ba                             ; $67b2: $28 $06

    call Call_006_6d9a                            ; $67b4: $cd $9a $6d
    call Call_006_6ade                            ; $67b7: $cd $de $6a

jr_006_67ba:
    pop af                                        ; $67ba: $f1
    jp Jump_006_67f9                              ; $67bb: $c3 $f9 $67


Jump_006_67be:
    bit 7, a                                      ; $67be: $cb $7f
    jp z, Jump_006_67dd                           ; $67c0: $ca $dd $67

    push af                                       ; $67c3: $f5
    ld e, $02                                     ; $67c4: $1e $02
    call Call_006_6839                            ; $67c6: $cd $39 $68
    ld a, [$d214]                                 ; $67c9: $fa $14 $d2
    ld b, a                                       ; $67cc: $47
    ld a, [$d215]                                 ; $67cd: $fa $15 $d2
    cp b                                          ; $67d0: $b8
    jr z, jr_006_67d9                             ; $67d1: $28 $06

    call Call_006_6d9a                            ; $67d3: $cd $9a $6d
    call Call_006_6ade                            ; $67d6: $cd $de $6a

jr_006_67d9:
    pop af                                        ; $67d9: $f1
    jp Jump_006_67f9                              ; $67da: $c3 $f9 $67


Jump_006_67dd:
    bit 4, a                                      ; $67dd: $cb $67
    jp z, Jump_006_67f9                           ; $67df: $ca $f9 $67

    push af                                       ; $67e2: $f5
    ld e, $03                                     ; $67e3: $1e $03
    call Call_006_6839                            ; $67e5: $cd $39 $68
    ld a, [$d214]                                 ; $67e8: $fa $14 $d2
    ld b, a                                       ; $67eb: $47
    ld a, [$d215]                                 ; $67ec: $fa $15 $d2
    cp b                                          ; $67ef: $b8
    jr z, jr_006_67f8                             ; $67f0: $28 $06

    call Call_006_6d9a                            ; $67f2: $cd $9a $6d
    call Call_006_6ade                            ; $67f5: $cd $de $6a

jr_006_67f8:
    pop af                                        ; $67f8: $f1

Jump_006_67f9:
    bit 0, a                                      ; $67f9: $cb $47
    jr z, jr_006_680f                             ; $67fb: $28 $12

    bit 2, a                                      ; $67fd: $cb $57
    jr z, jr_006_680b                             ; $67ff: $28 $0a

    ld a, [$d214]                                 ; $6801: $fa $14 $d2
    cp $03                                        ; $6804: $fe $03
    jr c, jr_006_680b                             ; $6806: $38 $03

    call Call_006_6a01                            ; $6808: $cd $01 $6a

jr_006_680b:
    bit 0, a                                      ; $680b: $cb $47
    jr jr_006_6815                                ; $680d: $18 $06

jr_006_680f:
    bit 1, a                                      ; $680f: $cb $4f
    jr nz, jr_006_6831                            ; $6811: $20 $1e

    jr jr_006_6836                                ; $6813: $18 $21

jr_006_6815:
    rst $08                                       ; $6815: $cf

    db $5c

    ld a, [$d214]                                 ; $6817: $fa $14 $d2
    ld hl, $d20a                                  ; $681a: $21 $0a $d2
    add l                                         ; $681d: $85
    ld l, a                                       ; $681e: $6f
    jr nc, jr_006_6822                            ; $681f: $30 $01

    inc h                                         ; $6821: $24

jr_006_6822:
    ld a, [hl+]                                   ; $6822: $2a
    ld h, [hl]                                    ; $6823: $66
    ld l, a                                       ; $6824: $6f
    ld a, l                                       ; $6825: $7d
    cp $ff                                        ; $6826: $fe $ff
    jr z, jr_006_6836                             ; $6828: $28 $0c

    ld a, [$d214]                                 ; $682a: $fa $14 $d2
    ld [$cabe], a                                 ; $682d: $ea $be $ca
    ret                                           ; $6830: $c9


jr_006_6831:
    rst $08                                       ; $6831: $cf

    db $5d

    ld a, $ff                                     ; $6833: $3e $ff
    ret                                           ; $6835: $c9


jr_006_6836:
    ld a, $fe                                     ; $6836: $3e $fe
    ret                                           ; $6838: $c9


Call_006_6839:
    rst $08                                       ; $6839: $cf

    db $5b

    ld a, e                                       ; $683b: $7b
    cp $01                                        ; $683c: $fe $01
    jr jr_006_684c                                ; $683e: $18 $0c

    cp $02                                        ; $6840: $fe $02
    jr jr_006_6850                                ; $6842: $18 $0c

    cp $03                                        ; $6844: $fe $03
    jr jr_006_6854                                ; $6846: $18 $0c

    ld c, $02                                     ; $6848: $0e $02
    jr jr_006_6856                                ; $684a: $18 $0a

jr_006_684c:
    ld c, $0a                                     ; $684c: $0e $0a
    jr jr_006_6856                                ; $684e: $18 $06

jr_006_6850:
    ld c, $02                                     ; $6850: $0e $02
    jr jr_006_6856                                ; $6852: $18 $02

jr_006_6854:
    ld c, $0a                                     ; $6854: $0e $0a

jr_006_6856:
    ld hl, $d214                                  ; $6856: $21 $14 $d2
    ld a, [hl+]                                   ; $6859: $2a
    ld h, [hl]                                    ; $685a: $66
    ld l, a                                       ; $685b: $6f
    ld b, l                                       ; $685c: $45
    ld d, l                                       ; $685d: $55

jr_006_685e:
    ld a, e                                       ; $685e: $7b
    cp $01                                        ; $685f: $fe $01
    jr z, jr_006_6879                             ; $6861: $28 $16

    cp $02                                        ; $6863: $fe $02
    jr z, jr_006_6885                             ; $6865: $28 $1e

    cp $03                                        ; $6867: $fe $03
    jr z, jr_006_6891                             ; $6869: $28 $26

    ld c, $02                                     ; $686b: $0e $02
    ld a, d                                       ; $686d: $7a
    add $fb                                       ; $686e: $c6 $fb
    cp $fb                                        ; $6870: $fe $fb
    jr c, jr_006_689d                             ; $6872: $38 $29

    ld a, d                                       ; $6874: $7a
    add $05                                       ; $6875: $c6 $05
    jr jr_006_689d                                ; $6877: $18 $24

jr_006_6879:
    ld a, d                                       ; $6879: $7a
    dec a                                         ; $687a: $3d
    cp $ff                                        ; $687b: $fe $ff
    jr z, jr_006_6881                             ; $687d: $28 $02

    jr jr_006_689d                                ; $687f: $18 $1c

jr_006_6881:
    ld a, $09                                     ; $6881: $3e $09
    jr jr_006_689d                                ; $6883: $18 $18

jr_006_6885:
    ld a, d                                       ; $6885: $7a
    add $05                                       ; $6886: $c6 $05
    cp $0a                                        ; $6888: $fe $0a
    jr c, jr_006_689d                             ; $688a: $38 $11

    ld a, d                                       ; $688c: $7a
    add $fb                                       ; $688d: $c6 $fb
    jr jr_006_689d                                ; $688f: $18 $0c

jr_006_6891:
    ld a, d                                       ; $6891: $7a
    inc a                                         ; $6892: $3c
    cp $0a                                        ; $6893: $fe $0a
    jr z, jr_006_6899                             ; $6895: $28 $02

    jr jr_006_689d                                ; $6897: $18 $04

jr_006_6899:
    ld a, $00                                     ; $6899: $3e $00
    jr jr_006_689d                                ; $689b: $18 $00

jr_006_689d:
    ld d, a                                       ; $689d: $57
    ld hl, $d20a                                  ; $689e: $21 $0a $d2
    add l                                         ; $68a1: $85
    ld l, a                                       ; $68a2: $6f
    jr nc, jr_006_68a6                            ; $68a3: $30 $01

    inc h                                         ; $68a5: $24

jr_006_68a6:
    ld a, [hl+]                                   ; $68a6: $2a
    ld h, [hl]                                    ; $68a7: $66
    ld l, a                                       ; $68a8: $6f
    ld a, l                                       ; $68a9: $7d
    cp $ff                                        ; $68aa: $fe $ff
    ld a, d                                       ; $68ac: $7a
    jr nz, jr_006_68b2                            ; $68ad: $20 $03

    dec c                                         ; $68af: $0d
    jr nz, jr_006_685e                            ; $68b0: $20 $ac

jr_006_68b2:
    ld [$d214], a                                 ; $68b2: $ea $14 $d2
    ret                                           ; $68b5: $c9


Call_006_68b6:
    ld a, [$d214]                                 ; $68b6: $fa $14 $d2
    add a                                         ; $68b9: $87
    add a                                         ; $68ba: $87
    ld hl, $68d0                                  ; $68bb: $21 $d0 $68
    add l                                         ; $68be: $85
    ld l, a                                       ; $68bf: $6f
    jr nc, jr_006_68c3                            ; $68c0: $30 $01

    inc h                                         ; $68c2: $24

jr_006_68c3:
    push hl                                       ; $68c3: $e5
    ld a, [hl+]                                   ; $68c4: $2a
    ld h, [hl]                                    ; $68c5: $66
    ld l, a                                       ; $68c6: $6f
    ld d, l                                       ; $68c7: $55
    pop hl                                        ; $68c8: $e1
    inc hl                                        ; $68c9: $23
    inc hl                                        ; $68ca: $23
    ld a, [hl+]                                   ; $68cb: $2a
    ld h, [hl]                                    ; $68cc: $66
    ld l, a                                       ; $68cd: $6f
    ld e, l                                       ; $68ce: $5d
    ret                                           ; $68cf: $c9


    db $18, $00, $38, $00, $30, $00, $38, $00, $48, $00, $38, $00, $68, $00, $38, $00
    db $80, $00, $38, $00

    jr jr_006_68e6                                ; $68e4: $18 $00

jr_006_68e6:
    ld e, b                                       ; $68e6: $58
    nop                                           ; $68e7: $00
    jr nc, jr_006_68ea                            ; $68e8: $30 $00

jr_006_68ea:
    ld e, b                                       ; $68ea: $58
    nop                                           ; $68eb: $00
    ld c, b                                       ; $68ec: $48
    nop                                           ; $68ed: $00
    ld e, b                                       ; $68ee: $58
    nop                                           ; $68ef: $00
    ld h, b                                       ; $68f0: $60
    nop                                           ; $68f1: $00
    ld e, b                                       ; $68f2: $58
    nop                                           ; $68f3: $00
    add b                                         ; $68f4: $80
    nop                                           ; $68f5: $00
    ld e, b                                       ; $68f6: $58
    nop                                           ; $68f7: $00

Call_006_68f8:
    ld c, $00                                     ; $68f8: $0e $00

jr_006_68fa:
    call Call_006_697b                            ; $68fa: $cd $7b $69
    ld b, l                                       ; $68fd: $45
    ld a, c                                       ; $68fe: $79
    ld hl, $d20a                                  ; $68ff: $21 $0a $d2
    add l                                         ; $6902: $85
    ld l, a                                       ; $6903: $6f
    jr nc, jr_006_6907                            ; $6904: $30 $01

    inc h                                         ; $6906: $24

jr_006_6907:
    ld [hl], b                                    ; $6907: $70
    inc c                                         ; $6908: $0c
    ld a, c                                       ; $6909: $79
    cp $0a                                        ; $690a: $fe $0a
    jr nz, jr_006_68fa                            ; $690c: $20 $ec

    ret                                           ; $690e: $c9


    xor a                                         ; $690f: $af
    ld [$cabe], a                                 ; $6910: $ea $be $ca
    ret                                           ; $6913: $c9


Call_006_6914:
    ldh a, [$96]                                  ; $6914: $f0 $96
    push af                                       ; $6916: $f5
    ld a, $06                                     ; $6917: $3e $06
    ldh [$96], a                                  ; $6919: $e0 $96
    ldh [rSVBK], a                                ; $691b: $e0 $70
    ld c, $00                                     ; $691d: $0e $00
    ld a, [$cabe]                                 ; $691f: $fa $be $ca
    ld b, a                                       ; $6922: $47
    push de                                       ; $6923: $d5
    push af                                       ; $6924: $f5
    ld a, b                                       ; $6925: $78
    ld de, $0100                                  ; $6926: $11 $00 $01
    call Call_000_22a5                            ; $6929: $cd $a5 $22
    pop af                                        ; $692c: $f1
    pop de                                        ; $692d: $d1

jr_006_692e:
    ld hl, $6971                                  ; $692e: $21 $71 $69
    ld a, b                                       ; $6931: $78
    cp $0a                                        ; $6932: $fe $0a
    jr c, jr_006_6938                             ; $6934: $38 $02

    sub $0a                                       ; $6936: $d6 $0a

jr_006_6938:
    add l                                         ; $6938: $85
    ld l, a                                       ; $6939: $6f
    jr nc, jr_006_693d                            ; $693a: $30 $01

    inc h                                         ; $693c: $24

jr_006_693d:
    ld a, [hl+]                                   ; $693d: $2a
    ld h, [hl]                                    ; $693e: $66
    ld l, a                                       ; $693f: $6f
    ld a, l                                       ; $6940: $7d
    ld hl, $d20a                                  ; $6941: $21 $0a $d2
    add l                                         ; $6944: $85
    ld l, a                                       ; $6945: $6f
    jr nc, jr_006_6949                            ; $6946: $30 $01

    inc h                                         ; $6948: $24

jr_006_6949:
    ld a, [hl+]                                   ; $6949: $2a
    ld d, [hl]                                    ; $694a: $56
    ld e, a                                       ; $694b: $5f
    ld a, e                                       ; $694c: $7b
    cp $ff                                        ; $694d: $fe $ff
    jr nz, jr_006_6958                            ; $694f: $20 $07

    inc b                                         ; $6951: $04
    inc c                                         ; $6952: $0c
    ld a, c                                       ; $6953: $79
    cp $0a                                        ; $6954: $fe $0a
    jr nz, jr_006_692e                            ; $6956: $20 $d6

jr_006_6958:
    ld a, b                                       ; $6958: $78
    ld hl, $6971                                  ; $6959: $21 $71 $69
    add l                                         ; $695c: $85
    ld l, a                                       ; $695d: $6f
    jr nc, jr_006_6961                            ; $695e: $30 $01

    inc h                                         ; $6960: $24

jr_006_6961:
    ld a, [hl+]                                   ; $6961: $2a
    ld h, [hl]                                    ; $6962: $66
    ld l, a                                       ; $6963: $6f
    ld a, l                                       ; $6964: $7d
    ld [$d214], a                                 ; $6965: $ea $14 $d2
    ld [$d215], a                                 ; $6968: $ea $15 $d2
    pop af                                        ; $696b: $f1
    ldh [$96], a                                  ; $696c: $e0 $96
    ldh [rSVBK], a                                ; $696e: $e0 $70
    ret                                           ; $6970: $c9


    db $00, $01

    ld [bc], a                                    ; $6973: $02
    dec b                                         ; $6974: $05
    ld b, $07                                     ; $6975: $06 $07
    ld [$0403], sp                                ; $6977: $08 $03 $04
    add hl, bc                                    ; $697a: $09

Call_006_697b:
    ld hl, $d216                                  ; $697b: $21 $16 $d2
    ld a, [hl+]                                   ; $697e: $2a
    ld d, [hl]                                    ; $697f: $56
    ld e, a                                       ; $6980: $5f
    ld h, $00                                     ; $6981: $26 $00
    ld l, c                                       ; $6983: $69
    add hl, hl                                    ; $6984: $29
    add hl, hl                                    ; $6985: $29
    add hl, hl                                    ; $6986: $29
    add hl, hl                                    ; $6987: $29
    add hl, hl                                    ; $6988: $29
    add hl, de                                    ; $6989: $19
    ld a, [hl+]                                   ; $698a: $2a
    ld h, [hl]                                    ; $698b: $66
    ld l, a                                       ; $698c: $6f
    ld h, $00                                     ; $698d: $26 $00
    ld a, l                                       ; $698f: $7d
    cp $0b                                        ; $6990: $fe $0b
    jr nc, jr_006_6996                            ; $6992: $30 $02

    jr jr_006_69a0                                ; $6994: $18 $0a

jr_006_6996:
    cp $ff                                        ; $6996: $fe $ff
    jr z, jr_006_699e                             ; $6998: $28 $04

    ld l, $0b                                     ; $699a: $2e $0b
    jr jr_006_69a0                                ; $699c: $18 $02

jr_006_699e:
    ld l, $ff                                     ; $699e: $2e $ff

jr_006_69a0:
    ret                                           ; $69a0: $c9


Call_006_69a1:
    ld hl, $d216                                  ; $69a1: $21 $16 $d2
    ld a, [hl+]                                   ; $69a4: $2a
    ld d, [hl]                                    ; $69a5: $56
    ld e, a                                       ; $69a6: $5f
    ld h, $00                                     ; $69a7: $26 $00
    ld l, c                                       ; $69a9: $69
    add hl, hl                                    ; $69aa: $29
    add hl, hl                                    ; $69ab: $29
    add hl, hl                                    ; $69ac: $29
    add hl, hl                                    ; $69ad: $29
    add hl, hl                                    ; $69ae: $29
    add hl, de                                    ; $69af: $19
    ld de, $0002                                  ; $69b0: $11 $02 $00
    add hl, de                                    ; $69b3: $19
    ret                                           ; $69b4: $c9


Call_006_69b5:
    ld hl, $d216                                  ; $69b5: $21 $16 $d2
    ld a, [hl+]                                   ; $69b8: $2a
    ld d, [hl]                                    ; $69b9: $56
    ld e, a                                       ; $69ba: $5f
    ld h, $00                                     ; $69bb: $26 $00
    ld l, c                                       ; $69bd: $69
    add hl, hl                                    ; $69be: $29
    add hl, hl                                    ; $69bf: $29
    add hl, hl                                    ; $69c0: $29
    add hl, hl                                    ; $69c1: $29
    add hl, hl                                    ; $69c2: $29
    add hl, de                                    ; $69c3: $19
    ld d, $00                                     ; $69c4: $16 $00
    ld e, $0d                                     ; $69c6: $1e $0d
    add hl, de                                    ; $69c8: $19
    ld a, [hl+]                                   ; $69c9: $2a
    ld h, [hl]                                    ; $69ca: $66
    ld l, a                                       ; $69cb: $6f
    ld h, $00                                     ; $69cc: $26 $00
    ret                                           ; $69ce: $c9


Call_006_69cf:
    ld hl, $d216                                  ; $69cf: $21 $16 $d2
    ld a, [hl+]                                   ; $69d2: $2a
    ld d, [hl]                                    ; $69d3: $56
    ld e, a                                       ; $69d4: $5f
    ld h, $00                                     ; $69d5: $26 $00
    ld l, c                                       ; $69d7: $69
    add hl, hl                                    ; $69d8: $29
    add hl, hl                                    ; $69d9: $29
    add hl, hl                                    ; $69da: $29
    add hl, hl                                    ; $69db: $29
    add hl, hl                                    ; $69dc: $29
    add hl, de                                    ; $69dd: $19
    ld d, $00                                     ; $69de: $16 $00
    ld e, $0e                                     ; $69e0: $1e $0e
    add hl, de                                    ; $69e2: $19
    ld a, [hl+]                                   ; $69e3: $2a
    ld h, [hl]                                    ; $69e4: $66
    ld l, a                                       ; $69e5: $6f
    ret                                           ; $69e6: $c9


    ld hl, $d216                                  ; $69e7: $21 $16 $d2
    ld a, [hl+]                                   ; $69ea: $2a
    ld d, [hl]                                    ; $69eb: $56
    ld e, a                                       ; $69ec: $5f
    ld h, $00                                     ; $69ed: $26 $00
    ld l, c                                       ; $69ef: $69
    add hl, hl                                    ; $69f0: $29
    add hl, hl                                    ; $69f1: $29
    add hl, hl                                    ; $69f2: $29
    add hl, hl                                    ; $69f3: $29
    add hl, hl                                    ; $69f4: $29
    add hl, de                                    ; $69f5: $19
    ld d, $00                                     ; $69f6: $16 $00
    ld e, $10                                     ; $69f8: $1e $10
    add hl, de                                    ; $69fa: $19
    ld a, [hl+]                                   ; $69fb: $2a
    ld h, [hl]                                    ; $69fc: $66
    ld l, a                                       ; $69fd: $6f
    ld h, $00                                     ; $69fe: $26 $00
    ret                                           ; $6a00: $c9


Call_006_6a01:
    ldh a, [$96]                                  ; $6a01: $f0 $96
    push af                                       ; $6a03: $f5
    push af                                       ; $6a04: $f5
    push bc                                       ; $6a05: $c5
    push de                                       ; $6a06: $d5
    push hl                                       ; $6a07: $e5
    ld a, $06                                     ; $6a08: $3e $06
    ldh [$96], a                                  ; $6a0a: $e0 $96
    ldh [rSVBK], a                                ; $6a0c: $e0 $70
    ld a, [$d214]                                 ; $6a0e: $fa $14 $d2
    ld c, a                                       ; $6a11: $4f
    ld b, $01                                     ; $6a12: $06 $01
    ld hl, $d216                                  ; $6a14: $21 $16 $d2
    ld a, [hl+]                                   ; $6a17: $2a
    ld d, [hl]                                    ; $6a18: $56
    ld e, a                                       ; $6a19: $5f
    ld h, $00                                     ; $6a1a: $26 $00
    ld l, c                                       ; $6a1c: $69
    add hl, hl                                    ; $6a1d: $29
    add hl, hl                                    ; $6a1e: $29
    add hl, hl                                    ; $6a1f: $29
    add hl, hl                                    ; $6a20: $29
    add hl, hl                                    ; $6a21: $29
    add hl, de                                    ; $6a22: $19
    ld d, $00                                     ; $6a23: $16 $00
    ld e, $10                                     ; $6a25: $1e $10
    add hl, de                                    ; $6a27: $19
    ld a, b                                       ; $6a28: $78
    ld [hl], a                                    ; $6a29: $77
    pop hl                                        ; $6a2a: $e1
    pop de                                        ; $6a2b: $d1
    pop bc                                        ; $6a2c: $c1
    pop af                                        ; $6a2d: $f1
    pop af                                        ; $6a2e: $f1
    ldh [$96], a                                  ; $6a2f: $e0 $96
    ldh [rSVBK], a                                ; $6a31: $e0 $70
    ret                                           ; $6a33: $c9


Call_006_6a34:
    ld hl, $d216                                  ; $6a34: $21 $16 $d2
    ld a, [hl+]                                   ; $6a37: $2a
    ld d, [hl]                                    ; $6a38: $56
    ld e, a                                       ; $6a39: $5f
    ld h, $00                                     ; $6a3a: $26 $00
    ld l, c                                       ; $6a3c: $69
    add hl, hl                                    ; $6a3d: $29
    add hl, hl                                    ; $6a3e: $29
    add hl, hl                                    ; $6a3f: $29
    add hl, hl                                    ; $6a40: $29
    add hl, hl                                    ; $6a41: $29
    add hl, de                                    ; $6a42: $19
    ld d, $00                                     ; $6a43: $16 $00
    ld e, $11                                     ; $6a45: $1e $11
    add hl, de                                    ; $6a47: $19
    ld a, [hl+]                                   ; $6a48: $2a
    ld h, [hl]                                    ; $6a49: $66
    ld l, a                                       ; $6a4a: $6f
    ld h, $00                                     ; $6a4b: $26 $00
    ret                                           ; $6a4d: $c9


    ldh a, [$96]                                  ; $6a4e: $f0 $96
    push af                                       ; $6a50: $f5
    ld a, $06                                     ; $6a51: $3e $06
    ldh [$96], a                                  ; $6a53: $e0 $96
    ldh [rSVBK], a                                ; $6a55: $e0 $70
    ld hl, $d20a                                  ; $6a57: $21 $0a $d2
    ld a, [$d214]                                 ; $6a5a: $fa $14 $d2
    add l                                         ; $6a5d: $85
    ld l, a                                       ; $6a5e: $6f
    jr nc, jr_006_6a62                            ; $6a5f: $30 $01

    inc h                                         ; $6a61: $24

jr_006_6a62:
    ld a, [hl+]                                   ; $6a62: $2a
    ld h, [hl]                                    ; $6a63: $66
    ld l, a                                       ; $6a64: $6f
    ld a, l                                       ; $6a65: $7d
    cp $0b                                        ; $6a66: $fe $0b
    jr z, jr_006_6a9d                             ; $6a68: $28 $33

    cp $ff                                        ; $6a6a: $fe $ff
    jr z, jr_006_6a9d                             ; $6a6c: $28 $2f

    ld a, [$d214]                                 ; $6a6e: $fa $14 $d2
    ld c, a                                       ; $6a71: $4f
    call Call_006_6a34                            ; $6a72: $cd $34 $6a
    ld a, l                                       ; $6a75: $7d
    or a                                          ; $6a76: $b7
    jr z, jr_006_6a8d                             ; $6a77: $28 $14

    cp $80                                        ; $6a79: $fe $80
    jr nc, jr_006_6a82                            ; $6a7b: $30 $05

    call Call_006_6ac0                            ; $6a7d: $cd $c0 $6a
    jr jr_006_6a8d                                ; $6a80: $18 $0b

jr_006_6a82:
    and $0f                                       ; $6a82: $e6 $0f
    xor $0f                                       ; $6a84: $ee $0f
    add $01                                       ; $6a86: $c6 $01
    call Call_006_6aa3                            ; $6a88: $cd $a3 $6a
    jr jr_006_6a8d                                ; $6a8b: $18 $00

jr_006_6a8d:
    ld bc, $0992                                  ; $6a8d: $01 $92 $09
    ld d, $84                                     ; $6a90: $16 $84
    ld e, $84                                     ; $6a92: $1e $84
    call Call_000_2798                            ; $6a94: $cd $98 $27
    pop af                                        ; $6a97: $f1
    ldh [$96], a                                  ; $6a98: $e0 $96
    ldh [rSVBK], a                                ; $6a9a: $e0 $70
    ret                                           ; $6a9c: $c9


jr_006_6a9d:
    pop af                                        ; $6a9d: $f1
    ldh [$96], a                                  ; $6a9e: $e0 $96
    ldh [rSVBK], a                                ; $6aa0: $e0 $70
    ret                                           ; $6aa2: $c9


Call_006_6aa3:
    cp $04                                        ; $6aa3: $fe $04
    jr c, jr_006_6aa9                             ; $6aa5: $38 $02

    ld a, $04                                     ; $6aa7: $3e $04

jr_006_6aa9:
    ld l, a                                       ; $6aa9: $6f
    ld bc, $299c                                  ; $6aaa: $01 $9c $29
    ld d, $7c                                     ; $6aad: $16 $7c
    ld e, $84                                     ; $6aaf: $1e $84

jr_006_6ab1:
    push af                                       ; $6ab1: $f5
    push de                                       ; $6ab2: $d5
    call Call_000_2798                            ; $6ab3: $cd $98 $27
    pop de                                        ; $6ab6: $d1
    ld a, d                                       ; $6ab7: $7a
    add $fc                                       ; $6ab8: $c6 $fc
    ld d, a                                       ; $6aba: $57
    pop af                                        ; $6abb: $f1
    dec a                                         ; $6abc: $3d
    jr nz, jr_006_6ab1                            ; $6abd: $20 $f2

    ret                                           ; $6abf: $c9


Call_006_6ac0:
    and $0f                                       ; $6ac0: $e6 $0f
    cp $04                                        ; $6ac2: $fe $04
    jr c, jr_006_6ac8                             ; $6ac4: $38 $02

    ld a, $04                                     ; $6ac6: $3e $04

jr_006_6ac8:
    ld bc, $099c                                  ; $6ac8: $01 $9c $09
    ld d, $8c                                     ; $6acb: $16 $8c
    ld e, $84                                     ; $6acd: $1e $84

jr_006_6acf:
    push af                                       ; $6acf: $f5
    push de                                       ; $6ad0: $d5
    call Call_000_2798                            ; $6ad1: $cd $98 $27
    pop de                                        ; $6ad4: $d1
    ld a, d                                       ; $6ad5: $7a
    add $04                                       ; $6ad6: $c6 $04
    ld d, a                                       ; $6ad8: $57
    pop af                                        ; $6ad9: $f1
    dec a                                         ; $6ada: $3d
    jr nz, jr_006_6acf                            ; $6adb: $20 $f2

    ret                                           ; $6add: $c9


Call_006_6ade:
    ldh a, [$96]                                  ; $6ade: $f0 $96
    push af                                       ; $6ae0: $f5
    ld a, $01                                     ; $6ae1: $3e $01
    ldh [$96], a                                  ; $6ae3: $e0 $96
    ldh [rSVBK], a                                ; $6ae5: $e0 $70
    ld hl, $4c44                                  ; $6ae7: $21 $44 $4c
    ld de, $d000                                  ; $6aea: $11 $00 $d0
    call Call_000_0234                            ; $6aed: $cd $34 $02
    ld hl, $4c46                                  ; $6af0: $21 $46 $4c
    ld de, $d300                                  ; $6af3: $11 $00 $d3
    call Call_000_0234                            ; $6af6: $cd $34 $02
    ld hl, $4c4e                                  ; $6af9: $21 $4e $4c
    ld de, $d600                                  ; $6afc: $11 $00 $d6
    call Call_000_0234                            ; $6aff: $cd $34 $02
    ld hl, $4c4c                                  ; $6b02: $21 $4c $4c
    ld de, $d900                                  ; $6b05: $11 $00 $d9
    call Call_000_0234                            ; $6b08: $cd $34 $02
    ld hl, $d600                                  ; $6b0b: $21 $00 $d6
    ld de, $d1a0                                  ; $6b0e: $11 $a0 $d1
    ld c, $0a                                     ; $6b11: $0e $0a
    call Call_000_03eb                            ; $6b13: $cd $eb $03
    ld hl, $d900                                  ; $6b16: $21 $00 $d9
    ld de, $d4a0                                  ; $6b19: $11 $a0 $d4
    ld c, $0a                                     ; $6b1c: $0e $0a
    call Call_000_03eb                            ; $6b1e: $cd $eb $03
    ld a, $06                                     ; $6b21: $3e $06
    ldh [$96], a                                  ; $6b23: $e0 $96
    ldh [rSVBK], a                                ; $6b25: $e0 $70
    ld hl, $d20a                                  ; $6b27: $21 $0a $d2
    ld a, [$d214]                                 ; $6b2a: $fa $14 $d2
    add l                                         ; $6b2d: $85
    ld l, a                                       ; $6b2e: $6f
    jr nc, jr_006_6b32                            ; $6b2f: $30 $01

    inc h                                         ; $6b31: $24

jr_006_6b32:
    ld a, [hl+]                                   ; $6b32: $2a
    ld h, [hl]                                    ; $6b33: $66
    ld l, a                                       ; $6b34: $6f
    ld a, l                                       ; $6b35: $7d
    cp $0b                                        ; $6b36: $fe $0b
    jp z, Jump_006_6cb7                           ; $6b38: $ca $b7 $6c

    cp $ff                                        ; $6b3b: $fe $ff
    jp z, Jump_006_6ce9                           ; $6b3d: $ca $e9 $6c

    ld a, [$d214]                                 ; $6b40: $fa $14 $d2
    ld c, a                                       ; $6b43: $4f
    call Call_006_69a1                            ; $6b44: $cd $a1 $69
    push hl                                       ; $6b47: $e5
    ld c, $00                                     ; $6b48: $0e $00
    ld b, $00                                     ; $6b4a: $06 $00

jr_006_6b4c:
    ld a, $06                                     ; $6b4c: $3e $06
    ldh [$96], a                                  ; $6b4e: $e0 $96
    ldh [rSVBK], a                                ; $6b50: $e0 $70
    push hl                                       ; $6b52: $e5
    ld a, [hl+]                                   ; $6b53: $2a
    ld d, [hl]                                    ; $6b54: $56
    ld e, a                                       ; $6b55: $5f
    ld a, e                                       ; $6b56: $7b
    pop hl                                        ; $6b57: $e1
    cp $00                                        ; $6b58: $fe $00
    jr z, jr_006_6b98                             ; $6b5a: $28 $3c

    ld a, $01                                     ; $6b5c: $3e $01
    ldh [$96], a                                  ; $6b5e: $e0 $96
    ldh [rSVBK], a                                ; $6b60: $e0 $70
    push hl                                       ; $6b62: $e5
    ld a, b                                       ; $6b63: $78
    ld hl, $d4c5                                  ; $6b64: $21 $c5 $d4
    add l                                         ; $6b67: $85
    ld l, a                                       ; $6b68: $6f
    jr nc, jr_006_6b6c                            ; $6b69: $30 $01

    inc h                                         ; $6b6b: $24

jr_006_6b6c:
    ld a, e                                       ; $6b6c: $7b
    cp $de                                        ; $6b6d: $fe $de
    jr z, jr_006_6b77                             ; $6b6f: $28 $06

    cp $df                                        ; $6b71: $fe $df
    jr z, jr_006_6b7b                             ; $6b73: $28 $06

    jr jr_006_6b88                                ; $6b75: $18 $11

jr_006_6b77:
    ld e, $0e                                     ; $6b77: $1e $0e
    jr jr_006_6b7d                                ; $6b79: $18 $02

jr_006_6b7b:
    ld e, $0f                                     ; $6b7b: $1e $0f

jr_006_6b7d:
    ld a, b                                       ; $6b7d: $78
    dec a                                         ; $6b7e: $3d
    ld hl, $d4a5                                  ; $6b7f: $21 $a5 $d4
    add l                                         ; $6b82: $85
    ld l, a                                       ; $6b83: $6f
    jr nc, jr_006_6b87                            ; $6b84: $30 $01

    inc h                                         ; $6b86: $24

jr_006_6b87:
    dec b                                         ; $6b87: $05

jr_006_6b88:
    ld [hl], e                                    ; $6b88: $73
    pop hl                                        ; $6b89: $e1
    ld a, $06                                     ; $6b8a: $3e $06
    ldh [$96], a                                  ; $6b8c: $e0 $96
    ldh [rSVBK], a                                ; $6b8e: $e0 $70
    inc hl                                        ; $6b90: $23
    inc c                                         ; $6b91: $0c
    inc b                                         ; $6b92: $04
    ld a, c                                       ; $6b93: $79
    cp $0b                                        ; $6b94: $fe $0b
    jr nz, jr_006_6b4c                            ; $6b96: $20 $b4

jr_006_6b98:
    pop hl                                        ; $6b98: $e1
    ld a, $06                                     ; $6b99: $3e $06
    ldh [$96], a                                  ; $6b9b: $e0 $96
    ldh [rSVBK], a                                ; $6b9d: $e0 $70
    ld a, [$d214]                                 ; $6b9f: $fa $14 $d2
    ld c, a                                       ; $6ba2: $4f
    call Call_006_6a34                            ; $6ba3: $cd $34 $6a
    ld a, $01                                     ; $6ba6: $3e $01
    ldh [$96], a                                  ; $6ba8: $e0 $96
    ldh [rSVBK], a                                ; $6baa: $e0 $70
    ld a, l                                       ; $6bac: $7d
    or a                                          ; $6bad: $b7
    jr z, jr_006_6bbe                             ; $6bae: $28 $0e

    bit 7, a                                      ; $6bb0: $cb $7f
    jr nz, jr_006_6bb9                            ; $6bb2: $20 $05

    ld hl, $d354                                  ; $6bb4: $21 $54 $d3
    jr jr_006_6bc1                                ; $6bb7: $18 $08

jr_006_6bb9:
    ld hl, $d334                                  ; $6bb9: $21 $34 $d3
    jr jr_006_6bc1                                ; $6bbc: $18 $03

jr_006_6bbe:
    ld hl, $d314                                  ; $6bbe: $21 $14 $d3

jr_006_6bc1:
    push hl                                       ; $6bc1: $e5
    ld de, $d4ee                                  ; $6bc2: $11 $ee $d4
    ld c, $05                                     ; $6bc5: $0e $05

jr_006_6bc7:
    ld a, [hl+]                                   ; $6bc7: $2a
    push hl                                       ; $6bc8: $e5
    ld h, d                                       ; $6bc9: $62
    ld l, e                                       ; $6bca: $6b
    ld [hl], a                                    ; $6bcb: $77
    inc de                                        ; $6bcc: $13
    pop hl                                        ; $6bcd: $e1
    dec c                                         ; $6bce: $0d
    jr nz, jr_006_6bc7                            ; $6bcf: $20 $f6

    pop hl                                        ; $6bd1: $e1
    ld de, $fd00                                  ; $6bd2: $11 $00 $fd
    add hl, de                                    ; $6bd5: $19
    ld de, $d1ee                                  ; $6bd6: $11 $ee $d1
    ld c, $05                                     ; $6bd9: $0e $05

jr_006_6bdb:
    ld a, [hl+]                                   ; $6bdb: $2a
    push hl                                       ; $6bdc: $e5
    ld h, d                                       ; $6bdd: $62
    ld l, e                                       ; $6bde: $6b
    ld [hl], a                                    ; $6bdf: $77
    inc de                                        ; $6be0: $13
    pop hl                                        ; $6be1: $e1
    dec c                                         ; $6be2: $0d
    jr nz, jr_006_6bdb                            ; $6be3: $20 $f6

    ld a, $06                                     ; $6be5: $3e $06
    ldh [$96], a                                  ; $6be7: $e0 $96
    ldh [rSVBK], a                                ; $6be9: $e0 $70
    ld a, [$d214]                                 ; $6beb: $fa $14 $d2
    cp $03                                        ; $6bee: $fe $03
    jr nc, jr_006_6c15                            ; $6bf0: $30 $23

    ld c, a                                       ; $6bf2: $4f
    call Call_006_69b5                            ; $6bf3: $cd $b5 $69
    ld a, $01                                     ; $6bf6: $3e $01
    ldh [$96], a                                  ; $6bf8: $e0 $96
    ldh [rSVBK], a                                ; $6bfa: $e0 $70
    ld a, l                                       ; $6bfc: $7d
    cp $0a                                        ; $6bfd: $fe $0a
    jr c, jr_006_6c08                             ; $6bff: $38 $07

    ld a, $02                                     ; $6c01: $3e $02
    ld de, $d506                                  ; $6c03: $11 $06 $d5
    jr jr_006_6c0d                                ; $6c06: $18 $05

jr_006_6c08:
    ld a, $01                                     ; $6c08: $3e $01
    ld de, $d507                                  ; $6c0a: $11 $07 $d5

jr_006_6c0d:
    call Call_000_21f0                            ; $6c0d: $cd $f0 $21
    ld hl, $d508                                  ; $6c10: $21 $08 $d5
    ld [hl], $20                                  ; $6c13: $36 $20

jr_006_6c15:
    ld a, $06                                     ; $6c15: $3e $06
    ldh [$96], a                                  ; $6c17: $e0 $96
    ldh [rSVBK], a                                ; $6c19: $e0 $70
    ld a, [$d214]                                 ; $6c1b: $fa $14 $d2
    ld c, a                                       ; $6c1e: $4f
    call Call_006_69cf                            ; $6c1f: $cd $cf $69
    ld a, $01                                     ; $6c22: $3e $01
    ldh [$96], a                                  ; $6c24: $e0 $96
    ldh [rSVBK], a                                ; $6c26: $e0 $70
    ld a, h                                       ; $6c28: $7c
    or a                                          ; $6c29: $b7
    jr nz, jr_006_6c35                            ; $6c2a: $20 $09

    ld a, l                                       ; $6c2c: $7d
    cp $0a                                        ; $6c2d: $fe $0a
    jr c, jr_006_6c43                             ; $6c2f: $38 $12

    cp $64                                        ; $6c31: $fe $64
    jr c, jr_006_6c3c                             ; $6c33: $38 $07

jr_006_6c35:
    ld a, $03                                     ; $6c35: $3e $03
    ld de, $d509                                  ; $6c37: $11 $09 $d5
    jr jr_006_6c48                                ; $6c3a: $18 $0c

jr_006_6c3c:
    ld a, $02                                     ; $6c3c: $3e $02
    ld de, $d50a                                  ; $6c3e: $11 $0a $d5
    jr jr_006_6c48                                ; $6c41: $18 $05

jr_006_6c43:
    ld a, $01                                     ; $6c43: $3e $01
    ld de, $d50b                                  ; $6c45: $11 $0b $d5

jr_006_6c48:
    call Call_000_21f0                            ; $6c48: $cd $f0 $21
    ld hl, $d50c                                  ; $6c4b: $21 $0c $d5
    ld [hl], $20                                  ; $6c4e: $36 $20
    ld a, $01                                     ; $6c50: $3e $01
    ldh [$96], a                                  ; $6c52: $e0 $96
    ldh [rSVBK], a                                ; $6c54: $e0 $70
    ld a, $06                                     ; $6c56: $3e $06
    ldh [$96], a                                  ; $6c58: $e0 $96
    ldh [rSVBK], a                                ; $6c5a: $e0 $70
    ld a, [$d214]                                 ; $6c5c: $fa $14 $d2
    cp $03                                        ; $6c5f: $fe $03
    jr nc, jr_006_6c73                            ; $6c61: $30 $10

    ld a, $01                                     ; $6c63: $3e $01
    ldh [$96], a                                  ; $6c65: $e0 $96
    ldh [rSVBK], a                                ; $6c67: $e0 $70
    ld hl, $d205                                  ; $6c69: $21 $05 $d2
    ld [hl], $08                                  ; $6c6c: $36 $08
    ld hl, $d505                                  ; $6c6e: $21 $05 $d5
    ld [hl], $8f                                  ; $6c71: $36 $8f

jr_006_6c73:
    ld a, $01                                     ; $6c73: $3e $01
    ldh [$96], a                                  ; $6c75: $e0 $96
    ldh [rSVBK], a                                ; $6c77: $e0 $70
    ld hl, $d20c                                  ; $6c79: $21 $0c $d2
    ld [hl], $08                                  ; $6c7c: $36 $08
    ld hl, $d20e                                  ; $6c7e: $21 $0e $d2
    ld [hl], $28                                  ; $6c81: $36 $28
    ld hl, $d20f                                  ; $6c83: $21 $0f $d2
    ld [hl], $28                                  ; $6c86: $36 $28
    ld hl, $d210                                  ; $6c88: $21 $10 $d2
    ld [hl], $08                                  ; $6c8b: $36 $08
    ld hl, $d211                                  ; $6c8d: $21 $11 $d2
    ld [hl], $08                                  ; $6c90: $36 $08
    ld hl, $d212                                  ; $6c92: $21 $12 $d2
    ld [hl], $08                                  ; $6c95: $36 $08
    ld hl, $d50c                                  ; $6c97: $21 $0c $d5
    ld [hl], $8e                                  ; $6c9a: $36 $8e
    ld hl, $d50e                                  ; $6c9c: $21 $0e $d5
    ld [hl], $8c                                  ; $6c9f: $36 $8c
    ld hl, $d50f                                  ; $6ca1: $21 $0f $d5
    ld [hl], $8c                                  ; $6ca4: $36 $8c
    ld hl, $d510                                  ; $6ca6: $21 $10 $d5
    ld [hl], $8b                                  ; $6ca9: $36 $8b
    ld hl, $d511                                  ; $6cab: $21 $11 $d5
    ld [hl], $8c                                  ; $6cae: $36 $8c
    ld hl, $d512                                  ; $6cb0: $21 $12 $d5
    ld [hl], $8c                                  ; $6cb3: $36 $8c
    jr jr_006_6d07                                ; $6cb5: $18 $50

Jump_006_6cb7:
    ld a, $01                                     ; $6cb7: $3e $01
    ldh [$96], a                                  ; $6cb9: $e0 $96
    ldh [rSVBK], a                                ; $6cbb: $e0 $70
    rst $18                                       ; $6cbd: $df

    db $1a, $03

    ld hl, $10f6                                  ; $6cc0: $21 $f6 $10
    ld a, $00                                     ; $6cc3: $3e $00
    add l                                         ; $6cc5: $85
    ld l, a                                       ; $6cc6: $6f
    jr nc, jr_006_6cca                            ; $6cc7: $30 $01

    inc h                                         ; $6cc9: $24

jr_006_6cca:
    ld de, $d4c5                                  ; $6cca: $11 $c5 $d4
    ld c, $20                                     ; $6ccd: $0e $20
    rst $18                                       ; $6ccf: $df

    db $22, $05

    ld hl, $10f6                                  ; $6cd2: $21 $f6 $10
    ld a, $01                                     ; $6cd5: $3e $01
    add l                                         ; $6cd7: $85
    ld l, a                                       ; $6cd8: $6f
    jr nc, jr_006_6cdc                            ; $6cd9: $30 $01

    inc h                                         ; $6cdb: $24

jr_006_6cdc:
    ld de, $d505                                  ; $6cdc: $11 $05 $d5
    ld c, $20                                     ; $6cdf: $0e $20
    rst $18                                       ; $6ce1: $df

    db $22, $05

    rst $18                                       ; $6ce4: $df

    db $24, $03

    jr jr_006_6d07                                ; $6ce7: $18 $1e

Jump_006_6ce9:
    ld a, $01                                     ; $6ce9: $3e $01
    ldh [$96], a                                  ; $6ceb: $e0 $96
    ldh [rSVBK], a                                ; $6ced: $e0 $70
    rst $18                                       ; $6cef: $df
    ld a, [de]                                    ; $6cf0: $1a
    inc bc                                        ; $6cf1: $03
    ld hl, $10f6                                  ; $6cf2: $21 $f6 $10
    ld a, $02                                     ; $6cf5: $3e $02
    add l                                         ; $6cf7: $85
    ld l, a                                       ; $6cf8: $6f
    jr nc, jr_006_6cfc                            ; $6cf9: $30 $01

    inc h                                         ; $6cfb: $24

jr_006_6cfc:
    ld de, $d4e5                                  ; $6cfc: $11 $e5 $d4
    ld c, $20                                     ; $6cff: $0e $20
    rst $18                                       ; $6d01: $df
    ld [hl+], a                                   ; $6d02: $22
    dec b                                         ; $6d03: $05
    rst $18                                       ; $6d04: $df
    inc h                                         ; $6d05: $24
    inc bc                                        ; $6d06: $03

jr_006_6d07:
    ld a, $01                                     ; $6d07: $3e $01
    ldh [$96], a                                  ; $6d09: $e0 $96
    ldh [rSVBK], a                                ; $6d0b: $e0 $70
    call Call_006_62a5                            ; $6d0d: $cd $a5 $62
    call Call_006_6d22                            ; $6d10: $cd $22 $6d
    call Call_000_2e3b                            ; $6d13: $cd $3b $2e
    ld a, $06                                     ; $6d16: $3e $06
    ldh [$96], a                                  ; $6d18: $e0 $96
    ldh [rSVBK], a                                ; $6d1a: $e0 $70
    pop af                                        ; $6d1c: $f1
    ldh [$96], a                                  ; $6d1d: $e0 $96
    ldh [rSVBK], a                                ; $6d1f: $e0 $70
    ret                                           ; $6d21: $c9


Call_006_6d22:
    ld hl, $d1a0                                  ; $6d22: $21 $a0 $d1
    ld de, $b9a0                                  ; $6d25: $11 $a0 $b9
    ld c, $0a                                     ; $6d28: $0e $0a
    call Call_000_0468                            ; $6d2a: $cd $68 $04
    ld hl, $d4a0                                  ; $6d2d: $21 $a0 $d4
    ld de, $99a0                                  ; $6d30: $11 $a0 $99
    ld c, $0a                                     ; $6d33: $0e $0a
    call Call_000_0468                            ; $6d35: $cd $68 $04
    ret                                           ; $6d38: $c9


jr_006_6d39:
    ld [hl+], a                                   ; $6d39: $22
    dec c                                         ; $6d3a: $0d
    jr nz, jr_006_6d39                            ; $6d3b: $20 $fc

    ret                                           ; $6d3d: $c9


    call Call_006_60e6                            ; $6d3e: $cd $e6 $60
    ld a, $1f                                     ; $6d41: $3e $1f
    ld hl, $66f6                                  ; $6d43: $21 $f6 $66
    call Call_000_23e8                            ; $6d46: $cd $e8 $23
    ld a, $1e                                     ; $6d49: $3e $1e
    ld hl, $6a4e                                  ; $6d4b: $21 $4e $6a
    call Call_000_23e8                            ; $6d4e: $cd $e8 $23
    call Call_006_6914                            ; $6d51: $cd $14 $69
    call Call_006_6ade                            ; $6d54: $cd $de $6a
    ld c, $10                                     ; $6d57: $0e $10
    call Call_000_25af                            ; $6d59: $cd $af $25
    call Call_000_2625                            ; $6d5c: $cd $25 $26
    ld a, $1d                                     ; $6d5f: $3e $1d
    ld hl, $65d9                                  ; $6d61: $21 $d9 $65
    call Call_000_23e8                            ; $6d64: $cd $e8 $23
    ld a, $1c                                     ; $6d67: $3e $1c
    ld hl, $6617                                  ; $6d69: $21 $17 $66
    call Call_000_23e8                            ; $6d6c: $cd $e8 $23

jr_006_6d6f:
    call Call_000_2e3b                            ; $6d6f: $cd $3b $2e
    call Call_006_6778                            ; $6d72: $cd $78 $67
    cp $ff                                        ; $6d75: $fe $ff
    jr z, jr_006_6d7f                             ; $6d77: $28 $06

    cp $fe                                        ; $6d79: $fe $fe
    jr nz, jr_006_6d7f                            ; $6d7b: $20 $02

    jr jr_006_6d6f                                ; $6d7d: $18 $f0

jr_006_6d7f:
    push af                                       ; $6d7f: $f5
    ld hl, $66f6                                  ; $6d80: $21 $f6 $66
    call Call_000_2449                            ; $6d83: $cd $49 $24
    ld hl, $65d9                                  ; $6d86: $21 $d9 $65
    call Call_000_2449                            ; $6d89: $cd $49 $24
    ld hl, $6a4e                                  ; $6d8c: $21 $4e $6a
    call Call_000_2449                            ; $6d8f: $cd $49 $24
    ld hl, $6617                                  ; $6d92: $21 $17 $66
    call Call_000_2449                            ; $6d95: $cd $49 $24
    pop af                                        ; $6d98: $f1
    ret                                           ; $6d99: $c9


Call_006_6d9a:
    push af                                       ; $6d9a: $f5
    push bc                                       ; $6d9b: $c5
    push de                                       ; $6d9c: $d5
    push hl                                       ; $6d9d: $e5
    ldh a, [$96]                                  ; $6d9e: $f0 $96
    push af                                       ; $6da0: $f5
    xor a                                         ; $6da1: $af
    ld [$c4b2], a                                 ; $6da2: $ea $b2 $c4
    ld a, $06                                     ; $6da5: $3e $06
    ldh [$96], a                                  ; $6da7: $e0 $96
    ldh [rSVBK], a                                ; $6da9: $e0 $70
    ld hl, $d20a                                  ; $6dab: $21 $0a $d2
    ld a, [$d215]                                 ; $6dae: $fa $15 $d2
    push af                                       ; $6db1: $f5
    add l                                         ; $6db2: $85
    ld l, a                                       ; $6db3: $6f
    jr nc, jr_006_6db7                            ; $6db4: $30 $01

    inc h                                         ; $6db6: $24

jr_006_6db7:
    ld a, [hl+]                                   ; $6db7: $2a
    ld h, [hl]                                    ; $6db8: $66
    ld l, a                                       ; $6db9: $6f
    ld a, l                                       ; $6dba: $7d
    ld hl, $d000                                  ; $6dbb: $21 $00 $d0
    cp $ff                                        ; $6dbe: $fe $ff
    jr z, jr_006_6dfe                             ; $6dc0: $28 $3c

    ld hl, $6e35                                  ; $6dc2: $21 $35 $6e
    add a                                         ; $6dc5: $87
    add l                                         ; $6dc6: $85
    ld l, a                                       ; $6dc7: $6f
    jr nc, jr_006_6dcb                            ; $6dc8: $30 $01

    inc h                                         ; $6dca: $24

jr_006_6dcb:
    ld a, [hl+]                                   ; $6dcb: $2a
    ld h, [hl]                                    ; $6dcc: $66
    ld l, a                                       ; $6dcd: $6f
    ld a, $03                                     ; $6dce: $3e $03
    ldh [$96], a                                  ; $6dd0: $e0 $96
    ldh [rSVBK], a                                ; $6dd2: $e0 $70
    ld de, $d000                                  ; $6dd4: $11 $00 $d0
    call Call_000_0234                            ; $6dd7: $cd $34 $02
    pop af                                        ; $6dda: $f1
    ld h, $00                                     ; $6ddb: $26 $00
    ld l, a                                       ; $6ddd: $6f
    add hl, hl                                    ; $6dde: $29
    add hl, hl                                    ; $6ddf: $29
    add hl, hl                                    ; $6de0: $29
    add l                                         ; $6de1: $85
    ld l, a                                       ; $6de2: $6f
    xor a                                         ; $6de3: $af
    adc h                                         ; $6de4: $8c
    ld h, a                                       ; $6de5: $67
    add hl, hl                                    ; $6de6: $29
    add hl, hl                                    ; $6de7: $29
    add hl, hl                                    ; $6de8: $29
    add hl, hl                                    ; $6de9: $29
    ld de, $a9e0                                  ; $6dea: $11 $e0 $a9
    add hl, de                                    ; $6ded: $19
    ld d, h                                       ; $6dee: $54
    ld e, l                                       ; $6def: $5d
    ld a, $03                                     ; $6df0: $3e $03
    ldh [$96], a                                  ; $6df2: $e0 $96
    ldh [rSVBK], a                                ; $6df4: $e0 $70
    ld hl, $d000                                  ; $6df6: $21 $00 $d0
    ld c, $09                                     ; $6df9: $0e $09
    call Call_000_0468                            ; $6dfb: $cd $68 $04

jr_006_6dfe:
    ld a, $06                                     ; $6dfe: $3e $06
    ldh [$96], a                                  ; $6e00: $e0 $96
    ldh [rSVBK], a                                ; $6e02: $e0 $70
    ld hl, $d20a                                  ; $6e04: $21 $0a $d2
    ld a, [$d214]                                 ; $6e07: $fa $14 $d2
    add l                                         ; $6e0a: $85
    ld l, a                                       ; $6e0b: $6f
    jr nc, jr_006_6e0f                            ; $6e0c: $30 $01

    inc h                                         ; $6e0e: $24

jr_006_6e0f:
    ld a, [hl+]                                   ; $6e0f: $2a
    ld h, [hl]                                    ; $6e10: $66
    ld l, a                                       ; $6e11: $6f
    ld a, l                                       ; $6e12: $7d
    add a                                         ; $6e13: $87
    ld hl, $6e35                                  ; $6e14: $21 $35 $6e
    add l                                         ; $6e17: $85
    ld l, a                                       ; $6e18: $6f
    jr nc, jr_006_6e1c                            ; $6e19: $30 $01

    inc h                                         ; $6e1b: $24

jr_006_6e1c:
    ld a, [hl+]                                   ; $6e1c: $2a
    ld h, [hl]                                    ; $6e1d: $66
    ld l, a                                       ; $6e1e: $6f
    ld a, $02                                     ; $6e1f: $3e $02
    ldh [$96], a                                  ; $6e21: $e0 $96
    ldh [rSVBK], a                                ; $6e23: $e0 $70
    ld de, $d000                                  ; $6e25: $11 $00 $d0
    call Call_000_0234                            ; $6e28: $cd $34 $02
    pop af                                        ; $6e2b: $f1
    ldh [$96], a                                  ; $6e2c: $e0 $96
    ldh [rSVBK], a                                ; $6e2e: $e0 $70
    pop hl                                        ; $6e30: $e1
    pop de                                        ; $6e31: $d1
    pop bc                                        ; $6e32: $c1
    pop af                                        ; $6e33: $f1
    ret                                           ; $6e34: $c9


    ld [bc], a                                    ; $6e35: $02
    ld c, l                                       ; $6e36: $4d
    inc b                                         ; $6e37: $04
    ld c, l                                       ; $6e38: $4d
    ld b, $4d                                     ; $6e39: $06 $4d
    ld [$0a4d], sp                                ; $6e3b: $08 $4d $0a
    ld c, l                                       ; $6e3e: $4d
    inc c                                         ; $6e3f: $0c
    ld c, l                                       ; $6e40: $4d
    ld c, $4d                                     ; $6e41: $0e $4d
    db $10                                        ; $6e43: $10
    ld c, l                                       ; $6e44: $4d

    db $14, $4d, $12, $4d

    ld d, $4d                                     ; $6e49: $16 $4d

    db $18, $4d

    push af                                       ; $6e4d: $f5
    push bc                                       ; $6e4e: $c5
    push de                                       ; $6e4f: $d5
    push hl                                       ; $6e50: $e5
    ldh a, [$96]                                  ; $6e51: $f0 $96
    push af                                       ; $6e53: $f5
    ld a, [$c4b2]                                 ; $6e54: $fa $b2 $c4
    or a                                          ; $6e57: $b7
    jp z, Jump_006_6ef0                           ; $6e58: $ca $f0 $6e

    ld a, $06                                     ; $6e5b: $3e $06
    ldh [$96], a                                  ; $6e5d: $e0 $96
    ldh [rSVBK], a                                ; $6e5f: $e0 $70
    ld a, [$d214]                                 ; $6e61: $fa $14 $d2
    ld h, $00                                     ; $6e64: $26 $00
    ld l, a                                       ; $6e66: $6f
    add hl, hl                                    ; $6e67: $29
    add hl, hl                                    ; $6e68: $29
    add hl, hl                                    ; $6e69: $29
    add l                                         ; $6e6a: $85
    ld l, a                                       ; $6e6b: $6f
    xor a                                         ; $6e6c: $af
    adc h                                         ; $6e6d: $8c
    ld h, a                                       ; $6e6e: $67
    add hl, hl                                    ; $6e6f: $29
    add hl, hl                                    ; $6e70: $29
    add hl, hl                                    ; $6e71: $29
    add hl, hl                                    ; $6e72: $29
    ld de, $a9e0                                  ; $6e73: $11 $e0 $a9
    add hl, de                                    ; $6e76: $19
    ld d, h                                       ; $6e77: $54
    ld e, l                                       ; $6e78: $5d
    push de                                       ; $6e79: $d5
    ld a, [$d214]                                 ; $6e7a: $fa $14 $d2
    ld hl, $d20a                                  ; $6e7d: $21 $0a $d2
    add l                                         ; $6e80: $85
    ld l, a                                       ; $6e81: $6f
    jr nc, jr_006_6e85                            ; $6e82: $30 $01

    inc h                                         ; $6e84: $24

jr_006_6e85:
    ld a, [hl]                                    ; $6e85: $7e
    add a                                         ; $6e86: $87
    add a                                         ; $6e87: $87
    ld hl, $6efe                                  ; $6e88: $21 $fe $6e
    add l                                         ; $6e8b: $85
    ld l, a                                       ; $6e8c: $6f
    jr nc, jr_006_6e90                            ; $6e8d: $30 $01

    inc h                                         ; $6e8f: $24

jr_006_6e90:
    ld a, $02                                     ; $6e90: $3e $02
    ldh [$96], a                                  ; $6e92: $e0 $96
    ldh [rSVBK], a                                ; $6e94: $e0 $70
    ld a, [$c4b2]                                 ; $6e96: $fa $b2 $c4
    ld b, a                                       ; $6e99: $47
    ld a, [hl]                                    ; $6e9a: $7e
    ld c, a                                       ; $6e9b: $4f
    ld a, b                                       ; $6e9c: $78
    cp c                                          ; $6e9d: $b9
    jr nc, jr_006_6eba                            ; $6e9e: $30 $1a

    inc hl                                        ; $6ea0: $23
    ld a, [hl]                                    ; $6ea1: $7e
    ld c, a                                       ; $6ea2: $4f
    ld a, b                                       ; $6ea3: $78
    cp c                                          ; $6ea4: $b9
    jr nc, jr_006_6eb6                            ; $6ea5: $30 $0f

    inc hl                                        ; $6ea7: $23
    ld a, [hl]                                    ; $6ea8: $7e
    ld c, a                                       ; $6ea9: $4f
    ld a, b                                       ; $6eaa: $78
    cp c                                          ; $6eab: $b9
    jr nc, jr_006_6eb2                            ; $6eac: $30 $04

    ld a, $00                                     ; $6eae: $3e $00
    jr jr_006_6ecb                                ; $6eb0: $18 $19

jr_006_6eb2:
    ld a, $01                                     ; $6eb2: $3e $01
    jr jr_006_6ecb                                ; $6eb4: $18 $15

jr_006_6eb6:
    ld a, $02                                     ; $6eb6: $3e $02
    jr jr_006_6ecb                                ; $6eb8: $18 $11

jr_006_6eba:
    ld a, c                                       ; $6eba: $79
    inc hl                                        ; $6ebb: $23
    inc hl                                        ; $6ebc: $23
    inc hl                                        ; $6ebd: $23
    ld a, [hl]                                    ; $6ebe: $7e
    add c                                         ; $6ebf: $81
    ld c, a                                       ; $6ec0: $4f
    ld a, b                                       ; $6ec1: $78
    cp c                                          ; $6ec2: $b9
    jr c, jr_006_6ec9                             ; $6ec3: $38 $04

    xor a                                         ; $6ec5: $af
    ld [$c4b2], a                                 ; $6ec6: $ea $b2 $c4

jr_006_6ec9:
    ld a, $03                                     ; $6ec9: $3e $03

jr_006_6ecb:
    and $03                                       ; $6ecb: $e6 $03
    ld hl, $6efa                                  ; $6ecd: $21 $fa $6e
    ld d, $00                                     ; $6ed0: $16 $00
    ld e, a                                       ; $6ed2: $5f
    add hl, de                                    ; $6ed3: $19
    ld a, [hl+]                                   ; $6ed4: $2a
    ld h, [hl]                                    ; $6ed5: $66
    ld l, a                                       ; $6ed6: $6f
    ld a, l                                       ; $6ed7: $7d
    ld h, $00                                     ; $6ed8: $26 $00
    ld l, a                                       ; $6eda: $6f
    add hl, hl                                    ; $6edb: $29
    add hl, hl                                    ; $6edc: $29
    add hl, hl                                    ; $6edd: $29
    ld d, $00                                     ; $6ede: $16 $00
    ld e, a                                       ; $6ee0: $5f
    add hl, de                                    ; $6ee1: $19
    add hl, hl                                    ; $6ee2: $29
    add hl, hl                                    ; $6ee3: $29
    add hl, hl                                    ; $6ee4: $29
    add hl, hl                                    ; $6ee5: $29
    ld de, $d000                                  ; $6ee6: $11 $00 $d0
    add hl, de                                    ; $6ee9: $19
    pop de                                        ; $6eea: $d1
    ld c, $09                                     ; $6eeb: $0e $09
    call Call_000_0468                            ; $6eed: $cd $68 $04

Jump_006_6ef0:
    pop af                                        ; $6ef0: $f1
    ldh [$96], a                                  ; $6ef1: $e0 $96
    ldh [rSVBK], a                                ; $6ef3: $e0 $70
    pop hl                                        ; $6ef5: $e1
    pop de                                        ; $6ef6: $d1
    pop bc                                        ; $6ef7: $c1
    pop af                                        ; $6ef8: $f1
    ret                                           ; $6ef9: $c9


    db $00, $01, $02, $01

    ld b, c                                       ; $6efe: $41
    inc hl                                        ; $6eff: $23
    ld e, $05                                     ; $6f00: $1e $05
    ld b, c                                       ; $6f02: $41
    inc hl                                        ; $6f03: $23
    ld e, $05                                     ; $6f04: $1e $05
    ld b, c                                       ; $6f06: $41
    inc hl                                        ; $6f07: $23
    ld e, $05                                     ; $6f08: $1e $05
    ld b, c                                       ; $6f0a: $41
    inc hl                                        ; $6f0b: $23
    ld e, $05                                     ; $6f0c: $1e $05
    ld b, c                                       ; $6f0e: $41
    inc hl                                        ; $6f0f: $23
    ld e, $05                                     ; $6f10: $1e $05
    ld b, c                                       ; $6f12: $41
    inc hl                                        ; $6f13: $23
    ld e, $05                                     ; $6f14: $1e $05
    ld b, c                                       ; $6f16: $41
    inc hl                                        ; $6f17: $23
    ld e, $05                                     ; $6f18: $1e $05
    ld b, c                                       ; $6f1a: $41
    inc hl                                        ; $6f1b: $23
    ld e, $05                                     ; $6f1c: $1e $05

    db $41, $23, $1e

    dec b                                         ; $6f21: $05

    db $41, $23, $1e

    dec b                                         ; $6f25: $05
    ld b, c                                       ; $6f26: $41
    inc hl                                        ; $6f27: $23
    ld e, $05                                     ; $6f28: $1e $05

    db $32, $23, $1e

    dec b                                         ; $6f2d: $05
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    rst $38                                       ; $6f57: $ff
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    rst $38                                       ; $6f5a: $ff
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    rst $38                                       ; $6f5d: $ff
    rst $38                                       ; $6f5e: $ff
    rst $38                                       ; $6f5f: $ff
    rst $38                                       ; $6f60: $ff
    rst $38                                       ; $6f61: $ff
    rst $38                                       ; $6f62: $ff
    rst $38                                       ; $6f63: $ff
    rst $38                                       ; $6f64: $ff
    rst $38                                       ; $6f65: $ff
    rst $38                                       ; $6f66: $ff
    rst $38                                       ; $6f67: $ff
    rst $38                                       ; $6f68: $ff
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $38                                       ; $6f6b: $ff
    rst $38                                       ; $6f6c: $ff
    rst $38                                       ; $6f6d: $ff
    rst $38                                       ; $6f6e: $ff
    rst $38                                       ; $6f6f: $ff
    rst $38                                       ; $6f70: $ff
    rst $38                                       ; $6f71: $ff
    rst $38                                       ; $6f72: $ff
    rst $38                                       ; $6f73: $ff
    rst $38                                       ; $6f74: $ff
    rst $38                                       ; $6f75: $ff
    rst $38                                       ; $6f76: $ff
    rst $38                                       ; $6f77: $ff
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
    rst $38                                       ; $6f7a: $ff
    rst $38                                       ; $6f7b: $ff
    rst $38                                       ; $6f7c: $ff
    rst $38                                       ; $6f7d: $ff
    rst $38                                       ; $6f7e: $ff
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    rst $38                                       ; $6f82: $ff
    rst $38                                       ; $6f83: $ff
    rst $38                                       ; $6f84: $ff
    rst $38                                       ; $6f85: $ff
    rst $38                                       ; $6f86: $ff
    rst $38                                       ; $6f87: $ff
    rst $38                                       ; $6f88: $ff
    rst $38                                       ; $6f89: $ff
    rst $38                                       ; $6f8a: $ff
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    rst $38                                       ; $6f92: $ff
    rst $38                                       ; $6f93: $ff
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff
    rst $38                                       ; $6f96: $ff
    rst $38                                       ; $6f97: $ff
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    rst $38                                       ; $6f9e: $ff
    rst $38                                       ; $6f9f: $ff
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    rst $38                                       ; $6fa4: $ff
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    rst $38                                       ; $6faa: $ff
    rst $38                                       ; $6fab: $ff
    rst $38                                       ; $6fac: $ff
    rst $38                                       ; $6fad: $ff
    rst $38                                       ; $6fae: $ff
    rst $38                                       ; $6faf: $ff
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    rst $38                                       ; $6fb2: $ff
    rst $38                                       ; $6fb3: $ff
    rst $38                                       ; $6fb4: $ff
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    rst $38                                       ; $6fba: $ff
    rst $38                                       ; $6fbb: $ff
    rst $38                                       ; $6fbc: $ff
    rst $38                                       ; $6fbd: $ff
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    rst $38                                       ; $6fc2: $ff
    rst $38                                       ; $6fc3: $ff
    rst $38                                       ; $6fc4: $ff
    rst $38                                       ; $6fc5: $ff
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    rst $38                                       ; $6fd1: $ff
    rst $38                                       ; $6fd2: $ff
    rst $38                                       ; $6fd3: $ff
    rst $38                                       ; $6fd4: $ff
    rst $38                                       ; $6fd5: $ff
    rst $38                                       ; $6fd6: $ff
    rst $38                                       ; $6fd7: $ff
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    rst $38                                       ; $6fdf: $ff
    rst $38                                       ; $6fe0: $ff
    rst $38                                       ; $6fe1: $ff
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
    rst $38                                       ; $6fe8: $ff
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    rst $38                                       ; $6fee: $ff
    rst $38                                       ; $6fef: $ff
    rst $38                                       ; $6ff0: $ff
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
    rst $38                                       ; $7000: $ff
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    rst $38                                       ; $7011: $ff
    rst $38                                       ; $7012: $ff
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    rst $38                                       ; $7016: $ff
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
    rst $38                                       ; $7020: $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    rst $38                                       ; $7032: $ff
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    rst $38                                       ; $704c: $ff
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    rst $38                                       ; $704f: $ff
    rst $38                                       ; $7050: $ff
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    rst $38                                       ; $7054: $ff
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    rst $38                                       ; $7057: $ff
    rst $38                                       ; $7058: $ff
    rst $38                                       ; $7059: $ff
    rst $38                                       ; $705a: $ff
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    rst $38                                       ; $7063: $ff
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    rst $38                                       ; $7066: $ff
    rst $38                                       ; $7067: $ff
    rst $38                                       ; $7068: $ff
    rst $38                                       ; $7069: $ff
    rst $38                                       ; $706a: $ff
    rst $38                                       ; $706b: $ff
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    rst $38                                       ; $706e: $ff
    rst $38                                       ; $706f: $ff
    rst $38                                       ; $7070: $ff
    rst $38                                       ; $7071: $ff
    rst $38                                       ; $7072: $ff
    rst $38                                       ; $7073: $ff
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    rst $38                                       ; $7082: $ff
    rst $38                                       ; $7083: $ff
    rst $38                                       ; $7084: $ff
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    rst $38                                       ; $7088: $ff
    rst $38                                       ; $7089: $ff
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    rst $38                                       ; $708d: $ff
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    rst $38                                       ; $7090: $ff
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    rst $38                                       ; $7094: $ff
    rst $38                                       ; $7095: $ff
    rst $38                                       ; $7096: $ff
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    rst $38                                       ; $70a1: $ff
    rst $38                                       ; $70a2: $ff
    rst $38                                       ; $70a3: $ff
    rst $38                                       ; $70a4: $ff
    rst $38                                       ; $70a5: $ff
    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    rst $38                                       ; $70aa: $ff
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    rst $38                                       ; $70b0: $ff
    rst $38                                       ; $70b1: $ff
    rst $38                                       ; $70b2: $ff
    rst $38                                       ; $70b3: $ff
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    rst $38                                       ; $70b9: $ff
    rst $38                                       ; $70ba: $ff
    rst $38                                       ; $70bb: $ff
    rst $38                                       ; $70bc: $ff
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    rst $38                                       ; $70bf: $ff
    rst $38                                       ; $70c0: $ff
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    rst $38                                       ; $70c3: $ff
    rst $38                                       ; $70c4: $ff
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    rst $38                                       ; $70c7: $ff
    rst $38                                       ; $70c8: $ff
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    rst $38                                       ; $70cc: $ff
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    rst $38                                       ; $70d2: $ff
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
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
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
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
    rst $38                                       ; $710a: $ff
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
    rst $38                                       ; $711b: $ff
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
    rst $38                                       ; $7126: $ff
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    rst $38                                       ; $712b: $ff
    rst $38                                       ; $712c: $ff
    rst $38                                       ; $712d: $ff
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    rst $38                                       ; $7132: $ff
    rst $38                                       ; $7133: $ff
    rst $38                                       ; $7134: $ff
    rst $38                                       ; $7135: $ff
    rst $38                                       ; $7136: $ff
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    rst $38                                       ; $7139: $ff
    rst $38                                       ; $713a: $ff
    rst $38                                       ; $713b: $ff
    rst $38                                       ; $713c: $ff
    rst $38                                       ; $713d: $ff
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    rst $38                                       ; $7142: $ff
    rst $38                                       ; $7143: $ff
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    rst $38                                       ; $7149: $ff
    rst $38                                       ; $714a: $ff
    rst $38                                       ; $714b: $ff
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    rst $38                                       ; $7150: $ff
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $38                                       ; $7162: $ff
    rst $38                                       ; $7163: $ff
    rst $38                                       ; $7164: $ff
    rst $38                                       ; $7165: $ff
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
    rst $38                                       ; $7171: $ff
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
    rst $38                                       ; $7182: $ff
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
    rst $38                                       ; $7191: $ff
    rst $38                                       ; $7192: $ff
    rst $38                                       ; $7193: $ff
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    rst $38                                       ; $719f: $ff
    rst $38                                       ; $71a0: $ff
    rst $38                                       ; $71a1: $ff
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    rst $38                                       ; $71a4: $ff
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    rst $38                                       ; $71a9: $ff
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    rst $38                                       ; $71ac: $ff
    rst $38                                       ; $71ad: $ff
    rst $38                                       ; $71ae: $ff
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    rst $38                                       ; $71b3: $ff
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    rst $38                                       ; $71c2: $ff
    rst $38                                       ; $71c3: $ff
    rst $38                                       ; $71c4: $ff
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    rst $38                                       ; $71d0: $ff
    rst $38                                       ; $71d1: $ff
    rst $38                                       ; $71d2: $ff
    rst $38                                       ; $71d3: $ff
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
    rst $38                                       ; $71e6: $ff
    rst $38                                       ; $71e7: $ff
    rst $38                                       ; $71e8: $ff
    rst $38                                       ; $71e9: $ff
    rst $38                                       ; $71ea: $ff
    rst $38                                       ; $71eb: $ff
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    rst $38                                       ; $71ee: $ff
    rst $38                                       ; $71ef: $ff
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
    rst $38                                       ; $7208: $ff
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    rst $38                                       ; $7227: $ff
    rst $38                                       ; $7228: $ff
    rst $38                                       ; $7229: $ff
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    rst $38                                       ; $7230: $ff
    rst $38                                       ; $7231: $ff
    rst $38                                       ; $7232: $ff
    rst $38                                       ; $7233: $ff
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
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
    rst $38                                       ; $7264: $ff
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
    rst $38                                       ; $7275: $ff
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
    rst $38                                       ; $7286: $ff
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
    rst $38                                       ; $7297: $ff
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
    rst $38                                       ; $72a8: $ff
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
    rst $38                                       ; $72b9: $ff
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
    rst $38                                       ; $72ca: $ff
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
    rst $38                                       ; $72db: $ff
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
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff
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
    rst $38                                       ; $72fd: $ff
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
    rst $38                                       ; $7315: $ff
    rst $38                                       ; $7316: $ff
    rst $38                                       ; $7317: $ff
    rst $38                                       ; $7318: $ff
    rst $38                                       ; $7319: $ff
    rst $38                                       ; $731a: $ff
    rst $38                                       ; $731b: $ff
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    rst $38                                       ; $731e: $ff
    rst $38                                       ; $731f: $ff
    rst $38                                       ; $7320: $ff
    rst $38                                       ; $7321: $ff
    rst $38                                       ; $7322: $ff
    rst $38                                       ; $7323: $ff
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    rst $38                                       ; $7327: $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    rst $38                                       ; $7330: $ff
    rst $38                                       ; $7331: $ff
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    rst $38                                       ; $733b: $ff
    rst $38                                       ; $733c: $ff
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    rst $38                                       ; $7340: $ff
    rst $38                                       ; $7341: $ff
    rst $38                                       ; $7342: $ff
    rst $38                                       ; $7343: $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    rst $38                                       ; $7346: $ff
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    rst $38                                       ; $7356: $ff
    rst $38                                       ; $7357: $ff
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    rst $38                                       ; $7367: $ff
    rst $38                                       ; $7368: $ff
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    rst $38                                       ; $7379: $ff
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    rst $38                                       ; $73ad: $ff
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    rst $38                                       ; $73c2: $ff
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff
    rst $38                                       ; $73cf: $ff
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
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
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    rst $38                                       ; $73fe: $ff
    rst $38                                       ; $73ff: $ff
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    rst $38                                       ; $7402: $ff
    rst $38                                       ; $7403: $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    rst $38                                       ; $7408: $ff
    rst $38                                       ; $7409: $ff
    rst $38                                       ; $740a: $ff
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    rst $38                                       ; $740f: $ff
    rst $38                                       ; $7410: $ff
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    rst $38                                       ; $7413: $ff
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    rst $38                                       ; $7426: $ff
    rst $38                                       ; $7427: $ff
    rst $38                                       ; $7428: $ff
    rst $38                                       ; $7429: $ff
    rst $38                                       ; $742a: $ff
    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    rst $38                                       ; $7447: $ff
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
    rst $38                                       ; $7458: $ff
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
    rst $38                                       ; $7469: $ff
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
    rst $38                                       ; $747a: $ff
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
    rst $38                                       ; $748b: $ff
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
    rst $38                                       ; $749c: $ff
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
    rst $38                                       ; $74ad: $ff
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
    rst $38                                       ; $74be: $ff
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
    rst $38                                       ; $74cf: $ff
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
    rst $38                                       ; $74e0: $ff
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
    rst $38                                       ; $74f1: $ff
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
    rst $38                                       ; $7502: $ff
    rst $38                                       ; $7503: $ff
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    rst $38                                       ; $7508: $ff
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    rst $38                                       ; $7517: $ff
    rst $38                                       ; $7518: $ff
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    rst $38                                       ; $751f: $ff
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    rst $38                                       ; $7527: $ff
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rst $38                                       ; $752f: $ff
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    rst $38                                       ; $7550: $ff
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    rst $38                                       ; $755e: $ff
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    rst $38                                       ; $7574: $ff
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff
    rst $38                                       ; $7577: $ff
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    rst $38                                       ; $757e: $ff
    rst $38                                       ; $757f: $ff
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    rst $38                                       ; $7582: $ff
    rst $38                                       ; $7583: $ff
    rst $38                                       ; $7584: $ff
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    rst $38                                       ; $758c: $ff
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $38                                       ; $758f: $ff
    rst $38                                       ; $7590: $ff
    rst $38                                       ; $7591: $ff
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
    rst $38                                       ; $7596: $ff
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    rst $38                                       ; $7599: $ff
    rst $38                                       ; $759a: $ff
    rst $38                                       ; $759b: $ff
    rst $38                                       ; $759c: $ff
    rst $38                                       ; $759d: $ff
    rst $38                                       ; $759e: $ff
    rst $38                                       ; $759f: $ff
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    rst $38                                       ; $75ab: $ff
    rst $38                                       ; $75ac: $ff
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    rst $38                                       ; $75be: $ff
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    rst $38                                       ; $75c2: $ff
    rst $38                                       ; $75c3: $ff
    rst $38                                       ; $75c4: $ff
    rst $38                                       ; $75c5: $ff
    rst $38                                       ; $75c6: $ff
    rst $38                                       ; $75c7: $ff
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    rst $38                                       ; $75cd: $ff
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    rst $38                                       ; $75de: $ff
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    rst $38                                       ; $75ee: $ff
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
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
    rst $38                                       ; $7616: $ff
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
    rst $38                                       ; $7627: $ff
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
    rst $38                                       ; $7638: $ff
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
    rst $38                                       ; $7649: $ff
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
    rst $38                                       ; $765a: $ff
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
    rst $38                                       ; $766b: $ff
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
    rst $38                                       ; $767c: $ff
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
    rst $38                                       ; $768d: $ff
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
    rst $38                                       ; $769e: $ff
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
    rst $38                                       ; $76af: $ff
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
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    rst $38                                       ; $76ca: $ff
    rst $38                                       ; $76cb: $ff
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $38                                       ; $7772: $ff
    rst $38                                       ; $7773: $ff
    rst $38                                       ; $7774: $ff
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
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
    rst $38                                       ; $77a3: $ff
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
    rst $38                                       ; $77b4: $ff
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
    rst $38                                       ; $77c4: $ff
    rst $38                                       ; $77c5: $ff
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
    rst $38                                       ; $77d6: $ff
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
    rst $38                                       ; $77e7: $ff
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
    rst $38                                       ; $77f8: $ff
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
    rst $38                                       ; $7809: $ff
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
    rst $38                                       ; $781a: $ff
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
    rst $38                                       ; $782b: $ff
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
    rst $38                                       ; $783c: $ff
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
    rst $38                                       ; $7855: $ff
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
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    rst $38                                       ; $7868: $ff
    rst $38                                       ; $7869: $ff
    rst $38                                       ; $786a: $ff
    rst $38                                       ; $786b: $ff

Call_006_786c:
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
    rst $38                                       ; $7877: $ff
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
    rst $38                                       ; $7888: $ff
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
    rst $38                                       ; $7899: $ff
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
    rst $38                                       ; $78aa: $ff
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
    rst $38                                       ; $78bb: $ff
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
    rst $38                                       ; $78c7: $ff
    rst $38                                       ; $78c8: $ff
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    rst $38                                       ; $78cd: $ff
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    rst $38                                       ; $78db: $ff
    rst $38                                       ; $78dc: $ff
    rst $38                                       ; $78dd: $ff
    rst $38                                       ; $78de: $ff
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    rst $38                                       ; $78e1: $ff
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    rst $38                                       ; $78ed: $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    rst $38                                       ; $78f6: $ff
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    rst $38                                       ; $78fd: $ff
    rst $38                                       ; $78fe: $ff
    rst $38                                       ; $78ff: $ff
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    rst $38                                       ; $7904: $ff
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    rst $38                                       ; $790e: $ff
    rst $38                                       ; $790f: $ff
    rst $38                                       ; $7910: $ff
    rst $38                                       ; $7911: $ff
    rst $38                                       ; $7912: $ff
    rst $38                                       ; $7913: $ff
    rst $38                                       ; $7914: $ff
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    rst $38                                       ; $7919: $ff
    rst $38                                       ; $791a: $ff
    rst $38                                       ; $791b: $ff
    rst $38                                       ; $791c: $ff
    rst $38                                       ; $791d: $ff
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    rst $38                                       ; $7921: $ff
    rst $38                                       ; $7922: $ff
    rst $38                                       ; $7923: $ff
    rst $38                                       ; $7924: $ff
    rst $38                                       ; $7925: $ff
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    rst $38                                       ; $7928: $ff
    rst $38                                       ; $7929: $ff
    rst $38                                       ; $792a: $ff
    rst $38                                       ; $792b: $ff
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rst $38                                       ; $7939: $ff
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    rst $38                                       ; $7940: $ff
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    rst $38                                       ; $794a: $ff
    rst $38                                       ; $794b: $ff
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
    rst $38                                       ; $7951: $ff
    rst $38                                       ; $7952: $ff
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    rst $38                                       ; $7955: $ff
    rst $38                                       ; $7956: $ff
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    rst $38                                       ; $7959: $ff
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

Jump_006_7e7e:
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
