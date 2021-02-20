; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $044", ROMX[$4000], BANK[$44]

    ld [hl], h                                    ; $4000: $74
    ld a, [hl]                                    ; $4001: $7e
    ei                                            ; $4002: $fb
    ld b, d                                       ; $4003: $42

Call_044_4004:
    push bc                                       ; $4004: $c5
    ld b, $80                                     ; $4005: $06 $80

jr_044_4007:
    ld c, [hl]                                    ; $4007: $4e
    inc hl                                        ; $4008: $23
    inc c                                         ; $4009: $0c
    dec c                                         ; $400a: $0d
    jr z, jr_044_4013                             ; $400b: $28 $06

    rst $18                                       ; $400d: $df
    ld e, $05                                     ; $400e: $1e $05
    inc d                                         ; $4010: $14
    jr jr_044_4007                                ; $4011: $18 $f4

jr_044_4013:
    pop bc                                        ; $4013: $c1
    ret                                           ; $4014: $c9


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
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    ccf                                           ; $4022: $3f
    nop                                           ; $4023: $00
    ld a, a                                       ; $4024: $7f
    rra                                           ; $4025: $1f
    ld a, a                                       ; $4026: $7f
    jr nc, jr_044_40a1                            ; $4027: $30 $78

    jr nz, jr_044_409b                            ; $4029: $20 $70

    jr nz, jr_044_409d                            ; $402b: $20 $70

    jr nz, jr_044_409f                            ; $402d: $20 $70

    jr nz, jr_044_40a1                            ; $402f: $20 $70

    jr nz, jr_044_40a3                            ; $4031: $20 $70

    jr nz, jr_044_40a5                            ; $4033: $20 $70

    jr nz, jr_044_40af                            ; $4035: $20 $78

    jr nz, jr_044_40b8                            ; $4037: $20 $7f

    jr nc, jr_044_40ba                            ; $4039: $30 $7f

    rra                                           ; $403b: $1f
    ccf                                           ; $403c: $3f
    nop                                           ; $403d: $00
    nop                                           ; $403e: $00
    nop                                           ; $403f: $00
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    db $fc                                        ; $4042: $fc
    nop                                           ; $4043: $00
    cp $f8                                        ; $4044: $fe $f8
    cp $0c                                        ; $4046: $fe $0c
    ld e, $04                                     ; $4048: $1e $04
    ld c, $04                                     ; $404a: $0e $04
    ld c, $04                                     ; $404c: $0e $04
    ld c, $04                                     ; $404e: $0e $04
    ld c, $04                                     ; $4050: $0e $04
    ld c, $04                                     ; $4052: $0e $04
    ld c, $04                                     ; $4054: $0e $04
    ld e, $04                                     ; $4056: $1e $04
    cp $0c                                        ; $4058: $fe $0c
    cp $f8                                        ; $405a: $fe $f8
    db $fc                                        ; $405c: $fc
    nop                                           ; $405d: $00
    nop                                           ; $405e: $00
    nop                                           ; $405f: $00
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    nop                                           ; $406a: $00
    nop                                           ; $406b: $00
    nop                                           ; $406c: $00
    nop                                           ; $406d: $00
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    nop                                           ; $4070: $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    nop                                           ; $4076: $00
    nop                                           ; $4077: $00
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    nop                                           ; $407c: $00
    nop                                           ; $407d: $00
    nop                                           ; $407e: $00
    nop                                           ; $407f: $00
    rst $38                                       ; $4080: $ff
    nop                                           ; $4081: $00
    rst $38                                       ; $4082: $ff
    nop                                           ; $4083: $00
    rst $38                                       ; $4084: $ff
    nop                                           ; $4085: $00
    rst $38                                       ; $4086: $ff
    nop                                           ; $4087: $00
    rst $38                                       ; $4088: $ff
    nop                                           ; $4089: $00
    rst $38                                       ; $408a: $ff
    nop                                           ; $408b: $00
    rst $38                                       ; $408c: $ff
    nop                                           ; $408d: $00
    rst $38                                       ; $408e: $ff
    nop                                           ; $408f: $00
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    nop                                           ; $4094: $00
    nop                                           ; $4095: $00
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    nop                                           ; $409a: $00

jr_044_409b:
    nop                                           ; $409b: $00
    nop                                           ; $409c: $00

jr_044_409d:
    nop                                           ; $409d: $00
    nop                                           ; $409e: $00

jr_044_409f:
    nop                                           ; $409f: $00
    nop                                           ; $40a0: $00

jr_044_40a1:
    rst $38                                       ; $40a1: $ff
    nop                                           ; $40a2: $00

jr_044_40a3:
    rst $38                                       ; $40a3: $ff
    nop                                           ; $40a4: $00

jr_044_40a5:
    rst $38                                       ; $40a5: $ff
    nop                                           ; $40a6: $00
    rst $38                                       ; $40a7: $ff
    nop                                           ; $40a8: $00
    rst $38                                       ; $40a9: $ff
    nop                                           ; $40aa: $00
    rst $38                                       ; $40ab: $ff
    nop                                           ; $40ac: $00
    rst $38                                       ; $40ad: $ff
    nop                                           ; $40ae: $00

jr_044_40af:
    rst $38                                       ; $40af: $ff
    nop                                           ; $40b0: $00
    nop                                           ; $40b1: $00
    nop                                           ; $40b2: $00
    nop                                           ; $40b3: $00
    nop                                           ; $40b4: $00
    nop                                           ; $40b5: $00
    nop                                           ; $40b6: $00
    nop                                           ; $40b7: $00

jr_044_40b8:
    nop                                           ; $40b8: $00
    nop                                           ; $40b9: $00

jr_044_40ba:
    nop                                           ; $40ba: $00
    nop                                           ; $40bb: $00
    nop                                           ; $40bc: $00
    nop                                           ; $40bd: $00
    nop                                           ; $40be: $00
    nop                                           ; $40bf: $00
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
    rst $38                                       ; $40cd: $ff
    rst $38                                       ; $40ce: $ff
    rst $38                                       ; $40cf: $ff
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

Call_044_40e0:
    ld hl, $c3f7                                  ; $40e0: $21 $f7 $c3
    ld a, [hl]                                    ; $40e3: $7e
    add a                                         ; $40e4: $87
    add a                                         ; $40e5: $87
    ld hl, $c3f6                                  ; $40e6: $21 $f6 $c3
    add [hl]                                      ; $40e9: $86
    add a                                         ; $40ea: $87
    ld hl, $c100                                  ; $40eb: $21 $00 $c1
    add l                                         ; $40ee: $85
    ld l, a                                       ; $40ef: $6f
    jr nc, jr_044_40f3                            ; $40f0: $30 $01

    inc h                                         ; $40f2: $24

jr_044_40f3:
    ret                                           ; $40f3: $c9


Call_044_40f4:
    push af                                       ; $40f4: $f5
    push bc                                       ; $40f5: $c5
    push de                                       ; $40f6: $d5
    push hl                                       ; $40f7: $e5
    call Call_044_40e0                            ; $40f8: $cd $e0 $40
    ld a, [hl+]                                   ; $40fb: $2a
    ld b, [hl]                                    ; $40fc: $46
    ld c, a                                       ; $40fd: $4f
    call Call_000_24eb                            ; $40fe: $cd $eb $24
    push de                                       ; $4101: $d5
    ld h, $00                                     ; $4102: $26 $00
    ld l, a                                       ; $4104: $6f
    ld de, $c470                                  ; $4105: $11 $70 $c4
    ld a, $03                                     ; $4108: $3e $03
    call Call_000_21f0                            ; $410a: $cd $f0 $21
    ld h, $00                                     ; $410d: $26 $00
    ld l, b                                       ; $410f: $68
    ld de, $c473                                  ; $4110: $11 $73 $c4
    ld a, $03                                     ; $4113: $3e $03
    call Call_000_21f0                            ; $4115: $cd $f0 $21
    ld h, $00                                     ; $4118: $26 $00
    ld l, c                                       ; $411a: $69
    ld de, $c476                                  ; $411b: $11 $76 $c4
    ld a, $03                                     ; $411e: $3e $03
    call Call_000_21f0                            ; $4120: $cd $f0 $21
    pop de                                        ; $4123: $d1
    ld a, e                                       ; $4124: $7b
    add a                                         ; $4125: $87
    add e                                         ; $4126: $83
    ld hl, $c470                                  ; $4127: $21 $70 $c4
    add l                                         ; $412a: $85
    ld l, a                                       ; $412b: $6f
    jr nc, jr_044_412f                            ; $412c: $30 $01

    inc h                                         ; $412e: $24

jr_044_412f:
    ld [hl], $0d                                  ; $412f: $36 $0d
    xor a                                         ; $4131: $af
    ld [$c479], a                                 ; $4132: $ea $79 $c4
    ld hl, $c470                                  ; $4135: $21 $70 $c4
    ld de, $0102                                  ; $4138: $11 $02 $01
    ld a, [$c3f5]                                 ; $413b: $fa $f5 $c3
    call Call_044_4004                            ; $413e: $cd $04 $40
    rst $18                                       ; $4141: $df
    inc e                                         ; $4142: $1c
    dec b                                         ; $4143: $05
    rst $18                                       ; $4144: $df
    inc d                                         ; $4145: $14
    dec b                                         ; $4146: $05
    pop hl                                        ; $4147: $e1
    pop de                                        ; $4148: $d1
    pop bc                                        ; $4149: $c1
    pop af                                        ; $414a: $f1
    ret                                           ; $414b: $c9


    dec l                                         ; $414c: $2d
    dec l                                         ; $414d: $2d
    ld d, d                                       ; $414e: $52
    dec l                                         ; $414f: $2d
    dec l                                         ; $4150: $2d
    ld b, a                                       ; $4151: $47
    dec l                                         ; $4152: $2d
    dec l                                         ; $4153: $2d
    ld b, d                                       ; $4154: $42
    nop                                           ; $4155: $00

Call_044_4156:
    ld de, $0700                                  ; $4156: $11 $00 $07
    ld bc, $0b04                                  ; $4159: $01 $04 $0b
    rst $18                                       ; $415c: $df
    inc b                                         ; $415d: $04
    dec b                                         ; $415e: $05
    ld [$c3f5], a                                 ; $415f: $ea $f5 $c3
    rst $18                                       ; $4162: $df
    inc e                                         ; $4163: $1c
    dec b                                         ; $4164: $05
    rst $18                                       ; $4165: $df
    inc d                                         ; $4166: $14
    dec b                                         ; $4167: $05
    ld hl, $414c                                  ; $4168: $21 $4c $41
    ld de, $0101                                  ; $416b: $11 $01 $01
    ld a, [$c3f5]                                 ; $416e: $fa $f5 $c3
    call Call_044_4004                            ; $4171: $cd $04 $40
    ld e, $00                                     ; $4174: $1e $00
    call Call_044_40f4                            ; $4176: $cd $f4 $40

jr_044_4179:
    ldh a, [$94]                                  ; $4179: $f0 $94
    and $03                                       ; $417b: $e6 $03
    jr nz, jr_044_41de                            ; $417d: $20 $5f

    ldh a, [$90]                                  ; $417f: $f0 $90
    bit 5, a                                      ; $4181: $cb $6f
    jr z, jr_044_4188                             ; $4183: $28 $03

    dec e                                         ; $4185: $1d
    jr jr_044_41a4                                ; $4186: $18 $1c

jr_044_4188:
    bit 4, a                                      ; $4188: $cb $67
    jr z, jr_044_418f                             ; $418a: $28 $03

    inc e                                         ; $418c: $1c
    jr jr_044_41a4                                ; $418d: $18 $15

jr_044_418f:
    bit 6, a                                      ; $418f: $cb $77
    jr z, jr_044_4197                             ; $4191: $28 $04

    ld d, $01                                     ; $4193: $16 $01
    jr jr_044_41b6                                ; $4195: $18 $1f

jr_044_4197:
    bit 7, a                                      ; $4197: $cb $7f
    jr z, jr_044_419f                             ; $4199: $28 $04

    ld d, $ff                                     ; $419b: $16 $ff
    jr jr_044_41b6                                ; $419d: $18 $17

jr_044_419f:
    call Call_000_2e3b                            ; $419f: $cd $3b $2e
    jr jr_044_4179                                ; $41a2: $18 $d5

jr_044_41a4:
    ld a, e                                       ; $41a4: $7b
    cp $ff                                        ; $41a5: $fe $ff
    jr nz, jr_044_41ab                            ; $41a7: $20 $02

    ld e, $02                                     ; $41a9: $1e $02

jr_044_41ab:
    cp $03                                        ; $41ab: $fe $03
    jr nz, jr_044_41b1                            ; $41ad: $20 $02

    ld e, $00                                     ; $41af: $1e $00

jr_044_41b1:
    call Call_044_40f4                            ; $41b1: $cd $f4 $40
    jr jr_044_4179                                ; $41b4: $18 $c3

jr_044_41b6:
    call Call_044_40e0                            ; $41b6: $cd $e0 $40
    ld a, [hl+]                                   ; $41b9: $2a
    ld c, a                                       ; $41ba: $4f
    ld a, [hl-]                                   ; $41bb: $3a
    ld b, a                                       ; $41bc: $47
    ld a, e                                       ; $41bd: $7b
    and $03                                       ; $41be: $e6 $03
    jr nz, jr_044_41c5                            ; $41c0: $20 $03

    call Call_000_252e                            ; $41c2: $cd $2e $25

jr_044_41c5:
    dec a                                         ; $41c5: $3d
    jr nz, jr_044_41cb                            ; $41c6: $20 $03

    call Call_000_253a                            ; $41c8: $cd $3a $25

jr_044_41cb:
    dec a                                         ; $41cb: $3d
    jr nz, jr_044_41d1                            ; $41cc: $20 $03

    call Call_000_254a                            ; $41ce: $cd $4a $25

jr_044_41d1:
    ld a, c                                       ; $41d1: $79
    ld [hl+], a                                   ; $41d2: $22
    ld a, b                                       ; $41d3: $78
    ld [hl-], a                                   ; $41d4: $32
    ld a, $03                                     ; $41d5: $3e $03
    ldh [$9d], a                                  ; $41d7: $e0 $9d
    call Call_044_40f4                            ; $41d9: $cd $f4 $40
    jr jr_044_4179                                ; $41dc: $18 $9b

jr_044_41de:
    ld a, [$c3f5]                                 ; $41de: $fa $f5 $c3
    rst $18                                       ; $41e1: $df
    inc c                                         ; $41e2: $0c
    dec b                                         ; $41e3: $05
    rst $18                                       ; $41e4: $df
    inc e                                         ; $41e5: $1c
    dec b                                         ; $41e6: $05
    rst $18                                       ; $41e7: $df
    inc d                                         ; $41e8: $14
    dec b                                         ; $41e9: $05
    ret                                           ; $41ea: $c9


Call_044_41eb:
    ld de, $0000                                  ; $41eb: $11 $00 $00
    ld bc, $0712                                  ; $41ee: $01 $12 $07
    ld a, $00                                     ; $41f1: $3e $00
    rst $18                                       ; $41f3: $df
    ld [bc], a                                    ; $41f4: $02
    dec b                                         ; $41f5: $05
    ld [$c3f4], a                                 ; $41f6: $ea $f4 $c3
    ld h, $10                                     ; $41f9: $26 $10
    ld de, $0101                                  ; $41fb: $11 $01 $01
    ld bc, $0030                                  ; $41fe: $01 $30 $00

jr_044_4201:
    rst $18                                       ; $4201: $df
    ld e, $05                                     ; $4202: $1e $05
    inc e                                         ; $4204: $1c
    inc c                                         ; $4205: $0c
    res 3, c                                      ; $4206: $cb $99
    dec h                                         ; $4208: $25
    jr nz, jr_044_4201                            ; $4209: $20 $f6

    ld h, $08                                     ; $420b: $26 $08
    ld e, $01                                     ; $420d: $1e $01
    ld b, $00                                     ; $420f: $06 $00

jr_044_4211:
    ld d, $02                                     ; $4211: $16 $02
    ld c, $a0                                     ; $4213: $0e $a0
    rst $18                                       ; $4215: $df
    ld e, $05                                     ; $4216: $1e $05
    inc d                                         ; $4218: $14
    ld c, $a1                                     ; $4219: $0e $a1
    rst $18                                       ; $421b: $df
    ld e, $05                                     ; $421c: $1e $05
    inc d                                         ; $421e: $14
    ld c, $a2                                     ; $421f: $0e $a2
    rst $18                                       ; $4221: $df
    ld e, $05                                     ; $4222: $1e $05
    inc d                                         ; $4224: $14
    ld c, $a3                                     ; $4225: $0e $a3
    rst $18                                       ; $4227: $df
    ld e, $05                                     ; $4228: $1e $05
    inc e                                         ; $422a: $1c
    inc b                                         ; $422b: $04
    dec h                                         ; $422c: $25
    jr nz, jr_044_4211                            ; $422d: $20 $e2

    rst $18                                       ; $422f: $df
    inc e                                         ; $4230: $1c
    dec b                                         ; $4231: $05
    rst $18                                       ; $4232: $df
    inc d                                         ; $4233: $14
    dec b                                         ; $4234: $05
    ld a, $0f                                     ; $4235: $3e $0f
    ld hl, $4292                                  ; $4237: $21 $92 $42
    call Call_000_23e8                            ; $423a: $cd $e8 $23

jr_044_423d:
    ldh a, [$94]                                  ; $423d: $f0 $94
    bit 1, a                                      ; $423f: $cb $4f
    jr nz, jr_044_427f                            ; $4241: $20 $3c

    bit 0, a                                      ; $4243: $cb $47
    call nz, Call_044_4156                        ; $4245: $c4 $56 $41
    ld a, [$c3f6]                                 ; $4248: $fa $f6 $c3
    ld d, a                                       ; $424b: $57
    ld a, [$c3f7]                                 ; $424c: $fa $f7 $c3
    ld e, a                                       ; $424f: $5f
    ldh a, [$91]                                  ; $4250: $f0 $91
    bit 5, a                                      ; $4252: $cb $6f
    jr z, jr_044_4259                             ; $4254: $28 $03

    dec d                                         ; $4256: $15
    jr jr_044_426e                                ; $4257: $18 $15

jr_044_4259:
    bit 4, a                                      ; $4259: $cb $67
    jr z, jr_044_4260                             ; $425b: $28 $03

    inc d                                         ; $425d: $14
    jr jr_044_426e                                ; $425e: $18 $0e

jr_044_4260:
    bit 6, a                                      ; $4260: $cb $77
    jr z, jr_044_4267                             ; $4262: $28 $03

    dec e                                         ; $4264: $1d
    jr jr_044_426e                                ; $4265: $18 $07

jr_044_4267:
    bit 7, a                                      ; $4267: $cb $7f
    jr z, jr_044_426e                             ; $4269: $28 $03

    inc e                                         ; $426b: $1c
    jr jr_044_426e                                ; $426c: $18 $00

jr_044_426e:
    ld a, d                                       ; $426e: $7a
    and $03                                       ; $426f: $e6 $03
    ld [$c3f6], a                                 ; $4271: $ea $f6 $c3
    ld a, e                                       ; $4274: $7b
    and $0f                                       ; $4275: $e6 $0f
    ld [$c3f7], a                                 ; $4277: $ea $f7 $c3
    call Call_000_2e3b                            ; $427a: $cd $3b $2e
    jr jr_044_423d                                ; $427d: $18 $be

jr_044_427f:
    ld a, [$c3f4]                                 ; $427f: $fa $f4 $c3
    rst $18                                       ; $4282: $df
    inc c                                         ; $4283: $0c
    dec b                                         ; $4284: $05
    rst $18                                       ; $4285: $df
    inc e                                         ; $4286: $1c
    dec b                                         ; $4287: $05
    rst $18                                       ; $4288: $df
    inc d                                         ; $4289: $14
    dec b                                         ; $428a: $05
    ld hl, $4292                                  ; $428b: $21 $92 $42
    call Call_000_2449                            ; $428e: $cd $49 $24
    ret                                           ; $4291: $c9


    ld a, [$c320]                                 ; $4292: $fa $20 $c3
    rlca                                          ; $4295: $07
    rlca                                          ; $4296: $07
    rlca                                          ; $4297: $07
    add $04                                       ; $4298: $c6 $04
    and $07                                       ; $429a: $e6 $07
    ld h, a                                       ; $429c: $67
    ld a, [$c322]                                 ; $429d: $fa $22 $c3
    rlca                                          ; $42a0: $07
    rlca                                          ; $42a1: $07
    rlca                                          ; $42a2: $07
    add $04                                       ; $42a3: $c6 $04
    and $07                                       ; $42a5: $e6 $07
    ld l, a                                       ; $42a7: $6f
    ld a, [$c3f6]                                 ; $42a8: $fa $f6 $c3
    add a                                         ; $42ab: $87
    add a                                         ; $42ac: $87
    add a                                         ; $42ad: $87
    add $18                                       ; $42ae: $c6 $18
    sub h                                         ; $42b0: $94
    ld d, a                                       ; $42b1: $57
    ld a, [$c3f7]                                 ; $42b2: $fa $f7 $c3
    add a                                         ; $42b5: $87
    add a                                         ; $42b6: $87
    add a                                         ; $42b7: $87
    add $18                                       ; $42b8: $c6 $18
    sub l                                         ; $42ba: $95
    ld e, a                                       ; $42bb: $5f
    ld b, $01                                     ; $42bc: $06 $01
    ld c, $60                                     ; $42be: $0e $60
    push hl                                       ; $42c0: $e5
    call Call_000_26a4                            ; $42c1: $cd $a4 $26
    pop hl                                        ; $42c4: $e1
    ld a, $50                                     ; $42c5: $3e $50
    sub l                                         ; $42c7: $95
    ld e, a                                       ; $42c8: $5f
    ld b, $00                                     ; $42c9: $06 $00
    ld a, $08                                     ; $42cb: $3e $08

jr_044_42cd:
    push af                                       ; $42cd: $f5
    push hl                                       ; $42ce: $e5
    ld a, $20                                     ; $42cf: $3e $20
    sub h                                         ; $42d1: $94
    ld d, a                                       ; $42d2: $57
    ld c, $66                                     ; $42d3: $0e $66
    push de                                       ; $42d5: $d5
    call Call_000_2798                            ; $42d6: $cd $98 $27
    pop de                                        ; $42d9: $d1
    ld a, d                                       ; $42da: $7a
    add $08                                       ; $42db: $c6 $08
    ld d, a                                       ; $42dd: $57
    inc c                                         ; $42de: $0c
    inc c                                         ; $42df: $0c
    push de                                       ; $42e0: $d5
    call Call_000_2798                            ; $42e1: $cd $98 $27
    pop de                                        ; $42e4: $d1
    ld a, d                                       ; $42e5: $7a
    add $08                                       ; $42e6: $c6 $08
    ld d, a                                       ; $42e8: $57
    inc c                                         ; $42e9: $0c
    inc c                                         ; $42ea: $0c
    push de                                       ; $42eb: $d5
    call Call_000_2798                            ; $42ec: $cd $98 $27
    pop de                                        ; $42ef: $d1
    ld a, e                                       ; $42f0: $7b
    add $08                                       ; $42f1: $c6 $08
    ld e, a                                       ; $42f3: $5f
    inc b                                         ; $42f4: $04
    pop hl                                        ; $42f5: $e1
    pop af                                        ; $42f6: $f1
    dec a                                         ; $42f7: $3d
    jr nz, jr_044_42cd                            ; $42f8: $20 $d3

    ret                                           ; $42fa: $c9


    ld hl, $4020                                  ; $42fb: $21 $20 $40
    ld de, $8600                                  ; $42fe: $11 $00 $86
    ld c, $0c                                     ; $4301: $0e $0c
    call Call_000_0468                            ; $4303: $cd $68 $04
    xor a                                         ; $4306: $af
    ld [$c3f6], a                                 ; $4307: $ea $f6 $c3
    ld [$c3f7], a                                 ; $430a: $ea $f7 $c3
    call Call_044_41eb                            ; $430d: $cd $eb $41
    ret                                           ; $4310: $c9


    ld hl, $2143                                  ; $4311: $21 $43 $21
    ld b, e                                       ; $4314: $43
    sub $4c                                       ; $4315: $d6 $4c
    ld a, h                                       ; $4317: $7c
    ld d, [hl]                                    ; $4318: $56
    ld d, a                                       ; $4319: $57
    ld h, b                                       ; $431a: $60
    dec c                                         ; $431b: $0d
    ld l, d                                       ; $431c: $6a
    or d                                          ; $431d: $b2
    ld [hl], h                                    ; $431e: $74
    ld hl, $4d43                                  ; $431f: $21 $43 $4d
    ld c, h                                       ; $4322: $4c
    ld b, a                                       ; $4323: $47
    ld b, e                                       ; $4324: $43
    call nc, Call_044_5c43                        ; $4325: $d4 $43 $5c
    ld b, h                                       ; $4328: $44
    pop hl                                        ; $4329: $e1
    ld b, h                                       ; $432a: $44
    ld l, c                                       ; $432b: $69
    ld b, l                                       ; $432c: $45
    xor $45                                       ; $432d: $ee $45
    ld [hl], l                                    ; $432f: $75
    ld b, [hl]                                    ; $4330: $46
    inc b                                         ; $4331: $04
    ld b, a                                       ; $4332: $47
    adc c                                         ; $4333: $89
    ld b, a                                       ; $4334: $47
    db $10                                        ; $4335: $10
    ld c, b                                       ; $4336: $48
    sbc d                                         ; $4337: $9a
    ld c, b                                       ; $4338: $48
    ld [hl+], a                                   ; $4339: $22
    ld c, c                                       ; $433a: $49
    and a                                         ; $433b: $a7
    ld c, c                                       ; $433c: $49
    ld l, $4a                                     ; $433d: $2e $4a
    or a                                          ; $433f: $b7
    ld c, d                                       ; $4340: $4a
    ld b, b                                       ; $4341: $40
    ld c, e                                       ; $4342: $4b
    ret z                                         ; $4343: $c8

    ld c, e                                       ; $4344: $4b
    ld c, l                                       ; $4345: $4d
    ld c, h                                       ; $4346: $4c
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    nop                                           ; $4349: $00
    rst $38                                       ; $434a: $ff
    rst $38                                       ; $434b: $ff
    nop                                           ; $434c: $00
    nop                                           ; $434d: $00
    nop                                           ; $434e: $00
    nop                                           ; $434f: $00
    nop                                           ; $4350: $00
    rrca                                          ; $4351: $0f
    pop af                                        ; $4352: $f1
    rra                                           ; $4353: $1f
    ldh a, [rP1]                                  ; $4354: $f0 $00
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    rrca                                          ; $4359: $0f
    rra                                           ; $435a: $1f
    rst $38                                       ; $435b: $ff
    ldh a, [rP1]                                  ; $435c: $f0 $00
    nop                                           ; $435e: $00
    nop                                           ; $435f: $00
    nop                                           ; $4360: $00
    rrca                                          ; $4361: $0f
    rra                                           ; $4362: $1f
    pop af                                        ; $4363: $f1
    rst $38                                       ; $4364: $ff
    nop                                           ; $4365: $00
    nop                                           ; $4366: $00
    nop                                           ; $4367: $00
    nop                                           ; $4368: $00
    rrca                                          ; $4369: $0f
    rst $38                                       ; $436a: $ff
    rst $38                                       ; $436b: $ff
    ldh a, [rP1]                                  ; $436c: $f0 $00
    nop                                           ; $436e: $00
    nop                                           ; $436f: $00
    nop                                           ; $4370: $00
    rst $38                                       ; $4371: $ff
    rra                                           ; $4372: $1f
    rst $38                                       ; $4373: $ff
    ldh a, [rP1]                                  ; $4374: $f0 $00
    nop                                           ; $4376: $00
    nop                                           ; $4377: $00
    nop                                           ; $4378: $00
    rst $38                                       ; $4379: $ff
    rst $38                                       ; $437a: $ff
    rst $38                                       ; $437b: $ff
    ldh a, [rP1]                                  ; $437c: $f0 $00
    nop                                           ; $437e: $00
    nop                                           ; $437f: $00
    nop                                           ; $4380: $00
    rrca                                          ; $4381: $0f
    rst $38                                       ; $4382: $ff
    rst $38                                       ; $4383: $ff
    ldh a, [rP1]                                  ; $4384: $f0 $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    nop                                           ; $4388: $00
    rrca                                          ; $4389: $0f
    di                                            ; $438a: $f3
    ccf                                           ; $438b: $3f
    rst $38                                       ; $438c: $ff
    nop                                           ; $438d: $00
    nop                                           ; $438e: $00
    nop                                           ; $438f: $00
    nop                                           ; $4390: $00
    rrca                                          ; $4391: $0f
    rst $38                                       ; $4392: $ff
    ccf                                           ; $4393: $3f
    rra                                           ; $4394: $1f
    nop                                           ; $4395: $00
    nop                                           ; $4396: $00
    nop                                           ; $4397: $00
    nop                                           ; $4398: $00
    nop                                           ; $4399: $00
    rst $38                                       ; $439a: $ff
    rst $38                                       ; $439b: $ff
    ldh a, [rP1]                                  ; $439c: $f0 $00
    nop                                           ; $439e: $00
    nop                                           ; $439f: $00
    nop                                           ; $43a0: $00
    rrca                                          ; $43a1: $0f
    rra                                           ; $43a2: $1f
    rst $38                                       ; $43a3: $ff
    ldh a, [rP1]                                  ; $43a4: $f0 $00
    nop                                           ; $43a6: $00
    nop                                           ; $43a7: $00
    nop                                           ; $43a8: $00
    rrca                                          ; $43a9: $0f
    rst $38                                       ; $43aa: $ff
    pop af                                        ; $43ab: $f1
    ldh a, [rP1]                                  ; $43ac: $f0 $00
    nop                                           ; $43ae: $00
    nop                                           ; $43af: $00
    nop                                           ; $43b0: $00
    nop                                           ; $43b1: $00
    rst $38                                       ; $43b2: $ff
    rst $38                                       ; $43b3: $ff
    nop                                           ; $43b4: $00
    nop                                           ; $43b5: $00
    nop                                           ; $43b6: $00
    nop                                           ; $43b7: $00
    nop                                           ; $43b8: $00
    nop                                           ; $43b9: $00
    di                                            ; $43ba: $f3
    ccf                                           ; $43bb: $3f
    nop                                           ; $43bc: $00
    nop                                           ; $43bd: $00
    nop                                           ; $43be: $00
    nop                                           ; $43bf: $00
    nop                                           ; $43c0: $00
    nop                                           ; $43c1: $00
    rst $38                                       ; $43c2: $ff
    rst $38                                       ; $43c3: $ff
    nop                                           ; $43c4: $00
    nop                                           ; $43c5: $00
    nop                                           ; $43c6: $00
    ld c, [hl]                                    ; $43c7: $4e
    daa                                           ; $43c8: $27
    jr z, jr_044_4411                             ; $43c9: $28 $46

    ld b, a                                       ; $43cb: $47
    ld c, b                                       ; $43cc: $48
    ld e, c                                       ; $43cd: $59
    ld h, [hl]                                    ; $43ce: $66
    ld h, a                                       ; $43cf: $67
    ld l, b                                       ; $43d0: $68
    ld a, c                                       ; $43d1: $79
    rst $38                                       ; $43d2: $ff
    ld a, [bc]                                    ; $43d3: $0a
    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00
    nop                                           ; $43d6: $00
    nop                                           ; $43d7: $00
    rrca                                          ; $43d8: $0f
    ld [hl+], a                                   ; $43d9: $22
    ld [hl+], a                                   ; $43da: $22
    ld [hl+], a                                   ; $43db: $22
    nop                                           ; $43dc: $00
    nop                                           ; $43dd: $00
    nop                                           ; $43de: $00
    rrca                                          ; $43df: $0f
    rst $38                                       ; $43e0: $ff
    ld a, [c]                                     ; $43e1: $f2
    ld [hl+], a                                   ; $43e2: $22
    ld [hl+], a                                   ; $43e3: $22
    nop                                           ; $43e4: $00
    nop                                           ; $43e5: $00
    rrca                                          ; $43e6: $0f
    pop af                                        ; $43e7: $f1
    rra                                           ; $43e8: $1f
    ld [hl+], a                                   ; $43e9: $22
    ld [hl+], a                                   ; $43ea: $22
    ld [hl+], a                                   ; $43eb: $22
    nop                                           ; $43ec: $00
    nop                                           ; $43ed: $00
    rrca                                          ; $43ee: $0f
    rra                                           ; $43ef: $1f
    rst $38                                       ; $43f0: $ff
    ld [hl+], a                                   ; $43f1: $22
    ld [hl+], a                                   ; $43f2: $22
    ld [hl+], a                                   ; $43f3: $22
    nop                                           ; $43f4: $00
    nop                                           ; $43f5: $00
    rrca                                          ; $43f6: $0f
    rst $38                                       ; $43f7: $ff
    rst $38                                       ; $43f8: $ff
    ld [hl+], a                                   ; $43f9: $22
    ld [hl+], a                                   ; $43fa: $22
    ld [hl+], a                                   ; $43fb: $22
    nop                                           ; $43fc: $00
    nop                                           ; $43fd: $00
    rst $38                                       ; $43fe: $ff
    rst $38                                       ; $43ff: $ff
    ld a, [c]                                     ; $4400: $f2
    ld [hl+], a                                   ; $4401: $22
    ld [hl+], a                                   ; $4402: $22
    ld [hl+], a                                   ; $4403: $22
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    rst $38                                       ; $4406: $ff
    rst $38                                       ; $4407: $ff
    rst $38                                       ; $4408: $ff
    ld [hl+], a                                   ; $4409: $22
    ld [hl+], a                                   ; $440a: $22
    ld [hl+], a                                   ; $440b: $22
    nop                                           ; $440c: $00
    nop                                           ; $440d: $00
    rrca                                          ; $440e: $0f
    rst $38                                       ; $440f: $ff
    ccf                                           ; $4410: $3f

jr_044_4411:
    ld a, [c]                                     ; $4411: $f2
    ld [hl+], a                                   ; $4412: $22
    ld [hl+], a                                   ; $4413: $22
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    nop                                           ; $4416: $00
    rst $38                                       ; $4417: $ff
    rst $38                                       ; $4418: $ff
    ld a, [c]                                     ; $4419: $f2
    ld [hl+], a                                   ; $441a: $22
    ld [hl+], a                                   ; $441b: $22
    nop                                           ; $441c: $00
    nop                                           ; $441d: $00
    nop                                           ; $441e: $00
    rst $38                                       ; $441f: $ff
    di                                            ; $4420: $f3
    ld a, [c]                                     ; $4421: $f2
    ld [hl+], a                                   ; $4422: $22
    ld [hl+], a                                   ; $4423: $22
    nop                                           ; $4424: $00
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    rst $38                                       ; $4427: $ff
    ccf                                           ; $4428: $3f
    rst $38                                       ; $4429: $ff
    ld [hl+], a                                   ; $442a: $22
    ld [hl+], a                                   ; $442b: $22
    nop                                           ; $442c: $00
    nop                                           ; $442d: $00
    nop                                           ; $442e: $00
    rrca                                          ; $442f: $0f
    ccf                                           ; $4430: $3f
    rst $38                                       ; $4431: $ff
    ld a, [c]                                     ; $4432: $f2
    ld [hl+], a                                   ; $4433: $22
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    nop                                           ; $4436: $00
    rst $38                                       ; $4437: $ff
    pop af                                        ; $4438: $f1
    ldh a, [rIE]                                  ; $4439: $f0 $ff
    ld a, [c]                                     ; $443b: $f2
    nop                                           ; $443c: $00
    nop                                           ; $443d: $00
    nop                                           ; $443e: $00
    rst $38                                       ; $443f: $ff
    rst $38                                       ; $4440: $ff
    ldh a, [rP1]                                  ; $4441: $f0 $00
    rst $38                                       ; $4443: $ff
    nop                                           ; $4444: $00
    nop                                           ; $4445: $00
    nop                                           ; $4446: $00
    rst $38                                       ; $4447: $ff
    rst $38                                       ; $4448: $ff
    nop                                           ; $4449: $00
    nop                                           ; $444a: $00
    nop                                           ; $444b: $00
    nop                                           ; $444c: $00
    nop                                           ; $444d: $00
    nop                                           ; $444e: $00
    rrca                                          ; $444f: $0f
    ldh a, [rP1]                                  ; $4450: $f0 $00
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    ld c, b                                       ; $4454: $48
    ld b, [hl]                                    ; $4455: $46
    ld c, b                                       ; $4456: $48
    ld d, l                                       ; $4457: $55
    ld h, [hl]                                    ; $4458: $66
    ld [hl], a                                    ; $4459: $77
    rst $38                                       ; $445a: $ff
    dec b                                         ; $445b: $05
    nop                                           ; $445c: $00
    nop                                           ; $445d: $00
    nop                                           ; $445e: $00
    nop                                           ; $445f: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00
    nop                                           ; $446b: $00
    nop                                           ; $446c: $00
    nop                                           ; $446d: $00
    nop                                           ; $446e: $00
    nop                                           ; $446f: $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    nop                                           ; $4473: $00
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    nop                                           ; $4476: $00
    rst $38                                       ; $4477: $ff
    rst $38                                       ; $4478: $ff
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    nop                                           ; $447b: $00
    nop                                           ; $447c: $00
    nop                                           ; $447d: $00
    rrca                                          ; $447e: $0f
    pop af                                        ; $447f: $f1
    rra                                           ; $4480: $1f
    ldh a, [rP1]                                  ; $4481: $f0 $00
    nop                                           ; $4483: $00
    nop                                           ; $4484: $00
    nop                                           ; $4485: $00
    rst $38                                       ; $4486: $ff
    rra                                           ; $4487: $1f
    pop af                                        ; $4488: $f1
    ldh a, [rP1]                                  ; $4489: $f0 $00
    nop                                           ; $448b: $00
    nop                                           ; $448c: $00
    nop                                           ; $448d: $00
    rrca                                          ; $448e: $0f
    rst $38                                       ; $448f: $ff
    pop af                                        ; $4490: $f1
    rra                                           ; $4491: $1f
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    nop                                           ; $4494: $00
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    rst $38                                       ; $4497: $ff
    pop af                                        ; $4498: $f1
    rst $38                                       ; $4499: $ff
    nop                                           ; $449a: $00
    nop                                           ; $449b: $00
    nop                                           ; $449c: $00
    nop                                           ; $449d: $00
    rrca                                          ; $449e: $0f
    rst $38                                       ; $449f: $ff
    rst $38                                       ; $44a0: $ff
    ldh a, [rP1]                                  ; $44a1: $f0 $00
    nop                                           ; $44a3: $00
    nop                                           ; $44a4: $00
    nop                                           ; $44a5: $00
    rrca                                          ; $44a6: $0f
    rra                                           ; $44a7: $1f
    pop af                                        ; $44a8: $f1
    ldh a, [rP1]                                  ; $44a9: $f0 $00
    nop                                           ; $44ab: $00
    nop                                           ; $44ac: $00
    nop                                           ; $44ad: $00
    nop                                           ; $44ae: $00
    rst $38                                       ; $44af: $ff
    rst $38                                       ; $44b0: $ff
    ldh a, [rP1]                                  ; $44b1: $f0 $00
    nop                                           ; $44b3: $00
    nop                                           ; $44b4: $00
    nop                                           ; $44b5: $00
    nop                                           ; $44b6: $00
    rst $38                                       ; $44b7: $ff
    rst $38                                       ; $44b8: $ff
    ldh a, [rP1]                                  ; $44b9: $f0 $00
    nop                                           ; $44bb: $00
    nop                                           ; $44bc: $00
    nop                                           ; $44bd: $00
    nop                                           ; $44be: $00
    rst $38                                       ; $44bf: $ff
    rra                                           ; $44c0: $1f
    nop                                           ; $44c1: $00
    nop                                           ; $44c2: $00
    nop                                           ; $44c3: $00
    nop                                           ; $44c4: $00
    nop                                           ; $44c5: $00
    nop                                           ; $44c6: $00
    rrca                                          ; $44c7: $0f
    ldh a, [rP1]                                  ; $44c8: $f0 $00
    nop                                           ; $44ca: $00
    nop                                           ; $44cb: $00
    nop                                           ; $44cc: $00
    nop                                           ; $44cd: $00
    nop                                           ; $44ce: $00
    nop                                           ; $44cf: $00
    nop                                           ; $44d0: $00
    nop                                           ; $44d1: $00
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00
    nop                                           ; $44d4: $00
    nop                                           ; $44d5: $00
    nop                                           ; $44d6: $00
    nop                                           ; $44d7: $00
    nop                                           ; $44d8: $00
    nop                                           ; $44d9: $00
    nop                                           ; $44da: $00
    nop                                           ; $44db: $00
    jr nc, jr_044_4535                            ; $44dc: $30 $57

    ld e, b                                       ; $44de: $58
    rst $38                                       ; $44df: $ff
    ld [bc], a                                    ; $44e0: $02
    nop                                           ; $44e1: $00
    rst $38                                       ; $44e2: $ff
    nop                                           ; $44e3: $00
    nop                                           ; $44e4: $00
    nop                                           ; $44e5: $00
    nop                                           ; $44e6: $00
    nop                                           ; $44e7: $00
    nop                                           ; $44e8: $00
    rrca                                          ; $44e9: $0f
    rst $38                                       ; $44ea: $ff
    ldh a, [rP1]                                  ; $44eb: $f0 $00
    nop                                           ; $44ed: $00
    nop                                           ; $44ee: $00
    nop                                           ; $44ef: $00
    nop                                           ; $44f0: $00
    rrca                                          ; $44f1: $0f
    rst $38                                       ; $44f2: $ff
    ldh a, [rP1]                                  ; $44f3: $f0 $00
    nop                                           ; $44f5: $00
    nop                                           ; $44f6: $00
    nop                                           ; $44f7: $00
    nop                                           ; $44f8: $00
    rrca                                          ; $44f9: $0f
    di                                            ; $44fa: $f3
    rst $38                                       ; $44fb: $ff
    nop                                           ; $44fc: $00
    nop                                           ; $44fd: $00
    nop                                           ; $44fe: $00
    nop                                           ; $44ff: $00
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    rst $38                                       ; $4502: $ff
    rst $38                                       ; $4503: $ff
    rst $38                                       ; $4504: $ff
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    rst $38                                       ; $450a: $ff
    di                                            ; $450b: $f3
    rst $38                                       ; $450c: $ff
    rst $38                                       ; $450d: $ff
    nop                                           ; $450e: $00
    nop                                           ; $450f: $00
    nop                                           ; $4510: $00
    nop                                           ; $4511: $00
    rrca                                          ; $4512: $0f
    rst $38                                       ; $4513: $ff
    di                                            ; $4514: $f3
    rst $38                                       ; $4515: $ff
    ldh a, [rP1]                                  ; $4516: $f0 $00
    nop                                           ; $4518: $00
    nop                                           ; $4519: $00
    nop                                           ; $451a: $00
    rst $38                                       ; $451b: $ff
    rst $38                                       ; $451c: $ff
    inc sp                                        ; $451d: $33
    rst $38                                       ; $451e: $ff
    nop                                           ; $451f: $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    rst $38                                       ; $4524: $ff
    rst $38                                       ; $4525: $ff
    rst $38                                       ; $4526: $ff
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00
    nop                                           ; $452a: $00
    nop                                           ; $452b: $00
    rrca                                          ; $452c: $0f
    rst $38                                       ; $452d: $ff
    rst $38                                       ; $452e: $ff
    nop                                           ; $452f: $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    nop                                           ; $4534: $00

jr_044_4535:
    rst $38                                       ; $4535: $ff
    ccf                                           ; $4536: $3f
    ldh a, [rP1]                                  ; $4537: $f0 $00
    nop                                           ; $4539: $00
    nop                                           ; $453a: $00
    nop                                           ; $453b: $00
    nop                                           ; $453c: $00
    rst $38                                       ; $453d: $ff
    ccf                                           ; $453e: $3f
    rst $38                                       ; $453f: $ff
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    rrca                                          ; $4545: $0f
    rst $38                                       ; $4546: $ff
    rra                                           ; $4547: $1f
    ldh a, [rP1]                                  ; $4548: $f0 $00
    nop                                           ; $454a: $00
    nop                                           ; $454b: $00
    nop                                           ; $454c: $00
    nop                                           ; $454d: $00
    rst $38                                       ; $454e: $ff
    rst $38                                       ; $454f: $ff
    ldh a, [rP1]                                  ; $4550: $f0 $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    rst $38                                       ; $4556: $ff
    rst $38                                       ; $4557: $ff
    ldh a, [rP1]                                  ; $4558: $f0 $00
    nop                                           ; $455a: $00
    nop                                           ; $455b: $00
    nop                                           ; $455c: $00
    nop                                           ; $455d: $00
    rrca                                          ; $455e: $0f
    rst $38                                       ; $455f: $ff
    nop                                           ; $4560: $00
    ld c, [hl]                                    ; $4561: $4e
    ld [de], a                                    ; $4562: $12
    inc de                                        ; $4563: $13
    inc h                                         ; $4564: $24
    ld [hl], a                                    ; $4565: $77
    adc b                                         ; $4566: $88
    rst $38                                       ; $4567: $ff
    dec b                                         ; $4568: $05
    nop                                           ; $4569: $00
    nop                                           ; $456a: $00
    nop                                           ; $456b: $00
    nop                                           ; $456c: $00
    nop                                           ; $456d: $00
    nop                                           ; $456e: $00
    nop                                           ; $456f: $00
    nop                                           ; $4570: $00
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    nop                                           ; $4573: $00
    rst $38                                       ; $4574: $ff
    rst $38                                       ; $4575: $ff
    nop                                           ; $4576: $00
    nop                                           ; $4577: $00
    nop                                           ; $4578: $00
    nop                                           ; $4579: $00
    nop                                           ; $457a: $00
    rrca                                          ; $457b: $0f
    pop af                                        ; $457c: $f1
    rra                                           ; $457d: $1f
    ldh a, [rP1]                                  ; $457e: $f0 $00
    nop                                           ; $4580: $00
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    rrca                                          ; $4583: $0f
    rst $38                                       ; $4584: $ff
    pop af                                        ; $4585: $f1
    ldh a, [rP1]                                  ; $4586: $f0 $00
    nop                                           ; $4588: $00
    nop                                           ; $4589: $00
    nop                                           ; $458a: $00
    rrca                                          ; $458b: $0f
    rst $38                                       ; $458c: $ff
    rst $38                                       ; $458d: $ff
    nop                                           ; $458e: $00
    nop                                           ; $458f: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    rrca                                          ; $4593: $0f
    rst $38                                       ; $4594: $ff
    rst $38                                       ; $4595: $ff
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459a: $00
    rrca                                          ; $459b: $0f
    rst $38                                       ; $459c: $ff
    rst $38                                       ; $459d: $ff
    nop                                           ; $459e: $00
    nop                                           ; $459f: $00
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    nop                                           ; $45a2: $00
    pop af                                        ; $45a3: $f1
    ccf                                           ; $45a4: $3f
    rra                                           ; $45a5: $1f
    nop                                           ; $45a6: $00
    nop                                           ; $45a7: $00
    nop                                           ; $45a8: $00
    nop                                           ; $45a9: $00
    nop                                           ; $45aa: $00
    rst $38                                       ; $45ab: $ff
    rst $38                                       ; $45ac: $ff
    rst $38                                       ; $45ad: $ff
    nop                                           ; $45ae: $00
    nop                                           ; $45af: $00
    nop                                           ; $45b0: $00
    nop                                           ; $45b1: $00
    nop                                           ; $45b2: $00
    rrca                                          ; $45b3: $0f
    rst $38                                       ; $45b4: $ff
    ccf                                           ; $45b5: $3f
    ldh a, [rP1]                                  ; $45b6: $f0 $00
    nop                                           ; $45b8: $00
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    rrca                                          ; $45bb: $0f
    rra                                           ; $45bc: $1f
    rst $38                                       ; $45bd: $ff
    ldh a, [rP1]                                  ; $45be: $f0 $00
    nop                                           ; $45c0: $00
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    rrca                                          ; $45c3: $0f
    rra                                           ; $45c4: $1f
    pop af                                        ; $45c5: $f1
    ldh a, [rP1]                                  ; $45c6: $f0 $00
    nop                                           ; $45c8: $00
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    rrca                                          ; $45cb: $0f
    rra                                           ; $45cc: $1f
    pop af                                        ; $45cd: $f1
    ldh a, [rP1]                                  ; $45ce: $f0 $00
    nop                                           ; $45d0: $00
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    nop                                           ; $45d3: $00
    rst $38                                       ; $45d4: $ff
    rst $38                                       ; $45d5: $ff
    ldh a, [rP1]                                  ; $45d6: $f0 $00
    nop                                           ; $45d8: $00
    nop                                           ; $45d9: $00
    nop                                           ; $45da: $00
    nop                                           ; $45db: $00
    rst $38                                       ; $45dc: $ff
    rst $38                                       ; $45dd: $ff
    nop                                           ; $45de: $00
    nop                                           ; $45df: $00
    nop                                           ; $45e0: $00
    nop                                           ; $45e1: $00
    nop                                           ; $45e2: $00
    nop                                           ; $45e3: $00
    rst $38                                       ; $45e4: $ff
    rst $38                                       ; $45e5: $ff
    nop                                           ; $45e6: $00
    nop                                           ; $45e7: $00
    nop                                           ; $45e8: $00
    ld b, h                                       ; $45e9: $44
    ld b, a                                       ; $45ea: $47
    ld c, b                                       ; $45eb: $48
    rst $38                                       ; $45ec: $ff
    ld [bc], a                                    ; $45ed: $02
    nop                                           ; $45ee: $00
    nop                                           ; $45ef: $00
    nop                                           ; $45f0: $00
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    nop                                           ; $45f3: $00
    nop                                           ; $45f4: $00
    nop                                           ; $45f5: $00
    nop                                           ; $45f6: $00
    nop                                           ; $45f7: $00
    nop                                           ; $45f8: $00
    nop                                           ; $45f9: $00
    nop                                           ; $45fa: $00
    nop                                           ; $45fb: $00
    nop                                           ; $45fc: $00
    nop                                           ; $45fd: $00
    nop                                           ; $45fe: $00
    nop                                           ; $45ff: $00
    rst $38                                       ; $4600: $ff
    rst $38                                       ; $4601: $ff
    ldh a, [rP1]                                  ; $4602: $f0 $00
    nop                                           ; $4604: $00
    nop                                           ; $4605: $00
    nop                                           ; $4606: $00
    nop                                           ; $4607: $00
    rst $38                                       ; $4608: $ff
    rst $38                                       ; $4609: $ff
    rra                                           ; $460a: $1f
    ldh a, [rP1]                                  ; $460b: $f0 $00
    nop                                           ; $460d: $00
    nop                                           ; $460e: $00
    nop                                           ; $460f: $00
    rst $38                                       ; $4610: $ff
    rst $38                                       ; $4611: $ff
    rst $38                                       ; $4612: $ff
    ldh a, [rP1]                                  ; $4613: $f0 $00
    nop                                           ; $4615: $00
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    rst $38                                       ; $4618: $ff
    rst $38                                       ; $4619: $ff
    rst $38                                       ; $461a: $ff
    ldh a, [rP1]                                  ; $461b: $f0 $00
    nop                                           ; $461d: $00
    nop                                           ; $461e: $00
    nop                                           ; $461f: $00
    rst $38                                       ; $4620: $ff
    rst $38                                       ; $4621: $ff
    rst $38                                       ; $4622: $ff
    rst $38                                       ; $4623: $ff
    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    nop                                           ; $4626: $00
    nop                                           ; $4627: $00
    rst $38                                       ; $4628: $ff
    cpl                                           ; $4629: $2f
    ccf                                           ; $462a: $3f
    rra                                           ; $462b: $1f
    nop                                           ; $462c: $00
    nop                                           ; $462d: $00
    nop                                           ; $462e: $00
    nop                                           ; $462f: $00
    rst $38                                       ; $4630: $ff
    rst $38                                       ; $4631: $ff
    ccf                                           ; $4632: $3f
    rra                                           ; $4633: $1f
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    rrca                                          ; $4638: $0f
    rst $38                                       ; $4639: $ff
    ccf                                           ; $463a: $3f
    rra                                           ; $463b: $1f
    nop                                           ; $463c: $00
    nop                                           ; $463d: $00
    nop                                           ; $463e: $00
    nop                                           ; $463f: $00
    rrca                                          ; $4640: $0f
    rra                                           ; $4641: $1f
    ccf                                           ; $4642: $3f
    ldh a, [rP1]                                  ; $4643: $f0 $00
    nop                                           ; $4645: $00
    nop                                           ; $4646: $00
    nop                                           ; $4647: $00
    rrca                                          ; $4648: $0f
    rra                                           ; $4649: $1f
    pop af                                        ; $464a: $f1
    ldh a, [rP1]                                  ; $464b: $f0 $00
    nop                                           ; $464d: $00
    nop                                           ; $464e: $00
    nop                                           ; $464f: $00
    rrca                                          ; $4650: $0f
    di                                            ; $4651: $f3
    ccf                                           ; $4652: $3f
    ldh a, [rP1]                                  ; $4653: $f0 $00
    nop                                           ; $4655: $00
    nop                                           ; $4656: $00
    nop                                           ; $4657: $00
    rrca                                          ; $4658: $0f
    rst $38                                       ; $4659: $ff
    rst $38                                       ; $465a: $ff
    ldh a, [rP1]                                  ; $465b: $f0 $00
    nop                                           ; $465d: $00
    nop                                           ; $465e: $00
    nop                                           ; $465f: $00
    nop                                           ; $4660: $00
    rst $38                                       ; $4661: $ff
    rst $38                                       ; $4662: $ff
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    nop                                           ; $466a: $00
    nop                                           ; $466b: $00
    nop                                           ; $466c: $00
    nop                                           ; $466d: $00
    ld b, a                                       ; $466e: $47
    inc [hl]                                      ; $466f: $34
    dec [hl]                                      ; $4670: $35
    ld [hl], $37                                  ; $4671: $36 $37
    rst $38                                       ; $4673: $ff
    inc b                                         ; $4674: $04
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    rst $38                                       ; $4679: $ff
    ldh a, [rP1]                                  ; $467a: $f0 $00
    nop                                           ; $467c: $00
    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    rst $38                                       ; $4680: $ff
    rst $38                                       ; $4681: $ff
    ldh a, [rP1]                                  ; $4682: $f0 $00
    nop                                           ; $4684: $00
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
    rrca                                          ; $4687: $0f
    rst $38                                       ; $4688: $ff
    rst $38                                       ; $4689: $ff
    rst $38                                       ; $468a: $ff
    nop                                           ; $468b: $00
    nop                                           ; $468c: $00
    nop                                           ; $468d: $00
    nop                                           ; $468e: $00
    rrca                                          ; $468f: $0f
    rst $38                                       ; $4690: $ff
    rst $38                                       ; $4691: $ff
    ldh a, [rP1]                                  ; $4692: $f0 $00
    nop                                           ; $4694: $00
    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    rrca                                          ; $4697: $0f
    di                                            ; $4698: $f3
    rst $38                                       ; $4699: $ff
    ldh a, [rP1]                                  ; $469a: $f0 $00
    nop                                           ; $469c: $00
    nop                                           ; $469d: $00
    nop                                           ; $469e: $00
    rst $38                                       ; $469f: $ff
    rst $38                                       ; $46a0: $ff
    rst $38                                       ; $46a1: $ff
    nop                                           ; $46a2: $00
    nop                                           ; $46a3: $00
    nop                                           ; $46a4: $00
    nop                                           ; $46a5: $00
    nop                                           ; $46a6: $00
    rst $38                                       ; $46a7: $ff
    rst $38                                       ; $46a8: $ff
    rst $38                                       ; $46a9: $ff
    nop                                           ; $46aa: $00
    nop                                           ; $46ab: $00
    nop                                           ; $46ac: $00
    nop                                           ; $46ad: $00
    nop                                           ; $46ae: $00
    rst $38                                       ; $46af: $ff
    rst $38                                       ; $46b0: $ff
    rst $38                                       ; $46b1: $ff
    nop                                           ; $46b2: $00
    nop                                           ; $46b3: $00
    nop                                           ; $46b4: $00
    nop                                           ; $46b5: $00
    nop                                           ; $46b6: $00
    rst $38                                       ; $46b7: $ff
    rst $38                                       ; $46b8: $ff
    rst $38                                       ; $46b9: $ff
    nop                                           ; $46ba: $00
    nop                                           ; $46bb: $00
    nop                                           ; $46bc: $00
    nop                                           ; $46bd: $00
    nop                                           ; $46be: $00
    rst $38                                       ; $46bf: $ff
    ccf                                           ; $46c0: $3f
    rst $38                                       ; $46c1: $ff
    nop                                           ; $46c2: $00
    nop                                           ; $46c3: $00
    nop                                           ; $46c4: $00
    nop                                           ; $46c5: $00
    nop                                           ; $46c6: $00
    rst $38                                       ; $46c7: $ff
    inc sp                                        ; $46c8: $33
    pop af                                        ; $46c9: $f1
    ldh a, [rP1]                                  ; $46ca: $f0 $00
    nop                                           ; $46cc: $00
    nop                                           ; $46cd: $00
    nop                                           ; $46ce: $00
    rst $38                                       ; $46cf: $ff
    di                                            ; $46d0: $f3
    pop af                                        ; $46d1: $f1
    ldh a, [rP1]                                  ; $46d2: $f0 $00
    nop                                           ; $46d4: $00
    nop                                           ; $46d5: $00
    nop                                           ; $46d6: $00
    ld bc, $3fff                                  ; $46d7: $01 $ff $3f
    rst $38                                       ; $46da: $ff
    nop                                           ; $46db: $00
    nop                                           ; $46dc: $00
    nop                                           ; $46dd: $00
    nop                                           ; $46de: $00
    rrca                                          ; $46df: $0f
    pop af                                        ; $46e0: $f1
    rst $38                                       ; $46e1: $ff
    rst $38                                       ; $46e2: $ff
    nop                                           ; $46e3: $00
    nop                                           ; $46e4: $00
    nop                                           ; $46e5: $00
    nop                                           ; $46e6: $00
    nop                                           ; $46e7: $00
    rst $38                                       ; $46e8: $ff
    di                                            ; $46e9: $f3
    rst $38                                       ; $46ea: $ff
    nop                                           ; $46eb: $00
    nop                                           ; $46ec: $00
    nop                                           ; $46ed: $00
    nop                                           ; $46ee: $00
    nop                                           ; $46ef: $00
    nop                                           ; $46f0: $00
    rst $38                                       ; $46f1: $ff
    ldh a, [rP1]                                  ; $46f2: $f0 $00
    nop                                           ; $46f4: $00
    ld d, e                                       ; $46f5: $53
    jr jr_044_4711                                ; $46f6: $18 $19

    ld a, [hl+]                                   ; $46f8: $2a
    add hl, sp                                    ; $46f9: $39
    ld b, l                                       ; $46fa: $45
    ld h, l                                       ; $46fb: $65
    ld h, [hl]                                    ; $46fc: $66
    ld h, a                                       ; $46fd: $67
    ld l, b                                       ; $46fe: $68
    add l                                         ; $46ff: $85
    add a                                         ; $4700: $87
    adc b                                         ; $4701: $88
    rst $38                                       ; $4702: $ff
    inc c                                         ; $4703: $0c
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    nop                                           ; $4707: $00
    nop                                           ; $4708: $00
    nop                                           ; $4709: $00
    nop                                           ; $470a: $00
    nop                                           ; $470b: $00
    nop                                           ; $470c: $00
    nop                                           ; $470d: $00
    nop                                           ; $470e: $00
    nop                                           ; $470f: $00
    nop                                           ; $4710: $00

jr_044_4711:
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    nop                                           ; $4716: $00
    nop                                           ; $4717: $00
    nop                                           ; $4718: $00
    nop                                           ; $4719: $00
    nop                                           ; $471a: $00
    nop                                           ; $471b: $00
    nop                                           ; $471c: $00
    nop                                           ; $471d: $00
    nop                                           ; $471e: $00
    rrca                                          ; $471f: $0f
    ldh a, [rP1]                                  ; $4720: $f0 $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    rrca                                          ; $4726: $0f
    rst $38                                       ; $4727: $ff
    rst $38                                       ; $4728: $ff
    nop                                           ; $4729: $00
    nop                                           ; $472a: $00
    nop                                           ; $472b: $00
    nop                                           ; $472c: $00
    nop                                           ; $472d: $00
    rrca                                          ; $472e: $0f
    rst $38                                       ; $472f: $ff
    rst $38                                       ; $4730: $ff
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    rrca                                          ; $4736: $0f
    rst $38                                       ; $4737: $ff
    rst $38                                       ; $4738: $ff
    nop                                           ; $4739: $00
    nop                                           ; $473a: $00
    nop                                           ; $473b: $00
    nop                                           ; $473c: $00
    nop                                           ; $473d: $00
    nop                                           ; $473e: $00
    rst $38                                       ; $473f: $ff
    pop af                                        ; $4740: $f1
    ldh a, [rP1]                                  ; $4741: $f0 $00
    nop                                           ; $4743: $00
    nop                                           ; $4744: $00
    nop                                           ; $4745: $00
    nop                                           ; $4746: $00
    rst $38                                       ; $4747: $ff
    rst $38                                       ; $4748: $ff
    nop                                           ; $4749: $00
    nop                                           ; $474a: $00
    nop                                           ; $474b: $00
    nop                                           ; $474c: $00
    nop                                           ; $474d: $00
    nop                                           ; $474e: $00
    rst $38                                       ; $474f: $ff
    rst $38                                       ; $4750: $ff
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    rst $38                                       ; $4757: $ff
    rst $38                                       ; $4758: $ff
    nop                                           ; $4759: $00
    nop                                           ; $475a: $00
    nop                                           ; $475b: $00
    nop                                           ; $475c: $00
    nop                                           ; $475d: $00
    nop                                           ; $475e: $00
    rst $38                                       ; $475f: $ff
    ldh a, [rP1]                                  ; $4760: $f0 $00
    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    nop                                           ; $4764: $00
    nop                                           ; $4765: $00
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    nop                                           ; $476a: $00
    nop                                           ; $476b: $00
    nop                                           ; $476c: $00
    nop                                           ; $476d: $00
    nop                                           ; $476e: $00
    nop                                           ; $476f: $00
    nop                                           ; $4770: $00
    nop                                           ; $4771: $00
    nop                                           ; $4772: $00
    nop                                           ; $4773: $00
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    nop                                           ; $4778: $00
    nop                                           ; $4779: $00
    nop                                           ; $477a: $00
    nop                                           ; $477b: $00
    nop                                           ; $477c: $00
    nop                                           ; $477d: $00
    nop                                           ; $477e: $00
    nop                                           ; $477f: $00
    nop                                           ; $4780: $00
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    nop                                           ; $4783: $00
    inc h                                         ; $4784: $24
    ld d, a                                       ; $4785: $57
    ld e, b                                       ; $4786: $58
    rst $38                                       ; $4787: $ff
    ld [bc], a                                    ; $4788: $02
    nop                                           ; $4789: $00
    nop                                           ; $478a: $00
    nop                                           ; $478b: $00
    rrca                                          ; $478c: $0f
    rst $38                                       ; $478d: $ff
    nop                                           ; $478e: $00
    nop                                           ; $478f: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    nop                                           ; $4793: $00
    rrca                                          ; $4794: $0f
    rra                                           ; $4795: $1f
    ldh a, [rP1]                                  ; $4796: $f0 $00
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    rrca                                          ; $479b: $0f
    pop af                                        ; $479c: $f1
    rst $38                                       ; $479d: $ff
    ldh a, [rP1]                                  ; $479e: $f0 $00
    nop                                           ; $47a0: $00
    nop                                           ; $47a1: $00
    nop                                           ; $47a2: $00
    rrca                                          ; $47a3: $0f
    pop af                                        ; $47a4: $f1
    rst $38                                       ; $47a5: $ff
    ldh a, [rP1]                                  ; $47a6: $f0 $00
    nop                                           ; $47a8: $00
    nop                                           ; $47a9: $00
    nop                                           ; $47aa: $00
    nop                                           ; $47ab: $00
    rst $38                                       ; $47ac: $ff
    pop af                                        ; $47ad: $f1
    ldh a, [rP1]                                  ; $47ae: $f0 $00
    nop                                           ; $47b0: $00
    nop                                           ; $47b1: $00
    nop                                           ; $47b2: $00
    nop                                           ; $47b3: $00
    rst $38                                       ; $47b4: $ff
    ccf                                           ; $47b5: $3f
    ldh a, [rP1]                                  ; $47b6: $f0 $00
    nop                                           ; $47b8: $00
    nop                                           ; $47b9: $00
    nop                                           ; $47ba: $00
    nop                                           ; $47bb: $00
    rst $38                                       ; $47bc: $ff
    rst $38                                       ; $47bd: $ff
    rst $38                                       ; $47be: $ff
    nop                                           ; $47bf: $00
    nop                                           ; $47c0: $00
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    nop                                           ; $47c3: $00
    rrca                                          ; $47c4: $0f
    di                                            ; $47c5: $f3
    rst $38                                       ; $47c6: $ff
    nop                                           ; $47c7: $00
    nop                                           ; $47c8: $00
    nop                                           ; $47c9: $00
    nop                                           ; $47ca: $00
    rrca                                          ; $47cb: $0f
    rst $38                                       ; $47cc: $ff
    inc sp                                        ; $47cd: $33
    ldh a, [rP1]                                  ; $47ce: $f0 $00
    nop                                           ; $47d0: $00
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    rrca                                          ; $47d3: $0f
    rra                                           ; $47d4: $1f
    rst $38                                       ; $47d5: $ff
    ldh a, [rP1]                                  ; $47d6: $f0 $00
    nop                                           ; $47d8: $00
    nop                                           ; $47d9: $00
    nop                                           ; $47da: $00
    nop                                           ; $47db: $00
    rst $38                                       ; $47dc: $ff
    rst $38                                       ; $47dd: $ff
    nop                                           ; $47de: $00
    nop                                           ; $47df: $00
    nop                                           ; $47e0: $00
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    rrca                                          ; $47e3: $0f
    rst $38                                       ; $47e4: $ff
    rst $38                                       ; $47e5: $ff
    nop                                           ; $47e6: $00
    nop                                           ; $47e7: $00
    nop                                           ; $47e8: $00
    nop                                           ; $47e9: $00
    nop                                           ; $47ea: $00
    rst $38                                       ; $47eb: $ff
    pop af                                        ; $47ec: $f1
    ldh a, [rP1]                                  ; $47ed: $f0 $00
    nop                                           ; $47ef: $00
    nop                                           ; $47f0: $00
    nop                                           ; $47f1: $00
    nop                                           ; $47f2: $00
    rst $38                                       ; $47f3: $ff
    ccf                                           ; $47f4: $3f
    nop                                           ; $47f5: $00
    nop                                           ; $47f6: $00
    nop                                           ; $47f7: $00
    nop                                           ; $47f8: $00
    nop                                           ; $47f9: $00
    nop                                           ; $47fa: $00
    rrca                                          ; $47fb: $0f
    rst $38                                       ; $47fc: $ff
    nop                                           ; $47fd: $00
    nop                                           ; $47fe: $00
    nop                                           ; $47ff: $00
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    rrca                                          ; $4803: $0f
    rst $38                                       ; $4804: $ff
    nop                                           ; $4805: $00
    nop                                           ; $4806: $00
    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    ld b, c                                       ; $4809: $41
    jr z, jr_044_4835                             ; $480a: $28 $29

    ld l, b                                       ; $480c: $68
    ld [hl], a                                    ; $480d: $77
    rst $38                                       ; $480e: $ff
    inc b                                         ; $480f: $04
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    nop                                           ; $481a: $00
    rst $38                                       ; $481b: $ff
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    nop                                           ; $481e: $00
    nop                                           ; $481f: $00
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    rrca                                          ; $4822: $0f
    rst $38                                       ; $4823: $ff
    rst $38                                       ; $4824: $ff
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    nop                                           ; $4828: $00
    nop                                           ; $4829: $00
    rrca                                          ; $482a: $0f
    rst $38                                       ; $482b: $ff
    rra                                           ; $482c: $1f
    nop                                           ; $482d: $00
    nop                                           ; $482e: $00
    nop                                           ; $482f: $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    rst $38                                       ; $4833: $ff
    rst $38                                       ; $4834: $ff

jr_044_4835:
    ldh a, [rP1]                                  ; $4835: $f0 $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    nop                                           ; $483a: $00
    rst $38                                       ; $483b: $ff
    rst $38                                       ; $483c: $ff
    rst $38                                       ; $483d: $ff
    nop                                           ; $483e: $00
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    rst $38                                       ; $4843: $ff
    rst $38                                       ; $4844: $ff
    rst $38                                       ; $4845: $ff
    nop                                           ; $4846: $00
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    rrca                                          ; $484b: $0f
    di                                            ; $484c: $f3
    rst $38                                       ; $484d: $ff
    nop                                           ; $484e: $00
    nop                                           ; $484f: $00
    nop                                           ; $4850: $00

Jump_044_4851:
    nop                                           ; $4851: $00
    nop                                           ; $4852: $00
    rrca                                          ; $4853: $0f
    rst $38                                       ; $4854: $ff
    ldh a, [rP1]                                  ; $4855: $f0 $00
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    nop                                           ; $485a: $00
    rst $38                                       ; $485b: $ff
    ccf                                           ; $485c: $3f
    ldh a, [rP1]                                  ; $485d: $f0 $00
    nop                                           ; $485f: $00
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    rrca                                          ; $4862: $0f
    rst $38                                       ; $4863: $ff
    pop af                                        ; $4864: $f1
    ldh a, [rP1]                                  ; $4865: $f0 $00
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    rrca                                          ; $486a: $0f
    ld de, $001f                                  ; $486b: $11 $1f $00
    nop                                           ; $486e: $00
    nop                                           ; $486f: $00
    nop                                           ; $4870: $00
    nop                                           ; $4871: $00
    rrca                                          ; $4872: $0f
    inc sp                                        ; $4873: $33
    rst $38                                       ; $4874: $ff
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    nop                                           ; $4878: $00
    nop                                           ; $4879: $00
    rrca                                          ; $487a: $0f
    rst $38                                       ; $487b: $ff
    ldh a, [rP1]                                  ; $487c: $f0 $00
    nop                                           ; $487e: $00
    nop                                           ; $487f: $00
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    rrca                                          ; $4882: $0f
    rst $38                                       ; $4883: $ff
    nop                                           ; $4884: $00
    nop                                           ; $4885: $00
    nop                                           ; $4886: $00
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    nop                                           ; $4889: $00
    nop                                           ; $488a: $00
    nop                                           ; $488b: $00
    nop                                           ; $488c: $00
    nop                                           ; $488d: $00
    nop                                           ; $488e: $00
    nop                                           ; $488f: $00
    add hl, sp                                    ; $4890: $39
    ld h, $27                                     ; $4891: $26 $27
    ld b, [hl]                                    ; $4893: $46
    ld b, a                                       ; $4894: $47
    ld c, b                                       ; $4895: $48
    ld e, c                                       ; $4896: $59
    ld e, d                                       ; $4897: $5a
    rst $38                                       ; $4898: $ff
    rlca                                          ; $4899: $07
    nop                                           ; $489a: $00
    nop                                           ; $489b: $00
    nop                                           ; $489c: $00
    rst $38                                       ; $489d: $ff
    rst $38                                       ; $489e: $ff
    nop                                           ; $489f: $00
    nop                                           ; $48a0: $00
    nop                                           ; $48a1: $00
    nop                                           ; $48a2: $00
    nop                                           ; $48a3: $00
    rst $38                                       ; $48a4: $ff
    rst $38                                       ; $48a5: $ff
    pop af                                        ; $48a6: $f1
    ldh a, [rP1]                                  ; $48a7: $f0 $00
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    rrca                                          ; $48ab: $0f
    rst $38                                       ; $48ac: $ff
    rst $38                                       ; $48ad: $ff
    rst $38                                       ; $48ae: $ff
    ldh a, [rP1]                                  ; $48af: $f0 $00
    nop                                           ; $48b1: $00
    nop                                           ; $48b2: $00
    rrca                                          ; $48b3: $0f
    rst $38                                       ; $48b4: $ff
    rst $38                                       ; $48b5: $ff
    rra                                           ; $48b6: $1f
    nop                                           ; $48b7: $00
    nop                                           ; $48b8: $00
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    rrca                                          ; $48bb: $0f
    di                                            ; $48bc: $f3
    pop af                                        ; $48bd: $f1
    rst $38                                       ; $48be: $ff
    nop                                           ; $48bf: $00
    nop                                           ; $48c0: $00
    nop                                           ; $48c1: $00
    nop                                           ; $48c2: $00
    rrca                                          ; $48c3: $0f
    rst $38                                       ; $48c4: $ff
    pop af                                        ; $48c5: $f1
    ldh a, [rP1]                                  ; $48c6: $f0 $00
    nop                                           ; $48c8: $00
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    nop                                           ; $48cb: $00
    rst $38                                       ; $48cc: $ff
    pop af                                        ; $48cd: $f1
    ldh a, [rP1]                                  ; $48ce: $f0 $00
    nop                                           ; $48d0: $00
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    nop                                           ; $48d3: $00
    rrca                                          ; $48d4: $0f
    rst $38                                       ; $48d5: $ff
    rra                                           ; $48d6: $1f
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    nop                                           ; $48d9: $00
    nop                                           ; $48da: $00
    nop                                           ; $48db: $00
    rst $38                                       ; $48dc: $ff
    rst $38                                       ; $48dd: $ff
    ldh a, [rP1]                                  ; $48de: $f0 $00
    nop                                           ; $48e0: $00
    nop                                           ; $48e1: $00
    nop                                           ; $48e2: $00
    nop                                           ; $48e3: $00
    rst $38                                       ; $48e4: $ff
    inc sp                                        ; $48e5: $33
    rst $38                                       ; $48e6: $ff
    ldh a, [rP1]                                  ; $48e7: $f0 $00
    nop                                           ; $48e9: $00
    nop                                           ; $48ea: $00
    nop                                           ; $48eb: $00
    rst $38                                       ; $48ec: $ff
    inc sp                                        ; $48ed: $33
    pop af                                        ; $48ee: $f1
    rst $38                                       ; $48ef: $ff
    nop                                           ; $48f0: $00
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    nop                                           ; $48f3: $00
    rrca                                          ; $48f4: $0f
    rst $38                                       ; $48f5: $ff
    rst $38                                       ; $48f6: $ff
    ldh a, [rP1]                                  ; $48f7: $f0 $00
    nop                                           ; $48f9: $00
    nop                                           ; $48fa: $00
    nop                                           ; $48fb: $00
    rrca                                          ; $48fc: $0f
    pop af                                        ; $48fd: $f1
    rst $38                                       ; $48fe: $ff
    rst $38                                       ; $48ff: $ff
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    rrca                                          ; $4905: $0f
    rst $38                                       ; $4906: $ff
    rst $38                                       ; $4907: $ff
    ldh a, [rP1]                                  ; $4908: $f0 $00
    nop                                           ; $490a: $00
    nop                                           ; $490b: $00
    nop                                           ; $490c: $00
    nop                                           ; $490d: $00
    rst $38                                       ; $490e: $ff
    ccf                                           ; $490f: $3f
    ldh a, [rP1]                                  ; $4910: $f0 $00
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    nop                                           ; $4914: $00
    nop                                           ; $4915: $00
    rst $38                                       ; $4916: $ff
    rst $38                                       ; $4917: $ff
    nop                                           ; $4918: $00
    nop                                           ; $4919: $00
    ld d, e                                       ; $491a: $53
    rla                                           ; $491b: $17
    jr jr_044_4954                                ; $491c: $18 $36

    scf                                           ; $491e: $37
    halt                                          ; $491f: $76
    rst $38                                       ; $4920: $ff
    dec b                                         ; $4921: $05
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    nop                                           ; $4928: $00
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
    nop                                           ; $4933: $00
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    nop                                           ; $493a: $00
    nop                                           ; $493b: $00
    nop                                           ; $493c: $00
    rrca                                          ; $493d: $0f
    ldh a, [rP1]                                  ; $493e: $f0 $00
    nop                                           ; $4940: $00
    nop                                           ; $4941: $00
    nop                                           ; $4942: $00
    nop                                           ; $4943: $00
    nop                                           ; $4944: $00
    rst $38                                       ; $4945: $ff
    rra                                           ; $4946: $1f
    ldh a, [rP1]                                  ; $4947: $f0 $00
    nop                                           ; $4949: $00
    nop                                           ; $494a: $00
    nop                                           ; $494b: $00
    rrca                                          ; $494c: $0f
    rst $38                                       ; $494d: $ff
    pop af                                        ; $494e: $f1
    ldh a, [rP1]                                  ; $494f: $f0 $00
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00

jr_044_4954:
    rrca                                          ; $4954: $0f
    rst $38                                       ; $4955: $ff
    rst $38                                       ; $4956: $ff
    ldh a, [rP1]                                  ; $4957: $f0 $00
    nop                                           ; $4959: $00
    nop                                           ; $495a: $00
    nop                                           ; $495b: $00
    nop                                           ; $495c: $00
    rst $38                                       ; $495d: $ff
    rst $38                                       ; $495e: $ff
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
    rst $38                                       ; $496d: $ff
    rst $38                                       ; $496e: $ff
    nop                                           ; $496f: $00
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    di                                            ; $4975: $f3
    ccf                                           ; $4976: $3f
    nop                                           ; $4977: $00
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    nop                                           ; $497a: $00
    nop                                           ; $497b: $00
    nop                                           ; $497c: $00
    rst $38                                       ; $497d: $ff
    rst $38                                       ; $497e: $ff
    nop                                           ; $497f: $00
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    rrca                                          ; $4985: $0f
    ldh a, [rP1]                                  ; $4986: $f0 $00
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
    nop                                           ; $499d: $00
    nop                                           ; $499e: $00
    nop                                           ; $499f: $00
    nop                                           ; $49a0: $00
    nop                                           ; $49a1: $00
    ld hl, $5857                                  ; $49a2: $21 $57 $58
    rst $38                                       ; $49a5: $ff
    ld [bc], a                                    ; $49a6: $02
    nop                                           ; $49a7: $00
    nop                                           ; $49a8: $00
    nop                                           ; $49a9: $00
    rrca                                          ; $49aa: $0f
    rst $38                                       ; $49ab: $ff
    nop                                           ; $49ac: $00
    nop                                           ; $49ad: $00
    nop                                           ; $49ae: $00
    nop                                           ; $49af: $00
    nop                                           ; $49b0: $00
    nop                                           ; $49b1: $00
    rst $38                                       ; $49b2: $ff
    pop af                                        ; $49b3: $f1
    ldh a, [rP1]                                  ; $49b4: $f0 $00
    nop                                           ; $49b6: $00
    nop                                           ; $49b7: $00
    nop                                           ; $49b8: $00
    rrca                                          ; $49b9: $0f
    rst $38                                       ; $49ba: $ff
    rst $38                                       ; $49bb: $ff
    ldh a, [rP1]                                  ; $49bc: $f0 $00
    nop                                           ; $49be: $00
    nop                                           ; $49bf: $00
    nop                                           ; $49c0: $00
    rrca                                          ; $49c1: $0f
    rst $38                                       ; $49c2: $ff
    pop af                                        ; $49c3: $f1
    ldh a, [rP1]                                  ; $49c4: $f0 $00
    nop                                           ; $49c6: $00
    nop                                           ; $49c7: $00
    nop                                           ; $49c8: $00
    pop af                                        ; $49c9: $f1
    rst $38                                       ; $49ca: $ff
    pop af                                        ; $49cb: $f1
    ldh a, [rP1]                                  ; $49cc: $f0 $00
    nop                                           ; $49ce: $00
    nop                                           ; $49cf: $00
    nop                                           ; $49d0: $00
    pop af                                        ; $49d1: $f1
    rst $38                                       ; $49d2: $ff
    rst $38                                       ; $49d3: $ff
    ldh a, [rP1]                                  ; $49d4: $f0 $00
    nop                                           ; $49d6: $00
    nop                                           ; $49d7: $00
    nop                                           ; $49d8: $00
    rst $38                                       ; $49d9: $ff
    di                                            ; $49da: $f3
    rst $38                                       ; $49db: $ff
    ldh a, [rP1]                                  ; $49dc: $f0 $00
    nop                                           ; $49de: $00
    nop                                           ; $49df: $00
    nop                                           ; $49e0: $00
    rrca                                          ; $49e1: $0f
    di                                            ; $49e2: $f3
    rst $38                                       ; $49e3: $ff
    nop                                           ; $49e4: $00
    nop                                           ; $49e5: $00
    nop                                           ; $49e6: $00
    nop                                           ; $49e7: $00
    nop                                           ; $49e8: $00
    rrca                                          ; $49e9: $0f
    di                                            ; $49ea: $f3
    rst $38                                       ; $49eb: $ff
    nop                                           ; $49ec: $00
    nop                                           ; $49ed: $00
    nop                                           ; $49ee: $00
    nop                                           ; $49ef: $00
    nop                                           ; $49f0: $00
    rrca                                          ; $49f1: $0f
    di                                            ; $49f2: $f3
    rst $38                                       ; $49f3: $ff
    nop                                           ; $49f4: $00
    nop                                           ; $49f5: $00
    nop                                           ; $49f6: $00
    nop                                           ; $49f7: $00
    nop                                           ; $49f8: $00
    rst $38                                       ; $49f9: $ff
    rra                                           ; $49fa: $1f
    rst $38                                       ; $49fb: $ff
    nop                                           ; $49fc: $00
    nop                                           ; $49fd: $00
    nop                                           ; $49fe: $00
    nop                                           ; $49ff: $00
    nop                                           ; $4a00: $00
    rst $38                                       ; $4a01: $ff
    rst $38                                       ; $4a02: $ff
    rra                                           ; $4a03: $1f
    nop                                           ; $4a04: $00
    nop                                           ; $4a05: $00
    nop                                           ; $4a06: $00
    nop                                           ; $4a07: $00
    nop                                           ; $4a08: $00
    rrca                                          ; $4a09: $0f
    rst $38                                       ; $4a0a: $ff
    rst $38                                       ; $4a0b: $ff
    nop                                           ; $4a0c: $00
    nop                                           ; $4a0d: $00
    nop                                           ; $4a0e: $00
    nop                                           ; $4a0f: $00
    nop                                           ; $4a10: $00
    rrca                                          ; $4a11: $0f
    di                                            ; $4a12: $f3
    rst $38                                       ; $4a13: $ff
    nop                                           ; $4a14: $00
    nop                                           ; $4a15: $00
    nop                                           ; $4a16: $00
    nop                                           ; $4a17: $00
    nop                                           ; $4a18: $00
    rrca                                          ; $4a19: $0f
    rst $38                                       ; $4a1a: $ff
    rst $38                                       ; $4a1b: $ff
    nop                                           ; $4a1c: $00
    nop                                           ; $4a1d: $00
    nop                                           ; $4a1e: $00
    nop                                           ; $4a1f: $00
    nop                                           ; $4a20: $00
    nop                                           ; $4a21: $00
    rst $38                                       ; $4a22: $ff
    ldh a, [rP1]                                  ; $4a23: $f0 $00
    nop                                           ; $4a25: $00
    nop                                           ; $4a26: $00
    ld c, d                                       ; $4a27: $4a
    jr jr_044_4a51                                ; $4a28: $18 $27

    jr c, jr_044_4a73                             ; $4a2a: $38 $47

    rst $38                                       ; $4a2c: $ff
    inc b                                         ; $4a2d: $04
    nop                                           ; $4a2e: $00
    nop                                           ; $4a2f: $00
    nop                                           ; $4a30: $00
    rst $38                                       ; $4a31: $ff
    rst $38                                       ; $4a32: $ff
    ldh a, [rP1]                                  ; $4a33: $f0 $00
    nop                                           ; $4a35: $00
    nop                                           ; $4a36: $00
    nop                                           ; $4a37: $00
    nop                                           ; $4a38: $00
    rst $38                                       ; $4a39: $ff
    rst $38                                       ; $4a3a: $ff
    ldh a, [rP1]                                  ; $4a3b: $f0 $00
    nop                                           ; $4a3d: $00
    nop                                           ; $4a3e: $00
    nop                                           ; $4a3f: $00
    nop                                           ; $4a40: $00
    rst $38                                       ; $4a41: $ff
    rst $38                                       ; $4a42: $ff
    ldh a, [rP1]                                  ; $4a43: $f0 $00
    nop                                           ; $4a45: $00
    nop                                           ; $4a46: $00
    nop                                           ; $4a47: $00
    rrca                                          ; $4a48: $0f
    rst $38                                       ; $4a49: $ff
    rst $38                                       ; $4a4a: $ff
    ldh a, [rP1]                                  ; $4a4b: $f0 $00
    nop                                           ; $4a4d: $00
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    rrca                                          ; $4a50: $0f

jr_044_4a51:
    rra                                           ; $4a51: $1f
    rst $38                                       ; $4a52: $ff
    ldh a, [rP1]                                  ; $4a53: $f0 $00
    nop                                           ; $4a55: $00
    nop                                           ; $4a56: $00
    nop                                           ; $4a57: $00
    rrca                                          ; $4a58: $0f
    rst $38                                       ; $4a59: $ff
    rst $38                                       ; $4a5a: $ff
    nop                                           ; $4a5b: $00
    nop                                           ; $4a5c: $00
    nop                                           ; $4a5d: $00
    nop                                           ; $4a5e: $00
    nop                                           ; $4a5f: $00
    rst $38                                       ; $4a60: $ff
    rst $38                                       ; $4a61: $ff
    rst $38                                       ; $4a62: $ff
    nop                                           ; $4a63: $00
    nop                                           ; $4a64: $00
    nop                                           ; $4a65: $00
    nop                                           ; $4a66: $00
    nop                                           ; $4a67: $00
    rst $38                                       ; $4a68: $ff
    ccf                                           ; $4a69: $3f
    rst $38                                       ; $4a6a: $ff
    ldh a, [rP1]                                  ; $4a6b: $f0 $00
    nop                                           ; $4a6d: $00
    nop                                           ; $4a6e: $00
    nop                                           ; $4a6f: $00
    pop af                                        ; $4a70: $f1
    rst $38                                       ; $4a71: $ff
    rst $38                                       ; $4a72: $ff

jr_044_4a73:
    ldh a, [rP1]                                  ; $4a73: $f0 $00
    nop                                           ; $4a75: $00
    nop                                           ; $4a76: $00
    nop                                           ; $4a77: $00
    rrca                                          ; $4a78: $0f
    rra                                           ; $4a79: $1f
    pop af                                        ; $4a7a: $f1
    ldh a, [rP1]                                  ; $4a7b: $f0 $00
    nop                                           ; $4a7d: $00
    nop                                           ; $4a7e: $00
    nop                                           ; $4a7f: $00
    rrca                                          ; $4a80: $0f
    rra                                           ; $4a81: $1f
    pop af                                        ; $4a82: $f1
    ldh a, [rP1]                                  ; $4a83: $f0 $00
    nop                                           ; $4a85: $00
    nop                                           ; $4a86: $00
    nop                                           ; $4a87: $00
    rrca                                          ; $4a88: $0f
    rra                                           ; $4a89: $1f
    rst $38                                       ; $4a8a: $ff
    ldh a, [rP1]                                  ; $4a8b: $f0 $00
    nop                                           ; $4a8d: $00
    nop                                           ; $4a8e: $00
    nop                                           ; $4a8f: $00
    rrca                                          ; $4a90: $0f
    rra                                           ; $4a91: $1f
    ld de, $00f0                                  ; $4a92: $11 $f0 $00
    nop                                           ; $4a95: $00
    nop                                           ; $4a96: $00
    nop                                           ; $4a97: $00
    rrca                                          ; $4a98: $0f
    rst $38                                       ; $4a99: $ff
    rst $38                                       ; $4a9a: $ff
    ldh a, [rP1]                                  ; $4a9b: $f0 $00
    nop                                           ; $4a9d: $00
    nop                                           ; $4a9e: $00
    nop                                           ; $4a9f: $00
    rrca                                          ; $4aa0: $0f
    di                                            ; $4aa1: $f3
    ccf                                           ; $4aa2: $3f
    ldh a, [rP1]                                  ; $4aa3: $f0 $00
    nop                                           ; $4aa5: $00
    nop                                           ; $4aa6: $00
    nop                                           ; $4aa7: $00
    nop                                           ; $4aa8: $00
    rst $38                                       ; $4aa9: $ff
    rst $38                                       ; $4aaa: $ff
    nop                                           ; $4aab: $00
    nop                                           ; $4aac: $00
    nop                                           ; $4aad: $00
    ld c, a                                       ; $4aae: $4f
    daa                                           ; $4aaf: $27
    jr z, jr_044_4b08                             ; $4ab0: $28 $56

    ld e, b                                       ; $4ab2: $58
    ld h, a                                       ; $4ab3: $67
    ld a, b                                       ; $4ab4: $78
    rst $38                                       ; $4ab5: $ff
    ld b, $00                                     ; $4ab6: $06 $00
    nop                                           ; $4ab8: $00
    nop                                           ; $4ab9: $00
    rst $38                                       ; $4aba: $ff
    ldh a, [rP1]                                  ; $4abb: $f0 $00
    nop                                           ; $4abd: $00
    nop                                           ; $4abe: $00
    nop                                           ; $4abf: $00
    nop                                           ; $4ac0: $00
    rrca                                          ; $4ac1: $0f
    ld de, $00f0                                  ; $4ac2: $11 $f0 $00
    nop                                           ; $4ac5: $00
    nop                                           ; $4ac6: $00
    nop                                           ; $4ac7: $00
    nop                                           ; $4ac8: $00
    rrca                                          ; $4ac9: $0f
    rst $38                                       ; $4aca: $ff
    rra                                           ; $4acb: $1f
    nop                                           ; $4acc: $00
    nop                                           ; $4acd: $00
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    nop                                           ; $4ad0: $00
    rrca                                          ; $4ad1: $0f
    rst $38                                       ; $4ad2: $ff
    rra                                           ; $4ad3: $1f
    nop                                           ; $4ad4: $00
    nop                                           ; $4ad5: $00
    nop                                           ; $4ad6: $00
    nop                                           ; $4ad7: $00
    nop                                           ; $4ad8: $00
    rrca                                          ; $4ad9: $0f
    rst $38                                       ; $4ada: $ff
    rst $38                                       ; $4adb: $ff
    ldh a, [rP1]                                  ; $4adc: $f0 $00
    nop                                           ; $4ade: $00
    nop                                           ; $4adf: $00
    nop                                           ; $4ae0: $00
    rrca                                          ; $4ae1: $0f
    rra                                           ; $4ae2: $1f
    ccf                                           ; $4ae3: $3f
    ldh a, [rP1]                                  ; $4ae4: $f0 $00
    nop                                           ; $4ae6: $00
    nop                                           ; $4ae7: $00
    nop                                           ; $4ae8: $00
    rrca                                          ; $4ae9: $0f
    rst $38                                       ; $4aea: $ff
    ccf                                           ; $4aeb: $3f
    ldh a, [rP1]                                  ; $4aec: $f0 $00
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00
    rrca                                          ; $4af1: $0f
    ccf                                           ; $4af2: $3f
    pop af                                        ; $4af3: $f1
    ldh a, [rP1]                                  ; $4af4: $f0 $00
    nop                                           ; $4af6: $00
    nop                                           ; $4af7: $00
    nop                                           ; $4af8: $00
    rrca                                          ; $4af9: $0f
    inc sp                                        ; $4afa: $33
    rst $38                                       ; $4afb: $ff
    ldh a, [rP1]                                  ; $4afc: $f0 $00
    nop                                           ; $4afe: $00
    nop                                           ; $4aff: $00
    nop                                           ; $4b00: $00
    rrca                                          ; $4b01: $0f
    di                                            ; $4b02: $f3
    rst $38                                       ; $4b03: $ff
    nop                                           ; $4b04: $00
    nop                                           ; $4b05: $00
    nop                                           ; $4b06: $00
    nop                                           ; $4b07: $00

jr_044_4b08:
    nop                                           ; $4b08: $00
    rrca                                          ; $4b09: $0f
    di                                            ; $4b0a: $f3
    rst $38                                       ; $4b0b: $ff
    nop                                           ; $4b0c: $00
    nop                                           ; $4b0d: $00
    nop                                           ; $4b0e: $00
    nop                                           ; $4b0f: $00
    nop                                           ; $4b10: $00
    rrca                                          ; $4b11: $0f
    di                                            ; $4b12: $f3
    rst $38                                       ; $4b13: $ff
    nop                                           ; $4b14: $00
    nop                                           ; $4b15: $00
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    nop                                           ; $4b18: $00
    rrca                                          ; $4b19: $0f
    rst $38                                       ; $4b1a: $ff
    rra                                           ; $4b1b: $1f
    nop                                           ; $4b1c: $00
    nop                                           ; $4b1d: $00
    nop                                           ; $4b1e: $00
    nop                                           ; $4b1f: $00
    nop                                           ; $4b20: $00
    rst $38                                       ; $4b21: $ff
    rst $38                                       ; $4b22: $ff
    rst $38                                       ; $4b23: $ff
    nop                                           ; $4b24: $00
    nop                                           ; $4b25: $00
    nop                                           ; $4b26: $00
    nop                                           ; $4b27: $00
    nop                                           ; $4b28: $00
    pop af                                        ; $4b29: $f1
    di                                            ; $4b2a: $f3
    rst $38                                       ; $4b2b: $ff
    nop                                           ; $4b2c: $00
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    nop                                           ; $4b30: $00
    rrca                                          ; $4b31: $0f
    rst $38                                       ; $4b32: $ff
    rst $38                                       ; $4b33: $ff
    nop                                           ; $4b34: $00
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    ld b, e                                       ; $4b37: $43
    ld h, $35                                     ; $4b38: $26 $35
    scf                                           ; $4b3a: $37
    ld b, [hl]                                    ; $4b3b: $46
    ld [hl], a                                    ; $4b3c: $77
    ld a, b                                       ; $4b3d: $78
    rst $38                                       ; $4b3e: $ff
    ld b, $00                                     ; $4b3f: $06 $00
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    nop                                           ; $4b43: $00
    nop                                           ; $4b44: $00
    nop                                           ; $4b45: $00
    nop                                           ; $4b46: $00
    nop                                           ; $4b47: $00
    nop                                           ; $4b48: $00
    nop                                           ; $4b49: $00
    nop                                           ; $4b4a: $00
    nop                                           ; $4b4b: $00
    rst $38                                       ; $4b4c: $ff
    ldh a, [rP1]                                  ; $4b4d: $f0 $00
    nop                                           ; $4b4f: $00
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    rrca                                          ; $4b53: $0f
    pop af                                        ; $4b54: $f1
    rra                                           ; $4b55: $1f
    nop                                           ; $4b56: $00
    nop                                           ; $4b57: $00
    nop                                           ; $4b58: $00
    nop                                           ; $4b59: $00
    nop                                           ; $4b5a: $00
    pop af                                        ; $4b5b: $f1
    rst $38                                       ; $4b5c: $ff
    rst $38                                       ; $4b5d: $ff
    nop                                           ; $4b5e: $00
    nop                                           ; $4b5f: $00
    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    rrca                                          ; $4b62: $0f
    rst $38                                       ; $4b63: $ff
    rst $38                                       ; $4b64: $ff
    rst $38                                       ; $4b65: $ff
    nop                                           ; $4b66: $00
    nop                                           ; $4b67: $00
    nop                                           ; $4b68: $00
    nop                                           ; $4b69: $00
    rrca                                          ; $4b6a: $0f
    rst $38                                       ; $4b6b: $ff
    pop af                                        ; $4b6c: $f1
    rst $38                                       ; $4b6d: $ff
    nop                                           ; $4b6e: $00
    nop                                           ; $4b6f: $00
    nop                                           ; $4b70: $00
    nop                                           ; $4b71: $00
    rst $38                                       ; $4b72: $ff
    rst $38                                       ; $4b73: $ff
    rra                                           ; $4b74: $1f
    ldh a, [rP1]                                  ; $4b75: $f0 $00
    nop                                           ; $4b77: $00
    nop                                           ; $4b78: $00
    nop                                           ; $4b79: $00
    rst $38                                       ; $4b7a: $ff
    ccf                                           ; $4b7b: $3f
    ldh a, [rP1]                                  ; $4b7c: $f0 $00
    nop                                           ; $4b7e: $00
    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    rst $38                                       ; $4b82: $ff
    ccf                                           ; $4b83: $3f
    rra                                           ; $4b84: $1f
    nop                                           ; $4b85: $00
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    nop                                           ; $4b88: $00
    nop                                           ; $4b89: $00
    rst $38                                       ; $4b8a: $ff
    rst $38                                       ; $4b8b: $ff
    rst $38                                       ; $4b8c: $ff
    ldh a, [rP1]                                  ; $4b8d: $f0 $00
    nop                                           ; $4b8f: $00
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    rrca                                          ; $4b92: $0f
    rst $38                                       ; $4b93: $ff
    pop af                                        ; $4b94: $f1
    ldh a, [rP1]                                  ; $4b95: $f0 $00
    nop                                           ; $4b97: $00
    nop                                           ; $4b98: $00
    nop                                           ; $4b99: $00
    nop                                           ; $4b9a: $00
    rst $38                                       ; $4b9b: $ff
    rst $38                                       ; $4b9c: $ff
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    nop                                           ; $4b9f: $00
    nop                                           ; $4ba0: $00
    nop                                           ; $4ba1: $00
    nop                                           ; $4ba2: $00
    rst $38                                       ; $4ba3: $ff
    rst $38                                       ; $4ba4: $ff
    ldh a, [rP1]                                  ; $4ba5: $f0 $00
    nop                                           ; $4ba7: $00
    nop                                           ; $4ba8: $00
    nop                                           ; $4ba9: $00
    nop                                           ; $4baa: $00
    rst $38                                       ; $4bab: $ff
    ccf                                           ; $4bac: $3f
    rst $38                                       ; $4bad: $ff
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    nop                                           ; $4bb0: $00
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    rrca                                          ; $4bb3: $0f
    rst $38                                       ; $4bb4: $ff
    ldh a, [rP1]                                  ; $4bb5: $f0 $00
    nop                                           ; $4bb7: $00
    nop                                           ; $4bb8: $00
    nop                                           ; $4bb9: $00
    nop                                           ; $4bba: $00
    nop                                           ; $4bbb: $00
    rst $38                                       ; $4bbc: $ff
    nop                                           ; $4bbd: $00
    nop                                           ; $4bbe: $00
    nop                                           ; $4bbf: $00
    ld b, [hl]                                    ; $4bc0: $46
    jr c, jr_044_4bfc                             ; $4bc1: $38 $39

    ld a, [hl-]                                   ; $4bc3: $3a
    ld b, a                                       ; $4bc4: $47
    ld d, [hl]                                    ; $4bc5: $56
    rst $38                                       ; $4bc6: $ff
    dec b                                         ; $4bc7: $05
    nop                                           ; $4bc8: $00
    nop                                           ; $4bc9: $00
    nop                                           ; $4bca: $00
    nop                                           ; $4bcb: $00
    nop                                           ; $4bcc: $00
    nop                                           ; $4bcd: $00
    nop                                           ; $4bce: $00
    rst $38                                       ; $4bcf: $ff
    nop                                           ; $4bd0: $00
    nop                                           ; $4bd1: $00
    nop                                           ; $4bd2: $00
    nop                                           ; $4bd3: $00
    ldh a, [rIE]                                  ; $4bd4: $f0 $ff
    rst $38                                       ; $4bd6: $ff
    rst $38                                       ; $4bd7: $ff
    nop                                           ; $4bd8: $00
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    nop                                           ; $4bdb: $00
    rst $38                                       ; $4bdc: $ff
    rst $38                                       ; $4bdd: $ff
    rst $38                                       ; $4bde: $ff
    ldh a, [rP1]                                  ; $4bdf: $f0 $00
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    rrca                                          ; $4be3: $0f
    rst $38                                       ; $4be4: $ff
    rst $38                                       ; $4be5: $ff
    nop                                           ; $4be6: $00
    nop                                           ; $4be7: $00
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    rst $38                                       ; $4beb: $ff
    rst $38                                       ; $4bec: $ff
    nop                                           ; $4bed: $00
    nop                                           ; $4bee: $00
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00
    nop                                           ; $4bf1: $00
    rrca                                          ; $4bf2: $0f
    rst $38                                       ; $4bf3: $ff
    rst $38                                       ; $4bf4: $ff
    ldh a, [rP1]                                  ; $4bf5: $f0 $00
    nop                                           ; $4bf7: $00
    nop                                           ; $4bf8: $00
    nop                                           ; $4bf9: $00
    rrca                                          ; $4bfa: $0f
    rst $38                                       ; $4bfb: $ff

jr_044_4bfc:
    rst $38                                       ; $4bfc: $ff
    rst $38                                       ; $4bfd: $ff
    nop                                           ; $4bfe: $00
    nop                                           ; $4bff: $00
    nop                                           ; $4c00: $00
    nop                                           ; $4c01: $00
    nop                                           ; $4c02: $00
    rst $38                                       ; $4c03: $ff
    rst $38                                       ; $4c04: $ff
    ldh a, [rP1]                                  ; $4c05: $f0 $00
    nop                                           ; $4c07: $00
    nop                                           ; $4c08: $00
    nop                                           ; $4c09: $00
    rrca                                          ; $4c0a: $0f
    rst $38                                       ; $4c0b: $ff
    rst $38                                       ; $4c0c: $ff
    ldh a, [rP1]                                  ; $4c0d: $f0 $00
    nop                                           ; $4c0f: $00
    nop                                           ; $4c10: $00
    rst $38                                       ; $4c11: $ff
    rst $38                                       ; $4c12: $ff
    rst $38                                       ; $4c13: $ff
    rst $38                                       ; $4c14: $ff
    nop                                           ; $4c15: $00
    nop                                           ; $4c16: $00
    nop                                           ; $4c17: $00
    rst $38                                       ; $4c18: $ff
    rst $38                                       ; $4c19: $ff
    rrca                                          ; $4c1a: $0f
    rst $38                                       ; $4c1b: $ff
    rst $38                                       ; $4c1c: $ff
    ldh a, [rP1]                                  ; $4c1d: $f0 $00
    nop                                           ; $4c1f: $00
    rst $38                                       ; $4c20: $ff
    nop                                           ; $4c21: $00
    rrca                                          ; $4c22: $0f
    rst $38                                       ; $4c23: $ff
    rst $38                                       ; $4c24: $ff
    ldh a, [rP1]                                  ; $4c25: $f0 $00
    nop                                           ; $4c27: $00
    nop                                           ; $4c28: $00
    nop                                           ; $4c29: $00
    nop                                           ; $4c2a: $00
    rst $38                                       ; $4c2b: $ff
    rst $38                                       ; $4c2c: $ff
    nop                                           ; $4c2d: $00
    nop                                           ; $4c2e: $00
    nop                                           ; $4c2f: $00
    nop                                           ; $4c30: $00
    nop                                           ; $4c31: $00
    nop                                           ; $4c32: $00
    ldh a, [rP1]                                  ; $4c33: $f0 $00
    nop                                           ; $4c35: $00
    nop                                           ; $4c36: $00
    nop                                           ; $4c37: $00
    nop                                           ; $4c38: $00
    nop                                           ; $4c39: $00
    nop                                           ; $4c3a: $00
    nop                                           ; $4c3b: $00
    nop                                           ; $4c3c: $00
    nop                                           ; $4c3d: $00
    nop                                           ; $4c3e: $00
    nop                                           ; $4c3f: $00
    nop                                           ; $4c40: $00
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    nop                                           ; $4c43: $00
    nop                                           ; $4c44: $00
    nop                                           ; $4c45: $00
    nop                                           ; $4c46: $00
    nop                                           ; $4c47: $00
    ld d, b                                       ; $4c48: $50
    ld d, a                                       ; $4c49: $57
    ld e, b                                       ; $4c4a: $58
    rst $38                                       ; $4c4b: $ff
    ld [bc], a                                    ; $4c4c: $02
    nop                                           ; $4c4d: $00
    nop                                           ; $4c4e: $00
    rst $38                                       ; $4c4f: $ff
    rst $38                                       ; $4c50: $ff
    rst $38                                       ; $4c51: $ff
    nop                                           ; $4c52: $00
    nop                                           ; $4c53: $00
    nop                                           ; $4c54: $00
    nop                                           ; $4c55: $00
    nop                                           ; $4c56: $00
    pop af                                        ; $4c57: $f1
    rst $38                                       ; $4c58: $ff
    rst $38                                       ; $4c59: $ff
    ldh a, [rP1]                                  ; $4c5a: $f0 $00
    nop                                           ; $4c5c: $00
    nop                                           ; $4c5d: $00
    nop                                           ; $4c5e: $00
    pop af                                        ; $4c5f: $f1
    rst $38                                       ; $4c60: $ff
    rst $38                                       ; $4c61: $ff
    ldh a, [rP1]                                  ; $4c62: $f0 $00
    nop                                           ; $4c64: $00
    nop                                           ; $4c65: $00
    nop                                           ; $4c66: $00
    rrca                                          ; $4c67: $0f
    rst $38                                       ; $4c68: $ff
    rst $38                                       ; $4c69: $ff
    rst $38                                       ; $4c6a: $ff
    ldh a, [rP1]                                  ; $4c6b: $f0 $00
    nop                                           ; $4c6d: $00
    nop                                           ; $4c6e: $00
    rrca                                          ; $4c6f: $0f
    ld a, [c]                                     ; $4c70: $f2
    rst $38                                       ; $4c71: $ff
    pop af                                        ; $4c72: $f1
    ldh a, [rP1]                                  ; $4c73: $f0 $00
    nop                                           ; $4c75: $00
    nop                                           ; $4c76: $00
    nop                                           ; $4c77: $00
    rst $38                                       ; $4c78: $ff
    rst $38                                       ; $4c79: $ff
    pop af                                        ; $4c7a: $f1
    ldh a, [rP1]                                  ; $4c7b: $f0 $00
    nop                                           ; $4c7d: $00
    nop                                           ; $4c7e: $00
    rrca                                          ; $4c7f: $0f
    rst $38                                       ; $4c80: $ff
    cpl                                           ; $4c81: $2f
    rst $38                                       ; $4c82: $ff
    ldh a, [rP1]                                  ; $4c83: $f0 $00
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    rrca                                          ; $4c87: $0f
    ld a, [c]                                     ; $4c88: $f2
    rst $38                                       ; $4c89: $ff
    rst $38                                       ; $4c8a: $ff
    ldh a, [rP1]                                  ; $4c8b: $f0 $00
    nop                                           ; $4c8d: $00
    nop                                           ; $4c8e: $00
    rrca                                          ; $4c8f: $0f
    ld a, [c]                                     ; $4c90: $f2
    rst $38                                       ; $4c91: $ff
    pop af                                        ; $4c92: $f1
    rst $38                                       ; $4c93: $ff
    nop                                           ; $4c94: $00
    nop                                           ; $4c95: $00
    nop                                           ; $4c96: $00
    nop                                           ; $4c97: $00
    rst $38                                       ; $4c98: $ff
    rst $38                                       ; $4c99: $ff
    rst $38                                       ; $4c9a: $ff
    ldh a, [rP1]                                  ; $4c9b: $f0 $00
    nop                                           ; $4c9d: $00
    nop                                           ; $4c9e: $00
    nop                                           ; $4c9f: $00
    pop af                                        ; $4ca0: $f1
    di                                            ; $4ca1: $f3
    ccf                                           ; $4ca2: $3f
    ldh a, [rP1]                                  ; $4ca3: $f0 $00
    nop                                           ; $4ca5: $00
    nop                                           ; $4ca6: $00
    rrca                                          ; $4ca7: $0f
    rst $38                                       ; $4ca8: $ff
    ccf                                           ; $4ca9: $3f
    rst $38                                       ; $4caa: $ff
    ldh a, [rP1]                                  ; $4cab: $f0 $00
    nop                                           ; $4cad: $00
    nop                                           ; $4cae: $00
    pop af                                        ; $4caf: $f1
    rst $38                                       ; $4cb0: $ff
    rst $38                                       ; $4cb1: $ff
    rra                                           ; $4cb2: $1f
    nop                                           ; $4cb3: $00
    nop                                           ; $4cb4: $00
    nop                                           ; $4cb5: $00
    nop                                           ; $4cb6: $00
    rst $38                                       ; $4cb7: $ff
    rst $38                                       ; $4cb8: $ff
    rra                                           ; $4cb9: $1f
    ldh a, [rP1]                                  ; $4cba: $f0 $00
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    rst $38                                       ; $4cbf: $ff
    rst $38                                       ; $4cc0: $ff
    rst $38                                       ; $4cc1: $ff
    nop                                           ; $4cc2: $00
    nop                                           ; $4cc3: $00
    nop                                           ; $4cc4: $00
    nop                                           ; $4cc5: $00
    nop                                           ; $4cc6: $00
    rst $38                                       ; $4cc7: $ff
    rst $38                                       ; $4cc8: $ff
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    nop                                           ; $4ccc: $00
    ld h, e                                       ; $4ccd: $63
    ld d, $17                                     ; $4cce: $16 $17
    jr jr_044_4cfb                                ; $4cd0: $18 $29

    ld l, d                                       ; $4cd2: $6a
    ld l, e                                       ; $4cd3: $6b
    rst $38                                       ; $4cd4: $ff
    ld b, $f4                                     ; $4cd5: $06 $f4
    ld d, l                                       ; $4cd7: $55
    db $fc                                        ; $4cd8: $fc
    ld c, h                                       ; $4cd9: $4c
    add d                                         ; $4cda: $82
    ld c, l                                       ; $4cdb: $4d
    ld a, [bc]                                    ; $4cdc: $0a
    ld c, [hl]                                    ; $4cdd: $4e
    sub b                                         ; $4cde: $90
    ld c, [hl]                                    ; $4cdf: $4e
    add hl, de                                    ; $4ce0: $19
    ld c, a                                       ; $4ce1: $4f
    sbc [hl]                                      ; $4ce2: $9e
    ld c, a                                       ; $4ce3: $4f
    add hl, hl                                    ; $4ce4: $29
    ld d, b                                       ; $4ce5: $50
    or e                                          ; $4ce6: $b3
    ld d, b                                       ; $4ce7: $50
    ld a, [hl-]                                   ; $4ce8: $3a
    ld d, c                                       ; $4ce9: $51
    jp nz, Jump_044_4851                          ; $4cea: $c2 $51 $48

    ld d, d                                       ; $4ced: $52
    call Call_044_5252                            ; $4cee: $cd $52 $52
    ld d, e                                       ; $4cf1: $53
    jp c, Jump_044_5f53                           ; $4cf2: $da $53 $5f

    ld d, h                                       ; $4cf5: $54
    and $54                                       ; $4cf6: $e6 $54
    ld l, h                                       ; $4cf8: $6c
    ld d, l                                       ; $4cf9: $55
    db $f4                                        ; $4cfa: $f4

jr_044_4cfb:
    ld d, l                                       ; $4cfb: $55
    nop                                           ; $4cfc: $00
    nop                                           ; $4cfd: $00
    nop                                           ; $4cfe: $00
    nop                                           ; $4cff: $00
    ldh a, [rP1]                                  ; $4d00: $f0 $00
    nop                                           ; $4d02: $00
    nop                                           ; $4d03: $00
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    rrca                                          ; $4d07: $0f
    rst $38                                       ; $4d08: $ff
    nop                                           ; $4d09: $00
    nop                                           ; $4d0a: $00
    nop                                           ; $4d0b: $00
    nop                                           ; $4d0c: $00
    nop                                           ; $4d0d: $00
    rrca                                          ; $4d0e: $0f
    rst $38                                       ; $4d0f: $ff
    rst $38                                       ; $4d10: $ff
    ldh a, [rP1]                                  ; $4d11: $f0 $00
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    rst $38                                       ; $4d16: $ff
    rst $38                                       ; $4d17: $ff
    rst $38                                       ; $4d18: $ff
    nop                                           ; $4d19: $00
    nop                                           ; $4d1a: $00
    nop                                           ; $4d1b: $00
    nop                                           ; $4d1c: $00
    nop                                           ; $4d1d: $00
    rst $38                                       ; $4d1e: $ff
    rst $38                                       ; $4d1f: $ff
    rst $38                                       ; $4d20: $ff
    ldh a, [rP1]                                  ; $4d21: $f0 $00
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    nop                                           ; $4d25: $00
    rrca                                          ; $4d26: $0f
    rst $38                                       ; $4d27: $ff
    rst $38                                       ; $4d28: $ff
    ldh a, [rP1]                                  ; $4d29: $f0 $00
    nop                                           ; $4d2b: $00
    nop                                           ; $4d2c: $00
    nop                                           ; $4d2d: $00
    rrca                                          ; $4d2e: $0f
    rst $38                                       ; $4d2f: $ff
    di                                            ; $4d30: $f3
    ldh a, [rP1]                                  ; $4d31: $f0 $00
    nop                                           ; $4d33: $00
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    rrca                                          ; $4d36: $0f
    rst $38                                       ; $4d37: $ff
    rst $38                                       ; $4d38: $ff
    ldh a, [rP1]                                  ; $4d39: $f0 $00
    nop                                           ; $4d3b: $00
    nop                                           ; $4d3c: $00
    nop                                           ; $4d3d: $00
    rrca                                          ; $4d3e: $0f
    di                                            ; $4d3f: $f3
    rst $38                                       ; $4d40: $ff
    rst $38                                       ; $4d41: $ff
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    rrca                                          ; $4d46: $0f
    di                                            ; $4d47: $f3
    rst $38                                       ; $4d48: $ff
    rst $38                                       ; $4d49: $ff
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    nop                                           ; $4d4c: $00
    nop                                           ; $4d4d: $00
    rrca                                          ; $4d4e: $0f
    di                                            ; $4d4f: $f3
    rst $38                                       ; $4d50: $ff
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    rst $38                                       ; $4d57: $ff
    rst $38                                       ; $4d58: $ff
    nop                                           ; $4d59: $00
    nop                                           ; $4d5a: $00
    nop                                           ; $4d5b: $00
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    rst $38                                       ; $4d5f: $ff
    rra                                           ; $4d60: $1f
    nop                                           ; $4d61: $00
    nop                                           ; $4d62: $00
    nop                                           ; $4d63: $00
    nop                                           ; $4d64: $00
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    rst $38                                       ; $4d67: $ff
    rst $38                                       ; $4d68: $ff
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    nop                                           ; $4d6b: $00
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    nop                                           ; $4d6e: $00
    rst $38                                       ; $4d6f: $ff
    rst $38                                       ; $4d70: $ff
    nop                                           ; $4d71: $00
    nop                                           ; $4d72: $00
    nop                                           ; $4d73: $00
    nop                                           ; $4d74: $00
    nop                                           ; $4d75: $00
    nop                                           ; $4d76: $00
    rst $38                                       ; $4d77: $ff
    rst $38                                       ; $4d78: $ff
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    nop                                           ; $4d7b: $00
    ld c, e                                       ; $4d7c: $4b
    daa                                           ; $4d7d: $27
    jr z, jr_044_4da9                             ; $4d7e: $28 $29

    rst $38                                       ; $4d80: $ff
    inc bc                                        ; $4d81: $03
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
    rst $38                                       ; $4d8f: $ff
    ldh a, [rP1]                                  ; $4d90: $f0 $00
    nop                                           ; $4d92: $00
    nop                                           ; $4d93: $00
    nop                                           ; $4d94: $00
    nop                                           ; $4d95: $00
    rrca                                          ; $4d96: $0f
    pop af                                        ; $4d97: $f1
    rst $38                                       ; $4d98: $ff
    nop                                           ; $4d99: $00
    nop                                           ; $4d9a: $00
    nop                                           ; $4d9b: $00
    nop                                           ; $4d9c: $00
    nop                                           ; $4d9d: $00
    rrca                                          ; $4d9e: $0f
    rst $38                                       ; $4d9f: $ff
    rst $38                                       ; $4da0: $ff
    nop                                           ; $4da1: $00
    nop                                           ; $4da2: $00
    nop                                           ; $4da3: $00
    nop                                           ; $4da4: $00
    nop                                           ; $4da5: $00
    rrca                                          ; $4da6: $0f
    rst $38                                       ; $4da7: $ff
    pop af                                        ; $4da8: $f1

jr_044_4da9:
    ldh a, [rP1]                                  ; $4da9: $f0 $00
    nop                                           ; $4dab: $00
    nop                                           ; $4dac: $00
    rrca                                          ; $4dad: $0f
    rst $38                                       ; $4dae: $ff
    pop af                                        ; $4daf: $f1
    rst $38                                       ; $4db0: $ff
    ldh a, [rP1]                                  ; $4db1: $f0 $00
    nop                                           ; $4db3: $00
    rrca                                          ; $4db4: $0f
    rst $38                                       ; $4db5: $ff
    rra                                           ; $4db6: $1f
    rst $38                                       ; $4db7: $ff
    nop                                           ; $4db8: $00
    nop                                           ; $4db9: $00
    nop                                           ; $4dba: $00
    nop                                           ; $4dbb: $00
    rst $38                                       ; $4dbc: $ff
    rra                                           ; $4dbd: $1f
    rst $38                                       ; $4dbe: $ff
    rst $38                                       ; $4dbf: $ff
    nop                                           ; $4dc0: $00
    nop                                           ; $4dc1: $00
    nop                                           ; $4dc2: $00
    nop                                           ; $4dc3: $00
    pop af                                        ; $4dc4: $f1
    di                                            ; $4dc5: $f3
    rst $38                                       ; $4dc6: $ff
    rra                                           ; $4dc7: $1f
    nop                                           ; $4dc8: $00
    nop                                           ; $4dc9: $00
    nop                                           ; $4dca: $00
    rrca                                          ; $4dcb: $0f
    rst $38                                       ; $4dcc: $ff
    ccf                                           ; $4dcd: $3f
    rra                                           ; $4dce: $1f
    ldh a, [rP1]                                  ; $4dcf: $f0 $00
    nop                                           ; $4dd1: $00
    nop                                           ; $4dd2: $00
    rst $38                                       ; $4dd3: $ff
    rst $38                                       ; $4dd4: $ff
    rst $38                                       ; $4dd5: $ff
    ldh a, [rP1]                                  ; $4dd6: $f0 $00
    nop                                           ; $4dd8: $00
    nop                                           ; $4dd9: $00
    nop                                           ; $4dda: $00
    rst $38                                       ; $4ddb: $ff
    rst $38                                       ; $4ddc: $ff
    rst $38                                       ; $4ddd: $ff
    nop                                           ; $4dde: $00
    nop                                           ; $4ddf: $00
    nop                                           ; $4de0: $00
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    rst $38                                       ; $4de3: $ff
    rst $38                                       ; $4de4: $ff
    ldh a, [rP1]                                  ; $4de5: $f0 $00
    nop                                           ; $4de7: $00
    nop                                           ; $4de8: $00
    nop                                           ; $4de9: $00
    nop                                           ; $4dea: $00
    rst $38                                       ; $4deb: $ff
    rst $38                                       ; $4dec: $ff
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
    ld b, [hl]                                    ; $4e02: $46
    dec sp                                        ; $4e03: $3b
    inc a                                         ; $4e04: $3c
    ld e, d                                       ; $4e05: $5a
    ld a, c                                       ; $4e06: $79
    ld a, d                                       ; $4e07: $7a
    rst $38                                       ; $4e08: $ff
    dec b                                         ; $4e09: $05
    nop                                           ; $4e0a: $00
    nop                                           ; $4e0b: $00
    rst $38                                       ; $4e0c: $ff
    nop                                           ; $4e0d: $00
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    nop                                           ; $4e10: $00
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    rrca                                          ; $4e13: $0f
    pop af                                        ; $4e14: $f1
    ldh a, [rP1]                                  ; $4e15: $f0 $00
    nop                                           ; $4e17: $00
    nop                                           ; $4e18: $00
    nop                                           ; $4e19: $00
    nop                                           ; $4e1a: $00
    rst $38                                       ; $4e1b: $ff
    rst $38                                       ; $4e1c: $ff
    rst $38                                       ; $4e1d: $ff
    nop                                           ; $4e1e: $00
    nop                                           ; $4e1f: $00
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    nop                                           ; $4e22: $00
    rst $38                                       ; $4e23: $ff
    rst $38                                       ; $4e24: $ff
    ldh a, [rP1]                                  ; $4e25: $f0 $00
    nop                                           ; $4e27: $00
    nop                                           ; $4e28: $00
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    rst $38                                       ; $4e2b: $ff
    ccf                                           ; $4e2c: $3f
    ldh a, [rP1]                                  ; $4e2d: $f0 $00
    nop                                           ; $4e2f: $00
    nop                                           ; $4e30: $00
    nop                                           ; $4e31: $00
    nop                                           ; $4e32: $00
    rst $38                                       ; $4e33: $ff
    di                                            ; $4e34: $f3
    ldh a, [rP1]                                  ; $4e35: $f0 $00
    nop                                           ; $4e37: $00
    nop                                           ; $4e38: $00
    nop                                           ; $4e39: $00
    nop                                           ; $4e3a: $00
    rrca                                          ; $4e3b: $0f
    di                                            ; $4e3c: $f3
    ldh a, [rP1]                                  ; $4e3d: $f0 $00
    nop                                           ; $4e3f: $00
    nop                                           ; $4e40: $00
    nop                                           ; $4e41: $00
    nop                                           ; $4e42: $00
    rrca                                          ; $4e43: $0f
    rra                                           ; $4e44: $1f
    rst $38                                       ; $4e45: $ff
    nop                                           ; $4e46: $00
    nop                                           ; $4e47: $00
    nop                                           ; $4e48: $00
    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    rrca                                          ; $4e4b: $0f
    rst $38                                       ; $4e4c: $ff
    ccf                                           ; $4e4d: $3f
    ldh a, [rP1]                                  ; $4e4e: $f0 $00
    nop                                           ; $4e50: $00
    nop                                           ; $4e51: $00
    nop                                           ; $4e52: $00
    nop                                           ; $4e53: $00
    rst $38                                       ; $4e54: $ff
    inc sp                                        ; $4e55: $33
    rst $38                                       ; $4e56: $ff
    nop                                           ; $4e57: $00
    nop                                           ; $4e58: $00
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    nop                                           ; $4e5b: $00
    pop af                                        ; $4e5c: $f1
    di                                            ; $4e5d: $f3
    ccf                                           ; $4e5e: $3f
    ldh a, [rP1]                                  ; $4e5f: $f0 $00
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    nop                                           ; $4e63: $00
    pop af                                        ; $4e64: $f1
    rra                                           ; $4e65: $1f
    rst $38                                       ; $4e66: $ff
    rst $38                                       ; $4e67: $ff
    rst $38                                       ; $4e68: $ff
    nop                                           ; $4e69: $00
    nop                                           ; $4e6a: $00
    nop                                           ; $4e6b: $00
    rst $38                                       ; $4e6c: $ff
    rst $38                                       ; $4e6d: $ff
    rra                                           ; $4e6e: $1f
    rst $38                                       ; $4e6f: $ff
    rra                                           ; $4e70: $1f
    ldh a, [rP1]                                  ; $4e71: $f0 $00
    nop                                           ; $4e73: $00
    nop                                           ; $4e74: $00
    rrca                                          ; $4e75: $0f
    rst $38                                       ; $4e76: $ff
    rst $38                                       ; $4e77: $ff
    rst $38                                       ; $4e78: $ff
    ldh a, [rP1]                                  ; $4e79: $f0 $00
    nop                                           ; $4e7b: $00
    nop                                           ; $4e7c: $00
    nop                                           ; $4e7d: $00
    rrca                                          ; $4e7e: $0f
    rst $38                                       ; $4e7f: $ff
    rst $38                                       ; $4e80: $ff
    ldh a, [rP1]                                  ; $4e81: $f0 $00
    nop                                           ; $4e83: $00
    nop                                           ; $4e84: $00
    nop                                           ; $4e85: $00
    nop                                           ; $4e86: $00
    rrca                                          ; $4e87: $0f
    rst $38                                       ; $4e88: $ff
    ldh a, [rVBK]                                 ; $4e89: $f0 $4f
    inc h                                         ; $4e8b: $24
    dec h                                         ; $4e8c: $25
    ld h, $ff                                     ; $4e8d: $26 $ff
    inc bc                                        ; $4e8f: $03
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
    rst $38                                       ; $4e9a: $ff
    rst $38                                       ; $4e9b: $ff
    ldh a, [rP1]                                  ; $4e9c: $f0 $00
    nop                                           ; $4e9e: $00
    nop                                           ; $4e9f: $00
    nop                                           ; $4ea0: $00
    nop                                           ; $4ea1: $00
    pop af                                        ; $4ea2: $f1
    rst $38                                       ; $4ea3: $ff
    rst $38                                       ; $4ea4: $ff
    nop                                           ; $4ea5: $00
    nop                                           ; $4ea6: $00
    nop                                           ; $4ea7: $00
    nop                                           ; $4ea8: $00
    nop                                           ; $4ea9: $00
    pop af                                        ; $4eaa: $f1
    rst $38                                       ; $4eab: $ff
    ld de, $00f0                                  ; $4eac: $11 $f0 $00
    nop                                           ; $4eaf: $00
    nop                                           ; $4eb0: $00
    nop                                           ; $4eb1: $00
    pop af                                        ; $4eb2: $f1
    rst $38                                       ; $4eb3: $ff
    pop af                                        ; $4eb4: $f1
    ldh a, [rP1]                                  ; $4eb5: $f0 $00
    nop                                           ; $4eb7: $00
    nop                                           ; $4eb8: $00
    nop                                           ; $4eb9: $00
    rst $38                                       ; $4eba: $ff
    rst $38                                       ; $4ebb: $ff
    rst $38                                       ; $4ebc: $ff
    ldh a, [rP1]                                  ; $4ebd: $f0 $00
    nop                                           ; $4ebf: $00
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    rst $38                                       ; $4ec3: $ff
    ccf                                           ; $4ec4: $3f
    ldh a, [rP1]                                  ; $4ec5: $f0 $00
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    rrca                                          ; $4eca: $0f
    rst $38                                       ; $4ecb: $ff
    ccf                                           ; $4ecc: $3f
    rst $38                                       ; $4ecd: $ff
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    rrca                                          ; $4ed2: $0f
    rst $38                                       ; $4ed3: $ff
    ccf                                           ; $4ed4: $3f
    rst $38                                       ; $4ed5: $ff
    nop                                           ; $4ed6: $00
    nop                                           ; $4ed7: $00
    nop                                           ; $4ed8: $00
    nop                                           ; $4ed9: $00
    nop                                           ; $4eda: $00
    rst $38                                       ; $4edb: $ff
    rst $38                                       ; $4edc: $ff
    ldh a, [rP1]                                  ; $4edd: $f0 $00
    nop                                           ; $4edf: $00
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    rrca                                          ; $4ee2: $0f
    rra                                           ; $4ee3: $1f
    rst $38                                       ; $4ee4: $ff
    ldh a, [rP1]                                  ; $4ee5: $f0 $00
    nop                                           ; $4ee7: $00
    nop                                           ; $4ee8: $00
    nop                                           ; $4ee9: $00
    rrca                                          ; $4eea: $0f
    rst $38                                       ; $4eeb: $ff
    rst $38                                       ; $4eec: $ff
    ldh a, [rP1]                                  ; $4eed: $f0 $00
    nop                                           ; $4eef: $00
    nop                                           ; $4ef0: $00
    nop                                           ; $4ef1: $00
    rst $38                                       ; $4ef2: $ff
    rst $38                                       ; $4ef3: $ff
    rra                                           ; $4ef4: $1f
    nop                                           ; $4ef5: $00
    nop                                           ; $4ef6: $00
    nop                                           ; $4ef7: $00
    nop                                           ; $4ef8: $00
    nop                                           ; $4ef9: $00
    rst $38                                       ; $4efa: $ff
    ccf                                           ; $4efb: $3f
    rst $38                                       ; $4efc: $ff
    nop                                           ; $4efd: $00
    nop                                           ; $4efe: $00
    nop                                           ; $4eff: $00
    nop                                           ; $4f00: $00
    nop                                           ; $4f01: $00
    rrca                                          ; $4f02: $0f
    rst $38                                       ; $4f03: $ff
    ldh a, [rP1]                                  ; $4f04: $f0 $00
    nop                                           ; $4f06: $00
    nop                                           ; $4f07: $00
    nop                                           ; $4f08: $00
    nop                                           ; $4f09: $00
    rrca                                          ; $4f0a: $0f
    rst $38                                       ; $4f0b: $ff
    nop                                           ; $4f0c: $00
    nop                                           ; $4f0d: $00
    nop                                           ; $4f0e: $00
    nop                                           ; $4f0f: $00
    ld c, e                                       ; $4f10: $4b
    ld [hl], $37                                  ; $4f11: $36 $37
    ld d, [hl]                                    ; $4f13: $56
    ld d, a                                       ; $4f14: $57
    ld l, c                                       ; $4f15: $69
    ld [hl], a                                    ; $4f16: $77
    rst $38                                       ; $4f17: $ff
    ld b, $00                                     ; $4f18: $06 $00
    nop                                           ; $4f1a: $00
    nop                                           ; $4f1b: $00
    nop                                           ; $4f1c: $00
    nop                                           ; $4f1d: $00
    nop                                           ; $4f1e: $00
    nop                                           ; $4f1f: $00
    nop                                           ; $4f20: $00
    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    nop                                           ; $4f23: $00
    nop                                           ; $4f24: $00
    nop                                           ; $4f25: $00
    nop                                           ; $4f26: $00
    nop                                           ; $4f27: $00
    nop                                           ; $4f28: $00
    nop                                           ; $4f29: $00
    nop                                           ; $4f2a: $00
    nop                                           ; $4f2b: $00
    nop                                           ; $4f2c: $00
    nop                                           ; $4f2d: $00
    nop                                           ; $4f2e: $00
    nop                                           ; $4f2f: $00
    nop                                           ; $4f30: $00
    nop                                           ; $4f31: $00
    nop                                           ; $4f32: $00
    nop                                           ; $4f33: $00
    nop                                           ; $4f34: $00
    rst $38                                       ; $4f35: $ff
    ldh a, [rP1]                                  ; $4f36: $f0 $00
    nop                                           ; $4f38: $00
    nop                                           ; $4f39: $00
    nop                                           ; $4f3a: $00
    nop                                           ; $4f3b: $00
    rrca                                          ; $4f3c: $0f
    pop af                                        ; $4f3d: $f1
    rra                                           ; $4f3e: $1f
    nop                                           ; $4f3f: $00
    nop                                           ; $4f40: $00
    nop                                           ; $4f41: $00
    nop                                           ; $4f42: $00
    nop                                           ; $4f43: $00
    rrca                                          ; $4f44: $0f
    rst $38                                       ; $4f45: $ff
    rst $38                                       ; $4f46: $ff
    nop                                           ; $4f47: $00
    nop                                           ; $4f48: $00
    nop                                           ; $4f49: $00
    nop                                           ; $4f4a: $00
    rrca                                          ; $4f4b: $0f
    rst $38                                       ; $4f4c: $ff
    rst $38                                       ; $4f4d: $ff
    rst $38                                       ; $4f4e: $ff
    nop                                           ; $4f4f: $00
    nop                                           ; $4f50: $00
    nop                                           ; $4f51: $00
    nop                                           ; $4f52: $00
    rst $38                                       ; $4f53: $ff
    rra                                           ; $4f54: $1f
    rst $38                                       ; $4f55: $ff
    rst $38                                       ; $4f56: $ff
    nop                                           ; $4f57: $00
    nop                                           ; $4f58: $00
    nop                                           ; $4f59: $00
    nop                                           ; $4f5a: $00
    rst $38                                       ; $4f5b: $ff
    rst $38                                       ; $4f5c: $ff
    ld de, $001f                                  ; $4f5d: $11 $1f $00
    nop                                           ; $4f60: $00
    nop                                           ; $4f61: $00
    nop                                           ; $4f62: $00
    rst $38                                       ; $4f63: $ff
    rst $38                                       ; $4f64: $ff
    rst $38                                       ; $4f65: $ff
    ldh a, [rP1]                                  ; $4f66: $f0 $00
    nop                                           ; $4f68: $00
    nop                                           ; $4f69: $00
    nop                                           ; $4f6a: $00
    rst $38                                       ; $4f6b: $ff
    rst $38                                       ; $4f6c: $ff
    ldh a, [rP1]                                  ; $4f6d: $f0 $00
    nop                                           ; $4f6f: $00
    nop                                           ; $4f70: $00
    nop                                           ; $4f71: $00
    nop                                           ; $4f72: $00
    rst $38                                       ; $4f73: $ff
    rra                                           ; $4f74: $1f
    ldh a, [rP1]                                  ; $4f75: $f0 $00
    nop                                           ; $4f77: $00
    nop                                           ; $4f78: $00
    nop                                           ; $4f79: $00
    nop                                           ; $4f7a: $00
    rrca                                          ; $4f7b: $0f
    rst $38                                       ; $4f7c: $ff
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
    nop                                           ; $4f96: $00
    nop                                           ; $4f97: $00
    nop                                           ; $4f98: $00
    ld sp, $6968                                  ; $4f99: $31 $68 $69
    rst $38                                       ; $4f9c: $ff
    ld [bc], a                                    ; $4f9d: $02
    nop                                           ; $4f9e: $00
    nop                                           ; $4f9f: $00
    nop                                           ; $4fa0: $00
    rst $38                                       ; $4fa1: $ff
    ldh a, [rP1]                                  ; $4fa2: $f0 $00
    nop                                           ; $4fa4: $00
    nop                                           ; $4fa5: $00
    nop                                           ; $4fa6: $00
    nop                                           ; $4fa7: $00
    rrca                                          ; $4fa8: $0f
    pop af                                        ; $4fa9: $f1
    rst $38                                       ; $4faa: $ff
    nop                                           ; $4fab: $00
    nop                                           ; $4fac: $00
    nop                                           ; $4fad: $00
    nop                                           ; $4fae: $00
    nop                                           ; $4faf: $00
    rrca                                          ; $4fb0: $0f
    rst $38                                       ; $4fb1: $ff
    rra                                           ; $4fb2: $1f
    ldh a, [rP1]                                  ; $4fb3: $f0 $00
    nop                                           ; $4fb5: $00
    nop                                           ; $4fb6: $00
    nop                                           ; $4fb7: $00
    rrca                                          ; $4fb8: $0f
    rst $38                                       ; $4fb9: $ff
    pop af                                        ; $4fba: $f1
    ldh a, [rP1]                                  ; $4fbb: $f0 $00
    nop                                           ; $4fbd: $00
    nop                                           ; $4fbe: $00
    nop                                           ; $4fbf: $00
    rrca                                          ; $4fc0: $0f
    di                                            ; $4fc1: $f3
    rst $38                                       ; $4fc2: $ff
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    rrca                                          ; $4fc8: $0f
    rst $38                                       ; $4fc9: $ff
    rst $38                                       ; $4fca: $ff
    nop                                           ; $4fcb: $00
    nop                                           ; $4fcc: $00
    nop                                           ; $4fcd: $00
    nop                                           ; $4fce: $00
    nop                                           ; $4fcf: $00
    rrca                                          ; $4fd0: $0f
    di                                            ; $4fd1: $f3
    rst $38                                       ; $4fd2: $ff
    ldh a, [rP1]                                  ; $4fd3: $f0 $00
    nop                                           ; $4fd5: $00
    nop                                           ; $4fd6: $00
    nop                                           ; $4fd7: $00
    rrca                                          ; $4fd8: $0f
    di                                            ; $4fd9: $f3
    rst $38                                       ; $4fda: $ff
    ldh a, [rP1]                                  ; $4fdb: $f0 $00
    nop                                           ; $4fdd: $00
    nop                                           ; $4fde: $00
    nop                                           ; $4fdf: $00
    rrca                                          ; $4fe0: $0f
    di                                            ; $4fe1: $f3
    rst $38                                       ; $4fe2: $ff
    ldh a, [rP1]                                  ; $4fe3: $f0 $00
    nop                                           ; $4fe5: $00
    nop                                           ; $4fe6: $00
    nop                                           ; $4fe7: $00
    rrca                                          ; $4fe8: $0f
    di                                            ; $4fe9: $f3
    pop af                                        ; $4fea: $f1
    ldh a, [rP1]                                  ; $4feb: $f0 $00
    nop                                           ; $4fed: $00
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    rrca                                          ; $4ff0: $0f
    di                                            ; $4ff1: $f3
    pop af                                        ; $4ff2: $f1
    ldh a, [rP1]                                  ; $4ff3: $f0 $00
    nop                                           ; $4ff5: $00
    nop                                           ; $4ff6: $00
    nop                                           ; $4ff7: $00
    rrca                                          ; $4ff8: $0f
    rst $38                                       ; $4ff9: $ff
    rst $38                                       ; $4ffa: $ff
    ldh a, [rP1]                                  ; $4ffb: $f0 $00
    nop                                           ; $4ffd: $00
    nop                                           ; $4ffe: $00
    nop                                           ; $4fff: $00
    rrca                                          ; $5000: $0f
    rra                                           ; $5001: $1f
    rra                                           ; $5002: $1f
    nop                                           ; $5003: $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    nop                                           ; $5007: $00
    rrca                                          ; $5008: $0f
    rst $38                                       ; $5009: $ff
    rst $38                                       ; $500a: $ff
    nop                                           ; $500b: $00
    nop                                           ; $500c: $00
    nop                                           ; $500d: $00
    nop                                           ; $500e: $00
    nop                                           ; $500f: $00
    rrca                                          ; $5010: $0f
    di                                            ; $5011: $f3
    rst $38                                       ; $5012: $ff
    nop                                           ; $5013: $00
    nop                                           ; $5014: $00
    nop                                           ; $5015: $00
    nop                                           ; $5016: $00
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    rst $38                                       ; $5019: $ff
    ldh a, [rP1]                                  ; $501a: $f0 $00
    nop                                           ; $501c: $00
    nop                                           ; $501d: $00
    ld b, [hl]                                    ; $501e: $46
    ld h, $27                                     ; $501f: $26 $27
    jr c, jr_044_5069                             ; $5021: $38 $46

    ld d, a                                       ; $5023: $57
    ld e, b                                       ; $5024: $58
    ld h, [hl]                                    ; $5025: $66
    ld a, b                                       ; $5026: $78
    rst $38                                       ; $5027: $ff
    ld [$0000], sp                                ; $5028: $08 $00 $00
    nop                                           ; $502b: $00
    nop                                           ; $502c: $00
    nop                                           ; $502d: $00
    nop                                           ; $502e: $00
    nop                                           ; $502f: $00
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    rrca                                          ; $5036: $0f
    rst $38                                       ; $5037: $ff
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503a: $00
    nop                                           ; $503b: $00
    nop                                           ; $503c: $00
    rrca                                          ; $503d: $0f
    rst $38                                       ; $503e: $ff
    rst $38                                       ; $503f: $ff
    nop                                           ; $5040: $00
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    nop                                           ; $5043: $00
    nop                                           ; $5044: $00
    rrca                                          ; $5045: $0f
    rst $38                                       ; $5046: $ff
    pop af                                        ; $5047: $f1
    ldh a, [rP1]                                  ; $5048: $f0 $00
    nop                                           ; $504a: $00
    nop                                           ; $504b: $00
    nop                                           ; $504c: $00
    rst $38                                       ; $504d: $ff
    rst $38                                       ; $504e: $ff
    rst $38                                       ; $504f: $ff
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    nop                                           ; $5053: $00
    nop                                           ; $5054: $00
    rst $38                                       ; $5055: $ff
    rst $38                                       ; $5056: $ff
    ldh a, [rP1]                                  ; $5057: $f0 $00
    nop                                           ; $5059: $00
    nop                                           ; $505a: $00
    rrca                                          ; $505b: $0f
    rst $38                                       ; $505c: $ff
    rst $38                                       ; $505d: $ff
    rst $38                                       ; $505e: $ff
    ldh a, [rP1]                                  ; $505f: $f0 $00
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    rrca                                          ; $5063: $0f
    rra                                           ; $5064: $1f
    rst $38                                       ; $5065: $ff
    ldh a, [rP1]                                  ; $5066: $f0 $00
    nop                                           ; $5068: $00

jr_044_5069:
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    rst $38                                       ; $506b: $ff
    rst $38                                       ; $506c: $ff
    rst $38                                       ; $506d: $ff
    ldh a, [rP1]                                  ; $506e: $f0 $00
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    rrca                                          ; $5072: $0f
    rst $38                                       ; $5073: $ff
    ccf                                           ; $5074: $3f
    pop af                                        ; $5075: $f1
    ldh a, [rP1]                                  ; $5076: $f0 $00
    nop                                           ; $5078: $00
    nop                                           ; $5079: $00
    rrca                                          ; $507a: $0f
    rra                                           ; $507b: $1f
    rst $38                                       ; $507c: $ff
    rst $38                                       ; $507d: $ff
    nop                                           ; $507e: $00
    nop                                           ; $507f: $00
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    rrca                                          ; $5082: $0f
    rst $38                                       ; $5083: $ff
    rst $38                                       ; $5084: $ff
    nop                                           ; $5085: $00
    nop                                           ; $5086: $00
    nop                                           ; $5087: $00
    nop                                           ; $5088: $00
    rrca                                          ; $5089: $0f
    rst $38                                       ; $508a: $ff
    rst $38                                       ; $508b: $ff
    rst $38                                       ; $508c: $ff
    nop                                           ; $508d: $00
    nop                                           ; $508e: $00
    nop                                           ; $508f: $00
    nop                                           ; $5090: $00
    rrca                                          ; $5091: $0f
    rst $38                                       ; $5092: $ff
    rst $38                                       ; $5093: $ff
    ldh a, [rP1]                                  ; $5094: $f0 $00
    nop                                           ; $5096: $00
    nop                                           ; $5097: $00
    nop                                           ; $5098: $00
    rrca                                          ; $5099: $0f
    rst $38                                       ; $509a: $ff
    ldh a, [rP1]                                  ; $509b: $f0 $00
    nop                                           ; $509d: $00
    nop                                           ; $509e: $00
    nop                                           ; $509f: $00
    nop                                           ; $50a0: $00
    nop                                           ; $50a1: $00
    rst $38                                       ; $50a2: $ff
    nop                                           ; $50a3: $00
    nop                                           ; $50a4: $00
    nop                                           ; $50a5: $00
    nop                                           ; $50a6: $00
    nop                                           ; $50a7: $00
    nop                                           ; $50a8: $00
    ld d, b                                       ; $50a9: $50
    dec hl                                        ; $50aa: $2b
    inc l                                         ; $50ab: $2c
    ld l, b                                       ; $50ac: $68
    ld [hl], a                                    ; $50ad: $77
    ld a, c                                       ; $50ae: $79
    adc b                                         ; $50af: $88
    sub a                                         ; $50b0: $97
    rst $38                                       ; $50b1: $ff
    rlca                                          ; $50b2: $07
    nop                                           ; $50b3: $00
    nop                                           ; $50b4: $00
    nop                                           ; $50b5: $00
    nop                                           ; $50b6: $00
    nop                                           ; $50b7: $00
    nop                                           ; $50b8: $00
    nop                                           ; $50b9: $00
    nop                                           ; $50ba: $00
    nop                                           ; $50bb: $00
    nop                                           ; $50bc: $00
    nop                                           ; $50bd: $00
    nop                                           ; $50be: $00
    nop                                           ; $50bf: $00
    nop                                           ; $50c0: $00
    nop                                           ; $50c1: $00
    nop                                           ; $50c2: $00
    nop                                           ; $50c3: $00
    nop                                           ; $50c4: $00
    nop                                           ; $50c5: $00
    nop                                           ; $50c6: $00
    nop                                           ; $50c7: $00
    nop                                           ; $50c8: $00
    nop                                           ; $50c9: $00
    nop                                           ; $50ca: $00
    nop                                           ; $50cb: $00
    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    rst $38                                       ; $50ce: $ff
    ldh a, [rP1]                                  ; $50cf: $f0 $00
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    nop                                           ; $50d3: $00
    nop                                           ; $50d4: $00
    nop                                           ; $50d5: $00
    rst $38                                       ; $50d6: $ff
    rst $38                                       ; $50d7: $ff
    nop                                           ; $50d8: $00
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    nop                                           ; $50db: $00
    nop                                           ; $50dc: $00
    nop                                           ; $50dd: $00
    rst $38                                       ; $50de: $ff
    rst $38                                       ; $50df: $ff
    nop                                           ; $50e0: $00
    nop                                           ; $50e1: $00
    nop                                           ; $50e2: $00
    nop                                           ; $50e3: $00
    nop                                           ; $50e4: $00
    nop                                           ; $50e5: $00
    rst $38                                       ; $50e6: $ff
    rst $38                                       ; $50e7: $ff
    nop                                           ; $50e8: $00
    nop                                           ; $50e9: $00
    nop                                           ; $50ea: $00
    nop                                           ; $50eb: $00
    nop                                           ; $50ec: $00
    nop                                           ; $50ed: $00
    pop af                                        ; $50ee: $f1
    ldh a, [rP1]                                  ; $50ef: $f0 $00
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    nop                                           ; $50f3: $00
    nop                                           ; $50f4: $00
    nop                                           ; $50f5: $00
    rrca                                          ; $50f6: $0f
    ldh a, [rP1]                                  ; $50f7: $f0 $00
    nop                                           ; $50f9: $00
    nop                                           ; $50fa: $00
    nop                                           ; $50fb: $00
    nop                                           ; $50fc: $00
    nop                                           ; $50fd: $00
    rst $38                                       ; $50fe: $ff
    rst $38                                       ; $50ff: $ff
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    di                                            ; $5106: $f3
    rst $38                                       ; $5107: $ff
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    nop                                           ; $510a: $00
    nop                                           ; $510b: $00
    nop                                           ; $510c: $00
    nop                                           ; $510d: $00
    rst $38                                       ; $510e: $ff
    ldh a, [rP1]                                  ; $510f: $f0 $00
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    rst $38                                       ; $5116: $ff
    ldh a, [rP1]                                  ; $5117: $f0 $00
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    nop                                           ; $511b: $00
    nop                                           ; $511c: $00
    nop                                           ; $511d: $00
    nop                                           ; $511e: $00
    nop                                           ; $511f: $00
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    nop                                           ; $5125: $00
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    nop                                           ; $5128: $00
    nop                                           ; $5129: $00
    nop                                           ; $512a: $00
    nop                                           ; $512b: $00
    nop                                           ; $512c: $00
    nop                                           ; $512d: $00
    nop                                           ; $512e: $00
    nop                                           ; $512f: $00
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    nop                                           ; $5132: $00
    jr nz, jr_044_517c                            ; $5133: $20 $47

    ld c, b                                       ; $5135: $48
    ld h, a                                       ; $5136: $67
    ld l, b                                       ; $5137: $68
    rst $38                                       ; $5138: $ff
    inc b                                         ; $5139: $04
    nop                                           ; $513a: $00
    nop                                           ; $513b: $00
    nop                                           ; $513c: $00
    nop                                           ; $513d: $00
    nop                                           ; $513e: $00
    nop                                           ; $513f: $00
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    rrca                                          ; $5144: $0f
    rst $38                                       ; $5145: $ff
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    rst $38                                       ; $514a: $ff
    ldh a, [rIE]                                  ; $514b: $f0 $ff
    rst $38                                       ; $514d: $ff
    nop                                           ; $514e: $00
    nop                                           ; $514f: $00
    nop                                           ; $5150: $00
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    rst $38                                       ; $5153: $ff
    rst $38                                       ; $5154: $ff
    rst $38                                       ; $5155: $ff
    ldh a, [rP1]                                  ; $5156: $f0 $00
    nop                                           ; $5158: $00
    nop                                           ; $5159: $00
    nop                                           ; $515a: $00
    nop                                           ; $515b: $00
    rst $38                                       ; $515c: $ff
    rst $38                                       ; $515d: $ff
    rst $38                                       ; $515e: $ff
    rst $38                                       ; $515f: $ff
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    rst $38                                       ; $5164: $ff
    rst $38                                       ; $5165: $ff
    pop af                                        ; $5166: $f1
    rra                                           ; $5167: $1f
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    nop                                           ; $516a: $00
    nop                                           ; $516b: $00
    nop                                           ; $516c: $00
    rst $38                                       ; $516d: $ff
    rst $38                                       ; $516e: $ff
    rra                                           ; $516f: $1f
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    nop                                           ; $5173: $00
    rrca                                          ; $5174: $0f
    pop af                                        ; $5175: $f1
    rst $38                                       ; $5176: $ff
    rst $38                                       ; $5177: $ff
    nop                                           ; $5178: $00
    nop                                           ; $5179: $00
    nop                                           ; $517a: $00
    nop                                           ; $517b: $00

jr_044_517c:
    rrca                                          ; $517c: $0f
    rst $38                                       ; $517d: $ff
    rst $38                                       ; $517e: $ff
    ldh a, [rP1]                                  ; $517f: $f0 $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    rrca                                          ; $5184: $0f
    rst $38                                       ; $5185: $ff
    ccf                                           ; $5186: $3f
    nop                                           ; $5187: $00
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    nop                                           ; $518b: $00
    rrca                                          ; $518c: $0f
    rst $38                                       ; $518d: $ff
    rst $38                                       ; $518e: $ff
    nop                                           ; $518f: $00
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    rrca                                          ; $5194: $0f
    rst $38                                       ; $5195: $ff
    rra                                           ; $5196: $1f
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    nop                                           ; $519a: $00
    nop                                           ; $519b: $00
    rst $38                                       ; $519c: $ff
    rst $38                                       ; $519d: $ff
    rst $38                                       ; $519e: $ff
    nop                                           ; $519f: $00
    nop                                           ; $51a0: $00
    nop                                           ; $51a1: $00
    nop                                           ; $51a2: $00
    nop                                           ; $51a3: $00
    rst $38                                       ; $51a4: $ff
    ccf                                           ; $51a5: $3f
    rst $38                                       ; $51a6: $ff
    nop                                           ; $51a7: $00
    nop                                           ; $51a8: $00
    nop                                           ; $51a9: $00
    nop                                           ; $51aa: $00
    nop                                           ; $51ab: $00
    rrca                                          ; $51ac: $0f
    rst $38                                       ; $51ad: $ff
    ldh a, [rP1]                                  ; $51ae: $f0 $00
    nop                                           ; $51b0: $00
    nop                                           ; $51b1: $00
    nop                                           ; $51b2: $00
    nop                                           ; $51b3: $00
    nop                                           ; $51b4: $00
    nop                                           ; $51b5: $00
    ldh a, [rP1]                                  ; $51b6: $f0 $00
    nop                                           ; $51b8: $00
    nop                                           ; $51b9: $00
    ld c, l                                       ; $51ba: $4d
    dec [hl]                                      ; $51bb: $35
    ld [hl], $47                                  ; $51bc: $36 $47
    ld l, b                                       ; $51be: $68
    ld a, c                                       ; $51bf: $79
    rst $38                                       ; $51c0: $ff
    dec b                                         ; $51c1: $05
    nop                                           ; $51c2: $00
    nop                                           ; $51c3: $00
    nop                                           ; $51c4: $00
    rrca                                          ; $51c5: $0f
    rst $38                                       ; $51c6: $ff
    nop                                           ; $51c7: $00
    nop                                           ; $51c8: $00
    nop                                           ; $51c9: $00
    rrca                                          ; $51ca: $0f
    rst $38                                       ; $51cb: $ff
    rst $38                                       ; $51cc: $ff
    rst $38                                       ; $51cd: $ff
    rst $38                                       ; $51ce: $ff
    nop                                           ; $51cf: $00
    nop                                           ; $51d0: $00
    nop                                           ; $51d1: $00
    rst $38                                       ; $51d2: $ff
    rst $38                                       ; $51d3: $ff
    rst $38                                       ; $51d4: $ff
    rst $38                                       ; $51d5: $ff
    rst $38                                       ; $51d6: $ff
    nop                                           ; $51d7: $00
    nop                                           ; $51d8: $00
    nop                                           ; $51d9: $00
    ld [hl+], a                                   ; $51da: $22
    ld [hl+], a                                   ; $51db: $22
    cpl                                           ; $51dc: $2f
    rst $38                                       ; $51dd: $ff
    rst $38                                       ; $51de: $ff
    nop                                           ; $51df: $00
    nop                                           ; $51e0: $00
    nop                                           ; $51e1: $00
    ld [hl+], a                                   ; $51e2: $22
    ld [hl+], a                                   ; $51e3: $22
    cpl                                           ; $51e4: $2f
    rst $38                                       ; $51e5: $ff
    ldh a, [rP1]                                  ; $51e6: $f0 $00
    nop                                           ; $51e8: $00
    nop                                           ; $51e9: $00
    ld [hl+], a                                   ; $51ea: $22
    ld [hl+], a                                   ; $51eb: $22
    cpl                                           ; $51ec: $2f
    ccf                                           ; $51ed: $3f
    rst $38                                       ; $51ee: $ff
    nop                                           ; $51ef: $00
    nop                                           ; $51f0: $00
    nop                                           ; $51f1: $00
    ld [hl+], a                                   ; $51f2: $22
    ld [hl+], a                                   ; $51f3: $22
    cpl                                           ; $51f4: $2f
    ccf                                           ; $51f5: $3f
    rst $38                                       ; $51f6: $ff
    ldh a, [rP1]                                  ; $51f7: $f0 $00
    nop                                           ; $51f9: $00
    ld [hl+], a                                   ; $51fa: $22
    ld [hl+], a                                   ; $51fb: $22
    cpl                                           ; $51fc: $2f
    di                                            ; $51fd: $f3
    rst $38                                       ; $51fe: $ff
    ldh a, [rP1]                                  ; $51ff: $f0 $00
    nop                                           ; $5201: $00
    ld [hl+], a                                   ; $5202: $22
    ld [hl+], a                                   ; $5203: $22
    cpl                                           ; $5204: $2f
    di                                            ; $5205: $f3
    ccf                                           ; $5206: $3f
    rra                                           ; $5207: $1f
    nop                                           ; $5208: $00
    nop                                           ; $5209: $00
    ld [hl+], a                                   ; $520a: $22
    ld [hl+], a                                   ; $520b: $22
    ld [hl+], a                                   ; $520c: $22
    di                                            ; $520d: $f3
    ccf                                           ; $520e: $3f
    rra                                           ; $520f: $1f
    nop                                           ; $5210: $00
    nop                                           ; $5211: $00
    ld [hl+], a                                   ; $5212: $22
    rst $38                                       ; $5213: $ff
    rst $38                                       ; $5214: $ff
    rst $38                                       ; $5215: $ff
    rst $38                                       ; $5216: $ff
    rst $38                                       ; $5217: $ff
    nop                                           ; $5218: $00
    nop                                           ; $5219: $00
    rst $38                                       ; $521a: $ff
    ldh a, [rIF]                                  ; $521b: $f0 $0f
    rra                                           ; $521d: $1f
    pop af                                        ; $521e: $f1
    ldh a, [rP1]                                  ; $521f: $f0 $00
    nop                                           ; $5221: $00
    nop                                           ; $5222: $00
    nop                                           ; $5223: $00
    rrca                                          ; $5224: $0f
    rra                                           ; $5225: $1f
    pop af                                        ; $5226: $f1
    ldh a, [rP1]                                  ; $5227: $f0 $00
    nop                                           ; $5229: $00
    nop                                           ; $522a: $00
    nop                                           ; $522b: $00
    rrca                                          ; $522c: $0f
    rst $38                                       ; $522d: $ff
    rst $38                                       ; $522e: $ff
    ldh a, [rP1]                                  ; $522f: $f0 $00
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    nop                                           ; $5233: $00
    nop                                           ; $5234: $00
    rst $38                                       ; $5235: $ff
    rst $38                                       ; $5236: $ff
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00
    nop                                           ; $5239: $00
    nop                                           ; $523a: $00
    nop                                           ; $523b: $00
    nop                                           ; $523c: $00
    rrca                                          ; $523d: $0f
    ldh a, [rP1]                                  ; $523e: $f0 $00
    nop                                           ; $5240: $00
    nop                                           ; $5241: $00
    ld d, l                                       ; $5242: $55
    rla                                           ; $5243: $17
    jr jr_044_526c                                ; $5244: $18 $26

    rst $38                                       ; $5246: $ff
    inc bc                                        ; $5247: $03
    nop                                           ; $5248: $00
    nop                                           ; $5249: $00
    nop                                           ; $524a: $00
    rst $38                                       ; $524b: $ff
    rst $38                                       ; $524c: $ff
    ldh a, [rP1]                                  ; $524d: $f0 $00
    nop                                           ; $524f: $00
    nop                                           ; $5250: $00
    nop                                           ; $5251: $00

Call_044_5252:
    rrca                                          ; $5252: $0f
    rst $38                                       ; $5253: $ff
    rra                                           ; $5254: $1f
    rst $38                                       ; $5255: $ff
    nop                                           ; $5256: $00
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    rrca                                          ; $525a: $0f
    rra                                           ; $525b: $1f
    rst $38                                       ; $525c: $ff
    rst $38                                       ; $525d: $ff
    nop                                           ; $525e: $00
    nop                                           ; $525f: $00
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    rrca                                          ; $5262: $0f
    rra                                           ; $5263: $1f
    rst $38                                       ; $5264: $ff
    ldh a, [rP1]                                  ; $5265: $f0 $00
    nop                                           ; $5267: $00
    nop                                           ; $5268: $00
    nop                                           ; $5269: $00
    rrca                                          ; $526a: $0f
    rra                                           ; $526b: $1f

jr_044_526c:
    pop af                                        ; $526c: $f1
    ldh a, [rP1]                                  ; $526d: $f0 $00
    nop                                           ; $526f: $00
    nop                                           ; $5270: $00
    nop                                           ; $5271: $00
    rrca                                          ; $5272: $0f
    rra                                           ; $5273: $1f
    pop af                                        ; $5274: $f1
    ldh a, [rP1]                                  ; $5275: $f0 $00
    nop                                           ; $5277: $00
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    rrca                                          ; $527a: $0f
    rra                                           ; $527b: $1f
    pop af                                        ; $527c: $f1
    ldh a, [rP1]                                  ; $527d: $f0 $00
    nop                                           ; $527f: $00
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    rrca                                          ; $5282: $0f
    rra                                           ; $5283: $1f
    pop af                                        ; $5284: $f1
    ldh a, [rP1]                                  ; $5285: $f0 $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    rrca                                          ; $528a: $0f
    rra                                           ; $528b: $1f
    rst $38                                       ; $528c: $ff
    ldh a, [rP1]                                  ; $528d: $f0 $00
    nop                                           ; $528f: $00
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    rrca                                          ; $5292: $0f
    rra                                           ; $5293: $1f
    rst $38                                       ; $5294: $ff
    ldh a, [rP1]                                  ; $5295: $f0 $00
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    rrca                                          ; $529a: $0f
    rra                                           ; $529b: $1f
    rst $38                                       ; $529c: $ff
    ldh a, [rP1]                                  ; $529d: $f0 $00
    nop                                           ; $529f: $00
    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    nop                                           ; $52a2: $00
    rra                                           ; $52a3: $1f
    rst $38                                       ; $52a4: $ff
    rst $38                                       ; $52a5: $ff
    ldh a, [rP1]                                  ; $52a6: $f0 $00
    nop                                           ; $52a8: $00
    nop                                           ; $52a9: $00
    nop                                           ; $52aa: $00
    rst $38                                       ; $52ab: $ff
    pop af                                        ; $52ac: $f1
    rst $38                                       ; $52ad: $ff
    ldh a, [rP1]                                  ; $52ae: $f0 $00
    nop                                           ; $52b0: $00
    nop                                           ; $52b1: $00
    rrca                                          ; $52b2: $0f
    rst $38                                       ; $52b3: $ff
    rst $38                                       ; $52b4: $ff
    ldh a, [$f0]                                  ; $52b5: $f0 $f0
    nop                                           ; $52b7: $00
    nop                                           ; $52b8: $00
    nop                                           ; $52b9: $00
    rrca                                          ; $52ba: $0f
    di                                            ; $52bb: $f3
    ccf                                           ; $52bc: $3f
    nop                                           ; $52bd: $00
    ldh a, [rP1]                                  ; $52be: $f0 $00
    nop                                           ; $52c0: $00
    nop                                           ; $52c1: $00
    nop                                           ; $52c2: $00
    rst $38                                       ; $52c3: $ff
    rst $38                                       ; $52c4: $ff
    nop                                           ; $52c5: $00
    ldh a, [rP1]                                  ; $52c6: $f0 $00
    ld d, c                                       ; $52c8: $51
    rla                                           ; $52c9: $17
    jr z, @+$01                                   ; $52ca: $28 $ff

    ld [bc], a                                    ; $52cc: $02
    nop                                           ; $52cd: $00
    nop                                           ; $52ce: $00
    nop                                           ; $52cf: $00
    nop                                           ; $52d0: $00
    nop                                           ; $52d1: $00
    nop                                           ; $52d2: $00
    nop                                           ; $52d3: $00
    nop                                           ; $52d4: $00
    nop                                           ; $52d5: $00
    nop                                           ; $52d6: $00
    nop                                           ; $52d7: $00
    nop                                           ; $52d8: $00
    nop                                           ; $52d9: $00
    nop                                           ; $52da: $00
    nop                                           ; $52db: $00
    nop                                           ; $52dc: $00
    nop                                           ; $52dd: $00
    nop                                           ; $52de: $00
    nop                                           ; $52df: $00
    nop                                           ; $52e0: $00
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
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
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00
    nop                                           ; $52f4: $00
    nop                                           ; $52f5: $00
    nop                                           ; $52f6: $00
    nop                                           ; $52f7: $00
    pop af                                        ; $52f8: $f1
    ldh a, [rP1]                                  ; $52f9: $f0 $00
    nop                                           ; $52fb: $00
    nop                                           ; $52fc: $00
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    rrca                                          ; $52ff: $0f
    rst $38                                       ; $5300: $ff
    ldh a, [rP1]                                  ; $5301: $f0 $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    rst $38                                       ; $5307: $ff
    rst $38                                       ; $5308: $ff
    ldh a, [rP1]                                  ; $5309: $f0 $00
    nop                                           ; $530b: $00
    nop                                           ; $530c: $00
    nop                                           ; $530d: $00
    nop                                           ; $530e: $00
    rst $38                                       ; $530f: $ff
    rst $38                                       ; $5310: $ff
    ldh a, [rP1]                                  ; $5311: $f0 $00
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    nop                                           ; $5316: $00
    pop af                                        ; $5317: $f1
    pop af                                        ; $5318: $f1
    ldh a, [rP1]                                  ; $5319: $f0 $00
    nop                                           ; $531b: $00
    nop                                           ; $531c: $00
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    rst $38                                       ; $531f: $ff
    rst $38                                       ; $5320: $ff
    ldh a, [rP1]                                  ; $5321: $f0 $00
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    rst $38                                       ; $5327: $ff
    pop af                                        ; $5328: $f1
    ldh a, [rP1]                                  ; $5329: $f0 $00
    nop                                           ; $532b: $00
    nop                                           ; $532c: $00
    nop                                           ; $532d: $00
    nop                                           ; $532e: $00
    rrca                                          ; $532f: $0f
    rst $38                                       ; $5330: $ff
    ldh a, [rP1]                                  ; $5331: $f0 $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    rrca                                          ; $5337: $0f
    rst $38                                       ; $5338: $ff
    nop                                           ; $5339: $00
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    nop                                           ; $533c: $00
    nop                                           ; $533d: $00
    nop                                           ; $533e: $00
    rrca                                          ; $533f: $0f
    rst $38                                       ; $5340: $ff
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
    jr z, jr_044_53b6                             ; $534d: $28 $67

    halt                                          ; $534f: $76
    rst $38                                       ; $5350: $ff
    ld [bc], a                                    ; $5351: $02
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    nop                                           ; $5355: $00
    nop                                           ; $5356: $00
    rst $38                                       ; $5357: $ff
    nop                                           ; $5358: $00
    nop                                           ; $5359: $00
    nop                                           ; $535a: $00
    nop                                           ; $535b: $00
    nop                                           ; $535c: $00
    nop                                           ; $535d: $00
    rst $38                                       ; $535e: $ff
    rst $38                                       ; $535f: $ff
    ldh a, [rP1]                                  ; $5360: $f0 $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    rrca                                          ; $5365: $0f
    rst $38                                       ; $5366: $ff
    rst $38                                       ; $5367: $ff
    ldh a, [rP1]                                  ; $5368: $f0 $00
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    rst $38                                       ; $536d: $ff
    ccf                                           ; $536e: $3f
    rst $38                                       ; $536f: $ff
    ldh a, [rP1]                                  ; $5370: $f0 $00
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    rst $38                                       ; $5375: $ff
    rst $38                                       ; $5376: $ff
    rst $38                                       ; $5377: $ff
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537a: $00
    nop                                           ; $537b: $00
    nop                                           ; $537c: $00
    rst $38                                       ; $537d: $ff
    rst $38                                       ; $537e: $ff
    nop                                           ; $537f: $00
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    rst $38                                       ; $5385: $ff
    rst $38                                       ; $5386: $ff
    ldh a, [rP1]                                  ; $5387: $f0 $00
    nop                                           ; $5389: $00
    nop                                           ; $538a: $00
    nop                                           ; $538b: $00
    rrca                                          ; $538c: $0f
    rst $38                                       ; $538d: $ff
    rst $38                                       ; $538e: $ff
    ldh a, [rP1]                                  ; $538f: $f0 $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    rrca                                          ; $5394: $0f
    ld a, [c]                                     ; $5395: $f2
    di                                            ; $5396: $f3
    ldh a, [rP1]                                  ; $5397: $f0 $00
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    nop                                           ; $539b: $00
    rrca                                          ; $539c: $0f
    rst $38                                       ; $539d: $ff
    rst $38                                       ; $539e: $ff
    ldh a, [rP1]                                  ; $539f: $f0 $00
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    nop                                           ; $53a3: $00
    rrca                                          ; $53a4: $0f
    rst $38                                       ; $53a5: $ff
    ccf                                           ; $53a6: $3f
    ldh a, [rP1]                                  ; $53a7: $f0 $00
    nop                                           ; $53a9: $00
    nop                                           ; $53aa: $00
    nop                                           ; $53ab: $00
    rrca                                          ; $53ac: $0f
    di                                            ; $53ad: $f3
    ccf                                           ; $53ae: $3f
    ldh a, [rP1]                                  ; $53af: $f0 $00
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    nop                                           ; $53b3: $00
    rrca                                          ; $53b4: $0f
    di                                            ; $53b5: $f3

jr_044_53b6:
    pop af                                        ; $53b6: $f1
    ldh a, [rP1]                                  ; $53b7: $f0 $00
    nop                                           ; $53b9: $00
    nop                                           ; $53ba: $00
    nop                                           ; $53bb: $00
    rst $38                                       ; $53bc: $ff
    rst $38                                       ; $53bd: $ff
    rra                                           ; $53be: $1f
    ldh a, [rP1]                                  ; $53bf: $f0 $00
    nop                                           ; $53c1: $00
    nop                                           ; $53c2: $00
    nop                                           ; $53c3: $00
    rst $38                                       ; $53c4: $ff
    ccf                                           ; $53c5: $3f
    ldh a, [rP1]                                  ; $53c6: $f0 $00
    nop                                           ; $53c8: $00
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    nop                                           ; $53cb: $00
    rrca                                          ; $53cc: $0f
    rst $38                                       ; $53cd: $ff
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    ld c, h                                       ; $53d2: $4c
    ld a, [de]                                    ; $53d3: $1a
    dec de                                        ; $53d4: $1b
    inc l                                         ; $53d5: $2c
    ld a, [hl-]                                   ; $53d6: $3a
    dec sp                                        ; $53d7: $3b
    rst $38                                       ; $53d8: $ff
    dec b                                         ; $53d9: $05
    nop                                           ; $53da: $00
    nop                                           ; $53db: $00
    nop                                           ; $53dc: $00
    rrca                                          ; $53dd: $0f
    ldh a, [rP1]                                  ; $53de: $f0 $00
    nop                                           ; $53e0: $00
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
    nop                                           ; $53e4: $00
    rst $38                                       ; $53e5: $ff
    rst $38                                       ; $53e6: $ff
    nop                                           ; $53e7: $00
    nop                                           ; $53e8: $00
    nop                                           ; $53e9: $00
    nop                                           ; $53ea: $00
    nop                                           ; $53eb: $00
    nop                                           ; $53ec: $00
    rst $38                                       ; $53ed: $ff
    rst $38                                       ; $53ee: $ff
    nop                                           ; $53ef: $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    nop                                           ; $53f2: $00
    nop                                           ; $53f3: $00
    nop                                           ; $53f4: $00
    rst $38                                       ; $53f5: $ff
    rst $38                                       ; $53f6: $ff
    ldh a, [rP1]                                  ; $53f7: $f0 $00
    nop                                           ; $53f9: $00
    nop                                           ; $53fa: $00
    nop                                           ; $53fb: $00
    nop                                           ; $53fc: $00
    pop af                                        ; $53fd: $f1
    pop af                                        ; $53fe: $f1
    ldh a, [rP1]                                  ; $53ff: $f0 $00
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    rst $38                                       ; $5404: $ff
    rst $38                                       ; $5405: $ff
    rst $38                                       ; $5406: $ff
    nop                                           ; $5407: $00
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    nop                                           ; $540a: $00
    nop                                           ; $540b: $00
    rst $38                                       ; $540c: $ff
    rst $38                                       ; $540d: $ff
    rst $38                                       ; $540e: $ff
    nop                                           ; $540f: $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    rrca                                          ; $5413: $0f
    rst $38                                       ; $5414: $ff
    rst $38                                       ; $5415: $ff
    rra                                           ; $5416: $1f
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    rrca                                          ; $541b: $0f
    rst $38                                       ; $541c: $ff
    pop af                                        ; $541d: $f1
    ldh a, [rP1]                                  ; $541e: $f0 $00
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    rrca                                          ; $5423: $0f
    rst $38                                       ; $5424: $ff
    ccf                                           ; $5425: $3f
    ldh a, [rP1]                                  ; $5426: $f0 $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    nop                                           ; $542a: $00
    nop                                           ; $542b: $00
    rrca                                          ; $542c: $0f
    rst $38                                       ; $542d: $ff
    ldh a, [rP1]                                  ; $542e: $f0 $00
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    rrca                                          ; $5434: $0f
    rst $38                                       ; $5435: $ff
    rst $38                                       ; $5436: $ff
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543a: $00
    nop                                           ; $543b: $00
    nop                                           ; $543c: $00
    rst $38                                       ; $543d: $ff
    rst $38                                       ; $543e: $ff
    nop                                           ; $543f: $00
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    di                                            ; $5445: $f3
    ccf                                           ; $5446: $3f
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    nop                                           ; $544b: $00
    nop                                           ; $544c: $00
    rst $38                                       ; $544d: $ff
    rst $38                                       ; $544e: $ff
    nop                                           ; $544f: $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
    rrca                                          ; $5455: $0f
    ldh a, [rP1]                                  ; $5456: $f0 $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    ld b, e                                       ; $545a: $43
    rla                                           ; $545b: $17
    jr z, @+$01                                   ; $545c: $28 $ff

    ld [bc], a                                    ; $545e: $02
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
    rst $38                                       ; $547b: $ff
    nop                                           ; $547c: $00
    nop                                           ; $547d: $00
    nop                                           ; $547e: $00
    nop                                           ; $547f: $00
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    rst $38                                       ; $5482: $ff
    rra                                           ; $5483: $1f
    ldh a, [rP1]                                  ; $5484: $f0 $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    pop af                                        ; $548a: $f1
    rra                                           ; $548b: $1f
    rst $38                                       ; $548c: $ff
    nop                                           ; $548d: $00
    nop                                           ; $548e: $00
    nop                                           ; $548f: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    rrca                                          ; $5492: $0f
    rst $38                                       ; $5493: $ff
    pop af                                        ; $5494: $f1
    ldh a, [rP1]                                  ; $5495: $f0 $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    rrca                                          ; $549a: $0f
    rst $38                                       ; $549b: $ff
    ld de, $00f0                                  ; $549c: $11 $f0 $00
    nop                                           ; $549f: $00
    nop                                           ; $54a0: $00
    rst $38                                       ; $54a1: $ff
    rst $38                                       ; $54a2: $ff
    rst $38                                       ; $54a3: $ff
    rst $38                                       ; $54a4: $ff
    ldh a, [rP1]                                  ; $54a5: $f0 $00
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    rst $38                                       ; $54a9: $ff
    rst $38                                       ; $54aa: $ff
    ldh a, [rIE]                                  ; $54ab: $f0 $ff
    nop                                           ; $54ad: $00
    nop                                           ; $54ae: $00
    nop                                           ; $54af: $00
    nop                                           ; $54b0: $00
    rst $38                                       ; $54b1: $ff
    rst $38                                       ; $54b2: $ff
    ldh a, [rP1]                                  ; $54b3: $f0 $00
    nop                                           ; $54b5: $00
    nop                                           ; $54b6: $00
    nop                                           ; $54b7: $00
    nop                                           ; $54b8: $00
    rst $38                                       ; $54b9: $ff
    pop af                                        ; $54ba: $f1
    ldh a, [rP1]                                  ; $54bb: $f0 $00
    nop                                           ; $54bd: $00
    nop                                           ; $54be: $00
    nop                                           ; $54bf: $00
    nop                                           ; $54c0: $00
    nop                                           ; $54c1: $00
    rst $38                                       ; $54c2: $ff
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
    ld l, $59                                     ; $54df: $2e $59
    ld l, b                                       ; $54e1: $68
    ld l, d                                       ; $54e2: $6a
    ld a, c                                       ; $54e3: $79
    rst $38                                       ; $54e4: $ff
    inc b                                         ; $54e5: $04
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
    rrca                                          ; $54f0: $0f
    rst $38                                       ; $54f1: $ff
    ldh a, [rP1]                                  ; $54f2: $f0 $00
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    nop                                           ; $54f6: $00
    nop                                           ; $54f7: $00
    rrca                                          ; $54f8: $0f
    rst $38                                       ; $54f9: $ff
    ldh a, [rP1]                                  ; $54fa: $f0 $00
    nop                                           ; $54fc: $00
    nop                                           ; $54fd: $00
    nop                                           ; $54fe: $00
    nop                                           ; $54ff: $00
    rrca                                          ; $5500: $0f
    rst $38                                       ; $5501: $ff
    rra                                           ; $5502: $1f
    nop                                           ; $5503: $00
    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    rrca                                          ; $5508: $0f
    rst $38                                       ; $5509: $ff
    rst $38                                       ; $550a: $ff
    nop                                           ; $550b: $00
    nop                                           ; $550c: $00
    nop                                           ; $550d: $00
    nop                                           ; $550e: $00
    nop                                           ; $550f: $00
    rrca                                          ; $5510: $0f
    rst $38                                       ; $5511: $ff
    rst $38                                       ; $5512: $ff
    ldh a, [rP1]                                  ; $5513: $f0 $00
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    rrca                                          ; $5518: $0f
    rst $38                                       ; $5519: $ff
    rst $38                                       ; $551a: $ff
    rst $38                                       ; $551b: $ff
    nop                                           ; $551c: $00
    nop                                           ; $551d: $00
    nop                                           ; $551e: $00
    nop                                           ; $551f: $00
    rrca                                          ; $5520: $0f
    rst $38                                       ; $5521: $ff
    rst $38                                       ; $5522: $ff
    rst $38                                       ; $5523: $ff
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    rst $38                                       ; $5529: $ff
    rst $38                                       ; $552a: $ff
    rst $38                                       ; $552b: $ff
    nop                                           ; $552c: $00
    nop                                           ; $552d: $00
    nop                                           ; $552e: $00
    nop                                           ; $552f: $00
    nop                                           ; $5530: $00
    rst $38                                       ; $5531: $ff
    rra                                           ; $5532: $1f
    rst $38                                       ; $5533: $ff
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    di                                            ; $5539: $f3
    rst $38                                       ; $553a: $ff
    rst $38                                       ; $553b: $ff
    nop                                           ; $553c: $00
    nop                                           ; $553d: $00
    nop                                           ; $553e: $00
    nop                                           ; $553f: $00
    nop                                           ; $5540: $00
    rst $38                                       ; $5541: $ff
    rst $38                                       ; $5542: $ff
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    nop                                           ; $5548: $00
    rst $38                                       ; $5549: $ff
    pop af                                        ; $554a: $f1
    ldh a, [rP1]                                  ; $554b: $f0 $00
    nop                                           ; $554d: $00
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    nop                                           ; $5550: $00
    di                                            ; $5551: $f3
    ccf                                           ; $5552: $3f
    ldh a, [rP1]                                  ; $5553: $f0 $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    rst $38                                       ; $5559: $ff
    rst $38                                       ; $555a: $ff
    nop                                           ; $555b: $00
    nop                                           ; $555c: $00
    nop                                           ; $555d: $00
    nop                                           ; $555e: $00
    nop                                           ; $555f: $00
    nop                                           ; $5560: $00
    rst $38                                       ; $5561: $ff
    rst $38                                       ; $5562: $ff
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00

Call_044_5565:
    nop                                           ; $5565: $00
    ld c, b                                       ; $5566: $48
    ld [hl], $37                                  ; $5567: $36 $37
    ld a, b                                       ; $5569: $78

Call_044_556a:
    rst $38                                       ; $556a: $ff
    inc bc                                        ; $556b: $03
    nop                                           ; $556c: $00
    rrca                                          ; $556d: $0f
    rst $38                                       ; $556e: $ff
    nop                                           ; $556f: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    rrca                                          ; $5575: $0f
    rst $38                                       ; $5576: $ff
    rst $38                                       ; $5577: $ff
    ldh a, [rP1]                                  ; $5578: $f0 $00
    nop                                           ; $557a: $00
    nop                                           ; $557b: $00
    nop                                           ; $557c: $00
    rrca                                          ; $557d: $0f
    rst $38                                       ; $557e: $ff
    pop af                                        ; $557f: $f1
    rra                                           ; $5580: $1f
    ldh a, [rP1]                                  ; $5581: $f0 $00
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    rrca                                          ; $5585: $0f
    rst $38                                       ; $5586: $ff
    rst $38                                       ; $5587: $ff
    rst $38                                       ; $5588: $ff
    ldh a, [rP1]                                  ; $5589: $f0 $00
    nop                                           ; $558b: $00
    nop                                           ; $558c: $00
    nop                                           ; $558d: $00
    rst $38                                       ; $558e: $ff
    rst $38                                       ; $558f: $ff
    ccf                                           ; $5590: $3f
    rst $38                                       ; $5591: $ff
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    nop                                           ; $5596: $00
    rst $38                                       ; $5597: $ff
    pop af                                        ; $5598: $f1
    ldh a, [rP1]                                  ; $5599: $f0 $00
    nop                                           ; $559b: $00
    nop                                           ; $559c: $00
    nop                                           ; $559d: $00
    nop                                           ; $559e: $00
    rst $38                                       ; $559f: $ff
    rst $38                                       ; $55a0: $ff
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    nop                                           ; $55a3: $00
    nop                                           ; $55a4: $00
    nop                                           ; $55a5: $00
    rrca                                          ; $55a6: $0f
    rst $38                                       ; $55a7: $ff
    rst $38                                       ; $55a8: $ff
    nop                                           ; $55a9: $00
    nop                                           ; $55aa: $00
    nop                                           ; $55ab: $00
    nop                                           ; $55ac: $00
    nop                                           ; $55ad: $00
    rrca                                          ; $55ae: $0f
    di                                            ; $55af: $f3
    rra                                           ; $55b0: $1f
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    nop                                           ; $55b3: $00
    nop                                           ; $55b4: $00
    nop                                           ; $55b5: $00
    rst $38                                       ; $55b6: $ff
    di                                            ; $55b7: $f3
    rst $38                                       ; $55b8: $ff
    nop                                           ; $55b9: $00
    nop                                           ; $55ba: $00
    nop                                           ; $55bb: $00
    nop                                           ; $55bc: $00
    nop                                           ; $55bd: $00
    pop af                                        ; $55be: $f1
    di                                            ; $55bf: $f3
    ccf                                           ; $55c0: $3f
    ldh a, [rP1]                                  ; $55c1: $f0 $00
    nop                                           ; $55c3: $00
    nop                                           ; $55c4: $00
    nop                                           ; $55c5: $00
    rst $38                                       ; $55c6: $ff
    rst $38                                       ; $55c7: $ff
    rst $38                                       ; $55c8: $ff
    rst $38                                       ; $55c9: $ff
    ldh a, [rP1]                                  ; $55ca: $f0 $00
    nop                                           ; $55cc: $00
    nop                                           ; $55cd: $00
    rrca                                          ; $55ce: $0f
    rst $38                                       ; $55cf: $ff
    rst $38                                       ; $55d0: $ff
    pop af                                        ; $55d1: $f1
    ldh a, [rP1]                                  ; $55d2: $f0 $00
    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    nop                                           ; $55d6: $00
    nop                                           ; $55d7: $00
    rst $38                                       ; $55d8: $ff
    rst $38                                       ; $55d9: $ff
    rst $38                                       ; $55da: $ff
    nop                                           ; $55db: $00
    nop                                           ; $55dc: $00
    nop                                           ; $55dd: $00
    nop                                           ; $55de: $00
    nop                                           ; $55df: $00
    rrca                                          ; $55e0: $0f
    di                                            ; $55e1: $f3
    rst $38                                       ; $55e2: $ff
    nop                                           ; $55e3: $00
    nop                                           ; $55e4: $00
    nop                                           ; $55e5: $00
    nop                                           ; $55e6: $00
    nop                                           ; $55e7: $00
    nop                                           ; $55e8: $00
    rst $38                                       ; $55e9: $ff
    ldh a, [rP1]                                  ; $55ea: $f0 $00
    ld d, h                                       ; $55ec: $54
    inc h                                         ; $55ed: $24
    dec h                                         ; $55ee: $25
    ld b, a                                       ; $55ef: $47
    ld h, a                                       ; $55f0: $67
    halt                                          ; $55f1: $76
    rst $38                                       ; $55f2: $ff
    dec b                                         ; $55f3: $05
    nop                                           ; $55f4: $00
    nop                                           ; $55f5: $00
    nop                                           ; $55f6: $00
    rrca                                          ; $55f7: $0f
    ldh a, [rP1]                                  ; $55f8: $f0 $00
    nop                                           ; $55fa: $00
    nop                                           ; $55fb: $00
    nop                                           ; $55fc: $00
    nop                                           ; $55fd: $00
    rrca                                          ; $55fe: $0f
    rst $38                                       ; $55ff: $ff
    rra                                           ; $5600: $1f
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    rrca                                          ; $5606: $0f
    rst $38                                       ; $5607: $ff
    rst $38                                       ; $5608: $ff
    ldh a, [rP1]                                  ; $5609: $f0 $00
    nop                                           ; $560b: $00
    nop                                           ; $560c: $00
    nop                                           ; $560d: $00
    rrca                                          ; $560e: $0f
    rst $38                                       ; $560f: $ff
    pop af                                        ; $5610: $f1
    ldh a, [rP1]                                  ; $5611: $f0 $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    rst $38                                       ; $5616: $ff
    rst $38                                       ; $5617: $ff
    rst $38                                       ; $5618: $ff
    ldh a, [rP1]                                  ; $5619: $f0 $00
    nop                                           ; $561b: $00
    nop                                           ; $561c: $00
    nop                                           ; $561d: $00
    rst $38                                       ; $561e: $ff
    rst $38                                       ; $561f: $ff
    rst $38                                       ; $5620: $ff
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    rrca                                          ; $5626: $0f
    di                                            ; $5627: $f3
    pop af                                        ; $5628: $f1
    ldh a, [rP1]                                  ; $5629: $f0 $00
    nop                                           ; $562b: $00
    nop                                           ; $562c: $00
    nop                                           ; $562d: $00
    rrca                                          ; $562e: $0f
    di                                            ; $562f: $f3
    pop af                                        ; $5630: $f1
    rra                                           ; $5631: $1f
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    rrca                                          ; $5636: $0f
    di                                            ; $5637: $f3
    rst $38                                       ; $5638: $ff
    ldh a, [rP1]                                  ; $5639: $f0 $00
    nop                                           ; $563b: $00
    nop                                           ; $563c: $00
    nop                                           ; $563d: $00
    rrca                                          ; $563e: $0f
    rst $38                                       ; $563f: $ff
    rst $38                                       ; $5640: $ff
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    nop                                           ; $5644: $00
    nop                                           ; $5645: $00
    rrca                                          ; $5646: $0f
    rra                                           ; $5647: $1f
    rst $38                                       ; $5648: $ff
    ldh a, [rP1]                                  ; $5649: $f0 $00
    nop                                           ; $564b: $00
    nop                                           ; $564c: $00
    nop                                           ; $564d: $00
    rrca                                          ; $564e: $0f
    rra                                           ; $564f: $1f
    rst $38                                       ; $5650: $ff
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    rrca                                          ; $5656: $0f
    rra                                           ; $5657: $1f
    rra                                           ; $5658: $1f
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    nop                                           ; $565b: $00
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00
    rrca                                          ; $565e: $0f
    di                                            ; $565f: $f3
    pop af                                        ; $5660: $f1
    ldh a, [rP1]                                  ; $5661: $f0 $00
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    nop                                           ; $5666: $00
    rst $38                                       ; $5667: $ff
    rst $38                                       ; $5668: $ff
    ldh a, [rP1]                                  ; $5669: $f0 $00
    nop                                           ; $566b: $00
    nop                                           ; $566c: $00
    nop                                           ; $566d: $00
    nop                                           ; $566e: $00
    rst $38                                       ; $566f: $ff
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    ld b, a                                       ; $5674: $47
    daa                                           ; $5675: $27
    jr z, jr_044_56c0                             ; $5676: $28 $48

    ld d, [hl]                                    ; $5678: $56
    ld d, a                                       ; $5679: $57
    rst $38                                       ; $567a: $ff
    dec b                                         ; $567b: $05
    rst $08                                       ; $567c: $cf
    ld e, a                                       ; $567d: $5f
    and d                                         ; $567e: $a2
    ld d, [hl]                                    ; $567f: $56
    inc sp                                        ; $5680: $33
    ld d, a                                       ; $5681: $57
    cp l                                          ; $5682: $bd
    ld d, a                                       ; $5683: $57
    ld c, b                                       ; $5684: $48
    ld e, b                                       ; $5685: $58
    ret nc                                        ; $5686: $d0

    ld e, b                                       ; $5687: $58
    ld e, c                                       ; $5688: $59
    ld e, c                                       ; $5689: $59
    and $59                                       ; $568a: $e6 $59
    ld l, l                                       ; $568c: $6d
    ld e, d                                       ; $568d: $5a
    rst $38                                       ; $568e: $ff
    ld e, d                                       ; $568f: $5a
    adc b                                         ; $5690: $88
    ld e, e                                       ; $5691: $5b
    ld de, $965c                                  ; $5692: $11 $5c $96
    ld e, h                                       ; $5695: $5c
    jr nz, jr_044_56f5                            ; $5696: $20 $5d

    xor e                                         ; $5698: $ab
    ld e, l                                       ; $5699: $5d
    ld [hl], $5e                                  ; $569a: $36 $5e
    cp [hl]                                       ; $569c: $be
    ld e, [hl]                                    ; $569d: $5e
    ld c, c                                       ; $569e: $49
    ld e, a                                       ; $569f: $5f
    rst $08                                       ; $56a0: $cf
    ld e, a                                       ; $56a1: $5f
    nop                                           ; $56a2: $00
    nop                                           ; $56a3: $00
    nop                                           ; $56a4: $00
    rrca                                          ; $56a5: $0f
    ldh a, [rP1]                                  ; $56a6: $f0 $00
    nop                                           ; $56a8: $00
    nop                                           ; $56a9: $00
    nop                                           ; $56aa: $00
    nop                                           ; $56ab: $00
    nop                                           ; $56ac: $00
    rst $38                                       ; $56ad: $ff
    ldh a, [rP1]                                  ; $56ae: $f0 $00
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    nop                                           ; $56b2: $00
    nop                                           ; $56b3: $00
    nop                                           ; $56b4: $00
    rst $38                                       ; $56b5: $ff
    rst $38                                       ; $56b6: $ff
    nop                                           ; $56b7: $00
    nop                                           ; $56b8: $00
    nop                                           ; $56b9: $00
    nop                                           ; $56ba: $00
    nop                                           ; $56bb: $00
    nop                                           ; $56bc: $00
    rst $38                                       ; $56bd: $ff
    rst $38                                       ; $56be: $ff
    nop                                           ; $56bf: $00

jr_044_56c0:
    nop                                           ; $56c0: $00
    nop                                           ; $56c1: $00
    nop                                           ; $56c2: $00
    nop                                           ; $56c3: $00
    rst $38                                       ; $56c4: $ff
    rst $38                                       ; $56c5: $ff
    rst $38                                       ; $56c6: $ff
    ldh a, [rP1]                                  ; $56c7: $f0 $00
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    nop                                           ; $56cb: $00
    rst $38                                       ; $56cc: $ff
    rst $38                                       ; $56cd: $ff
    rst $38                                       ; $56ce: $ff
    nop                                           ; $56cf: $00
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    nop                                           ; $56d2: $00
    nop                                           ; $56d3: $00
    rst $38                                       ; $56d4: $ff
    ccf                                           ; $56d5: $3f
    rst $38                                       ; $56d6: $ff
    nop                                           ; $56d7: $00
    nop                                           ; $56d8: $00
    nop                                           ; $56d9: $00
    nop                                           ; $56da: $00
    nop                                           ; $56db: $00
    rrca                                          ; $56dc: $0f
    di                                            ; $56dd: $f3
    rst $38                                       ; $56de: $ff
    nop                                           ; $56df: $00
    nop                                           ; $56e0: $00
    nop                                           ; $56e1: $00
    nop                                           ; $56e2: $00
    nop                                           ; $56e3: $00
    rrca                                          ; $56e4: $0f
    di                                            ; $56e5: $f3
    rst $38                                       ; $56e6: $ff
    nop                                           ; $56e7: $00
    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    nop                                           ; $56eb: $00
    rrca                                          ; $56ec: $0f
    di                                            ; $56ed: $f3
    rst $38                                       ; $56ee: $ff
    nop                                           ; $56ef: $00
    nop                                           ; $56f0: $00
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    nop                                           ; $56f3: $00
    rrca                                          ; $56f4: $0f

jr_044_56f5:
    di                                            ; $56f5: $f3
    rst $38                                       ; $56f6: $ff
    nop                                           ; $56f7: $00
    nop                                           ; $56f8: $00
    nop                                           ; $56f9: $00
    nop                                           ; $56fa: $00
    nop                                           ; $56fb: $00
    rrca                                          ; $56fc: $0f
    rst $38                                       ; $56fd: $ff
    rra                                           ; $56fe: $1f
    nop                                           ; $56ff: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    pop af                                        ; $5705: $f1
    ldh a, [rP1]                                  ; $5706: $f0 $00
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    nop                                           ; $570a: $00
    nop                                           ; $570b: $00
    rrca                                          ; $570c: $0f
    rst $38                                       ; $570d: $ff
    rst $38                                       ; $570e: $ff
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    rrca                                          ; $5714: $0f
    rst $38                                       ; $5715: $ff
    rst $38                                       ; $5716: $ff
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    rst $38                                       ; $571d: $ff
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    ld b, c                                       ; $5722: $41
    rla                                           ; $5723: $17
    jr jr_044_574c                                ; $5724: $18 $26

    scf                                           ; $5726: $37
    jr c, @+$48                                   ; $5727: $38 $46

    ld c, c                                       ; $5729: $49
    ld d, l                                       ; $572a: $55
    ld d, a                                       ; $572b: $57
    ld e, b                                       ; $572c: $58
    ld l, c                                       ; $572d: $69
    ld [hl], l                                    ; $572e: $75
    halt                                          ; $572f: $76
    ld a, b                                       ; $5730: $78
    rst $38                                       ; $5731: $ff
    ld c, $00                                     ; $5732: $0e $00
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    rst $38                                       ; $5737: $ff
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    nop                                           ; $573a: $00
    nop                                           ; $573b: $00
    nop                                           ; $573c: $00
    nop                                           ; $573d: $00
    rrca                                          ; $573e: $0f
    rst $38                                       ; $573f: $ff
    ldh a, [rP1]                                  ; $5740: $f0 $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    rrca                                          ; $5746: $0f
    rst $38                                       ; $5747: $ff
    rra                                           ; $5748: $1f
    nop                                           ; $5749: $00
    nop                                           ; $574a: $00
    nop                                           ; $574b: $00

jr_044_574c:
    nop                                           ; $574c: $00
    nop                                           ; $574d: $00
    rrca                                          ; $574e: $0f
    rst $38                                       ; $574f: $ff
    rra                                           ; $5750: $1f
    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    rst $38                                       ; $5756: $ff
    rst $38                                       ; $5757: $ff
    ldh a, [rP1]                                  ; $5758: $f0 $00
    nop                                           ; $575a: $00
    nop                                           ; $575b: $00
    nop                                           ; $575c: $00
    rrca                                          ; $575d: $0f
    rst $38                                       ; $575e: $ff
    rst $38                                       ; $575f: $ff
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00
    rrca                                          ; $5765: $0f
    rst $38                                       ; $5766: $ff
    rst $38                                       ; $5767: $ff
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    nop                                           ; $576c: $00
    ld bc, $1fff                                  ; $576d: $01 $ff $1f
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    rrca                                          ; $5775: $0f
    rst $38                                       ; $5776: $ff
    rst $38                                       ; $5777: $ff
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    nop                                           ; $577a: $00
    nop                                           ; $577b: $00
    nop                                           ; $577c: $00
    rrca                                          ; $577d: $0f
    rst $38                                       ; $577e: $ff
    ldh a, [rP1]                                  ; $577f: $f0 $00
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    rrca                                          ; $5785: $0f
    rra                                           ; $5786: $1f
    rst $38                                       ; $5787: $ff
    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    nop                                           ; $578a: $00
    nop                                           ; $578b: $00
    nop                                           ; $578c: $00
    rrca                                          ; $578d: $0f
    rra                                           ; $578e: $1f
    rra                                           ; $578f: $1f
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    ld bc, $1f11                                  ; $5795: $01 $11 $1f
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    nop                                           ; $579a: $00
    nop                                           ; $579b: $00
    nop                                           ; $579c: $00
    rrca                                          ; $579d: $0f
    rst $38                                       ; $579e: $ff
    rra                                           ; $579f: $1f
    nop                                           ; $57a0: $00
    nop                                           ; $57a1: $00
    nop                                           ; $57a2: $00
    nop                                           ; $57a3: $00
    nop                                           ; $57a4: $00
    rrca                                          ; $57a5: $0f
    rst $38                                       ; $57a6: $ff
    ldh a, [rP1]                                  ; $57a7: $f0 $00
    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    nop                                           ; $57ab: $00
    nop                                           ; $57ac: $00
    nop                                           ; $57ad: $00
    rst $38                                       ; $57ae: $ff
    nop                                           ; $57af: $00
    nop                                           ; $57b0: $00
    nop                                           ; $57b1: $00
    nop                                           ; $57b2: $00
    dec sp                                        ; $57b3: $3b
    jr z, jr_044_57df                             ; $57b4: $28 $29

    ld c, b                                       ; $57b6: $48
    ld c, c                                       ; $57b7: $49
    ld h, a                                       ; $57b8: $67
    ld l, b                                       ; $57b9: $68
    ld l, c                                       ; $57ba: $69
    rst $38                                       ; $57bb: $ff
    rlca                                          ; $57bc: $07
    nop                                           ; $57bd: $00
    nop                                           ; $57be: $00
    rst $38                                       ; $57bf: $ff
    rrca                                          ; $57c0: $0f
    nop                                           ; $57c1: $00
    nop                                           ; $57c2: $00
    nop                                           ; $57c3: $00
    nop                                           ; $57c4: $00
    nop                                           ; $57c5: $00
    rst $38                                       ; $57c6: $ff
    rst $38                                       ; $57c7: $ff
    rst $38                                       ; $57c8: $ff
    ldh a, [rP1]                                  ; $57c9: $f0 $00
    nop                                           ; $57cb: $00
    nop                                           ; $57cc: $00
    nop                                           ; $57cd: $00
    rst $38                                       ; $57ce: $ff
    rst $38                                       ; $57cf: $ff
    rra                                           ; $57d0: $1f
    rra                                           ; $57d1: $1f
    nop                                           ; $57d2: $00
    nop                                           ; $57d3: $00
    nop                                           ; $57d4: $00
    nop                                           ; $57d5: $00
    rst $38                                       ; $57d6: $ff
    rst $38                                       ; $57d7: $ff
    rst $38                                       ; $57d8: $ff
    rst $38                                       ; $57d9: $ff
    ldh a, [rP1]                                  ; $57da: $f0 $00
    nop                                           ; $57dc: $00
    nop                                           ; $57dd: $00
    nop                                           ; $57de: $00

jr_044_57df:
    rrca                                          ; $57df: $0f
    rst $38                                       ; $57e0: $ff
    pop af                                        ; $57e1: $f1
    ldh a, [rP1]                                  ; $57e2: $f0 $00
    nop                                           ; $57e4: $00
    nop                                           ; $57e5: $00
    nop                                           ; $57e6: $00
    nop                                           ; $57e7: $00
    rst $38                                       ; $57e8: $ff
    rst $38                                       ; $57e9: $ff
    ldh a, [rP1]                                  ; $57ea: $f0 $00
    nop                                           ; $57ec: $00
    nop                                           ; $57ed: $00
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    rst $38                                       ; $57f0: $ff
    rra                                           ; $57f1: $1f
    nop                                           ; $57f2: $00
    nop                                           ; $57f3: $00
    nop                                           ; $57f4: $00
    nop                                           ; $57f5: $00
    nop                                           ; $57f6: $00
    nop                                           ; $57f7: $00
    rst $38                                       ; $57f8: $ff
    rst $38                                       ; $57f9: $ff
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    nop                                           ; $57fc: $00
    nop                                           ; $57fd: $00
    nop                                           ; $57fe: $00
    nop                                           ; $57ff: $00
    rst $38                                       ; $5800: $ff
    rst $38                                       ; $5801: $ff
    ldh a, [rP1]                                  ; $5802: $f0 $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    rrca                                          ; $5807: $0f
    rst $38                                       ; $5808: $ff
    pop af                                        ; $5809: $f1
    ldh a, [rP1]                                  ; $580a: $f0 $00
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    nop                                           ; $580e: $00
    rrca                                          ; $580f: $0f
    rra                                           ; $5810: $1f
    rst $38                                       ; $5811: $ff
    rst $38                                       ; $5812: $ff
    ldh a, [rP1]                                  ; $5813: $f0 $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    rst $38                                       ; $5818: $ff
    rst $38                                       ; $5819: $ff
    pop af                                        ; $581a: $f1
    ldh a, [rP1]                                  ; $581b: $f0 $00
    nop                                           ; $581d: $00
    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    rst $38                                       ; $5820: $ff
    rra                                           ; $5821: $1f
    rst $38                                       ; $5822: $ff
    rst $38                                       ; $5823: $ff
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    ldh a, [rIE]                                  ; $5829: $f0 $ff
    rst $38                                       ; $582b: $ff
    ldh a, [rP1]                                  ; $582c: $f0 $00
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    rst $38                                       ; $5832: $ff
    rst $38                                       ; $5833: $ff
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    rrca                                          ; $583a: $0f
    ldh a, [rP1]                                  ; $583b: $f0 $00
    ld d, h                                       ; $583d: $54
    inc hl                                        ; $583e: $23
    inc h                                         ; $583f: $24
    scf                                           ; $5840: $37
    jr c, jr_044_5889                             ; $5841: $38 $46

    ld d, a                                       ; $5843: $57
    ld e, b                                       ; $5844: $58
    ld [hl], a                                    ; $5845: $77
    rst $38                                       ; $5846: $ff
    ld [$0000], sp                                ; $5847: $08 $00 $00
    nop                                           ; $584a: $00
    nop                                           ; $584b: $00
    nop                                           ; $584c: $00
    nop                                           ; $584d: $00
    nop                                           ; $584e: $00
    nop                                           ; $584f: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00

Jump_044_5857:
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    rrca                                          ; $5863: $0f
    rst $38                                       ; $5864: $ff
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    rrca                                          ; $586a: $0f
    rst $38                                       ; $586b: $ff
    pop af                                        ; $586c: $f1
    ldh a, [rP1]                                  ; $586d: $f0 $00
    nop                                           ; $586f: $00
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    rrca                                          ; $5872: $0f
    rst $38                                       ; $5873: $ff
    rst $38                                       ; $5874: $ff
    rra                                           ; $5875: $1f
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587a: $00
    rst $38                                       ; $587b: $ff
    pop af                                        ; $587c: $f1
    rst $38                                       ; $587d: $ff
    nop                                           ; $587e: $00
    nop                                           ; $587f: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    rst $38                                       ; $5883: $ff
    rst $38                                       ; $5884: $ff
    ldh a, [rP1]                                  ; $5885: $f0 $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00

jr_044_5889:
    nop                                           ; $5889: $00
    rrca                                          ; $588a: $0f
    rst $38                                       ; $588b: $ff
    rst $38                                       ; $588c: $ff
    ldh a, [rP1]                                  ; $588d: $f0 $00
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    rrca                                          ; $5892: $0f
    di                                            ; $5893: $f3
    ccf                                           ; $5894: $3f
    rst $38                                       ; $5895: $ff
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    rrca                                          ; $589a: $0f
    rra                                           ; $589b: $1f
    pop af                                        ; $589c: $f1
    rst $38                                       ; $589d: $ff
    nop                                           ; $589e: $00
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    nop                                           ; $58a1: $00
    rrca                                          ; $58a2: $0f
    pop af                                        ; $58a3: $f1
    rra                                           ; $58a4: $1f
    ldh a, [rP1]                                  ; $58a5: $f0 $00
    nop                                           ; $58a7: $00
    nop                                           ; $58a8: $00
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00
    rst $38                                       ; $58ab: $ff
    rst $38                                       ; $58ac: $ff
    nop                                           ; $58ad: $00
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    nop                                           ; $58b2: $00
    rrca                                          ; $58b3: $0f
    ldh a, [rP1]                                  ; $58b4: $f0 $00
    nop                                           ; $58b6: $00
    nop                                           ; $58b7: $00
    nop                                           ; $58b8: $00
    nop                                           ; $58b9: $00
    nop                                           ; $58ba: $00
    nop                                           ; $58bb: $00
    nop                                           ; $58bc: $00
    nop                                           ; $58bd: $00
    nop                                           ; $58be: $00
    nop                                           ; $58bf: $00
    nop                                           ; $58c0: $00
    nop                                           ; $58c1: $00
    nop                                           ; $58c2: $00
    nop                                           ; $58c3: $00
    nop                                           ; $58c4: $00
    nop                                           ; $58c5: $00
    nop                                           ; $58c6: $00
    nop                                           ; $58c7: $00
    ld [hl-], a                                   ; $58c8: $32
    ld b, a                                       ; $58c9: $47
    ld c, b                                       ; $58ca: $48
    ld d, [hl]                                    ; $58cb: $56
    ld h, a                                       ; $58cc: $67
    ld l, b                                       ; $58cd: $68
    rst $38                                       ; $58ce: $ff
    dec b                                         ; $58cf: $05
    nop                                           ; $58d0: $00
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    nop                                           ; $58d3: $00
    rst $38                                       ; $58d4: $ff
    ldh a, [rP1]                                  ; $58d5: $f0 $00
    nop                                           ; $58d7: $00
    nop                                           ; $58d8: $00
    nop                                           ; $58d9: $00
    nop                                           ; $58da: $00
    rst $38                                       ; $58db: $ff
    rst $38                                       ; $58dc: $ff
    rst $38                                       ; $58dd: $ff
    nop                                           ; $58de: $00
    nop                                           ; $58df: $00
    nop                                           ; $58e0: $00
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00
    rst $38                                       ; $58e3: $ff
    rst $38                                       ; $58e4: $ff
    rst $38                                       ; $58e5: $ff
    nop                                           ; $58e6: $00
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    nop                                           ; $58e9: $00
    rst $38                                       ; $58ea: $ff
    rst $38                                       ; $58eb: $ff
    rst $38                                       ; $58ec: $ff
    ldh a, [rP1]                                  ; $58ed: $f0 $00
    nop                                           ; $58ef: $00
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    pop af                                        ; $58f2: $f1
    rst $38                                       ; $58f3: $ff
    rst $38                                       ; $58f4: $ff
    nop                                           ; $58f5: $00
    nop                                           ; $58f6: $00
    nop                                           ; $58f7: $00
    nop                                           ; $58f8: $00
    nop                                           ; $58f9: $00
    pop af                                        ; $58fa: $f1
    rst $38                                       ; $58fb: $ff
    ldh a, [rP1]                                  ; $58fc: $f0 $00
    nop                                           ; $58fe: $00
    nop                                           ; $58ff: $00
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    rst $38                                       ; $5902: $ff
    pop af                                        ; $5903: $f1
    ldh a, [rP1]                                  ; $5904: $f0 $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    rst $38                                       ; $590a: $ff
    rst $38                                       ; $590b: $ff
    ldh a, [rP1]                                  ; $590c: $f0 $00
    nop                                           ; $590e: $00
    nop                                           ; $590f: $00
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    rst $38                                       ; $5912: $ff
    rst $38                                       ; $5913: $ff
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    rst $38                                       ; $591a: $ff
    ccf                                           ; $591b: $3f
    ldh a, [rP1]                                  ; $591c: $f0 $00
    nop                                           ; $591e: $00
    nop                                           ; $591f: $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    rrca                                          ; $5922: $0f
    pop af                                        ; $5923: $f1
    ldh a, [rP1]                                  ; $5924: $f0 $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    rrca                                          ; $592a: $0f
    pop af                                        ; $592b: $f1
    rst $38                                       ; $592c: $ff
    nop                                           ; $592d: $00
    nop                                           ; $592e: $00
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    rst $38                                       ; $5933: $ff
    rst $38                                       ; $5934: $ff
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    di                                            ; $593b: $f3
    ccf                                           ; $593c: $3f
    nop                                           ; $593d: $00
    nop                                           ; $593e: $00
    nop                                           ; $593f: $00
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    rst $38                                       ; $5943: $ff
    rst $38                                       ; $5944: $ff
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    nop                                           ; $594a: $00
    nop                                           ; $594b: $00
    nop                                           ; $594c: $00
    nop                                           ; $594d: $00
    nop                                           ; $594e: $00
    nop                                           ; $594f: $00
    ld b, c                                       ; $5950: $41
    add hl, de                                    ; $5951: $19
    ld a, [de]                                    ; $5952: $1a
    daa                                           ; $5953: $27
    jr z, jr_044_599c                             ; $5954: $28 $46

    ld h, l                                       ; $5956: $65
    rst $38                                       ; $5957: $ff
    ld b, $00                                     ; $5958: $06 $00
    nop                                           ; $595a: $00
    nop                                           ; $595b: $00
    nop                                           ; $595c: $00
    nop                                           ; $595d: $00
    nop                                           ; $595e: $00
    nop                                           ; $595f: $00
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    rrca                                          ; $5963: $0f
    ldh a, [rP1]                                  ; $5964: $f0 $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596a: $00
    rrca                                          ; $596b: $0f
    rst $38                                       ; $596c: $ff
    rst $38                                       ; $596d: $ff
    nop                                           ; $596e: $00
    nop                                           ; $596f: $00
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    rrca                                          ; $5973: $0f
    rst $38                                       ; $5974: $ff
    rst $38                                       ; $5975: $ff
    ldh a, [rP1]                                  ; $5976: $f0 $00
    nop                                           ; $5978: $00
    nop                                           ; $5979: $00
    nop                                           ; $597a: $00
    rrca                                          ; $597b: $0f
    rst $38                                       ; $597c: $ff
    rst $38                                       ; $597d: $ff
    ldh a, [rP1]                                  ; $597e: $f0 $00
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    rrca                                          ; $5984: $0f
    inc sp                                        ; $5985: $33
    ldh a, [rP1]                                  ; $5986: $f0 $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    nop                                           ; $598b: $00
    rrca                                          ; $598c: $0f
    rst $38                                       ; $598d: $ff
    ldh a, [rP1]                                  ; $598e: $f0 $00
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    rrca                                          ; $5994: $0f
    ccf                                           ; $5995: $3f
    ldh a, [rP1]                                  ; $5996: $f0 $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599a: $00
    rrca                                          ; $599b: $0f

jr_044_599c:
    rst $38                                       ; $599c: $ff
    ccf                                           ; $599d: $3f
    ldh a, [rP1]                                  ; $599e: $f0 $00
    nop                                           ; $59a0: $00
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    rrca                                          ; $59a3: $0f
    rra                                           ; $59a4: $1f
    rst $38                                       ; $59a5: $ff
    ldh a, [rP1]                                  ; $59a6: $f0 $00
    nop                                           ; $59a8: $00
    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    rrca                                          ; $59ab: $0f
    rst $38                                       ; $59ac: $ff
    rst $38                                       ; $59ad: $ff
    nop                                           ; $59ae: $00
    nop                                           ; $59af: $00
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    nop                                           ; $59b2: $00
    nop                                           ; $59b3: $00
    rst $38                                       ; $59b4: $ff
    rra                                           ; $59b5: $1f
    nop                                           ; $59b6: $00
    nop                                           ; $59b7: $00
    nop                                           ; $59b8: $00
    nop                                           ; $59b9: $00
    nop                                           ; $59ba: $00
    rrca                                          ; $59bb: $0f
    rst $38                                       ; $59bc: $ff
    rra                                           ; $59bd: $1f
    nop                                           ; $59be: $00
    nop                                           ; $59bf: $00
    nop                                           ; $59c0: $00
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00
    rrca                                          ; $59c3: $0f
    di                                            ; $59c4: $f3
    rst $38                                       ; $59c5: $ff
    nop                                           ; $59c6: $00
    nop                                           ; $59c7: $00
    nop                                           ; $59c8: $00
    nop                                           ; $59c9: $00
    nop                                           ; $59ca: $00
    rrca                                          ; $59cb: $0f
    rst $38                                       ; $59cc: $ff
    ldh a, [rP1]                                  ; $59cd: $f0 $00
    nop                                           ; $59cf: $00
    nop                                           ; $59d0: $00
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00
    nop                                           ; $59d3: $00
    rst $38                                       ; $59d4: $ff
    nop                                           ; $59d5: $00
    nop                                           ; $59d6: $00
    nop                                           ; $59d7: $00
    nop                                           ; $59d8: $00
    inc a                                         ; $59d9: $3c
    dec d                                         ; $59da: $15
    ld d, $36                                     ; $59db: $16 $36
    scf                                           ; $59dd: $37
    ld c, c                                       ; $59de: $49
    ld c, d                                       ; $59df: $4a
    ld d, a                                       ; $59e0: $57
    ld l, b                                       ; $59e1: $68
    ld l, c                                       ; $59e2: $69
    ld l, d                                       ; $59e3: $6a
    rst $38                                       ; $59e4: $ff
    ld a, [bc]                                    ; $59e5: $0a
    nop                                           ; $59e6: $00
    nop                                           ; $59e7: $00
    nop                                           ; $59e8: $00
    rrca                                          ; $59e9: $0f
    rst $38                                       ; $59ea: $ff
    nop                                           ; $59eb: $00
    nop                                           ; $59ec: $00
    nop                                           ; $59ed: $00
    nop                                           ; $59ee: $00
    nop                                           ; $59ef: $00
    nop                                           ; $59f0: $00
    rrca                                          ; $59f1: $0f
    rst $38                                       ; $59f2: $ff
    nop                                           ; $59f3: $00
    nop                                           ; $59f4: $00
    nop                                           ; $59f5: $00
    nop                                           ; $59f6: $00
    nop                                           ; $59f7: $00
    nop                                           ; $59f8: $00
    rrca                                          ; $59f9: $0f
    rst $38                                       ; $59fa: $ff
    ldh a, [rP1]                                  ; $59fb: $f0 $00
    nop                                           ; $59fd: $00
    nop                                           ; $59fe: $00
    nop                                           ; $59ff: $00
    nop                                           ; $5a00: $00
    rst $38                                       ; $5a01: $ff
    pop af                                        ; $5a02: $f1
    ldh a, [rP1]                                  ; $5a03: $f0 $00
    nop                                           ; $5a05: $00
    nop                                           ; $5a06: $00
    nop                                           ; $5a07: $00
    rrca                                          ; $5a08: $0f
    rst $38                                       ; $5a09: $ff
    pop af                                        ; $5a0a: $f1
    ldh a, [rP1]                                  ; $5a0b: $f0 $00
    nop                                           ; $5a0d: $00
    nop                                           ; $5a0e: $00
    nop                                           ; $5a0f: $00
    rrca                                          ; $5a10: $0f
    rst $38                                       ; $5a11: $ff
    rst $38                                       ; $5a12: $ff
    nop                                           ; $5a13: $00
    nop                                           ; $5a14: $00
    nop                                           ; $5a15: $00
    nop                                           ; $5a16: $00
    nop                                           ; $5a17: $00
    rrca                                          ; $5a18: $0f
    rst $38                                       ; $5a19: $ff
    ldh a, [rP1]                                  ; $5a1a: $f0 $00
    nop                                           ; $5a1c: $00
    nop                                           ; $5a1d: $00
    nop                                           ; $5a1e: $00
    nop                                           ; $5a1f: $00
    rrca                                          ; $5a20: $0f
    di                                            ; $5a21: $f3
    rst $38                                       ; $5a22: $ff
    ldh a, [rP1]                                  ; $5a23: $f0 $00
    nop                                           ; $5a25: $00
    nop                                           ; $5a26: $00
    nop                                           ; $5a27: $00
    rrca                                          ; $5a28: $0f
    di                                            ; $5a29: $f3
    pop af                                        ; $5a2a: $f1
    ldh a, [rP1]                                  ; $5a2b: $f0 $00
    nop                                           ; $5a2d: $00
    nop                                           ; $5a2e: $00
    nop                                           ; $5a2f: $00
    nop                                           ; $5a30: $00
    rra                                           ; $5a31: $1f
    pop af                                        ; $5a32: $f1
    ldh a, [rP1]                                  ; $5a33: $f0 $00
    nop                                           ; $5a35: $00
    nop                                           ; $5a36: $00
    nop                                           ; $5a37: $00
    nop                                           ; $5a38: $00
    rst $38                                       ; $5a39: $ff
    ccf                                           ; $5a3a: $3f
    ldh a, [rP1]                                  ; $5a3b: $f0 $00
    nop                                           ; $5a3d: $00
    nop                                           ; $5a3e: $00
    nop                                           ; $5a3f: $00
    nop                                           ; $5a40: $00
    pop af                                        ; $5a41: $f1
    pop af                                        ; $5a42: $f1
    ldh a, [rP1]                                  ; $5a43: $f0 $00
    nop                                           ; $5a45: $00
    nop                                           ; $5a46: $00
    nop                                           ; $5a47: $00
    nop                                           ; $5a48: $00
    pop af                                        ; $5a49: $f1
    rra                                           ; $5a4a: $1f
    ldh a, [rP1]                                  ; $5a4b: $f0 $00
    nop                                           ; $5a4d: $00
    nop                                           ; $5a4e: $00
    nop                                           ; $5a4f: $00
    nop                                           ; $5a50: $00
    rst $38                                       ; $5a51: $ff
    rst $38                                       ; $5a52: $ff
    ldh a, [rP1]                                  ; $5a53: $f0 $00
    nop                                           ; $5a55: $00
    nop                                           ; $5a56: $00
    nop                                           ; $5a57: $00
    nop                                           ; $5a58: $00
    rst $38                                       ; $5a59: $ff
    rst $38                                       ; $5a5a: $ff
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    nop                                           ; $5a60: $00
    rrca                                          ; $5a61: $0f
    rst $38                                       ; $5a62: $ff
    nop                                           ; $5a63: $00
    nop                                           ; $5a64: $00
    nop                                           ; $5a65: $00
    ld a, $17                                     ; $5a66: $3e $17
    jr jr_044_5a83                                ; $5a68: $18 $19

    ld a, b                                       ; $5a6a: $78
    rst $38                                       ; $5a6b: $ff
    inc b                                         ; $5a6c: $04
    nop                                           ; $5a6d: $00
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    nop                                           ; $5a70: $00
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00
    nop                                           ; $5a73: $00
    nop                                           ; $5a74: $00
    nop                                           ; $5a75: $00
    nop                                           ; $5a76: $00
    nop                                           ; $5a77: $00
    nop                                           ; $5a78: $00
    nop                                           ; $5a79: $00
    nop                                           ; $5a7a: $00
    nop                                           ; $5a7b: $00
    nop                                           ; $5a7c: $00
    nop                                           ; $5a7d: $00
    nop                                           ; $5a7e: $00
    nop                                           ; $5a7f: $00
    nop                                           ; $5a80: $00
    ldh a, [rP1]                                  ; $5a81: $f0 $00

jr_044_5a83:
    nop                                           ; $5a83: $00
    nop                                           ; $5a84: $00
    nop                                           ; $5a85: $00
    nop                                           ; $5a86: $00
    nop                                           ; $5a87: $00
    rst $38                                       ; $5a88: $ff
    rst $38                                       ; $5a89: $ff
    nop                                           ; $5a8a: $00
    nop                                           ; $5a8b: $00
    nop                                           ; $5a8c: $00
    nop                                           ; $5a8d: $00
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    rst $38                                       ; $5a90: $ff
    rst $38                                       ; $5a91: $ff
    nop                                           ; $5a92: $00
    nop                                           ; $5a93: $00
    nop                                           ; $5a94: $00
    nop                                           ; $5a95: $00
    nop                                           ; $5a96: $00
    rrca                                          ; $5a97: $0f
    rst $38                                       ; $5a98: $ff
    pop af                                        ; $5a99: $f1
    ldh a, [rP1]                                  ; $5a9a: $f0 $00
    nop                                           ; $5a9c: $00
    nop                                           ; $5a9d: $00
    nop                                           ; $5a9e: $00
    rrca                                          ; $5a9f: $0f
    rst $38                                       ; $5aa0: $ff
    rst $38                                       ; $5aa1: $ff
    rst $38                                       ; $5aa2: $ff
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00
    nop                                           ; $5aa5: $00
    nop                                           ; $5aa6: $00
    rrca                                          ; $5aa7: $0f
    rst $38                                       ; $5aa8: $ff
    rst $38                                       ; $5aa9: $ff
    rst $38                                       ; $5aaa: $ff
    nop                                           ; $5aab: $00
    nop                                           ; $5aac: $00
    nop                                           ; $5aad: $00
    nop                                           ; $5aae: $00
    rrca                                          ; $5aaf: $0f
    ldh a, [rIE]                                  ; $5ab0: $f0 $ff
    ldh a, [rP1]                                  ; $5ab2: $f0 $00
    nop                                           ; $5ab4: $00
    nop                                           ; $5ab5: $00
    nop                                           ; $5ab6: $00
    rrca                                          ; $5ab7: $0f
    rst $38                                       ; $5ab8: $ff
    rst $38                                       ; $5ab9: $ff
    nop                                           ; $5aba: $00
    nop                                           ; $5abb: $00
    nop                                           ; $5abc: $00
    nop                                           ; $5abd: $00
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    rst $38                                       ; $5ac0: $ff
    rst $38                                       ; $5ac1: $ff
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    nop                                           ; $5ac4: $00
    nop                                           ; $5ac5: $00
    nop                                           ; $5ac6: $00
    nop                                           ; $5ac7: $00
    rst $38                                       ; $5ac8: $ff
    ldh a, [rP1]                                  ; $5ac9: $f0 $00
    nop                                           ; $5acb: $00
    nop                                           ; $5acc: $00
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    rrca                                          ; $5ad0: $0f
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
    nop                                           ; $5ae5: $00
    nop                                           ; $5ae6: $00
    nop                                           ; $5ae7: $00
    nop                                           ; $5ae8: $00
    nop                                           ; $5ae9: $00
    nop                                           ; $5aea: $00
    nop                                           ; $5aeb: $00
    nop                                           ; $5aec: $00
    ld l, $37                                     ; $5aed: $2e $37
    jr c, jr_044_5b48                             ; $5aef: $38 $57

    ld e, b                                       ; $5af1: $58
    ld h, l                                       ; $5af2: $65
    ld h, [hl]                                    ; $5af3: $66
    ld l, c                                       ; $5af4: $69
    ld l, d                                       ; $5af5: $6a
    ld [hl], a                                    ; $5af6: $77
    ld a, b                                       ; $5af7: $78
    add l                                         ; $5af8: $85
    add [hl]                                      ; $5af9: $86
    adc c                                         ; $5afa: $89
    adc d                                         ; $5afb: $8a
    sub a                                         ; $5afc: $97
    rst $38                                       ; $5afd: $ff
    rrca                                          ; $5afe: $0f
    nop                                           ; $5aff: $00
    nop                                           ; $5b00: $00
    nop                                           ; $5b01: $00
    nop                                           ; $5b02: $00
    rst $38                                       ; $5b03: $ff
    nop                                           ; $5b04: $00
    nop                                           ; $5b05: $00
    nop                                           ; $5b06: $00
    nop                                           ; $5b07: $00
    nop                                           ; $5b08: $00
    rrca                                          ; $5b09: $0f
    rst $38                                       ; $5b0a: $ff
    pop af                                        ; $5b0b: $f1
    ldh a, [rP1]                                  ; $5b0c: $f0 $00
    nop                                           ; $5b0e: $00
    nop                                           ; $5b0f: $00
    nop                                           ; $5b10: $00
    pop af                                        ; $5b11: $f1
    rra                                           ; $5b12: $1f
    rst $38                                       ; $5b13: $ff
    ldh a, [rP1]                                  ; $5b14: $f0 $00
    nop                                           ; $5b16: $00
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    rst $38                                       ; $5b19: $ff
    rst $38                                       ; $5b1a: $ff
    rst $38                                       ; $5b1b: $ff
    rst $38                                       ; $5b1c: $ff
    ldh a, [rP1]                                  ; $5b1d: $f0 $00
    nop                                           ; $5b1f: $00
    rrca                                          ; $5b20: $0f
    di                                            ; $5b21: $f3
    rst $38                                       ; $5b22: $ff
    ld [hl+], a                                   ; $5b23: $22
    cpl                                           ; $5b24: $2f
    ldh a, [rP1]                                  ; $5b25: $f0 $00
    nop                                           ; $5b27: $00
    rrca                                          ; $5b28: $0f
    di                                            ; $5b29: $f3
    ld a, [c]                                     ; $5b2a: $f2
    rst $38                                       ; $5b2b: $ff
    cpl                                           ; $5b2c: $2f
    ldh a, [rP1]                                  ; $5b2d: $f0 $00
    nop                                           ; $5b2f: $00
    rrca                                          ; $5b30: $0f
    di                                            ; $5b31: $f3
    ld a, [c]                                     ; $5b32: $f2
    rst $38                                       ; $5b33: $ff
    rst $38                                       ; $5b34: $ff
    ldh a, [rP1]                                  ; $5b35: $f0 $00
    nop                                           ; $5b37: $00
    nop                                           ; $5b38: $00
    rst $38                                       ; $5b39: $ff
    ld a, [c]                                     ; $5b3a: $f2
    rst $38                                       ; $5b3b: $ff
    rst $38                                       ; $5b3c: $ff
    ldh a, [rP1]                                  ; $5b3d: $f0 $00
    nop                                           ; $5b3f: $00
    nop                                           ; $5b40: $00
    rst $38                                       ; $5b41: $ff
    rst $38                                       ; $5b42: $ff
    ld [hl+], a                                   ; $5b43: $22
    rst $38                                       ; $5b44: $ff
    ldh a, [rP1]                                  ; $5b45: $f0 $00
    nop                                           ; $5b47: $00

jr_044_5b48:
    nop                                           ; $5b48: $00
    rst $38                                       ; $5b49: $ff
    rst $38                                       ; $5b4a: $ff
    ld [hl+], a                                   ; $5b4b: $22
    cpl                                           ; $5b4c: $2f
    ldh a, [rP1]                                  ; $5b4d: $f0 $00
    nop                                           ; $5b4f: $00
    nop                                           ; $5b50: $00
    rst $38                                       ; $5b51: $ff
    ccf                                           ; $5b52: $3f
    rst $38                                       ; $5b53: $ff
    rst $38                                       ; $5b54: $ff
    ldh a, [rP1]                                  ; $5b55: $f0 $00
    nop                                           ; $5b57: $00
    nop                                           ; $5b58: $00
    rst $38                                       ; $5b59: $ff
    rst $38                                       ; $5b5a: $ff
    rst $38                                       ; $5b5b: $ff
    rst $38                                       ; $5b5c: $ff
    nop                                           ; $5b5d: $00
    nop                                           ; $5b5e: $00
    nop                                           ; $5b5f: $00
    nop                                           ; $5b60: $00
    rrca                                          ; $5b61: $0f
    rst $38                                       ; $5b62: $ff
    rst $38                                       ; $5b63: $ff
    rst $38                                       ; $5b64: $ff
    nop                                           ; $5b65: $00
    nop                                           ; $5b66: $00
    nop                                           ; $5b67: $00
    nop                                           ; $5b68: $00
    nop                                           ; $5b69: $00
    ld bc, $ff1f                                  ; $5b6a: $01 $1f $ff
    ldh a, [rP1]                                  ; $5b6d: $f0 $00
    nop                                           ; $5b6f: $00
    nop                                           ; $5b70: $00
    nop                                           ; $5b71: $00
    rrca                                          ; $5b72: $0f
    rst $38                                       ; $5b73: $ff
    ccf                                           ; $5b74: $3f
    ldh a, [rP1]                                  ; $5b75: $f0 $00
    nop                                           ; $5b77: $00
    nop                                           ; $5b78: $00
    nop                                           ; $5b79: $00
    nop                                           ; $5b7a: $00
    rrca                                          ; $5b7b: $0f
    rst $38                                       ; $5b7c: $ff
    nop                                           ; $5b7d: $00
    nop                                           ; $5b7e: $00
    ld h, d                                       ; $5b7f: $62
    daa                                           ; $5b80: $27
    jr z, jr_044_5bac                             ; $5b81: $28 $29

    ld e, b                                       ; $5b83: $58
    ld e, c                                       ; $5b84: $59
    ld a, c                                       ; $5b85: $79
    rst $38                                       ; $5b86: $ff
    ld b, $00                                     ; $5b87: $06 $00
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    rst $38                                       ; $5b8b: $ff
    nop                                           ; $5b8c: $00
    nop                                           ; $5b8d: $00
    nop                                           ; $5b8e: $00
    nop                                           ; $5b8f: $00
    nop                                           ; $5b90: $00
    nop                                           ; $5b91: $00
    rrca                                          ; $5b92: $0f
    pop af                                        ; $5b93: $f1
    ldh a, [rP1]                                  ; $5b94: $f0 $00
    nop                                           ; $5b96: $00
    nop                                           ; $5b97: $00
    nop                                           ; $5b98: $00
    nop                                           ; $5b99: $00
    pop af                                        ; $5b9a: $f1
    rst $38                                       ; $5b9b: $ff
    ldh a, [rP1]                                  ; $5b9c: $f0 $00
    nop                                           ; $5b9e: $00
    nop                                           ; $5b9f: $00
    nop                                           ; $5ba0: $00
    nop                                           ; $5ba1: $00
    rrca                                          ; $5ba2: $0f
    rst $38                                       ; $5ba3: $ff
    ldh a, [rP1]                                  ; $5ba4: $f0 $00
    nop                                           ; $5ba6: $00
    nop                                           ; $5ba7: $00
    nop                                           ; $5ba8: $00
    nop                                           ; $5ba9: $00
    rst $38                                       ; $5baa: $ff
    rst $38                                       ; $5bab: $ff

jr_044_5bac:
    rst $38                                       ; $5bac: $ff
    nop                                           ; $5bad: $00
    nop                                           ; $5bae: $00
    nop                                           ; $5baf: $00
    nop                                           ; $5bb0: $00
    rrca                                          ; $5bb1: $0f
    rst $38                                       ; $5bb2: $ff
    rst $38                                       ; $5bb3: $ff
    rst $38                                       ; $5bb4: $ff
    nop                                           ; $5bb5: $00
    nop                                           ; $5bb6: $00
    nop                                           ; $5bb7: $00
    nop                                           ; $5bb8: $00
    rrca                                          ; $5bb9: $0f
    rst $38                                       ; $5bba: $ff
    di                                            ; $5bbb: $f3
    rst $38                                       ; $5bbc: $ff
    nop                                           ; $5bbd: $00
    nop                                           ; $5bbe: $00
    nop                                           ; $5bbf: $00
    nop                                           ; $5bc0: $00
    nop                                           ; $5bc1: $00
    rrca                                          ; $5bc2: $0f
    rst $38                                       ; $5bc3: $ff
    rst $38                                       ; $5bc4: $ff
    nop                                           ; $5bc5: $00
    nop                                           ; $5bc6: $00
    nop                                           ; $5bc7: $00
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00
    pop af                                        ; $5bca: $f1
    rst $38                                       ; $5bcb: $ff
    ldh a, [rP1]                                  ; $5bcc: $f0 $00
    nop                                           ; $5bce: $00
    nop                                           ; $5bcf: $00
    nop                                           ; $5bd0: $00
    nop                                           ; $5bd1: $00
    rst $38                                       ; $5bd2: $ff
    rst $38                                       ; $5bd3: $ff
    rst $38                                       ; $5bd4: $ff
    nop                                           ; $5bd5: $00
    nop                                           ; $5bd6: $00
    nop                                           ; $5bd7: $00
    nop                                           ; $5bd8: $00
    nop                                           ; $5bd9: $00
    rrca                                          ; $5bda: $0f
    rst $38                                       ; $5bdb: $ff
    ldh a, [rP1]                                  ; $5bdc: $f0 $00
    nop                                           ; $5bde: $00
    nop                                           ; $5bdf: $00
    nop                                           ; $5be0: $00
    nop                                           ; $5be1: $00
    rrca                                          ; $5be2: $0f
    rst $38                                       ; $5be3: $ff
    ldh a, [rP1]                                  ; $5be4: $f0 $00
    nop                                           ; $5be6: $00
    nop                                           ; $5be7: $00
    nop                                           ; $5be8: $00
    nop                                           ; $5be9: $00
    rrca                                          ; $5bea: $0f
    rst $38                                       ; $5beb: $ff
    ldh a, [rP1]                                  ; $5bec: $f0 $00
    nop                                           ; $5bee: $00
    nop                                           ; $5bef: $00
    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    rrca                                          ; $5bf2: $0f
    rst $38                                       ; $5bf3: $ff
    ldh a, [rP1]                                  ; $5bf4: $f0 $00
    nop                                           ; $5bf6: $00
    nop                                           ; $5bf7: $00
    nop                                           ; $5bf8: $00
    nop                                           ; $5bf9: $00
    rrca                                          ; $5bfa: $0f
    di                                            ; $5bfb: $f3
    ldh a, [rP1]                                  ; $5bfc: $f0 $00
    nop                                           ; $5bfe: $00
    nop                                           ; $5bff: $00
    nop                                           ; $5c00: $00
    nop                                           ; $5c01: $00
    rrca                                          ; $5c02: $0f
    rst $38                                       ; $5c03: $ff
    ldh a, [rP1]                                  ; $5c04: $f0 $00
    nop                                           ; $5c06: $00
    nop                                           ; $5c07: $00
    ld b, [hl]                                    ; $5c08: $46
    ld d, $27                                     ; $5c09: $16 $27
    ld [hl], $57                                  ; $5c0b: $36 $57
    ld e, b                                       ; $5c0d: $58
    ld h, [hl]                                    ; $5c0e: $66
    rst $38                                       ; $5c0f: $ff
    ld b, $00                                     ; $5c10: $06 $00
    nop                                           ; $5c12: $00
    nop                                           ; $5c13: $00
    nop                                           ; $5c14: $00
    nop                                           ; $5c15: $00
    nop                                           ; $5c16: $00
    nop                                           ; $5c17: $00
    nop                                           ; $5c18: $00
    nop                                           ; $5c19: $00
    nop                                           ; $5c1a: $00
    nop                                           ; $5c1b: $00
    nop                                           ; $5c1c: $00
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    nop                                           ; $5c20: $00
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    nop                                           ; $5c23: $00
    nop                                           ; $5c24: $00
    nop                                           ; $5c25: $00
    nop                                           ; $5c26: $00
    nop                                           ; $5c27: $00
    nop                                           ; $5c28: $00
    nop                                           ; $5c29: $00
    nop                                           ; $5c2a: $00
    rrca                                          ; $5c2b: $0f
    rst $38                                       ; $5c2c: $ff
    rst $38                                       ; $5c2d: $ff
    nop                                           ; $5c2e: $00
    nop                                           ; $5c2f: $00
    nop                                           ; $5c30: $00
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    rst $38                                       ; $5c33: $ff
    rst $38                                       ; $5c34: $ff
    rst $38                                       ; $5c35: $ff
    ldh a, [rP1]                                  ; $5c36: $f0 $00
    nop                                           ; $5c38: $00
    nop                                           ; $5c39: $00
    nop                                           ; $5c3a: $00
    rst $38                                       ; $5c3b: $ff
    rst $38                                       ; $5c3c: $ff
    rst $38                                       ; $5c3d: $ff
    rra                                           ; $5c3e: $1f
    nop                                           ; $5c3f: $00
    nop                                           ; $5c40: $00
    nop                                           ; $5c41: $00
    nop                                           ; $5c42: $00

Call_044_5c43:
    nop                                           ; $5c43: $00
    rst $38                                       ; $5c44: $ff
    rst $38                                       ; $5c45: $ff
    rra                                           ; $5c46: $1f
    nop                                           ; $5c47: $00
    nop                                           ; $5c48: $00
    nop                                           ; $5c49: $00
    nop                                           ; $5c4a: $00
    nop                                           ; $5c4b: $00
    rrca                                          ; $5c4c: $0f
    ld de, $001f                                  ; $5c4d: $11 $1f $00
    nop                                           ; $5c50: $00
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    nop                                           ; $5c53: $00
    nop                                           ; $5c54: $00
    pop af                                        ; $5c55: $f1
    rra                                           ; $5c56: $1f
    nop                                           ; $5c57: $00
    nop                                           ; $5c58: $00
    nop                                           ; $5c59: $00
    nop                                           ; $5c5a: $00
    nop                                           ; $5c5b: $00
    nop                                           ; $5c5c: $00
    rst $38                                       ; $5c5d: $ff
    rst $38                                       ; $5c5e: $ff
    nop                                           ; $5c5f: $00
    nop                                           ; $5c60: $00
    nop                                           ; $5c61: $00
    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    rrca                                          ; $5c64: $0f
    rst $38                                       ; $5c65: $ff
    rst $38                                       ; $5c66: $ff
    nop                                           ; $5c67: $00
    nop                                           ; $5c68: $00
    nop                                           ; $5c69: $00
    nop                                           ; $5c6a: $00
    nop                                           ; $5c6b: $00
    rrca                                          ; $5c6c: $0f
    rra                                           ; $5c6d: $1f
    ldh a, [rP1]                                  ; $5c6e: $f0 $00
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    nop                                           ; $5c73: $00
    rrca                                          ; $5c74: $0f
    ldh a, [rP1]                                  ; $5c75: $f0 $00
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
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    nop                                           ; $5c83: $00
    nop                                           ; $5c84: $00
    nop                                           ; $5c85: $00
    nop                                           ; $5c86: $00
    nop                                           ; $5c87: $00
    nop                                           ; $5c88: $00
    nop                                           ; $5c89: $00
    nop                                           ; $5c8a: $00
    nop                                           ; $5c8b: $00
    nop                                           ; $5c8c: $00
    nop                                           ; $5c8d: $00
    nop                                           ; $5c8e: $00
    nop                                           ; $5c8f: $00
    nop                                           ; $5c90: $00
    ld a, [hl+]                                   ; $5c91: $2a
    ld b, a                                       ; $5c92: $47
    ld c, b                                       ; $5c93: $48
    rst $38                                       ; $5c94: $ff
    ld [bc], a                                    ; $5c95: $02
    nop                                           ; $5c96: $00
    nop                                           ; $5c97: $00
    nop                                           ; $5c98: $00
    nop                                           ; $5c99: $00
    rrca                                          ; $5c9a: $0f
    nop                                           ; $5c9b: $00
    nop                                           ; $5c9c: $00
    nop                                           ; $5c9d: $00
    nop                                           ; $5c9e: $00
    nop                                           ; $5c9f: $00
    nop                                           ; $5ca0: $00
    rrca                                          ; $5ca1: $0f
    rst $38                                       ; $5ca2: $ff
    ldh a, [rP1]                                  ; $5ca3: $f0 $00
    nop                                           ; $5ca5: $00
    nop                                           ; $5ca6: $00
    nop                                           ; $5ca7: $00
    nop                                           ; $5ca8: $00
    rrca                                          ; $5ca9: $0f
    rst $38                                       ; $5caa: $ff
    ldh a, [rP1]                                  ; $5cab: $f0 $00
    nop                                           ; $5cad: $00
    nop                                           ; $5cae: $00
    nop                                           ; $5caf: $00
    nop                                           ; $5cb0: $00
    rrca                                          ; $5cb1: $0f
    rst $38                                       ; $5cb2: $ff
    ldh a, [rP1]                                  ; $5cb3: $f0 $00
    nop                                           ; $5cb5: $00
    nop                                           ; $5cb6: $00
    nop                                           ; $5cb7: $00
    nop                                           ; $5cb8: $00
    rst $38                                       ; $5cb9: $ff
    ccf                                           ; $5cba: $3f
    ldh a, [rP1]                                  ; $5cbb: $f0 $00
    nop                                           ; $5cbd: $00
    nop                                           ; $5cbe: $00
    nop                                           ; $5cbf: $00
    rrca                                          ; $5cc0: $0f
    rst $38                                       ; $5cc1: $ff
    pop af                                        ; $5cc2: $f1
    ldh a, [rP1]                                  ; $5cc3: $f0 $00
    nop                                           ; $5cc5: $00
    nop                                           ; $5cc6: $00
    nop                                           ; $5cc7: $00
    rrca                                          ; $5cc8: $0f
    rst $38                                       ; $5cc9: $ff
    rst $38                                       ; $5cca: $ff
    ldh a, [rP1]                                  ; $5ccb: $f0 $00
    nop                                           ; $5ccd: $00
    nop                                           ; $5cce: $00
    nop                                           ; $5ccf: $00
    rrca                                          ; $5cd0: $0f
    rst $38                                       ; $5cd1: $ff
    rst $38                                       ; $5cd2: $ff
    nop                                           ; $5cd3: $00
    nop                                           ; $5cd4: $00
    nop                                           ; $5cd5: $00
    nop                                           ; $5cd6: $00
    nop                                           ; $5cd7: $00
    rrca                                          ; $5cd8: $0f
    rst $38                                       ; $5cd9: $ff
    rst $38                                       ; $5cda: $ff
    ldh a, [rP1]                                  ; $5cdb: $f0 $00
    nop                                           ; $5cdd: $00
    nop                                           ; $5cde: $00
    nop                                           ; $5cdf: $00
    rrca                                          ; $5ce0: $0f
    rst $38                                       ; $5ce1: $ff
    pop af                                        ; $5ce2: $f1
    ldh a, [rP1]                                  ; $5ce3: $f0 $00
    nop                                           ; $5ce5: $00
    nop                                           ; $5ce6: $00
    nop                                           ; $5ce7: $00
    nop                                           ; $5ce8: $00
    rst $38                                       ; $5ce9: $ff
    pop af                                        ; $5cea: $f1
    ldh a, [rP1]                                  ; $5ceb: $f0 $00
    nop                                           ; $5ced: $00
    nop                                           ; $5cee: $00
    nop                                           ; $5cef: $00
    nop                                           ; $5cf0: $00
    rrca                                          ; $5cf1: $0f
    pop af                                        ; $5cf2: $f1
    ldh a, [rP1]                                  ; $5cf3: $f0 $00
    nop                                           ; $5cf5: $00
    nop                                           ; $5cf6: $00
    nop                                           ; $5cf7: $00
    nop                                           ; $5cf8: $00
    rst $38                                       ; $5cf9: $ff
    rst $38                                       ; $5cfa: $ff
    nop                                           ; $5cfb: $00
    nop                                           ; $5cfc: $00
    nop                                           ; $5cfd: $00
    nop                                           ; $5cfe: $00
    nop                                           ; $5cff: $00
    nop                                           ; $5d00: $00
    rst $38                                       ; $5d01: $ff
    ccf                                           ; $5d02: $3f
    ldh a, [rP1]                                  ; $5d03: $f0 $00
    nop                                           ; $5d05: $00
    nop                                           ; $5d06: $00
    nop                                           ; $5d07: $00
    nop                                           ; $5d08: $00
    rrca                                          ; $5d09: $0f
    rst $38                                       ; $5d0a: $ff
    nop                                           ; $5d0b: $00
    nop                                           ; $5d0c: $00
    nop                                           ; $5d0d: $00
    nop                                           ; $5d0e: $00
    nop                                           ; $5d0f: $00
    nop                                           ; $5d10: $00
    nop                                           ; $5d11: $00
    nop                                           ; $5d12: $00
    nop                                           ; $5d13: $00
    nop                                           ; $5d14: $00
    nop                                           ; $5d15: $00
    ld a, $28                                     ; $5d16: $3e $28
    add hl, hl                                    ; $5d18: $29
    ld a, [hl+]                                   ; $5d19: $2a
    ld b, a                                       ; $5d1a: $47
    ld h, l                                       ; $5d1b: $65
    ld h, a                                       ; $5d1c: $67
    ld l, b                                       ; $5d1d: $68
    rst $38                                       ; $5d1e: $ff
    rlca                                          ; $5d1f: $07
    nop                                           ; $5d20: $00
    nop                                           ; $5d21: $00
    nop                                           ; $5d22: $00
    nop                                           ; $5d23: $00
    nop                                           ; $5d24: $00
    rst $38                                       ; $5d25: $ff
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    rst $38                                       ; $5d2b: $ff
    rst $38                                       ; $5d2c: $ff
    rst $38                                       ; $5d2d: $ff
    ldh a, [rP1]                                  ; $5d2e: $f0 $00
    nop                                           ; $5d30: $00
    nop                                           ; $5d31: $00
    rrca                                          ; $5d32: $0f
    rst $38                                       ; $5d33: $ff
    rst $38                                       ; $5d34: $ff
    rra                                           ; $5d35: $1f
    nop                                           ; $5d36: $00
    nop                                           ; $5d37: $00
    nop                                           ; $5d38: $00
    nop                                           ; $5d39: $00
    rrca                                          ; $5d3a: $0f
    rst $38                                       ; $5d3b: $ff
    rst $38                                       ; $5d3c: $ff
    rst $38                                       ; $5d3d: $ff
    nop                                           ; $5d3e: $00
    nop                                           ; $5d3f: $00
    nop                                           ; $5d40: $00
    nop                                           ; $5d41: $00
    rrca                                          ; $5d42: $0f
    rst $38                                       ; $5d43: $ff
    rra                                           ; $5d44: $1f
    nop                                           ; $5d45: $00
    nop                                           ; $5d46: $00
    nop                                           ; $5d47: $00
    nop                                           ; $5d48: $00
    nop                                           ; $5d49: $00
    rrca                                          ; $5d4a: $0f
    rst $38                                       ; $5d4b: $ff
    rst $38                                       ; $5d4c: $ff
    nop                                           ; $5d4d: $00
    nop                                           ; $5d4e: $00
    nop                                           ; $5d4f: $00
    nop                                           ; $5d50: $00
    nop                                           ; $5d51: $00
    nop                                           ; $5d52: $00
    rst $38                                       ; $5d53: $ff
    rst $38                                       ; $5d54: $ff
    nop                                           ; $5d55: $00
    nop                                           ; $5d56: $00
    nop                                           ; $5d57: $00
    nop                                           ; $5d58: $00
    nop                                           ; $5d59: $00
    nop                                           ; $5d5a: $00
    rst $38                                       ; $5d5b: $ff
    rst $38                                       ; $5d5c: $ff
    ldh a, [rP1]                                  ; $5d5d: $f0 $00
    nop                                           ; $5d5f: $00
    nop                                           ; $5d60: $00
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    rst $38                                       ; $5d63: $ff
    pop af                                        ; $5d64: $f1
    ldh a, [rP1]                                  ; $5d65: $f0 $00
    nop                                           ; $5d67: $00
    nop                                           ; $5d68: $00
    nop                                           ; $5d69: $00
    nop                                           ; $5d6a: $00
    rst $38                                       ; $5d6b: $ff
    rst $38                                       ; $5d6c: $ff
    rst $38                                       ; $5d6d: $ff
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    nop                                           ; $5d70: $00
    nop                                           ; $5d71: $00
    rst $38                                       ; $5d72: $ff
    rst $38                                       ; $5d73: $ff
    pop af                                        ; $5d74: $f1
    ldh a, [rP1]                                  ; $5d75: $f0 $00
    nop                                           ; $5d77: $00
    nop                                           ; $5d78: $00
    nop                                           ; $5d79: $00
    rst $38                                       ; $5d7a: $ff
    ccf                                           ; $5d7b: $3f
    rst $38                                       ; $5d7c: $ff
    ldh a, [rP1]                                  ; $5d7d: $f0 $00
    nop                                           ; $5d7f: $00
    nop                                           ; $5d80: $00
    nop                                           ; $5d81: $00
    rst $38                                       ; $5d82: $ff
    rst $38                                       ; $5d83: $ff
    nop                                           ; $5d84: $00
    nop                                           ; $5d85: $00
    nop                                           ; $5d86: $00
    nop                                           ; $5d87: $00
    nop                                           ; $5d88: $00
    rrca                                          ; $5d89: $0f
    rst $38                                       ; $5d8a: $ff
    rst $38                                       ; $5d8b: $ff
    nop                                           ; $5d8c: $00
    nop                                           ; $5d8d: $00
    nop                                           ; $5d8e: $00
    nop                                           ; $5d8f: $00
    nop                                           ; $5d90: $00
    rrca                                          ; $5d91: $0f
    rst $38                                       ; $5d92: $ff
    ldh a, [rP1]                                  ; $5d93: $f0 $00
    nop                                           ; $5d95: $00
    nop                                           ; $5d96: $00
    nop                                           ; $5d97: $00
    nop                                           ; $5d98: $00
    nop                                           ; $5d99: $00
    rst $38                                       ; $5d9a: $ff
    nop                                           ; $5d9b: $00
    nop                                           ; $5d9c: $00
    nop                                           ; $5d9d: $00
    nop                                           ; $5d9e: $00
    nop                                           ; $5d9f: $00
    ld c, l                                       ; $5da0: $4d
    ld a, [de]                                    ; $5da1: $1a
    dec de                                        ; $5da2: $1b
    daa                                           ; $5da3: $27
    jr z, jr_044_5ddc                             ; $5da4: $28 $36

    ld [hl], a                                    ; $5da6: $77
    adc b                                         ; $5da7: $88
    sub a                                         ; $5da8: $97
    rst $38                                       ; $5da9: $ff
    ld [$0000], sp                                ; $5daa: $08 $00 $00
    nop                                           ; $5dad: $00
    nop                                           ; $5dae: $00
    nop                                           ; $5daf: $00
    nop                                           ; $5db0: $00
    nop                                           ; $5db1: $00
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
    rst $38                                       ; $5dbd: $ff
    rrca                                          ; $5dbe: $0f
    nop                                           ; $5dbf: $00
    nop                                           ; $5dc0: $00
    nop                                           ; $5dc1: $00
    nop                                           ; $5dc2: $00
    nop                                           ; $5dc3: $00
    nop                                           ; $5dc4: $00
    rst $38                                       ; $5dc5: $ff
    rst $38                                       ; $5dc6: $ff
    rst $38                                       ; $5dc7: $ff
    ldh a, [rP1]                                  ; $5dc8: $f0 $00
    nop                                           ; $5dca: $00
    nop                                           ; $5dcb: $00
    nop                                           ; $5dcc: $00
    rst $38                                       ; $5dcd: $ff
    rst $38                                       ; $5dce: $ff
    pop af                                        ; $5dcf: $f1
    rst $38                                       ; $5dd0: $ff
    nop                                           ; $5dd1: $00
    nop                                           ; $5dd2: $00
    nop                                           ; $5dd3: $00
    nop                                           ; $5dd4: $00
    rrca                                          ; $5dd5: $0f
    rst $38                                       ; $5dd6: $ff
    rst $38                                       ; $5dd7: $ff
    rst $38                                       ; $5dd8: $ff
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00
    nop                                           ; $5ddb: $00

jr_044_5ddc:
    nop                                           ; $5ddc: $00
    nop                                           ; $5ddd: $00
    nop                                           ; $5dde: $00
    rst $38                                       ; $5ddf: $ff
    rst $38                                       ; $5de0: $ff
    ldh a, [rP1]                                  ; $5de1: $f0 $00
    nop                                           ; $5de3: $00
    nop                                           ; $5de4: $00
    nop                                           ; $5de5: $00
    nop                                           ; $5de6: $00
    rra                                           ; $5de7: $1f
    rst $38                                       ; $5de8: $ff
    ldh a, [rP1]                                  ; $5de9: $f0 $00
    nop                                           ; $5deb: $00
    nop                                           ; $5dec: $00
    nop                                           ; $5ded: $00
    rrca                                          ; $5dee: $0f
    rst $38                                       ; $5def: $ff
    rst $38                                       ; $5df0: $ff
    ldh a, [rP1]                                  ; $5df1: $f0 $00
    nop                                           ; $5df3: $00
    nop                                           ; $5df4: $00
    nop                                           ; $5df5: $00
    rrca                                          ; $5df6: $0f
    di                                            ; $5df7: $f3
    rst $38                                       ; $5df8: $ff
    ldh a, [rP1]                                  ; $5df9: $f0 $00
    nop                                           ; $5dfb: $00
    nop                                           ; $5dfc: $00
    nop                                           ; $5dfd: $00
    rrca                                          ; $5dfe: $0f
    di                                            ; $5dff: $f3
    rst $38                                       ; $5e00: $ff
    nop                                           ; $5e01: $00
    nop                                           ; $5e02: $00
    nop                                           ; $5e03: $00
    nop                                           ; $5e04: $00
    nop                                           ; $5e05: $00
    pop af                                        ; $5e06: $f1
    rst $38                                       ; $5e07: $ff
    rra                                           ; $5e08: $1f
    nop                                           ; $5e09: $00
    nop                                           ; $5e0a: $00
    nop                                           ; $5e0b: $00
    nop                                           ; $5e0c: $00
    nop                                           ; $5e0d: $00
    pop af                                        ; $5e0e: $f1
    pop af                                        ; $5e0f: $f1
    rst $38                                       ; $5e10: $ff
    nop                                           ; $5e11: $00
    nop                                           ; $5e12: $00
    nop                                           ; $5e13: $00
    nop                                           ; $5e14: $00
    nop                                           ; $5e15: $00
    rst $38                                       ; $5e16: $ff
    rst $38                                       ; $5e17: $ff
    ldh a, [rP1]                                  ; $5e18: $f0 $00
    nop                                           ; $5e1a: $00
    nop                                           ; $5e1b: $00
    nop                                           ; $5e1c: $00
    nop                                           ; $5e1d: $00
    rst $38                                       ; $5e1e: $ff
    ldh a, [rP1]                                  ; $5e1f: $f0 $00
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
    ld b, b                                       ; $5e2b: $40
    inc [hl]                                      ; $5e2c: $34
    dec [hl]                                      ; $5e2d: $35
    scf                                           ; $5e2e: $37
    ld c, b                                       ; $5e2f: $48
    ld e, c                                       ; $5e30: $59
    ld e, d                                       ; $5e31: $5a
    ld a, d                                       ; $5e32: $7a
    ld a, e                                       ; $5e33: $7b
    rst $38                                       ; $5e34: $ff
    ld [$0000], sp                                ; $5e35: $08 $00 $00
    nop                                           ; $5e38: $00
    rrca                                          ; $5e39: $0f
    nop                                           ; $5e3a: $00
    nop                                           ; $5e3b: $00
    nop                                           ; $5e3c: $00
    nop                                           ; $5e3d: $00
    nop                                           ; $5e3e: $00
    nop                                           ; $5e3f: $00
    nop                                           ; $5e40: $00
    rst $38                                       ; $5e41: $ff
    nop                                           ; $5e42: $00
    nop                                           ; $5e43: $00
    nop                                           ; $5e44: $00
    nop                                           ; $5e45: $00
    nop                                           ; $5e46: $00
    nop                                           ; $5e47: $00
    nop                                           ; $5e48: $00
    rst $38                                       ; $5e49: $ff
    ldh a, [rP1]                                  ; $5e4a: $f0 $00
    nop                                           ; $5e4c: $00
    nop                                           ; $5e4d: $00
    nop                                           ; $5e4e: $00
    nop                                           ; $5e4f: $00
    nop                                           ; $5e50: $00
    pop af                                        ; $5e51: $f1
    ldh a, [rP1]                                  ; $5e52: $f0 $00
    nop                                           ; $5e54: $00
    nop                                           ; $5e55: $00
    nop                                           ; $5e56: $00
    nop                                           ; $5e57: $00
    nop                                           ; $5e58: $00
    rst $38                                       ; $5e59: $ff
    rst $38                                       ; $5e5a: $ff
    nop                                           ; $5e5b: $00
    nop                                           ; $5e5c: $00
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    nop                                           ; $5e5f: $00
    rrca                                          ; $5e60: $0f
    rst $38                                       ; $5e61: $ff
    rst $38                                       ; $5e62: $ff
    ldh a, [rP1]                                  ; $5e63: $f0 $00
    nop                                           ; $5e65: $00
    nop                                           ; $5e66: $00
    nop                                           ; $5e67: $00
    rrca                                          ; $5e68: $0f
    rst $38                                       ; $5e69: $ff
    rst $38                                       ; $5e6a: $ff
    ldh a, [rP1]                                  ; $5e6b: $f0 $00
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    nop                                           ; $5e6f: $00
    nop                                           ; $5e70: $00
    rst $38                                       ; $5e71: $ff
    rst $38                                       ; $5e72: $ff
    nop                                           ; $5e73: $00
    nop                                           ; $5e74: $00
    nop                                           ; $5e75: $00
    nop                                           ; $5e76: $00
    nop                                           ; $5e77: $00
    nop                                           ; $5e78: $00
    rrca                                          ; $5e79: $0f
    rst $38                                       ; $5e7a: $ff
    nop                                           ; $5e7b: $00
    nop                                           ; $5e7c: $00
    nop                                           ; $5e7d: $00
    nop                                           ; $5e7e: $00
    nop                                           ; $5e7f: $00
    nop                                           ; $5e80: $00
    rst $38                                       ; $5e81: $ff
    rst $38                                       ; $5e82: $ff
    nop                                           ; $5e83: $00
    nop                                           ; $5e84: $00
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    nop                                           ; $5e88: $00
    rst $38                                       ; $5e89: $ff
    rst $38                                       ; $5e8a: $ff
    nop                                           ; $5e8b: $00
    nop                                           ; $5e8c: $00
    nop                                           ; $5e8d: $00
    nop                                           ; $5e8e: $00
    nop                                           ; $5e8f: $00
    nop                                           ; $5e90: $00
    rrca                                          ; $5e91: $0f
    rst $38                                       ; $5e92: $ff
    ldh a, [rP1]                                  ; $5e93: $f0 $00
    nop                                           ; $5e95: $00
    nop                                           ; $5e96: $00
    nop                                           ; $5e97: $00
    nop                                           ; $5e98: $00
    nop                                           ; $5e99: $00
    pop af                                        ; $5e9a: $f1
    ldh a, [rP1]                                  ; $5e9b: $f0 $00
    nop                                           ; $5e9d: $00
    nop                                           ; $5e9e: $00
    nop                                           ; $5e9f: $00
    nop                                           ; $5ea0: $00
    nop                                           ; $5ea1: $00
    rst $38                                       ; $5ea2: $ff
    nop                                           ; $5ea3: $00
    nop                                           ; $5ea4: $00
    nop                                           ; $5ea5: $00
    nop                                           ; $5ea6: $00
    nop                                           ; $5ea7: $00
    nop                                           ; $5ea8: $00
    nop                                           ; $5ea9: $00
    rst $38                                       ; $5eaa: $ff
    nop                                           ; $5eab: $00
    nop                                           ; $5eac: $00
    nop                                           ; $5ead: $00
    nop                                           ; $5eae: $00
    nop                                           ; $5eaf: $00
    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    rst $38                                       ; $5eb2: $ff
    nop                                           ; $5eb3: $00
    nop                                           ; $5eb4: $00
    nop                                           ; $5eb5: $00
    inc sp                                        ; $5eb6: $33
    ld b, a                                       ; $5eb7: $47
    ld c, b                                       ; $5eb8: $48
    ld e, c                                       ; $5eb9: $59
    ld h, a                                       ; $5eba: $67
    ld l, b                                       ; $5ebb: $68
    rst $38                                       ; $5ebc: $ff
    dec b                                         ; $5ebd: $05
    nop                                           ; $5ebe: $00
    nop                                           ; $5ebf: $00
    nop                                           ; $5ec0: $00
    nop                                           ; $5ec1: $00
    rrca                                          ; $5ec2: $0f
    ldh a, [rP1]                                  ; $5ec3: $f0 $00
    nop                                           ; $5ec5: $00
    nop                                           ; $5ec6: $00
    nop                                           ; $5ec7: $00
    nop                                           ; $5ec8: $00
    nop                                           ; $5ec9: $00
    rst $38                                       ; $5eca: $ff
    rst $38                                       ; $5ecb: $ff
    ldh a, [rP1]                                  ; $5ecc: $f0 $00
    nop                                           ; $5ece: $00
    nop                                           ; $5ecf: $00
    nop                                           ; $5ed0: $00
    nop                                           ; $5ed1: $00
    rst $38                                       ; $5ed2: $ff
    pop af                                        ; $5ed3: $f1
    ldh a, [rP1]                                  ; $5ed4: $f0 $00
    nop                                           ; $5ed6: $00
    nop                                           ; $5ed7: $00
    nop                                           ; $5ed8: $00
    rrca                                          ; $5ed9: $0f
    rst $38                                       ; $5eda: $ff
    pop af                                        ; $5edb: $f1
    ldh a, [rP1]                                  ; $5edc: $f0 $00
    nop                                           ; $5ede: $00
    nop                                           ; $5edf: $00
    rrca                                          ; $5ee0: $0f
    rst $38                                       ; $5ee1: $ff
    pop af                                        ; $5ee2: $f1
    rst $38                                       ; $5ee3: $ff
    ldh a, [rP1]                                  ; $5ee4: $f0 $00
    nop                                           ; $5ee6: $00
    nop                                           ; $5ee7: $00
    rrca                                          ; $5ee8: $0f
    rst $38                                       ; $5ee9: $ff
    rst $38                                       ; $5eea: $ff
    nop                                           ; $5eeb: $00
    nop                                           ; $5eec: $00
    nop                                           ; $5eed: $00
    nop                                           ; $5eee: $00
    nop                                           ; $5eef: $00
    rrca                                          ; $5ef0: $0f
    rst $38                                       ; $5ef1: $ff
    ldh a, [rP1]                                  ; $5ef2: $f0 $00
    nop                                           ; $5ef4: $00
    nop                                           ; $5ef5: $00
    nop                                           ; $5ef6: $00
    nop                                           ; $5ef7: $00
    pop af                                        ; $5ef8: $f1
    rst $38                                       ; $5ef9: $ff
    ldh a, [rP1]                                  ; $5efa: $f0 $00
    nop                                           ; $5efc: $00
    nop                                           ; $5efd: $00
    nop                                           ; $5efe: $00
    nop                                           ; $5eff: $00
    pop af                                        ; $5f00: $f1
    rst $38                                       ; $5f01: $ff
    ldh a, [rP1]                                  ; $5f02: $f0 $00
    nop                                           ; $5f04: $00
    nop                                           ; $5f05: $00
    nop                                           ; $5f06: $00
    nop                                           ; $5f07: $00
    rrca                                          ; $5f08: $0f
    rst $38                                       ; $5f09: $ff
    ldh a, [rP1]                                  ; $5f0a: $f0 $00
    nop                                           ; $5f0c: $00
    nop                                           ; $5f0d: $00
    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00
    rrca                                          ; $5f10: $0f
    rst $38                                       ; $5f11: $ff
    nop                                           ; $5f12: $00
    nop                                           ; $5f13: $00
    nop                                           ; $5f14: $00
    nop                                           ; $5f15: $00
    nop                                           ; $5f16: $00
    nop                                           ; $5f17: $00
    rst $38                                       ; $5f18: $ff
    rst $38                                       ; $5f19: $ff
    ldh a, [rP1]                                  ; $5f1a: $f0 $00
    nop                                           ; $5f1c: $00
    nop                                           ; $5f1d: $00
    nop                                           ; $5f1e: $00
    nop                                           ; $5f1f: $00
    rst $38                                       ; $5f20: $ff
    rst $38                                       ; $5f21: $ff
    ldh a, [rP1]                                  ; $5f22: $f0 $00
    nop                                           ; $5f24: $00
    nop                                           ; $5f25: $00
    nop                                           ; $5f26: $00
    nop                                           ; $5f27: $00
    rrca                                          ; $5f28: $0f
    rst $38                                       ; $5f29: $ff
    rst $38                                       ; $5f2a: $ff
    nop                                           ; $5f2b: $00
    nop                                           ; $5f2c: $00
    nop                                           ; $5f2d: $00
    nop                                           ; $5f2e: $00
    nop                                           ; $5f2f: $00
    rrca                                          ; $5f30: $0f
    rst $38                                       ; $5f31: $ff
    ldh a, [rP1]                                  ; $5f32: $f0 $00
    nop                                           ; $5f34: $00
    nop                                           ; $5f35: $00
    nop                                           ; $5f36: $00
    nop                                           ; $5f37: $00
    nop                                           ; $5f38: $00
    rst $38                                       ; $5f39: $ff
    ldh a, [rP1]                                  ; $5f3a: $f0 $00
    nop                                           ; $5f3c: $00
    nop                                           ; $5f3d: $00
    ld b, l                                       ; $5f3e: $45
    add hl, de                                    ; $5f3f: $19
    ld a, [de]                                    ; $5f40: $1a
    ld a, [hl-]                                   ; $5f41: $3a
    ld b, a                                       ; $5f42: $47
    ld c, b                                       ; $5f43: $48
    ld d, [hl]                                    ; $5f44: $56
    ld [hl], a                                    ; $5f45: $77
    ld a, b                                       ; $5f46: $78
    rst $38                                       ; $5f47: $ff
    ld [$0000], sp                                ; $5f48: $08 $00 $00
    nop                                           ; $5f4b: $00
    nop                                           ; $5f4c: $00
    rst $38                                       ; $5f4d: $ff
    ldh a, [rP1]                                  ; $5f4e: $f0 $00
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    nop                                           ; $5f52: $00

Jump_044_5f53:
    nop                                           ; $5f53: $00
    rrca                                          ; $5f54: $0f
    rst $38                                       ; $5f55: $ff
    rst $38                                       ; $5f56: $ff
    ldh a, [rP1]                                  ; $5f57: $f0 $00
    nop                                           ; $5f59: $00
    nop                                           ; $5f5a: $00
    nop                                           ; $5f5b: $00
    rrca                                          ; $5f5c: $0f
    rst $38                                       ; $5f5d: $ff
    pop af                                        ; $5f5e: $f1
    ldh a, [rP1]                                  ; $5f5f: $f0 $00
    nop                                           ; $5f61: $00
    nop                                           ; $5f62: $00
    nop                                           ; $5f63: $00
    rrca                                          ; $5f64: $0f
    rst $38                                       ; $5f65: $ff
    pop af                                        ; $5f66: $f1
    ldh a, [rP1]                                  ; $5f67: $f0 $00
    nop                                           ; $5f69: $00
    nop                                           ; $5f6a: $00
    nop                                           ; $5f6b: $00
    nop                                           ; $5f6c: $00
    rrca                                          ; $5f6d: $0f
    ccf                                           ; $5f6e: $3f
    ldh a, [rP1]                                  ; $5f6f: $f0 $00
    nop                                           ; $5f71: $00
    nop                                           ; $5f72: $00
    nop                                           ; $5f73: $00
    nop                                           ; $5f74: $00
    rrca                                          ; $5f75: $0f
    rst $38                                       ; $5f76: $ff
    rst $38                                       ; $5f77: $ff
    nop                                           ; $5f78: $00
    nop                                           ; $5f79: $00
    nop                                           ; $5f7a: $00
    nop                                           ; $5f7b: $00
    rst $38                                       ; $5f7c: $ff
    nop                                           ; $5f7d: $00
    di                                            ; $5f7e: $f3
    pop af                                        ; $5f7f: $f1
    ldh a, [rP1]                                  ; $5f80: $f0 $00
    nop                                           ; $5f82: $00
    rrca                                          ; $5f83: $0f
    rst $38                                       ; $5f84: $ff
    rrca                                          ; $5f85: $0f
    rst $38                                       ; $5f86: $ff
    pop af                                        ; $5f87: $f1
    ldh a, [rP1]                                  ; $5f88: $f0 $00
    nop                                           ; $5f8a: $00
    rrca                                          ; $5f8b: $0f
    rst $38                                       ; $5f8c: $ff
    rst $38                                       ; $5f8d: $ff
    rst $38                                       ; $5f8e: $ff
    rra                                           ; $5f8f: $1f
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    nop                                           ; $5f92: $00
    rrca                                          ; $5f93: $0f
    rst $38                                       ; $5f94: $ff
    rst $38                                       ; $5f95: $ff
    ld de, $00ff                                  ; $5f96: $11 $ff $00
    nop                                           ; $5f99: $00
    nop                                           ; $5f9a: $00
    rrca                                          ; $5f9b: $0f
    di                                            ; $5f9c: $f3
    rst $38                                       ; $5f9d: $ff
    rra                                           ; $5f9e: $1f
    ldh a, [rP1]                                  ; $5f9f: $f0 $00
    nop                                           ; $5fa1: $00
    rrca                                          ; $5fa2: $0f
    rst $38                                       ; $5fa3: $ff
    rst $38                                       ; $5fa4: $ff
    pop af                                        ; $5fa5: $f1
    ldh a, [rP1]                                  ; $5fa6: $f0 $00
    nop                                           ; $5fa8: $00
    nop                                           ; $5fa9: $00
    rst $38                                       ; $5faa: $ff
    rst $38                                       ; $5fab: $ff
    rst $38                                       ; $5fac: $ff
    rst $38                                       ; $5fad: $ff
    ldh a, [rP1]                                  ; $5fae: $f0 $00
    nop                                           ; $5fb0: $00
    rrca                                          ; $5fb1: $0f
    rst $38                                       ; $5fb2: $ff
    rst $38                                       ; $5fb3: $ff
    rst $38                                       ; $5fb4: $ff
    rst $38                                       ; $5fb5: $ff
    nop                                           ; $5fb6: $00
    nop                                           ; $5fb7: $00
    nop                                           ; $5fb8: $00
    rrca                                          ; $5fb9: $0f
    rst $38                                       ; $5fba: $ff
    rst $38                                       ; $5fbb: $ff
    nop                                           ; $5fbc: $00
    nop                                           ; $5fbd: $00
    nop                                           ; $5fbe: $00
    nop                                           ; $5fbf: $00
    nop                                           ; $5fc0: $00
    nop                                           ; $5fc1: $00
    rst $38                                       ; $5fc2: $ff
    nop                                           ; $5fc3: $00
    nop                                           ; $5fc4: $00
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    ld e, l                                       ; $5fc9: $5d
    jr z, jr_044_5ff5                             ; $5fca: $28 $29

    ld a, [hl+]                                   ; $5fcc: $2a
    rst $38                                       ; $5fcd: $ff
    inc bc                                        ; $5fce: $03
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
    rrca                                          ; $5fda: $0f
    rst $38                                       ; $5fdb: $ff
    ldh a, [rP1]                                  ; $5fdc: $f0 $00
    nop                                           ; $5fde: $00
    nop                                           ; $5fdf: $00
    nop                                           ; $5fe0: $00
    nop                                           ; $5fe1: $00
    rst $38                                       ; $5fe2: $ff
    rst $38                                       ; $5fe3: $ff
    ldh a, [rP1]                                  ; $5fe4: $f0 $00
    nop                                           ; $5fe6: $00
    nop                                           ; $5fe7: $00
    nop                                           ; $5fe8: $00
    rrca                                          ; $5fe9: $0f
    pop af                                        ; $5fea: $f1
    pop af                                        ; $5feb: $f1
    ldh a, [rP1]                                  ; $5fec: $f0 $00
    nop                                           ; $5fee: $00
    nop                                           ; $5fef: $00
    nop                                           ; $5ff0: $00
    rrca                                          ; $5ff1: $0f
    ld de, $ff11                                  ; $5ff2: $11 $11 $ff

jr_044_5ff5:
    nop                                           ; $5ff5: $00
    nop                                           ; $5ff6: $00
    nop                                           ; $5ff7: $00
    nop                                           ; $5ff8: $00
    nop                                           ; $5ff9: $00
    rst $38                                       ; $5ffa: $ff
    pop af                                        ; $5ffb: $f1
    ldh a, [rP1]                                  ; $5ffc: $f0 $00
    nop                                           ; $5ffe: $00
    nop                                           ; $5fff: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    rst $38                                       ; $6002: $ff
    ccf                                           ; $6003: $3f
    rst $38                                       ; $6004: $ff
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    rrca                                          ; $6009: $0f
    rst $38                                       ; $600a: $ff
    rst $38                                       ; $600b: $ff
    rra                                           ; $600c: $1f
    nop                                           ; $600d: $00
    nop                                           ; $600e: $00
    nop                                           ; $600f: $00
    nop                                           ; $6010: $00
    rst $38                                       ; $6011: $ff
    rst $38                                       ; $6012: $ff
    pop af                                        ; $6013: $f1
    rst $38                                       ; $6014: $ff
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    pop af                                        ; $6019: $f1
    rst $38                                       ; $601a: $ff
    rra                                           ; $601b: $1f
    ldh a, [rP1]                                  ; $601c: $f0 $00
    nop                                           ; $601e: $00
    nop                                           ; $601f: $00
    nop                                           ; $6020: $00
    rst $38                                       ; $6021: $ff
    rst $38                                       ; $6022: $ff
    ld de, $00f0                                  ; $6023: $11 $f0 $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    rst $38                                       ; $6029: $ff
    rst $38                                       ; $602a: $ff
    rst $38                                       ; $602b: $ff
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    nop                                           ; $602e: $00
    nop                                           ; $602f: $00
    nop                                           ; $6030: $00
    rst $38                                       ; $6031: $ff
    ld de, $00f0                                  ; $6032: $11 $f0 $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    rrca                                          ; $6039: $0f
    rst $38                                       ; $603a: $ff
    ldh a, [rP1]                                  ; $603b: $f0 $00
    nop                                           ; $603d: $00
    nop                                           ; $603e: $00
    nop                                           ; $603f: $00
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    rst $38                                       ; $6042: $ff
    ldh a, [rP1]                                  ; $6043: $f0 $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    nop                                           ; $6049: $00
    rst $38                                       ; $604a: $ff
    ldh a, [rP1]                                  ; $604b: $f0 $00
    nop                                           ; $604d: $00
    nop                                           ; $604e: $00
    ld b, e                                       ; $604f: $43
    jr jr_044_606b                                ; $6050: $18 $19

    daa                                           ; $6052: $27
    ld l, c                                       ; $6053: $69
    ld a, b                                       ; $6054: $78
    rst $38                                       ; $6055: $ff
    dec b                                         ; $6056: $05
    add [hl]                                      ; $6057: $86
    ld l, c                                       ; $6058: $69
    ld a, l                                       ; $6059: $7d
    ld h, b                                       ; $605a: $60
    ld b, $61                                     ; $605b: $06 $61
    adc a                                         ; $605d: $8f
    ld h, c                                       ; $605e: $61
    dec d                                         ; $605f: $15
    ld h, d                                       ; $6060: $62
    sbc [hl]                                      ; $6061: $9e
    ld h, d                                       ; $6062: $62
    daa                                           ; $6063: $27
    ld h, e                                       ; $6064: $63
    xor e                                         ; $6065: $ab
    ld h, e                                       ; $6066: $63
    dec [hl]                                      ; $6067: $35
    ld h, h                                       ; $6068: $64
    cp l                                          ; $6069: $bd
    ld h, h                                       ; $606a: $64

jr_044_606b:
    ld b, [hl]                                    ; $606b: $46
    ld h, l                                       ; $606c: $65
    call Call_044_5565                            ; $606d: $cd $65 $55
    ld h, [hl]                                    ; $6070: $66
    sbc $66                                       ; $6071: $de $66
    ld h, l                                       ; $6073: $65
    ld h, a                                       ; $6074: $67
    xor $67                                       ; $6075: $ee $67
    ld [hl], e                                    ; $6077: $73
    ld l, b                                       ; $6078: $68
    ei                                            ; $6079: $fb
    ld l, b                                       ; $607a: $68
    add [hl]                                      ; $607b: $86
    ld l, c                                       ; $607c: $69
    nop                                           ; $607d: $00
    nop                                           ; $607e: $00
    nop                                           ; $607f: $00
    rst $38                                       ; $6080: $ff
    ldh a, [rP1]                                  ; $6081: $f0 $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    rrca                                          ; $6087: $0f
    rst $38                                       ; $6088: $ff
    rst $38                                       ; $6089: $ff
    nop                                           ; $608a: $00
    nop                                           ; $608b: $00
    nop                                           ; $608c: $00
    nop                                           ; $608d: $00
    nop                                           ; $608e: $00
    rrca                                          ; $608f: $0f
    rst $38                                       ; $6090: $ff
    rra                                           ; $6091: $1f
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    rrca                                          ; $6097: $0f
    rst $38                                       ; $6098: $ff
    ldh a, [rP1]                                  ; $6099: $f0 $00
    nop                                           ; $609b: $00
    nop                                           ; $609c: $00
    nop                                           ; $609d: $00
    nop                                           ; $609e: $00
    rrca                                          ; $609f: $0f
    rst $38                                       ; $60a0: $ff
    ldh a, [rP1]                                  ; $60a1: $f0 $00
    nop                                           ; $60a3: $00
    nop                                           ; $60a4: $00
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    rrca                                          ; $60a7: $0f
    rst $38                                       ; $60a8: $ff
    rst $38                                       ; $60a9: $ff
    nop                                           ; $60aa: $00
    nop                                           ; $60ab: $00
    nop                                           ; $60ac: $00
    nop                                           ; $60ad: $00
    nop                                           ; $60ae: $00
    rrca                                          ; $60af: $0f
    rst $38                                       ; $60b0: $ff
    rst $38                                       ; $60b1: $ff
    nop                                           ; $60b2: $00
    nop                                           ; $60b3: $00
    nop                                           ; $60b4: $00
    nop                                           ; $60b5: $00
    nop                                           ; $60b6: $00
    rrca                                          ; $60b7: $0f
    di                                            ; $60b8: $f3
    rst $38                                       ; $60b9: $ff
    nop                                           ; $60ba: $00
    nop                                           ; $60bb: $00
    nop                                           ; $60bc: $00
    nop                                           ; $60bd: $00
    nop                                           ; $60be: $00
    rrca                                          ; $60bf: $0f
    rst $38                                       ; $60c0: $ff
    ldh a, [rP1]                                  ; $60c1: $f0 $00
    nop                                           ; $60c3: $00
    nop                                           ; $60c4: $00
    nop                                           ; $60c5: $00
    nop                                           ; $60c6: $00
    nop                                           ; $60c7: $00
    di                                            ; $60c8: $f3
    rst $38                                       ; $60c9: $ff
    nop                                           ; $60ca: $00
    nop                                           ; $60cb: $00
    nop                                           ; $60cc: $00
    nop                                           ; $60cd: $00
    nop                                           ; $60ce: $00
    nop                                           ; $60cf: $00
    di                                            ; $60d0: $f3
    rst $38                                       ; $60d1: $ff
    nop                                           ; $60d2: $00
    nop                                           ; $60d3: $00
    nop                                           ; $60d4: $00
    nop                                           ; $60d5: $00
    nop                                           ; $60d6: $00
    rrca                                          ; $60d7: $0f
    rst $38                                       ; $60d8: $ff
    ldh a, [rP1]                                  ; $60d9: $f0 $00
    nop                                           ; $60db: $00
    nop                                           ; $60dc: $00
    nop                                           ; $60dd: $00
    nop                                           ; $60de: $00
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    ldh a, [rP1]                                  ; $60e1: $f0 $00
    nop                                           ; $60e3: $00
    nop                                           ; $60e4: $00
    nop                                           ; $60e5: $00
    nop                                           ; $60e6: $00
    rst $38                                       ; $60e7: $ff
    rst $38                                       ; $60e8: $ff
    ldh a, [rP1]                                  ; $60e9: $f0 $00
    nop                                           ; $60eb: $00
    nop                                           ; $60ec: $00
    nop                                           ; $60ed: $00
    nop                                           ; $60ee: $00
    rst $38                                       ; $60ef: $ff
    ccf                                           ; $60f0: $3f
    ldh a, [rP1]                                  ; $60f1: $f0 $00
    nop                                           ; $60f3: $00
    nop                                           ; $60f4: $00
    nop                                           ; $60f5: $00
    nop                                           ; $60f6: $00
    rrca                                          ; $60f7: $0f
    rst $38                                       ; $60f8: $ff
    nop                                           ; $60f9: $00
    nop                                           ; $60fa: $00
    nop                                           ; $60fb: $00
    nop                                           ; $60fc: $00
    ld b, c                                       ; $60fd: $41
    ld d, $17                                     ; $60fe: $16 $17
    jr jr_044_6138                                ; $6100: $18 $36

    ld d, a                                       ; $6102: $57
    halt                                          ; $6103: $76
    rst $38                                       ; $6104: $ff
    ld b, $00                                     ; $6105: $06 $00
    rrca                                          ; $6107: $0f
    ldh a, [rP1]                                  ; $6108: $f0 $00
    nop                                           ; $610a: $00
    nop                                           ; $610b: $00
    nop                                           ; $610c: $00
    nop                                           ; $610d: $00
    nop                                           ; $610e: $00
    rst $38                                       ; $610f: $ff
    ldh a, [rP1]                                  ; $6110: $f0 $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    nop                                           ; $6116: $00
    rst $38                                       ; $6117: $ff
    ldh a, [rP1]                                  ; $6118: $f0 $00
    nop                                           ; $611a: $00
    nop                                           ; $611b: $00
    nop                                           ; $611c: $00
    nop                                           ; $611d: $00
    nop                                           ; $611e: $00
    rst $38                                       ; $611f: $ff
    rst $38                                       ; $6120: $ff
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    rst $38                                       ; $6127: $ff
    rst $38                                       ; $6128: $ff
    ldh a, [rP1]                                  ; $6129: $f0 $00
    nop                                           ; $612b: $00
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    nop                                           ; $612e: $00
    rrca                                          ; $612f: $0f
    rst $38                                       ; $6130: $ff
    ldh a, [rP1]                                  ; $6131: $f0 $00
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    nop                                           ; $6135: $00
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00

jr_044_6138:
    rst $38                                       ; $6138: $ff
    ldh a, [rP1]                                  ; $6139: $f0 $00
    nop                                           ; $613b: $00
    nop                                           ; $613c: $00
    nop                                           ; $613d: $00
    nop                                           ; $613e: $00
    nop                                           ; $613f: $00
    rst $38                                       ; $6140: $ff
    rst $38                                       ; $6141: $ff
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    rst $38                                       ; $6148: $ff
    rst $38                                       ; $6149: $ff
    nop                                           ; $614a: $00
    nop                                           ; $614b: $00
    nop                                           ; $614c: $00
    nop                                           ; $614d: $00
    nop                                           ; $614e: $00
    nop                                           ; $614f: $00
    rst $38                                       ; $6150: $ff
    rst $38                                       ; $6151: $ff
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    nop                                           ; $6157: $00
    rst $38                                       ; $6158: $ff
    rst $38                                       ; $6159: $ff
    ldh a, [rP1]                                  ; $615a: $f0 $00
    nop                                           ; $615c: $00
    nop                                           ; $615d: $00
    nop                                           ; $615e: $00
    nop                                           ; $615f: $00
    rst $38                                       ; $6160: $ff
    rst $38                                       ; $6161: $ff
    rst $38                                       ; $6162: $ff
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    rst $38                                       ; $6168: $ff
    di                                            ; $6169: $f3
    ccf                                           ; $616a: $3f
    rst $38                                       ; $616b: $ff
    nop                                           ; $616c: $00
    nop                                           ; $616d: $00
    nop                                           ; $616e: $00
    nop                                           ; $616f: $00
    rrca                                          ; $6170: $0f
    rst $38                                       ; $6171: $ff
    rst $38                                       ; $6172: $ff
    rst $38                                       ; $6173: $ff
    rst $38                                       ; $6174: $ff
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    rrca                                          ; $6179: $0f
    rst $38                                       ; $617a: $ff
    rst $38                                       ; $617b: $ff
    rst $38                                       ; $617c: $ff
    nop                                           ; $617d: $00
    nop                                           ; $617e: $00
    nop                                           ; $617f: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    rst $38                                       ; $6183: $ff
    ldh a, [rP1]                                  ; $6184: $f0 $00
    ld c, b                                       ; $6186: $48
    inc de                                        ; $6187: $13
    inc d                                         ; $6188: $14
    inc sp                                        ; $6189: $33
    ld b, l                                       ; $618a: $45
    ld h, l                                       ; $618b: $65
    sub l                                         ; $618c: $95
    rst $38                                       ; $618d: $ff
    ld b, $00                                     ; $618e: $06 $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    nop                                           ; $6194: $00
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
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
    rrca                                          ; $61b2: $0f
    rst $38                                       ; $61b3: $ff
    ldh a, [rP1]                                  ; $61b4: $f0 $00
    nop                                           ; $61b6: $00
    nop                                           ; $61b7: $00
    nop                                           ; $61b8: $00
    nop                                           ; $61b9: $00
    rst $38                                       ; $61ba: $ff
    rst $38                                       ; $61bb: $ff
    ldh a, [rP1]                                  ; $61bc: $f0 $00
    nop                                           ; $61be: $00
    nop                                           ; $61bf: $00
    nop                                           ; $61c0: $00
    nop                                           ; $61c1: $00
    rst $38                                       ; $61c2: $ff
    rst $38                                       ; $61c3: $ff
    ldh a, [rP1]                                  ; $61c4: $f0 $00
    nop                                           ; $61c6: $00
    nop                                           ; $61c7: $00
    nop                                           ; $61c8: $00
    nop                                           ; $61c9: $00
    rrca                                          ; $61ca: $0f
    rst $38                                       ; $61cb: $ff
    nop                                           ; $61cc: $00
    nop                                           ; $61cd: $00
    nop                                           ; $61ce: $00
    nop                                           ; $61cf: $00
    nop                                           ; $61d0: $00
    nop                                           ; $61d1: $00
    pop af                                        ; $61d2: $f1
    ldh a, [rP1]                                  ; $61d3: $f0 $00
    nop                                           ; $61d5: $00
    nop                                           ; $61d6: $00
    nop                                           ; $61d7: $00
    nop                                           ; $61d8: $00
    rrca                                          ; $61d9: $0f
    pop af                                        ; $61da: $f1
    ldh a, [rP1]                                  ; $61db: $f0 $00
    nop                                           ; $61dd: $00
    nop                                           ; $61de: $00
    nop                                           ; $61df: $00
    nop                                           ; $61e0: $00
    rrca                                          ; $61e1: $0f
    inc sp                                        ; $61e2: $33
    ldh a, [rP1]                                  ; $61e3: $f0 $00
    nop                                           ; $61e5: $00
    nop                                           ; $61e6: $00
    nop                                           ; $61e7: $00
    nop                                           ; $61e8: $00
    rrca                                          ; $61e9: $0f
    rst $38                                       ; $61ea: $ff
    ldh a, [rP1]                                  ; $61eb: $f0 $00
    nop                                           ; $61ed: $00
    nop                                           ; $61ee: $00
    nop                                           ; $61ef: $00
    nop                                           ; $61f0: $00
    nop                                           ; $61f1: $00
    rst $38                                       ; $61f2: $ff
    nop                                           ; $61f3: $00
    nop                                           ; $61f4: $00
    nop                                           ; $61f5: $00
    nop                                           ; $61f6: $00
    nop                                           ; $61f7: $00
    nop                                           ; $61f8: $00
    nop                                           ; $61f9: $00
    nop                                           ; $61fa: $00
    nop                                           ; $61fb: $00
    nop                                           ; $61fc: $00
    nop                                           ; $61fd: $00
    nop                                           ; $61fe: $00
    nop                                           ; $61ff: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    nop                                           ; $6208: $00
    nop                                           ; $6209: $00
    nop                                           ; $620a: $00
    nop                                           ; $620b: $00
    nop                                           ; $620c: $00
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    ld e, $57                                     ; $620f: $1e $57
    ld e, b                                       ; $6211: $58
    ld l, c                                       ; $6212: $69
    rst $38                                       ; $6213: $ff
    inc bc                                        ; $6214: $03
    nop                                           ; $6215: $00
    rrca                                          ; $6216: $0f
    ldh a, [rP1]                                  ; $6217: $f0 $00
    nop                                           ; $6219: $00
    nop                                           ; $621a: $00
    nop                                           ; $621b: $00
    nop                                           ; $621c: $00
    nop                                           ; $621d: $00
    rst $38                                       ; $621e: $ff
    rst $38                                       ; $621f: $ff
    nop                                           ; $6220: $00
    ldh a, [rP1]                                  ; $6221: $f0 $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    rst $38                                       ; $6226: $ff
    pop af                                        ; $6227: $f1
    rst $38                                       ; $6228: $ff
    rst $38                                       ; $6229: $ff
    ldh a, [rP1]                                  ; $622a: $f0 $00
    nop                                           ; $622c: $00
    nop                                           ; $622d: $00
    rrca                                          ; $622e: $0f
    rst $38                                       ; $622f: $ff
    pop af                                        ; $6230: $f1
    rst $38                                       ; $6231: $ff
    ldh a, [rP1]                                  ; $6232: $f0 $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    rst $38                                       ; $6238: $ff
    rst $38                                       ; $6239: $ff
    ldh a, [rP1]                                  ; $623a: $f0 $00
    nop                                           ; $623c: $00
    nop                                           ; $623d: $00
    nop                                           ; $623e: $00
    nop                                           ; $623f: $00
    rrca                                          ; $6240: $0f
    rst $38                                       ; $6241: $ff
    ldh a, [rP1]                                  ; $6242: $f0 $00
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    rrca                                          ; $6249: $0f
    rst $38                                       ; $624a: $ff
    nop                                           ; $624b: $00
    nop                                           ; $624c: $00
    nop                                           ; $624d: $00
    nop                                           ; $624e: $00
    nop                                           ; $624f: $00
    nop                                           ; $6250: $00
    rst $38                                       ; $6251: $ff
    rst $38                                       ; $6252: $ff
    nop                                           ; $6253: $00
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    rst $38                                       ; $6259: $ff
    rst $38                                       ; $625a: $ff
    nop                                           ; $625b: $00
    nop                                           ; $625c: $00
    nop                                           ; $625d: $00
    nop                                           ; $625e: $00
    nop                                           ; $625f: $00
    nop                                           ; $6260: $00
    rst $38                                       ; $6261: $ff
    rst $38                                       ; $6262: $ff
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    rrca                                          ; $6268: $0f
    rra                                           ; $6269: $1f
    rst $38                                       ; $626a: $ff
    nop                                           ; $626b: $00
    nop                                           ; $626c: $00
    nop                                           ; $626d: $00
    nop                                           ; $626e: $00
    nop                                           ; $626f: $00
    rst $38                                       ; $6270: $ff
    rst $38                                       ; $6271: $ff
    rst $38                                       ; $6272: $ff
    nop                                           ; $6273: $00
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    rrca                                          ; $6277: $0f
    rst $38                                       ; $6278: $ff
    rst $38                                       ; $6279: $ff
    ldh a, [rP1]                                  ; $627a: $f0 $00
    nop                                           ; $627c: $00
    nop                                           ; $627d: $00
    nop                                           ; $627e: $00
    rst $38                                       ; $627f: $ff
    rst $38                                       ; $6280: $ff
    rst $38                                       ; $6281: $ff
    ldh a, [rP1]                                  ; $6282: $f0 $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    di                                            ; $6287: $f3
    rst $38                                       ; $6288: $ff
    ldh a, [rP1]                                  ; $6289: $f0 $00
    nop                                           ; $628b: $00
    nop                                           ; $628c: $00
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    rst $38                                       ; $628f: $ff
    ldh a, [rP1]                                  ; $6290: $f0 $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    ld c, h                                       ; $6295: $4c
    jr z, jr_044_62c1                             ; $6296: $28 $29

    ld c, b                                       ; $6298: $48
    ld a, c                                       ; $6299: $79
    sbc c                                         ; $629a: $99
    sbc d                                         ; $629b: $9a
    rst $38                                       ; $629c: $ff
    ld b, $00                                     ; $629d: $06 $00
    nop                                           ; $629f: $00
    nop                                           ; $62a0: $00
    nop                                           ; $62a1: $00
    rst $38                                       ; $62a2: $ff
    nop                                           ; $62a3: $00
    nop                                           ; $62a4: $00
    nop                                           ; $62a5: $00
    nop                                           ; $62a6: $00
    nop                                           ; $62a7: $00
    nop                                           ; $62a8: $00
    rst $38                                       ; $62a9: $ff
    rst $38                                       ; $62aa: $ff
    ldh a, [rP1]                                  ; $62ab: $f0 $00
    nop                                           ; $62ad: $00
    nop                                           ; $62ae: $00
    nop                                           ; $62af: $00
    nop                                           ; $62b0: $00
    rst $38                                       ; $62b1: $ff
    rst $38                                       ; $62b2: $ff
    nop                                           ; $62b3: $00
    nop                                           ; $62b4: $00
    nop                                           ; $62b5: $00
    nop                                           ; $62b6: $00
    nop                                           ; $62b7: $00
    nop                                           ; $62b8: $00
    rst $38                                       ; $62b9: $ff
    rst $38                                       ; $62ba: $ff
    nop                                           ; $62bb: $00
    nop                                           ; $62bc: $00
    nop                                           ; $62bd: $00
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    nop                                           ; $62c0: $00

jr_044_62c1:
    rst $38                                       ; $62c1: $ff
    rst $38                                       ; $62c2: $ff
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    nop                                           ; $62c5: $00
    nop                                           ; $62c6: $00
    nop                                           ; $62c7: $00
    nop                                           ; $62c8: $00
    rst $38                                       ; $62c9: $ff
    rst $38                                       ; $62ca: $ff
    ldh a, [rP1]                                  ; $62cb: $f0 $00
    nop                                           ; $62cd: $00
    nop                                           ; $62ce: $00
    nop                                           ; $62cf: $00
    nop                                           ; $62d0: $00
    rst $38                                       ; $62d1: $ff
    pop af                                        ; $62d2: $f1
    ldh a, [rP1]                                  ; $62d3: $f0 $00
    nop                                           ; $62d5: $00
    nop                                           ; $62d6: $00
    nop                                           ; $62d7: $00
    rrca                                          ; $62d8: $0f
    rst $38                                       ; $62d9: $ff
    rst $38                                       ; $62da: $ff
    nop                                           ; $62db: $00
    nop                                           ; $62dc: $00
    nop                                           ; $62dd: $00
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    rrca                                          ; $62e0: $0f
    rst $38                                       ; $62e1: $ff
    rst $38                                       ; $62e2: $ff
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    nop                                           ; $62e6: $00
    nop                                           ; $62e7: $00
    rrca                                          ; $62e8: $0f
    rst $38                                       ; $62e9: $ff
    rst $38                                       ; $62ea: $ff
    nop                                           ; $62eb: $00
    nop                                           ; $62ec: $00
    nop                                           ; $62ed: $00
    nop                                           ; $62ee: $00
    nop                                           ; $62ef: $00
    rrca                                          ; $62f0: $0f
    rst $38                                       ; $62f1: $ff
    ldh a, [rP1]                                  ; $62f2: $f0 $00
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    nop                                           ; $62f6: $00
    nop                                           ; $62f7: $00
    rrca                                          ; $62f8: $0f
    rst $38                                       ; $62f9: $ff
    ldh a, [rP1]                                  ; $62fa: $f0 $00
    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    nop                                           ; $62ff: $00
    rrca                                          ; $6300: $0f
    rst $38                                       ; $6301: $ff
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    rrca                                          ; $6308: $0f
    rst $38                                       ; $6309: $ff
    nop                                           ; $630a: $00
    nop                                           ; $630b: $00
    nop                                           ; $630c: $00
    nop                                           ; $630d: $00
    nop                                           ; $630e: $00
    nop                                           ; $630f: $00
    rst $38                                       ; $6310: $ff
    ccf                                           ; $6311: $3f
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    rrca                                          ; $6318: $0f
    rst $38                                       ; $6319: $ff
    nop                                           ; $631a: $00
    nop                                           ; $631b: $00
    nop                                           ; $631c: $00
    nop                                           ; $631d: $00
    ccf                                           ; $631e: $3f
    jr jr_044_633a                                ; $631f: $18 $19

    daa                                           ; $6321: $27
    ld l, b                                       ; $6322: $68
    halt                                          ; $6323: $76
    ld [hl], a                                    ; $6324: $77
    rst $38                                       ; $6325: $ff
    ld b, $00                                     ; $6326: $06 $00
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    nop                                           ; $632c: $00
    nop                                           ; $632d: $00
    nop                                           ; $632e: $00
    nop                                           ; $632f: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    nop                                           ; $6339: $00

jr_044_633a:
    nop                                           ; $633a: $00
    nop                                           ; $633b: $00
    nop                                           ; $633c: $00
    nop                                           ; $633d: $00
    nop                                           ; $633e: $00
    nop                                           ; $633f: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    rst $38                                       ; $6343: $ff
    ldh a, [rP1]                                  ; $6344: $f0 $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
    rrca                                          ; $634a: $0f
    ld de, $001f                                  ; $634b: $11 $1f $00
    nop                                           ; $634e: $00
    nop                                           ; $634f: $00
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    rrca                                          ; $6352: $0f
    rst $38                                       ; $6353: $ff
    rra                                           ; $6354: $1f
    nop                                           ; $6355: $00
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    pop af                                        ; $635a: $f1
    rst $38                                       ; $635b: $ff
    rra                                           ; $635c: $1f
    nop                                           ; $635d: $00
    nop                                           ; $635e: $00
    nop                                           ; $635f: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    rst $38                                       ; $6362: $ff
    rst $38                                       ; $6363: $ff
    ldh a, [rP1]                                  ; $6364: $f0 $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    rrca                                          ; $6369: $0f
    rst $38                                       ; $636a: $ff
    pop af                                        ; $636b: $f1
    ldh a, [rP1]                                  ; $636c: $f0 $00
    nop                                           ; $636e: $00
    nop                                           ; $636f: $00
    nop                                           ; $6370: $00
    pop af                                        ; $6371: $f1
    rst $38                                       ; $6372: $ff
    rra                                           ; $6373: $1f
    ldh a, [rP1]                                  ; $6374: $f0 $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    rst $38                                       ; $6379: $ff
    rst $38                                       ; $637a: $ff
    rra                                           ; $637b: $1f
    nop                                           ; $637c: $00
    nop                                           ; $637d: $00
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    nop                                           ; $6380: $00
    rst $38                                       ; $6381: $ff
    ccf                                           ; $6382: $3f
    rra                                           ; $6383: $1f
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    nop                                           ; $6387: $00
    nop                                           ; $6388: $00
    rrca                                          ; $6389: $0f
    rst $38                                       ; $638a: $ff
    ldh a, [rP1]                                  ; $638b: $f0 $00
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
    add hl, hl                                    ; $63a7: $29
    ld e, c                                       ; $63a8: $59
    rst $38                                       ; $63a9: $ff
    ld bc, $0000                                  ; $63aa: $01 $00 $00
    nop                                           ; $63ad: $00
    nop                                           ; $63ae: $00
    rrca                                          ; $63af: $0f
    nop                                           ; $63b0: $00
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    nop                                           ; $63b3: $00
    nop                                           ; $63b4: $00
    nop                                           ; $63b5: $00
    rrca                                          ; $63b6: $0f
    rst $38                                       ; $63b7: $ff
    ldh a, [rP1]                                  ; $63b8: $f0 $00
    nop                                           ; $63ba: $00
    nop                                           ; $63bb: $00
    nop                                           ; $63bc: $00
    nop                                           ; $63bd: $00
    rst $38                                       ; $63be: $ff
    rst $38                                       ; $63bf: $ff
    rst $38                                       ; $63c0: $ff
    nop                                           ; $63c1: $00
    nop                                           ; $63c2: $00
    nop                                           ; $63c3: $00
    nop                                           ; $63c4: $00
    rrca                                          ; $63c5: $0f
    rst $38                                       ; $63c6: $ff
    rst $38                                       ; $63c7: $ff
    ldh a, [rP1]                                  ; $63c8: $f0 $00
    nop                                           ; $63ca: $00
    nop                                           ; $63cb: $00
    nop                                           ; $63cc: $00
    rst $38                                       ; $63cd: $ff
    rst $38                                       ; $63ce: $ff
    ldh a, [rP1]                                  ; $63cf: $f0 $00
    nop                                           ; $63d1: $00
    nop                                           ; $63d2: $00
    nop                                           ; $63d3: $00
    nop                                           ; $63d4: $00
    rst $38                                       ; $63d5: $ff
    rst $38                                       ; $63d6: $ff
    ldh a, [rP1]                                  ; $63d7: $f0 $00
    nop                                           ; $63d9: $00
    nop                                           ; $63da: $00
    nop                                           ; $63db: $00
    nop                                           ; $63dc: $00
    rst $38                                       ; $63dd: $ff
    rst $38                                       ; $63de: $ff
    ldh a, [rP1]                                  ; $63df: $f0 $00
    nop                                           ; $63e1: $00
    nop                                           ; $63e2: $00
    nop                                           ; $63e3: $00
    nop                                           ; $63e4: $00
    rst $38                                       ; $63e5: $ff
    rst $38                                       ; $63e6: $ff
    rst $38                                       ; $63e7: $ff
    nop                                           ; $63e8: $00
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    nop                                           ; $63eb: $00
    nop                                           ; $63ec: $00
    rst $38                                       ; $63ed: $ff
    di                                            ; $63ee: $f3
    pop af                                        ; $63ef: $f1
    ldh a, [rP1]                                  ; $63f0: $f0 $00
    nop                                           ; $63f2: $00
    nop                                           ; $63f3: $00
    nop                                           ; $63f4: $00
    rrca                                          ; $63f5: $0f
    rst $38                                       ; $63f6: $ff
    rst $38                                       ; $63f7: $ff
    ldh a, [rP1]                                  ; $63f8: $f0 $00
    nop                                           ; $63fa: $00
    nop                                           ; $63fb: $00
    nop                                           ; $63fc: $00
    nop                                           ; $63fd: $00
    rrca                                          ; $63fe: $0f
    rst $38                                       ; $63ff: $ff
    rra                                           ; $6400: $1f
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    rrca                                          ; $6406: $0f
    rst $38                                       ; $6407: $ff
    rra                                           ; $6408: $1f
    nop                                           ; $6409: $00
    nop                                           ; $640a: $00
    nop                                           ; $640b: $00
    nop                                           ; $640c: $00
    nop                                           ; $640d: $00
    rrca                                          ; $640e: $0f
    rst $38                                       ; $640f: $ff
    rra                                           ; $6410: $1f
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    rst $38                                       ; $6417: $ff
    rst $38                                       ; $6418: $ff
    nop                                           ; $6419: $00
    nop                                           ; $641a: $00
    nop                                           ; $641b: $00
    nop                                           ; $641c: $00
    nop                                           ; $641d: $00
    nop                                           ; $641e: $00
    rst $38                                       ; $641f: $ff
    rst $38                                       ; $6420: $ff
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    rrca                                          ; $6427: $0f
    rst $38                                       ; $6428: $ff
    nop                                           ; $6429: $00
    nop                                           ; $642a: $00
    ld c, b                                       ; $642b: $48
    jr jr_044_6447                                ; $642c: $18 $19

    ld [hl], $37                                  ; $642e: $36 $37
    ld d, l                                       ; $6430: $55
    ld h, h                                       ; $6431: $64
    ld h, [hl]                                    ; $6432: $66
    rst $38                                       ; $6433: $ff
    rlca                                          ; $6434: $07
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    rrca                                          ; $643a: $0f
    rst $38                                       ; $643b: $ff
    nop                                           ; $643c: $00
    nop                                           ; $643d: $00
    nop                                           ; $643e: $00
    nop                                           ; $643f: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    rst $38                                       ; $6442: $ff
    rst $38                                       ; $6443: $ff
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00

jr_044_6447:
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    rst $38                                       ; $644a: $ff
    rst $38                                       ; $644b: $ff
    nop                                           ; $644c: $00
    nop                                           ; $644d: $00
    nop                                           ; $644e: $00
    nop                                           ; $644f: $00
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    rst $38                                       ; $6452: $ff
    rst $38                                       ; $6453: $ff
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    rrca                                          ; $645a: $0f
    rst $38                                       ; $645b: $ff
    nop                                           ; $645c: $00
    nop                                           ; $645d: $00
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    rst $38                                       ; $6462: $ff
    rst $38                                       ; $6463: $ff
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    rst $38                                       ; $646a: $ff
    rst $38                                       ; $646b: $ff
    nop                                           ; $646c: $00
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00
    rrca                                          ; $6470: $0f
    rst $38                                       ; $6471: $ff
    rst $38                                       ; $6472: $ff
    rst $38                                       ; $6473: $ff
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    rst $38                                       ; $6478: $ff
    rst $38                                       ; $6479: $ff
    rst $38                                       ; $647a: $ff
    ldh a, [rP1]                                  ; $647b: $f0 $00
    nop                                           ; $647d: $00
    nop                                           ; $647e: $00
    rrca                                          ; $647f: $0f
    rst $38                                       ; $6480: $ff
    rst $38                                       ; $6481: $ff
    rst $38                                       ; $6482: $ff
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    rst $38                                       ; $6487: $ff
    rst $38                                       ; $6488: $ff
    rst $38                                       ; $6489: $ff
    nop                                           ; $648a: $00
    nop                                           ; $648b: $00
    nop                                           ; $648c: $00
    nop                                           ; $648d: $00
    rst $38                                       ; $648e: $ff
    di                                            ; $648f: $f3
    rst $38                                       ; $6490: $ff
    ldh a, [rP1]                                  ; $6491: $f0 $00
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    rrca                                          ; $6495: $0f
    pop af                                        ; $6496: $f1
    rst $38                                       ; $6497: $ff
    rst $38                                       ; $6498: $ff
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    nop                                           ; $649b: $00
    nop                                           ; $649c: $00
    rrca                                          ; $649d: $0f
    rst $38                                       ; $649e: $ff
    pop af                                        ; $649f: $f1
    rst $38                                       ; $64a0: $ff
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    nop                                           ; $64a4: $00
    rrca                                          ; $64a5: $0f
    di                                            ; $64a6: $f3
    rst $38                                       ; $64a7: $ff
    ldh a, [rP1]                                  ; $64a8: $f0 $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    nop                                           ; $64ac: $00
    nop                                           ; $64ad: $00
    rst $38                                       ; $64ae: $ff
    ldh a, [rP1]                                  ; $64af: $f0 $00
    nop                                           ; $64b1: $00
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    nop                                           ; $64b4: $00
    ld c, a                                       ; $64b5: $4f
    dec de                                        ; $64b6: $1b
    inc e                                         ; $64b7: $1c
    ld e, e                                       ; $64b8: $5b
    sbc b                                         ; $64b9: $98
    sbc c                                         ; $64ba: $99
    rst $38                                       ; $64bb: $ff
    dec b                                         ; $64bc: $05
    nop                                           ; $64bd: $00
    nop                                           ; $64be: $00
    nop                                           ; $64bf: $00
    rrca                                          ; $64c0: $0f
    rst $38                                       ; $64c1: $ff
    nop                                           ; $64c2: $00
    nop                                           ; $64c3: $00
    nop                                           ; $64c4: $00
    nop                                           ; $64c5: $00
    nop                                           ; $64c6: $00
    nop                                           ; $64c7: $00
    rrca                                          ; $64c8: $0f
    rst $38                                       ; $64c9: $ff
    nop                                           ; $64ca: $00
    nop                                           ; $64cb: $00
    nop                                           ; $64cc: $00
    nop                                           ; $64cd: $00
    nop                                           ; $64ce: $00
    nop                                           ; $64cf: $00
    rrca                                          ; $64d0: $0f
    rst $38                                       ; $64d1: $ff
    nop                                           ; $64d2: $00
    nop                                           ; $64d3: $00
    nop                                           ; $64d4: $00
    nop                                           ; $64d5: $00
    nop                                           ; $64d6: $00
    nop                                           ; $64d7: $00
    rrca                                          ; $64d8: $0f
    rst $38                                       ; $64d9: $ff
    ldh a, [rP1]                                  ; $64da: $f0 $00
    nop                                           ; $64dc: $00
    nop                                           ; $64dd: $00
    nop                                           ; $64de: $00
    nop                                           ; $64df: $00
    rrca                                          ; $64e0: $0f
    rst $38                                       ; $64e1: $ff
    ldh a, [rP1]                                  ; $64e2: $f0 $00
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    rrca                                          ; $64e8: $0f
    rst $38                                       ; $64e9: $ff
    ldh a, [rP1]                                  ; $64ea: $f0 $00
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    rrca                                          ; $64f0: $0f
    rst $38                                       ; $64f1: $ff
    nop                                           ; $64f2: $00
    nop                                           ; $64f3: $00
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00
    rrca                                          ; $64f8: $0f
    rst $38                                       ; $64f9: $ff
    ldh a, [rP1]                                  ; $64fa: $f0 $00
    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    rst $38                                       ; $6500: $ff
    ccf                                           ; $6501: $3f
    ldh a, [rP1]                                  ; $6502: $f0 $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    rrca                                          ; $6508: $0f
    rst $38                                       ; $6509: $ff
    ldh a, [rP1]                                  ; $650a: $f0 $00
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    nop                                           ; $650e: $00
    nop                                           ; $650f: $00
    rrca                                          ; $6510: $0f
    rst $38                                       ; $6511: $ff
    ldh a, [rP1]                                  ; $6512: $f0 $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    rrca                                          ; $6518: $0f
    rst $38                                       ; $6519: $ff
    nop                                           ; $651a: $00
    nop                                           ; $651b: $00
    nop                                           ; $651c: $00
    nop                                           ; $651d: $00
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00
    nop                                           ; $6520: $00
    pop af                                        ; $6521: $f1
    ldh a, [rP1]                                  ; $6522: $f0 $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    rrca                                          ; $6528: $0f
    rst $38                                       ; $6529: $ff
    rst $38                                       ; $652a: $ff
    nop                                           ; $652b: $00
    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    rrca                                          ; $6530: $0f
    di                                            ; $6531: $f3
    ldh a, [rP1]                                  ; $6532: $f0 $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    rst $38                                       ; $6539: $ff
    ldh a, [rP1]                                  ; $653a: $f0 $00
    nop                                           ; $653c: $00
    jr c, jr_044_6556                             ; $653d: $38 $17

    jr jr_044_655a                                ; $653f: $18 $19

    ld e, c                                       ; $6541: $59
    ld l, b                                       ; $6542: $68
    sbc c                                         ; $6543: $99
    rst $38                                       ; $6544: $ff
    ld b, $00                                     ; $6545: $06 $00
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    nop                                           ; $654b: $00
    nop                                           ; $654c: $00
    nop                                           ; $654d: $00
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00

jr_044_6556:
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00

jr_044_655a:
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    nop                                           ; $655c: $00
    nop                                           ; $655d: $00
    nop                                           ; $655e: $00
    nop                                           ; $655f: $00
    rrca                                          ; $6560: $0f
    rst $38                                       ; $6561: $ff
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    rst $38                                       ; $6568: $ff
    rra                                           ; $6569: $1f
    ldh a, [rP1]                                  ; $656a: $f0 $00
    nop                                           ; $656c: $00
    nop                                           ; $656d: $00
    nop                                           ; $656e: $00
    nop                                           ; $656f: $00
    pop af                                        ; $6570: $f1
    rra                                           ; $6571: $1f
    rst $38                                       ; $6572: $ff
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    rrca                                          ; $6578: $0f
    rst $38                                       ; $6579: $ff
    rst $38                                       ; $657a: $ff
    nop                                           ; $657b: $00
    nop                                           ; $657c: $00
    nop                                           ; $657d: $00
    nop                                           ; $657e: $00
    nop                                           ; $657f: $00
    rrca                                          ; $6580: $0f
    rst $38                                       ; $6581: $ff
    ld de, $00f0                                  ; $6582: $11 $f0 $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    rrca                                          ; $6588: $0f
    pop af                                        ; $6589: $f1
    rra                                           ; $658a: $1f
    ldh a, [rP1]                                  ; $658b: $f0 $00
    nop                                           ; $658d: $00
    nop                                           ; $658e: $00
    nop                                           ; $658f: $00
    nop                                           ; $6590: $00
    pop af                                        ; $6591: $f1
    rra                                           ; $6592: $1f
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    rrca                                          ; $6598: $0f
    pop af                                        ; $6599: $f1
    ld de, $00f0                                  ; $659a: $11 $f0 $00
    nop                                           ; $659d: $00
    nop                                           ; $659e: $00
    nop                                           ; $659f: $00
    rrca                                          ; $65a0: $0f
    di                                            ; $65a1: $f3
    ccf                                           ; $65a2: $3f
    ldh a, [rP1]                                  ; $65a3: $f0 $00
    nop                                           ; $65a5: $00
    nop                                           ; $65a6: $00
    nop                                           ; $65a7: $00
    nop                                           ; $65a8: $00
    rst $38                                       ; $65a9: $ff
    rst $38                                       ; $65aa: $ff
    nop                                           ; $65ab: $00
    nop                                           ; $65ac: $00
    nop                                           ; $65ad: $00
    nop                                           ; $65ae: $00
    nop                                           ; $65af: $00
    nop                                           ; $65b0: $00
    rrca                                          ; $65b1: $0f
    rst $38                                       ; $65b2: $ff
    nop                                           ; $65b3: $00
    nop                                           ; $65b4: $00
    nop                                           ; $65b5: $00
    nop                                           ; $65b6: $00
    nop                                           ; $65b7: $00
    nop                                           ; $65b8: $00
    nop                                           ; $65b9: $00
    nop                                           ; $65ba: $00
    nop                                           ; $65bb: $00
    nop                                           ; $65bc: $00
    nop                                           ; $65bd: $00
    nop                                           ; $65be: $00
    nop                                           ; $65bf: $00
    nop                                           ; $65c0: $00
    nop                                           ; $65c1: $00
    nop                                           ; $65c2: $00
    nop                                           ; $65c3: $00
    nop                                           ; $65c4: $00
    nop                                           ; $65c5: $00
    jr z, jr_044_661f                             ; $65c6: $28 $57

    ld e, b                                       ; $65c8: $58
    ld h, [hl]                                    ; $65c9: $66
    ld [hl], a                                    ; $65ca: $77
    rst $38                                       ; $65cb: $ff
    inc b                                         ; $65cc: $04
    nop                                           ; $65cd: $00
    nop                                           ; $65ce: $00
    nop                                           ; $65cf: $00
    rrca                                          ; $65d0: $0f
    ldh a, [rP1]                                  ; $65d1: $f0 $00
    nop                                           ; $65d3: $00
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    nop                                           ; $65d6: $00
    nop                                           ; $65d7: $00
    rst $38                                       ; $65d8: $ff
    rst $38                                       ; $65d9: $ff
    ldh a, [rP1]                                  ; $65da: $f0 $00
    nop                                           ; $65dc: $00
    nop                                           ; $65dd: $00
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    rst $38                                       ; $65e0: $ff
    rst $38                                       ; $65e1: $ff
    ldh a, [rP1]                                  ; $65e2: $f0 $00
    nop                                           ; $65e4: $00
    nop                                           ; $65e5: $00
    nop                                           ; $65e6: $00
    nop                                           ; $65e7: $00
    rst $38                                       ; $65e8: $ff
    rst $38                                       ; $65e9: $ff
    nop                                           ; $65ea: $00
    nop                                           ; $65eb: $00
    nop                                           ; $65ec: $00
    nop                                           ; $65ed: $00
    nop                                           ; $65ee: $00
    nop                                           ; $65ef: $00
    rst $38                                       ; $65f0: $ff
    pop af                                        ; $65f1: $f1
    ldh a, [rP1]                                  ; $65f2: $f0 $00
    nop                                           ; $65f4: $00
    nop                                           ; $65f5: $00
    nop                                           ; $65f6: $00
    rrca                                          ; $65f7: $0f
    rra                                           ; $65f8: $1f
    pop af                                        ; $65f9: $f1
    ldh a, [rP1]                                  ; $65fa: $f0 $00
    nop                                           ; $65fc: $00
    nop                                           ; $65fd: $00
    nop                                           ; $65fe: $00
    nop                                           ; $65ff: $00
    rst $38                                       ; $6600: $ff
    pop af                                        ; $6601: $f1
    rst $38                                       ; $6602: $ff
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    ldh a, [rP1]                                  ; $660a: $f0 $00
    nop                                           ; $660c: $00
    nop                                           ; $660d: $00
    nop                                           ; $660e: $00
    nop                                           ; $660f: $00
    rst $38                                       ; $6610: $ff
    rst $38                                       ; $6611: $ff
    ldh a, [rP1]                                  ; $6612: $f0 $00
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    rst $38                                       ; $6618: $ff
    ccf                                           ; $6619: $3f
    ldh a, [rP1]                                  ; $661a: $f0 $00
    nop                                           ; $661c: $00
    nop                                           ; $661d: $00
    nop                                           ; $661e: $00

jr_044_661f:
    nop                                           ; $661f: $00
    rst $38                                       ; $6620: $ff
    rst $38                                       ; $6621: $ff
    ldh a, [rP1]                                  ; $6622: $f0 $00
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    rrca                                          ; $6628: $0f
    rst $38                                       ; $6629: $ff
    rra                                           ; $662a: $1f
    nop                                           ; $662b: $00
    nop                                           ; $662c: $00
    nop                                           ; $662d: $00
    nop                                           ; $662e: $00
    nop                                           ; $662f: $00
    rrca                                          ; $6630: $0f
    ld de, $00f0                                  ; $6631: $11 $f0 $00
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    rrca                                          ; $6638: $0f
    rst $38                                       ; $6639: $ff
    rst $38                                       ; $663a: $ff
    nop                                           ; $663b: $00
    nop                                           ; $663c: $00
    nop                                           ; $663d: $00
    nop                                           ; $663e: $00
    nop                                           ; $663f: $00
    rrca                                          ; $6640: $0f
    rst $38                                       ; $6641: $ff
    rst $38                                       ; $6642: $ff
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    rst $38                                       ; $6649: $ff
    ldh a, [rP1]                                  ; $664a: $f0 $00
    nop                                           ; $664c: $00
    ld b, e                                       ; $664d: $43
    rla                                           ; $664e: $17
    jr jr_044_667a                                ; $664f: $18 $29

    ld d, a                                       ; $6651: $57
    ld l, b                                       ; $6652: $68
    rst $38                                       ; $6653: $ff
    dec b                                         ; $6654: $05
    nop                                           ; $6655: $00
    rst $38                                       ; $6656: $ff
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665a: $00
    nop                                           ; $665b: $00
    nop                                           ; $665c: $00
    rrca                                          ; $665d: $0f
    rst $38                                       ; $665e: $ff
    ldh a, [rP1]                                  ; $665f: $f0 $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    rrca                                          ; $6665: $0f
    rst $38                                       ; $6666: $ff
    ldh a, [rP1]                                  ; $6667: $f0 $00
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    nop                                           ; $666b: $00
    nop                                           ; $666c: $00
    nop                                           ; $666d: $00
    rst $38                                       ; $666e: $ff
    rst $38                                       ; $666f: $ff
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    rst $38                                       ; $6676: $ff
    rst $38                                       ; $6677: $ff
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00

jr_044_667a:
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    nop                                           ; $667c: $00
    nop                                           ; $667d: $00
    rst $38                                       ; $667e: $ff
    rst $38                                       ; $667f: $ff
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    rst $38                                       ; $6686: $ff
    rst $38                                       ; $6687: $ff
    ldh a, [rP1]                                  ; $6688: $f0 $00
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    nop                                           ; $668c: $00
    nop                                           ; $668d: $00
    rrca                                          ; $668e: $0f
    rst $38                                       ; $668f: $ff
    rst $38                                       ; $6690: $ff
    ldh a, [rP1]                                  ; $6691: $f0 $00
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    rst $38                                       ; $6697: $ff
    rst $38                                       ; $6698: $ff
    rst $38                                       ; $6699: $ff
    nop                                           ; $669a: $00
    nop                                           ; $669b: $00
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    nop                                           ; $669e: $00
    rrca                                          ; $669f: $0f
    rst $38                                       ; $66a0: $ff
    rst $38                                       ; $66a1: $ff
    ldh a, [rP1]                                  ; $66a2: $f0 $00
    nop                                           ; $66a4: $00
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    rrca                                          ; $66a7: $0f
    rst $38                                       ; $66a8: $ff
    rst $38                                       ; $66a9: $ff
    rst $38                                       ; $66aa: $ff
    ldh a, [rP1]                                  ; $66ab: $f0 $00
    nop                                           ; $66ad: $00
    nop                                           ; $66ae: $00
    nop                                           ; $66af: $00
    rrca                                          ; $66b0: $0f
    rst $38                                       ; $66b1: $ff
    rst $38                                       ; $66b2: $ff
    rst $38                                       ; $66b3: $ff
    nop                                           ; $66b4: $00
    nop                                           ; $66b5: $00
    nop                                           ; $66b6: $00
    nop                                           ; $66b7: $00
    nop                                           ; $66b8: $00
    rst $38                                       ; $66b9: $ff
    rst $38                                       ; $66ba: $ff
    rst $38                                       ; $66bb: $ff
    nop                                           ; $66bc: $00
    nop                                           ; $66bd: $00
    nop                                           ; $66be: $00
    nop                                           ; $66bf: $00
    nop                                           ; $66c0: $00
    rrca                                          ; $66c1: $0f
    rst $38                                       ; $66c2: $ff
    rst $38                                       ; $66c3: $ff
    ldh a, [rP1]                                  ; $66c4: $f0 $00
    nop                                           ; $66c6: $00
    nop                                           ; $66c7: $00
    nop                                           ; $66c8: $00
    nop                                           ; $66c9: $00
    rrca                                          ; $66ca: $0f
    ccf                                           ; $66cb: $3f
    ldh a, [rP1]                                  ; $66cc: $f0 $00
    nop                                           ; $66ce: $00
    nop                                           ; $66cf: $00
    nop                                           ; $66d0: $00
    nop                                           ; $66d1: $00
    rrca                                          ; $66d2: $0f
    rst $38                                       ; $66d3: $ff
    nop                                           ; $66d4: $00
    ld c, [hl]                                    ; $66d5: $4e
    ld [de], a                                    ; $66d6: $12
    inc de                                        ; $66d7: $13
    ld d, h                                       ; $66d8: $54
    add [hl]                                      ; $66d9: $86
    sub a                                         ; $66da: $97
    sbc b                                         ; $66db: $98
    rst $38                                       ; $66dc: $ff
    ld b, $00                                     ; $66dd: $06 $00
    nop                                           ; $66df: $00
    nop                                           ; $66e0: $00
    nop                                           ; $66e1: $00
    nop                                           ; $66e2: $00
    nop                                           ; $66e3: $00
    nop                                           ; $66e4: $00
    nop                                           ; $66e5: $00
    nop                                           ; $66e6: $00
    nop                                           ; $66e7: $00
    rrca                                          ; $66e8: $0f
    nop                                           ; $66e9: $00
    nop                                           ; $66ea: $00
    nop                                           ; $66eb: $00
    nop                                           ; $66ec: $00
    nop                                           ; $66ed: $00
    nop                                           ; $66ee: $00
    nop                                           ; $66ef: $00
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    ldh a, [rP1]                                  ; $66f2: $f0 $00
    nop                                           ; $66f4: $00
    nop                                           ; $66f5: $00
    nop                                           ; $66f6: $00
    nop                                           ; $66f7: $00
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    rst $38                                       ; $66fa: $ff
    nop                                           ; $66fb: $00
    nop                                           ; $66fc: $00
    nop                                           ; $66fd: $00
    nop                                           ; $66fe: $00
    nop                                           ; $66ff: $00
    rrca                                          ; $6700: $0f
    rst $38                                       ; $6701: $ff
    rst $38                                       ; $6702: $ff
    ldh a, [rP1]                                  ; $6703: $f0 $00
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    nop                                           ; $6707: $00
    nop                                           ; $6708: $00
    pop af                                        ; $6709: $f1
    rst $38                                       ; $670a: $ff
    ldh a, [rP1]                                  ; $670b: $f0 $00
    nop                                           ; $670d: $00
    nop                                           ; $670e: $00
    nop                                           ; $670f: $00
    rst $38                                       ; $6710: $ff
    pop af                                        ; $6711: $f1
    rst $38                                       ; $6712: $ff
    ldh a, [rP1]                                  ; $6713: $f0 $00
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    nop                                           ; $6718: $00
    rst $38                                       ; $6719: $ff
    rst $38                                       ; $671a: $ff
    ldh a, [rP1]                                  ; $671b: $f0 $00
    nop                                           ; $671d: $00
    nop                                           ; $671e: $00
    nop                                           ; $671f: $00
    nop                                           ; $6720: $00
    rst $38                                       ; $6721: $ff
    rst $38                                       ; $6722: $ff
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    rst $38                                       ; $6729: $ff
    rst $38                                       ; $672a: $ff
    nop                                           ; $672b: $00
    nop                                           ; $672c: $00
    nop                                           ; $672d: $00
    nop                                           ; $672e: $00
    nop                                           ; $672f: $00
    nop                                           ; $6730: $00
    rst $38                                       ; $6731: $ff
    rst $38                                       ; $6732: $ff
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    rrca                                          ; $6738: $0f
    rst $38                                       ; $6739: $ff
    rra                                           ; $673a: $1f
    nop                                           ; $673b: $00
    nop                                           ; $673c: $00
    nop                                           ; $673d: $00
    nop                                           ; $673e: $00
    nop                                           ; $673f: $00
    rrca                                          ; $6740: $0f
    di                                            ; $6741: $f3
    ldh a, [rP1]                                  ; $6742: $f0 $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    rrca                                          ; $6748: $0f
    rst $38                                       ; $6749: $ff
    ldh a, [rP1]                                  ; $674a: $f0 $00
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
    jr c, jr_044_6785                             ; $675e: $38 $25

    ld h, $48                                     ; $6760: $26 $48
    ld e, c                                       ; $6762: $59
    rst $38                                       ; $6763: $ff
    inc b                                         ; $6764: $04
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    nop                                           ; $676d: $00
    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    rst $38                                       ; $6772: $ff
    ldh a, [rP1]                                  ; $6773: $f0 $00
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    pop af                                        ; $677a: $f1
    rst $38                                       ; $677b: $ff
    nop                                           ; $677c: $00
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    nop                                           ; $677f: $00
    nop                                           ; $6780: $00
    rrca                                          ; $6781: $0f
    rst $38                                       ; $6782: $ff
    rst $38                                       ; $6783: $ff
    nop                                           ; $6784: $00

jr_044_6785:
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    rrca                                          ; $6789: $0f
    rst $38                                       ; $678a: $ff
    rra                                           ; $678b: $1f
    nop                                           ; $678c: $00
    nop                                           ; $678d: $00
    nop                                           ; $678e: $00
    nop                                           ; $678f: $00
    nop                                           ; $6790: $00
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    ldh a, [rP1]                                  ; $6793: $f0 $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    rrca                                          ; $6798: $0f
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    nop                                           ; $679d: $00
    nop                                           ; $679e: $00
    nop                                           ; $679f: $00
    rrca                                          ; $67a0: $0f
    rst $38                                       ; $67a1: $ff
    rst $38                                       ; $67a2: $ff
    nop                                           ; $67a3: $00
    nop                                           ; $67a4: $00
    nop                                           ; $67a5: $00
    nop                                           ; $67a6: $00
    rrca                                          ; $67a7: $0f
    rst $38                                       ; $67a8: $ff
    pop af                                        ; $67a9: $f1
    ldh a, [rP1]                                  ; $67aa: $f0 $00
    nop                                           ; $67ac: $00
    nop                                           ; $67ad: $00
    nop                                           ; $67ae: $00
    rrca                                          ; $67af: $0f
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    nop                                           ; $67b2: $00
    nop                                           ; $67b3: $00
    nop                                           ; $67b4: $00
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    nop                                           ; $67ba: $00
    nop                                           ; $67bb: $00
    nop                                           ; $67bc: $00
    nop                                           ; $67bd: $00
    rrca                                          ; $67be: $0f
    rst $38                                       ; $67bf: $ff
    pop af                                        ; $67c0: $f1
    ldh a, [rP1]                                  ; $67c1: $f0 $00
    nop                                           ; $67c3: $00
    nop                                           ; $67c4: $00
    nop                                           ; $67c5: $00
    rst $38                                       ; $67c6: $ff
    rra                                           ; $67c7: $1f
    rra                                           ; $67c8: $1f
    ldh a, [rP1]                                  ; $67c9: $f0 $00
    nop                                           ; $67cb: $00
    nop                                           ; $67cc: $00
    nop                                           ; $67cd: $00
    rst $38                                       ; $67ce: $ff
    rst $38                                       ; $67cf: $ff
    ldh a, [rP1]                                  ; $67d0: $f0 $00
    nop                                           ; $67d2: $00
    nop                                           ; $67d3: $00
    nop                                           ; $67d4: $00
    nop                                           ; $67d5: $00
    rst $38                                       ; $67d6: $ff
    rst $38                                       ; $67d7: $ff
    nop                                           ; $67d8: $00
    nop                                           ; $67d9: $00
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    nop                                           ; $67dc: $00
    nop                                           ; $67dd: $00
    rrca                                          ; $67de: $0f
    ldh a, [rP1]                                  ; $67df: $f0 $00
    nop                                           ; $67e1: $00
    nop                                           ; $67e2: $00
    nop                                           ; $67e3: $00
    nop                                           ; $67e4: $00
    ld b, e                                       ; $67e5: $43
    dec sp                                        ; $67e6: $3b
    inc a                                         ; $67e7: $3c
    ld a, b                                       ; $67e8: $78
    ld a, c                                       ; $67e9: $79
    sub [hl]                                      ; $67ea: $96
    sub a                                         ; $67eb: $97
    rst $38                                       ; $67ec: $ff
    ld b, $00                                     ; $67ed: $06 $00
    nop                                           ; $67ef: $00
    nop                                           ; $67f0: $00
    nop                                           ; $67f1: $00
    nop                                           ; $67f2: $00
    nop                                           ; $67f3: $00
    nop                                           ; $67f4: $00
    nop                                           ; $67f5: $00
    nop                                           ; $67f6: $00
    nop                                           ; $67f7: $00
    nop                                           ; $67f8: $00
    nop                                           ; $67f9: $00
    nop                                           ; $67fa: $00
    nop                                           ; $67fb: $00
    nop                                           ; $67fc: $00
    nop                                           ; $67fd: $00
    nop                                           ; $67fe: $00
    nop                                           ; $67ff: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    ldh a, [rP1]                                  ; $6802: $f0 $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    ldh a, [rP1]                                  ; $680a: $f0 $00
    nop                                           ; $680c: $00
    nop                                           ; $680d: $00
    nop                                           ; $680e: $00
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    rst $38                                       ; $6812: $ff
    ldh a, [rP1]                                  ; $6813: $f0 $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    rrca                                          ; $6818: $0f
    rst $38                                       ; $6819: $ff
    pop af                                        ; $681a: $f1
    ldh a, [rP1]                                  ; $681b: $f0 $00
    nop                                           ; $681d: $00
    nop                                           ; $681e: $00
    nop                                           ; $681f: $00
    rrca                                          ; $6820: $0f
    rra                                           ; $6821: $1f
    rra                                           ; $6822: $1f
    rst $38                                       ; $6823: $ff
    ldh a, [rP1]                                  ; $6824: $f0 $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    ld bc, $ffff                                  ; $6828: $01 $ff $ff
    rst $38                                       ; $682b: $ff
    ldh a, [rP1]                                  ; $682c: $f0 $00
    nop                                           ; $682e: $00
    nop                                           ; $682f: $00
    pop af                                        ; $6830: $f1
    rst $38                                       ; $6831: $ff
    rra                                           ; $6832: $1f
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    rst $38                                       ; $6838: $ff
    pop af                                        ; $6839: $f1
    ld de, $00f0                                  ; $683a: $11 $f0 $00
    nop                                           ; $683d: $00
    nop                                           ; $683e: $00
    nop                                           ; $683f: $00
    nop                                           ; $6840: $00
    rrca                                          ; $6841: $0f
    pop af                                        ; $6842: $f1
    rst $38                                       ; $6843: $ff
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    rst $38                                       ; $684a: $ff
    ccf                                           ; $684b: $3f
    nop                                           ; $684c: $00
    nop                                           ; $684d: $00
    nop                                           ; $684e: $00
    nop                                           ; $684f: $00
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    rst $38                                       ; $6852: $ff
    rst $38                                       ; $6853: $ff
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    rst $38                                       ; $685a: $ff
    rst $38                                       ; $685b: $ff
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    ldh a, [rP1]                                  ; $6863: $f0 $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686a: $00
    nop                                           ; $686b: $00
    nop                                           ; $686c: $00
    nop                                           ; $686d: $00
    cpl                                           ; $686e: $2f
    halt                                          ; $686f: $76
    ld [hl], a                                    ; $6870: $77
    rst $38                                       ; $6871: $ff
    ld [bc], a                                    ; $6872: $02
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    nop                                           ; $6878: $00
    ldh a, [rP1]                                  ; $6879: $f0 $00
    nop                                           ; $687b: $00
    nop                                           ; $687c: $00
    nop                                           ; $687d: $00
    nop                                           ; $687e: $00
    nop                                           ; $687f: $00
    rst $38                                       ; $6880: $ff
    rst $38                                       ; $6881: $ff
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    rst $38                                       ; $6887: $ff
    rst $38                                       ; $6888: $ff
    rst $38                                       ; $6889: $ff
    ldh a, [rP1]                                  ; $688a: $f0 $00
    nop                                           ; $688c: $00
    nop                                           ; $688d: $00
    rrca                                          ; $688e: $0f
    rst $38                                       ; $688f: $ff
    rst $38                                       ; $6890: $ff
    rst $38                                       ; $6891: $ff
    rst $38                                       ; $6892: $ff
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    rrca                                          ; $6896: $0f
    rst $38                                       ; $6897: $ff
    rst $38                                       ; $6898: $ff
    rst $38                                       ; $6899: $ff
    nop                                           ; $689a: $00
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    nop                                           ; $689d: $00
    rrca                                          ; $689e: $0f
    rst $38                                       ; $689f: $ff
    ldh a, [$f0]                                  ; $68a0: $f0 $f0
    nop                                           ; $68a2: $00
    nop                                           ; $68a3: $00
    nop                                           ; $68a4: $00
    nop                                           ; $68a5: $00
    rrca                                          ; $68a6: $0f
    rst $38                                       ; $68a7: $ff
    ldh a, [rP1]                                  ; $68a8: $f0 $00
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    rrca                                          ; $68ae: $0f
    rst $38                                       ; $68af: $ff
    nop                                           ; $68b0: $00
    nop                                           ; $68b1: $00
    nop                                           ; $68b2: $00
    nop                                           ; $68b3: $00
    nop                                           ; $68b4: $00
    nop                                           ; $68b5: $00
    rrca                                          ; $68b6: $0f
    rst $38                                       ; $68b7: $ff
    ldh a, [rP1]                                  ; $68b8: $f0 $00
    nop                                           ; $68ba: $00
    nop                                           ; $68bb: $00
    nop                                           ; $68bc: $00
    nop                                           ; $68bd: $00
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    ldh a, [rP1]                                  ; $68c0: $f0 $00
    nop                                           ; $68c2: $00
    nop                                           ; $68c3: $00
    rrca                                          ; $68c4: $0f
    ldh a, [rIE]                                  ; $68c5: $f0 $ff
    rst $38                                       ; $68c7: $ff
    ldh a, [rP1]                                  ; $68c8: $f0 $00
    nop                                           ; $68ca: $00
    rrca                                          ; $68cb: $0f
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    ldh a, [rP1]                                  ; $68d0: $f0 $00
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    rst $38                                       ; $68d7: $ff
    nop                                           ; $68d8: $00
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    nop                                           ; $68db: $00
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    rst $38                                       ; $68de: $ff
    ldh a, [rP1]                                  ; $68df: $f0 $00
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    nop                                           ; $68e7: $00
    nop                                           ; $68e8: $00
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    nop                                           ; $68eb: $00
    rst $38                                       ; $68ec: $ff
    ldh a, [rP1]                                  ; $68ed: $f0 $00
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    ld e, d                                       ; $68f3: $5a
    inc l                                         ; $68f4: $2c
    dec l                                         ; $68f5: $2d
    ld c, c                                       ; $68f6: $49
    sbc b                                         ; $68f7: $98
    sbc c                                         ; $68f8: $99
    rst $38                                       ; $68f9: $ff
    dec b                                         ; $68fa: $05
    nop                                           ; $68fb: $00
    nop                                           ; $68fc: $00
    nop                                           ; $68fd: $00
    nop                                           ; $68fe: $00
    rst $38                                       ; $68ff: $ff
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    rst $38                                       ; $6907: $ff
    ldh a, [rP1]                                  ; $6908: $f0 $00
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    rrca                                          ; $690e: $0f
    rst $38                                       ; $690f: $ff
    ldh a, [rP1]                                  ; $6910: $f0 $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    rst $38                                       ; $6917: $ff
    ldh a, [rP1]                                  ; $6918: $f0 $00
    nop                                           ; $691a: $00
    nop                                           ; $691b: $00
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    rrca                                          ; $691e: $0f
    rst $38                                       ; $691f: $ff
    ldh a, [rP1]                                  ; $6920: $f0 $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    rrca                                          ; $6926: $0f
    rst $38                                       ; $6927: $ff
    ldh a, [rP1]                                  ; $6928: $f0 $00
    nop                                           ; $692a: $00
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    rst $38                                       ; $692e: $ff
    rst $38                                       ; $692f: $ff
    ldh a, [rP1]                                  ; $6930: $f0 $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    rst $38                                       ; $6936: $ff
    rst $38                                       ; $6937: $ff
    ldh a, [rP1]                                  ; $6938: $f0 $00
    nop                                           ; $693a: $00
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    rrca                                          ; $693d: $0f
    rst $38                                       ; $693e: $ff
    rst $38                                       ; $693f: $ff
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    rrca                                          ; $6945: $0f
    rst $38                                       ; $6946: $ff
    ldh a, [rP1]                                  ; $6947: $f0 $00
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    rrca                                          ; $694d: $0f
    rst $38                                       ; $694e: $ff
    ldh a, [rP1]                                  ; $694f: $f0 $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    rrca                                          ; $6955: $0f
    di                                            ; $6956: $f3
    rst $38                                       ; $6957: $ff
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695a: $00
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    nop                                           ; $695d: $00
    rst $38                                       ; $695e: $ff
    rra                                           ; $695f: $1f
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    rrca                                          ; $6966: $0f
    rst $38                                       ; $6967: $ff
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    nop                                           ; $696b: $00
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    rrca                                          ; $696e: $0f
    ccf                                           ; $696f: $3f
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    rrca                                          ; $6976: $0f
    rst $38                                       ; $6977: $ff
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    ld a, [hl-]                                   ; $697b: $3a
    add hl, bc                                    ; $697c: $09
    jr jr_044_6999                                ; $697d: $18 $1a

    add hl, hl                                    ; $697f: $29
    ld e, c                                       ; $6980: $59
    ld h, a                                       ; $6981: $67
    ld l, b                                       ; $6982: $68
    add a                                         ; $6983: $87
    rst $38                                       ; $6984: $ff
    ld [$0000], sp                                ; $6985: $08 $00 $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    nop                                           ; $698c: $00
    nop                                           ; $698d: $00
    nop                                           ; $698e: $00
    nop                                           ; $698f: $00
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    rrca                                          ; $6997: $0f
    rst $38                                       ; $6998: $ff

jr_044_6999:
    nop                                           ; $6999: $00
    nop                                           ; $699a: $00
    nop                                           ; $699b: $00
    nop                                           ; $699c: $00
    nop                                           ; $699d: $00
    nop                                           ; $699e: $00
    rst $38                                       ; $699f: $ff
    rst $38                                       ; $69a0: $ff
    nop                                           ; $69a1: $00
    nop                                           ; $69a2: $00
    nop                                           ; $69a3: $00
    nop                                           ; $69a4: $00
    nop                                           ; $69a5: $00
    nop                                           ; $69a6: $00
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    rst $38                                       ; $69a9: $ff
    nop                                           ; $69aa: $00
    nop                                           ; $69ab: $00
    nop                                           ; $69ac: $00
    nop                                           ; $69ad: $00
    nop                                           ; $69ae: $00
    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff
    nop                                           ; $69b2: $00
    nop                                           ; $69b3: $00
    nop                                           ; $69b4: $00
    nop                                           ; $69b5: $00
    nop                                           ; $69b6: $00
    nop                                           ; $69b7: $00
    rrca                                          ; $69b8: $0f
    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    ldh a, [rP1]                                  ; $69bc: $f0 $00
    nop                                           ; $69be: $00
    nop                                           ; $69bf: $00
    rrca                                          ; $69c0: $0f
    rst $38                                       ; $69c1: $ff
    rra                                           ; $69c2: $1f
    ldh a, [rP1]                                  ; $69c3: $f0 $00
    nop                                           ; $69c5: $00
    nop                                           ; $69c6: $00
    nop                                           ; $69c7: $00
    rrca                                          ; $69c8: $0f
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    ldh a, [rP1]                                  ; $69cb: $f0 $00
    nop                                           ; $69cd: $00
    nop                                           ; $69ce: $00
    nop                                           ; $69cf: $00
    nop                                           ; $69d0: $00
    rst $38                                       ; $69d1: $ff
    rst $38                                       ; $69d2: $ff
    rst $38                                       ; $69d3: $ff
    nop                                           ; $69d4: $00
    nop                                           ; $69d5: $00
    nop                                           ; $69d6: $00
    nop                                           ; $69d7: $00
    nop                                           ; $69d8: $00
    nop                                           ; $69d9: $00
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    ldh a, [rP1]                                  ; $69dc: $f0 $00
    nop                                           ; $69de: $00
    nop                                           ; $69df: $00
    nop                                           ; $69e0: $00
    nop                                           ; $69e1: $00
    rst $38                                       ; $69e2: $ff
    rst $38                                       ; $69e3: $ff
    ldh a, [rP1]                                  ; $69e4: $f0 $00
    nop                                           ; $69e6: $00
    nop                                           ; $69e7: $00
    nop                                           ; $69e8: $00
    nop                                           ; $69e9: $00
    rst $38                                       ; $69ea: $ff
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    nop                                           ; $69ed: $00
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    rrca                                          ; $69f2: $0f
    rst $38                                       ; $69f3: $ff
    rst $38                                       ; $69f4: $ff
    ldh a, [rP1]                                  ; $69f5: $f0 $00
    nop                                           ; $69f7: $00
    nop                                           ; $69f8: $00
    nop                                           ; $69f9: $00
    nop                                           ; $69fa: $00
    rst $38                                       ; $69fb: $ff
    rst $38                                       ; $69fc: $ff
    ldh a, [rP1]                                  ; $69fd: $f0 $00
    nop                                           ; $69ff: $00
    nop                                           ; $6a00: $00
    nop                                           ; $6a01: $00
    nop                                           ; $6a02: $00
    rrca                                          ; $6a03: $0f
    rst $38                                       ; $6a04: $ff
    nop                                           ; $6a05: $00
    ld c, d                                       ; $6a06: $4a
    inc sp                                        ; $6a07: $33
    inc [hl]                                      ; $6a08: $34
    dec [hl]                                      ; $6a09: $35
    ld h, [hl]                                    ; $6a0a: $66
    rst $38                                       ; $6a0b: $ff
    inc b                                         ; $6a0c: $04
    dec d                                         ; $6a0d: $15
    ld [hl], h                                    ; $6a0e: $74
    inc sp                                        ; $6a0f: $33
    ld l, d                                       ; $6a10: $6a
    call z, Call_044_556a                         ; $6a11: $cc $6a $55
    ld l, e                                       ; $6a14: $6b
    db $f4                                        ; $6a15: $f4
    ld l, e                                       ; $6a16: $6b
    add h                                         ; $6a17: $84
    ld l, h                                       ; $6a18: $6c
    inc hl                                        ; $6a19: $23
    ld l, l                                       ; $6a1a: $6d
    push bc                                       ; $6a1b: $c5
    ld l, l                                       ; $6a1c: $6d
    ld c, a                                       ; $6a1d: $4f
    ld l, [hl]                                    ; $6a1e: $6e
    ldh a, [$6e]                                  ; $6a1f: $f0 $6e
    ld [hl], l                                    ; $6a21: $75
    ld l, a                                       ; $6a22: $6f
    dec bc                                        ; $6a23: $0b
    ld [hl], b                                    ; $6a24: $70
    sub a                                         ; $6a25: $97
    ld [hl], b                                    ; $6a26: $70
    inc sp                                        ; $6a27: $33
    ld [hl], c                                    ; $6a28: $71
    cp b                                          ; $6a29: $b8
    ld [hl], c                                    ; $6a2a: $71
    ld e, c                                       ; $6a2b: $59
    ld [hl], d                                    ; $6a2c: $72
    add sp, $72                                   ; $6a2d: $e8 $72
    add e                                         ; $6a2f: $83
    ld [hl], e                                    ; $6a30: $73
    dec d                                         ; $6a31: $15
    ld [hl], h                                    ; $6a32: $74
    nop                                           ; $6a33: $00
    nop                                           ; $6a34: $00
    nop                                           ; $6a35: $00
    rst $38                                       ; $6a36: $ff
    rst $38                                       ; $6a37: $ff
    nop                                           ; $6a38: $00
    nop                                           ; $6a39: $00
    nop                                           ; $6a3a: $00
    nop                                           ; $6a3b: $00
    nop                                           ; $6a3c: $00
    rrca                                          ; $6a3d: $0f
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    ldh a, [rP1]                                  ; $6a40: $f0 $00
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    nop                                           ; $6a44: $00
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    rrca                                          ; $6a4c: $0f
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    rst $38                                       ; $6a50: $ff
    ldh a, [rP1]                                  ; $6a51: $f0 $00
    nop                                           ; $6a53: $00
    rrca                                          ; $6a54: $0f
    rst $38                                       ; $6a55: $ff
    rst $38                                       ; $6a56: $ff
    ccf                                           ; $6a57: $3f
    rst $38                                       ; $6a58: $ff
    ldh a, [rP1]                                  ; $6a59: $f0 $00
    nop                                           ; $6a5b: $00
    rrca                                          ; $6a5c: $0f
    cpl                                           ; $6a5d: $2f
    rst $38                                       ; $6a5e: $ff
    di                                            ; $6a5f: $f3
    ld a, [c]                                     ; $6a60: $f2
    ldh a, [rP1]                                  ; $6a61: $f0 $00
    nop                                           ; $6a63: $00
    rrca                                          ; $6a64: $0f
    cpl                                           ; $6a65: $2f
    rst $38                                       ; $6a66: $ff
    inc sp                                        ; $6a67: $33
    rst $38                                       ; $6a68: $ff
    ldh a, [rP1]                                  ; $6a69: $f0 $00
    nop                                           ; $6a6b: $00
    rrca                                          ; $6a6c: $0f
    cpl                                           ; $6a6d: $2f
    rst $38                                       ; $6a6e: $ff
    di                                            ; $6a6f: $f3
    rst $38                                       ; $6a70: $ff
    ldh a, [rP1]                                  ; $6a71: $f0 $00
    nop                                           ; $6a73: $00
    rrca                                          ; $6a74: $0f
    ld [hl+], a                                   ; $6a75: $22
    rst $38                                       ; $6a76: $ff
    rst $38                                       ; $6a77: $ff
    ld a, [c]                                     ; $6a78: $f2
    ldh a, [rP1]                                  ; $6a79: $f0 $00
    nop                                           ; $6a7b: $00
    rrca                                          ; $6a7c: $0f
    rst $38                                       ; $6a7d: $ff
    pop af                                        ; $6a7e: $f1
    rra                                           ; $6a7f: $1f
    rst $38                                       ; $6a80: $ff
    ldh a, [rP1]                                  ; $6a81: $f0 $00
    nop                                           ; $6a83: $00
    rrca                                          ; $6a84: $0f
    rst $38                                       ; $6a85: $ff
    rst $38                                       ; $6a86: $ff
    rst $38                                       ; $6a87: $ff
    rst $38                                       ; $6a88: $ff
    ldh a, [rP1]                                  ; $6a89: $f0 $00
    nop                                           ; $6a8b: $00
    rrca                                          ; $6a8c: $0f
    rst $38                                       ; $6a8d: $ff
    rst $38                                       ; $6a8e: $ff
    di                                            ; $6a8f: $f3
    ccf                                           ; $6a90: $3f
    ldh a, [rP1]                                  ; $6a91: $f0 $00
    nop                                           ; $6a93: $00
    rrca                                          ; $6a94: $0f
    rst $38                                       ; $6a95: $ff
    rst $38                                       ; $6a96: $ff
    rst $38                                       ; $6a97: $ff
    ccf                                           ; $6a98: $3f
    ldh a, [rP1]                                  ; $6a99: $f0 $00
    nop                                           ; $6a9b: $00
    nop                                           ; $6a9c: $00
    rst $38                                       ; $6a9d: $ff
    ld de, $ff11                                  ; $6a9e: $11 $11 $ff
    nop                                           ; $6aa1: $00
    nop                                           ; $6aa2: $00
    nop                                           ; $6aa3: $00
    nop                                           ; $6aa4: $00
    rrca                                          ; $6aa5: $0f
    ld de, $f011                                  ; $6aa6: $11 $11 $f0
    nop                                           ; $6aa9: $00
    nop                                           ; $6aaa: $00
    nop                                           ; $6aab: $00
    nop                                           ; $6aac: $00
    nop                                           ; $6aad: $00
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    nop                                           ; $6ab0: $00
    nop                                           ; $6ab1: $00
    nop                                           ; $6ab2: $00
    ld l, a                                       ; $6ab3: $6f
    jr c, jr_044_6af9                             ; $6ab4: $38 $43

    ld b, [hl]                                    ; $6ab6: $46
    ld b, a                                       ; $6ab7: $47
    ld c, e                                       ; $6ab8: $4b
    ld c, h                                       ; $6ab9: $4c
    ld h, l                                       ; $6aba: $65
    ld h, [hl]                                    ; $6abb: $66
    ld h, a                                       ; $6abc: $67
    ld a, b                                       ; $6abd: $78
    add a                                         ; $6abe: $87
    sub h                                         ; $6abf: $94
    sub l                                         ; $6ac0: $95
    and [hl]                                      ; $6ac1: $a6
    and a                                         ; $6ac2: $a7
    xor b                                         ; $6ac3: $a8
    or e                                          ; $6ac4: $b3
    or l                                          ; $6ac5: $b5
    cp e                                          ; $6ac6: $bb
    cp h                                          ; $6ac7: $bc
    add $c7                                       ; $6ac8: $c6 $c7
    rst $38                                       ; $6aca: $ff
    ld d, $22                                     ; $6acb: $16 $22
    ld [hl+], a                                   ; $6acd: $22
    ld [hl+], a                                   ; $6ace: $22
    ld [hl+], a                                   ; $6acf: $22
    cpl                                           ; $6ad0: $2f
    rst $38                                       ; $6ad1: $ff
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    ld a, [c]                                     ; $6ad4: $f2
    ld [hl+], a                                   ; $6ad5: $22
    ld [hl+], a                                   ; $6ad6: $22
    ld [hl+], a                                   ; $6ad7: $22
    rst $38                                       ; $6ad8: $ff
    ldh a, [rP1]                                  ; $6ad9: $f0 $00
    nop                                           ; $6adb: $00
    rst $38                                       ; $6adc: $ff
    ld a, [c]                                     ; $6add: $f2
    ld [hl+], a                                   ; $6ade: $22
    ld [hl+], a                                   ; $6adf: $22
    rst $38                                       ; $6ae0: $ff
    ldh a, [rP1]                                  ; $6ae1: $f0 $00
    nop                                           ; $6ae3: $00
    rrca                                          ; $6ae4: $0f
    ld a, [c]                                     ; $6ae5: $f2
    ld [hl+], a                                   ; $6ae6: $22
    ld [hl+], a                                   ; $6ae7: $22
    rst $38                                       ; $6ae8: $ff
    ldh a, [rP1]                                  ; $6ae9: $f0 $00
    nop                                           ; $6aeb: $00
    nop                                           ; $6aec: $00
    rst $38                                       ; $6aed: $ff
    ld [hl+], a                                   ; $6aee: $22
    ld [hl+], a                                   ; $6aef: $22
    cpl                                           ; $6af0: $2f
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    nop                                           ; $6af4: $00
    rrca                                          ; $6af5: $0f
    rst $38                                       ; $6af6: $ff
    rst $38                                       ; $6af7: $ff
    rst $38                                       ; $6af8: $ff

jr_044_6af9:
    ld a, [c]                                     ; $6af9: $f2
    ld [hl+], a                                   ; $6afa: $22
    rst $38                                       ; $6afb: $ff
    nop                                           ; $6afc: $00
    nop                                           ; $6afd: $00
    rrca                                          ; $6afe: $0f
    rst $38                                       ; $6aff: $ff
    rst $38                                       ; $6b00: $ff
    ld a, [c]                                     ; $6b01: $f2
    ld [hl+], a                                   ; $6b02: $22
    ld [hl+], a                                   ; $6b03: $22
    nop                                           ; $6b04: $00
    nop                                           ; $6b05: $00
    nop                                           ; $6b06: $00
    rrca                                          ; $6b07: $0f
    rst $38                                       ; $6b08: $ff
    ld a, [c]                                     ; $6b09: $f2
    ld [hl+], a                                   ; $6b0a: $22
    ld [hl+], a                                   ; $6b0b: $22
    rst $38                                       ; $6b0c: $ff
    ldh a, [rP1]                                  ; $6b0d: $f0 $00
    rrca                                          ; $6b0f: $0f
    rst $38                                       ; $6b10: $ff
    ld [hl+], a                                   ; $6b11: $22
    ld [hl+], a                                   ; $6b12: $22
    ld [hl+], a                                   ; $6b13: $22
    cpl                                           ; $6b14: $2f
    rst $38                                       ; $6b15: $ff
    ldh a, [rIE]                                  ; $6b16: $f0 $ff
    rst $38                                       ; $6b18: $ff
    ld [hl+], a                                   ; $6b19: $22
    ld [hl+], a                                   ; $6b1a: $22
    ld [hl+], a                                   ; $6b1b: $22
    ld a, [c]                                     ; $6b1c: $f2
    cpl                                           ; $6b1d: $2f
    rst $38                                       ; $6b1e: $ff
    rst $38                                       ; $6b1f: $ff
    rst $38                                       ; $6b20: $ff
    ld [hl+], a                                   ; $6b21: $22
    ld [hl+], a                                   ; $6b22: $22
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $38                                       ; $6b26: $ff
    ld [hl+], a                                   ; $6b27: $22
    ld [hl+], a                                   ; $6b28: $22
    ld [hl+], a                                   ; $6b29: $22
    ld [hl+], a                                   ; $6b2a: $22
    rst $38                                       ; $6b2b: $ff
    rrca                                          ; $6b2c: $0f
    rst $38                                       ; $6b2d: $ff
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    ld a, [c]                                     ; $6b31: $f2
    cpl                                           ; $6b32: $2f
    rst $38                                       ; $6b33: $ff
    nop                                           ; $6b34: $00
    nop                                           ; $6b35: $00
    rrca                                          ; $6b36: $0f
    ld de, $fff0                                  ; $6b37: $11 $f0 $ff
    rst $38                                       ; $6b3a: $ff
    ldh a, [rP1]                                  ; $6b3b: $f0 $00
    nop                                           ; $6b3d: $00
    rrca                                          ; $6b3e: $0f
    ccf                                           ; $6b3f: $3f
    ldh a, [rIE]                                  ; $6b40: $f0 $ff
    ldh a, [rP1]                                  ; $6b42: $f0 $00
    nop                                           ; $6b44: $00
    nop                                           ; $6b45: $00
    rrca                                          ; $6b46: $0f
    rst $38                                       ; $6b47: $ff
    nop                                           ; $6b48: $00
    nop                                           ; $6b49: $00
    nop                                           ; $6b4a: $00
    nop                                           ; $6b4b: $00
    ld l, h                                       ; $6b4c: $6c
    add hl, de                                    ; $6b4d: $19
    jr z, jr_044_6ba9                             ; $6b4e: $28 $59

    ld l, b                                       ; $6b50: $68
    ld a, c                                       ; $6b51: $79
    adc b                                         ; $6b52: $88
    rst $38                                       ; $6b53: $ff
    ld b, $00                                     ; $6b54: $06 $00
    rst $38                                       ; $6b56: $ff
    ldh a, [$f0]                                  ; $6b57: $f0 $f0
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    rst $38                                       ; $6b5e: $ff
    rst $38                                       ; $6b5f: $ff
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    ldh a, [rP1]                                  ; $6b63: $f0 $00
    nop                                           ; $6b65: $00
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    rst $38                                       ; $6b68: $ff
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    ldh a, [rP1]                                  ; $6b6b: $f0 $00
    nop                                           ; $6b6d: $00
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    rst $38                                       ; $6b70: $ff
    ld de, $f0ff                                  ; $6b71: $11 $ff $f0
    nop                                           ; $6b74: $00
    nop                                           ; $6b75: $00
    rst $38                                       ; $6b76: $ff
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    pop af                                        ; $6b79: $f1
    rst $38                                       ; $6b7a: $ff
    nop                                           ; $6b7b: $00
    nop                                           ; $6b7c: $00
    nop                                           ; $6b7d: $00
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    rra                                           ; $6b80: $1f
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    nop                                           ; $6b83: $00
    nop                                           ; $6b84: $00
    nop                                           ; $6b85: $00
    rst $38                                       ; $6b86: $ff
    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    ldh a, [rP1]                                  ; $6b8b: $f0 $00
    rrca                                          ; $6b8d: $0f
    rst $38                                       ; $6b8e: $ff
    nop                                           ; $6b8f: $00
    rrca                                          ; $6b90: $0f
    pop af                                        ; $6b91: $f1
    rra                                           ; $6b92: $1f
    ldh a, [rP1]                                  ; $6b93: $f0 $00
    rrca                                          ; $6b95: $0f
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    pop af                                        ; $6b99: $f1
    rra                                           ; $6b9a: $1f
    rst $38                                       ; $6b9b: $ff
    nop                                           ; $6b9c: $00
    rrca                                          ; $6b9d: $0f
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff
    rra                                           ; $6ba1: $1f
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    ldh a, [rP1]                                  ; $6ba4: $f0 $00
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff

jr_044_6ba9:
    rst $38                                       ; $6ba9: $ff
    pop af                                        ; $6baa: $f1
    rst $38                                       ; $6bab: $ff
    ldh a, [rP1]                                  ; $6bac: $f0 $00
    nop                                           ; $6bae: $00
    rst $38                                       ; $6baf: $ff
    ld de, $1f11                                  ; $6bb0: $11 $11 $1f
    rst $38                                       ; $6bb3: $ff
    ldh a, [rP1]                                  ; $6bb4: $f0 $00
    nop                                           ; $6bb6: $00
    rst $38                                       ; $6bb7: $ff
    pop af                                        ; $6bb8: $f1
    ld de, $ffff                                  ; $6bb9: $11 $ff $ff
    nop                                           ; $6bbc: $00
    nop                                           ; $6bbd: $00
    nop                                           ; $6bbe: $00
    rrca                                          ; $6bbf: $0f
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    ccf                                           ; $6bc2: $3f
    rst $38                                       ; $6bc3: $ff
    nop                                           ; $6bc4: $00
    nop                                           ; $6bc5: $00
    nop                                           ; $6bc6: $00
    rrca                                          ; $6bc7: $0f
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff
    nop                                           ; $6bcc: $00
    nop                                           ; $6bcd: $00
    nop                                           ; $6bce: $00
    nop                                           ; $6bcf: $00
    rst $38                                       ; $6bd0: $ff
    rst $38                                       ; $6bd1: $ff
    rst $38                                       ; $6bd2: $ff
    ldh a, [rP1]                                  ; $6bd3: $f0 $00
    sub b                                         ; $6bd5: $90
    inc de                                        ; $6bd6: $13
    inc d                                         ; $6bd7: $14
    ld [hl+], a                                   ; $6bd8: $22
    inc [hl]                                      ; $6bd9: $34
    dec [hl]                                      ; $6bda: $35
    ld [hl], $37                                  ; $6bdb: $36 $37
    ld b, e                                       ; $6bdd: $43
    ld c, b                                       ; $6bde: $48
    ld d, l                                       ; $6bdf: $55
    ld d, a                                       ; $6be0: $57
    ld e, c                                       ; $6be1: $59
    ld e, d                                       ; $6be2: $5a
    ld h, e                                       ; $6be3: $63
    ld h, h                                       ; $6be4: $64
    ld h, [hl]                                    ; $6be5: $66
    ld l, b                                       ; $6be6: $68
    ld [hl], l                                    ; $6be7: $75
    ld [hl], a                                    ; $6be8: $77
    add h                                         ; $6be9: $84
    add [hl]                                      ; $6bea: $86
    adc e                                         ; $6beb: $8b
    sub l                                         ; $6bec: $95
    sub a                                         ; $6bed: $97
    sbc c                                         ; $6bee: $99
    sbc d                                         ; $6bef: $9a
    and [hl]                                      ; $6bf0: $a6
    xor b                                         ; $6bf1: $a8
    rst $38                                       ; $6bf2: $ff
    inc e                                         ; $6bf3: $1c
    nop                                           ; $6bf4: $00
    nop                                           ; $6bf5: $00
    rst $38                                       ; $6bf6: $ff
    nop                                           ; $6bf7: $00
    nop                                           ; $6bf8: $00
    nop                                           ; $6bf9: $00
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    nop                                           ; $6bfc: $00
    rrca                                          ; $6bfd: $0f
    rst $38                                       ; $6bfe: $ff
    ldh a, [rP1]                                  ; $6bff: $f0 $00
    nop                                           ; $6c01: $00
    nop                                           ; $6c02: $00
    nop                                           ; $6c03: $00
    nop                                           ; $6c04: $00
    rrca                                          ; $6c05: $0f
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    nop                                           ; $6c08: $00
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    nop                                           ; $6c0b: $00
    nop                                           ; $6c0c: $00
    rrca                                          ; $6c0d: $0f
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    ldh a, [rP1]                                  ; $6c10: $f0 $00
    nop                                           ; $6c12: $00
    nop                                           ; $6c13: $00
    nop                                           ; $6c14: $00
    nop                                           ; $6c15: $00
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    rst $38                                       ; $6c18: $ff
    ldh a, [rP1]                                  ; $6c19: $f0 $00
    nop                                           ; $6c1b: $00
    nop                                           ; $6c1c: $00
    nop                                           ; $6c1d: $00
    rrca                                          ; $6c1e: $0f
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    nop                                           ; $6c22: $00
    nop                                           ; $6c23: $00
    nop                                           ; $6c24: $00
    nop                                           ; $6c25: $00
    rrca                                          ; $6c26: $0f
    rst $38                                       ; $6c27: $ff
    rst $38                                       ; $6c28: $ff
    cpl                                           ; $6c29: $2f
    ldh a, [rP1]                                  ; $6c2a: $f0 $00
    nop                                           ; $6c2c: $00
    nop                                           ; $6c2d: $00
    nop                                           ; $6c2e: $00
    rrca                                          ; $6c2f: $0f
    rst $38                                       ; $6c30: $ff
    cpl                                           ; $6c31: $2f
    ldh a, [rP1]                                  ; $6c32: $f0 $00
    nop                                           ; $6c34: $00
    nop                                           ; $6c35: $00
    nop                                           ; $6c36: $00
    rrca                                          ; $6c37: $0f
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    nop                                           ; $6c3a: $00
    nop                                           ; $6c3b: $00
    nop                                           ; $6c3c: $00
    nop                                           ; $6c3d: $00
    nop                                           ; $6c3e: $00
    nop                                           ; $6c3f: $00
    di                                            ; $6c40: $f3
    rst $38                                       ; $6c41: $ff
    nop                                           ; $6c42: $00
    nop                                           ; $6c43: $00
    nop                                           ; $6c44: $00
    nop                                           ; $6c45: $00
    nop                                           ; $6c46: $00
    nop                                           ; $6c47: $00
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    ldh a, [rP1]                                  ; $6c4a: $f0 $00
    nop                                           ; $6c4c: $00
    nop                                           ; $6c4d: $00
    nop                                           ; $6c4e: $00
    nop                                           ; $6c4f: $00
    rst $38                                       ; $6c50: $ff
    rst $38                                       ; $6c51: $ff
    ldh a, [rP1]                                  ; $6c52: $f0 $00
    nop                                           ; $6c54: $00
    nop                                           ; $6c55: $00
    nop                                           ; $6c56: $00
    nop                                           ; $6c57: $00
    rrca                                          ; $6c58: $0f
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    nop                                           ; $6c5b: $00
    nop                                           ; $6c5c: $00
    nop                                           ; $6c5d: $00
    nop                                           ; $6c5e: $00
    nop                                           ; $6c5f: $00
    nop                                           ; $6c60: $00
    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    nop                                           ; $6c63: $00
    nop                                           ; $6c64: $00
    nop                                           ; $6c65: $00
    nop                                           ; $6c66: $00
    nop                                           ; $6c67: $00
    nop                                           ; $6c68: $00
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    nop                                           ; $6c6b: $00
    nop                                           ; $6c6c: $00
    nop                                           ; $6c6d: $00
    nop                                           ; $6c6e: $00
    nop                                           ; $6c6f: $00
    nop                                           ; $6c70: $00
    rrca                                          ; $6c71: $0f
    ldh a, [rP1]                                  ; $6c72: $f0 $00
    ld c, h                                       ; $6c74: $4c
    inc de                                        ; $6c75: $13
    inc d                                         ; $6c76: $14
    dec d                                         ; $6c77: $15
    ld b, l                                       ; $6c78: $45
    ld b, a                                       ; $6c79: $47
    ld d, [hl]                                    ; $6c7a: $56
    ld e, b                                       ; $6c7b: $58
    ld [hl], a                                    ; $6c7c: $77
    ld a, b                                       ; $6c7d: $78
    xor b                                         ; $6c7e: $a8
    xor c                                         ; $6c7f: $a9
    cp d                                          ; $6c80: $ba
    cp e                                          ; $6c81: $bb
    rst $38                                       ; $6c82: $ff
    dec c                                         ; $6c83: $0d
    nop                                           ; $6c84: $00
    nop                                           ; $6c85: $00
    rrca                                          ; $6c86: $0f
    ldh a, [rP1]                                  ; $6c87: $f0 $00
    nop                                           ; $6c89: $00
    nop                                           ; $6c8a: $00
    nop                                           ; $6c8b: $00
    nop                                           ; $6c8c: $00
    nop                                           ; $6c8d: $00
    rrca                                          ; $6c8e: $0f
    rst $38                                       ; $6c8f: $ff
    nop                                           ; $6c90: $00
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    nop                                           ; $6c93: $00
    nop                                           ; $6c94: $00
    rrca                                          ; $6c95: $0f
    rst $38                                       ; $6c96: $ff
    rrca                                          ; $6c97: $0f
    rst $38                                       ; $6c98: $ff
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    nop                                           ; $6c9b: $00
    nop                                           ; $6c9c: $00
    rrca                                          ; $6c9d: $0f
    rrca                                          ; $6c9e: $0f
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00
    nop                                           ; $6ca3: $00
    rrca                                          ; $6ca4: $0f
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    ldh a, [rP1]                                  ; $6ca8: $f0 $00
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    rst $38                                       ; $6cac: $ff
    rst $38                                       ; $6cad: $ff
    ldh a, [rP1]                                  ; $6cae: $f0 $00
    ldh a, [rP1]                                  ; $6cb0: $f0 $00
    nop                                           ; $6cb2: $00
    nop                                           ; $6cb3: $00
    rst $38                                       ; $6cb4: $ff
    pop af                                        ; $6cb5: $f1
    rst $38                                       ; $6cb6: $ff
    rst $38                                       ; $6cb7: $ff
    ldh a, [rP1]                                  ; $6cb8: $f0 $00
    nop                                           ; $6cba: $00
    nop                                           ; $6cbb: $00
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    ldh a, [rP1]                                  ; $6cc0: $f0 $00
    nop                                           ; $6cc2: $00
    nop                                           ; $6cc3: $00
    rrca                                          ; $6cc4: $0f
    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    ldh a, [rP1]                                  ; $6cc7: $f0 $00
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    nop                                           ; $6ccb: $00
    rrca                                          ; $6ccc: $0f
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    ldh a, [rP1]                                  ; $6ccf: $f0 $00
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    nop                                           ; $6cd4: $00
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    nop                                           ; $6cd7: $00
    nop                                           ; $6cd8: $00
    nop                                           ; $6cd9: $00
    nop                                           ; $6cda: $00
    nop                                           ; $6cdb: $00
    nop                                           ; $6cdc: $00
    rrca                                          ; $6cdd: $0f
    ld de, $00f0                                  ; $6cde: $11 $f0 $00
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    nop                                           ; $6ce3: $00
    nop                                           ; $6ce4: $00
    rrca                                          ; $6ce5: $0f
    ld de, $00f0                                  ; $6ce6: $11 $f0 $00
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    rrca                                          ; $6ced: $0f
    rra                                           ; $6cee: $1f
    ldh a, [rP1]                                  ; $6cef: $f0 $00
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    nop                                           ; $6cf3: $00
    nop                                           ; $6cf4: $00
    rrca                                          ; $6cf5: $0f
    ccf                                           ; $6cf6: $3f
    ldh a, [rP1]                                  ; $6cf7: $f0 $00
    nop                                           ; $6cf9: $00
    nop                                           ; $6cfa: $00
    nop                                           ; $6cfb: $00
    nop                                           ; $6cfc: $00
    rrca                                          ; $6cfd: $0f
    rst $38                                       ; $6cfe: $ff
    nop                                           ; $6cff: $00
    nop                                           ; $6d00: $00
    nop                                           ; $6d01: $00
    nop                                           ; $6d02: $00
    nop                                           ; $6d03: $00
    ld c, l                                       ; $6d04: $4d
    dec d                                         ; $6d05: $15
    ld d, $23                                     ; $6d06: $16 $23
    inc h                                         ; $6d08: $24
    daa                                           ; $6d09: $27
    jr z, jr_044_6d35                             ; $6d0a: $28 $29

    dec [hl]                                      ; $6d0c: $35
    ld [hl], $42                                  ; $6d0d: $36 $42
    ld b, e                                       ; $6d0f: $43
    ld b, h                                       ; $6d10: $44
    ld b, a                                       ; $6d11: $47
    ld c, b                                       ; $6d12: $48
    ld d, c                                       ; $6d13: $51
    ld d, l                                       ; $6d14: $55
    ld d, [hl]                                    ; $6d15: $56
    ld h, d                                       ; $6d16: $62
    ld h, h                                       ; $6d17: $64
    ld h, a                                       ; $6d18: $67
    ld l, b                                       ; $6d19: $68
    ld [hl], c                                    ; $6d1a: $71
    ld [hl], e                                    ; $6d1b: $73
    ld [hl], l                                    ; $6d1c: $75
    add d                                         ; $6d1d: $82
    add h                                         ; $6d1e: $84
    sub e                                         ; $6d1f: $93
    and h                                         ; $6d20: $a4
    rst $38                                       ; $6d21: $ff
    inc e                                         ; $6d22: $1c
    ld [hl+], a                                   ; $6d23: $22
    ld [hl+], a                                   ; $6d24: $22
    ld [hl+], a                                   ; $6d25: $22
    cpl                                           ; $6d26: $2f
    ld a, [c]                                     ; $6d27: $f2
    ld [hl+], a                                   ; $6d28: $22
    ld [hl+], a                                   ; $6d29: $22
    ld [hl+], a                                   ; $6d2a: $22
    ld [hl+], a                                   ; $6d2b: $22
    ld [hl+], a                                   ; $6d2c: $22
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    ld [hl+], a                                   ; $6d31: $22
    ld [hl+], a                                   ; $6d32: $22
    ld [hl+], a                                   ; $6d33: $22
    cpl                                           ; $6d34: $2f

jr_044_6d35:
    di                                            ; $6d35: $f3
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    ld a, [c]                                     ; $6d39: $f2
    ld [hl+], a                                   ; $6d3a: $22
    ld [hl+], a                                   ; $6d3b: $22
    cpl                                           ; $6d3c: $2f
    cpl                                           ; $6d3d: $2f
    ld a, [c]                                     ; $6d3e: $f2
    rst $38                                       ; $6d3f: $ff
    di                                            ; $6d40: $f3
    ld a, [c]                                     ; $6d41: $f2
    ld [hl+], a                                   ; $6d42: $22
    ld [hl+], a                                   ; $6d43: $22
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    ld a, [c]                                     ; $6d49: $f2
    ld [hl+], a                                   ; $6d4a: $22
    ld [hl+], a                                   ; $6d4b: $22
    rst $38                                       ; $6d4c: $ff
    ldh a, [rIF]                                  ; $6d4d: $f0 $0f
    ldh a, [rIF]                                  ; $6d4f: $f0 $0f
    ld a, [c]                                     ; $6d51: $f2
    ld [hl+], a                                   ; $6d52: $22
    ld [hl+], a                                   ; $6d53: $22
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    ldh a, [rIF]                                  ; $6d56: $f0 $0f
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    ld [hl+], a                                   ; $6d5a: $22
    ld [hl+], a                                   ; $6d5b: $22
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    ld a, [c]                                     ; $6d61: $f2
    ld [hl+], a                                   ; $6d62: $22
    ld [hl+], a                                   ; $6d63: $22
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rrca                                          ; $6d68: $0f
    ld a, [c]                                     ; $6d69: $f2
    ld [hl+], a                                   ; $6d6a: $22
    ld [hl+], a                                   ; $6d6b: $22
    rst $38                                       ; $6d6c: $ff
    ldh a, [rIE]                                  ; $6d6d: $f0 $ff
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    ld a, [c]                                     ; $6d71: $f2
    ld [hl+], a                                   ; $6d72: $22
    ld [hl+], a                                   ; $6d73: $22
    cpl                                           ; $6d74: $2f
    rst $38                                       ; $6d75: $ff
    ldh a, [rIF]                                  ; $6d76: $f0 $0f
    rst $38                                       ; $6d78: $ff
    ld a, [c]                                     ; $6d79: $f2
    ld [hl+], a                                   ; $6d7a: $22
    ld [hl+], a                                   ; $6d7b: $22
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rrca                                          ; $6d7e: $0f
    rrca                                          ; $6d7f: $0f
    di                                            ; $6d80: $f3
    ld a, [c]                                     ; $6d81: $f2
    ld [hl+], a                                   ; $6d82: $22
    ld [hl+], a                                   ; $6d83: $22
    rst $38                                       ; $6d84: $ff
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff
    ld a, [c]                                     ; $6d89: $f2
    ld [hl+], a                                   ; $6d8a: $22
    ld [hl+], a                                   ; $6d8b: $22
    cpl                                           ; $6d8c: $2f
    rst $38                                       ; $6d8d: $ff
    rst $38                                       ; $6d8e: $ff
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    ld [hl+], a                                   ; $6d91: $22
    ld [hl+], a                                   ; $6d92: $22
    ld [hl+], a                                   ; $6d93: $22
    ld [hl+], a                                   ; $6d94: $22
    ld [hl+], a                                   ; $6d95: $22
    rst $38                                       ; $6d96: $ff
    ld a, [c]                                     ; $6d97: $f2
    ld [hl+], a                                   ; $6d98: $22
    ld [hl+], a                                   ; $6d99: $22
    ld [hl+], a                                   ; $6d9a: $22
    ld [hl+], a                                   ; $6d9b: $22
    ld [hl+], a                                   ; $6d9c: $22
    ld [hl+], a                                   ; $6d9d: $22
    cpl                                           ; $6d9e: $2f
    ld a, [c]                                     ; $6d9f: $f2
    ld [hl+], a                                   ; $6da0: $22
    ld [hl+], a                                   ; $6da1: $22
    ld [hl+], a                                   ; $6da2: $22
    ld a, [hl]                                    ; $6da3: $7e
    rla                                           ; $6da4: $17
    jr jr_044_6deb                                ; $6da5: $18 $44

    ld b, l                                       ; $6da7: $45
    ld b, [hl]                                    ; $6da8: $46
    ld c, c                                       ; $6da9: $49
    ld c, d                                       ; $6daa: $4a
    ld d, a                                       ; $6dab: $57
    ld e, b                                       ; $6dac: $58
    ld h, h                                       ; $6dad: $64
    ld h, l                                       ; $6dae: $65
    ld h, [hl]                                    ; $6daf: $66
    ld l, c                                       ; $6db0: $69
    ld l, d                                       ; $6db1: $6a
    ld [hl], a                                    ; $6db2: $77
    ld a, b                                       ; $6db3: $78
    add h                                         ; $6db4: $84
    add l                                         ; $6db5: $85
    add [hl]                                      ; $6db6: $86
    adc c                                         ; $6db7: $89
    adc d                                         ; $6db8: $8a
    sub a                                         ; $6db9: $97
    sbc b                                         ; $6dba: $98
    and h                                         ; $6dbb: $a4
    and l                                         ; $6dbc: $a5
    and [hl]                                      ; $6dbd: $a6
    xor c                                         ; $6dbe: $a9
    xor d                                         ; $6dbf: $aa
    or a                                          ; $6dc0: $b7
    cp b                                          ; $6dc1: $b8
    add $ff                                       ; $6dc2: $c6 $ff
    rra                                           ; $6dc4: $1f
    ld [hl+], a                                   ; $6dc5: $22
    ld [hl+], a                                   ; $6dc6: $22
    ld [hl+], a                                   ; $6dc7: $22
    ld [hl+], a                                   ; $6dc8: $22
    ld [hl+], a                                   ; $6dc9: $22
    ld [hl+], a                                   ; $6dca: $22
    ld [hl+], a                                   ; $6dcb: $22
    ld [hl+], a                                   ; $6dcc: $22
    ld [hl+], a                                   ; $6dcd: $22
    ld [hl+], a                                   ; $6dce: $22
    ld [hl+], a                                   ; $6dcf: $22
    ld [hl+], a                                   ; $6dd0: $22
    ld [hl+], a                                   ; $6dd1: $22
    ld [hl+], a                                   ; $6dd2: $22
    ld [hl+], a                                   ; $6dd3: $22
    ld [hl+], a                                   ; $6dd4: $22
    ld [hl+], a                                   ; $6dd5: $22
    ld [hl+], a                                   ; $6dd6: $22
    ld [hl+], a                                   ; $6dd7: $22
    ld [hl+], a                                   ; $6dd8: $22
    ld [hl+], a                                   ; $6dd9: $22
    ld [hl+], a                                   ; $6dda: $22
    ld [hl+], a                                   ; $6ddb: $22
    ld [hl+], a                                   ; $6ddc: $22
    rst $38                                       ; $6ddd: $ff
    rst $38                                       ; $6dde: $ff
    ld a, [c]                                     ; $6ddf: $f2
    ld a, [c]                                     ; $6de0: $f2
    ld [hl+], a                                   ; $6de1: $22
    ld [hl+], a                                   ; $6de2: $22
    ld [hl+], a                                   ; $6de3: $22
    ld [hl+], a                                   ; $6de4: $22
    rrca                                          ; $6de5: $0f
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    ld [hl+], a                                   ; $6de9: $22
    ld [hl+], a                                   ; $6dea: $22

jr_044_6deb:
    ld [hl+], a                                   ; $6deb: $22
    ld [hl+], a                                   ; $6dec: $22
    nop                                           ; $6ded: $00
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    ld [hl+], a                                   ; $6df2: $22
    ld [hl+], a                                   ; $6df3: $22
    ld [hl+], a                                   ; $6df4: $22
    nop                                           ; $6df5: $00
    nop                                           ; $6df6: $00
    rst $38                                       ; $6df7: $ff
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    ld [hl+], a                                   ; $6dfa: $22
    ld [hl+], a                                   ; $6dfb: $22
    ld [hl+], a                                   ; $6dfc: $22
    nop                                           ; $6dfd: $00
    nop                                           ; $6dfe: $00
    rrca                                          ; $6dff: $0f
    rst $38                                       ; $6e00: $ff
    rst $38                                       ; $6e01: $ff
    ld [hl+], a                                   ; $6e02: $22
    ld [hl+], a                                   ; $6e03: $22
    ld [hl+], a                                   ; $6e04: $22
    nop                                           ; $6e05: $00
    nop                                           ; $6e06: $00
    ld bc, $22ff                                  ; $6e07: $01 $ff $22
    ld [hl+], a                                   ; $6e0a: $22
    ld [hl+], a                                   ; $6e0b: $22
    ld [hl+], a                                   ; $6e0c: $22
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    rrca                                          ; $6e0f: $0f
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    ld [hl+], a                                   ; $6e12: $22
    ld [hl+], a                                   ; $6e13: $22
    ld [hl+], a                                   ; $6e14: $22
    nop                                           ; $6e15: $00
    nop                                           ; $6e16: $00
    rrca                                          ; $6e17: $0f
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    ld a, [c]                                     ; $6e1b: $f2
    ld [hl+], a                                   ; $6e1c: $22
    nop                                           ; $6e1d: $00
    nop                                           ; $6e1e: $00
    nop                                           ; $6e1f: $00
    rst $38                                       ; $6e20: $ff
    di                                            ; $6e21: $f3
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    nop                                           ; $6e25: $00
    nop                                           ; $6e26: $00
    nop                                           ; $6e27: $00
    rrca                                          ; $6e28: $0f
    rst $38                                       ; $6e29: $ff
    pop af                                        ; $6e2a: $f1
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    nop                                           ; $6e30: $00
    rst $38                                       ; $6e31: $ff
    rrca                                          ; $6e32: $0f
    rst $38                                       ; $6e33: $ff
    ldh a, [rP1]                                  ; $6e34: $f0 $00
    nop                                           ; $6e36: $00
    nop                                           ; $6e37: $00
    nop                                           ; $6e38: $00
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    rst $38                                       ; $6e3b: $ff
    nop                                           ; $6e3c: $00
    nop                                           ; $6e3d: $00
    nop                                           ; $6e3e: $00
    nop                                           ; $6e3f: $00
    nop                                           ; $6e40: $00
    nop                                           ; $6e41: $00
    nop                                           ; $6e42: $00
    nop                                           ; $6e43: $00
    nop                                           ; $6e44: $00
    ld c, b                                       ; $6e45: $48
    ld b, d                                       ; $6e46: $42
    ld b, e                                       ; $6e47: $43
    ld b, h                                       ; $6e48: $44
    ld b, l                                       ; $6e49: $45
    ld d, [hl]                                    ; $6e4a: $56
    ld l, b                                       ; $6e4b: $68
    add [hl]                                      ; $6e4c: $86
    rst $38                                       ; $6e4d: $ff
    rlca                                          ; $6e4e: $07
    nop                                           ; $6e4f: $00
    nop                                           ; $6e50: $00
    nop                                           ; $6e51: $00
    rst $38                                       ; $6e52: $ff
    ldh a, [rP1]                                  ; $6e53: $f0 $00
    nop                                           ; $6e55: $00
    nop                                           ; $6e56: $00
    nop                                           ; $6e57: $00
    nop                                           ; $6e58: $00
    rrca                                          ; $6e59: $0f
    rst $38                                       ; $6e5a: $ff
    rst $38                                       ; $6e5b: $ff
    ldh a, [rP1]                                  ; $6e5c: $f0 $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    nop                                           ; $6e60: $00
    rst $38                                       ; $6e61: $ff
    rst $38                                       ; $6e62: $ff
    rst $38                                       ; $6e63: $ff
    ldh a, [rP1]                                  ; $6e64: $f0 $00
    nop                                           ; $6e66: $00
    nop                                           ; $6e67: $00
    rrca                                          ; $6e68: $0f
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    rst $38                                       ; $6e6b: $ff
    rst $38                                       ; $6e6c: $ff
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    nop                                           ; $6e6f: $00
    rrca                                          ; $6e70: $0f
    rst $38                                       ; $6e71: $ff
    rst $38                                       ; $6e72: $ff
    rst $38                                       ; $6e73: $ff
    rst $38                                       ; $6e74: $ff
    ldh a, [rP1]                                  ; $6e75: $f0 $00
    nop                                           ; $6e77: $00
    rst $38                                       ; $6e78: $ff
    cpl                                           ; $6e79: $2f
    ldh a, [rIE]                                  ; $6e7a: $f0 $ff
    rst $38                                       ; $6e7c: $ff
    ldh a, [rP1]                                  ; $6e7d: $f0 $00
    nop                                           ; $6e7f: $00
    rst $38                                       ; $6e80: $ff
    cpl                                           ; $6e81: $2f
    rst $38                                       ; $6e82: $ff
    rst $38                                       ; $6e83: $ff
    cpl                                           ; $6e84: $2f
    rst $38                                       ; $6e85: $ff
    nop                                           ; $6e86: $00
    nop                                           ; $6e87: $00
    rst $38                                       ; $6e88: $ff
    cpl                                           ; $6e89: $2f
    rst $38                                       ; $6e8a: $ff
    ld a, [c]                                     ; $6e8b: $f2
    cpl                                           ; $6e8c: $2f
    rst $38                                       ; $6e8d: $ff
    nop                                           ; $6e8e: $00
    nop                                           ; $6e8f: $00
    rst $38                                       ; $6e90: $ff
    rst $38                                       ; $6e91: $ff
    rst $38                                       ; $6e92: $ff
    ld a, [c]                                     ; $6e93: $f2
    cpl                                           ; $6e94: $2f
    rst $38                                       ; $6e95: $ff
    nop                                           ; $6e96: $00
    nop                                           ; $6e97: $00
    rrca                                          ; $6e98: $0f
    rst $38                                       ; $6e99: $ff
    pop af                                        ; $6e9a: $f1
    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    rst $38                                       ; $6e9d: $ff
    nop                                           ; $6e9e: $00
    nop                                           ; $6e9f: $00
    rrca                                          ; $6ea0: $0f
    rst $38                                       ; $6ea1: $ff
    rst $38                                       ; $6ea2: $ff
    rst $38                                       ; $6ea3: $ff
    rst $38                                       ; $6ea4: $ff
    rst $38                                       ; $6ea5: $ff
    nop                                           ; $6ea6: $00
    nop                                           ; $6ea7: $00
    nop                                           ; $6ea8: $00
    rst $38                                       ; $6ea9: $ff
    rst $38                                       ; $6eaa: $ff
    rst $38                                       ; $6eab: $ff
    ccf                                           ; $6eac: $3f
    ldh a, [rP1]                                  ; $6ead: $f0 $00
    nop                                           ; $6eaf: $00
    nop                                           ; $6eb0: $00
    nop                                           ; $6eb1: $00
    rst $38                                       ; $6eb2: $ff
    rst $38                                       ; $6eb3: $ff
    rst $38                                       ; $6eb4: $ff
    nop                                           ; $6eb5: $00
    nop                                           ; $6eb6: $00
    nop                                           ; $6eb7: $00
    nop                                           ; $6eb8: $00
    nop                                           ; $6eb9: $00
    rrca                                          ; $6eba: $0f
    pop af                                        ; $6ebb: $f1
    ldh a, [rP1]                                  ; $6ebc: $f0 $00
    nop                                           ; $6ebe: $00
    nop                                           ; $6ebf: $00
    nop                                           ; $6ec0: $00
    nop                                           ; $6ec1: $00
    rrca                                          ; $6ec2: $0f
    ccf                                           ; $6ec3: $3f
    ldh a, [rP1]                                  ; $6ec4: $f0 $00
    nop                                           ; $6ec6: $00
    nop                                           ; $6ec7: $00
    nop                                           ; $6ec8: $00
    nop                                           ; $6ec9: $00
    rrca                                          ; $6eca: $0f
    rst $38                                       ; $6ecb: $ff
    nop                                           ; $6ecc: $00
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00
    ld [hl], l                                    ; $6ecf: $75
    ld [$2725], sp                                ; $6ed0: $08 $25 $27
    jr z, jr_044_6f0b                             ; $6ed3: $28 $36

    add hl, sp                                    ; $6ed5: $39
    ld b, e                                       ; $6ed6: $43
    ld b, l                                       ; $6ed7: $45
    ld b, a                                       ; $6ed8: $47
    ld d, [hl]                                    ; $6ed9: $56
    ld e, b                                       ; $6eda: $58
    ld e, h                                       ; $6edb: $5c
    ld h, a                                       ; $6edc: $67
    ld [hl], l                                    ; $6edd: $75
    halt                                          ; $6ede: $76
    ld a, b                                       ; $6edf: $78
    add a                                         ; $6ee0: $87
    adc h                                         ; $6ee1: $8c
    sub l                                         ; $6ee2: $95
    sub [hl]                                      ; $6ee3: $96
    sbc e                                         ; $6ee4: $9b
    and h                                         ; $6ee5: $a4
    xor d                                         ; $6ee6: $aa
    xor h                                         ; $6ee7: $ac
    or [hl]                                       ; $6ee8: $b6
    or a                                          ; $6ee9: $b7
    cp b                                          ; $6eea: $b8
    cp e                                          ; $6eeb: $bb
    ret                                           ; $6eec: $c9


    jp z, Jump_000_1eff                           ; $6eed: $ca $ff $1e

    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    nop                                           ; $6ef2: $00
    nop                                           ; $6ef3: $00
    nop                                           ; $6ef4: $00
    nop                                           ; $6ef5: $00
    nop                                           ; $6ef6: $00
    nop                                           ; $6ef7: $00
    nop                                           ; $6ef8: $00
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    nop                                           ; $6efb: $00
    nop                                           ; $6efc: $00
    nop                                           ; $6efd: $00
    nop                                           ; $6efe: $00
    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    nop                                           ; $6f03: $00
    nop                                           ; $6f04: $00
    nop                                           ; $6f05: $00
    nop                                           ; $6f06: $00
    nop                                           ; $6f07: $00
    nop                                           ; $6f08: $00
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00

jr_044_6f0b:
    nop                                           ; $6f0b: $00
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    nop                                           ; $6f0e: $00
    nop                                           ; $6f0f: $00
    nop                                           ; $6f10: $00
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    nop                                           ; $6f15: $00
    nop                                           ; $6f16: $00
    nop                                           ; $6f17: $00
    nop                                           ; $6f18: $00
    nop                                           ; $6f19: $00
    rrca                                          ; $6f1a: $0f
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    ldh a, [rP1]                                  ; $6f1d: $f0 $00
    nop                                           ; $6f1f: $00
    nop                                           ; $6f20: $00
    nop                                           ; $6f21: $00
    rrca                                          ; $6f22: $0f
    rra                                           ; $6f23: $1f
    rst $38                                       ; $6f24: $ff
    ldh a, [rP1]                                  ; $6f25: $f0 $00
    nop                                           ; $6f27: $00
    nop                                           ; $6f28: $00
    nop                                           ; $6f29: $00
    rrca                                          ; $6f2a: $0f
    rra                                           ; $6f2b: $1f
    rst $38                                       ; $6f2c: $ff
    ldh a, [rP1]                                  ; $6f2d: $f0 $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    rrca                                          ; $6f32: $0f
    rst $38                                       ; $6f33: $ff
    pop af                                        ; $6f34: $f1
    ldh a, [rP1]                                  ; $6f35: $f0 $00
    nop                                           ; $6f37: $00
    nop                                           ; $6f38: $00
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    nop                                           ; $6f3d: $00
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    nop                                           ; $6f45: $00
    nop                                           ; $6f46: $00
    nop                                           ; $6f47: $00
    nop                                           ; $6f48: $00
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    nop                                           ; $6f4d: $00
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    rrca                                          ; $6f53: $0f
    ldh a, [rP1]                                  ; $6f54: $f0 $00
    nop                                           ; $6f56: $00
    nop                                           ; $6f57: $00
    nop                                           ; $6f58: $00
    nop                                           ; $6f59: $00
    nop                                           ; $6f5a: $00
    nop                                           ; $6f5b: $00
    nop                                           ; $6f5c: $00
    nop                                           ; $6f5d: $00
    nop                                           ; $6f5e: $00
    nop                                           ; $6f5f: $00
    nop                                           ; $6f60: $00
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    nop                                           ; $6f63: $00
    nop                                           ; $6f64: $00
    nop                                           ; $6f65: $00
    nop                                           ; $6f66: $00
    nop                                           ; $6f67: $00
    nop                                           ; $6f68: $00
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    nop                                           ; $6f6b: $00
    nop                                           ; $6f6c: $00
    nop                                           ; $6f6d: $00
    nop                                           ; $6f6e: $00
    nop                                           ; $6f6f: $00
    daa                                           ; $6f70: $27
    ld d, a                                       ; $6f71: $57
    ld e, b                                       ; $6f72: $58
    rst $38                                       ; $6f73: $ff
    ld [bc], a                                    ; $6f74: $02
    ld [hl+], a                                   ; $6f75: $22
    cpl                                           ; $6f76: $2f
    rst $38                                       ; $6f77: $ff
    ld [hl+], a                                   ; $6f78: $22
    ld [hl+], a                                   ; $6f79: $22
    ld [hl+], a                                   ; $6f7a: $22
    ld [hl+], a                                   ; $6f7b: $22
    ld [hl+], a                                   ; $6f7c: $22
    ld [hl+], a                                   ; $6f7d: $22
    cpl                                           ; $6f7e: $2f
    rst $38                                       ; $6f7f: $ff
    ld a, [c]                                     ; $6f80: $f2
    ld [hl+], a                                   ; $6f81: $22
    ld [hl+], a                                   ; $6f82: $22
    ld [hl+], a                                   ; $6f83: $22
    ld [hl+], a                                   ; $6f84: $22
    ld [hl+], a                                   ; $6f85: $22
    cpl                                           ; $6f86: $2f
    rst $38                                       ; $6f87: $ff
    cpl                                           ; $6f88: $2f
    ld a, [c]                                     ; $6f89: $f2
    ld [hl+], a                                   ; $6f8a: $22
    ld [hl+], a                                   ; $6f8b: $22
    ld [hl+], a                                   ; $6f8c: $22
    ld [hl+], a                                   ; $6f8d: $22
    ld [hl+], a                                   ; $6f8e: $22
    cpl                                           ; $6f8f: $2f
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    ld [hl+], a                                   ; $6f92: $22
    ld [hl+], a                                   ; $6f93: $22
    ld [hl+], a                                   ; $6f94: $22
    ld [hl+], a                                   ; $6f95: $22
    ld [hl+], a                                   ; $6f96: $22
    cpl                                           ; $6f97: $2f
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    ld [hl+], a                                   ; $6f9a: $22
    ld [hl+], a                                   ; $6f9b: $22
    ld [hl+], a                                   ; $6f9c: $22
    ld [hl+], a                                   ; $6f9d: $22
    ld [hl+], a                                   ; $6f9e: $22
    cpl                                           ; $6f9f: $2f
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    ld a, [c]                                     ; $6fa2: $f2
    ld [hl+], a                                   ; $6fa3: $22
    ld [hl+], a                                   ; $6fa4: $22
    ld [hl+], a                                   ; $6fa5: $22
    ld [hl+], a                                   ; $6fa6: $22
    cpl                                           ; $6fa7: $2f
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    ld a, [c]                                     ; $6faa: $f2
    ld [hl+], a                                   ; $6fab: $22
    ld [hl+], a                                   ; $6fac: $22
    ld [hl+], a                                   ; $6fad: $22
    ld [hl+], a                                   ; $6fae: $22
    cpl                                           ; $6faf: $2f
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    ld a, [c]                                     ; $6fb2: $f2
    ld [hl+], a                                   ; $6fb3: $22
    ld [hl+], a                                   ; $6fb4: $22
    ld [hl+], a                                   ; $6fb5: $22
    ld [hl+], a                                   ; $6fb6: $22
    cpl                                           ; $6fb7: $2f
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    ld a, [c]                                     ; $6fba: $f2
    ld [hl+], a                                   ; $6fbb: $22
    ld [hl+], a                                   ; $6fbc: $22
    ld [hl+], a                                   ; $6fbd: $22
    ld [hl+], a                                   ; $6fbe: $22
    cpl                                           ; $6fbf: $2f
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    ld a, [c]                                     ; $6fc2: $f2
    ld [hl+], a                                   ; $6fc3: $22
    ld [hl+], a                                   ; $6fc4: $22
    ld [hl+], a                                   ; $6fc5: $22
    ld [hl+], a                                   ; $6fc6: $22
    cpl                                           ; $6fc7: $2f
    di                                            ; $6fc8: $f3
    rst $38                                       ; $6fc9: $ff
    ld a, [c]                                     ; $6fca: $f2
    ld [hl+], a                                   ; $6fcb: $22
    ld [hl+], a                                   ; $6fcc: $22
    ld [hl+], a                                   ; $6fcd: $22
    ld [hl+], a                                   ; $6fce: $22
    cpl                                           ; $6fcf: $2f
    rst $38                                       ; $6fd0: $ff
    rst $38                                       ; $6fd1: $ff
    ld [hl+], a                                   ; $6fd2: $22
    ld [hl+], a                                   ; $6fd3: $22
    ld [hl+], a                                   ; $6fd4: $22
    ld [hl+], a                                   ; $6fd5: $22
    ld [hl+], a                                   ; $6fd6: $22
    ld [hl+], a                                   ; $6fd7: $22
    ld [hl+], a                                   ; $6fd8: $22
    rst $38                                       ; $6fd9: $ff
    ld a, [c]                                     ; $6fda: $f2
    ld [hl+], a                                   ; $6fdb: $22
    ld [hl+], a                                   ; $6fdc: $22
    ld [hl+], a                                   ; $6fdd: $22
    ld [hl+], a                                   ; $6fde: $22
    ld [hl+], a                                   ; $6fdf: $22
    cpl                                           ; $6fe0: $2f
    rst $38                                       ; $6fe1: $ff
    ld a, [c]                                     ; $6fe2: $f2
    ld [hl+], a                                   ; $6fe3: $22
    ld [hl+], a                                   ; $6fe4: $22
    ld [hl+], a                                   ; $6fe5: $22
    ld [hl+], a                                   ; $6fe6: $22
    ld [hl+], a                                   ; $6fe7: $22
    cpl                                           ; $6fe8: $2f
    rst $38                                       ; $6fe9: $ff
    ld a, [c]                                     ; $6fea: $f2
    ld [hl+], a                                   ; $6feb: $22
    ld [hl+], a                                   ; $6fec: $22
    ld [hl+], a                                   ; $6fed: $22
    ld [hl+], a                                   ; $6fee: $22
    ld [hl+], a                                   ; $6fef: $22
    ld [hl+], a                                   ; $6ff0: $22
    rst $38                                       ; $6ff1: $ff
    ld [hl+], a                                   ; $6ff2: $22
    ld [hl+], a                                   ; $6ff3: $22
    ld [hl+], a                                   ; $6ff4: $22
    ld c, e                                       ; $6ff5: $4b
    inc de                                        ; $6ff6: $13
    inc d                                         ; $6ff7: $14
    scf                                           ; $6ff8: $37
    ld b, [hl]                                    ; $6ff9: $46
    ld c, b                                       ; $6ffa: $48
    ld d, a                                       ; $6ffb: $57
    ld h, [hl]                                    ; $6ffc: $66
    ld l, c                                       ; $6ffd: $69
    ld [hl], l                                    ; $6ffe: $75
    ld [hl], a                                    ; $6fff: $77
    ld a, b                                       ; $7000: $78
    add [hl]                                      ; $7001: $86
    adc c                                         ; $7002: $89
    sub l                                         ; $7003: $95
    sub a                                         ; $7004: $97
    sbc b                                         ; $7005: $98
    and [hl]                                      ; $7006: $a6
    xor c                                         ; $7007: $a9
    or l                                          ; $7008: $b5
    rst $38                                       ; $7009: $ff
    inc de                                        ; $700a: $13
    nop                                           ; $700b: $00
    nop                                           ; $700c: $00
    rst $38                                       ; $700d: $ff
    ld a, [c]                                     ; $700e: $f2
    ld [hl+], a                                   ; $700f: $22
    ld [hl+], a                                   ; $7010: $22
    ld [hl+], a                                   ; $7011: $22
    ld [hl+], a                                   ; $7012: $22
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    rst $38                                       ; $7015: $ff
    ld a, [c]                                     ; $7016: $f2
    ld [hl+], a                                   ; $7017: $22
    ld [hl+], a                                   ; $7018: $22
    ld [hl+], a                                   ; $7019: $22
    ld [hl+], a                                   ; $701a: $22
    nop                                           ; $701b: $00
    nop                                           ; $701c: $00
    rst $38                                       ; $701d: $ff
    ld a, [c]                                     ; $701e: $f2
    ld [hl+], a                                   ; $701f: $22
    ld [hl+], a                                   ; $7020: $22
    ld [hl+], a                                   ; $7021: $22
    ld [hl+], a                                   ; $7022: $22
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    rst $38                                       ; $7025: $ff
    ld a, [c]                                     ; $7026: $f2
    ld [hl+], a                                   ; $7027: $22
    ld [hl+], a                                   ; $7028: $22
    ld [hl+], a                                   ; $7029: $22
    ld [hl+], a                                   ; $702a: $22
    nop                                           ; $702b: $00
    nop                                           ; $702c: $00
    rst $38                                       ; $702d: $ff
    ld a, [c]                                     ; $702e: $f2
    ld [hl+], a                                   ; $702f: $22
    ld [hl+], a                                   ; $7030: $22
    ld [hl+], a                                   ; $7031: $22
    ld [hl+], a                                   ; $7032: $22
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    rst $38                                       ; $7035: $ff
    ld a, [c]                                     ; $7036: $f2
    ld [hl+], a                                   ; $7037: $22
    ld [hl+], a                                   ; $7038: $22
    ld [hl+], a                                   ; $7039: $22
    ld [hl+], a                                   ; $703a: $22
    rrca                                          ; $703b: $0f
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    ld a, [c]                                     ; $703e: $f2
    ld [hl+], a                                   ; $703f: $22
    ld [hl+], a                                   ; $7040: $22
    ld [hl+], a                                   ; $7041: $22
    ld [hl+], a                                   ; $7042: $22
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    ld a, [c]                                     ; $7046: $f2
    ld [hl+], a                                   ; $7047: $22
    ld [hl+], a                                   ; $7048: $22
    ld [hl+], a                                   ; $7049: $22
    ld [hl+], a                                   ; $704a: $22
    rst $38                                       ; $704b: $ff
    ccf                                           ; $704c: $3f
    rst $38                                       ; $704d: $ff
    ld [hl+], a                                   ; $704e: $22
    ld [hl+], a                                   ; $704f: $22
    ld [hl+], a                                   ; $7050: $22
    ld [hl+], a                                   ; $7051: $22
    ld [hl+], a                                   ; $7052: $22
    rst $38                                       ; $7053: $ff
    ccf                                           ; $7054: $3f
    ld a, [c]                                     ; $7055: $f2
    ld [hl+], a                                   ; $7056: $22
    ld [hl+], a                                   ; $7057: $22
    ld [hl+], a                                   ; $7058: $22
    ld [hl+], a                                   ; $7059: $22
    ld [hl+], a                                   ; $705a: $22
    rrca                                          ; $705b: $0f
    rst $38                                       ; $705c: $ff
    ld a, [c]                                     ; $705d: $f2
    ld [hl+], a                                   ; $705e: $22
    ld [hl+], a                                   ; $705f: $22
    ld [hl+], a                                   ; $7060: $22
    ld [hl+], a                                   ; $7061: $22
    ld [hl+], a                                   ; $7062: $22
    nop                                           ; $7063: $00
    rst $38                                       ; $7064: $ff
    ld a, [c]                                     ; $7065: $f2
    ld [hl+], a                                   ; $7066: $22
    ld [hl+], a                                   ; $7067: $22
    ld [hl+], a                                   ; $7068: $22
    ld [hl+], a                                   ; $7069: $22
    ld [hl+], a                                   ; $706a: $22
    nop                                           ; $706b: $00
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    ld [hl+], a                                   ; $706e: $22
    ld [hl+], a                                   ; $706f: $22
    ld [hl+], a                                   ; $7070: $22
    ld [hl+], a                                   ; $7071: $22
    ld [hl+], a                                   ; $7072: $22
    nop                                           ; $7073: $00
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    ld [hl+], a                                   ; $7076: $22
    ld [hl+], a                                   ; $7077: $22
    ld [hl+], a                                   ; $7078: $22
    ld [hl+], a                                   ; $7079: $22
    ld [hl+], a                                   ; $707a: $22
    nop                                           ; $707b: $00
    rrca                                          ; $707c: $0f
    rst $38                                       ; $707d: $ff
    ld a, [c]                                     ; $707e: $f2
    ld [hl+], a                                   ; $707f: $22
    ld [hl+], a                                   ; $7080: $22
    ld [hl+], a                                   ; $7081: $22
    ld [hl+], a                                   ; $7082: $22
    nop                                           ; $7083: $00
    rrca                                          ; $7084: $0f
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    ld [hl+], a                                   ; $7087: $22
    ld [hl+], a                                   ; $7088: $22
    ld [hl+], a                                   ; $7089: $22
    ld [hl+], a                                   ; $708a: $22
    ld b, b                                       ; $708b: $40
    inc d                                         ; $708c: $14
    dec d                                         ; $708d: $15
    ld d, $35                                     ; $708e: $16 $35
    ld d, l                                       ; $7090: $55
    ld h, h                                       ; $7091: $64
    ld [hl], d                                    ; $7092: $72
    ld [hl], e                                    ; $7093: $73
    add c                                         ; $7094: $81
    rst $38                                       ; $7095: $ff
    add hl, bc                                    ; $7096: $09
    ld [hl+], a                                   ; $7097: $22
    cpl                                           ; $7098: $2f
    ld a, [c]                                     ; $7099: $f2
    ld [hl+], a                                   ; $709a: $22
    ld [hl+], a                                   ; $709b: $22
    ld [hl+], a                                   ; $709c: $22
    ld [hl+], a                                   ; $709d: $22
    ld [hl+], a                                   ; $709e: $22
    ld [hl+], a                                   ; $709f: $22
    rst $38                                       ; $70a0: $ff
    rst $38                                       ; $70a1: $ff
    ld [hl+], a                                   ; $70a2: $22
    ld [hl+], a                                   ; $70a3: $22
    ld [hl+], a                                   ; $70a4: $22
    ld [hl+], a                                   ; $70a5: $22
    ld [hl+], a                                   ; $70a6: $22
    ld [hl+], a                                   ; $70a7: $22
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    ld [hl+], a                                   ; $70aa: $22
    ld [hl+], a                                   ; $70ab: $22
    ld [hl+], a                                   ; $70ac: $22
    ld [hl+], a                                   ; $70ad: $22
    ld [hl+], a                                   ; $70ae: $22
    ld [hl+], a                                   ; $70af: $22
    cpl                                           ; $70b0: $2f
    rst $38                                       ; $70b1: $ff
    ld [hl+], a                                   ; $70b2: $22
    rst $38                                       ; $70b3: $ff
    ld [hl+], a                                   ; $70b4: $22
    ld [hl+], a                                   ; $70b5: $22
    ld [hl+], a                                   ; $70b6: $22
    ld [hl+], a                                   ; $70b7: $22
    ld [hl+], a                                   ; $70b8: $22
    cpl                                           ; $70b9: $2f
    rst $38                                       ; $70ba: $ff
    rst $38                                       ; $70bb: $ff
    ld [hl+], a                                   ; $70bc: $22
    ld [hl+], a                                   ; $70bd: $22
    ld [hl+], a                                   ; $70be: $22
    ld [hl+], a                                   ; $70bf: $22
    ld [hl+], a                                   ; $70c0: $22
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    rst $38                                       ; $70c3: $ff
    rst $38                                       ; $70c4: $ff
    ld [hl+], a                                   ; $70c5: $22
    ld [hl+], a                                   ; $70c6: $22
    ld [hl+], a                                   ; $70c7: $22
    ld [hl+], a                                   ; $70c8: $22
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    rst $38                                       ; $70cc: $ff
    ld a, [c]                                     ; $70cd: $f2
    ld [hl+], a                                   ; $70ce: $22
    ld [hl+], a                                   ; $70cf: $22
    ld [hl+], a                                   ; $70d0: $22
    ld [hl+], a                                   ; $70d1: $22
    ld a, [c]                                     ; $70d2: $f2
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    ld a, [c]                                     ; $70d5: $f2
    ld [hl+], a                                   ; $70d6: $22
    ld [hl+], a                                   ; $70d7: $22
    ld [hl+], a                                   ; $70d8: $22
    ld [hl+], a                                   ; $70d9: $22
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    ld a, [c]                                     ; $70dd: $f2
    ld [hl+], a                                   ; $70de: $22
    ld [hl+], a                                   ; $70df: $22
    ld [hl+], a                                   ; $70e0: $22
    ld [hl+], a                                   ; $70e1: $22
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    ld [hl+], a                                   ; $70e5: $22
    ld [hl+], a                                   ; $70e6: $22
    ld [hl+], a                                   ; $70e7: $22
    ld [hl+], a                                   ; $70e8: $22
    ld a, [c]                                     ; $70e9: $f2
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    ld [hl+], a                                   ; $70ed: $22
    ld [hl+], a                                   ; $70ee: $22
    ld [hl+], a                                   ; $70ef: $22
    cpl                                           ; $70f0: $2f
    rst $38                                       ; $70f1: $ff
    cpl                                           ; $70f2: $2f
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    ld [hl+], a                                   ; $70f5: $22
    ld [hl+], a                                   ; $70f6: $22
    ld [hl+], a                                   ; $70f7: $22
    cpl                                           ; $70f8: $2f
    ccf                                           ; $70f9: $3f
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    ld [hl+], a                                   ; $70fd: $22
    ld [hl+], a                                   ; $70fe: $22
    ld [hl+], a                                   ; $70ff: $22
    cpl                                           ; $7100: $2f
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    ld [hl+], a                                   ; $7105: $22
    ld [hl+], a                                   ; $7106: $22
    ld [hl+], a                                   ; $7107: $22
    ld [hl+], a                                   ; $7108: $22
    cpl                                           ; $7109: $2f
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    ld [hl+], a                                   ; $710e: $22
    ld [hl+], a                                   ; $710f: $22
    ld [hl+], a                                   ; $7110: $22
    ld [hl+], a                                   ; $7111: $22
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    ld a, [c]                                     ; $7115: $f2
    ld [hl+], a                                   ; $7116: $22
    ld l, b                                       ; $7117: $68
    inc de                                        ; $7118: $13
    inc d                                         ; $7119: $14
    dec d                                         ; $711a: $15
    inc sp                                        ; $711b: $33
    inc [hl]                                      ; $711c: $34
    ld b, l                                       ; $711d: $45
    ld b, [hl]                                    ; $711e: $46
    ld c, b                                       ; $711f: $48
    ld d, h                                       ; $7120: $54
    ld d, a                                       ; $7121: $57
    ld e, c                                       ; $7122: $59
    ld e, d                                       ; $7123: $5a
    ld e, e                                       ; $7124: $5b
    ld h, l                                       ; $7125: $65
    ld h, [hl]                                    ; $7126: $66
    ld a, c                                       ; $7127: $79
    ld a, d                                       ; $7128: $7a
    ld a, e                                       ; $7129: $7b
    sub a                                         ; $712a: $97
    sbc b                                         ; $712b: $98
    sbc c                                         ; $712c: $99
    sbc d                                         ; $712d: $9a
    sbc e                                         ; $712e: $9b
    or h                                          ; $712f: $b4
    push bc                                       ; $7130: $c5
    rst $38                                       ; $7131: $ff
    add hl, de                                    ; $7132: $19
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
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    nop                                           ; $714b: $00
    nop                                           ; $714c: $00
    rrca                                          ; $714d: $0f
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    ldh a, [rP1]                                  ; $7150: $f0 $00
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    rrca                                          ; $7155: $0f
    rst $38                                       ; $7156: $ff
    pop af                                        ; $7157: $f1
    rst $38                                       ; $7158: $ff
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00
    nop                                           ; $715c: $00
    rrca                                          ; $715d: $0f
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    ldh a, [rP1]                                  ; $7160: $f0 $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    rrca                                          ; $7165: $0f
    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    nop                                           ; $7168: $00
    nop                                           ; $7169: $00
    nop                                           ; $716a: $00
    nop                                           ; $716b: $00
    nop                                           ; $716c: $00
    rrca                                          ; $716d: $0f
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    ldh a, [rP1]                                  ; $7170: $f0 $00
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    ldh a, [rP1]                                  ; $7178: $f0 $00
    nop                                           ; $717a: $00
    nop                                           ; $717b: $00
    nop                                           ; $717c: $00
    rrca                                          ; $717d: $0f
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    nop                                           ; $7184: $00
    rst $38                                       ; $7185: $ff
    ccf                                           ; $7186: $3f
    rra                                           ; $7187: $1f
    rst $38                                       ; $7188: $ff
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    nop                                           ; $718b: $00
    nop                                           ; $718c: $00
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    ldh a, [rP1]                                  ; $7190: $f0 $00
    nop                                           ; $7192: $00
    nop                                           ; $7193: $00
    nop                                           ; $7194: $00
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    nop                                           ; $719a: $00
    nop                                           ; $719b: $00
    nop                                           ; $719c: $00
    rrca                                          ; $719d: $0f
    ldh a, [rP1]                                  ; $719e: $f0 $00
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
    ld b, b                                       ; $71b3: $40
    ld h, a                                       ; $71b4: $67
    ld l, b                                       ; $71b5: $68
    rst $38                                       ; $71b6: $ff
    ld [bc], a                                    ; $71b7: $02
    ld [hl+], a                                   ; $71b8: $22
    ld [hl+], a                                   ; $71b9: $22
    ld [hl+], a                                   ; $71ba: $22
    ld [hl+], a                                   ; $71bb: $22
    ld [hl+], a                                   ; $71bc: $22
    ld [hl+], a                                   ; $71bd: $22
    ld [hl+], a                                   ; $71be: $22
    ld [hl+], a                                   ; $71bf: $22
    ld [hl+], a                                   ; $71c0: $22
    ld [hl+], a                                   ; $71c1: $22
    ld [hl+], a                                   ; $71c2: $22
    ld [hl+], a                                   ; $71c3: $22
    ld [hl+], a                                   ; $71c4: $22
    cpl                                           ; $71c5: $2f
    ld a, [c]                                     ; $71c6: $f2
    ld [hl+], a                                   ; $71c7: $22
    ld [hl+], a                                   ; $71c8: $22
    ld [hl+], a                                   ; $71c9: $22
    ld [hl+], a                                   ; $71ca: $22
    ld [hl+], a                                   ; $71cb: $22
    ld [hl+], a                                   ; $71cc: $22
    rst $38                                       ; $71cd: $ff
    ld a, [c]                                     ; $71ce: $f2
    ld [hl+], a                                   ; $71cf: $22
    ld [hl+], a                                   ; $71d0: $22
    ld [hl+], a                                   ; $71d1: $22
    ld [hl+], a                                   ; $71d2: $22
    ld [hl+], a                                   ; $71d3: $22
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    ld a, [c]                                     ; $71d6: $f2
    ld [hl+], a                                   ; $71d7: $22
    ld [hl+], a                                   ; $71d8: $22
    ld [hl+], a                                   ; $71d9: $22
    cpl                                           ; $71da: $2f
    cpl                                           ; $71db: $2f
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    ld [hl+], a                                   ; $71df: $22
    ld [hl+], a                                   ; $71e0: $22
    ld [hl+], a                                   ; $71e1: $22
    rst $38                                       ; $71e2: $ff
    cpl                                           ; $71e3: $2f
    rst $38                                       ; $71e4: $ff
    nop                                           ; $71e5: $00
    rst $38                                       ; $71e6: $ff
    ld a, [c]                                     ; $71e7: $f2
    ld [hl+], a                                   ; $71e8: $22
    ld [hl+], a                                   ; $71e9: $22
    rst $38                                       ; $71ea: $ff
    rst $38                                       ; $71eb: $ff
    rst $38                                       ; $71ec: $ff
    rrca                                          ; $71ed: $0f
    rst $38                                       ; $71ee: $ff
    ld a, [c]                                     ; $71ef: $f2
    ld [hl+], a                                   ; $71f0: $22
    ld [hl+], a                                   ; $71f1: $22
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    ld [hl+], a                                   ; $71f7: $22
    ld [hl+], a                                   ; $71f8: $22
    ld [hl+], a                                   ; $71f9: $22
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    ld [hl+], a                                   ; $71ff: $22
    ld [hl+], a                                   ; $7200: $22
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rrca                                          ; $7205: $0f
    rst $38                                       ; $7206: $ff
    ld [hl+], a                                   ; $7207: $22
    cpl                                           ; $7208: $2f
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    ld a, [c]                                     ; $720e: $f2
    ld [hl+], a                                   ; $720f: $22
    cpl                                           ; $7210: $2f
    di                                            ; $7211: $f3
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    ld a, [c]                                     ; $7216: $f2
    ld [hl+], a                                   ; $7217: $22
    cpl                                           ; $7218: $2f
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    ccf                                           ; $721b: $3f
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    ld a, [c]                                     ; $721e: $f2
    ld [hl+], a                                   ; $721f: $22
    ld [hl+], a                                   ; $7220: $22
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    ccf                                           ; $7223: $3f
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    ld [hl+], a                                   ; $7226: $22
    ld [hl+], a                                   ; $7227: $22
    ld [hl+], a                                   ; $7228: $22
    ld [hl+], a                                   ; $7229: $22
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    ld a, [c]                                     ; $722c: $f2
    ld [hl+], a                                   ; $722d: $22
    ld [hl+], a                                   ; $722e: $22
    ld [hl+], a                                   ; $722f: $22
    ld [hl+], a                                   ; $7230: $22
    ld [hl+], a                                   ; $7231: $22
    cpl                                           ; $7232: $2f
    ld a, [c]                                     ; $7233: $f2
    ld [hl+], a                                   ; $7234: $22
    ld [hl+], a                                   ; $7235: $22
    ld [hl+], a                                   ; $7236: $22
    ld [hl+], a                                   ; $7237: $22
    ld [hl], l                                    ; $7238: $75
    ld a, [hl+]                                   ; $7239: $2a
    dec hl                                        ; $723a: $2b
    inc l                                         ; $723b: $2c
    ld b, a                                       ; $723c: $47
    ld c, c                                       ; $723d: $49
    ld c, d                                       ; $723e: $4a
    ld c, e                                       ; $723f: $4b
    ld c, h                                       ; $7240: $4c
    ld c, l                                       ; $7241: $4d
    ld h, [hl]                                    ; $7242: $66
    ld h, a                                       ; $7243: $67
    ld l, b                                       ; $7244: $68
    ld l, c                                       ; $7245: $69
    ld l, d                                       ; $7246: $6a
    ld l, e                                       ; $7247: $6b
    ld l, h                                       ; $7248: $6c
    ld l, l                                       ; $7249: $6d
    ld [hl], l                                    ; $724a: $75
    add [hl]                                      ; $724b: $86
    add a                                         ; $724c: $87
    adc b                                         ; $724d: $88
    adc c                                         ; $724e: $89
    adc d                                         ; $724f: $8a
    sub l                                         ; $7250: $95
    sbc e                                         ; $7251: $9b
    xor b                                         ; $7252: $a8
    xor c                                         ; $7253: $a9
    xor d                                         ; $7254: $aa
    or [hl]                                       ; $7255: $b6
    or a                                          ; $7256: $b7
    rst $38                                       ; $7257: $ff
    ld e, $00                                     ; $7258: $1e $00
    nop                                           ; $725a: $00
    rrca                                          ; $725b: $0f
    ldh a, [rP1]                                  ; $725c: $f0 $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    nop                                           ; $7267: $00
    nop                                           ; $7268: $00
    nop                                           ; $7269: $00
    nop                                           ; $726a: $00
    rst $38                                       ; $726b: $ff
    rst $38                                       ; $726c: $ff
    ldh a, [rP1]                                  ; $726d: $f0 $00
    nop                                           ; $726f: $00
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    ldh a, [rP1]                                  ; $7275: $f0 $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    nop                                           ; $7279: $00
    nop                                           ; $727a: $00
    rrca                                          ; $727b: $0f
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    ldh a, [rP1]                                  ; $727e: $f0 $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    rst $38                                       ; $7284: $ff
    ld [hl+], a                                   ; $7285: $22
    rst $38                                       ; $7286: $ff
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    nop                                           ; $728f: $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    rst $38                                       ; $7294: $ff
    rst $38                                       ; $7295: $ff
    rst $38                                       ; $7296: $ff
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    nop                                           ; $729a: $00
    nop                                           ; $729b: $00
    rrca                                          ; $729c: $0f
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    nop                                           ; $729f: $00
    nop                                           ; $72a0: $00
    nop                                           ; $72a1: $00
    nop                                           ; $72a2: $00
    nop                                           ; $72a3: $00
    rrca                                          ; $72a4: $0f
    rst $38                                       ; $72a5: $ff
    ldh a, [rP1]                                  ; $72a6: $f0 $00
    nop                                           ; $72a8: $00
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    nop                                           ; $72ab: $00
    rrca                                          ; $72ac: $0f
    rst $38                                       ; $72ad: $ff
    ldh a, [rP1]                                  ; $72ae: $f0 $00
    nop                                           ; $72b0: $00
    nop                                           ; $72b1: $00
    nop                                           ; $72b2: $00
    nop                                           ; $72b3: $00
    rrca                                          ; $72b4: $0f
    rst $38                                       ; $72b5: $ff
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    nop                                           ; $72b8: $00
    nop                                           ; $72b9: $00
    nop                                           ; $72ba: $00
    nop                                           ; $72bb: $00
    rrca                                          ; $72bc: $0f
    rst $38                                       ; $72bd: $ff
    nop                                           ; $72be: $00
    nop                                           ; $72bf: $00
    nop                                           ; $72c0: $00
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    nop                                           ; $72c3: $00
    rrca                                          ; $72c4: $0f
    rst $38                                       ; $72c5: $ff
    ldh a, [rP1]                                  ; $72c6: $f0 $00
    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    nop                                           ; $72cb: $00
    rrca                                          ; $72cc: $0f
    rst $38                                       ; $72cd: $ff
    ldh a, [rP1]                                  ; $72ce: $f0 $00
    nop                                           ; $72d0: $00
    nop                                           ; $72d1: $00
    nop                                           ; $72d2: $00
    nop                                           ; $72d3: $00
    rrca                                          ; $72d4: $0f
    rst $38                                       ; $72d5: $ff
    nop                                           ; $72d6: $00
    nop                                           ; $72d7: $00
    nop                                           ; $72d8: $00
    ld b, h                                       ; $72d9: $44
    inc h                                         ; $72da: $24
    dec h                                         ; $72db: $25
    ld h, $66                                     ; $72dc: $26 $66
    ld h, a                                       ; $72de: $67
    ld a, b                                       ; $72df: $78
    ld a, c                                       ; $72e0: $79
    sub a                                         ; $72e1: $97
    sbc c                                         ; $72e2: $99
    sbc d                                         ; $72e3: $9a
    xor b                                         ; $72e4: $a8
    ret z                                         ; $72e5: $c8

    rst $38                                       ; $72e6: $ff
    inc c                                         ; $72e7: $0c
    ld [hl+], a                                   ; $72e8: $22
    ld [hl+], a                                   ; $72e9: $22
    ld [hl+], a                                   ; $72ea: $22
    ld [hl+], a                                   ; $72eb: $22
    ld [hl+], a                                   ; $72ec: $22
    ld [hl+], a                                   ; $72ed: $22
    ld [hl+], a                                   ; $72ee: $22
    ld [hl+], a                                   ; $72ef: $22
    ld [hl+], a                                   ; $72f0: $22
    ld [hl+], a                                   ; $72f1: $22
    ld [hl+], a                                   ; $72f2: $22
    ld [hl+], a                                   ; $72f3: $22
    ld [hl+], a                                   ; $72f4: $22
    ld [hl+], a                                   ; $72f5: $22
    ld [hl+], a                                   ; $72f6: $22
    ld [hl+], a                                   ; $72f7: $22
    ld [hl+], a                                   ; $72f8: $22
    ld [hl+], a                                   ; $72f9: $22
    cpl                                           ; $72fa: $2f
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    ld [hl+], a                                   ; $72fd: $22
    ld [hl+], a                                   ; $72fe: $22
    ld [hl+], a                                   ; $72ff: $22
    ld [hl+], a                                   ; $7300: $22
    ld [hl+], a                                   ; $7301: $22
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    ld a, [c]                                     ; $7305: $f2
    ld [hl+], a                                   ; $7306: $22
    ld [hl+], a                                   ; $7307: $22
    ld [hl+], a                                   ; $7308: $22
    ld [hl+], a                                   ; $7309: $22
    rst $38                                       ; $730a: $ff
    di                                            ; $730b: $f3
    inc sp                                        ; $730c: $33
    rst $38                                       ; $730d: $ff
    ld [hl+], a                                   ; $730e: $22
    ld [hl+], a                                   ; $730f: $22
    ld [hl+], a                                   ; $7310: $22
    cpl                                           ; $7311: $2f
    rst $38                                       ; $7312: $ff
    di                                            ; $7313: $f3
    inc sp                                        ; $7314: $33
    ccf                                           ; $7315: $3f
    ld [hl+], a                                   ; $7316: $22
    ld [hl+], a                                   ; $7317: $22
    ld [hl+], a                                   ; $7318: $22
    cpl                                           ; $7319: $2f
    ccf                                           ; $731a: $3f
    rst $38                                       ; $731b: $ff
    inc sp                                        ; $731c: $33
    ccf                                           ; $731d: $3f
    ld a, [c]                                     ; $731e: $f2
    ld [hl+], a                                   ; $731f: $22
    ld [hl+], a                                   ; $7320: $22
    rst $38                                       ; $7321: $ff
    inc sp                                        ; $7322: $33
    rst $38                                       ; $7323: $ff
    inc sp                                        ; $7324: $33
    inc sp                                        ; $7325: $33
    rst $38                                       ; $7326: $ff
    ld [hl+], a                                   ; $7327: $22
    ld [hl+], a                                   ; $7328: $22
    rst $38                                       ; $7329: $ff
    di                                            ; $732a: $f3
    rst $38                                       ; $732b: $ff
    inc sp                                        ; $732c: $33
    inc sp                                        ; $732d: $33
    ccf                                           ; $732e: $3f
    ld [hl+], a                                   ; $732f: $22
    ld [hl+], a                                   ; $7330: $22
    cpl                                           ; $7331: $2f
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    inc sp                                        ; $7335: $33
    rst $38                                       ; $7336: $ff
    ld [hl+], a                                   ; $7337: $22
    ld [hl+], a                                   ; $7338: $22
    cpl                                           ; $7339: $2f
    rst $38                                       ; $733a: $ff
    ldh a, [rIF]                                  ; $733b: $f0 $0f
    rst $38                                       ; $733d: $ff
    ld a, [c]                                     ; $733e: $f2
    ld [hl+], a                                   ; $733f: $22
    ld [hl+], a                                   ; $7340: $22
    cpl                                           ; $7341: $2f
    ldh a, [rIE]                                  ; $7342: $f0 $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    ld [hl+], a                                   ; $7346: $22
    ld [hl+], a                                   ; $7347: $22
    ld [hl+], a                                   ; $7348: $22
    cpl                                           ; $7349: $2f
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    ldh a, [rIF]                                  ; $734c: $f0 $0f
    ld a, [c]                                     ; $734e: $f2
    ld [hl+], a                                   ; $734f: $22
    ld [hl+], a                                   ; $7350: $22
    ld [hl+], a                                   ; $7351: $22
    ld [hl+], a                                   ; $7352: $22
    ld [hl+], a                                   ; $7353: $22
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    ld a, [c]                                     ; $7356: $f2
    ld [hl+], a                                   ; $7357: $22
    ld [hl+], a                                   ; $7358: $22
    ld [hl+], a                                   ; $7359: $22
    ld [hl+], a                                   ; $735a: $22
    ld [hl+], a                                   ; $735b: $22
    ld [hl+], a                                   ; $735c: $22
    ld [hl+], a                                   ; $735d: $22
    ld [hl+], a                                   ; $735e: $22
    ld [hl+], a                                   ; $735f: $22
    ld [hl+], a                                   ; $7360: $22
    ld [hl+], a                                   ; $7361: $22
    ld [hl+], a                                   ; $7362: $22
    ld [hl+], a                                   ; $7363: $22
    ld [hl+], a                                   ; $7364: $22
    ld [hl+], a                                   ; $7365: $22
    ld [hl+], a                                   ; $7366: $22
    ld [hl+], a                                   ; $7367: $22
    ld c, [hl]                                    ; $7368: $4e
    ld b, l                                       ; $7369: $45
    ld b, [hl]                                    ; $736a: $46
    ld h, l                                       ; $736b: $65
    ld h, [hl]                                    ; $736c: $66
    ld [hl], a                                    ; $736d: $77
    sub [hl]                                      ; $736e: $96
    sub a                                         ; $736f: $97
    sbc b                                         ; $7370: $98
    sbc c                                         ; $7371: $99
    and h                                         ; $7372: $a4
    and l                                         ; $7373: $a5
    or e                                          ; $7374: $b3
    or [hl]                                       ; $7375: $b6
    or a                                          ; $7376: $b7
    cp b                                          ; $7377: $b8
    cp c                                          ; $7378: $b9
    cp d                                          ; $7379: $ba
    cp e                                          ; $737a: $bb
    call nz, $d8c5                                ; $737b: $c4 $c5 $d8
    reti                                          ; $737e: $d9


    jp c, $ffdb                                   ; $737f: $da $db $ff

    jr jr_044_73a6                                ; $7382: $18 $22

    ld [hl+], a                                   ; $7384: $22
    ld [hl+], a                                   ; $7385: $22
    ld [hl+], a                                   ; $7386: $22
    rst $38                                       ; $7387: $ff
    ldh a, [rP1]                                  ; $7388: $f0 $00
    nop                                           ; $738a: $00
    ld [hl+], a                                   ; $738b: $22
    ld [hl+], a                                   ; $738c: $22
    ld [hl+], a                                   ; $738d: $22
    ld [hl+], a                                   ; $738e: $22
    rst $38                                       ; $738f: $ff
    ldh a, [rP1]                                  ; $7390: $f0 $00
    nop                                           ; $7392: $00
    ld [hl+], a                                   ; $7393: $22
    ld [hl+], a                                   ; $7394: $22
    ld [hl+], a                                   ; $7395: $22
    ld [hl+], a                                   ; $7396: $22
    cpl                                           ; $7397: $2f
    ldh a, [rP1]                                  ; $7398: $f0 $00
    nop                                           ; $739a: $00
    ld [hl+], a                                   ; $739b: $22
    ld [hl+], a                                   ; $739c: $22
    ld [hl+], a                                   ; $739d: $22
    ld [hl+], a                                   ; $739e: $22
    cpl                                           ; $739f: $2f
    rst $38                                       ; $73a0: $ff
    nop                                           ; $73a1: $00
    nop                                           ; $73a2: $00
    ld [hl+], a                                   ; $73a3: $22
    ld [hl+], a                                   ; $73a4: $22
    ld [hl+], a                                   ; $73a5: $22

jr_044_73a6:
    ld [hl+], a                                   ; $73a6: $22
    ld [hl+], a                                   ; $73a7: $22
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    ld [hl+], a                                   ; $73ab: $22
    ld [hl+], a                                   ; $73ac: $22
    ld [hl+], a                                   ; $73ad: $22
    ld [hl+], a                                   ; $73ae: $22
    cpl                                           ; $73af: $2f
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    ld [hl+], a                                   ; $73b3: $22
    ld [hl+], a                                   ; $73b4: $22
    ld [hl+], a                                   ; $73b5: $22
    ld [hl+], a                                   ; $73b6: $22
    cpl                                           ; $73b7: $2f
    rst $38                                       ; $73b8: $ff
    ldh a, [rP1]                                  ; $73b9: $f0 $00
    ld [hl+], a                                   ; $73bb: $22
    ld [hl+], a                                   ; $73bc: $22
    ld [hl+], a                                   ; $73bd: $22
    ld [hl+], a                                   ; $73be: $22
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    nop                                           ; $73c1: $00
    nop                                           ; $73c2: $00
    ld [hl+], a                                   ; $73c3: $22
    ld [hl+], a                                   ; $73c4: $22
    ld [hl+], a                                   ; $73c5: $22
    cpl                                           ; $73c6: $2f
    rst $38                                       ; $73c7: $ff
    ldh a, [rP1]                                  ; $73c8: $f0 $00
    nop                                           ; $73ca: $00
    ld [hl+], a                                   ; $73cb: $22
    ld [hl+], a                                   ; $73cc: $22
    ld [hl+], a                                   ; $73cd: $22
    rst $38                                       ; $73ce: $ff
    rst $38                                       ; $73cf: $ff
    ldh a, [rP1]                                  ; $73d0: $f0 $00
    nop                                           ; $73d2: $00
    ld [hl+], a                                   ; $73d3: $22
    ld [hl+], a                                   ; $73d4: $22
    ld [hl+], a                                   ; $73d5: $22
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    ldh a, [rP1]                                  ; $73d8: $f0 $00
    nop                                           ; $73da: $00
    ld [hl+], a                                   ; $73db: $22
    ld [hl+], a                                   ; $73dc: $22
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    ldh a, [rP1]                                  ; $73e1: $f0 $00
    cpl                                           ; $73e3: $2f
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rrca                                          ; $73e7: $0f
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    ccf                                           ; $73ec: $3f
    rst $38                                       ; $73ed: $ff
    ldh a, [rP1]                                  ; $73ee: $f0 $00
    rrca                                          ; $73f0: $0f
    ldh a, [rP1]                                  ; $73f1: $f0 $00
    rrca                                          ; $73f3: $0f
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    ldh a, [rP1]                                  ; $73f6: $f0 $00
    nop                                           ; $73f8: $00
    nop                                           ; $73f9: $00
    nop                                           ; $73fa: $00
    nop                                           ; $73fb: $00
    rst $38                                       ; $73fc: $ff
    rrca                                          ; $73fd: $0f
    ldh a, [rP1]                                  ; $73fe: $f0 $00
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    ld d, a                                       ; $7403: $57
    ld [$2a19], sp                                ; $7404: $08 $19 $2a
    ld c, d                                       ; $7407: $4a
    ld e, e                                       ; $7408: $5b
    ld l, d                                       ; $7409: $6a
    ld a, c                                       ; $740a: $79
    adc b                                         ; $740b: $88
    adc d                                         ; $740c: $8a
    sbc c                                         ; $740d: $99
    and a                                         ; $740e: $a7
    xor b                                         ; $740f: $a8
    or [hl]                                       ; $7410: $b6
    push bc                                       ; $7411: $c5
    db $d3                                        ; $7412: $d3
    rst $38                                       ; $7413: $ff
    rrca                                          ; $7414: $0f
    ld [hl+], a                                   ; $7415: $22
    ld [hl+], a                                   ; $7416: $22
    ld [hl+], a                                   ; $7417: $22
    ld [hl+], a                                   ; $7418: $22
    rst $38                                       ; $7419: $ff
    ld a, [c]                                     ; $741a: $f2
    ld [hl+], a                                   ; $741b: $22
    ld [hl+], a                                   ; $741c: $22
    ld [hl+], a                                   ; $741d: $22
    ld [hl+], a                                   ; $741e: $22
    ld [hl+], a                                   ; $741f: $22
    cpl                                           ; $7420: $2f
    rst $38                                       ; $7421: $ff
    ld a, [c]                                     ; $7422: $f2
    ld [hl+], a                                   ; $7423: $22
    ld [hl+], a                                   ; $7424: $22
    ld [hl+], a                                   ; $7425: $22
    ld [hl+], a                                   ; $7426: $22
    ld [hl+], a                                   ; $7427: $22
    cpl                                           ; $7428: $2f
    rrca                                          ; $7429: $0f
    rst $38                                       ; $742a: $ff
    ld a, [c]                                     ; $742b: $f2
    ld [hl+], a                                   ; $742c: $22
    ld [hl+], a                                   ; $742d: $22
    ld [hl+], a                                   ; $742e: $22
    cpl                                           ; $742f: $2f
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    ld a, [c]                                     ; $7433: $f2
    ld [hl+], a                                   ; $7434: $22
    ld [hl+], a                                   ; $7435: $22
    ld [hl+], a                                   ; $7436: $22
    cpl                                           ; $7437: $2f
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    ld a, [c]                                     ; $743b: $f2
    ld [hl+], a                                   ; $743c: $22
    ld [hl+], a                                   ; $743d: $22
    ld [hl+], a                                   ; $743e: $22
    ld [hl+], a                                   ; $743f: $22
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    ld a, [c]                                     ; $7443: $f2
    ld [hl+], a                                   ; $7444: $22
    ld [hl+], a                                   ; $7445: $22
    ld [hl+], a                                   ; $7446: $22
    ld [hl+], a                                   ; $7447: $22
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    ld [hl+], a                                   ; $744b: $22
    ld [hl+], a                                   ; $744c: $22
    ld [hl+], a                                   ; $744d: $22
    ld [hl+], a                                   ; $744e: $22
    cpl                                           ; $744f: $2f
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    ld a, [c]                                     ; $7452: $f2
    ld [hl+], a                                   ; $7453: $22
    ld [hl+], a                                   ; $7454: $22
    ld [hl+], a                                   ; $7455: $22
    ld [hl+], a                                   ; $7456: $22
    cpl                                           ; $7457: $2f
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    ld a, [c]                                     ; $745a: $f2
    ld [hl+], a                                   ; $745b: $22
    ld [hl+], a                                   ; $745c: $22
    ld [hl+], a                                   ; $745d: $22
    ld [hl+], a                                   ; $745e: $22
    ld [hl+], a                                   ; $745f: $22
    rst $38                                       ; $7460: $ff
    rst $38                                       ; $7461: $ff
    rst $38                                       ; $7462: $ff
    ld [hl+], a                                   ; $7463: $22
    ld [hl+], a                                   ; $7464: $22
    ld [hl+], a                                   ; $7465: $22
    ld [hl+], a                                   ; $7466: $22
    ld [hl+], a                                   ; $7467: $22
    ldh a, [$f3]                                  ; $7468: $f0 $f3
    ld a, [c]                                     ; $746a: $f2
    ld [hl+], a                                   ; $746b: $22
    ld [hl+], a                                   ; $746c: $22
    ld [hl+], a                                   ; $746d: $22
    ld [hl+], a                                   ; $746e: $22
    ld [hl+], a                                   ; $746f: $22
    rst $38                                       ; $7470: $ff
    ccf                                           ; $7471: $3f
    ld a, [c]                                     ; $7472: $f2
    ld [hl+], a                                   ; $7473: $22
    ld [hl+], a                                   ; $7474: $22
    ld [hl+], a                                   ; $7475: $22
    cpl                                           ; $7476: $2f
    rst $38                                       ; $7477: $ff
    rst $38                                       ; $7478: $ff
    rst $38                                       ; $7479: $ff
    ld a, [c]                                     ; $747a: $f2
    ld [hl+], a                                   ; $747b: $22
    ld [hl+], a                                   ; $747c: $22
    ld [hl+], a                                   ; $747d: $22
    rst $38                                       ; $747e: $ff
    rst $38                                       ; $747f: $ff
    rst $38                                       ; $7480: $ff
    rst $38                                       ; $7481: $ff
    ld a, [c]                                     ; $7482: $f2
    ld [hl+], a                                   ; $7483: $22
    ld [hl+], a                                   ; $7484: $22
    ld [hl+], a                                   ; $7485: $22
    rst $38                                       ; $7486: $ff
    rst $38                                       ; $7487: $ff
    rst $38                                       ; $7488: $ff
    rst $38                                       ; $7489: $ff
    ld a, [c]                                     ; $748a: $f2
    ld [hl+], a                                   ; $748b: $22
    ld [hl+], a                                   ; $748c: $22
    ld [hl+], a                                   ; $748d: $22
    cpl                                           ; $748e: $2f
    ld a, [c]                                     ; $748f: $f2
    ld [hl+], a                                   ; $7490: $22
    ld [hl+], a                                   ; $7491: $22
    ld [hl+], a                                   ; $7492: $22
    ld [hl+], a                                   ; $7493: $22
    ld [hl+], a                                   ; $7494: $22
    ld e, [hl]                                    ; $7495: $5e
    jr jr_044_74b1                                ; $7496: $18 $19

    ld a, [de]                                    ; $7498: $1a
    daa                                           ; $7499: $27
    dec hl                                        ; $749a: $2b
    ld [hl], $38                                  ; $749b: $36 $38
    add hl, sp                                    ; $749d: $39
    ld a, [hl-]                                   ; $749e: $3a
    ld b, a                                       ; $749f: $47
    ld c, e                                       ; $74a0: $4b
    ld c, h                                       ; $74a1: $4c
    ld d, [hl]                                    ; $74a2: $56
    ld e, b                                       ; $74a3: $58
    ld e, c                                       ; $74a4: $59
    ld e, d                                       ; $74a5: $5a
    ld h, a                                       ; $74a6: $67
    halt                                          ; $74a7: $76
    ld a, b                                       ; $74a8: $78
    ld a, c                                       ; $74a9: $79
    ld a, d                                       ; $74aa: $7a
    add a                                         ; $74ab: $87
    sub [hl]                                      ; $74ac: $96
    sbc b                                         ; $74ad: $98
    and a                                         ; $74ae: $a7
    or [hl]                                       ; $74af: $b6
    rst $38                                       ; $74b0: $ff

jr_044_74b1:
    ld a, [de]                                    ; $74b1: $1a
    db $ed                                        ; $74b2: $ed
    ld a, l                                       ; $74b3: $7d
    ret c                                         ; $74b4: $d8

    ld [hl], h                                    ; $74b5: $74
    ret c                                         ; $74b6: $d8

    ld [hl], h                                    ; $74b7: $74
    ret c                                         ; $74b8: $d8

    ld [hl], h                                    ; $74b9: $74
    ret c                                         ; $74ba: $d8

    ld [hl], h                                    ; $74bb: $74
    ret c                                         ; $74bc: $d8

    ld [hl], h                                    ; $74bd: $74
    ret c                                         ; $74be: $d8

    ld [hl], h                                    ; $74bf: $74
    ret c                                         ; $74c0: $d8

    ld [hl], h                                    ; $74c1: $74
    ret c                                         ; $74c2: $d8

    ld [hl], h                                    ; $74c3: $74
    ret c                                         ; $74c4: $d8

    ld [hl], h                                    ; $74c5: $74
    ret c                                         ; $74c6: $d8

    ld [hl], h                                    ; $74c7: $74
    ret c                                         ; $74c8: $d8

    ld [hl], h                                    ; $74c9: $74
    ret c                                         ; $74ca: $d8

    ld [hl], h                                    ; $74cb: $74
    ret c                                         ; $74cc: $d8

    ld [hl], h                                    ; $74cd: $74
    ret c                                         ; $74ce: $d8

    ld [hl], h                                    ; $74cf: $74
    ret c                                         ; $74d0: $d8

    ld [hl], h                                    ; $74d1: $74
    ret c                                         ; $74d2: $d8

    ld [hl], h                                    ; $74d3: $74
    ret c                                         ; $74d4: $d8

    ld [hl], h                                    ; $74d5: $74
    ret c                                         ; $74d6: $d8

    ld [hl], h                                    ; $74d7: $74
    nop                                           ; $74d8: $00
    nop                                           ; $74d9: $00
    rst $38                                       ; $74da: $ff
    nop                                           ; $74db: $00
    nop                                           ; $74dc: $00
    rrca                                          ; $74dd: $0f
    rrca                                          ; $74de: $0f
    ldh a, [rP1]                                  ; $74df: $f0 $00
    nop                                           ; $74e1: $00
    rst $38                                       ; $74e2: $ff
    ldh a, [rP1]                                  ; $74e3: $f0 $00
    rst $38                                       ; $74e5: $ff
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    nop                                           ; $74e8: $00
    rrca                                          ; $74e9: $0f
    rst $38                                       ; $74ea: $ff
    ldh a, [rIF]                                  ; $74eb: $f0 $0f
    ld a, [c]                                     ; $74ed: $f2
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    nop                                           ; $74f0: $00
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    ldh a, [rIF]                                  ; $74f3: $f0 $0f
    ld [hl+], a                                   ; $74f5: $22
    rst $38                                       ; $74f6: $ff
    ldh a, [rP1]                                  ; $74f7: $f0 $00
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    cpl                                           ; $74fd: $2f
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff
    nop                                           ; $7500: $00
    rst $38                                       ; $7501: $ff
    rst $38                                       ; $7502: $ff
    rst $38                                       ; $7503: $ff
    rst $38                                       ; $7504: $ff
    ld a, [c]                                     ; $7505: $f2
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    nop                                           ; $7508: $00
    rrca                                          ; $7509: $0f
    rst $38                                       ; $750a: $ff
    rra                                           ; $750b: $1f
    rra                                           ; $750c: $1f
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    ldh a, [rP1]                                  ; $750f: $f0 $00
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    ccf                                           ; $7515: $3f
    rst $38                                       ; $7516: $ff
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    rst $38                                       ; $7519: $ff
    di                                            ; $751a: $f3
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    pop af                                        ; $751d: $f1
    ldh a, [rP1]                                  ; $751e: $f0 $00
    nop                                           ; $7520: $00
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    nop                                           ; $7527: $00
    rrca                                          ; $7528: $0f
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    pop af                                        ; $752e: $f1
    rst $38                                       ; $752f: $ff
    rrca                                          ; $7530: $0f
    rst $38                                       ; $7531: $ff
    rra                                           ; $7532: $1f
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    pop af                                        ; $7538: $f1
    ld de, $ff1f                                  ; $7539: $11 $1f $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    pop af                                        ; $7541: $f1
    rst $38                                       ; $7542: $ff
    ldh a, [rIE]                                  ; $7543: $f0 $ff
    rst $38                                       ; $7545: $ff
    di                                            ; $7546: $f3
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    pop af                                        ; $7549: $f1
    rst $38                                       ; $754a: $ff
    ldh a, [rIE]                                  ; $754b: $f0 $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    ldh a, [rIF]                                  ; $754f: $f0 $0f
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    nop                                           ; $7553: $00
    rrca                                          ; $7554: $0f
    ldh a, [rIF]                                  ; $7555: $f0 $0f
    nop                                           ; $7557: $00
    xor a                                         ; $7558: $af
    inc sp                                        ; $7559: $33
    inc [hl]                                      ; $755a: $34
    ld c, h                                       ; $755b: $4c
    ld d, a                                       ; $755c: $57
    ld l, h                                       ; $755d: $6c
    ld l, l                                       ; $755e: $6d
    add e                                         ; $755f: $83
    sbc e                                         ; $7560: $9b
    sbc h                                         ; $7561: $9c
    or l                                          ; $7562: $b5
    or [hl]                                       ; $7563: $b6
    cp c                                          ; $7564: $b9
    cp d                                          ; $7565: $ba
    cp e                                          ; $7566: $bb
    cp h                                          ; $7567: $bc
    rst $38                                       ; $7568: $ff
    rrca                                          ; $7569: $0f
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    nop                                           ; $756d: $00
    rrca                                          ; $756e: $0f
    ld [hl+], a                                   ; $756f: $22
    ld [hl+], a                                   ; $7570: $22
    ld [hl+], a                                   ; $7571: $22
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    ldh a, [rIF]                                  ; $7574: $f0 $0f
    rst $38                                       ; $7576: $ff
    ld a, [c]                                     ; $7577: $f2
    ld [hl+], a                                   ; $7578: $22
    ld [hl+], a                                   ; $7579: $22
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rrca                                          ; $757c: $0f
    pop af                                        ; $757d: $f1
    rra                                           ; $757e: $1f
    ld [hl+], a                                   ; $757f: $22
    ld [hl+], a                                   ; $7580: $22
    ld [hl+], a                                   ; $7581: $22
    rst $38                                       ; $7582: $ff
    ldh a, [rIF]                                  ; $7583: $f0 $0f
    rra                                           ; $7585: $1f
    rst $38                                       ; $7586: $ff
    ld [hl+], a                                   ; $7587: $22
    ld [hl+], a                                   ; $7588: $22
    ld [hl+], a                                   ; $7589: $22
    rst $38                                       ; $758a: $ff
    ldh a, [rIF]                                  ; $758b: $f0 $0f
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    ld [hl+], a                                   ; $758f: $22
    ld [hl+], a                                   ; $7590: $22
    ld [hl+], a                                   ; $7591: $22
    rst $38                                       ; $7592: $ff
    ldh a, [rIE]                                  ; $7593: $f0 $ff
    rst $38                                       ; $7595: $ff
    ld a, [c]                                     ; $7596: $f2
    ld [hl+], a                                   ; $7597: $22
    ld [hl+], a                                   ; $7598: $22
    ld [hl+], a                                   ; $7599: $22
    rst $38                                       ; $759a: $ff
    ldh a, [rIE]                                  ; $759b: $f0 $ff
    rst $38                                       ; $759d: $ff
    rst $38                                       ; $759e: $ff
    ld [hl+], a                                   ; $759f: $22
    ld [hl+], a                                   ; $75a0: $22
    ld [hl+], a                                   ; $75a1: $22
    rst $38                                       ; $75a2: $ff
    ldh a, [rIF]                                  ; $75a3: $f0 $0f
    rst $38                                       ; $75a5: $ff
    ccf                                           ; $75a6: $3f
    ld a, [c]                                     ; $75a7: $f2
    ld [hl+], a                                   ; $75a8: $22
    ld [hl+], a                                   ; $75a9: $22
    rst $38                                       ; $75aa: $ff
    ldh a, [rP1]                                  ; $75ab: $f0 $00
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    ld a, [c]                                     ; $75af: $f2
    ld [hl+], a                                   ; $75b0: $22
    ld [hl+], a                                   ; $75b1: $22
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    nop                                           ; $75b4: $00
    rst $38                                       ; $75b5: $ff
    di                                            ; $75b6: $f3
    ld a, [c]                                     ; $75b7: $f2
    ld [hl+], a                                   ; $75b8: $22
    ld [hl+], a                                   ; $75b9: $22
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    ldh a, [rIE]                                  ; $75bc: $f0 $ff
    ccf                                           ; $75be: $3f
    rst $38                                       ; $75bf: $ff
    ld [hl+], a                                   ; $75c0: $22
    ld [hl+], a                                   ; $75c1: $22
    rst $38                                       ; $75c2: $ff
    rst $38                                       ; $75c3: $ff
    ldh a, [rIF]                                  ; $75c4: $f0 $0f
    ccf                                           ; $75c6: $3f
    rst $38                                       ; $75c7: $ff
    ld a, [c]                                     ; $75c8: $f2
    ld [hl+], a                                   ; $75c9: $22
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    nop                                           ; $75cc: $00
    rst $38                                       ; $75cd: $ff
    pop af                                        ; $75ce: $f1
    ldh a, [rIE]                                  ; $75cf: $f0 $ff
    ld a, [c]                                     ; $75d1: $f2
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    ldh a, [rIE]                                  ; $75d4: $f0 $ff
    rst $38                                       ; $75d6: $ff
    ldh a, [rP1]                                  ; $75d7: $f0 $00
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    ldh a, [rIE]                                  ; $75dc: $f0 $ff
    rst $38                                       ; $75de: $ff
    nop                                           ; $75df: $00
    nop                                           ; $75e0: $00
    nop                                           ; $75e1: $00
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    nop                                           ; $75e4: $00
    rrca                                          ; $75e5: $0f
    ldh a, [rIF]                                  ; $75e6: $f0 $0f
    rst $38                                       ; $75e8: $ff
    ldh a, [$8d]                                  ; $75e9: $f0 $8d
    ld b, [hl]                                    ; $75eb: $46
    ld c, b                                       ; $75ec: $48
    ld d, l                                       ; $75ed: $55
    ld h, [hl]                                    ; $75ee: $66
    ld [hl], a                                    ; $75ef: $77
    rst $38                                       ; $75f0: $ff
    dec b                                         ; $75f1: $05
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
    nop                                           ; $75fd: $00
    rrca                                          ; $75fe: $0f
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00
    rrca                                          ; $7607: $0f
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    nop                                           ; $760c: $00
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    nop                                           ; $760f: $00
    rrca                                          ; $7610: $0f
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    ldh a, [rIF]                                  ; $7613: $f0 $0f
    pop af                                        ; $7615: $f1
    rra                                           ; $7616: $1f
    ldh a, [rIE]                                  ; $7617: $f0 $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    ldh a, [rIE]                                  ; $761b: $f0 $ff
    rra                                           ; $761d: $1f
    pop af                                        ; $761e: $f1
    ldh a, [rIF]                                  ; $761f: $f0 $0f
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    ldh a, [rIF]                                  ; $7623: $f0 $0f
    rst $38                                       ; $7625: $ff
    pop af                                        ; $7626: $f1
    rra                                           ; $7627: $1f
    nop                                           ; $7628: $00
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff
    ldh a, [rP1]                                  ; $762b: $f0 $00
    rst $38                                       ; $762d: $ff
    pop af                                        ; $762e: $f1
    rst $38                                       ; $762f: $ff
    nop                                           ; $7630: $00
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rrca                                          ; $7634: $0f
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    ldh a, [rIE]                                  ; $7637: $f0 $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rrca                                          ; $763c: $0f
    rra                                           ; $763d: $1f
    pop af                                        ; $763e: $f1
    ldh a, [rIF]                                  ; $763f: $f0 $0f
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    ldh a, [rP1]                                  ; $7643: $f0 $00
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    ldh a, [rIE]                                  ; $7647: $f0 $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    ldh a, [rIE]                                  ; $764c: $f0 $ff
    rst $38                                       ; $764e: $ff
    ldh a, [rIE]                                  ; $764f: $f0 $ff
    rst $38                                       ; $7651: $ff
    rst $38                                       ; $7652: $ff
    rst $38                                       ; $7653: $ff
    nop                                           ; $7654: $00
    rst $38                                       ; $7655: $ff
    rra                                           ; $7656: $1f
    rrca                                          ; $7657: $0f
    rst $38                                       ; $7658: $ff
    rst $38                                       ; $7659: $ff
    rst $38                                       ; $765a: $ff
    rst $38                                       ; $765b: $ff
    ldh a, [rIF]                                  ; $765c: $f0 $0f
    ldh a, [rIF]                                  ; $765e: $f0 $0f
    rst $38                                       ; $7660: $ff
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    nop                                           ; $7665: $00
    nop                                           ; $7666: $00
    rrca                                          ; $7667: $0f
    rst $38                                       ; $7668: $ff
    rst $38                                       ; $7669: $ff
    rst $38                                       ; $766a: $ff
    rst $38                                       ; $766b: $ff
    rst $38                                       ; $766c: $ff
    ldh a, [rIE]                                  ; $766d: $f0 $ff
    rst $38                                       ; $766f: $ff
    rst $38                                       ; $7670: $ff
    rst $38                                       ; $7671: $ff
    jp nz, Jump_044_5857                          ; $7672: $c2 $57 $58

    rst $38                                       ; $7675: $ff
    ld [bc], a                                    ; $7676: $02
    nop                                           ; $7677: $00
    rst $38                                       ; $7678: $ff
    rrca                                          ; $7679: $0f
    rst $38                                       ; $767a: $ff
    rst $38                                       ; $767b: $ff
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    rrca                                          ; $767f: $0f
    rst $38                                       ; $7680: $ff
    ldh a, [rIE]                                  ; $7681: $f0 $ff
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    rrca                                          ; $7687: $0f
    rst $38                                       ; $7688: $ff
    ldh a, [rIF]                                  ; $7689: $f0 $0f
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    rst $38                                       ; $768d: $ff
    rst $38                                       ; $768e: $ff
    rrca                                          ; $768f: $0f
    di                                            ; $7690: $f3
    rst $38                                       ; $7691: $ff
    nop                                           ; $7692: $00
    rst $38                                       ; $7693: $ff
    rst $38                                       ; $7694: $ff
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    nop                                           ; $7697: $00
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
    rst $38                                       ; $769a: $ff
    nop                                           ; $769b: $00
    rrca                                          ; $769c: $0f
    rst $38                                       ; $769d: $ff
    rst $38                                       ; $769e: $ff
    ldh a, [rIE]                                  ; $769f: $f0 $ff
    di                                            ; $76a1: $f3
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    rrca                                          ; $76a4: $0f
    rst $38                                       ; $76a5: $ff
    rst $38                                       ; $76a6: $ff
    ldh a, [rIF]                                  ; $76a7: $f0 $0f
    rst $38                                       ; $76a9: $ff
    di                                            ; $76aa: $f3
    rst $38                                       ; $76ab: $ff
    ldh a, [rIF]                                  ; $76ac: $f0 $0f
    rst $38                                       ; $76ae: $ff
    rst $38                                       ; $76af: $ff
    nop                                           ; $76b0: $00
    rst $38                                       ; $76b1: $ff
    rst $38                                       ; $76b2: $ff
    inc sp                                        ; $76b3: $33
    rst $38                                       ; $76b4: $ff
    nop                                           ; $76b5: $00
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    ldh a, [rIE]                                  ; $76b9: $f0 $ff
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    rrca                                          ; $76bd: $0f
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    rrca                                          ; $76c2: $0f
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    nop                                           ; $76c5: $00
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    nop                                           ; $76ca: $00
    rst $38                                       ; $76cb: $ff
    ccf                                           ; $76cc: $3f
    ldh a, [rIF]                                  ; $76cd: $f0 $0f
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    ldh a, [rIE]                                  ; $76d2: $f0 $ff
    ccf                                           ; $76d4: $3f
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    ldh a, [rIF]                                  ; $76da: $f0 $0f
    rst $38                                       ; $76dc: $ff
    rra                                           ; $76dd: $1f
    ldh a, [rIE]                                  ; $76de: $f0 $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    nop                                           ; $76e3: $00
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    ldh a, [rIE]                                  ; $76e6: $f0 $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    ldh a, [rIE]                                  ; $76eb: $f0 $ff
    rst $38                                       ; $76ed: $ff
    ldh a, [rIE]                                  ; $76ee: $f0 $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    ldh a, [rIF]                                  ; $76f3: $f0 $0f
    rst $38                                       ; $76f5: $ff
    nop                                           ; $76f6: $00
    ret z                                         ; $76f7: $c8

    ld [de], a                                    ; $76f8: $12
    inc de                                        ; $76f9: $13
    inc h                                         ; $76fa: $24
    ld [hl], a                                    ; $76fb: $77
    adc b                                         ; $76fc: $88
    rst $38                                       ; $76fd: $ff
    dec b                                         ; $76fe: $05
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    rrca                                          ; $7704: $0f
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    ldh a, [rIE]                                  ; $7709: $f0 $ff
    rst $38                                       ; $770b: $ff
    nop                                           ; $770c: $00
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rrca                                          ; $7711: $0f
    pop af                                        ; $7712: $f1
    rra                                           ; $7713: $1f
    ldh a, [rIE]                                  ; $7714: $f0 $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    ldh a, [rIF]                                  ; $7718: $f0 $0f
    rst $38                                       ; $771a: $ff
    pop af                                        ; $771b: $f1
    ldh a, [rIF]                                  ; $771c: $f0 $0f
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    ldh a, [rIF]                                  ; $7720: $f0 $0f
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    nop                                           ; $7724: $00
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    ldh a, [rIF]                                  ; $7728: $f0 $0f
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    nop                                           ; $772c: $00
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    ldh a, [rIF]                                  ; $7730: $f0 $0f
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rrca                                          ; $7734: $0f
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    ldh a, [$f1]                                  ; $7738: $f0 $f1
    ccf                                           ; $773a: $3f
    rra                                           ; $773b: $1f
    nop                                           ; $773c: $00
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    ldh a, [rIE]                                  ; $7740: $f0 $ff
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    nop                                           ; $7744: $00
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    ldh a, [rIF]                                  ; $7748: $f0 $0f
    rst $38                                       ; $774a: $ff
    ccf                                           ; $774b: $3f
    ldh a, [rIF]                                  ; $774c: $f0 $0f
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    ldh a, [rIF]                                  ; $7750: $f0 $0f
    rra                                           ; $7752: $1f
    rst $38                                       ; $7753: $ff
    ldh a, [rIE]                                  ; $7754: $f0 $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    ldh a, [rIF]                                  ; $7758: $f0 $0f
    rra                                           ; $775a: $1f
    pop af                                        ; $775b: $f1
    ldh a, [rIE]                                  ; $775c: $f0 $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rrca                                          ; $7761: $0f
    rra                                           ; $7762: $1f
    pop af                                        ; $7763: $f1
    ldh a, [rIF]                                  ; $7764: $f0 $0f
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    ldh a, [rIE]                                  ; $7769: $f0 $ff
    rst $38                                       ; $776b: $ff
    ldh a, [rIE]                                  ; $776c: $f0 $ff
    rst $38                                       ; $776e: $ff
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    ldh a, [rIE]                                  ; $7771: $f0 $ff
    rst $38                                       ; $7773: $ff
    nop                                           ; $7774: $00
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    nop                                           ; $7779: $00
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rrca                                          ; $777c: $0f
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    ret nz                                        ; $777f: $c0

    ld b, a                                       ; $7780: $47
    ld c, b                                       ; $7781: $48
    rst $38                                       ; $7782: $ff
    ld [bc], a                                    ; $7783: $02
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    ldh a, [rP1]                                  ; $778d: $f0 $00
    nop                                           ; $778f: $00
    nop                                           ; $7790: $00
    rrca                                          ; $7791: $0f
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    ldh a, [rIE]                                  ; $7795: $f0 $ff
    rst $38                                       ; $7797: $ff
    ldh a, [rIF]                                  ; $7798: $f0 $0f
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    ldh a, [rIE]                                  ; $779d: $f0 $ff
    rst $38                                       ; $779f: $ff
    rra                                           ; $77a0: $1f
    ldh a, [rIF]                                  ; $77a1: $f0 $0f
    rst $38                                       ; $77a3: $ff
    rst $38                                       ; $77a4: $ff
    ldh a, [rIE]                                  ; $77a5: $f0 $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff
    ldh a, [rIE]                                  ; $77a9: $f0 $ff
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    ldh a, [rIE]                                  ; $77ad: $f0 $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    ldh a, [rIF]                                  ; $77b1: $f0 $0f
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    ldh a, [rIE]                                  ; $77b5: $f0 $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    rrca                                          ; $77ba: $0f
    rst $38                                       ; $77bb: $ff
    rst $38                                       ; $77bc: $ff
    ldh a, [rIE]                                  ; $77bd: $f0 $ff
    cpl                                           ; $77bf: $2f
    ccf                                           ; $77c0: $3f
    rra                                           ; $77c1: $1f
    nop                                           ; $77c2: $00
    rst $38                                       ; $77c3: $ff
    rst $38                                       ; $77c4: $ff
    ldh a, [rIE]                                  ; $77c5: $f0 $ff
    rst $38                                       ; $77c7: $ff
    ccf                                           ; $77c8: $3f
    rra                                           ; $77c9: $1f
    rrca                                          ; $77ca: $0f
    rst $38                                       ; $77cb: $ff
    rst $38                                       ; $77cc: $ff
    ldh a, [rIF]                                  ; $77cd: $f0 $0f
    rst $38                                       ; $77cf: $ff
    ccf                                           ; $77d0: $3f
    rra                                           ; $77d1: $1f
    rrca                                          ; $77d2: $0f
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    ldh a, [rIF]                                  ; $77d5: $f0 $0f
    rra                                           ; $77d7: $1f
    ccf                                           ; $77d8: $3f
    ldh a, [rP1]                                  ; $77d9: $f0 $00
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    ldh a, [rIF]                                  ; $77dd: $f0 $0f
    rra                                           ; $77df: $1f
    pop af                                        ; $77e0: $f1
    ldh a, [rIE]                                  ; $77e1: $f0 $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rrca                                          ; $77e6: $0f
    di                                            ; $77e7: $f3
    ccf                                           ; $77e8: $3f
    ldh a, [rIF]                                  ; $77e9: $f0 $0f
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    ldh a, [rIF]                                  ; $77ed: $f0 $0f
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    ldh a, [rIE]                                  ; $77f1: $f0 $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    nop                                           ; $77f6: $00
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    nop                                           ; $77f9: $00
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    nop                                           ; $77fe: $00
    nop                                           ; $77ff: $00
    nop                                           ; $7800: $00
    rrca                                          ; $7801: $0f
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    cp h                                          ; $7804: $bc
    inc [hl]                                      ; $7805: $34
    dec [hl]                                      ; $7806: $35
    ld [hl], $37                                  ; $7807: $36 $37
    rst $38                                       ; $7809: $ff
    inc b                                         ; $780a: $04
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    nop                                           ; $780e: $00
    rst $38                                       ; $780f: $ff
    ldh a, [rIF]                                  ; $7810: $f0 $0f
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    ldh a, [rP1]                                  ; $7814: $f0 $00
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    ldh a, [rP1]                                  ; $7818: $f0 $00
    rst $38                                       ; $781a: $ff
    rst $38                                       ; $781b: $ff
    rst $38                                       ; $781c: $ff
    rrca                                          ; $781d: $0f
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rrca                                          ; $7821: $0f
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    ldh a, [rIF]                                  ; $7824: $f0 $0f
    rst $38                                       ; $7826: $ff
    rst $38                                       ; $7827: $ff
    ldh a, [rIF]                                  ; $7828: $f0 $0f
    rst $38                                       ; $782a: $ff
    rst $38                                       ; $782b: $ff
    ldh a, [rIF]                                  ; $782c: $f0 $0f
    di                                            ; $782e: $f3
    rst $38                                       ; $782f: $ff
    ldh a, [rIE]                                  ; $7830: $f0 $ff
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    ldh a, [rIE]                                  ; $7834: $f0 $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    nop                                           ; $7838: $00
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    ldh a, [rIE]                                  ; $783c: $f0 $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff
    rrca                                          ; $7840: $0f
    rst $38                                       ; $7841: $ff
    rst $38                                       ; $7842: $ff
    rst $38                                       ; $7843: $ff
    ldh a, [rIE]                                  ; $7844: $f0 $ff
    rst $38                                       ; $7846: $ff
    rst $38                                       ; $7847: $ff
    rrca                                          ; $7848: $0f
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    ldh a, [rIE]                                  ; $784c: $f0 $ff
    rst $38                                       ; $784e: $ff
    rst $38                                       ; $784f: $ff
    rrca                                          ; $7850: $0f
    rst $38                                       ; $7851: $ff
    rst $38                                       ; $7852: $ff
    rst $38                                       ; $7853: $ff
    ldh a, [rIE]                                  ; $7854: $f0 $ff
    ccf                                           ; $7856: $3f
    rst $38                                       ; $7857: $ff
    nop                                           ; $7858: $00
    rrca                                          ; $7859: $0f
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    ldh a, [rIE]                                  ; $785c: $f0 $ff
    inc sp                                        ; $785e: $33
    pop af                                        ; $785f: $f1
    ldh a, [rIE]                                  ; $7860: $f0 $ff
    rst $38                                       ; $7862: $ff
    rst $38                                       ; $7863: $ff
    ldh a, [rIE]                                  ; $7864: $f0 $ff
    di                                            ; $7866: $f3
    pop af                                        ; $7867: $f1
    ldh a, [rP1]                                  ; $7868: $f0 $00
    rst $38                                       ; $786a: $ff
    rst $38                                       ; $786b: $ff
    ldh a, [rSB]                                  ; $786c: $f0 $01
    rst $38                                       ; $786e: $ff
    ccf                                           ; $786f: $3f
    rst $38                                       ; $7870: $ff
    rrca                                          ; $7871: $0f
    rst $38                                       ; $7872: $ff
    rst $38                                       ; $7873: $ff
    ldh a, [rIF]                                  ; $7874: $f0 $0f
    pop af                                        ; $7876: $f1
    rst $38                                       ; $7877: $ff
    rst $38                                       ; $7878: $ff
    nop                                           ; $7879: $00
    rst $38                                       ; $787a: $ff
    rst $38                                       ; $787b: $ff
    ldh a, [rP1]                                  ; $787c: $f0 $00
    rst $38                                       ; $787e: $ff
    di                                            ; $787f: $f3
    rst $38                                       ; $7880: $ff
    rrca                                          ; $7881: $0f
    rst $38                                       ; $7882: $ff
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    nop                                           ; $7886: $00
    rst $38                                       ; $7887: $ff
    ldh a, [rIF]                                  ; $7888: $f0 $0f
    rst $38                                       ; $788a: $ff
    ret nz                                        ; $788b: $c0

    jr jr_044_78a7                                ; $788c: $18 $19

    ld a, [hl+]                                   ; $788e: $2a
    add hl, sp                                    ; $788f: $39
    ld b, l                                       ; $7890: $45
    ld h, l                                       ; $7891: $65
    ld h, [hl]                                    ; $7892: $66
    ld h, a                                       ; $7893: $67
    ld l, b                                       ; $7894: $68
    add l                                         ; $7895: $85
    add a                                         ; $7896: $87
    adc b                                         ; $7897: $88
    rst $38                                       ; $7898: $ff
    inc c                                         ; $7899: $0c
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

jr_044_78a7:
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
    nop                                           ; $78b4: $00
    rrca                                          ; $78b5: $0f
    ldh a, [rIF]                                  ; $78b6: $f0 $0f
    rst $38                                       ; $78b8: $ff
    rst $38                                       ; $78b9: $ff
    rst $38                                       ; $78ba: $ff
    ldh a, [rIF]                                  ; $78bb: $f0 $0f
    rst $38                                       ; $78bd: $ff
    rst $38                                       ; $78be: $ff
    nop                                           ; $78bf: $00
    rst $38                                       ; $78c0: $ff
    rst $38                                       ; $78c1: $ff
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rrca                                          ; $78c4: $0f
    rst $38                                       ; $78c5: $ff
    rst $38                                       ; $78c6: $ff
    rrca                                          ; $78c7: $0f
    rst $38                                       ; $78c8: $ff
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rrca                                          ; $78cc: $0f
    rst $38                                       ; $78cd: $ff
    rst $38                                       ; $78ce: $ff
    rrca                                          ; $78cf: $0f
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    ldh a, [rP1]                                  ; $78d3: $f0 $00
    rst $38                                       ; $78d5: $ff
    pop af                                        ; $78d6: $f1
    ldh a, [rIE]                                  ; $78d7: $f0 $ff
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    rst $38                                       ; $78db: $ff
    ldh a, [rIE]                                  ; $78dc: $f0 $ff
    rst $38                                       ; $78de: $ff
    rrca                                          ; $78df: $0f
    rst $38                                       ; $78e0: $ff
    rst $38                                       ; $78e1: $ff
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    nop                                           ; $78e4: $00
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rrca                                          ; $78e7: $0f
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    ldh a, [rIE]                                  ; $78ec: $f0 $ff
    rst $38                                       ; $78ee: $ff
    nop                                           ; $78ef: $00
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    ldh a, [rIE]                                  ; $78f4: $f0 $ff
    ldh a, [rIF]                                  ; $78f6: $f0 $0f
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    nop                                           ; $78fd: $00
    nop                                           ; $78fe: $00
    rrca                                          ; $78ff: $0f
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    ldh a, [rP1]                                  ; $7904: $f0 $00
    nop                                           ; $7906: $00
    rrca                                          ; $7907: $0f
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
    ret c                                         ; $791a: $d8

    ld d, a                                       ; $791b: $57
    ld e, b                                       ; $791c: $58
    rst $38                                       ; $791d: $ff
    ld [bc], a                                    ; $791e: $02
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    rst $38                                       ; $7921: $ff
    rrca                                          ; $7922: $0f
    rst $38                                       ; $7923: $ff
    nop                                           ; $7924: $00
    rrca                                          ; $7925: $0f
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    rst $38                                       ; $7928: $ff
    ldh a, [rIF]                                  ; $7929: $f0 $0f
    rra                                           ; $792b: $1f
    ldh a, [rIE]                                  ; $792c: $f0 $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    pop af                                        ; $7932: $f1
    rst $38                                       ; $7933: $ff
    ldh a, [rIF]                                  ; $7934: $f0 $0f
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rrca                                          ; $7939: $0f
    pop af                                        ; $793a: $f1
    rst $38                                       ; $793b: $ff
    ldh a, [rIF]                                  ; $793c: $f0 $0f
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    rst $38                                       ; $7940: $ff
    ldh a, [rIE]                                  ; $7941: $f0 $ff
    pop af                                        ; $7943: $f1
    ldh a, [rIE]                                  ; $7944: $f0 $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    ldh a, [rIE]                                  ; $7949: $f0 $ff
    ccf                                           ; $794b: $3f
    ldh a, [rIF]                                  ; $794c: $f0 $0f
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
    ldh a, [rIE]                                  ; $7951: $f0 $ff
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    rrca                                          ; $7955: $0f
    rst $38                                       ; $7956: $ff
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    ldh a, [rIF]                                  ; $7959: $f0 $0f
    di                                            ; $795b: $f3
    rst $38                                       ; $795c: $ff
    nop                                           ; $795d: $00
    rst $38                                       ; $795e: $ff
    rst $38                                       ; $795f: $ff
    rst $38                                       ; $7960: $ff
    rrca                                          ; $7961: $0f
    rst $38                                       ; $7962: $ff
    inc sp                                        ; $7963: $33
    ldh a, [rIF]                                  ; $7964: $f0 $0f
    rst $38                                       ; $7966: $ff
    rst $38                                       ; $7967: $ff
    rst $38                                       ; $7968: $ff
    rrca                                          ; $7969: $0f
    rra                                           ; $796a: $1f
    rst $38                                       ; $796b: $ff
    ldh a, [rIF]                                  ; $796c: $f0 $0f
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    ldh a, [rP1]                                  ; $7970: $f0 $00
    rst $38                                       ; $7972: $ff
    rst $38                                       ; $7973: $ff
    nop                                           ; $7974: $00
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rst $38                                       ; $7977: $ff
    ldh a, [rIF]                                  ; $7978: $f0 $0f
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    nop                                           ; $797c: $00
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    rst $38                                       ; $797f: $ff
    ldh a, [rIE]                                  ; $7980: $f0 $ff
    pop af                                        ; $7982: $f1
    ldh a, [rIF]                                  ; $7983: $f0 $0f
    rst $38                                       ; $7985: $ff
    rst $38                                       ; $7986: $ff
    rst $38                                       ; $7987: $ff
    ldh a, [rIE]                                  ; $7988: $f0 $ff
    ccf                                           ; $798a: $3f
    nop                                           ; $798b: $00
    rrca                                          ; $798c: $0f
    rst $38                                       ; $798d: $ff
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
    ldh a, [rIF]                                  ; $7990: $f0 $0f
    rst $38                                       ; $7992: $ff
    nop                                           ; $7993: $00
    rst $38                                       ; $7994: $ff
    rst $38                                       ; $7995: $ff
    rst $38                                       ; $7996: $ff
    rst $38                                       ; $7997: $ff
    ldh a, [rIF]                                  ; $7998: $f0 $0f
    rst $38                                       ; $799a: $ff
    nop                                           ; $799b: $00
    rst $38                                       ; $799c: $ff
    rst $38                                       ; $799d: $ff
    rst $38                                       ; $799e: $ff
    ret nz                                        ; $799f: $c0

    jr z, jr_044_79cb                             ; $79a0: $28 $29

    ld l, b                                       ; $79a2: $68
    ld [hl], a                                    ; $79a3: $77
    rst $38                                       ; $79a4: $ff
    inc b                                         ; $79a5: $04
    nop                                           ; $79a6: $00
    nop                                           ; $79a7: $00
    rst $38                                       ; $79a8: $ff
    nop                                           ; $79a9: $00
    nop                                           ; $79aa: $00
    rrca                                          ; $79ab: $0f
    rrca                                          ; $79ac: $0f
    ldh a, [rP1]                                  ; $79ad: $f0 $00
    nop                                           ; $79af: $00
    rst $38                                       ; $79b0: $ff
    ldh a, [rP1]                                  ; $79b1: $f0 $00
    rst $38                                       ; $79b3: $ff
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    nop                                           ; $79b6: $00
    rrca                                          ; $79b7: $0f
    rst $38                                       ; $79b8: $ff
    ldh a, [rIF]                                  ; $79b9: $f0 $0f
    ld a, [c]                                     ; $79bb: $f2
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    nop                                           ; $79be: $00
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    ldh a, [rIF]                                  ; $79c1: $f0 $0f
    ld [hl+], a                                   ; $79c3: $22
    rst $38                                       ; $79c4: $ff
    ldh a, [rP1]                                  ; $79c5: $f0 $00
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff

jr_044_79cb:
    cpl                                           ; $79cb: $2f
    rst $38                                       ; $79cc: $ff
    rst $38                                       ; $79cd: $ff
    nop                                           ; $79ce: $00
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    ld a, [c]                                     ; $79d3: $f2
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    nop                                           ; $79d6: $00
    rrca                                          ; $79d7: $0f
    rst $38                                       ; $79d8: $ff
    rra                                           ; $79d9: $1f
    rra                                           ; $79da: $1f
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    ldh a, [rP1]                                  ; $79dd: $f0 $00
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    ccf                                           ; $79e3: $3f
    rst $38                                       ; $79e4: $ff
    nop                                           ; $79e5: $00
    nop                                           ; $79e6: $00
    rst $38                                       ; $79e7: $ff
    di                                            ; $79e8: $f3
    rst $38                                       ; $79e9: $ff
    rst $38                                       ; $79ea: $ff
    pop af                                        ; $79eb: $f1
    ldh a, [rP1]                                  ; $79ec: $f0 $00
    nop                                           ; $79ee: $00
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    nop                                           ; $79f5: $00
    rrca                                          ; $79f6: $0f
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    pop af                                        ; $79fc: $f1
    rst $38                                       ; $79fd: $ff
    rrca                                          ; $79fe: $0f
    rst $38                                       ; $79ff: $ff
    rra                                           ; $7a00: $1f
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    pop af                                        ; $7a06: $f1
    ld de, $ff1f                                  ; $7a07: $11 $1f $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    pop af                                        ; $7a0f: $f1
    rst $38                                       ; $7a10: $ff
    ldh a, [rIE]                                  ; $7a11: $f0 $ff
    rst $38                                       ; $7a13: $ff
    di                                            ; $7a14: $f3
    rst $38                                       ; $7a15: $ff
    rst $38                                       ; $7a16: $ff
    pop af                                        ; $7a17: $f1
    rst $38                                       ; $7a18: $ff
    ldh a, [rIE]                                  ; $7a19: $f0 $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    ldh a, [rIF]                                  ; $7a1d: $f0 $0f
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    nop                                           ; $7a21: $00
    rrca                                          ; $7a22: $0f
    ldh a, [rIF]                                  ; $7a23: $f0 $0f
    nop                                           ; $7a25: $00
    xor a                                         ; $7a26: $af
    inc sp                                        ; $7a27: $33
    inc [hl]                                      ; $7a28: $34
    ld c, h                                       ; $7a29: $4c
    ld d, a                                       ; $7a2a: $57
    ld l, h                                       ; $7a2b: $6c
    ld l, l                                       ; $7a2c: $6d
    add e                                         ; $7a2d: $83
    sbc e                                         ; $7a2e: $9b
    sbc h                                         ; $7a2f: $9c
    or l                                          ; $7a30: $b5
    or [hl]                                       ; $7a31: $b6
    cp c                                          ; $7a32: $b9
    cp d                                          ; $7a33: $ba
    cp e                                          ; $7a34: $bb
    cp h                                          ; $7a35: $bc
    rst $38                                       ; $7a36: $ff
    rrca                                          ; $7a37: $0f
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    nop                                           ; $7a3b: $00
    rrca                                          ; $7a3c: $0f
    ld [hl+], a                                   ; $7a3d: $22
    ld [hl+], a                                   ; $7a3e: $22
    ld [hl+], a                                   ; $7a3f: $22
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    ldh a, [rIF]                                  ; $7a42: $f0 $0f
    rst $38                                       ; $7a44: $ff
    ld a, [c]                                     ; $7a45: $f2
    ld [hl+], a                                   ; $7a46: $22
    ld [hl+], a                                   ; $7a47: $22
    rst $38                                       ; $7a48: $ff
    rst $38                                       ; $7a49: $ff
    rrca                                          ; $7a4a: $0f
    pop af                                        ; $7a4b: $f1
    rra                                           ; $7a4c: $1f
    ld [hl+], a                                   ; $7a4d: $22
    ld [hl+], a                                   ; $7a4e: $22
    ld [hl+], a                                   ; $7a4f: $22
    rst $38                                       ; $7a50: $ff
    ldh a, [rIF]                                  ; $7a51: $f0 $0f
    rra                                           ; $7a53: $1f
    rst $38                                       ; $7a54: $ff
    ld [hl+], a                                   ; $7a55: $22
    ld [hl+], a                                   ; $7a56: $22
    ld [hl+], a                                   ; $7a57: $22
    rst $38                                       ; $7a58: $ff
    ldh a, [rIF]                                  ; $7a59: $f0 $0f
    rst $38                                       ; $7a5b: $ff
    rst $38                                       ; $7a5c: $ff
    ld [hl+], a                                   ; $7a5d: $22
    ld [hl+], a                                   ; $7a5e: $22
    ld [hl+], a                                   ; $7a5f: $22
    rst $38                                       ; $7a60: $ff
    ldh a, [rIE]                                  ; $7a61: $f0 $ff
    rst $38                                       ; $7a63: $ff
    ld a, [c]                                     ; $7a64: $f2
    ld [hl+], a                                   ; $7a65: $22
    ld [hl+], a                                   ; $7a66: $22
    ld [hl+], a                                   ; $7a67: $22
    rst $38                                       ; $7a68: $ff
    ldh a, [rIE]                                  ; $7a69: $f0 $ff
    rst $38                                       ; $7a6b: $ff
    rst $38                                       ; $7a6c: $ff
    ld [hl+], a                                   ; $7a6d: $22
    ld [hl+], a                                   ; $7a6e: $22
    ld [hl+], a                                   ; $7a6f: $22
    rst $38                                       ; $7a70: $ff
    ldh a, [rIF]                                  ; $7a71: $f0 $0f
    rst $38                                       ; $7a73: $ff
    ccf                                           ; $7a74: $3f
    ld a, [c]                                     ; $7a75: $f2
    ld [hl+], a                                   ; $7a76: $22
    ld [hl+], a                                   ; $7a77: $22
    rst $38                                       ; $7a78: $ff
    ldh a, [rP1]                                  ; $7a79: $f0 $00
    rst $38                                       ; $7a7b: $ff
    rst $38                                       ; $7a7c: $ff
    ld a, [c]                                     ; $7a7d: $f2
    ld [hl+], a                                   ; $7a7e: $22
    ld [hl+], a                                   ; $7a7f: $22
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    nop                                           ; $7a82: $00
    rst $38                                       ; $7a83: $ff
    di                                            ; $7a84: $f3
    ld a, [c]                                     ; $7a85: $f2
    ld [hl+], a                                   ; $7a86: $22
    ld [hl+], a                                   ; $7a87: $22
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    ldh a, [rIE]                                  ; $7a8a: $f0 $ff
    ccf                                           ; $7a8c: $3f
    rst $38                                       ; $7a8d: $ff
    ld [hl+], a                                   ; $7a8e: $22
    ld [hl+], a                                   ; $7a8f: $22
    rst $38                                       ; $7a90: $ff
    rst $38                                       ; $7a91: $ff
    ldh a, [rIF]                                  ; $7a92: $f0 $0f
    ccf                                           ; $7a94: $3f
    rst $38                                       ; $7a95: $ff
    ld a, [c]                                     ; $7a96: $f2
    ld [hl+], a                                   ; $7a97: $22
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    nop                                           ; $7a9a: $00
    rst $38                                       ; $7a9b: $ff
    pop af                                        ; $7a9c: $f1
    ldh a, [rIE]                                  ; $7a9d: $f0 $ff
    ld a, [c]                                     ; $7a9f: $f2
    rst $38                                       ; $7aa0: $ff
    rst $38                                       ; $7aa1: $ff
    ldh a, [rIE]                                  ; $7aa2: $f0 $ff
    rst $38                                       ; $7aa4: $ff
    ldh a, [rP1]                                  ; $7aa5: $f0 $00
    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    rst $38                                       ; $7aa9: $ff
    ldh a, [rIE]                                  ; $7aaa: $f0 $ff
    rst $38                                       ; $7aac: $ff
    nop                                           ; $7aad: $00
    nop                                           ; $7aae: $00
    nop                                           ; $7aaf: $00
    rst $38                                       ; $7ab0: $ff
    rst $38                                       ; $7ab1: $ff
    nop                                           ; $7ab2: $00
    rrca                                          ; $7ab3: $0f
    ldh a, [rIF]                                  ; $7ab4: $f0 $0f
    rst $38                                       ; $7ab6: $ff
    ldh a, [$8d]                                  ; $7ab7: $f0 $8d
    ld b, [hl]                                    ; $7ab9: $46
    ld c, b                                       ; $7aba: $48
    ld d, l                                       ; $7abb: $55
    ld h, [hl]                                    ; $7abc: $66
    ld [hl], a                                    ; $7abd: $77
    rst $38                                       ; $7abe: $ff
    dec b                                         ; $7abf: $05
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
    nop                                           ; $7acb: $00
    rrca                                          ; $7acc: $0f
    rst $38                                       ; $7acd: $ff
    rst $38                                       ; $7ace: $ff
    rst $38                                       ; $7acf: $ff
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    rst $38                                       ; $7ad2: $ff
    nop                                           ; $7ad3: $00
    nop                                           ; $7ad4: $00
    rrca                                          ; $7ad5: $0f
    rst $38                                       ; $7ad6: $ff
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    nop                                           ; $7ada: $00
    rst $38                                       ; $7adb: $ff
    rst $38                                       ; $7adc: $ff
    nop                                           ; $7add: $00
    rrca                                          ; $7ade: $0f
    rst $38                                       ; $7adf: $ff
    rst $38                                       ; $7ae0: $ff
    ldh a, [rIF]                                  ; $7ae1: $f0 $0f
    pop af                                        ; $7ae3: $f1
    rra                                           ; $7ae4: $1f
    ldh a, [rIE]                                  ; $7ae5: $f0 $ff
    rst $38                                       ; $7ae7: $ff
    rst $38                                       ; $7ae8: $ff
    ldh a, [rIE]                                  ; $7ae9: $f0 $ff
    rra                                           ; $7aeb: $1f
    pop af                                        ; $7aec: $f1
    ldh a, [rIF]                                  ; $7aed: $f0 $0f
    rst $38                                       ; $7aef: $ff
    rst $38                                       ; $7af0: $ff
    ldh a, [rIF]                                  ; $7af1: $f0 $0f
    rst $38                                       ; $7af3: $ff
    pop af                                        ; $7af4: $f1
    rra                                           ; $7af5: $1f
    nop                                           ; $7af6: $00
    rst $38                                       ; $7af7: $ff
    rst $38                                       ; $7af8: $ff
    ldh a, [rP1]                                  ; $7af9: $f0 $00
    rst $38                                       ; $7afb: $ff
    pop af                                        ; $7afc: $f1
    rst $38                                       ; $7afd: $ff
    nop                                           ; $7afe: $00
    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rrca                                          ; $7b02: $0f
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    ldh a, [rIE]                                  ; $7b05: $f0 $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rrca                                          ; $7b0a: $0f
    rra                                           ; $7b0b: $1f
    pop af                                        ; $7b0c: $f1
    ldh a, [rIF]                                  ; $7b0d: $f0 $0f
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    ldh a, [rP1]                                  ; $7b11: $f0 $00
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    ldh a, [rIE]                                  ; $7b15: $f0 $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff
    ldh a, [rIE]                                  ; $7b1a: $f0 $ff
    rst $38                                       ; $7b1c: $ff
    ldh a, [rIE]                                  ; $7b1d: $f0 $ff
    rst $38                                       ; $7b1f: $ff
    rst $38                                       ; $7b20: $ff
    rst $38                                       ; $7b21: $ff
    nop                                           ; $7b22: $00
    rst $38                                       ; $7b23: $ff
    rra                                           ; $7b24: $1f
    rrca                                          ; $7b25: $0f
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    rst $38                                       ; $7b28: $ff
    rst $38                                       ; $7b29: $ff
    ldh a, [rIF]                                  ; $7b2a: $f0 $0f
    ldh a, [rIF]                                  ; $7b2c: $f0 $0f
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rst $38                                       ; $7b31: $ff
    rst $38                                       ; $7b32: $ff
    nop                                           ; $7b33: $00
    nop                                           ; $7b34: $00
    rrca                                          ; $7b35: $0f
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rst $38                                       ; $7b39: $ff
    rst $38                                       ; $7b3a: $ff
    ldh a, [rIE]                                  ; $7b3b: $f0 $ff
    rst $38                                       ; $7b3d: $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    jp nz, Jump_044_5857                          ; $7b40: $c2 $57 $58

    rst $38                                       ; $7b43: $ff
    ld [bc], a                                    ; $7b44: $02
    nop                                           ; $7b45: $00
    rst $38                                       ; $7b46: $ff
    rrca                                          ; $7b47: $0f
    rst $38                                       ; $7b48: $ff
    rst $38                                       ; $7b49: $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rrca                                          ; $7b4d: $0f
    rst $38                                       ; $7b4e: $ff
    ldh a, [rIE]                                  ; $7b4f: $f0 $ff
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    rrca                                          ; $7b55: $0f
    rst $38                                       ; $7b56: $ff
    ldh a, [rIF]                                  ; $7b57: $f0 $0f
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff
    rrca                                          ; $7b5d: $0f
    di                                            ; $7b5e: $f3
    rst $38                                       ; $7b5f: $ff
    nop                                           ; $7b60: $00
    rst $38                                       ; $7b61: $ff
    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    nop                                           ; $7b65: $00
    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    nop                                           ; $7b69: $00
    rrca                                          ; $7b6a: $0f
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    ldh a, [rIE]                                  ; $7b6d: $f0 $ff
    di                                            ; $7b6f: $f3
    rst $38                                       ; $7b70: $ff
    rst $38                                       ; $7b71: $ff
    rrca                                          ; $7b72: $0f
    rst $38                                       ; $7b73: $ff
    rst $38                                       ; $7b74: $ff
    ldh a, [rIF]                                  ; $7b75: $f0 $0f
    rst $38                                       ; $7b77: $ff
    di                                            ; $7b78: $f3
    rst $38                                       ; $7b79: $ff
    ldh a, [rIF]                                  ; $7b7a: $f0 $0f
    rst $38                                       ; $7b7c: $ff
    rst $38                                       ; $7b7d: $ff
    nop                                           ; $7b7e: $00
    rst $38                                       ; $7b7f: $ff
    rst $38                                       ; $7b80: $ff
    inc sp                                        ; $7b81: $33
    rst $38                                       ; $7b82: $ff
    nop                                           ; $7b83: $00
    rst $38                                       ; $7b84: $ff
    rst $38                                       ; $7b85: $ff
    rst $38                                       ; $7b86: $ff
    ldh a, [rIE]                                  ; $7b87: $f0 $ff
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rrca                                          ; $7b8b: $0f
    rst $38                                       ; $7b8c: $ff
    rst $38                                       ; $7b8d: $ff
    rst $38                                       ; $7b8e: $ff
    rst $38                                       ; $7b8f: $ff
    rrca                                          ; $7b90: $0f
    rst $38                                       ; $7b91: $ff
    rst $38                                       ; $7b92: $ff
    nop                                           ; $7b93: $00
    rst $38                                       ; $7b94: $ff
    rst $38                                       ; $7b95: $ff
    rst $38                                       ; $7b96: $ff
    rst $38                                       ; $7b97: $ff
    nop                                           ; $7b98: $00
    rst $38                                       ; $7b99: $ff
    ccf                                           ; $7b9a: $3f
    ldh a, [rIF]                                  ; $7b9b: $f0 $0f
    rst $38                                       ; $7b9d: $ff
    rst $38                                       ; $7b9e: $ff
    rst $38                                       ; $7b9f: $ff
    ldh a, [rIE]                                  ; $7ba0: $f0 $ff
    ccf                                           ; $7ba2: $3f
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    rst $38                                       ; $7ba6: $ff
    rst $38                                       ; $7ba7: $ff
    ldh a, [rIF]                                  ; $7ba8: $f0 $0f
    rst $38                                       ; $7baa: $ff
    rra                                           ; $7bab: $1f
    ldh a, [rIE]                                  ; $7bac: $f0 $ff
    rst $38                                       ; $7bae: $ff
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    nop                                           ; $7bb1: $00
    rst $38                                       ; $7bb2: $ff
    rst $38                                       ; $7bb3: $ff
    ldh a, [rIE]                                  ; $7bb4: $f0 $ff
    rst $38                                       ; $7bb6: $ff
    rst $38                                       ; $7bb7: $ff
    rst $38                                       ; $7bb8: $ff
    ldh a, [rIE]                                  ; $7bb9: $f0 $ff
    rst $38                                       ; $7bbb: $ff
    ldh a, [rIE]                                  ; $7bbc: $f0 $ff
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    ldh a, [rIF]                                  ; $7bc1: $f0 $0f
    rst $38                                       ; $7bc3: $ff
    nop                                           ; $7bc4: $00
    ret z                                         ; $7bc5: $c8

    ld [de], a                                    ; $7bc6: $12
    inc de                                        ; $7bc7: $13
    inc h                                         ; $7bc8: $24
    ld [hl], a                                    ; $7bc9: $77
    adc b                                         ; $7bca: $88
    rst $38                                       ; $7bcb: $ff
    dec b                                         ; $7bcc: $05
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    nop                                           ; $7bd0: $00
    nop                                           ; $7bd1: $00
    rrca                                          ; $7bd2: $0f
    rst $38                                       ; $7bd3: $ff
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    ldh a, [rIE]                                  ; $7bd7: $f0 $ff
    rst $38                                       ; $7bd9: $ff
    nop                                           ; $7bda: $00
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rrca                                          ; $7bdf: $0f
    pop af                                        ; $7be0: $f1
    rra                                           ; $7be1: $1f
    ldh a, [rIE]                                  ; $7be2: $f0 $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    ldh a, [rIF]                                  ; $7be6: $f0 $0f
    rst $38                                       ; $7be8: $ff
    pop af                                        ; $7be9: $f1
    ldh a, [rIF]                                  ; $7bea: $f0 $0f
    rst $38                                       ; $7bec: $ff
    rst $38                                       ; $7bed: $ff
    ldh a, [rIF]                                  ; $7bee: $f0 $0f
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    nop                                           ; $7bf2: $00
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    rst $38                                       ; $7bf5: $ff
    ldh a, [rIF]                                  ; $7bf6: $f0 $0f
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    nop                                           ; $7bfa: $00
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    rst $38                                       ; $7bfd: $ff
    ldh a, [rIF]                                  ; $7bfe: $f0 $0f
    rst $38                                       ; $7c00: $ff
    rst $38                                       ; $7c01: $ff
    rrca                                          ; $7c02: $0f
    rst $38                                       ; $7c03: $ff
    rst $38                                       ; $7c04: $ff
    rst $38                                       ; $7c05: $ff
    ldh a, [$f1]                                  ; $7c06: $f0 $f1
    ccf                                           ; $7c08: $3f
    rra                                           ; $7c09: $1f
    nop                                           ; $7c0a: $00
    rst $38                                       ; $7c0b: $ff
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    ldh a, [rIE]                                  ; $7c0e: $f0 $ff
    rst $38                                       ; $7c10: $ff
    rst $38                                       ; $7c11: $ff
    nop                                           ; $7c12: $00
    rst $38                                       ; $7c13: $ff
    rst $38                                       ; $7c14: $ff
    rst $38                                       ; $7c15: $ff
    ldh a, [rIF]                                  ; $7c16: $f0 $0f
    rst $38                                       ; $7c18: $ff
    ccf                                           ; $7c19: $3f
    ldh a, [rIF]                                  ; $7c1a: $f0 $0f
    rst $38                                       ; $7c1c: $ff
    rst $38                                       ; $7c1d: $ff
    ldh a, [rIF]                                  ; $7c1e: $f0 $0f
    rra                                           ; $7c20: $1f
    rst $38                                       ; $7c21: $ff
    ldh a, [rIE]                                  ; $7c22: $f0 $ff
    rst $38                                       ; $7c24: $ff
    rst $38                                       ; $7c25: $ff
    ldh a, [rIF]                                  ; $7c26: $f0 $0f
    rra                                           ; $7c28: $1f
    pop af                                        ; $7c29: $f1
    ldh a, [rIE]                                  ; $7c2a: $f0 $ff
    rst $38                                       ; $7c2c: $ff
    rst $38                                       ; $7c2d: $ff
    rst $38                                       ; $7c2e: $ff
    rrca                                          ; $7c2f: $0f
    rra                                           ; $7c30: $1f
    pop af                                        ; $7c31: $f1
    ldh a, [rIF]                                  ; $7c32: $f0 $0f
    rst $38                                       ; $7c34: $ff
    rst $38                                       ; $7c35: $ff
    rst $38                                       ; $7c36: $ff
    ldh a, [rIE]                                  ; $7c37: $f0 $ff
    rst $38                                       ; $7c39: $ff
    ldh a, [rIE]                                  ; $7c3a: $f0 $ff
    rst $38                                       ; $7c3c: $ff
    rst $38                                       ; $7c3d: $ff
    rst $38                                       ; $7c3e: $ff
    ldh a, [rIE]                                  ; $7c3f: $f0 $ff
    rst $38                                       ; $7c41: $ff
    nop                                           ; $7c42: $00
    rst $38                                       ; $7c43: $ff
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    rst $38                                       ; $7c46: $ff
    nop                                           ; $7c47: $00
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rrca                                          ; $7c4a: $0f
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    ret nz                                        ; $7c4d: $c0

    ld b, a                                       ; $7c4e: $47
    ld c, b                                       ; $7c4f: $48
    rst $38                                       ; $7c50: $ff
    ld [bc], a                                    ; $7c51: $02
    rst $38                                       ; $7c52: $ff
    rst $38                                       ; $7c53: $ff
    rst $38                                       ; $7c54: $ff
    rst $38                                       ; $7c55: $ff
    rst $38                                       ; $7c56: $ff
    rst $38                                       ; $7c57: $ff
    rst $38                                       ; $7c58: $ff
    rst $38                                       ; $7c59: $ff
    rst $38                                       ; $7c5a: $ff
    ldh a, [rP1]                                  ; $7c5b: $f0 $00
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    rrca                                          ; $7c5f: $0f
    rst $38                                       ; $7c60: $ff
    rst $38                                       ; $7c61: $ff
    rst $38                                       ; $7c62: $ff
    ldh a, [rIE]                                  ; $7c63: $f0 $ff
    rst $38                                       ; $7c65: $ff
    ldh a, [rIF]                                  ; $7c66: $f0 $0f
    rst $38                                       ; $7c68: $ff
    rst $38                                       ; $7c69: $ff
    rst $38                                       ; $7c6a: $ff
    ldh a, [rIE]                                  ; $7c6b: $f0 $ff
    rst $38                                       ; $7c6d: $ff
    rra                                           ; $7c6e: $1f
    ldh a, [rIF]                                  ; $7c6f: $f0 $0f
    rst $38                                       ; $7c71: $ff
    rst $38                                       ; $7c72: $ff
    ldh a, [rIE]                                  ; $7c73: $f0 $ff
    rst $38                                       ; $7c75: $ff
    rst $38                                       ; $7c76: $ff
    ldh a, [rIE]                                  ; $7c77: $f0 $ff
    rst $38                                       ; $7c79: $ff
    rst $38                                       ; $7c7a: $ff
    ldh a, [rIE]                                  ; $7c7b: $f0 $ff
    rst $38                                       ; $7c7d: $ff
    rst $38                                       ; $7c7e: $ff
    ldh a, [rIF]                                  ; $7c7f: $f0 $0f
    rst $38                                       ; $7c81: $ff
    rst $38                                       ; $7c82: $ff
    ldh a, [rIE]                                  ; $7c83: $f0 $ff
    rst $38                                       ; $7c85: $ff
    rst $38                                       ; $7c86: $ff
    rst $38                                       ; $7c87: $ff
    rrca                                          ; $7c88: $0f
    rst $38                                       ; $7c89: $ff
    rst $38                                       ; $7c8a: $ff
    ldh a, [rIE]                                  ; $7c8b: $f0 $ff
    cpl                                           ; $7c8d: $2f
    ccf                                           ; $7c8e: $3f
    rra                                           ; $7c8f: $1f
    nop                                           ; $7c90: $00
    rst $38                                       ; $7c91: $ff
    rst $38                                       ; $7c92: $ff
    ldh a, [rIE]                                  ; $7c93: $f0 $ff
    rst $38                                       ; $7c95: $ff
    ccf                                           ; $7c96: $3f
    rra                                           ; $7c97: $1f
    rrca                                          ; $7c98: $0f
    rst $38                                       ; $7c99: $ff
    rst $38                                       ; $7c9a: $ff
    ldh a, [rIF]                                  ; $7c9b: $f0 $0f
    rst $38                                       ; $7c9d: $ff
    ccf                                           ; $7c9e: $3f
    rra                                           ; $7c9f: $1f
    rrca                                          ; $7ca0: $0f
    rst $38                                       ; $7ca1: $ff
    rst $38                                       ; $7ca2: $ff
    ldh a, [rIF]                                  ; $7ca3: $f0 $0f
    rra                                           ; $7ca5: $1f
    ccf                                           ; $7ca6: $3f
    ldh a, [rP1]                                  ; $7ca7: $f0 $00
    rst $38                                       ; $7ca9: $ff
    rst $38                                       ; $7caa: $ff
    ldh a, [rIF]                                  ; $7cab: $f0 $0f
    rra                                           ; $7cad: $1f
    pop af                                        ; $7cae: $f1
    ldh a, [rIE]                                  ; $7caf: $f0 $ff
    rst $38                                       ; $7cb1: $ff
    rst $38                                       ; $7cb2: $ff
    rst $38                                       ; $7cb3: $ff
    rrca                                          ; $7cb4: $0f
    di                                            ; $7cb5: $f3
    ccf                                           ; $7cb6: $3f
    ldh a, [rIF]                                  ; $7cb7: $f0 $0f
    rst $38                                       ; $7cb9: $ff
    rst $38                                       ; $7cba: $ff
    ldh a, [rIF]                                  ; $7cbb: $f0 $0f
    rst $38                                       ; $7cbd: $ff
    rst $38                                       ; $7cbe: $ff
    ldh a, [rIE]                                  ; $7cbf: $f0 $ff
    rst $38                                       ; $7cc1: $ff
    rst $38                                       ; $7cc2: $ff
    rst $38                                       ; $7cc3: $ff
    nop                                           ; $7cc4: $00
    rst $38                                       ; $7cc5: $ff
    rst $38                                       ; $7cc6: $ff
    nop                                           ; $7cc7: $00
    rst $38                                       ; $7cc8: $ff
    rst $38                                       ; $7cc9: $ff
    rst $38                                       ; $7cca: $ff
    rst $38                                       ; $7ccb: $ff
    nop                                           ; $7ccc: $00
    nop                                           ; $7ccd: $00
    nop                                           ; $7cce: $00
    rrca                                          ; $7ccf: $0f
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    cp h                                          ; $7cd2: $bc
    inc [hl]                                      ; $7cd3: $34
    dec [hl]                                      ; $7cd4: $35
    ld [hl], $37                                  ; $7cd5: $36 $37
    rst $38                                       ; $7cd7: $ff
    inc b                                         ; $7cd8: $04
    rst $38                                       ; $7cd9: $ff
    rst $38                                       ; $7cda: $ff
    rst $38                                       ; $7cdb: $ff
    nop                                           ; $7cdc: $00
    rst $38                                       ; $7cdd: $ff
    ldh a, [rIF]                                  ; $7cde: $f0 $0f
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    ldh a, [rP1]                                  ; $7ce2: $f0 $00
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    ldh a, [rP1]                                  ; $7ce6: $f0 $00
    rst $38                                       ; $7ce8: $ff
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    rrca                                          ; $7ceb: $0f
    rst $38                                       ; $7cec: $ff
    rst $38                                       ; $7ced: $ff
    rst $38                                       ; $7cee: $ff
    rrca                                          ; $7cef: $0f
    rst $38                                       ; $7cf0: $ff
    rst $38                                       ; $7cf1: $ff
    ldh a, [rIF]                                  ; $7cf2: $f0 $0f
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    ldh a, [rIF]                                  ; $7cf6: $f0 $0f
    rst $38                                       ; $7cf8: $ff
    rst $38                                       ; $7cf9: $ff
    ldh a, [rIF]                                  ; $7cfa: $f0 $0f
    di                                            ; $7cfc: $f3
    rst $38                                       ; $7cfd: $ff
    ldh a, [rIE]                                  ; $7cfe: $f0 $ff
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    ldh a, [rIE]                                  ; $7d02: $f0 $ff
    rst $38                                       ; $7d04: $ff
    rst $38                                       ; $7d05: $ff
    nop                                           ; $7d06: $00
    rst $38                                       ; $7d07: $ff
    rst $38                                       ; $7d08: $ff
    rst $38                                       ; $7d09: $ff
    ldh a, [rIE]                                  ; $7d0a: $f0 $ff
    rst $38                                       ; $7d0c: $ff
    rst $38                                       ; $7d0d: $ff
    rrca                                          ; $7d0e: $0f
    rst $38                                       ; $7d0f: $ff
    rst $38                                       ; $7d10: $ff
    rst $38                                       ; $7d11: $ff
    ldh a, [rIE]                                  ; $7d12: $f0 $ff
    rst $38                                       ; $7d14: $ff
    rst $38                                       ; $7d15: $ff
    rrca                                          ; $7d16: $0f
    rst $38                                       ; $7d17: $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    ldh a, [rIE]                                  ; $7d1a: $f0 $ff
    rst $38                                       ; $7d1c: $ff
    rst $38                                       ; $7d1d: $ff
    rrca                                          ; $7d1e: $0f
    rst $38                                       ; $7d1f: $ff
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    ldh a, [rIE]                                  ; $7d22: $f0 $ff
    ccf                                           ; $7d24: $3f
    rst $38                                       ; $7d25: $ff
    nop                                           ; $7d26: $00
    rrca                                          ; $7d27: $0f
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    ldh a, [rIE]                                  ; $7d2a: $f0 $ff
    inc sp                                        ; $7d2c: $33
    pop af                                        ; $7d2d: $f1
    ldh a, [rIE]                                  ; $7d2e: $f0 $ff
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff
    ldh a, [rIE]                                  ; $7d32: $f0 $ff
    di                                            ; $7d34: $f3
    pop af                                        ; $7d35: $f1
    ldh a, [rP1]                                  ; $7d36: $f0 $00
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    ldh a, [rSB]                                  ; $7d3a: $f0 $01
    rst $38                                       ; $7d3c: $ff
    ccf                                           ; $7d3d: $3f
    rst $38                                       ; $7d3e: $ff
    rrca                                          ; $7d3f: $0f
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    ldh a, [rIF]                                  ; $7d42: $f0 $0f
    pop af                                        ; $7d44: $f1
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    nop                                           ; $7d47: $00
    rst $38                                       ; $7d48: $ff
    rst $38                                       ; $7d49: $ff
    ldh a, [rP1]                                  ; $7d4a: $f0 $00
    rst $38                                       ; $7d4c: $ff
    di                                            ; $7d4d: $f3
    rst $38                                       ; $7d4e: $ff
    rrca                                          ; $7d4f: $0f
    rst $38                                       ; $7d50: $ff
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    nop                                           ; $7d54: $00
    rst $38                                       ; $7d55: $ff
    ldh a, [rIF]                                  ; $7d56: $f0 $0f
    rst $38                                       ; $7d58: $ff
    ret nz                                        ; $7d59: $c0

    jr jr_044_7d75                                ; $7d5a: $18 $19

    ld a, [hl+]                                   ; $7d5c: $2a
    add hl, sp                                    ; $7d5d: $39
    ld b, l                                       ; $7d5e: $45
    ld h, l                                       ; $7d5f: $65
    ld h, [hl]                                    ; $7d60: $66
    ld h, a                                       ; $7d61: $67
    ld l, b                                       ; $7d62: $68
    add l                                         ; $7d63: $85
    add a                                         ; $7d64: $87
    adc b                                         ; $7d65: $88
    rst $38                                       ; $7d66: $ff
    inc c                                         ; $7d67: $0c
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

jr_044_7d75:
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
    rrca                                          ; $7d83: $0f
    ldh a, [rIF]                                  ; $7d84: $f0 $0f
    rst $38                                       ; $7d86: $ff
    rst $38                                       ; $7d87: $ff
    rst $38                                       ; $7d88: $ff
    ldh a, [rIF]                                  ; $7d89: $f0 $0f
    rst $38                                       ; $7d8b: $ff
    rst $38                                       ; $7d8c: $ff
    nop                                           ; $7d8d: $00
    rst $38                                       ; $7d8e: $ff
    rst $38                                       ; $7d8f: $ff
    rst $38                                       ; $7d90: $ff
    rst $38                                       ; $7d91: $ff
    rrca                                          ; $7d92: $0f
    rst $38                                       ; $7d93: $ff
    rst $38                                       ; $7d94: $ff
    rrca                                          ; $7d95: $0f
    rst $38                                       ; $7d96: $ff
    rst $38                                       ; $7d97: $ff
    rst $38                                       ; $7d98: $ff
    rst $38                                       ; $7d99: $ff
    rrca                                          ; $7d9a: $0f
    rst $38                                       ; $7d9b: $ff
    rst $38                                       ; $7d9c: $ff
    rrca                                          ; $7d9d: $0f
    rst $38                                       ; $7d9e: $ff
    rst $38                                       ; $7d9f: $ff
    rst $38                                       ; $7da0: $ff
    ldh a, [rP1]                                  ; $7da1: $f0 $00
    rst $38                                       ; $7da3: $ff
    pop af                                        ; $7da4: $f1
    ldh a, [rIE]                                  ; $7da5: $f0 $ff
    rst $38                                       ; $7da7: $ff
    rst $38                                       ; $7da8: $ff
    rst $38                                       ; $7da9: $ff
    ldh a, [rIE]                                  ; $7daa: $f0 $ff
    rst $38                                       ; $7dac: $ff
    rrca                                          ; $7dad: $0f
    rst $38                                       ; $7dae: $ff
    rst $38                                       ; $7daf: $ff
    rst $38                                       ; $7db0: $ff
    rst $38                                       ; $7db1: $ff
    nop                                           ; $7db2: $00
    rst $38                                       ; $7db3: $ff
    rst $38                                       ; $7db4: $ff
    rrca                                          ; $7db5: $0f
    rst $38                                       ; $7db6: $ff
    rst $38                                       ; $7db7: $ff
    rst $38                                       ; $7db8: $ff
    rst $38                                       ; $7db9: $ff
    ldh a, [rIE]                                  ; $7dba: $f0 $ff
    rst $38                                       ; $7dbc: $ff
    nop                                           ; $7dbd: $00
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    rst $38                                       ; $7dc0: $ff
    rst $38                                       ; $7dc1: $ff
    ldh a, [rIE]                                  ; $7dc2: $f0 $ff
    ldh a, [rIF]                                  ; $7dc4: $f0 $0f
    rst $38                                       ; $7dc6: $ff
    rst $38                                       ; $7dc7: $ff
    rst $38                                       ; $7dc8: $ff
    rst $38                                       ; $7dc9: $ff
    rst $38                                       ; $7dca: $ff
    nop                                           ; $7dcb: $00
    nop                                           ; $7dcc: $00
    rrca                                          ; $7dcd: $0f
    rst $38                                       ; $7dce: $ff
    rst $38                                       ; $7dcf: $ff
    rst $38                                       ; $7dd0: $ff
    rst $38                                       ; $7dd1: $ff
    ldh a, [rP1]                                  ; $7dd2: $f0 $00
    nop                                           ; $7dd4: $00
    rrca                                          ; $7dd5: $0f
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
    ret c                                         ; $7de8: $d8

    ld d, a                                       ; $7de9: $57
    ld e, b                                       ; $7dea: $58
    rst $38                                       ; $7deb: $ff
    ld [bc], a                                    ; $7dec: $02
    rst $38                                       ; $7ded: $ff
    rst $38                                       ; $7dee: $ff
    rst $38                                       ; $7def: $ff
    rrca                                          ; $7df0: $0f
    rst $38                                       ; $7df1: $ff
    nop                                           ; $7df2: $00
    rrca                                          ; $7df3: $0f
    rst $38                                       ; $7df4: $ff
    rst $38                                       ; $7df5: $ff
    rst $38                                       ; $7df6: $ff
    ldh a, [rIF]                                  ; $7df7: $f0 $0f
    rra                                           ; $7df9: $1f
    ldh a, [rIE]                                  ; $7dfa: $f0 $ff
    rst $38                                       ; $7dfc: $ff
    rst $38                                       ; $7dfd: $ff
    rst $38                                       ; $7dfe: $ff
    rst $38                                       ; $7dff: $ff
    pop af                                        ; $7e00: $f1
    rst $38                                       ; $7e01: $ff
    ldh a, [rIF]                                  ; $7e02: $f0 $0f
    rst $38                                       ; $7e04: $ff
    rst $38                                       ; $7e05: $ff
    rst $38                                       ; $7e06: $ff
    rrca                                          ; $7e07: $0f
    pop af                                        ; $7e08: $f1
    rst $38                                       ; $7e09: $ff
    ldh a, [rIF]                                  ; $7e0a: $f0 $0f
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    rst $38                                       ; $7e0e: $ff
    ldh a, [rIE]                                  ; $7e0f: $f0 $ff
    pop af                                        ; $7e11: $f1
    ldh a, [rIE]                                  ; $7e12: $f0 $ff
    rst $38                                       ; $7e14: $ff
    rst $38                                       ; $7e15: $ff
    rst $38                                       ; $7e16: $ff
    ldh a, [rIE]                                  ; $7e17: $f0 $ff
    ccf                                           ; $7e19: $3f
    ldh a, [rIF]                                  ; $7e1a: $f0 $0f
    rst $38                                       ; $7e1c: $ff
    rst $38                                       ; $7e1d: $ff
    rst $38                                       ; $7e1e: $ff
    ldh a, [rIE]                                  ; $7e1f: $f0 $ff
    rst $38                                       ; $7e21: $ff
    rst $38                                       ; $7e22: $ff
    rrca                                          ; $7e23: $0f
    rst $38                                       ; $7e24: $ff
    rst $38                                       ; $7e25: $ff
    rst $38                                       ; $7e26: $ff
    ldh a, [rIF]                                  ; $7e27: $f0 $0f
    di                                            ; $7e29: $f3
    rst $38                                       ; $7e2a: $ff
    nop                                           ; $7e2b: $00
    rst $38                                       ; $7e2c: $ff
    rst $38                                       ; $7e2d: $ff
    rst $38                                       ; $7e2e: $ff
    rrca                                          ; $7e2f: $0f
    rst $38                                       ; $7e30: $ff
    inc sp                                        ; $7e31: $33
    ldh a, [rIF]                                  ; $7e32: $f0 $0f
    rst $38                                       ; $7e34: $ff
    rst $38                                       ; $7e35: $ff
    rst $38                                       ; $7e36: $ff
    rrca                                          ; $7e37: $0f
    rra                                           ; $7e38: $1f
    rst $38                                       ; $7e39: $ff
    ldh a, [rIF]                                  ; $7e3a: $f0 $0f
    rst $38                                       ; $7e3c: $ff
    rst $38                                       ; $7e3d: $ff
    ldh a, [rP1]                                  ; $7e3e: $f0 $00
    rst $38                                       ; $7e40: $ff
    rst $38                                       ; $7e41: $ff
    nop                                           ; $7e42: $00
    rst $38                                       ; $7e43: $ff
    rst $38                                       ; $7e44: $ff
    rst $38                                       ; $7e45: $ff
    ldh a, [rIF]                                  ; $7e46: $f0 $0f
    rst $38                                       ; $7e48: $ff
    rst $38                                       ; $7e49: $ff
    nop                                           ; $7e4a: $00
    rst $38                                       ; $7e4b: $ff
    rst $38                                       ; $7e4c: $ff
    rst $38                                       ; $7e4d: $ff
    ldh a, [rIE]                                  ; $7e4e: $f0 $ff
    pop af                                        ; $7e50: $f1
    ldh a, [rIF]                                  ; $7e51: $f0 $0f
    rst $38                                       ; $7e53: $ff
    rst $38                                       ; $7e54: $ff
    rst $38                                       ; $7e55: $ff
    ldh a, [rIE]                                  ; $7e56: $f0 $ff
    ccf                                           ; $7e58: $3f
    nop                                           ; $7e59: $00
    rrca                                          ; $7e5a: $0f
    rst $38                                       ; $7e5b: $ff
    rst $38                                       ; $7e5c: $ff
    rst $38                                       ; $7e5d: $ff
    ldh a, [rIF]                                  ; $7e5e: $f0 $0f
    rst $38                                       ; $7e60: $ff
    nop                                           ; $7e61: $00
    rst $38                                       ; $7e62: $ff
    rst $38                                       ; $7e63: $ff
    rst $38                                       ; $7e64: $ff
    rst $38                                       ; $7e65: $ff
    ldh a, [rIF]                                  ; $7e66: $f0 $0f
    rst $38                                       ; $7e68: $ff
    nop                                           ; $7e69: $00
    rst $38                                       ; $7e6a: $ff
    rst $38                                       ; $7e6b: $ff
    rst $38                                       ; $7e6c: $ff
    ret nz                                        ; $7e6d: $c0

    jr z, jr_044_7e99                             ; $7e6e: $28 $29

    ld l, b                                       ; $7e70: $68
    ld [hl], a                                    ; $7e71: $77
    rst $38                                       ; $7e72: $ff
    inc b                                         ; $7e73: $04
    push af                                       ; $7e74: $f5
    push de                                       ; $7e75: $d5
    push hl                                       ; $7e76: $e5
    ld hl, $4311                                  ; $7e77: $21 $11 $43
    ld a, [$c836]                                 ; $7e7a: $fa $36 $c8
    add a                                         ; $7e7d: $87
    add l                                         ; $7e7e: $85
    ld l, a                                       ; $7e7f: $6f
    jr nc, jr_044_7e83                            ; $7e80: $30 $01

    inc h                                         ; $7e82: $24

jr_044_7e83:
    ld a, [hl+]                                   ; $7e83: $2a
    ld h, [hl]                                    ; $7e84: $66
    ld l, a                                       ; $7e85: $6f
    ld a, [$c837]                                 ; $7e86: $fa $37 $c8
    add a                                         ; $7e89: $87
    add l                                         ; $7e8a: $85
    ld l, a                                       ; $7e8b: $6f
    jr nc, jr_044_7e8f                            ; $7e8c: $30 $01

    inc h                                         ; $7e8e: $24

jr_044_7e8f:
    ld a, [hl+]                                   ; $7e8f: $2a
    ld h, [hl]                                    ; $7e90: $66
    ld l, a                                       ; $7e91: $6f
    ld c, $0c                                     ; $7e92: $0e $0c
    call Call_000_03eb                            ; $7e94: $cd $eb $03
    pop hl                                        ; $7e97: $e1
    pop de                                        ; $7e98: $d1

jr_044_7e99:
    pop af                                        ; $7e99: $f1
    ret                                           ; $7e9a: $c9


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
