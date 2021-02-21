; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

    ld c, $40                                     ; $4000: $0e $40
    inc h                                         ; $4002: $24
    ld b, e                                       ; $4003: $43
    ld h, c                                       ; $4004: $61
    ld d, [hl]                                    ; $4005: $56
    xor b                                         ; $4006: $a8
    ld e, l                                       ; $4007: $5d
    sbc h                                         ; $4008: $9c
    ld l, b                                       ; $4009: $68
    ret nz                                        ; $400a: $c0

    ld [hl], e                                    ; $400b: $73
    jr c, @+$79                                   ; $400c: $38 $77

    ld h, c                                       ; $400e: $61
    ld b, b                                       ; $400f: $40
    ld l, [hl]                                    ; $4010: $6e
    ld b, b                                       ; $4011: $40
    inc e                                         ; $4012: $1c
    ld b, b                                       ; $4013: $40
    ld a, [c]                                     ; $4014: $f2
    ld b, b                                       ; $4015: $40
    ld c, d                                       ; $4016: $4a
    ld b, d                                       ; $4017: $42
    xor l                                         ; $4018: $ad
    ld b, d                                       ; $4019: $42
    or [hl]                                       ; $401a: $b6
    ld b, d                                       ; $401b: $42
    cp $7c                                        ; $401c: $fe $7c
    nop                                           ; $401e: $00
    dec d                                         ; $401f: $15
    nop                                           ; $4020: $00
    dec c                                         ; $4021: $0d
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    nop                                           ; $4024: $00
    ret nz                                        ; $4025: $c0

    ld bc, $fe0a                                  ; $4026: $01 $0a $fe
    ld a, h                                       ; $4029: $7c
    nop                                           ; $402a: $00
    ld de, $0500                                  ; $402b: $11 $00 $05
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    nop                                           ; $4030: $00
    ret nz                                        ; $4031: $c0

    ld bc, $fe16                                  ; $4032: $01 $16 $fe
    ld a, h                                       ; $4035: $7c
    nop                                           ; $4036: $00
    rla                                           ; $4037: $17
    nop                                           ; $4038: $00
    add hl, bc                                    ; $4039: $09
    nop                                           ; $403a: $00
    nop                                           ; $403b: $00
    nop                                           ; $403c: $00
    ld b, b                                       ; $403d: $40
    ld bc, $fe0a                                  ; $403e: $01 $0a $fe
    ld a, h                                       ; $4041: $7c
    nop                                           ; $4042: $00
    dec b                                         ; $4043: $05
    nop                                           ; $4044: $00
    dec c                                         ; $4045: $0d
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    nop                                           ; $4048: $00
    ret nz                                        ; $4049: $c0

    ld bc, $fe0d                                  ; $404a: $01 $0d $fe
    ld a, h                                       ; $404d: $7c
    nop                                           ; $404e: $00
    inc bc                                        ; $404f: $03
    nop                                           ; $4050: $00
    dec b                                         ; $4051: $05
    nop                                           ; $4052: $00
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    ret nz                                        ; $4055: $c0

    ld bc, $002d                                  ; $4056: $01 $2d $00
    nop                                           ; $4059: $00
    nop                                           ; $405a: $00
    nop                                           ; $405b: $00
    nop                                           ; $405c: $00
    nop                                           ; $405d: $00
    nop                                           ; $405e: $00
    nop                                           ; $405f: $00
    rst $38                                       ; $4060: $ff
    ld bc, $00c0                                  ; $4061: $01 $c0 $00
    add hl, bc                                    ; $4064: $09
    nop                                           ; $4065: $00
    ld de, $c002                                  ; $4066: $11 $02 $c0
    nop                                           ; $4069: $00
    ld de, $1100                                  ; $406a: $11 $00 $11
    rst $38                                       ; $406d: $ff
    ld bc, $00ff                                  ; $406e: $01 $ff $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    inc bc                                        ; $4074: $03
    inc b                                         ; $4075: $04
    ld [bc], a                                    ; $4076: $02
    rst $38                                       ; $4077: $ff
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    inc bc                                        ; $407c: $03
    dec b                                         ; $407d: $05
    rst $38                                       ; $407e: $ff
    rst $30                                       ; $407f: $f7
    ldh [rSC], a                                  ; $4080: $e0 $02
    jr nz, jr_034_40a6                            ; $4082: $20 $22

    call Call_000_0a61                            ; $4084: $cd $61 $0a
    ld a, l                                       ; $4087: $7d
    and $03                                       ; $4088: $e6 $03
    and a                                         ; $408a: $a7
    jr nz, jr_034_408f                            ; $408b: $20 $02

    ld a, $02                                     ; $408d: $3e $02

jr_034_408f:
    ld hl, $0813                                  ; $408f: $21 $13 $08
    add l                                         ; $4092: $85
    ld l, a                                       ; $4093: $6f
    jr nc, jr_034_4097                            ; $4094: $30 $01

    inc h                                         ; $4096: $24

jr_034_4097:
    rst $18                                       ; $4097: $df
    ld c, $0a                                     ; $4098: $0e $0a
    ld a, $06                                     ; $409a: $3e $06
    rst $18                                       ; $409c: $df
    ld [$ef0a], sp                                ; $409d: $08 $0a $ef
    nop                                           ; $40a0: $00
    inc e                                         ; $40a1: $1c
    rst $28                                       ; $40a2: $ef
    jr nz, @+$1e                                  ; $40a3: $20 $1c

    ret                                           ; $40a5: $c9


jr_034_40a6:
    rst $30                                       ; $40a6: $f7
    jr nz, jr_034_40c5                            ; $40a7: $20 $1c

    jr nz, jr_034_40ce                            ; $40a9: $20 $23

    rst $30                                       ; $40ab: $f7
    nop                                           ; $40ac: $00
    inc e                                         ; $40ad: $1c
    jr nz, jr_034_40bf                            ; $40ae: $20 $0f

    ld hl, $0817                                  ; $40b0: $21 $17 $08
    rst $18                                       ; $40b3: $df
    ld c, $0a                                     ; $40b4: $0e $0a
    ld a, $06                                     ; $40b6: $3e $06
    rst $18                                       ; $40b8: $df
    ld [$e70a], sp                                ; $40b9: $08 $0a $e7
    nop                                           ; $40bc: $00
    inc e                                         ; $40bd: $1c
    ret                                           ; $40be: $c9


jr_034_40bf:
    ld hl, $0818                                  ; $40bf: $21 $18 $08
    rst $18                                       ; $40c2: $df
    ld c, $0a                                     ; $40c3: $0e $0a

jr_034_40c5:
    ld a, $06                                     ; $40c5: $3e $06
    rst $18                                       ; $40c7: $df
    ld [$e70a], sp                                ; $40c8: $08 $0a $e7
    jr nz, @+$1e                                  ; $40cb: $20 $1c

    ret                                           ; $40cd: $c9


jr_034_40ce:
    ld hl, $0819                                  ; $40ce: $21 $19 $08
    rst $18                                       ; $40d1: $df
    ld c, $0a                                     ; $40d2: $0e $0a
    ld a, $06                                     ; $40d4: $3e $06
    rst $18                                       ; $40d6: $df
    ld [$3e0a], sp                                ; $40d7: $08 $0a $3e
    ld [bc], a                                    ; $40da: $02
    rst $18                                       ; $40db: $df
    ld a, $0a                                     ; $40dc: $3e $0a
    push af                                       ; $40de: $f5
    ld a, $28                                     ; $40df: $3e $28
    rst $18                                       ; $40e1: $df
    inc b                                         ; $40e2: $04
    ld a, [bc]                                    ; $40e3: $0a
    pop af                                        ; $40e4: $f1
    ld a, $00                                     ; $40e5: $3e $00
    rst $18                                       ; $40e7: $df
    ld a, $0a                                     ; $40e8: $3e $0a
    push af                                       ; $40ea: $f5
    ld a, $0f                                     ; $40eb: $3e $0f
    rst $18                                       ; $40ed: $df
    inc b                                         ; $40ee: $04
    ld a, [bc]                                    ; $40ef: $0a
    pop af                                        ; $40f0: $f1
    ret                                           ; $40f1: $c9


    ld [bc], a                                    ; $40f2: $02
    rst $38                                       ; $40f3: $ff
    nop                                           ; $40f4: $00
    nop                                           ; $40f5: $00
    db $10                                        ; $40f6: $10
    ld [$0003], sp                                ; $40f7: $08 $03 $00
    inc bc                                        ; $40fa: $03
    rst $38                                       ; $40fb: $ff
    nop                                           ; $40fc: $00
    nop                                           ; $40fd: $00
    ld de, $0308                                  ; $40fe: $11 $08 $03
    nop                                           ; $4101: $00
    inc b                                         ; $4102: $04
    rst $38                                       ; $4103: $ff
    nop                                           ; $4104: $00
    nop                                           ; $4105: $00
    ld [de], a                                    ; $4106: $12
    ld [$0003], sp                                ; $4107: $08 $03 $00
    dec b                                         ; $410a: $05
    rst $38                                       ; $410b: $ff
    nop                                           ; $410c: $00
    nop                                           ; $410d: $00
    inc de                                        ; $410e: $13
    ld [$0003], sp                                ; $410f: $08 $03 $00
    ld b, $ff                                     ; $4112: $06 $ff
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    ld a, a                                       ; $4116: $7f
    ld b, b                                       ; $4117: $40
    inc de                                        ; $4118: $13
    nop                                           ; $4119: $00
    rst $38                                       ; $411a: $ff
    ld [bc], a                                    ; $411b: $02
    rst $38                                       ; $411c: $ff
    nop                                           ; $411d: $00
    nop                                           ; $411e: $00
    dec de                                        ; $411f: $1b
    ld [$0003], sp                                ; $4120: $08 $03 $00
    inc bc                                        ; $4123: $03
    rst $38                                       ; $4124: $ff
    nop                                           ; $4125: $00
    nop                                           ; $4126: $00
    inc e                                         ; $4127: $1c
    ld [$0003], sp                                ; $4128: $08 $03 $00
    inc b                                         ; $412b: $04
    rst $38                                       ; $412c: $ff
    nop                                           ; $412d: $00
    nop                                           ; $412e: $00
    dec e                                         ; $412f: $1d
    ld [$0003], sp                                ; $4130: $08 $03 $00
    dec b                                         ; $4133: $05
    rst $38                                       ; $4134: $ff
    nop                                           ; $4135: $00
    nop                                           ; $4136: $00
    ld e, $08                                     ; $4137: $1e $08
    inc bc                                        ; $4139: $03
    nop                                           ; $413a: $00
    ld b, $ff                                     ; $413b: $06 $ff
    nop                                           ; $413d: $00
    nop                                           ; $413e: $00
    ld a, a                                       ; $413f: $7f
    ld b, b                                       ; $4140: $40
    inc bc                                        ; $4141: $03
    nop                                           ; $4142: $00
    rst $38                                       ; $4143: $ff
    ld [bc], a                                    ; $4144: $02
    rst $38                                       ; $4145: $ff
    nop                                           ; $4146: $00
    nop                                           ; $4147: $00
    rra                                           ; $4148: $1f
    ld [$0003], sp                                ; $4149: $08 $03 $00
    inc bc                                        ; $414c: $03
    rst $38                                       ; $414d: $ff
    nop                                           ; $414e: $00
    nop                                           ; $414f: $00
    jr nz, @+$0a                                  ; $4150: $20 $08

    inc bc                                        ; $4152: $03
    nop                                           ; $4153: $00
    inc b                                         ; $4154: $04
    rst $38                                       ; $4155: $ff
    nop                                           ; $4156: $00
    nop                                           ; $4157: $00
    ld hl, $0308                                  ; $4158: $21 $08 $03
    nop                                           ; $415b: $00
    dec b                                         ; $415c: $05
    rst $38                                       ; $415d: $ff
    nop                                           ; $415e: $00
    nop                                           ; $415f: $00
    ld [hl+], a                                   ; $4160: $22
    ld [$0003], sp                                ; $4161: $08 $03 $00
    ld b, $ff                                     ; $4164: $06 $ff
    nop                                           ; $4166: $00
    nop                                           ; $4167: $00
    ld a, a                                       ; $4168: $7f
    ld b, b                                       ; $4169: $40
    inc bc                                        ; $416a: $03
    nop                                           ; $416b: $00
    rst $38                                       ; $416c: $ff
    ld [bc], a                                    ; $416d: $02
    rst $38                                       ; $416e: $ff
    nop                                           ; $416f: $00
    nop                                           ; $4170: $00
    inc hl                                        ; $4171: $23
    ld [$0003], sp                                ; $4172: $08 $03 $00
    inc bc                                        ; $4175: $03
    rst $38                                       ; $4176: $ff
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    inc h                                         ; $4179: $24
    ld [$0003], sp                                ; $417a: $08 $03 $00
    inc b                                         ; $417d: $04
    rst $38                                       ; $417e: $ff
    nop                                           ; $417f: $00
    nop                                           ; $4180: $00
    dec h                                         ; $4181: $25
    ld [$0003], sp                                ; $4182: $08 $03 $00
    dec b                                         ; $4185: $05
    rst $38                                       ; $4186: $ff
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    ld h, $08                                     ; $4189: $26 $08
    inc bc                                        ; $418b: $03
    nop                                           ; $418c: $00
    ld b, $ff                                     ; $418d: $06 $ff
    nop                                           ; $418f: $00
    nop                                           ; $4190: $00
    ld a, a                                       ; $4191: $7f
    ld b, b                                       ; $4192: $40
    inc bc                                        ; $4193: $03
    nop                                           ; $4194: $00
    rst $38                                       ; $4195: $ff
    ld [bc], a                                    ; $4196: $02
    rst $38                                       ; $4197: $ff
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    daa                                           ; $419a: $27
    ld [$0003], sp                                ; $419b: $08 $03 $00
    inc bc                                        ; $419e: $03
    rst $38                                       ; $419f: $ff
    nop                                           ; $41a0: $00
    nop                                           ; $41a1: $00
    jr z, @+$0a                                   ; $41a2: $28 $08

    inc bc                                        ; $41a4: $03
    nop                                           ; $41a5: $00
    inc b                                         ; $41a6: $04
    rst $38                                       ; $41a7: $ff
    nop                                           ; $41a8: $00
    nop                                           ; $41a9: $00
    add hl, hl                                    ; $41aa: $29
    ld [$0003], sp                                ; $41ab: $08 $03 $00
    dec b                                         ; $41ae: $05
    rst $38                                       ; $41af: $ff
    nop                                           ; $41b0: $00
    nop                                           ; $41b1: $00
    ld a, [hl+]                                   ; $41b2: $2a
    ld [$0003], sp                                ; $41b3: $08 $03 $00
    ld b, $ff                                     ; $41b6: $06 $ff
    nop                                           ; $41b8: $00
    nop                                           ; $41b9: $00
    ld a, a                                       ; $41ba: $7f
    ld b, b                                       ; $41bb: $40
    inc bc                                        ; $41bc: $03
    nop                                           ; $41bd: $00
    rst $38                                       ; $41be: $ff
    ld [bc], a                                    ; $41bf: $02
    rst $38                                       ; $41c0: $ff
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    dec hl                                        ; $41c3: $2b
    ld [$0003], sp                                ; $41c4: $08 $03 $00
    inc bc                                        ; $41c7: $03
    rst $38                                       ; $41c8: $ff
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00
    inc l                                         ; $41cb: $2c
    ld [$0003], sp                                ; $41cc: $08 $03 $00
    inc b                                         ; $41cf: $04
    rst $38                                       ; $41d0: $ff
    nop                                           ; $41d1: $00
    nop                                           ; $41d2: $00
    dec l                                         ; $41d3: $2d
    ld [$0003], sp                                ; $41d4: $08 $03 $00
    dec b                                         ; $41d7: $05
    rst $38                                       ; $41d8: $ff
    nop                                           ; $41d9: $00
    nop                                           ; $41da: $00
    ld l, $08                                     ; $41db: $2e $08
    inc bc                                        ; $41dd: $03
    nop                                           ; $41de: $00
    ld b, $ff                                     ; $41df: $06 $ff
    nop                                           ; $41e1: $00
    nop                                           ; $41e2: $00
    ld a, a                                       ; $41e3: $7f
    ld b, b                                       ; $41e4: $40
    inc bc                                        ; $41e5: $03
    nop                                           ; $41e6: $00
    rst $38                                       ; $41e7: $ff

jr_034_41e8:
    rst $28                                       ; $41e8: $ef
    ld b, b                                       ; $41e9: $40
    ld [bc], a                                    ; $41ea: $02
    rst $08                                       ; $41eb: $cf
    and [hl]                                      ; $41ec: $a6
    ld hl, $0204                                  ; $41ed: $21 $04 $02
    ld b, d                                       ; $41f0: $42
    ld c, $1a                                     ; $41f1: $0e $1a
    rst $18                                       ; $41f3: $df
    ld a, [bc]                                    ; $41f4: $0a
    dec bc                                        ; $41f5: $0b
    call Call_000_0a61                            ; $41f6: $cd $61 $0a
    ld a, l                                       ; $41f9: $7d
    and $0f                                       ; $41fa: $e6 $0f
    ld hl, $082f                                  ; $41fc: $21 $2f $08
    add l                                         ; $41ff: $85
    ld l, a                                       ; $4200: $6f
    jr nc, jr_034_4204                            ; $4201: $30 $01

    inc h                                         ; $4203: $24

jr_034_4204:
    rst $18                                       ; $4204: $df
    ld c, $0a                                     ; $4205: $0e $0a
    ld a, $ff                                     ; $4207: $3e $ff
    rst $18                                       ; $4209: $df
    ld [$cf0a], sp                                ; $420a: $08 $0a $cf
    and [hl]                                      ; $420d: $a6
    ld hl, $0204                                  ; $420e: $21 $04 $02
    ld b, d                                       ; $4211: $42
    ld c, $1e                                     ; $4212: $0e $1e
    rst $18                                       ; $4214: $df
    ld a, [bc]                                    ; $4215: $0a
    dec bc                                        ; $4216: $0b
    ret                                           ; $4217: $c9


    ld de, $0402                                  ; $4218: $11 $02 $04
    jr jr_034_41e8                                ; $421b: $18 $cb

    ld de, $0602                                  ; $421d: $11 $02 $06
    jr jr_034_41e8                                ; $4220: $18 $c6

    ld de, $0802                                  ; $4222: $11 $02 $08
    jr jr_034_41e8                                ; $4225: $18 $c1

    ld de, $020a                                  ; $4227: $11 $0a $02
    jr jr_034_41e8                                ; $422a: $18 $bc

    ld de, $060a                                  ; $422c: $11 $0a $06
    jr jr_034_41e8                                ; $422f: $18 $b7

    ld de, $1202                                  ; $4231: $11 $02 $12
    jr jr_034_41e8                                ; $4234: $18 $b2

    ld de, $1402                                  ; $4236: $11 $02 $14
    jr jr_034_41e8                                ; $4239: $18 $ad

    ld de, $1602                                  ; $423b: $11 $02 $16
    jr jr_034_41e8                                ; $423e: $18 $a8

    ld de, $120a                                  ; $4240: $11 $0a $12
    jr jr_034_41e8                                ; $4243: $18 $a3

    ld de, $160a                                  ; $4245: $11 $0a $16
    jr jr_034_41e8                                ; $4248: $18 $9e

    ld bc, $0040                                  ; $424a: $01 $40 $00
    nop                                           ; $424d: $00
    jr jr_034_4292                                ; $424e: $18 $42

    add hl, bc                                    ; $4250: $09
    nop                                           ; $4251: $00
    ld [bc], a                                    ; $4252: $02
    ld b, b                                       ; $4253: $40
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    dec e                                         ; $4256: $1d
    ld b, d                                       ; $4257: $42
    add hl, bc                                    ; $4258: $09
    nop                                           ; $4259: $00
    inc bc                                        ; $425a: $03
    ld b, b                                       ; $425b: $40
    nop                                           ; $425c: $00
    nop                                           ; $425d: $00
    ld [hl+], a                                   ; $425e: $22
    ld b, d                                       ; $425f: $42
    add hl, bc                                    ; $4260: $09
    nop                                           ; $4261: $00
    inc b                                         ; $4262: $04
    ld b, b                                       ; $4263: $40
    nop                                           ; $4264: $00
    nop                                           ; $4265: $00
    daa                                           ; $4266: $27
    ld b, d                                       ; $4267: $42
    add hl, bc                                    ; $4268: $09
    nop                                           ; $4269: $00
    dec b                                         ; $426a: $05
    ld b, b                                       ; $426b: $40
    nop                                           ; $426c: $00
    nop                                           ; $426d: $00
    inc l                                         ; $426e: $2c
    ld b, d                                       ; $426f: $42
    add hl, bc                                    ; $4270: $09
    nop                                           ; $4271: $00
    ld b, $40                                     ; $4272: $06 $40
    nop                                           ; $4274: $00
    nop                                           ; $4275: $00
    ld sp, $0942                                  ; $4276: $31 $42 $09
    nop                                           ; $4279: $00
    rlca                                          ; $427a: $07
    ld b, b                                       ; $427b: $40
    nop                                           ; $427c: $00
    nop                                           ; $427d: $00
    ld [hl], $42                                  ; $427e: $36 $42
    add hl, bc                                    ; $4280: $09
    nop                                           ; $4281: $00
    ld [$0040], sp                                ; $4282: $08 $40 $00
    nop                                           ; $4285: $00
    dec sp                                        ; $4286: $3b
    ld b, d                                       ; $4287: $42
    add hl, bc                                    ; $4288: $09
    nop                                           ; $4289: $00
    add hl, bc                                    ; $428a: $09
    ld b, b                                       ; $428b: $40
    nop                                           ; $428c: $00
    nop                                           ; $428d: $00
    ld b, b                                       ; $428e: $40
    ld b, d                                       ; $428f: $42
    add hl, bc                                    ; $4290: $09
    nop                                           ; $4291: $00

jr_034_4292:
    ld a, [bc]                                    ; $4292: $0a
    ld b, b                                       ; $4293: $40
    nop                                           ; $4294: $00
    nop                                           ; $4295: $00
    ld b, l                                       ; $4296: $45
    ld b, d                                       ; $4297: $42
    add hl, bc                                    ; $4298: $09
    nop                                           ; $4299: $00
    rst $38                                       ; $429a: $ff
    rst $18                                       ; $429b: $df
    nop                                           ; $429c: $00
    ld a, [bc]                                    ; $429d: $0a
    ld hl, $0172                                  ; $429e: $21 $72 $01
    rst $18                                       ; $42a1: $df
    ld c, $0a                                     ; $42a2: $0e $0a
    ld a, $00                                     ; $42a4: $3e $00
    rst $18                                       ; $42a6: $df
    ld [$df0a], sp                                ; $42a7: $08 $0a $df
    ld [bc], a                                    ; $42aa: $02
    ld a, [bc]                                    ; $42ab: $0a
    ret                                           ; $42ac: $c9


    ld bc, $00ff                                  ; $42ad: $01 $ff $00
    nop                                           ; $42b0: $00
    sbc e                                         ; $42b1: $9b
    ld b, d                                       ; $42b2: $42
    nop                                           ; $42b3: $00
    nop                                           ; $42b4: $00
    rst $38                                       ; $42b5: $ff
    rst $30                                       ; $42b6: $f7
    ld h, b                                       ; $42b7: $60
    ld de, $0b28                                  ; $42b8: $11 $28 $0b
    ld hl, $41bf                                  ; $42bb: $21 $bf $41
    ld de, $000c                                  ; $42be: $11 $0c $00
    rst $18                                       ; $42c1: $df
    ld c, h                                       ; $42c2: $4c
    ld a, [bc]                                    ; $42c3: $0a
    jr jr_034_4304                                ; $42c4: $18 $3e

    rst $30                                       ; $42c6: $f7
    ld h, b                                       ; $42c7: $60
    ld c, $28                                     ; $42c8: $0e $28
    dec bc                                        ; $42ca: $0b
    ld hl, $4196                                  ; $42cb: $21 $96 $41
    ld de, $000c                                  ; $42ce: $11 $0c $00
    rst $18                                       ; $42d1: $df
    ld c, h                                       ; $42d2: $4c
    ld a, [bc]                                    ; $42d3: $0a
    jr jr_034_4304                                ; $42d4: $18 $2e

    rst $30                                       ; $42d6: $f7
    ld b, b                                       ; $42d7: $40
    ld c, $28                                     ; $42d8: $0e $28
    dec bc                                        ; $42da: $0b
    ld hl, $416d                                  ; $42db: $21 $6d $41
    ld de, $000c                                  ; $42de: $11 $0c $00
    rst $18                                       ; $42e1: $df
    ld c, h                                       ; $42e2: $4c
    ld a, [bc]                                    ; $42e3: $0a
    jr jr_034_4304                                ; $42e4: $18 $1e

    rst $30                                       ; $42e6: $f7
    jr nz, jr_034_42f7                            ; $42e7: $20 $0e

    jr z, jr_034_42f6                             ; $42e9: $28 $0b

    ld hl, $4144                                  ; $42eb: $21 $44 $41
    ld de, $000c                                  ; $42ee: $11 $0c $00
    rst $18                                       ; $42f1: $df
    ld c, h                                       ; $42f2: $4c
    ld a, [bc]                                    ; $42f3: $0a
    jr jr_034_4304                                ; $42f4: $18 $0e

jr_034_42f6:
    rst $30                                       ; $42f6: $f7

jr_034_42f7:
    nop                                           ; $42f7: $00
    ld c, $28                                     ; $42f8: $0e $28
    add hl, bc                                    ; $42fa: $09
    ld hl, $411b                                  ; $42fb: $21 $1b $41
    ld de, $000c                                  ; $42fe: $11 $0c $00
    rst $18                                       ; $4301: $df
    ld c, h                                       ; $4302: $4c
    ld a, [bc]                                    ; $4303: $0a

jr_034_4304:
    ret                                           ; $4304: $c9


    push af                                       ; $4305: $f5
    ld a, [$c321]                                 ; $4306: $fa $21 $c3
    push de                                       ; $4309: $d5
    push af                                       ; $430a: $f5
    ld a, a                                       ; $430b: $7f
    ld de, $0107                                  ; $430c: $11 $07 $01
    call Call_000_22a5                            ; $430f: $cd $a5 $22
    pop af                                        ; $4312: $f1
    pop de                                        ; $4313: $d1
    ld a, [$c323]                                 ; $4314: $fa $23 $c3
    push de                                       ; $4317: $d5
    push af                                       ; $4318: $f5
    ld a, a                                       ; $4319: $7f
    ld de, $0108                                  ; $431a: $11 $08 $01
    call Call_000_22a5                            ; $431d: $cd $a5 $22
    pop af                                        ; $4320: $f1
    pop de                                        ; $4321: $d1
    pop af                                        ; $4322: $f1
    ret                                           ; $4323: $c9


    dec sp                                        ; $4324: $3b
    ld b, e                                       ; $4325: $43
    sub b                                         ; $4326: $90
    ld b, e                                       ; $4327: $43
    ld [hl-], a                                   ; $4328: $32
    ld b, e                                       ; $4329: $43
    ld sp, hl                                     ; $432a: $f9
    ld b, e                                       ; $432b: $43
    ei                                            ; $432c: $fb
    ld b, e                                       ; $432d: $43
    and [hl]                                      ; $432e: $a6
    ld b, l                                       ; $432f: $45
    sub b                                         ; $4330: $90
    ld b, [hl]                                    ; $4331: $46
    nop                                           ; $4332: $00
    nop                                           ; $4333: $00
    nop                                           ; $4334: $00
    nop                                           ; $4335: $00
    nop                                           ; $4336: $00
    nop                                           ; $4337: $00
    nop                                           ; $4338: $00
    nop                                           ; $4339: $00
    rst $38                                       ; $433a: $ff
    ld bc, $0040                                  ; $433b: $01 $40 $00
    dec b                                         ; $433e: $05
    add b                                         ; $433f: $80
    dec l                                         ; $4340: $2d
    ld [bc], a                                    ; $4341: $02
    ld b, b                                       ; $4342: $40
    nop                                           ; $4343: $00
    dec b                                         ; $4344: $05
    add b                                         ; $4345: $80
    add hl, de                                    ; $4346: $19
    inc bc                                        ; $4347: $03
    ld b, b                                       ; $4348: $40
    nop                                           ; $4349: $00
    ld hl, $2d80                                  ; $434a: $21 $80 $2d
    inc b                                         ; $434d: $04
    ld b, b                                       ; $434e: $40
    nop                                           ; $434f: $00
    dec e                                         ; $4350: $1d
    add b                                         ; $4351: $80
    dec d                                         ; $4352: $15
    dec b                                         ; $4353: $05
    ld b, b                                       ; $4354: $40
    nop                                           ; $4355: $00
    dec d                                         ; $4356: $15
    add b                                         ; $4357: $80
    dec d                                         ; $4358: $15
    ld b, $40                                     ; $4359: $06 $40
    nop                                           ; $435b: $00
    dec e                                         ; $435c: $1d
    add b                                         ; $435d: $80
    dec h                                         ; $435e: $25
    rlca                                          ; $435f: $07
    ld b, b                                       ; $4360: $40
    nop                                           ; $4361: $00
    rrca                                          ; $4362: $0f
    add b                                         ; $4363: $80
    dec l                                         ; $4364: $2d
    ld [$0040], sp                                ; $4365: $08 $40 $00
    dec bc                                        ; $4368: $0b
    add b                                         ; $4369: $80
    dec h                                         ; $436a: $25
    add hl, bc                                    ; $436b: $09
    ld b, b                                       ; $436c: $40
    nop                                           ; $436d: $00
    rrca                                          ; $436e: $0f
    add b                                         ; $436f: $80
    rla                                           ; $4370: $17
    dec bc                                        ; $4371: $0b
    ld b, b                                       ; $4372: $40
    nop                                           ; $4373: $00
    inc hl                                        ; $4374: $23
    add b                                         ; $4375: $80
    dec de                                        ; $4376: $1b
    inc c                                         ; $4377: $0c
    ld b, b                                       ; $4378: $40
    nop                                           ; $4379: $00
    dec bc                                        ; $437a: $0b
    add b                                         ; $437b: $80
    add hl, de                                    ; $437c: $19
    dec c                                         ; $437d: $0d
    ld b, b                                       ; $437e: $40
    nop                                           ; $437f: $00
    dec d                                         ; $4380: $15
    add b                                         ; $4381: $80
    ld hl, $c00f                                  ; $4382: $21 $0f $c0
    nop                                           ; $4385: $00
    dec e                                         ; $4386: $1d
    nop                                           ; $4387: $00
    add hl, de                                    ; $4388: $19
    ld c, $c0                                     ; $4389: $0e $c0
    nop                                           ; $438b: $00
    dec e                                         ; $438c: $1d
    nop                                           ; $438d: $00
    add hl, de                                    ; $438e: $19
    rst $38                                       ; $438f: $ff
    ld bc, $00ff                                  ; $4390: $01 $ff $00
    nop                                           ; $4393: $00
    nop                                           ; $4394: $00
    nop                                           ; $4395: $00
    inc bc                                        ; $4396: $03
    ld bc, $ff02                                  ; $4397: $01 $02 $ff
    nop                                           ; $439a: $00
    nop                                           ; $439b: $00
    nop                                           ; $439c: $00
    nop                                           ; $439d: $00
    add hl, bc                                    ; $439e: $09
    ld bc, $ff03                                  ; $439f: $01 $03 $ff
    nop                                           ; $43a2: $00
    nop                                           ; $43a3: $00
    nop                                           ; $43a4: $00
    nop                                           ; $43a5: $00
    ld a, [bc]                                    ; $43a6: $0a
    ld bc, $ff04                                  ; $43a7: $01 $04 $ff
    nop                                           ; $43aa: $00
    nop                                           ; $43ab: $00
    nop                                           ; $43ac: $00
    nop                                           ; $43ad: $00
    dec bc                                        ; $43ae: $0b
    ld bc, $ff05                                  ; $43af: $01 $05 $ff
    nop                                           ; $43b2: $00
    nop                                           ; $43b3: $00
    nop                                           ; $43b4: $00
    nop                                           ; $43b5: $00
    inc e                                         ; $43b6: $1c
    ld bc, $ff06                                  ; $43b7: $01 $06 $ff
    nop                                           ; $43ba: $00
    nop                                           ; $43bb: $00
    nop                                           ; $43bc: $00
    nop                                           ; $43bd: $00
    ld h, $01                                     ; $43be: $26 $01
    rlca                                          ; $43c0: $07
    rst $38                                       ; $43c1: $ff
    nop                                           ; $43c2: $00
    nop                                           ; $43c3: $00
    nop                                           ; $43c4: $00
    nop                                           ; $43c5: $00
    daa                                           ; $43c6: $27
    ld bc, $ff08                                  ; $43c7: $01 $08 $ff
    nop                                           ; $43ca: $00
    nop                                           ; $43cb: $00
    nop                                           ; $43cc: $00
    nop                                           ; $43cd: $00
    jr z, jr_034_43d1                             ; $43ce: $28 $01

    add hl, bc                                    ; $43d0: $09

jr_034_43d1:
    rst $38                                       ; $43d1: $ff
    nop                                           ; $43d2: $00
    nop                                           ; $43d3: $00
    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00
    add hl, hl                                    ; $43d6: $29
    ld bc, $ff0b                                  ; $43d7: $01 $0b $ff
    nop                                           ; $43da: $00
    nop                                           ; $43db: $00
    nop                                           ; $43dc: $00
    nop                                           ; $43dd: $00
    inc l                                         ; $43de: $2c
    ld bc, $ff0c                                  ; $43df: $01 $0c $ff
    nop                                           ; $43e2: $00
    nop                                           ; $43e3: $00
    nop                                           ; $43e4: $00
    nop                                           ; $43e5: $00
    dec l                                         ; $43e6: $2d
    ld bc, $ff0d                                  ; $43e7: $01 $0d $ff
    nop                                           ; $43ea: $00
    nop                                           ; $43eb: $00
    nop                                           ; $43ec: $00
    nop                                           ; $43ed: $00
    ld l, $01                                     ; $43ee: $2e $01
    rrca                                          ; $43f0: $0f
    rst $38                                       ; $43f1: $ff
    nop                                           ; $43f2: $00
    nop                                           ; $43f3: $00
    nop                                           ; $43f4: $00
    nop                                           ; $43f5: $00
    dec h                                         ; $43f6: $25
    ld [bc], a                                    ; $43f7: $02
    rst $38                                       ; $43f8: $ff
    rst $38                                       ; $43f9: $ff
    ret                                           ; $43fa: $c9


    ld bc, $00ff                                  ; $43fb: $01 $ff $00
    nop                                           ; $43fe: $00
    inc bc                                        ; $43ff: $03
    inc c                                         ; $4400: $0c
    inc b                                         ; $4401: $04
    nop                                           ; $4402: $00
    ld [bc], a                                    ; $4403: $02
    rst $38                                       ; $4404: $ff
    nop                                           ; $4405: $00
    nop                                           ; $4406: $00
    inc b                                         ; $4407: $04
    inc c                                         ; $4408: $0c
    inc b                                         ; $4409: $04
    nop                                           ; $440a: $00
    inc bc                                        ; $440b: $03
    rst $38                                       ; $440c: $ff
    nop                                           ; $440d: $00
    nop                                           ; $440e: $00
    dec b                                         ; $440f: $05
    inc c                                         ; $4410: $0c
    inc b                                         ; $4411: $04
    nop                                           ; $4412: $00
    inc b                                         ; $4413: $04
    rst $38                                       ; $4414: $ff
    nop                                           ; $4415: $00
    nop                                           ; $4416: $00
    ld b, $0c                                     ; $4417: $06 $0c
    inc b                                         ; $4419: $04
    nop                                           ; $441a: $00
    dec b                                         ; $441b: $05
    rst $38                                       ; $441c: $ff
    nop                                           ; $441d: $00
    nop                                           ; $441e: $00
    rlca                                          ; $441f: $07
    inc c                                         ; $4420: $0c
    inc b                                         ; $4421: $04
    nop                                           ; $4422: $00
    ld b, $ff                                     ; $4423: $06 $ff
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    ld [$040c], sp                                ; $4427: $08 $0c $04
    nop                                           ; $442a: $00
    rlca                                          ; $442b: $07
    rst $38                                       ; $442c: $ff
    nop                                           ; $442d: $00
    nop                                           ; $442e: $00
    add hl, bc                                    ; $442f: $09
    inc c                                         ; $4430: $0c
    inc b                                         ; $4431: $04
    nop                                           ; $4432: $00
    ld [$00ff], sp                                ; $4433: $08 $ff $00
    nop                                           ; $4436: $00
    ld a, [bc]                                    ; $4437: $0a
    inc c                                         ; $4438: $0c
    inc b                                         ; $4439: $04
    nop                                           ; $443a: $00
    add hl, bc                                    ; $443b: $09
    rst $38                                       ; $443c: $ff
    nop                                           ; $443d: $00
    nop                                           ; $443e: $00
    dec bc                                        ; $443f: $0b
    inc c                                         ; $4440: $0c
    inc b                                         ; $4441: $04
    nop                                           ; $4442: $00
    ld a, [bc]                                    ; $4443: $0a
    rst $38                                       ; $4444: $ff
    nop                                           ; $4445: $00
    nop                                           ; $4446: $00
    inc c                                         ; $4447: $0c
    inc c                                         ; $4448: $0c
    inc b                                         ; $4449: $04
    nop                                           ; $444a: $00
    dec bc                                        ; $444b: $0b
    rst $38                                       ; $444c: $ff
    nop                                           ; $444d: $00
    nop                                           ; $444e: $00
    dec c                                         ; $444f: $0d
    inc c                                         ; $4450: $0c
    inc b                                         ; $4451: $04
    nop                                           ; $4452: $00
    inc c                                         ; $4453: $0c
    rst $38                                       ; $4454: $ff
    nop                                           ; $4455: $00
    nop                                           ; $4456: $00
    ld c, $0c                                     ; $4457: $0e $0c
    inc b                                         ; $4459: $04
    nop                                           ; $445a: $00
    dec c                                         ; $445b: $0d
    rst $38                                       ; $445c: $ff
    nop                                           ; $445d: $00
    nop                                           ; $445e: $00
    rrca                                          ; $445f: $0f
    inc c                                         ; $4460: $0c
    inc b                                         ; $4461: $04
    nop                                           ; $4462: $00
    ld c, $ff                                     ; $4463: $0e $ff
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    db $10                                        ; $4467: $10
    inc c                                         ; $4468: $0c
    inc b                                         ; $4469: $04
    nop                                           ; $446a: $00
    rrca                                          ; $446b: $0f
    rst $38                                       ; $446c: $ff
    nop                                           ; $446d: $00
    nop                                           ; $446e: $00
    ld [de], a                                    ; $446f: $12
    inc c                                         ; $4470: $0c
    inc b                                         ; $4471: $04
    nop                                           ; $4472: $00
    rst $38                                       ; $4473: $ff
    ld a, [$c298]                                 ; $4474: $fa $98 $c2
    rst $18                                       ; $4477: $df
    ld a, [de]                                    ; $4478: $1a
    ld a, [bc]                                    ; $4479: $0a
    ld a, [$c298]                                 ; $447a: $fa $98 $c2
    ld bc, $0500                                  ; $447d: $01 $00 $05
    ld de, $2f00                                  ; $4480: $11 $00 $2f
    rst $18                                       ; $4483: $df
    ld [hl+], a                                   ; $4484: $22
    ld a, [bc]                                    ; $4485: $0a
    ld a, [$c298]                                 ; $4486: $fa $98 $c2
    rst $18                                       ; $4489: $df
    ld e, $0a                                     ; $448a: $1e $0a
    call Call_034_452a                            ; $448c: $cd $2a $45
    ld a, $01                                     ; $448f: $3e $01
    ld [$c441], a                                 ; $4491: $ea $41 $c4
    rst $08                                       ; $4494: $cf
    sub d                                         ; $4495: $92
    ret                                           ; $4496: $c9


    ld a, [$c298]                                 ; $4497: $fa $98 $c2
    rst $18                                       ; $449a: $df
    ld a, [de]                                    ; $449b: $1a
    ld a, [bc]                                    ; $449c: $0a
    ld a, [$c298]                                 ; $449d: $fa $98 $c2
    ld bc, $0500                                  ; $44a0: $01 $00 $05
    ld de, $1b00                                  ; $44a3: $11 $00 $1b
    rst $18                                       ; $44a6: $df
    ld [hl+], a                                   ; $44a7: $22
    ld a, [bc]                                    ; $44a8: $0a
    ld a, [$c298]                                 ; $44a9: $fa $98 $c2
    rst $18                                       ; $44ac: $df
    ld e, $0a                                     ; $44ad: $1e $0a
    call Call_034_452a                            ; $44af: $cd $2a $45
    ld a, $02                                     ; $44b2: $3e $02
    ld [$c441], a                                 ; $44b4: $ea $41 $c4
    rst $08                                       ; $44b7: $cf
    sub d                                         ; $44b8: $92
    ld c, $08                                     ; $44b9: $0e $08
    call Call_000_25a1                            ; $44bb: $cd $a1 $25
    push af                                       ; $44be: $f5
    ld a, $1e                                     ; $44bf: $3e $1e
    rst $18                                       ; $44c1: $df
    inc b                                         ; $44c2: $04
    ld a, [bc]                                    ; $44c3: $0a
    pop af                                        ; $44c4: $f1
    ret                                           ; $44c5: $c9


    ld a, [$c298]                                 ; $44c6: $fa $98 $c2
    rst $18                                       ; $44c9: $df
    ld a, [de]                                    ; $44ca: $1a
    ld a, [bc]                                    ; $44cb: $0a
    ld a, [$c298]                                 ; $44cc: $fa $98 $c2
    ld bc, $2100                                  ; $44cf: $01 $00 $21
    ld de, $2f00                                  ; $44d2: $11 $00 $2f
    rst $18                                       ; $44d5: $df
    ld [hl+], a                                   ; $44d6: $22
    ld a, [bc]                                    ; $44d7: $0a
    ld a, [$c298]                                 ; $44d8: $fa $98 $c2
    rst $18                                       ; $44db: $df
    ld e, $0a                                     ; $44dc: $1e $0a
    call Call_034_452a                            ; $44de: $cd $2a $45
    ld a, $03                                     ; $44e1: $3e $03
    ld [$c441], a                                 ; $44e3: $ea $41 $c4
    rst $08                                       ; $44e6: $cf
    sub d                                         ; $44e7: $92
    ld c, $08                                     ; $44e8: $0e $08
    call Call_000_25a1                            ; $44ea: $cd $a1 $25
    push af                                       ; $44ed: $f5
    ld a, $1e                                     ; $44ee: $3e $1e
    rst $18                                       ; $44f0: $df
    inc b                                         ; $44f1: $04
    ld a, [bc]                                    ; $44f2: $0a
    pop af                                        ; $44f3: $f1
    ret                                           ; $44f4: $c9


    call Call_034_452a                            ; $44f5: $cd $2a $45
    ld a, $04                                     ; $44f8: $3e $04
    ld [$c441], a                                 ; $44fa: $ea $41 $c4
    rst $08                                       ; $44fd: $cf
    sub d                                         ; $44fe: $92
    ld c, $08                                     ; $44ff: $0e $08
    call Call_000_25a1                            ; $4501: $cd $a1 $25
    push af                                       ; $4504: $f5
    ld a, $1e                                     ; $4505: $3e $1e
    rst $18                                       ; $4507: $df
    inc b                                         ; $4508: $04
    ld a, [bc]                                    ; $4509: $0a
    pop af                                        ; $450a: $f1
    ret                                           ; $450b: $c9


    call Call_034_544d                            ; $450c: $cd $4d $54
    or a                                          ; $450f: $b7
    ret z                                         ; $4510: $c8

    ld a, $05                                     ; $4511: $3e $05
    ld [$c441], a                                 ; $4513: $ea $41 $c4

Jump_034_4516:
    ldh a, [$95]                                  ; $4516: $f0 $95
    ld b, a                                       ; $4518: $47
    ld a, $00                                     ; $4519: $3e $00
    ld de, $55a6                                  ; $451b: $11 $a6 $55
    rst $18                                       ; $451e: $df
    jr @+$0c                                      ; $451f: $18 $0a

    call Call_034_532e                            ; $4521: $cd $2e $53
    ld c, $08                                     ; $4524: $0e $08
    call Call_000_25a1                            ; $4526: $cd $a1 $25
    ret                                           ; $4529: $c9


Call_034_452a:
    ld a, $00                                     ; $452a: $3e $00
    ld bc, $0010                                  ; $452c: $01 $10 $00
    rst $18                                       ; $452f: $df
    ld d, $0a                                     ; $4530: $16 $0a
    ld a, [$c298]                                 ; $4532: $fa $98 $c2
    ld bc, $0010                                  ; $4535: $01 $10 $00
    rst $18                                       ; $4538: $df
    ld d, $0a                                     ; $4539: $16 $0a
    ld a, $00                                     ; $453b: $3e $00
    ld b, $c0                                     ; $453d: $06 $c0
    ld de, $0080                                  ; $453f: $11 $80 $00
    rst $18                                       ; $4542: $df
    jr z, jr_034_454f                             ; $4543: $28 $0a

    ld a, $00                                     ; $4545: $3e $00
    rst $18                                       ; $4547: $df
    ld e, $0a                                     ; $4548: $1e $0a
    ld a, $00                                     ; $454a: $3e $00
    ld b, a                                       ; $454c: $47
    ld a, $0a                                     ; $454d: $3e $0a

jr_034_454f:
    rst $18                                       ; $454f: $df
    ld [hl-], a                                   ; $4550: $32
    ld a, [bc]                                    ; $4551: $0a
    ld a, $00                                     ; $4552: $3e $00
    ld b, $c0                                     ; $4554: $06 $c0
    ld de, $0100                                  ; $4556: $11 $00 $01
    rst $18                                       ; $4559: $df
    jr z, @+$0c                                   ; $455a: $28 $0a

    push af                                       ; $455c: $f5
    ld a, $14                                     ; $455d: $3e $14
    rst $18                                       ; $455f: $df
    inc b                                         ; $4560: $04
    ld a, [bc]                                    ; $4561: $0a
    pop af                                        ; $4562: $f1
    ld a, $00                                     ; $4563: $3e $00
    ld b, $00                                     ; $4565: $06 $00
    rst $18                                       ; $4567: $df
    ld b, [hl]                                    ; $4568: $46
    ld a, [bc]                                    ; $4569: $0a
    ld a, $00                                     ; $456a: $3e $00
    ld bc, $0010                                  ; $456c: $01 $10 $00
    rst $18                                       ; $456f: $df
    ld d, $0a                                     ; $4570: $16 $0a
    ld a, [$c298]                                 ; $4572: $fa $98 $c2
    ld bc, $0010                                  ; $4575: $01 $10 $00
    rst $18                                       ; $4578: $df
    ld d, $0a                                     ; $4579: $16 $0a
    ld a, $00                                     ; $457b: $3e $00
    ld b, $c0                                     ; $457d: $06 $c0
    ld de, $0140                                  ; $457f: $11 $40 $01
    rst $18                                       ; $4582: $df
    jr z, @+$0c                                   ; $4583: $28 $0a

    ld a, [$c298]                                 ; $4585: $fa $98 $c2
    ld b, $c0                                     ; $4588: $06 $c0
    ld de, $0140                                  ; $458a: $11 $40 $01
    rst $18                                       ; $458d: $df
    jr z, @+$0c                                   ; $458e: $28 $0a

    ld a, [$c298]                                 ; $4590: $fa $98 $c2
    rst $18                                       ; $4593: $df
    ld e, $0a                                     ; $4594: $1e $0a
    ld a, [$c298]                                 ; $4596: $fa $98 $c2
    ld b, $c0                                     ; $4599: $06 $c0
    ld de, $0140                                  ; $459b: $11 $40 $01
    rst $18                                       ; $459e: $df
    jr z, jr_034_45ab                             ; $459f: $28 $0a

    ret                                           ; $45a1: $c9


    jp Jump_034_4516                              ; $45a2: $c3 $16 $45


    ret                                           ; $45a5: $c9


    ld bc, $0040                                  ; $45a6: $01 $40 $00
    nop                                           ; $45a9: $00
    ld [hl], h                                    ; $45aa: $74

jr_034_45ab:
    ld b, h                                       ; $45ab: $44
    nop                                           ; $45ac: $00
    nop                                           ; $45ad: $00
    ld [bc], a                                    ; $45ae: $02
    ld b, b                                       ; $45af: $40
    nop                                           ; $45b0: $00
    nop                                           ; $45b1: $00
    sub a                                         ; $45b2: $97
    ld b, h                                       ; $45b3: $44
    nop                                           ; $45b4: $00
    nop                                           ; $45b5: $00
    inc bc                                        ; $45b6: $03
    ld b, b                                       ; $45b7: $40
    nop                                           ; $45b8: $00
    nop                                           ; $45b9: $00
    add $44                                       ; $45ba: $c6 $44
    nop                                           ; $45bc: $00
    nop                                           ; $45bd: $00
    inc b                                         ; $45be: $04
    ld b, b                                       ; $45bf: $40
    nop                                           ; $45c0: $00
    nop                                           ; $45c1: $00
    push af                                       ; $45c2: $f5
    ld b, h                                       ; $45c3: $44
    nop                                           ; $45c4: $00
    nop                                           ; $45c5: $00
    dec b                                         ; $45c6: $05
    ld b, b                                       ; $45c7: $40
    nop                                           ; $45c8: $00
    nop                                           ; $45c9: $00
    inc c                                         ; $45ca: $0c
    ld b, l                                       ; $45cb: $45
    nop                                           ; $45cc: $00
    nop                                           ; $45cd: $00
    ld b, $40                                     ; $45ce: $06 $40
    nop                                           ; $45d0: $00
    nop                                           ; $45d1: $00
    jr @+$48                                      ; $45d2: $18 $46

    nop                                           ; $45d4: $00
    nop                                           ; $45d5: $00
    rlca                                          ; $45d6: $07
    ld b, b                                       ; $45d7: $40
    nop                                           ; $45d8: $00
    nop                                           ; $45d9: $00
    daa                                           ; $45da: $27
    ld b, [hl]                                    ; $45db: $46
    nop                                           ; $45dc: $00
    nop                                           ; $45dd: $00
    ld [$0040], sp                                ; $45de: $08 $40 $00
    nop                                           ; $45e1: $00
    ld [hl], $46                                  ; $45e2: $36 $46
    nop                                           ; $45e4: $00
    nop                                           ; $45e5: $00
    add hl, bc                                    ; $45e6: $09
    ld b, b                                       ; $45e7: $40
    nop                                           ; $45e8: $00
    nop                                           ; $45e9: $00
    ld b, l                                       ; $45ea: $45
    ld b, [hl]                                    ; $45eb: $46
    nop                                           ; $45ec: $00
    nop                                           ; $45ed: $00
    ld a, [bc]                                    ; $45ee: $0a
    ld b, b                                       ; $45ef: $40
    nop                                           ; $45f0: $00
    nop                                           ; $45f1: $00
    ld d, h                                       ; $45f2: $54
    ld b, [hl]                                    ; $45f3: $46
    nop                                           ; $45f4: $00
    nop                                           ; $45f5: $00
    dec bc                                        ; $45f6: $0b
    ld b, b                                       ; $45f7: $40
    nop                                           ; $45f8: $00
    nop                                           ; $45f9: $00
    ld h, e                                       ; $45fa: $63
    ld b, [hl]                                    ; $45fb: $46
    nop                                           ; $45fc: $00
    nop                                           ; $45fd: $00
    inc c                                         ; $45fe: $0c
    ld b, b                                       ; $45ff: $40
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    ld [hl], d                                    ; $4602: $72
    ld b, [hl]                                    ; $4603: $46
    nop                                           ; $4604: $00
    nop                                           ; $4605: $00
    dec c                                         ; $4606: $0d
    ld b, b                                       ; $4607: $40
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    add c                                         ; $460a: $81
    ld b, [hl]                                    ; $460b: $46
    nop                                           ; $460c: $00
    nop                                           ; $460d: $00
    rrca                                          ; $460e: $0f
    ld b, b                                       ; $460f: $40
    ld a, l                                       ; $4610: $7d
    nop                                           ; $4611: $00
    dec sp                                        ; $4612: $3b
    ld c, b                                       ; $4613: $48
    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    rst $38                                       ; $4616: $ff

jr_034_4617:
    ret                                           ; $4617: $c9


    call Call_034_5530                            ; $4618: $cd $30 $55
    cp $01                                        ; $461b: $fe $01
    jr z, jr_034_4617                             ; $461d: $28 $f8

    ld a, $06                                     ; $461f: $3e $06
    ld [$c441], a                                 ; $4621: $ea $41 $c4
    rst $08                                       ; $4624: $cf
    sub d                                         ; $4625: $92
    ret                                           ; $4626: $c9


    call Call_034_5530                            ; $4627: $cd $30 $55
    cp $01                                        ; $462a: $fe $01
    jr z, jr_034_4617                             ; $462c: $28 $e9

    ld a, $07                                     ; $462e: $3e $07
    ld [$c441], a                                 ; $4630: $ea $41 $c4
    rst $08                                       ; $4633: $cf
    sub d                                         ; $4634: $92
    ret                                           ; $4635: $c9


    call Call_034_5530                            ; $4636: $cd $30 $55
    cp $01                                        ; $4639: $fe $01
    jr z, jr_034_4617                             ; $463b: $28 $da

    ld a, $08                                     ; $463d: $3e $08
    ld [$c441], a                                 ; $463f: $ea $41 $c4
    rst $08                                       ; $4642: $cf
    sub d                                         ; $4643: $92
    ret                                           ; $4644: $c9


    call Call_034_5530                            ; $4645: $cd $30 $55
    cp $01                                        ; $4648: $fe $01
    jr z, jr_034_4617                             ; $464a: $28 $cb

    ld a, $09                                     ; $464c: $3e $09
    ld [$c441], a                                 ; $464e: $ea $41 $c4
    rst $08                                       ; $4651: $cf
    sub d                                         ; $4652: $92
    ret                                           ; $4653: $c9


    call Call_034_5530                            ; $4654: $cd $30 $55
    cp $01                                        ; $4657: $fe $01
    jr z, jr_034_4617                             ; $4659: $28 $bc

    ld a, $0a                                     ; $465b: $3e $0a
    ld [$c441], a                                 ; $465d: $ea $41 $c4
    rst $08                                       ; $4660: $cf
    sub d                                         ; $4661: $92
    ret                                           ; $4662: $c9


    call Call_034_5530                            ; $4663: $cd $30 $55
    cp $01                                        ; $4666: $fe $01
    jr z, jr_034_4617                             ; $4668: $28 $ad

    ld a, $0b                                     ; $466a: $3e $0b
    ld [$c441], a                                 ; $466c: $ea $41 $c4
    rst $08                                       ; $466f: $cf
    sub d                                         ; $4670: $92
    ret                                           ; $4671: $c9


    call Call_034_5530                            ; $4672: $cd $30 $55
    cp $01                                        ; $4675: $fe $01
    jr z, jr_034_4617                             ; $4677: $28 $9e

    ld a, $0c                                     ; $4679: $3e $0c
    ld [$c441], a                                 ; $467b: $ea $41 $c4
    rst $08                                       ; $467e: $cf
    sub d                                         ; $467f: $92
    ret                                           ; $4680: $c9


    call Call_034_5530                            ; $4681: $cd $30 $55
    cp $01                                        ; $4684: $fe $01
    jr z, jr_034_4617                             ; $4686: $28 $8f

    ld a, $0d                                     ; $4688: $3e $0d
    ld [$c441], a                                 ; $468a: $ea $41 $c4
    rst $08                                       ; $468d: $cf
    sub d                                         ; $468e: $92
    ret                                           ; $468f: $c9


    rst $28                                       ; $4690: $ef
    ld h, b                                       ; $4691: $60
    inc c                                         ; $4692: $0c
    call Call_034_5598                            ; $4693: $cd $98 $55
    ld a, $00                                     ; $4696: $3e $00
    ld [$c967], a                                 ; $4698: $ea $67 $c9
    rst $18                                       ; $469b: $df
    ld e, h                                       ; $469c: $5c
    ld a, [bc]                                    ; $469d: $0a
    xor a                                         ; $469e: $af
    ld hl, $c4b4                                  ; $469f: $21 $b4 $c4
    ld [hl+], a                                   ; $46a2: $22
    ld [hl+], a                                   ; $46a3: $22
    rst $30                                       ; $46a4: $f7
    ldh [rIF], a                                  ; $46a5: $e0 $0f
    jr z, jr_034_46ac                             ; $46a7: $28 $03

    rst $20                                       ; $46a9: $e7
    and b                                         ; $46aa: $a0
    rrca                                          ; $46ab: $0f

jr_034_46ac:
    rst $28                                       ; $46ac: $ef
    ret nz                                        ; $46ad: $c0

    ld c, $ef                                     ; $46ae: $0e $ef
    ldh [$0e], a                                  ; $46b0: $e0 $0e
    call Call_034_4719                            ; $46b2: $cd $19 $47
    call Call_034_4769                            ; $46b5: $cd $69 $47
    call Call_034_4733                            ; $46b8: $cd $33 $47
    call Call_034_46e6                            ; $46bb: $cd $e6 $46
    ld a, [$c46a]                                 ; $46be: $fa $6a $c4
    cp $0e                                        ; $46c1: $fe $0e
    jp z, Jump_034_5218                           ; $46c3: $ca $18 $52

    ld a, [$c46a]                                 ; $46c6: $fa $6a $c4
    cp $0f                                        ; $46c9: $fe $0f
    jp z, Jump_034_5019                           ; $46cb: $ca $19 $50

    rst $30                                       ; $46ce: $f7
    and b                                         ; $46cf: $a0
    rrca                                          ; $46d0: $0f
    jr z, jr_034_46de                             ; $46d1: $28 $0b

    call Call_034_4fcc                            ; $46d3: $cd $cc $4f
    ld a, $01                                     ; $46d6: $3e $01
    ld hl, $46df                                  ; $46d8: $21 $df $46
    call Call_000_23e8                            ; $46db: $cd $e8 $23

jr_034_46de:
    ret                                           ; $46de: $c9


    ld bc, $0230                                  ; $46df: $01 $30 $02
    call Call_034_50a2                            ; $46e2: $cd $a2 $50
    ret                                           ; $46e5: $c9


Call_034_46e6:
    rst $30                                       ; $46e6: $f7
    and b                                         ; $46e7: $a0
    rrca                                          ; $46e8: $0f
    jr z, jr_034_4718                             ; $46e9: $28 $2d

    ld b, $2c                                     ; $46eb: $06 $2c
    ld c, $07                                     ; $46ed: $0e $07
    ld d, $14                                     ; $46ef: $16 $14
    ld e, $11                                     ; $46f1: $1e $11
    ld h, $02                                     ; $46f3: $26 $02
    ld l, $0a                                     ; $46f5: $2e $0a
    rst $18                                       ; $46f7: $df
    inc c                                         ; $46f8: $0c
    dec bc                                        ; $46f9: $0b
    ld b, $2c                                     ; $46fa: $06 $2c
    ld c, $07                                     ; $46fc: $0e $07
    ld d, $14                                     ; $46fe: $16 $14
    ld e, $11                                     ; $4700: $1e $11
    ld h, $02                                     ; $4702: $26 $02
    ld l, $0a                                     ; $4704: $2e $0a
    rst $18                                       ; $4706: $df
    ld c, $0b                                     ; $4707: $0e $0b
    ld b, $2c                                     ; $4709: $06 $2c
    ld c, $07                                     ; $470b: $0e $07
    ld d, $14                                     ; $470d: $16 $14
    ld e, $11                                     ; $470f: $1e $11
    ld h, $02                                     ; $4711: $26 $02
    ld l, $0a                                     ; $4713: $2e $0a
    rst $18                                       ; $4715: $df
    ld a, [bc]                                    ; $4716: $0a
    dec bc                                        ; $4717: $0b

jr_034_4718:
    ret                                           ; $4718: $c9


Call_034_4719:
    rst $30                                       ; $4719: $f7
    and b                                         ; $471a: $a0
    rrca                                          ; $471b: $0f
    jr nz, jr_034_4732                            ; $471c: $20 $14

    rst $30                                       ; $471e: $f7
    ld h, b                                       ; $471f: $60

jr_034_4720:
    ld de, $0f28                                  ; $4720: $11 $28 $0f
    ld b, $2c                                     ; $4723: $06 $2c
    ld c, $1e                                     ; $4725: $0e $1e
    ld d, $1c                                     ; $4727: $16 $1c
    ld e, $18                                     ; $4729: $1e $18
    ld h, $02                                     ; $472b: $26 $02
    ld l, $02                                     ; $472d: $2e $02
    rst $18                                       ; $472f: $df
    ld c, $0b                                     ; $4730: $0e $0b

jr_034_4732:
    ret                                           ; $4732: $c9


Call_034_4733:
    rst $30                                       ; $4733: $f7
    ld b, b                                       ; $4734: $40
    ld c, $28                                     ; $4735: $0e $28
    jr nc, jr_034_4720                            ; $4737: $30 $e7

    add b                                         ; $4739: $80
    rrca                                          ; $473a: $0f
    ld b, $2c                                     ; $473b: $06 $2c
    ld c, $16                                     ; $473d: $0e $16
    ld d, $14                                     ; $473f: $16 $14
    ld e, $20                                     ; $4741: $1e $20
    ld h, $04                                     ; $4743: $26 $04
    ld l, $05                                     ; $4745: $2e $05
    rst $18                                       ; $4747: $df
    ld c, $0b                                     ; $4748: $0e $0b
    ld b, $2c                                     ; $474a: $06 $2c
    ld c, $16                                     ; $474c: $0e $16
    ld d, $14                                     ; $474e: $16 $14
    ld e, $20                                     ; $4750: $1e $20
    ld h, $04                                     ; $4752: $26 $04
    ld l, $05                                     ; $4754: $2e $05
    rst $18                                       ; $4756: $df
    inc c                                         ; $4757: $0c
    dec bc                                        ; $4758: $0b
    ld b, $2c                                     ; $4759: $06 $2c
    ld c, $16                                     ; $475b: $0e $16
    ld d, $14                                     ; $475d: $16 $14
    ld e, $20                                     ; $475f: $1e $20
    ld h, $04                                     ; $4761: $26 $04
    ld l, $05                                     ; $4763: $2e $05
    rst $18                                       ; $4765: $df
    ld a, [bc]                                    ; $4766: $0a
    dec bc                                        ; $4767: $0b
    ret                                           ; $4768: $c9


Call_034_4769:
    rst $30                                       ; $4769: $f7
    ret nz                                        ; $476a: $c0

    ld a, [bc]                                    ; $476b: $0a
    jp nz, Jump_034_4833                          ; $476c: $c2 $33 $48

    ld b, $2c                                     ; $476f: $06 $2c
    ld c, $1c                                     ; $4771: $0e $1c
    ld d, $22                                     ; $4773: $16 $22
    ld e, $1a                                     ; $4775: $1e $1a
    ld h, $02                                     ; $4777: $26 $02
    ld l, $02                                     ; $4779: $2e $02
    rst $18                                       ; $477b: $df
    ld c, $0b                                     ; $477c: $0e $0b
    ld b, $2c                                     ; $477e: $06 $2c
    ld c, $1c                                     ; $4780: $0e $1c
    ld d, $22                                     ; $4782: $16 $22
    ld e, $1a                                     ; $4784: $1e $1a
    ld h, $02                                     ; $4786: $26 $02
    ld l, $02                                     ; $4788: $2e $02
    rst $18                                       ; $478a: $df
    inc c                                         ; $478b: $0c
    dec bc                                        ; $478c: $0b
    ld b, $2c                                     ; $478d: $06 $2c
    ld c, $1c                                     ; $478f: $0e $1c
    ld d, $22                                     ; $4791: $16 $22
    ld e, $1a                                     ; $4793: $1e $1a
    ld h, $02                                     ; $4795: $26 $02
    ld l, $02                                     ; $4797: $2e $02
    rst $18                                       ; $4799: $df
    ld a, [bc]                                    ; $479a: $0a
    dec bc                                        ; $479b: $0b
    rst $30                                       ; $479c: $f7
    add b                                         ; $479d: $80
    ld a, [bc]                                    ; $479e: $0a
    jp nz, Jump_034_4833                          ; $479f: $c2 $33 $48

    ld b, $2c                                     ; $47a2: $06 $2c
    ld c, $1c                                     ; $47a4: $0e $1c
    ld d, $0e                                     ; $47a6: $16 $0e
    ld e, $16                                     ; $47a8: $1e $16
    ld h, $02                                     ; $47aa: $26 $02
    ld l, $02                                     ; $47ac: $2e $02
    rst $18                                       ; $47ae: $df
    ld c, $0b                                     ; $47af: $0e $0b
    ld b, $2c                                     ; $47b1: $06 $2c
    ld c, $1c                                     ; $47b3: $0e $1c
    ld d, $0e                                     ; $47b5: $16 $0e
    ld e, $16                                     ; $47b7: $1e $16
    ld h, $02                                     ; $47b9: $26 $02
    ld l, $02                                     ; $47bb: $2e $02
    rst $18                                       ; $47bd: $df
    inc c                                         ; $47be: $0c
    dec bc                                        ; $47bf: $0b
    ld b, $2c                                     ; $47c0: $06 $2c
    ld c, $1c                                     ; $47c2: $0e $1c
    ld d, $0e                                     ; $47c4: $16 $0e
    ld e, $16                                     ; $47c6: $1e $16
    ld h, $02                                     ; $47c8: $26 $02
    ld l, $02                                     ; $47ca: $2e $02
    rst $18                                       ; $47cc: $df
    ld a, [bc]                                    ; $47cd: $0a
    dec bc                                        ; $47ce: $0b
    rst $30                                       ; $47cf: $f7
    ld b, b                                       ; $47d0: $40
    ld a, [bc]                                    ; $47d1: $0a
    jr nz, jr_034_4833                            ; $47d2: $20 $5f

    ld b, $2c                                     ; $47d4: $06 $2c
    ld c, $1c                                     ; $47d6: $0e $1c
    ld d, $0a                                     ; $47d8: $16 $0a
    ld e, $24                                     ; $47da: $1e $24
    ld h, $02                                     ; $47dc: $26 $02
    ld l, $02                                     ; $47de: $2e $02
    rst $18                                       ; $47e0: $df
    ld c, $0b                                     ; $47e1: $0e $0b
    ld b, $2c                                     ; $47e3: $06 $2c
    ld c, $1c                                     ; $47e5: $0e $1c
    ld d, $0a                                     ; $47e7: $16 $0a
    ld e, $24                                     ; $47e9: $1e $24
    ld h, $02                                     ; $47eb: $26 $02
    ld l, $02                                     ; $47ed: $2e $02
    rst $18                                       ; $47ef: $df
    inc c                                         ; $47f0: $0c
    dec bc                                        ; $47f1: $0b
    ld b, $2c                                     ; $47f2: $06 $2c
    ld c, $1c                                     ; $47f4: $0e $1c
    ld d, $0a                                     ; $47f6: $16 $0a
    ld e, $24                                     ; $47f8: $1e $24
    ld h, $02                                     ; $47fa: $26 $02
    ld l, $02                                     ; $47fc: $2e $02
    rst $18                                       ; $47fe: $df
    ld a, [bc]                                    ; $47ff: $0a
    dec bc                                        ; $4800: $0b
    rst $30                                       ; $4801: $f7
    nop                                           ; $4802: $00
    ld a, [bc]                                    ; $4803: $0a
    jr nz, jr_034_4833                            ; $4804: $20 $2d

    ld b, $2c                                     ; $4806: $06 $2c
    ld c, $1c                                     ; $4808: $0e $1c
    ld d, $0e                                     ; $480a: $16 $0e
    ld e, $2c                                     ; $480c: $1e $2c
    ld h, $02                                     ; $480e: $26 $02
    ld l, $02                                     ; $4810: $2e $02
    rst $18                                       ; $4812: $df
    ld c, $0b                                     ; $4813: $0e $0b
    ld b, $2c                                     ; $4815: $06 $2c
    ld c, $1c                                     ; $4817: $0e $1c
    ld d, $0e                                     ; $4819: $16 $0e
    ld e, $2c                                     ; $481b: $1e $2c
    ld h, $02                                     ; $481d: $26 $02
    ld l, $02                                     ; $481f: $2e $02
    rst $18                                       ; $4821: $df
    inc c                                         ; $4822: $0c
    dec bc                                        ; $4823: $0b
    ld b, $2c                                     ; $4824: $06 $2c
    ld c, $1c                                     ; $4826: $0e $1c
    ld d, $0e                                     ; $4828: $16 $0e
    ld e, $2c                                     ; $482a: $1e $2c
    ld h, $02                                     ; $482c: $26 $02
    ld l, $02                                     ; $482e: $2e $02
    rst $18                                       ; $4830: $df
    ld a, [bc]                                    ; $4831: $0a
    dec bc                                        ; $4832: $0b

Jump_034_4833:
jr_034_4833:
    push af                                       ; $4833: $f5
    ld a, $01                                     ; $4834: $3e $01
    rst $18                                       ; $4836: $df
    inc b                                         ; $4837: $04
    ld a, [bc]                                    ; $4838: $0a
    pop af                                        ; $4839: $f1
    ret                                           ; $483a: $c9


Call_034_483b:
    rst $30                                       ; $483b: $f7
    ld h, b                                       ; $483c: $60
    ld de, $8bca                                  ; $483d: $11 $ca $8b
    ld c, b                                       ; $4840: $48
    rst $30                                       ; $4841: $f7
    and b                                         ; $4842: $a0
    rrca                                          ; $4843: $0f
    jp nz, Jump_034_488b                          ; $4844: $c2 $8b $48

    rst $30                                       ; $4847: $f7
    ld h, b                                       ; $4848: $60
    rrca                                          ; $4849: $0f
    jp nz, Jump_034_488c                          ; $484a: $c2 $8c $48

    ld bc, $0040                                  ; $484d: $01 $40 $00
    rst $18                                       ; $4850: $df
    ld [hl], $0a                                  ; $4851: $36 $0a
    xor a                                         ; $4853: $af
    ld bc, $1d00                                  ; $4854: $01 $00 $1d
    ld de, $1500                                  ; $4857: $11 $00 $15
    rst $18                                       ; $485a: $df
    jr c, jr_034_4867                             ; $485b: $38 $0a

    call Call_034_52c0                            ; $485d: $cd $c0 $52
    call Call_034_4fb4                            ; $4860: $cd $b4 $4f
    ld bc, $0020                                  ; $4863: $01 $20 $00
    rst $18                                       ; $4866: $df

jr_034_4867:
    ld [hl], $0a                                  ; $4867: $36 $0a
    xor a                                         ; $4869: $af
    ld bc, $1d00                                  ; $486a: $01 $00 $1d
    ld de, $1900                                  ; $486d: $11 $00 $19
    rst $18                                       ; $4870: $df
    jr c, @+$0c                                   ; $4871: $38 $0a

    ld a, $00                                     ; $4873: $3e $00
    ld b, a                                       ; $4875: $47
    ld a, $07                                     ; $4876: $3e $07
    rst $18                                       ; $4878: $df
    ld [hl-], a                                   ; $4879: $32
    ld a, [bc]                                    ; $487a: $0a
    call Call_034_512e                            ; $487b: $cd $2e $51
    ld c, $02                                     ; $487e: $0e $02
    call Call_000_25a1                            ; $4880: $cd $a1 $25
    call Call_000_2625                            ; $4883: $cd $25 $26
    ld a, $0f                                     ; $4886: $3e $0f
    ld [$c441], a                                 ; $4888: $ea $41 $c4

Jump_034_488b:
    ret                                           ; $488b: $c9


Jump_034_488c:
    call Call_034_5019                            ; $488c: $cd $19 $50
    ret                                           ; $488f: $c9


    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    jr jr_034_489d                                ; $4893: $18 $08

    inc [hl]                                      ; $4895: $34
    jr z, jr_034_48ec                             ; $4896: $28 $54

    ld l, h                                       ; $4898: $6c
    sub d                                         ; $4899: $92
    ld l, [hl]                                    ; $489a: $6e
    sub c                                         ; $489b: $91
    ccf                                           ; $489c: $3f

jr_034_489d:
    ld e, b                                       ; $489d: $58
    jr c, jr_034_48ff                             ; $489e: $38 $5f

    rra                                           ; $48a0: $1f
    jr nz, jr_034_48a9                            ; $48a1: $20 $06

    add hl, de                                    ; $48a3: $19
    nop                                           ; $48a4: $00
    ld b, $00                                     ; $48a5: $06 $00
    nop                                           ; $48a7: $00
    nop                                           ; $48a8: $00

jr_034_48a9:
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    nop                                           ; $48ab: $00
    nop                                           ; $48ac: $00
    nop                                           ; $48ad: $00
    nop                                           ; $48ae: $00

jr_034_48af:
    nop                                           ; $48af: $00
    nop                                           ; $48b0: $00
    nop                                           ; $48b1: $00
    nop                                           ; $48b2: $00
    nop                                           ; $48b3: $00
    nop                                           ; $48b4: $00
    nop                                           ; $48b5: $00
    nop                                           ; $48b6: $00
    nop                                           ; $48b7: $00
    nop                                           ; $48b8: $00
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    add b                                         ; $48bb: $80
    add b                                         ; $48bc: $80
    ld b, b                                       ; $48bd: $40
    nop                                           ; $48be: $00
    ret nz                                        ; $48bf: $c0

    nop                                           ; $48c0: $00
    add b                                         ; $48c1: $80
    nop                                           ; $48c2: $00
    nop                                           ; $48c3: $00
    nop                                           ; $48c4: $00
    nop                                           ; $48c5: $00
    nop                                           ; $48c6: $00
    nop                                           ; $48c7: $00
    nop                                           ; $48c8: $00
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    nop                                           ; $48cb: $00
    nop                                           ; $48cc: $00
    nop                                           ; $48cd: $00
    nop                                           ; $48ce: $00
    nop                                           ; $48cf: $00
    nop                                           ; $48d0: $00
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    nop                                           ; $48d3: $00
    nop                                           ; $48d4: $00
    nop                                           ; $48d5: $00
    nop                                           ; $48d6: $00
    inc c                                         ; $48d7: $0c
    inc c                                         ; $48d8: $0c
    inc de                                        ; $48d9: $13
    rlca                                          ; $48da: $07
    jr jr_034_48e0                                ; $48db: $18 $03

    inc e                                         ; $48dd: $1c
    dec c                                         ; $48de: $0d
    inc de                                        ; $48df: $13

jr_034_48e0:
    rrca                                          ; $48e0: $0f
    ld de, $0c03                                  ; $48e1: $11 $03 $0c
    nop                                           ; $48e4: $00
    inc bc                                        ; $48e5: $03
    nop                                           ; $48e6: $00
    nop                                           ; $48e7: $00
    nop                                           ; $48e8: $00
    nop                                           ; $48e9: $00
    nop                                           ; $48ea: $00
    nop                                           ; $48eb: $00

jr_034_48ec:
    nop                                           ; $48ec: $00
    nop                                           ; $48ed: $00
    nop                                           ; $48ee: $00
    nop                                           ; $48ef: $00
    nop                                           ; $48f0: $00
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    nop                                           ; $48f3: $00
    nop                                           ; $48f4: $00
    nop                                           ; $48f5: $00
    nop                                           ; $48f6: $00
    jr nc, jr_034_4929                            ; $48f7: $30 $30

    ret z                                         ; $48f9: $c8

    ldh [rNR23], a                                ; $48fa: $e0 $18
    ret nz                                        ; $48fc: $c0

    jr c, jr_034_48af                             ; $48fd: $38 $b0

jr_034_48ff:
    ret z                                         ; $48ff: $c8

    ldh a, [$88]                                  ; $4900: $f0 $88
    ret nz                                        ; $4902: $c0

    jr nc, jr_034_4905                            ; $4903: $30 $00

jr_034_4905:
    ret nz                                        ; $4905: $c0

    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    nop                                           ; $4909: $00
    nop                                           ; $490a: $00
    nop                                           ; $490b: $00
    nop                                           ; $490c: $00
    nop                                           ; $490d: $00
    nop                                           ; $490e: $00
    nop                                           ; $490f: $00
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    nop                                           ; $4914: $00
    nop                                           ; $4915: $00
    nop                                           ; $4916: $00
    nop                                           ; $4917: $00
    nop                                           ; $4918: $00
    nop                                           ; $4919: $00
    nop                                           ; $491a: $00
    ld bc, $0201                                  ; $491b: $01 $01 $02
    nop                                           ; $491e: $00
    inc bc                                        ; $491f: $03
    nop                                           ; $4920: $00
    ld bc, $0000                                  ; $4921: $01 $00 $00
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    nop                                           ; $4928: $00

jr_034_4929:
    nop                                           ; $4929: $00
    nop                                           ; $492a: $00
    nop                                           ; $492b: $00
    nop                                           ; $492c: $00
    nop                                           ; $492d: $00
    nop                                           ; $492e: $00
    nop                                           ; $492f: $00
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    jr jr_034_4945                                ; $4933: $18 $10

    inc l                                         ; $4935: $2c
    inc d                                         ; $4936: $14
    ld a, [hl+]                                   ; $4937: $2a
    ld [hl], $49                                  ; $4938: $36 $49
    halt                                          ; $493a: $76
    adc c                                         ; $493b: $89
    db $fc                                        ; $493c: $fc
    ld a, [de]                                    ; $493d: $1a
    inc e                                         ; $493e: $1c
    ld a, [$04f8]                                 ; $493f: $fa $f8 $04
    ld h, b                                       ; $4942: $60
    sbc b                                         ; $4943: $98
    nop                                           ; $4944: $00

jr_034_4945:
    ld h, b                                       ; $4945: $60
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    nop                                           ; $494a: $00
    nop                                           ; $494b: $00
    nop                                           ; $494c: $00
    nop                                           ; $494d: $00
    nop                                           ; $494e: $00
    nop                                           ; $494f: $00
    nop                                           ; $4950: $00

jr_034_4951:
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    nop                                           ; $495a: $00
    nop                                           ; $495b: $00
    nop                                           ; $495c: $00
    nop                                           ; $495d: $00
    nop                                           ; $495e: $00
    nop                                           ; $495f: $00
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    nop                                           ; $4963: $00
    nop                                           ; $4964: $00
    nop                                           ; $4965: $00
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    nop                                           ; $496a: $00
    nop                                           ; $496b: $00
    nop                                           ; $496c: $00
    nop                                           ; $496d: $00
    nop                                           ; $496e: $00
    nop                                           ; $496f: $00
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    nop                                           ; $4977: $00
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    nop                                           ; $497a: $00
    nop                                           ; $497b: $00
    nop                                           ; $497c: $00
    nop                                           ; $497d: $00
    nop                                           ; $497e: $00
    nop                                           ; $497f: $00
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    nop                                           ; $4985: $00
    nop                                           ; $4986: $00
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    nop                                           ; $498b: $00
    nop                                           ; $498c: $00
    nop                                           ; $498d: $00
    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    nop                                           ; $4993: $00
    nop                                           ; $4994: $00
    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    nop                                           ; $499a: $00
    nop                                           ; $499b: $00
    nop                                           ; $499c: $00
    ld bc, $0000                                  ; $499d: $01 $00 $00
    ld [bc], a                                    ; $49a0: $02
    ld [bc], a                                    ; $49a1: $02
    nop                                           ; $49a2: $00
    nop                                           ; $49a3: $00
    nop                                           ; $49a4: $00
    nop                                           ; $49a5: $00
    nop                                           ; $49a6: $00
    nop                                           ; $49a7: $00
    nop                                           ; $49a8: $00
    nop                                           ; $49a9: $00
    nop                                           ; $49aa: $00
    nop                                           ; $49ab: $00
    nop                                           ; $49ac: $00
    nop                                           ; $49ad: $00
    nop                                           ; $49ae: $00
    nop                                           ; $49af: $00
    nop                                           ; $49b0: $00
    nop                                           ; $49b1: $00
    nop                                           ; $49b2: $00
    nop                                           ; $49b3: $00
    nop                                           ; $49b4: $00
    nop                                           ; $49b5: $00
    nop                                           ; $49b6: $00
    nop                                           ; $49b7: $00
    add b                                         ; $49b8: $80
    nop                                           ; $49b9: $00
    jr nz, jr_034_49bc                            ; $49ba: $20 $00

jr_034_49bc:
    stop                                          ; $49bc: $10 $00
    jr z, jr_034_4a00                             ; $49be: $28 $40

    inc e                                         ; $49c0: $1c
    jr nz, jr_034_4951                            ; $49c1: $20 $8e

    call nc, Call_034_7957                        ; $49c3: $d4 $57 $79
    and a                                         ; $49c6: $a7
    cp d                                          ; $49c7: $ba
    ld l, e                                       ; $49c8: $6b
    ld a, h                                       ; $49c9: $7c
    ld d, a                                       ; $49ca: $57
    ld e, l                                       ; $49cb: $5d
    ld a, [bc]                                    ; $49cc: $0a
    ld a, [bc]                                    ; $49cd: $0a
    ld d, l                                       ; $49ce: $55
    ld d, l                                       ; $49cf: $55
    nop                                           ; $49d0: $00

jr_034_49d1:
    nop                                           ; $49d1: $00
    nop                                           ; $49d2: $00
    nop                                           ; $49d3: $00
    nop                                           ; $49d4: $00
    nop                                           ; $49d5: $00
    nop                                           ; $49d6: $00
    nop                                           ; $49d7: $00
    nop                                           ; $49d8: $00
    nop                                           ; $49d9: $00
    nop                                           ; $49da: $00
    nop                                           ; $49db: $00
    nop                                           ; $49dc: $00
    nop                                           ; $49dd: $00
    nop                                           ; $49de: $00
    nop                                           ; $49df: $00
    nop                                           ; $49e0: $00
    nop                                           ; $49e1: $00
    nop                                           ; $49e2: $00
    nop                                           ; $49e3: $00
    nop                                           ; $49e4: $00
    nop                                           ; $49e5: $00
    nop                                           ; $49e6: $00
    nop                                           ; $49e7: $00
    nop                                           ; $49e8: $00
    nop                                           ; $49e9: $00
    nop                                           ; $49ea: $00
    nop                                           ; $49eb: $00
    nop                                           ; $49ec: $00
    nop                                           ; $49ed: $00
    nop                                           ; $49ee: $00
    nop                                           ; $49ef: $00
    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    nop                                           ; $49f3: $00
    nop                                           ; $49f4: $00
    ld bc, $0000                                  ; $49f5: $01 $00 $00
    ld [bc], a                                    ; $49f8: $02
    ld [bc], a                                    ; $49f9: $02
    nop                                           ; $49fa: $00
    nop                                           ; $49fb: $00
    nop                                           ; $49fc: $00
    nop                                           ; $49fd: $00

jr_034_49fe:
    nop                                           ; $49fe: $00
    nop                                           ; $49ff: $00

jr_034_4a00:
    nop                                           ; $4a00: $00
    nop                                           ; $4a01: $00
    nop                                           ; $4a02: $00
    nop                                           ; $4a03: $00
    nop                                           ; $4a04: $00
    nop                                           ; $4a05: $00
    nop                                           ; $4a06: $00
    nop                                           ; $4a07: $00
    nop                                           ; $4a08: $00
    nop                                           ; $4a09: $00
    nop                                           ; $4a0a: $00
    nop                                           ; $4a0b: $00
    nop                                           ; $4a0c: $00
    nop                                           ; $4a0d: $00
    nop                                           ; $4a0e: $00
    nop                                           ; $4a0f: $00
    and b                                         ; $4a10: $a0
    nop                                           ; $4a11: $00
    ld a, [bc]                                    ; $4a12: $0a
    nop                                           ; $4a13: $00
    inc b                                         ; $4a14: $04
    ld b, b                                       ; $4a15: $40
    ld bc, $8014                                  ; $4a16: $01 $14 $80
    adc c                                         ; $4a19: $89
    jr z, jr_034_4a46                             ; $4a1a: $28 $2a

    ld [de], a                                    ; $4a1c: $12
    inc de                                        ; $4a1d: $13
    dec b                                         ; $4a1e: $05
    dec b                                         ; $4a1f: $05
    ld [bc], a                                    ; $4a20: $02
    ld [bc], a                                    ; $4a21: $02
    nop                                           ; $4a22: $00
    nop                                           ; $4a23: $00
    nop                                           ; $4a24: $00
    nop                                           ; $4a25: $00
    nop                                           ; $4a26: $00
    nop                                           ; $4a27: $00
    nop                                           ; $4a28: $00
    nop                                           ; $4a29: $00
    nop                                           ; $4a2a: $00
    nop                                           ; $4a2b: $00
    nop                                           ; $4a2c: $00
    nop                                           ; $4a2d: $00
    nop                                           ; $4a2e: $00
    nop                                           ; $4a2f: $00
    nop                                           ; $4a30: $00
    nop                                           ; $4a31: $00
    nop                                           ; $4a32: $00
    nop                                           ; $4a33: $00
    add b                                         ; $4a34: $80
    nop                                           ; $4a35: $00
    ld b, b                                       ; $4a36: $40
    nop                                           ; $4a37: $00
    ldh a, [rNR10]                                ; $4a38: $f0 $10
    ld a, b                                       ; $4a3a: $78
    xor b                                         ; $4a3b: $a8
    jr c, jr_034_49fe                             ; $4a3c: $38 $c0

    inc e                                         ; $4a3e: $1c
    ldh [rNR32], a                                ; $4a3f: $e0 $1c
    jr nz, jr_034_49d1                            ; $4a41: $20 $8e

    call nc, Call_034_7957                        ; $4a43: $d4 $57 $79

jr_034_4a46:
    and a                                         ; $4a46: $a7
    cp d                                          ; $4a47: $ba
    ld l, e                                       ; $4a48: $6b
    ld a, h                                       ; $4a49: $7c
    ld d, a                                       ; $4a4a: $57
    ld e, l                                       ; $4a4b: $5d
    ld a, [bc]                                    ; $4a4c: $0a
    ld a, [bc]                                    ; $4a4d: $0a
    ld d, l                                       ; $4a4e: $55
    ld d, l                                       ; $4a4f: $55
    nop                                           ; $4a50: $00

jr_034_4a51:
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    nop                                           ; $4a54: $00
    nop                                           ; $4a55: $00
    nop                                           ; $4a56: $00
    nop                                           ; $4a57: $00
    nop                                           ; $4a58: $00
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    nop                                           ; $4a5b: $00
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
    dec b                                         ; $4a70: $05
    nop                                           ; $4a71: $00
    ld a, [hl+]                                   ; $4a72: $2a
    nop                                           ; $4a73: $00
    add b                                         ; $4a74: $80
    ld [bc], a                                    ; $4a75: $02
    nop                                           ; $4a76: $00
    dec d                                         ; $4a77: $15
    ld bc, $0a41                                  ; $4a78: $01 $41 $0a
    adc d                                         ; $4a7b: $8a
    jr nz, jr_034_4a9e                            ; $4a7c: $20 $20

    ld b, b                                       ; $4a7e: $40
    ld b, b                                       ; $4a7f: $40
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
    ld d, b                                       ; $4a90: $50
    nop                                           ; $4a91: $00
    cp [hl]                                       ; $4a92: $be
    nop                                           ; $4a93: $00
    rrca                                          ; $4a94: $0f
    and b                                         ; $4a95: $a0
    inc bc                                        ; $4a96: $03
    ld a, h                                       ; $4a97: $7c
    ld b, b                                       ; $4a98: $40
    ld e, a                                       ; $4a99: $5f
    ld hl, sp-$01                                 ; $4a9a: $f8 $ff
    ld a, $3f                                     ; $4a9c: $3e $3f

jr_034_4a9e:
    rrca                                          ; $4a9e: $0f
    rrca                                          ; $4a9f: $0f
    ld [bc], a                                    ; $4aa0: $02
    ld [bc], a                                    ; $4aa1: $02
    nop                                           ; $4aa2: $00
    nop                                           ; $4aa3: $00
    nop                                           ; $4aa4: $00
    nop                                           ; $4aa5: $00
    nop                                           ; $4aa6: $00
    nop                                           ; $4aa7: $00
    nop                                           ; $4aa8: $00
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    nop                                           ; $4aab: $00
    nop                                           ; $4aac: $00
    nop                                           ; $4aad: $00
    nop                                           ; $4aae: $00
    nop                                           ; $4aaf: $00
    nop                                           ; $4ab0: $00
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    nop                                           ; $4ab3: $00
    add b                                         ; $4ab4: $80
    nop                                           ; $4ab5: $00
    ldh [rNR41], a                                ; $4ab6: $e0 $20
    ldh a, [$50]                                  ; $4ab8: $f0 $50
    ld a, b                                       ; $4aba: $78
    xor b                                         ; $4abb: $a8
    cp b                                          ; $4abc: $b8
    ret nz                                        ; $4abd: $c0

    inc e                                         ; $4abe: $1c
    ldh [rNR32], a                                ; $4abf: $e0 $1c
    jr nz, jr_034_4a51                            ; $4ac1: $20 $8e

    call nc, Call_034_7957                        ; $4ac3: $d4 $57 $79
    and a                                         ; $4ac6: $a7
    cp d                                          ; $4ac7: $ba
    ld l, e                                       ; $4ac8: $6b
    ld a, h                                       ; $4ac9: $7c
    ld d, a                                       ; $4aca: $57
    ld e, l                                       ; $4acb: $5d
    ld a, [bc]                                    ; $4acc: $0a
    ld a, [bc]                                    ; $4acd: $0a
    ld d, l                                       ; $4ace: $55
    ld d, l                                       ; $4acf: $55
    nop                                           ; $4ad0: $00

jr_034_4ad1:
    nop                                           ; $4ad1: $00
    nop                                           ; $4ad2: $00
    nop                                           ; $4ad3: $00
    inc bc                                        ; $4ad4: $03
    ld [bc], a                                    ; $4ad5: $02
    inc bc                                        ; $4ad6: $03
    nop                                           ; $4ad7: $00
    dec b                                         ; $4ad8: $05
    nop                                           ; $4ad9: $00
    ld c, $01                                     ; $4ada: $0e $01
    inc d                                         ; $4adc: $14
    inc bc                                        ; $4add: $03
    ld [$1105], sp                                ; $4ade: $08 $05 $11
    inc bc                                        ; $4ae1: $03
    ld b, b                                       ; $4ae2: $40
    inc b                                         ; $4ae3: $04
    ld hl, $0001                                  ; $4ae4: $21 $01 $00
    ld [$0242], sp                                ; $4ae7: $08 $42 $02
    nop                                           ; $4aea: $00
    nop                                           ; $4aeb: $00
    nop                                           ; $4aec: $00
    nop                                           ; $4aed: $00
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    rra                                           ; $4af0: $1f
    db $10                                        ; $4af1: $10
    rst $38                                       ; $4af2: $ff
    add b                                         ; $4af3: $80
    ld hl, sp+$07                                 ; $4af4: $f8 $07
    ret nz                                        ; $4af6: $c0

    ccf                                           ; $4af7: $3f
    inc bc                                        ; $4af8: $03
    rst $38                                       ; $4af9: $ff
    rra                                           ; $4afa: $1f
    rst $38                                       ; $4afb: $ff
    ld a, h                                       ; $4afc: $7c
    db $fc                                        ; $4afd: $fc
    ldh a, [$f0]                                  ; $4afe: $f0 $f0
    ret z                                         ; $4b00: $c8

    ret z                                         ; $4b01: $c8

    and b                                         ; $4b02: $a0
    and b                                         ; $4b03: $a0
    ld b, b                                       ; $4b04: $40
    ld b, b                                       ; $4b05: $40
    nop                                           ; $4b06: $00
    nop                                           ; $4b07: $00
    add b                                         ; $4b08: $80
    add b                                         ; $4b09: $80
    nop                                           ; $4b0a: $00
    nop                                           ; $4b0b: $00
    nop                                           ; $4b0c: $00
    nop                                           ; $4b0d: $00
    nop                                           ; $4b0e: $00
    nop                                           ; $4b0f: $00
    ld hl, sp+$08                                 ; $4b10: $f8 $08
    rst $38                                       ; $4b12: $ff
    ld bc, $e01f                                  ; $4b13: $01 $1f $e0
    inc bc                                        ; $4b16: $03
    db $fc                                        ; $4b17: $fc
    ret nz                                        ; $4b18: $c0

    rst $38                                       ; $4b19: $ff
    ld hl, sp-$02                                 ; $4b1a: $f8 $fe
    ld a, $3f                                     ; $4b1c: $3e $3f
    rrca                                          ; $4b1e: $0f
    rrca                                          ; $4b1f: $0f
    ld [de], a                                    ; $4b20: $12
    ld [de], a                                    ; $4b21: $12
    dec b                                         ; $4b22: $05
    dec b                                         ; $4b23: $05
    nop                                           ; $4b24: $00
    nop                                           ; $4b25: $00
    nop                                           ; $4b26: $00
    nop                                           ; $4b27: $00
    nop                                           ; $4b28: $00
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00
    nop                                           ; $4b2c: $00
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    nop                                           ; $4b30: $00
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    nop                                           ; $4b33: $00
    ret z                                         ; $4b34: $c8

    ld c, b                                       ; $4b35: $48
    ldh [rNR41], a                                ; $4b36: $e0 $20
    ldh a, [$50]                                  ; $4b38: $f0 $50
    ld a, b                                       ; $4b3a: $78
    xor b                                         ; $4b3b: $a8
    cp b                                          ; $4b3c: $b8
    ret nz                                        ; $4b3d: $c0

    inc e                                         ; $4b3e: $1c
    ldh [rNR32], a                                ; $4b3f: $e0 $1c
    jr nz, jr_034_4ad1                            ; $4b41: $20 $8e

    call nc, Call_034_7957                        ; $4b43: $d4 $57 $79
    and a                                         ; $4b46: $a7
    cp d                                          ; $4b47: $ba
    ld l, e                                       ; $4b48: $6b
    ld a, h                                       ; $4b49: $7c
    ld d, a                                       ; $4b4a: $57
    ld e, l                                       ; $4b4b: $5d
    ld a, [bc]                                    ; $4b4c: $0a
    ld a, [bc]                                    ; $4b4d: $0a
    ld d, l                                       ; $4b4e: $55
    ld d, l                                       ; $4b4f: $55
    nop                                           ; $4b50: $00

jr_034_4b51:
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    inc de                                        ; $4b54: $13
    ld [de], a                                    ; $4b55: $12
    rlca                                          ; $4b56: $07
    inc b                                         ; $4b57: $04
    rrca                                          ; $4b58: $0f
    ld a, [bc]                                    ; $4b59: $0a
    ld e, $15                                     ; $4b5a: $1e $15
    dec e                                         ; $4b5c: $1d
    inc bc                                        ; $4b5d: $03
    jr c, jr_034_4b67                             ; $4b5e: $38 $07

    jr c, @+$06                                   ; $4b60: $38 $04

    ld [hl], c                                    ; $4b62: $71
    dec hl                                        ; $4b63: $2b
    ld [$e59e], a                                 ; $4b64: $ea $9e $e5

jr_034_4b67:
    ld e, l                                       ; $4b67: $5d
    sub $3e                                       ; $4b68: $d6 $3e
    ld [$50ba], a                                 ; $4b6a: $ea $ba $50
    ld d, b                                       ; $4b6d: $50
    xor d                                         ; $4b6e: $aa
    xor d                                         ; $4b6f: $aa
    rra                                           ; $4b70: $1f
    db $10                                        ; $4b71: $10
    rst $38                                       ; $4b72: $ff
    add b                                         ; $4b73: $80
    ld hl, sp+$07                                 ; $4b74: $f8 $07
    ret nz                                        ; $4b76: $c0

    ccf                                           ; $4b77: $3f
    inc bc                                        ; $4b78: $03
    rst $38                                       ; $4b79: $ff
    rra                                           ; $4b7a: $1f
    rst $38                                       ; $4b7b: $ff
    ld a, h                                       ; $4b7c: $7c
    db $fc                                        ; $4b7d: $fc
    ldh a, [$f0]                                  ; $4b7e: $f0 $f0
    ret z                                         ; $4b80: $c8

    ret z                                         ; $4b81: $c8

    and b                                         ; $4b82: $a0
    and b                                         ; $4b83: $a0
    ld b, b                                       ; $4b84: $40
    ld b, b                                       ; $4b85: $40
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    add b                                         ; $4b88: $80
    add b                                         ; $4b89: $80
    nop                                           ; $4b8a: $00
    nop                                           ; $4b8b: $00
    nop                                           ; $4b8c: $00
    nop                                           ; $4b8d: $00
    nop                                           ; $4b8e: $00
    nop                                           ; $4b8f: $00
    ld hl, sp+$08                                 ; $4b90: $f8 $08
    rst $38                                       ; $4b92: $ff
    ld bc, $e01f                                  ; $4b93: $01 $1f $e0
    inc bc                                        ; $4b96: $03
    db $fc                                        ; $4b97: $fc
    ret nz                                        ; $4b98: $c0

    rst $38                                       ; $4b99: $ff
    ld hl, sp-$02                                 ; $4b9a: $f8 $fe
    ld a, $3f                                     ; $4b9c: $3e $3f
    rrca                                          ; $4b9e: $0f
    rrca                                          ; $4b9f: $0f
    ld [de], a                                    ; $4ba0: $12
    ld [de], a                                    ; $4ba1: $12
    dec b                                         ; $4ba2: $05
    dec b                                         ; $4ba3: $05
    nop                                           ; $4ba4: $00
    nop                                           ; $4ba5: $00
    nop                                           ; $4ba6: $00
    nop                                           ; $4ba7: $00
    nop                                           ; $4ba8: $00
    nop                                           ; $4ba9: $00
    nop                                           ; $4baa: $00
    nop                                           ; $4bab: $00
    nop                                           ; $4bac: $00
    nop                                           ; $4bad: $00
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    nop                                           ; $4bb0: $00
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    nop                                           ; $4bb3: $00
    ret z                                         ; $4bb4: $c8

    ld c, b                                       ; $4bb5: $48
    ldh [rNR41], a                                ; $4bb6: $e0 $20
    ldh a, [$50]                                  ; $4bb8: $f0 $50
    ld a, b                                       ; $4bba: $78
    xor b                                         ; $4bbb: $a8
    cp b                                          ; $4bbc: $b8
    ret nz                                        ; $4bbd: $c0

    inc e                                         ; $4bbe: $1c
    ldh [rNR32], a                                ; $4bbf: $e0 $1c
    jr nz, jr_034_4b51                            ; $4bc1: $20 $8e

    call nc, Call_034_7957                        ; $4bc3: $d4 $57 $79
    and a                                         ; $4bc6: $a7
    cp d                                          ; $4bc7: $ba
    ld l, e                                       ; $4bc8: $6b
    ld a, h                                       ; $4bc9: $7c
    ld d, a                                       ; $4bca: $57
    ld e, l                                       ; $4bcb: $5d
    ld a, [bc]                                    ; $4bcc: $0a
    ld a, [bc]                                    ; $4bcd: $0a
    ld d, l                                       ; $4bce: $55
    ld d, l                                       ; $4bcf: $55
    nop                                           ; $4bd0: $00
    nop                                           ; $4bd1: $00
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
    nop                                           ; $4bde: $00
    nop                                           ; $4bdf: $00
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
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    nop                                           ; $4bf3: $00
    nop                                           ; $4bf4: $00
    nop                                           ; $4bf5: $00
    nop                                           ; $4bf6: $00
    nop                                           ; $4bf7: $00
    inc b                                         ; $4bf8: $04
    inc b                                         ; $4bf9: $04
    ld c, $0f                                     ; $4bfa: $0e $0f
    ld c, $0f                                     ; $4bfc: $0e $0f
    rra                                           ; $4bfe: $1f
    rra                                           ; $4bff: $1f
    rst $38                                       ; $4c00: $ff
    rst $38                                       ; $4c01: $ff
    rst $38                                       ; $4c02: $ff
    rst $38                                       ; $4c03: $ff
    ld a, a                                       ; $4c04: $7f
    ld a, a                                       ; $4c05: $7f
    ccf                                           ; $4c06: $3f
    ccf                                           ; $4c07: $3f
    ccf                                           ; $4c08: $3f
    ccf                                           ; $4c09: $3f
    ld a, a                                       ; $4c0a: $7f
    ld a, a                                       ; $4c0b: $7f
    ld a, e                                       ; $4c0c: $7b
    ld a, e                                       ; $4c0d: $7b
    ld h, b                                       ; $4c0e: $60
    ld h, b                                       ; $4c0f: $60
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
    ld bc, $0100                                  ; $4c24: $01 $00 $01
    ld [bc], a                                    ; $4c27: $02
    inc bc                                        ; $4c28: $03
    nop                                           ; $4c29: $00
    inc bc                                        ; $4c2a: $03
    inc b                                         ; $4c2b: $04
    rlca                                          ; $4c2c: $07
    ld [$0807], sp                                ; $4c2d: $08 $07 $08
    ld c, $11                                     ; $4c30: $0e $11
    dec bc                                        ; $4c32: $0b
    inc [hl]                                      ; $4c33: $34
    dec d                                         ; $4c34: $15
    ld a, [hl+]                                   ; $4c35: $2a
    inc bc                                        ; $4c36: $03
    ld a, h                                       ; $4c37: $7c
    inc d                                         ; $4c38: $14
    db $eb                                        ; $4c39: $eb
    nop                                           ; $4c3a: $00
    cp $00                                        ; $4c3b: $fe $00
    ld hl, sp+$00                                 ; $4c3d: $f8 $00
    ldh a, [$e0]                                  ; $4c3f: $f0 $e0
    ldh [$e0], a                                  ; $4c41: $e0 $e0
    ldh [$c0], a                                  ; $4c43: $e0 $c0
    ret nz                                        ; $4c45: $c0

    add b                                         ; $4c46: $80
    add b                                         ; $4c47: $80
    add b                                         ; $4c48: $80
    add b                                         ; $4c49: $80
    ret nz                                        ; $4c4a: $c0

    ret nz                                        ; $4c4b: $c0

    ret nz                                        ; $4c4c: $c0

    ret nz                                        ; $4c4d: $c0

    ret nz                                        ; $4c4e: $c0

    ret nz                                        ; $4c4f: $c0

    ld [bc], a                                    ; $4c50: $02
    ld [bc], a                                    ; $4c51: $02
    dec b                                         ; $4c52: $05
    dec b                                         ; $4c53: $05
    ld c, $06                                     ; $4c54: $0e $06
    dec c                                         ; $4c56: $0d
    dec c                                         ; $4c57: $0d
    ld e, $0e                                     ; $4c58: $1e $0e
    dec sp                                        ; $4c5a: $3b
    dec de                                        ; $4c5b: $1b
    ccf                                           ; $4c5c: $3f
    rra                                           ; $4c5d: $1f
    ld a, a                                       ; $4c5e: $7f
    ccf                                           ; $4c5f: $3f
    rst $38                                       ; $4c60: $ff
    ld l, $ff                                     ; $4c61: $2e $ff
    ld e, e                                       ; $4c63: $5b
    rst $38                                       ; $4c64: $ff
    dec h                                         ; $4c65: $25
    rst $38                                       ; $4c66: $ff
    adc e                                         ; $4c67: $8b
    rst $38                                       ; $4c68: $ff
    ld [bc], a                                    ; $4c69: $02
    rst $38                                       ; $4c6a: $ff
    dec b                                         ; $4c6b: $05
    rst $38                                       ; $4c6c: $ff
    ld [bc], a                                    ; $4c6d: $02
    rst $38                                       ; $4c6e: $ff
    ld [$00fc], sp                                ; $4c6f: $08 $fc $00
    ldh a, [$08]                                  ; $4c72: $f0 $08
    ret nz                                        ; $4c74: $c0

    jr nz, jr_034_4c77                            ; $4c75: $20 $00

jr_034_4c77:
    ret nz                                        ; $4c77: $c0

    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    nop                                           ; $4c7b: $00
    nop                                           ; $4c7c: $00
    nop                                           ; $4c7d: $00
    nop                                           ; $4c7e: $00
    nop                                           ; $4c7f: $00
    nop                                           ; $4c80: $00
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    nop                                           ; $4c84: $00
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    nop                                           ; $4c87: $00
    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    nop                                           ; $4c8c: $00
    nop                                           ; $4c8d: $00
    nop                                           ; $4c8e: $00
    nop                                           ; $4c8f: $00
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00
    ld b, b                                       ; $4c92: $40
    ld b, b                                       ; $4c93: $40
    inc b                                         ; $4c94: $04
    inc b                                         ; $4c95: $04
    ld d, b                                       ; $4c96: $50
    ld d, b                                       ; $4c97: $50
    xor b                                         ; $4c98: $a8
    xor b                                         ; $4c99: $a8
    ldh a, [$f0]                                  ; $4c9a: $f0 $f0
    ld [$f0ea], a                                 ; $4c9c: $ea $ea $f0
    ldh a, [$ea]                                  ; $4c9f: $f0 $ea
    ld [$f5f5], a                                 ; $4ca1: $ea $f5 $f5
    sbc $de                                       ; $4ca4: $de $de
    db $fc                                        ; $4ca6: $fc
    ld hl, sp-$10                                 ; $4ca7: $f8 $f0
    ldh [$e0], a                                  ; $4ca9: $e0 $e0
    add b                                         ; $4cab: $80
    add b                                         ; $4cac: $80
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
    nop                                           ; $4cb8: $00
    nop                                           ; $4cb9: $00
    nop                                           ; $4cba: $00
    nop                                           ; $4cbb: $00
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    nop                                           ; $4cbf: $00
    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    nop                                           ; $4cc3: $00
    nop                                           ; $4cc4: $00
    nop                                           ; $4cc5: $00
    nop                                           ; $4cc6: $00
    nop                                           ; $4cc7: $00
    nop                                           ; $4cc8: $00
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    nop                                           ; $4ccc: $00
    nop                                           ; $4ccd: $00
    nop                                           ; $4cce: $00
    nop                                           ; $4ccf: $00
    nop                                           ; $4cd0: $00
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    nop                                           ; $4cd3: $00
    nop                                           ; $4cd4: $00
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    nop                                           ; $4cd7: $00
    nop                                           ; $4cd8: $00
    nop                                           ; $4cd9: $00
    nop                                           ; $4cda: $00
    nop                                           ; $4cdb: $00
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    nop                                           ; $4cde: $00
    nop                                           ; $4cdf: $00
    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    nop                                           ; $4ce3: $00
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    nop                                           ; $4ce6: $00
    nop                                           ; $4ce7: $00
    nop                                           ; $4ce8: $00
    nop                                           ; $4ce9: $00
    nop                                           ; $4cea: $00
    nop                                           ; $4ceb: $00
    nop                                           ; $4cec: $00
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    nop                                           ; $4cf3: $00
    nop                                           ; $4cf4: $00
    nop                                           ; $4cf5: $00
    ld [bc], a                                    ; $4cf6: $02
    ld [bc], a                                    ; $4cf7: $02
    rlca                                          ; $4cf8: $07
    rlca                                          ; $4cf9: $07
    rlca                                          ; $4cfa: $07
    rlca                                          ; $4cfb: $07
    rrca                                          ; $4cfc: $0f
    rrca                                          ; $4cfd: $0f
    ld a, a                                       ; $4cfe: $7f
    ld a, a                                       ; $4cff: $7f
    ld a, a                                       ; $4d00: $7f
    ld a, a                                       ; $4d01: $7f
    ccf                                           ; $4d02: $3f
    ccf                                           ; $4d03: $3f
    rra                                           ; $4d04: $1f
    rra                                           ; $4d05: $1f
    rra                                           ; $4d06: $1f
    rra                                           ; $4d07: $1f
    ccf                                           ; $4d08: $3f
    ccf                                           ; $4d09: $3f
    dec a                                         ; $4d0a: $3d
    dec a                                         ; $4d0b: $3d
    jr nc, jr_034_4d3e                            ; $4d0c: $30 $30

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
    ld bc, $0302                                  ; $4d25: $01 $02 $03
    nop                                           ; $4d28: $00
    inc bc                                        ; $4d29: $03
    inc b                                         ; $4d2a: $04
    rlca                                          ; $4d2b: $07
    ld [$080f], sp                                ; $4d2c: $08 $0f $08
    rrca                                          ; $4d2f: $0f
    ld de, $341f                                  ; $4d30: $11 $1f $34
    ccf                                           ; $4d33: $3f
    ld a, [hl+]                                   ; $4d34: $2a
    ccf                                           ; $4d35: $3f
    ld a, h                                       ; $4d36: $7c
    ld a, a                                       ; $4d37: $7f
    db $eb                                        ; $4d38: $eb
    rst $38                                       ; $4d39: $ff
    cp $fe                                        ; $4d3a: $fe $fe
    ld hl, sp-$08                                 ; $4d3c: $f8 $f8

jr_034_4d3e:
    ldh a, [$f0]                                  ; $4d3e: $f0 $f0
    ldh a, [$f0]                                  ; $4d40: $f0 $f0
    ldh [$e0], a                                  ; $4d42: $e0 $e0
    ret nz                                        ; $4d44: $c0

    ret nz                                        ; $4d45: $c0

    ret nz                                        ; $4d46: $c0

    ret nz                                        ; $4d47: $c0

    ldh [$e0], a                                  ; $4d48: $e0 $e0
    ldh [$e0], a                                  ; $4d4a: $e0 $e0
    ld h, b                                       ; $4d4c: $60
    ld h, b                                       ; $4d4d: $60
    nop                                           ; $4d4e: $00
    nop                                           ; $4d4f: $00
    ld [bc], a                                    ; $4d50: $02
    nop                                           ; $4d51: $00
    dec b                                         ; $4d52: $05
    nop                                           ; $4d53: $00
    ld b, $08                                     ; $4d54: $06 $08
    dec c                                         ; $4d56: $0d
    nop                                           ; $4d57: $00
    ld c, $10                                     ; $4d58: $0e $10
    dec de                                        ; $4d5a: $1b
    jr nz, jr_034_4d7c                            ; $4d5b: $20 $1f

    jr nz, @+$41                                  ; $4d5d: $20 $3f

    ld b, b                                       ; $4d5f: $40
    ld l, $d1                                     ; $4d60: $2e $d1
    ld e, e                                       ; $4d62: $5b
    and h                                         ; $4d63: $a4
    dec h                                         ; $4d64: $25
    jp c, $748b                                   ; $4d65: $da $8b $74

    ld [bc], a                                    ; $4d68: $02
    db $fd                                        ; $4d69: $fd
    dec b                                         ; $4d6a: $05
    ld a, [$fd02]                                 ; $4d6b: $fa $02 $fd
    ld [$00f7], sp                                ; $4d6e: $08 $f7 $00
    db $fc                                        ; $4d71: $fc
    ld [$20f8], sp                                ; $4d72: $08 $f8 $20
    ldh [$c0], a                                  ; $4d75: $e0 $c0
    ret nz                                        ; $4d77: $c0

    nop                                           ; $4d78: $00
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    nop                                           ; $4d7b: $00

jr_034_4d7c:
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
    ld b, b                                       ; $4d92: $40
    nop                                           ; $4d93: $00
    inc b                                         ; $4d94: $04
    nop                                           ; $4d95: $00
    ld d, b                                       ; $4d96: $50
    nop                                           ; $4d97: $00
    xor b                                         ; $4d98: $a8
    nop                                           ; $4d99: $00
    ldh a, [rP1]                                  ; $4d9a: $f0 $00
    ld [$f000], a                                 ; $4d9c: $ea $00 $f0
    nop                                           ; $4d9f: $00
    ld [$f500], a                                 ; $4da0: $ea $00 $f5
    nop                                           ; $4da3: $00
    sbc $00                                       ; $4da4: $de $00
    ld hl, sp+$04                                 ; $4da6: $f8 $04
    ldh [rNR10], a                                ; $4da8: $e0 $10
    add b                                         ; $4daa: $80
    ld h, b                                       ; $4dab: $60
    nop                                           ; $4dac: $00
    add b                                         ; $4dad: $80
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
    nop                                           ; $4dd8: $00
    nop                                           ; $4dd9: $00
    nop                                           ; $4dda: $00
    nop                                           ; $4ddb: $00
    nop                                           ; $4ddc: $00
    nop                                           ; $4ddd: $00
    nop                                           ; $4dde: $00
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
    ld bc, $0301                                  ; $4df4: $01 $01 $03
    inc bc                                        ; $4df7: $03
    inc bc                                        ; $4df8: $03
    inc bc                                        ; $4df9: $03
    rlca                                          ; $4dfa: $07
    rlca                                          ; $4dfb: $07
    ccf                                           ; $4dfc: $3f
    ccf                                           ; $4dfd: $3f
    ccf                                           ; $4dfe: $3f
    ccf                                           ; $4dff: $3f
    rra                                           ; $4e00: $1f
    rra                                           ; $4e01: $1f
    rrca                                          ; $4e02: $0f
    rrca                                          ; $4e03: $0f
    rrca                                          ; $4e04: $0f
    rrca                                          ; $4e05: $0f
    rra                                           ; $4e06: $1f
    rra                                           ; $4e07: $1f
    ld e, $1e                                     ; $4e08: $1e $1e
    jr jr_034_4e24                                ; $4e0a: $18 $18

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
    nop                                           ; $4e18: $00
    nop                                           ; $4e19: $00
    nop                                           ; $4e1a: $00
    nop                                           ; $4e1b: $00
    nop                                           ; $4e1c: $00
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    nop                                           ; $4e1f: $00
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    nop                                           ; $4e22: $00
    nop                                           ; $4e23: $00

jr_034_4e24:
    ld bc, $0301                                  ; $4e24: $01 $01 $03
    ld bc, $0303                                  ; $4e27: $01 $03 $03
    rlca                                          ; $4e2a: $07
    inc bc                                        ; $4e2b: $03
    rrca                                          ; $4e2c: $0f
    rlca                                          ; $4e2d: $07
    rrca                                          ; $4e2e: $0f
    rlca                                          ; $4e2f: $07
    rra                                           ; $4e30: $1f
    ld c, $3f                                     ; $4e31: $0e $3f
    dec bc                                        ; $4e33: $0b
    ccf                                           ; $4e34: $3f
    dec d                                         ; $4e35: $15
    rst $38                                       ; $4e36: $ff
    add e                                         ; $4e37: $83
    rst $38                                       ; $4e38: $ff
    sub h                                         ; $4e39: $94
    cp $c0                                        ; $4e3a: $fe $c0
    ld hl, sp-$08                                 ; $4e3c: $f8 $f8
    ld hl, sp-$08                                 ; $4e3e: $f8 $f8
    ldh a, [$f0]                                  ; $4e40: $f0 $f0
    ldh [$e0], a                                  ; $4e42: $e0 $e0
    ldh [$e0], a                                  ; $4e44: $e0 $e0
    ldh a, [$f0]                                  ; $4e46: $f0 $f0
    ldh a, [$f0]                                  ; $4e48: $f0 $f0
    jr nc, jr_034_4e7c                            ; $4e4a: $30 $30

    nop                                           ; $4e4c: $00
    nop                                           ; $4e4d: $00
    nop                                           ; $4e4e: $00
    nop                                           ; $4e4f: $00
    nop                                           ; $4e50: $00
    ld [bc], a                                    ; $4e51: $02
    nop                                           ; $4e52: $00
    dec b                                         ; $4e53: $05
    ld [$000e], sp                                ; $4e54: $08 $0e $00
    dec c                                         ; $4e57: $0d
    db $10                                        ; $4e58: $10
    ld e, $20                                     ; $4e59: $1e $20
    dec sp                                        ; $4e5b: $3b
    jr nz, jr_034_4e9d                            ; $4e5c: $20 $3f

    ld b, b                                       ; $4e5e: $40
    ld a, a                                       ; $4e5f: $7f
    pop de                                        ; $4e60: $d1
    rst $38                                       ; $4e61: $ff
    and h                                         ; $4e62: $a4
    rst $38                                       ; $4e63: $ff
    jp c, $74ff                                   ; $4e64: $da $ff $74

    rst $38                                       ; $4e67: $ff
    db $fd                                        ; $4e68: $fd
    rst $38                                       ; $4e69: $ff
    ld a, [$fdff]                                 ; $4e6a: $fa $ff $fd
    rst $38                                       ; $4e6d: $ff
    rst $30                                       ; $4e6e: $f7
    rst $38                                       ; $4e6f: $ff
    db $fc                                        ; $4e70: $fc
    db $fc                                        ; $4e71: $fc
    ld hl, sp-$10                                 ; $4e72: $f8 $f0
    ldh [$c0], a                                  ; $4e74: $e0 $c0
    ret nz                                        ; $4e76: $c0

    nop                                           ; $4e77: $00
    nop                                           ; $4e78: $00
    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    nop                                           ; $4e7b: $00

jr_034_4e7c:
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
    ld b, b                                       ; $4e93: $40
    nop                                           ; $4e94: $00
    inc b                                         ; $4e95: $04
    nop                                           ; $4e96: $00
    ld d, b                                       ; $4e97: $50
    nop                                           ; $4e98: $00
    xor b                                         ; $4e99: $a8
    nop                                           ; $4e9a: $00
    ldh a, [rP1]                                  ; $4e9b: $f0 $00

jr_034_4e9d:
    ld [$f000], a                                 ; $4e9d: $ea $00 $f0
    nop                                           ; $4ea0: $00
    ld [$f500], a                                 ; $4ea1: $ea $00 $f5
    nop                                           ; $4ea4: $00
    sbc $04                                       ; $4ea5: $de $04
    db $fc                                        ; $4ea7: $fc
    db $10                                        ; $4ea8: $10
    ldh a, [$60]                                  ; $4ea9: $f0 $60
    ldh [$80], a                                  ; $4eab: $e0 $80
    add b                                         ; $4ead: $80
    nop                                           ; $4eae: $00
    nop                                           ; $4eaf: $00
    nop                                           ; $4eb0: $00
    nop                                           ; $4eb1: $00
    nop                                           ; $4eb2: $00
    nop                                           ; $4eb3: $00
    nop                                           ; $4eb4: $00
    nop                                           ; $4eb5: $00
    nop                                           ; $4eb6: $00
    nop                                           ; $4eb7: $00
    nop                                           ; $4eb8: $00
    nop                                           ; $4eb9: $00
    nop                                           ; $4eba: $00
    nop                                           ; $4ebb: $00
    nop                                           ; $4ebc: $00
    nop                                           ; $4ebd: $00
    nop                                           ; $4ebe: $00
    nop                                           ; $4ebf: $00
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    nop                                           ; $4ec4: $00
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    nop                                           ; $4eca: $00
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    nop                                           ; $4ecd: $00
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    ld b, b                                       ; $4ed2: $40
    ld d, d                                       ; $4ed3: $52
    stop                                          ; $4ed4: $10 $00
    db $10                                        ; $4ed6: $10
    jr z, jr_034_4f55                             ; $4ed7: $28 $7c

    add d                                         ; $4ed9: $82
    db $10                                        ; $4eda: $10
    jr z, jr_034_4eef                             ; $4edb: $28 $12

    nop                                           ; $4edd: $00
    nop                                           ; $4ede: $00
    db $10                                        ; $4edf: $10
    db $10                                        ; $4ee0: $10
    db $10                                        ; $4ee1: $10
    ld [bc], a                                    ; $4ee2: $02
    ld [de], a                                    ; $4ee3: $12
    jr z, jr_034_4f1e                             ; $4ee4: $28 $38

    sub d                                         ; $4ee6: $92
    xor $28                                       ; $4ee7: $ee $28
    jr c, jr_034_4eeb                             ; $4ee9: $38 $00

jr_034_4eeb:
    db $10                                        ; $4eeb: $10
    ld d, b                                       ; $4eec: $50
    ld [de], a                                    ; $4eed: $12
    nop                                           ; $4eee: $00

jr_034_4eef:
    nop                                           ; $4eef: $00
    db $10                                        ; $4ef0: $10
    db $10                                        ; $4ef1: $10
    ld [bc], a                                    ; $4ef2: $02
    ld [de], a                                    ; $4ef3: $12
    jr z, jr_034_4f2e                             ; $4ef4: $28 $38

    sub d                                         ; $4ef6: $92
    xor $28                                       ; $4ef7: $ee $28
    jr c, jr_034_4efb                             ; $4ef9: $38 $00

jr_034_4efb:
    db $10                                        ; $4efb: $10
    ld d, b                                       ; $4efc: $50
    ld [de], a                                    ; $4efd: $12
    nop                                           ; $4efe: $00
    nop                                           ; $4eff: $00
    nop                                           ; $4f00: $00
    nop                                           ; $4f01: $00
    ld c, b                                       ; $4f02: $48
    ld [$0808], sp                                ; $4f03: $08 $08 $08
    ld [hl], $3e                                  ; $4f06: $36 $3e
    ld [$0808], sp                                ; $4f08: $08 $08 $08
    ld [$4202], sp                                ; $4f0b: $08 $02 $42
    nop                                           ; $4f0e: $00
    nop                                           ; $4f0f: $00
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    ld c, b                                       ; $4f12: $48
    ld [$0808], sp                                ; $4f13: $08 $08 $08
    ld [hl], $3e                                  ; $4f16: $36 $3e
    ld [$0808], sp                                ; $4f18: $08 $08 $08
    ld [$4202], sp                                ; $4f1b: $08 $02 $42

jr_034_4f1e:
    nop                                           ; $4f1e: $00
    nop                                           ; $4f1f: $00
    nop                                           ; $4f20: $00
    nop                                           ; $4f21: $00
    ld [bc], a                                    ; $4f22: $02
    ld b, b                                       ; $4f23: $40
    nop                                           ; $4f24: $00
    nop                                           ; $4f25: $00
    nop                                           ; $4f26: $00
    nop                                           ; $4f27: $00
    ld [$0008], sp                                ; $4f28: $08 $08 $00
    nop                                           ; $4f2b: $00
    ld b, b                                       ; $4f2c: $40
    ld b, b                                       ; $4f2d: $40

jr_034_4f2e:
    nop                                           ; $4f2e: $00
    nop                                           ; $4f2f: $00
    nop                                           ; $4f30: $00
    nop                                           ; $4f31: $00
    ld [bc], a                                    ; $4f32: $02
    ld b, b                                       ; $4f33: $40
    nop                                           ; $4f34: $00
    nop                                           ; $4f35: $00
    nop                                           ; $4f36: $00
    nop                                           ; $4f37: $00
    ld [$0008], sp                                ; $4f38: $08 $08 $00
    nop                                           ; $4f3b: $00
    ld b, b                                       ; $4f3c: $40
    ld b, b                                       ; $4f3d: $40
    nop                                           ; $4f3e: $00
    nop                                           ; $4f3f: $00
    db $10                                        ; $4f40: $10
    db $10                                        ; $4f41: $10
    ld [bc], a                                    ; $4f42: $02
    ld [de], a                                    ; $4f43: $12
    jr z, jr_034_4f7e                             ; $4f44: $28 $38

    sub d                                         ; $4f46: $92
    xor $28                                       ; $4f47: $ee $28
    jr c, jr_034_4f4b                             ; $4f49: $38 $00

jr_034_4f4b:
    db $10                                        ; $4f4b: $10
    ld d, b                                       ; $4f4c: $50
    ld [de], a                                    ; $4f4d: $12
    nop                                           ; $4f4e: $00
    nop                                           ; $4f4f: $00
    db $10                                        ; $4f50: $10
    ld [$0000], sp                                ; $4f51: $08 $00 $00
    db $10                                        ; $4f54: $10

jr_034_4f55:
    db $10                                        ; $4f55: $10
    ld [bc], a                                    ; $4f56: $02
    nop                                           ; $4f57: $00
    db $10                                        ; $4f58: $10
    jr jr_034_4f5f                                ; $4f59: $18 $04

    nop                                           ; $4f5b: $00
    db $10                                        ; $4f5c: $10
    jr nz, jr_034_4f65                            ; $4f5d: $20 $06

jr_034_4f5f:
    nop                                           ; $4f5f: $00
    add b                                         ; $4f60: $80
    db $10                                        ; $4f61: $10
    ld [$0000], sp                                ; $4f62: $08 $00 $00

jr_034_4f65:
    db $10                                        ; $4f65: $10
    db $10                                        ; $4f66: $10
    ld [bc], a                                    ; $4f67: $02
    nop                                           ; $4f68: $00
    add b                                         ; $4f69: $80
    db $10                                        ; $4f6a: $10
    ld [$0000], sp                                ; $4f6b: $08 $00 $00
    jr nz, jr_034_4f78                            ; $4f6e: $20 $08

    ld [bc], a                                    ; $4f70: $02
    nop                                           ; $4f71: $00
    db $10                                        ; $4f72: $10
    db $10                                        ; $4f73: $10
    inc b                                         ; $4f74: $04
    nop                                           ; $4f75: $00
    jr nz, jr_034_4f88                            ; $4f76: $20 $10

jr_034_4f78:
    ld b, $00                                     ; $4f78: $06 $00
    db $10                                        ; $4f7a: $10
    jr jr_034_4f85                                ; $4f7b: $18 $08

    nop                                           ; $4f7d: $00

jr_034_4f7e:
    jr nz, jr_034_4f98                            ; $4f7e: $20 $18

    ld a, [bc]                                    ; $4f80: $0a
    nop                                           ; $4f81: $00
    db $10                                        ; $4f82: $10
    jr nz, jr_034_4f91                            ; $4f83: $20 $0c

jr_034_4f85:
    nop                                           ; $4f85: $00
    jr nz, jr_034_4fa8                            ; $4f86: $20 $20

jr_034_4f88:
    ld c, $00                                     ; $4f88: $0e $00
    add b                                         ; $4f8a: $80
    db $10                                        ; $4f8b: $10
    ld [$0000], sp                                ; $4f8c: $08 $00 $00
    db $10                                        ; $4f8f: $10
    db $10                                        ; $4f90: $10

jr_034_4f91:
    ld [bc], a                                    ; $4f91: $02
    nop                                           ; $4f92: $00
    db $10                                        ; $4f93: $10
    jr jr_034_4f9a                                ; $4f94: $18 $04

    nop                                           ; $4f96: $00
    db $10                                        ; $4f97: $10

jr_034_4f98:
    jr nz, jr_034_4fa0                            ; $4f98: $20 $06

jr_034_4f9a:
    nop                                           ; $4f9a: $00
    add b                                         ; $4f9b: $80
    ret nz                                        ; $4f9c: $c0

    ld bc, $00df                                  ; $4f9d: $01 $df $00

jr_034_4fa0:
    ld b, b                                       ; $4fa0: $40
    ld a, l                                       ; $4fa1: $7d
    sbc a                                         ; $4fa2: $9f
    ld [bc], a                                    ; $4fa3: $02
    ret nz                                        ; $4fa4: $c0

    ld bc, $7fff                                  ; $4fa5: $01 $ff $7f

jr_034_4fa8:
    db $10                                        ; $4fa8: $10
    ld b, e                                       ; $4fa9: $43
    ld l, d                                       ; $4faa: $6a
    ld a, [hl+]                                   ; $4fab: $2a
    ret nz                                        ; $4fac: $c0

    ld bc, $7fff                                  ; $4fad: $01 $ff $7f
    adc a                                         ; $4fb0: $8f
    dec h                                         ; $4fb1: $25
    rra                                           ; $4fb2: $1f
    nop                                           ; $4fb3: $00

Call_034_4fb4:
    xor a                                         ; $4fb4: $af
    ldh [rVBK], a                                 ; $4fb5: $e0 $4f
    ld hl, $4890                                  ; $4fb7: $21 $90 $48
    ld de, $8100                                  ; $4fba: $11 $00 $81
    ld c, $0c                                     ; $4fbd: $0e $0c
    call Call_000_0468                            ; $4fbf: $cd $68 $04
    ld hl, $4fac                                  ; $4fc2: $21 $ac $4f
    ld de, $0a02                                  ; $4fc5: $11 $02 $0a
    call Call_000_056c                            ; $4fc8: $cd $6c $05
    ret                                           ; $4fcb: $c9


Call_034_4fcc:
    xor a                                         ; $4fcc: $af
    ldh [rVBK], a                                 ; $4fcd: $e0 $4f
    ld hl, $4950                                  ; $4fcf: $21 $50 $49
    ld de, $8100                                  ; $4fd2: $11 $00 $81
    ld c, $60                                     ; $4fd5: $0e $60
    call Call_000_0468                            ; $4fd7: $cd $68 $04
    ld hl, $4f9c                                  ; $4fda: $21 $9c $4f
    ld de, $0a02                                  ; $4fdd: $11 $02 $0a
    call Call_000_056c                            ; $4fe0: $cd $6c $05
    ret                                           ; $4fe3: $c9


Call_034_4fe4:
    ld h, $0a                                     ; $4fe4: $26 $0a

jr_034_4fe6:
    push hl                                       ; $4fe6: $e5
    push bc                                       ; $4fe7: $c5
    ld hl, $c320                                  ; $4fe8: $21 $20 $c3
    ld a, [hl+]                                   ; $4feb: $2a
    ld d, [hl]                                    ; $4fec: $56
    ld e, a                                       ; $4fed: $5f
    ld hl, $1300                                  ; $4fee: $21 $00 $13
    call Call_000_08ac                            ; $4ff1: $cd $ac $08
    add hl, hl                                    ; $4ff4: $29
    add hl, hl                                    ; $4ff5: $29
    add hl, hl                                    ; $4ff6: $29
    push hl                                       ; $4ff7: $e5
    ld hl, $c322                                  ; $4ff8: $21 $22 $c3
    ld a, [hl+]                                   ; $4ffb: $2a
    ld d, [hl]                                    ; $4ffc: $56
    ld e, a                                       ; $4ffd: $5f
    ld hl, $1080                                  ; $4ffe: $21 $80 $10
    call Call_000_08ac                            ; $5001: $cd $ac $08
    add hl, hl                                    ; $5004: $29
    add hl, hl                                    ; $5005: $29
    add hl, hl                                    ; $5006: $29
    ld e, h                                       ; $5007: $5c
    pop hl                                        ; $5008: $e1
    ld d, h                                       ; $5009: $54
    ld hl, $4f50                                  ; $500a: $21 $50 $4f
    call Call_000_26ea                            ; $500d: $cd $ea $26
    call Call_000_2e3b                            ; $5010: $cd $3b $2e
    pop bc                                        ; $5013: $c1
    pop hl                                        ; $5014: $e1
    dec h                                         ; $5015: $25
    jr nz, jr_034_4fe6                            ; $5016: $20 $ce

    ret                                           ; $5018: $c9


Call_034_5019:
Jump_034_5019:
    xor a                                         ; $5019: $af
    ld hl, $c4b4                                  ; $501a: $21 $b4 $c4
    ld [hl+], a                                   ; $501d: $22
    ld [hl+], a                                   ; $501e: $22
    call Call_034_4fcc                            ; $501f: $cd $cc $4f
    ld bc, $0040                                  ; $5022: $01 $40 $00
    rst $18                                       ; $5025: $df
    ld [hl], $0a                                  ; $5026: $36 $0a
    xor a                                         ; $5028: $af
    ld bc, $1900                                  ; $5029: $01 $00 $19
    ld de, $1100                                  ; $502c: $11 $00 $11
    rst $18                                       ; $502f: $df
    jr c, @+$0c                                   ; $5030: $38 $0a

    rst $18                                       ; $5032: $df
    inc a                                         ; $5033: $3c
    ld a, [bc]                                    ; $5034: $0a
    ld c, $04                                     ; $5035: $0e $04
    call Call_000_25af                            ; $5037: $cd $af $25
    call Call_000_2625                            ; $503a: $cd $25 $26
    call Call_034_51b9                            ; $503d: $cd $b9 $51
    call Call_034_5396                            ; $5040: $cd $96 $53
    ld c, $08                                     ; $5043: $0e $08
    call Call_000_25a1                            ; $5045: $cd $a1 $25
    call Call_000_2625                            ; $5048: $cd $25 $26
    rst $20                                       ; $504b: $e7
    and b                                         ; $504c: $a0
    rrca                                          ; $504d: $0f
    call Call_034_46e6                            ; $504e: $cd $e6 $46
    ld b, $1c                                     ; $5051: $06 $1c
    ld c, $1a                                     ; $5053: $0e $1a
    ld d, $1c                                     ; $5055: $16 $1c
    ld e, $18                                     ; $5057: $1e $18
    ld h, $02                                     ; $5059: $26 $02
    ld l, $02                                     ; $505b: $2e $02
    rst $18                                       ; $505d: $df
    ld c, $0b                                     ; $505e: $0e $0b
    ld c, $04                                     ; $5060: $0e $04
    call Call_000_25af                            ; $5062: $cd $af $25
    push af                                       ; $5065: $f5
    ld a, $0a                                     ; $5066: $3e $0a
    rst $18                                       ; $5068: $df
    inc b                                         ; $5069: $04
    ld a, [bc]                                    ; $506a: $0a
    pop af                                        ; $506b: $f1
    rst $08                                       ; $506c: $cf
    sbc b                                         ; $506d: $98
    call Call_034_5396                            ; $506e: $cd $96 $53
    push af                                       ; $5071: $f5
    ld a, $06                                     ; $5072: $3e $06
    rst $18                                       ; $5074: $df
    inc b                                         ; $5075: $04
    ld a, [bc]                                    ; $5076: $0a
    pop af                                        ; $5077: $f1
    rst $08                                       ; $5078: $cf
    and h                                         ; $5079: $a4
    ld bc, $0210                                  ; $507a: $01 $10 $02
    call Call_034_4fe4                            ; $507d: $cd $e4 $4f
    ld bc, $0218                                  ; $5080: $01 $18 $02
    call Call_034_4fe4                            ; $5083: $cd $e4 $4f
    ld bc, $0220                                  ; $5086: $01 $20 $02
    call Call_034_4fe4                            ; $5089: $cd $e4 $4f
    ld bc, $0228                                  ; $508c: $01 $28 $02
    call Call_034_4fe4                            ; $508f: $cd $e4 $4f
    ld a, $01                                     ; $5092: $3e $01
    ld hl, $46df                                  ; $5094: $21 $df $46
    call Call_000_23e8                            ; $5097: $cd $e8 $23
    push af                                       ; $509a: $f5
    ld a, $3c                                     ; $509b: $3e $3c
    rst $18                                       ; $509d: $df
    inc b                                         ; $509e: $04
    ld a, [bc]                                    ; $509f: $0a
    pop af                                        ; $50a0: $f1
    ret                                           ; $50a1: $c9


Call_034_50a2:
    push bc                                       ; $50a2: $c5
    ld hl, $c320                                  ; $50a3: $21 $20 $c3
    ld a, [hl+]                                   ; $50a6: $2a
    ld b, [hl]                                    ; $50a7: $46
    ld c, a                                       ; $50a8: $4f
    ld hl, $1300                                  ; $50a9: $21 $00 $13
    call Call_000_1b52                            ; $50ac: $cd $52 $1b
    ld a, h                                       ; $50af: $7c
    inc a                                         ; $50b0: $3c
    inc a                                         ; $50b1: $3c
    inc a                                         ; $50b2: $3c
    inc a                                         ; $50b3: $3c
    cp $16                                        ; $50b4: $fe $16
    jp nc, Jump_034_50dd                          ; $50b6: $d2 $dd $50

    add hl, hl                                    ; $50b9: $29
    add hl, hl                                    ; $50ba: $29
    add hl, hl                                    ; $50bb: $29
    ld d, h                                       ; $50bc: $54
    ld hl, $c322                                  ; $50bd: $21 $22 $c3
    ld a, [hl+]                                   ; $50c0: $2a
    ld b, [hl]                                    ; $50c1: $46
    ld c, a                                       ; $50c2: $4f
    ld hl, $1080                                  ; $50c3: $21 $80 $10
    call Call_000_1b52                            ; $50c6: $cd $52 $1b
    ld a, h                                       ; $50c9: $7c
    inc a                                         ; $50ca: $3c
    inc a                                         ; $50cb: $3c
    cp $14                                        ; $50cc: $fe $14
    jp nc, Jump_034_50dd                          ; $50ce: $d2 $dd $50

    add hl, hl                                    ; $50d1: $29
    add hl, hl                                    ; $50d2: $29
    add hl, hl                                    ; $50d3: $29
    ld e, h                                       ; $50d4: $5c
    ld hl, $4f50                                  ; $50d5: $21 $50 $4f
    pop bc                                        ; $50d8: $c1
    call Call_000_26ea                            ; $50d9: $cd $ea $26
    ret                                           ; $50dc: $c9


Jump_034_50dd:
    pop bc                                        ; $50dd: $c1
    ret                                           ; $50de: $c9


Call_034_50df:
    ld h, $0c                                     ; $50df: $26 $0c

jr_034_50e1:
    push hl                                       ; $50e1: $e5
    push bc                                       ; $50e2: $c5
    ld hl, $c320                                  ; $50e3: $21 $20 $c3
    ld a, [hl+]                                   ; $50e6: $2a
    ld d, [hl]                                    ; $50e7: $56
    ld e, a                                       ; $50e8: $5f
    ld hl, $00b8                                  ; $50e9: $21 $b8 $00
    ld a, [$c3e2]                                 ; $50ec: $fa $e2 $c3
    add l                                         ; $50ef: $85
    ld l, a                                       ; $50f0: $6f
    jr nc, jr_034_50f4                            ; $50f1: $30 $01

    inc h                                         ; $50f3: $24

jr_034_50f4:
    add hl, hl                                    ; $50f4: $29
    add hl, hl                                    ; $50f5: $29
    add hl, hl                                    ; $50f6: $29
    add hl, hl                                    ; $50f7: $29
    add hl, hl                                    ; $50f8: $29
    call Call_000_08ac                            ; $50f9: $cd $ac $08
    add hl, hl                                    ; $50fc: $29
    add hl, hl                                    ; $50fd: $29
    add hl, hl                                    ; $50fe: $29
    push hl                                       ; $50ff: $e5
    ld hl, $c322                                  ; $5100: $21 $22 $c3
    ld a, [hl+]                                   ; $5103: $2a
    ld d, [hl]                                    ; $5104: $56
    ld e, a                                       ; $5105: $5f
    ld hl, $0080                                  ; $5106: $21 $80 $00
    ld a, [$c3e2]                                 ; $5109: $fa $e2 $c3
    add l                                         ; $510c: $85
    ld l, a                                       ; $510d: $6f
    jr nc, jr_034_5111                            ; $510e: $30 $01

    inc h                                         ; $5110: $24

jr_034_5111:
    add hl, hl                                    ; $5111: $29
    add hl, hl                                    ; $5112: $29
    add hl, hl                                    ; $5113: $29
    add hl, hl                                    ; $5114: $29
    add hl, hl                                    ; $5115: $29
    call Call_000_08ac                            ; $5116: $cd $ac $08
    add hl, hl                                    ; $5119: $29
    add hl, hl                                    ; $511a: $29
    add hl, hl                                    ; $511b: $29
    ld e, h                                       ; $511c: $5c
    pop hl                                        ; $511d: $e1
    ld d, h                                       ; $511e: $54
    ld hl, $4f61                                  ; $511f: $21 $61 $4f
    call Call_000_26ea                            ; $5122: $cd $ea $26
    call Call_000_2e3b                            ; $5125: $cd $3b $2e
    pop bc                                        ; $5128: $c1
    pop hl                                        ; $5129: $e1
    dec h                                         ; $512a: $25
    jr nz, jr_034_50e1                            ; $512b: $20 $b4

    ret                                           ; $512d: $c9


Call_034_512e:
    ld a, $00                                     ; $512e: $3e $00
    ld [$c3e2], a                                 ; $5130: $ea $e2 $c3

jr_034_5133:
    ld bc, $0210                                  ; $5133: $01 $10 $02
    call Call_034_50df                            ; $5136: $cd $df $50
    ld a, [$c3e2]                                 ; $5139: $fa $e2 $c3
    cp $28                                        ; $513c: $fe $28
    jr nc, jr_034_5169                            ; $513e: $30 $29

    add $02                                       ; $5140: $c6 $02
    ld [$c3e2], a                                 ; $5142: $ea $e2 $c3
    ld bc, $0214                                  ; $5145: $01 $14 $02
    call Call_034_50df                            ; $5148: $cd $df $50
    ld a, [$c3e2]                                 ; $514b: $fa $e2 $c3
    add $01                                       ; $514e: $c6 $01
    ld [$c3e2], a                                 ; $5150: $ea $e2 $c3
    ld bc, $0218                                  ; $5153: $01 $18 $02
    call Call_034_50df                            ; $5156: $cd $df $50
    ld a, [$c3e2]                                 ; $5159: $fa $e2 $c3
    add $02                                       ; $515c: $c6 $02
    ld [$c3e2], a                                 ; $515e: $ea $e2 $c3
    ld bc, $0214                                  ; $5161: $01 $14 $02
    call Call_034_50df                            ; $5164: $cd $df $50
    jr jr_034_5133                                ; $5167: $18 $ca

jr_034_5169:
    ret                                           ; $5169: $c9


Call_034_516a:
    ld h, $02                                     ; $516a: $26 $02

jr_034_516c:
    push hl                                       ; $516c: $e5
    push bc                                       ; $516d: $c5
    ld hl, $c320                                  ; $516e: $21 $20 $c3
    ld a, [hl+]                                   ; $5171: $2a
    ld d, [hl]                                    ; $5172: $56
    ld e, a                                       ; $5173: $5f
    ld hl, $00e0                                  ; $5174: $21 $e0 $00
    ld a, [$c3e1]                                 ; $5177: $fa $e1 $c3
    add l                                         ; $517a: $85
    ld l, a                                       ; $517b: $6f
    jr nc, jr_034_517f                            ; $517c: $30 $01

    inc h                                         ; $517e: $24

jr_034_517f:
    add hl, hl                                    ; $517f: $29
    add hl, hl                                    ; $5180: $29
    add hl, hl                                    ; $5181: $29
    add hl, hl                                    ; $5182: $29
    add hl, hl                                    ; $5183: $29
    call Call_000_08ac                            ; $5184: $cd $ac $08
    add hl, hl                                    ; $5187: $29
    add hl, hl                                    ; $5188: $29
    add hl, hl                                    ; $5189: $29
    push hl                                       ; $518a: $e5
    ld hl, $c322                                  ; $518b: $21 $22 $c3
    ld a, [hl+]                                   ; $518e: $2a
    ld d, [hl]                                    ; $518f: $56
    ld e, a                                       ; $5190: $5f
    ld hl, $0024                                  ; $5191: $21 $24 $00
    ld a, [$c3e2]                                 ; $5194: $fa $e2 $c3
    add l                                         ; $5197: $85
    ld l, a                                       ; $5198: $6f
    jr nc, jr_034_519c                            ; $5199: $30 $01

    inc h                                         ; $519b: $24

jr_034_519c:
    add hl, hl                                    ; $519c: $29
    add hl, hl                                    ; $519d: $29
    add hl, hl                                    ; $519e: $29
    add hl, hl                                    ; $519f: $29
    add hl, hl                                    ; $51a0: $29
    call Call_000_08ac                            ; $51a1: $cd $ac $08
    add hl, hl                                    ; $51a4: $29
    add hl, hl                                    ; $51a5: $29
    add hl, hl                                    ; $51a6: $29
    ld e, h                                       ; $51a7: $5c
    pop hl                                        ; $51a8: $e1
    ld d, h                                       ; $51a9: $54
    ld hl, $4f6a                                  ; $51aa: $21 $6a $4f
    call Call_000_26ea                            ; $51ad: $cd $ea $26
    call Call_000_2e3b                            ; $51b0: $cd $3b $2e
    pop bc                                        ; $51b3: $c1
    pop hl                                        ; $51b4: $e1
    dec h                                         ; $51b5: $25
    jr nz, jr_034_516c                            ; $51b6: $20 $b4

    ret                                           ; $51b8: $c9


Call_034_51b9:
    ld a, $00                                     ; $51b9: $3e $00
    ld [$c3e2], a                                 ; $51bb: $ea $e2 $c3
    ld [$c3e1], a                                 ; $51be: $ea $e1 $c3
    rst $08                                       ; $51c1: $cf
    sub [hl]                                      ; $51c2: $96

jr_034_51c3:
    ld a, [$c3e2]                                 ; $51c3: $fa $e2 $c3
    cp $5a                                        ; $51c6: $fe $5a
    jr nc, jr_034_520e                            ; $51c8: $30 $44

    ld a, [$c3e2]                                 ; $51ca: $fa $e2 $c3
    add $03                                       ; $51cd: $c6 $03
    ld [$c3e2], a                                 ; $51cf: $ea $e2 $c3
    ld a, [$c3e1]                                 ; $51d2: $fa $e1 $c3
    add $fe                                       ; $51d5: $c6 $fe
    ld [$c3e1], a                                 ; $51d7: $ea $e1 $c3
    ld bc, $0238                                  ; $51da: $01 $38 $02
    call Call_034_516a                            ; $51dd: $cd $6a $51
    ld a, [$c3e1]                                 ; $51e0: $fa $e1 $c3
    add $fe                                       ; $51e3: $c6 $fe
    ld [$c3e1], a                                 ; $51e5: $ea $e1 $c3
    ld a, [$c3e2]                                 ; $51e8: $fa $e2 $c3
    add $03                                       ; $51eb: $c6 $03
    ld [$c3e2], a                                 ; $51ed: $ea $e2 $c3
    ld bc, $0248                                  ; $51f0: $01 $48 $02
    call Call_034_516a                            ; $51f3: $cd $6a $51
    ld a, [$c3e1]                                 ; $51f6: $fa $e1 $c3
    add $fe                                       ; $51f9: $c6 $fe
    ld [$c3e1], a                                 ; $51fb: $ea $e1 $c3
    ld a, [$c3e2]                                 ; $51fe: $fa $e2 $c3
    add $03                                       ; $5201: $c6 $03
    ld [$c3e2], a                                 ; $5203: $ea $e2 $c3
    ld bc, $0258                                  ; $5206: $01 $58 $02
    call Call_034_516a                            ; $5209: $cd $6a $51
    jr jr_034_51c3                                ; $520c: $18 $b5

jr_034_520e:
    rst $08                                       ; $520e: $cf
    sub a                                         ; $520f: $97
    push af                                       ; $5210: $f5
    ld a, $0a                                     ; $5211: $3e $0a
    rst $18                                       ; $5213: $df
    inc b                                         ; $5214: $04
    ld a, [bc]                                    ; $5215: $0a
    pop af                                        ; $5216: $f1
    ret                                           ; $5217: $c9


Jump_034_5218:
    rst $20                                       ; $5218: $e7
    ld h, b                                       ; $5219: $60
    ld de, $a0ef                                  ; $521a: $11 $ef $a0
    rrca                                          ; $521d: $0f
    ld c, $08                                     ; $521e: $0e $08
    call Call_000_25af                            ; $5220: $cd $af $25
    call Call_000_2625                            ; $5223: $cd $25 $26
    push af                                       ; $5226: $f5
    ld a, $3c                                     ; $5227: $3e $3c
    rst $18                                       ; $5229: $df
    inc b                                         ; $522a: $04
    ld a, [bc]                                    ; $522b: $0a
    pop af                                        ; $522c: $f1
    call Call_034_483b                            ; $522d: $cd $3b $48
    ret                                           ; $5230: $c9


    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    nop                                           ; $5233: $00
    nop                                           ; $5234: $00
    nop                                           ; $5235: $00
    nop                                           ; $5236: $00
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00
    nop                                           ; $5239: $00
    nop                                           ; $523a: $00
    nop                                           ; $523b: $00
    nop                                           ; $523c: $00
    nop                                           ; $523d: $00
    nop                                           ; $523e: $00
    nop                                           ; $523f: $00
    xor b                                         ; $5240: $a8
    stop                                          ; $5241: $10 $00
    nop                                           ; $5243: $00
    xor l                                         ; $5244: $ad
    dec [hl]                                      ; $5245: $35
    sub h                                         ; $5246: $94
    ld c, [hl]                                    ; $5247: $4e
    xor b                                         ; $5248: $a8
    stop                                          ; $5249: $10 $00
    nop                                           ; $524b: $00
    xor l                                         ; $524c: $ad
    dec [hl]                                      ; $524d: $35
    sub h                                         ; $524e: $94
    ld c, [hl]                                    ; $524f: $4e
    ret nz                                        ; $5250: $c0

    ld a, [hl]                                    ; $5251: $7e
    nop                                           ; $5252: $00
    jr jr_034_52b5                                ; $5253: $18 $60

    ld [bc], a                                    ; $5255: $02
    rst $38                                       ; $5256: $ff
    ld a, a                                       ; $5257: $7f
    rra                                           ; $5258: $1f
    ld c, h                                       ; $5259: $4c
    nop                                           ; $525a: $00
    jr jr_034_52bd                                ; $525b: $18 $60

    ld [bc], a                                    ; $525d: $02
    rst $38                                       ; $525e: $ff
    ld a, a                                       ; $525f: $7f
    ccf                                           ; $5260: $3f
    ld [bc], a                                    ; $5261: $02
    nop                                           ; $5262: $00
    jr jr_034_52c5                                ; $5263: $18 $60

    ld [bc], a                                    ; $5265: $02
    rst $38                                       ; $5266: $ff
    ld a, a                                       ; $5267: $7f
    cp l                                          ; $5268: $bd
    inc bc                                        ; $5269: $03
    nop                                           ; $526a: $00
    jr @+$62                                      ; $526b: $18 $60

    ld [bc], a                                    ; $526d: $02
    rst $38                                       ; $526e: $ff
    ld a, a                                       ; $526f: $7f
    ret nz                                        ; $5270: $c0

    ld d, $00                                     ; $5271: $16 $00
    jr jr_034_52d5                                ; $5273: $18 $60

    ld [bc], a                                    ; $5275: $02
    rst $38                                       ; $5276: $ff
    ld a, a                                       ; $5277: $7f
    xor b                                         ; $5278: $a8
    stop                                          ; $5279: $10 $00
    nop                                           ; $527b: $00
    xor l                                         ; $527c: $ad
    dec [hl]                                      ; $527d: $35
    sub h                                         ; $527e: $94
    ld c, [hl]                                    ; $527f: $4e
    xor b                                         ; $5280: $a8
    stop                                          ; $5281: $10 $00
    nop                                           ; $5283: $00
    xor l                                         ; $5284: $ad
    dec [hl]                                      ; $5285: $35
    sub h                                         ; $5286: $94
    ld c, [hl]                                    ; $5287: $4e
    xor b                                         ; $5288: $a8
    stop                                          ; $5289: $10 $00
    nop                                           ; $528b: $00
    xor l                                         ; $528c: $ad
    dec [hl]                                      ; $528d: $35
    sub h                                         ; $528e: $94
    ld c, [hl]                                    ; $528f: $4e
    jp hl                                         ; $5290: $e9


    ld a, a                                       ; $5291: $7f
    xor h                                         ; $5292: $ac
    ld b, b                                       ; $5293: $40
    nop                                           ; $5294: $00
    inc bc                                        ; $5295: $03
    rst $38                                       ; $5296: $ff
    ld a, a                                       ; $5297: $7f
    ccf                                           ; $5298: $3f
    ld d, $17                                     ; $5299: $16 $17
    ld bc, $0300                                  ; $529b: $01 $00 $03
    ld l, d                                       ; $529e: $6a
    jr c, jr_034_52c0                             ; $529f: $38 $1f

    inc bc                                        ; $52a1: $03
    inc a                                         ; $52a2: $3c
    ld [bc], a                                    ; $52a3: $02
    nop                                           ; $52a4: $00
    inc bc                                        ; $52a5: $03
    di                                            ; $52a6: $f3
    inc bc                                        ; $52a7: $03
    rst $38                                       ; $52a8: $ff
    ld a, a                                       ; $52a9: $7f
    ld b, b                                       ; $52aa: $40
    ld bc, $0300                                  ; $52ab: $01 $00 $03
    di                                            ; $52ae: $f3
    inc bc                                        ; $52af: $03
    ld d, $01                                     ; $52b0: $16 $01
    nop                                           ; $52b2: $00
    ld [bc], a                                    ; $52b3: $02
    nop                                           ; $52b4: $00

jr_034_52b5:
    inc bc                                        ; $52b5: $03
    ld c, c                                       ; $52b6: $49
    inc [hl]                                      ; $52b7: $34
    xor b                                         ; $52b8: $a8
    stop                                          ; $52b9: $10 $00
    nop                                           ; $52bb: $00
    xor l                                         ; $52bc: $ad

jr_034_52bd:
    dec [hl]                                      ; $52bd: $35
    sub h                                         ; $52be: $94
    ld c, [hl]                                    ; $52bf: $4e

Call_034_52c0:
jr_034_52c0:
    ld a, $00                                     ; $52c0: $3e $00
    ld [$c3e0], a                                 ; $52c2: $ea $e0 $c3

jr_034_52c5:
    ld hl, $5290                                  ; $52c5: $21 $90 $52
    ld de, $0201                                  ; $52c8: $11 $01 $02
    call Call_000_056c                            ; $52cb: $cd $6c $05
    rst $08                                       ; $52ce: $cf
    sub l                                         ; $52cf: $95
    push af                                       ; $52d0: $f5
    ld a, $05                                     ; $52d1: $3e $05
    rst $18                                       ; $52d3: $df
    inc b                                         ; $52d4: $04

jr_034_52d5:
    ld a, [bc]                                    ; $52d5: $0a
    pop af                                        ; $52d6: $f1
    ld a, [$c3e0]                                 ; $52d7: $fa $e0 $c3
    cp $05                                        ; $52da: $fe $05
    jr z, jr_034_532d                             ; $52dc: $28 $4f

    ld hl, $5250                                  ; $52de: $21 $50 $52
    ld de, $0201                                  ; $52e1: $11 $01 $02
    call Call_000_056c                            ; $52e4: $cd $6c $05
    rst $08                                       ; $52e7: $cf
    sub l                                         ; $52e8: $95
    push af                                       ; $52e9: $f5
    ld a, $05                                     ; $52ea: $3e $05
    rst $18                                       ; $52ec: $df
    inc b                                         ; $52ed: $04
    ld a, [bc]                                    ; $52ee: $0a
    pop af                                        ; $52ef: $f1
    ld hl, $5258                                  ; $52f0: $21 $58 $52
    ld de, $0201                                  ; $52f3: $11 $01 $02
    call Call_000_056c                            ; $52f6: $cd $6c $05
    push af                                       ; $52f9: $f5
    ld a, $05                                     ; $52fa: $3e $05
    rst $18                                       ; $52fc: $df
    inc b                                         ; $52fd: $04
    ld a, [bc]                                    ; $52fe: $0a
    pop af                                        ; $52ff: $f1
    ld hl, $5260                                  ; $5300: $21 $60 $52
    ld de, $0201                                  ; $5303: $11 $01 $02
    call Call_000_056c                            ; $5306: $cd $6c $05
    rst $08                                       ; $5309: $cf
    sub l                                         ; $530a: $95
    push af                                       ; $530b: $f5
    ld a, $05                                     ; $530c: $3e $05
    rst $18                                       ; $530e: $df
    inc b                                         ; $530f: $04
    ld a, [bc]                                    ; $5310: $0a
    pop af                                        ; $5311: $f1
    ld hl, $5268                                  ; $5312: $21 $68 $52
    ld de, $0201                                  ; $5315: $11 $01 $02
    call Call_000_056c                            ; $5318: $cd $6c $05
    rst $08                                       ; $531b: $cf
    sub l                                         ; $531c: $95
    push af                                       ; $531d: $f5
    ld a, $05                                     ; $531e: $3e $05
    rst $18                                       ; $5320: $df
    inc b                                         ; $5321: $04
    ld a, [bc]                                    ; $5322: $0a
    pop af                                        ; $5323: $f1
    ld a, [$c3e0]                                 ; $5324: $fa $e0 $c3
    inc a                                         ; $5327: $3c
    ld [$c3e0], a                                 ; $5328: $ea $e0 $c3
    jr jr_034_52c5                                ; $532b: $18 $98

jr_034_532d:
    ret                                           ; $532d: $c9


Call_034_532e:
    rst $08                                       ; $532e: $cf
    sbc c                                         ; $532f: $99
    ld a, $00                                     ; $5330: $3e $00
    ld [$c3e0], a                                 ; $5332: $ea $e0 $c3

jr_034_5335:
    ld hl, $5290                                  ; $5335: $21 $90 $52
    ld de, $0201                                  ; $5338: $11 $01 $02
    call Call_000_056c                            ; $533b: $cd $6c $05
    push af                                       ; $533e: $f5
    ld a, $05                                     ; $533f: $3e $05
    rst $18                                       ; $5341: $df
    inc b                                         ; $5342: $04
    ld a, [bc]                                    ; $5343: $0a
    pop af                                        ; $5344: $f1
    ld a, [$c3e0]                                 ; $5345: $fa $e0 $c3
    cp $03                                        ; $5348: $fe $03
    jr z, jr_034_5395                             ; $534a: $28 $49

    ld hl, $5250                                  ; $534c: $21 $50 $52
    ld de, $0201                                  ; $534f: $11 $01 $02
    call Call_000_056c                            ; $5352: $cd $6c $05
    push af                                       ; $5355: $f5
    ld a, $05                                     ; $5356: $3e $05
    rst $18                                       ; $5358: $df
    inc b                                         ; $5359: $04
    ld a, [bc]                                    ; $535a: $0a
    pop af                                        ; $535b: $f1
    ld hl, $5258                                  ; $535c: $21 $58 $52
    ld de, $0201                                  ; $535f: $11 $01 $02
    call Call_000_056c                            ; $5362: $cd $6c $05
    push af                                       ; $5365: $f5
    ld a, $05                                     ; $5366: $3e $05
    rst $18                                       ; $5368: $df
    inc b                                         ; $5369: $04
    ld a, [bc]                                    ; $536a: $0a
    pop af                                        ; $536b: $f1
    ld hl, $5260                                  ; $536c: $21 $60 $52
    ld de, $0201                                  ; $536f: $11 $01 $02
    call Call_000_056c                            ; $5372: $cd $6c $05
    push af                                       ; $5375: $f5
    ld a, $05                                     ; $5376: $3e $05
    rst $18                                       ; $5378: $df
    inc b                                         ; $5379: $04
    ld a, [bc]                                    ; $537a: $0a
    pop af                                        ; $537b: $f1
    ld hl, $5268                                  ; $537c: $21 $68 $52
    ld de, $0201                                  ; $537f: $11 $01 $02
    call Call_000_056c                            ; $5382: $cd $6c $05
    push af                                       ; $5385: $f5
    ld a, $05                                     ; $5386: $3e $05
    rst $18                                       ; $5388: $df
    inc b                                         ; $5389: $04
    ld a, [bc]                                    ; $538a: $0a
    pop af                                        ; $538b: $f1
    ld a, [$c3e0]                                 ; $538c: $fa $e0 $c3
    inc a                                         ; $538f: $3c
    ld [$c3e0], a                                 ; $5390: $ea $e0 $c3
    jr jr_034_5335                                ; $5393: $18 $a0

jr_034_5395:
    ret                                           ; $5395: $c9


Call_034_5396:
    ld a, $00                                     ; $5396: $3e $00
    ld [$c3e2], a                                 ; $5398: $ea $e2 $c3
    ld [$c3e1], a                                 ; $539b: $ea $e1 $c3

jr_034_539e:
    ld a, [$c3e2]                                 ; $539e: $fa $e2 $c3
    cp $10                                        ; $53a1: $fe $10
    jr nc, jr_034_53ff                            ; $53a3: $30 $5a

    ld a, [$c3e2]                                 ; $53a5: $fa $e2 $c3
    add $03                                       ; $53a8: $c6 $03
    ld [$c3e2], a                                 ; $53aa: $ea $e2 $c3
    ld a, [$c3e1]                                 ; $53ad: $fa $e1 $c3
    add $fe                                       ; $53b0: $c6 $fe
    ld [$c3e1], a                                 ; $53b2: $ea $e1 $c3
    ld bc, $0368                                  ; $53b5: $01 $68 $03
    call Call_034_5400                            ; $53b8: $cd $00 $54
    ld a, [$c3e1]                                 ; $53bb: $fa $e1 $c3
    add $fe                                       ; $53be: $c6 $fe
    ld [$c3e1], a                                 ; $53c0: $ea $e1 $c3
    ld a, [$c3e2]                                 ; $53c3: $fa $e2 $c3
    add $03                                       ; $53c6: $c6 $03
    ld [$c3e2], a                                 ; $53c8: $ea $e2 $c3
    ld bc, $036a                                  ; $53cb: $01 $6a $03
    call Call_034_5400                            ; $53ce: $cd $00 $54
    ld a, [$c3e1]                                 ; $53d1: $fa $e1 $c3
    add $fe                                       ; $53d4: $c6 $fe
    ld [$c3e1], a                                 ; $53d6: $ea $e1 $c3
    ld a, [$c3e2]                                 ; $53d9: $fa $e2 $c3
    add $03                                       ; $53dc: $c6 $03
    ld [$c3e2], a                                 ; $53de: $ea $e2 $c3
    ld bc, $036c                                  ; $53e1: $01 $6c $03
    call Call_034_5400                            ; $53e4: $cd $00 $54
    ld a, [$c3e1]                                 ; $53e7: $fa $e1 $c3
    add $fe                                       ; $53ea: $c6 $fe
    ld [$c3e1], a                                 ; $53ec: $ea $e1 $c3
    ld a, [$c3e2]                                 ; $53ef: $fa $e2 $c3
    add $03                                       ; $53f2: $c6 $03
    ld [$c3e2], a                                 ; $53f4: $ea $e2 $c3
    ld bc, $036e                                  ; $53f7: $01 $6e $03
    call Call_034_5400                            ; $53fa: $cd $00 $54
    jr jr_034_539e                                ; $53fd: $18 $9f

jr_034_53ff:
    ret                                           ; $53ff: $c9


Call_034_5400:
    ld h, $05                                     ; $5400: $26 $05

jr_034_5402:
    push hl                                       ; $5402: $e5
    push bc                                       ; $5403: $c5
    ld hl, $c320                                  ; $5404: $21 $20 $c3
    ld a, [hl+]                                   ; $5407: $2a
    ld d, [hl]                                    ; $5408: $56
    ld e, a                                       ; $5409: $5f
    ld hl, $00a0                                  ; $540a: $21 $a0 $00
    ld a, $00                                     ; $540d: $3e $00
    add l                                         ; $540f: $85
    ld l, a                                       ; $5410: $6f
    jr nc, jr_034_5414                            ; $5411: $30 $01

    inc h                                         ; $5413: $24

jr_034_5414:
    add hl, hl                                    ; $5414: $29
    add hl, hl                                    ; $5415: $29
    add hl, hl                                    ; $5416: $29
    add hl, hl                                    ; $5417: $29
    add hl, hl                                    ; $5418: $29
    call Call_000_08ac                            ; $5419: $cd $ac $08
    add hl, hl                                    ; $541c: $29
    add hl, hl                                    ; $541d: $29
    add hl, hl                                    ; $541e: $29
    push hl                                       ; $541f: $e5
    ld hl, $c322                                  ; $5420: $21 $22 $c3
    ld a, [hl+]                                   ; $5423: $2a
    ld d, [hl]                                    ; $5424: $56
    ld e, a                                       ; $5425: $5f
    ld hl, $0090                                  ; $5426: $21 $90 $00
    ld a, $00                                     ; $5429: $3e $00
    add l                                         ; $542b: $85
    ld l, a                                       ; $542c: $6f
    jr nc, jr_034_5430                            ; $542d: $30 $01

    inc h                                         ; $542f: $24

jr_034_5430:
    add hl, hl                                    ; $5430: $29
    add hl, hl                                    ; $5431: $29
    add hl, hl                                    ; $5432: $29
    add hl, hl                                    ; $5433: $29
    add hl, hl                                    ; $5434: $29
    call Call_000_08ac                            ; $5435: $cd $ac $08
    add hl, hl                                    ; $5438: $29
    add hl, hl                                    ; $5439: $29
    add hl, hl                                    ; $543a: $29
    ld e, h                                       ; $543b: $5c
    pop hl                                        ; $543c: $e1
    ld d, h                                       ; $543d: $54
    ld hl, $4f8b                                  ; $543e: $21 $8b $4f
    call Call_000_26ea                            ; $5441: $cd $ea $26
    call Call_000_2e3b                            ; $5444: $cd $3b $2e
    pop bc                                        ; $5447: $c1
    pop hl                                        ; $5448: $e1
    dec h                                         ; $5449: $25
    jr nz, jr_034_5402                            ; $544a: $20 $b6

    ret                                           ; $544c: $c9


Call_034_544d:
    call Call_034_5512                            ; $544d: $cd $12 $55
    jr nz, jr_034_5455                            ; $5450: $20 $03

    ld a, $01                                     ; $5452: $3e $01
    ret                                           ; $5454: $c9


jr_034_5455:
    ld hl, $0c4f                                  ; $5455: $21 $4f $0c
    call Call_034_54c3                            ; $5458: $cd $c3 $54
    ld a, [$c298]                                 ; $545b: $fa $98 $c2
    rst $18                                       ; $545e: $df
    ld a, [bc]                                    ; $545f: $0a
    ld a, [bc]                                    ; $5460: $0a
    ld a, [$c298]                                 ; $5461: $fa $98 $c2
    ld b, a                                       ; $5464: $47
    ld a, $00                                     ; $5465: $3e $00
    rst $18                                       ; $5467: $df
    ld l, $0a                                     ; $5468: $2e $0a
    rst $18                                       ; $546a: $df
    ld [de], a                                    ; $546b: $12
    ld a, [bc]                                    ; $546c: $0a
    rst $18                                       ; $546d: $df
    inc c                                         ; $546e: $0c
    ld a, [bc]                                    ; $546f: $0a
    push af                                       ; $5470: $f5
    ld a, $05                                     ; $5471: $3e $05
    rst $18                                       ; $5473: $df
    inc b                                         ; $5474: $04
    ld a, [bc]                                    ; $5475: $0a
    pop af                                        ; $5476: $f1
    and a                                         ; $5477: $a7
    jp nz, Jump_034_54b7                          ; $5478: $c2 $b7 $54

    ld a, [$c298]                                 ; $547b: $fa $98 $c2
    ld b, a                                       ; $547e: $47
    ld a, $00                                     ; $547f: $3e $00
    rst $18                                       ; $5481: $df
    ld l, $0a                                     ; $5482: $2e $0a
    ld hl, $0c53                                  ; $5484: $21 $53 $0c
    call Call_034_54c3                            ; $5487: $cd $c3 $54
    ld a, [$c298]                                 ; $548a: $fa $98 $c2
    rst $18                                       ; $548d: $df
    ld [$fa0a], sp                                ; $548e: $08 $0a $fa
    sbc b                                         ; $5491: $98
    jp nz, Jump_000_1adf                          ; $5492: $c2 $df $1a

    ld a, [bc]                                    ; $5495: $0a
    call Call_034_54fa                            ; $5496: $cd $fa $54
    ld a, $00                                     ; $5499: $3e $00
    ld b, a                                       ; $549b: $47
    ld a, $05                                     ; $549c: $3e $05
    rst $18                                       ; $549e: $df
    ld [hl-], a                                   ; $549f: $32
    ld a, [bc]                                    ; $54a0: $0a
    ld a, $00                                     ; $54a1: $3e $00
    rst $18                                       ; $54a3: $df
    inc [hl]                                      ; $54a4: $34
    ld a, [bc]                                    ; $54a5: $0a
    push af                                       ; $54a6: $f5
    ld a, $1e                                     ; $54a7: $3e $1e
    rst $18                                       ; $54a9: $df
    inc b                                         ; $54aa: $04
    ld a, [bc]                                    ; $54ab: $0a
    pop af                                        ; $54ac: $f1
    ld a, $01                                     ; $54ad: $3e $01
    ld a, $05                                     ; $54af: $3e $05
    ld [$c441], a                                 ; $54b1: $ea $41 $c4
    ld a, $01                                     ; $54b4: $3e $01
    ret                                           ; $54b6: $c9


Jump_034_54b7:
    ld a, $00                                     ; $54b7: $3e $00
    ld b, $40                                     ; $54b9: $06 $40
    ld de, $0200                                  ; $54bb: $11 $00 $02
    rst $18                                       ; $54be: $df
    jr z, jr_034_54cb                             ; $54bf: $28 $0a

    xor a                                         ; $54c1: $af
    ret                                           ; $54c2: $c9


Call_034_54c3:
    rst $30                                       ; $54c3: $f7
    nop                                           ; $54c4: $00
    ld [de], a                                    ; $54c5: $12
    jp z, Jump_034_54cd                           ; $54c6: $ca $cd $54

    ld a, $00                                     ; $54c9: $3e $00

jr_034_54cb:
    jr jr_034_54ee                                ; $54cb: $18 $21

Jump_034_54cd:
    rst $30                                       ; $54cd: $f7
    jr nz, jr_034_54e2                            ; $54ce: $20 $12

    jp z, Jump_034_54d7                           ; $54d0: $ca $d7 $54

    ld a, $01                                     ; $54d3: $3e $01
    jr jr_034_54ee                                ; $54d5: $18 $17

Jump_034_54d7:
    rst $30                                       ; $54d7: $f7
    ld b, b                                       ; $54d8: $40
    ld [de], a                                    ; $54d9: $12
    jp z, Jump_034_54e1                           ; $54da: $ca $e1 $54

    ld a, $02                                     ; $54dd: $3e $02
    jr jr_034_54ee                                ; $54df: $18 $0d

Jump_034_54e1:
    rst $30                                       ; $54e1: $f7

jr_034_54e2:
    ld h, b                                       ; $54e2: $60
    ld [de], a                                    ; $54e3: $12
    jp z, Jump_034_54eb                           ; $54e4: $ca $eb $54

    ld a, $03                                     ; $54e7: $3e $03
    jr jr_034_54ee                                ; $54e9: $18 $03

Jump_034_54eb:
    ld a, $05                                     ; $54eb: $3e $05
    ret                                           ; $54ed: $c9


jr_034_54ee:
    ld [$c4bc], a                                 ; $54ee: $ea $bc $c4
    add l                                         ; $54f1: $85
    ld l, a                                       ; $54f2: $6f
    jr nc, jr_034_54f6                            ; $54f3: $30 $01

    inc h                                         ; $54f5: $24

jr_034_54f6:
    rst $18                                       ; $54f6: $df
    ld c, $0a                                     ; $54f7: $0e $0a
    ret                                           ; $54f9: $c9


Call_034_54fa:
    ld de, $0090                                  ; $54fa: $11 $90 $00
    ld a, [$c4bc]                                 ; $54fd: $fa $bc $c4
    ld h, $00                                     ; $5500: $26 $00
    ld l, a                                       ; $5502: $6f
    add hl, de                                    ; $5503: $19
    add hl, hl                                    ; $5504: $29
    add hl, hl                                    ; $5505: $29
    add hl, hl                                    ; $5506: $29
    add hl, hl                                    ; $5507: $29
    add hl, hl                                    ; $5508: $29
    ld e, l                                       ; $5509: $5d
    ld d, h                                       ; $550a: $54
    call Call_000_2d49                            ; $550b: $cd $49 $2d
    rst $28                                       ; $550e: $ef
    ret nz                                        ; $550f: $c0

    ld c, $c9                                     ; $5510: $0e $c9

Call_034_5512:
    rst $30                                       ; $5512: $f7
    nop                                           ; $5513: $00
    ld [de], a                                    ; $5514: $12
    jp nz, Jump_034_552d                          ; $5515: $c2 $2d $55

    rst $30                                       ; $5518: $f7
    jr nz, jr_034_552d                            ; $5519: $20 $12

    jp nz, Jump_034_552d                          ; $551b: $c2 $2d $55

    rst $30                                       ; $551e: $f7
    ld b, b                                       ; $551f: $40
    ld [de], a                                    ; $5520: $12
    jp nz, Jump_034_552d                          ; $5521: $c2 $2d $55

    rst $30                                       ; $5524: $f7
    ld h, b                                       ; $5525: $60
    ld [de], a                                    ; $5526: $12
    jp nz, Jump_034_552d                          ; $5527: $c2 $2d $55

    ld a, $00                                     ; $552a: $3e $00
    ret                                           ; $552c: $c9


Jump_034_552d:
jr_034_552d:
    ld a, $01                                     ; $552d: $3e $01
    ret                                           ; $552f: $c9


Call_034_5530:
    call Call_034_5512                            ; $5530: $cd $12 $55
    cp $01                                        ; $5533: $fe $01
    jr z, jr_034_553a                             ; $5535: $28 $03

    ld a, $00                                     ; $5537: $3e $00
    ret                                           ; $5539: $c9


jr_034_553a:
    ld a, $00                                     ; $553a: $3e $00
    ld b, a                                       ; $553c: $47
    ld a, [$c298]                                 ; $553d: $fa $98 $c2
    rst $18                                       ; $5540: $df
    ld l, $0a                                     ; $5541: $2e $0a
    ld hl, $0c46                                  ; $5543: $21 $46 $0c
    call Call_034_54c3                            ; $5546: $cd $c3 $54
    ld a, [$c299]                                 ; $5549: $fa $99 $c2
    rst $18                                       ; $554c: $df
    ld a, [bc]                                    ; $554d: $0a
    ld a, [bc]                                    ; $554e: $0a
    ld a, [$c298]                                 ; $554f: $fa $98 $c2
    ld b, a                                       ; $5552: $47
    ld a, $00                                     ; $5553: $3e $00
    rst $18                                       ; $5555: $df
    ld l, $0a                                     ; $5556: $2e $0a
    rst $18                                       ; $5558: $df
    ld [de], a                                    ; $5559: $12
    ld a, [bc]                                    ; $555a: $0a
    rst $18                                       ; $555b: $df
    inc c                                         ; $555c: $0c
    ld a, [bc]                                    ; $555d: $0a
    push af                                       ; $555e: $f5
    ld a, $05                                     ; $555f: $3e $05
    rst $18                                       ; $5561: $df
    inc b                                         ; $5562: $04
    ld a, [bc]                                    ; $5563: $0a
    pop af                                        ; $5564: $f1
    and a                                         ; $5565: $a7
    jr nz, jr_034_5595                            ; $5566: $20 $2d

    ld hl, $0c4a                                  ; $5568: $21 $4a $0c
    call Call_034_54c3                            ; $556b: $cd $c3 $54
    ld a, [$c299]                                 ; $556e: $fa $99 $c2
    rst $18                                       ; $5571: $df
    ld [$3e0a], sp                                ; $5572: $08 $0a $3e
    nop                                           ; $5575: $00
    ld b, $c0                                     ; $5576: $06 $c0
    rst $18                                       ; $5578: $df
    inc l                                         ; $5579: $2c
    ld a, [bc]                                    ; $557a: $0a
    call Call_034_54fa                            ; $557b: $cd $fa $54
    ld c, $08                                     ; $557e: $0e $08
    call Call_000_25a1                            ; $5580: $cd $a1 $25
    call Call_000_2625                            ; $5583: $cd $25 $26
    ld a, [$c298]                                 ; $5586: $fa $98 $c2
    ld bc, $3f00                                  ; $5589: $01 $00 $3f
    ld de, $3f00                                  ; $558c: $11 $00 $3f
    rst $18                                       ; $558f: $df
    jr nz, jr_034_559c                            ; $5590: $20 $0a

    ld a, $00                                     ; $5592: $3e $00
    ret                                           ; $5594: $c9


jr_034_5595:
    ld a, $01                                     ; $5595: $3e $01
    ret                                           ; $5597: $c9


Call_034_5598:
    rst $30                                       ; $5598: $f7
    ret nz                                        ; $5599: $c0

    jr jr_034_55c4                                ; $559a: $18 $28

jr_034_559c:
    ld [$40f7], sp                                ; $559c: $08 $f7 $40
    ld c, $28                                     ; $559f: $0e $28
    inc bc                                        ; $55a1: $03
    rst $20                                       ; $55a2: $e7
    add b                                         ; $55a3: $80
    ld a, [de]                                    ; $55a4: $1a
    ret                                           ; $55a5: $c9


    ld bc, $0d0a                                  ; $55a6: $01 $0a $0d
    ld c, $06                                     ; $55a9: $0e $06
    nop                                           ; $55ab: $00
    rlca                                          ; $55ac: $07
    ret nz                                        ; $55ad: $c0

    ld b, b                                       ; $55ae: $40
    ld [bc], a                                    ; $55af: $02
    ld bc, $100a                                  ; $55b0: $01 $0a $10
    ld a, [bc]                                    ; $55b3: $0a
    ld [bc], a                                    ; $55b4: $02
    nop                                           ; $55b5: $00

Jump_034_55b6:
    ldh a, [$96]                                  ; $55b6: $f0 $96
    push af                                       ; $55b8: $f5
    ld a, $06                                     ; $55b9: $3e $06
    ldh [$96], a                                  ; $55bb: $e0 $96
    ldh [rSVBK], a                                ; $55bd: $e0 $70
    ld a, [$d443]                                 ; $55bf: $fa $43 $d4
    cp $02                                        ; $55c2: $fe $02

jr_034_55c4:
    jr nc, jr_034_55f8                            ; $55c4: $30 $32

    add a                                         ; $55c6: $87
    add l                                         ; $55c7: $85
    ld l, a                                       ; $55c8: $6f
    jr nc, jr_034_55cc                            ; $55c9: $30 $01

    inc h                                         ; $55cb: $24

jr_034_55cc:
    ld a, [hl+]                                   ; $55cc: $2a
    ld h, [hl]                                    ; $55cd: $66
    ld l, a                                       ; $55ce: $6f

jr_034_55cf:
    ld a, [hl+]                                   ; $55cf: $2a
    ld e, a                                       ; $55d0: $5f
    ld a, [hl+]                                   ; $55d1: $2a
    ld d, a                                       ; $55d2: $57
    and e                                         ; $55d3: $a3
    cp $ff                                        ; $55d4: $fe $ff
    jr z, jr_034_55f8                             ; $55d6: $28 $20

    call Call_000_2d10                            ; $55d8: $cd $10 $2d
    jr z, jr_034_55f0                             ; $55db: $28 $13

    push hl                                       ; $55dd: $e5
    ld a, [hl+]                                   ; $55de: $2a
    ld e, a                                       ; $55df: $5f
    ld a, [hl+]                                   ; $55e0: $2a
    ld d, a                                       ; $55e1: $57
    push de                                       ; $55e2: $d5
    ld a, [hl+]                                   ; $55e3: $2a
    ld e, a                                       ; $55e4: $5f
    ld a, [hl+]                                   ; $55e5: $2a
    ld d, a                                       ; $55e6: $57
    ld a, [hl+]                                   ; $55e7: $2a
    ld c, a                                       ; $55e8: $4f
    ld a, [hl+]                                   ; $55e9: $2a
    ld b, a                                       ; $55ea: $47
    pop hl                                        ; $55eb: $e1
    call Call_034_55fe                            ; $55ec: $cd $fe $55
    pop hl                                        ; $55ef: $e1

jr_034_55f0:
    inc hl                                        ; $55f0: $23
    inc hl                                        ; $55f1: $23
    inc hl                                        ; $55f2: $23
    inc hl                                        ; $55f3: $23
    inc hl                                        ; $55f4: $23
    inc hl                                        ; $55f5: $23
    jr jr_034_55cf                                ; $55f6: $18 $d7

jr_034_55f8:
    pop af                                        ; $55f8: $f1
    ldh [$96], a                                  ; $55f9: $e0 $96
    ldh [rSVBK], a                                ; $55fb: $e0 $70
    ret                                           ; $55fd: $c9


Call_034_55fe:
    push hl                                       ; $55fe: $e5
    ld h, e                                       ; $55ff: $63
    ld l, $00                                     ; $5600: $2e $00
    ld e, d                                       ; $5602: $5a
    ld d, $d0                                     ; $5603: $16 $d0
    srl h                                         ; $5605: $cb $3c
    rr l                                          ; $5607: $cb $1d
    srl h                                         ; $5609: $cb $3c
    rr l                                          ; $560b: $cb $1d
    add hl, de                                    ; $560d: $19
    pop de                                        ; $560e: $d1
    push hl                                       ; $560f: $e5
    ld h, e                                       ; $5610: $63
    ld l, $00                                     ; $5611: $2e $00
    ld e, d                                       ; $5613: $5a
    ld d, $d0                                     ; $5614: $16 $d0
    srl h                                         ; $5616: $cb $3c
    rr l                                          ; $5618: $cb $1d
    srl h                                         ; $561a: $cb $3c
    rr l                                          ; $561c: $cb $1d
    add hl, de                                    ; $561e: $19
    pop de                                        ; $561f: $d1
    ldh a, [$96]                                  ; $5620: $f0 $96
    push af                                       ; $5622: $f5
    ld a, $03                                     ; $5623: $3e $03
    ldh [$96], a                                  ; $5625: $e0 $96
    ldh [rSVBK], a                                ; $5627: $e0 $70
    call Call_034_563b                            ; $5629: $cd $3b $56
    ld a, $02                                     ; $562c: $3e $02
    ldh [$96], a                                  ; $562e: $e0 $96
    ldh [rSVBK], a                                ; $5630: $e0 $70
    call Call_034_563b                            ; $5632: $cd $3b $56
    pop af                                        ; $5635: $f1
    ldh [$96], a                                  ; $5636: $e0 $96
    ldh [rSVBK], a                                ; $5638: $e0 $70
    ret                                           ; $563a: $c9


Call_034_563b:
    push af                                       ; $563b: $f5
    push bc                                       ; $563c: $c5
    push de                                       ; $563d: $d5
    push hl                                       ; $563e: $e5

jr_034_563f:
    push bc                                       ; $563f: $c5
    push hl                                       ; $5640: $e5
    push de                                       ; $5641: $d5

jr_034_5642:
    ld a, [hl+]                                   ; $5642: $2a
    ld [de], a                                    ; $5643: $12
    inc de                                        ; $5644: $13
    dec b                                         ; $5645: $05
    jr nz, jr_034_5642                            ; $5646: $20 $fa

    pop de                                        ; $5648: $d1
    ld a, $40                                     ; $5649: $3e $40
    add e                                         ; $564b: $83
    ld e, a                                       ; $564c: $5f
    jr nc, jr_034_5650                            ; $564d: $30 $01

    inc d                                         ; $564f: $14

jr_034_5650:
    pop hl                                        ; $5650: $e1
    ld a, $40                                     ; $5651: $3e $40
    add l                                         ; $5653: $85
    ld l, a                                       ; $5654: $6f
    jr nc, jr_034_5658                            ; $5655: $30 $01

    inc h                                         ; $5657: $24

jr_034_5658:
    pop bc                                        ; $5658: $c1
    dec c                                         ; $5659: $0d
    jr nz, jr_034_563f                            ; $565a: $20 $e3

    pop hl                                        ; $565c: $e1
    pop de                                        ; $565d: $d1
    pop bc                                        ; $565e: $c1
    pop af                                        ; $565f: $f1
    ret                                           ; $5660: $c9


    sub b                                         ; $5661: $90
    ld d, [hl]                                    ; $5662: $56
    or l                                          ; $5663: $b5
    ld d, [hl]                                    ; $5664: $56
    ld l, a                                       ; $5665: $6f
    ld d, [hl]                                    ; $5666: $56
    push hl                                       ; $5667: $e5
    ld d, [hl]                                    ; $5668: $56
    ld h, [hl]                                    ; $5669: $66
    ld d, a                                       ; $566a: $57
    rla                                           ; $566b: $17
    ld e, b                                       ; $566c: $58
    jr nz, jr_034_56c7                            ; $566d: $20 $58

    cp $7c                                        ; $566f: $fe $7c
    nop                                           ; $5671: $00
    rra                                           ; $5672: $1f
    nop                                           ; $5673: $00
    add hl, hl                                    ; $5674: $29
    nop                                           ; $5675: $00
    nop                                           ; $5676: $00
    nop                                           ; $5677: $00
    ld b, b                                       ; $5678: $40
    ld bc, $fe0d                                  ; $5679: $01 $0d $fe
    ld a, h                                       ; $567c: $7c
    nop                                           ; $567d: $00
    dec h                                         ; $567e: $25
    nop                                           ; $567f: $00
    add hl, de                                    ; $5680: $19
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    ld b, b                                       ; $5684: $40
    ld bc, $0002                                  ; $5685: $01 $02 $00
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    nop                                           ; $568a: $00
    nop                                           ; $568b: $00
    nop                                           ; $568c: $00
    nop                                           ; $568d: $00
    nop                                           ; $568e: $00
    rst $38                                       ; $568f: $ff
    ld bc, $00c0                                  ; $5690: $01 $c0 $00
    rla                                           ; $5693: $17
    nop                                           ; $5694: $00
    dec sp                                        ; $5695: $3b
    dec b                                         ; $5696: $05
    ret nz                                        ; $5697: $c0

    nop                                           ; $5698: $00
    dec e                                         ; $5699: $1d
    nop                                           ; $569a: $00
    add hl, hl                                    ; $569b: $29
    ld b, $c0                                     ; $569c: $06 $c0
    nop                                           ; $569e: $00
    dec e                                         ; $569f: $1d
    nop                                           ; $56a0: $00
    add hl, hl                                    ; $56a1: $29
    dec bc                                        ; $56a2: $0b
    ret nz                                        ; $56a3: $c0

    nop                                           ; $56a4: $00
    dec de                                        ; $56a5: $1b
    nop                                           ; $56a6: $00
    dec l                                         ; $56a7: $2d
    inc c                                         ; $56a8: $0c
    ret nz                                        ; $56a9: $c0

    nop                                           ; $56aa: $00
    dec de                                        ; $56ab: $1b
    nop                                           ; $56ac: $00
    dec l                                         ; $56ad: $2d
    dec c                                         ; $56ae: $0d
    ret nz                                        ; $56af: $c0

    nop                                           ; $56b0: $00
    dec de                                        ; $56b1: $1b
    nop                                           ; $56b2: $00
    dec l                                         ; $56b3: $2d
    rst $38                                       ; $56b4: $ff
    ld bc, $00ff                                  ; $56b5: $01 $ff $00
    nop                                           ; $56b8: $00
    nop                                           ; $56b9: $00
    nop                                           ; $56ba: $00
    ld [bc], a                                    ; $56bb: $02
    rlca                                          ; $56bc: $07
    ld [bc], a                                    ; $56bd: $02
    rst $38                                       ; $56be: $ff
    nop                                           ; $56bf: $00
    nop                                           ; $56c0: $00
    nop                                           ; $56c1: $00
    nop                                           ; $56c2: $00
    daa                                           ; $56c3: $27
    dec c                                         ; $56c4: $0d
    rst $38                                       ; $56c5: $ff
    rst $30                                       ; $56c6: $f7

jr_034_56c7:
    ld b, b                                       ; $56c7: $40
    add hl, de                                    ; $56c8: $19
    jp z, Jump_034_584b                           ; $56c9: $ca $4b $58

    ld hl, $14fc                                  ; $56cc: $21 $fc $14
    rst $18                                       ; $56cf: $df
    ld c, $0a                                     ; $56d0: $0e $0a
    ld a, $02                                     ; $56d2: $3e $02
    rst $18                                       ; $56d4: $df
    ld [$3e0a], sp                                ; $56d5: $08 $0a $3e
    ld [bc], a                                    ; $56d8: $02
    ld b, a                                       ; $56d9: $47
    ld a, $06                                     ; $56da: $3e $06
    rst $18                                       ; $56dc: $df
    ld [hl-], a                                   ; $56dd: $32
    ld a, [bc]                                    ; $56de: $0a
    ld a, $02                                     ; $56df: $3e $02
    rst $18                                       ; $56e1: $df
    inc [hl]                                      ; $56e2: $34
    ld a, [bc]                                    ; $56e3: $0a
    ret                                           ; $56e4: $c9


    ld [bc], a                                    ; $56e5: $02
    rst $38                                       ; $56e6: $ff
    nop                                           ; $56e7: $00
    nop                                           ; $56e8: $00
    add $56                                       ; $56e9: $c6 $56
    inc bc                                        ; $56eb: $03
    nop                                           ; $56ec: $00
    inc bc                                        ; $56ed: $03
    rst $38                                       ; $56ee: $ff
    nop                                           ; $56ef: $00
    nop                                           ; $56f0: $00
    ld e, h                                       ; $56f1: $5c
    inc c                                         ; $56f2: $0c
    inc bc                                        ; $56f3: $03
    nop                                           ; $56f4: $00
    rst $38                                       ; $56f5: $ff
    ret                                           ; $56f6: $c9


    ld a, [$c810]                                 ; $56f7: $fa $10 $c8
    cp $01                                        ; $56fa: $fe $01
    jr z, jr_034_5765                             ; $56fc: $28 $67

    rst $20                                       ; $56fe: $e7
    and b                                         ; $56ff: $a0
    ld de, $5821                                  ; $5700: $11 $21 $58
    inc c                                         ; $5703: $0c
    rst $18                                       ; $5704: $df
    ld c, $0a                                     ; $5705: $0e $0a
    ld a, $03                                     ; $5707: $3e $03
    ld bc, $2500                                  ; $5709: $01 $00 $25
    ld de, $1700                                  ; $570c: $11 $00 $17
    rst $18                                       ; $570f: $df
    jr nz, @+$0c                                  ; $5710: $20 $0a

    ld a, $00                                     ; $5712: $3e $00
    ld b, $01                                     ; $5714: $06 $01
    rst $18                                       ; $5716: $df
    ld a, [hl+]                                   ; $5717: $2a
    ld a, [bc]                                    ; $5718: $0a
    rst $08                                       ; $5719: $cf
    adc d                                         ; $571a: $8a
    ld a, $00                                     ; $571b: $3e $00
    ld de, $ff80                                  ; $571d: $11 $80 $ff
    rst $18                                       ; $5720: $df
    ld b, b                                       ; $5721: $40
    ld a, [bc]                                    ; $5722: $0a
    ld a, $00                                     ; $5723: $3e $00
    ld b, $40                                     ; $5725: $06 $40
    ld de, $0200                                  ; $5727: $11 $00 $02
    rst $18                                       ; $572a: $df
    jr z, jr_034_5737                             ; $572b: $28 $0a

    ld a, $00                                     ; $572d: $3e $00
    rst $18                                       ; $572f: $df
    ld e, $0a                                     ; $5730: $1e $0a
    ld a, $00                                     ; $5732: $3e $00
    ld b, $00                                     ; $5734: $06 $00
    rst $18                                       ; $5736: $df

jr_034_5737:
    ld a, [hl+]                                   ; $5737: $2a
    ld a, [bc]                                    ; $5738: $0a
    rst $08                                       ; $5739: $cf
    adc d                                         ; $573a: $8a
    ld a, $03                                     ; $573b: $3e $03
    ld de, $ff80                                  ; $573d: $11 $80 $ff
    rst $18                                       ; $5740: $df
    ld b, b                                       ; $5741: $40
    ld a, [bc]                                    ; $5742: $0a
    ld a, $03                                     ; $5743: $3e $03
    ld b, $40                                     ; $5745: $06 $40
    ld de, $0200                                  ; $5747: $11 $00 $02
    rst $18                                       ; $574a: $df
    jr z, @+$0c                                   ; $574b: $28 $0a

    ld a, $03                                     ; $574d: $3e $03
    rst $18                                       ; $574f: $df
    ld e, $0a                                     ; $5750: $1e $0a
    ld a, $03                                     ; $5752: $3e $03
    rst $18                                       ; $5754: $df
    ld [$210a], sp                                ; $5755: $08 $0a $21
    ld e, h                                       ; $5758: $5c
    inc c                                         ; $5759: $0c
    rst $18                                       ; $575a: $df
    ld c, $0a                                     ; $575b: $0e $0a
    ld a, $03                                     ; $575d: $3e $03
    rst $18                                       ; $575f: $df
    ld [$cd0a], sp                                ; $5760: $08 $0a $cd
    ld [de], a                                    ; $5763: $12
    ld a, [hl]                                    ; $5764: $7e

jr_034_5765:
    ret                                           ; $5765: $c9


    rrca                                          ; $5766: $0f
    rst $38                                       ; $5767: $ff
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    rst $30                                       ; $576a: $f7
    ld d, [hl]                                    ; $576b: $56
    ld b, $00                                     ; $576c: $06 $00
    rst $38                                       ; $576e: $ff
    ld hl, $14ea                                  ; $576f: $21 $ea $14
    rst $18                                       ; $5772: $df
    ld c, $0a                                     ; $5773: $0e $0a
    ld a, $02                                     ; $5775: $3e $02
    rst $18                                       ; $5777: $df
    ld [$3e0a], sp                                ; $5778: $08 $0a $3e
    ld [bc], a                                    ; $577b: $02
    ld b, $00                                     ; $577c: $06 $00
    rst $18                                       ; $577e: $df
    ld a, [hl-]                                   ; $577f: $3a
    ld a, [bc]                                    ; $5780: $0a
    rst $18                                       ; $5781: $df
    inc a                                         ; $5782: $3c
    ld a, [bc]                                    ; $5783: $0a
    ld a, $02                                     ; $5784: $3e $02
    ld b, $00                                     ; $5786: $06 $00
    rst $18                                       ; $5788: $df
    inc l                                         ; $5789: $2c
    ld a, [bc]                                    ; $578a: $0a
    push af                                       ; $578b: $f5
    ld a, $1e                                     ; $578c: $3e $1e
    rst $18                                       ; $578e: $df
    inc b                                         ; $578f: $04
    ld a, [bc]                                    ; $5790: $0a
    pop af                                        ; $5791: $f1
    ld a, $02                                     ; $5792: $3e $02
    ld b, $40                                     ; $5794: $06 $40
    rst $18                                       ; $5796: $df
    inc l                                         ; $5797: $2c
    ld a, [bc]                                    ; $5798: $0a
    push af                                       ; $5799: $f5
    ld a, $0a                                     ; $579a: $3e $0a
    rst $18                                       ; $579c: $df
    inc b                                         ; $579d: $04
    ld a, [bc]                                    ; $579e: $0a
    pop af                                        ; $579f: $f1
    ld a, $02                                     ; $57a0: $3e $02
    ld b, $80                                     ; $57a2: $06 $80
    rst $18                                       ; $57a4: $df
    inc l                                         ; $57a5: $2c
    ld a, [bc]                                    ; $57a6: $0a
    push af                                       ; $57a7: $f5
    ld a, $1e                                     ; $57a8: $3e $1e
    rst $18                                       ; $57aa: $df
    inc b                                         ; $57ab: $04
    ld a, [bc]                                    ; $57ac: $0a
    pop af                                        ; $57ad: $f1
    ld a, $02                                     ; $57ae: $3e $02
    ld b, $40                                     ; $57b0: $06 $40
    rst $18                                       ; $57b2: $df
    inc l                                         ; $57b3: $2c
    ld a, [bc]                                    ; $57b4: $0a
    ld a, $02                                     ; $57b5: $3e $02
    ld b, a                                       ; $57b7: $47
    ld a, $06                                     ; $57b8: $3e $06
    rst $18                                       ; $57ba: $df
    ld [hl-], a                                   ; $57bb: $32
    ld a, [bc]                                    ; $57bc: $0a
    ld a, $02                                     ; $57bd: $3e $02
    rst $18                                       ; $57bf: $df
    inc [hl]                                      ; $57c0: $34
    ld a, [bc]                                    ; $57c1: $0a
    ld a, $02                                     ; $57c2: $3e $02
    rst $18                                       ; $57c4: $df
    ld [$e70a], sp                                ; $57c5: $08 $0a $e7
    ld h, b                                       ; $57c8: $60
    add hl, de                                    ; $57c9: $19
    ld a, $02                                     ; $57ca: $3e $02
    ld b, a                                       ; $57cc: $47
    ld a, $06                                     ; $57cd: $3e $06
    rst $18                                       ; $57cf: $df
    ld [hl-], a                                   ; $57d0: $32
    ld a, [bc]                                    ; $57d1: $0a
    ld a, $02                                     ; $57d2: $3e $02
    rst $18                                       ; $57d4: $df
    inc [hl]                                      ; $57d5: $34
    ld a, [bc]                                    ; $57d6: $0a
    ld a, $00                                     ; $57d7: $3e $00
    ld b, $00                                     ; $57d9: $06 $00
    rst $18                                       ; $57db: $df
    ld a, [hl-]                                   ; $57dc: $3a
    ld a, [bc]                                    ; $57dd: $0a
    push af                                       ; $57de: $f5
    ld a, $28                                     ; $57df: $3e $28
    rst $18                                       ; $57e1: $df
    inc b                                         ; $57e2: $04
    ld a, [bc]                                    ; $57e3: $0a
    pop af                                        ; $57e4: $f1
    ld a, $02                                     ; $57e5: $3e $02
    ld b, $00                                     ; $57e7: $06 $00
    rst $18                                       ; $57e9: $df
    inc l                                         ; $57ea: $2c
    ld a, [bc]                                    ; $57eb: $0a
    push af                                       ; $57ec: $f5
    ld a, $1e                                     ; $57ed: $3e $1e
    rst $18                                       ; $57ef: $df
    inc b                                         ; $57f0: $04
    ld a, [bc]                                    ; $57f1: $0a
    pop af                                        ; $57f2: $f1
    ld a, $02                                     ; $57f3: $3e $02
    ld b, $c0                                     ; $57f5: $06 $c0
    rst $18                                       ; $57f7: $df
    inc l                                         ; $57f8: $2c
    ld a, [bc]                                    ; $57f9: $0a
    push af                                       ; $57fa: $f5
    ld a, $0a                                     ; $57fb: $3e $0a
    rst $18                                       ; $57fd: $df
    inc b                                         ; $57fe: $04
    ld a, [bc]                                    ; $57ff: $0a
    pop af                                        ; $5800: $f1
    ld a, $02                                     ; $5801: $3e $02
    ld b, $80                                     ; $5803: $06 $80
    rst $18                                       ; $5805: $df
    inc l                                         ; $5806: $2c
    ld a, [bc]                                    ; $5807: $0a
    push af                                       ; $5808: $f5
    ld a, $1e                                     ; $5809: $3e $1e
    rst $18                                       ; $580b: $df
    inc b                                         ; $580c: $04
    ld a, [bc]                                    ; $580d: $0a
    pop af                                        ; $580e: $f1
    ld a, $02                                     ; $580f: $3e $02
    ld b, $c0                                     ; $5811: $06 $c0
    rst $18                                       ; $5813: $df
    inc l                                         ; $5814: $2c
    ld a, [bc]                                    ; $5815: $0a
    ret                                           ; $5816: $c9


    ld bc, $cbff                                  ; $5817: $01 $ff $cb
    nop                                           ; $581a: $00
    ld l, a                                       ; $581b: $6f
    ld d, a                                       ; $581c: $57
    nop                                           ; $581d: $00
    nop                                           ; $581e: $00
    rst $38                                       ; $581f: $ff
    rst $30                                       ; $5820: $f7
    and b                                         ; $5821: $a0
    ld de, $0b20                                  ; $5822: $11 $20 $0b
    ld a, $03                                     ; $5825: $3e $03
    ld bc, $0100                                  ; $5827: $01 $00 $01
    ld de, $0100                                  ; $582a: $11 $00 $01
    rst $18                                       ; $582d: $df
    jr nz, @+$0c                                  ; $582e: $20 $0a

    ld a, [$c46a]                                 ; $5830: $fa $6a $c4
    cp $01                                        ; $5833: $fe $01
    jr z, jr_034_584a                             ; $5835: $28 $13

    xor a                                         ; $5837: $af
    ld hl, $c4b4                                  ; $5838: $21 $b4 $c4
    ld [hl+], a                                   ; $583b: $22
    ld [hl+], a                                   ; $583c: $22
    ld a, [$c46a]                                 ; $583d: $fa $6a $c4
    cp $05                                        ; $5840: $fe $05
    jp z, Jump_034_590d                           ; $5842: $ca $0d $59

    cp $06                                        ; $5845: $fe $06
    jp z, Jump_034_597d                           ; $5847: $ca $7d $59

jr_034_584a:
    ret                                           ; $584a: $c9


Jump_034_584b:
    ld hl, $14ec                                  ; $584b: $21 $ec $14
    rst $18                                       ; $584e: $df
    ld c, $0a                                     ; $584f: $0e $0a
    ld a, $02                                     ; $5851: $3e $02
    rst $18                                       ; $5853: $df
    ld a, [bc]                                    ; $5854: $0a
    ld a, [bc]                                    ; $5855: $0a
    push af                                       ; $5856: $f5
    ld a, $05                                     ; $5857: $3e $05
    rst $18                                       ; $5859: $df
    inc b                                         ; $585a: $04
    ld a, [bc]                                    ; $585b: $0a
    pop af                                        ; $585c: $f1
    rst $18                                       ; $585d: $df
    ld [de], a                                    ; $585e: $12
    ld a, [bc]                                    ; $585f: $0a
    rst $18                                       ; $5860: $df
    inc c                                         ; $5861: $0c
    ld a, [bc]                                    ; $5862: $0a
    push af                                       ; $5863: $f5
    ld a, $05                                     ; $5864: $3e $05
    rst $18                                       ; $5866: $df
    inc b                                         ; $5867: $04
    ld a, [bc]                                    ; $5868: $0a
    pop af                                        ; $5869: $f1
    and a                                         ; $586a: $a7
    jr z, jr_034_5873                             ; $586b: $28 $06

    ld a, $02                                     ; $586d: $3e $02
    rst $18                                       ; $586f: $df
    ld [$c90a], sp                                ; $5870: $08 $0a $c9

jr_034_5873:
    rst $18                                       ; $5873: $df
    db $10                                        ; $5874: $10
    ld a, [bc]                                    ; $5875: $0a
    ld a, $02                                     ; $5876: $3e $02
    rst $18                                       ; $5878: $df
    ld [$df0a], sp                                ; $5879: $08 $0a $df
    inc e                                         ; $587c: $1c
    db $10                                        ; $587d: $10
    rst $18                                       ; $587e: $df
    inc h                                         ; $587f: $24
    db $10                                        ; $5880: $10
    ld a, $07                                     ; $5881: $3e $07
    ld [$c82c], a                                 ; $5883: $ea $2c $c8
    ld a, $27                                     ; $5886: $3e $27
    ld b, a                                       ; $5888: $47
    ld a, $05                                     ; $5889: $3e $05
    ld c, a                                       ; $588b: $4f
    rst $18                                       ; $588c: $df
    ld c, [hl]                                    ; $588d: $4e
    ld a, [bc]                                    ; $588e: $0a
    ld a, $06                                     ; $588f: $3e $06
    ld [$c834], a                                 ; $5891: $ea $34 $c8
    ld hl, $58d6                                  ; $5894: $21 $d6 $58
    ld de, $c600                                  ; $5897: $11 $00 $c6
    ld c, $04                                     ; $589a: $0e $04
    call Call_000_03eb                            ; $589c: $cd $eb $03
    ld bc, $4e00                                  ; $589f: $01 $00 $4e
    rst $18                                       ; $58a2: $df
    ld e, $02                                     ; $58a3: $1e $02
    ld bc, $ff01                                  ; $58a5: $01 $01 $ff
    rst $18                                       ; $58a8: $df
    ld e, $02                                     ; $58a9: $1e $02
    ld hl, $0801                                  ; $58ab: $21 $01 $08
    rst $18                                       ; $58ae: $df
    db $10                                        ; $58af: $10
    db $10                                        ; $58b0: $10
    ld a, $00                                     ; $58b1: $3e $00
    rst $18                                       ; $58b3: $df
    ld e, $10                                     ; $58b4: $1e $10
    ld hl, $1f60                                  ; $58b6: $21 $60 $1f
    ld de, $2880                                  ; $58b9: $11 $80 $28
    rst $18                                       ; $58bc: $df
    jr nz, jr_034_58cf                            ; $58bd: $20 $10

    ld de, $c000                                  ; $58bf: $11 $00 $c0
    rst $18                                       ; $58c2: $df
    ld [hl+], a                                   ; $58c3: $22
    db $10                                        ; $58c4: $10
    ldh a, [$95]                                  ; $58c5: $f0 $95
    ld hl, $58e6                                  ; $58c7: $21 $e6 $58
    rst $18                                       ; $58ca: $df
    ld a, [de]                                    ; $58cb: $1a
    db $10                                        ; $58cc: $10
    ld a, $01                                     ; $58cd: $3e $01

jr_034_58cf:
    rst $18                                       ; $58cf: $df
    ld [de], a                                    ; $58d0: $12
    db $10                                        ; $58d1: $10
    rst $18                                       ; $58d2: $df
    jr nc, jr_034_58e5                            ; $58d3: $30 $10

    ret                                           ; $58d5: $c9


    nop                                           ; $58d6: $00
    ld h, b                                       ; $58d7: $60
    rra                                           ; $58d8: $1f
    nop                                           ; $58d9: $00
    add b                                         ; $58da: $80
    jr z, jr_034_58dd                             ; $58db: $28 $00

jr_034_58dd:
    cp b                                          ; $58dd: $b8
    inc c                                         ; $58de: $0c
    ld [bc], a                                    ; $58df: $02
    ld e, $00                                     ; $58e0: $1e $00
    ld bc, $0000                                  ; $58e2: $01 $00 $00

jr_034_58e5:
    nop                                           ; $58e5: $00
    ld b, $59                                     ; $58e6: $06 $59
    rlca                                          ; $58e8: $07
    ld e, c                                       ; $58e9: $59
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
    nop                                           ; $58fb: $00
    nop                                           ; $58fc: $00
    nop                                           ; $58fd: $00
    nop                                           ; $58fe: $00
    nop                                           ; $58ff: $00

Jump_034_5900:
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    ret                                           ; $5906: $c9


    ld a, $82                                     ; $5907: $3e $82
    rst $18                                       ; $5909: $df
    ld l, $10                                     ; $590a: $2e $10
    ret                                           ; $590c: $c9


Jump_034_590d:
    rst $20                                       ; $590d: $e7
    nop                                           ; $590e: $00
    inc e                                         ; $590f: $1c
    ld a, $00                                     ; $5910: $3e $00
    ld b, a                                       ; $5912: $47
    ld a, $02                                     ; $5913: $3e $02
    rst $18                                       ; $5915: $df
    jr nc, @+$0c                                  ; $5916: $30 $0a

    ld c, $04                                     ; $5918: $0e $04
    call Call_000_25af                            ; $591a: $cd $af $25
    call Call_000_2625                            ; $591d: $cd $25 $26
    ld hl, $14ef                                  ; $5920: $21 $ef $14
    rst $18                                       ; $5923: $df
    ld c, $0a                                     ; $5924: $0e $0a
    ld a, $02                                     ; $5926: $3e $02
    rst $18                                       ; $5928: $df
    ld [$3e0a], sp                                ; $5929: $08 $0a $3e
    nop                                           ; $592c: $00
    ld [$c3e0], a                                 ; $592d: $ea $e0 $c3
    ld [$c3e1], a                                 ; $5930: $ea $e1 $c3
    rst $18                                       ; $5933: $df
    inc e                                         ; $5934: $1c
    db $10                                        ; $5935: $10
    call Call_034_5d9e                            ; $5936: $cd $9e $5d
    ld a, $28                                     ; $5939: $3e $28
    ld [$c82c], a                                 ; $593b: $ea $2c $c8
    rst $18                                       ; $593e: $df
    inc h                                         ; $593f: $24
    db $10                                        ; $5940: $10
    ld a, $27                                     ; $5941: $3e $27
    ld b, a                                       ; $5943: $47
    ld a, $06                                     ; $5944: $3e $06
    ld c, a                                       ; $5946: $4f
    rst $18                                       ; $5947: $df
    ld c, [hl]                                    ; $5948: $4e
    ld a, [bc]                                    ; $5949: $0a
    ld a, $0b                                     ; $594a: $3e $0b
    ld [$c834], a                                 ; $594c: $ea $34 $c8
    ld bc, $8000                                  ; $594f: $01 $00 $80
    rst $18                                       ; $5952: $df
    ld e, $02                                     ; $5953: $1e $02
    ld bc, $ff01                                  ; $5955: $01 $01 $ff
    rst $18                                       ; $5958: $df
    ld e, $02                                     ; $5959: $1e $02
    ld hl, $0801                                  ; $595b: $21 $01 $08
    rst $18                                       ; $595e: $df
    db $10                                        ; $595f: $10
    db $10                                        ; $5960: $10
    ld a, $00                                     ; $5961: $3e $00
    rst $18                                       ; $5963: $df
    ld e, $10                                     ; $5964: $1e $10
    ld de, $c000                                  ; $5966: $11 $00 $c0
    rst $18                                       ; $5969: $df
    ld [hl+], a                                   ; $596a: $22
    db $10                                        ; $596b: $10
    ldh a, [$95]                                  ; $596c: $f0 $95
    ld hl, $5c61                                  ; $596e: $21 $61 $5c
    rst $18                                       ; $5971: $df
    ld a, [de]                                    ; $5972: $1a
    db $10                                        ; $5973: $10
    ld a, $0a                                     ; $5974: $3e $0a
    rst $18                                       ; $5976: $df
    ld [de], a                                    ; $5977: $12
    db $10                                        ; $5978: $10
    rst $18                                       ; $5979: $df
    jr nc, @+$12                                  ; $597a: $30 $10

    ret                                           ; $597c: $c9


Jump_034_597d:
    ld a, $00                                     ; $597d: $3e $00
    ld bc, $2100                                  ; $597f: $01 $00 $21
    ld de, $2900                                  ; $5982: $11 $00 $29
    rst $18                                       ; $5985: $df
    jr nz, @+$0c                                  ; $5986: $20 $0a

    ld a, $02                                     ; $5988: $3e $02
    ld bc, $1f00                                  ; $598a: $01 $00 $1f
    ld de, $2700                                  ; $598d: $11 $00 $27
    rst $18                                       ; $5990: $df
    jr nz, @+$0c                                  ; $5991: $20 $0a

    ld a, $00                                     ; $5993: $3e $00
    ld b, $80                                     ; $5995: $06 $80
    rst $18                                       ; $5997: $df
    inc l                                         ; $5998: $2c
    ld a, [bc]                                    ; $5999: $0a
    ld a, $02                                     ; $599a: $3e $02
    ld b, $00                                     ; $599c: $06 $00
    rst $18                                       ; $599e: $df
    inc l                                         ; $599f: $2c
    ld a, [bc]                                    ; $59a0: $0a
    call Call_034_5ae9                            ; $59a1: $cd $e9 $5a
    xor a                                         ; $59a4: $af
    ld hl, $c4b4                                  ; $59a5: $21 $b4 $c4
    ld [hl+], a                                   ; $59a8: $22
    ld [hl+], a                                   ; $59a9: $22
    ld c, $04                                     ; $59aa: $0e $04
    call Call_000_25af                            ; $59ac: $cd $af $25
    call Call_000_2625                            ; $59af: $cd $25 $26
    ld a, [$c3e1]                                 ; $59b2: $fa $e1 $c3
    cp $63                                        ; $59b5: $fe $63
    jr z, jr_034_59c3                             ; $59b7: $28 $0a

    cp $0a                                        ; $59b9: $fe $0a
    jr z, jr_034_59f9                             ; $59bb: $28 $3c

    cp $08                                        ; $59bd: $fe $08
    jr nc, @+$16                                  ; $59bf: $30 $14

    jr jr_034_59c4                                ; $59c1: $18 $01

jr_034_59c3:
    ret                                           ; $59c3: $c9


jr_034_59c4:
    ld hl, $14f4                                  ; $59c4: $21 $f4 $14
    rst $18                                       ; $59c7: $df
    ld c, $0a                                     ; $59c8: $0e $0a
    ld a, $02                                     ; $59ca: $3e $02
    rst $18                                       ; $59cc: $df
    ld [$3e0a], sp                                ; $59cd: $08 $0a $3e
    ld bc, $41ea                                  ; $59d0: $01 $ea $41
    call nz, Call_000_21c9                        ; $59d3: $c4 $c9 $21
    push af                                       ; $59d6: $f5
    inc d                                         ; $59d7: $14
    rst $18                                       ; $59d8: $df
    ld c, $0a                                     ; $59d9: $0e $0a
    ld a, $00                                     ; $59db: $3e $00
    ld b, a                                       ; $59dd: $47
    ld a, $02                                     ; $59de: $3e $02
    rst $18                                       ; $59e0: $df
    ld l, $0a                                     ; $59e1: $2e $0a
    ld a, $02                                     ; $59e3: $3e $02
    ld b, a                                       ; $59e5: $47
    ld a, $07                                     ; $59e6: $3e $07
    rst $18                                       ; $59e8: $df
    ld [hl-], a                                   ; $59e9: $32
    ld a, [bc]                                    ; $59ea: $0a
    ld a, $02                                     ; $59eb: $3e $02
    rst $18                                       ; $59ed: $df
    inc [hl]                                      ; $59ee: $34
    ld a, [bc]                                    ; $59ef: $0a
    ld a, $02                                     ; $59f0: $3e $02
    rst $18                                       ; $59f2: $df
    ld [$cd0a], sp                                ; $59f3: $08 $0a $cd
    sbc c                                         ; $59f6: $99
    ld e, d                                       ; $59f7: $5a
    ret                                           ; $59f8: $c9


jr_034_59f9:
    ld hl, $14f6                                  ; $59f9: $21 $f6 $14
    rst $18                                       ; $59fc: $df
    ld c, $0a                                     ; $59fd: $0e $0a
    ld a, $00                                     ; $59ff: $3e $00
    ld b, a                                       ; $5a01: $47
    ld a, $02                                     ; $5a02: $3e $02
    rst $18                                       ; $5a04: $df
    ld l, $0a                                     ; $5a05: $2e $0a
    rst $08                                       ; $5a07: $cf
    adc d                                         ; $5a08: $8a
    ld a, $02                                     ; $5a09: $3e $02
    ld de, $ff40                                  ; $5a0b: $11 $40 $ff
    rst $18                                       ; $5a0e: $df
    ld b, b                                       ; $5a0f: $40
    ld a, [bc]                                    ; $5a10: $0a
    ld a, $02                                     ; $5a11: $3e $02
    rst $18                                       ; $5a13: $df
    ld b, d                                       ; $5a14: $42
    ld a, [bc]                                    ; $5a15: $0a
    ld a, $02                                     ; $5a16: $3e $02
    rst $18                                       ; $5a18: $df
    ld a, [bc]                                    ; $5a19: $0a
    ld a, [bc]                                    ; $5a1a: $0a
    push af                                       ; $5a1b: $f5
    ld a, $05                                     ; $5a1c: $3e $05
    rst $18                                       ; $5a1e: $df
    inc b                                         ; $5a1f: $04
    ld a, [bc]                                    ; $5a20: $0a
    pop af                                        ; $5a21: $f1
    rst $18                                       ; $5a22: $df
    ld [de], a                                    ; $5a23: $12
    ld a, [bc]                                    ; $5a24: $0a
    rst $18                                       ; $5a25: $df
    inc c                                         ; $5a26: $0c
    ld a, [bc]                                    ; $5a27: $0a
    push af                                       ; $5a28: $f5
    ld a, $05                                     ; $5a29: $3e $05
    rst $18                                       ; $5a2b: $df
    inc b                                         ; $5a2c: $04
    ld a, [bc]                                    ; $5a2d: $0a
    pop af                                        ; $5a2e: $f1
    and a                                         ; $5a2f: $a7
    jr z, jr_034_5a3b                             ; $5a30: $28 $09

    ld a, $02                                     ; $5a32: $3e $02
    rst $18                                       ; $5a34: $df
    ld [$cd0a], sp                                ; $5a35: $08 $0a $cd
    sbc c                                         ; $5a38: $99
    ld e, d                                       ; $5a39: $5a
    ret                                           ; $5a3a: $c9


jr_034_5a3b:
    rst $18                                       ; $5a3b: $df
    db $10                                        ; $5a3c: $10
    ld a, [bc]                                    ; $5a3d: $0a
    rst $08                                       ; $5a3e: $cf
    adc d                                         ; $5a3f: $8a
    ld a, $02                                     ; $5a40: $3e $02
    ld de, $ff40                                  ; $5a42: $11 $40 $ff
    rst $18                                       ; $5a45: $df
    ld b, b                                       ; $5a46: $40
    ld a, [bc]                                    ; $5a47: $0a
    ld a, $02                                     ; $5a48: $3e $02
    rst $18                                       ; $5a4a: $df
    ld b, d                                       ; $5a4b: $42
    ld a, [bc]                                    ; $5a4c: $0a
    ld a, $02                                     ; $5a4d: $3e $02
    rst $18                                       ; $5a4f: $df
    ld [$3e0a], sp                                ; $5a50: $08 $0a $3e
    nop                                           ; $5a53: $00
    ld b, a                                       ; $5a54: $47
    ld a, $07                                     ; $5a55: $3e $07
    rst $18                                       ; $5a57: $df
    ld [hl-], a                                   ; $5a58: $32
    ld a, [bc]                                    ; $5a59: $0a
    ld a, $00                                     ; $5a5a: $3e $00
    rst $18                                       ; $5a5c: $df
    inc [hl]                                      ; $5a5d: $34
    ld a, [bc]                                    ; $5a5e: $0a
    ld a, $02                                     ; $5a5f: $3e $02
    rst $18                                       ; $5a61: $df
    ld [$3e0a], sp                                ; $5a62: $08 $0a $3e
    ld [bc], a                                    ; $5a65: $02
    ld bc, $1f00                                  ; $5a66: $01 $00 $1f
    ld de, $3300                                  ; $5a69: $11 $00 $33
    rst $18                                       ; $5a6c: $df
    ld [hl+], a                                   ; $5a6d: $22
    ld a, [bc]                                    ; $5a6e: $0a
    ld a, $02                                     ; $5a6f: $3e $02
    rst $18                                       ; $5a71: $df
    ld e, $0a                                     ; $5a72: $1e $0a
    push af                                       ; $5a74: $f5
    ld a, $1e                                     ; $5a75: $3e $1e
    rst $18                                       ; $5a77: $df
    inc b                                         ; $5a78: $04
    ld a, [bc]                                    ; $5a79: $0a
    pop af                                        ; $5a7a: $f1
    ld a, $02                                     ; $5a7b: $3e $02
    ld bc, $2100                                  ; $5a7d: $01 $00 $21
    ld de, $2b00                                  ; $5a80: $11 $00 $2b
    rst $18                                       ; $5a83: $df
    ld [hl+], a                                   ; $5a84: $22
    ld a, [bc]                                    ; $5a85: $0a
    ld a, $02                                     ; $5a86: $3e $02
    rst $18                                       ; $5a88: $df
    ld e, $0a                                     ; $5a89: $1e $0a
    ld a, $02                                     ; $5a8b: $3e $02
    rst $18                                       ; $5a8d: $df
    ld [$3e0a], sp                                ; $5a8e: $08 $0a $3e
    ld [bc], a                                    ; $5a91: $02
    rst $18                                       ; $5a92: $df
    ld [$cd0a], sp                                ; $5a93: $08 $0a $cd
    sbc c                                         ; $5a96: $99
    ld e, d                                       ; $5a97: $5a
    ret                                           ; $5a98: $c9


    rst $30                                       ; $5a99: $f7
    ld b, b                                       ; $5a9a: $40
    add hl, de                                    ; $5a9b: $19
    jr nz, jr_034_5ae2                            ; $5a9c: $20 $44

    ld de, $0032                                  ; $5a9e: $11 $32 $00
    ld a, [$c3e1]                                 ; $5aa1: $fa $e1 $c3
    cp $0a                                        ; $5aa4: $fe $0a
    jr nz, jr_034_5ab5                            ; $5aa6: $20 $0d

    ld h, d                                       ; $5aa8: $62
    ld l, e                                       ; $5aa9: $6b
    sra h                                         ; $5aaa: $cb $2c
    rr l                                          ; $5aac: $cb $1d
    sra h                                         ; $5aae: $cb $2c
    rr l                                          ; $5ab0: $cb $1d
    add hl, de                                    ; $5ab2: $19
    ld d, h                                       ; $5ab3: $54
    ld e, l                                       ; $5ab4: $5d

jr_034_5ab5:
    push de                                       ; $5ab5: $d5
    rst $18                                       ; $5ab6: $df
    ld [hl+], a                                   ; $5ab7: $22
    ld [bc], a                                    ; $5ab8: $02
    pop hl                                        ; $5ab9: $e1
    rst $18                                       ; $5aba: $df
    ld d, [hl]                                    ; $5abb: $56
    dec b                                         ; $5abc: $05
    rst $08                                       ; $5abd: $cf
    jr c, @-$17                                   ; $5abe: $38 $e7

    ld b, b                                       ; $5ac0: $40
    add hl, de                                    ; $5ac1: $19
    ld hl, $011b                                  ; $5ac2: $21 $1b $01
    rst $18                                       ; $5ac5: $df
    ld c, $0a                                     ; $5ac6: $0e $0a
    ld a, $80                                     ; $5ac8: $3e $80
    rst $18                                       ; $5aca: $df
    ld [$cd0a], sp                                ; $5acb: $08 $0a $cd
    rra                                           ; $5ace: $1f
    inc l                                         ; $5acf: $2c
    call Call_034_7dd8                            ; $5ad0: $cd $d8 $7d
    ld b, $00                                     ; $5ad3: $06 $00
    ld c, $fa                                     ; $5ad5: $0e $fa
    rst $18                                       ; $5ad7: $df
    ld c, [hl]                                    ; $5ad8: $4e
    ld a, [bc]                                    ; $5ad9: $0a
    rst $18                                       ; $5ada: $df
    inc [hl]                                      ; $5adb: $34
    ld [bc], a                                    ; $5adc: $02
    ld a, $01                                     ; $5add: $3e $01
    ld [$c441], a                                 ; $5adf: $ea $41 $c4

jr_034_5ae2:
    ret                                           ; $5ae2: $c9


    ld a, $0a                                     ; $5ae3: $3e $0a
    ld [$c3e0], a                                 ; $5ae5: $ea $e0 $c3
    ret                                           ; $5ae8: $c9


Call_034_5ae9:
    rst $30                                       ; $5ae9: $f7
    ld b, b                                       ; $5aea: $40
    add hl, de                                    ; $5aeb: $19
    jr z, jr_034_5afa                             ; $5aec: $28 $0c

    ld a, $0a                                     ; $5aee: $3e $0a
    ld [$c3e0], a                                 ; $5af0: $ea $e0 $c3
    push af                                       ; $5af3: $f5
    ld a, $03                                     ; $5af4: $3e $03
    rst $18                                       ; $5af6: $df
    inc b                                         ; $5af7: $04
    ld a, [bc]                                    ; $5af8: $0a
    pop af                                        ; $5af9: $f1

jr_034_5afa:
    ld a, [$c3e0]                                 ; $5afa: $fa $e0 $c3
    cp $0a                                        ; $5afd: $fe $0a
    jp z, Jump_034_5b30                           ; $5aff: $ca $30 $5b

    cp $09                                        ; $5b02: $fe $09
    jp z, Jump_034_5b3f                           ; $5b04: $ca $3f $5b

    cp $08                                        ; $5b07: $fe $08
    jp z, Jump_034_5b4e                           ; $5b09: $ca $4e $5b

    cp $07                                        ; $5b0c: $fe $07
    jp z, Jump_034_5b5d                           ; $5b0e: $ca $5d $5b

    cp $06                                        ; $5b11: $fe $06
    jp z, Jump_034_5b6c                           ; $5b13: $ca $6c $5b

    cp $05                                        ; $5b16: $fe $05
    jp z, Jump_034_5b7b                           ; $5b18: $ca $7b $5b

    cp $04                                        ; $5b1b: $fe $04
    jp z, Jump_034_5b8a                           ; $5b1d: $ca $8a $5b

    cp $03                                        ; $5b20: $fe $03
    jp z, Jump_034_5b99                           ; $5b22: $ca $99 $5b

    cp $02                                        ; $5b25: $fe $02
    jp z, Jump_034_5ba8                           ; $5b27: $ca $a8 $5b

    cp $01                                        ; $5b2a: $fe $01
    jp z, Jump_034_5bb7                           ; $5b2c: $ca $b7 $5b

    ret                                           ; $5b2f: $c9


Jump_034_5b30:
    ld b, $3f                                     ; $5b30: $06 $3f
    ld c, $24                                     ; $5b32: $0e $24
    ld d, $2a                                     ; $5b34: $16 $2a
    ld e, $24                                     ; $5b36: $1e $24
    ld h, $01                                     ; $5b38: $26 $01
    ld l, $01                                     ; $5b3a: $2e $01
    rst $18                                       ; $5b3c: $df
    ld a, [bc]                                    ; $5b3d: $0a
    dec bc                                        ; $5b3e: $0b

Jump_034_5b3f:
    ld b, $3f                                     ; $5b3f: $06 $3f
    ld c, $26                                     ; $5b41: $0e $26
    ld d, $23                                     ; $5b43: $16 $23
    ld e, $20                                     ; $5b45: $1e $20
    ld h, $01                                     ; $5b47: $26 $01
    ld l, $01                                     ; $5b49: $2e $01
    rst $18                                       ; $5b4b: $df
    ld a, [bc]                                    ; $5b4c: $0a
    dec bc                                        ; $5b4d: $0b

Jump_034_5b4e:
    ld b, $3f                                     ; $5b4e: $06 $3f
    ld c, $24                                     ; $5b50: $0e $24
    ld d, $16                                     ; $5b52: $16 $16
    ld e, $25                                     ; $5b54: $1e $25
    ld h, $01                                     ; $5b56: $26 $01
    ld l, $01                                     ; $5b58: $2e $01
    rst $18                                       ; $5b5a: $df
    ld a, [bc]                                    ; $5b5b: $0a
    dec bc                                        ; $5b5c: $0b

Jump_034_5b5d:
    ld b, $3f                                     ; $5b5d: $06 $3f
    ld c, $26                                     ; $5b5f: $0e $26
    ld d, $19                                     ; $5b61: $16 $19
    ld e, $24                                     ; $5b63: $1e $24
    ld h, $01                                     ; $5b65: $26 $01
    ld l, $01                                     ; $5b67: $2e $01
    rst $18                                       ; $5b69: $df
    ld a, [bc]                                    ; $5b6a: $0a
    dec bc                                        ; $5b6b: $0b

Jump_034_5b6c:
    ld b, $3f                                     ; $5b6c: $06 $3f
    ld c, $24                                     ; $5b6e: $0e $24
    ld d, $19                                     ; $5b70: $16 $19
    ld e, $27                                     ; $5b72: $1e $27
    ld h, $01                                     ; $5b74: $26 $01
    ld l, $01                                     ; $5b76: $2e $01
    rst $18                                       ; $5b78: $df
    ld a, [bc]                                    ; $5b79: $0a
    dec bc                                        ; $5b7a: $0b

Jump_034_5b7b:
    ld b, $3f                                     ; $5b7b: $06 $3f
    ld c, $26                                     ; $5b7d: $0e $26
    ld d, $1c                                     ; $5b7f: $16 $1c
    ld e, $2a                                     ; $5b81: $1e $2a
    ld h, $01                                     ; $5b83: $26 $01
    ld l, $01                                     ; $5b85: $2e $01
    rst $18                                       ; $5b87: $df
    ld a, [bc]                                    ; $5b88: $0a
    dec bc                                        ; $5b89: $0b

Jump_034_5b8a:
    ld b, $3f                                     ; $5b8a: $06 $3f
    ld c, $26                                     ; $5b8c: $0e $26
    ld d, $1d                                     ; $5b8e: $16 $1d
    ld e, $2d                                     ; $5b90: $1e $2d
    ld h, $01                                     ; $5b92: $26 $01
    ld l, $01                                     ; $5b94: $2e $01
    rst $18                                       ; $5b96: $df
    ld a, [bc]                                    ; $5b97: $0a
    dec bc                                        ; $5b98: $0b

Jump_034_5b99:
    ld b, $3f                                     ; $5b99: $06 $3f
    ld c, $2a                                     ; $5b9b: $0e $2a
    ld d, $1c                                     ; $5b9d: $16 $1c
    ld e, $27                                     ; $5b9f: $1e $27
    ld h, $01                                     ; $5ba1: $26 $01
    ld l, $01                                     ; $5ba3: $2e $01
    rst $18                                       ; $5ba5: $df
    ld a, [bc]                                    ; $5ba6: $0a
    dec bc                                        ; $5ba7: $0b

Jump_034_5ba8:
    ld b, $3f                                     ; $5ba8: $06 $3f
    ld c, $28                                     ; $5baa: $0e $28
    ld d, $20                                     ; $5bac: $16 $20
    ld e, $2e                                     ; $5bae: $1e $2e
    ld h, $01                                     ; $5bb0: $26 $01
    ld l, $01                                     ; $5bb2: $2e $01
    rst $18                                       ; $5bb4: $df
    ld a, [bc]                                    ; $5bb5: $0a
    dec bc                                        ; $5bb6: $0b

Jump_034_5bb7:
    ld b, $3f                                     ; $5bb7: $06 $3f
    ld c, $28                                     ; $5bb9: $0e $28
    ld d, $1f                                     ; $5bbb: $16 $1f
    ld e, $28                                     ; $5bbd: $1e $28
    ld h, $01                                     ; $5bbf: $26 $01
    ld l, $01                                     ; $5bc1: $2e $01
    rst $18                                       ; $5bc3: $df
    ld a, [bc]                                    ; $5bc4: $0a
    dec bc                                        ; $5bc5: $0b
    ret                                           ; $5bc6: $c9


    ld a, [$c3e0]                                 ; $5bc7: $fa $e0 $c3
    cp $09                                        ; $5bca: $fe $09
    jp z, Jump_034_5bfd                           ; $5bcc: $ca $fd $5b

    cp $08                                        ; $5bcf: $fe $08
    jp z, Jump_034_5c07                           ; $5bd1: $ca $07 $5c

    cp $07                                        ; $5bd4: $fe $07
    jp z, Jump_034_5c11                           ; $5bd6: $ca $11 $5c

    cp $06                                        ; $5bd9: $fe $06
    jp z, Jump_034_5c1b                           ; $5bdb: $ca $1b $5c

    cp $05                                        ; $5bde: $fe $05
    jp z, Jump_034_5c25                           ; $5be0: $ca $25 $5c

    cp $04                                        ; $5be3: $fe $04
    jp z, Jump_034_5c2f                           ; $5be5: $ca $2f $5c

    cp $03                                        ; $5be8: $fe $03
    jp z, Jump_034_5c39                           ; $5bea: $ca $39 $5c

    cp $02                                        ; $5bed: $fe $02
    jp z, Jump_034_5c43                           ; $5bef: $ca $43 $5c

    cp $01                                        ; $5bf2: $fe $01
    jp z, Jump_034_5c4d                           ; $5bf4: $ca $4d $5c

    cp $00                                        ; $5bf7: $fe $00
    jp z, Jump_034_5c57                           ; $5bf9: $ca $57 $5c

    ret                                           ; $5bfc: $c9


Jump_034_5bfd:
    ld hl, $2a80                                  ; $5bfd: $21 $80 $2a
    ld de, $2440                                  ; $5c00: $11 $40 $24
    rst $18                                       ; $5c03: $df
    jr nz, @+$12                                  ; $5c04: $20 $10

    ret                                           ; $5c06: $c9


Jump_034_5c07:
    ld hl, $23a0                                  ; $5c07: $21 $a0 $23
    ld de, $2060                                  ; $5c0a: $11 $60 $20
    rst $18                                       ; $5c0d: $df
    jr nz, @+$12                                  ; $5c0e: $20 $10

    ret                                           ; $5c10: $c9


Jump_034_5c11:
    ld hl, $10c0                                  ; $5c11: $21 $c0 $10
    ld de, $2540                                  ; $5c14: $11 $40 $25
    rst $18                                       ; $5c17: $df
    jr nz, @+$12                                  ; $5c18: $20 $10

    ret                                           ; $5c1a: $c9


Jump_034_5c1b:
    ld hl, $1980                                  ; $5c1b: $21 $80 $19
    ld de, $2460                                  ; $5c1e: $11 $60 $24
    rst $18                                       ; $5c21: $df
    jr nz, @+$12                                  ; $5c22: $20 $10

    ret                                           ; $5c24: $c9


Jump_034_5c25:
    ld hl, $1980                                  ; $5c25: $21 $80 $19
    ld de, $2780                                  ; $5c28: $11 $80 $27
    rst $18                                       ; $5c2b: $df
    jr nz, @+$12                                  ; $5c2c: $20 $10

    ret                                           ; $5c2e: $c9


Jump_034_5c2f:
    ld hl, $1d80                                  ; $5c2f: $21 $80 $1d
    ld de, $2d00                                  ; $5c32: $11 $00 $2d
    rst $18                                       ; $5c35: $df
    jr nz, @+$12                                  ; $5c36: $20 $10

    ret                                           ; $5c38: $c9


Jump_034_5c39:
    ld hl, $1ca0                                  ; $5c39: $21 $a0 $1c
    ld de, $2a40                                  ; $5c3c: $11 $40 $2a
    rst $18                                       ; $5c3f: $df
    jr nz, @+$12                                  ; $5c40: $20 $10

    ret                                           ; $5c42: $c9


Jump_034_5c43:
    ld hl, $1c80                                  ; $5c43: $21 $80 $1c
    ld de, $2700                                  ; $5c46: $11 $00 $27
    rst $18                                       ; $5c49: $df
    jr nz, @+$12                                  ; $5c4a: $20 $10

    ret                                           ; $5c4c: $c9


Jump_034_5c4d:
    ld hl, $20a0                                  ; $5c4d: $21 $a0 $20
    ld de, $20e0                                  ; $5c50: $11 $e0 $20
    rst $18                                       ; $5c53: $df
    jr nz, jr_034_5c66                            ; $5c54: $20 $10

    ret                                           ; $5c56: $c9


Jump_034_5c57:
    ld hl, $1f60                                  ; $5c57: $21 $60 $1f
    ld de, $2880                                  ; $5c5a: $11 $80 $28
    rst $18                                       ; $5c5d: $df
    jr nz, jr_034_5c70                            ; $5c5e: $20 $10

    ret                                           ; $5c60: $c9


    add c                                         ; $5c61: $81
    ld e, h                                       ; $5c62: $5c
    add d                                         ; $5c63: $82
    ld e, h                                       ; $5c64: $5c
    ld b, b                                       ; $5c65: $40

jr_034_5c66:
    ld e, l                                       ; $5c66: $5d
    sbc [hl]                                      ; $5c67: $9e
    ld e, l                                       ; $5c68: $5d
    nop                                           ; $5c69: $00
    nop                                           ; $5c6a: $00
    nop                                           ; $5c6b: $00
    nop                                           ; $5c6c: $00
    nop                                           ; $5c6d: $00
    nop                                           ; $5c6e: $00
    nop                                           ; $5c6f: $00

jr_034_5c70:
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    nop                                           ; $5c73: $00
    nop                                           ; $5c74: $00
    nop                                           ; $5c75: $00
    nop                                           ; $5c76: $00
    nop                                           ; $5c77: $00
    nop                                           ; $5c78: $00
    nop                                           ; $5c79: $00
    nop                                           ; $5c7a: $00
    nop                                           ; $5c7b: $00
    nop                                           ; $5c7c: $00
    nop                                           ; $5c7d: $00
    nop                                           ; $5c7e: $00
    nop                                           ; $5c7f: $00
    nop                                           ; $5c80: $00
    ret                                           ; $5c81: $c9


    ld hl, $c800                                  ; $5c82: $21 $00 $c8
    ld a, l                                       ; $5c85: $7d
    add $37                                       ; $5c86: $c6 $37
    ld l, a                                       ; $5c88: $6f
    ld a, h                                       ; $5c89: $7c
    adc $00                                       ; $5c8a: $ce $00
    ld h, a                                       ; $5c8c: $67
    ld a, [hl]                                    ; $5c8d: $7e
    ld l, a                                       ; $5c8e: $6f
    ld h, $00                                     ; $5c8f: $26 $00
    ld de, $00e0                                  ; $5c91: $11 $e0 $00
    add hl, de                                    ; $5c94: $19
    add hl, hl                                    ; $5c95: $29
    add hl, hl                                    ; $5c96: $29
    add hl, hl                                    ; $5c97: $29
    add hl, hl                                    ; $5c98: $29
    add hl, hl                                    ; $5c99: $29
    ld e, l                                       ; $5c9a: $5d
    ld d, h                                       ; $5c9b: $54
    call Call_000_2d2e                            ; $5c9c: $cd $2e $2d
    ld a, [$c834]                                 ; $5c9f: $fa $34 $c8
    cp $00                                        ; $5ca2: $fe $00
    jr z, jr_034_5cc3                             ; $5ca4: $28 $1d

    ld hl, $003c                                  ; $5ca6: $21 $3c $00
    call Call_034_7d93                            ; $5ca9: $cd $93 $7d
    or a                                          ; $5cac: $b7
    jr nz, jr_034_5cce                            ; $5cad: $20 $1f

    ld a, $01                                     ; $5caf: $3e $01
    ld [$c8aa], a                                 ; $5cb1: $ea $aa $c8
    ld a, [$c3e0]                                 ; $5cb4: $fa $e0 $c3
    inc a                                         ; $5cb7: $3c
    ld [$c3e0], a                                 ; $5cb8: $ea $e0 $c3
    ld a, [$c3e1]                                 ; $5cbb: $fa $e1 $c3
    inc a                                         ; $5cbe: $3c
    ld [$c3e1], a                                 ; $5cbf: $ea $e1 $c3
    ret                                           ; $5cc2: $c9


jr_034_5cc3:
    ld a, $00                                     ; $5cc3: $3e $00
    ld [$c3e0], a                                 ; $5cc5: $ea $e0 $c3
    ld a, $63                                     ; $5cc8: $3e $63
    ld [$c3e1], a                                 ; $5cca: $ea $e1 $c3
    ret                                           ; $5ccd: $c9


jr_034_5cce:
    ld a, [$d4dc]                                 ; $5cce: $fa $dc $d4
    cp $03                                        ; $5cd1: $fe $03
    jr z, jr_034_5d1a                             ; $5cd3: $28 $45

    cp $07                                        ; $5cd5: $fe $07
    jr z, jr_034_5d1a                             ; $5cd7: $28 $41

    ld hl, $c0f6                                  ; $5cd9: $21 $f6 $c0
    ld a, [hl+]                                   ; $5cdc: $2a
    or [hl]                                       ; $5cdd: $b6
    jr nz, jr_034_5d0c                            ; $5cde: $20 $2c

    rst $18                                       ; $5ce0: $df
    ld a, [hl+]                                   ; $5ce1: $2a
    db $10                                        ; $5ce2: $10
    ld a, [$c3e0]                                 ; $5ce3: $fa $e0 $c3
    inc a                                         ; $5ce6: $3c
    ld [$c3e0], a                                 ; $5ce7: $ea $e0 $c3
    cp $0a                                        ; $5cea: $fe $0a
    jr z, jr_034_5d0d                             ; $5cec: $28 $1f

    ld a, $80                                     ; $5cee: $3e $80
    ld de, $0a03                                  ; $5cf0: $11 $03 $0a
    ld hl, $14f0                                  ; $5cf3: $21 $f0 $14
    rst $18                                       ; $5cf6: $df
    ld c, d                                       ; $5cf7: $4a
    dec b                                         ; $5cf8: $05
    ld a, $80                                     ; $5cf9: $3e $80
    ld de, $0a03                                  ; $5cfb: $11 $03 $0a
    ld hl, $14f1                                  ; $5cfe: $21 $f1 $14
    rst $18                                       ; $5d01: $df
    ld c, d                                       ; $5d02: $4a
    dec b                                         ; $5d03: $05

jr_034_5d04:
    ld a, $01                                     ; $5d04: $3e $01
    ld [$c8aa], a                                 ; $5d06: $ea $aa $c8
    rst $18                                       ; $5d09: $df
    inc l                                         ; $5d0a: $2c
    db $10                                        ; $5d0b: $10

jr_034_5d0c:
    ret                                           ; $5d0c: $c9


jr_034_5d0d:
    ld a, $80                                     ; $5d0d: $3e $80
    ld de, $0a03                                  ; $5d0f: $11 $03 $0a
    ld hl, $14f3                                  ; $5d12: $21 $f3 $14
    rst $18                                       ; $5d15: $df
    ld c, d                                       ; $5d16: $4a
    dec b                                         ; $5d17: $05
    jr jr_034_5d04                                ; $5d18: $18 $ea

jr_034_5d1a:
    rst $18                                       ; $5d1a: $df
    ld a, [hl+]                                   ; $5d1b: $2a
    db $10                                        ; $5d1c: $10
    ld a, [$c3e0]                                 ; $5d1d: $fa $e0 $c3
    inc a                                         ; $5d20: $3c
    ld [$c3e0], a                                 ; $5d21: $ea $e0 $c3
    cp $0a                                        ; $5d24: $fe $0a
    jr z, jr_034_5d0d                             ; $5d26: $28 $e5

    ld a, $80                                     ; $5d28: $3e $80
    ld de, $0a03                                  ; $5d2a: $11 $03 $0a
    ld hl, $14f2                                  ; $5d2d: $21 $f2 $14
    rst $18                                       ; $5d30: $df
    ld c, d                                       ; $5d31: $4a
    dec b                                         ; $5d32: $05
    ld a, $80                                     ; $5d33: $3e $80
    ld de, $0a03                                  ; $5d35: $11 $03 $0a
    ld hl, $14f1                                  ; $5d38: $21 $f1 $14
    rst $18                                       ; $5d3b: $df
    ld c, d                                       ; $5d3c: $4a
    dec b                                         ; $5d3d: $05
    jr jr_034_5d04                                ; $5d3e: $18 $c4

    ld hl, $5d46                                  ; $5d40: $21 $46 $5d
    jp Jump_034_55b6                              ; $5d43: $c3 $b6 $55


    ld c, d                                       ; $5d46: $4a
    ld e, l                                       ; $5d47: $5d
    sbc h                                         ; $5d48: $9c
    ld e, l                                       ; $5d49: $5d
    nop                                           ; $5d4a: $00
    inc e                                         ; $5d4b: $1c
    jr z, @+$41                                   ; $5d4c: $28 $3f

    jr z, jr_034_5d6f                             ; $5d4e: $28 $1f

    ld bc, $2001                                  ; $5d50: $01 $01 $20
    inc e                                         ; $5d53: $1c
    jr z, jr_034_5d95                             ; $5d54: $28 $3f

    ld l, $20                                     ; $5d56: $2e $20
    ld bc, $4001                                  ; $5d58: $01 $01 $40
    inc e                                         ; $5d5b: $1c
    ld a, [hl+]                                   ; $5d5c: $2a
    ccf                                           ; $5d5d: $3f
    daa                                           ; $5d5e: $27
    inc e                                         ; $5d5f: $1c
    ld bc, $6001                                  ; $5d60: $01 $01 $60
    inc e                                         ; $5d63: $1c
    ld h, $3f                                     ; $5d64: $26 $3f
    dec l                                         ; $5d66: $2d
    dec e                                         ; $5d67: $1d
    ld bc, $8001                                  ; $5d68: $01 $01 $80
    inc e                                         ; $5d6b: $1c
    ld h, $3f                                     ; $5d6c: $26 $3f
    ld a, [hl+]                                   ; $5d6e: $2a

jr_034_5d6f:
    inc e                                         ; $5d6f: $1c
    ld bc, $a001                                  ; $5d70: $01 $01 $a0
    inc e                                         ; $5d73: $1c
    inc h                                         ; $5d74: $24
    ccf                                           ; $5d75: $3f
    daa                                           ; $5d76: $27
    add hl, de                                    ; $5d77: $19
    ld bc, $c001                                  ; $5d78: $01 $01 $c0
    inc e                                         ; $5d7b: $1c
    ld h, $3f                                     ; $5d7c: $26 $3f
    inc h                                         ; $5d7e: $24
    add hl, de                                    ; $5d7f: $19
    ld bc, $e001                                  ; $5d80: $01 $01 $e0
    inc e                                         ; $5d83: $1c
    inc h                                         ; $5d84: $24
    ccf                                           ; $5d85: $3f
    dec h                                         ; $5d86: $25
    ld d, $01                                     ; $5d87: $16 $01
    ld bc, $1d00                                  ; $5d89: $01 $00 $1d
    ld h, $3f                                     ; $5d8c: $26 $3f
    jr nz, jr_034_5db3                            ; $5d8e: $20 $23

    ld bc, $2001                                  ; $5d90: $01 $01 $20
    dec e                                         ; $5d93: $1d
    inc h                                         ; $5d94: $24

jr_034_5d95:
    ccf                                           ; $5d95: $3f
    inc h                                         ; $5d96: $24
    ld a, [hl+]                                   ; $5d97: $2a
    ld bc, $ff01                                  ; $5d98: $01 $01 $ff
    rst $38                                       ; $5d9b: $ff
    rst $38                                       ; $5d9c: $ff
    rst $38                                       ; $5d9d: $ff

Call_034_5d9e:
    ld hl, $000a                                  ; $5d9e: $21 $0a $00
    rst $18                                       ; $5da1: $df
    ld b, [hl]                                    ; $5da2: $46
    ld [de], a                                    ; $5da3: $12
    rst $18                                       ; $5da4: $df
    ld c, d                                       ; $5da5: $4a
    ld [de], a                                    ; $5da6: $12
    ret                                           ; $5da7: $c9


    rst $10                                       ; $5da8: $d7
    ld e, l                                       ; $5da9: $5d
    db $fc                                        ; $5daa: $fc
    ld e, l                                       ; $5dab: $5d
    or [hl]                                       ; $5dac: $b6
    ld e, l                                       ; $5dad: $5d
    dec e                                         ; $5dae: $1d
    ld e, [hl]                                    ; $5daf: $5e
    ccf                                           ; $5db0: $3f
    ld e, [hl]                                    ; $5db1: $5e
    ld b, d                                       ; $5db2: $42

jr_034_5db3:
    ld e, [hl]                                    ; $5db3: $5e
    ld d, e                                       ; $5db4: $53
    ld e, [hl]                                    ; $5db5: $5e
    cp $7c                                        ; $5db6: $fe $7c
    nop                                           ; $5db8: $00
    add hl, de                                    ; $5db9: $19
    nop                                           ; $5dba: $00
    rra                                           ; $5dbb: $1f
    jp nc, $0000                                  ; $5dbc: $d2 $00 $00

    ret nz                                        ; $5dbf: $c0

    ld bc, $fe16                                  ; $5dc0: $01 $16 $fe
    ld a, h                                       ; $5dc3: $7c
    nop                                           ; $5dc4: $00
    rla                                           ; $5dc5: $17
    nop                                           ; $5dc6: $00
    ld hl, $00d2                                  ; $5dc7: $21 $d2 $00
    nop                                           ; $5dca: $00
    ret nz                                        ; $5dcb: $c0

    ld bc, $000e                                  ; $5dcc: $01 $0e $00
    nop                                           ; $5dcf: $00
    nop                                           ; $5dd0: $00
    nop                                           ; $5dd1: $00
    nop                                           ; $5dd2: $00
    nop                                           ; $5dd3: $00
    nop                                           ; $5dd4: $00
    nop                                           ; $5dd5: $00
    rst $38                                       ; $5dd6: $ff
    ld bc, $00c0                                  ; $5dd7: $01 $c0 $00
    dec bc                                        ; $5dda: $0b
    nop                                           ; $5ddb: $00
    dec sp                                        ; $5ddc: $3b
    dec b                                         ; $5ddd: $05
    ret nz                                        ; $5dde: $c0

    nop                                           ; $5ddf: $00
    dec bc                                        ; $5de0: $0b
    nop                                           ; $5de1: $00
    dec sp                                        ; $5de2: $3b
    ld b, $c0                                     ; $5de3: $06 $c0
    nop                                           ; $5de5: $00
    add hl, de                                    ; $5de6: $19
    nop                                           ; $5de7: $00
    ld hl, $c00d                                  ; $5de8: $21 $0d $c0
    nop                                           ; $5deb: $00
    add hl, de                                    ; $5dec: $19
    nop                                           ; $5ded: $00
    ld hl, $c00e                                  ; $5dee: $21 $0e $c0
    nop                                           ; $5df1: $00
    add hl, de                                    ; $5df2: $19
    nop                                           ; $5df3: $00
    ld hl, $c00f                                  ; $5df4: $21 $0f $c0
    nop                                           ; $5df7: $00
    add hl, de                                    ; $5df8: $19
    nop                                           ; $5df9: $00
    ld hl, $01ff                                  ; $5dfa: $21 $ff $01
    rst $38                                       ; $5dfd: $ff
    nop                                           ; $5dfe: $00
    nop                                           ; $5dff: $00
    nop                                           ; $5e00: $00
    nop                                           ; $5e01: $00
    ld [bc], a                                    ; $5e02: $02
    ld [$ff0d], sp                                ; $5e03: $08 $0d $ff
    nop                                           ; $5e06: $00
    nop                                           ; $5e07: $00
    nop                                           ; $5e08: $00
    nop                                           ; $5e09: $00
    jr z, jr_034_5e19                             ; $5e0a: $28 $0d

    ld c, $ff                                     ; $5e0c: $0e $ff
    nop                                           ; $5e0e: $00
    nop                                           ; $5e0f: $00
    nop                                           ; $5e10: $00
    nop                                           ; $5e11: $00
    jr z, jr_034_5e22                             ; $5e12: $28 $0e

    rrca                                          ; $5e14: $0f
    rst $38                                       ; $5e15: $ff
    nop                                           ; $5e16: $00
    nop                                           ; $5e17: $00
    nop                                           ; $5e18: $00

jr_034_5e19:
    nop                                           ; $5e19: $00
    jr z, jr_034_5e2b                             ; $5e1a: $28 $0f

    rst $38                                       ; $5e1c: $ff
    ld [bc], a                                    ; $5e1d: $02
    rst $38                                       ; $5e1e: $ff
    jp c, Jump_034_5900                           ; $5e1f: $da $00 $59

jr_034_5e22:
    ld h, b                                       ; $5e22: $60
    inc bc                                        ; $5e23: $03
    nop                                           ; $5e24: $00
    ld [bc], a                                    ; $5e25: $02
    rst $38                                       ; $5e26: $ff
    nop                                           ; $5e27: $00
    nop                                           ; $5e28: $00
    dec bc                                        ; $5e29: $0b
    dec d                                         ; $5e2a: $15

jr_034_5e2b:
    inc bc                                        ; $5e2b: $03
    nop                                           ; $5e2c: $00
    inc bc                                        ; $5e2d: $03
    rst $38                                       ; $5e2e: $ff
    jp c, $6400                                   ; $5e2f: $da $00 $64

    ld h, b                                       ; $5e32: $60
    inc bc                                        ; $5e33: $03
    nop                                           ; $5e34: $00
    inc bc                                        ; $5e35: $03
    rst $38                                       ; $5e36: $ff
    nop                                           ; $5e37: $00
    nop                                           ; $5e38: $00
    jr jr_034_5e9b                                ; $5e39: $18 $60

    inc bc                                        ; $5e3b: $03
    nop                                           ; $5e3c: $00
    rst $38                                       ; $5e3d: $ff
    ret                                           ; $5e3e: $c9


    rst $38                                       ; $5e3f: $ff
    ret                                           ; $5e40: $c9


    ret                                           ; $5e41: $c9


    ld bc, $d3ff                                  ; $5e42: $01 $ff $d3
    nop                                           ; $5e45: $00
    pop hl                                        ; $5e46: $e1
    ld e, [hl]                                    ; $5e47: $5e
    nop                                           ; $5e48: $00
    nop                                           ; $5e49: $00
    rrca                                          ; $5e4a: $0f
    rst $38                                       ; $5e4b: $ff
    nop                                           ; $5e4c: $00
    nop                                           ; $5e4d: $00
    add [hl]                                      ; $5e4e: $86
    ld e, [hl]                                    ; $5e4f: $5e
    ld bc, $ff00                                  ; $5e50: $01 $00 $ff
    rst $20                                       ; $5e53: $e7
    ld b, b                                       ; $5e54: $40
    ld a, [bc]                                    ; $5e55: $0a
    ld a, [$c46a]                                 ; $5e56: $fa $6a $c4
    cp $01                                        ; $5e59: $fe $01
    jr z, jr_034_5e63                             ; $5e5b: $28 $06

    xor a                                         ; $5e5d: $af
    ld hl, $c4b4                                  ; $5e5e: $21 $b4 $c4
    ld [hl+], a                                   ; $5e61: $22
    ld [hl+], a                                   ; $5e62: $22

jr_034_5e63:
    ld a, $00                                     ; $5e63: $3e $00
    ld [$c967], a                                 ; $5e65: $ea $67 $c9
    ld a, [$c46a]                                 ; $5e68: $fa $6a $c4
    cp $05                                        ; $5e6b: $fe $05
    jp z, Jump_034_5fbe                           ; $5e6d: $ca $be $5f

    cp $06                                        ; $5e70: $fe $06
    jp z, Jump_034_6568                           ; $5e72: $ca $68 $65

    cp $0d                                        ; $5e75: $fe $0d
    jp z, Jump_034_62c0                           ; $5e77: $ca $c0 $62

    cp $0e                                        ; $5e7a: $fe $0e
    jp z, Jump_034_6412                           ; $5e7c: $ca $12 $64

    cp $0f                                        ; $5e7f: $fe $0f
    jp z, Jump_034_6362                           ; $5e81: $ca $62 $63

    ret                                           ; $5e84: $c9


    ret                                           ; $5e85: $c9


    ld hl, $14fd                                  ; $5e86: $21 $fd $14
    rst $18                                       ; $5e89: $df
    ld c, $0a                                     ; $5e8a: $0e $0a
    ld a, $80                                     ; $5e8c: $3e $80
    rst $18                                       ; $5e8e: $df
    ld a, [bc]                                    ; $5e8f: $0a
    ld a, [bc]                                    ; $5e90: $0a
    push af                                       ; $5e91: $f5
    ld a, $05                                     ; $5e92: $3e $05
    rst $18                                       ; $5e94: $df
    inc b                                         ; $5e95: $04
    ld a, [bc]                                    ; $5e96: $0a
    pop af                                        ; $5e97: $f1
    rst $18                                       ; $5e98: $df
    ld [de], a                                    ; $5e99: $12
    ld a, [bc]                                    ; $5e9a: $0a

jr_034_5e9b:
    rst $18                                       ; $5e9b: $df
    inc c                                         ; $5e9c: $0c
    ld a, [bc]                                    ; $5e9d: $0a
    push af                                       ; $5e9e: $f5
    ld a, $05                                     ; $5e9f: $3e $05
    rst $18                                       ; $5ea1: $df
    inc b                                         ; $5ea2: $04
    ld a, [bc]                                    ; $5ea3: $0a
    pop af                                        ; $5ea4: $f1
    and a                                         ; $5ea5: $a7
    jr z, jr_034_5ea9                             ; $5ea6: $28 $01

    ret                                           ; $5ea8: $c9


jr_034_5ea9:
    ld a, $0a                                     ; $5ea9: $3e $0a
    ld [$c967], a                                 ; $5eab: $ea $67 $c9
    rst $18                                       ; $5eae: $df
    inc e                                         ; $5eaf: $1c
    db $10                                        ; $5eb0: $10
    ld a, $07                                     ; $5eb1: $3e $07
    ld [$c82c], a                                 ; $5eb3: $ea $2c $c8
    ld a, $06                                     ; $5eb6: $3e $06
    ld [$c834], a                                 ; $5eb8: $ea $34 $c8
    ld bc, $8000                                  ; $5ebb: $01 $00 $80
    rst $18                                       ; $5ebe: $df
    ld e, $02                                     ; $5ebf: $1e $02
    ld bc, $ff01                                  ; $5ec1: $01 $01 $ff
    rst $18                                       ; $5ec4: $df
    ld e, $02                                     ; $5ec5: $1e $02
    ld a, $00                                     ; $5ec7: $3e $00
    rst $18                                       ; $5ec9: $df
    ld e, $10                                     ; $5eca: $1e $10
    ld de, $c000                                  ; $5ecc: $11 $00 $c0
    rst $18                                       ; $5ecf: $df
    ld [hl+], a                                   ; $5ed0: $22
    db $10                                        ; $5ed1: $10
    ld hl, $0a01                                  ; $5ed2: $21 $01 $0a
    rst $18                                       ; $5ed5: $df
    db $10                                        ; $5ed6: $10
    db $10                                        ; $5ed7: $10
    ld a, $01                                     ; $5ed8: $3e $01
    rst $18                                       ; $5eda: $df
    ld [de], a                                    ; $5edb: $12
    db $10                                        ; $5edc: $10
    rst $18                                       ; $5edd: $df
    jr nc, jr_034_5ef0                            ; $5ede: $30 $10

    ret                                           ; $5ee0: $c9


    rst $20                                       ; $5ee1: $e7
    ld h, b                                       ; $5ee2: $60
    ld a, [de]                                    ; $5ee3: $1a
    ld hl, $14fe                                  ; $5ee4: $21 $fe $14
    rst $18                                       ; $5ee7: $df
    ld c, $0a                                     ; $5ee8: $0e $0a
    ld a, $82                                     ; $5eea: $3e $82
    rst $18                                       ; $5eec: $df
    ld [$010a], sp                                ; $5eed: $08 $0a $01

jr_034_5ef0:
    ld c, b                                       ; $5ef0: $48
    nop                                           ; $5ef1: $00
    rst $18                                       ; $5ef2: $df
    ld [hl], $0a                                  ; $5ef3: $36 $0a
    xor a                                         ; $5ef5: $af
    ld bc, $1900                                  ; $5ef6: $01 $00 $19
    ld de, $1f00                                  ; $5ef9: $11 $00 $1f
    rst $18                                       ; $5efc: $df
    jr c, jr_034_5f09                             ; $5efd: $38 $0a

    rst $18                                       ; $5eff: $df
    inc a                                         ; $5f00: $3c
    ld a, [bc]                                    ; $5f01: $0a
    ld a, $02                                     ; $5f02: $3e $02
    ld b, a                                       ; $5f04: $47
    ld a, $07                                     ; $5f05: $3e $07
    rst $18                                       ; $5f07: $df
    ld [hl-], a                                   ; $5f08: $32

jr_034_5f09:
    ld a, [bc]                                    ; $5f09: $0a
    ld a, $02                                     ; $5f0a: $3e $02
    rst $18                                       ; $5f0c: $df
    inc [hl]                                      ; $5f0d: $34
    ld a, [bc]                                    ; $5f0e: $0a
    ld a, $02                                     ; $5f0f: $3e $02
    rst $18                                       ; $5f11: $df
    ld [$3e0a], sp                                ; $5f12: $08 $0a $3e
    ld [bc], a                                    ; $5f15: $02
    ld b, a                                       ; $5f16: $47
    ld a, $05                                     ; $5f17: $3e $05
    rst $18                                       ; $5f19: $df
    ld [hl-], a                                   ; $5f1a: $32
    ld a, [bc]                                    ; $5f1b: $0a
    ld a, $02                                     ; $5f1c: $3e $02
    rst $18                                       ; $5f1e: $df
    inc [hl]                                      ; $5f1f: $34
    ld a, [bc]                                    ; $5f20: $0a
    push af                                       ; $5f21: $f5
    ld a, $0a                                     ; $5f22: $3e $0a
    rst $18                                       ; $5f24: $df
    inc b                                         ; $5f25: $04
    ld a, [bc]                                    ; $5f26: $0a
    pop af                                        ; $5f27: $f1
    rst $18                                       ; $5f28: $df
    inc e                                         ; $5f29: $1c
    db $10                                        ; $5f2a: $10
    rst $18                                       ; $5f2b: $df
    inc h                                         ; $5f2c: $24
    db $10                                        ; $5f2d: $10
    ld a, $07                                     ; $5f2e: $3e $07
    ld [$c82c], a                                 ; $5f30: $ea $2c $c8
    ld a, $28                                     ; $5f33: $3e $28
    ld b, a                                       ; $5f35: $47
    ld a, $05                                     ; $5f36: $3e $05
    ld c, a                                       ; $5f38: $4f
    rst $18                                       ; $5f39: $df
    ld c, [hl]                                    ; $5f3a: $4e
    ld a, [bc]                                    ; $5f3b: $0a
    ld a, $05                                     ; $5f3c: $3e $05
    ld [$c834], a                                 ; $5f3e: $ea $34 $c8
    ld hl, $5f83                                  ; $5f41: $21 $83 $5f
    ld de, $c600                                  ; $5f44: $11 $00 $c6
    ld c, $04                                     ; $5f47: $0e $04
    call Call_000_03eb                            ; $5f49: $cd $eb $03
    ld bc, $4f00                                  ; $5f4c: $01 $00 $4f
    rst $18                                       ; $5f4f: $df
    ld e, $02                                     ; $5f50: $1e $02
    ld bc, $ff01                                  ; $5f52: $01 $01 $ff
    rst $18                                       ; $5f55: $df
    ld e, $02                                     ; $5f56: $1e $02
    ld hl, $080d                                  ; $5f58: $21 $0d $08
    rst $18                                       ; $5f5b: $df
    db $10                                        ; $5f5c: $10
    db $10                                        ; $5f5d: $10
    ld a, $00                                     ; $5f5e: $3e $00
    rst $18                                       ; $5f60: $df
    ld e, $10                                     ; $5f61: $1e $10
    ld hl, $18c0                                  ; $5f63: $21 $c0 $18
    ld de, $1ec0                                  ; $5f66: $11 $c0 $1e
    rst $18                                       ; $5f69: $df
    jr nz, jr_034_5f7c                            ; $5f6a: $20 $10

    ld de, $c000                                  ; $5f6c: $11 $00 $c0
    rst $18                                       ; $5f6f: $df
    ld [hl+], a                                   ; $5f70: $22
    db $10                                        ; $5f71: $10
    ldh a, [$95]                                  ; $5f72: $f0 $95
    ld hl, $5f93                                  ; $5f74: $21 $93 $5f
    rst $18                                       ; $5f77: $df
    ld a, [de]                                    ; $5f78: $1a
    db $10                                        ; $5f79: $10
    ld a, $01                                     ; $5f7a: $3e $01

jr_034_5f7c:
    rst $18                                       ; $5f7c: $df
    ld [de], a                                    ; $5f7d: $12
    db $10                                        ; $5f7e: $10
    rst $18                                       ; $5f7f: $df
    jr nc, jr_034_5f92                            ; $5f80: $30 $10

    ret                                           ; $5f82: $c9


    nop                                           ; $5f83: $00
    ret nz                                        ; $5f84: $c0

    jr jr_034_5f87                                ; $5f85: $18 $00

jr_034_5f87:
    ret nz                                        ; $5f87: $c0

    ld e, $40                                     ; $5f88: $1e $40
    call z, $0000                                 ; $5f8a: $cc $00 $00
    inc a                                         ; $5f8d: $3c
    ld [bc], a                                    ; $5f8e: $02
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00

jr_034_5f92:
    nop                                           ; $5f92: $00
    or e                                          ; $5f93: $b3
    ld e, a                                       ; $5f94: $5f
    or h                                          ; $5f95: $b4
    ld e, a                                       ; $5f96: $5f
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
    ret                                           ; $5fb3: $c9


    call Call_000_2ed5                            ; $5fb4: $cd $d5 $2e
    ld e, $3e                                     ; $5fb7: $1e $3e
    add d                                         ; $5fb9: $82
    rst $18                                       ; $5fba: $df
    ld l, $10                                     ; $5fbb: $2e $10
    ret                                           ; $5fbd: $c9


Jump_034_5fbe:
    ld hl, $1500                                  ; $5fbe: $21 $00 $15
    rst $18                                       ; $5fc1: $df
    ld c, $0a                                     ; $5fc2: $0e $0a
    ld bc, $007f                                  ; $5fc4: $01 $7f $00
    rst $18                                       ; $5fc7: $df
    ld [hl], $0a                                  ; $5fc8: $36 $0a
    xor a                                         ; $5fca: $af
    ld bc, $1900                                  ; $5fcb: $01 $00 $19
    ld de, $1f00                                  ; $5fce: $11 $00 $1f
    rst $18                                       ; $5fd1: $df
    jr c, @+$0c                                   ; $5fd2: $38 $0a

    rst $18                                       ; $5fd4: $df
    inc a                                         ; $5fd5: $3c
    ld a, [bc]                                    ; $5fd6: $0a
    ld c, $08                                     ; $5fd7: $0e $08
    call Call_000_25af                            ; $5fd9: $cd $af $25
    call Call_000_2625                            ; $5fdc: $cd $25 $26
    ld a, $03                                     ; $5fdf: $3e $03
    ld b, a                                       ; $5fe1: $47
    ld a, $06                                     ; $5fe2: $3e $06
    rst $18                                       ; $5fe4: $df
    ld [hl-], a                                   ; $5fe5: $32
    ld a, [bc]                                    ; $5fe6: $0a
    ld a, $03                                     ; $5fe7: $3e $03
    rst $18                                       ; $5fe9: $df
    inc [hl]                                      ; $5fea: $34
    ld a, [bc]                                    ; $5feb: $0a
    ld a, $03                                     ; $5fec: $3e $03
    rst $18                                       ; $5fee: $df
    ld [$3e0a], sp                                ; $5fef: $08 $0a $3e
    ld [bc], a                                    ; $5ff2: $02
    ld b, a                                       ; $5ff3: $47
    ld a, $06                                     ; $5ff4: $3e $06
    rst $18                                       ; $5ff6: $df
    ld [hl-], a                                   ; $5ff7: $32
    ld a, [bc]                                    ; $5ff8: $0a
    ld a, $02                                     ; $5ff9: $3e $02
    rst $18                                       ; $5ffb: $df
    inc [hl]                                      ; $5ffc: $34
    ld a, [bc]                                    ; $5ffd: $0a
    ld a, $02                                     ; $5ffe: $3e $02
    rst $18                                       ; $6000: $df
    ld [$af0a], sp                                ; $6001: $08 $0a $af
    ld bc, $0b00                                  ; $6004: $01 $00 $0b
    ld de, $3b00                                  ; $6007: $11 $00 $3b
    rst $18                                       ; $600a: $df
    jr c, jr_034_6017                             ; $600b: $38 $0a

    rst $18                                       ; $600d: $df
    inc a                                         ; $600e: $3c
    ld a, [bc]                                    ; $600f: $0a
    push af                                       ; $6010: $f5
    ld a, $1e                                     ; $6011: $3e $1e
    rst $18                                       ; $6013: $df
    inc b                                         ; $6014: $04
    ld a, [bc]                                    ; $6015: $0a
    pop af                                        ; $6016: $f1

jr_034_6017:
    ret                                           ; $6017: $c9


    ld hl, $150c                                  ; $6018: $21 $0c $15
    rst $18                                       ; $601b: $df
    ld c, $0a                                     ; $601c: $0e $0a
    ld a, $03                                     ; $601e: $3e $03
    rst $18                                       ; $6020: $df
    ld a, [bc]                                    ; $6021: $0a
    ld a, [bc]                                    ; $6022: $0a
    push af                                       ; $6023: $f5
    ld a, $05                                     ; $6024: $3e $05
    rst $18                                       ; $6026: $df
    inc b                                         ; $6027: $04
    ld a, [bc]                                    ; $6028: $0a
    pop af                                        ; $6029: $f1
    rst $18                                       ; $602a: $df
    ld [de], a                                    ; $602b: $12
    ld a, [bc]                                    ; $602c: $0a
    rst $18                                       ; $602d: $df
    inc c                                         ; $602e: $0c
    ld a, [bc]                                    ; $602f: $0a
    push af                                       ; $6030: $f5
    ld a, $05                                     ; $6031: $3e $05
    rst $18                                       ; $6033: $df
    inc b                                         ; $6034: $04
    ld a, [bc]                                    ; $6035: $0a
    pop af                                        ; $6036: $f1
    and a                                         ; $6037: $a7
    jr z, jr_034_6050                             ; $6038: $28 $16

    rst $18                                       ; $603a: $df
    db $10                                        ; $603b: $10
    ld a, [bc]                                    ; $603c: $0a
    ld a, $03                                     ; $603d: $3e $03
    ld b, a                                       ; $603f: $47
    ld a, $05                                     ; $6040: $3e $05
    rst $18                                       ; $6042: $df
    ld [hl-], a                                   ; $6043: $32
    ld a, [bc]                                    ; $6044: $0a
    ld a, $03                                     ; $6045: $3e $03
    rst $18                                       ; $6047: $df
    inc [hl]                                      ; $6048: $34
    ld a, [bc]                                    ; $6049: $0a
    ld a, $02                                     ; $604a: $3e $02
    rst $18                                       ; $604c: $df
    ld [$c90a], sp                                ; $604d: $08 $0a $c9

jr_034_6050:
    ld a, $03                                     ; $6050: $3e $03
    rst $18                                       ; $6052: $df
    ld [$cd0a], sp                                ; $6053: $08 $0a $cd
    or c                                          ; $6056: $b1
    ld h, h                                       ; $6057: $64
    ret                                           ; $6058: $c9


    ld hl, $1502                                  ; $6059: $21 $02 $15
    rst $18                                       ; $605c: $df
    ld c, $0a                                     ; $605d: $0e $0a
    ld a, $02                                     ; $605f: $3e $02
    rst $18                                       ; $6061: $df
    ld [$210a], sp                                ; $6062: $08 $0a $21
    inc bc                                        ; $6065: $03
    dec d                                         ; $6066: $15
    rst $18                                       ; $6067: $df
    ld c, $0a                                     ; $6068: $0e $0a
    ld a, $03                                     ; $606a: $3e $03
    ld b, a                                       ; $606c: $47
    ld a, $06                                     ; $606d: $3e $06
    rst $18                                       ; $606f: $df
    ld [hl-], a                                   ; $6070: $32
    ld a, [bc]                                    ; $6071: $0a
    ld a, $03                                     ; $6072: $3e $03
    rst $18                                       ; $6074: $df
    inc [hl]                                      ; $6075: $34
    ld a, [bc]                                    ; $6076: $0a
    ld a, $03                                     ; $6077: $3e $03
    rst $18                                       ; $6079: $df
    ld [$3e0a], sp                                ; $607a: $08 $0a $3e
    nop                                           ; $607d: $00
    ld b, a                                       ; $607e: $47
    ld a, $02                                     ; $607f: $3e $02
    rst $18                                       ; $6081: $df
    ld l, $0a                                     ; $6082: $2e $0a
    ld a, $02                                     ; $6084: $3e $02
    ld b, a                                       ; $6086: $47
    ld a, $06                                     ; $6087: $3e $06
    rst $18                                       ; $6089: $df
    ld [hl-], a                                   ; $608a: $32
    ld a, [bc]                                    ; $608b: $0a
    ld a, $02                                     ; $608c: $3e $02
    rst $18                                       ; $608e: $df
    inc [hl]                                      ; $608f: $34
    ld a, [bc]                                    ; $6090: $0a
    ld a, $02                                     ; $6091: $3e $02
    rst $18                                       ; $6093: $df
    ld [$3e0a], sp                                ; $6094: $08 $0a $3e
    inc bc                                        ; $6097: $03
    ld b, a                                       ; $6098: $47
    ld a, $07                                     ; $6099: $3e $07
    rst $18                                       ; $609b: $df
    ld [hl-], a                                   ; $609c: $32
    ld a, [bc]                                    ; $609d: $0a
    ld a, $03                                     ; $609e: $3e $03
    rst $18                                       ; $60a0: $df
    inc [hl]                                      ; $60a1: $34
    ld a, [bc]                                    ; $60a2: $0a
    ld a, $03                                     ; $60a3: $3e $03
    rst $18                                       ; $60a5: $df
    ld [$3e0a], sp                                ; $60a6: $08 $0a $3e
    ld [bc], a                                    ; $60a9: $02
    ld b, a                                       ; $60aa: $47
    ld a, $06                                     ; $60ab: $3e $06
    rst $18                                       ; $60ad: $df
    ld [hl-], a                                   ; $60ae: $32
    ld a, [bc]                                    ; $60af: $0a
    ld a, $02                                     ; $60b0: $3e $02
    rst $18                                       ; $60b2: $df
    inc [hl]                                      ; $60b3: $34
    ld a, [bc]                                    ; $60b4: $0a
    ld a, $02                                     ; $60b5: $3e $02
    rst $18                                       ; $60b7: $df
    ld [$3e0a], sp                                ; $60b8: $08 $0a $3e
    inc bc                                        ; $60bb: $03
    ld b, a                                       ; $60bc: $47
    ld a, $06                                     ; $60bd: $3e $06
    rst $18                                       ; $60bf: $df
    ld [hl-], a                                   ; $60c0: $32
    ld a, [bc]                                    ; $60c1: $0a
    ld a, $03                                     ; $60c2: $3e $03
    rst $18                                       ; $60c4: $df
    inc [hl]                                      ; $60c5: $34
    ld a, [bc]                                    ; $60c6: $0a
    ld a, $03                                     ; $60c7: $3e $03
    rst $18                                       ; $60c9: $df
    ld [$3e0a], sp                                ; $60ca: $08 $0a $3e
    inc bc                                        ; $60cd: $03
    ld b, a                                       ; $60ce: $47
    ld a, $05                                     ; $60cf: $3e $05
    rst $18                                       ; $60d1: $df
    ld [hl-], a                                   ; $60d2: $32
    ld a, [bc]                                    ; $60d3: $0a
    ld a, $03                                     ; $60d4: $3e $03
    rst $18                                       ; $60d6: $df
    inc [hl]                                      ; $60d7: $34
    ld a, [bc]                                    ; $60d8: $0a
    ld a, $03                                     ; $60d9: $3e $03
    rst $18                                       ; $60db: $df
    ld a, [bc]                                    ; $60dc: $0a
    ld a, [bc]                                    ; $60dd: $0a
    push af                                       ; $60de: $f5
    ld a, $05                                     ; $60df: $3e $05
    rst $18                                       ; $60e1: $df
    inc b                                         ; $60e2: $04
    ld a, [bc]                                    ; $60e3: $0a
    pop af                                        ; $60e4: $f1
    rst $18                                       ; $60e5: $df
    ld [de], a                                    ; $60e6: $12
    ld a, [bc]                                    ; $60e7: $0a
    rst $18                                       ; $60e8: $df
    inc c                                         ; $60e9: $0c
    ld a, [bc]                                    ; $60ea: $0a
    push af                                       ; $60eb: $f5
    ld a, $05                                     ; $60ec: $3e $05
    rst $18                                       ; $60ee: $df
    inc b                                         ; $60ef: $04
    ld a, [bc]                                    ; $60f0: $0a
    pop af                                        ; $60f1: $f1
    and a                                         ; $60f2: $a7
    jr nz, jr_034_6108                            ; $60f3: $20 $13

    ld a, $03                                     ; $60f5: $3e $03
    ld b, a                                       ; $60f7: $47
    ld a, $05                                     ; $60f8: $3e $05
    rst $18                                       ; $60fa: $df
    ld [hl-], a                                   ; $60fb: $32
    ld a, [bc]                                    ; $60fc: $0a
    ld a, $03                                     ; $60fd: $3e $03
    rst $18                                       ; $60ff: $df
    inc [hl]                                      ; $6100: $34
    ld a, [bc]                                    ; $6101: $0a
    ld a, $02                                     ; $6102: $3e $02
    rst $18                                       ; $6104: $df
    ld [$c90a], sp                                ; $6105: $08 $0a $c9

jr_034_6108:
    rst $18                                       ; $6108: $df
    db $10                                        ; $6109: $10
    ld a, [bc]                                    ; $610a: $0a
    ld a, $03                                     ; $610b: $3e $03
    rst $18                                       ; $610d: $df
    ld [$cd0a], sp                                ; $610e: $08 $0a $cd
    or c                                          ; $6111: $b1
    ld h, h                                       ; $6112: $64
    ret                                           ; $6113: $c9


Call_034_6114:
    ld c, $08                                     ; $6114: $0e $08
    call Call_000_25af                            ; $6116: $cd $af $25
    call Call_000_2625                            ; $6119: $cd $25 $26
    ld a, $03                                     ; $611c: $3e $03
    ld b, a                                       ; $611e: $47
    ld a, $06                                     ; $611f: $3e $06
    rst $18                                       ; $6121: $df
    ld [hl-], a                                   ; $6122: $32
    ld a, [bc]                                    ; $6123: $0a
    ld a, $03                                     ; $6124: $3e $03
    rst $18                                       ; $6126: $df
    inc [hl]                                      ; $6127: $34
    ld a, [bc]                                    ; $6128: $0a
    ld a, $00                                     ; $6129: $3e $00
    ld b, a                                       ; $612b: $47
    ld a, $03                                     ; $612c: $3e $03
    rst $18                                       ; $612e: $df
    ld l, $0a                                     ; $612f: $2e $0a
    ld hl, $150f                                  ; $6131: $21 $0f $15
    rst $18                                       ; $6134: $df
    ld c, $0a                                     ; $6135: $0e $0a
    ld a, $03                                     ; $6137: $3e $03
    rst $18                                       ; $6139: $df
    ld [$3e0a], sp                                ; $613a: $08 $0a $3e
    ld [bc], a                                    ; $613d: $02
    ld b, a                                       ; $613e: $47
    ld a, $06                                     ; $613f: $3e $06
    rst $18                                       ; $6141: $df
    ld [hl-], a                                   ; $6142: $32
    ld a, [bc]                                    ; $6143: $0a
    ld a, $02                                     ; $6144: $3e $02
    rst $18                                       ; $6146: $df
    inc [hl]                                      ; $6147: $34
    ld a, [bc]                                    ; $6148: $0a
    ld a, $02                                     ; $6149: $3e $02
    ld b, $40                                     ; $614b: $06 $40
    rst $18                                       ; $614d: $df
    inc l                                         ; $614e: $2c
    ld a, [bc]                                    ; $614f: $0a
    ld a, $02                                     ; $6150: $3e $02
    rst $18                                       ; $6152: $df
    ld [$e70a], sp                                ; $6153: $08 $0a $e7
    ld b, b                                       ; $6156: $40
    dec de                                        ; $6157: $1b
    ret                                           ; $6158: $c9


Call_034_6159:
    ld c, $08                                     ; $6159: $0e $08
    call Call_000_25af                            ; $615b: $cd $af $25
    call Call_000_2625                            ; $615e: $cd $25 $26
    ld a, $03                                     ; $6161: $3e $03
    ld b, a                                       ; $6163: $47
    ld a, $07                                     ; $6164: $3e $07
    rst $18                                       ; $6166: $df
    ld [hl-], a                                   ; $6167: $32
    ld a, [bc]                                    ; $6168: $0a
    ld a, $03                                     ; $6169: $3e $03
    rst $18                                       ; $616b: $df
    inc [hl]                                      ; $616c: $34
    ld a, [bc]                                    ; $616d: $0a
    ld a, $00                                     ; $616e: $3e $00
    ld b, a                                       ; $6170: $47
    ld a, $03                                     ; $6171: $3e $03
    rst $18                                       ; $6173: $df
    ld l, $0a                                     ; $6174: $2e $0a
    ld hl, $1511                                  ; $6176: $21 $11 $15
    rst $18                                       ; $6179: $df
    ld c, $0a                                     ; $617a: $0e $0a
    ld a, $03                                     ; $617c: $3e $03
    rst $18                                       ; $617e: $df
    ld [$3e0a], sp                                ; $617f: $08 $0a $3e
    ld [bc], a                                    ; $6182: $02
    ld b, a                                       ; $6183: $47
    ld a, $07                                     ; $6184: $3e $07
    rst $18                                       ; $6186: $df
    ld [hl-], a                                   ; $6187: $32
    ld a, [bc]                                    ; $6188: $0a
    ld a, $02                                     ; $6189: $3e $02
    rst $18                                       ; $618b: $df
    inc [hl]                                      ; $618c: $34
    ld a, [bc]                                    ; $618d: $0a
    ld a, $02                                     ; $618e: $3e $02
    rst $18                                       ; $6190: $df
    ld [$3e0a], sp                                ; $6191: $08 $0a $3e
    ld [bc], a                                    ; $6194: $02
    ld b, a                                       ; $6195: $47
    ld a, $06                                     ; $6196: $3e $06
    rst $18                                       ; $6198: $df
    ld [hl-], a                                   ; $6199: $32
    ld a, [bc]                                    ; $619a: $0a
    ld a, $02                                     ; $619b: $3e $02
    rst $18                                       ; $619d: $df
    inc [hl]                                      ; $619e: $34
    ld a, [bc]                                    ; $619f: $0a
    ld a, $02                                     ; $61a0: $3e $02
    rst $18                                       ; $61a2: $df
    ld [$3e0a], sp                                ; $61a3: $08 $0a $3e
    inc bc                                        ; $61a6: $03
    ld b, a                                       ; $61a7: $47
    ld a, $05                                     ; $61a8: $3e $05
    rst $18                                       ; $61aa: $df
    ld [hl-], a                                   ; $61ab: $32
    ld a, [bc]                                    ; $61ac: $0a
    ld a, $03                                     ; $61ad: $3e $03
    rst $18                                       ; $61af: $df
    inc [hl]                                      ; $61b0: $34
    ld a, [bc]                                    ; $61b1: $0a
    call Call_034_6586                            ; $61b2: $cd $86 $65
    ld a, $0e                                     ; $61b5: $3e $0e
    ld [$c441], a                                 ; $61b7: $ea $41 $c4
    ret                                           ; $61ba: $c9


Call_034_61bb:
    ld c, $08                                     ; $61bb: $0e $08
    call Call_000_25af                            ; $61bd: $cd $af $25
    call Call_000_2625                            ; $61c0: $cd $25 $26
    ld a, $03                                     ; $61c3: $3e $03
    ld b, a                                       ; $61c5: $47
    ld a, $07                                     ; $61c6: $3e $07
    rst $18                                       ; $61c8: $df
    ld [hl-], a                                   ; $61c9: $32
    ld a, [bc]                                    ; $61ca: $0a
    ld a, $03                                     ; $61cb: $3e $03
    rst $18                                       ; $61cd: $df
    inc [hl]                                      ; $61ce: $34
    ld a, [bc]                                    ; $61cf: $0a
    ld a, $00                                     ; $61d0: $3e $00
    ld b, a                                       ; $61d2: $47
    ld a, $03                                     ; $61d3: $3e $03
    rst $18                                       ; $61d5: $df
    ld l, $0a                                     ; $61d6: $2e $0a
    ld hl, $1514                                  ; $61d8: $21 $14 $15
    rst $18                                       ; $61db: $df
    ld c, $0a                                     ; $61dc: $0e $0a
    ld a, $03                                     ; $61de: $3e $03
    rst $18                                       ; $61e0: $df
    ld [$3e0a], sp                                ; $61e1: $08 $0a $3e
    ld [bc], a                                    ; $61e4: $02
    ld b, a                                       ; $61e5: $47
    ld a, $05                                     ; $61e6: $3e $05
    rst $18                                       ; $61e8: $df
    ld [hl-], a                                   ; $61e9: $32
    ld a, [bc]                                    ; $61ea: $0a
    ld a, $02                                     ; $61eb: $3e $02
    rst $18                                       ; $61ed: $df
    inc [hl]                                      ; $61ee: $34
    ld a, [bc]                                    ; $61ef: $0a
    ld a, $02                                     ; $61f0: $3e $02
    rst $18                                       ; $61f2: $df
    ld [$3e0a], sp                                ; $61f3: $08 $0a $3e
    nop                                           ; $61f6: $00
    ld b, a                                       ; $61f7: $47
    ld a, $02                                     ; $61f8: $3e $02
    rst $18                                       ; $61fa: $df
    ld l, $0a                                     ; $61fb: $2e $0a
    ld a, $00                                     ; $61fd: $3e $00
    ld b, a                                       ; $61ff: $47
    ld a, $03                                     ; $6200: $3e $03
    rst $18                                       ; $6202: $df
    ld l, $0a                                     ; $6203: $2e $0a
    ld a, $02                                     ; $6205: $3e $02
    ld b, a                                       ; $6207: $47
    ld a, $07                                     ; $6208: $3e $07
    rst $18                                       ; $620a: $df
    ld [hl-], a                                   ; $620b: $32
    ld a, [bc]                                    ; $620c: $0a
    ld a, $02                                     ; $620d: $3e $02
    rst $18                                       ; $620f: $df
    inc [hl]                                      ; $6210: $34
    ld a, [bc]                                    ; $6211: $0a
    ld a, $02                                     ; $6212: $3e $02
    rst $18                                       ; $6214: $df
    ld [$3e0a], sp                                ; $6215: $08 $0a $3e
    ret nz                                        ; $6218: $c0

    ld b, a                                       ; $6219: $47
    ld a, $00                                     ; $621a: $3e $00
    rst $18                                       ; $621c: $df
    ld l, $0a                                     ; $621d: $2e $0a
    ld a, $03                                     ; $621f: $3e $03
    ld b, $c0                                     ; $6221: $06 $c0
    ld de, $0200                                  ; $6223: $11 $00 $02
    rst $18                                       ; $6226: $df
    jr z, jr_034_6233                             ; $6227: $28 $0a

    ld a, $03                                     ; $6229: $3e $03
    rst $18                                       ; $622b: $df
    ld e, $0a                                     ; $622c: $1e $0a
    rst $18                                       ; $622e: $df
    inc e                                         ; $622f: $1c
    db $10                                        ; $6230: $10
    rst $18                                       ; $6231: $df
    inc h                                         ; $6232: $24

jr_034_6233:
    db $10                                        ; $6233: $10
    ld a, $28                                     ; $6234: $3e $28
    ld [$c82c], a                                 ; $6236: $ea $2c $c8
    ld a, $28                                     ; $6239: $3e $28
    ld b, a                                       ; $623b: $47
    ld a, $0d                                     ; $623c: $3e $0d
    ld c, a                                       ; $623e: $4f
    rst $18                                       ; $623f: $df
    ld c, [hl]                                    ; $6240: $4e
    ld a, [bc]                                    ; $6241: $0a
    ld a, $06                                     ; $6242: $3e $06
    ld [$c834], a                                 ; $6244: $ea $34 $c8
    ld hl, $6289                                  ; $6247: $21 $89 $62
    ld de, $c600                                  ; $624a: $11 $00 $c6
    ld c, $04                                     ; $624d: $0e $04
    call Call_000_03eb                            ; $624f: $cd $eb $03
    ld bc, $4f00                                  ; $6252: $01 $00 $4f
    rst $18                                       ; $6255: $df
    ld e, $02                                     ; $6256: $1e $02
    ld bc, $ff01                                  ; $6258: $01 $01 $ff
    rst $18                                       ; $625b: $df
    ld e, $02                                     ; $625c: $1e $02
    ld hl, $080d                                  ; $625e: $21 $0d $08
    rst $18                                       ; $6261: $df
    db $10                                        ; $6262: $10
    db $10                                        ; $6263: $10
    ld a, $00                                     ; $6264: $3e $00
    rst $18                                       ; $6266: $df
    ld e, $10                                     ; $6267: $1e $10
    ld hl, $18c0                                  ; $6269: $21 $c0 $18
    ld de, $1ec0                                  ; $626c: $11 $c0 $1e
    rst $18                                       ; $626f: $df
    jr nz, jr_034_6282                            ; $6270: $20 $10

    ld de, $c000                                  ; $6272: $11 $00 $c0
    rst $18                                       ; $6275: $df
    ld [hl+], a                                   ; $6276: $22
    db $10                                        ; $6277: $10
    ldh a, [$95]                                  ; $6278: $f0 $95
    ld hl, $6299                                  ; $627a: $21 $99 $62
    rst $18                                       ; $627d: $df
    ld a, [de]                                    ; $627e: $1a
    db $10                                        ; $627f: $10
    ld a, $01                                     ; $6280: $3e $01

jr_034_6282:
    rst $18                                       ; $6282: $df
    ld [de], a                                    ; $6283: $12
    db $10                                        ; $6284: $10
    rst $18                                       ; $6285: $df
    jr nc, jr_034_6298                            ; $6286: $30 $10

    ret                                           ; $6288: $c9


    nop                                           ; $6289: $00
    ret nz                                        ; $628a: $c0

    jr jr_034_628d                                ; $628b: $18 $00

jr_034_628d:
    ret nz                                        ; $628d: $c0

    ld e, $40                                     ; $628e: $1e $40
    call z, $0103                                 ; $6290: $cc $03 $01
    add hl, sp                                    ; $6293: $39
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    nop                                           ; $6297: $00

jr_034_6298:
    nop                                           ; $6298: $00
    cp c                                          ; $6299: $b9
    ld h, d                                       ; $629a: $62
    cp d                                          ; $629b: $ba
    ld h, d                                       ; $629c: $62
    nop                                           ; $629d: $00
    nop                                           ; $629e: $00
    nop                                           ; $629f: $00
    nop                                           ; $62a0: $00
    nop                                           ; $62a1: $00
    nop                                           ; $62a2: $00
    nop                                           ; $62a3: $00
    nop                                           ; $62a4: $00
    nop                                           ; $62a5: $00
    nop                                           ; $62a6: $00
    nop                                           ; $62a7: $00
    nop                                           ; $62a8: $00
    nop                                           ; $62a9: $00
    nop                                           ; $62aa: $00
    nop                                           ; $62ab: $00
    nop                                           ; $62ac: $00
    nop                                           ; $62ad: $00
    nop                                           ; $62ae: $00
    nop                                           ; $62af: $00
    nop                                           ; $62b0: $00
    nop                                           ; $62b1: $00
    nop                                           ; $62b2: $00
    nop                                           ; $62b3: $00
    nop                                           ; $62b4: $00
    nop                                           ; $62b5: $00
    nop                                           ; $62b6: $00
    nop                                           ; $62b7: $00
    nop                                           ; $62b8: $00
    ret                                           ; $62b9: $c9


    ld a, $82                                     ; $62ba: $3e $82
    rst $18                                       ; $62bc: $df
    ld l, $10                                     ; $62bd: $2e $10
    ret                                           ; $62bf: $c9


Jump_034_62c0:
    ld hl, $1517                                  ; $62c0: $21 $17 $15
    rst $18                                       ; $62c3: $df
    ld c, $0a                                     ; $62c4: $0e $0a
    ld a, $03                                     ; $62c6: $3e $03
    ld bc, $1700                                  ; $62c8: $01 $00 $17
    ld de, $1f00                                  ; $62cb: $11 $00 $1f
    rst $18                                       ; $62ce: $df
    jr nz, jr_034_62db                            ; $62cf: $20 $0a

    ld c, $08                                     ; $62d1: $0e $08
    call Call_000_25af                            ; $62d3: $cd $af $25
    call Call_000_2625                            ; $62d6: $cd $25 $26
    ld a, $03                                     ; $62d9: $3e $03

jr_034_62db:
    ld de, $ff80                                  ; $62db: $11 $80 $ff
    rst $18                                       ; $62de: $df
    ld b, b                                       ; $62df: $40
    ld a, [bc]                                    ; $62e0: $0a
    ld a, $03                                     ; $62e1: $3e $03
    rst $18                                       ; $62e3: $df
    ld b, d                                       ; $62e4: $42
    ld a, [bc]                                    ; $62e5: $0a
    ld a, $02                                     ; $62e6: $3e $02
    ld b, a                                       ; $62e8: $47
    ld a, $03                                     ; $62e9: $3e $03
    rst $18                                       ; $62eb: $df
    ld l, $0a                                     ; $62ec: $2e $0a
    ld a, $03                                     ; $62ee: $3e $03
    rst $18                                       ; $62f0: $df
    ld [$3e0a], sp                                ; $62f1: $08 $0a $3e
    inc bc                                        ; $62f4: $03
    ld b, a                                       ; $62f5: $47
    ld a, $02                                     ; $62f6: $3e $02
    rst $18                                       ; $62f8: $df
    ld l, $0a                                     ; $62f9: $2e $0a
    ld a, $02                                     ; $62fb: $3e $02
    ld de, $ff80                                  ; $62fd: $11 $80 $ff
    rst $18                                       ; $6300: $df
    ld b, b                                       ; $6301: $40
    ld a, [bc]                                    ; $6302: $0a
    ld a, $02                                     ; $6303: $3e $02
    rst $18                                       ; $6305: $df
    ld b, d                                       ; $6306: $42
    ld a, [bc]                                    ; $6307: $0a
    ld a, $02                                     ; $6308: $3e $02
    rst $18                                       ; $630a: $df
    ld [$f50a], sp                                ; $630b: $08 $0a $f5
    ld a, $1e                                     ; $630e: $3e $1e
    rst $18                                       ; $6310: $df
    inc b                                         ; $6311: $04
    ld a, [bc]                                    ; $6312: $0a
    pop af                                        ; $6313: $f1
    ld a, $02                                     ; $6314: $3e $02
    ld b, a                                       ; $6316: $47
    ld a, $05                                     ; $6317: $3e $05
    rst $18                                       ; $6319: $df
    ld [hl-], a                                   ; $631a: $32
    ld a, [bc]                                    ; $631b: $0a
    ld a, $03                                     ; $631c: $3e $03
    ld b, a                                       ; $631e: $47
    ld a, $05                                     ; $631f: $3e $05
    rst $18                                       ; $6321: $df
    ld [hl-], a                                   ; $6322: $32
    ld a, [bc]                                    ; $6323: $0a
    ld a, $03                                     ; $6324: $3e $03
    rst $18                                       ; $6326: $df
    inc [hl]                                      ; $6327: $34
    ld a, [bc]                                    ; $6328: $0a
    push af                                       ; $6329: $f5
    ld a, $1e                                     ; $632a: $3e $1e
    rst $18                                       ; $632c: $df
    inc b                                         ; $632d: $04
    ld a, [bc]                                    ; $632e: $0a
    pop af                                        ; $632f: $f1
    ld a, $00                                     ; $6330: $3e $00
    ld b, a                                       ; $6332: $47
    ld a, $02                                     ; $6333: $3e $02
    rst $18                                       ; $6335: $df
    ld l, $0a                                     ; $6336: $2e $0a
    ld a, $00                                     ; $6338: $3e $00
    ld b, a                                       ; $633a: $47
    ld a, $03                                     ; $633b: $3e $03
    rst $18                                       ; $633d: $df
    ld l, $0a                                     ; $633e: $2e $0a
    ld a, $02                                     ; $6340: $3e $02
    ld b, a                                       ; $6342: $47
    ld a, $05                                     ; $6343: $3e $05
    rst $18                                       ; $6345: $df
    ld [hl-], a                                   ; $6346: $32
    ld a, [bc]                                    ; $6347: $0a
    ld a, $02                                     ; $6348: $3e $02
    rst $18                                       ; $634a: $df
    inc [hl]                                      ; $634b: $34
    ld a, [bc]                                    ; $634c: $0a
    ld a, $02                                     ; $634d: $3e $02
    rst $18                                       ; $634f: $df
    ld [$f50a], sp                                ; $6350: $08 $0a $f5
    ld a, $0a                                     ; $6353: $3e $0a
    rst $18                                       ; $6355: $df
    inc b                                         ; $6356: $04
    ld a, [bc]                                    ; $6357: $0a
    pop af                                        ; $6358: $f1
    call Call_034_6586                            ; $6359: $cd $86 $65
    ld a, $0f                                     ; $635c: $3e $0f
    ld [$c441], a                                 ; $635e: $ea $41 $c4
    ret                                           ; $6361: $c9


Jump_034_6362:
    ld a, $03                                     ; $6362: $3e $03
    ld bc, $1700                                  ; $6364: $01 $00 $17
    ld de, $1f00                                  ; $6367: $11 $00 $1f
    rst $18                                       ; $636a: $df
    jr nz, jr_034_6377                            ; $636b: $20 $0a

    ld a, $00                                     ; $636d: $3e $00
    ld b, a                                       ; $636f: $47
    ld a, $02                                     ; $6370: $3e $02
    rst $18                                       ; $6372: $df
    ld l, $0a                                     ; $6373: $2e $0a
    ld a, $00                                     ; $6375: $3e $00

jr_034_6377:
    ld b, a                                       ; $6377: $47
    ld a, $03                                     ; $6378: $3e $03
    rst $18                                       ; $637a: $df
    ld l, $0a                                     ; $637b: $2e $0a
    rst $20                                       ; $637d: $e7
    ld b, b                                       ; $637e: $40
    ld a, [de]                                    ; $637f: $1a
    ld b, $00                                     ; $6380: $06 $00
    ld c, $fa                                     ; $6382: $0e $fa
    rst $18                                       ; $6384: $df
    ld c, [hl]                                    ; $6385: $4e
    ld a, [bc]                                    ; $6386: $0a
    rst $18                                       ; $6387: $df
    inc [hl]                                      ; $6388: $34
    ld [bc], a                                    ; $6389: $02
    ld c, $08                                     ; $638a: $0e $08
    call Call_000_25af                            ; $638c: $cd $af $25
    call Call_000_2625                            ; $638f: $cd $25 $26
    ld hl, $151a                                  ; $6392: $21 $1a $15
    rst $18                                       ; $6395: $df
    ld c, $0a                                     ; $6396: $0e $0a
    ld a, $02                                     ; $6398: $3e $02
    rst $18                                       ; $639a: $df
    ld [$3e0a], sp                                ; $639b: $08 $0a $3e
    inc bc                                        ; $639e: $03
    ld b, a                                       ; $639f: $47
    ld a, $02                                     ; $63a0: $3e $02
    rst $18                                       ; $63a2: $df
    ld l, $0a                                     ; $63a3: $2e $0a
    ld a, $02                                     ; $63a5: $3e $02
    ld b, a                                       ; $63a7: $47
    ld a, $03                                     ; $63a8: $3e $03
    rst $18                                       ; $63aa: $df
    ld l, $0a                                     ; $63ab: $2e $0a
    ld a, $02                                     ; $63ad: $3e $02
    ld b, a                                       ; $63af: $47
    ld a, $05                                     ; $63b0: $3e $05
    rst $18                                       ; $63b2: $df
    ld [hl-], a                                   ; $63b3: $32
    ld a, [bc]                                    ; $63b4: $0a
    ld a, $03                                     ; $63b5: $3e $03
    ld b, a                                       ; $63b7: $47
    ld a, $05                                     ; $63b8: $3e $05
    rst $18                                       ; $63ba: $df
    ld [hl-], a                                   ; $63bb: $32
    ld a, [bc]                                    ; $63bc: $0a
    ld a, $03                                     ; $63bd: $3e $03
    rst $18                                       ; $63bf: $df
    inc [hl]                                      ; $63c0: $34
    ld a, [bc]                                    ; $63c1: $0a
    ld a, $00                                     ; $63c2: $3e $00
    ld b, $01                                     ; $63c4: $06 $01
    rst $18                                       ; $63c6: $df
    ld a, [hl+]                                   ; $63c7: $2a
    ld a, [bc]                                    ; $63c8: $0a
    ld a, $00                                     ; $63c9: $3e $00
    ld b, $00                                     ; $63cb: $06 $00
    ld de, $0200                                  ; $63cd: $11 $00 $02
    rst $18                                       ; $63d0: $df
    jr z, jr_034_63dd                             ; $63d1: $28 $0a

    ld a, $00                                     ; $63d3: $3e $00
    rst $18                                       ; $63d5: $df
    ld e, $0a                                     ; $63d6: $1e $0a
    ld a, $00                                     ; $63d8: $3e $00
    ld b, $00                                     ; $63da: $06 $00
    rst $18                                       ; $63dc: $df

jr_034_63dd:
    ld a, [hl+]                                   ; $63dd: $2a
    ld a, [bc]                                    ; $63de: $0a
    ld a, $02                                     ; $63df: $3e $02
    ld bc, $1900                                  ; $63e1: $01 $00 $19
    ld de, $2900                                  ; $63e4: $11 $00 $29
    rst $18                                       ; $63e7: $df
    ld [hl+], a                                   ; $63e8: $22
    ld a, [bc]                                    ; $63e9: $0a
    ld a, $03                                     ; $63ea: $3e $03
    ld bc, $1900                                  ; $63ec: $01 $00 $19
    ld de, $2100                                  ; $63ef: $11 $00 $21
    rst $18                                       ; $63f2: $df
    ld [hl+], a                                   ; $63f3: $22
    ld a, [bc]                                    ; $63f4: $0a
    ld a, $03                                     ; $63f5: $3e $03
    rst $18                                       ; $63f7: $df
    ld e, $0a                                     ; $63f8: $1e $0a
    ld a, $03                                     ; $63fa: $3e $03
    ld bc, $1900                                  ; $63fc: $01 $00 $19
    ld de, $2900                                  ; $63ff: $11 $00 $29
    rst $18                                       ; $6402: $df
    ld [hl+], a                                   ; $6403: $22
    ld a, [bc]                                    ; $6404: $0a
    push af                                       ; $6405: $f5
    ld a, $3c                                     ; $6406: $3e $3c
    rst $18                                       ; $6408: $df
    inc b                                         ; $6409: $04
    ld a, [bc]                                    ; $640a: $0a
    pop af                                        ; $640b: $f1
    ld a, $01                                     ; $640c: $3e $01
    ld [$c441], a                                 ; $640e: $ea $41 $c4
    ret                                           ; $6411: $c9


Jump_034_6412:
    ld a, $00                                     ; $6412: $3e $00
    ld b, a                                       ; $6414: $47
    ld a, $02                                     ; $6415: $3e $02
    rst $18                                       ; $6417: $df
    ld l, $0a                                     ; $6418: $2e $0a
    ld a, $00                                     ; $641a: $3e $00
    ld b, a                                       ; $641c: $47
    ld a, $03                                     ; $641d: $3e $03
    rst $18                                       ; $641f: $df
    ld l, $0a                                     ; $6420: $2e $0a
    rst $20                                       ; $6422: $e7
    ld b, b                                       ; $6423: $40
    ld a, [de]                                    ; $6424: $1a
    ld b, $00                                     ; $6425: $06 $00
    ld c, $fa                                     ; $6427: $0e $fa
    rst $18                                       ; $6429: $df
    ld c, [hl]                                    ; $642a: $4e
    ld a, [bc]                                    ; $642b: $0a
    rst $18                                       ; $642c: $df
    inc [hl]                                      ; $642d: $34
    ld [bc], a                                    ; $642e: $02
    ld c, $08                                     ; $642f: $0e $08
    call Call_000_25af                            ; $6431: $cd $af $25
    call Call_000_2625                            ; $6434: $cd $25 $26
    ld a, $03                                     ; $6437: $3e $03
    ld b, a                                       ; $6439: $47
    ld a, $02                                     ; $643a: $3e $02
    rst $18                                       ; $643c: $df
    ld l, $0a                                     ; $643d: $2e $0a
    ld a, $02                                     ; $643f: $3e $02
    ld b, a                                       ; $6441: $47
    ld a, $03                                     ; $6442: $3e $03
    rst $18                                       ; $6444: $df
    ld l, $0a                                     ; $6445: $2e $0a
    ld a, $02                                     ; $6447: $3e $02
    ld b, a                                       ; $6449: $47
    ld a, $06                                     ; $644a: $3e $06
    rst $18                                       ; $644c: $df
    ld [hl-], a                                   ; $644d: $32
    ld a, [bc]                                    ; $644e: $0a
    ld a, $02                                     ; $644f: $3e $02
    rst $18                                       ; $6451: $df
    inc [hl]                                      ; $6452: $34
    ld a, [bc]                                    ; $6453: $0a
    ld a, $03                                     ; $6454: $3e $03
    ld b, a                                       ; $6456: $47
    ld a, $05                                     ; $6457: $3e $05
    rst $18                                       ; $6459: $df
    ld [hl-], a                                   ; $645a: $32
    ld a, [bc]                                    ; $645b: $0a
    ld a, $03                                     ; $645c: $3e $03
    rst $18                                       ; $645e: $df
    inc [hl]                                      ; $645f: $34
    ld a, [bc]                                    ; $6460: $0a
    ld a, $00                                     ; $6461: $3e $00
    ld b, $01                                     ; $6463: $06 $01
    rst $18                                       ; $6465: $df
    ld a, [hl+]                                   ; $6466: $2a
    ld a, [bc]                                    ; $6467: $0a
    ld a, $00                                     ; $6468: $3e $00
    ld b, $00                                     ; $646a: $06 $00
    ld de, $0200                                  ; $646c: $11 $00 $02
    rst $18                                       ; $646f: $df
    jr z, jr_034_647c                             ; $6470: $28 $0a

    ld a, $00                                     ; $6472: $3e $00
    rst $18                                       ; $6474: $df
    ld e, $0a                                     ; $6475: $1e $0a
    ld a, $00                                     ; $6477: $3e $00
    ld b, $00                                     ; $6479: $06 $00
    rst $18                                       ; $647b: $df

jr_034_647c:
    ld a, [hl+]                                   ; $647c: $2a
    ld a, [bc]                                    ; $647d: $0a
    ld a, $03                                     ; $647e: $3e $03
    ld bc, $1900                                  ; $6480: $01 $00 $19
    ld de, $2100                                  ; $6483: $11 $00 $21
    rst $18                                       ; $6486: $df
    ld [hl+], a                                   ; $6487: $22
    ld a, [bc]                                    ; $6488: $0a
    ld a, $03                                     ; $6489: $3e $03
    rst $18                                       ; $648b: $df
    ld e, $0a                                     ; $648c: $1e $0a
    ld a, $03                                     ; $648e: $3e $03
    ld bc, $1900                                  ; $6490: $01 $00 $19
    ld de, $2900                                  ; $6493: $11 $00 $29
    rst $18                                       ; $6496: $df
    ld [hl+], a                                   ; $6497: $22
    ld a, [bc]                                    ; $6498: $0a
    ld a, $02                                     ; $6499: $3e $02
    ld bc, $1900                                  ; $649b: $01 $00 $19
    ld de, $2900                                  ; $649e: $11 $00 $29
    rst $18                                       ; $64a1: $df
    ld [hl+], a                                   ; $64a2: $22
    ld a, [bc]                                    ; $64a3: $0a
    push af                                       ; $64a4: $f5
    ld a, $3c                                     ; $64a5: $3e $3c
    rst $18                                       ; $64a7: $df
    inc b                                         ; $64a8: $04
    ld a, [bc]                                    ; $64a9: $0a
    pop af                                        ; $64aa: $f1
    ld a, $01                                     ; $64ab: $3e $01
    ld [$c441], a                                 ; $64ad: $ea $41 $c4
    ret                                           ; $64b0: $c9


    rst $28                                       ; $64b1: $ef
    nop                                           ; $64b2: $00
    inc e                                         ; $64b3: $1c
    ld a, $00                                     ; $64b4: $3e $00
    ld [$c3e1], a                                 ; $64b6: $ea $e1 $c3
    ld [$c3e0], a                                 ; $64b9: $ea $e0 $c3
    rst $18                                       ; $64bc: $df
    inc e                                         ; $64bd: $1c
    db $10                                        ; $64be: $10
    rst $18                                       ; $64bf: $df
    inc h                                         ; $64c0: $24
    db $10                                        ; $64c1: $10
    ld hl, $18c0                                  ; $64c2: $21 $c0 $18
    ld de, $1ec0                                  ; $64c5: $11 $c0 $1e
    rst $18                                       ; $64c8: $df
    jr nz, @+$12                                  ; $64c9: $20 $10

    ld a, $28                                     ; $64cb: $3e $28
    ld b, a                                       ; $64cd: $47
    ld a, $06                                     ; $64ce: $3e $06
    ld c, a                                       ; $64d0: $4f
    rst $18                                       ; $64d1: $df
    ld c, [hl]                                    ; $64d2: $4e
    ld a, [bc]                                    ; $64d3: $0a
    ld a, $05                                     ; $64d4: $3e $05
    ld [$c834], a                                 ; $64d6: $ea $34 $c8
    ld bc, $8000                                  ; $64d9: $01 $00 $80
    rst $18                                       ; $64dc: $df
    ld e, $02                                     ; $64dd: $1e $02
    ld bc, $ff01                                  ; $64df: $01 $01 $ff
    rst $18                                       ; $64e2: $df
    ld e, $02                                     ; $64e3: $1e $02
    ld hl, $080d                                  ; $64e5: $21 $0d $08
    rst $18                                       ; $64e8: $df
    db $10                                        ; $64e9: $10
    db $10                                        ; $64ea: $10
    ld a, $00                                     ; $64eb: $3e $00
    rst $18                                       ; $64ed: $df
    ld e, $10                                     ; $64ee: $1e $10
    ld de, $c000                                  ; $64f0: $11 $00 $c0
    rst $18                                       ; $64f3: $df
    ld [hl+], a                                   ; $64f4: $22
    db $10                                        ; $64f5: $10
    ldh a, [$95]                                  ; $64f6: $f0 $95
    ld hl, $6507                                  ; $64f8: $21 $07 $65
    rst $18                                       ; $64fb: $df
    ld a, [de]                                    ; $64fc: $1a
    db $10                                        ; $64fd: $10
    ld a, $01                                     ; $64fe: $3e $01
    rst $18                                       ; $6500: $df
    ld [de], a                                    ; $6501: $12
    db $10                                        ; $6502: $10
    rst $18                                       ; $6503: $df
    jr nc, jr_034_6516                            ; $6504: $30 $10

    ret                                           ; $6506: $c9


    daa                                           ; $6507: $27
    ld h, l                                       ; $6508: $65
    jr z, jr_034_6570                             ; $6509: $28 $65

    nop                                           ; $650b: $00
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    nop                                           ; $650e: $00
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00

jr_034_6516:
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
    ret                                           ; $6527: $c9


    ld a, [$c834]                                 ; $6528: $fa $34 $c8
    cp $05                                        ; $652b: $fe $05
    jp z, Jump_034_6539                           ; $652d: $ca $39 $65

    rst $20                                       ; $6530: $e7
    nop                                           ; $6531: $00
    inc e                                         ; $6532: $1c
    ld a, $80                                     ; $6533: $3e $80
    rst $18                                       ; $6535: $df
    ld l, $10                                     ; $6536: $2e $10
    ret                                           ; $6538: $c9


Jump_034_6539:
    ld a, [$c8aa]                                 ; $6539: $fa $aa $c8
    or a                                          ; $653c: $b7
    jr z, jr_034_6544                             ; $653d: $28 $05

    ld a, $01                                     ; $653f: $3e $01
    ld [$c3e0], a                                 ; $6541: $ea $e0 $c3

jr_034_6544:
    ld a, [$d4dc]                                 ; $6544: $fa $dc $d4
    cp $06                                        ; $6547: $fe $06
    jr nz, jr_034_6550                            ; $6549: $20 $05

    ld a, $01                                     ; $654b: $3e $01
    ld [$c3e0], a                                 ; $654d: $ea $e0 $c3

jr_034_6550:
    ld a, [$d48e]                                 ; $6550: $fa $8e $d4
    bit 0, a                                      ; $6553: $cb $47
    jr nz, jr_034_655d                            ; $6555: $20 $06

    ld a, $80                                     ; $6557: $3e $80
    rst $18                                       ; $6559: $df
    ld l, $10                                     ; $655a: $2e $10
    ret                                           ; $655c: $c9


jr_034_655d:
    ld a, $01                                     ; $655d: $3e $01
    ld [$c3e1], a                                 ; $655f: $ea $e1 $c3
    ld a, $80                                     ; $6562: $3e $80
    rst $18                                       ; $6564: $df
    ld l, $10                                     ; $6565: $2e $10
    ret                                           ; $6567: $c9


Jump_034_6568:
    rst $30                                       ; $6568: $f7
    nop                                           ; $6569: $00
    inc e                                         ; $656a: $1c
    jr nz, jr_034_6576                            ; $656b: $20 $09

    ld a, [$c3e0]                                 ; $656d: $fa $e0 $c3

jr_034_6570:
    or a                                          ; $6570: $b7
    jr nz, jr_034_6577                            ; $6571: $20 $04

    call Call_034_6114                            ; $6573: $cd $14 $61

jr_034_6576:
    ret                                           ; $6576: $c9


jr_034_6577:
    ld a, [$c3e1]                                 ; $6577: $fa $e1 $c3
    cp $01                                        ; $657a: $fe $01
    jr nz, jr_034_6582                            ; $657c: $20 $04

    call Call_034_61bb                            ; $657e: $cd $bb $61
    ret                                           ; $6581: $c9


jr_034_6582:
    call Call_034_6159                            ; $6582: $cd $59 $61
    ret                                           ; $6585: $c9


Call_034_6586:
    ld de, $008c                                  ; $6586: $11 $8c $00
    ld a, [$c3e1]                                 ; $6589: $fa $e1 $c3
    cp $01                                        ; $658c: $fe $01
    jr nz, jr_034_659d                            ; $658e: $20 $0d

    ld h, d                                       ; $6590: $62
    ld l, e                                       ; $6591: $6b
    sra h                                         ; $6592: $cb $2c
    rr l                                          ; $6594: $cb $1d
    sra h                                         ; $6596: $cb $2c
    rr l                                          ; $6598: $cb $1d
    add hl, de                                    ; $659a: $19
    ld d, h                                       ; $659b: $54
    ld e, l                                       ; $659c: $5d

jr_034_659d:
    push de                                       ; $659d: $d5
    rst $18                                       ; $659e: $df
    ld [hl+], a                                   ; $659f: $22
    ld [bc], a                                    ; $65a0: $02
    pop hl                                        ; $65a1: $e1
    rst $18                                       ; $65a2: $df
    ld d, [hl]                                    ; $65a3: $56
    dec b                                         ; $65a4: $05
    rst $08                                       ; $65a5: $cf
    jr c, @+$23                                   ; $65a6: $38 $21

    dec de                                        ; $65a8: $1b
    ld bc, $0edf                                  ; $65a9: $01 $df $0e
    ld a, [bc]                                    ; $65ac: $0a
    ld a, $80                                     ; $65ad: $3e $80
    rst $18                                       ; $65af: $df
    ld [$cd0a], sp                                ; $65b0: $08 $0a $cd
    rra                                           ; $65b3: $1f
    inc l                                         ; $65b4: $2c
    call Call_034_7dd8                            ; $65b5: $cd $d8 $7d
    ld b, $00                                     ; $65b8: $06 $00
    ld c, $fa                                     ; $65ba: $0e $fa
    rst $18                                       ; $65bc: $df
    ld c, [hl]                                    ; $65bd: $4e
    ld a, [bc]                                    ; $65be: $0a
    rst $18                                       ; $65bf: $df
    inc [hl]                                      ; $65c0: $34
    ld [bc], a                                    ; $65c1: $02
    ret                                           ; $65c2: $c9


    rst $30                                       ; $65c3: $f7
    ret nz                                        ; $65c4: $c0

    add hl, de                                    ; $65c5: $19
    jr nz, jr_034_65db                            ; $65c6: $20 $13

    ld hl, $65e0                                  ; $65c8: $21 $e0 $65
    ld de, $8200                                  ; $65cb: $11 $00 $82
    ld c, $0c                                     ; $65ce: $0e $0c
    call Call_000_0468                            ; $65d0: $cd $68 $04
    ld a, $13                                     ; $65d3: $3e $13
    ld hl, $66a0                                  ; $65d5: $21 $a0 $66
    call Call_000_23e8                            ; $65d8: $cd $e8 $23

jr_034_65db:
    ret                                           ; $65db: $c9


    nop                                           ; $65dc: $00
    nop                                           ; $65dd: $00
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    inc bc                                        ; $65e0: $03
    inc bc                                        ; $65e1: $03
    rlca                                          ; $65e2: $07
    dec b                                         ; $65e3: $05
    dec b                                         ; $65e4: $05
    rlca                                          ; $65e5: $07
    rlca                                          ; $65e6: $07
    ld b, $0b                                     ; $65e7: $06 $0b
    rrca                                          ; $65e9: $0f
    inc d                                         ; $65ea: $14
    rra                                           ; $65eb: $1f
    inc de                                        ; $65ec: $13
    rra                                           ; $65ed: $1f
    inc de                                        ; $65ee: $13
    rra                                           ; $65ef: $1f
    dec de                                        ; $65f0: $1b
    rra                                           ; $65f1: $1f
    dec de                                        ; $65f2: $1b
    rra                                           ; $65f3: $1f
    dec de                                        ; $65f4: $1b
    rra                                           ; $65f5: $1f
    rla                                           ; $65f6: $17
    rra                                           ; $65f7: $1f
    dec c                                         ; $65f8: $0d
    rrca                                          ; $65f9: $0f
    ccf                                           ; $65fa: $3f
    inc sp                                        ; $65fb: $33
    dec sp                                        ; $65fc: $3b
    cpl                                           ; $65fd: $2f
    inc a                                         ; $65fe: $3c
    inc a                                         ; $65ff: $3c
    ret nz                                        ; $6600: $c0

    ret nz                                        ; $6601: $c0

    ldh [$a0], a                                  ; $6602: $e0 $a0
    and b                                         ; $6604: $a0
    ldh [$e0], a                                  ; $6605: $e0 $e0
    ld h, b                                       ; $6607: $60
    ret nc                                        ; $6608: $d0

    ldh a, [$28]                                  ; $6609: $f0 $28
    ld hl, sp-$38                                 ; $660b: $f8 $c8
    ld hl, sp-$38                                 ; $660d: $f8 $c8
    ld hl, sp-$28                                 ; $660f: $f8 $d8
    ld hl, sp-$28                                 ; $6611: $f8 $d8
    ld hl, sp-$21                                 ; $6613: $f8 $df
    rst $38                                       ; $6615: $ff
    rst $28                                       ; $6616: $ef
    rst $38                                       ; $6617: $ff
    or e                                          ; $6618: $b3
    di                                            ; $6619: $f3
    db $fd                                        ; $661a: $fd
    call $f4dc                                    ; $661b: $cd $dc $f4
    ld a, h                                       ; $661e: $7c
    ld a, h                                       ; $661f: $7c
    inc bc                                        ; $6620: $03

jr_034_6621:
    inc bc                                        ; $6621: $03
    rlca                                          ; $6622: $07
    dec b                                         ; $6623: $05
    dec e                                         ; $6624: $1d
    rra                                           ; $6625: $1f
    rra                                           ; $6626: $1f
    inc de                                        ; $6627: $13
    rrca                                          ; $6628: $0f
    rrca                                          ; $6629: $0f
    inc d                                         ; $662a: $14
    rra                                           ; $662b: $1f
    inc de                                        ; $662c: $13
    rra                                           ; $662d: $1f
    inc de                                        ; $662e: $13
    rra                                           ; $662f: $1f
    dec de                                        ; $6630: $1b
    rra                                           ; $6631: $1f
    dec de                                        ; $6632: $1b
    rra                                           ; $6633: $1f
    dec de                                        ; $6634: $1b
    rra                                           ; $6635: $1f
    rla                                           ; $6636: $17
    rra                                           ; $6637: $1f
    dec c                                         ; $6638: $0d
    rrca                                          ; $6639: $0f
    rra                                           ; $663a: $1f
    add hl, de                                    ; $663b: $19
    dec e                                         ; $663c: $1d
    rla                                           ; $663d: $17
    ld e, $1e                                     ; $663e: $1e $1e
    ret nz                                        ; $6640: $c0

    ret nz                                        ; $6641: $c0

    ret nz                                        ; $6642: $c0

    ret nz                                        ; $6643: $c0

    ret nz                                        ; $6644: $c0

    ret nz                                        ; $6645: $c0

    ldh [$e0], a                                  ; $6646: $e0 $e0
    or b                                          ; $6648: $b0
    ldh a, [rBCPS]                                ; $6649: $f0 $68
    ld hl, sp-$38                                 ; $664b: $f8 $c8
    ld hl, sp-$38                                 ; $664d: $f8 $c8
    ld hl, sp-$27                                 ; $664f: $f8 $d9
    ld sp, hl                                     ; $6651: $f9
    db $db                                        ; $6652: $db
    ei                                            ; $6653: $fb
    rst $18                                       ; $6654: $df
    rst $38                                       ; $6655: $ff
    rst $28                                       ; $6656: $ef
    rst $38                                       ; $6657: $ff
    or b                                          ; $6658: $b0
    ldh a, [$fc]                                  ; $6659: $f0 $fc
    call z, $f4dc                                 ; $665b: $cc $dc $f4
    ld a, h                                       ; $665e: $7c
    ld a, h                                       ; $665f: $7c
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    inc bc                                        ; $6662: $03
    inc bc                                        ; $6663: $03
    inc b                                         ; $6664: $04
    rlca                                          ; $6665: $07
    add hl, bc                                    ; $6666: $09
    ld c, $0f                                     ; $6667: $0e $0f
    dec bc                                        ; $6669: $0b
    dec bc                                        ; $666a: $0b
    inc c                                         ; $666b: $0c
    dec e                                         ; $666c: $1d
    ld a, [de]                                    ; $666d: $1a
    dec hl                                        ; $666e: $2b
    inc a                                         ; $666f: $3c
    ld c, b                                       ; $6670: $48
    ld [hl], a                                    ; $6671: $77
    ld d, h                                       ; $6672: $54
    ld l, e                                       ; $6673: $6b
    ld l, e                                       ; $6674: $6b
    ld [hl], h                                    ; $6675: $74
    daa                                           ; $6676: $27
    jr c, jr_034_6692                             ; $6677: $38 $19

    ld e, $07                                     ; $6679: $1e $07
    rlca                                          ; $667b: $07
    nop                                           ; $667c: $00
    nop                                           ; $667d: $00
    nop                                           ; $667e: $00
    nop                                           ; $667f: $00
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    ldh [$e0], a                                  ; $6682: $e0 $e0
    db $10                                        ; $6684: $10
    ldh a, [$e8]                                  ; $6685: $f0 $e8
    jr jr_034_6621                                ; $6687: $18 $98

    add sp, -$08                                  ; $6689: $e8 $f8
    ld [$0cfc], sp                                ; $668b: $08 $fc $0c
    ld [$0d1e], a                                 ; $668e: $ea $1e $0d
    di                                            ; $6691: $f3

jr_034_6692:
    rra                                           ; $6692: $1f
    pop hl                                        ; $6693: $e1
    db $fd                                        ; $6694: $fd
    inc bc                                        ; $6695: $03
    ld a, [c]                                     ; $6696: $f2
    ld c, $cc                                     ; $6697: $0e $cc
    inc a                                         ; $6699: $3c
    ldh a, [$f0]                                  ; $669a: $f0 $f0
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    nop                                           ; $669e: $00
    nop                                           ; $669f: $00
    ld a, [$d443]                                 ; $66a0: $fa $43 $d4
    cp $01                                        ; $66a3: $fe $01
    ret nz                                        ; $66a5: $c0

    ld a, [$d442]                                 ; $66a6: $fa $42 $d4
    ld d, a                                       ; $66a9: $57
    ld e, $00                                     ; $66aa: $1e $00
    ld hl, $d43f                                  ; $66ac: $21 $3f $d4
    ld a, [hl+]                                   ; $66af: $2a
    ld h, [hl]                                    ; $66b0: $66
    ld l, a                                       ; $66b1: $6f
    or h                                          ; $66b2: $b4
    jr z, jr_034_6703                             ; $66b3: $28 $4e

    call Call_000_08ac                            ; $66b5: $cd $ac $08
    ld de, $0004                                  ; $66b8: $11 $04 $00
    add hl, de                                    ; $66bb: $19
    ld a, l                                       ; $66bc: $7d
    srl h                                         ; $66bd: $cb $3c
    rra                                           ; $66bf: $1f
    srl h                                         ; $66c0: $cb $3c
    rra                                           ; $66c2: $1f
    srl h                                         ; $66c3: $cb $3c
    rra                                           ; $66c5: $1f
    ld b, a                                       ; $66c6: $47
    ld a, [$d441]                                 ; $66c7: $fa $41 $d4
    ld d, a                                       ; $66ca: $57
    ld e, $00                                     ; $66cb: $1e $00
    ld hl, $d43d                                  ; $66cd: $21 $3d $d4
    ld a, [hl+]                                   ; $66d0: $2a
    ld h, [hl]                                    ; $66d1: $66
    ld l, a                                       ; $66d2: $6f
    call Call_000_08ac                            ; $66d3: $cd $ac $08
    ld de, $0004                                  ; $66d6: $11 $04 $00
    add hl, de                                    ; $66d9: $19
    ld a, l                                       ; $66da: $7d
    srl h                                         ; $66db: $cb $3c
    rra                                           ; $66dd: $1f
    srl h                                         ; $66de: $cb $3c
    rra                                           ; $66e0: $1f
    srl h                                         ; $66e1: $cb $3c
    rra                                           ; $66e3: $1f
    ld d, a                                       ; $66e4: $57
    ld e, b                                       ; $66e5: $58
    ld hl, $6704                                  ; $66e6: $21 $04 $67
    ldh a, [$8c]                                  ; $66e9: $f0 $8c
    add l                                         ; $66eb: $85
    ld l, a                                       ; $66ec: $6f
    jr nc, jr_034_66f0                            ; $66ed: $30 $01

    inc h                                         ; $66ef: $24

jr_034_66f0:
    ld a, [hl]                                    ; $66f0: $7e
    ld hl, $6804                                  ; $66f1: $21 $04 $68
    add a                                         ; $66f4: $87
    add l                                         ; $66f5: $85
    ld l, a                                       ; $66f6: $6f
    jr nc, jr_034_66fa                            ; $66f7: $30 $01

    inc h                                         ; $66f9: $24

jr_034_66fa:
    ld a, [hl+]                                   ; $66fa: $2a
    ld h, [hl]                                    ; $66fb: $66
    ld l, a                                       ; $66fc: $6f
    ld bc, $0020                                  ; $66fd: $01 $20 $00
    call Call_000_26ea                            ; $6700: $cd $ea $26

jr_034_6703:
    ret                                           ; $6703: $c9


    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    nop                                           ; $6707: $00
    nop                                           ; $6708: $00
    nop                                           ; $6709: $00
    nop                                           ; $670a: $00
    nop                                           ; $670b: $00
    nop                                           ; $670c: $00
    nop                                           ; $670d: $00
    nop                                           ; $670e: $00
    nop                                           ; $670f: $00
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
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    nop                                           ; $672b: $00
    nop                                           ; $672c: $00
    nop                                           ; $672d: $00
    nop                                           ; $672e: $00
    nop                                           ; $672f: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673a: $00
    nop                                           ; $673b: $00
    nop                                           ; $673c: $00
    nop                                           ; $673d: $00
    nop                                           ; $673e: $00
    nop                                           ; $673f: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674a: $00
    nop                                           ; $674b: $00
    nop                                           ; $674c: $00
    nop                                           ; $674d: $00
    nop                                           ; $674e: $00
    nop                                           ; $674f: $00
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
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    ld bc, $0302                                  ; $6769: $01 $02 $03
    inc b                                         ; $676c: $04
    inc b                                         ; $676d: $04
    inc b                                         ; $676e: $04
    inc b                                         ; $676f: $04
    inc b                                         ; $6770: $04
    inc b                                         ; $6771: $04
    inc b                                         ; $6772: $04
    inc b                                         ; $6773: $04
    inc b                                         ; $6774: $04
    inc b                                         ; $6775: $04
    inc b                                         ; $6776: $04
    inc b                                         ; $6777: $04
    inc b                                         ; $6778: $04
    inc b                                         ; $6779: $04
    inc b                                         ; $677a: $04
    inc b                                         ; $677b: $04
    inc b                                         ; $677c: $04
    inc b                                         ; $677d: $04
    inc b                                         ; $677e: $04
    inc b                                         ; $677f: $04
    inc b                                         ; $6780: $04
    inc b                                         ; $6781: $04
    inc b                                         ; $6782: $04
    inc b                                         ; $6783: $04
    inc b                                         ; $6784: $04
    inc b                                         ; $6785: $04
    inc b                                         ; $6786: $04
    inc b                                         ; $6787: $04
    inc b                                         ; $6788: $04
    inc b                                         ; $6789: $04
    inc b                                         ; $678a: $04
    inc b                                         ; $678b: $04
    inc b                                         ; $678c: $04
    inc b                                         ; $678d: $04
    inc b                                         ; $678e: $04
    inc b                                         ; $678f: $04
    inc b                                         ; $6790: $04
    inc b                                         ; $6791: $04
    inc b                                         ; $6792: $04
    inc b                                         ; $6793: $04
    inc b                                         ; $6794: $04
    inc b                                         ; $6795: $04
    inc b                                         ; $6796: $04
    inc b                                         ; $6797: $04
    inc b                                         ; $6798: $04
    inc b                                         ; $6799: $04
    inc b                                         ; $679a: $04
    inc b                                         ; $679b: $04
    inc b                                         ; $679c: $04
    inc b                                         ; $679d: $04
    inc b                                         ; $679e: $04
    inc b                                         ; $679f: $04
    inc b                                         ; $67a0: $04
    inc b                                         ; $67a1: $04
    inc b                                         ; $67a2: $04
    inc b                                         ; $67a3: $04
    inc b                                         ; $67a4: $04
    inc b                                         ; $67a5: $04
    inc b                                         ; $67a6: $04
    inc b                                         ; $67a7: $04
    inc b                                         ; $67a8: $04
    inc b                                         ; $67a9: $04
    inc b                                         ; $67aa: $04
    inc b                                         ; $67ab: $04
    inc b                                         ; $67ac: $04
    inc b                                         ; $67ad: $04
    inc b                                         ; $67ae: $04
    inc b                                         ; $67af: $04
    inc b                                         ; $67b0: $04
    inc b                                         ; $67b1: $04
    inc b                                         ; $67b2: $04
    inc b                                         ; $67b3: $04
    inc b                                         ; $67b4: $04
    inc b                                         ; $67b5: $04
    inc b                                         ; $67b6: $04
    inc b                                         ; $67b7: $04
    inc b                                         ; $67b8: $04
    inc b                                         ; $67b9: $04
    inc b                                         ; $67ba: $04
    inc b                                         ; $67bb: $04
    inc b                                         ; $67bc: $04
    inc b                                         ; $67bd: $04
    inc b                                         ; $67be: $04
    inc b                                         ; $67bf: $04
    inc b                                         ; $67c0: $04
    inc b                                         ; $67c1: $04
    inc b                                         ; $67c2: $04
    inc b                                         ; $67c3: $04
    inc b                                         ; $67c4: $04
    inc b                                         ; $67c5: $04
    inc b                                         ; $67c6: $04
    inc b                                         ; $67c7: $04
    inc b                                         ; $67c8: $04
    inc b                                         ; $67c9: $04
    inc b                                         ; $67ca: $04
    inc b                                         ; $67cb: $04
    inc b                                         ; $67cc: $04
    inc b                                         ; $67cd: $04
    inc b                                         ; $67ce: $04
    inc b                                         ; $67cf: $04
    inc b                                         ; $67d0: $04
    inc b                                         ; $67d1: $04
    inc b                                         ; $67d2: $04
    inc b                                         ; $67d3: $04
    inc b                                         ; $67d4: $04
    inc b                                         ; $67d5: $04
    inc b                                         ; $67d6: $04
    inc b                                         ; $67d7: $04
    inc b                                         ; $67d8: $04
    inc b                                         ; $67d9: $04
    inc b                                         ; $67da: $04
    inc b                                         ; $67db: $04
    inc b                                         ; $67dc: $04
    inc b                                         ; $67dd: $04
    inc b                                         ; $67de: $04
    inc b                                         ; $67df: $04
    inc b                                         ; $67e0: $04
    inc b                                         ; $67e1: $04
    inc b                                         ; $67e2: $04
    inc b                                         ; $67e3: $04
    inc b                                         ; $67e4: $04
    inc b                                         ; $67e5: $04
    inc b                                         ; $67e6: $04
    inc b                                         ; $67e7: $04
    inc b                                         ; $67e8: $04
    inc b                                         ; $67e9: $04
    inc b                                         ; $67ea: $04
    inc b                                         ; $67eb: $04
    inc b                                         ; $67ec: $04
    inc b                                         ; $67ed: $04
    inc b                                         ; $67ee: $04
    inc b                                         ; $67ef: $04
    inc b                                         ; $67f0: $04
    inc b                                         ; $67f1: $04
    inc b                                         ; $67f2: $04
    inc b                                         ; $67f3: $04
    inc b                                         ; $67f4: $04
    inc b                                         ; $67f5: $04
    inc b                                         ; $67f6: $04
    inc b                                         ; $67f7: $04
    inc b                                         ; $67f8: $04
    inc b                                         ; $67f9: $04
    inc b                                         ; $67fa: $04
    inc b                                         ; $67fb: $04
    inc b                                         ; $67fc: $04
    inc b                                         ; $67fd: $04
    inc b                                         ; $67fe: $04
    inc b                                         ; $67ff: $04
    inc b                                         ; $6800: $04
    dec b                                         ; $6801: $05
    ld b, $07                                     ; $6802: $06 $07
    inc d                                         ; $6804: $14
    ld l, b                                       ; $6805: $68
    dec h                                         ; $6806: $25
    ld l, b                                       ; $6807: $68
    ld [hl], $68                                  ; $6808: $36 $68
    ld b, a                                       ; $680a: $47
    ld l, b                                       ; $680b: $68
    ld e, b                                       ; $680c: $58
    ld l, b                                       ; $680d: $68
    ld l, c                                       ; $680e: $69
    ld l, b                                       ; $680f: $68
    ld a, d                                       ; $6810: $7a
    ld l, b                                       ; $6811: $68
    adc e                                         ; $6812: $8b
    ld l, b                                       ; $6813: $68
    pop af                                        ; $6814: $f1
    nop                                           ; $6815: $00
    ld [$f100], sp                                ; $6816: $08 $00 $f1
    ld [$000a], sp                                ; $6819: $08 $0a $00
    xor $00                                       ; $681c: $ee $00
    nop                                           ; $681e: $00
    nop                                           ; $681f: $00
    xor $08                                       ; $6820: $ee $08
    ld [bc], a                                    ; $6822: $02
    nop                                           ; $6823: $00
    add b                                         ; $6824: $80
    pop af                                        ; $6825: $f1
    cp $08                                        ; $6826: $fe $08
    nop                                           ; $6828: $00
    pop af                                        ; $6829: $f1
    ld b, $0a                                     ; $682a: $06 $0a
    nop                                           ; $682c: $00
    xor $00                                       ; $682d: $ee $00
    inc b                                         ; $682f: $04
    nop                                           ; $6830: $00
    xor $08                                       ; $6831: $ee $08
    ld b, $00                                     ; $6833: $06 $00
    add b                                         ; $6835: $80
    pop af                                        ; $6836: $f1
    db $fc                                        ; $6837: $fc
    ld [$f100], sp                                ; $6838: $08 $00 $f1
    inc b                                         ; $683b: $04
    ld a, [bc]                                    ; $683c: $0a
    nop                                           ; $683d: $00
    xor $00                                       ; $683e: $ee $00
    inc b                                         ; $6840: $04
    nop                                           ; $6841: $00
    xor $08                                       ; $6842: $ee $08
    ld b, $00                                     ; $6844: $06 $00
    add b                                         ; $6846: $80
    pop af                                        ; $6847: $f1
    ei                                            ; $6848: $fb
    ld [$f100], sp                                ; $6849: $08 $00 $f1
    inc bc                                        ; $684c: $03
    ld a, [bc]                                    ; $684d: $0a
    nop                                           ; $684e: $00
    xor $00                                       ; $684f: $ee $00
    inc b                                         ; $6851: $04
    nop                                           ; $6852: $00
    xor $08                                       ; $6853: $ee $08
    ld b, $00                                     ; $6855: $06 $00
    add b                                         ; $6857: $80
    pop af                                        ; $6858: $f1
    db $fc                                        ; $6859: $fc
    ld [$f100], sp                                ; $685a: $08 $00 $f1
    inc b                                         ; $685d: $04
    ld a, [bc]                                    ; $685e: $0a
    nop                                           ; $685f: $00
    xor $00                                       ; $6860: $ee $00
    inc b                                         ; $6862: $04
    nop                                           ; $6863: $00
    xor $08                                       ; $6864: $ee $08
    ld b, $00                                     ; $6866: $06 $00
    add b                                         ; $6868: $80
    pop af                                        ; $6869: $f1
    cp $08                                        ; $686a: $fe $08
    nop                                           ; $686c: $00
    pop af                                        ; $686d: $f1
    ld b, $0a                                     ; $686e: $06 $0a
    nop                                           ; $6870: $00
    xor $00                                       ; $6871: $ee $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    xor $08                                       ; $6875: $ee $08
    ld [bc], a                                    ; $6877: $02
    nop                                           ; $6878: $00
    add b                                         ; $6879: $80
    pop af                                        ; $687a: $f1
    nop                                           ; $687b: $00
    ld [$f100], sp                                ; $687c: $08 $00 $f1
    ld [$000a], sp                                ; $687f: $08 $0a $00
    xor $00                                       ; $6882: $ee $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    xor $08                                       ; $6886: $ee $08
    ld [bc], a                                    ; $6888: $02
    nop                                           ; $6889: $00
    add b                                         ; $688a: $80
    pop af                                        ; $688b: $f1
    ld bc, $0008                                  ; $688c: $01 $08 $00
    pop af                                        ; $688f: $f1
    add hl, bc                                    ; $6890: $09
    ld a, [bc]                                    ; $6891: $0a
    nop                                           ; $6892: $00
    xor $00                                       ; $6893: $ee $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    xor $08                                       ; $6897: $ee $08
    ld [bc], a                                    ; $6899: $02
    nop                                           ; $689a: $00
    add b                                         ; $689b: $80
    rst $28                                       ; $689c: $ef
    ld l, b                                       ; $689d: $68
    ld [bc], a                                    ; $689e: $02
    ld l, c                                       ; $689f: $69
    xor d                                         ; $68a0: $aa
    ld l, b                                       ; $68a1: $68
    dec de                                        ; $68a2: $1b
    ld l, c                                       ; $68a3: $69
    sbc e                                         ; $68a4: $9b
    ld l, c                                       ; $68a5: $69
    ld d, $6b                                     ; $68a6: $16 $6b
    scf                                           ; $68a8: $37
    ld l, e                                       ; $68a9: $6b
    cp $7c                                        ; $68aa: $fe $7c
    nop                                           ; $68ac: $00
    daa                                           ; $68ad: $27
    nop                                           ; $68ae: $00
    ld h, $cf                                     ; $68af: $26 $cf
    nop                                           ; $68b1: $00
    nop                                           ; $68b2: $00
    ret nz                                        ; $68b3: $c0

    ld bc, $fe2c                                  ; $68b4: $01 $2c $fe
    ld a, h                                       ; $68b7: $7c
    nop                                           ; $68b8: $00
    add hl, bc                                    ; $68b9: $09
    nop                                           ; $68ba: $00
    ld de, $00cf                                  ; $68bb: $11 $cf $00
    nop                                           ; $68be: $00
    ld b, b                                       ; $68bf: $40
    ld bc, $fe2f                                  ; $68c0: $01 $2f $fe
    ld a, h                                       ; $68c3: $7c
    nop                                           ; $68c4: $00
    ld a, [bc]                                    ; $68c5: $0a
    nop                                           ; $68c6: $00
    ld [de], a                                    ; $68c7: $12
    rst $08                                       ; $68c8: $cf
    nop                                           ; $68c9: $00
    nop                                           ; $68ca: $00
    ld b, b                                       ; $68cb: $40
    ld bc, $fe2e                                  ; $68cc: $01 $2e $fe
    ld a, h                                       ; $68cf: $7c
    nop                                           ; $68d0: $00
    jr nz, jr_034_68d3                            ; $68d1: $20 $00

jr_034_68d3:
    jr nz, jr_034_68d5                            ; $68d3: $20 $00

jr_034_68d5:
    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    ret nz                                        ; $68d7: $c0

    ld bc, $fe26                                  ; $68d8: $01 $26 $fe
    ld a, h                                       ; $68db: $7c
    nop                                           ; $68dc: $00
    rrca                                          ; $68dd: $0f
    nop                                           ; $68de: $00
    ld hl, $0000                                  ; $68df: $21 $00 $00
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    ld bc, $0001                                  ; $68e4: $01 $01 $00
    nop                                           ; $68e7: $00
    nop                                           ; $68e8: $00
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    nop                                           ; $68eb: $00
    nop                                           ; $68ec: $00
    nop                                           ; $68ed: $00
    rst $38                                       ; $68ee: $ff
    ld bc, $00c0                                  ; $68ef: $01 $c0 $00
    inc d                                         ; $68f2: $14
    nop                                           ; $68f3: $00
    cpl                                           ; $68f4: $2f
    ld b, $c0                                     ; $68f5: $06 $c0
    nop                                           ; $68f7: $00
    ld [hl+], a                                   ; $68f8: $22
    nop                                           ; $68f9: $00
    ld hl, $8007                                  ; $68fa: $21 $07 $80
    nop                                           ; $68fd: $00
    ld [hl+], a                                   ; $68fe: $22
    nop                                           ; $68ff: $00
    ld hl, $01ff                                  ; $6900: $21 $ff $01
    rst $38                                       ; $6903: $ff
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    ld [bc], a                                    ; $6908: $02
    add hl, bc                                    ; $6909: $09
    ld [bc], a                                    ; $690a: $02
    rst $38                                       ; $690b: $ff
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    nop                                           ; $690e: $00
    nop                                           ; $690f: $00
    add hl, hl                                    ; $6910: $29
    ld b, $03                                     ; $6911: $06 $03
    rst $38                                       ; $6913: $ff
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    add hl, hl                                    ; $6918: $29
    rlca                                          ; $6919: $07
    rst $38                                       ; $691a: $ff
    ld [bc], a                                    ; $691b: $02
    rst $38                                       ; $691c: $ff
    nop                                           ; $691d: $00
    nop                                           ; $691e: $00
    push af                                       ; $691f: $f5
    ld l, h                                       ; $6920: $6c
    inc bc                                        ; $6921: $03
    nop                                           ; $6922: $00
    ld b, $ff                                     ; $6923: $06 $ff
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    ld e, [hl]                                    ; $6927: $5e
    inc c                                         ; $6928: $0c
    inc bc                                        ; $6929: $03
    nop                                           ; $692a: $00
    rst $38                                       ; $692b: $ff
    ld a, [$c810]                                 ; $692c: $fa $10 $c8
    cp $03                                        ; $692f: $fe $03
    jr z, jr_034_699a                             ; $6931: $28 $67

    rst $20                                       ; $6933: $e7
    ldh [rNR11], a                                ; $6934: $e0 $11
    ld hl, $0c5a                                  ; $6936: $21 $5a $0c
    rst $18                                       ; $6939: $df
    ld c, $0a                                     ; $693a: $0e $0a
    ld a, $06                                     ; $693c: $3e $06
    rst $18                                       ; $693e: $df
    ld [$3e0a], sp                                ; $693f: $08 $0a $3e
    ld b, $01                                     ; $6942: $06 $01
    nop                                           ; $6944: $00
    dec c                                         ; $6945: $0d
    ld de, $2100                                  ; $6946: $11 $00 $21
    rst $18                                       ; $6949: $df
    jr nz, @+$0c                                  ; $694a: $20 $0a

    ld a, $00                                     ; $694c: $3e $00
    ld b, $01                                     ; $694e: $06 $01
    rst $18                                       ; $6950: $df
    ld a, [hl+]                                   ; $6951: $2a
    ld a, [bc]                                    ; $6952: $0a
    rst $08                                       ; $6953: $cf
    adc d                                         ; $6954: $8a
    ld a, $00                                     ; $6955: $3e $00
    ld de, $ff80                                  ; $6957: $11 $80 $ff
    rst $18                                       ; $695a: $df
    ld b, b                                       ; $695b: $40
    ld a, [bc]                                    ; $695c: $0a
    ld a, $00                                     ; $695d: $3e $00
    ld b, $00                                     ; $695f: $06 $00
    ld de, $0200                                  ; $6961: $11 $00 $02
    rst $18                                       ; $6964: $df
    jr z, jr_034_6971                             ; $6965: $28 $0a

    ld a, $00                                     ; $6967: $3e $00
    rst $18                                       ; $6969: $df
    ld e, $0a                                     ; $696a: $1e $0a
    ld a, $00                                     ; $696c: $3e $00
    ld b, $00                                     ; $696e: $06 $00
    rst $18                                       ; $6970: $df

jr_034_6971:
    ld a, [hl+]                                   ; $6971: $2a
    ld a, [bc]                                    ; $6972: $0a
    rst $08                                       ; $6973: $cf
    adc d                                         ; $6974: $8a
    ld a, $06                                     ; $6975: $3e $06
    ld de, $ff80                                  ; $6977: $11 $80 $ff
    rst $18                                       ; $697a: $df
    ld b, b                                       ; $697b: $40
    ld a, [bc]                                    ; $697c: $0a
    ld a, $06                                     ; $697d: $3e $06
    ld b, $00                                     ; $697f: $06 $00
    ld de, $0200                                  ; $6981: $11 $00 $02
    rst $18                                       ; $6984: $df
    jr z, @+$0c                                   ; $6985: $28 $0a

    ld a, $06                                     ; $6987: $3e $06
    rst $18                                       ; $6989: $df
    ld e, $0a                                     ; $698a: $1e $0a
    ld hl, $0c5e                                  ; $698c: $21 $5e $0c
    rst $18                                       ; $698f: $df
    ld c, $0a                                     ; $6990: $0e $0a
    ld a, $06                                     ; $6992: $3e $06
    rst $18                                       ; $6994: $df
    ld [$cd0a], sp                                ; $6995: $08 $0a $cd
    ld [de], a                                    ; $6998: $12
    ld a, [hl]                                    ; $6999: $7e

jr_034_699a:
    ret                                           ; $699a: $c9


    rrca                                          ; $699b: $0f
    rst $38                                       ; $699c: $ff
    nop                                           ; $699d: $00
    nop                                           ; $699e: $00
    inc l                                         ; $699f: $2c
    ld l, c                                       ; $69a0: $69
    ld b, $00                                     ; $69a1: $06 $00
    rst $38                                       ; $69a3: $ff
    rst $30                                       ; $69a4: $f7
    ldh [rNR24], a                                ; $69a5: $e0 $19
    jp nz, Jump_034_6aba                          ; $69a7: $c2 $ba $6a

    rst $30                                       ; $69aa: $f7
    ret nz                                        ; $69ab: $c0

    add hl, de                                    ; $69ac: $19
    jp nz, Jump_034_6ab6                          ; $69ad: $c2 $b6 $6a

    ld hl, $151d                                  ; $69b0: $21 $1d $15
    rst $18                                       ; $69b3: $df
    ld c, $0a                                     ; $69b4: $0e $0a
    ld a, $03                                     ; $69b6: $3e $03
    rst $18                                       ; $69b8: $df
    inc d                                         ; $69b9: $14
    ld a, [bc]                                    ; $69ba: $0a
    inc h                                         ; $69bb: $24
    dec h                                         ; $69bc: $25
    jr z, jr_034_69e7                             ; $69bd: $28 $28

    ld de, $0015                                  ; $69bf: $11 $15 $00
    add hl, de                                    ; $69c2: $19
    ld [hl], a                                    ; $69c3: $77
    ldh a, [$95]                                  ; $69c4: $f0 $95
    ld b, a                                       ; $69c6: $47
    ld a, $03                                     ; $69c7: $3e $03
    ld de, $7114                                  ; $69c9: $11 $14 $71
    rst $18                                       ; $69cc: $df
    jr @+$0c                                      ; $69cd: $18 $0a

    ldh a, [$95]                                  ; $69cf: $f0 $95
    ld b, a                                       ; $69d1: $47
    ld a, $04                                     ; $69d2: $3e $04
    ld de, $70fc                                  ; $69d4: $11 $fc $70
    rst $18                                       ; $69d7: $df
    jr jr_034_69e4                                ; $69d8: $18 $0a

    xor a                                         ; $69da: $af
    ld bc, $1700                                  ; $69db: $01 $00 $17
    ld de, $1d00                                  ; $69de: $11 $00 $1d
    rst $18                                       ; $69e1: $df
    jr c, @+$0c                                   ; $69e2: $38 $0a

jr_034_69e4:
    rst $18                                       ; $69e4: $df
    inc a                                         ; $69e5: $3c
    ld a, [bc]                                    ; $69e6: $0a

jr_034_69e7:
    ld hl, $6bf7                                  ; $69e7: $21 $f7 $6b
    call Call_000_2449                            ; $69ea: $cd $49 $24
    ld a, $07                                     ; $69ed: $3e $07
    ld hl, $6bf7                                  ; $69ef: $21 $f7 $6b
    call Call_000_23e8                            ; $69f2: $cd $e8 $23
    rst $30                                       ; $69f5: $f7
    and b                                         ; $69f6: $a0
    add hl, de                                    ; $69f7: $19
    jp nz, Jump_034_6aba                          ; $69f8: $c2 $ba $6a

    rst $20                                       ; $69fb: $e7
    and b                                         ; $69fc: $a0
    add hl, de                                    ; $69fd: $19
    push af                                       ; $69fe: $f5
    ld a, $5a                                     ; $69ff: $3e $5a
    rst $18                                       ; $6a01: $df
    inc b                                         ; $6a02: $04
    ld a, [bc]                                    ; $6a03: $0a
    pop af                                        ; $6a04: $f1
    ld a, $00                                     ; $6a05: $3e $00
    ld b, a                                       ; $6a07: $47
    ld a, $02                                     ; $6a08: $3e $02
    rst $18                                       ; $6a0a: $df
    ld l, $0a                                     ; $6a0b: $2e $0a
    ld a, $02                                     ; $6a0d: $3e $02
    rst $18                                       ; $6a0f: $df
    ld [$af0a], sp                                ; $6a10: $08 $0a $af
    ld bc, $2500                                  ; $6a13: $01 $00 $25
    ld de, $2700                                  ; $6a16: $11 $00 $27
    rst $18                                       ; $6a19: $df
    jr c, @+$0c                                   ; $6a1a: $38 $0a

    rst $18                                       ; $6a1c: $df
    inc a                                         ; $6a1d: $3c
    ld a, [bc]                                    ; $6a1e: $0a
    ld hl, $6bf7                                  ; $6a1f: $21 $f7 $6b
    call Call_000_2449                            ; $6a22: $cd $49 $24
    ld a, $04                                     ; $6a25: $3e $04
    ld hl, $6bf7                                  ; $6a27: $21 $f7 $6b
    call Call_000_23e8                            ; $6a2a: $cd $e8 $23
    ld hl, $6bf7                                  ; $6a2d: $21 $f7 $6b
    call Call_000_2449                            ; $6a30: $cd $49 $24
    ld a, $07                                     ; $6a33: $3e $07
    ld hl, $6bf7                                  ; $6a35: $21 $f7 $6b
    call Call_000_23e8                            ; $6a38: $cd $e8 $23
    ld a, $02                                     ; $6a3b: $3e $02
    ld b, a                                       ; $6a3d: $47
    ld a, $00                                     ; $6a3e: $3e $00
    rst $18                                       ; $6a40: $df
    ld l, $0a                                     ; $6a41: $2e $0a
    rst $08                                       ; $6a43: $cf
    adc c                                         ; $6a44: $89
    ld a, $02                                     ; $6a45: $3e $02
    ld de, $ff80                                  ; $6a47: $11 $80 $ff
    rst $18                                       ; $6a4a: $df
    ld b, b                                       ; $6a4b: $40
    ld a, [bc]                                    ; $6a4c: $0a
    ld a, $02                                     ; $6a4d: $3e $02
    rst $18                                       ; $6a4f: $df
    ld b, d                                       ; $6a50: $42
    ld a, [bc]                                    ; $6a51: $0a
    rst $08                                       ; $6a52: $cf
    adc c                                         ; $6a53: $89
    ld a, $02                                     ; $6a54: $3e $02
    ld de, $ff80                                  ; $6a56: $11 $80 $ff
    rst $18                                       ; $6a59: $df
    ld b, b                                       ; $6a5a: $40
    ld a, [bc]                                    ; $6a5b: $0a
    ld a, $02                                     ; $6a5c: $3e $02
    rst $18                                       ; $6a5e: $df
    ld b, d                                       ; $6a5f: $42
    ld a, [bc]                                    ; $6a60: $0a
    ld a, $02                                     ; $6a61: $3e $02
    rst $18                                       ; $6a63: $df
    ld [$af0a], sp                                ; $6a64: $08 $0a $af
    ld bc, $2100                                  ; $6a67: $01 $00 $21
    ld de, $2100                                  ; $6a6a: $11 $00 $21
    rst $18                                       ; $6a6d: $df
    jr c, @+$0c                                   ; $6a6e: $38 $0a

    rst $18                                       ; $6a70: $df
    inc a                                         ; $6a71: $3c
    ld a, [bc]                                    ; $6a72: $0a
    call Call_034_7011                            ; $6a73: $cd $11 $70
    rst $08                                       ; $6a76: $cf
    adc d                                         ; $6a77: $8a
    call Call_034_7070                            ; $6a78: $cd $70 $70
    ld a, $02                                     ; $6a7b: $3e $02
    ld b, a                                       ; $6a7d: $47
    ld a, $07                                     ; $6a7e: $3e $07
    rst $18                                       ; $6a80: $df
    ld [hl-], a                                   ; $6a81: $32
    ld a, [bc]                                    ; $6a82: $0a
    ld a, $02                                     ; $6a83: $3e $02
    rst $18                                       ; $6a85: $df
    inc [hl]                                      ; $6a86: $34
    ld a, [bc]                                    ; $6a87: $0a
    ld a, $02                                     ; $6a88: $3e $02
    rst $18                                       ; $6a8a: $df
    ld [$3e0a], sp                                ; $6a8b: $08 $0a $3e
    ld [bc], a                                    ; $6a8e: $02
    ld b, $80                                     ; $6a8f: $06 $80
    rst $18                                       ; $6a91: $df
    inc l                                         ; $6a92: $2c
    ld a, [bc]                                    ; $6a93: $0a
    ld a, $02                                     ; $6a94: $3e $02
    ld b, a                                       ; $6a96: $47
    ld a, $06                                     ; $6a97: $3e $06
    rst $18                                       ; $6a99: $df
    ld [hl-], a                                   ; $6a9a: $32
    ld a, [bc]                                    ; $6a9b: $0a
    ld a, $02                                     ; $6a9c: $3e $02
    rst $18                                       ; $6a9e: $df
    ld [$3e0a], sp                                ; $6a9f: $08 $0a $3e
    nop                                           ; $6aa2: $00
    ld b, $00                                     ; $6aa3: $06 $00
    rst $18                                       ; $6aa5: $df
    ld a, [hl-]                                   ; $6aa6: $3a
    ld a, [bc]                                    ; $6aa7: $0a
    rst $18                                       ; $6aa8: $df
    inc a                                         ; $6aa9: $3c
    ld a, [bc]                                    ; $6aaa: $0a
    ld a, $00                                     ; $6aab: $3e $00
    ld b, $80                                     ; $6aad: $06 $80
    rst $18                                       ; $6aaf: $df
    inc l                                         ; $6ab0: $2c
    ld a, [bc]                                    ; $6ab1: $0a
    rst $20                                       ; $6ab2: $e7
    ret nz                                        ; $6ab3: $c0

    add hl, de                                    ; $6ab4: $19
    ret                                           ; $6ab5: $c9


Jump_034_6ab6:
    call Call_034_732c                            ; $6ab6: $cd $2c $73
    ret                                           ; $6ab9: $c9


Jump_034_6aba:
    rst $20                                       ; $6aba: $e7
    ret nz                                        ; $6abb: $c0

    add hl, de                                    ; $6abc: $19
    ret                                           ; $6abd: $c9


    rst $30                                       ; $6abe: $f7
    ldh [rNR24], a                                ; $6abf: $e0 $19
    jr nz, jr_034_6b04                            ; $6ac1: $20 $41

    rst $30                                       ; $6ac3: $f7
    ret nz                                        ; $6ac4: $c0

    add hl, de                                    ; $6ac5: $19
    jr z, jr_034_6b04                             ; $6ac6: $28 $3c

    ld hl, $1522                                  ; $6ac8: $21 $22 $15
    rst $18                                       ; $6acb: $df
    ld c, $0a                                     ; $6acc: $0e $0a
    xor a                                         ; $6ace: $af
    ld bc, $1f00                                  ; $6acf: $01 $00 $1f
    ld de, $1f00                                  ; $6ad2: $11 $00 $1f
    rst $18                                       ; $6ad5: $df
    jr c, @+$0c                                   ; $6ad6: $38 $0a

    ldh a, [$95]                                  ; $6ad8: $f0 $95
    ld b, a                                       ; $6ada: $47
    ld a, $03                                     ; $6adb: $3e $03
    ld de, $711b                                  ; $6add: $11 $1b $71
    rst $18                                       ; $6ae0: $df
    jr @+$0c                                      ; $6ae1: $18 $0a

    ldh a, [$95]                                  ; $6ae3: $f0 $95
    ld b, a                                       ; $6ae5: $47
    ld a, $04                                     ; $6ae6: $3e $04
    ld de, $7109                                  ; $6ae8: $11 $09 $71
    rst $18                                       ; $6aeb: $df
    jr @+$0c                                      ; $6aec: $18 $0a

    ld hl, $6bf7                                  ; $6aee: $21 $f7 $6b
    call Call_000_2449                            ; $6af1: $cd $49 $24
    ld a, $04                                     ; $6af4: $3e $04
    ld hl, $6bf7                                  ; $6af6: $21 $f7 $6b
    call Call_000_23e8                            ; $6af9: $cd $e8 $23
    ld a, $02                                     ; $6afc: $3e $02
    rst $18                                       ; $6afe: $df
    ld [$ef0a], sp                                ; $6aff: $08 $0a $ef
    ret nz                                        ; $6b02: $c0

    add hl, de                                    ; $6b03: $19

jr_034_6b04:
    call Call_034_732c                            ; $6b04: $cd $2c $73
    ret                                           ; $6b07: $c9


    rst $30                                       ; $6b08: $f7
    add b                                         ; $6b09: $80
    add hl, de                                    ; $6b0a: $19
    jr nz, jr_034_6b12                            ; $6b0b: $20 $05

    call Call_034_6bfe                            ; $6b0d: $cd $fe $6b
    jr jr_034_6b15                                ; $6b10: $18 $03

jr_034_6b12:
    call Call_034_732c                            ; $6b12: $cd $2c $73

jr_034_6b15:
    ret                                           ; $6b15: $c9


    ld bc, $00ff                                  ; $6b16: $01 $ff $00
    nop                                           ; $6b19: $00
    and h                                         ; $6b1a: $a4
    ld l, c                                       ; $6b1b: $69
    ld [bc], a                                    ; $6b1c: $02
    nop                                           ; $6b1d: $00
    ld [bc], a                                    ; $6b1e: $02
    rst $38                                       ; $6b1f: $ff
    nop                                           ; $6b20: $00
    nop                                           ; $6b21: $00
    cp [hl]                                       ; $6b22: $be
    ld l, d                                       ; $6b23: $6a
    ld [bc], a                                    ; $6b24: $02
    nop                                           ; $6b25: $00
    inc bc                                        ; $6b26: $03
    rst $38                                       ; $6b27: $ff
    nop                                           ; $6b28: $00
    nop                                           ; $6b29: $00
    ld [$026b], sp                                ; $6b2a: $08 $6b $02
    nop                                           ; $6b2d: $00
    rrca                                          ; $6b2e: $0f
    rst $38                                       ; $6b2f: $ff
    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    ld b, h                                       ; $6b32: $44
    ld [hl], c                                    ; $6b33: $71
    ld bc, $ff00                                  ; $6b34: $01 $00 $ff
    ld a, $04                                     ; $6b37: $3e $04
    rst $18                                       ; $6b39: $df
    inc d                                         ; $6b3a: $14
    ld a, [bc]                                    ; $6b3b: $0a
    ld b, $40                                     ; $6b3c: $06 $40
    ld c, $02                                     ; $6b3e: $0e $02
    rst $18                                       ; $6b40: $df
    ld h, b                                       ; $6b41: $60
    inc b                                         ; $6b42: $04
    ld a, $04                                     ; $6b43: $3e $04
    rst $18                                       ; $6b45: $df
    inc d                                         ; $6b46: $14
    ld a, [bc]                                    ; $6b47: $0a
    inc h                                         ; $6b48: $24
    dec h                                         ; $6b49: $25
    jr z, jr_034_6b52                             ; $6b4a: $28 $06

    ld de, $0037                                  ; $6b4c: $11 $37 $00
    add hl, de                                    ; $6b4f: $19
    ld [hl], $01                                  ; $6b50: $36 $01

jr_034_6b52:
    ld a, [$c46a]                                 ; $6b52: $fa $6a $c4
    cp $01                                        ; $6b55: $fe $01
    jr z, jr_034_6b5f                             ; $6b57: $28 $06

    xor a                                         ; $6b59: $af
    ld hl, $c4b4                                  ; $6b5a: $21 $b4 $c4
    ld [hl+], a                                   ; $6b5d: $22
    ld [hl+], a                                   ; $6b5e: $22

jr_034_6b5f:
    call Call_034_72e1                            ; $6b5f: $cd $e1 $72
    rst $30                                       ; $6b62: $f7
    ret nz                                        ; $6b63: $c0

    add hl, de                                    ; $6b64: $19
    jr nz, jr_034_6b93                            ; $6b65: $20 $2c

    ld a, $03                                     ; $6b67: $3e $03
    ld bc, $1fc0                                  ; $6b69: $01 $c0 $1f
    ld de, $1ce0                                  ; $6b6c: $11 $e0 $1c
    rst $18                                       ; $6b6f: $df
    jr nz, @+$0c                                  ; $6b70: $20 $0a

    ld a, $04                                     ; $6b72: $3e $04
    ld bc, $2000                                  ; $6b74: $01 $00 $20
    ld de, $1c80                                  ; $6b77: $11 $80 $1c
    rst $18                                       ; $6b7a: $df
    jr nz, @+$0c                                  ; $6b7b: $20 $0a

    ldh a, [$95]                                  ; $6b7d: $f0 $95
    ld b, a                                       ; $6b7f: $47
    ld a, $03                                     ; $6b80: $3e $03
    ld de, $711b                                  ; $6b82: $11 $1b $71
    rst $18                                       ; $6b85: $df
    jr @+$0c                                      ; $6b86: $18 $0a

    ldh a, [$95]                                  ; $6b88: $f0 $95
    ld b, a                                       ; $6b8a: $47
    ld a, $04                                     ; $6b8b: $3e $04
    ld de, $7109                                  ; $6b8d: $11 $09 $71
    rst $18                                       ; $6b90: $df
    jr jr_034_6b9d                                ; $6b91: $18 $0a

jr_034_6b93:
    rst $30                                       ; $6b93: $f7
    ldh [rNR11], a                                ; $6b94: $e0 $11
    jr nz, jr_034_6ba3                            ; $6b96: $20 $0b

    ld a, $06                                     ; $6b98: $3e $06
    ld bc, $0100                                  ; $6b9a: $01 $00 $01

jr_034_6b9d:
    ld de, $3d00                                  ; $6b9d: $11 $00 $3d
    rst $18                                       ; $6ba0: $df
    jr nz, @+$0c                                  ; $6ba1: $20 $0a

jr_034_6ba3:
    ld a, [$c46a]                                 ; $6ba3: $fa $6a $c4
    cp $06                                        ; $6ba6: $fe $06
    jp nz, Jump_034_6bae                          ; $6ba8: $c2 $ae $6b

    call Call_034_6d46                            ; $6bab: $cd $46 $6d

Jump_034_6bae:
    cp $07                                        ; $6bae: $fe $07
    jp z, Jump_034_6e5f                           ; $6bb0: $ca $5f $6e

    ld a, [$c46a]                                 ; $6bb3: $fa $6a $c4
    cp $fa                                        ; $6bb6: $fe $fa
    jr nz, jr_034_6bce                            ; $6bb8: $20 $14

    ld a, [$c967]                                 ; $6bba: $fa $67 $c9
    cp $14                                        ; $6bbd: $fe $14
    jr nz, jr_034_6bce                            ; $6bbf: $20 $0d

    ld a, [$c3e1]                                 ; $6bc1: $fa $e1 $c3
    cp $01                                        ; $6bc4: $fe $01
    jr nz, jr_034_6bce                            ; $6bc6: $20 $06

    ld a, $02                                     ; $6bc8: $3e $02
    ld [$c441], a                                 ; $6bca: $ea $41 $c4
    ret                                           ; $6bcd: $c9


jr_034_6bce:
    rst $30                                       ; $6bce: $f7
    ldh [rNR24], a                                ; $6bcf: $e0 $19
    jr nz, jr_034_6bdb                            ; $6bd1: $20 $08

    ld a, $06                                     ; $6bd3: $3e $06
    ld hl, $7347                                  ; $6bd5: $21 $47 $73
    call Call_000_23e8                            ; $6bd8: $cd $e8 $23

jr_034_6bdb:
    ld a, $00                                     ; $6bdb: $3e $00
    ld [$c967], a                                 ; $6bdd: $ea $67 $c9
    rst $30                                       ; $6be0: $f7
    ret nz                                        ; $6be1: $c0

    add hl, de                                    ; $6be2: $19
    jr nz, jr_034_6bee                            ; $6be3: $20 $09

    ld a, $04                                     ; $6be5: $3e $04
    ld hl, $6bf7                                  ; $6be7: $21 $f7 $6b
    call Call_000_23e8                            ; $6bea: $cd $e8 $23
    ret                                           ; $6bed: $c9


jr_034_6bee:
    ld a, $07                                     ; $6bee: $3e $07
    ld hl, $6bf7                                  ; $6bf0: $21 $f7 $6b
    call Call_000_23e8                            ; $6bf3: $cd $e8 $23
    ret                                           ; $6bf6: $c9


    ld bc, $0740                                  ; $6bf7: $01 $40 $07
    call Call_034_72f9                            ; $6bfa: $cd $f9 $72
    ret                                           ; $6bfd: $c9


Call_034_6bfe:
    rst $08                                       ; $6bfe: $cf
    and c                                         ; $6bff: $a1
    push af                                       ; $6c00: $f5
    ld a, $14                                     ; $6c01: $3e $14
    rst $18                                       ; $6c03: $df
    inc b                                         ; $6c04: $04
    ld a, [bc]                                    ; $6c05: $0a
    pop af                                        ; $6c06: $f1
    rst $08                                       ; $6c07: $cf
    and c                                         ; $6c08: $a1
    ld bc, $0020                                  ; $6c09: $01 $20 $00
    rst $18                                       ; $6c0c: $df
    ld [hl], $0a                                  ; $6c0d: $36 $0a
    ld a, $03                                     ; $6c0f: $3e $03
    rst $18                                       ; $6c11: $df
    inc d                                         ; $6c12: $14
    ld a, [bc]                                    ; $6c13: $0a
    inc h                                         ; $6c14: $24
    dec h                                         ; $6c15: $25
    jr z, jr_034_6c1d                             ; $6c16: $28 $05

    ld de, $0015                                  ; $6c18: $11 $15 $00
    add hl, de                                    ; $6c1b: $19
    ld [hl], a                                    ; $6c1c: $77

jr_034_6c1d:
    ld a, $03                                     ; $6c1d: $3e $03
    ld bc, $1fc0                                  ; $6c1f: $01 $c0 $1f
    ld de, $1ce0                                  ; $6c22: $11 $e0 $1c
    rst $18                                       ; $6c25: $df
    jr nz, @+$0c                                  ; $6c26: $20 $0a

    ld a, $04                                     ; $6c28: $3e $04
    ld bc, $2000                                  ; $6c2a: $01 $00 $20
    ld de, $1c80                                  ; $6c2d: $11 $80 $1c
    rst $18                                       ; $6c30: $df
    jr nz, @+$0c                                  ; $6c31: $20 $0a

    ldh a, [$95]                                  ; $6c33: $f0 $95
    ld b, a                                       ; $6c35: $47
    ld a, $03                                     ; $6c36: $3e $03
    ld de, $711b                                  ; $6c38: $11 $1b $71
    rst $18                                       ; $6c3b: $df
    jr @+$0c                                      ; $6c3c: $18 $0a

    ldh a, [$95]                                  ; $6c3e: $f0 $95
    ld b, a                                       ; $6c40: $47
    ld a, $04                                     ; $6c41: $3e $04
    ld de, $7109                                  ; $6c43: $11 $09 $71
    rst $18                                       ; $6c46: $df
    jr @+$0c                                      ; $6c47: $18 $0a

    ld hl, $151b                                  ; $6c49: $21 $1b $15
    rst $18                                       ; $6c4c: $df
    ld c, $0a                                     ; $6c4d: $0e $0a
    ld a, $02                                     ; $6c4f: $3e $02
    rst $18                                       ; $6c51: $df
    ld [$af0a], sp                                ; $6c52: $08 $0a $af
    ld bc, $2100                                  ; $6c55: $01 $00 $21
    ld de, $1f00                                  ; $6c58: $11 $00 $1f
    rst $18                                       ; $6c5b: $df
    jr c, jr_034_6c68                             ; $6c5c: $38 $0a

    rst $18                                       ; $6c5e: $df
    inc a                                         ; $6c5f: $3c
    ld a, [bc]                                    ; $6c60: $0a
    push af                                       ; $6c61: $f5
    ld a, $3c                                     ; $6c62: $3e $3c
    rst $18                                       ; $6c64: $df
    inc b                                         ; $6c65: $04
    ld a, [bc]                                    ; $6c66: $0a
    pop af                                        ; $6c67: $f1

jr_034_6c68:
    xor a                                         ; $6c68: $af
    ld bc, $2700                                  ; $6c69: $01 $00 $27
    ld de, $2300                                  ; $6c6c: $11 $00 $23
    rst $18                                       ; $6c6f: $df
    jr c, jr_034_6c7c                             ; $6c70: $38 $0a

    rst $18                                       ; $6c72: $df
    inc a                                         ; $6c73: $3c
    ld a, [bc]                                    ; $6c74: $0a
    rst $08                                       ; $6c75: $cf
    adc c                                         ; $6c76: $89
    ld a, $02                                     ; $6c77: $3e $02
    ld de, $ff80                                  ; $6c79: $11 $80 $ff

jr_034_6c7c:
    rst $18                                       ; $6c7c: $df
    ld b, b                                       ; $6c7d: $40
    ld a, [bc]                                    ; $6c7e: $0a
    ld a, $02                                     ; $6c7f: $3e $02
    rst $18                                       ; $6c81: $df
    ld b, d                                       ; $6c82: $42
    ld a, [bc]                                    ; $6c83: $0a
    rst $08                                       ; $6c84: $cf
    adc c                                         ; $6c85: $89
    ld a, $02                                     ; $6c86: $3e $02
    ld de, $ff40                                  ; $6c88: $11 $40 $ff
    rst $18                                       ; $6c8b: $df
    ld b, b                                       ; $6c8c: $40
    ld a, [bc]                                    ; $6c8d: $0a
    ld a, $02                                     ; $6c8e: $3e $02
    rst $18                                       ; $6c90: $df
    ld b, d                                       ; $6c91: $42
    ld a, [bc]                                    ; $6c92: $0a
    rst $08                                       ; $6c93: $cf
    adc c                                         ; $6c94: $89
    ld a, $02                                     ; $6c95: $3e $02
    ld de, $ff80                                  ; $6c97: $11 $80 $ff
    rst $18                                       ; $6c9a: $df
    ld b, b                                       ; $6c9b: $40
    ld a, [bc]                                    ; $6c9c: $0a
    ld a, $02                                     ; $6c9d: $3e $02
    rst $18                                       ; $6c9f: $df
    ld b, d                                       ; $6ca0: $42
    ld a, [bc]                                    ; $6ca1: $0a
    ld a, $02                                     ; $6ca2: $3e $02
    rst $18                                       ; $6ca4: $df
    ld [$3e0a], sp                                ; $6ca5: $08 $0a $3e
    nop                                           ; $6ca8: $00
    ld b, $00                                     ; $6ca9: $06 $00
    rst $18                                       ; $6cab: $df
    ld a, [hl-]                                   ; $6cac: $3a
    ld a, [bc]                                    ; $6cad: $0a
    rst $18                                       ; $6cae: $df
    inc a                                         ; $6caf: $3c
    ld a, [bc]                                    ; $6cb0: $0a
    ld bc, $0020                                  ; $6cb1: $01 $20 $00
    rst $18                                       ; $6cb4: $df
    ld [hl], $0a                                  ; $6cb5: $36 $0a
    ld a, $03                                     ; $6cb7: $3e $03
    rst $18                                       ; $6cb9: $df
    inc d                                         ; $6cba: $14
    ld a, [bc]                                    ; $6cbb: $0a
    inc h                                         ; $6cbc: $24
    dec h                                         ; $6cbd: $25
    jr z, jr_034_6cc5                             ; $6cbe: $28 $05

    ld de, $0015                                  ; $6cc0: $11 $15 $00
    add hl, de                                    ; $6cc3: $19
    ld [hl], a                                    ; $6cc4: $77

jr_034_6cc5:
    ld a, $03                                     ; $6cc5: $3e $03
    ld bc, $1fc0                                  ; $6cc7: $01 $c0 $1f
    ld de, $1ce0                                  ; $6cca: $11 $e0 $1c
    rst $18                                       ; $6ccd: $df
    jr nz, @+$0c                                  ; $6cce: $20 $0a

    ld a, $04                                     ; $6cd0: $3e $04
    ld bc, $2000                                  ; $6cd2: $01 $00 $20
    ld de, $1c80                                  ; $6cd5: $11 $80 $1c
    rst $18                                       ; $6cd8: $df
    jr nz, @+$0c                                  ; $6cd9: $20 $0a

    ldh a, [$95]                                  ; $6cdb: $f0 $95
    ld b, a                                       ; $6cdd: $47
    ld a, $03                                     ; $6cde: $3e $03
    ld de, $711b                                  ; $6ce0: $11 $1b $71
    rst $18                                       ; $6ce3: $df
    jr @+$0c                                      ; $6ce4: $18 $0a

    ldh a, [$95]                                  ; $6ce6: $f0 $95
    ld b, a                                       ; $6ce8: $47
    ld a, $04                                     ; $6ce9: $3e $04
    ld de, $7109                                  ; $6ceb: $11 $09 $71
    rst $18                                       ; $6cee: $df
    jr jr_034_6cfb                                ; $6cef: $18 $0a

    rst $20                                       ; $6cf1: $e7
    add b                                         ; $6cf2: $80
    add hl, de                                    ; $6cf3: $19
    ret                                           ; $6cf4: $c9


    ld bc, $0040                                  ; $6cf5: $01 $40 $00
    rst $18                                       ; $6cf8: $df
    ld [hl], $0a                                  ; $6cf9: $36 $0a

jr_034_6cfb:
    ld a, $02                                     ; $6cfb: $3e $02
    ld b, $00                                     ; $6cfd: $06 $00
    rst $18                                       ; $6cff: $df
    ld a, [hl-]                                   ; $6d00: $3a
    ld a, [bc]                                    ; $6d01: $0a
    rst $18                                       ; $6d02: $df
    inc a                                         ; $6d03: $3c
    ld a, [bc]                                    ; $6d04: $0a
    ld hl, $1521                                  ; $6d05: $21 $21 $15
    rst $18                                       ; $6d08: $df
    ld c, $0a                                     ; $6d09: $0e $0a
    ld a, $02                                     ; $6d0b: $3e $02
    rst $18                                       ; $6d0d: $df
    ld [$3e0a], sp                                ; $6d0e: $08 $0a $3e
    ld [bc], a                                    ; $6d11: $02
    ld b, $00                                     ; $6d12: $06 $00
    rst $18                                       ; $6d14: $df
    inc l                                         ; $6d15: $2c
    ld a, [bc]                                    ; $6d16: $0a
    ldh a, [$95]                                  ; $6d17: $f0 $95
    ld b, a                                       ; $6d19: $47
    ld a, $02                                     ; $6d1a: $3e $02
    ld de, $6d2d                                  ; $6d1c: $11 $2d $6d
    rst $18                                       ; $6d1f: $df
    jr jr_034_6d2c                                ; $6d20: $18 $0a

    ld a, $00                                     ; $6d22: $3e $00
    ld b, $00                                     ; $6d24: $06 $00
    rst $18                                       ; $6d26: $df
    ld a, [hl-]                                   ; $6d27: $3a
    ld a, [bc]                                    ; $6d28: $0a
    rst $18                                       ; $6d29: $df
    inc a                                         ; $6d2a: $3c
    ld a, [bc]                                    ; $6d2b: $0a

jr_034_6d2c:
    ret                                           ; $6d2c: $c9


    db $10                                        ; $6d2d: $10
    inc bc                                        ; $6d2e: $03
    ld bc, $10a0                                  ; $6d2f: $01 $a0 $10
    ld bc, $0401                                  ; $6d32: $01 $01 $04
    db $10                                        ; $6d35: $10
    inc bc                                        ; $6d36: $03
    ld bc, $10a0                                  ; $6d37: $01 $a0 $10
    ld bc, $0401                                  ; $6d3a: $01 $01 $04
    db $10                                        ; $6d3d: $10
    inc bc                                        ; $6d3e: $03
    ld bc, $10a0                                  ; $6d3f: $01 $a0 $10
    ld bc, $0201                                  ; $6d42: $01 $01 $02
    nop                                           ; $6d45: $00

Call_034_6d46:
    rst $30                                       ; $6d46: $f7
    ret nz                                        ; $6d47: $c0

    add hl, de                                    ; $6d48: $19
    jr z, jr_034_6d4c                             ; $6d49: $28 $01

    ret                                           ; $6d4b: $c9


jr_034_6d4c:
    rst $30                                       ; $6d4c: $f7
    ldh [rNR24], a                                ; $6d4d: $e0 $19
    jp nz, Jump_034_6e5e                          ; $6d4f: $c2 $5e $6e

    ld a, $02                                     ; $6d52: $3e $02
    ld bc, $1d00                                  ; $6d54: $01 $00 $1d
    ld de, $2500                                  ; $6d57: $11 $00 $25
    rst $18                                       ; $6d5a: $df
    jr nz, jr_034_6d67                            ; $6d5b: $20 $0a

    ld c, $08                                     ; $6d5d: $0e $08
    call Call_000_25af                            ; $6d5f: $cd $af $25
    call Call_000_2625                            ; $6d62: $cd $25 $26
    ld a, $04                                     ; $6d65: $3e $04

jr_034_6d67:
    ld hl, $6bf7                                  ; $6d67: $21 $f7 $6b
    call Call_000_23e8                            ; $6d6a: $cd $e8 $23
    ld hl, $1524                                  ; $6d6d: $21 $24 $15
    rst $18                                       ; $6d70: $df
    ld c, $0a                                     ; $6d71: $0e $0a
    rst $08                                       ; $6d73: $cf
    and c                                         ; $6d74: $a1
    push af                                       ; $6d75: $f5
    ld a, $05                                     ; $6d76: $3e $05
    rst $18                                       ; $6d78: $df
    inc b                                         ; $6d79: $04
    ld a, [bc]                                    ; $6d7a: $0a
    pop af                                        ; $6d7b: $f1
    ld a, $03                                     ; $6d7c: $3e $03
    rst $18                                       ; $6d7e: $df
    inc d                                         ; $6d7f: $14
    ld a, [bc]                                    ; $6d80: $0a
    inc h                                         ; $6d81: $24
    dec h                                         ; $6d82: $25
    jr z, jr_034_6d8a                             ; $6d83: $28 $05

    ld de, $0015                                  ; $6d85: $11 $15 $00
    add hl, de                                    ; $6d88: $19
    ld [hl], a                                    ; $6d89: $77

jr_034_6d8a:
    ldh a, [$95]                                  ; $6d8a: $f0 $95
    ld b, a                                       ; $6d8c: $47
    ld a, $03                                     ; $6d8d: $3e $03
    ld de, $7133                                  ; $6d8f: $11 $33 $71
    rst $18                                       ; $6d92: $df
    jr @+$0c                                      ; $6d93: $18 $0a

    ldh a, [$95]                                  ; $6d95: $f0 $95
    ld b, a                                       ; $6d97: $47
    ld a, $04                                     ; $6d98: $3e $04
    ld de, $70fc                                  ; $6d9a: $11 $fc $70
    rst $18                                       ; $6d9d: $df
    jr @+$0c                                      ; $6d9e: $18 $0a

    push af                                       ; $6da0: $f5
    ld a, $0a                                     ; $6da1: $3e $0a
    rst $18                                       ; $6da3: $df
    inc b                                         ; $6da4: $04
    ld a, [bc]                                    ; $6da5: $0a
    pop af                                        ; $6da6: $f1
    xor a                                         ; $6da7: $af
    ld bc, $1b00                                  ; $6da8: $01 $00 $1b
    ld de, $1d00                                  ; $6dab: $11 $00 $1d
    rst $18                                       ; $6dae: $df
    jr c, jr_034_6dbb                             ; $6daf: $38 $0a

    rst $20                                       ; $6db1: $e7
    ret nz                                        ; $6db2: $c0

    add hl, de                                    ; $6db3: $19
    push af                                       ; $6db4: $f5
    ld a, $05                                     ; $6db5: $3e $05
    rst $18                                       ; $6db7: $df
    inc b                                         ; $6db8: $04
    ld a, [bc]                                    ; $6db9: $0a
    pop af                                        ; $6dba: $f1

jr_034_6dbb:
    rst $08                                       ; $6dbb: $cf
    and c                                         ; $6dbc: $a1
    push af                                       ; $6dbd: $f5
    ld a, $78                                     ; $6dbe: $3e $78
    rst $18                                       ; $6dc0: $df
    inc b                                         ; $6dc1: $04
    ld a, [bc]                                    ; $6dc2: $0a
    pop af                                        ; $6dc3: $f1
    ld a, $02                                     ; $6dc4: $3e $02
    ld b, a                                       ; $6dc6: $47
    ld a, $07                                     ; $6dc7: $3e $07
    rst $18                                       ; $6dc9: $df
    ld [hl-], a                                   ; $6dca: $32
    ld a, [bc]                                    ; $6dcb: $0a
    ld a, $02                                     ; $6dcc: $3e $02
    rst $18                                       ; $6dce: $df
    inc [hl]                                      ; $6dcf: $34
    ld a, [bc]                                    ; $6dd0: $0a
    ld a, $02                                     ; $6dd1: $3e $02
    rst $18                                       ; $6dd3: $df
    ld [$3e0a], sp                                ; $6dd4: $08 $0a $3e
    ld [bc], a                                    ; $6dd7: $02
    ld b, a                                       ; $6dd8: $47
    ld a, $07                                     ; $6dd9: $3e $07
    rst $18                                       ; $6ddb: $df
    ld [hl-], a                                   ; $6ddc: $32
    ld a, [bc]                                    ; $6ddd: $0a
    ld a, $02                                     ; $6dde: $3e $02
    rst $18                                       ; $6de0: $df
    inc [hl]                                      ; $6de1: $34
    ld a, [bc]                                    ; $6de2: $0a
    push af                                       ; $6de3: $f5
    ld a, $0a                                     ; $6de4: $3e $0a
    rst $18                                       ; $6de6: $df
    inc b                                         ; $6de7: $04
    ld a, [bc]                                    ; $6de8: $0a
    pop af                                        ; $6de9: $f1
    ld a, $00                                     ; $6dea: $3e $00
    ld b, a                                       ; $6dec: $47
    ld a, $02                                     ; $6ded: $3e $02
    rst $18                                       ; $6def: $df
    ld l, $0a                                     ; $6df0: $2e $0a
    ld a, $02                                     ; $6df2: $3e $02
    rst $18                                       ; $6df4: $df
    ld [$3e0a], sp                                ; $6df5: $08 $0a $3e
    ld [bc], a                                    ; $6df8: $02
    ld bc, $1d00                                  ; $6df9: $01 $00 $1d
    ld de, $2100                                  ; $6dfc: $11 $00 $21
    rst $18                                       ; $6dff: $df
    ld [hl+], a                                   ; $6e00: $22
    ld a, [bc]                                    ; $6e01: $0a
    ld a, $02                                     ; $6e02: $3e $02
    rst $18                                       ; $6e04: $df
    ld e, $0a                                     ; $6e05: $1e $0a
    ld a, $00                                     ; $6e07: $3e $00
    ld b, a                                       ; $6e09: $47
    ld a, $02                                     ; $6e0a: $3e $02
    rst $18                                       ; $6e0c: $df
    ld l, $0a                                     ; $6e0d: $2e $0a
    ld a, $02                                     ; $6e0f: $3e $02
    ld b, a                                       ; $6e11: $47
    ld a, $00                                     ; $6e12: $3e $00
    rst $18                                       ; $6e14: $df
    ld l, $0a                                     ; $6e15: $2e $0a
    ld a, $02                                     ; $6e17: $3e $02
    ld b, a                                       ; $6e19: $47
    ld a, $05                                     ; $6e1a: $3e $05
    rst $18                                       ; $6e1c: $df
    ld [hl-], a                                   ; $6e1d: $32
    ld a, [bc]                                    ; $6e1e: $0a
    ld a, $02                                     ; $6e1f: $3e $02
    rst $18                                       ; $6e21: $df
    inc [hl]                                      ; $6e22: $34
    ld a, [bc]                                    ; $6e23: $0a
    ld a, $02                                     ; $6e24: $3e $02
    rst $18                                       ; $6e26: $df
    ld [$110a], sp                                ; $6e27: $08 $0a $11
    ret z                                         ; $6e2a: $c8

    nop                                           ; $6e2b: $00
    rst $30                                       ; $6e2c: $f7
    ld h, b                                       ; $6e2d: $60
    inc c                                         ; $6e2e: $0c
    jr z, jr_034_6e3e                             ; $6e2f: $28 $0d

    ld h, d                                       ; $6e31: $62
    ld l, e                                       ; $6e32: $6b
    sra h                                         ; $6e33: $cb $2c
    rr l                                          ; $6e35: $cb $1d
    sra h                                         ; $6e37: $cb $2c
    rr l                                          ; $6e39: $cb $1d
    add hl, de                                    ; $6e3b: $19
    ld d, h                                       ; $6e3c: $54
    ld e, l                                       ; $6e3d: $5d

jr_034_6e3e:
    push de                                       ; $6e3e: $d5
    rst $18                                       ; $6e3f: $df
    ld [hl+], a                                   ; $6e40: $22
    ld [bc], a                                    ; $6e41: $02
    pop hl                                        ; $6e42: $e1
    rst $18                                       ; $6e43: $df
    ld d, [hl]                                    ; $6e44: $56
    dec b                                         ; $6e45: $05
    rst $08                                       ; $6e46: $cf
    jr c, jr_034_6e6a                             ; $6e47: $38 $21

    dec de                                        ; $6e49: $1b
    ld bc, $0edf                                  ; $6e4a: $01 $df $0e
    ld a, [bc]                                    ; $6e4d: $0a
    ld a, $80                                     ; $6e4e: $3e $80
    rst $18                                       ; $6e50: $df
    ld [$cd0a], sp                                ; $6e51: $08 $0a $cd
    rra                                           ; $6e54: $1f
    inc l                                         ; $6e55: $2c
    call Call_034_7dd8                            ; $6e56: $cd $d8 $7d
    ld a, $03                                     ; $6e59: $3e $03
    ld [$c441], a                                 ; $6e5b: $ea $41 $c4

Jump_034_6e5e:
    ret                                           ; $6e5e: $c9


Jump_034_6e5f:
    ld a, $02                                     ; $6e5f: $3e $02
    ld bc, $1d00                                  ; $6e61: $01 $00 $1d
    ld de, $2100                                  ; $6e64: $11 $00 $21
    rst $18                                       ; $6e67: $df
    jr nz, @+$0c                                  ; $6e68: $20 $0a

jr_034_6e6a:
    ld a, $03                                     ; $6e6a: $3e $03
    ld bc, $1b00                                  ; $6e6c: $01 $00 $1b
    ld de, $1b00                                  ; $6e6f: $11 $00 $1b
    rst $18                                       ; $6e72: $df
    jr nz, jr_034_6e7f                            ; $6e73: $20 $0a

    rst $20                                       ; $6e75: $e7
    ldh [rNR24], a                                ; $6e76: $e0 $19
    ld b, $00                                     ; $6e78: $06 $00
    ld c, $fa                                     ; $6e7a: $0e $fa
    rst $18                                       ; $6e7c: $df
    ld c, [hl]                                    ; $6e7d: $4e
    ld a, [bc]                                    ; $6e7e: $0a

jr_034_6e7f:
    rst $18                                       ; $6e7f: $df
    inc [hl]                                      ; $6e80: $34
    ld [bc], a                                    ; $6e81: $02
    ld c, $08                                     ; $6e82: $0e $08
    call Call_000_25af                            ; $6e84: $cd $af $25
    call Call_000_2625                            ; $6e87: $cd $25 $26
    ld a, $07                                     ; $6e8a: $3e $07
    ld hl, $6bf7                                  ; $6e8c: $21 $f7 $6b
    call Call_000_23e8                            ; $6e8f: $cd $e8 $23
    ld a, $02                                     ; $6e92: $3e $02
    ld b, $00                                     ; $6e94: $06 $00
    rst $18                                       ; $6e96: $df
    inc l                                         ; $6e97: $2c
    ld a, [bc]                                    ; $6e98: $0a
    ld a, $02                                     ; $6e99: $3e $02
    ld b, a                                       ; $6e9b: $47
    ld a, $05                                     ; $6e9c: $3e $05
    rst $18                                       ; $6e9e: $df
    ld [hl-], a                                   ; $6e9f: $32
    ld a, [bc]                                    ; $6ea0: $0a
    ld a, $02                                     ; $6ea1: $3e $02
    rst $18                                       ; $6ea3: $df
    inc [hl]                                      ; $6ea4: $34
    ld a, [bc]                                    ; $6ea5: $0a
    ld hl, $1527                                  ; $6ea6: $21 $27 $15
    rst $18                                       ; $6ea9: $df
    ld c, $0a                                     ; $6eaa: $0e $0a
    ld a, $02                                     ; $6eac: $3e $02
    rst $18                                       ; $6eae: $df
    ld [$3e0a], sp                                ; $6eaf: $08 $0a $3e
    ld [bc], a                                    ; $6eb2: $02
    ld bc, $1b00                                  ; $6eb3: $01 $00 $1b
    ld de, $1c00                                  ; $6eb6: $11 $00 $1c
    rst $18                                       ; $6eb9: $df
    ld [hl+], a                                   ; $6eba: $22
    ld a, [bc]                                    ; $6ebb: $0a
    ld a, $02                                     ; $6ebc: $3e $02
    rst $18                                       ; $6ebe: $df
    ld e, $0a                                     ; $6ebf: $1e $0a
    ld a, $02                                     ; $6ec1: $3e $02
    ld b, a                                       ; $6ec3: $47
    ld a, $07                                     ; $6ec4: $3e $07
    rst $18                                       ; $6ec6: $df
    ld [hl-], a                                   ; $6ec7: $32
    ld a, [bc]                                    ; $6ec8: $0a
    ld a, $02                                     ; $6ec9: $3e $02
    rst $18                                       ; $6ecb: $df
    inc [hl]                                      ; $6ecc: $34
    ld a, [bc]                                    ; $6ecd: $0a
    push af                                       ; $6ece: $f5
    ld a, $0a                                     ; $6ecf: $3e $0a
    rst $18                                       ; $6ed1: $df
    inc b                                         ; $6ed2: $04
    ld a, [bc]                                    ; $6ed3: $0a
    pop af                                        ; $6ed4: $f1
    rst $08                                       ; $6ed5: $cf
    sub h                                         ; $6ed6: $94
    ld a, $03                                     ; $6ed7: $3e $03
    ld b, $00                                     ; $6ed9: $06 $00
    rst $18                                       ; $6edb: $df
    ld b, [hl]                                    ; $6edc: $46
    ld a, [bc]                                    ; $6edd: $0a
    ld a, $00                                     ; $6ede: $3e $00
    ld b, a                                       ; $6ee0: $47
    ld a, $02                                     ; $6ee1: $3e $02
    rst $18                                       ; $6ee3: $df
    ld l, $0a                                     ; $6ee4: $2e $0a
    ld a, $02                                     ; $6ee6: $3e $02
    rst $18                                       ; $6ee8: $df
    ld [$3e0a], sp                                ; $6ee9: $08 $0a $3e
    ld [bc], a                                    ; $6eec: $02
    ld b, a                                       ; $6eed: $47
    ld a, $05                                     ; $6eee: $3e $05
    rst $18                                       ; $6ef0: $df
    ld [hl-], a                                   ; $6ef1: $32
    ld a, [bc]                                    ; $6ef2: $0a
    ld a, $02                                     ; $6ef3: $3e $02
    rst $18                                       ; $6ef5: $df
    inc [hl]                                      ; $6ef6: $34
    ld a, [bc]                                    ; $6ef7: $0a
    ld a, $00                                     ; $6ef8: $3e $00
    ld b, a                                       ; $6efa: $47
    ld a, $07                                     ; $6efb: $3e $07
    rst $18                                       ; $6efd: $df
    ld [hl-], a                                   ; $6efe: $32
    ld a, [bc]                                    ; $6eff: $0a
    ld a, $00                                     ; $6f00: $3e $00
    rst $18                                       ; $6f02: $df
    inc [hl]                                      ; $6f03: $34
    ld a, [bc]                                    ; $6f04: $0a
    ld a, $02                                     ; $6f05: $3e $02
    ld bc, $1400                                  ; $6f07: $01 $00 $14
    ld de, $2f00                                  ; $6f0a: $11 $00 $2f
    rst $18                                       ; $6f0d: $df
    ld [hl+], a                                   ; $6f0e: $22
    ld a, [bc]                                    ; $6f0f: $0a
    ld a, $00                                     ; $6f10: $3e $00
    ld b, $40                                     ; $6f12: $06 $40
    rst $18                                       ; $6f14: $df
    inc l                                         ; $6f15: $2c
    ld a, [bc]                                    ; $6f16: $0a

jr_034_6f17:
    push af                                       ; $6f17: $f5
    ld a, $5a                                     ; $6f18: $3e $5a
    rst $18                                       ; $6f1a: $df
    inc b                                         ; $6f1b: $04
    ld a, [bc]                                    ; $6f1c: $0a
    pop af                                        ; $6f1d: $f1
    push af                                       ; $6f1e: $f5
    ld a, $1e                                     ; $6f1f: $3e $1e
    rst $18                                       ; $6f21: $df
    inc b                                         ; $6f22: $04
    ld a, [bc]                                    ; $6f23: $0a
    pop af                                        ; $6f24: $f1
    ld c, $04                                     ; $6f25: $0e $04
    call Call_000_25a1                            ; $6f27: $cd $a1 $25
    call Call_000_2625                            ; $6f2a: $cd $25 $26
    ld a, $01                                     ; $6f2d: $3e $01
    ld [$c441], a                                 ; $6f2f: $ea $41 $c4
    ret                                           ; $6f32: $c9


    nop                                           ; $6f33: $00
    nop                                           ; $6f34: $00
    nop                                           ; $6f35: $00
    nop                                           ; $6f36: $00
    nop                                           ; $6f37: $00
    nop                                           ; $6f38: $00
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    nop                                           ; $6f3b: $00
    nop                                           ; $6f3c: $00
    nop                                           ; $6f3d: $00
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    rlca                                          ; $6f40: $07
    rlca                                          ; $6f41: $07
    dec de                                        ; $6f42: $1b
    inc e                                         ; $6f43: $1c
    cpl                                           ; $6f44: $2f
    jr nc, jr_034_6fc6                            ; $6f45: $30 $7f

    ld b, b                                       ; $6f47: $40
    cp a                                          ; $6f48: $bf
    rst $00                                       ; $6f49: $c7
    ld hl, sp-$78                                 ; $6f4a: $f8 $88
    add sp, -$68                                  ; $6f4c: $e8 $98
    ld [hl], b                                    ; $6f4e: $70
    ld [hl], b                                    ; $6f4f: $70
    ld bc, $0301                                  ; $6f50: $01 $01 $03
    ld [bc], a                                    ; $6f53: $02
    rlca                                          ; $6f54: $07
    inc b                                         ; $6f55: $04
    dec b                                         ; $6f56: $05
    ld b, $03                                     ; $6f57: $06 $03

jr_034_6f59:
    inc bc                                        ; $6f59: $03
    dec b                                         ; $6f5a: $05
    ld b, $07                                     ; $6f5b: $06 $07
    inc b                                         ; $6f5d: $04
    inc bc                                        ; $6f5e: $03
    inc bc                                        ; $6f5f: $03
    ldh [$e0], a                                  ; $6f60: $e0 $e0
    ret c                                         ; $6f62: $d8

    jr c, jr_034_6f59                             ; $6f63: $38 $f4

    inc c                                         ; $6f65: $0c
    cp $02                                        ; $6f66: $fe $02
    db $fd                                        ; $6f68: $fd
    db $e3                                        ; $6f69: $e3
    rra                                           ; $6f6a: $1f
    ld de, $111f                                  ; $6f6b: $11 $1f $11
    ld a, l                                       ; $6f6e: $7d
    ld h, e                                       ; $6f6f: $63
    cp $82                                        ; $6f70: $fe $82
    db $f4                                        ; $6f72: $f4
    inc c                                         ; $6f73: $0c
    ret c                                         ; $6f74: $d8

    jr c, jr_034_6f17                             ; $6f75: $38 $a0

    ld h, b                                       ; $6f77: $60
    ret nz                                        ; $6f78: $c0

    ret nz                                        ; $6f79: $c0

    ldh [rNR41], a                                ; $6f7a: $e0 $20
    and b                                         ; $6f7c: $a0
    ld h, b                                       ; $6f7d: $60
    ret nz                                        ; $6f7e: $c0

    ret nz                                        ; $6f7f: $c0

    nop                                           ; $6f80: $00
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    nop                                           ; $6f83: $00
    inc bc                                        ; $6f84: $03
    inc bc                                        ; $6f85: $03
    dec c                                         ; $6f86: $0d
    ld c, $17                                     ; $6f87: $0e $17
    jr jr_034_6fba                                ; $6f89: $18 $2f

    inc sp                                        ; $6f8b: $33
    inc a                                         ; $6f8c: $3c
    inc h                                         ; $6f8d: $24
    inc l                                         ; $6f8e: $2c
    inc [hl]                                      ; $6f8f: $34
    jr jr_034_6faa                                ; $6f90: $18 $18

    ld bc, $0301                                  ; $6f92: $01 $01 $03
    ld [bc], a                                    ; $6f95: $02
    inc bc                                        ; $6f96: $03
    ld [bc], a                                    ; $6f97: $02
    ld bc, $0301                                  ; $6f98: $01 $01 $03
    ld [bc], a                                    ; $6f9b: $02
    inc bc                                        ; $6f9c: $03
    ld [bc], a                                    ; $6f9d: $02
    ld bc, $0001                                  ; $6f9e: $01 $01 $00
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    nop                                           ; $6fa3: $00
    ret nz                                        ; $6fa4: $c0

    ret nz                                        ; $6fa5: $c0

    or b                                          ; $6fa6: $b0
    ld [hl], b                                    ; $6fa7: $70
    add sp, $18                                   ; $6fa8: $e8 $18

jr_034_6faa:
    db $f4                                        ; $6faa: $f4
    call z, Call_000_243c                         ; $6fab: $cc $3c $24
    inc a                                         ; $6fae: $3c
    inc h                                         ; $6faf: $24
    db $f4                                        ; $6fb0: $f4
    call z, Call_000_18e8                         ; $6fb1: $cc $e8 $18
    or b                                          ; $6fb4: $b0
    ld [hl], b                                    ; $6fb5: $70
    ld b, b                                       ; $6fb6: $40
    ret nz                                        ; $6fb7: $c0

    add b                                         ; $6fb8: $80
    add b                                         ; $6fb9: $80

jr_034_6fba:
    ret nz                                        ; $6fba: $c0

    ld b, b                                       ; $6fbb: $40
    ld b, b                                       ; $6fbc: $40
    ret nz                                        ; $6fbd: $c0

    add b                                         ; $6fbe: $80
    add b                                         ; $6fbf: $80
    nop                                           ; $6fc0: $00
    nop                                           ; $6fc1: $00
    nop                                           ; $6fc2: $00
    nop                                           ; $6fc3: $00
    nop                                           ; $6fc4: $00
    nop                                           ; $6fc5: $00

jr_034_6fc6:
    nop                                           ; $6fc6: $00
    nop                                           ; $6fc7: $00
    inc bc                                        ; $6fc8: $03
    inc bc                                        ; $6fc9: $03
    rlca                                          ; $6fca: $07
    inc b                                         ; $6fcb: $04
    rrca                                          ; $6fcc: $0f
    add hl, bc                                    ; $6fcd: $09
    ld c, $0a                                     ; $6fce: $0e $0a
    ld a, [bc]                                    ; $6fd0: $0a
    ld c, $04                                     ; $6fd1: $0e $04
    inc b                                         ; $6fd3: $04
    ld bc, $0301                                  ; $6fd4: $01 $01 $03
    ld [bc], a                                    ; $6fd7: $02
    inc bc                                        ; $6fd8: $03
    ld [bc], a                                    ; $6fd9: $02
    ld bc, $0301                                  ; $6fda: $01 $01 $03
    ld [bc], a                                    ; $6fdd: $02
    ld bc, $0001                                  ; $6fde: $01 $01 $00
    nop                                           ; $6fe1: $00
    nop                                           ; $6fe2: $00
    nop                                           ; $6fe3: $00
    nop                                           ; $6fe4: $00
    nop                                           ; $6fe5: $00
    nop                                           ; $6fe6: $00
    nop                                           ; $6fe7: $00
    ret nz                                        ; $6fe8: $c0

    ret nz                                        ; $6fe9: $c0

    ldh [rNR41], a                                ; $6fea: $e0 $20
    ldh a, [$90]                                  ; $6fec: $f0 $90
    ld [hl], b                                    ; $6fee: $70
    ld d, b                                       ; $6fef: $50
    ld [hl], b                                    ; $6ff0: $70
    ld d, b                                       ; $6ff1: $50
    ldh a, [$90]                                  ; $6ff2: $f0 $90
    ldh [rNR41], a                                ; $6ff4: $e0 $20
    ld b, b                                       ; $6ff6: $40
    ret nz                                        ; $6ff7: $c0

    add b                                         ; $6ff8: $80
    add b                                         ; $6ff9: $80
    nop                                           ; $6ffa: $00
    nop                                           ; $6ffb: $00
    add b                                         ; $6ffc: $80
    add b                                         ; $6ffd: $80
    nop                                           ; $6ffe: $00
    nop                                           ; $6fff: $00
    db $10                                        ; $7000: $10
    ld [$0000], sp                                ; $7001: $08 $00 $00
    db $10                                        ; $7004: $10
    db $10                                        ; $7005: $10
    ld [bc], a                                    ; $7006: $02
    nop                                           ; $7007: $00
    add b                                         ; $7008: $80
    ret nz                                        ; $7009: $c0

    ld bc, $7fff                                  ; $700a: $01 $ff $7f
    ld c, e                                       ; $700d: $4b
    ld b, e                                       ; $700e: $43
    nop                                           ; $700f: $00
    nop                                           ; $7010: $00

Call_034_7011:
    xor a                                         ; $7011: $af
    ldh [rVBK], a                                 ; $7012: $e0 $4f
    ld hl, $6f40                                  ; $7014: $21 $40 $6f
    ld de, $8500                                  ; $7017: $11 $00 $85
    ld c, $18                                     ; $701a: $0e $18
    call Call_000_0468                            ; $701c: $cd $68 $04
    ld hl, $7009                                  ; $701f: $21 $09 $70
    ld de, $0f01                                  ; $7022: $11 $01 $0f
    call Call_000_056c                            ; $7025: $cd $6c $05
    ret                                           ; $7028: $c9


Call_034_7029:
    ld h, $06                                     ; $7029: $26 $06

jr_034_702b:
    push hl                                       ; $702b: $e5
    push bc                                       ; $702c: $c5
    ld hl, $c320                                  ; $702d: $21 $20 $c3
    ld a, [hl+]                                   ; $7030: $2a
    ld d, [hl]                                    ; $7031: $56
    ld e, a                                       ; $7032: $5f
    ld hl, $c2a0                                  ; $7033: $21 $a0 $c2
    ld a, [hl+]                                   ; $7036: $2a
    ld h, [hl]                                    ; $7037: $66
    ld l, a                                       ; $7038: $6f
    call Call_000_08ac                            ; $7039: $cd $ac $08
    ld de, $0100                                  ; $703c: $11 $00 $01
    call Call_000_08ac                            ; $703f: $cd $ac $08
    add hl, hl                                    ; $7042: $29
    add hl, hl                                    ; $7043: $29
    add hl, hl                                    ; $7044: $29
    push hl                                       ; $7045: $e5
    ld hl, $c322                                  ; $7046: $21 $22 $c3
    ld a, [hl+]                                   ; $7049: $2a
    ld d, [hl]                                    ; $704a: $56
    ld e, a                                       ; $704b: $5f
    ld hl, $c2a2                                  ; $704c: $21 $a2 $c2
    ld a, [hl+]                                   ; $704f: $2a
    ld h, [hl]                                    ; $7050: $66
    ld l, a                                       ; $7051: $6f
    call Call_000_08ac                            ; $7052: $cd $ac $08
    ld de, $03c0                                  ; $7055: $11 $c0 $03
    call Call_000_08ac                            ; $7058: $cd $ac $08
    add hl, hl                                    ; $705b: $29
    add hl, hl                                    ; $705c: $29
    add hl, hl                                    ; $705d: $29
    ld e, h                                       ; $705e: $5c
    pop hl                                        ; $705f: $e1
    ld d, h                                       ; $7060: $54
    ld hl, $7000                                  ; $7061: $21 $00 $70
    call Call_000_26ea                            ; $7064: $cd $ea $26
    call Call_000_2e3b                            ; $7067: $cd $3b $2e
    pop bc                                        ; $706a: $c1
    pop hl                                        ; $706b: $e1
    dec h                                         ; $706c: $25
    jr nz, jr_034_702b                            ; $706d: $20 $bc

    ret                                           ; $706f: $c9


Call_034_7070:
    ld a, $00                                     ; $7070: $3e $00
    ld [$c3e0], a                                 ; $7072: $ea $e0 $c3
    ld bc, $0758                                  ; $7075: $01 $58 $07
    call Call_034_7029                            ; $7078: $cd $29 $70
    ld bc, $0758                                  ; $707b: $01 $58 $07
    call Call_034_7029                            ; $707e: $cd $29 $70
    ld bc, $0754                                  ; $7081: $01 $54 $07
    call Call_034_7029                            ; $7084: $cd $29 $70
    ld bc, $0754                                  ; $7087: $01 $54 $07
    call Call_034_7029                            ; $708a: $cd $29 $70

jr_034_708d:
    ld a, [$c3e0]                                 ; $708d: $fa $e0 $c3
    cp $03                                        ; $7090: $fe $03
    jr z, jr_034_70b2                             ; $7092: $28 $1e

    inc a                                         ; $7094: $3c
    ld [$c3e0], a                                 ; $7095: $ea $e0 $c3
    ld bc, $0750                                  ; $7098: $01 $50 $07
    call Call_034_7029                            ; $709b: $cd $29 $70
    ld bc, $0754                                  ; $709e: $01 $54 $07
    call Call_034_7029                            ; $70a1: $cd $29 $70
    ld bc, $0758                                  ; $70a4: $01 $58 $07
    call Call_034_7029                            ; $70a7: $cd $29 $70
    ld bc, $0754                                  ; $70aa: $01 $54 $07
    call Call_034_7029                            ; $70ad: $cd $29 $70
    jr jr_034_708d                                ; $70b0: $18 $db

jr_034_70b2:
    ret                                           ; $70b2: $c9


    ld a, $00                                     ; $70b3: $3e $00
    ld [$c3e0], a                                 ; $70b5: $ea $e0 $c3

jr_034_70b8:
    ld a, [$c3e0]                                 ; $70b8: $fa $e0 $c3
    cp $08                                        ; $70bb: $fe $08
    jr z, jr_034_70d1                             ; $70bd: $28 $12

    inc a                                         ; $70bf: $3c
    ld [$c3e0], a                                 ; $70c0: $ea $e0 $c3
    ld bc, $0754                                  ; $70c3: $01 $54 $07
    call Call_034_7029                            ; $70c6: $cd $29 $70
    ld bc, $0758                                  ; $70c9: $01 $58 $07
    call Call_034_7029                            ; $70cc: $cd $29 $70
    jr jr_034_70b8                                ; $70cf: $18 $e7

jr_034_70d1:
    ret                                           ; $70d1: $c9


    ld hl, $c2a0                                  ; $70d2: $21 $a0 $c2
    ld a, [hl+]                                   ; $70d5: $2a
    ld h, [hl]                                    ; $70d6: $66
    ld l, a                                       ; $70d7: $6f
    ld de, $0200                                  ; $70d8: $11 $00 $02
    call Call_000_08ac                            ; $70db: $cd $ac $08
    ld c, l                                       ; $70de: $4d
    ld b, h                                       ; $70df: $44
    ld hl, $c2a2                                  ; $70e0: $21 $a2 $c2
    ld a, [hl+]                                   ; $70e3: $2a
    ld h, [hl]                                    ; $70e4: $66
    ld l, a                                       ; $70e5: $6f
    ld de, $0200                                  ; $70e6: $11 $00 $02
    call Call_000_08ac                            ; $70e9: $cd $ac $08
    ld e, l                                       ; $70ec: $5d
    ld d, h                                       ; $70ed: $54
    ld a, $02                                     ; $70ee: $3e $02
    rst $18                                       ; $70f0: $df
    ld [hl+], a                                   ; $70f1: $22
    ld a, [bc]                                    ; $70f2: $0a
    ld a, $02                                     ; $70f3: $3e $02
    rst $18                                       ; $70f5: $df
    ld e, $0a                                     ; $70f6: $1e $0a
    ret                                           ; $70f8: $c9


    rst $08                                       ; $70f9: $cf
    and d                                         ; $70fa: $a2
    ret                                           ; $70fb: $c9


    db $10                                        ; $70fc: $10
    inc bc                                        ; $70fd: $03
    ld bc, $040a                                  ; $70fe: $01 $0a $04
    nop                                           ; $7101: $00
    dec bc                                        ; $7102: $0b
    nop                                           ; $7103: $00
    dec d                                         ; $7104: $15
    ld [bc], a                                    ; $7105: $02
    db $10                                        ; $7106: $10
    ld bc, $1000                                  ; $7107: $01 $00 $10
    inc bc                                        ; $710a: $03
    inc b                                         ; $710b: $04
    nop                                           ; $710c: $00
    jr nz, @-$7e                                  ; $710d: $20 $80

    inc e                                         ; $710f: $1c
    ld [bc], a                                    ; $7110: $02
    db $10                                        ; $7111: $10
    ld bc, $0400                                  ; $7112: $01 $00 $04
    ld b, b                                       ; $7115: $40
    dec bc                                        ; $7116: $0b
    ld b, b                                       ; $7117: $40
    dec d                                         ; $7118: $15
    ld [bc], a                                    ; $7119: $02
    nop                                           ; $711a: $00
    inc b                                         ; $711b: $04
    ret nz                                        ; $711c: $c0

    rra                                           ; $711d: $1f
    ldh [rNR32], a                                ; $711e: $e0 $1c
    ld [bc], a                                    ; $7120: $02
    ld bc, $0378                                  ; $7121: $01 $78 $03
    add b                                         ; $7124: $80
    rra                                           ; $7125: $1f
    ldh [rNR32], a                                ; $7126: $e0 $1c
    ld bc, $0378                                  ; $7128: $01 $78 $03
    nop                                           ; $712b: $00
    jr nz, @-$1e                                  ; $712c: $20 $e0

    inc e                                         ; $712e: $1c
    inc c                                         ; $712f: $0c
    pop af                                        ; $7130: $f1
    rst $38                                       ; $7131: $ff
    nop                                           ; $7132: $00
    inc b                                         ; $7133: $04
    nop                                           ; $7134: $00
    rra                                           ; $7135: $1f
    nop                                           ; $7136: $00
    ld a, [de]                                    ; $7137: $1a
    ld [bc], a                                    ; $7138: $02
    dec c                                         ; $7139: $0d
    ld c, $08                                     ; $713a: $0e $08
    nop                                           ; $713c: $00
    inc b                                         ; $713d: $04
    nop                                           ; $713e: $00
    dec de                                        ; $713f: $1b
    nop                                           ; $7140: $00
    dec de                                        ; $7141: $1b
    ld [bc], a                                    ; $7142: $02
    nop                                           ; $7143: $00

Call_034_7144:
    rst $18                                       ; $7144: $df
    nop                                           ; $7145: $00
    ld a, [bc]                                    ; $7146: $0a
    ld hl, $1523                                  ; $7147: $21 $23 $15
    rst $18                                       ; $714a: $df
    ld c, $0a                                     ; $714b: $0e $0a
    ld a, $80                                     ; $714d: $3e $80
    rst $18                                       ; $714f: $df
    ld a, [bc]                                    ; $7150: $0a
    ld a, [bc]                                    ; $7151: $0a
    rst $18                                       ; $7152: $df
    ld [de], a                                    ; $7153: $12
    ld a, [bc]                                    ; $7154: $0a
    rst $18                                       ; $7155: $df
    inc c                                         ; $7156: $0c
    ld a, [bc]                                    ; $7157: $0a
    push af                                       ; $7158: $f5
    ld a, $05                                     ; $7159: $3e $05
    rst $18                                       ; $715b: $df
    inc b                                         ; $715c: $04
    ld a, [bc]                                    ; $715d: $0a
    pop af                                        ; $715e: $f1
    and a                                         ; $715f: $a7
    jr z, jr_034_7164                             ; $7160: $28 $02

    jr jr_034_7167                                ; $7162: $18 $03

jr_034_7164:
    call Call_034_716b                            ; $7164: $cd $6b $71

jr_034_7167:
    rst $18                                       ; $7167: $df
    ld [bc], a                                    ; $7168: $02
    ld a, [bc]                                    ; $7169: $0a
    ret                                           ; $716a: $c9


Call_034_716b:
    ld a, $14                                     ; $716b: $3e $14
    ld [$c967], a                                 ; $716d: $ea $67 $c9
    ld a, $00                                     ; $7170: $3e $00
    ld [$c3e1], a                                 ; $7172: $ea $e1 $c3
    rst $18                                       ; $7175: $df
    inc e                                         ; $7176: $1c
    db $10                                        ; $7177: $10
    rst $18                                       ; $7178: $df
    inc h                                         ; $7179: $24
    db $10                                        ; $717a: $10
    rst $30                                       ; $717b: $f7
    ldh [rNR24], a                                ; $717c: $e0 $19
    jp nz, Jump_034_7194                          ; $717e: $c2 $94 $71

    rst $30                                       ; $7181: $f7
    ret nz                                        ; $7182: $c0

    add hl, de                                    ; $7183: $19
    jp nz, Jump_034_7194                          ; $7184: $c2 $94 $71

    ld a, $05                                     ; $7187: $3e $05
    ld [$c834], a                                 ; $7189: $ea $34 $c8
    ld a, $28                                     ; $718c: $3e $28
    ld [$c82c], a                                 ; $718e: $ea $2c $c8
    jp Jump_034_719e                              ; $7191: $c3 $9e $71


Jump_034_7194:
    ld a, $07                                     ; $7194: $3e $07
    ld [$c834], a                                 ; $7196: $ea $34 $c8
    ld a, $07                                     ; $7199: $3e $07
    ld [$c82c], a                                 ; $719b: $ea $2c $c8

Jump_034_719e:
    ld bc, $8000                                  ; $719e: $01 $00 $80
    rst $18                                       ; $71a1: $df
    ld e, $02                                     ; $71a2: $1e $02
    ld bc, $ff01                                  ; $71a4: $01 $01 $ff
    rst $18                                       ; $71a7: $df
    ld e, $02                                     ; $71a8: $1e $02
    ld hl, $0008                                  ; $71aa: $21 $08 $00
    rst $18                                       ; $71ad: $df
    db $10                                        ; $71ae: $10
    db $10                                        ; $71af: $10
    ld a, $00                                     ; $71b0: $3e $00
    rst $18                                       ; $71b2: $df
    ld e, $10                                     ; $71b3: $1e $10
    call Call_034_7254                            ; $71b5: $cd $54 $72
    call Call_034_7215                            ; $71b8: $cd $15 $72
    ldh a, [$95]                                  ; $71bb: $f0 $95
    ld hl, $71cc                                  ; $71bd: $21 $cc $71
    rst $18                                       ; $71c0: $df
    ld a, [de]                                    ; $71c1: $1a
    db $10                                        ; $71c2: $10
    ld a, $01                                     ; $71c3: $3e $01
    rst $18                                       ; $71c5: $df
    ld [de], a                                    ; $71c6: $12
    db $10                                        ; $71c7: $10
    rst $18                                       ; $71c8: $df
    jr nc, jr_034_71db                            ; $71c9: $30 $10

    ret                                           ; $71cb: $c9


    db $ec                                        ; $71cc: $ec
    ld [hl], c                                    ; $71cd: $71
    db $ed                                        ; $71ce: $ed
    ld [hl], c                                    ; $71cf: $71
    nop                                           ; $71d0: $00
    nop                                           ; $71d1: $00
    nop                                           ; $71d2: $00
    nop                                           ; $71d3: $00
    jp Jump_000_0065                              ; $71d4: $c3 $65 $00


    nop                                           ; $71d7: $00
    nop                                           ; $71d8: $00
    nop                                           ; $71d9: $00
    nop                                           ; $71da: $00

jr_034_71db:
    nop                                           ; $71db: $00
    nop                                           ; $71dc: $00
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    nop                                           ; $71e0: $00
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    nop                                           ; $71e4: $00
    nop                                           ; $71e5: $00
    nop                                           ; $71e6: $00
    nop                                           ; $71e7: $00
    nop                                           ; $71e8: $00
    nop                                           ; $71e9: $00
    nop                                           ; $71ea: $00
    nop                                           ; $71eb: $00
    ret                                           ; $71ec: $c9


    ld a, [$d48e]                                 ; $71ed: $fa $8e $d4
    bit 1, a                                      ; $71f0: $cb $4f
    jr nz, jr_034_71fe                            ; $71f2: $20 $0a

    bit 2, a                                      ; $71f4: $cb $57
    jr nz, jr_034_71fe                            ; $71f6: $20 $06

    ld a, $80                                     ; $71f8: $3e $80
    rst $18                                       ; $71fa: $df
    ld l, $10                                     ; $71fb: $2e $10
    ret                                           ; $71fd: $c9


jr_034_71fe:
    ld a, $01                                     ; $71fe: $3e $01
    ld [$c3e1], a                                 ; $7200: $ea $e1 $c3
    rst $28                                       ; $7203: $ef
    ld h, b                                       ; $7204: $60
    inc c                                         ; $7205: $0c
    ld a, [$c8aa]                                 ; $7206: $fa $aa $c8
    or a                                          ; $7209: $b7
    jr z, jr_034_720f                             ; $720a: $28 $03

    rst $20                                       ; $720c: $e7
    ld h, b                                       ; $720d: $60
    inc c                                         ; $720e: $0c

jr_034_720f:
    ld a, $80                                     ; $720f: $3e $80
    rst $18                                       ; $7211: $df
    ld l, $10                                     ; $7212: $2e $10
    ret                                           ; $7214: $c9


Call_034_7215:
    call Call_000_0a61                            ; $7215: $cd $61 $0a
    ld a, l                                       ; $7218: $7d
    and $03                                       ; $7219: $e6 $03
    and a                                         ; $721b: $a7
    jr nz, jr_034_7220                            ; $721c: $20 $02

    ld a, $01                                     ; $721e: $3e $01

jr_034_7220:
    add $05                                       ; $7220: $c6 $05
    ld [$c3e3], a                                 ; $7222: $ea $e3 $c3
    call Call_000_0a61                            ; $7225: $cd $61 $0a
    ld a, l                                       ; $7228: $7d
    and $07                                       ; $7229: $e6 $07
    ld hl, $0000                                  ; $722b: $21 $00 $00
    add l                                         ; $722e: $85
    ld l, a                                       ; $722f: $6f
    jr nc, jr_034_7233                            ; $7230: $30 $01

    inc h                                         ; $7232: $24

jr_034_7233:
    add hl, hl                                    ; $7233: $29
    add hl, hl                                    ; $7234: $29
    add hl, hl                                    ; $7235: $29
    add hl, hl                                    ; $7236: $29
    add hl, hl                                    ; $7237: $29
    ld de, $0010                                  ; $7238: $11 $10 $00
    call Call_000_08ac                            ; $723b: $cd $ac $08
    add hl, hl                                    ; $723e: $29
    add hl, hl                                    ; $723f: $29
    add hl, hl                                    ; $7240: $29
    add hl, hl                                    ; $7241: $29
    add hl, hl                                    ; $7242: $29
    add hl, hl                                    ; $7243: $29
    add hl, hl                                    ; $7244: $29
    add hl, hl                                    ; $7245: $29
    ld a, [$c3e3]                                 ; $7246: $fa $e3 $c3
    add l                                         ; $7249: $85
    ld l, a                                       ; $724a: $6f
    jr nc, jr_034_724e                            ; $724b: $30 $01

    inc h                                         ; $724d: $24

jr_034_724e:
    ld e, l                                       ; $724e: $5d
    ld d, h                                       ; $724f: $54
    rst $18                                       ; $7250: $df
    ld [hl+], a                                   ; $7251: $22
    db $10                                        ; $7252: $10
    ret                                           ; $7253: $c9


Call_034_7254:
    ld de, $1d40                                  ; $7254: $11 $40 $1d
    ld hl, $c2a2                                  ; $7257: $21 $a2 $c2
    ld a, [hl+]                                   ; $725a: $2a
    ld h, [hl]                                    ; $725b: $66
    ld l, a                                       ; $725c: $6f
    call Call_000_08ac                            ; $725d: $cd $ac $08
    sra h                                         ; $7260: $cb $2c
    rr l                                          ; $7262: $cb $1d
    sra h                                         ; $7264: $cb $2c
    rr l                                          ; $7266: $cb $1d
    push hl                                       ; $7268: $e5
    ld de, $1d40                                  ; $7269: $11 $40 $1d
    pop hl                                        ; $726c: $e1
    add hl, de                                    ; $726d: $19
    push hl                                       ; $726e: $e5
    ld de, $1f80                                  ; $726f: $11 $80 $1f
    ld hl, $c2a0                                  ; $7272: $21 $a0 $c2
    ld a, [hl+]                                   ; $7275: $2a
    ld h, [hl]                                    ; $7276: $66
    ld l, a                                       ; $7277: $6f
    call Call_000_08ac                            ; $7278: $cd $ac $08
    sra h                                         ; $727b: $cb $2c
    rr l                                          ; $727d: $cb $1d
    sra h                                         ; $727f: $cb $2c
    rr l                                          ; $7281: $cb $1d
    push hl                                       ; $7283: $e5
    ld de, $1f80                                  ; $7284: $11 $80 $1f
    pop hl                                        ; $7287: $e1
    add hl, de                                    ; $7288: $19
    pop de                                        ; $7289: $d1
    rst $18                                       ; $728a: $df
    jr nz, jr_034_729d                            ; $728b: $20 $10

    ret                                           ; $728d: $c9


    nop                                           ; $728e: $00
    nop                                           ; $728f: $00
    ld a, b                                       ; $7290: $78
    ld a, b                                       ; $7291: $78
    ld [hl], a                                    ; $7292: $77
    ld e, a                                       ; $7293: $5f
    ld [hl], c                                    ; $7294: $71
    ld e, a                                       ; $7295: $5f
    ld [hl], c                                    ; $7296: $71
    ld e, a                                       ; $7297: $5f
    ld d, c                                       ; $7298: $51
    ld a, a                                       ; $7299: $7f
    ld e, c                                       ; $729a: $59
    ld a, a                                       ; $729b: $7f
    ld d, a                                       ; $729c: $57

jr_034_729d:
    ld [hl], a                                    ; $729d: $77
    ld d, b                                       ; $729e: $50
    ld [hl], b                                    ; $729f: $70
    ld [hl], b                                    ; $72a0: $70
    ld d, b                                       ; $72a1: $50
    ld [hl], b                                    ; $72a2: $70
    ld d, b                                       ; $72a3: $50
    ld [hl], b                                    ; $72a4: $70
    ld d, b                                       ; $72a5: $50
    ld [hl], b                                    ; $72a6: $70
    ld d, b                                       ; $72a7: $50
    ld d, b                                       ; $72a8: $50
    ld [hl], b                                    ; $72a9: $70
    ld d, b                                       ; $72aa: $50
    ld [hl], b                                    ; $72ab: $70
    ld d, b                                       ; $72ac: $50
    ld [hl], b                                    ; $72ad: $70
    ld d, b                                       ; $72ae: $50
    ld [hl], b                                    ; $72af: $70
    ld [hl], b                                    ; $72b0: $70
    ld d, b                                       ; $72b1: $50
    ld [hl], b                                    ; $72b2: $70
    ld d, b                                       ; $72b3: $50
    ld [hl], b                                    ; $72b4: $70
    ld d, b                                       ; $72b5: $50
    ld [hl], b                                    ; $72b6: $70
    ld d, b                                       ; $72b7: $50
    ld d, b                                       ; $72b8: $50
    ld [hl], b                                    ; $72b9: $70
    ld d, b                                       ; $72ba: $50
    ld [hl], b                                    ; $72bb: $70
    ld d, b                                       ; $72bc: $50
    ld [hl], b                                    ; $72bd: $70
    ld d, b                                       ; $72be: $50
    ld [hl], b                                    ; $72bf: $70
    ld [hl], b                                    ; $72c0: $70
    ld d, b                                       ; $72c1: $50
    ld [hl], b                                    ; $72c2: $70
    ld d, b                                       ; $72c3: $50
    ld [hl], b                                    ; $72c4: $70
    ld d, b                                       ; $72c5: $50
    ld [hl], b                                    ; $72c6: $70
    ld d, b                                       ; $72c7: $50
    ld d, b                                       ; $72c8: $50
    ld [hl], b                                    ; $72c9: $70
    ret c                                         ; $72ca: $d8

    ld hl, sp-$08                                 ; $72cb: $f8 $f8
    ld hl, sp+$70                                 ; $72cd: $f8 $70
    ld [hl], b                                    ; $72cf: $70
    db $10                                        ; $72d0: $10
    ld [$0000], sp                                ; $72d1: $08 $00 $00
    jr nz, jr_034_72de                            ; $72d4: $20 $08

    ld [bc], a                                    ; $72d6: $02
    nop                                           ; $72d7: $00
    add b                                         ; $72d8: $80
    ld e, $5e                                     ; $72d9: $1e $5e
    rst $38                                       ; $72db: $ff
    ld l, e                                       ; $72dc: $6b
    ret c                                         ; $72dd: $d8

jr_034_72de:
    ld a, h                                       ; $72de: $7c
    nop                                           ; $72df: $00
    nop                                           ; $72e0: $00

Call_034_72e1:
    xor a                                         ; $72e1: $af
    ldh [rVBK], a                                 ; $72e2: $e0 $4f
    ld hl, $7290                                  ; $72e4: $21 $90 $72
    ld de, $8400                                  ; $72e7: $11 $00 $84
    ld c, $04                                     ; $72ea: $0e $04
    call Call_000_0468                            ; $72ec: $cd $68 $04
    ld hl, $7009                                  ; $72ef: $21 $09 $70
    ld de, $0f01                                  ; $72f2: $11 $01 $0f
    call Call_000_0595                            ; $72f5: $cd $95 $05
    ret                                           ; $72f8: $c9


Call_034_72f9:
    push bc                                       ; $72f9: $c5
    ld hl, $c320                                  ; $72fa: $21 $20 $c3
    ld a, [hl+]                                   ; $72fd: $2a
    ld b, [hl]                                    ; $72fe: $46
    ld c, a                                       ; $72ff: $4f
    ld hl, $1fa0                                  ; $7300: $21 $a0 $1f
    call Call_000_1b52                            ; $7303: $cd $52 $1b
    ld a, h                                       ; $7306: $7c
    inc a                                         ; $7307: $3c
    inc a                                         ; $7308: $3c
    inc a                                         ; $7309: $3c
    inc a                                         ; $730a: $3c
    add hl, hl                                    ; $730b: $29
    add hl, hl                                    ; $730c: $29
    add hl, hl                                    ; $730d: $29
    ld d, h                                       ; $730e: $54
    ld hl, $c322                                  ; $730f: $21 $22 $c3
    ld a, [hl+]                                   ; $7312: $2a
    ld b, [hl]                                    ; $7313: $46
    ld c, a                                       ; $7314: $4f
    ld hl, $1c60                                  ; $7315: $21 $60 $1c
    call Call_000_1b52                            ; $7318: $cd $52 $1b
    ld a, h                                       ; $731b: $7c
    inc a                                         ; $731c: $3c
    inc a                                         ; $731d: $3c
    add hl, hl                                    ; $731e: $29
    add hl, hl                                    ; $731f: $29
    add hl, hl                                    ; $7320: $29
    ld e, h                                       ; $7321: $5c
    ld hl, $72d0                                  ; $7322: $21 $d0 $72
    pop bc                                        ; $7325: $c1
    call Call_000_26ea                            ; $7326: $cd $ea $26
    ret                                           ; $7329: $c9


    pop bc                                        ; $732a: $c1
    ret                                           ; $732b: $c9


Call_034_732c:
    ldh a, [$90]                                  ; $732c: $f0 $90
    and $01                                       ; $732e: $e6 $01
    jr z, jr_034_7335                             ; $7330: $28 $03

    call Call_034_7144                            ; $7332: $cd $44 $71

jr_034_7335:
    ret                                           ; $7335: $c9


    ld bc, $0378                                  ; $7336: $01 $78 $03
    add b                                         ; $7339: $80
    rra                                           ; $733a: $1f
    nop                                           ; $733b: $00
    dec e                                         ; $733c: $1d
    ld bc, $0378                                  ; $733d: $01 $78 $03
    nop                                           ; $7340: $00
    jr nz, jr_034_7343                            ; $7341: $20 $00

jr_034_7343:
    dec e                                         ; $7343: $1d
    inc c                                         ; $7344: $0c
    pop af                                        ; $7345: $f1
    rst $38                                       ; $7346: $ff
    ld a, $04                                     ; $7347: $3e $04
    ldh [$96], a                                  ; $7349: $e0 $96
    ldh [rSVBK], a                                ; $734b: $e0 $70
    ld a, $03                                     ; $734d: $3e $03
    rst $18                                       ; $734f: $df
    inc d                                         ; $7350: $14
    ld a, [bc]                                    ; $7351: $0a
    inc h                                         ; $7352: $24
    dec h                                         ; $7353: $25
    jr z, jr_034_7386                             ; $7354: $28 $30

    ld e, l                                       ; $7356: $5d
    ld d, h                                       ; $7357: $54
    ld hl, $002c                                  ; $7358: $21 $2c $00
    add hl, de                                    ; $735b: $19
    ld a, [hl]                                    ; $735c: $7e
    add a                                         ; $735d: $87
    add a                                         ; $735e: $87
    ld c, a                                       ; $735f: $4f
    ld hl, $002d                                  ; $7360: $21 $2d $00
    add hl, de                                    ; $7363: $19
    ld b, [hl]                                    ; $7364: $46
    ld hl, $0004                                  ; $7365: $21 $04 $00
    add hl, de                                    ; $7368: $19
    ld a, [hl+]                                   ; $7369: $2a
    ld h, [hl]                                    ; $736a: $66
    ld l, a                                       ; $736b: $6f
    ld a, $10                                     ; $736c: $3e $10
    add l                                         ; $736e: $85
    ld l, a                                       ; $736f: $6f
    jr nc, jr_034_7373                            ; $7370: $30 $01

    inc h                                         ; $7372: $24

jr_034_7373:
    push hl                                       ; $7373: $e5
    ld hl, $0006                                  ; $7374: $21 $06 $00
    add hl, de                                    ; $7377: $19
    ld a, [hl+]                                   ; $7378: $2a
    ld d, [hl]                                    ; $7379: $56
    ld e, a                                       ; $737a: $5f
    ld a, $90                                     ; $737b: $3e $90
    add e                                         ; $737d: $83
    ld e, a                                       ; $737e: $5f
    jr nc, jr_034_7382                            ; $737f: $30 $01

    inc d                                         ; $7381: $14

jr_034_7382:
    pop hl                                        ; $7382: $e1
    call Call_000_27b4                            ; $7383: $cd $b4 $27

jr_034_7386:
    ld a, $04                                     ; $7386: $3e $04
    rst $18                                       ; $7388: $df
    inc d                                         ; $7389: $14
    ld a, [bc]                                    ; $738a: $0a
    inc h                                         ; $738b: $24
    dec h                                         ; $738c: $25
    jr z, jr_034_73bf                             ; $738d: $28 $30

    ld e, l                                       ; $738f: $5d
    ld d, h                                       ; $7390: $54
    ld hl, $002c                                  ; $7391: $21 $2c $00
    add hl, de                                    ; $7394: $19
    ld a, [hl]                                    ; $7395: $7e
    add a                                         ; $7396: $87
    add a                                         ; $7397: $87
    ld c, a                                       ; $7398: $4f
    ld hl, $002d                                  ; $7399: $21 $2d $00
    add hl, de                                    ; $739c: $19
    ld b, [hl]                                    ; $739d: $46
    ld hl, $0004                                  ; $739e: $21 $04 $00
    add hl, de                                    ; $73a1: $19
    ld a, [hl+]                                   ; $73a2: $2a
    ld h, [hl]                                    ; $73a3: $66
    ld l, a                                       ; $73a4: $6f
    ld a, $10                                     ; $73a5: $3e $10
    add l                                         ; $73a7: $85
    ld l, a                                       ; $73a8: $6f
    jr nc, jr_034_73ac                            ; $73a9: $30 $01

    inc h                                         ; $73ab: $24

jr_034_73ac:
    push hl                                       ; $73ac: $e5
    ld hl, $0006                                  ; $73ad: $21 $06 $00
    add hl, de                                    ; $73b0: $19
    ld a, [hl+]                                   ; $73b1: $2a
    ld d, [hl]                                    ; $73b2: $56
    ld e, a                                       ; $73b3: $5f
    ld a, $90                                     ; $73b4: $3e $90
    add e                                         ; $73b6: $83
    ld e, a                                       ; $73b7: $5f
    jr nc, jr_034_73bb                            ; $73b8: $30 $01

    inc d                                         ; $73ba: $14

jr_034_73bb:
    pop hl                                        ; $73bb: $e1
    call Call_000_27b4                            ; $73bc: $cd $b4 $27

jr_034_73bf:
    ret                                           ; $73bf: $c9


    db $e3                                        ; $73c0: $e3
    ld [hl], e                                    ; $73c1: $73
    or $73                                        ; $73c2: $f6 $73
    adc $73                                       ; $73c4: $ce $73
    ld h, l                                       ; $73c6: $65
    ld [hl], h                                    ; $73c7: $74
    or e                                          ; $73c8: $b3
    ld [hl], h                                    ; $73c9: $74
    or h                                          ; $73ca: $b4
    ld [hl], h                                    ; $73cb: $74
    or l                                          ; $73cc: $b5
    ld [hl], h                                    ; $73cd: $74
    cp $7c                                        ; $73ce: $fe $7c
    nop                                           ; $73d0: $00
    dec e                                         ; $73d1: $1d
    nop                                           ; $73d2: $00
    rra                                           ; $73d3: $1f
    nop                                           ; $73d4: $00
    nop                                           ; $73d5: $00
    nop                                           ; $73d6: $00
    ld b, b                                       ; $73d7: $40
    ld bc, $0017                                  ; $73d8: $01 $17 $00
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    nop                                           ; $73dd: $00
    nop                                           ; $73de: $00
    nop                                           ; $73df: $00
    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    rst $38                                       ; $73e2: $ff
    ld bc, $00c0                                  ; $73e3: $01 $c0 $00
    ld e, $00                                     ; $73e6: $1e $00
    ld h, $06                                     ; $73e8: $26 $06
    ret nz                                        ; $73ea: $c0

    nop                                           ; $73eb: $00
    dec e                                         ; $73ec: $1d
    nop                                           ; $73ed: $00
    ld [hl+], a                                   ; $73ee: $22
    rlca                                          ; $73ef: $07
    ret nz                                        ; $73f0: $c0

    nop                                           ; $73f1: $00
    dec e                                         ; $73f2: $1d
    nop                                           ; $73f3: $00
    ld [hl+], a                                   ; $73f4: $22
    rst $38                                       ; $73f5: $ff
    ld bc, $00ff                                  ; $73f6: $01 $ff $00
    nop                                           ; $73f9: $00
    nop                                           ; $73fa: $00
    nop                                           ; $73fb: $00
    ld [bc], a                                    ; $73fc: $02
    dec bc                                        ; $73fd: $0b
    rrca                                          ; $73fe: $0f
    rst $38                                       ; $73ff: $ff
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    nop                                           ; $7403: $00
    inc l                                         ; $7404: $2c
    rlca                                          ; $7405: $07
    rst $38                                       ; $7406: $ff
    rst $30                                       ; $7407: $f7
    nop                                           ; $7408: $00
    ld a, [de]                                    ; $7409: $1a
    jr nz, jr_034_746e                            ; $740a: $20 $62

    rst $20                                       ; $740c: $e7
    jr nz, jr_034_7429                            ; $740d: $20 $1a

    ld a, $00                                     ; $740f: $3e $00
    ld b, a                                       ; $7411: $47
    ld a, $02                                     ; $7412: $3e $02
    rst $18                                       ; $7414: $df
    ld l, $0a                                     ; $7415: $2e $0a
    ld hl, $154f                                  ; $7417: $21 $4f $15
    rst $18                                       ; $741a: $df
    ld c, $0a                                     ; $741b: $0e $0a
    ld a, $02                                     ; $741d: $3e $02
    rst $18                                       ; $741f: $df
    ld a, [bc]                                    ; $7420: $0a
    ld a, [bc]                                    ; $7421: $0a
    push af                                       ; $7422: $f5
    ld a, $05                                     ; $7423: $3e $05
    rst $18                                       ; $7425: $df
    inc b                                         ; $7426: $04
    ld a, [bc]                                    ; $7427: $0a
    pop af                                        ; $7428: $f1

jr_034_7429:
    rst $18                                       ; $7429: $df
    ld [de], a                                    ; $742a: $12
    ld a, [bc]                                    ; $742b: $0a
    rst $18                                       ; $742c: $df
    inc c                                         ; $742d: $0c
    ld a, [bc]                                    ; $742e: $0a
    push af                                       ; $742f: $f5
    ld a, $05                                     ; $7430: $3e $05
    rst $18                                       ; $7432: $df
    inc b                                         ; $7433: $04
    ld a, [bc]                                    ; $7434: $0a
    pop af                                        ; $7435: $f1
    and a                                         ; $7436: $a7
    jr nz, jr_034_7448                            ; $7437: $20 $0f

    ld a, $02                                     ; $7439: $3e $02
    rst $18                                       ; $743b: $df
    ld [$ef0a], sp                                ; $743c: $08 $0a $ef
    jr nz, jr_034_745f                            ; $743f: $20 $1e

    rst $28                                       ; $7441: $ef
    nop                                           ; $7442: $00
    ld e, $cd                                     ; $7443: $1e $cd
    ld b, a                                       ; $7445: $47
    ld [hl], l                                    ; $7446: $75
    ret                                           ; $7447: $c9


jr_034_7448:
    rst $18                                       ; $7448: $df
    db $10                                        ; $7449: $10
    ld a, [bc]                                    ; $744a: $0a
    ld a, $02                                     ; $744b: $3e $02
    ld b, a                                       ; $744d: $47
    ld a, $06                                     ; $744e: $3e $06
    rst $18                                       ; $7450: $df
    ld [hl-], a                                   ; $7451: $32
    ld a, [bc]                                    ; $7452: $0a
    ld a, $02                                     ; $7453: $3e $02
    rst $18                                       ; $7455: $df
    inc [hl]                                      ; $7456: $34
    ld a, [bc]                                    ; $7457: $0a
    ld a, $02                                     ; $7458: $3e $02
    ld b, $c0                                     ; $745a: $06 $c0
    rst $18                                       ; $745c: $df
    inc l                                         ; $745d: $2c
    ld a, [bc]                                    ; $745e: $0a

jr_034_745f:
    ld a, $02                                     ; $745f: $3e $02
    rst $18                                       ; $7461: $df
    ld [$c90a], sp                                ; $7462: $08 $0a $c9
    ld [bc], a                                    ; $7465: $02
    rst $38                                       ; $7466: $ff
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    rlca                                          ; $7469: $07
    ld [hl], h                                    ; $746a: $74
    stop                                          ; $746b: $10 $00
    rst $38                                       ; $746d: $ff

jr_034_746e:
    rst $30                                       ; $746e: $f7
    add b                                         ; $746f: $80
    rra                                           ; $7470: $1f
    jr nz, @+$15                                  ; $7471: $20 $13

    ld a, $00                                     ; $7473: $3e $00
    ld b, a                                       ; $7475: $47
    ld a, $02                                     ; $7476: $3e $02
    rst $18                                       ; $7478: $df
    ld l, $0a                                     ; $7479: $2e $0a
    ld hl, $155d                                  ; $747b: $21 $5d $15
    rst $18                                       ; $747e: $df
    ld c, $0a                                     ; $747f: $0e $0a
    ld a, $02                                     ; $7481: $3e $02
    rst $18                                       ; $7483: $df
    ld [$cd0a], sp                                ; $7484: $08 $0a $cd
    and $74                                       ; $7487: $e6 $74
    ret                                           ; $7489: $c9


    ld a, $00                                     ; $748a: $3e $00
    ld b, a                                       ; $748c: $47
    ld a, $02                                     ; $748d: $3e $02
    rst $18                                       ; $748f: $df
    ld l, $0a                                     ; $7490: $2e $0a
    ld hl, $1555                                  ; $7492: $21 $55 $15
    rst $18                                       ; $7495: $df
    ld c, $0a                                     ; $7496: $0e $0a
    ld a, $02                                     ; $7498: $3e $02
    rst $18                                       ; $749a: $df
    ld [$c90a], sp                                ; $749b: $08 $0a $c9
    ld a, $00                                     ; $749e: $3e $00
    ld b, a                                       ; $74a0: $47
    ld a, $02                                     ; $74a1: $3e $02
    rst $18                                       ; $74a3: $df
    ld l, $0a                                     ; $74a4: $2e $0a
    ld hl, $155c                                  ; $74a6: $21 $5c $15
    rst $18                                       ; $74a9: $df
    ld c, $0a                                     ; $74aa: $0e $0a
    ld a, $02                                     ; $74ac: $3e $02
    rst $18                                       ; $74ae: $df
    ld [$c90a], sp                                ; $74af: $08 $0a $c9
    ret                                           ; $74b2: $c9


    rst $38                                       ; $74b3: $ff
    rst $38                                       ; $74b4: $ff
    ld a, [$c46a]                                 ; $74b5: $fa $6a $c4
    cp $01                                        ; $74b8: $fe $01
    jr z, jr_034_74e0                             ; $74ba: $28 $24

    xor a                                         ; $74bc: $af
    ld hl, $c4b4                                  ; $74bd: $21 $b4 $c4
    ld [hl+], a                                   ; $74c0: $22
    ld [hl+], a                                   ; $74c1: $22
    ld a, [$c46a]                                 ; $74c2: $fa $6a $c4
    cp $fa                                        ; $74c5: $fe $fa
    jr z, jr_034_74e5                             ; $74c7: $28 $1c

    cp $06                                        ; $74c9: $fe $06
    jr nz, jr_034_74d6                            ; $74cb: $20 $09

    rst $30                                       ; $74cd: $f7
    nop                                           ; $74ce: $00
    ld a, [de]                                    ; $74cf: $1a
    jr nz, jr_034_74e0                            ; $74d0: $20 $0e

    call Call_034_75f6                            ; $74d2: $cd $f6 $75
    ret                                           ; $74d5: $c9


jr_034_74d6:
    ld a, [$c46a]                                 ; $74d6: $fa $6a $c4
    cp $07                                        ; $74d9: $fe $07
    jr nz, jr_034_74e0                            ; $74db: $20 $03

    call Call_034_770f                            ; $74dd: $cd $0f $77

jr_034_74e0:
    ld a, $00                                     ; $74e0: $3e $00
    ld [$c967], a                                 ; $74e2: $ea $67 $c9

jr_034_74e5:
    ret                                           ; $74e5: $c9


    rst $20                                       ; $74e6: $e7
    add b                                         ; $74e7: $80
    rra                                           ; $74e8: $1f
    rst $18                                       ; $74e9: $df
    nop                                           ; $74ea: $00
    ld a, [bc]                                    ; $74eb: $0a
    ld hl, $155e                                  ; $74ec: $21 $5e $15
    rst $18                                       ; $74ef: $df
    ld c, $0a                                     ; $74f0: $0e $0a
    ld a, $80                                     ; $74f2: $3e $80
    rst $18                                       ; $74f4: $df
    ld a, [bc]                                    ; $74f5: $0a
    ld a, [bc]                                    ; $74f6: $0a
    rst $18                                       ; $74f7: $df
    ld [de], a                                    ; $74f8: $12
    ld a, [bc]                                    ; $74f9: $0a
    rst $18                                       ; $74fa: $df
    inc c                                         ; $74fb: $0c
    ld a, [bc]                                    ; $74fc: $0a
    push af                                       ; $74fd: $f5
    ld a, $05                                     ; $74fe: $3e $05
    rst $18                                       ; $7500: $df
    inc b                                         ; $7501: $04
    ld a, [bc]                                    ; $7502: $0a
    pop af                                        ; $7503: $f1
    and a                                         ; $7504: $a7
    jr z, jr_034_7509                             ; $7505: $28 $02

    jr jr_034_7512                                ; $7507: $18 $09

jr_034_7509:
    rst $28                                       ; $7509: $ef
    jr nz, jr_034_752a                            ; $750a: $20 $1e

    rst $28                                       ; $750c: $ef
    nop                                           ; $750d: $00
    ld e, $cd                                     ; $750e: $1e $cd
    ld b, a                                       ; $7510: $47
    ld [hl], l                                    ; $7511: $75

jr_034_7512:
    rst $18                                       ; $7512: $df
    ld [bc], a                                    ; $7513: $02
    ld a, [bc]                                    ; $7514: $0a
    ret                                           ; $7515: $c9


Call_034_7516:
    rst $30                                       ; $7516: $f7
    nop                                           ; $7517: $00
    ld a, [de]                                    ; $7518: $1a
    jr nz, jr_034_7531                            ; $7519: $20 $16

    ld a, $28                                     ; $751b: $3e $28
    ld [$c82c], a                                 ; $751d: $ea $2c $c8
    ld a, $0a                                     ; $7520: $3e $0a
    ld [$c834], a                                 ; $7522: $ea $34 $c8
    ld hl, $0901                                  ; $7525: $21 $01 $09
    rst $18                                       ; $7528: $df
    db $10                                        ; $7529: $10

jr_034_752a:
    db $10                                        ; $752a: $10
    ld a, $09                                     ; $752b: $3e $09
    rst $18                                       ; $752d: $df
    ld [de], a                                    ; $752e: $12
    db $10                                        ; $752f: $10
    ret                                           ; $7530: $c9


jr_034_7531:
    ld a, $07                                     ; $7531: $3e $07
    ld [$c82c], a                                 ; $7533: $ea $2c $c8
    ld a, $03                                     ; $7536: $3e $03
    ld [$c834], a                                 ; $7538: $ea $34 $c8
    ld hl, $0601                                  ; $753b: $21 $01 $06
    rst $18                                       ; $753e: $df
    db $10                                        ; $753f: $10
    db $10                                        ; $7540: $10
    ld a, $12                                     ; $7541: $3e $12
    rst $18                                       ; $7543: $df
    ld [de], a                                    ; $7544: $12
    db $10                                        ; $7545: $10
    ret                                           ; $7546: $c9


    ld a, $02                                     ; $7547: $3e $02
    ld b, a                                       ; $7549: $47
    ld a, $05                                     ; $754a: $3e $05
    rst $18                                       ; $754c: $df
    ld [hl-], a                                   ; $754d: $32
    ld a, [bc]                                    ; $754e: $0a
    ld a, $02                                     ; $754f: $3e $02
    rst $18                                       ; $7551: $df
    inc [hl]                                      ; $7552: $34
    ld a, [bc]                                    ; $7553: $0a
    push af                                       ; $7554: $f5
    ld a, $1e                                     ; $7555: $3e $1e
    rst $18                                       ; $7557: $df
    inc b                                         ; $7558: $04
    ld a, [bc]                                    ; $7559: $0a
    pop af                                        ; $755a: $f1
    ld a, $00                                     ; $755b: $3e $00
    ld bc, $1d00                                  ; $755d: $01 $00 $1d
    ld de, $2300                                  ; $7560: $11 $00 $23
    rst $18                                       ; $7563: $df
    ld [hl+], a                                   ; $7564: $22
    ld a, [bc]                                    ; $7565: $0a
    ld a, $00                                     ; $7566: $3e $00
    rst $18                                       ; $7568: $df
    ld e, $0a                                     ; $7569: $1e $0a
    ld a, $00                                     ; $756b: $3e $00
    ld bc, $2100                                  ; $756d: $01 $00 $21
    ld de, $2300                                  ; $7570: $11 $00 $23
    rst $18                                       ; $7573: $df
    ld [hl+], a                                   ; $7574: $22
    ld a, [bc]                                    ; $7575: $0a
    ld a, $00                                     ; $7576: $3e $00
    rst $18                                       ; $7578: $df
    ld e, $0a                                     ; $7579: $1e $0a
    ld a, $00                                     ; $757b: $3e $00
    ld bc, $2100                                  ; $757d: $01 $00 $21
    ld de, $2100                                  ; $7580: $11 $00 $21
    rst $18                                       ; $7583: $df
    ld [hl+], a                                   ; $7584: $22
    ld a, [bc]                                    ; $7585: $0a
    ld a, $00                                     ; $7586: $3e $00
    rst $18                                       ; $7588: $df
    ld e, $0a                                     ; $7589: $1e $0a
    push af                                       ; $758b: $f5
    ld a, $1e                                     ; $758c: $3e $1e
    rst $18                                       ; $758e: $df
    inc b                                         ; $758f: $04
    ld a, [bc]                                    ; $7590: $0a
    pop af                                        ; $7591: $f1
    ld a, $14                                     ; $7592: $3e $14
    ld [$c967], a                                 ; $7594: $ea $67 $c9
    rst $18                                       ; $7597: $df
    inc e                                         ; $7598: $1c
    db $10                                        ; $7599: $10
    ld a, $0a                                     ; $759a: $3e $0a
    ld [$c834], a                                 ; $759c: $ea $34 $c8
    ld a, $2c                                     ; $759f: $3e $2c
    ld b, a                                       ; $75a1: $47
    ld a, $06                                     ; $75a2: $3e $06
    ld c, a                                       ; $75a4: $4f
    rst $18                                       ; $75a5: $df
    ld c, [hl]                                    ; $75a6: $4e
    ld a, [bc]                                    ; $75a7: $0a
    ld bc, $8000                                  ; $75a8: $01 $00 $80
    rst $18                                       ; $75ab: $df
    ld e, $02                                     ; $75ac: $1e $02
    ld bc, $ff01                                  ; $75ae: $01 $01 $ff
    rst $18                                       ; $75b1: $df
    ld e, $02                                     ; $75b2: $1e $02
    ld a, $00                                     ; $75b4: $3e $00
    rst $18                                       ; $75b6: $df
    ld e, $10                                     ; $75b7: $1e $10
    ldh a, [$95]                                  ; $75b9: $f0 $95
    ld hl, $75c8                                  ; $75bb: $21 $c8 $75
    rst $18                                       ; $75be: $df
    ld a, [de]                                    ; $75bf: $1a
    db $10                                        ; $75c0: $10
    call Call_034_7516                            ; $75c1: $cd $16 $75
    rst $18                                       ; $75c4: $df
    jr nc, jr_034_75d7                            ; $75c5: $30 $10

    ret                                           ; $75c7: $c9


    add sp, $75                                   ; $75c8: $e8 $75
    jp hl                                         ; $75ca: $e9


    ld [hl], l                                    ; $75cb: $75
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

jr_034_75d7:
    nop                                           ; $75d7: $00
    nop                                           ; $75d8: $00
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    nop                                           ; $75db: $00
    nop                                           ; $75dc: $00
    nop                                           ; $75dd: $00
    nop                                           ; $75de: $00
    nop                                           ; $75df: $00
    nop                                           ; $75e0: $00
    nop                                           ; $75e1: $00
    nop                                           ; $75e2: $00
    nop                                           ; $75e3: $00
    nop                                           ; $75e4: $00
    nop                                           ; $75e5: $00
    nop                                           ; $75e6: $00
    nop                                           ; $75e7: $00
    ret                                           ; $75e8: $c9


    ld a, [$c834]                                 ; $75e9: $fa $34 $c8
    cp $00                                        ; $75ec: $fe $00
    jr nz, jr_034_75f5                            ; $75ee: $20 $05

    ld a, $00                                     ; $75f0: $3e $00
    ld [$c967], a                                 ; $75f2: $ea $67 $c9

jr_034_75f5:
    ret                                           ; $75f5: $c9


Call_034_75f6:
    ld a, [$c967]                                 ; $75f6: $fa $67 $c9
    cp $14                                        ; $75f9: $fe $14
    jr z, jr_034_75fe                             ; $75fb: $28 $01

    ret                                           ; $75fd: $c9


jr_034_75fe:
    ld c, $04                                     ; $75fe: $0e $04
    call Call_000_25af                            ; $7600: $cd $af $25
    call Call_000_2625                            ; $7603: $cd $25 $26
    ld hl, $1553                                  ; $7606: $21 $53 $15
    rst $18                                       ; $7609: $df
    ld c, $0a                                     ; $760a: $0e $0a
    ld a, $02                                     ; $760c: $3e $02
    rst $18                                       ; $760e: $df
    ld [$210a], sp                                ; $760f: $08 $0a $21
    xor h                                         ; $7612: $ac
    ret z                                         ; $7613: $c8

    ld b, $00                                     ; $7614: $06 $00
    ld c, $09                                     ; $7616: $0e $09

jr_034_7618:
    ld a, [hl]                                    ; $7618: $7e
    swap a                                        ; $7619: $cb $37
    and $0f                                       ; $761b: $e6 $0f
    ld [$c3e0], a                                 ; $761d: $ea $e0 $c3
    cp $01                                        ; $7620: $fe $01
    jr z, jr_034_762b                             ; $7622: $28 $07

    cp $00                                        ; $7624: $fe $00
    jr z, jr_034_762b                             ; $7626: $28 $03

    call Call_034_765d                            ; $7628: $cd $5d $76

jr_034_762b:
    ld a, [$c3e0]                                 ; $762b: $fa $e0 $c3
    ld b, a                                       ; $762e: $47
    ld a, [hl+]                                   ; $762f: $2a
    and $0f                                       ; $7630: $e6 $0f
    sub b                                         ; $7632: $90
    cp $01                                        ; $7633: $fe $01
    jr z, jr_034_763a                             ; $7635: $28 $03

    call Call_034_7659                            ; $7637: $cd $59 $76

jr_034_763a:
    dec c                                         ; $763a: $0d
    jr nz, jr_034_7618                            ; $763b: $20 $db

    ld a, [$c8be]                                 ; $763d: $fa $be $c8
    add $1b                                       ; $7640: $c6 $1b
    ld [$c3e2], a                                 ; $7642: $ea $e2 $c3
    sub $13                                       ; $7645: $d6 $13
    jr nc, jr_034_7661                            ; $7647: $30 $18

    rst $30                                       ; $7649: $f7
    jr nz, @+$20                                  ; $764a: $20 $1e

    jr nz, jr_034_7669                            ; $764c: $20 $1b

    rst $30                                       ; $764e: $f7
    nop                                           ; $764f: $00
    ld e, $20                                     ; $7650: $1e $20
    ld e, $f7                                     ; $7652: $1e $f7
    nop                                           ; $7654: $00
    ld a, [de]                                    ; $7655: $1a
    jr z, jr_034_76b5                             ; $7656: $28 $5d

    ret                                           ; $7658: $c9


Call_034_7659:
    rst $20                                       ; $7659: $e7
    nop                                           ; $765a: $00
    ld e, $c9                                     ; $765b: $1e $c9

Call_034_765d:
    rst $20                                       ; $765d: $e7
    jr nz, jr_034_767e                            ; $765e: $20 $1e

    ret                                           ; $7660: $c9


jr_034_7661:
    ld hl, $1554                                  ; $7661: $21 $54 $15
    rst $18                                       ; $7664: $df
    ld c, $0a                                     ; $7665: $0e $0a
    jr jr_034_7683                                ; $7667: $18 $1a

jr_034_7669:
    ld hl, $1556                                  ; $7669: $21 $56 $15
    rst $18                                       ; $766c: $df
    ld c, $0a                                     ; $766d: $0e $0a
    jr jr_034_7683                                ; $766f: $18 $12

    ld hl, $1558                                  ; $7671: $21 $58 $15
    rst $18                                       ; $7674: $df
    ld c, $0a                                     ; $7675: $0e $0a
    ld a, [$c3e2]                                 ; $7677: $fa $e2 $c3
    ld l, a                                       ; $767a: $6f
    ld h, $00                                     ; $767b: $26 $00
    rst $18                                       ; $767d: $df

jr_034_767e:
    ld d, [hl]                                    ; $767e: $56
    dec b                                         ; $767f: $05
    jr jr_034_7683                                ; $7680: $18 $01

    ret                                           ; $7682: $c9


jr_034_7683:
    ld a, $00                                     ; $7683: $3e $00
    ld b, a                                       ; $7685: $47
    ld a, $07                                     ; $7686: $3e $07
    rst $18                                       ; $7688: $df
    ld [hl-], a                                   ; $7689: $32
    ld a, [bc]                                    ; $768a: $0a
    ld a, $00                                     ; $768b: $3e $00
    rst $18                                       ; $768d: $df
    inc [hl]                                      ; $768e: $34
    ld a, [bc]                                    ; $768f: $0a
    ld a, $02                                     ; $7690: $3e $02
    ld b, a                                       ; $7692: $47
    ld a, $07                                     ; $7693: $3e $07
    rst $18                                       ; $7695: $df
    ld [hl-], a                                   ; $7696: $32
    ld a, [bc]                                    ; $7697: $0a
    ld a, $02                                     ; $7698: $3e $02
    rst $18                                       ; $769a: $df
    inc [hl]                                      ; $769b: $34
    ld a, [bc]                                    ; $769c: $0a
    ld a, $02                                     ; $769d: $3e $02
    rst $18                                       ; $769f: $df
    ld [$3e0a], sp                                ; $76a0: $08 $0a $3e
    ld [bc], a                                    ; $76a3: $02
    ld b, a                                       ; $76a4: $47
    ld a, $06                                     ; $76a5: $3e $06
    rst $18                                       ; $76a7: $df
    ld [hl-], a                                   ; $76a8: $32
    ld a, [bc]                                    ; $76a9: $0a
    ld a, $02                                     ; $76aa: $3e $02
    rst $18                                       ; $76ac: $df
    inc [hl]                                      ; $76ad: $34
    ld a, [bc]                                    ; $76ae: $0a
    ld a, $02                                     ; $76af: $3e $02
    rst $18                                       ; $76b1: $df
    ld [$c90a], sp                                ; $76b2: $08 $0a $c9

jr_034_76b5:
    ld hl, $155a                                  ; $76b5: $21 $5a $15
    rst $18                                       ; $76b8: $df
    ld c, $0a                                     ; $76b9: $0e $0a
    ld a, [$c3e2]                                 ; $76bb: $fa $e2 $c3
    ld l, a                                       ; $76be: $6f
    ld h, $00                                     ; $76bf: $26 $00
    rst $18                                       ; $76c1: $df
    ld d, [hl]                                    ; $76c2: $56
    dec b                                         ; $76c3: $05
    ld a, $02                                     ; $76c4: $3e $02
    rst $18                                       ; $76c6: $df
    ld [$3e0a], sp                                ; $76c7: $08 $0a $3e
    ld [bc], a                                    ; $76ca: $02
    rst $18                                       ; $76cb: $df
    ld [$f70a], sp                                ; $76cc: $08 $0a $f7
    nop                                           ; $76cf: $00
    ld a, [de]                                    ; $76d0: $1a
    jr nz, jr_034_770e                            ; $76d1: $20 $3b

    ld de, $012c                                  ; $76d3: $11 $2c $01
    push de                                       ; $76d6: $d5
    rst $18                                       ; $76d7: $df
    ld [hl+], a                                   ; $76d8: $22
    ld [bc], a                                    ; $76d9: $02
    pop hl                                        ; $76da: $e1
    rst $18                                       ; $76db: $df
    ld d, [hl]                                    ; $76dc: $56
    dec b                                         ; $76dd: $05
    rst $08                                       ; $76de: $cf
    jr c, @-$17                                   ; $76df: $38 $e7

    nop                                           ; $76e1: $00
    ld a, [de]                                    ; $76e2: $1a
    rst $20                                       ; $76e3: $e7
    ldh [rNR13], a                                ; $76e4: $e0 $13
    push de                                       ; $76e6: $d5
    ld de, $0200                                  ; $76e7: $11 $00 $02
    rst $18                                       ; $76ea: $df
    ld b, h                                       ; $76eb: $44
    ld [bc], a                                    ; $76ec: $02
    pop de                                        ; $76ed: $d1
    ld hl, $011b                                  ; $76ee: $21 $1b $01
    rst $18                                       ; $76f1: $df
    ld c, $0a                                     ; $76f2: $0e $0a
    ld a, $80                                     ; $76f4: $3e $80
    rst $18                                       ; $76f6: $df
    ld [$cd0a], sp                                ; $76f7: $08 $0a $cd
    rra                                           ; $76fa: $1f
    inc l                                         ; $76fb: $2c
    call Call_034_7dd8                            ; $76fc: $cd $d8 $7d
    ld b, $00                                     ; $76ff: $06 $00
    ld c, $fa                                     ; $7701: $0e $fa
    rst $18                                       ; $7703: $df
    ld c, [hl]                                    ; $7704: $4e
    ld a, [bc]                                    ; $7705: $0a
    rst $18                                       ; $7706: $df
    inc [hl]                                      ; $7707: $34
    ld [bc], a                                    ; $7708: $02
    ld a, $0f                                     ; $7709: $3e $0f
    ld [$c441], a                                 ; $770b: $ea $41 $c4

jr_034_770e:
    ret                                           ; $770e: $c9


Call_034_770f:
    ld c, $08                                     ; $770f: $0e $08
    call Call_000_25af                            ; $7711: $cd $af $25
    call Call_000_2625                            ; $7714: $cd $25 $26
    ld a, $00                                     ; $7717: $3e $00
    ld b, a                                       ; $7719: $47
    ld a, $02                                     ; $771a: $3e $02
    rst $18                                       ; $771c: $df
    ld l, $0a                                     ; $771d: $2e $0a
    ld hl, $155c                                  ; $771f: $21 $5c $15
    rst $18                                       ; $7722: $df
    ld c, $0a                                     ; $7723: $0e $0a
    ld a, $02                                     ; $7725: $3e $02
    ld b, a                                       ; $7727: $47
    ld a, $05                                     ; $7728: $3e $05
    rst $18                                       ; $772a: $df
    ld [hl-], a                                   ; $772b: $32
    ld a, [bc]                                    ; $772c: $0a
    ld a, $02                                     ; $772d: $3e $02
    rst $18                                       ; $772f: $df
    inc [hl]                                      ; $7730: $34
    ld a, [bc]                                    ; $7731: $0a
    ld a, $02                                     ; $7732: $3e $02
    rst $18                                       ; $7734: $df
    ld [$c90a], sp                                ; $7735: $08 $0a $c9
    ld a, a                                       ; $7738: $7f
    ld [hl], a                                    ; $7739: $77
    or [hl]                                       ; $773a: $b6
    ld [hl], a                                    ; $773b: $77
    ld b, [hl]                                    ; $773c: $46
    ld [hl], a                                    ; $773d: $77
    rst $18                                       ; $773e: $df
    ld [hl], a                                    ; $773f: $77
    pop hl                                        ; $7740: $e1
    ld [hl], a                                    ; $7741: $77
    ld [$eb77], a                                 ; $7742: $ea $77 $eb
    ld [hl], a                                    ; $7745: $77
    cp $7c                                        ; $7746: $fe $7c
    nop                                           ; $7748: $00
    add hl, bc                                    ; $7749: $09
    nop                                           ; $774a: $00
    ld bc, $0000                                  ; $774b: $01 $00 $00
    nop                                           ; $774e: $00
    ld b, b                                       ; $774f: $40
    ld bc, $fe04                                  ; $7750: $01 $04 $fe
    ld a, h                                       ; $7753: $7c
    nop                                           ; $7754: $00
    dec bc                                        ; $7755: $0b
    nop                                           ; $7756: $00
    ld bc, $0000                                  ; $7757: $01 $00 $00
    nop                                           ; $775a: $00
    ld b, b                                       ; $775b: $40
    ld bc, $fe05                                  ; $775c: $01 $05 $fe
    ld a, h                                       ; $775f: $7c
    nop                                           ; $7760: $00
    dec c                                         ; $7761: $0d
    nop                                           ; $7762: $00
    ld bc, $0000                                  ; $7763: $01 $00 $00
    nop                                           ; $7766: $00
    ld b, b                                       ; $7767: $40
    ld bc, $fe06                                  ; $7768: $01 $06 $fe
    ld a, h                                       ; $776b: $7c
    nop                                           ; $776c: $00
    dec bc                                        ; $776d: $0b
    nop                                           ; $776e: $00
    ld a, [bc]                                    ; $776f: $0a
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    ld b, b                                       ; $7773: $40
    ld bc, $0007                                  ; $7774: $01 $07 $00
    nop                                           ; $7777: $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777a: $00
    nop                                           ; $777b: $00
    nop                                           ; $777c: $00
    nop                                           ; $777d: $00
    rst $38                                       ; $777e: $ff
    ld bc, $00c0                                  ; $777f: $01 $c0 $00
    dec bc                                        ; $7782: $0b
    nop                                           ; $7783: $00
    ld c, $02                                     ; $7784: $0e $02
    ret nz                                        ; $7786: $c0

    nop                                           ; $7787: $00
    dec bc                                        ; $7788: $0b
    nop                                           ; $7789: $00
    ld c, $03                                     ; $778a: $0e $03
    ret nz                                        ; $778c: $c0

    nop                                           ; $778d: $00
    dec bc                                        ; $778e: $0b
    nop                                           ; $778f: $00
    ld c, $04                                     ; $7790: $0e $04
    ret nz                                        ; $7792: $c0

    nop                                           ; $7793: $00
    dec bc                                        ; $7794: $0b
    nop                                           ; $7795: $00
    ld c, $05                                     ; $7796: $0e $05
    ret nz                                        ; $7798: $c0

    nop                                           ; $7799: $00
    dec bc                                        ; $779a: $0b
    nop                                           ; $779b: $00
    ld c, $0b                                     ; $779c: $0e $0b
    ret nz                                        ; $779e: $c0

    nop                                           ; $779f: $00
    dec bc                                        ; $77a0: $0b
    nop                                           ; $77a1: $00
    ld c, $0c                                     ; $77a2: $0e $0c
    ret nz                                        ; $77a4: $c0

    nop                                           ; $77a5: $00
    dec bc                                        ; $77a6: $0b
    nop                                           ; $77a7: $00
    ld c, $0d                                     ; $77a8: $0e $0d
    ret nz                                        ; $77aa: $c0

    nop                                           ; $77ab: $00
    dec bc                                        ; $77ac: $0b
    nop                                           ; $77ad: $00
    ld c, $0e                                     ; $77ae: $0e $0e
    ret nz                                        ; $77b0: $c0

    nop                                           ; $77b1: $00
    dec bc                                        ; $77b2: $0b
    nop                                           ; $77b3: $00
    ld c, $ff                                     ; $77b4: $0e $ff
    ld bc, $00ff                                  ; $77b6: $01 $ff $00
    nop                                           ; $77b9: $00
    nop                                           ; $77ba: $00
    nop                                           ; $77bb: $00
    ld [$0206], sp                                ; $77bc: $08 $06 $02
    rst $38                                       ; $77bf: $ff
    nop                                           ; $77c0: $00
    nop                                           ; $77c1: $00
    nop                                           ; $77c2: $00
    nop                                           ; $77c3: $00
    add hl, bc                                    ; $77c4: $09
    ld b, $03                                     ; $77c5: $06 $03
    rst $38                                       ; $77c7: $ff
    nop                                           ; $77c8: $00
    nop                                           ; $77c9: $00
    nop                                           ; $77ca: $00
    nop                                           ; $77cb: $00
    ld a, [bc]                                    ; $77cc: $0a
    ld b, $04                                     ; $77cd: $06 $04
    rst $38                                       ; $77cf: $ff
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    nop                                           ; $77d2: $00
    nop                                           ; $77d3: $00
    dec bc                                        ; $77d4: $0b
    ld b, $05                                     ; $77d5: $06 $05
    rst $38                                       ; $77d7: $ff
    nop                                           ; $77d8: $00
    nop                                           ; $77d9: $00
    nop                                           ; $77da: $00
    nop                                           ; $77db: $00
    nop                                           ; $77dc: $00
    ld [bc], a                                    ; $77dd: $02
    rst $38                                       ; $77de: $ff
    rst $38                                       ; $77df: $ff
    ret                                           ; $77e0: $c9


    ld bc, $00ff                                  ; $77e1: $01 $ff $00
    nop                                           ; $77e4: $00
    ld e, b                                       ; $77e5: $58
    ld a, l                                       ; $77e6: $7d
    ld b, $00                                     ; $77e7: $06 $00
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    ld a, [$c46a]                                 ; $77eb: $fa $6a $c4
    cp $0c                                        ; $77ee: $fe $0c
    jr nc, jr_034_77f4                            ; $77f0: $30 $02

    jr jr_034_7816                                ; $77f2: $18 $22

jr_034_77f4:
    rst $20                                       ; $77f4: $e7
    nop                                           ; $77f5: $00
    ld a, [bc]                                    ; $77f6: $0a
    rst $20                                       ; $77f7: $e7
    ld b, b                                       ; $77f8: $40
    ld a, [bc]                                    ; $77f9: $0a
    rst $20                                       ; $77fa: $e7
    add b                                         ; $77fb: $80
    ld a, [bc]                                    ; $77fc: $0a
    rst $20                                       ; $77fd: $e7
    ret nz                                        ; $77fe: $c0

    ld a, [bc]                                    ; $77ff: $0a
    rst $28                                       ; $7800: $ef
    add b                                         ; $7801: $80
    rla                                           ; $7802: $17
    ld a, $1e                                     ; $7803: $3e $1e
    ld [$c967], a                                 ; $7805: $ea $67 $c9
    ld a, $01                                     ; $7808: $3e $01
    ld [$c96c], a                                 ; $780a: $ea $6c $c9
    ld a, [$c46a]                                 ; $780d: $fa $6a $c4
    sub $0a                                       ; $7810: $d6 $0a
    ld [$c441], a                                 ; $7812: $ea $41 $c4
    ret                                           ; $7815: $c9


jr_034_7816:
    ld a, [$c96c]                                 ; $7816: $fa $6c $c9
    cp $01                                        ; $7819: $fe $01
    jr z, jr_034_7824                             ; $781b: $28 $07

    ld a, [$c46a]                                 ; $781d: $fa $6a $c4
    ld [$c441], a                                 ; $7820: $ea $41 $c4
    ret                                           ; $7823: $c9


jr_034_7824:
    rst $20                                       ; $7824: $e7
    add b                                         ; $7825: $80
    rla                                           ; $7826: $17
    call Call_034_7ced                            ; $7827: $cd $ed $7c
    ld c, $08                                     ; $782a: $0e $08
    call Call_000_25af                            ; $782c: $cd $af $25
    call Call_000_2625                            ; $782f: $cd $25 $26
    ld a, $05                                     ; $7832: $3e $05
    ld bc, $0008                                  ; $7834: $01 $08 $00
    rst $18                                       ; $7837: $df
    ld d, $0a                                     ; $7838: $16 $0a
    ld a, $03                                     ; $783a: $3e $03
    ld bc, $0008                                  ; $783c: $01 $08 $00
    rst $18                                       ; $783f: $df
    ld d, $0a                                     ; $7840: $16 $0a
    ld a, $02                                     ; $7842: $3e $02
    ld bc, $0008                                  ; $7844: $01 $08 $00
    rst $18                                       ; $7847: $df
    ld d, $0a                                     ; $7848: $16 $0a
    ld a, $04                                     ; $784a: $3e $04
    ld bc, $0008                                  ; $784c: $01 $08 $00
    rst $18                                       ; $784f: $df
    ld d, $0a                                     ; $7850: $16 $0a
    ld a, $00                                     ; $7852: $3e $00
    ld bc, $0008                                  ; $7854: $01 $08 $00
    rst $18                                       ; $7857: $df
    ld d, $0a                                     ; $7858: $16 $0a
    rst $30                                       ; $785a: $f7
    ld h, b                                       ; $785b: $60
    ld de, $0828                                  ; $785c: $11 $28 $08
    ld hl, $15d9                                  ; $785f: $21 $d9 $15
    rst $18                                       ; $7862: $df
    ld c, $0a                                     ; $7863: $0e $0a
    jr jr_034_786d                                ; $7865: $18 $06

    ld hl, $15c6                                  ; $7867: $21 $c6 $15
    rst $18                                       ; $786a: $df
    ld c, $0a                                     ; $786b: $0e $0a

jr_034_786d:
    ld a, $05                                     ; $786d: $3e $05
    ld b, a                                       ; $786f: $47
    ld a, $07                                     ; $7870: $3e $07
    rst $18                                       ; $7872: $df
    ld [hl-], a                                   ; $7873: $32
    ld a, [bc]                                    ; $7874: $0a
    ld a, $05                                     ; $7875: $3e $05
    rst $18                                       ; $7877: $df
    inc [hl]                                      ; $7878: $34
    ld a, [bc]                                    ; $7879: $0a
    ld a, $05                                     ; $787a: $3e $05
    rst $18                                       ; $787c: $df
    ld [$3e0a], sp                                ; $787d: $08 $0a $3e
    nop                                           ; $7880: $00
    ld b, a                                       ; $7881: $47
    ld a, $07                                     ; $7882: $3e $07
    rst $18                                       ; $7884: $df
    ld [hl-], a                                   ; $7885: $32
    ld a, [bc]                                    ; $7886: $0a
    ld a, $00                                     ; $7887: $3e $00
    rst $18                                       ; $7889: $df
    inc [hl]                                      ; $788a: $34
    ld a, [bc]                                    ; $788b: $0a
    ld a, $00                                     ; $788c: $3e $00
    rst $18                                       ; $788e: $df
    ld [$3e0a], sp                                ; $788f: $08 $0a $3e
    dec b                                         ; $7892: $05
    ld b, a                                       ; $7893: $47
    ld a, $06                                     ; $7894: $3e $06
    rst $18                                       ; $7896: $df
    ld [hl-], a                                   ; $7897: $32
    ld a, [bc]                                    ; $7898: $0a
    ld a, $05                                     ; $7899: $3e $05
    rst $18                                       ; $789b: $df
    inc [hl]                                      ; $789c: $34
    ld a, [bc]                                    ; $789d: $0a
    ld a, $05                                     ; $789e: $3e $05
    rst $18                                       ; $78a0: $df
    ld [$f50a], sp                                ; $78a1: $08 $0a $f5
    ld a, $1e                                     ; $78a4: $3e $1e
    rst $18                                       ; $78a6: $df
    inc b                                         ; $78a7: $04
    ld a, [bc]                                    ; $78a8: $0a
    pop af                                        ; $78a9: $f1
    ld a, $02                                     ; $78aa: $3e $02
    rst $18                                       ; $78ac: $df
    ld [$3e0a], sp                                ; $78ad: $08 $0a $3e
    dec b                                         ; $78b0: $05
    ld b, $00                                     ; $78b1: $06 $00
    rst $18                                       ; $78b3: $df
    inc l                                         ; $78b4: $2c
    ld a, [bc]                                    ; $78b5: $0a
    ld a, $02                                     ; $78b6: $3e $02
    ld bc, $0900                                  ; $78b8: $01 $00 $09
    ld de, $0500                                  ; $78bb: $11 $00 $05
    rst $18                                       ; $78be: $df
    ld [hl+], a                                   ; $78bf: $22
    ld a, [bc]                                    ; $78c0: $0a
    push af                                       ; $78c1: $f5
    ld a, $14                                     ; $78c2: $3e $14
    rst $18                                       ; $78c4: $df
    inc b                                         ; $78c5: $04
    ld a, [bc]                                    ; $78c6: $0a
    pop af                                        ; $78c7: $f1
    ld a, $03                                     ; $78c8: $3e $03
    ld bc, $0b00                                  ; $78ca: $01 $00 $0b
    ld de, $0500                                  ; $78cd: $11 $00 $05
    rst $18                                       ; $78d0: $df
    ld [hl+], a                                   ; $78d1: $22
    ld a, [bc]                                    ; $78d2: $0a
    push af                                       ; $78d3: $f5
    ld a, $14                                     ; $78d4: $3e $14
    rst $18                                       ; $78d6: $df
    inc b                                         ; $78d7: $04
    ld a, [bc]                                    ; $78d8: $0a
    pop af                                        ; $78d9: $f1
    ld a, $04                                     ; $78da: $3e $04
    ld bc, $0d00                                  ; $78dc: $01 $00 $0d
    ld de, $0500                                  ; $78df: $11 $00 $05
    rst $18                                       ; $78e2: $df
    ld [hl+], a                                   ; $78e3: $22
    ld a, [bc]                                    ; $78e4: $0a
    push af                                       ; $78e5: $f5
    ld a, $14                                     ; $78e6: $3e $14
    rst $18                                       ; $78e8: $df
    inc b                                         ; $78e9: $04
    ld a, [bc]                                    ; $78ea: $0a
    pop af                                        ; $78eb: $f1
    ld a, $05                                     ; $78ec: $3e $05
    ld b, $c0                                     ; $78ee: $06 $c0
    rst $18                                       ; $78f0: $df
    inc l                                         ; $78f1: $2c
    ld a, [bc]                                    ; $78f2: $0a
    ld a, $04                                     ; $78f3: $3e $04
    rst $18                                       ; $78f5: $df
    ld e, $0a                                     ; $78f6: $1e $0a
    ld a, $03                                     ; $78f8: $3e $03
    ld b, a                                       ; $78fa: $47
    ld a, $06                                     ; $78fb: $3e $06
    rst $18                                       ; $78fd: $df
    ld [hl-], a                                   ; $78fe: $32
    ld a, [bc]                                    ; $78ff: $0a
    ld a, $03                                     ; $7900: $3e $03
    rst $18                                       ; $7902: $df
    inc [hl]                                      ; $7903: $34
    ld a, [bc]                                    ; $7904: $0a
    ld a, $03                                     ; $7905: $3e $03
    rst $18                                       ; $7907: $df
    ld [$3e0a], sp                                ; $7908: $08 $0a $3e
    dec b                                         ; $790b: $05
    ld b, a                                       ; $790c: $47
    ld a, $06                                     ; $790d: $3e $06
    rst $18                                       ; $790f: $df
    ld [hl-], a                                   ; $7910: $32
    ld a, [bc]                                    ; $7911: $0a
    ld a, $05                                     ; $7912: $3e $05
    rst $18                                       ; $7914: $df
    inc [hl]                                      ; $7915: $34
    ld a, [bc]                                    ; $7916: $0a
    ld a, $05                                     ; $7917: $3e $05
    rst $18                                       ; $7919: $df
    ld [$3e0a], sp                                ; $791a: $08 $0a $3e
    inc b                                         ; $791d: $04
    ld b, a                                       ; $791e: $47
    ld a, $07                                     ; $791f: $3e $07
    rst $18                                       ; $7921: $df
    ld [hl-], a                                   ; $7922: $32
    ld a, [bc]                                    ; $7923: $0a
    ld a, $04                                     ; $7924: $3e $04
    rst $18                                       ; $7926: $df
    inc [hl]                                      ; $7927: $34
    ld a, [bc]                                    ; $7928: $0a
    ld a, $04                                     ; $7929: $3e $04
    rst $18                                       ; $792b: $df
    ld [$3e0a], sp                                ; $792c: $08 $0a $3e
    dec b                                         ; $792f: $05
    ld b, a                                       ; $7930: $47
    ld a, $07                                     ; $7931: $3e $07
    rst $18                                       ; $7933: $df
    ld [hl-], a                                   ; $7934: $32
    ld a, [bc]                                    ; $7935: $0a
    ld a, $05                                     ; $7936: $3e $05
    rst $18                                       ; $7938: $df
    inc [hl]                                      ; $7939: $34
    ld a, [bc]                                    ; $793a: $0a
    ld a, $05                                     ; $793b: $3e $05
    rst $18                                       ; $793d: $df
    ld [$3e0a], sp                                ; $793e: $08 $0a $3e
    inc b                                         ; $7941: $04
    ld b, a                                       ; $7942: $47
    ld a, $05                                     ; $7943: $3e $05
    rst $18                                       ; $7945: $df
    ld [hl-], a                                   ; $7946: $32
    ld a, [bc]                                    ; $7947: $0a
    ld a, $04                                     ; $7948: $3e $04
    rst $18                                       ; $794a: $df
    inc [hl]                                      ; $794b: $34
    ld a, [bc]                                    ; $794c: $0a
    ld a, $05                                     ; $794d: $3e $05
    ld b, a                                       ; $794f: $47
    ld a, $02                                     ; $7950: $3e $02
    rst $18                                       ; $7952: $df
    ld l, $0a                                     ; $7953: $2e $0a
    ld a, $02                                     ; $7955: $3e $02

Call_034_7957:
    ld b, a                                       ; $7957: $47
    ld a, $07                                     ; $7958: $3e $07
    rst $18                                       ; $795a: $df
    ld [hl-], a                                   ; $795b: $32
    ld a, [bc]                                    ; $795c: $0a
    ld a, $02                                     ; $795d: $3e $02
    rst $18                                       ; $795f: $df
    inc [hl]                                      ; $7960: $34
    ld a, [bc]                                    ; $7961: $0a
    ld a, $02                                     ; $7962: $3e $02
    rst $18                                       ; $7964: $df
    ld [$3e0a], sp                                ; $7965: $08 $0a $3e
    dec b                                         ; $7968: $05
    ld b, a                                       ; $7969: $47
    ld a, $06                                     ; $796a: $3e $06
    rst $18                                       ; $796c: $df
    ld [hl-], a                                   ; $796d: $32
    ld a, [bc]                                    ; $796e: $0a
    ld a, $05                                     ; $796f: $3e $05
    rst $18                                       ; $7971: $df
    inc [hl]                                      ; $7972: $34
    ld a, [bc]                                    ; $7973: $0a
    ld a, $05                                     ; $7974: $3e $05
    rst $18                                       ; $7976: $df
    ld [$3e0a], sp                                ; $7977: $08 $0a $3e
    dec b                                         ; $797a: $05
    ld b, $00                                     ; $797b: $06 $00
    rst $18                                       ; $797d: $df
    inc l                                         ; $797e: $2c
    ld a, [bc]                                    ; $797f: $0a
    push af                                       ; $7980: $f5
    ld a, $0a                                     ; $7981: $3e $0a
    rst $18                                       ; $7983: $df
    inc b                                         ; $7984: $04
    ld a, [bc]                                    ; $7985: $0a
    pop af                                        ; $7986: $f1
    ld a, $00                                     ; $7987: $3e $00
    ld b, a                                       ; $7989: $47
    ld a, $05                                     ; $798a: $3e $05
    rst $18                                       ; $798c: $df
    ld l, $0a                                     ; $798d: $2e $0a
    ld a, $00                                     ; $798f: $3e $00
    ld b, a                                       ; $7991: $47
    ld a, $03                                     ; $7992: $3e $03
    rst $18                                       ; $7994: $df
    ld l, $0a                                     ; $7995: $2e $0a
    ld a, $00                                     ; $7997: $3e $00
    ld b, a                                       ; $7999: $47
    ld a, $02                                     ; $799a: $3e $02
    rst $18                                       ; $799c: $df
    ld l, $0a                                     ; $799d: $2e $0a
    ld a, $00                                     ; $799f: $3e $00
    ld b, a                                       ; $79a1: $47
    ld a, $04                                     ; $79a2: $3e $04
    rst $18                                       ; $79a4: $df
    ld l, $0a                                     ; $79a5: $2e $0a
    ld a, $03                                     ; $79a7: $3e $03
    ld b, a                                       ; $79a9: $47
    ld a, $05                                     ; $79aa: $3e $05
    rst $18                                       ; $79ac: $df
    ld [hl-], a                                   ; $79ad: $32
    ld a, [bc]                                    ; $79ae: $0a
    ld a, $03                                     ; $79af: $3e $03
    rst $18                                       ; $79b1: $df
    inc [hl]                                      ; $79b2: $34
    ld a, [bc]                                    ; $79b3: $0a
    ld a, $02                                     ; $79b4: $3e $02
    ld b, a                                       ; $79b6: $47
    ld a, $05                                     ; $79b7: $3e $05
    rst $18                                       ; $79b9: $df
    ld [hl-], a                                   ; $79ba: $32
    ld a, [bc]                                    ; $79bb: $0a
    ld a, $04                                     ; $79bc: $3e $04
    ld b, a                                       ; $79be: $47
    ld a, $05                                     ; $79bf: $3e $05
    rst $18                                       ; $79c1: $df
    ld [hl-], a                                   ; $79c2: $32
    ld a, [bc]                                    ; $79c3: $0a
    ld a, $04                                     ; $79c4: $3e $04
    rst $18                                       ; $79c6: $df
    inc [hl]                                      ; $79c7: $34
    ld a, [bc]                                    ; $79c8: $0a
    push af                                       ; $79c9: $f5
    ld a, $3c                                     ; $79ca: $3e $3c
    rst $18                                       ; $79cc: $df
    inc b                                         ; $79cd: $04
    ld a, [bc]                                    ; $79ce: $0a
    pop af                                        ; $79cf: $f1
    ld a, $05                                     ; $79d0: $3e $05
    ld bc, $0700                                  ; $79d2: $01 $00 $07
    ld de, $0700                                  ; $79d5: $11 $00 $07
    rst $18                                       ; $79d8: $df
    ld [hl+], a                                   ; $79d9: $22
    ld a, [bc]                                    ; $79da: $0a
    push af                                       ; $79db: $f5
    ld a, $3c                                     ; $79dc: $3e $3c
    rst $18                                       ; $79de: $df
    inc b                                         ; $79df: $04
    ld a, [bc]                                    ; $79e0: $0a
    pop af                                        ; $79e1: $f1
    ld a, $05                                     ; $79e2: $3e $05
    ld b, a                                       ; $79e4: $47
    ld a, $03                                     ; $79e5: $3e $03
    rst $18                                       ; $79e7: $df
    ld l, $0a                                     ; $79e8: $2e $0a
    ld a, $05                                     ; $79ea: $3e $05
    ld b, a                                       ; $79ec: $47
    ld a, $02                                     ; $79ed: $3e $02
    rst $18                                       ; $79ef: $df
    ld l, $0a                                     ; $79f0: $2e $0a
    ld a, $05                                     ; $79f2: $3e $05
    ld b, a                                       ; $79f4: $47
    ld a, $04                                     ; $79f5: $3e $04
    rst $18                                       ; $79f7: $df
    ld l, $0a                                     ; $79f8: $2e $0a
    ld a, $03                                     ; $79fa: $3e $03
    ld bc, $0b00                                  ; $79fc: $01 $00 $0b
    ld de, $0700                                  ; $79ff: $11 $00 $07
    rst $18                                       ; $7a02: $df
    ld [hl+], a                                   ; $7a03: $22
    ld a, [bc]                                    ; $7a04: $0a
    ld a, $03                                     ; $7a05: $3e $03
    rst $18                                       ; $7a07: $df
    ld e, $0a                                     ; $7a08: $1e $0a
    ld a, $05                                     ; $7a0a: $3e $05
    ld b, a                                       ; $7a0c: $47
    ld a, $03                                     ; $7a0d: $3e $03
    rst $18                                       ; $7a0f: $df
    ld l, $0a                                     ; $7a10: $2e $0a
    ld a, $03                                     ; $7a12: $3e $03
    rst $18                                       ; $7a14: $df
    ld [$3e0a], sp                                ; $7a15: $08 $0a $3e
    dec b                                         ; $7a18: $05
    ld b, a                                       ; $7a19: $47
    ld a, $03                                     ; $7a1a: $3e $03
    rst $18                                       ; $7a1c: $df
    ld l, $0a                                     ; $7a1d: $2e $0a
    ld a, $03                                     ; $7a1f: $3e $03
    ld b, a                                       ; $7a21: $47
    ld a, $05                                     ; $7a22: $3e $05
    rst $18                                       ; $7a24: $df
    ld l, $0a                                     ; $7a25: $2e $0a
    ld a, $05                                     ; $7a27: $3e $05
    ld b, a                                       ; $7a29: $47
    ld a, $02                                     ; $7a2a: $3e $02
    rst $18                                       ; $7a2c: $df
    ld l, $0a                                     ; $7a2d: $2e $0a
    ld a, $05                                     ; $7a2f: $3e $05
    rst $18                                       ; $7a31: $df
    ld [$f70a], sp                                ; $7a32: $08 $0a $f7
    ldh [rIF], a                                  ; $7a35: $e0 $0f
    jr z, jr_034_7a42                             ; $7a37: $28 $09

    rst $20                                       ; $7a39: $e7
    and b                                         ; $7a3a: $a0
    rla                                           ; $7a3b: $17
    ld hl, $15ec                                  ; $7a3c: $21 $ec $15
    rst $18                                       ; $7a3f: $df
    ld c, $0a                                     ; $7a40: $0e $0a

jr_034_7a42:
    ld a, $05                                     ; $7a42: $3e $05
    ld b, $c0                                     ; $7a44: $06 $c0
    rst $18                                       ; $7a46: $df
    inc l                                         ; $7a47: $2c
    ld a, [bc]                                    ; $7a48: $0a
    ld a, $05                                     ; $7a49: $3e $05
    ld b, a                                       ; $7a4b: $47
    ld a, $06                                     ; $7a4c: $3e $06
    rst $18                                       ; $7a4e: $df
    ld [hl-], a                                   ; $7a4f: $32
    ld a, [bc]                                    ; $7a50: $0a
    ld a, $05                                     ; $7a51: $3e $05
    rst $18                                       ; $7a53: $df
    inc [hl]                                      ; $7a54: $34
    ld a, [bc]                                    ; $7a55: $0a
    ld a, $05                                     ; $7a56: $3e $05
    rst $18                                       ; $7a58: $df
    ld [$3e0a], sp                                ; $7a59: $08 $0a $3e
    inc b                                         ; $7a5c: $04
    ld b, $80                                     ; $7a5d: $06 $80
    rst $18                                       ; $7a5f: $df
    inc l                                         ; $7a60: $2c
    ld a, [bc]                                    ; $7a61: $0a
    ld a, $04                                     ; $7a62: $3e $04
    ld b, a                                       ; $7a64: $47
    ld a, $07                                     ; $7a65: $3e $07
    rst $18                                       ; $7a67: $df
    ld [hl-], a                                   ; $7a68: $32
    ld a, [bc]                                    ; $7a69: $0a
    ld a, $04                                     ; $7a6a: $3e $04
    rst $18                                       ; $7a6c: $df
    inc [hl]                                      ; $7a6d: $34
    ld a, [bc]                                    ; $7a6e: $0a
    ld a, $04                                     ; $7a6f: $3e $04
    rst $18                                       ; $7a71: $df
    ld [$3e0a], sp                                ; $7a72: $08 $0a $3e
    dec b                                         ; $7a75: $05
    ld b, a                                       ; $7a76: $47
    ld a, $07                                     ; $7a77: $3e $07
    rst $18                                       ; $7a79: $df
    ld [hl-], a                                   ; $7a7a: $32
    ld a, [bc]                                    ; $7a7b: $0a
    ld a, $05                                     ; $7a7c: $3e $05
    rst $18                                       ; $7a7e: $df
    inc [hl]                                      ; $7a7f: $34
    ld a, [bc]                                    ; $7a80: $0a
    ld a, $05                                     ; $7a81: $3e $05
    ld b, a                                       ; $7a83: $47
    ld a, $06                                     ; $7a84: $3e $06
    rst $18                                       ; $7a86: $df
    ld [hl-], a                                   ; $7a87: $32
    ld a, [bc]                                    ; $7a88: $0a
    ld a, $05                                     ; $7a89: $3e $05
    rst $18                                       ; $7a8b: $df
    inc [hl]                                      ; $7a8c: $34
    ld a, [bc]                                    ; $7a8d: $0a
    ld a, $05                                     ; $7a8e: $3e $05
    rst $18                                       ; $7a90: $df
    ld [$f70a], sp                                ; $7a91: $08 $0a $f7
    ldh [rIF], a                                  ; $7a94: $e0 $0f
    jr z, jr_034_7ab4                             ; $7a96: $28 $1c

    ld a, $05                                     ; $7a98: $3e $05
    ld b, $00                                     ; $7a9a: $06 $00
    rst $18                                       ; $7a9c: $df
    inc l                                         ; $7a9d: $2c
    ld a, [bc]                                    ; $7a9e: $0a
    push af                                       ; $7a9f: $f5
    ld a, $14                                     ; $7aa0: $3e $14
    rst $18                                       ; $7aa2: $df
    inc b                                         ; $7aa3: $04
    ld a, [bc]                                    ; $7aa4: $0a
    pop af                                        ; $7aa5: $f1
    ld a, $05                                     ; $7aa6: $3e $05
    ld b, $40                                     ; $7aa8: $06 $40
    rst $18                                       ; $7aaa: $df
    inc l                                         ; $7aab: $2c
    ld a, [bc]                                    ; $7aac: $0a
    push af                                       ; $7aad: $f5
    ld a, $14                                     ; $7aae: $3e $14
    rst $18                                       ; $7ab0: $df
    inc b                                         ; $7ab1: $04
    ld a, [bc]                                    ; $7ab2: $0a
    pop af                                        ; $7ab3: $f1

jr_034_7ab4:
    ld a, $05                                     ; $7ab4: $3e $05
    ld b, a                                       ; $7ab6: $47
    ld a, $05                                     ; $7ab7: $3e $05
    rst $18                                       ; $7ab9: $df
    ld [hl-], a                                   ; $7aba: $32
    ld a, [bc]                                    ; $7abb: $0a
    ld a, $05                                     ; $7abc: $3e $05
    rst $18                                       ; $7abe: $df
    inc [hl]                                      ; $7abf: $34
    ld a, [bc]                                    ; $7ac0: $0a
    ld a, $05                                     ; $7ac1: $3e $05
    rst $18                                       ; $7ac3: $df
    ld [$3e0a], sp                                ; $7ac4: $08 $0a $3e
    dec b                                         ; $7ac7: $05
    ld bc, $0700                                  ; $7ac8: $01 $00 $07
    ld de, $0500                                  ; $7acb: $11 $00 $05
    rst $18                                       ; $7ace: $df
    ld [hl+], a                                   ; $7acf: $22
    ld a, [bc]                                    ; $7ad0: $0a
    ld a, $05                                     ; $7ad1: $3e $05
    rst $18                                       ; $7ad3: $df
    ld e, $0a                                     ; $7ad4: $1e $0a
    ld a, $02                                     ; $7ad6: $3e $02
    ld b, $80                                     ; $7ad8: $06 $80
    rst $18                                       ; $7ada: $df
    inc l                                         ; $7adb: $2c
    ld a, [bc]                                    ; $7adc: $0a
    ld a, $05                                     ; $7add: $3e $05
    ld bc, $0700                                  ; $7adf: $01 $00 $07
    ld de, $0100                                  ; $7ae2: $11 $00 $01
    rst $18                                       ; $7ae5: $df
    ld [hl+], a                                   ; $7ae6: $22
    ld a, [bc]                                    ; $7ae7: $0a
    ld a, $05                                     ; $7ae8: $3e $05
    rst $18                                       ; $7aea: $df
    ld e, $0a                                     ; $7aeb: $1e $0a
    ld a, $05                                     ; $7aed: $3e $05
    ld bc, $3f00                                  ; $7aef: $01 $00 $3f
    ld de, $3f00                                  ; $7af2: $11 $00 $3f
    rst $18                                       ; $7af5: $df
    jr nz, jr_034_7b02                            ; $7af6: $20 $0a

    ld a, $03                                     ; $7af8: $3e $03
    ld b, a                                       ; $7afa: $47
    ld a, $02                                     ; $7afb: $3e $02
    rst $18                                       ; $7afd: $df
    ld l, $0a                                     ; $7afe: $2e $0a
    ld a, $02                                     ; $7b00: $3e $02

jr_034_7b02:
    rst $18                                       ; $7b02: $df
    ld [$3e0a], sp                                ; $7b03: $08 $0a $3e
    ld [bc], a                                    ; $7b06: $02
    ld b, a                                       ; $7b07: $47
    ld a, $03                                     ; $7b08: $3e $03
    rst $18                                       ; $7b0a: $df
    ld l, $0a                                     ; $7b0b: $2e $0a
    ld a, $03                                     ; $7b0d: $3e $03
    ld b, a                                       ; $7b0f: $47
    ld a, $05                                     ; $7b10: $3e $05
    rst $18                                       ; $7b12: $df
    ld [hl-], a                                   ; $7b13: $32
    ld a, [bc]                                    ; $7b14: $0a
    ld a, $03                                     ; $7b15: $3e $03
    rst $18                                       ; $7b17: $df
    inc [hl]                                      ; $7b18: $34
    ld a, [bc]                                    ; $7b19: $0a
    ld a, $03                                     ; $7b1a: $3e $03
    rst $18                                       ; $7b1c: $df
    ld [$3e0a], sp                                ; $7b1d: $08 $0a $3e
    nop                                           ; $7b20: $00
    ld b, a                                       ; $7b21: $47
    ld a, $03                                     ; $7b22: $3e $03
    rst $18                                       ; $7b24: $df
    ld l, $0a                                     ; $7b25: $2e $0a
    ld a, $00                                     ; $7b27: $3e $00
    ld b, a                                       ; $7b29: $47
    ld a, $02                                     ; $7b2a: $3e $02
    rst $18                                       ; $7b2c: $df
    ld l, $0a                                     ; $7b2d: $2e $0a
    ld a, $00                                     ; $7b2f: $3e $00
    ld b, a                                       ; $7b31: $47
    ld a, $04                                     ; $7b32: $3e $04
    rst $18                                       ; $7b34: $df
    ld l, $0a                                     ; $7b35: $2e $0a
    ld a, $04                                     ; $7b37: $3e $04
    ld bc, $0d00                                  ; $7b39: $01 $00 $0d
    ld de, $0700                                  ; $7b3c: $11 $00 $07
    rst $18                                       ; $7b3f: $df
    ld [hl+], a                                   ; $7b40: $22
    ld a, [bc]                                    ; $7b41: $0a
    ld a, $04                                     ; $7b42: $3e $04
    rst $18                                       ; $7b44: $df
    ld e, $0a                                     ; $7b45: $1e $0a
    ld a, $04                                     ; $7b47: $3e $04
    ld b, a                                       ; $7b49: $47
    ld a, $05                                     ; $7b4a: $3e $05
    rst $18                                       ; $7b4c: $df
    ld [hl-], a                                   ; $7b4d: $32
    ld a, [bc]                                    ; $7b4e: $0a
    ld a, $04                                     ; $7b4f: $3e $04
    rst $18                                       ; $7b51: $df
    inc [hl]                                      ; $7b52: $34
    ld a, [bc]                                    ; $7b53: $0a
    ld a, $04                                     ; $7b54: $3e $04
    rst $18                                       ; $7b56: $df
    ld [$3e0a], sp                                ; $7b57: $08 $0a $3e
    nop                                           ; $7b5a: $00
    ld b, a                                       ; $7b5b: $47
    ld a, $07                                     ; $7b5c: $3e $07
    rst $18                                       ; $7b5e: $df
    ld [hl-], a                                   ; $7b5f: $32
    ld a, [bc]                                    ; $7b60: $0a
    ld a, $00                                     ; $7b61: $3e $00
    rst $18                                       ; $7b63: $df
    inc [hl]                                      ; $7b64: $34
    ld a, [bc]                                    ; $7b65: $0a
    push af                                       ; $7b66: $f5
    ld a, $1e                                     ; $7b67: $3e $1e
    rst $18                                       ; $7b69: $df
    inc b                                         ; $7b6a: $04
    ld a, [bc]                                    ; $7b6b: $0a
    pop af                                        ; $7b6c: $f1
    ld a, $04                                     ; $7b6d: $3e $04
    ld b, a                                       ; $7b6f: $47
    ld a, $05                                     ; $7b70: $3e $05
    rst $18                                       ; $7b72: $df
    ld [hl-], a                                   ; $7b73: $32
    ld a, [bc]                                    ; $7b74: $0a
    ld a, $02                                     ; $7b75: $3e $02
    ld b, a                                       ; $7b77: $47
    ld a, $05                                     ; $7b78: $3e $05
    rst $18                                       ; $7b7a: $df
    ld [hl-], a                                   ; $7b7b: $32
    ld a, [bc]                                    ; $7b7c: $0a
    ld a, $03                                     ; $7b7d: $3e $03
    ld b, a                                       ; $7b7f: $47
    ld a, $05                                     ; $7b80: $3e $05
    rst $18                                       ; $7b82: $df
    ld [hl-], a                                   ; $7b83: $32
    ld a, [bc]                                    ; $7b84: $0a
    ld a, $03                                     ; $7b85: $3e $03
    rst $18                                       ; $7b87: $df
    inc [hl]                                      ; $7b88: $34
    ld a, [bc]                                    ; $7b89: $0a
    ld a, $02                                     ; $7b8a: $3e $02
    ld bc, $0700                                  ; $7b8c: $01 $00 $07
    ld de, $0100                                  ; $7b8f: $11 $00 $01
    rst $18                                       ; $7b92: $df
    ld [hl+], a                                   ; $7b93: $22
    ld a, [bc]                                    ; $7b94: $0a
    push af                                       ; $7b95: $f5
    ld a, $1e                                     ; $7b96: $3e $1e
    rst $18                                       ; $7b98: $df
    inc b                                         ; $7b99: $04
    ld a, [bc]                                    ; $7b9a: $0a
    pop af                                        ; $7b9b: $f1
    ld a, $03                                     ; $7b9c: $3e $03
    ld bc, $0700                                  ; $7b9e: $01 $00 $07
    ld de, $0100                                  ; $7ba1: $11 $00 $01
    rst $18                                       ; $7ba4: $df
    ld [hl+], a                                   ; $7ba5: $22
    ld a, [bc]                                    ; $7ba6: $0a
    push af                                       ; $7ba7: $f5
    ld a, $1e                                     ; $7ba8: $3e $1e
    rst $18                                       ; $7baa: $df
    inc b                                         ; $7bab: $04
    ld a, [bc]                                    ; $7bac: $0a
    pop af                                        ; $7bad: $f1
    ld a, $04                                     ; $7bae: $3e $04
    ld bc, $0900                                  ; $7bb0: $01 $00 $09
    ld de, $0100                                  ; $7bb3: $11 $00 $01
    rst $18                                       ; $7bb6: $df
    ld [hl+], a                                   ; $7bb7: $22
    ld a, [bc]                                    ; $7bb8: $0a
    push af                                       ; $7bb9: $f5
    ld a, $3c                                     ; $7bba: $3e $3c
    rst $18                                       ; $7bbc: $df
    inc b                                         ; $7bbd: $04
    ld a, [bc]                                    ; $7bbe: $0a
    pop af                                        ; $7bbf: $f1
    ld a, $00                                     ; $7bc0: $3e $00
    ld bc, $0700                                  ; $7bc2: $01 $00 $07
    ld de, $0500                                  ; $7bc5: $11 $00 $05
    rst $18                                       ; $7bc8: $df
    ld [hl+], a                                   ; $7bc9: $22
    ld a, [bc]                                    ; $7bca: $0a
    ld a, [$c46a]                                 ; $7bcb: $fa $6a $c4
    ld [$c441], a                                 ; $7bce: $ea $41 $c4
    push af                                       ; $7bd1: $f5
    ld a, $5a                                     ; $7bd2: $3e $5a
    rst $18                                       ; $7bd4: $df
    inc b                                         ; $7bd5: $04
    ld a, [bc]                                    ; $7bd6: $0a
    pop af                                        ; $7bd7: $f1
    ret                                           ; $7bd8: $c9


    add sp, $29                                   ; $7bd9: $e8 $29
    ld hl, sp+$46                                 ; $7bdb: $f8 $46
    rst $08                                       ; $7bdd: $cf
    add hl, hl                                    ; $7bde: $29
    nop                                           ; $7bdf: $00
    nop                                           ; $7be0: $00
    ld [$0825], sp                                ; $7be1: $08 $25 $08
    dec h                                         ; $7be4: $25
    ld [$0825], sp                                ; $7be5: $08 $25 $08
    dec h                                         ; $7be8: $25
    ldh a, [$03]                                  ; $7be9: $f0 $03
    ld c, l                                       ; $7beb: $4d
    rrca                                          ; $7bec: $0f
    ld b, b                                       ; $7bed: $40
    ld [bc], a                                    ; $7bee: $02
    ret nz                                        ; $7bef: $c0

    nop                                           ; $7bf0: $00
    ldh a, [$03]                                  ; $7bf1: $f0 $03
    push af                                       ; $7bf3: $f5
    inc bc                                        ; $7bf4: $03
    ld c, b                                       ; $7bf5: $48
    rrca                                          ; $7bf6: $0f
    ld b, b                                       ; $7bf7: $40
    ld [bc], a                                    ; $7bf8: $02
    ld e, a                                       ; $7bf9: $5f
    dec sp                                        ; $7bfa: $3b
    jr c, @+$10                                   ; $7bfb: $38 $0e

    ld sp, $4819                                  ; $7bfd: $31 $19 $48
    rrca                                          ; $7c00: $0f
    ld [$0825], sp                                ; $7c01: $08 $25 $08
    dec h                                         ; $7c04: $25
    ld [$0825], sp                                ; $7c05: $08 $25 $08
    dec h                                         ; $7c08: $25
    ld [$0825], sp                                ; $7c09: $08 $25 $08
    dec h                                         ; $7c0c: $25
    ld [$0825], sp                                ; $7c0d: $08 $25 $08
    dec h                                         ; $7c10: $25
    ld [$0825], sp                                ; $7c11: $08 $25 $08
    dec h                                         ; $7c14: $25
    ld [$0825], sp                                ; $7c15: $08 $25 $08
    dec h                                         ; $7c18: $25
    add sp, $29                                   ; $7c19: $e8 $29
    ld hl, sp+$46                                 ; $7c1b: $f8 $46
    rst $08                                       ; $7c1d: $cf
    add hl, hl                                    ; $7c1e: $29
    nop                                           ; $7c1f: $00
    nop                                           ; $7c20: $00
    ld [$0825], sp                                ; $7c21: $08 $25 $08
    dec h                                         ; $7c24: $25
    ld [$0825], sp                                ; $7c25: $08 $25 $08
    dec h                                         ; $7c28: $25
    ld hl, sp+$03                                 ; $7c29: $f8 $03
    ld c, h                                       ; $7c2b: $4c
    inc bc                                        ; $7c2c: $03
    ld d, e                                       ; $7c2d: $53
    ld bc, $008a                                  ; $7c2e: $01 $8a $00
    ldh a, [$03]                                  ; $7c31: $f0 $03
    ld hl, sp+$03                                 ; $7c33: $f8 $03
    ld c, h                                       ; $7c35: $4c
    inc bc                                        ; $7c36: $03
    ld d, e                                       ; $7c37: $53
    ld bc, $47ff                                  ; $7c38: $01 $ff $47
    ldh a, [rP1]                                  ; $7c3b: $f0 $00
    ld e, l                                       ; $7c3d: $5d
    add hl, de                                    ; $7c3e: $19
    ld c, h                                       ; $7c3f: $4c
    inc bc                                        ; $7c40: $03
    ld [$0825], sp                                ; $7c41: $08 $25 $08
    dec h                                         ; $7c44: $25
    ld [$0825], sp                                ; $7c45: $08 $25 $08
    dec h                                         ; $7c48: $25
    ld [$0825], sp                                ; $7c49: $08 $25 $08
    dec h                                         ; $7c4c: $25
    ld [$0825], sp                                ; $7c4d: $08 $25 $08
    dec h                                         ; $7c50: $25
    ld [$0825], sp                                ; $7c51: $08 $25 $08
    dec h                                         ; $7c54: $25
    ld [$0825], sp                                ; $7c55: $08 $25 $08
    dec h                                         ; $7c58: $25
    ldh [$29], a                                  ; $7c59: $e0 $29
    ld hl, sp+$46                                 ; $7c5b: $f8 $46
    rst $08                                       ; $7c5d: $cf
    add hl, hl                                    ; $7c5e: $29
    nop                                           ; $7c5f: $00
    nop                                           ; $7c60: $00
    ld [$0825], sp                                ; $7c61: $08 $25 $08
    dec h                                         ; $7c64: $25
    ld [$0825], sp                                ; $7c65: $08 $25 $08
    dec h                                         ; $7c68: $25
    db $ec                                        ; $7c69: $ec
    dec hl                                        ; $7c6a: $2b
    ld [hl+], a                                   ; $7c6b: $22
    dec sp                                        ; $7c6c: $3b
    ld b, b                                       ; $7c6d: $40
    ld [hl+], a                                   ; $7c6e: $22
    nop                                           ; $7c6f: $00
    add hl, bc                                    ; $7c70: $09
    and l                                         ; $7c71: $a5
    ld b, e                                       ; $7c72: $43
    xor $37                                       ; $7c73: $ee $37
    ld [hl+], a                                   ; $7c75: $22
    dec sp                                        ; $7c76: $3b
    ld b, b                                       ; $7c77: $40
    ld [hl+], a                                   ; $7c78: $22
    ccf                                           ; $7c79: $3f
    ld a, a                                       ; $7c7a: $7f
    rla                                           ; $7c7b: $17
    ld e, [hl]                                    ; $7c7c: $5e
    ld de, $2249                                  ; $7c7d: $11 $49 $22
    dec sp                                        ; $7c80: $3b
    ld [$0825], sp                                ; $7c81: $08 $25 $08
    dec h                                         ; $7c84: $25
    ld [$0825], sp                                ; $7c85: $08 $25 $08
    dec h                                         ; $7c88: $25
    ld [$0825], sp                                ; $7c89: $08 $25 $08
    dec h                                         ; $7c8c: $25
    ld [$0825], sp                                ; $7c8d: $08 $25 $08
    dec h                                         ; $7c90: $25
    ld [$0825], sp                                ; $7c91: $08 $25 $08
    dec h                                         ; $7c94: $25
    ld [$0825], sp                                ; $7c95: $08 $25 $08
    dec h                                         ; $7c98: $25

Jump_034_7c99:
    rst $18                                       ; $7c99: $df
    inc a                                         ; $7c9a: $3c
    ld a, [bc]                                    ; $7c9b: $0a
    ld b, $1a                                     ; $7c9c: $06 $1a
    ld c, $00                                     ; $7c9e: $0e $00
    ld d, $00                                     ; $7ca0: $16 $00
    ld e, $00                                     ; $7ca2: $1e $00
    ld h, $14                                     ; $7ca4: $26 $14
    ld l, $14                                     ; $7ca6: $2e $14
    rst $18                                       ; $7ca8: $df
    ld a, [bc]                                    ; $7ca9: $0a
    dec bc                                        ; $7caa: $0b
    ld hl, $7be9                                  ; $7cab: $21 $e9 $7b
    ld de, $0206                                  ; $7cae: $11 $06 $02
    call Call_000_0595                            ; $7cb1: $cd $95 $05
    ret                                           ; $7cb4: $c9


jr_034_7cb5:
    rst $18                                       ; $7cb5: $df
    inc a                                         ; $7cb6: $3c
    ld a, [bc]                                    ; $7cb7: $0a
    ld b, $00                                     ; $7cb8: $06 $00
    ld c, $18                                     ; $7cba: $0e $18
    ld d, $00                                     ; $7cbc: $16 $00
    ld e, $00                                     ; $7cbe: $1e $00
    ld h, $14                                     ; $7cc0: $26 $14
    ld l, $14                                     ; $7cc2: $2e $14
    rst $18                                       ; $7cc4: $df
    ld a, [bc]                                    ; $7cc5: $0a
    dec bc                                        ; $7cc6: $0b
    ld hl, $7c29                                  ; $7cc7: $21 $29 $7c
    ld de, $0206                                  ; $7cca: $11 $06 $02
    call Call_000_0595                            ; $7ccd: $cd $95 $05
    ret                                           ; $7cd0: $c9


jr_034_7cd1:
    rst $18                                       ; $7cd1: $df
    inc a                                         ; $7cd2: $3c
    ld a, [bc]                                    ; $7cd3: $0a
    ld b, $1a                                     ; $7cd4: $06 $1a
    ld c, $18                                     ; $7cd6: $0e $18
    ld d, $00                                     ; $7cd8: $16 $00
    ld e, $00                                     ; $7cda: $1e $00
    ld h, $14                                     ; $7cdc: $26 $14
    ld l, $14                                     ; $7cde: $2e $14
    rst $18                                       ; $7ce0: $df
    ld a, [bc]                                    ; $7ce1: $0a
    dec bc                                        ; $7ce2: $0b
    ld hl, $7c69                                  ; $7ce3: $21 $69 $7c
    ld de, $0206                                  ; $7ce6: $11 $06 $02
    call Call_000_0595                            ; $7ce9: $cd $95 $05
    ret                                           ; $7cec: $c9


Call_034_7ced:
    ld a, [$c46a]                                 ; $7ced: $fa $6a $c4
    cp $02                                        ; $7cf0: $fe $02
    jp z, Jump_034_7c99                           ; $7cf2: $ca $99 $7c

    cp $03                                        ; $7cf5: $fe $03
    jr z, jr_034_7cb5                             ; $7cf7: $28 $bc

    cp $04                                        ; $7cf9: $fe $04
    jr z, jr_034_7cd1                             ; $7cfb: $28 $d4

    ret                                           ; $7cfd: $c9


    nop                                           ; $7cfe: $00
    dec c                                         ; $7cff: $0d
    dec de                                        ; $7d00: $1b
    nop                                           ; $7d01: $00
    nop                                           ; $7d02: $00
    nop                                           ; $7d03: $00
    ld a, [bc]                                    ; $7d04: $0a
    ld bc, $0c01                                  ; $7d05: $01 $01 $0c
    db $fc                                        ; $7d08: $fc
    rst $38                                       ; $7d09: $ff
    inc de                                        ; $7d0a: $13
    add hl, bc                                    ; $7d0b: $09
    ld [bc], a                                    ; $7d0c: $02
    ld bc, $0c28                                  ; $7d0d: $01 $28 $0c
    ei                                            ; $7d10: $fb
    rst $38                                       ; $7d11: $ff
    inc bc                                        ; $7d12: $03
    nop                                           ; $7d13: $00
    dec d                                         ; $7d14: $15
    nop                                           ; $7d15: $00
    dec d                                         ; $7d16: $15
    ld bc, $0414                                  ; $7d17: $01 $14 $04
    nop                                           ; $7d1a: $00
    rla                                           ; $7d1b: $17
    nop                                           ; $7d1c: $00
    dec d                                         ; $7d1d: $15
    ld [bc], a                                    ; $7d1e: $02
    ld bc, $0614                                  ; $7d1f: $01 $14 $06
    nop                                           ; $7d22: $00
    nop                                           ; $7d23: $00
    nop                                           ; $7d24: $00
    cp $02                                        ; $7d25: $fe $02
    ld bc, $0714                                  ; $7d27: $01 $14 $07
    add b                                         ; $7d2a: $80
    nop                                           ; $7d2b: $00
    ld [bc], a                                    ; $7d2c: $02
    ld [bc], a                                    ; $7d2d: $02
    ld bc, $0814                                  ; $7d2e: $01 $14 $08
    ld b, b                                       ; $7d31: $40
    nop                                           ; $7d32: $00
    ld [bc], a                                    ; $7d33: $02
    ld [bc], a                                    ; $7d34: $02
    ld bc, $0d14                                  ; $7d35: $01 $14 $0d
    ld a, [bc]                                    ; $7d38: $0a
    nop                                           ; $7d39: $00
    add hl, de                                    ; $7d3a: $19
    dec c                                         ; $7d3b: $0d
    ld [de], a                                    ; $7d3c: $12
    ld bc, $0200                                  ; $7d3d: $01 $00 $02
    ld bc, $0e14                                  ; $7d40: $01 $14 $0e
    inc c                                         ; $7d43: $0c
    nop                                           ; $7d44: $00
    cp $0d                                        ; $7d45: $fe $0d
    ld [de], a                                    ; $7d47: $12
    ld bc, $0200                                  ; $7d48: $01 $00 $02
    ld bc, $1014                                  ; $7d4b: $01 $14 $10
    inc bc                                        ; $7d4e: $03
    ld bc, $1078                                  ; $7d4f: $01 $78 $10
    ld bc, $1401                                  ; $7d52: $01 $01 $14
    inc c                                         ; $7d55: $0c
    cp h                                          ; $7d56: $bc
    rst $38                                       ; $7d57: $ff
    ret                                           ; $7d58: $c9


    db $10                                        ; $7d59: $10
    inc bc                                        ; $7d5a: $03
    ld bc, $10a0                                  ; $7d5b: $01 $a0 $10
    ld [bc], a                                    ; $7d5e: $02
    ld bc, $0c04                                  ; $7d5f: $01 $04 $0c
    rst $30                                       ; $7d62: $f7
    rst $38                                       ; $7d63: $ff
    ld bc, $1028                                  ; $7d64: $01 $28 $10
    inc bc                                        ; $7d67: $03
    ld bc, $0c78                                  ; $7d68: $01 $78 $0c
    ld sp, hl                                     ; $7d6b: $f9
    rst $38                                       ; $7d6c: $ff
    ld bc, $1050                                  ; $7d6d: $01 $50 $10
    inc bc                                        ; $7d70: $03
    ld bc, $0c78                                  ; $7d71: $01 $78 $0c
    ld sp, hl                                     ; $7d74: $f9
    rst $38                                       ; $7d75: $ff
    ld bc, $108c                                  ; $7d76: $01 $8c $10
    inc bc                                        ; $7d79: $03
    ld bc, $0c78                                  ; $7d7a: $01 $78 $0c
    ld sp, hl                                     ; $7d7d: $f9
    rst $38                                       ; $7d7e: $ff
    push de                                       ; $7d7f: $d5
    ld hl, $c880                                  ; $7d80: $21 $80 $c8
    ld d, $00                                     ; $7d83: $16 $00
    ld e, a                                       ; $7d85: $5f
    ld a, [$c835]                                 ; $7d86: $fa $35 $c8
    or a                                          ; $7d89: $b7
    jr z, jr_034_7d90                             ; $7d8a: $28 $04

    ld a, $40                                     ; $7d8c: $3e $40
    add e                                         ; $7d8e: $83
    ld e, a                                       ; $7d8f: $5f

jr_034_7d90:
    add hl, de                                    ; $7d90: $19
    pop de                                        ; $7d91: $d1
    ret                                           ; $7d92: $c9


Call_034_7d93:
    push bc                                       ; $7d93: $c5
    push de                                       ; $7d94: $d5
    push hl                                       ; $7d95: $e5
    push hl                                       ; $7d96: $e5
    rst $18                                       ; $7d97: $df
    inc b                                         ; $7d98: $04
    db $10                                        ; $7d99: $10
    ld d, h                                       ; $7d9a: $54
    ld e, l                                       ; $7d9b: $5d
    pop hl                                        ; $7d9c: $e1
    call Call_000_08ac                            ; $7d9d: $cd $ac $08
    bit 7, h                                      ; $7da0: $cb $7c
    ld a, $01                                     ; $7da2: $3e $01
    jr nz, jr_034_7da7                            ; $7da4: $20 $01

    xor a                                         ; $7da6: $af

jr_034_7da7:
    pop hl                                        ; $7da7: $e1
    pop de                                        ; $7da8: $d1
    pop bc                                        ; $7da9: $c1
    ret                                           ; $7daa: $c9


    push af                                       ; $7dab: $f5
    push bc                                       ; $7dac: $c5
    ld hl, $c290                                  ; $7dad: $21 $90 $c2
    ld a, [hl+]                                   ; $7db0: $2a
    ld h, [hl]                                    ; $7db1: $66
    ld l, a                                       ; $7db2: $6f
    ld a, l                                       ; $7db3: $7d
    ldh [$e0], a                                  ; $7db4: $e0 $e0
    ld a, h                                       ; $7db6: $7c
    ldh [$e1], a                                  ; $7db7: $e0 $e1
    ld a, $04                                     ; $7db9: $3e $04
    ldh [$96], a                                  ; $7dbb: $e0 $96
    ldh [rSVBK], a                                ; $7dbd: $e0 $70
    ld hl, $ffe0                                  ; $7dbf: $21 $e0 $ff
    ld a, [hl+]                                   ; $7dc2: $2a
    ld h, [hl]                                    ; $7dc3: $66
    add $06                                       ; $7dc4: $c6 $06
    ld l, a                                       ; $7dc6: $6f
    ld a, [hl+]                                   ; $7dc7: $2a
    ld d, [hl]                                    ; $7dc8: $56
    ld e, a                                       ; $7dc9: $5f
    ld hl, $ffe0                                  ; $7dca: $21 $e0 $ff
    ld a, [hl+]                                   ; $7dcd: $2a
    ld h, [hl]                                    ; $7dce: $66
    add $04                                       ; $7dcf: $c6 $04
    ld l, a                                       ; $7dd1: $6f
    ld a, [hl+]                                   ; $7dd2: $2a
    ld h, [hl]                                    ; $7dd3: $66
    ld l, a                                       ; $7dd4: $6f
    pop bc                                        ; $7dd5: $c1
    pop af                                        ; $7dd6: $f1
    ret                                           ; $7dd7: $c9


Call_034_7dd8:
    ld c, $08                                     ; $7dd8: $0e $08
    call Call_000_25a1                            ; $7dda: $cd $a1 $25
    call Call_000_2625                            ; $7ddd: $cd $25 $26
    rst $18                                       ; $7de0: $df
    nop                                           ; $7de1: $00
    ld b, c                                       ; $7de2: $41
    ret                                           ; $7de3: $c9


    rst $30                                       ; $7de4: $f7
    ld h, b                                       ; $7de5: $60
    inc c                                         ; $7de6: $0c
    jr z, jr_034_7df6                             ; $7de7: $28 $0d

    ld h, d                                       ; $7de9: $62
    ld l, e                                       ; $7dea: $6b
    sra h                                         ; $7deb: $cb $2c
    rr l                                          ; $7ded: $cb $1d
    sra h                                         ; $7def: $cb $2c
    rr l                                          ; $7df1: $cb $1d
    add hl, de                                    ; $7df3: $19
    ld d, h                                       ; $7df4: $54
    ld e, l                                       ; $7df5: $5d

jr_034_7df6:
    push de                                       ; $7df6: $d5
    rst $18                                       ; $7df7: $df
    ld [hl+], a                                   ; $7df8: $22
    ld [bc], a                                    ; $7df9: $02
    pop hl                                        ; $7dfa: $e1
    rst $18                                       ; $7dfb: $df
    ld d, [hl]                                    ; $7dfc: $56
    dec b                                         ; $7dfd: $05
    rst $08                                       ; $7dfe: $cf
    jr c, @+$23                                   ; $7dff: $38 $21

    dec de                                        ; $7e01: $1b
    ld bc, $0edf                                  ; $7e02: $01 $df $0e
    ld a, [bc]                                    ; $7e05: $0a
    ld a, $80                                     ; $7e06: $3e $80
    rst $18                                       ; $7e08: $df
    ld [$cd0a], sp                                ; $7e09: $08 $0a $cd
    rra                                           ; $7e0c: $1f
    inc l                                         ; $7e0d: $2c
    call Call_034_7dd8                            ; $7e0e: $cd $d8 $7d
    ret                                           ; $7e11: $c9


    ld a, [$c810]                                 ; $7e12: $fa $10 $c8
    cp $00                                        ; $7e15: $fe $00
    jr z, jr_034_7e1e                             ; $7e17: $28 $05

    rst $30                                       ; $7e19: $f7
    add b                                         ; $7e1a: $80
    ld de, $6828                                  ; $7e1b: $11 $28 $68

jr_034_7e1e:
    ld a, [$c810]                                 ; $7e1e: $fa $10 $c8
    cp $01                                        ; $7e21: $fe $01
    jr z, jr_034_7e2a                             ; $7e23: $28 $05

    rst $30                                       ; $7e25: $f7
    and b                                         ; $7e26: $a0
    ld de, $5c28                                  ; $7e27: $11 $28 $5c

jr_034_7e2a:
    ld a, [$c810]                                 ; $7e2a: $fa $10 $c8
    cp $02                                        ; $7e2d: $fe $02
    jr z, jr_034_7e36                             ; $7e2f: $28 $05

    rst $30                                       ; $7e31: $f7
    ret nz                                        ; $7e32: $c0

    ld de, $5028                                  ; $7e33: $11 $28 $50

jr_034_7e36:
    ld a, [$c810]                                 ; $7e36: $fa $10 $c8
    cp $03                                        ; $7e39: $fe $03
    jr z, jr_034_7e42                             ; $7e3b: $28 $05

    rst $30                                       ; $7e3d: $f7
    ldh [rNR11], a                                ; $7e3e: $e0 $11
    jr z, jr_034_7e86                             ; $7e40: $28 $44

jr_034_7e42:
    ld de, $012c                                  ; $7e42: $11 $2c $01
    push de                                       ; $7e45: $d5
    rst $18                                       ; $7e46: $df
    ld [hl+], a                                   ; $7e47: $22
    ld [bc], a                                    ; $7e48: $02
    pop hl                                        ; $7e49: $e1
    rst $18                                       ; $7e4a: $df
    ld d, [hl]                                    ; $7e4b: $56
    dec b                                         ; $7e4c: $05
    rst $08                                       ; $7e4d: $cf
    jr c, jr_034_7e71                             ; $7e4e: $38 $21

    dec de                                        ; $7e50: $1b
    ld bc, $0edf                                  ; $7e51: $01 $df $0e
    ld a, [bc]                                    ; $7e54: $0a
    ld a, $80                                     ; $7e55: $3e $80
    rst $18                                       ; $7e57: $df
    ld [$cd0a], sp                                ; $7e58: $08 $0a $cd
    rra                                           ; $7e5b: $1f
    inc l                                         ; $7e5c: $2c
    call Call_034_7dd8                            ; $7e5d: $cd $d8 $7d
    ld b, $00                                     ; $7e60: $06 $00
    ld c, $fa                                     ; $7e62: $0e $fa
    rst $18                                       ; $7e64: $df
    ld c, [hl]                                    ; $7e65: $4e
    ld a, [bc]                                    ; $7e66: $0a
    rst $18                                       ; $7e67: $df
    inc [hl]                                      ; $7e68: $34
    ld [bc], a                                    ; $7e69: $02
    ld a, $fa                                     ; $7e6a: $3e $fa
    ld [$c441], a                                 ; $7e6c: $ea $41 $c4
    ld a, $fa                                     ; $7e6f: $3e $fa

jr_034_7e71:
    ld [$c46a], a                                 ; $7e71: $ea $6a $c4
    ld hl, $c2a0                                  ; $7e74: $21 $a0 $c2
    ld de, $c466                                  ; $7e77: $11 $66 $c4
    ld bc, $0004                                  ; $7e7a: $01 $04 $00
    call Call_000_03d3                            ; $7e7d: $cd $d3 $03
    ld a, [$c2a4]                                 ; $7e80: $fa $a4 $c2
    ld [$c465], a                                 ; $7e83: $ea $65 $c4

jr_034_7e86:
    ret                                           ; $7e86: $c9


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
