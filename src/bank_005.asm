; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    db $7a, $40

    jp nc, $f24a                                  ; $4002: $d2 $4a $f2

    ld c, d                                       ; $4005: $4a
    jr nz, @+$4d                                  ; $4006: $20 $4b

    ld h, e                                       ; $4008: $63
    ld c, e                                       ; $4009: $4b

    db $b0, $4b, $5c, $4c, $46, $5f, $75, $4c

    ld d, c                                       ; $4012: $51
    ld e, d                                       ; $4013: $5a

    db $49, $49

    rst $28                                       ; $4016: $ef
    ld b, c                                       ; $4017: $41
    ld [$6f42], sp                                ; $4018: $08 $42 $6f
    ld b, c                                       ; $401b: $41

    db $92, $44

    ld [$8a44], sp                                ; $401e: $08 $44 $8a
    ld h, e                                       ; $4021: $63

    db $aa, $62, $79, $61

    ld sp, $ad48                                  ; $4026: $31 $48 $ad
    ld b, d                                       ; $4029: $42
    adc [hl]                                      ; $402a: $8e
    ld h, h                                       ; $402b: $64
    pop de                                        ; $402c: $d1
    ld h, h                                       ; $402d: $64
    cp b                                          ; $402e: $b8
    ld h, h                                       ; $402f: $64
    cpl                                           ; $4030: $2f
    ld h, l                                       ; $4031: $65
    db $10                                        ; $4032: $10
    ld h, l                                       ; $4033: $65
    ld h, h                                       ; $4034: $64
    ld h, l                                       ; $4035: $65
    adc c                                         ; $4036: $89
    ld h, l                                       ; $4037: $65
    pop af                                        ; $4038: $f1
    ld h, l                                       ; $4039: $65
    rra                                           ; $403a: $1f
    ld e, l                                       ; $403b: $5d

    db $5d, $61

    call c, $f645                                 ; $403e: $dc $45 $f6
    ld b, l                                       ; $4041: $45
    inc bc                                        ; $4042: $03
    ld e, e                                       ; $4043: $5b

    db $96, $5a, $49, $5d, $e5, $5d

    ld [hl], b                                    ; $404a: $70
    ld e, [hl]                                    ; $404b: $5e
    ld [bc], a                                    ; $404c: $02
    ld e, a                                       ; $404d: $5f

    db $d7, $4c

    sub a                                         ; $4050: $97
    ld d, c                                       ; $4051: $51

    db $2f, $62

    rst $08                                       ; $4054: $cf
    ld d, h                                       ; $4055: $54

    db $1f, $55

    ld d, d                                       ; $4058: $52
    ld d, l                                       ; $4059: $55
    db $c3                                        ; $405a: $c3
    ld d, a                                       ; $405b: $57

    db $c2, $40

    ld d, a                                       ; $405e: $57
    ld l, d                                       ; $405f: $6a
    ld l, $6b                                     ; $4060: $2e $6b
    dec h                                         ; $4062: $25
    ld l, h                                       ; $4063: $6c
    rst $38                                       ; $4064: $ff
    ld h, l                                       ; $4065: $65

    db $4f, $41

    ld b, [hl]                                    ; $4068: $46
    ld h, [hl]                                    ; $4069: $66
    ld bc, $0867                                  ; $406a: $01 $67 $08
    ld h, a                                       ; $406d: $67

    db $29, $67, $9f, $67, $bb, $67

    push bc                                       ; $4074: $c5
    ld h, a                                       ; $4075: $67
    db $e3                                        ; $4076: $e3
    ld b, h                                       ; $4077: $44

    db $b0, $60

Call_005_407a:
    ldh a, [$96]                                  ; $407a: $f0 $96
    push af                                       ; $407c: $f5
    ld a, $05                                     ; $407d: $3e $05
    ldh [$96], a                                  ; $407f: $e0 $96
    ldh [rSVBK], a                                ; $4081: $e0 $70
    ld hl, $d000                                  ; $4083: $21 $00 $d0
    ld d, $04                                     ; $4086: $16 $04

jr_005_4088:
    ld bc, $0400                                  ; $4088: $01 $00 $04

jr_005_408b:
    xor a                                         ; $408b: $af
    ld [hl+], a                                   ; $408c: $22
    dec bc                                        ; $408d: $0b
    ld a, b                                       ; $408e: $78
    or c                                          ; $408f: $b1
    jr nz, jr_005_408b                            ; $4090: $20 $f9

    call Call_000_2e3b                            ; $4092: $cd $3b $2e
    dec d                                         ; $4095: $15
    jr nz, jr_005_4088                            ; $4096: $20 $f0

    ld de, $0004                                  ; $4098: $11 $04 $00
    ld hl, $d800                                  ; $409b: $21 $00 $d8
    inc hl                                        ; $409e: $23
    inc hl                                        ; $409f: $23
    ld bc, $0006                                  ; $40a0: $01 $06 $00

jr_005_40a3:
    ld a, $03                                     ; $40a3: $3e $03
    ld [hl], a                                    ; $40a5: $77
    add hl, de                                    ; $40a6: $19
    dec bc                                        ; $40a7: $0b
    ld a, b                                       ; $40a8: $78
    or c                                          ; $40a9: $b1
    jr nz, jr_005_40a3                            ; $40aa: $20 $f7

    ld a, $ff                                     ; $40ac: $3e $ff
    ld [$d83e], a                                 ; $40ae: $ea $3e $d8
    ld [$d824], a                                 ; $40b1: $ea $24 $d8
    ld a, $80                                     ; $40b4: $3e $80
    ld [$d84d], a                                 ; $40b6: $ea $4d $d8
    rst $18                                       ; $40b9: $df

    db $04, $41

    pop af                                        ; $40bc: $f1
    ldh [$96], a                                  ; $40bd: $e0 $96
    ldh [rSVBK], a                                ; $40bf: $e0 $70
    ret                                           ; $40c1: $c9


    push af                                       ; $40c2: $f5
    push bc                                       ; $40c3: $c5
    push de                                       ; $40c4: $d5
    push hl                                       ; $40c5: $e5
    ldh a, [$96]                                  ; $40c6: $f0 $96
    push af                                       ; $40c8: $f5
    ld a, $05                                     ; $40c9: $3e $05
    ldh [$96], a                                  ; $40cb: $e0 $96
    ldh [rSVBK], a                                ; $40cd: $e0 $70
    call Call_005_61d4                            ; $40cf: $cd $d4 $61
    ld hl, $d880                                  ; $40d2: $21 $80 $d8

jr_005_40d5:
    ld a, [hl+]                                   ; $40d5: $2a
    ld [de], a                                    ; $40d6: $12
    inc de                                        ; $40d7: $13
    cp $00                                        ; $40d8: $fe $00
    jr nz, jr_005_40d5                            ; $40da: $20 $f9

    pop af                                        ; $40dc: $f1
    ldh [$96], a                                  ; $40dd: $e0 $96
    ldh [rSVBK], a                                ; $40df: $e0 $70
    pop hl                                        ; $40e1: $e1
    pop de                                        ; $40e2: $d1
    pop bc                                        ; $40e3: $c1
    pop af                                        ; $40e4: $f1
    ret                                           ; $40e5: $c9


    ldh a, [$96]                                  ; $40e6: $f0 $96
    push af                                       ; $40e8: $f5
    ld a, $05                                     ; $40e9: $3e $05
    ldh [$96], a                                  ; $40eb: $e0 $96
    ldh [rSVBK], a                                ; $40ed: $e0 $70
    ld hl, $d000                                  ; $40ef: $21 $00 $d0
    ld bc, $0800                                  ; $40f2: $01 $00 $08

jr_005_40f5:
    xor a                                         ; $40f5: $af
    ld [hl+], a                                   ; $40f6: $22
    dec bc                                        ; $40f7: $0b
    ld a, b                                       ; $40f8: $78
    or c                                          ; $40f9: $b1
    jr nz, jr_005_40f5                            ; $40fa: $20 $f9

    pop af                                        ; $40fc: $f1
    ldh [$96], a                                  ; $40fd: $e0 $96
    ldh [rSVBK], a                                ; $40ff: $e0 $70
    ret                                           ; $4101: $c9


    ldh a, [$90]                                  ; $4102: $f0 $90
    bit 0, a                                      ; $4104: $cb $47
    jr nz, jr_005_410a                            ; $4106: $20 $02

    jr jr_005_4127                                ; $4108: $18 $1d

jr_005_410a:
    xor a                                         ; $410a: $af
    ldh [rVBK], a                                 ; $410b: $e0 $4f
    ld a, $05                                     ; $410d: $3e $05
    ldh [$96], a                                  ; $410f: $e0 $96
    ldh [rSVBK], a                                ; $4111: $e0 $70
    ld bc, $d000                                  ; $4113: $01 $00 $d0
    ld de, $1800                                  ; $4116: $11 $00 $18
    ld a, $24                                     ; $4119: $3e $24
    ld hl, $ff51                                  ; $411b: $21 $51 $ff
    ld [hl], b                                    ; $411e: $70
    inc hl                                        ; $411f: $23
    ld [hl], c                                    ; $4120: $71
    inc hl                                        ; $4121: $23
    ld [hl], d                                    ; $4122: $72
    inc hl                                        ; $4123: $23
    ld [hl], e                                    ; $4124: $73
    inc hl                                        ; $4125: $23
    ld [hl], a                                    ; $4126: $77

jr_005_4127:
    ret                                           ; $4127: $c9


Call_005_4128:
    push af                                       ; $4128: $f5
    push de                                       ; $4129: $d5
    push bc                                       ; $412a: $c5
    push af                                       ; $412b: $f5
    ld a, $05                                     ; $412c: $3e $05
    ldh [$96], a                                  ; $412e: $e0 $96
    ldh [rSVBK], a                                ; $4130: $e0 $70
    pop af                                        ; $4132: $f1
    call Call_005_414f                            ; $4133: $cd $4f $41
    or a                                          ; $4136: $b7
    jr z, jr_005_413a                             ; $4137: $28 $01

    ld [de], a                                    ; $4139: $12

jr_005_413a:
    pop bc                                        ; $413a: $c1
    pop de                                        ; $413b: $d1
    pop af                                        ; $413c: $f1
    ret                                           ; $413d: $c9


    push af                                       ; $413e: $f5
    push de                                       ; $413f: $d5
    push af                                       ; $4140: $f5
    ld a, $05                                     ; $4141: $3e $05
    ldh [$96], a                                  ; $4143: $e0 $96
    ldh [rSVBK], a                                ; $4145: $e0 $70
    pop af                                        ; $4147: $f1
    call Call_005_414f                            ; $4148: $cd $4f $41
    ld a, [de]                                    ; $414b: $1a
    pop de                                        ; $414c: $d1
    pop af                                        ; $414d: $f1
    ret                                           ; $414e: $c9


Call_005_414f:
    push af                                       ; $414f: $f5
    push bc                                       ; $4150: $c5
    push hl                                       ; $4151: $e5
    ld a, d                                       ; $4152: $7a
    and $1f                                       ; $4153: $e6 $1f
    ld d, a                                       ; $4155: $57
    ld a, e                                       ; $4156: $7b
    and $1f                                       ; $4157: $e6 $1f
    ld e, a                                       ; $4159: $5f
    ld bc, $0020                                  ; $415a: $01 $20 $00
    ld hl, $d000                                  ; $415d: $21 $00 $d0
    or a                                          ; $4160: $b7
    jr z, jr_005_4167                             ; $4161: $28 $04

jr_005_4163:
    add hl, bc                                    ; $4163: $09
    dec a                                         ; $4164: $3d
    jr nz, jr_005_4163                            ; $4165: $20 $fc

jr_005_4167:
    ld c, d                                       ; $4167: $4a
    add hl, bc                                    ; $4168: $09
    ld d, h                                       ; $4169: $54
    ld e, l                                       ; $416a: $5d
    pop hl                                        ; $416b: $e1
    pop bc                                        ; $416c: $c1
    pop af                                        ; $416d: $f1
    ret                                           ; $416e: $c9


    push af                                       ; $416f: $f5
    push bc                                       ; $4170: $c5
    push de                                       ; $4171: $d5
    push hl                                       ; $4172: $e5
    ld a, b                                       ; $4173: $78
    ldh [$96], a                                  ; $4174: $e0 $96
    ldh [rSVBK], a                                ; $4176: $e0 $70
    ld a, [$c323]                                 ; $4178: $fa $23 $c3
    and $1f                                       ; $417b: $e6 $1f
    ld l, a                                       ; $417d: $6f
    ld h, $00                                     ; $417e: $26 $00
    add hl, hl                                    ; $4180: $29
    add hl, hl                                    ; $4181: $29
    add hl, hl                                    ; $4182: $29
    add hl, hl                                    ; $4183: $29
    add hl, hl                                    ; $4184: $29
    ld b, h                                       ; $4185: $44
    ld c, l                                       ; $4186: $4d
    ld hl, $9800                                  ; $4187: $21 $00 $98
    add hl, bc                                    ; $418a: $09
    ld d, h                                       ; $418b: $54
    ld e, l                                       ; $418c: $5d
    ld hl, $d000                                  ; $418d: $21 $00 $d0
    add hl, bc                                    ; $4190: $09
    push bc                                       ; $4191: $c5
    ld bc, $0026                                  ; $4192: $01 $26 $00
    add $12                                       ; $4195: $c6 $12
    sub $20                                       ; $4197: $d6 $20
    jr c, jr_005_41b3                             ; $4199: $38 $18

    jr z, jr_005_41b3                             ; $419b: $28 $16

    sla a                                         ; $419d: $cb $27
    push af                                       ; $419f: $f5
    ld b, a                                       ; $41a0: $47
    ld a, c                                       ; $41a1: $79
    sub b                                         ; $41a2: $90
    ld c, a                                       ; $41a3: $4f
    ld b, $00                                     ; $41a4: $06 $00
    call Call_000_0468                            ; $41a6: $cd $68 $04
    pop af                                        ; $41a9: $f1
    ld hl, $d000                                  ; $41aa: $21 $00 $d0
    ld de, $9800                                  ; $41ad: $11 $00 $98
    ld c, a                                       ; $41b0: $4f
    ld b, $00                                     ; $41b1: $06 $00

jr_005_41b3:
    call Call_000_0468                            ; $41b3: $cd $68 $04
    pop bc                                        ; $41b6: $c1
    ld hl, $b800                                  ; $41b7: $21 $00 $b8
    add hl, bc                                    ; $41ba: $09
    ld d, h                                       ; $41bb: $54
    ld e, l                                       ; $41bc: $5d
    ld hl, $d400                                  ; $41bd: $21 $00 $d4
    add hl, bc                                    ; $41c0: $09
    ld a, [$c323]                                 ; $41c1: $fa $23 $c3
    and $1f                                       ; $41c4: $e6 $1f
    ld bc, $0026                                  ; $41c6: $01 $26 $00
    add $12                                       ; $41c9: $c6 $12
    sub $20                                       ; $41cb: $d6 $20
    jr c, jr_005_41e7                             ; $41cd: $38 $18

    jr z, jr_005_41e7                             ; $41cf: $28 $16

    sla a                                         ; $41d1: $cb $27
    push af                                       ; $41d3: $f5
    ld b, a                                       ; $41d4: $47
    ld a, c                                       ; $41d5: $79
    sub b                                         ; $41d6: $90
    ld c, a                                       ; $41d7: $4f
    ld b, $00                                     ; $41d8: $06 $00
    call Call_000_0468                            ; $41da: $cd $68 $04
    pop af                                        ; $41dd: $f1
    ld hl, $d400                                  ; $41de: $21 $00 $d4
    ld de, $b800                                  ; $41e1: $11 $00 $b8
    ld c, a                                       ; $41e4: $4f
    ld b, $00                                     ; $41e5: $06 $00

jr_005_41e7:
    call Call_000_0468                            ; $41e7: $cd $68 $04
    pop hl                                        ; $41ea: $e1
    pop de                                        ; $41eb: $d1
    pop bc                                        ; $41ec: $c1
    pop af                                        ; $41ed: $f1
    ret                                           ; $41ee: $c9


    push af                                       ; $41ef: $f5
    push bc                                       ; $41f0: $c5
    push de                                       ; $41f1: $d5
    push hl                                       ; $41f2: $e5
    ld a, b                                       ; $41f3: $78
    ldh [$96], a                                  ; $41f4: $e0 $96
    ldh [rSVBK], a                                ; $41f6: $e0 $70
    ld hl, $d000                                  ; $41f8: $21 $00 $d0
    ld de, $9800                                  ; $41fb: $11 $00 $98
    ld c, $40                                     ; $41fe: $0e $40
    call Call_000_0468                            ; $4200: $cd $68 $04
    pop hl                                        ; $4203: $e1
    pop de                                        ; $4204: $d1
    pop bc                                        ; $4205: $c1
    pop af                                        ; $4206: $f1
    ret                                           ; $4207: $c9


    push af                                       ; $4208: $f5
    push bc                                       ; $4209: $c5
    push de                                       ; $420a: $d5
    push hl                                       ; $420b: $e5
    ld a, b                                       ; $420c: $78
    ldh [$96], a                                  ; $420d: $e0 $96
    ldh [rSVBK], a                                ; $420f: $e0 $70
    ld hl, $d400                                  ; $4211: $21 $00 $d4
    ld de, $b800                                  ; $4214: $11 $00 $b8
    ld c, $40                                     ; $4217: $0e $40
    call Call_000_0468                            ; $4219: $cd $68 $04
    pop hl                                        ; $421c: $e1
    pop de                                        ; $421d: $d1
    pop bc                                        ; $421e: $c1
    pop af                                        ; $421f: $f1
    ret                                           ; $4220: $c9


    push af                                       ; $4221: $f5
    ld a, b                                       ; $4222: $78
    ldh [$96], a                                  ; $4223: $e0 $96
    ldh [rSVBK], a                                ; $4225: $e0 $70
    pop af                                        ; $4227: $f1
    and $1f                                       ; $4228: $e6 $1f
    ld c, a                                       ; $422a: $4f
    ld b, $00                                     ; $422b: $06 $00
    sla c                                         ; $422d: $cb $21
    rl b                                          ; $422f: $cb $10
    sla c                                         ; $4231: $cb $21
    rl b                                          ; $4233: $cb $10
    sla c                                         ; $4235: $cb $21
    rl b                                          ; $4237: $cb $10
    sla c                                         ; $4239: $cb $21
    rl b                                          ; $423b: $cb $10
    sla c                                         ; $423d: $cb $21
    rl b                                          ; $423f: $cb $10
    ld hl, $9800                                  ; $4241: $21 $00 $98
    add hl, bc                                    ; $4244: $09
    ld d, h                                       ; $4245: $54
    ld e, l                                       ; $4246: $5d
    ld hl, $d000                                  ; $4247: $21 $00 $d0
    add hl, bc                                    ; $424a: $09
    push bc                                       ; $424b: $c5
    ld c, $02                                     ; $424c: $0e $02
    call Call_000_0468                            ; $424e: $cd $68 $04
    pop bc                                        ; $4251: $c1
    ld hl, $b800                                  ; $4252: $21 $00 $b8
    add hl, bc                                    ; $4255: $09
    ld d, h                                       ; $4256: $54
    ld e, l                                       ; $4257: $5d
    ld hl, $d400                                  ; $4258: $21 $00 $d4
    add hl, bc                                    ; $425b: $09
    ld c, $02                                     ; $425c: $0e $02
    call Call_000_0468                            ; $425e: $cd $68 $04
    ret                                           ; $4261: $c9


Call_005_4262:
    ld d, a                                       ; $4262: $57
    ld a, c                                       ; $4263: $79
    or a                                          ; $4264: $b7
    jr z, jr_005_42ac                             ; $4265: $28 $45

    ld a, b                                       ; $4267: $78
    ldh [$96], a                                  ; $4268: $e0 $96
    ldh [rSVBK], a                                ; $426a: $e0 $70
    ld b, d                                       ; $426c: $42
    ld a, c                                       ; $426d: $79
    sla a                                         ; $426e: $cb $27
    push af                                       ; $4270: $f5
    ld a, b                                       ; $4271: $78
    ld c, a                                       ; $4272: $4f
    ld b, $00                                     ; $4273: $06 $00
    sla c                                         ; $4275: $cb $21
    rl b                                          ; $4277: $cb $10
    sla c                                         ; $4279: $cb $21
    rl b                                          ; $427b: $cb $10
    sla c                                         ; $427d: $cb $21
    rl b                                          ; $427f: $cb $10
    sla c                                         ; $4281: $cb $21
    rl b                                          ; $4283: $cb $10
    sla c                                         ; $4285: $cb $21
    rl b                                          ; $4287: $cb $10
    ld hl, $9800                                  ; $4289: $21 $00 $98
    add hl, bc                                    ; $428c: $09
    ld d, h                                       ; $428d: $54
    ld e, l                                       ; $428e: $5d
    ld hl, $d000                                  ; $428f: $21 $00 $d0
    add hl, bc                                    ; $4292: $09
    pop af                                        ; $4293: $f1
    push af                                       ; $4294: $f5
    push bc                                       ; $4295: $c5
    ld c, a                                       ; $4296: $4f
    call Call_000_0468                            ; $4297: $cd $68 $04
    pop bc                                        ; $429a: $c1
    pop af                                        ; $429b: $f1
    ld hl, $b800                                  ; $429c: $21 $00 $b8
    add hl, bc                                    ; $429f: $09
    ld d, h                                       ; $42a0: $54
    ld e, l                                       ; $42a1: $5d
    ld hl, $d400                                  ; $42a2: $21 $00 $d4
    add hl, bc                                    ; $42a5: $09
    push de                                       ; $42a6: $d5
    ld c, a                                       ; $42a7: $4f
    call Call_000_0468                            ; $42a8: $cd $68 $04
    pop de                                        ; $42ab: $d1

jr_005_42ac:
    ret                                           ; $42ac: $c9


Call_005_42ad:
    rst $20                                       ; $42ad: $e7
    nop                                           ; $42ae: $00
    inc bc                                        ; $42af: $03
    call Call_000_2e3b                            ; $42b0: $cd $3b $2e
    push af                                       ; $42b3: $f5
    push bc                                       ; $42b4: $c5
    push de                                       ; $42b5: $d5
    push hl                                       ; $42b6: $e5
    ld d, a                                       ; $42b7: $57
    ld a, c                                       ; $42b8: $79
    sub $07                                       ; $42b9: $d6 $07
    jr c, jr_005_42c7                             ; $42bb: $38 $0a

    jr z, jr_005_42c7                             ; $42bd: $28 $08

    sub $07                                       ; $42bf: $d6 $07
    jr c, jr_005_42c7                             ; $42c1: $38 $04

    jr z, jr_005_42c7                             ; $42c3: $28 $02

    jr jr_005_42c9                                ; $42c5: $18 $02

jr_005_42c7:
    add $07                                       ; $42c7: $c6 $07

jr_005_42c9:
    ld e, a                                       ; $42c9: $5f
    ld a, c                                       ; $42ca: $79
    ld c, $00                                     ; $42cb: $0e $00

jr_005_42cd:
    inc c                                         ; $42cd: $0c
    sub $07                                       ; $42ce: $d6 $07
    jr c, jr_005_42d6                             ; $42d0: $38 $04

    jr z, jr_005_42d6                             ; $42d2: $28 $02

    jr jr_005_42cd                                ; $42d4: $18 $f7

jr_005_42d6:
    push af                                       ; $42d6: $f5
    push bc                                       ; $42d7: $c5
    push de                                       ; $42d8: $d5
    push hl                                       ; $42d9: $e5
    ld a, c                                       ; $42da: $79
    ld b, c                                       ; $42db: $41
    ld c, e                                       ; $42dc: $4b
    cp $01                                        ; $42dd: $fe $01
    jr z, jr_005_42e3                             ; $42df: $28 $02

    ld c, $07                                     ; $42e1: $0e $07

jr_005_42e3:
    ld a, d                                       ; $42e3: $7a
    cp $20                                        ; $42e4: $fe $20
    jr nc, jr_005_42fe                            ; $42e6: $30 $16

    push af                                       ; $42e8: $f5
    add c                                         ; $42e9: $81
    cp $20                                        ; $42ea: $fe $20
    jr c, jr_005_42fd                             ; $42ec: $38 $0f

    sub $20                                       ; $42ee: $d6 $20
    ld b, a                                       ; $42f0: $47
    push bc                                       ; $42f1: $c5
    ld c, a                                       ; $42f2: $4f
    xor a                                         ; $42f3: $af
    ld b, $05                                     ; $42f4: $06 $05
    call Call_005_4262                            ; $42f6: $cd $62 $42
    pop bc                                        ; $42f9: $c1
    ld a, c                                       ; $42fa: $79
    sub b                                         ; $42fb: $90
    ld c, a                                       ; $42fc: $4f

jr_005_42fd:
    pop af                                        ; $42fd: $f1

jr_005_42fe:
    and $1f                                       ; $42fe: $e6 $1f
    ld b, $05                                     ; $4300: $06 $05
    call Call_005_4262                            ; $4302: $cd $62 $42
    pop hl                                        ; $4305: $e1
    pop de                                        ; $4306: $d1
    pop bc                                        ; $4307: $c1
    pop af                                        ; $4308: $f1
    call Call_000_2e3b                            ; $4309: $cd $3b $2e
    ld a, d                                       ; $430c: $7a
    add $07                                       ; $430d: $c6 $07
    ld d, a                                       ; $430f: $57
    dec c                                         ; $4310: $0d
    jr nz, jr_005_42d6                            ; $4311: $20 $c3

    pop hl                                        ; $4313: $e1
    pop de                                        ; $4314: $d1
    pop bc                                        ; $4315: $c1
    pop af                                        ; $4316: $f1
    rst $28                                       ; $4317: $ef
    nop                                           ; $4318: $00
    inc bc                                        ; $4319: $03
    ret                                           ; $431a: $c9


Call_005_431b:
    push af                                       ; $431b: $f5
    push bc                                       ; $431c: $c5
    push de                                       ; $431d: $d5
    push hl                                       ; $431e: $e5
    ld h, a                                       ; $431f: $67
    ld a, h                                       ; $4320: $7c
    sla a                                         ; $4321: $cb $27
    sla a                                         ; $4323: $cb $27
    ld hl, $d800                                  ; $4325: $21 $00 $d8
    add l                                         ; $4328: $85
    ld l, a                                       ; $4329: $6f
    ld a, $00                                     ; $432a: $3e $00
    adc h                                         ; $432c: $8c
    ld h, a                                       ; $432d: $67
    ld a, [hl+]                                   ; $432e: $2a
    ld e, a                                       ; $432f: $5f
    ld a, [hl]                                    ; $4330: $7e
    ld d, a                                       ; $4331: $57
    ld h, d                                       ; $4332: $62
    ld l, e                                       ; $4333: $6b
    inc hl                                        ; $4334: $23
    inc hl                                        ; $4335: $23
    ld a, [hl]                                    ; $4336: $7e
    inc hl                                        ; $4337: $23
    inc hl                                        ; $4338: $23
    ld c, [hl]                                    ; $4339: $4e
    ld b, a                                       ; $433a: $47
    ld a, c                                       ; $433b: $79
    cp $03                                        ; $433c: $fe $03
    jr nz, jr_005_4346                            ; $433e: $20 $06

    ld c, $07                                     ; $4340: $0e $07
    dec b                                         ; $4342: $05
    dec b                                         ; $4343: $05
    jr jr_005_434d                                ; $4344: $18 $07

jr_005_4346:
    cp $05                                        ; $4346: $fe $05
    jr nz, jr_005_434d                            ; $4348: $20 $03

    ld c, $07                                     ; $434a: $0e $07
    dec b                                         ; $434c: $05

jr_005_434d:
    ld a, b                                       ; $434d: $78
    push af                                       ; $434e: $f5
    push bc                                       ; $434f: $c5
    push de                                       ; $4350: $d5
    ld d, a                                       ; $4351: $57
    add c                                         ; $4352: $81
    sub $20                                       ; $4353: $d6 $20
    jr c, jr_005_4373                             ; $4355: $38 $1c

    jr z, jr_005_4373                             ; $4357: $28 $1a

    ld b, a                                       ; $4359: $47
    ld e, c                                       ; $435a: $59
    ld c, a                                       ; $435b: $4f
    ld a, $00                                     ; $435c: $3e $00
    push af                                       ; $435e: $f5
    push bc                                       ; $435f: $c5
    push de                                       ; $4360: $d5
    push hl                                       ; $4361: $e5
    ld b, $05                                     ; $4362: $06 $05
    call Call_005_4262                            ; $4364: $cd $62 $42
    pop hl                                        ; $4367: $e1
    pop de                                        ; $4368: $d1
    pop bc                                        ; $4369: $c1
    pop af                                        ; $436a: $f1
    ld a, b                                       ; $436b: $78
    xor $ff                                       ; $436c: $ee $ff
    inc a                                         ; $436e: $3c
    ld b, a                                       ; $436f: $47
    ld a, e                                       ; $4370: $7b
    add b                                         ; $4371: $80
    ld c, a                                       ; $4372: $4f

jr_005_4373:
    ld a, d                                       ; $4373: $7a
    ld b, $05                                     ; $4374: $06 $05
    call Call_005_4262                            ; $4376: $cd $62 $42
    pop de                                        ; $4379: $d1
    pop bc                                        ; $437a: $c1
    pop af                                        ; $437b: $f1
    call Call_000_2e3b                            ; $437c: $cd $3b $2e
    pop hl                                        ; $437f: $e1
    pop de                                        ; $4380: $d1
    pop bc                                        ; $4381: $c1
    pop af                                        ; $4382: $f1
    ret                                           ; $4383: $c9


Call_005_4384:
    push af                                       ; $4384: $f5
    push bc                                       ; $4385: $c5
    push de                                       ; $4386: $d5
    push hl                                       ; $4387: $e5
    call Call_005_60b0                            ; $4388: $cd $b0 $60
    inc hl                                        ; $438b: $23
    inc hl                                        ; $438c: $23
    ld d, [hl]                                    ; $438d: $56
    inc hl                                        ; $438e: $23
    inc hl                                        ; $438f: $23
    ld a, [hl]                                    ; $4390: $7e
    sub $07                                       ; $4391: $d6 $07
    jr c, jr_005_439f                             ; $4393: $38 $0a

    jr z, jr_005_439f                             ; $4395: $28 $08

    sub $07                                       ; $4397: $d6 $07
    jr c, jr_005_439f                             ; $4399: $38 $04

    jr z, jr_005_439f                             ; $439b: $28 $02

    jr jr_005_43a1                                ; $439d: $18 $02

jr_005_439f:
    add $07                                       ; $439f: $c6 $07

jr_005_43a1:
    ld e, a                                       ; $43a1: $5f
    ld a, [hl]                                    ; $43a2: $7e
    ld c, $00                                     ; $43a3: $0e $00

jr_005_43a5:
    inc c                                         ; $43a5: $0c
    sub $07                                       ; $43a6: $d6 $07
    jr c, jr_005_43ae                             ; $43a8: $38 $04

    jr z, jr_005_43ae                             ; $43aa: $28 $02

    jr jr_005_43a5                                ; $43ac: $18 $f7

jr_005_43ae:
    push af                                       ; $43ae: $f5
    push bc                                       ; $43af: $c5
    push de                                       ; $43b0: $d5
    push hl                                       ; $43b1: $e5
    ld a, c                                       ; $43b2: $79
    ld b, c                                       ; $43b3: $41
    ld c, e                                       ; $43b4: $4b
    cp $01                                        ; $43b5: $fe $01
    jr z, jr_005_43bb                             ; $43b7: $28 $02

    ld c, $07                                     ; $43b9: $0e $07

jr_005_43bb:
    ld a, d                                       ; $43bb: $7a
    cp $20                                        ; $43bc: $fe $20
    jr nc, jr_005_43da                            ; $43be: $30 $1a

    push af                                       ; $43c0: $f5
    add c                                         ; $43c1: $81
    cp $20                                        ; $43c2: $fe $20
    jr c, jr_005_43d9                             ; $43c4: $38 $13

    sub $20                                       ; $43c6: $d6 $20
    ld b, a                                       ; $43c8: $47
    push bc                                       ; $43c9: $c5
    ld c, a                                       ; $43ca: $4f
    cp $08                                        ; $43cb: $fe $08
    jr nc, jr_005_43f4                            ; $43cd: $30 $25

    xor a                                         ; $43cf: $af
    ld b, $05                                     ; $43d0: $06 $05
    call Call_005_4262                            ; $43d2: $cd $62 $42
    pop bc                                        ; $43d5: $c1
    ld a, c                                       ; $43d6: $79
    sub b                                         ; $43d7: $90
    ld c, a                                       ; $43d8: $4f

jr_005_43d9:
    pop af                                        ; $43d9: $f1

jr_005_43da:
    and $1f                                       ; $43da: $e6 $1f
    ld b, $05                                     ; $43dc: $06 $05
    call Call_005_4262                            ; $43de: $cd $62 $42
    pop hl                                        ; $43e1: $e1
    pop de                                        ; $43e2: $d1
    pop bc                                        ; $43e3: $c1
    pop af                                        ; $43e4: $f1
    call Call_000_2e3b                            ; $43e5: $cd $3b $2e
    ld a, d                                       ; $43e8: $7a
    add $07                                       ; $43e9: $c6 $07
    ld d, a                                       ; $43eb: $57
    dec c                                         ; $43ec: $0d
    jr nz, jr_005_43ae                            ; $43ed: $20 $bf

    pop hl                                        ; $43ef: $e1
    pop de                                        ; $43f0: $d1
    pop bc                                        ; $43f1: $c1
    pop af                                        ; $43f2: $f1
    ret                                           ; $43f3: $c9


jr_005_43f4:
    jr jr_005_43f4                                ; $43f4: $18 $fe

Call_005_43f6:
    push af                                       ; $43f6: $f5
    push bc                                       ; $43f7: $c5
    ld a, [$d824]                                 ; $43f8: $fa $24 $d8
    ld b, a                                       ; $43fb: $47
    ld a, [$d821]                                 ; $43fc: $fa $21 $d8
    cp b                                          ; $43ff: $b8
    jr nz, jr_005_4405                            ; $4400: $20 $03

    call Call_005_431b                            ; $4402: $cd $1b $43

jr_005_4405:
    pop bc                                        ; $4405: $c1
    pop af                                        ; $4406: $f1
    ret                                           ; $4407: $c9


Call_005_4408:
    push af                                       ; $4408: $f5
    push bc                                       ; $4409: $c5
    push de                                       ; $440a: $d5
    push hl                                       ; $440b: $e5
    ld h, a                                       ; $440c: $67
    ldh a, [$96]                                  ; $440d: $f0 $96
    push af                                       ; $440f: $f5
    ld a, $05                                     ; $4410: $3e $05
    ldh [$96], a                                  ; $4412: $e0 $96
    ldh [rSVBK], a                                ; $4414: $e0 $70
    ld a, h                                       ; $4416: $7c
    push bc                                       ; $4417: $c5
    ld c, a                                       ; $4418: $4f
    ld b, $00                                     ; $4419: $06 $00
    sla c                                         ; $441b: $cb $21
    sla c                                         ; $441d: $cb $21
    ld hl, $d800                                  ; $441f: $21 $00 $d8
    add hl, bc                                    ; $4422: $09
    ld c, [hl]                                    ; $4423: $4e
    inc hl                                        ; $4424: $23
    ld b, [hl]                                    ; $4425: $46
    ld h, b                                       ; $4426: $60
    ld l, c                                       ; $4427: $69
    inc hl                                        ; $4428: $23
    inc hl                                        ; $4429: $23
    inc hl                                        ; $442a: $23
    ld c, [hl]                                    ; $442b: $4e
    ld b, $00                                     ; $442c: $06 $00
    inc hl                                        ; $442e: $23
    inc hl                                        ; $442f: $23
    push hl                                       ; $4430: $e5
    ld hl, $0000                                  ; $4431: $21 $00 $00
    ld a, e                                       ; $4434: $7b

jr_005_4435:
    add hl, bc                                    ; $4435: $09
    dec a                                         ; $4436: $3d
    jr nz, jr_005_4435                            ; $4437: $20 $fc

    ld c, d                                       ; $4439: $4a
    add hl, bc                                    ; $443a: $09
    add hl, hl                                    ; $443b: $29
    ld b, h                                       ; $443c: $44
    ld c, l                                       ; $443d: $4d
    pop hl                                        ; $443e: $e1
    add hl, bc                                    ; $443f: $09
    pop bc                                        ; $4440: $c1
    ld a, c                                       ; $4441: $79
    ld [hl+], a                                   ; $4442: $22
    ld a, b                                       ; $4443: $78
    ld [hl], a                                    ; $4444: $77
    pop af                                        ; $4445: $f1
    ldh [$96], a                                  ; $4446: $e0 $96
    ldh [rSVBK], a                                ; $4448: $e0 $70
    pop hl                                        ; $444a: $e1
    pop de                                        ; $444b: $d1
    pop bc                                        ; $444c: $c1
    pop af                                        ; $444d: $f1
    ret                                           ; $444e: $c9


Call_005_444f:
    push af                                       ; $444f: $f5
    push de                                       ; $4450: $d5
    push hl                                       ; $4451: $e5
    ld h, a                                       ; $4452: $67
    ldh a, [$96]                                  ; $4453: $f0 $96
    push af                                       ; $4455: $f5
    ld a, $05                                     ; $4456: $3e $05
    ldh [$96], a                                  ; $4458: $e0 $96
    ldh [rSVBK], a                                ; $445a: $e0 $70
    ld a, h                                       ; $445c: $7c
    ld c, a                                       ; $445d: $4f
    ld b, $00                                     ; $445e: $06 $00
    sla c                                         ; $4460: $cb $21
    sla c                                         ; $4462: $cb $21
    ld hl, $d800                                  ; $4464: $21 $00 $d8
    add hl, bc                                    ; $4467: $09
    ld c, [hl]                                    ; $4468: $4e
    inc hl                                        ; $4469: $23
    ld b, [hl]                                    ; $446a: $46
    ld h, b                                       ; $446b: $60
    ld l, c                                       ; $446c: $69
    inc hl                                        ; $446d: $23
    inc hl                                        ; $446e: $23
    inc hl                                        ; $446f: $23
    ld c, [hl]                                    ; $4470: $4e
    ld b, $00                                     ; $4471: $06 $00
    inc hl                                        ; $4473: $23
    inc hl                                        ; $4474: $23
    push hl                                       ; $4475: $e5
    ld hl, $0000                                  ; $4476: $21 $00 $00
    ld a, e                                       ; $4479: $7b

jr_005_447a:
    add hl, bc                                    ; $447a: $09
    dec a                                         ; $447b: $3d
    jr nz, jr_005_447a                            ; $447c: $20 $fc

    ld c, d                                       ; $447e: $4a
    add hl, bc                                    ; $447f: $09
    add hl, hl                                    ; $4480: $29
    ld b, h                                       ; $4481: $44
    ld c, l                                       ; $4482: $4d
    pop hl                                        ; $4483: $e1
    add hl, bc                                    ; $4484: $09
    ld a, [hl+]                                   ; $4485: $2a
    ld c, a                                       ; $4486: $4f
    ld a, [hl]                                    ; $4487: $7e
    ld b, a                                       ; $4488: $47
    pop af                                        ; $4489: $f1
    ldh [$96], a                                  ; $448a: $e0 $96
    ldh [rSVBK], a                                ; $448c: $e0 $70
    pop hl                                        ; $448e: $e1
    pop de                                        ; $448f: $d1
    pop af                                        ; $4490: $f1
    ret                                           ; $4491: $c9


Call_005_4492:
    push af                                       ; $4492: $f5
    push bc                                       ; $4493: $c5
    push de                                       ; $4494: $d5
    push hl                                       ; $4495: $e5
    ld a, [$c323]                                 ; $4496: $fa $23 $c3
    and $3f                                       ; $4499: $e6 $3f
    ld c, $04                                     ; $449b: $0e $04

jr_005_449d:
    ld b, $05                                     ; $449d: $06 $05

jr_005_449f:
    push af                                       ; $449f: $f5
    push bc                                       ; $44a0: $c5
    call Call_005_450b                            ; $44a1: $cd $0b $45
    pop bc                                        ; $44a4: $c1
    pop af                                        ; $44a5: $f1
    inc a                                         ; $44a6: $3c
    and $3f                                       ; $44a7: $e6 $3f
    dec b                                         ; $44a9: $05
    jr nz, jr_005_449f                            ; $44aa: $20 $f3

    call Call_000_2e3b                            ; $44ac: $cd $3b $2e
    dec c                                         ; $44af: $0d
    jr nz, jr_005_449d                            ; $44b0: $20 $eb

    pop hl                                        ; $44b2: $e1
    pop de                                        ; $44b3: $d1
    pop bc                                        ; $44b4: $c1
    pop af                                        ; $44b5: $f1
    ret                                           ; $44b6: $c9


    push af                                       ; $44b7: $f5
    push bc                                       ; $44b8: $c5
    push de                                       ; $44b9: $d5
    push hl                                       ; $44ba: $e5
    ld c, a                                       ; $44bb: $4f
    ld a, [$c322]                                 ; $44bc: $fa $22 $c3
    ld b, a                                       ; $44bf: $47
    ld a, [$c323]                                 ; $44c0: $fa $23 $c3
    rl b                                          ; $44c3: $cb $10
    adc $00                                       ; $44c5: $ce $00
    rr c                                          ; $44c7: $cb $19
    jr nc, jr_005_44cd                            ; $44c9: $30 $02

    add $0b                                       ; $44cb: $c6 $0b

jr_005_44cd:
    and $3f                                       ; $44cd: $e6 $3f
    ld b, $07                                     ; $44cf: $06 $07

jr_005_44d1:
    push af                                       ; $44d1: $f5
    push bc                                       ; $44d2: $c5
    call Call_005_450b                            ; $44d3: $cd $0b $45
    pop bc                                        ; $44d6: $c1
    pop af                                        ; $44d7: $f1
    inc a                                         ; $44d8: $3c
    and $3f                                       ; $44d9: $e6 $3f
    dec b                                         ; $44db: $05
    jr nz, jr_005_44d1                            ; $44dc: $20 $f3

    pop hl                                        ; $44de: $e1
    pop de                                        ; $44df: $d1
    pop bc                                        ; $44e0: $c1
    pop af                                        ; $44e1: $f1
    ret                                           ; $44e2: $c9


Call_005_44e3:
    push af                                       ; $44e3: $f5
    push bc                                       ; $44e4: $c5
    push de                                       ; $44e5: $d5
    push hl                                       ; $44e6: $e5
    call Call_005_60b0                            ; $44e7: $cd $b0 $60
    inc hl                                        ; $44ea: $23
    inc hl                                        ; $44eb: $23
    ld b, [hl]                                    ; $44ec: $46
    inc hl                                        ; $44ed: $23
    inc hl                                        ; $44ee: $23
    ld c, [hl]                                    ; $44ef: $4e
    ld a, [$c323]                                 ; $44f0: $fa $23 $c3
    cp b                                          ; $44f3: $b8
    jr c, jr_005_44fa                             ; $44f4: $38 $04

    ld a, $20                                     ; $44f6: $3e $20
    add b                                         ; $44f8: $80
    ld b, a                                       ; $44f9: $47

jr_005_44fa:
    ld a, b                                       ; $44fa: $78

jr_005_44fb:
    push af                                       ; $44fb: $f5
    push bc                                       ; $44fc: $c5
    call Call_005_450b                            ; $44fd: $cd $0b $45
    pop bc                                        ; $4500: $c1
    pop af                                        ; $4501: $f1
    inc a                                         ; $4502: $3c
    dec c                                         ; $4503: $0d
    jr nz, jr_005_44fb                            ; $4504: $20 $f5

    pop hl                                        ; $4506: $e1
    pop de                                        ; $4507: $d1
    pop bc                                        ; $4508: $c1
    pop af                                        ; $4509: $f1
    ret                                           ; $450a: $c9


Call_005_450b:
    and $3f                                       ; $450b: $e6 $3f
    ld e, a                                       ; $450d: $5f
    ld hl, $d000                                  ; $450e: $21 $00 $d0
    ld a, $06                                     ; $4511: $3e $06
    ld bc, $0040                                  ; $4513: $01 $40 $00
    ld d, e                                       ; $4516: $53

jr_005_4517:
    rr d                                          ; $4517: $cb $1a
    jr nc, jr_005_451c                            ; $4519: $30 $01

    add hl, bc                                    ; $451b: $09

jr_005_451c:
    sla c                                         ; $451c: $cb $21
    rl b                                          ; $451e: $cb $10
    dec a                                         ; $4520: $3d
    jr nz, jr_005_4517                            ; $4521: $20 $f4

    ld a, [$c321]                                 ; $4523: $fa $21 $c3
    and $3f                                       ; $4526: $e6 $3f
    ld d, a                                       ; $4528: $57
    ld c, d                                       ; $4529: $4a
    ld b, $00                                     ; $452a: $06 $00
    add hl, bc                                    ; $452c: $09
    ld b, h                                       ; $452d: $44
    ld c, l                                       ; $452e: $4d
    push bc                                       ; $452f: $c5
    ld a, $03                                     ; $4530: $3e $03
    ldh [$96], a                                  ; $4532: $e0 $96
    ldh [rSVBK], a                                ; $4534: $e0 $70
    ld hl, $c7e0                                  ; $4536: $21 $e0 $c7
    ld a, c                                       ; $4539: $79
    and $1f                                       ; $453a: $e6 $1f
    add l                                         ; $453c: $85
    ld l, a                                       ; $453d: $6f
    jr nc, jr_005_4541                            ; $453e: $30 $01

    inc h                                         ; $4540: $24

jr_005_4541:
    ld d, $20                                     ; $4541: $16 $20

jr_005_4543:
    ld a, [bc]                                    ; $4543: $0a
    ld [hl+], a                                   ; $4544: $22
    inc bc                                        ; $4545: $03
    ld a, c                                       ; $4546: $79
    and $1f                                       ; $4547: $e6 $1f
    jr nz, jr_005_4558                            ; $4549: $20 $0d

    ld hl, $c7e0                                  ; $454b: $21 $e0 $c7
    ld a, c                                       ; $454e: $79
    and $3f                                       ; $454f: $e6 $3f
    jr nz, jr_005_4558                            ; $4551: $20 $05

    dec bc                                        ; $4553: $0b
    ld a, c                                       ; $4554: $79
    and $c0                                       ; $4555: $e6 $c0
    ld c, a                                       ; $4557: $4f

jr_005_4558:
    dec d                                         ; $4558: $15
    jr nz, jr_005_4543                            ; $4559: $20 $e8

    ld hl, $d000                                  ; $455b: $21 $00 $d0
    ld a, e                                       ; $455e: $7b
    and $1f                                       ; $455f: $e6 $1f
    ld d, a                                       ; $4561: $57
    ld a, $05                                     ; $4562: $3e $05
    ld bc, $0020                                  ; $4564: $01 $20 $00

jr_005_4567:
    rr d                                          ; $4567: $cb $1a
    jr nc, jr_005_456c                            ; $4569: $30 $01

    add hl, bc                                    ; $456b: $09

jr_005_456c:
    sla c                                         ; $456c: $cb $21
    rl b                                          ; $456e: $cb $10
    dec a                                         ; $4570: $3d
    jr nz, jr_005_4567                            ; $4571: $20 $f4

    push de                                       ; $4573: $d5
    ld d, h                                       ; $4574: $54
    ld e, l                                       ; $4575: $5d
    ld hl, $c7e0                                  ; $4576: $21 $e0 $c7
    ld a, $05                                     ; $4579: $3e $05
    ldh [$96], a                                  ; $457b: $e0 $96
    ldh [rSVBK], a                                ; $457d: $e0 $70
    ld bc, $0002                                  ; $457f: $01 $02 $00
    call Call_000_03eb                            ; $4582: $cd $eb $03
    pop de                                        ; $4585: $d1
    pop bc                                        ; $4586: $c1
    ld hl, $c7e0                                  ; $4587: $21 $e0 $c7
    ld a, $02                                     ; $458a: $3e $02
    ldh [$96], a                                  ; $458c: $e0 $96
    ldh [rSVBK], a                                ; $458e: $e0 $70
    ld a, c                                       ; $4590: $79
    and $1f                                       ; $4591: $e6 $1f
    add l                                         ; $4593: $85
    ld l, a                                       ; $4594: $6f
    jr nc, jr_005_4598                            ; $4595: $30 $01

    inc h                                         ; $4597: $24

jr_005_4598:
    ld d, $20                                     ; $4598: $16 $20

jr_005_459a:
    ld a, [bc]                                    ; $459a: $0a
    ld [hl+], a                                   ; $459b: $22
    inc bc                                        ; $459c: $03
    ld a, c                                       ; $459d: $79
    and $1f                                       ; $459e: $e6 $1f
    jr nz, jr_005_45af                            ; $45a0: $20 $0d

    ld hl, $c7e0                                  ; $45a2: $21 $e0 $c7
    ld a, c                                       ; $45a5: $79
    and $3f                                       ; $45a6: $e6 $3f
    jr nz, jr_005_45af                            ; $45a8: $20 $05

    dec bc                                        ; $45aa: $0b
    ld a, c                                       ; $45ab: $79
    and $c0                                       ; $45ac: $e6 $c0
    ld c, a                                       ; $45ae: $4f

jr_005_45af:
    dec d                                         ; $45af: $15
    jr nz, jr_005_459a                            ; $45b0: $20 $e8

    ld hl, $d400                                  ; $45b2: $21 $00 $d4
    ld a, e                                       ; $45b5: $7b
    and $1f                                       ; $45b6: $e6 $1f
    ld d, a                                       ; $45b8: $57
    ld a, $05                                     ; $45b9: $3e $05
    ld bc, $0020                                  ; $45bb: $01 $20 $00

jr_005_45be:
    rr d                                          ; $45be: $cb $1a
    jr nc, jr_005_45c3                            ; $45c0: $30 $01

    add hl, bc                                    ; $45c2: $09

jr_005_45c3:
    sla c                                         ; $45c3: $cb $21
    rl b                                          ; $45c5: $cb $10
    dec a                                         ; $45c7: $3d
    jr nz, jr_005_45be                            ; $45c8: $20 $f4

    ld d, h                                       ; $45ca: $54
    ld e, l                                       ; $45cb: $5d
    ld hl, $c7e0                                  ; $45cc: $21 $e0 $c7
    ld a, $05                                     ; $45cf: $3e $05
    ldh [$96], a                                  ; $45d1: $e0 $96
    ldh [rSVBK], a                                ; $45d3: $e0 $70
    ld bc, $0002                                  ; $45d5: $01 $02 $00
    call Call_000_03eb                            ; $45d8: $cd $eb $03
    ret                                           ; $45db: $c9


    push bc                                       ; $45dc: $c5
    push de                                       ; $45dd: $d5
    push hl                                       ; $45de: $e5
    ldh a, [$96]                                  ; $45df: $f0 $96
    push af                                       ; $45e1: $f5
    rst $18                                       ; $45e2: $df
    inc b                                         ; $45e3: $04
    dec b                                         ; $45e4: $05
    ld b, a                                       ; $45e5: $47
    rst $18                                       ; $45e6: $df
    ld [de], a                                    ; $45e7: $12
    dec b                                         ; $45e8: $05
    pop af                                        ; $45e9: $f1
    ldh [$96], a                                  ; $45ea: $e0 $96
    ldh [rSVBK], a                                ; $45ec: $e0 $70
    ld a, b                                       ; $45ee: $78
    ld [$d863], a                                 ; $45ef: $ea $63 $d8
    pop hl                                        ; $45f2: $e1
    pop de                                        ; $45f3: $d1
    pop bc                                        ; $45f4: $c1
    ret                                           ; $45f5: $c9


    push hl                                       ; $45f6: $e5
    ldh a, [$96]                                  ; $45f7: $f0 $96
    push af                                       ; $45f9: $f5
    ld hl, $001a                                  ; $45fa: $21 $1a $00
    rst $18                                       ; $45fd: $df
    ld a, [bc]                                    ; $45fe: $0a
    dec b                                         ; $45ff: $05
    rst $18                                       ; $4600: $df
    inc e                                         ; $4601: $1c
    dec b                                         ; $4602: $05
    rst $18                                       ; $4603: $df
    inc d                                         ; $4604: $14
    dec b                                         ; $4605: $05
    rst $18                                       ; $4606: $df
    ld c, [hl]                                    ; $4607: $4e
    dec b                                         ; $4608: $05
    ld h, a                                       ; $4609: $67
    ld a, [$d82f]                                 ; $460a: $fa $2f $d8
    call Call_005_4c5c                            ; $460d: $cd $5c $4c
    ld a, [$d863]                                 ; $4610: $fa $63 $d8
    call Call_005_4c5c                            ; $4613: $cd $5c $4c
    rst $18                                       ; $4616: $df
    inc e                                         ; $4617: $1c
    dec b                                         ; $4618: $05
    rst $18                                       ; $4619: $df
    inc d                                         ; $461a: $14
    dec b                                         ; $461b: $05
    pop af                                        ; $461c: $f1
    ldh [$96], a                                  ; $461d: $e0 $96
    ldh [rSVBK], a                                ; $461f: $e0 $70
    ld a, h                                       ; $4621: $7c
    pop hl                                        ; $4622: $e1
    ret                                           ; $4623: $c9


Call_005_4624:
    push af                                       ; $4624: $f5
    push hl                                       ; $4625: $e5
    ldh a, [$96]                                  ; $4626: $f0 $96
    push af                                       ; $4628: $f5
    ld a, $05                                     ; $4629: $3e $05
    ldh [$96], a                                  ; $462b: $e0 $96
    ldh [rSVBK], a                                ; $462d: $e0 $70
    ld a, [$d822]                                 ; $462f: $fa $22 $d8
    or a                                          ; $4632: $b7
    jr nz, jr_005_464d                            ; $4633: $20 $18

    ld a, $07                                     ; $4635: $3e $07
    ldh [$96], a                                  ; $4637: $e0 $96
    ldh [rSVBK], a                                ; $4639: $e0 $70
    rst $18                                       ; $463b: $df

    db $00, $03

    rst $18                                       ; $463e: $df

    db $04, $03

    xor a                                         ; $4641: $af
    ld hl, $c36a                                  ; $4642: $21 $6a $c3
    ld [hl+], a                                   ; $4645: $22
    ld [hl+], a                                   ; $4646: $22
    ld [hl+], a                                   ; $4647: $22
    ld [hl+], a                                   ; $4648: $22
    ld [hl+], a                                   ; $4649: $22
    ld [hl], a                                    ; $464a: $77
    jr jr_005_4653                                ; $464b: $18 $06

jr_005_464d:
    ld a, [$c36e]                                 ; $464d: $fa $6e $c3
    ld [$c36f], a                                 ; $4650: $ea $6f $c3

jr_005_4653:
    pop af                                        ; $4653: $f1
    ldh [$96], a                                  ; $4654: $e0 $96
    ldh [rSVBK], a                                ; $4656: $e0 $70
    pop hl                                        ; $4658: $e1
    pop af                                        ; $4659: $f1
    ret                                           ; $465a: $c9


Call_005_465b:
    push af                                       ; $465b: $f5
    push hl                                       ; $465c: $e5
    ldh a, [$96]                                  ; $465d: $f0 $96
    push af                                       ; $465f: $f5
    ld a, $05                                     ; $4660: $3e $05
    ldh [$96], a                                  ; $4662: $e0 $96
    ldh [rSVBK], a                                ; $4664: $e0 $70
    ld a, [$d822]                                 ; $4666: $fa $22 $d8
    or a                                          ; $4669: $b7
    jr nz, jr_005_4681                            ; $466a: $20 $15

    ld a, $07                                     ; $466c: $3e $07
    ldh [$96], a                                  ; $466e: $e0 $96
    ldh [rSVBK], a                                ; $4670: $e0 $70
    rst $18                                       ; $4672: $df
    nop                                           ; $4673: $00
    inc bc                                        ; $4674: $03
    xor a                                         ; $4675: $af
    ld hl, $c36a                                  ; $4676: $21 $6a $c3
    ld [hl+], a                                   ; $4679: $22
    ld [hl+], a                                   ; $467a: $22
    ld [hl+], a                                   ; $467b: $22
    ld [hl+], a                                   ; $467c: $22
    ld [hl+], a                                   ; $467d: $22
    ld [hl], a                                    ; $467e: $77
    jr jr_005_4687                                ; $467f: $18 $06

jr_005_4681:
    ld a, [$c36e]                                 ; $4681: $fa $6e $c3
    ld [$c36f], a                                 ; $4684: $ea $6f $c3

jr_005_4687:
    pop af                                        ; $4687: $f1
    ldh [$96], a                                  ; $4688: $e0 $96
    ldh [rSVBK], a                                ; $468a: $e0 $70
    pop hl                                        ; $468c: $e1
    pop af                                        ; $468d: $f1
    ret                                           ; $468e: $c9


Call_005_468f:
    push de                                       ; $468f: $d5
    push bc                                       ; $4690: $c5
    push af                                       ; $4691: $f5
    ld [hl], $00                                  ; $4692: $36 $00
    add sp, -$01                                  ; $4694: $e8 $ff
    ld d, h                                       ; $4696: $54
    ld e, l                                       ; $4697: $5d
    ld hl, sp+$00                                 ; $4698: $f8 $00
    ld [hl], a                                    ; $469a: $77
    ld a, b                                       ; $469b: $78
    sla a                                         ; $469c: $cb $27
    ld h, $00                                     ; $469e: $26 $00
    ld l, c                                       ; $46a0: $69
    call Call_000_08b9                            ; $46a1: $cd $b9 $08
    add hl, de                                    ; $46a4: $19
    inc hl                                        ; $46a5: $23
    inc hl                                        ; $46a6: $23
    inc hl                                        ; $46a7: $23
    inc hl                                        ; $46a8: $23
    inc hl                                        ; $46a9: $23
    ld a, h                                       ; $46aa: $7c
    cp $e0                                        ; $46ab: $fe $e0
    jr c, jr_005_46b4                             ; $46ad: $38 $05

    ld hl, $ffff                                  ; $46af: $21 $ff $ff
    jr jr_005_46eb                                ; $46b2: $18 $37

jr_005_46b4:
    call Call_005_46f1                            ; $46b4: $cd $f1 $46
    ld [$d820], a                                 ; $46b7: $ea $20 $d8
    ld [$d821], a                                 ; $46ba: $ea $21 $d8
    cp $ff                                        ; $46bd: $fe $ff
    jr nz, jr_005_46c6                            ; $46bf: $20 $05

    ld hl, $ffff                                  ; $46c1: $21 $ff $ff
    jr jr_005_46eb                                ; $46c4: $18 $25

jr_005_46c6:
    sla a                                         ; $46c6: $cb $27
    sla a                                         ; $46c8: $cb $27
    ld hl, $d800                                  ; $46ca: $21 $00 $d8
    add l                                         ; $46cd: $85
    ld l, a                                       ; $46ce: $6f
    ld a, $00                                     ; $46cf: $3e $00
    adc h                                         ; $46d1: $8c
    ld h, a                                       ; $46d2: $67
    ld [hl], e                                    ; $46d3: $73
    inc hl                                        ; $46d4: $23
    ld [hl], d                                    ; $46d5: $72
    inc hl                                        ; $46d6: $23
    push hl                                       ; $46d7: $e5
    ld hl, sp+$02                                 ; $46d8: $f8 $02
    ld a, [hl]                                    ; $46da: $7e
    pop hl                                        ; $46db: $e1
    sla a                                         ; $46dc: $cb $27
    sla a                                         ; $46de: $cb $27
    sla a                                         ; $46e0: $cb $27
    sla a                                         ; $46e2: $cb $27
    sla a                                         ; $46e4: $cb $27
    or $03                                        ; $46e6: $f6 $03
    ld [hl], a                                    ; $46e8: $77
    push de                                       ; $46e9: $d5
    pop hl                                        ; $46ea: $e1

jr_005_46eb:
    add sp, $01                                   ; $46eb: $e8 $01
    pop af                                        ; $46ed: $f1
    pop bc                                        ; $46ee: $c1
    pop de                                        ; $46ef: $d1
    ret                                           ; $46f0: $c9


Call_005_46f1:
    push hl                                       ; $46f1: $e5
    push bc                                       ; $46f2: $c5
    push de                                       ; $46f3: $d5
    ld d, $06                                     ; $46f4: $16 $06
    ld bc, $0004                                  ; $46f6: $01 $04 $00
    ld hl, $d800                                  ; $46f9: $21 $00 $d8
    inc hl                                        ; $46fc: $23

jr_005_46fd:
    ld a, [hl]                                    ; $46fd: $7e
    or a                                          ; $46fe: $b7
    jr z, jr_005_4709                             ; $46ff: $28 $08

    add hl, bc                                    ; $4701: $09
    dec d                                         ; $4702: $15
    jr nz, jr_005_46fd                            ; $4703: $20 $f8

    ld a, $ff                                     ; $4705: $3e $ff
    jr jr_005_4713                                ; $4707: $18 $0a

jr_005_4709:
    ld de, $2800                                  ; $4709: $11 $00 $28
    add hl, de                                    ; $470c: $19
    ld a, l                                       ; $470d: $7d
    dec a                                         ; $470e: $3d
    srl a                                         ; $470f: $cb $3f
    srl a                                         ; $4711: $cb $3f

jr_005_4713:
    pop de                                        ; $4713: $d1
    pop bc                                        ; $4714: $c1
    pop hl                                        ; $4715: $e1
    ret                                           ; $4716: $c9


    push af                                       ; $4717: $f5
    push bc                                       ; $4718: $c5
    push de                                       ; $4719: $d5
    push hl                                       ; $471a: $e5
    ld [hl], a                                    ; $471b: $77
    and $7f                                       ; $471c: $e6 $7f
    inc hl                                        ; $471e: $23
    ld [hl], d                                    ; $471f: $72
    inc hl                                        ; $4720: $23
    ld [hl], e                                    ; $4721: $73
    inc hl                                        ; $4722: $23
    ld [hl], b                                    ; $4723: $70
    inc hl                                        ; $4724: $23
    ld [hl], c                                    ; $4725: $71
    inc hl                                        ; $4726: $23
    ld e, b                                       ; $4727: $58
    ld d, c                                       ; $4728: $51
    dec d                                         ; $4729: $15
    dec d                                         ; $472a: $15
    dec e                                         ; $472b: $1d
    dec e                                         ; $472c: $1d
    ld a, [$d84d]                                 ; $472d: $fa $4d $d8
    ld [hl], $02                                  ; $4730: $36 $02
    inc hl                                        ; $4732: $23
    ld [hl], a                                    ; $4733: $77
    inc hl                                        ; $4734: $23
    ld b, e                                       ; $4735: $43
    ld c, $03                                     ; $4736: $0e $03

jr_005_4738:
    ld [hl], c                                    ; $4738: $71
    inc hl                                        ; $4739: $23
    ld [hl], a                                    ; $473a: $77
    inc hl                                        ; $473b: $23
    dec b                                         ; $473c: $05
    jr nz, jr_005_4738                            ; $473d: $20 $f9

    ld [hl], $04                                  ; $473f: $36 $04
    inc hl                                        ; $4741: $23
    ld [hl], a                                    ; $4742: $77
    inc hl                                        ; $4743: $23

jr_005_4744:
    ld [hl], $05                                  ; $4744: $36 $05
    inc hl                                        ; $4746: $23
    ld [hl], a                                    ; $4747: $77
    inc hl                                        ; $4748: $23
    ld b, e                                       ; $4749: $43
    ld c, $20                                     ; $474a: $0e $20

jr_005_474c:
    ld [hl], c                                    ; $474c: $71
    inc hl                                        ; $474d: $23
    ld [hl], a                                    ; $474e: $77
    inc hl                                        ; $474f: $23
    dec b                                         ; $4750: $05
    jr nz, jr_005_474c                            ; $4751: $20 $f9

    ld [hl], $06                                  ; $4753: $36 $06
    inc hl                                        ; $4755: $23
    ld [hl], a                                    ; $4756: $77
    inc hl                                        ; $4757: $23
    dec d                                         ; $4758: $15
    jr nz, jr_005_4744                            ; $4759: $20 $e9

    ld [hl], $07                                  ; $475b: $36 $07
    inc hl                                        ; $475d: $23
    ld [hl], a                                    ; $475e: $77
    inc hl                                        ; $475f: $23
    ld b, e                                       ; $4760: $43
    ld c, $08                                     ; $4761: $0e $08

jr_005_4763:
    ld [hl], c                                    ; $4763: $71
    inc hl                                        ; $4764: $23
    ld [hl], a                                    ; $4765: $77
    inc hl                                        ; $4766: $23
    dec b                                         ; $4767: $05
    jr nz, jr_005_4763                            ; $4768: $20 $f9

    ld [hl], $09                                  ; $476a: $36 $09
    inc hl                                        ; $476c: $23
    ld [hl], a                                    ; $476d: $77
    pop hl                                        ; $476e: $e1
    pop de                                        ; $476f: $d1
    pop bc                                        ; $4770: $c1
    pop af                                        ; $4771: $f1
    ret                                           ; $4772: $c9


Call_005_4773:
    push af                                       ; $4773: $f5
    push bc                                       ; $4774: $c5
    push de                                       ; $4775: $d5
    push hl                                       ; $4776: $e5
    inc hl                                        ; $4777: $23
    ld [hl], d                                    ; $4778: $72
    inc hl                                        ; $4779: $23
    ld [hl], e                                    ; $477a: $73
    inc hl                                        ; $477b: $23
    ld [hl], b                                    ; $477c: $70
    inc hl                                        ; $477d: $23
    ld [hl], c                                    ; $477e: $71
    inc hl                                        ; $477f: $23
    ld e, b                                       ; $4780: $58
    ld d, c                                       ; $4781: $51
    dec d                                         ; $4782: $15
    dec d                                         ; $4783: $15
    dec e                                         ; $4784: $1d
    dec e                                         ; $4785: $1d
    push de                                       ; $4786: $d5
    xor a                                         ; $4787: $af

jr_005_4788:
    bit 0, d                                      ; $4788: $cb $42
    jr nz, jr_005_478d                            ; $478a: $20 $01

    add e                                         ; $478c: $83

jr_005_478d:
    dec d                                         ; $478d: $15
    jr nz, jr_005_4788                            ; $478e: $20 $f8

    ld e, a                                       ; $4790: $5f
    ld d, $80                                     ; $4791: $16 $80
    ld a, [$d821]                                 ; $4793: $fa $21 $d8
    or a                                          ; $4796: $b7
    jr z, jr_005_479e                             ; $4797: $28 $05

    ld a, [$c36e]                                 ; $4799: $fa $6e $c3
    add d                                         ; $479c: $82
    ld d, a                                       ; $479d: $57

jr_005_479e:
    ld a, e                                       ; $479e: $7b
    add d                                         ; $479f: $82
    ld [$d86b], a                                 ; $47a0: $ea $6b $d8
    pop de                                        ; $47a3: $d1
    ld a, [$d84d]                                 ; $47a4: $fa $4d $d8
    ld [hl], $02                                  ; $47a7: $36 $02
    inc hl                                        ; $47a9: $23
    ld [hl], a                                    ; $47aa: $77
    inc hl                                        ; $47ab: $23
    ld b, e                                       ; $47ac: $43
    ld c, $03                                     ; $47ad: $0e $03

jr_005_47af:
    ld [hl], c                                    ; $47af: $71
    inc hl                                        ; $47b0: $23
    ld [hl], a                                    ; $47b1: $77
    inc hl                                        ; $47b2: $23
    dec b                                         ; $47b3: $05
    jr nz, jr_005_47af                            ; $47b4: $20 $f9

    ld [hl], $04                                  ; $47b6: $36 $04
    inc hl                                        ; $47b8: $23
    ld [hl], a                                    ; $47b9: $77
    inc hl                                        ; $47ba: $23

jr_005_47bb:
    ld [hl], $05                                  ; $47bb: $36 $05
    inc hl                                        ; $47bd: $23
    ld [hl], a                                    ; $47be: $77
    inc hl                                        ; $47bf: $23
    ld b, e                                       ; $47c0: $43
    bit 0, d                                      ; $47c1: $cb $42
    jr z, jr_005_47ef                             ; $47c3: $28 $2a

    push af                                       ; $47c5: $f5
    push de                                       ; $47c6: $d5
    sra d                                         ; $47c7: $cb $2a
    inc d                                         ; $47c9: $14
    ld a, [$d86b]                                 ; $47ca: $fa $6b $d8

jr_005_47cd:
    dec d                                         ; $47cd: $15
    jr z, jr_005_47d3                             ; $47ce: $28 $03

    sub e                                         ; $47d0: $93
    jr jr_005_47cd                                ; $47d1: $18 $fa

jr_005_47d3:
    ld c, a                                       ; $47d3: $4f
    pop de                                        ; $47d4: $d1
    pop af                                        ; $47d5: $f1
    ld a, [$d86c]                                 ; $47d6: $fa $6c $d8
    or a                                          ; $47d9: $b7
    ld a, [$d84d]                                 ; $47da: $fa $4d $d8
    jr z, jr_005_47e5                             ; $47dd: $28 $06

    ld [hl], $20                                  ; $47df: $36 $20
    inc hl                                        ; $47e1: $23
    ld [hl], a                                    ; $47e2: $77
    inc hl                                        ; $47e3: $23
    dec b                                         ; $47e4: $05

jr_005_47e5:
    ld [hl], c                                    ; $47e5: $71
    inc c                                         ; $47e6: $0c
    inc hl                                        ; $47e7: $23
    ld [hl], a                                    ; $47e8: $77
    inc hl                                        ; $47e9: $23
    dec b                                         ; $47ea: $05
    jr nz, jr_005_47e5                            ; $47eb: $20 $f8

    jr jr_005_47f8                                ; $47ed: $18 $09

jr_005_47ef:
    ld c, $20                                     ; $47ef: $0e $20

jr_005_47f1:
    ld [hl], c                                    ; $47f1: $71
    inc hl                                        ; $47f2: $23
    ld [hl], a                                    ; $47f3: $77
    inc hl                                        ; $47f4: $23
    dec b                                         ; $47f5: $05
    jr nz, jr_005_47f1                            ; $47f6: $20 $f9

jr_005_47f8:
    ld [hl], $06                                  ; $47f8: $36 $06
    inc hl                                        ; $47fa: $23
    ld [hl], a                                    ; $47fb: $77
    inc hl                                        ; $47fc: $23
    dec d                                         ; $47fd: $15
    jr nz, jr_005_47bb                            ; $47fe: $20 $bb

    ld [hl], $07                                  ; $4800: $36 $07
    inc hl                                        ; $4802: $23
    ld [hl], a                                    ; $4803: $77
    inc hl                                        ; $4804: $23
    ld b, e                                       ; $4805: $43
    ld c, $08                                     ; $4806: $0e $08

jr_005_4808:
    ld [hl], c                                    ; $4808: $71
    inc hl                                        ; $4809: $23
    ld [hl], a                                    ; $480a: $77
    inc hl                                        ; $480b: $23
    dec b                                         ; $480c: $05
    jr nz, jr_005_4808                            ; $480d: $20 $f9

    ld [hl], $09                                  ; $480f: $36 $09
    inc hl                                        ; $4811: $23
    ld [hl], a                                    ; $4812: $77
    pop hl                                        ; $4813: $e1
    pop de                                        ; $4814: $d1
    pop bc                                        ; $4815: $c1
    pop af                                        ; $4816: $f1
    ret                                           ; $4817: $c9


Call_005_4818:
    push af                                       ; $4818: $f5
    push bc                                       ; $4819: $c5
    push de                                       ; $481a: $d5
    push hl                                       ; $481b: $e5
    call Call_005_60b0                            ; $481c: $cd $b0 $60
    push hl                                       ; $481f: $e5
    ld a, [hl+]                                   ; $4820: $2a
    ld d, [hl]                                    ; $4821: $56
    inc hl                                        ; $4822: $23
    ld e, [hl]                                    ; $4823: $5e
    inc hl                                        ; $4824: $23
    ld b, [hl]                                    ; $4825: $46
    inc hl                                        ; $4826: $23
    ld c, [hl]                                    ; $4827: $4e
    pop hl                                        ; $4828: $e1
    call Call_005_4773                            ; $4829: $cd $73 $47
    pop hl                                        ; $482c: $e1
    pop de                                        ; $482d: $d1
    pop bc                                        ; $482e: $c1
    pop af                                        ; $482f: $f1
    ret                                           ; $4830: $c9


Call_005_4831:
    push af                                       ; $4831: $f5
    push bc                                       ; $4832: $c5
    push de                                       ; $4833: $d5
    push hl                                       ; $4834: $e5
    ld a, [hl+]                                   ; $4835: $2a
    ld d, [hl]                                    ; $4836: $56
    inc hl                                        ; $4837: $23
    ld e, [hl]                                    ; $4838: $5e
    inc hl                                        ; $4839: $23
    ld b, [hl]                                    ; $483a: $46
    inc hl                                        ; $483b: $23
    ld c, [hl]                                    ; $483c: $4e
    inc hl                                        ; $483d: $23
    push af                                       ; $483e: $f5

jr_005_483f:
    push de                                       ; $483f: $d5
    push bc                                       ; $4840: $c5
    call Call_005_414f                            ; $4841: $cd $4f $41

jr_005_4844:
    ld a, [hl]                                    ; $4844: $7e
    inc hl                                        ; $4845: $23
    ld [de], a                                    ; $4846: $12
    ld a, [hl]                                    ; $4847: $7e
    inc hl                                        ; $4848: $23
    push hl                                       ; $4849: $e5
    ld hl, $0400                                  ; $484a: $21 $00 $04
    add hl, de                                    ; $484d: $19
    ld [hl], a                                    ; $484e: $77
    ld a, e                                       ; $484f: $7b
    and $1f                                       ; $4850: $e6 $1f
    cp $1f                                        ; $4852: $fe $1f
    jr nz, jr_005_485c                            ; $4854: $20 $06

    ld hl, $ffe0                                  ; $4856: $21 $e0 $ff
    add hl, de                                    ; $4859: $19
    ld d, h                                       ; $485a: $54
    ld e, l                                       ; $485b: $5d

jr_005_485c:
    inc de                                        ; $485c: $13
    pop hl                                        ; $485d: $e1
    dec b                                         ; $485e: $05
    jr nz, jr_005_4844                            ; $485f: $20 $e3

    ld a, c                                       ; $4861: $79
    pop bc                                        ; $4862: $c1
    ld c, a                                       ; $4863: $4f
    pop de                                        ; $4864: $d1
    inc e                                         ; $4865: $1c
    dec c                                         ; $4866: $0d
    jr nz, jr_005_483f                            ; $4867: $20 $d6

    pop af                                        ; $4869: $f1
    pop hl                                        ; $486a: $e1
    pop de                                        ; $486b: $d1
    pop bc                                        ; $486c: $c1
    pop af                                        ; $486d: $f1
    ret                                           ; $486e: $c9


    push af                                       ; $486f: $f5
    push bc                                       ; $4870: $c5
    push de                                       ; $4871: $d5
    ld a, [hl+]                                   ; $4872: $2a
    ld d, [hl]                                    ; $4873: $56
    inc hl                                        ; $4874: $23
    ld e, [hl]                                    ; $4875: $5e
    inc hl                                        ; $4876: $23
    ld b, [hl]                                    ; $4877: $46
    inc hl                                        ; $4878: $23
    ld c, [hl]                                    ; $4879: $4e
    inc hl                                        ; $487a: $23

jr_005_487b:
    push de                                       ; $487b: $d5
    push bc                                       ; $487c: $c5

jr_005_487d:
    ld a, $00                                     ; $487d: $3e $00
    push de                                       ; $487f: $d5
    call Call_005_414f                            ; $4880: $cd $4f $41
    ld [de], a                                    ; $4883: $12
    pop de                                        ; $4884: $d1
    dec b                                         ; $4885: $05
    jr z, jr_005_488b                             ; $4886: $28 $03

    inc d                                         ; $4888: $14
    jr jr_005_487d                                ; $4889: $18 $f2

jr_005_488b:
    ld a, c                                       ; $488b: $79
    pop bc                                        ; $488c: $c1
    ld c, a                                       ; $488d: $4f
    ld a, e                                       ; $488e: $7b
    pop de                                        ; $488f: $d1
    ld e, a                                       ; $4890: $5f
    inc e                                         ; $4891: $1c
    dec c                                         ; $4892: $0d
    jr nz, jr_005_487b                            ; $4893: $20 $e6

    pop de                                        ; $4895: $d1
    pop bc                                        ; $4896: $c1
    pop af                                        ; $4897: $f1
    ret                                           ; $4898: $c9


Call_005_4899:
    push af                                       ; $4899: $f5
    ld a, $05                                     ; $489a: $3e $05
    ldh [$96], a                                  ; $489c: $e0 $96
    ldh [rSVBK], a                                ; $489e: $e0 $70
    pop af                                        ; $48a0: $f1
    push bc                                       ; $48a1: $c5
    ld b, a                                       ; $48a2: $47
    ld a, [$d822]                                 ; $48a3: $fa $22 $d8
    cp $06                                        ; $48a6: $fe $06
    ld a, b                                       ; $48a8: $78
    pop bc                                        ; $48a9: $c1
    jr c, jr_005_48b0                             ; $48aa: $38 $04

    ld a, $ff                                     ; $48ac: $3e $ff
    jr jr_005_48cd                                ; $48ae: $18 $1d

jr_005_48b0:
    call Call_005_468f                            ; $48b0: $cd $8f $46
    push bc                                       ; $48b3: $c5
    ld b, a                                       ; $48b4: $47
    ld a, h                                       ; $48b5: $7c
    cp $ff                                        ; $48b6: $fe $ff
    ld a, b                                       ; $48b8: $78
    pop bc                                        ; $48b9: $c1
    jr z, jr_005_48cb                             ; $48ba: $28 $0f

    ld a, $00                                     ; $48bc: $3e $00
    call Call_005_4773                            ; $48be: $cd $73 $47
    ld a, [$d822]                                 ; $48c1: $fa $22 $d8
    inc a                                         ; $48c4: $3c
    ld [$d822], a                                 ; $48c5: $ea $22 $d8
    dec a                                         ; $48c8: $3d
    jr jr_005_48cd                                ; $48c9: $18 $02

jr_005_48cb:
    ld a, $ff                                     ; $48cb: $3e $ff

jr_005_48cd:
    ret                                           ; $48cd: $c9


Call_005_48ce:
    push hl                                       ; $48ce: $e5
    push bc                                       ; $48cf: $c5
    push de                                       ; $48d0: $d5
    push af                                       ; $48d1: $f5
    ld b, a                                       ; $48d2: $47
    call Call_005_4a85                            ; $48d3: $cd $85 $4a
    cp $ff                                        ; $48d6: $fe $ff
    jr z, jr_005_4944                             ; $48d8: $28 $6a

    ld a, b                                       ; $48da: $78
    sla a                                         ; $48db: $cb $27
    sla a                                         ; $48dd: $cb $27
    ld hl, $d800                                  ; $48df: $21 $00 $d8
    add l                                         ; $48e2: $85
    ld l, a                                       ; $48e3: $6f
    ld a, $00                                     ; $48e4: $3e $00
    adc h                                         ; $48e6: $8c
    ld h, a                                       ; $48e7: $67
    push hl                                       ; $48e8: $e5
    ld e, [hl]                                    ; $48e9: $5e
    inc hl                                        ; $48ea: $23
    ld d, [hl]                                    ; $48eb: $56
    pop hl                                        ; $48ec: $e1
    push hl                                       ; $48ed: $e5
    xor a                                         ; $48ee: $af
    ld [hl+], a                                   ; $48ef: $22
    ld [hl+], a                                   ; $48f0: $22
    ld [hl], $03                                  ; $48f1: $36 $03
    inc hl                                        ; $48f3: $23
    ld [hl+], a                                   ; $48f4: $22
    pop hl                                        ; $48f5: $e1
    ld a, [$d822]                                 ; $48f6: $fa $22 $d8
    dec a                                         ; $48f9: $3d
    ld [$d822], a                                 ; $48fa: $ea $22 $d8
    ld a, [de]                                    ; $48fd: $1a
    and $02                                       ; $48fe: $e6 $02
    jr z, jr_005_4944                             ; $4900: $28 $42

    ld a, [$d83e]                                 ; $4902: $fa $3e $d8
    or a                                          ; $4905: $b7
    jr z, jr_005_4918                             ; $4906: $28 $10

    dec a                                         ; $4908: $3d
    ld hl, $d832                                  ; $4909: $21 $32 $d8
    sla a                                         ; $490c: $cb $27
    ld c, a                                       ; $490e: $4f
    ld b, $00                                     ; $490f: $06 $00
    add hl, bc                                    ; $4911: $09
    ld a, [hl]                                    ; $4912: $7e
    and $0f                                       ; $4913: $e6 $0f
    ld [$d830], a                                 ; $4915: $ea $30 $d8

jr_005_4918:
    ld a, [$d83e]                                 ; $4918: $fa $3e $d8
    dec a                                         ; $491b: $3d
    ld [$d83e], a                                 ; $491c: $ea $3e $d8
    cp $ff                                        ; $491f: $fe $ff
    jr z, jr_005_4944                             ; $4921: $28 $21

    ld a, [$d83e]                                 ; $4923: $fa $3e $d8
    ld hl, $d832                                  ; $4926: $21 $32 $d8
    sla a                                         ; $4929: $cb $27
    ld c, a                                       ; $492b: $4f
    ld b, $00                                     ; $492c: $06 $00
    add hl, bc                                    ; $492e: $09
    ld a, [hl]                                    ; $492f: $7e
    sra a                                         ; $4930: $cb $2f
    sra a                                         ; $4932: $cb $2f
    sra a                                         ; $4934: $cb $2f
    sra a                                         ; $4936: $cb $2f
    and $0f                                       ; $4938: $e6 $0f
    ld [$d831], a                                 ; $493a: $ea $31 $d8
    inc hl                                        ; $493d: $23
    ld a, [hl]                                    ; $493e: $7e
    and $0f                                       ; $493f: $e6 $0f
    ld [$d82f], a                                 ; $4941: $ea $2f $d8

jr_005_4944:
    pop af                                        ; $4944: $f1
    pop de                                        ; $4945: $d1
    pop bc                                        ; $4946: $c1
    pop hl                                        ; $4947: $e1
    ret                                           ; $4948: $c9


Call_005_4949:
    push af                                       ; $4949: $f5
    push bc                                       ; $494a: $c5
    push de                                       ; $494b: $d5
    push hl                                       ; $494c: $e5
    xor a                                         ; $494d: $af
    ld [$d83f], a                                 ; $494e: $ea $3f $d8
    ld a, $05                                     ; $4951: $3e $05
    ldh [$96], a                                  ; $4953: $e0 $96
    ldh [rSVBK], a                                ; $4955: $e0 $70
    ld c, $01                                     ; $4957: $0e $01

Jump_005_4959:
    ld a, $06                                     ; $4959: $3e $06
    ld b, a                                       ; $495b: $47
    ld hl, $d800                                  ; $495c: $21 $00 $d8
    inc hl                                        ; $495f: $23
    inc hl                                        ; $4960: $23

Jump_005_4961:
    ld a, [hl]                                    ; $4961: $7e
    sra a                                         ; $4962: $cb $2f
    res 7, a                                      ; $4964: $cb $bf
    sra a                                         ; $4966: $cb $2f
    sra a                                         ; $4968: $cb $2f
    sra a                                         ; $496a: $cb $2f
    sra a                                         ; $496c: $cb $2f
    cp c                                          ; $496e: $b9
    jp nz, Jump_005_4a15                          ; $496f: $c2 $15 $4a

    ld d, a                                       ; $4972: $57
    ld a, $06                                     ; $4973: $3e $06
    sub b                                         ; $4975: $90
    ld [$d821], a                                 ; $4976: $ea $21 $d8
    push hl                                       ; $4979: $e5
    push bc                                       ; $497a: $c5
    ld h, $00                                     ; $497b: $26 $00
    ld l, a                                       ; $497d: $6f
    add hl, hl                                    ; $497e: $29
    add hl, hl                                    ; $497f: $29
    ld bc, $d800                                  ; $4980: $01 $00 $d8
    add hl, bc                                    ; $4983: $09
    inc hl                                        ; $4984: $23
    ld a, [hl]                                    ; $4985: $7e
    ld b, a                                       ; $4986: $47
    and $0f                                       ; $4987: $e6 $0f
    or $d0                                        ; $4989: $f6 $d0
    ld [hl], a                                    ; $498b: $77
    ld a, b                                       ; $498c: $78
    pop bc                                        ; $498d: $c1
    pop hl                                        ; $498e: $e1
    and $f0                                       ; $498f: $e6 $f0
    cp $c0                                        ; $4991: $fe $c0
    jr nz, jr_005_49ad                            ; $4993: $20 $18

    ld a, $01                                     ; $4995: $3e $01
    ld [$d85e], a                                 ; $4997: $ea $5e $d8
    ld a, [$d821]                                 ; $499a: $fa $21 $d8
    call Call_005_4384                            ; $499d: $cd $84 $43
    xor a                                         ; $49a0: $af
    ld [$d85e], a                                 ; $49a1: $ea $5e $d8
    ld a, [$d821]                                 ; $49a4: $fa $21 $d8
    call Call_005_48ce                            ; $49a7: $cd $ce $48
    jp Jump_005_4a15                              ; $49aa: $c3 $15 $4a


jr_005_49ad:
    ld a, [$d821]                                 ; $49ad: $fa $21 $d8
    ld e, a                                       ; $49b0: $5f
    ld a, [$d824]                                 ; $49b1: $fa $24 $d8
    cp e                                          ; $49b4: $bb
    jr nz, jr_005_49cb                            ; $49b5: $20 $14

    call Call_005_5b03                            ; $49b7: $cd $03 $5b
    ld a, [$d85f]                                 ; $49ba: $fa $5f $d8
    or a                                          ; $49bd: $b7
    jr nz, jr_005_49cb                            ; $49be: $20 $0b

    push af                                       ; $49c0: $f5
    ld a, [$d83f]                                 ; $49c1: $fa $3f $d8
    inc a                                         ; $49c4: $3c
    ld [$d83f], a                                 ; $49c5: $ea $3f $d8
    pop af                                        ; $49c8: $f1
    jr jr_005_4a15                                ; $49c9: $18 $4a

jr_005_49cb:
    ld a, d                                       ; $49cb: $7a
    dec hl                                        ; $49cc: $2b
    ld d, [hl]                                    ; $49cd: $56
    dec hl                                        ; $49ce: $2b
    ld e, [hl]                                    ; $49cf: $5e
    push hl                                       ; $49d0: $e5
    ld h, d                                       ; $49d1: $62
    ld l, e                                       ; $49d2: $6b
    call Call_005_4831                            ; $49d3: $cd $31 $48
    ld a, [$d821]                                 ; $49d6: $fa $21 $d8
    call Call_005_4384                            ; $49d9: $cd $84 $43
    ld a, [$d83f]                                 ; $49dc: $fa $3f $d8
    inc a                                         ; $49df: $3c
    ld [$d83f], a                                 ; $49e0: $ea $3f $d8
    ld a, [hl+]                                   ; $49e3: $2a
    ld d, [hl]                                    ; $49e4: $56
    inc d                                         ; $49e5: $14
    and $02                                       ; $49e6: $e6 $02
    jr z, jr_005_49eb                             ; $49e8: $28 $01

    inc d                                         ; $49ea: $14

jr_005_49eb:
    inc hl                                        ; $49eb: $23
    ld e, [hl]                                    ; $49ec: $5e
    inc e                                         ; $49ed: $1c
    pop hl                                        ; $49ee: $e1
    inc hl                                        ; $49ef: $23
    inc hl                                        ; $49f0: $23
    ld a, [hl]                                    ; $49f1: $7e
    and $03                                       ; $49f2: $e6 $03
    cp $03                                        ; $49f4: $fe $03
    jr z, jr_005_4a15                             ; $49f6: $28 $1d

    push hl                                       ; $49f8: $e5
    ld a, [hl+]                                   ; $49f9: $2a
    ld l, [hl]                                    ; $49fa: $6e
    ld h, a                                       ; $49fb: $67
    call Call_005_6179                            ; $49fc: $cd $79 $61
    ld hl, $c600                                  ; $49ff: $21 $00 $c6
    call Call_005_5235                            ; $4a02: $cd $35 $52
    pop hl                                        ; $4a05: $e1
    ld a, $01                                     ; $4a06: $3e $01
    ld [$d85e], a                                 ; $4a08: $ea $5e $d8
    ld a, [$d821]                                 ; $4a0b: $fa $21 $d8
    call Call_005_4384                            ; $4a0e: $cd $84 $43
    xor a                                         ; $4a11: $af
    ld [$d85e], a                                 ; $4a12: $ea $5e $d8

Jump_005_4a15:
jr_005_4a15:
    ld de, $0004                                  ; $4a15: $11 $04 $00
    add hl, de                                    ; $4a18: $19
    dec b                                         ; $4a19: $05
    jp nz, Jump_005_4961                          ; $4a1a: $c2 $61 $49

    inc c                                         ; $4a1d: $0c
    ld a, $08                                     ; $4a1e: $3e $08
    cp c                                          ; $4a20: $b9
    jp nc, Jump_005_4959                          ; $4a21: $d2 $59 $49

    ld a, [$d83f]                                 ; $4a24: $fa $3f $d8
    ld [$d840], a                                 ; $4a27: $ea $40 $d8
    pop hl                                        ; $4a2a: $e1
    pop de                                        ; $4a2b: $d1
    pop bc                                        ; $4a2c: $c1
    pop af                                        ; $4a2d: $f1
    ret                                           ; $4a2e: $c9


Call_005_4a2f:
    push de                                       ; $4a2f: $d5
    push bc                                       ; $4a30: $c5
    push hl                                       ; $4a31: $e5
    add sp, -$01                                  ; $4a32: $e8 $ff
    ld hl, sp+$00                                 ; $4a34: $f8 $00
    ld [hl], a                                    ; $4a36: $77
    ld a, $05                                     ; $4a37: $3e $05
    ldh [$96], a                                  ; $4a39: $e0 $96
    ldh [rSVBK], a                                ; $4a3b: $e0 $70
    call Call_005_4a61                            ; $4a3d: $cd $61 $4a
    cp $ff                                        ; $4a40: $fe $ff
    jr z, jr_005_4a5b                             ; $4a42: $28 $17

    push de                                       ; $4a44: $d5
    ld de, $011d                                  ; $4a45: $11 $1d $01
    ld hl, $d900                                  ; $4a48: $21 $00 $d9
    or a                                          ; $4a4b: $b7
    jr z, jr_005_4a52                             ; $4a4c: $28 $04

jr_005_4a4e:
    add hl, de                                    ; $4a4e: $19
    dec a                                         ; $4a4f: $3d
    jr nz, jr_005_4a4e                            ; $4a50: $20 $fc

jr_005_4a52:
    pop de                                        ; $4a52: $d1
    push hl                                       ; $4a53: $e5
    ld hl, sp+$02                                 ; $4a54: $f8 $02
    ld a, [hl]                                    ; $4a56: $7e
    pop hl                                        ; $4a57: $e1
    call Call_005_4899                            ; $4a58: $cd $99 $48

jr_005_4a5b:
    add sp, $01                                   ; $4a5b: $e8 $01
    pop hl                                        ; $4a5d: $e1
    pop bc                                        ; $4a5e: $c1
    pop de                                        ; $4a5f: $d1
    ret                                           ; $4a60: $c9


Call_005_4a61:
    push hl                                       ; $4a61: $e5
    push bc                                       ; $4a62: $c5
    push de                                       ; $4a63: $d5
    ld b, $07                                     ; $4a64: $06 $07
    ld a, [$d823]                                 ; $4a66: $fa $23 $d8
    ld c, $01                                     ; $4a69: $0e $01

jr_005_4a6b:
    rrca                                          ; $4a6b: $0f
    jr nc, jr_005_4a77                            ; $4a6c: $30 $09

    sla c                                         ; $4a6e: $cb $21
    dec b                                         ; $4a70: $05
    jr nz, jr_005_4a6b                            ; $4a71: $20 $f8

    ld a, $ff                                     ; $4a73: $3e $ff
    jr jr_005_4a81                                ; $4a75: $18 $0a

jr_005_4a77:
    ld a, [$d823]                                 ; $4a77: $fa $23 $d8
    or c                                          ; $4a7a: $b1
    ld [$d823], a                                 ; $4a7b: $ea $23 $d8
    ld a, $07                                     ; $4a7e: $3e $07
    sub b                                         ; $4a80: $90

jr_005_4a81:
    pop de                                        ; $4a81: $d1
    pop bc                                        ; $4a82: $c1
    pop hl                                        ; $4a83: $e1
    ret                                           ; $4a84: $c9


Call_005_4a85:
    push bc                                       ; $4a85: $c5
    push de                                       ; $4a86: $d5
    ld d, a                                       ; $4a87: $57
    cp $06                                        ; $4a88: $fe $06
    ld a, $ff                                     ; $4a8a: $3e $ff
    jr nc, jr_005_4aae                            ; $4a8c: $30 $20

    ld c, d                                       ; $4a8e: $4a
    inc c                                         ; $4a8f: $0c
    ld a, $01                                     ; $4a90: $3e $01

jr_005_4a92:
    dec c                                         ; $4a92: $0d
    jr z, jr_005_4a99                             ; $4a93: $28 $04

    sla a                                         ; $4a95: $cb $27
    jr jr_005_4a92                                ; $4a97: $18 $f9

jr_005_4a99:
    ld b, a                                       ; $4a99: $47
    ld a, [$d823]                                 ; $4a9a: $fa $23 $d8
    and b                                         ; $4a9d: $a0
    ld a, $ff                                     ; $4a9e: $3e $ff
    jr z, jr_005_4aae                             ; $4aa0: $28 $0c

    ld a, b                                       ; $4aa2: $78
    xor $ff                                       ; $4aa3: $ee $ff
    ld b, a                                       ; $4aa5: $47
    ld a, [$d823]                                 ; $4aa6: $fa $23 $d8
    and b                                         ; $4aa9: $a0
    ld [$d823], a                                 ; $4aaa: $ea $23 $d8
    ld a, d                                       ; $4aad: $7a

jr_005_4aae:
    pop de                                        ; $4aae: $d1
    pop bc                                        ; $4aaf: $c1
    ret                                           ; $4ab0: $c9


Call_005_4ab1:
    push af                                       ; $4ab1: $f5
    ldh a, [$8b]                                  ; $4ab2: $f0 $8b
    add $04                                       ; $4ab4: $c6 $04
    sra a                                         ; $4ab6: $cb $2f
    res 7, a                                      ; $4ab8: $cb $bf
    sra a                                         ; $4aba: $cb $2f
    sra a                                         ; $4abc: $cb $2f
    and $1f                                       ; $4abe: $e6 $1f
    ld d, a                                       ; $4ac0: $57
    ldh a, [$8a]                                  ; $4ac1: $f0 $8a
    add $04                                       ; $4ac3: $c6 $04
    sra a                                         ; $4ac5: $cb $2f
    res 7, a                                      ; $4ac7: $cb $bf
    sra a                                         ; $4ac9: $cb $2f
    sra a                                         ; $4acb: $cb $2f
    and $1f                                       ; $4acd: $e6 $1f
    ld e, a                                       ; $4acf: $5f
    pop af                                        ; $4ad0: $f1
    ret                                           ; $4ad1: $c9


    push hl                                       ; $4ad2: $e5
    ld h, a                                       ; $4ad3: $67
    ldh a, [$96]                                  ; $4ad4: $f0 $96
    push af                                       ; $4ad6: $f5
    ld a, $05                                     ; $4ad7: $3e $05
    ldh [$96], a                                  ; $4ad9: $e0 $96
    ldh [rSVBK], a                                ; $4adb: $e0 $70
    ld a, h                                       ; $4add: $7c
    ld [$d84d], a                                 ; $4ade: $ea $4d $d8
    call Call_005_4af2                            ; $4ae1: $cd $f2 $4a
    ld h, a                                       ; $4ae4: $67
    ld a, $80                                     ; $4ae5: $3e $80
    ld [$d84d], a                                 ; $4ae7: $ea $4d $d8
    pop af                                        ; $4aea: $f1
    ldh [$96], a                                  ; $4aeb: $e0 $96
    ldh [rSVBK], a                                ; $4aed: $e0 $70
    ld a, h                                       ; $4aef: $7c
    pop hl                                        ; $4af0: $e1
    ret                                           ; $4af1: $c9


Call_005_4af2:
    push bc                                       ; $4af2: $c5
    push de                                       ; $4af3: $d5
    push hl                                       ; $4af4: $e5
    ld a, $05                                     ; $4af5: $3e $05
    ldh [$96], a                                  ; $4af7: $e0 $96
    ldh [rSVBK], a                                ; $4af9: $e0 $70
    call Call_005_4624                            ; $4afb: $cd $24 $46
    ld h, d                                       ; $4afe: $62
    ld l, e                                       ; $4aff: $6b
    call Call_005_4ab1                            ; $4b00: $cd $b1 $4a
    ld a, h                                       ; $4b03: $7c
    add d                                         ; $4b04: $82
    and $1f                                       ; $4b05: $e6 $1f
    ld d, a                                       ; $4b07: $57
    ld a, l                                       ; $4b08: $7d
    add e                                         ; $4b09: $83
    and $1f                                       ; $4b0a: $e6 $1f
    ld e, a                                       ; $4b0c: $5f
    ld a, $02                                     ; $4b0d: $3e $02
    call Call_005_4a2f                            ; $4b0f: $cd $2f $4a
    ld a, [$d820]                                 ; $4b12: $fa $20 $d8
    cp $ff                                        ; $4b15: $fe $ff
    jr z, jr_005_4b1c                             ; $4b17: $28 $03

    ld a, [$d820]                                 ; $4b19: $fa $20 $d8

jr_005_4b1c:
    pop hl                                        ; $4b1c: $e1
    pop de                                        ; $4b1d: $d1
    pop bc                                        ; $4b1e: $c1
    ret                                           ; $4b1f: $c9


Call_005_4b20:
    push bc                                       ; $4b20: $c5
    push de                                       ; $4b21: $d5
    push hl                                       ; $4b22: $e5
    ld a, $05                                     ; $4b23: $3e $05
    ldh [$96], a                                  ; $4b25: $e0 $96
    ldh [rSVBK], a                                ; $4b27: $e0 $70
    call Call_005_4624                            ; $4b29: $cd $24 $46
    ld a, b                                       ; $4b2c: $78
    ld [$d827], a                                 ; $4b2d: $ea $27 $d8
    ld a, c                                       ; $4b30: $79
    ld [$d828], a                                 ; $4b31: $ea $28 $d8
    push hl                                       ; $4b34: $e5
    ld h, d                                       ; $4b35: $62
    ld l, e                                       ; $4b36: $6b
    call Call_005_4ab1                            ; $4b37: $cd $b1 $4a
    ld a, h                                       ; $4b3a: $7c
    add d                                         ; $4b3b: $82
    and $1f                                       ; $4b3c: $e6 $1f
    ld d, a                                       ; $4b3e: $57
    ld a, l                                       ; $4b3f: $7d
    add e                                         ; $4b40: $83
    and $1f                                       ; $4b41: $e6 $1f
    ld e, a                                       ; $4b43: $5f
    pop hl                                        ; $4b44: $e1
    ld a, d                                       ; $4b45: $7a
    ld [$d825], a                                 ; $4b46: $ea $25 $d8
    ld a, e                                       ; $4b49: $7b
    ld [$d826], a                                 ; $4b4a: $ea $26 $d8
    ld a, $02                                     ; $4b4d: $3e $02
    call Call_005_4a2f                            ; $4b4f: $cd $2f $4a
    ld a, [$d820]                                 ; $4b52: $fa $20 $d8
    cp $ff                                        ; $4b55: $fe $ff
    jr z, jr_005_4b5f                             ; $4b57: $28 $06

    ld a, [$d820]                                 ; $4b59: $fa $20 $d8
    ld [$d824], a                                 ; $4b5c: $ea $24 $d8

jr_005_4b5f:
    pop hl                                        ; $4b5f: $e1
    pop de                                        ; $4b60: $d1
    pop bc                                        ; $4b61: $c1
    ret                                           ; $4b62: $c9


    push bc                                       ; $4b63: $c5
    push de                                       ; $4b64: $d5
    push hl                                       ; $4b65: $e5
    ld a, $05                                     ; $4b66: $3e $05
    ldh [$96], a                                  ; $4b68: $e0 $96
    ldh [rSVBK], a                                ; $4b6a: $e0 $70
    ld a, [$c372]                                 ; $4b6c: $fa $72 $c3
    xor $08                                       ; $4b6f: $ee $08
    or $80                                        ; $4b71: $f6 $80
    ld [$d84d], a                                 ; $4b73: $ea $4d $d8
    call Call_005_465b                            ; $4b76: $cd $5b $46
    ld a, b                                       ; $4b79: $78
    ld [$d827], a                                 ; $4b7a: $ea $27 $d8
    ld a, c                                       ; $4b7d: $79
    ld [$d828], a                                 ; $4b7e: $ea $28 $d8
    push hl                                       ; $4b81: $e5
    ld h, d                                       ; $4b82: $62
    ld l, e                                       ; $4b83: $6b
    call Call_005_4ab1                            ; $4b84: $cd $b1 $4a
    ld a, h                                       ; $4b87: $7c
    add d                                         ; $4b88: $82
    and $1f                                       ; $4b89: $e6 $1f
    ld d, a                                       ; $4b8b: $57
    ld a, l                                       ; $4b8c: $7d
    add e                                         ; $4b8d: $83
    and $1f                                       ; $4b8e: $e6 $1f
    ld e, a                                       ; $4b90: $5f
    pop hl                                        ; $4b91: $e1
    ld a, d                                       ; $4b92: $7a
    ld [$d825], a                                 ; $4b93: $ea $25 $d8
    ld a, e                                       ; $4b96: $7b
    ld [$d826], a                                 ; $4b97: $ea $26 $d8
    ld a, $02                                     ; $4b9a: $3e $02
    call Call_005_4a2f                            ; $4b9c: $cd $2f $4a
    ld a, [$d820]                                 ; $4b9f: $fa $20 $d8
    cp $ff                                        ; $4ba2: $fe $ff
    jr z, jr_005_4bac                             ; $4ba4: $28 $06

    ld a, [$d820]                                 ; $4ba6: $fa $20 $d8
    ld [$d824], a                                 ; $4ba9: $ea $24 $d8

jr_005_4bac:
    pop hl                                        ; $4bac: $e1
    pop de                                        ; $4bad: $d1
    pop bc                                        ; $4bae: $c1
    ret                                           ; $4baf: $c9


Call_005_4bb0:
    push bc                                       ; $4bb0: $c5
    push de                                       ; $4bb1: $d5
    push hl                                       ; $4bb2: $e5
    ld a, $05                                     ; $4bb3: $3e $05
    ldh [$96], a                                  ; $4bb5: $e0 $96
    ldh [rSVBK], a                                ; $4bb7: $e0 $70
    call Call_005_4624                            ; $4bb9: $cd $24 $46
    call Call_005_6179                            ; $4bbc: $cd $79 $61
    push hl                                       ; $4bbf: $e5
    ld h, d                                       ; $4bc0: $62
    ld l, e                                       ; $4bc1: $6b
    call Call_005_4ab1                            ; $4bc2: $cd $b1 $4a
    ld a, h                                       ; $4bc5: $7c
    add d                                         ; $4bc6: $82
    and $1f                                       ; $4bc7: $e6 $1f
    ld d, a                                       ; $4bc9: $57
    ld a, l                                       ; $4bca: $7d
    add e                                         ; $4bcb: $83
    and $1f                                       ; $4bcc: $e6 $1f
    ld e, a                                       ; $4bce: $5f
    pop hl                                        ; $4bcf: $e1
    call Call_005_5c3b                            ; $4bd0: $cd $3b $5c
    ld a, c                                       ; $4bd3: $79
    dec a                                         ; $4bd4: $3d
    sra a                                         ; $4bd5: $cb $2f
    ld [$d831], a                                 ; $4bd7: $ea $31 $d8
    ld a, $02                                     ; $4bda: $3e $02
    ld a, $01                                     ; $4bdc: $3e $01
    ld [$d86c], a                                 ; $4bde: $ea $6c $d8
    call Call_005_4a2f                            ; $4be1: $cd $2f $4a
    ld a, [$d820]                                 ; $4be4: $fa $20 $d8
    push af                                       ; $4be7: $f5
    xor a                                         ; $4be8: $af
    ld [$d86c], a                                 ; $4be9: $ea $6c $d8
    pop af                                        ; $4bec: $f1
    cp $ff                                        ; $4bed: $fe $ff
    jp z, Jump_005_4c46                           ; $4bef: $ca $46 $4c

    ld a, [$d820]                                 ; $4bf2: $fa $20 $d8
    ld b, a                                       ; $4bf5: $47
    call Call_005_5a51                            ; $4bf6: $cd $51 $5a
    ld a, [$d820]                                 ; $4bf9: $fa $20 $d8
    ld b, $02                                     ; $4bfc: $06 $02
    ld c, $01                                     ; $4bfe: $0e $01
    call Call_005_4c9a                            ; $4c00: $cd $9a $4c
    ld a, [$d83e]                                 ; $4c03: $fa $3e $d8
    cp $ff                                        ; $4c06: $fe $ff
    jr z, jr_005_4c1c                             ; $4c08: $28 $12

    ld hl, $d832                                  ; $4c0a: $21 $32 $d8
    sla a                                         ; $4c0d: $cb $27
    ld c, a                                       ; $4c0f: $4f
    ld b, $00                                     ; $4c10: $06 $00
    add hl, bc                                    ; $4c12: $09
    ld a, [$d830]                                 ; $4c13: $fa $30 $d8
    ld b, a                                       ; $4c16: $47
    ld a, [hl]                                    ; $4c17: $7e
    and $f0                                       ; $4c18: $e6 $f0
    or b                                          ; $4c1a: $b0
    ld [hl], a                                    ; $4c1b: $77

jr_005_4c1c:
    ld a, [$d83e]                                 ; $4c1c: $fa $3e $d8
    inc a                                         ; $4c1f: $3c
    ld [$d83e], a                                 ; $4c20: $ea $3e $d8
    ld hl, $d832                                  ; $4c23: $21 $32 $d8
    sla a                                         ; $4c26: $cb $27
    ld c, a                                       ; $4c28: $4f
    ld b, $00                                     ; $4c29: $06 $00
    add hl, bc                                    ; $4c2b: $09
    ld a, [$d831]                                 ; $4c2c: $fa $31 $d8
    sla a                                         ; $4c2f: $cb $27
    sla a                                         ; $4c31: $cb $27
    sla a                                         ; $4c33: $cb $27
    sla a                                         ; $4c35: $cb $27
    ld [hl+], a                                   ; $4c37: $22
    ld a, [$d820]                                 ; $4c38: $fa $20 $d8
    ld [$d82f], a                                 ; $4c3b: $ea $2f $d8
    ld [hl], a                                    ; $4c3e: $77
    xor a                                         ; $4c3f: $af
    ld [$d830], a                                 ; $4c40: $ea $30 $d8
    ld a, [$d820]                                 ; $4c43: $fa $20 $d8

Jump_005_4c46:
    pop hl                                        ; $4c46: $e1
    pop de                                        ; $4c47: $d1
    pop bc                                        ; $4c48: $c1
    ret                                           ; $4c49: $c9


Call_005_4c4a:
    call Call_005_4bb0                            ; $4c4a: $cd $b0 $4b
    push af                                       ; $4c4d: $f5
    push bc                                       ; $4c4e: $c5
    ld a, [$d820]                                 ; $4c4f: $fa $20 $d8
    ld b, $03                                     ; $4c52: $06 $03
    ld c, $01                                     ; $4c54: $0e $01
    call Call_005_4c9a                            ; $4c56: $cd $9a $4c
    pop bc                                        ; $4c59: $c1
    pop af                                        ; $4c5a: $f1
    ret                                           ; $4c5b: $c9


Call_005_4c5c:
    push af                                       ; $4c5c: $f5
    push bc                                       ; $4c5d: $c5
    push de                                       ; $4c5e: $d5
    push hl                                       ; $4c5f: $e5
    ld h, $00                                     ; $4c60: $26 $00
    ld l, a                                       ; $4c62: $6f
    add hl, hl                                    ; $4c63: $29
    add hl, hl                                    ; $4c64: $29
    ld bc, $d800                                  ; $4c65: $01 $00 $d8
    add hl, bc                                    ; $4c68: $09
    inc hl                                        ; $4c69: $23
    ld a, [hl]                                    ; $4c6a: $7e
    and $0f                                       ; $4c6b: $e6 $0f
    or $c0                                        ; $4c6d: $f6 $c0
    ld [hl], a                                    ; $4c6f: $77
    pop hl                                        ; $4c70: $e1
    pop de                                        ; $4c71: $d1
    pop bc                                        ; $4c72: $c1
    pop af                                        ; $4c73: $f1
    ret                                           ; $4c74: $c9


    push af                                       ; $4c75: $f5
    push bc                                       ; $4c76: $c5
    push de                                       ; $4c77: $d5
    push hl                                       ; $4c78: $e5
    ld e, a                                       ; $4c79: $5f
    ld d, $00                                     ; $4c7a: $16 $00
    sla e                                         ; $4c7c: $cb $23
    sla e                                         ; $4c7e: $cb $23
    ld hl, $d800                                  ; $4c80: $21 $00 $d8
    add hl, de                                    ; $4c83: $19
    inc hl                                        ; $4c84: $23
    inc hl                                        ; $4c85: $23
    ld a, [hl]                                    ; $4c86: $7e
    and $1f                                       ; $4c87: $e6 $1f
    sla b                                         ; $4c89: $cb $20
    sla b                                         ; $4c8b: $cb $20
    sla b                                         ; $4c8d: $cb $20
    sla b                                         ; $4c8f: $cb $20
    sla b                                         ; $4c91: $cb $20
    or b                                          ; $4c93: $b0
    ld [hl], a                                    ; $4c94: $77
    pop hl                                        ; $4c95: $e1
    pop de                                        ; $4c96: $d1
    pop bc                                        ; $4c97: $c1
    pop af                                        ; $4c98: $f1
    ret                                           ; $4c99: $c9


Call_005_4c9a:
    push af                                       ; $4c9a: $f5
    push bc                                       ; $4c9b: $c5
    push de                                       ; $4c9c: $d5
    push hl                                       ; $4c9d: $e5
    ld e, a                                       ; $4c9e: $5f
    ld d, $00                                     ; $4c9f: $16 $00
    sla e                                         ; $4ca1: $cb $23
    sla e                                         ; $4ca3: $cb $23
    ld hl, $d800                                  ; $4ca5: $21 $00 $d8
    add hl, de                                    ; $4ca8: $19
    ld e, [hl]                                    ; $4ca9: $5e
    inc hl                                        ; $4caa: $23
    ld d, [hl]                                    ; $4cab: $56
    rr c                                          ; $4cac: $cb $19
    jr nc, jr_005_4cb5                            ; $4cae: $30 $05

    ld a, [de]                                    ; $4cb0: $1a
    or b                                          ; $4cb1: $b0
    ld [de], a                                    ; $4cb2: $12
    jr jr_005_4cbc                                ; $4cb3: $18 $07

jr_005_4cb5:
    ld a, b                                       ; $4cb5: $78
    xor $ff                                       ; $4cb6: $ee $ff
    ld b, a                                       ; $4cb8: $47
    ld a, [de]                                    ; $4cb9: $1a
    and b                                         ; $4cba: $a0
    ld [de], a                                    ; $4cbb: $12

jr_005_4cbc:
    pop hl                                        ; $4cbc: $e1
    pop de                                        ; $4cbd: $d1
    pop bc                                        ; $4cbe: $c1
    pop af                                        ; $4cbf: $f1
    ret                                           ; $4cc0: $c9


Call_005_4cc1:
    push de                                       ; $4cc1: $d5
    push hl                                       ; $4cc2: $e5
    ld e, a                                       ; $4cc3: $5f
    ld d, $00                                     ; $4cc4: $16 $00
    sla e                                         ; $4cc6: $cb $23
    sla e                                         ; $4cc8: $cb $23
    ld hl, $d800                                  ; $4cca: $21 $00 $d8
    add hl, de                                    ; $4ccd: $19
    ld e, [hl]                                    ; $4cce: $5e
    inc hl                                        ; $4ccf: $23
    ld d, [hl]                                    ; $4cd0: $56
    ld a, [de]                                    ; $4cd1: $1a
    and $03                                       ; $4cd2: $e6 $03
    pop hl                                        ; $4cd4: $e1
    pop de                                        ; $4cd5: $d1
    ret                                           ; $4cd6: $c9


Call_005_4cd7:
    push bc                                       ; $4cd7: $c5
    push de                                       ; $4cd8: $d5
    push hl                                       ; $4cd9: $e5
    ldh a, [$96]                                  ; $4cda: $f0 $96
    push af                                       ; $4cdc: $f5
    ld a, $05                                     ; $4cdd: $3e $05
    ldh [$96], a                                  ; $4cdf: $e0 $96
    ldh [rSVBK], a                                ; $4ce1: $e0 $70
    xor a                                         ; $4ce3: $af
    ld [$d844], a                                 ; $4ce4: $ea $44 $d8
    ld [$d845], a                                 ; $4ce7: $ea $45 $d8
    ld a, $ff                                     ; $4cea: $3e $ff
    ld hl, $d842                                  ; $4cec: $21 $42 $d8
    ld [hl+], a                                   ; $4cef: $22
    ld [hl], a                                    ; $4cf0: $77
    ld a, [$d82f]                                 ; $4cf1: $fa $2f $d8
    sla a                                         ; $4cf4: $cb $27
    sla a                                         ; $4cf6: $cb $27
    ld c, a                                       ; $4cf8: $4f
    ld b, $00                                     ; $4cf9: $06 $00
    ld hl, $d800                                  ; $4cfb: $21 $00 $d8
    add hl, bc                                    ; $4cfe: $09
    ld c, [hl]                                    ; $4cff: $4e
    inc hl                                        ; $4d00: $23
    ld b, [hl]                                    ; $4d01: $46
    ld h, b                                       ; $4d02: $60
    ld l, c                                       ; $4d03: $69
    inc hl                                        ; $4d04: $23
    ld d, [hl]                                    ; $4d05: $56
    inc hl                                        ; $4d06: $23
    ld e, [hl]                                    ; $4d07: $5e
    inc d                                         ; $4d08: $14
    inc e                                         ; $4d09: $1c
    push af                                       ; $4d0a: $f5
    push bc                                       ; $4d0b: $c5
    push de                                       ; $4d0c: $d5
    push hl                                       ; $4d0d: $e5
    ld a, [$c3f9]                                 ; $4d0e: $fa $f9 $c3
    ld [$d830], a                                 ; $4d11: $ea $30 $d8
    xor a                                         ; $4d14: $af
    ld [$c3f9], a                                 ; $4d15: $ea $f9 $c3
    ld a, [$d830]                                 ; $4d18: $fa $30 $d8
    sla a                                         ; $4d1b: $cb $27
    add e                                         ; $4d1d: $83
    ld e, a                                       ; $4d1e: $5f
    call Call_005_414f                            ; $4d1f: $cd $4f $41
    xor a                                         ; $4d22: $af
    ld hl, $d841                                  ; $4d23: $21 $41 $d8
    ld [hl+], a                                   ; $4d26: $22
    ld [hl], e                                    ; $4d27: $73
    inc hl                                        ; $4d28: $23
    ld [hl], d                                    ; $4d29: $72
    ld a, $01                                     ; $4d2a: $3e $01
    ld hl, $4f20                                  ; $4d2c: $21 $20 $4f
    call Call_000_23e8                            ; $4d2f: $cd $e8 $23
    pop hl                                        ; $4d32: $e1
    pop de                                        ; $4d33: $d1
    pop bc                                        ; $4d34: $c1
    pop af                                        ; $4d35: $f1
    push bc                                       ; $4d36: $c5
    ld a, [$c3fc]                                 ; $4d37: $fa $fc $c3
    bit 6, a                                      ; $4d3a: $cb $77
    jr z, jr_005_4d7b                             ; $4d3c: $28 $3d

    ld a, [$c3fa]                                 ; $4d3e: $fa $fa $c3
    bit 7, a                                      ; $4d41: $cb $7f
    jr z, jr_005_4d68                             ; $4d43: $28 $23

    and $7f                                       ; $4d45: $e6 $7f
    ld b, a                                       ; $4d47: $47
    ld a, [$d830]                                 ; $4d48: $fa $30 $d8
    inc a                                         ; $4d4b: $3c

jr_005_4d4c:
    rrc b                                         ; $4d4c: $cb $08
    dec a                                         ; $4d4e: $3d
    jr nz, jr_005_4d4c                            ; $4d4f: $20 $fb

    rlc b                                         ; $4d51: $cb $00
    ld a, [$c3fc]                                 ; $4d53: $fa $fc $c3
    and $f0                                       ; $4d56: $e6 $f0
    or $03                                        ; $4d58: $f6 $03
    ld [$c3fc], a                                 ; $4d5a: $ea $fc $c3

jr_005_4d5d:
    call Call_000_2e3b                            ; $4d5d: $cd $3b $2e
    ldh a, [$90]                                  ; $4d60: $f0 $90
    and $3b                                       ; $4d62: $e6 $3b
    jr nz, jr_005_4d5d                            ; $4d64: $20 $f7

    jr jr_005_4d8c                                ; $4d66: $18 $24

jr_005_4d68:
    ld a, [$c3fc]                                 ; $4d68: $fa $fc $c3
    and $f0                                       ; $4d6b: $e6 $f0
    ld [$c3fc], a                                 ; $4d6d: $ea $fc $c3

jr_005_4d70:
    call Call_000_2e3b                            ; $4d70: $cd $3b $2e
    ldh a, [$90]                                  ; $4d73: $f0 $90
    and $0b                                       ; $4d75: $e6 $0b
    jr nz, jr_005_4d70                            ; $4d77: $20 $f7

    jr jr_005_4d8c                                ; $4d79: $18 $11

jr_005_4d7b:
    ld a, [$c3fc]                                 ; $4d7b: $fa $fc $c3
    and $f0                                       ; $4d7e: $e6 $f0
    ld [$c3fc], a                                 ; $4d80: $ea $fc $c3

jr_005_4d83:
    call Call_000_2e3b                            ; $4d83: $cd $3b $2e
    ldh a, [$90]                                  ; $4d86: $f0 $90
    and $03                                       ; $4d88: $e6 $03
    jr nz, jr_005_4d83                            ; $4d8a: $20 $f7

jr_005_4d8c:
    pop bc                                        ; $4d8c: $c1
    ld a, [$d830]                                 ; $4d8d: $fa $30 $d8
    ld b, a                                       ; $4d90: $47

Jump_005_4d91:
    call Call_000_2e3b                            ; $4d91: $cd $3b $2e
    ldh a, [$91]                                  ; $4d94: $f0 $91
    bit 0, a                                      ; $4d96: $cb $47
    jr nz, jr_005_4e05                            ; $4d98: $20 $6b

    bit 6, a                                      ; $4d9a: $cb $77
    jr z, jr_005_4daa                             ; $4d9c: $28 $0c

    dec b                                         ; $4d9e: $05
    bit 7, b                                      ; $4d9f: $cb $78
    jr z, jr_005_4dbc                             ; $4da1: $28 $19

    ld a, [$d831]                                 ; $4da3: $fa $31 $d8
    dec a                                         ; $4da6: $3d
    ld b, a                                       ; $4da7: $47
    jr jr_005_4dbc                                ; $4da8: $18 $12

jr_005_4daa:
    ldh a, [$91]                                  ; $4daa: $f0 $91
    and $80                                       ; $4dac: $e6 $80
    jp z, Jump_005_4e32                           ; $4dae: $ca $32 $4e

    ld a, [$d831]                                 ; $4db1: $fa $31 $d8
    ld c, a                                       ; $4db4: $4f
    inc b                                         ; $4db5: $04
    ld a, b                                       ; $4db6: $78
    cp c                                          ; $4db7: $b9
    jr c, jr_005_4dbc                             ; $4db8: $38 $02

    ld b, $00                                     ; $4dba: $06 $00

jr_005_4dbc:
    rst $08                                       ; $4dbc: $cf

    db $5b

    push de                                       ; $4dbe: $d5
    xor a                                         ; $4dbf: $af
    ld [$d841], a                                 ; $4dc0: $ea $41 $d8
    ld a, b                                       ; $4dc3: $78
    sla a                                         ; $4dc4: $cb $27
    add e                                         ; $4dc6: $83
    ld e, a                                       ; $4dc7: $5f
    ld a, $20                                     ; $4dc8: $3e $20
    call Call_005_4128                            ; $4dca: $cd $28 $41
    push af                                       ; $4dcd: $f5
    push bc                                       ; $4dce: $c5
    push de                                       ; $4dcf: $d5
    push hl                                       ; $4dd0: $e5
    ld hl, $d842                                  ; $4dd1: $21 $42 $d8
    ld a, [hl+]                                   ; $4dd4: $2a
    ld h, [hl]                                    ; $4dd5: $66
    ld l, a                                       ; $4dd6: $6f
    ld de, $3000                                  ; $4dd7: $11 $00 $30
    add hl, de                                    ; $4dda: $19
    ld de, $9800                                  ; $4ddb: $11 $00 $98
    add hl, de                                    ; $4dde: $19
    ld d, h                                       ; $4ddf: $54
    ld e, l                                       ; $4de0: $5d
    ld hl, $d844                                  ; $4de1: $21 $44 $d8
    ld a, e                                       ; $4de4: $7b
    ld [hl+], a                                   ; $4de5: $22
    ld a, d                                       ; $4de6: $7a
    ld [hl], a                                    ; $4de7: $77
    pop hl                                        ; $4de8: $e1
    pop de                                        ; $4de9: $d1
    pop bc                                        ; $4dea: $c1
    pop af                                        ; $4deb: $f1
    pop de                                        ; $4dec: $d1
    push de                                       ; $4ded: $d5
    ld a, b                                       ; $4dee: $78
    sla a                                         ; $4def: $cb $27
    add e                                         ; $4df1: $83
    ld e, a                                       ; $4df2: $5f
    push hl                                       ; $4df3: $e5
    call Call_005_414f                            ; $4df4: $cd $4f $41
    ld hl, $d842                                  ; $4df7: $21 $42 $d8
    ld [hl], e                                    ; $4dfa: $73
    inc hl                                        ; $4dfb: $23
    ld [hl], d                                    ; $4dfc: $72
    pop hl                                        ; $4dfd: $e1
    pop de                                        ; $4dfe: $d1
    ld a, b                                       ; $4dff: $78
    ld [$d830], a                                 ; $4e00: $ea $30 $d8
    jr jr_005_4e32                                ; $4e03: $18 $2d

jr_005_4e05:
    ld a, b                                       ; $4e05: $78
    ld [$d830], a                                 ; $4e06: $ea $30 $d8
    rst $08                                       ; $4e09: $cf

    db $5c

    push af                                       ; $4e0b: $f5
    push bc                                       ; $4e0c: $c5
    push de                                       ; $4e0d: $d5
    push hl                                       ; $4e0e: $e5
    ld hl, $4f20                                  ; $4e0f: $21 $20 $4f
    call Call_000_2449                            ; $4e12: $cd $49 $24
    call Call_000_2e3b                            ; $4e15: $cd $3b $2e
    ld a, [$d830]                                 ; $4e18: $fa $30 $d8
    sla a                                         ; $4e1b: $cb $27
    inc a                                         ; $4e1d: $3c
    ld e, a                                       ; $4e1e: $5f
    ld d, $01                                     ; $4e1f: $16 $01
    ld a, [$d82f]                                 ; $4e21: $fa $2f $d8
    ld c, $0d                                     ; $4e24: $0e $0d
    ld b, $80                                     ; $4e26: $06 $80
    call Call_005_4408                            ; $4e28: $cd $08 $44
    pop hl                                        ; $4e2b: $e1
    pop de                                        ; $4e2c: $d1
    pop bc                                        ; $4e2d: $c1
    pop af                                        ; $4e2e: $f1
    jp Jump_005_4f15                              ; $4e2f: $c3 $15 $4f


Jump_005_4e32:
jr_005_4e32:
    ldh a, [$94]                                  ; $4e32: $f0 $94
    and $08                                       ; $4e34: $e6 $08
    jp z, Jump_005_4e4c                           ; $4e36: $ca $4c $4e

    ld a, [$c3fc]                                 ; $4e39: $fa $fc $c3
    bit 7, a                                      ; $4e3c: $cb $7f
    jr z, jr_005_4e4c                             ; $4e3e: $28 $0c

    and $f0                                       ; $4e40: $e6 $f0
    ld [$c3fc], a                                 ; $4e42: $ea $fc $c3
    rst $08                                       ; $4e45: $cf
    ld e, l                                       ; $4e46: $5d
    ld a, $ff                                     ; $4e47: $3e $ff
    jp Jump_005_4ed5                              ; $4e49: $c3 $d5 $4e


Jump_005_4e4c:
jr_005_4e4c:
    ldh a, [$91]                                  ; $4e4c: $f0 $91
    and $02                                       ; $4e4e: $e6 $02
    jp z, Jump_005_4e62                           ; $4e50: $ca $62 $4e

    rst $08                                       ; $4e53: $cf
    ld e, l                                       ; $4e54: $5d
    ld a, [$c3fc]                                 ; $4e55: $fa $fc $c3
    and $f0                                       ; $4e58: $e6 $f0
    ld [$c3fc], a                                 ; $4e5a: $ea $fc $c3
    ld a, $ff                                     ; $4e5d: $3e $ff
    jp Jump_005_4ed5                              ; $4e5f: $c3 $d5 $4e


Jump_005_4e62:
    push af                                       ; $4e62: $f5
    push bc                                       ; $4e63: $c5
    push de                                       ; $4e64: $d5
    push hl                                       ; $4e65: $e5
    ld a, [$c3fa]                                 ; $4e66: $fa $fa $c3
    bit 7, a                                      ; $4e69: $cb $7f
    jr z, jr_005_4eaa                             ; $4e6b: $28 $3d

    and $7f                                       ; $4e6d: $e6 $7f
    ld b, a                                       ; $4e6f: $47
    ld a, [$d830]                                 ; $4e70: $fa $30 $d8
    inc a                                         ; $4e73: $3c

jr_005_4e74:
    rrc b                                         ; $4e74: $cb $08
    dec a                                         ; $4e76: $3d
    jr nz, jr_005_4e74                            ; $4e77: $20 $fb

    rlc b                                         ; $4e79: $cb $00
    bit 0, b                                      ; $4e7b: $cb $40
    jr z, jr_005_4eaa                             ; $4e7d: $28 $2b

    ldh a, [$91]                                  ; $4e7f: $f0 $91
    and $c0                                       ; $4e81: $e6 $c0
    jr nz, jr_005_4eaa                            ; $4e83: $20 $25

    ldh a, [$91]                                  ; $4e85: $f0 $91
    and $20                                       ; $4e87: $e6 $20
    jp z, Jump_005_4e98                           ; $4e89: $ca $98 $4e

    ld a, [$c3fc]                                 ; $4e8c: $fa $fc $c3
    and $f0                                       ; $4e8f: $e6 $f0
    or $01                                        ; $4e91: $f6 $01
    ld [$c3fc], a                                 ; $4e93: $ea $fc $c3
    jr jr_005_4eda                                ; $4e96: $18 $42

Jump_005_4e98:
    ldh a, [$91]                                  ; $4e98: $f0 $91
    and $10                                       ; $4e9a: $e6 $10
    jr z, jr_005_4eaa                             ; $4e9c: $28 $0c

    ld a, [$c3fc]                                 ; $4e9e: $fa $fc $c3
    and $f0                                       ; $4ea1: $e6 $f0
    or $02                                        ; $4ea3: $f6 $02
    ld [$c3fc], a                                 ; $4ea5: $ea $fc $c3
    jr jr_005_4eda                                ; $4ea8: $18 $30

jr_005_4eaa:
    pop hl                                        ; $4eaa: $e1
    pop de                                        ; $4eab: $d1
    pop bc                                        ; $4eac: $c1
    pop af                                        ; $4ead: $f1
    call Call_005_4cc1                            ; $4eae: $cd $c1 $4c
    cp $03                                        ; $4eb1: $fe $03
    jp nz, Jump_005_4d91                          ; $4eb3: $c2 $91 $4d

    ld a, [$c32d]                                 ; $4eb6: $fa $2d $c3
    dec a                                         ; $4eb9: $3d
    sra a                                         ; $4eba: $cb $2f
    sra a                                         ; $4ebc: $cb $2f
    jp z, Jump_005_4d91                           ; $4ebe: $ca $91 $4d

    ldh a, [$91]                                  ; $4ec1: $f0 $91
    and $20                                       ; $4ec3: $e6 $20
    jp z, Jump_005_4ecc                           ; $4ec5: $ca $cc $4e

    ld a, $fe                                     ; $4ec8: $3e $fe
    jr jr_005_4ed5                                ; $4eca: $18 $09

Jump_005_4ecc:
    ldh a, [$91]                                  ; $4ecc: $f0 $91
    and $10                                       ; $4ece: $e6 $10
    jp z, Jump_005_4d91                           ; $4ed0: $ca $91 $4d

    ld a, $fd                                     ; $4ed3: $3e $fd

Jump_005_4ed5:
jr_005_4ed5:
    ld [$d830], a                                 ; $4ed5: $ea $30 $d8
    jr jr_005_4ee1                                ; $4ed8: $18 $07

jr_005_4eda:
    pop hl                                        ; $4eda: $e1
    pop de                                        ; $4edb: $d1
    pop bc                                        ; $4edc: $c1
    pop af                                        ; $4edd: $f1
    ld a, [$d830]                                 ; $4ede: $fa $30 $d8

jr_005_4ee1:
    push af                                       ; $4ee1: $f5
    push bc                                       ; $4ee2: $c5
    push de                                       ; $4ee3: $d5
    push hl                                       ; $4ee4: $e5
    ld hl, $4f20                                  ; $4ee5: $21 $20 $4f
    call Call_000_2449                            ; $4ee8: $cd $49 $24
    call Call_000_2e3b                            ; $4eeb: $cd $3b $2e
    ld a, [$d83e]                                 ; $4eee: $fa $3e $d8
    or a                                          ; $4ef1: $b7
    jr z, jr_005_4f11                             ; $4ef2: $28 $1d

    dec a                                         ; $4ef4: $3d
    ld hl, $d832                                  ; $4ef5: $21 $32 $d8
    sla a                                         ; $4ef8: $cb $27
    ld c, a                                       ; $4efa: $4f
    ld b, $00                                     ; $4efb: $06 $00
    add hl, bc                                    ; $4efd: $09
    ld a, [hl+]                                   ; $4efe: $2a
    and $0f                                       ; $4eff: $e6 $0f
    sla a                                         ; $4f01: $cb $27
    inc a                                         ; $4f03: $3c
    ld e, a                                       ; $4f04: $5f
    ld d, $01                                     ; $4f05: $16 $01
    ld a, [hl]                                    ; $4f07: $7e
    and $0f                                       ; $4f08: $e6 $0f
    ld c, $20                                     ; $4f0a: $0e $20
    ld b, $80                                     ; $4f0c: $06 $80
    call Call_005_4408                            ; $4f0e: $cd $08 $44

jr_005_4f11:
    pop hl                                        ; $4f11: $e1
    pop de                                        ; $4f12: $d1
    pop bc                                        ; $4f13: $c1
    pop af                                        ; $4f14: $f1

Jump_005_4f15:
    ld b, a                                       ; $4f15: $47
    pop af                                        ; $4f16: $f1
    ldh [$96], a                                  ; $4f17: $e0 $96
    ldh [rSVBK], a                                ; $4f19: $e0 $70
    ld a, b                                       ; $4f1b: $78
    pop hl                                        ; $4f1c: $e1
    pop de                                        ; $4f1d: $d1
    pop bc                                        ; $4f1e: $c1
    ret                                           ; $4f1f: $c9


    ld a, $05                                     ; $4f20: $3e $05
    ldh [$96], a                                  ; $4f22: $e0 $96
    ldh [rSVBK], a                                ; $4f24: $e0 $70
    ld a, [$c3fa]                                 ; $4f26: $fa $fa $c3
    bit 7, a                                      ; $4f29: $cb $7f
    jr z, jr_005_4f5d                             ; $4f2b: $28 $30

    and $7f                                       ; $4f2d: $e6 $7f
    ld b, a                                       ; $4f2f: $47
    ld a, [$d830]                                 ; $4f30: $fa $30 $d8
    inc a                                         ; $4f33: $3c

jr_005_4f34:
    rrc b                                         ; $4f34: $cb $08
    dec a                                         ; $4f36: $3d
    jr nz, jr_005_4f34                            ; $4f37: $20 $fb

    rlc b                                         ; $4f39: $cb $00
    bit 0, b                                      ; $4f3b: $cb $40
    jr z, jr_005_4f5d                             ; $4f3d: $28 $1e

    rst $30                                       ; $4f3f: $f7
    nop                                           ; $4f40: $00
    ld b, $c2                                     ; $4f41: $06 $c2
    ld a, [bc]                                    ; $4f43: $0a
    ld d, b                                       ; $4f44: $50
    rst $30                                       ; $4f45: $f7
    jr nz, @+$08                                  ; $4f46: $20 $06

    jp nz, Jump_005_500a                          ; $4f48: $c2 $0a $50

    rst $30                                       ; $4f4b: $f7
    ld b, b                                       ; $4f4c: $40
    ld b, $c2                                     ; $4f4d: $06 $c2
    ld a, [bc]                                    ; $4f4f: $0a
    ld d, b                                       ; $4f50: $50
    rst $30                                       ; $4f51: $f7
    ld h, b                                       ; $4f52: $60
    ld b, $c2                                     ; $4f53: $06 $c2
    ld a, [bc]                                    ; $4f55: $0a
    ld d, b                                       ; $4f56: $50
    rst $30                                       ; $4f57: $f7
    add b                                         ; $4f58: $80
    ld b, $c2                                     ; $4f59: $06 $c2
    ld a, [bc]                                    ; $4f5b: $0a
    ld d, b                                       ; $4f5c: $50

jr_005_4f5d:
    rst $30                                       ; $4f5d: $f7

    db $00, $06

    jr nz, jr_005_4f7d                            ; $4f60: $20 $1b

    rst $30                                       ; $4f62: $f7

    db $20, $06

    jp nz, Jump_005_4f8f                          ; $4f65: $c2 $8f $4f

    rst $30                                       ; $4f68: $f7

    db $40, $06

    jp nz, Jump_005_4f99                          ; $4f6b: $c2 $99 $4f

    rst $30                                       ; $4f6e: $f7

    db $60, $06

    jp nz, Jump_005_4fa3                          ; $4f71: $c2 $a3 $4f

    rst $30                                       ; $4f74: $f7

    db $80, $06

    jp nz, Jump_005_4fb5                          ; $4f77: $c2 $b5 $4f

    jp Jump_005_4fc5                              ; $4f7a: $c3 $c5 $4f


jr_005_4f7d:
    ld l, $20                                     ; $4f7d: $2e $20
    ld de, $0d01                                  ; $4f7f: $11 $01 $0d
    rst $18                                       ; $4f82: $df
    jr z, @+$43                                   ; $4f83: $28 $41

    ld l, $20                                     ; $4f85: $2e $20
    ld de, $0d03                                  ; $4f87: $11 $03 $0d
    rst $18                                       ; $4f8a: $df
    jr z, jr_005_4fce                             ; $4f8b: $28 $41

    jr jr_005_4fc5                                ; $4f8d: $18 $36

Jump_005_4f8f:
    ld l, $20                                     ; $4f8f: $2e $20
    ld de, $0e05                                  ; $4f91: $11 $05 $0e
    rst $18                                       ; $4f94: $df
    jr z, jr_005_4fd8                             ; $4f95: $28 $41

    jr jr_005_4fc5                                ; $4f97: $18 $2c

Jump_005_4f99:
    ld l, $20                                     ; $4f99: $2e $20
    ld de, $0e07                                  ; $4f9b: $11 $07 $0e
    rst $18                                       ; $4f9e: $df
    jr z, jr_005_4fe2                             ; $4f9f: $28 $41

    jr jr_005_4fc5                                ; $4fa1: $18 $22

Jump_005_4fa3:
    ld l, $20                                     ; $4fa3: $2e $20
    ld de, $0b07                                  ; $4fa5: $11 $07 $0b
    rst $18                                       ; $4fa8: $df
    jr z, @+$43                                   ; $4fa9: $28 $41

    ld l, $20                                     ; $4fab: $2e $20
    ld de, $0b09                                  ; $4fad: $11 $09 $0b
    rst $18                                       ; $4fb0: $df
    jr z, @+$43                                   ; $4fb1: $28 $41

    jr jr_005_4fc5                                ; $4fb3: $18 $10

Jump_005_4fb5:
    ld l, $20                                     ; $4fb5: $2e $20
    ld de, $0b03                                  ; $4fb7: $11 $03 $0b
    rst $18                                       ; $4fba: $df

    db $28, $41

    ld l, $20                                     ; $4fbd: $2e $20
    ld de, $0b05                                  ; $4fbf: $11 $05 $0b
    rst $18                                       ; $4fc2: $df

    db $28, $41

Jump_005_4fc5:
jr_005_4fc5:
    ld hl, $d841                                  ; $4fc5: $21 $41 $d8
    ld a, [hl+]                                   ; $4fc8: $2a
    and $10                                       ; $4fc9: $e6 $10
    or a                                          ; $4fcb: $b7
    jr z, jr_005_4fd2                             ; $4fcc: $28 $04

jr_005_4fce:
    ld a, $20                                     ; $4fce: $3e $20
    jr jr_005_4fd4                                ; $4fd0: $18 $02

jr_005_4fd2:
    ld a, $0d                                     ; $4fd2: $3e $0d

jr_005_4fd4:
    ld e, [hl]                                    ; $4fd4: $5e
    inc hl                                        ; $4fd5: $23
    ld d, [hl]                                    ; $4fd6: $56
    ld h, d                                       ; $4fd7: $62

jr_005_4fd8:
    ld l, e                                       ; $4fd8: $6b
    ld de, $3000                                  ; $4fd9: $11 $00 $30
    add hl, de                                    ; $4fdc: $19
    ld de, $9800                                  ; $4fdd: $11 $00 $98
    add hl, de                                    ; $4fe0: $19
    ld d, h                                       ; $4fe1: $54

jr_005_4fe2:
    ld e, l                                       ; $4fe2: $5d
    ld l, a                                       ; $4fe3: $6f
    ld h, $80                                     ; $4fe4: $26 $80
    push de                                       ; $4fe6: $d5
    call Call_000_04b4                            ; $4fe7: $cd $b4 $04
    pop de                                        ; $4fea: $d1
    ld a, [$d841]                                 ; $4feb: $fa $41 $d8
    inc a                                         ; $4fee: $3c
    ld [$d841], a                                 ; $4fef: $ea $41 $d8
    ld a, [$d845]                                 ; $4ff2: $fa $45 $d8
    or a                                          ; $4ff5: $b7
    jr z, jr_005_5009                             ; $4ff6: $28 $11

    ld d, a                                       ; $4ff8: $57
    ld a, [$d844]                                 ; $4ff9: $fa $44 $d8
    ld e, a                                       ; $4ffc: $5f
    ld a, $20                                     ; $4ffd: $3e $20
    ld l, a                                       ; $4fff: $6f
    ld h, $80                                     ; $5000: $26 $80
    call Call_000_04b4                            ; $5002: $cd $b4 $04
    xor a                                         ; $5005: $af
    ld [$d845], a                                 ; $5006: $ea $45 $d8

jr_005_5009:
    ret                                           ; $5009: $c9


Jump_005_500a:
    ld a, [$d845]                                 ; $500a: $fa $45 $d8
    or a                                          ; $500d: $b7
    jr z, jr_005_5021                             ; $500e: $28 $11

    ld d, a                                       ; $5010: $57
    ld a, [$d844]                                 ; $5011: $fa $44 $d8
    ld e, a                                       ; $5014: $5f
    ld a, $20                                     ; $5015: $3e $20
    ld l, a                                       ; $5017: $6f
    ld h, $80                                     ; $5018: $26 $80
    call Call_000_04b4                            ; $501a: $cd $b4 $04
    xor a                                         ; $501d: $af
    ld [$d845], a                                 ; $501e: $ea $45 $d8

jr_005_5021:
    ld a, $05                                     ; $5021: $3e $05
    ldh [$96], a                                  ; $5023: $e0 $96
    ldh [rSVBK], a                                ; $5025: $e0 $70
    ld hl, $d841                                  ; $5027: $21 $41 $d8
    inc [hl]                                      ; $502a: $34
    rst $30                                       ; $502b: $f7
    nop                                           ; $502c: $00
    ld b, $20                                     ; $502d: $06 $20
    ld a, [de]                                    ; $502f: $1a
    rst $30                                       ; $5030: $f7
    jr nz, jr_005_5039                            ; $5031: $20 $06

    jr nz, jr_005_509a                            ; $5033: $20 $65

    rst $30                                       ; $5035: $f7
    ld b, b                                       ; $5036: $40
    ld b, $c2                                     ; $5037: $06 $c2

jr_005_5039:
    cp a                                          ; $5039: $bf
    ld d, b                                       ; $503a: $50
    rst $30                                       ; $503b: $f7
    ld h, b                                       ; $503c: $60
    ld b, $c2                                     ; $503d: $06 $c2
    db $e4                                        ; $503f: $e4
    ld d, b                                       ; $5040: $50
    rst $30                                       ; $5041: $f7
    add b                                         ; $5042: $80
    ld b, $c2                                     ; $5043: $06 $c2
    ld [hl-], a                                   ; $5045: $32
    ld d, c                                       ; $5046: $51
    jp Jump_005_5183                              ; $5047: $c3 $83 $51


    ld l, $20                                     ; $504a: $2e $20
    ld de, $0d01                                  ; $504c: $11 $01 $0d
    rst $18                                       ; $504f: $df
    jr z, @+$43                                   ; $5050: $28 $41

    ld l, $20                                     ; $5052: $2e $20
    ld de, $0d03                                  ; $5054: $11 $03 $0d
    rst $18                                       ; $5057: $df
    jr z, @+$43                                   ; $5058: $28 $41

    ld a, [$d830]                                 ; $505a: $fa $30 $d8
    and a                                         ; $505d: $a7
    jr nz, jr_005_507d                            ; $505e: $20 $1d

    call Call_005_5184                            ; $5060: $cd $84 $51
    and a                                         ; $5063: $a7
    ld de, $0101                                  ; $5064: $11 $01 $01
    jp z, Jump_005_517e                           ; $5067: $ca $7e $51

    ld l, $0c                                     ; $506a: $2e $0c
    ld de, $0101                                  ; $506c: $11 $01 $01
    rst $18                                       ; $506f: $df
    jr z, @+$43                                   ; $5070: $28 $41

    ld l, $0d                                     ; $5072: $2e $0d
    ld de, $0d01                                  ; $5074: $11 $01 $0d
    rst $18                                       ; $5077: $df
    jr z, @+$43                                   ; $5078: $28 $41

    jp Jump_005_5183                              ; $507a: $c3 $83 $51


jr_005_507d:
    call Call_005_5184                            ; $507d: $cd $84 $51
    and a                                         ; $5080: $a7
    ld de, $0103                                  ; $5081: $11 $03 $01
    jp z, Jump_005_517e                           ; $5084: $ca $7e $51

    ld l, $0c                                     ; $5087: $2e $0c
    ld de, $0103                                  ; $5089: $11 $03 $01
    rst $18                                       ; $508c: $df
    jr z, @+$43                                   ; $508d: $28 $41

    ld l, $0d                                     ; $508f: $2e $0d
    ld de, $0d03                                  ; $5091: $11 $03 $0d
    rst $18                                       ; $5094: $df
    jr z, @+$43                                   ; $5095: $28 $41

    jp Jump_005_5183                              ; $5097: $c3 $83 $51


jr_005_509a:
    ld l, $20                                     ; $509a: $2e $20
    ld de, $0e05                                  ; $509c: $11 $05 $0e
    rst $18                                       ; $509f: $df
    jr z, @+$43                                   ; $50a0: $28 $41

    call Call_005_5184                            ; $50a2: $cd $84 $51
    and a                                         ; $50a5: $a7
    ld de, $0105                                  ; $50a6: $11 $05 $01
    jp z, Jump_005_517e                           ; $50a9: $ca $7e $51

    ld l, $0c                                     ; $50ac: $2e $0c
    ld de, $0105                                  ; $50ae: $11 $05 $01
    rst $18                                       ; $50b1: $df
    jr z, @+$43                                   ; $50b2: $28 $41

    ld l, $0d                                     ; $50b4: $2e $0d
    ld de, $0e05                                  ; $50b6: $11 $05 $0e
    rst $18                                       ; $50b9: $df
    jr z, @+$43                                   ; $50ba: $28 $41

    jp Jump_005_5183                              ; $50bc: $c3 $83 $51


    ld l, $20                                     ; $50bf: $2e $20
    ld de, $0e07                                  ; $50c1: $11 $07 $0e
    rst $18                                       ; $50c4: $df
    jr z, @+$43                                   ; $50c5: $28 $41

    call Call_005_5184                            ; $50c7: $cd $84 $51
    and a                                         ; $50ca: $a7
    ld de, $0107                                  ; $50cb: $11 $07 $01
    jp z, Jump_005_517e                           ; $50ce: $ca $7e $51

    ld l, $0c                                     ; $50d1: $2e $0c
    ld de, $0107                                  ; $50d3: $11 $07 $01
    rst $18                                       ; $50d6: $df
    jr z, jr_005_511a                             ; $50d7: $28 $41

    ld l, $0d                                     ; $50d9: $2e $0d
    ld de, $0e07                                  ; $50db: $11 $07 $0e
    rst $18                                       ; $50de: $df
    jr z, jr_005_5122                             ; $50df: $28 $41

    jp Jump_005_5183                              ; $50e1: $c3 $83 $51


    ld l, $20                                     ; $50e4: $2e $20
    ld de, $0b07                                  ; $50e6: $11 $07 $0b
    rst $18                                       ; $50e9: $df
    jr z, jr_005_512d                             ; $50ea: $28 $41

    ld l, $20                                     ; $50ec: $2e $20
    ld de, $0b09                                  ; $50ee: $11 $09 $0b
    rst $18                                       ; $50f1: $df
    jr z, @+$43                                   ; $50f2: $28 $41

    ld a, [$d830]                                 ; $50f4: $fa $30 $d8
    sub $03                                       ; $50f7: $d6 $03
    jr nz, jr_005_5117                            ; $50f9: $20 $1c

    call Call_005_5184                            ; $50fb: $cd $84 $51
    and a                                         ; $50fe: $a7
    ld de, $0107                                  ; $50ff: $11 $07 $01
    jr z, jr_005_517e                             ; $5102: $28 $7a

    ld l, $0c                                     ; $5104: $2e $0c
    ld de, $0107                                  ; $5106: $11 $07 $01
    rst $18                                       ; $5109: $df
    jr z, @+$43                                   ; $510a: $28 $41

    ld l, $0d                                     ; $510c: $2e $0d
    ld de, $0b07                                  ; $510e: $11 $07 $0b
    rst $18                                       ; $5111: $df
    jr z, @+$43                                   ; $5112: $28 $41

    jp Jump_005_5183                              ; $5114: $c3 $83 $51


jr_005_5117:
    call Call_005_5184                            ; $5117: $cd $84 $51

jr_005_511a:
    and a                                         ; $511a: $a7
    ld de, $0109                                  ; $511b: $11 $09 $01
    jr z, jr_005_517e                             ; $511e: $28 $5e

    ld l, $0c                                     ; $5120: $2e $0c

jr_005_5122:
    ld de, $0109                                  ; $5122: $11 $09 $01
    rst $18                                       ; $5125: $df
    jr z, @+$43                                   ; $5126: $28 $41

    ld l, $0d                                     ; $5128: $2e $0d
    ld de, $0b09                                  ; $512a: $11 $09 $0b

jr_005_512d:
    rst $18                                       ; $512d: $df
    jr z, jr_005_5171                             ; $512e: $28 $41

    jr jr_005_5183                                ; $5130: $18 $51

    ld l, $20                                     ; $5132: $2e $20
    ld de, $0b03                                  ; $5134: $11 $03 $0b
    rst $18                                       ; $5137: $df
    jr z, @+$43                                   ; $5138: $28 $41

    ld l, $20                                     ; $513a: $2e $20
    ld de, $0b05                                  ; $513c: $11 $05 $0b
    rst $18                                       ; $513f: $df
    jr z, jr_005_5183                             ; $5140: $28 $41

    ld a, [$d830]                                 ; $5142: $fa $30 $d8
    dec a                                         ; $5145: $3d
    jr nz, jr_005_5163                            ; $5146: $20 $1b

    call Call_005_5184                            ; $5148: $cd $84 $51
    and a                                         ; $514b: $a7
    ld de, $0103                                  ; $514c: $11 $03 $01
    jr z, jr_005_517e                             ; $514f: $28 $2d

    ld l, $0c                                     ; $5151: $2e $0c
    ld de, $0103                                  ; $5153: $11 $03 $01
    rst $18                                       ; $5156: $df
    jr z, jr_005_519a                             ; $5157: $28 $41

    ld l, $0d                                     ; $5159: $2e $0d
    ld de, $0b03                                  ; $515b: $11 $03 $0b
    rst $18                                       ; $515e: $df
    jr z, jr_005_51a2                             ; $515f: $28 $41

    jr jr_005_5183                                ; $5161: $18 $20

jr_005_5163:
    call Call_005_5184                            ; $5163: $cd $84 $51
    and a                                         ; $5166: $a7
    ld de, $0105                                  ; $5167: $11 $05 $01
    jr z, jr_005_517e                             ; $516a: $28 $12

    ld l, $0c                                     ; $516c: $2e $0c
    ld de, $0105                                  ; $516e: $11 $05 $01

jr_005_5171:
    rst $18                                       ; $5171: $df
    jr z, @+$43                                   ; $5172: $28 $41

    ld l, $0d                                     ; $5174: $2e $0d
    ld de, $0b05                                  ; $5176: $11 $05 $0b
    rst $18                                       ; $5179: $df
    jr z, @+$43                                   ; $517a: $28 $41

    jr jr_005_5183                                ; $517c: $18 $05

Jump_005_517e:
jr_005_517e:
    ld l, $20                                     ; $517e: $2e $20
    rst $18                                       ; $5180: $df
    jr z, @+$43                                   ; $5181: $28 $41

Jump_005_5183:
jr_005_5183:
    ret                                           ; $5183: $c9


Call_005_5184:
    ld a, $05                                     ; $5184: $3e $05
    ldh [$96], a                                  ; $5186: $e0 $96
    ldh [rSVBK], a                                ; $5188: $e0 $70
    ld a, [$d841]                                 ; $518a: $fa $41 $d8
    and $10                                       ; $518d: $e6 $10
    or a                                          ; $518f: $b7
    jr z, jr_005_5194                             ; $5190: $28 $02

    xor a                                         ; $5192: $af
    ret                                           ; $5193: $c9


jr_005_5194:
    ld a, $01                                     ; $5194: $3e $01
    ret                                           ; $5196: $c9


    push bc                                       ; $5197: $c5
    push de                                       ; $5198: $d5
    push hl                                       ; $5199: $e5

jr_005_519a:
    ld b, a                                       ; $519a: $47
    ldh a, [$96]                                  ; $519b: $f0 $96
    push af                                       ; $519d: $f5
    ld a, $05                                     ; $519e: $3e $05
    ldh [$96], a                                  ; $51a0: $e0 $96

jr_005_51a2:
    ldh [rSVBK], a                                ; $51a2: $e0 $70
    ld a, b                                       ; $51a4: $78
    add sp, -$03                                  ; $51a5: $e8 $fd
    ld b, h                                       ; $51a7: $44
    ld c, l                                       ; $51a8: $4d
    ld hl, sp+$00                                 ; $51a9: $f8 $00
    ld [hl], b                                    ; $51ab: $70
    ld hl, sp+$01                                 ; $51ac: $f8 $01
    ld [hl], c                                    ; $51ae: $71
    ld hl, sp+$02                                 ; $51af: $f8 $02
    ld [hl], a                                    ; $51b1: $77
    ld a, $05                                     ; $51b2: $3e $05
    ldh [$96], a                                  ; $51b4: $e0 $96
    ldh [rSVBK], a                                ; $51b6: $e0 $70
    xor a                                         ; $51b8: $af
    ld [$d846], a                                 ; $51b9: $ea $46 $d8

Jump_005_51bc:
jr_005_51bc:
    ld hl, sp+$00                                 ; $51bc: $f8 $00
    ld b, [hl]                                    ; $51be: $46
    ld hl, sp+$01                                 ; $51bf: $f8 $01
    ld c, [hl]                                    ; $51c1: $4e
    ld a, [$d846]                                 ; $51c2: $fa $46 $d8
    ld h, $00                                     ; $51c5: $26 $00
    ld l, a                                       ; $51c7: $6f
    add hl, bc                                    ; $51c8: $09
    ld d, $01                                     ; $51c9: $16 $01
    ld e, $01                                     ; $51cb: $1e $01
    call Call_005_4c4a                            ; $51cd: $cd $4a $4c
    rst $18                                       ; $51d0: $df
    inc e                                         ; $51d1: $1c
    dec b                                         ; $51d2: $05
    rst $18                                       ; $51d3: $df
    inc d                                         ; $51d4: $14
    dec b                                         ; $51d5: $05
    call Call_005_4cd7                            ; $51d6: $cd $d7 $4c
    push af                                       ; $51d9: $f5
    ld a, [$d82f]                                 ; $51da: $fa $2f $d8
    call Call_005_4c5c                            ; $51dd: $cd $5c $4c
    ld a, $ff                                     ; $51e0: $3e $ff
    ld [$d82f], a                                 ; $51e2: $ea $2f $d8
    rst $18                                       ; $51e5: $df
    inc e                                         ; $51e6: $1c
    dec b                                         ; $51e7: $05
    rst $18                                       ; $51e8: $df
    inc d                                         ; $51e9: $14
    dec b                                         ; $51ea: $05
    pop af                                        ; $51eb: $f1
    cp $7f                                        ; $51ec: $fe $7f
    jr nc, jr_005_51fb                            ; $51ee: $30 $0b

    ld b, a                                       ; $51f0: $47
    ld a, [$d846]                                 ; $51f1: $fa $46 $d8
    sla a                                         ; $51f4: $cb $27
    sla a                                         ; $51f6: $cb $27
    add b                                         ; $51f8: $80
    jr jr_005_5225                                ; $51f9: $18 $2a

jr_005_51fb:
    cp $ff                                        ; $51fb: $fe $ff
    jr z, jr_005_5225                             ; $51fd: $28 $26

    cp $fe                                        ; $51ff: $fe $fe
    jr nz, jr_005_5214                            ; $5201: $20 $11

    ld a, [$d846]                                 ; $5203: $fa $46 $d8
    dec a                                         ; $5206: $3d
    cp $ff                                        ; $5207: $fe $ff
    jr nz, jr_005_520f                            ; $5209: $20 $04

    ld hl, sp+$02                                 ; $520b: $f8 $02
    ld a, [hl]                                    ; $520d: $7e
    dec a                                         ; $520e: $3d

jr_005_520f:
    ld [$d846], a                                 ; $520f: $ea $46 $d8
    jr jr_005_51bc                                ; $5212: $18 $a8

jr_005_5214:
    ld a, [$d846]                                 ; $5214: $fa $46 $d8
    inc a                                         ; $5217: $3c
    ld hl, sp+$02                                 ; $5218: $f8 $02
    ld b, [hl]                                    ; $521a: $46
    cp b                                          ; $521b: $b8
    jr c, jr_005_521f                             ; $521c: $38 $01

    xor a                                         ; $521e: $af

jr_005_521f:
    ld [$d846], a                                 ; $521f: $ea $46 $d8
    jp Jump_005_51bc                              ; $5222: $c3 $bc $51


jr_005_5225:
    ld [$d830], a                                 ; $5225: $ea $30 $d8
    add sp, $03                                   ; $5228: $e8 $03
    ld b, a                                       ; $522a: $47
    pop af                                        ; $522b: $f1
    ldh [$96], a                                  ; $522c: $e0 $96
    ldh [rSVBK], a                                ; $522e: $e0 $70
    ld a, b                                       ; $5230: $78
    pop hl                                        ; $5231: $e1
    pop de                                        ; $5232: $d1
    pop bc                                        ; $5233: $c1
    ret                                           ; $5234: $c9


Call_005_5235:
    push bc                                       ; $5235: $c5
    ld a, [$d84f]                                 ; $5236: $fa $4f $d8
    or a                                          ; $5239: $b7
    jr z, jr_005_5257                             ; $523a: $28 $1b

    ld a, [$d821]                                 ; $523c: $fa $21 $d8
    ld b, a                                       ; $523f: $47
    ld a, [$d824]                                 ; $5240: $fa $24 $d8
    cp b                                          ; $5243: $b8
    jr nz, jr_005_5257                            ; $5244: $20 $11

    ld bc, $3a00                                  ; $5246: $01 $00 $3a
    add hl, bc                                    ; $5249: $09
    ld b, h                                       ; $524a: $44
    ld c, l                                       ; $524b: $4d
    ld hl, $d84e                                  ; $524c: $21 $4e $d8
    ld a, [hl+]                                   ; $524f: $2a
    ld h, [hl]                                    ; $5250: $66
    ld l, a                                       ; $5251: $6f
    add hl, bc                                    ; $5252: $09
    xor a                                         ; $5253: $af
    ld [$d84f], a                                 ; $5254: $ea $4f $d8

jr_005_5257:
    ld a, [$d821]                                 ; $5257: $fa $21 $d8
    or a                                          ; $525a: $b7
    jr nz, jr_005_5264                            ; $525b: $20 $07

    xor a                                         ; $525d: $af
    ld [$c36e], a                                 ; $525e: $ea $6e $c3
    ld [$c36f], a                                 ; $5261: $ea $6f $c3

jr_005_5264:
    rst $18                                       ; $5264: $df

    db $0a, $03

    call Call_005_43f6                            ; $5267: $cd $f6 $43
    ld a, d                                       ; $526a: $7a
    and $1f                                       ; $526b: $e6 $1f
    ld [$d82a], a                                 ; $526d: $ea $2a $d8
    ld a, e                                       ; $5270: $7b
    and $1f                                       ; $5271: $e6 $1f
    ld [$d82b], a                                 ; $5273: $ea $2b $d8
    call Call_005_414f                            ; $5276: $cd $4f $41

Jump_005_5279:
jr_005_5279:
    ld a, [$d850]                                 ; $5279: $fa $50 $d8
    or a                                          ; $527c: $b7
    jr z, jr_005_5289                             ; $527d: $28 $0a

    ld a, l                                       ; $527f: $7d
    ld [$d84e], a                                 ; $5280: $ea $4e $d8
    ld a, h                                       ; $5283: $7c
    ld [$d84f], a                                 ; $5284: $ea $4f $d8
    pop bc                                        ; $5287: $c1
    ret                                           ; $5288: $c9


jr_005_5289:
    ld a, l                                       ; $5289: $7d
    ld [$d869], a                                 ; $528a: $ea $69 $d8
    ld a, h                                       ; $528d: $7c
    ld [$d86a], a                                 ; $528e: $ea $6a $d8
    ld a, [hl]                                    ; $5291: $7e
    inc hl                                        ; $5292: $23
    ld b, a                                       ; $5293: $47
    or a                                          ; $5294: $b7
    jr nz, jr_005_529c                            ; $5295: $20 $05

    rst $18                                       ; $5297: $df

    db $10, $03

    pop bc                                        ; $529a: $c1
    ret                                           ; $529b: $c9


jr_005_529c:
    cp $de                                        ; $529c: $fe $de
    jr z, jr_005_52ae                             ; $529e: $28 $0e

    cp $df                                        ; $52a0: $fe $df
    jr z, jr_005_52b2                             ; $52a2: $28 $0e

    cp $0e                                        ; $52a4: $fe $0e
    jr z, jr_005_52b6                             ; $52a6: $28 $0e

    cp $20                                        ; $52a8: $fe $20
    jr nc, jr_005_52c4                            ; $52aa: $30 $18

    jr jr_005_52bc                                ; $52ac: $18 $0e

jr_005_52ae:
    ld a, $1e                                     ; $52ae: $3e $1e
    jr jr_005_52bc                                ; $52b0: $18 $0a

jr_005_52b2:
    ld a, $1f                                     ; $52b2: $3e $1f
    jr jr_005_52bc                                ; $52b4: $18 $06

jr_005_52b6:
    push af                                       ; $52b6: $f5
    ld a, [hl+]                                   ; $52b7: $2a
    ld [$c361], a                                 ; $52b8: $ea $61 $c3
    pop af                                        ; $52bb: $f1

jr_005_52bc:
    call Call_005_58e2                            ; $52bc: $cd $e2 $58
    call Call_005_43f6                            ; $52bf: $cd $f6 $43
    jr jr_005_5279                                ; $52c2: $18 $b5

jr_005_52c4:
    ld a, b                                       ; $52c4: $78
    call Call_005_5885                            ; $52c5: $cd $85 $58
    rst $18                                       ; $52c8: $df

    db $0c, $03

    rst $18                                       ; $52cb: $df

    db $0e, $03

    ld a, [hl]                                    ; $52ce: $7e
    cp $de                                        ; $52cf: $fe $de
    jr z, jr_005_52da                             ; $52d1: $28 $07

    cp $df                                        ; $52d3: $fe $df
    jr z, jr_005_52da                             ; $52d5: $28 $03

    call Call_005_5cc2                            ; $52d7: $cd $c2 $5c

jr_005_52da:
    inc de                                        ; $52da: $13
    ld a, e                                       ; $52db: $7b
    and $1f                                       ; $52dc: $e6 $1f
    jr nz, jr_005_5279                            ; $52de: $20 $99

    push hl                                       ; $52e0: $e5
    push de                                       ; $52e1: $d5
    ld h, d                                       ; $52e2: $62
    ld l, e                                       ; $52e3: $6b
    ld de, $ffe0                                  ; $52e4: $11 $e0 $ff
    add hl, de                                    ; $52e7: $19
    ld d, h                                       ; $52e8: $54
    ld e, l                                       ; $52e9: $5d
    pop de                                        ; $52ea: $d1
    pop hl                                        ; $52eb: $e1
    jp Jump_005_5279                              ; $52ec: $c3 $79 $52


    rst $18                                       ; $52ef: $df

    db $0c, $03

    push af                                       ; $52f2: $f5
    ld a, [$d82b]                                 ; $52f3: $fa $2b $d8
    inc a                                         ; $52f6: $3c
    inc a                                         ; $52f7: $3c
    and $1f                                       ; $52f8: $e6 $1f
    ld [$d82b], a                                 ; $52fa: $ea $2b $d8
    ld e, a                                       ; $52fd: $5f
    ld a, [$d82a]                                 ; $52fe: $fa $2a $d8
    ld d, a                                       ; $5301: $57
    call Call_005_414f                            ; $5302: $cd $4f $41
    pop af                                        ; $5305: $f1
    ret                                           ; $5306: $c9


    push af                                       ; $5307: $f5
    ld a, [$d82b]                                 ; $5308: $fa $2b $d8
    inc a                                         ; $530b: $3c
    and $1f                                       ; $530c: $e6 $1f
    ld [$d82b], a                                 ; $530e: $ea $2b $d8
    ld e, a                                       ; $5311: $5f
    ld a, [$d82a]                                 ; $5312: $fa $2a $d8
    ld d, a                                       ; $5315: $57
    call Call_005_414f                            ; $5316: $cd $4f $41
    pop af                                        ; $5319: $f1
    ret                                           ; $531a: $c9


    push af                                       ; $531b: $f5
    push bc                                       ; $531c: $c5
    push hl                                       ; $531d: $e5
    ldh a, [$96]                                  ; $531e: $f0 $96
    push af                                       ; $5320: $f5
    ld a, $05                                     ; $5321: $3e $05
    ldh [$96], a                                  ; $5323: $e0 $96
    ldh [rSVBK], a                                ; $5325: $e0 $70
    ld hl, $d864                                  ; $5327: $21 $64 $d8
    ld a, [hl+]                                   ; $532a: $2a
    ld h, [hl]                                    ; $532b: $66
    ld l, a                                       ; $532c: $6f
    ld a, [$c362]                                 ; $532d: $fa $62 $c3
    cpl                                           ; $5330: $2f
    inc a                                         ; $5331: $3c
    sla a                                         ; $5332: $cb $27
    add l                                         ; $5334: $85
    ld l, a                                       ; $5335: $6f
    jr nc, jr_005_5339                            ; $5336: $30 $01

    inc h                                         ; $5338: $24

jr_005_5339:
    ld a, l                                       ; $5339: $7d
    ld [$d864], a                                 ; $533a: $ea $64 $d8
    ld a, h                                       ; $533d: $7c
    ld [$d865], a                                 ; $533e: $ea $65 $d8
    ld d, h                                       ; $5341: $54
    ld e, l                                       ; $5342: $5d
    pop af                                        ; $5343: $f1
    ldh [$96], a                                  ; $5344: $e0 $96
    ldh [rSVBK], a                                ; $5346: $e0 $70
    pop hl                                        ; $5348: $e1
    pop bc                                        ; $5349: $c1
    pop af                                        ; $534a: $f1
    ret                                           ; $534b: $c9


    push af                                       ; $534c: $f5
    ld a, [$d829]                                 ; $534d: $fa $29 $d8
    or a                                          ; $5350: $b7
    jr nz, jr_005_535f                            ; $5351: $20 $0c

    ld a, $01                                     ; $5353: $3e $01
    ld [$d829], a                                 ; $5355: $ea $29 $d8
    call Call_005_43f6                            ; $5358: $cd $f6 $43
    xor a                                         ; $535b: $af
    ld [$d829], a                                 ; $535c: $ea $29 $d8

jr_005_535f:
    ld a, $1e                                     ; $535f: $3e $1e

jr_005_5361:
    call Call_000_2e3b                            ; $5361: $cd $3b $2e
    dec a                                         ; $5364: $3d
    jr nz, jr_005_5361                            ; $5365: $20 $fa

    pop af                                        ; $5367: $f1
    ret                                           ; $5368: $c9


    push af                                       ; $5369: $f5
    push bc                                       ; $536a: $c5
    ld a, [$d829]                                 ; $536b: $fa $29 $d8
    or a                                          ; $536e: $b7
    jr nz, jr_005_537d                            ; $536f: $20 $0c

    ld a, $01                                     ; $5371: $3e $01
    ld [$d829], a                                 ; $5373: $ea $29 $d8
    call Call_005_43f6                            ; $5376: $cd $f6 $43
    xor a                                         ; $5379: $af
    ld [$d829], a                                 ; $537a: $ea $29 $d8

jr_005_537d:
    ld b, $0f                                     ; $537d: $06 $0f

jr_005_537f:
    call Call_000_2e3b                            ; $537f: $cd $3b $2e
    ldh a, [$91]                                  ; $5382: $f0 $91
    and $f3                                       ; $5384: $e6 $f3
    jr nz, jr_005_538b                            ; $5386: $20 $03

    dec b                                         ; $5388: $05
    jr nz, jr_005_537f                            ; $5389: $20 $f4

jr_005_538b:
    pop bc                                        ; $538b: $c1
    pop af                                        ; $538c: $f1
    ret                                           ; $538d: $c9


    push af                                       ; $538e: $f5
    push de                                       ; $538f: $d5
    ld a, $01                                     ; $5390: $3e $01
    call Call_005_5885                            ; $5392: $cd $85 $58
    call Call_005_53d1                            ; $5395: $cd $d1 $53
    call Call_005_414f                            ; $5398: $cd $4f $41
    ld [de], a                                    ; $539b: $12
    call Call_005_43f6                            ; $539c: $cd $f6 $43
    xor a                                         ; $539f: $af
    ld hl, $d841                                  ; $53a0: $21 $41 $d8
    ld [hl+], a                                   ; $53a3: $22
    ld [hl], e                                    ; $53a4: $73
    inc hl                                        ; $53a5: $23
    ld [hl], d                                    ; $53a6: $72
    push af                                       ; $53a7: $f5
    push bc                                       ; $53a8: $c5
    push de                                       ; $53a9: $d5
    push hl                                       ; $53aa: $e5
    ld a, $01                                     ; $53ab: $3e $01
    ld hl, $53f9                                  ; $53ad: $21 $f9 $53
    call Call_000_23e8                            ; $53b0: $cd $e8 $23
    call Call_005_5433                            ; $53b3: $cd $33 $54
    ld hl, $53f9                                  ; $53b6: $21 $f9 $53
    call Call_000_2449                            ; $53b9: $cd $49 $24
    rst $20                                       ; $53bc: $e7

    db $20, $03

    call Call_000_2e3b                            ; $53bf: $cd $3b $2e
    rst $28                                       ; $53c2: $ef

    db $20, $03

    pop hl                                        ; $53c5: $e1
    pop de                                        ; $53c6: $d1
    pop bc                                        ; $53c7: $c1
    pop af                                        ; $53c8: $f1
    ld a, $01                                     ; $53c9: $3e $01
    ld [$d850], a                                 ; $53cb: $ea $50 $d8
    pop de                                        ; $53ce: $d1
    pop af                                        ; $53cf: $f1
    ret                                           ; $53d0: $c9


Call_005_53d1:
    push af                                       ; $53d1: $f5
    push bc                                       ; $53d2: $c5
    push hl                                       ; $53d3: $e5
    ld a, [$d824]                                 ; $53d4: $fa $24 $d8
    ld b, $00                                     ; $53d7: $06 $00
    ld c, a                                       ; $53d9: $4f
    sla c                                         ; $53da: $cb $21
    sla c                                         ; $53dc: $cb $21
    ld hl, $d800                                  ; $53de: $21 $00 $d8
    add hl, bc                                    ; $53e1: $09
    ld c, [hl]                                    ; $53e2: $4e
    inc hl                                        ; $53e3: $23
    ld b, [hl]                                    ; $53e4: $46
    ld h, b                                       ; $53e5: $60
    ld l, c                                       ; $53e6: $69
    inc hl                                        ; $53e7: $23
    ld d, [hl]                                    ; $53e8: $56
    inc hl                                        ; $53e9: $23
    ld e, [hl]                                    ; $53ea: $5e
    inc hl                                        ; $53eb: $23
    ld a, [hl+]                                   ; $53ec: $2a
    sra a                                         ; $53ed: $cb $2f
    add d                                         ; $53ef: $82
    ld d, a                                       ; $53f0: $57
    ld a, [hl+]                                   ; $53f1: $2a
    dec a                                         ; $53f2: $3d
    add e                                         ; $53f3: $83
    ld e, a                                       ; $53f4: $5f
    pop hl                                        ; $53f5: $e1
    pop bc                                        ; $53f6: $c1
    pop af                                        ; $53f7: $f1
    ret                                           ; $53f8: $c9


    push af                                       ; $53f9: $f5
    push bc                                       ; $53fa: $c5
    push de                                       ; $53fb: $d5
    push hl                                       ; $53fc: $e5
    ld a, $05                                     ; $53fd: $3e $05
    ldh [$96], a                                  ; $53ff: $e0 $96
    ldh [rSVBK], a                                ; $5401: $e0 $70
    ld hl, $d841                                  ; $5403: $21 $41 $d8
    ld a, [hl+]                                   ; $5406: $2a
    and $10                                       ; $5407: $e6 $10
    or a                                          ; $5409: $b7
    jr z, jr_005_5410                             ; $540a: $28 $04

    ld a, $08                                     ; $540c: $3e $08
    jr jr_005_5412                                ; $540e: $18 $02

jr_005_5410:
    ld a, $01                                     ; $5410: $3e $01

jr_005_5412:
    ld e, [hl]                                    ; $5412: $5e
    inc hl                                        ; $5413: $23
    ld d, [hl]                                    ; $5414: $56
    ld h, d                                       ; $5415: $62
    ld l, e                                       ; $5416: $6b
    ld de, $3000                                  ; $5417: $11 $00 $30
    add hl, de                                    ; $541a: $19
    ld de, $9800                                  ; $541b: $11 $00 $98
    add hl, de                                    ; $541e: $19
    ld d, h                                       ; $541f: $54
    ld e, l                                       ; $5420: $5d
    ld l, a                                       ; $5421: $6f
    ld h, $80                                     ; $5422: $26 $80
    call Call_000_04b4                            ; $5424: $cd $b4 $04
    ld a, [$d841]                                 ; $5427: $fa $41 $d8
    inc a                                         ; $542a: $3c
    ld [$d841], a                                 ; $542b: $ea $41 $d8
    pop hl                                        ; $542e: $e1
    pop de                                        ; $542f: $d1
    pop bc                                        ; $5430: $c1
    pop af                                        ; $5431: $f1
    ret                                           ; $5432: $c9


Call_005_5433:
    push af                                       ; $5433: $f5
    push bc                                       ; $5434: $c5
    rst $30                                       ; $5435: $f7

    db $c0, $02

    jr nz, jr_005_5462                            ; $5438: $20 $28

    rst $18                                       ; $543a: $df

    db $10, $03

    ldh a, [$90]                                  ; $543d: $f0 $90
    and $f3                                       ; $543f: $e6 $f3
    jr z, jr_005_5451                             ; $5441: $28 $0e

    ld b, $1e                                     ; $5443: $06 $1e

jr_005_5445:
    call Call_000_2e3b                            ; $5445: $cd $3b $2e
    ldh a, [$90]                                  ; $5448: $f0 $90
    and $f3                                       ; $544a: $e6 $f3
    jr z, jr_005_5451                             ; $544c: $28 $03

    dec b                                         ; $544e: $05
    jr nz, jr_005_5445                            ; $544f: $20 $f4

jr_005_5451:
    rst $30                                       ; $5451: $f7

    db $c0, $02

    jr nz, jr_005_5462                            ; $5454: $20 $0c

    call Call_000_0a61                            ; $5456: $cd $61 $0a
    call Call_000_2e3b                            ; $5459: $cd $3b $2e
    ldh a, [$91]                                  ; $545c: $f0 $91
    and $f3                                       ; $545e: $e6 $f3
    jr z, jr_005_5451                             ; $5460: $28 $ef

jr_005_5462:
    pop bc                                        ; $5462: $c1
    pop af                                        ; $5463: $f1
    ret                                           ; $5464: $c9


    call Call_000_2ed5                            ; $5465: $cd $d5 $2e
    inc a                                         ; $5468: $3c
    ret                                           ; $5469: $c9


    push af                                       ; $546a: $f5
    push bc                                       ; $546b: $c5
    ld hl, $dfae                                  ; $546c: $21 $ae $df
    ld a, [$d84a]                                 ; $546f: $fa $4a $d8
    ld b, a                                       ; $5472: $47
    ld a, [$d847]                                 ; $5473: $fa $47 $d8
    cp b                                          ; $5476: $b8
    jr z, jr_005_54cc                             ; $5477: $28 $53

    ld c, a                                       ; $5479: $4f
    sla c                                         ; $547a: $cb $21
    inc a                                         ; $547c: $3c
    ld [$d847], a                                 ; $547d: $ea $47 $d8
    ld b, $00                                     ; $5480: $06 $00
    add hl, bc                                    ; $5482: $09
    ld b, h                                       ; $5483: $44
    ld c, l                                       ; $5484: $4d
    inc bc                                        ; $5485: $03
    ld a, [hl+]                                   ; $5486: $2a
    ld h, [hl]                                    ; $5487: $66
    ld l, a                                       ; $5488: $6f
    ld a, h                                       ; $5489: $7c
    or a                                          ; $548a: $b7
    jr z, jr_005_54cc                             ; $548b: $28 $3f

    xor a                                         ; $548d: $af
    ld [bc], a                                    ; $548e: $02
    ld a, h                                       ; $548f: $7c
    sra a                                         ; $5490: $cb $2f
    sra a                                         ; $5492: $cb $2f
    sra a                                         ; $5494: $cb $2f
    sra a                                         ; $5496: $cb $2f
    or a                                          ; $5498: $b7
    jr z, jr_005_54a9                             ; $5499: $28 $0e

    ld b, a                                       ; $549b: $47
    ld a, h                                       ; $549c: $7c
    and $0f                                       ; $549d: $e6 $0f
    or $d0                                        ; $549f: $f6 $d0
    ld h, a                                       ; $54a1: $67
    ld a, b                                       ; $54a2: $78
    ldh [$96], a                                  ; $54a3: $e0 $96
    ldh [rSVBK], a                                ; $54a5: $e0 $70
    jr jr_005_54b5                                ; $54a7: $18 $0c

jr_005_54a9:
    ld b, a                                       ; $54a9: $47
    ld a, h                                       ; $54aa: $7c
    and $0f                                       ; $54ab: $e6 $0f
    or $c0                                        ; $54ad: $f6 $c0
    ld h, a                                       ; $54af: $67
    ld a, b                                       ; $54b0: $78
    ldh [$96], a                                  ; $54b1: $e0 $96
    ldh [rSVBK], a                                ; $54b3: $e0 $70

jr_005_54b5:
    push de                                       ; $54b5: $d5
    ld de, $c780                                  ; $54b6: $11 $80 $c7
    ld bc, $0020                                  ; $54b9: $01 $20 $00
    call Call_000_03d3                            ; $54bc: $cd $d3 $03
    pop de                                        ; $54bf: $d1
    ld a, $05                                     ; $54c0: $3e $05
    ldh [$96], a                                  ; $54c2: $e0 $96
    ldh [rSVBK], a                                ; $54c4: $e0 $70
    ld hl, $c780                                  ; $54c6: $21 $80 $c7
    call Call_005_596c                            ; $54c9: $cd $6c $59

jr_005_54cc:
    pop bc                                        ; $54cc: $c1
    pop af                                        ; $54cd: $f1
    ret                                           ; $54ce: $c9


    push af                                       ; $54cf: $f5
    push bc                                       ; $54d0: $c5
    push de                                       ; $54d1: $d5
    push hl                                       ; $54d2: $e5
    ld a, h                                       ; $54d3: $7c
    and $f0                                       ; $54d4: $e6 $f0
    cp $d0                                        ; $54d6: $fe $d0
    jr nz, jr_005_54ec                            ; $54d8: $20 $12

    ld a, h                                       ; $54da: $7c
    and $0f                                       ; $54db: $e6 $0f
    ld b, a                                       ; $54dd: $47
    ldh a, [$96]                                  ; $54de: $f0 $96
    sla a                                         ; $54e0: $cb $27
    sla a                                         ; $54e2: $cb $27
    sla a                                         ; $54e4: $cb $27
    sla a                                         ; $54e6: $cb $27
    or b                                          ; $54e8: $b0
    ld h, a                                       ; $54e9: $67
    jr jr_005_54f0                                ; $54ea: $18 $04

jr_005_54ec:
    ld a, h                                       ; $54ec: $7c
    and $0f                                       ; $54ed: $e6 $0f
    ld h, a                                       ; $54ef: $67

jr_005_54f0:
    ldh a, [$96]                                  ; $54f0: $f0 $96
    push af                                       ; $54f2: $f5
    ld a, $05                                     ; $54f3: $3e $05
    ldh [$96], a                                  ; $54f5: $e0 $96
    ldh [rSVBK], a                                ; $54f7: $e0 $70
    ld d, h                                       ; $54f9: $54
    ld e, l                                       ; $54fa: $5d
    ld a, [$d847]                                 ; $54fb: $fa $47 $d8
    cp $10                                        ; $54fe: $fe $10
    jr z, jr_005_5515                             ; $5500: $28 $13

    ld b, $00                                     ; $5502: $06 $00
    ld c, a                                       ; $5504: $4f
    sla c                                         ; $5505: $cb $21
    inc a                                         ; $5507: $3c
    ld [$d847], a                                 ; $5508: $ea $47 $d8
    ld [$d84a], a                                 ; $550b: $ea $4a $d8
    ld hl, $dfae                                  ; $550e: $21 $ae $df
    add hl, bc                                    ; $5511: $09
    ld [hl], e                                    ; $5512: $73
    inc hl                                        ; $5513: $23
    ld [hl], d                                    ; $5514: $72

jr_005_5515:
    pop af                                        ; $5515: $f1
    ldh [$96], a                                  ; $5516: $e0 $96
    ldh [rSVBK], a                                ; $5518: $e0 $70
    pop hl                                        ; $551a: $e1
    pop de                                        ; $551b: $d1
    pop bc                                        ; $551c: $c1
    pop af                                        ; $551d: $f1
    ret                                           ; $551e: $c9


    push af                                       ; $551f: $f5
    push bc                                       ; $5520: $c5
    push de                                       ; $5521: $d5
    push hl                                       ; $5522: $e5
    ldh a, [$96]                                  ; $5523: $f0 $96
    push af                                       ; $5525: $f5
    ld a, $05                                     ; $5526: $3e $05
    ldh [$96], a                                  ; $5528: $e0 $96
    ldh [rSVBK], a                                ; $552a: $e0 $70
    ld d, h                                       ; $552c: $54
    ld e, l                                       ; $552d: $5d
    ld a, [$d848]                                 ; $552e: $fa $48 $d8
    cp $10                                        ; $5531: $fe $10
    jr z, jr_005_5548                             ; $5533: $28 $13

    ld b, $00                                     ; $5535: $06 $00
    ld c, a                                       ; $5537: $4f
    sla c                                         ; $5538: $cb $21
    inc a                                         ; $553a: $3c
    ld [$d848], a                                 ; $553b: $ea $48 $d8
    ld [$d84b], a                                 ; $553e: $ea $4b $d8
    ld hl, $dfce                                  ; $5541: $21 $ce $df
    add hl, bc                                    ; $5544: $09
    ld [hl], e                                    ; $5545: $73
    inc hl                                        ; $5546: $23
    ld [hl], d                                    ; $5547: $72

jr_005_5548:
    pop af                                        ; $5548: $f1
    ldh [$96], a                                  ; $5549: $e0 $96
    ldh [rSVBK], a                                ; $554b: $e0 $70
    pop hl                                        ; $554d: $e1
    pop de                                        ; $554e: $d1
    pop bc                                        ; $554f: $c1
    pop af                                        ; $5550: $f1
    ret                                           ; $5551: $c9


    push af                                       ; $5552: $f5
    push bc                                       ; $5553: $c5
    push de                                       ; $5554: $d5
    push hl                                       ; $5555: $e5
    ld d, a                                       ; $5556: $57
    ldh a, [$96]                                  ; $5557: $f0 $96
    push af                                       ; $5559: $f5
    ld a, $05                                     ; $555a: $3e $05
    ldh [$96], a                                  ; $555c: $e0 $96
    ldh [rSVBK], a                                ; $555e: $e0 $70
    ld a, [$d849]                                 ; $5560: $fa $49 $d8
    cp $10                                        ; $5563: $fe $10
    jr z, jr_005_5576                             ; $5565: $28 $0f

    ld b, $00                                     ; $5567: $06 $00
    ld c, a                                       ; $5569: $4f
    inc a                                         ; $556a: $3c
    ld [$d849], a                                 ; $556b: $ea $49 $d8
    ld [$d84c], a                                 ; $556e: $ea $4c $d8
    ld hl, $dfee                                  ; $5571: $21 $ee $df
    add hl, bc                                    ; $5574: $09
    ld [hl], d                                    ; $5575: $72

jr_005_5576:
    pop af                                        ; $5576: $f1
    ldh [$96], a                                  ; $5577: $e0 $96
    ldh [rSVBK], a                                ; $5579: $e0 $70
    pop hl                                        ; $557b: $e1
    pop de                                        ; $557c: $d1
    pop bc                                        ; $557d: $c1
    pop af                                        ; $557e: $f1
    ret                                           ; $557f: $c9


    push de                                       ; $5580: $d5
    dec de                                        ; $5581: $1b
    ld h, $ff                                     ; $5582: $26 $ff
    ld l, $e0                                     ; $5584: $2e $e0
    add hl, de                                    ; $5586: $19
    ld d, h                                       ; $5587: $54
    ld e, l                                       ; $5588: $5d
    call Call_005_58b1                            ; $5589: $cd $b1 $58
    ld a, [de]                                    ; $558c: $1a
    cp $03                                        ; $558d: $fe $03
    jr nz, jr_005_5595                            ; $558f: $20 $04

    ld a, $0e                                     ; $5591: $3e $0e
    jr jr_005_5597                                ; $5593: $18 $02

jr_005_5595:
    ld a, $de                                     ; $5595: $3e $de

jr_005_5597:
    ld [de], a                                    ; $5597: $12
    pop de                                        ; $5598: $d1
    call Call_005_43f6                            ; $5599: $cd $f6 $43
    call Call_005_5cc2                            ; $559c: $cd $c2 $5c
    ret                                           ; $559f: $c9


    push de                                       ; $55a0: $d5
    dec de                                        ; $55a1: $1b
    ld h, $ff                                     ; $55a2: $26 $ff
    ld l, $e0                                     ; $55a4: $2e $e0
    add hl, de                                    ; $55a6: $19
    ld d, h                                       ; $55a7: $54
    ld e, l                                       ; $55a8: $5d
    call Call_005_58b1                            ; $55a9: $cd $b1 $58
    ld a, [de]                                    ; $55ac: $1a
    cp $03                                        ; $55ad: $fe $03
    jr nz, jr_005_55b5                            ; $55af: $20 $04

    ld a, $0f                                     ; $55b1: $3e $0f
    jr jr_005_55b7                                ; $55b3: $18 $02

jr_005_55b5:
    ld a, $df                                     ; $55b5: $3e $df

jr_005_55b7:
    ld [de], a                                    ; $55b7: $12
    pop de                                        ; $55b8: $d1
    call Call_005_43f6                            ; $55b9: $cd $f6 $43
    call Call_005_5cc2                            ; $55bc: $cd $c2 $5c
    ret                                           ; $55bf: $c9


    push af                                       ; $55c0: $f5
    push bc                                       ; $55c1: $c5
    ld hl, $c800                                  ; $55c2: $21 $00 $c8
    call Call_005_596c                            ; $55c5: $cd $6c $59
    pop bc                                        ; $55c8: $c1
    pop af                                        ; $55c9: $f1
    ret                                           ; $55ca: $c9


Call_005_55cb:
    push bc                                       ; $55cb: $c5
    push hl                                       ; $55cc: $e5
    ld a, $05                                     ; $55cd: $3e $05
    ldh [$96], a                                  ; $55cf: $e0 $96
    ldh [rSVBK], a                                ; $55d1: $e0 $70
    ld a, [$d866]                                 ; $55d3: $fa $66 $d8
    ld b, $00                                     ; $55d6: $06 $00
    ld c, a                                       ; $55d8: $4f
    inc a                                         ; $55d9: $3c
    ld [$d866], a                                 ; $55da: $ea $66 $d8
    sla c                                         ; $55dd: $cb $21
    ld hl, $dfae                                  ; $55df: $21 $ae $df
    add hl, bc                                    ; $55e2: $09
    ld a, [hl+]                                   ; $55e3: $2a
    ld h, [hl]                                    ; $55e4: $66
    ld l, a                                       ; $55e5: $6f
    ld a, h                                       ; $55e6: $7c
    sra a                                         ; $55e7: $cb $2f
    res 7, a                                      ; $55e9: $cb $bf
    sra a                                         ; $55eb: $cb $2f
    sra a                                         ; $55ed: $cb $2f
    sra a                                         ; $55ef: $cb $2f
    or a                                          ; $55f1: $b7
    jr z, jr_005_5602                             ; $55f2: $28 $0e

    ld b, a                                       ; $55f4: $47
    ld a, h                                       ; $55f5: $7c
    and $0f                                       ; $55f6: $e6 $0f
    or $d0                                        ; $55f8: $f6 $d0
    ld h, a                                       ; $55fa: $67
    ld a, b                                       ; $55fb: $78
    ldh [$96], a                                  ; $55fc: $e0 $96
    ldh [rSVBK], a                                ; $55fe: $e0 $70
    jr jr_005_560e                                ; $5600: $18 $0c

jr_005_5602:
    ld b, a                                       ; $5602: $47
    ld a, h                                       ; $5603: $7c
    and $0f                                       ; $5604: $e6 $0f
    or $c0                                        ; $5606: $f6 $c0
    ld h, a                                       ; $5608: $67
    ld a, b                                       ; $5609: $78
    ldh [$96], a                                  ; $560a: $e0 $96
    ldh [rSVBK], a                                ; $560c: $e0 $70

jr_005_560e:
    push de                                       ; $560e: $d5
    ld de, $c780                                  ; $560f: $11 $80 $c7
    ld bc, $0020                                  ; $5612: $01 $20 $00
    call Call_000_03d3                            ; $5615: $cd $d3 $03
    pop de                                        ; $5618: $d1
    ld a, $05                                     ; $5619: $3e $05
    ldh [$96], a                                  ; $561b: $e0 $96
    ldh [rSVBK], a                                ; $561d: $e0 $70
    ld hl, $c780                                  ; $561f: $21 $80 $c7
    ld b, $00                                     ; $5622: $06 $00

jr_005_5624:
    ld a, [hl+]                                   ; $5624: $2a
    or a                                          ; $5625: $b7
    jr z, jr_005_5630                             ; $5626: $28 $08

    rst $18                                       ; $5628: $df
    ld b, $03                                     ; $5629: $06 $03
    ld a, c                                       ; $562b: $79
    add b                                         ; $562c: $80
    ld b, a                                       ; $562d: $47
    jr jr_005_5624                                ; $562e: $18 $f4

jr_005_5630:
    ld a, b                                       ; $5630: $78
    pop hl                                        ; $5631: $e1
    pop bc                                        ; $5632: $c1
    ret                                           ; $5633: $c9


Call_005_5634:
    push bc                                       ; $5634: $c5
    push hl                                       ; $5635: $e5
    ld hl, $c800                                  ; $5636: $21 $00 $c8
    ld b, $00                                     ; $5639: $06 $00

jr_005_563b:
    ld a, [hl+]                                   ; $563b: $2a
    cp $00                                        ; $563c: $fe $00
    jr z, jr_005_5648                             ; $563e: $28 $08

    rst $18                                       ; $5640: $df

    db $06, $03

    ld a, c                                       ; $5643: $79
    add b                                         ; $5644: $80
    ld b, a                                       ; $5645: $47
    jr jr_005_563b                                ; $5646: $18 $f3

jr_005_5648:
    ld a, b                                       ; $5648: $78
    pop hl                                        ; $5649: $e1
    pop bc                                        ; $564a: $c1
    ret                                           ; $564b: $c9


    push af                                       ; $564c: $f5
    push bc                                       ; $564d: $c5
    ld a, [$d84c]                                 ; $564e: $fa $4c $d8
    ld b, a                                       ; $5651: $47
    ld a, [$d849]                                 ; $5652: $fa $49 $d8
    cp b                                          ; $5655: $b8
    jr z, jr_005_5676                             ; $5656: $28 $1e

    ld b, $00                                     ; $5658: $06 $00
    ld c, a                                       ; $565a: $4f
    inc a                                         ; $565b: $3c
    ld [$d849], a                                 ; $565c: $ea $49 $d8
    ld hl, $dfee                                  ; $565f: $21 $ee $df
    add hl, bc                                    ; $5662: $09
    ld a, [hl]                                    ; $5663: $7e
    ld l, a                                       ; $5664: $6f
    ld h, $00                                     ; $5665: $26 $00
    ld b, h                                       ; $5667: $44
    ld c, l                                       ; $5668: $4d
    ld hl, $0000                                  ; $5669: $21 $00 $00
    add hl, bc                                    ; $566c: $09
    call Call_005_61d4                            ; $566d: $cd $d4 $61
    ld hl, $d880                                  ; $5670: $21 $80 $d8
    call Call_005_596c                            ; $5673: $cd $6c $59

jr_005_5676:
    pop bc                                        ; $5676: $c1
    pop af                                        ; $5677: $f1
    ret                                           ; $5678: $c9


Call_005_5679:
    push bc                                       ; $5679: $c5
    push hl                                       ; $567a: $e5
    ld a, [$d868]                                 ; $567b: $fa $68 $d8
    ld b, $00                                     ; $567e: $06 $00
    ld c, a                                       ; $5680: $4f
    inc a                                         ; $5681: $3c
    ld [$d868], a                                 ; $5682: $ea $68 $d8
    ld hl, $dfee                                  ; $5685: $21 $ee $df
    add hl, bc                                    ; $5688: $09
    ld a, [hl]                                    ; $5689: $7e
    ld l, a                                       ; $568a: $6f
    ld h, $00                                     ; $568b: $26 $00
    ld b, h                                       ; $568d: $44
    ld c, l                                       ; $568e: $4d
    ld hl, $0000                                  ; $568f: $21 $00 $00
    add hl, bc                                    ; $5692: $09
    call Call_005_61d4                            ; $5693: $cd $d4 $61
    ld hl, $d880                                  ; $5696: $21 $80 $d8
    ld b, $00                                     ; $5699: $06 $00

jr_005_569b:
    ld a, [hl+]                                   ; $569b: $2a
    cp $00                                        ; $569c: $fe $00
    jr z, jr_005_56a7                             ; $569e: $28 $07

    rst $18                                       ; $56a0: $df
    ld b, $03                                     ; $56a1: $06 $03
    ld a, c                                       ; $56a3: $79
    add b                                         ; $56a4: $80
    jr jr_005_569b                                ; $56a5: $18 $f4

jr_005_56a7:
    ld a, b                                       ; $56a7: $78
    pop hl                                        ; $56a8: $e1
    pop bc                                        ; $56a9: $c1
    ret                                           ; $56aa: $c9


    push bc                                       ; $56ab: $c5
    ldh a, [$96]                                  ; $56ac: $f0 $96
    push af                                       ; $56ae: $f5
    ld a, $05                                     ; $56af: $3e $05
    ldh [$96], a                                  ; $56b1: $e0 $96
    ldh [rSVBK], a                                ; $56b3: $e0 $70
    ld a, [$d84b]                                 ; $56b5: $fa $4b $d8
    ld b, a                                       ; $56b8: $47
    ld a, [$d848]                                 ; $56b9: $fa $48 $d8
    cp b                                          ; $56bc: $b8
    jr z, jr_005_56db                             ; $56bd: $28 $1c

    ld b, $00                                     ; $56bf: $06 $00
    ld c, a                                       ; $56c1: $4f
    sla c                                         ; $56c2: $cb $21
    inc a                                         ; $56c4: $3c
    ld [$d848], a                                 ; $56c5: $ea $48 $d8
    ld hl, $dfce                                  ; $56c8: $21 $ce $df
    add hl, bc                                    ; $56cb: $09
    ld c, [hl]                                    ; $56cc: $4e
    inc hl                                        ; $56cd: $23
    ld b, [hl]                                    ; $56ce: $46
    pop af                                        ; $56cf: $f1
    ldh [$96], a                                  ; $56d0: $e0 $96
    ldh [rSVBK], a                                ; $56d2: $e0 $70
    ld h, b                                       ; $56d4: $60
    ld l, c                                       ; $56d5: $69
    call Call_005_5a13                            ; $56d6: $cd $13 $5a
    jr jr_005_56e0                                ; $56d9: $18 $05

jr_005_56db:
    pop af                                        ; $56db: $f1
    ldh [$96], a                                  ; $56dc: $e0 $96
    ldh [rSVBK], a                                ; $56de: $e0 $70

jr_005_56e0:
    pop bc                                        ; $56e0: $c1
    ret                                           ; $56e1: $c9


Call_005_56e2:
    push hl                                       ; $56e2: $e5
    push bc                                       ; $56e3: $c5
    push de                                       ; $56e4: $d5
    ld a, [$d867]                                 ; $56e5: $fa $67 $d8
    ld b, $00                                     ; $56e8: $06 $00
    ld c, a                                       ; $56ea: $4f
    sla c                                         ; $56eb: $cb $21
    inc a                                         ; $56ed: $3c
    ld [$d867], a                                 ; $56ee: $ea $67 $d8
    ld hl, $dfce                                  ; $56f1: $21 $ce $df
    add hl, bc                                    ; $56f4: $09
    ld e, [hl]                                    ; $56f5: $5e
    inc hl                                        ; $56f6: $23
    ld d, [hl]                                    ; $56f7: $56
    ld h, d                                       ; $56f8: $62
    ld l, e                                       ; $56f9: $6b
    ld bc, $d8f0                                  ; $56fa: $01 $f0 $d8
    ld de, $2710                                  ; $56fd: $11 $10 $27
    add hl, bc                                    ; $5700: $09
    ld a, $05                                     ; $5701: $3e $05
    bit 7, h                                      ; $5703: $cb $7c
    jr z, jr_005_574c                             ; $5705: $28 $45

    add hl, de                                    ; $5707: $19

jr_005_5708:
    add hl, bc                                    ; $5708: $09
    bit 7, h                                      ; $5709: $cb $7c
    jr z, jr_005_5708                             ; $570b: $28 $fb

    add hl, de                                    ; $570d: $19
    ld bc, $fc18                                  ; $570e: $01 $18 $fc
    ld de, $03e8                                  ; $5711: $11 $e8 $03
    add hl, bc                                    ; $5714: $09
    ld a, $04                                     ; $5715: $3e $04
    bit 7, h                                      ; $5717: $cb $7c
    jr z, jr_005_574c                             ; $5719: $28 $31

    add hl, de                                    ; $571b: $19

jr_005_571c:
    add hl, bc                                    ; $571c: $09
    bit 7, h                                      ; $571d: $cb $7c
    jr z, jr_005_571c                             ; $571f: $28 $fb

    add hl, de                                    ; $5721: $19
    ld bc, $ff9c                                  ; $5722: $01 $9c $ff
    ld de, $0064                                  ; $5725: $11 $64 $00
    add hl, bc                                    ; $5728: $09
    ld a, $03                                     ; $5729: $3e $03
    bit 7, h                                      ; $572b: $cb $7c
    jr z, jr_005_574c                             ; $572d: $28 $1d

    add hl, de                                    ; $572f: $19

jr_005_5730:
    add hl, bc                                    ; $5730: $09
    bit 7, h                                      ; $5731: $cb $7c
    jr z, jr_005_5730                             ; $5733: $28 $fb

    add hl, de                                    ; $5735: $19
    ld bc, $fff6                                  ; $5736: $01 $f6 $ff
    ld de, $000a                                  ; $5739: $11 $0a $00
    add hl, bc                                    ; $573c: $09
    ld a, $02                                     ; $573d: $3e $02
    bit 7, h                                      ; $573f: $cb $7c
    jr z, jr_005_574c                             ; $5741: $28 $09

    add hl, de                                    ; $5743: $19

jr_005_5744:
    add hl, bc                                    ; $5744: $09
    bit 7, h                                      ; $5745: $cb $7c
    jr z, jr_005_5744                             ; $5747: $28 $fb

    add hl, de                                    ; $5749: $19
    ld a, $01                                     ; $574a: $3e $01

jr_005_574c:
    ld b, $00                                     ; $574c: $06 $00

jr_005_574e:
    push af                                       ; $574e: $f5
    push hl                                       ; $574f: $e5
    dec a                                         ; $5750: $3d
    add a                                         ; $5751: $87
    ld hl, $577c                                  ; $5752: $21 $7c $57
    add l                                         ; $5755: $85
    ld l, a                                       ; $5756: $6f
    jr nc, jr_005_575a                            ; $5757: $30 $01

    inc h                                         ; $5759: $24

jr_005_575a:
    ld a, [hl+]                                   ; $575a: $2a
    ld d, [hl]                                    ; $575b: $56
    ld e, a                                       ; $575c: $5f
    pop hl                                        ; $575d: $e1
    xor a                                         ; $575e: $af

jr_005_575f:
    call Call_000_08ac                            ; $575f: $cd $ac $08
    bit 7, h                                      ; $5762: $cb $7c
    jr nz, jr_005_5769                            ; $5764: $20 $03

    inc a                                         ; $5766: $3c
    jr jr_005_575f                                ; $5767: $18 $f6

jr_005_5769:
    add hl, de                                    ; $5769: $19
    ld c, $30                                     ; $576a: $0e $30
    add c                                         ; $576c: $81
    rst $18                                       ; $576d: $df

    db $06, $03

    ld a, c                                       ; $5770: $79
    add b                                         ; $5771: $80
    ld b, a                                       ; $5772: $47
    pop af                                        ; $5773: $f1
    dec a                                         ; $5774: $3d
    jr nz, jr_005_574e                            ; $5775: $20 $d7

    ld a, b                                       ; $5777: $78
    pop de                                        ; $5778: $d1
    pop bc                                        ; $5779: $c1
    pop hl                                        ; $577a: $e1
    ret                                           ; $577b: $c9


    db $01, $00, $0a, $00

    ld h, h                                       ; $5780: $64
    nop                                           ; $5781: $00
    add sp, $03                                   ; $5782: $e8 $03
    db $10                                        ; $5784: $10
    daa                                           ; $5785: $27
    push af                                       ; $5786: $f5
    push bc                                       ; $5787: $c5
    ld a, [$d85d]                                 ; $5788: $fa $5d $d8
    ld b, $00                                     ; $578b: $06 $00
    ld c, a                                       ; $578d: $4f
    ld hl, $003c                                  ; $578e: $21 $3c $00
    add hl, bc                                    ; $5791: $09
    call Call_005_61d4                            ; $5792: $cd $d4 $61
    ld hl, $d880                                  ; $5795: $21 $80 $d8
    call Call_005_596c                            ; $5798: $cd $6c $59
    pop bc                                        ; $579b: $c1
    pop af                                        ; $579c: $f1
    ret                                           ; $579d: $c9


Call_005_579e:
    push bc                                       ; $579e: $c5
    push hl                                       ; $579f: $e5
    ld a, [$d85d]                                 ; $57a0: $fa $5d $d8
    ld b, $00                                     ; $57a3: $06 $00
    ld c, a                                       ; $57a5: $4f
    ld hl, $003c                                  ; $57a6: $21 $3c $00
    add hl, bc                                    ; $57a9: $09
    call Call_005_61d4                            ; $57aa: $cd $d4 $61
    ld hl, $d880                                  ; $57ad: $21 $80 $d8
    ld b, $00                                     ; $57b0: $06 $00

jr_005_57b2:
    ld a, [hl+]                                   ; $57b2: $2a
    cp $00                                        ; $57b3: $fe $00
    jr z, jr_005_57bf                             ; $57b5: $28 $08

    rst $18                                       ; $57b7: $df
    ld b, $03                                     ; $57b8: $06 $03
    ld a, c                                       ; $57ba: $79
    add b                                         ; $57bb: $80
    ld b, a                                       ; $57bc: $47
    jr jr_005_57b2                                ; $57bd: $18 $f3

jr_005_57bf:
    ld a, b                                       ; $57bf: $78
    pop hl                                        ; $57c0: $e1
    pop bc                                        ; $57c1: $c1
    ret                                           ; $57c2: $c9


    push af                                       ; $57c3: $f5
    push bc                                       ; $57c4: $c5
    push de                                       ; $57c5: $d5
    push hl                                       ; $57c6: $e5
    ld b, a                                       ; $57c7: $47
    ldh a, [$96]                                  ; $57c8: $f0 $96
    push af                                       ; $57ca: $f5
    ld a, $05                                     ; $57cb: $3e $05
    ldh [$96], a                                  ; $57cd: $e0 $96
    ldh [rSVBK], a                                ; $57cf: $e0 $70
    ld a, b                                       ; $57d1: $78
    ld [$d85d], a                                 ; $57d2: $ea $5d $d8
    pop af                                        ; $57d5: $f1
    ldh [$96], a                                  ; $57d6: $e0 $96
    ldh [rSVBK], a                                ; $57d8: $e0 $70
    pop hl                                        ; $57da: $e1
    pop de                                        ; $57db: $d1
    pop bc                                        ; $57dc: $c1
    pop af                                        ; $57dd: $f1
    ret                                           ; $57de: $c9


    push af                                       ; $57df: $f5
    push bc                                       ; $57e0: $c5
    ld a, [$c361]                                 ; $57e1: $fa $61 $c3
    push de                                       ; $57e4: $d5
    ld hl, $0043                                  ; $57e5: $21 $43 $00
    add l                                         ; $57e8: $85
    ld l, a                                       ; $57e9: $6f
    jr nc, jr_005_57ed                            ; $57ea: $30 $01

    inc h                                         ; $57ec: $24

jr_005_57ed:
    ld de, $c780                                  ; $57ed: $11 $80 $c7
    rst $18                                       ; $57f0: $df
    ld e, h                                       ; $57f1: $5c
    dec b                                         ; $57f2: $05
    pop de                                        ; $57f3: $d1
    ld hl, $c780                                  ; $57f4: $21 $80 $c7
    call Call_005_596c                            ; $57f7: $cd $6c $59
    pop bc                                        ; $57fa: $c1
    pop af                                        ; $57fb: $f1
    ret                                           ; $57fc: $c9


Call_005_57fd:
    push bc                                       ; $57fd: $c5
    push de                                       ; $57fe: $d5
    push hl                                       ; $57ff: $e5
    ld a, [$c361]                                 ; $5800: $fa $61 $c3
    ld hl, $0043                                  ; $5803: $21 $43 $00
    add l                                         ; $5806: $85
    ld l, a                                       ; $5807: $6f
    jr nc, jr_005_580b                            ; $5808: $30 $01

    inc h                                         ; $580a: $24

jr_005_580b:
    ld de, $c780                                  ; $580b: $11 $80 $c7
    rst $18                                       ; $580e: $df
    ld e, h                                       ; $580f: $5c
    dec b                                         ; $5810: $05
    ld hl, $c780                                  ; $5811: $21 $80 $c7
    ld b, $00                                     ; $5814: $06 $00

jr_005_5816:
    ld a, [hl+]                                   ; $5816: $2a
    cp $00                                        ; $5817: $fe $00
    jr z, jr_005_5823                             ; $5819: $28 $08

    rst $18                                       ; $581b: $df
    ld b, $03                                     ; $581c: $06 $03
    ld a, c                                       ; $581e: $79
    add b                                         ; $581f: $80
    ld b, a                                       ; $5820: $47
    jr jr_005_5816                                ; $5821: $18 $f3

jr_005_5823:
    ld a, b                                       ; $5823: $78
    pop hl                                        ; $5824: $e1
    pop de                                        ; $5825: $d1
    pop bc                                        ; $5826: $c1
    ret                                           ; $5827: $c9


    push af                                       ; $5828: $f5
    push bc                                       ; $5829: $c5
    ldh a, [$96]                                  ; $582a: $f0 $96
    push af                                       ; $582c: $f5
    ld a, $05                                     ; $582d: $3e $05
    ldh [$96], a                                  ; $582f: $e0 $96
    ldh [rSVBK], a                                ; $5831: $e0 $70
    ld hl, $dfce                                  ; $5833: $21 $ce $df
    ld a, [hl]                                    ; $5836: $7e
    and $03                                       ; $5837: $e6 $03
    push de                                       ; $5839: $d5
    ld hl, $1ca3                                  ; $583a: $21 $a3 $1c
    add l                                         ; $583d: $85
    ld l, a                                       ; $583e: $6f
    jr nc, jr_005_5842                            ; $583f: $30 $01

    inc h                                         ; $5841: $24

jr_005_5842:
    ld de, $c780                                  ; $5842: $11 $80 $c7
    rst $18                                       ; $5845: $df
    ld e, h                                       ; $5846: $5c
    dec b                                         ; $5847: $05
    pop de                                        ; $5848: $d1
    ld hl, $c780                                  ; $5849: $21 $80 $c7
    call Call_005_596c                            ; $584c: $cd $6c $59
    pop af                                        ; $584f: $f1
    ldh [$96], a                                  ; $5850: $e0 $96
    ldh [rSVBK], a                                ; $5852: $e0 $70
    pop bc                                        ; $5854: $c1
    pop af                                        ; $5855: $f1
    ret                                           ; $5856: $c9


Call_005_5857:
    push bc                                       ; $5857: $c5
    push de                                       ; $5858: $d5
    push hl                                       ; $5859: $e5
    ld hl, $dfce                                  ; $585a: $21 $ce $df
    ld a, [hl]                                    ; $585d: $7e
    and $03                                       ; $585e: $e6 $03
    ld hl, $1ca3                                  ; $5860: $21 $a3 $1c
    add l                                         ; $5863: $85
    ld l, a                                       ; $5864: $6f
    jr nc, jr_005_5868                            ; $5865: $30 $01

    inc h                                         ; $5867: $24

jr_005_5868:
    ld de, $c780                                  ; $5868: $11 $80 $c7
    rst $18                                       ; $586b: $df
    ld e, h                                       ; $586c: $5c
    dec b                                         ; $586d: $05
    ld hl, $c780                                  ; $586e: $21 $80 $c7
    ld b, $00                                     ; $5871: $06 $00

jr_005_5873:
    ld a, [hl+]                                   ; $5873: $2a
    cp $00                                        ; $5874: $fe $00
    jr z, jr_005_5880                             ; $5876: $28 $08

    rst $18                                       ; $5878: $df
    ld b, $03                                     ; $5879: $06 $03
    ld a, c                                       ; $587b: $79
    add b                                         ; $587c: $80
    ld b, a                                       ; $587d: $47
    jr jr_005_5873                                ; $587e: $18 $f3

jr_005_5880:
    ld a, b                                       ; $5880: $78
    pop hl                                        ; $5881: $e1
    pop de                                        ; $5882: $d1
    pop bc                                        ; $5883: $c1
    ret                                           ; $5884: $c9


Call_005_5885:
    push af                                       ; $5885: $f5
    push hl                                       ; $5886: $e5
    ld h, d                                       ; $5887: $62
    ld l, e                                       ; $5888: $6b
    sra h                                         ; $5889: $cb $2c
    rr l                                          ; $588b: $cb $1d
    sra h                                         ; $588d: $cb $2c
    rr l                                          ; $588f: $cb $1d
    sra l                                         ; $5891: $cb $2d
    res 7, l                                      ; $5893: $cb $bd
    sra l                                         ; $5895: $cb $2d
    sra l                                         ; $5897: $cb $2d
    ld a, [$d82b]                                 ; $5899: $fa $2b $d8
    cp l                                          ; $589c: $bd
    jr z, jr_005_58a7                             ; $589d: $28 $08

    ld a, e                                       ; $589f: $7b
    sub $20                                       ; $58a0: $d6 $20
    ld e, a                                       ; $58a2: $5f
    jr nc, jr_005_58a7                            ; $58a3: $30 $02

    ld e, a                                       ; $58a5: $5f
    dec d                                         ; $58a6: $15

jr_005_58a7:
    ld a, d                                       ; $58a7: $7a
    and $03                                       ; $58a8: $e6 $03
    ld h, a                                       ; $58aa: $67
    or $d0                                        ; $58ab: $f6 $d0
    ld d, a                                       ; $58ad: $57
    pop hl                                        ; $58ae: $e1
    pop af                                        ; $58af: $f1
    ret                                           ; $58b0: $c9


Call_005_58b1:
    push af                                       ; $58b1: $f5
    push hl                                       ; $58b2: $e5
    ld h, d                                       ; $58b3: $62
    ld l, e                                       ; $58b4: $6b
    sra h                                         ; $58b5: $cb $2c
    rr l                                          ; $58b7: $cb $1d
    sra h                                         ; $58b9: $cb $2c
    rr l                                          ; $58bb: $cb $1d
    sra l                                         ; $58bd: $cb $2d
    res 7, l                                      ; $58bf: $cb $bd
    sra l                                         ; $58c1: $cb $2d
    sra l                                         ; $58c3: $cb $2d
    ld a, [$d82b]                                 ; $58c5: $fa $2b $d8
    dec a                                         ; $58c8: $3d
    and $1f                                       ; $58c9: $e6 $1f
    cp l                                          ; $58cb: $bd
    jr z, jr_005_58d8                             ; $58cc: $28 $0a

    ld a, e                                       ; $58ce: $7b
    sub $20                                       ; $58cf: $d6 $20
    ld e, a                                       ; $58d1: $5f
    jr nc, jr_005_58d8                            ; $58d2: $30 $04

    and $3f                                       ; $58d4: $e6 $3f
    ld e, a                                       ; $58d6: $5f
    dec d                                         ; $58d7: $15

jr_005_58d8:
    ld a, d                                       ; $58d8: $7a
    and $03                                       ; $58d9: $e6 $03
    ld h, a                                       ; $58db: $67
    or $d0                                        ; $58dc: $f6 $d0
    ld d, a                                       ; $58de: $57
    pop hl                                        ; $58df: $e1
    pop af                                        ; $58e0: $f1
    ret                                           ; $58e1: $c9


Call_005_58e2:
    push hl                                       ; $58e2: $e5
    ld hl, $58fe                                  ; $58e3: $21 $fe $58
    push hl                                       ; $58e6: $e5
    push af                                       ; $58e7: $f5
    push bc                                       ; $58e8: $c5
    push de                                       ; $58e9: $d5
    sla a                                         ; $58ea: $cb $27
    ld hl, $592c                                  ; $58ec: $21 $2c $59
    ld c, a                                       ; $58ef: $4f
    ld b, $00                                     ; $58f0: $06 $00
    add hl, bc                                    ; $58f2: $09
    ld d, h                                       ; $58f3: $54
    ld e, l                                       ; $58f4: $5d
    ld a, [de]                                    ; $58f5: $1a
    ld l, a                                       ; $58f6: $6f
    inc de                                        ; $58f7: $13
    ld a, [de]                                    ; $58f8: $1a
    ld h, a                                       ; $58f9: $67
    pop de                                        ; $58fa: $d1
    pop bc                                        ; $58fb: $c1
    pop af                                        ; $58fc: $f1
    jp hl                                         ; $58fd: $e9


    pop hl                                        ; $58fe: $e1
    ret                                           ; $58ff: $c9


    ld a, $0a                                     ; $5900: $3e $0a
    ld [de], a                                    ; $5902: $12
    inc de                                        ; $5903: $13
    call Call_005_43f6                            ; $5904: $cd $f6 $43
    call Call_005_5cc2                            ; $5907: $cd $c2 $5c
    ret                                           ; $590a: $c9


    ld a, $0b                                     ; $590b: $3e $0b
    ld [de], a                                    ; $590d: $12
    inc de                                        ; $590e: $13
    call Call_005_43f6                            ; $590f: $cd $f6 $43
    call Call_005_5cc2                            ; $5912: $cd $c2 $5c
    ret                                           ; $5915: $c9


    ld a, $0c                                     ; $5916: $3e $0c
    ld [de], a                                    ; $5918: $12
    inc de                                        ; $5919: $13
    call Call_005_43f6                            ; $591a: $cd $f6 $43
    call Call_005_5cc2                            ; $591d: $cd $c2 $5c
    ret                                           ; $5920: $c9


    ld a, $0d                                     ; $5921: $3e $0d
    ld [de], a                                    ; $5923: $12
    inc de                                        ; $5924: $13
    call Call_005_43f6                            ; $5925: $cd $f6 $43
    call Call_005_5cc2                            ; $5928: $cd $c2 $5c
    ret                                           ; $592b: $c9


    rst $28                                       ; $592c: $ef
    ld d, d                                       ; $592d: $52

    db $ef, $52, $8e, $53, $33, $54

    ld l, d                                       ; $5934: $6a
    ld d, h                                       ; $5935: $54
    ld c, h                                       ; $5936: $4c
    ld d, e                                       ; $5937: $53
    ld l, c                                       ; $5938: $69
    ld d, e                                       ; $5939: $53

    db $c0, $55

    ld c, h                                       ; $593c: $4c
    ld d, [hl]                                    ; $593d: $56

    db $ab, $56

    rlca                                          ; $5940: $07
    ld d, e                                       ; $5941: $53
    add [hl]                                      ; $5942: $86
    ld d, a                                       ; $5943: $57
    ld h, l                                       ; $5944: $65
    ld d, h                                       ; $5945: $54
    dec de                                        ; $5946: $1b
    ld d, e                                       ; $5947: $53
    rst $18                                       ; $5948: $df
    ld d, a                                       ; $5949: $57
    jr z, @+$5a                                   ; $594a: $28 $58

    nop                                           ; $594c: $00
    ld e, c                                       ; $594d: $59
    dec bc                                        ; $594e: $0b
    ld e, c                                       ; $594f: $59
    ld d, $59                                     ; $5950: $16 $59
    ld hl, $ef59                                  ; $5952: $21 $59 $ef
    ld d, d                                       ; $5955: $52
    rst $28                                       ; $5956: $ef
    ld d, d                                       ; $5957: $52
    rst $28                                       ; $5958: $ef
    ld d, d                                       ; $5959: $52
    rst $28                                       ; $595a: $ef
    ld d, d                                       ; $595b: $52
    rst $28                                       ; $595c: $ef
    ld d, d                                       ; $595d: $52
    rst $28                                       ; $595e: $ef
    ld d, d                                       ; $595f: $52
    rst $28                                       ; $5960: $ef
    ld d, d                                       ; $5961: $52
    rst $28                                       ; $5962: $ef
    ld d, d                                       ; $5963: $52
    rst $28                                       ; $5964: $ef
    ld d, d                                       ; $5965: $52
    rst $28                                       ; $5966: $ef
    ld d, d                                       ; $5967: $52
    add b                                         ; $5968: $80
    ld d, l                                       ; $5969: $55
    and b                                         ; $596a: $a0
    ld d, l                                       ; $596b: $55

Call_005_596c:
    push af                                       ; $596c: $f5
    ld a, [$d86a]                                 ; $596d: $fa $6a $d8
    cp $c6                                        ; $5970: $fe $c6
    jr nz, jr_005_597a                            ; $5972: $20 $06

    ld a, [$d869]                                 ; $5974: $fa $69 $d8
    or a                                          ; $5977: $b7
    jr z, jr_005_5990                             ; $5978: $28 $16

jr_005_597a:
    dec de                                        ; $597a: $1b
    ld a, [de]                                    ; $597b: $1a
    inc de                                        ; $597c: $13
    cp $05                                        ; $597d: $fe $05
    jr z, jr_005_5990                             ; $597f: $28 $0f

    ld a, e                                       ; $5981: $7b
    and $1f                                       ; $5982: $e6 $1f
    jr nz, jr_005_5990                            ; $5984: $20 $0a

    push hl                                       ; $5986: $e5
    ld h, d                                       ; $5987: $62
    ld l, e                                       ; $5988: $6b
    ld de, $ffe0                                  ; $5989: $11 $e0 $ff
    add hl, de                                    ; $598c: $19
    ld d, h                                       ; $598d: $54
    ld e, l                                       ; $598e: $5d
    pop hl                                        ; $598f: $e1

jr_005_5990:
    ld a, [hl]                                    ; $5990: $7e
    cp $00                                        ; $5991: $fe $00
    jr z, jr_005_59cf                             ; $5993: $28 $3a

    rst $18                                       ; $5995: $df

    db $18, $03

    rst $18                                       ; $5998: $df

    db $0e, $03

    inc hl                                        ; $599b: $23
    ld a, [hl]                                    ; $599c: $7e
    cp $de                                        ; $599d: $fe $de
    jr z, jr_005_59a5                             ; $599f: $28 $04

    cp $df                                        ; $59a1: $fe $df
    jr nz, jr_005_59ba                            ; $59a3: $20 $15

jr_005_59a5:
    push hl                                       ; $59a5: $e5
    push bc                                       ; $59a6: $c5
    ld h, d                                       ; $59a7: $62
    ld l, e                                       ; $59a8: $6b
    ld bc, $ffe0                                  ; $59a9: $01 $e0 $ff
    add hl, bc                                    ; $59ac: $09
    ld b, a                                       ; $59ad: $47
    ld a, [hl]                                    ; $59ae: $7e
    cp $03                                        ; $59af: $fe $03
    ld a, b                                       ; $59b1: $78
    jr nz, jr_005_59b6                            ; $59b2: $20 $02

    sub $d0                                       ; $59b4: $d6 $d0

jr_005_59b6:
    ld [hl], a                                    ; $59b6: $77
    pop bc                                        ; $59b7: $c1
    pop hl                                        ; $59b8: $e1
    inc hl                                        ; $59b9: $23

jr_005_59ba:
    call Call_005_5cc2                            ; $59ba: $cd $c2 $5c
    inc de                                        ; $59bd: $13
    ld a, e                                       ; $59be: $7b
    and $1f                                       ; $59bf: $e6 $1f
    jr nz, jr_005_5990                            ; $59c1: $20 $cd

    push hl                                       ; $59c3: $e5
    ld h, d                                       ; $59c4: $62
    ld l, e                                       ; $59c5: $6b
    ld de, $ffe0                                  ; $59c6: $11 $e0 $ff
    add hl, de                                    ; $59c9: $19
    ld d, h                                       ; $59ca: $54
    ld e, l                                       ; $59cb: $5d
    pop hl                                        ; $59cc: $e1
    jr jr_005_5990                                ; $59cd: $18 $c1

jr_005_59cf:
    pop af                                        ; $59cf: $f1
    ret                                           ; $59d0: $c9


    push af                                       ; $59d1: $f5
    push bc                                       ; $59d2: $c5
    push hl                                       ; $59d3: $e5
    add sp, -$0a                                  ; $59d4: $e8 $f6
    ld hl, sp+$00                                 ; $59d6: $f8 $00
    push de                                       ; $59d8: $d5
    ld d, h                                       ; $59d9: $54
    ld e, l                                       ; $59da: $5d
    ld b, h                                       ; $59db: $44
    ld c, l                                       ; $59dc: $4d
    ld h, $00                                     ; $59dd: $26 $00
    ld l, a                                       ; $59df: $6f
    call Call_000_20e0                            ; $59e0: $cd $e0 $20
    jp Jump_005_5a45                              ; $59e3: $c3 $45 $5a


    push af                                       ; $59e6: $f5
    push bc                                       ; $59e7: $c5
    push hl                                       ; $59e8: $e5
    ld b, h                                       ; $59e9: $44
    ld c, l                                       ; $59ea: $4d
    add sp, -$0a                                  ; $59eb: $e8 $f6
    ld hl, sp+$00                                 ; $59ed: $f8 $00
    push de                                       ; $59ef: $d5
    ld d, h                                       ; $59f0: $54
    ld e, l                                       ; $59f1: $5d
    ld h, b                                       ; $59f2: $60
    ld l, c                                       ; $59f3: $69
    ld b, d                                       ; $59f4: $42
    ld c, e                                       ; $59f5: $4b
    call Call_000_20e0                            ; $59f6: $cd $e0 $20
    jp Jump_005_5a45                              ; $59f9: $c3 $45 $5a


    push af                                       ; $59fc: $f5
    push bc                                       ; $59fd: $c5
    push hl                                       ; $59fe: $e5
    add sp, -$0a                                  ; $59ff: $e8 $f6
    ld hl, sp+$00                                 ; $5a01: $f8 $00
    push de                                       ; $5a03: $d5
    ld d, h                                       ; $5a04: $54
    ld e, l                                       ; $5a05: $5d
    ld b, h                                       ; $5a06: $44
    ld c, l                                       ; $5a07: $4d
    ld h, $00                                     ; $5a08: $26 $00
    ld l, a                                       ; $5a0a: $6f
    ld a, $04                                     ; $5a0b: $3e $04
    call Call_000_21f0                            ; $5a0d: $cd $f0 $21
    jp Jump_005_5a45                              ; $5a10: $c3 $45 $5a


Call_005_5a13:
    push af                                       ; $5a13: $f5
    push bc                                       ; $5a14: $c5
    push hl                                       ; $5a15: $e5
    ld b, h                                       ; $5a16: $44
    ld c, l                                       ; $5a17: $4d
    add sp, -$0a                                  ; $5a18: $e8 $f6
    ld hl, sp+$00                                 ; $5a1a: $f8 $00
    push de                                       ; $5a1c: $d5
    ld d, h                                       ; $5a1d: $54
    ld e, l                                       ; $5a1e: $5d
    ld h, b                                       ; $5a1f: $60
    ld l, c                                       ; $5a20: $69
    ld b, d                                       ; $5a21: $42
    ld c, e                                       ; $5a22: $4b
    ld a, $00                                     ; $5a23: $3e $00
    call Call_000_21f0                            ; $5a25: $cd $f0 $21
    ld a, [$c360]                                 ; $5a28: $fa $60 $c3
    or a                                          ; $5a2b: $b7
    jr z, jr_005_5a45                             ; $5a2c: $28 $17

    push bc                                       ; $5a2e: $c5
    ld h, b                                       ; $5a2f: $60
    ld l, c                                       ; $5a30: $69
    ld d, $00                                     ; $5a31: $16 $00
    ld e, $05                                     ; $5a33: $1e $05

jr_005_5a35:
    ld a, [hl+]                                   ; $5a35: $2a
    or a                                          ; $5a36: $b7
    jr z, jr_005_5a3c                             ; $5a37: $28 $03

    dec e                                         ; $5a39: $1d
    jr nz, jr_005_5a35                            ; $5a3a: $20 $f9

jr_005_5a3c:
    pop bc                                        ; $5a3c: $c1
    pop hl                                        ; $5a3d: $e1
    add hl, de                                    ; $5a3e: $19
    ld d, h                                       ; $5a3f: $54
    ld e, l                                       ; $5a40: $5d
    ld h, b                                       ; $5a41: $60
    ld l, c                                       ; $5a42: $69
    jr jr_005_5a48                                ; $5a43: $18 $03

Jump_005_5a45:
jr_005_5a45:
    ld h, b                                       ; $5a45: $60
    ld l, c                                       ; $5a46: $69
    pop de                                        ; $5a47: $d1

jr_005_5a48:
    call Call_005_596c                            ; $5a48: $cd $6c $59
    add sp, $0a                                   ; $5a4b: $e8 $0a
    pop hl                                        ; $5a4d: $e1
    pop bc                                        ; $5a4e: $c1
    pop af                                        ; $5a4f: $f1
    ret                                           ; $5a50: $c9


Call_005_5a51:
    push af                                       ; $5a51: $f5
    push bc                                       ; $5a52: $c5
    push de                                       ; $5a53: $d5
    push hl                                       ; $5a54: $e5
    ld a, $06                                     ; $5a55: $3e $06
    dec a                                         ; $5a57: $3d
    cp b                                          ; $5a58: $b8
    jr c, jr_005_5a70                             ; $5a59: $38 $15

    ld d, $00                                     ; $5a5b: $16 $00
    ld e, b                                       ; $5a5d: $58
    sla e                                         ; $5a5e: $cb $23
    sla e                                         ; $5a60: $cb $23
    ld b, h                                       ; $5a62: $44
    ld c, l                                       ; $5a63: $4d
    ld hl, $d800                                  ; $5a64: $21 $00 $d8
    add hl, de                                    ; $5a67: $19
    inc hl                                        ; $5a68: $23
    inc hl                                        ; $5a69: $23
    ld a, [hl]                                    ; $5a6a: $7e
    and $e0                                       ; $5a6b: $e6 $e0
    or b                                          ; $5a6d: $b0
    ld [hl+], a                                   ; $5a6e: $22
    ld [hl], c                                    ; $5a6f: $71

jr_005_5a70:
    pop hl                                        ; $5a70: $e1
    pop de                                        ; $5a71: $d1
    pop bc                                        ; $5a72: $c1
    pop af                                        ; $5a73: $f1
    ret                                           ; $5a74: $c9


    push af                                       ; $5a75: $f5
    push bc                                       ; $5a76: $c5
    push de                                       ; $5a77: $d5
    ld a, $06                                     ; $5a78: $3e $06
    dec a                                         ; $5a7a: $3d
    cp b                                          ; $5a7b: $b8
    jr c, jr_005_5a92                             ; $5a7c: $38 $14

    ld d, $00                                     ; $5a7e: $16 $00
    ld e, b                                       ; $5a80: $58
    sla e                                         ; $5a81: $cb $23
    sla e                                         ; $5a83: $cb $23
    ld hl, $d800                                  ; $5a85: $21 $00 $d8
    add hl, de                                    ; $5a88: $19
    inc hl                                        ; $5a89: $23
    inc hl                                        ; $5a8a: $23
    ld a, [hl+]                                   ; $5a8b: $2a
    and $1f                                       ; $5a8c: $e6 $1f
    ld b, a                                       ; $5a8e: $47
    ld c, [hl]                                    ; $5a8f: $4e
    ld h, b                                       ; $5a90: $60
    ld l, c                                       ; $5a91: $69

jr_005_5a92:
    pop de                                        ; $5a92: $d1
    pop bc                                        ; $5a93: $c1
    pop af                                        ; $5a94: $f1
    ret                                           ; $5a95: $c9


Call_005_5a96:
    push af                                       ; $5a96: $f5
    push bc                                       ; $5a97: $c5
    xor a                                         ; $5a98: $af
    call Call_005_622f                            ; $5a99: $cd $2f $62
    push hl                                       ; $5a9c: $e5
    ld a, [$d824]                                 ; $5a9d: $fa $24 $d8
    ld b, a                                       ; $5aa0: $47
    call Call_005_5a51                            ; $5aa1: $cd $51 $5a
    pop hl                                        ; $5aa4: $e1
    pop bc                                        ; $5aa5: $c1
    pop af                                        ; $5aa6: $f1
    ret                                           ; $5aa7: $c9


Call_005_5aa8:
    push af                                       ; $5aa8: $f5
    push bc                                       ; $5aa9: $c5
    push de                                       ; $5aaa: $d5
    push hl                                       ; $5aab: $e5
    ld a, $06                                     ; $5aac: $3e $06
    dec a                                         ; $5aae: $3d
    cp b                                          ; $5aaf: $b8
    jr c, jr_005_5a70                             ; $5ab0: $38 $be

    ld d, $00                                     ; $5ab2: $16 $00
    ld e, b                                       ; $5ab4: $58
    sla e                                         ; $5ab5: $cb $23
    sla e                                         ; $5ab7: $cb $23
    ld hl, $d800                                  ; $5ab9: $21 $00 $d8
    add hl, de                                    ; $5abc: $19
    ld e, [hl]                                    ; $5abd: $5e
    inc hl                                        ; $5abe: $23
    ld d, [hl]                                    ; $5abf: $56
    inc hl                                        ; $5ac0: $23
    ld b, [hl]                                    ; $5ac1: $46
    inc hl                                        ; $5ac2: $23
    ld c, [hl]                                    ; $5ac3: $4e
    ld a, b                                       ; $5ac4: $78
    and $1f                                       ; $5ac5: $e6 $1f
    ld b, a                                       ; $5ac7: $47
    ld a, [$d850]                                 ; $5ac8: $fa $50 $d8
    or a                                          ; $5acb: $b7
    jr z, jr_005_5ad2                             ; $5acc: $28 $04

    xor a                                         ; $5ace: $af
    ld [$d850], a                                 ; $5acf: $ea $50 $d8

jr_005_5ad2:
    ld a, b                                       ; $5ad2: $78
    cp $03                                        ; $5ad3: $fe $03
    ld a, $01                                     ; $5ad5: $3e $01
    ld [$d85f], a                                 ; $5ad7: $ea $5f $d8
    jr z, jr_005_5afe                             ; $5ada: $28 $22

    xor a                                         ; $5adc: $af
    ld [$d85f], a                                 ; $5add: $ea $5f $d8
    ld h, d                                       ; $5ae0: $62
    ld l, e                                       ; $5ae1: $6b
    push hl                                       ; $5ae2: $e5
    push hl                                       ; $5ae3: $e5
    ld h, b                                       ; $5ae4: $60
    ld l, c                                       ; $5ae5: $69
    call Call_005_6179                            ; $5ae6: $cd $79 $61
    pop hl                                        ; $5ae9: $e1
    call Call_005_5b3b                            ; $5aea: $cd $3b $5b
    inc hl                                        ; $5aed: $23
    ld d, [hl]                                    ; $5aee: $56
    inc hl                                        ; $5aef: $23
    ld e, [hl]                                    ; $5af0: $5e
    inc hl                                        ; $5af1: $23
    inc d                                         ; $5af2: $14
    inc e                                         ; $5af3: $1c
    pop hl                                        ; $5af4: $e1
    call Call_005_4831                            ; $5af5: $cd $31 $48
    ld hl, $c600                                  ; $5af8: $21 $00 $c6
    call Call_005_5235                            ; $5afb: $cd $35 $52

jr_005_5afe:
    pop hl                                        ; $5afe: $e1
    pop de                                        ; $5aff: $d1
    pop bc                                        ; $5b00: $c1
    pop af                                        ; $5b01: $f1
    ret                                           ; $5b02: $c9


Call_005_5b03:
    push af                                       ; $5b03: $f5
    push bc                                       ; $5b04: $c5
    ld a, [$d824]                                 ; $5b05: $fa $24 $d8
    ld b, a                                       ; $5b08: $47
    call Call_005_5aa8                            ; $5b09: $cd $a8 $5a
    pop bc                                        ; $5b0c: $c1
    pop af                                        ; $5b0d: $f1
    ret                                           ; $5b0e: $c9


    push af                                       ; $5b0f: $f5
    push bc                                       ; $5b10: $c5
    push de                                       ; $5b11: $d5
    push hl                                       ; $5b12: $e5
    ld c, a                                       ; $5b13: $4f
    ld a, $06                                     ; $5b14: $3e $06
    dec a                                         ; $5b16: $3d
    cp b                                          ; $5b17: $b8
    jr c, jr_005_5b36                             ; $5b18: $38 $1c

    ld d, $00                                     ; $5b1a: $16 $00
    ld e, b                                       ; $5b1c: $58
    sla e                                         ; $5b1d: $cb $23
    sla e                                         ; $5b1f: $cb $23
    ld hl, $d800                                  ; $5b21: $21 $00 $d8
    add hl, de                                    ; $5b24: $19
    inc hl                                        ; $5b25: $23
    inc hl                                        ; $5b26: $23
    ld a, [hl]                                    ; $5b27: $7e
    and $1f                                       ; $5b28: $e6 $1f
    sla c                                         ; $5b2a: $cb $21
    sla c                                         ; $5b2c: $cb $21
    sla c                                         ; $5b2e: $cb $21
    sla c                                         ; $5b30: $cb $21
    sla c                                         ; $5b32: $cb $21
    or c                                          ; $5b34: $b1
    ld [hl], a                                    ; $5b35: $77

jr_005_5b36:
    pop hl                                        ; $5b36: $e1
    pop de                                        ; $5b37: $d1
    pop bc                                        ; $5b38: $c1
    pop af                                        ; $5b39: $f1
    ret                                           ; $5b3a: $c9


Call_005_5b3b:
    push af                                       ; $5b3b: $f5
    push bc                                       ; $5b3c: $c5
    push de                                       ; $5b3d: $d5
    push hl                                       ; $5b3e: $e5
    ld hl, $c600                                  ; $5b3f: $21 $00 $c6
    ld a, [$d84f]                                 ; $5b42: $fa $4f $d8
    or a                                          ; $5b45: $b7
    jr z, jr_005_5b4e                             ; $5b46: $28 $06

    ld hl, $d84e                                  ; $5b48: $21 $4e $d8
    ld a, [hl+]                                   ; $5b4b: $2a
    ld h, [hl]                                    ; $5b4c: $66
    ld l, a                                       ; $5b4d: $6f

jr_005_5b4e:
    xor a                                         ; $5b4e: $af
    ld b, a                                       ; $5b4f: $47
    ld d, a                                       ; $5b50: $57
    ld e, a                                       ; $5b51: $5f

Jump_005_5b52:
jr_005_5b52:
    ld a, [hl+]                                   ; $5b52: $2a
    cp $00                                        ; $5b53: $fe $00
    jp z, Jump_005_5bd2                           ; $5b55: $ca $d2 $5b

    cp $02                                        ; $5b58: $fe $02
    jp z, Jump_005_5bd2                           ; $5b5a: $ca $d2 $5b

    cp $01                                        ; $5b5d: $fe $01
    jr z, jr_005_5b63                             ; $5b5f: $28 $02

    jr jr_005_5b6e                                ; $5b61: $18 $0b

jr_005_5b63:
    inc e                                         ; $5b63: $1c
    ld a, d                                       ; $5b64: $7a
    cp b                                          ; $5b65: $b8
    ld a, b                                       ; $5b66: $78
    ld b, $00                                     ; $5b67: $06 $00
    jr nc, jr_005_5b52                            ; $5b69: $30 $e7

    ld d, a                                       ; $5b6b: $57
    jr jr_005_5b52                                ; $5b6c: $18 $e4

jr_005_5b6e:
    cp $08                                        ; $5b6e: $fe $08
    jr nz, jr_005_5b79                            ; $5b70: $20 $07

    call Call_005_5679                            ; $5b72: $cd $79 $56
    add b                                         ; $5b75: $80
    ld b, a                                       ; $5b76: $47
    jr jr_005_5b52                                ; $5b77: $18 $d9

jr_005_5b79:
    cp $09                                        ; $5b79: $fe $09
    jr nz, jr_005_5b84                            ; $5b7b: $20 $07

    call Call_005_56e2                            ; $5b7d: $cd $e2 $56
    add b                                         ; $5b80: $80
    ld b, a                                       ; $5b81: $47
    jr jr_005_5b52                                ; $5b82: $18 $ce

jr_005_5b84:
    cp $07                                        ; $5b84: $fe $07
    jr nz, jr_005_5b8f                            ; $5b86: $20 $07

    call Call_005_5634                            ; $5b88: $cd $34 $56
    add b                                         ; $5b8b: $80
    ld b, a                                       ; $5b8c: $47
    jr jr_005_5b52                                ; $5b8d: $18 $c3

jr_005_5b8f:
    cp $04                                        ; $5b8f: $fe $04
    jr nz, jr_005_5b9a                            ; $5b91: $20 $07

    call Call_005_55cb                            ; $5b93: $cd $cb $55
    add b                                         ; $5b96: $80
    ld b, a                                       ; $5b97: $47
    jr jr_005_5b52                                ; $5b98: $18 $b8

jr_005_5b9a:
    cp $0b                                        ; $5b9a: $fe $0b
    jr nz, jr_005_5ba5                            ; $5b9c: $20 $07

    call Call_005_579e                            ; $5b9e: $cd $9e $57
    add b                                         ; $5ba1: $80
    ld b, a                                       ; $5ba2: $47
    jr jr_005_5b52                                ; $5ba3: $18 $ad

jr_005_5ba5:
    cp $0e                                        ; $5ba5: $fe $0e
    jr nz, jr_005_5bb4                            ; $5ba7: $20 $0b

    ld a, [hl+]                                   ; $5ba9: $2a
    ld [$c361], a                                 ; $5baa: $ea $61 $c3
    call Call_005_57fd                            ; $5bad: $cd $fd $57
    add b                                         ; $5bb0: $80
    ld b, a                                       ; $5bb1: $47
    jr jr_005_5b52                                ; $5bb2: $18 $9e

jr_005_5bb4:
    cp $0f                                        ; $5bb4: $fe $0f
    jr nz, jr_005_5bbf                            ; $5bb6: $20 $07

    call Call_005_5857                            ; $5bb8: $cd $57 $58
    add b                                         ; $5bbb: $80
    ld b, a                                       ; $5bbc: $47
    jr jr_005_5b52                                ; $5bbd: $18 $93

jr_005_5bbf:
    cp $20                                        ; $5bbf: $fe $20
    jp c, Jump_005_5b52                           ; $5bc1: $da $52 $5b

    cp $7b                                        ; $5bc4: $fe $7b
    jp nc, Jump_005_5b52                          ; $5bc6: $d2 $52 $5b

    rst $18                                       ; $5bc9: $df

    db $06, $03

    ld a, c                                       ; $5bcc: $79
    add b                                         ; $5bcd: $80
    ld b, a                                       ; $5bce: $47
    jp Jump_005_5b52                              ; $5bcf: $c3 $52 $5b


Jump_005_5bd2:
    inc e                                         ; $5bd2: $1c
    ld a, d                                       ; $5bd3: $7a
    cp b                                          ; $5bd4: $b8
    jr nc, jr_005_5bd8                            ; $5bd5: $30 $01

    ld d, b                                       ; $5bd7: $50

jr_005_5bd8:
    ld a, d                                       ; $5bd8: $7a
    and $07                                       ; $5bd9: $e6 $07
    jr z, jr_005_5bdf                             ; $5bdb: $28 $02

    ld a, $01                                     ; $5bdd: $3e $01

jr_005_5bdf:
    sra d                                         ; $5bdf: $cb $2a
    res 7, d                                      ; $5be1: $cb $ba
    sra d                                         ; $5be3: $cb $2a
    sra d                                         ; $5be5: $cb $2a
    add d                                         ; $5be7: $82
    ld d, a                                       ; $5be8: $57
    ld a, d                                       ; $5be9: $7a
    ld [$d854], a                                 ; $5bea: $ea $54 $d8
    push de                                       ; $5bed: $d5
    push af                                       ; $5bee: $f5
    ld a, a                                       ; $5bef: $7f
    ld de, $0a0c                                  ; $5bf0: $11 $0c $0a
    call Call_000_22a5                            ; $5bf3: $cd $a5 $22
    pop af                                        ; $5bf6: $f1
    pop de                                        ; $5bf7: $d1
    inc d                                         ; $5bf8: $14
    inc d                                         ; $5bf9: $14
    sla e                                         ; $5bfa: $cb $23
    inc e                                         ; $5bfc: $1c
    push de                                       ; $5bfd: $d5
    ld a, [$d824]                                 ; $5bfe: $fa $24 $d8
    cp $ff                                        ; $5c01: $fe $ff
    jr nz, jr_005_5c06                            ; $5c03: $20 $01

    xor a                                         ; $5c05: $af

jr_005_5c06:
    sla a                                         ; $5c06: $cb $27
    sla a                                         ; $5c08: $cb $27
    ld b, $00                                     ; $5c0a: $06 $00
    ld c, a                                       ; $5c0c: $4f
    ld hl, $d800                                  ; $5c0d: $21 $00 $d8
    add hl, bc                                    ; $5c10: $09
    ld c, [hl]                                    ; $5c11: $4e
    inc hl                                        ; $5c12: $23
    ld b, [hl]                                    ; $5c13: $46
    ld h, b                                       ; $5c14: $60
    ld l, c                                       ; $5c15: $69
    pop bc                                        ; $5c16: $c1
    ld a, [$d827]                                 ; $5c17: $fa $27 $d8
    sub b                                         ; $5c1a: $90
    sra a                                         ; $5c1b: $cb $2f
    ld d, a                                       ; $5c1d: $57
    ld a, [$d825]                                 ; $5c1e: $fa $25 $d8
    add d                                         ; $5c21: $82
    ld d, a                                       ; $5c22: $57
    ld a, [$d828]                                 ; $5c23: $fa $28 $d8
    sub c                                         ; $5c26: $91
    sra a                                         ; $5c27: $cb $2f
    ld e, a                                       ; $5c29: $5f
    ld a, [$d826]                                 ; $5c2a: $fa $26 $d8
    add e                                         ; $5c2d: $83
    ld e, a                                       ; $5c2e: $5f
    ld a, [hl]                                    ; $5c2f: $7e
    call Call_005_4773                            ; $5c30: $cd $73 $47
    ld [$d867], a                                 ; $5c33: $ea $67 $d8
    pop hl                                        ; $5c36: $e1
    pop de                                        ; $5c37: $d1
    pop bc                                        ; $5c38: $c1
    pop af                                        ; $5c39: $f1
    ret                                           ; $5c3a: $c9


Call_005_5c3b:
    push af                                       ; $5c3b: $f5
    push de                                       ; $5c3c: $d5
    push hl                                       ; $5c3d: $e5
    ld hl, $c600                                  ; $5c3e: $21 $00 $c6
    xor a                                         ; $5c41: $af
    ld b, a                                       ; $5c42: $47
    ld d, a                                       ; $5c43: $57
    ld e, a                                       ; $5c44: $5f

Jump_005_5c45:
jr_005_5c45:
    ld a, [hl+]                                   ; $5c45: $2a
    cp $00                                        ; $5c46: $fe $00
    jr z, jr_005_5c9f                             ; $5c48: $28 $55

    cp $01                                        ; $5c4a: $fe $01
    jr nz, jr_005_5c59                            ; $5c4c: $20 $0b

    inc e                                         ; $5c4e: $1c
    ld a, d                                       ; $5c4f: $7a
    cp b                                          ; $5c50: $b8
    ld a, b                                       ; $5c51: $78
    ld b, $00                                     ; $5c52: $06 $00
    jr nc, jr_005_5c45                            ; $5c54: $30 $ef

    ld d, a                                       ; $5c56: $57
    jr jr_005_5c45                                ; $5c57: $18 $ec

jr_005_5c59:
    cp $08                                        ; $5c59: $fe $08
    jr nz, jr_005_5c64                            ; $5c5b: $20 $07

    call Call_005_5679                            ; $5c5d: $cd $79 $56
    add b                                         ; $5c60: $80
    ld b, a                                       ; $5c61: $47
    jr jr_005_5c45                                ; $5c62: $18 $e1

jr_005_5c64:
    cp $09                                        ; $5c64: $fe $09
    jr nz, jr_005_5c6f                            ; $5c66: $20 $07

    call Call_005_56e2                            ; $5c68: $cd $e2 $56
    add b                                         ; $5c6b: $80
    ld b, a                                       ; $5c6c: $47
    jr jr_005_5c45                                ; $5c6d: $18 $d6

jr_005_5c6f:
    cp $10                                        ; $5c6f: $fe $10
    jr nz, jr_005_5c77                            ; $5c71: $20 $04

    inc b                                         ; $5c73: $04
    jp Jump_005_5c45                              ; $5c74: $c3 $45 $5c


jr_005_5c77:
    cp $11                                        ; $5c77: $fe $11
    jr nz, jr_005_5c7f                            ; $5c79: $20 $04

    inc b                                         ; $5c7b: $04
    jp Jump_005_5c45                              ; $5c7c: $c3 $45 $5c


jr_005_5c7f:
    cp $12                                        ; $5c7f: $fe $12
    jr nz, jr_005_5c87                            ; $5c81: $20 $04

    inc b                                         ; $5c83: $04
    jp Jump_005_5c45                              ; $5c84: $c3 $45 $5c


jr_005_5c87:
    cp $13                                        ; $5c87: $fe $13
    jr nz, jr_005_5c8f                            ; $5c89: $20 $04

    inc b                                         ; $5c8b: $04
    jp Jump_005_5c45                              ; $5c8c: $c3 $45 $5c


jr_005_5c8f:
    cp $20                                        ; $5c8f: $fe $20
    jr c, jr_005_5c45                             ; $5c91: $38 $b2

    cp $7b                                        ; $5c93: $fe $7b
    jr nc, jr_005_5c45                            ; $5c95: $30 $ae

    rst $18                                       ; $5c97: $df

    db $06, $03

    ld a, c                                       ; $5c9a: $79
    add b                                         ; $5c9b: $80
    ld b, a                                       ; $5c9c: $47
    jr jr_005_5c45                                ; $5c9d: $18 $a6

jr_005_5c9f:
    inc e                                         ; $5c9f: $1c
    ld a, d                                       ; $5ca0: $7a
    cp b                                          ; $5ca1: $b8
    jr nc, jr_005_5ca5                            ; $5ca2: $30 $01

    ld d, b                                       ; $5ca4: $50

jr_005_5ca5:
    ld a, d                                       ; $5ca5: $7a
    and $07                                       ; $5ca6: $e6 $07
    jr z, jr_005_5cac                             ; $5ca8: $28 $02

    ld a, $01                                     ; $5caa: $3e $01

jr_005_5cac:
    sra d                                         ; $5cac: $cb $2a
    res 7, d                                      ; $5cae: $cb $ba
    sra d                                         ; $5cb0: $cb $2a
    sra d                                         ; $5cb2: $cb $2a
    add d                                         ; $5cb4: $82
    ld d, a                                       ; $5cb5: $57
    inc d                                         ; $5cb6: $14
    inc d                                         ; $5cb7: $14
    inc d                                         ; $5cb8: $14
    sla e                                         ; $5cb9: $cb $23
    inc e                                         ; $5cbb: $1c
    push de                                       ; $5cbc: $d5
    pop bc                                        ; $5cbd: $c1
    pop hl                                        ; $5cbe: $e1
    pop de                                        ; $5cbf: $d1
    pop af                                        ; $5cc0: $f1
    ret                                           ; $5cc1: $c9


Call_005_5cc2:
    push af                                       ; $5cc2: $f5
    push bc                                       ; $5cc3: $c5
    push de                                       ; $5cc4: $d5
    push hl                                       ; $5cc5: $e5
    ld c, a                                       ; $5cc6: $4f
    ldh a, [$96]                                  ; $5cc7: $f0 $96
    push af                                       ; $5cc9: $f5
    ld a, $05                                     ; $5cca: $3e $05
    ldh [$96], a                                  ; $5ccc: $e0 $96
    ldh [rSVBK], a                                ; $5cce: $e0 $70
    ld a, [$d821]                                 ; $5cd0: $fa $21 $d8
    ld b, a                                       ; $5cd3: $47
    ld a, [$d824]                                 ; $5cd4: $fa $24 $d8
    cp b                                          ; $5cd7: $b8
    jr nz, jr_005_5d15                            ; $5cd8: $20 $3b

    ld a, c                                       ; $5cda: $79
    jr jr_005_5ce5                                ; $5cdb: $18 $08

    cp $20                                        ; $5cdd: $fe $20
    jr nz, jr_005_5ce5                            ; $5cdf: $20 $04

    ld b, $04                                     ; $5ce1: $06 $04
    jr jr_005_5cec                                ; $5ce3: $18 $07

jr_005_5ce5:
    ld a, [$d829]                                 ; $5ce5: $fa $29 $d8
    or a                                          ; $5ce8: $b7
    ld b, a                                       ; $5ce9: $47
    jr z, jr_005_5d15                             ; $5cea: $28 $29

jr_005_5cec:
    ld a, [$d862]                                 ; $5cec: $fa $62 $d8
    cp $08                                        ; $5cef: $fe $08
    jr z, jr_005_5d04                             ; $5cf1: $28 $11

    ld e, a                                       ; $5cf3: $5f
    sla e                                         ; $5cf4: $cb $23
    sla e                                         ; $5cf6: $cb $23
    ld d, $69                                     ; $5cf8: $16 $69
    ld a, c                                       ; $5cfa: $79
    and $03                                       ; $5cfb: $e6 $03
    add e                                         ; $5cfd: $83
    add d                                         ; $5cfe: $82
    push bc                                       ; $5cff: $c5
    call Call_000_2c19                            ; $5d00: $cd $19 $2c
    pop bc                                        ; $5d03: $c1

jr_005_5d04:
    ldh a, [$90]                                  ; $5d04: $f0 $90
    and $f3                                       ; $5d06: $e6 $f3
    jr z, jr_005_5d0f                             ; $5d08: $28 $05

    call Call_000_2e3b                            ; $5d0a: $cd $3b $2e
    jr jr_005_5d15                                ; $5d0d: $18 $06

jr_005_5d0f:
    call Call_000_2e3b                            ; $5d0f: $cd $3b $2e
    dec b                                         ; $5d12: $05
    jr nz, jr_005_5d0f                            ; $5d13: $20 $fa

jr_005_5d15:
    pop af                                        ; $5d15: $f1
    ldh [$96], a                                  ; $5d16: $e0 $96
    ldh [rSVBK], a                                ; $5d18: $e0 $70
    pop hl                                        ; $5d1a: $e1
    pop de                                        ; $5d1b: $d1
    pop bc                                        ; $5d1c: $c1
    pop af                                        ; $5d1d: $f1
    ret                                           ; $5d1e: $c9


Call_005_5d1f:
    push af                                       ; $5d1f: $f5
    ld a, [$c82d]                                 ; $5d20: $fa $2d $c8
    bit 7, a                                      ; $5d23: $cb $7f
    jr z, jr_005_5d2d                             ; $5d25: $28 $06

    xor a                                         ; $5d27: $af
    ld [$d829], a                                 ; $5d28: $ea $29 $d8
    jr jr_005_5d47                                ; $5d2b: $18 $1a

jr_005_5d2d:
    or a                                          ; $5d2d: $b7
    jr nz, jr_005_5d37                            ; $5d2e: $20 $07

    ld a, $00                                     ; $5d30: $3e $00
    ld [$d829], a                                 ; $5d32: $ea $29 $d8
    jr jr_005_5d47                                ; $5d35: $18 $10

jr_005_5d37:
    cp $01                                        ; $5d37: $fe $01
    jr nz, jr_005_5d42                            ; $5d39: $20 $07

    ld a, $02                                     ; $5d3b: $3e $02
    ld [$d829], a                                 ; $5d3d: $ea $29 $d8
    jr jr_005_5d47                                ; $5d40: $18 $05

jr_005_5d42:
    ld a, $04                                     ; $5d42: $3e $04
    ld [$d829], a                                 ; $5d44: $ea $29 $d8

jr_005_5d47:
    pop af                                        ; $5d47: $f1
    ret                                           ; $5d48: $c9


    push af                                       ; $5d49: $f5
    push bc                                       ; $5d4a: $c5
    push de                                       ; $5d4b: $d5
    ld b, a                                       ; $5d4c: $47
    ldh a, [$96]                                  ; $5d4d: $f0 $96
    push af                                       ; $5d4f: $f5
    ld a, $05                                     ; $5d50: $3e $05
    ldh [$96], a                                  ; $5d52: $e0 $96
    ldh [rSVBK], a                                ; $5d54: $e0 $70
    xor a                                         ; $5d56: $af
    ld [$d847], a                                 ; $5d57: $ea $47 $d8
    ld [$d866], a                                 ; $5d5a: $ea $66 $d8
    ld [$d848], a                                 ; $5d5d: $ea $48 $d8
    ld [$d867], a                                 ; $5d60: $ea $67 $d8
    ld [$d849], a                                 ; $5d63: $ea $49 $d8
    ld [$d868], a                                 ; $5d66: $ea $68 $d8
    call Call_005_622f                            ; $5d69: $cd $2f $62
    ld a, b                                       ; $5d6c: $78
    cp $ff                                        ; $5d6d: $fe $ff
    jr nz, jr_005_5d74                            ; $5d6f: $20 $03

    ld a, [$c296]                                 ; $5d71: $fa $96 $c2

jr_005_5d74:
    ld [$d851], a                                 ; $5d74: $ea $51 $d8
    call Call_005_5d1f                            ; $5d77: $cd $1f $5d
    bit 7, a                                      ; $5d7a: $cb $7f
    ld b, $08                                     ; $5d7c: $06 $08
    jr nz, jr_005_5d84                            ; $5d7e: $20 $04

    call Call_005_667b                            ; $5d80: $cd $7b $66
    ld b, a                                       ; $5d83: $47

jr_005_5d84:
    ld a, b                                       ; $5d84: $78
    ld [$d862], a                                 ; $5d85: $ea $62 $d8
    ld a, [$d824]                                 ; $5d88: $fa $24 $d8
    cp $ff                                        ; $5d8b: $fe $ff
    jr nz, jr_005_5d95                            ; $5d8d: $20 $06

    ld a, [$d851]                                 ; $5d8f: $fa $51 $d8
    call Call_005_5f62                            ; $5d92: $cd $62 $5f

jr_005_5d95:
    ldh a, [$96]                                  ; $5d95: $f0 $96
    push af                                       ; $5d97: $f5
    ld a, $07                                     ; $5d98: $3e $07
    ldh [$96], a                                  ; $5d9a: $e0 $96
    ldh [rSVBK], a                                ; $5d9c: $e0 $70
    rst $18                                       ; $5d9e: $df

    db $00, $03

    rst $18                                       ; $5da1: $df

    db $04, $03

    pop af                                        ; $5da4: $f1
    ldh [$96], a                                  ; $5da5: $e0 $96
    ldh [rSVBK], a                                ; $5da7: $e0 $70
    call Call_005_5a96                            ; $5da9: $cd $96 $5a
    call Call_005_4492                            ; $5dac: $cd $92 $44
    rst $18                                       ; $5daf: $df

    db $14, $05

    ld a, [$d850]                                 ; $5db2: $fa $50 $d8
    or a                                          ; $5db5: $b7
    jr nz, jr_005_5d95                            ; $5db6: $20 $dd

    ld a, [$d824]                                 ; $5db8: $fa $24 $d8
    call Call_005_4c5c                            ; $5dbb: $cd $5c $4c
    ld a, $ff                                     ; $5dbe: $3e $ff
    ld [$d824], a                                 ; $5dc0: $ea $24 $d8
    call Call_005_4492                            ; $5dc3: $cd $92 $44
    rst $18                                       ; $5dc6: $df

    db $14, $05

    xor a                                         ; $5dc9: $af
    ld [$d847], a                                 ; $5dca: $ea $47 $d8
    ld [$d866], a                                 ; $5dcd: $ea $66 $d8
    ld [$d848], a                                 ; $5dd0: $ea $48 $d8
    ld [$d867], a                                 ; $5dd3: $ea $67 $d8
    ld [$d849], a                                 ; $5dd6: $ea $49 $d8
    ld [$d868], a                                 ; $5dd9: $ea $68 $d8
    pop af                                        ; $5ddc: $f1
    ldh [$96], a                                  ; $5ddd: $e0 $96
    ldh [rSVBK], a                                ; $5ddf: $e0 $70
    pop de                                        ; $5de1: $d1
    pop bc                                        ; $5de2: $c1
    pop af                                        ; $5de3: $f1
    ret                                           ; $5de4: $c9


    push af                                       ; $5de5: $f5
    push bc                                       ; $5de6: $c5
    push de                                       ; $5de7: $d5
    ld b, a                                       ; $5de8: $47
    ldh a, [$96]                                  ; $5de9: $f0 $96
    push af                                       ; $5deb: $f5
    ld a, $05                                     ; $5dec: $3e $05
    ldh [$96], a                                  ; $5dee: $e0 $96
    ldh [rSVBK], a                                ; $5df0: $e0 $70
    xor a                                         ; $5df2: $af
    ld [$d847], a                                 ; $5df3: $ea $47 $d8
    ld [$d866], a                                 ; $5df6: $ea $66 $d8
    ld [$d848], a                                 ; $5df9: $ea $48 $d8
    ld [$d867], a                                 ; $5dfc: $ea $67 $d8
    ld [$d849], a                                 ; $5dff: $ea $49 $d8
    ld [$d868], a                                 ; $5e02: $ea $68 $d8
    call Call_005_622f                            ; $5e05: $cd $2f $62
    ld a, b                                       ; $5e08: $78
    cp $ff                                        ; $5e09: $fe $ff
    jr nz, jr_005_5e10                            ; $5e0b: $20 $03

    ld a, [$c296]                                 ; $5e0d: $fa $96 $c2

jr_005_5e10:
    ld [$d851], a                                 ; $5e10: $ea $51 $d8
    call Call_005_5d1f                            ; $5e13: $cd $1f $5d
    bit 7, a                                      ; $5e16: $cb $7f
    ld b, $08                                     ; $5e18: $06 $08
    jr nz, jr_005_5e20                            ; $5e1a: $20 $04

    call Call_005_667b                            ; $5e1c: $cd $7b $66
    ld b, a                                       ; $5e1f: $47

jr_005_5e20:
    ld a, b                                       ; $5e20: $78
    ld [$d862], a                                 ; $5e21: $ea $62 $d8
    ld a, [$d824]                                 ; $5e24: $fa $24 $d8
    cp $ff                                        ; $5e27: $fe $ff
    jr nz, jr_005_5e31                            ; $5e29: $20 $06

    ld a, [$d851]                                 ; $5e2b: $fa $51 $d8
    call Call_005_5f62                            ; $5e2e: $cd $62 $5f

jr_005_5e31:
    ldh a, [$96]                                  ; $5e31: $f0 $96
    push af                                       ; $5e33: $f5
    ld a, $07                                     ; $5e34: $3e $07
    ldh [$96], a                                  ; $5e36: $e0 $96
    ldh [rSVBK], a                                ; $5e38: $e0 $70
    rst $18                                       ; $5e3a: $df

    db $00, $03

    rst $18                                       ; $5e3d: $df

    db $04, $03

    pop af                                        ; $5e40: $f1
    ldh [$96], a                                  ; $5e41: $e0 $96
    ldh [rSVBK], a                                ; $5e43: $e0 $70
    call Call_005_5a96                            ; $5e45: $cd $96 $5a
    call Call_005_4492                            ; $5e48: $cd $92 $44
    rst $18                                       ; $5e4b: $df

    db $14, $05

    ld a, [$d850]                                 ; $5e4e: $fa $50 $d8
    or a                                          ; $5e51: $b7
    jr nz, jr_005_5e31                            ; $5e52: $20 $dd

    xor a                                         ; $5e54: $af
    ld [$d847], a                                 ; $5e55: $ea $47 $d8
    ld [$d866], a                                 ; $5e58: $ea $66 $d8
    ld [$d848], a                                 ; $5e5b: $ea $48 $d8
    ld [$d867], a                                 ; $5e5e: $ea $67 $d8
    ld [$d849], a                                 ; $5e61: $ea $49 $d8
    ld [$d868], a                                 ; $5e64: $ea $68 $d8
    pop af                                        ; $5e67: $f1
    ldh [$96], a                                  ; $5e68: $e0 $96
    ldh [rSVBK], a                                ; $5e6a: $e0 $70
    pop de                                        ; $5e6c: $d1
    pop bc                                        ; $5e6d: $c1
    pop af                                        ; $5e6e: $f1
    ret                                           ; $5e6f: $c9


    push af                                       ; $5e70: $f5
    push bc                                       ; $5e71: $c5
    push de                                       ; $5e72: $d5
    ld b, a                                       ; $5e73: $47
    ldh a, [$96]                                  ; $5e74: $f0 $96
    push af                                       ; $5e76: $f5
    ld a, $05                                     ; $5e77: $3e $05
    ldh [$96], a                                  ; $5e79: $e0 $96
    ldh [rSVBK], a                                ; $5e7b: $e0 $70
    xor a                                         ; $5e7d: $af
    ld [$d847], a                                 ; $5e7e: $ea $47 $d8
    ld [$d866], a                                 ; $5e81: $ea $66 $d8
    ld [$d848], a                                 ; $5e84: $ea $48 $d8
    ld [$d867], a                                 ; $5e87: $ea $67 $d8
    ld [$d849], a                                 ; $5e8a: $ea $49 $d8
    ld [$d868], a                                 ; $5e8d: $ea $68 $d8
    call Call_005_622f                            ; $5e90: $cd $2f $62
    ld a, b                                       ; $5e93: $78
    bit 7, a                                      ; $5e94: $cb $7f
    ld b, $08                                     ; $5e96: $06 $08
    jr nz, jr_005_5e9e                            ; $5e98: $20 $04

    call Call_005_667b                            ; $5e9a: $cd $7b $66
    ld b, a                                       ; $5e9d: $47

jr_005_5e9e:
    ld a, b                                       ; $5e9e: $78
    ld [$d862], a                                 ; $5e9f: $ea $62 $d8
    call Call_005_5d1f                            ; $5ea2: $cd $1f $5d
    ld a, [$d824]                                 ; $5ea5: $fa $24 $d8
    cp $ff                                        ; $5ea8: $fe $ff
    jr nz, jr_005_5eb2                            ; $5eaa: $20 $06

    call Call_005_605f                            ; $5eac: $cd $5f $60
    call Call_000_2e3b                            ; $5eaf: $cd $3b $2e

jr_005_5eb2:
    ldh a, [$96]                                  ; $5eb2: $f0 $96
    push af                                       ; $5eb4: $f5
    ld a, $07                                     ; $5eb5: $3e $07
    ldh [$96], a                                  ; $5eb7: $e0 $96
    ldh [rSVBK], a                                ; $5eb9: $e0 $70
    rst $18                                       ; $5ebb: $df
    nop                                           ; $5ebc: $00
    inc bc                                        ; $5ebd: $03
    rst $18                                       ; $5ebe: $df
    inc b                                         ; $5ebf: $04
    inc bc                                        ; $5ec0: $03
    pop af                                        ; $5ec1: $f1
    ldh [$96], a                                  ; $5ec2: $e0 $96
    ldh [rSVBK], a                                ; $5ec4: $e0 $70
    call Call_005_5a96                            ; $5ec6: $cd $96 $5a
    call Call_005_4492                            ; $5ec9: $cd $92 $44
    rst $18                                       ; $5ecc: $df
    inc d                                         ; $5ecd: $14
    dec b                                         ; $5ece: $05
    ld a, [$d850]                                 ; $5ecf: $fa $50 $d8
    or a                                          ; $5ed2: $b7
    jr nz, jr_005_5eb2                            ; $5ed3: $20 $dd

    ld a, [$d824]                                 ; $5ed5: $fa $24 $d8
    call Call_005_4c5c                            ; $5ed8: $cd $5c $4c
    ld a, $ff                                     ; $5edb: $3e $ff
    ld [$d824], a                                 ; $5edd: $ea $24 $d8
    rst $18                                       ; $5ee0: $df
    inc e                                         ; $5ee1: $1c
    dec b                                         ; $5ee2: $05
    rst $18                                       ; $5ee3: $df
    inc d                                         ; $5ee4: $14
    dec b                                         ; $5ee5: $05
    xor a                                         ; $5ee6: $af
    ld [$d847], a                                 ; $5ee7: $ea $47 $d8
    ld [$d866], a                                 ; $5eea: $ea $66 $d8
    ld [$d848], a                                 ; $5eed: $ea $48 $d8
    ld [$d867], a                                 ; $5ef0: $ea $67 $d8
    ld [$d849], a                                 ; $5ef3: $ea $49 $d8
    ld [$d868], a                                 ; $5ef6: $ea $68 $d8
    pop af                                        ; $5ef9: $f1
    ldh [$96], a                                  ; $5efa: $e0 $96
    ldh [rSVBK], a                                ; $5efc: $e0 $70
    pop de                                        ; $5efe: $d1
    pop bc                                        ; $5eff: $c1
    pop af                                        ; $5f00: $f1
    ret                                           ; $5f01: $c9


    push af                                       ; $5f02: $f5
    push bc                                       ; $5f03: $c5
    push de                                       ; $5f04: $d5
    ld a, d                                       ; $5f05: $7a
    sub $0a                                       ; $5f06: $d6 $0a
    ld d, a                                       ; $5f08: $57
    ld a, e                                       ; $5f09: $7b
    sub $09                                       ; $5f0a: $d6 $09
    ld e, a                                       ; $5f0c: $5f
    ld b, a                                       ; $5f0d: $47
    ldh a, [$96]                                  ; $5f0e: $f0 $96
    push af                                       ; $5f10: $f5
    ld a, $05                                     ; $5f11: $3e $05
    ldh [$96], a                                  ; $5f13: $e0 $96
    ldh [rSVBK], a                                ; $5f15: $e0 $70
    ld a, b                                       ; $5f17: $78
    bit 7, a                                      ; $5f18: $cb $7f
    ld a, $08                                     ; $5f1a: $3e $08
    jr nz, jr_005_5f21                            ; $5f1c: $20 $03

    call Call_005_667b                            ; $5f1e: $cd $7b $66

jr_005_5f21:
    ld [$d862], a                                 ; $5f21: $ea $62 $d8
    ld a, [$d824]                                 ; $5f24: $fa $24 $d8
    cp $ff                                        ; $5f27: $fe $ff
    jr nz, jr_005_5f2e                            ; $5f29: $20 $03

    call Call_005_605f                            ; $5f2b: $cd $5f $60

jr_005_5f2e:
    call Call_005_5a96                            ; $5f2e: $cd $96 $5a
    call Call_005_4492                            ; $5f31: $cd $92 $44
    rst $18                                       ; $5f34: $df
    inc d                                         ; $5f35: $14
    dec b                                         ; $5f36: $05
    ld a, [$d850]                                 ; $5f37: $fa $50 $d8
    or a                                          ; $5f3a: $b7
    jr nz, jr_005_5f2e                            ; $5f3b: $20 $f1

    pop af                                        ; $5f3d: $f1
    ldh [$96], a                                  ; $5f3e: $e0 $96
    ldh [rSVBK], a                                ; $5f40: $e0 $70
    pop de                                        ; $5f42: $d1
    pop bc                                        ; $5f43: $c1
    pop af                                        ; $5f44: $f1
    ret                                           ; $5f45: $c9


    push af                                       ; $5f46: $f5
    ldh a, [$96]                                  ; $5f47: $f0 $96
    push af                                       ; $5f49: $f5
    ld a, $05                                     ; $5f4a: $3e $05
    ldh [$96], a                                  ; $5f4c: $e0 $96
    ldh [rSVBK], a                                ; $5f4e: $e0 $70
    ld a, [$d824]                                 ; $5f50: $fa $24 $d8
    rst $18                                       ; $5f53: $df

    db $0c, $05

    ld a, $ff                                     ; $5f56: $3e $ff
    ld [$d824], a                                 ; $5f58: $ea $24 $d8
    pop af                                        ; $5f5b: $f1
    ldh [$96], a                                  ; $5f5c: $e0 $96
    ldh [rSVBK], a                                ; $5f5e: $e0 $70
    pop af                                        ; $5f60: $f1
    ret                                           ; $5f61: $c9


Call_005_5f62:
    push af                                       ; $5f62: $f5
    push bc                                       ; $5f63: $c5
    push de                                       ; $5f64: $d5
    push hl                                       ; $5f65: $e5
    push hl                                       ; $5f66: $e5
    ld b, a                                       ; $5f67: $47
    ldh a, [$96]                                  ; $5f68: $f0 $96
    push af                                       ; $5f6a: $f5
    ld a, b                                       ; $5f6b: $78
    and $3f                                       ; $5f6c: $e6 $3f
    ld e, a                                       ; $5f6e: $5f
    rl b                                          ; $5f6f: $cb $10
    jr nc, jr_005_5f75                            ; $5f71: $30 $02

    jr jr_005_5fb1                                ; $5f73: $18 $3c

jr_005_5f75:
    call Call_005_6472                            ; $5f75: $cd $72 $64
    ld a, [$c323]                                 ; $5f78: $fa $23 $c3
    ld b, a                                       ; $5f7b: $47
    ld a, l                                       ; $5f7c: $7d
    ldh [$e0], a                                  ; $5f7d: $e0 $e0
    ld a, h                                       ; $5f7f: $7c
    ldh [$e1], a                                  ; $5f80: $e0 $e1
    ld a, $04                                     ; $5f82: $3e $04
    ldh [$96], a                                  ; $5f84: $e0 $96
    ldh [rSVBK], a                                ; $5f86: $e0 $70
    ld hl, $ffe0                                  ; $5f88: $21 $e0 $ff
    ld a, [hl+]                                   ; $5f8b: $2a
    ld h, [hl]                                    ; $5f8c: $66
    add $06                                       ; $5f8d: $c6 $06
    ld l, a                                       ; $5f8f: $6f
    inc hl                                        ; $5f90: $23
    ld a, [hl]                                    ; $5f91: $7e
    sub b                                         ; $5f92: $90
    cp $0a                                        ; $5f93: $fe $0a
    jr c, jr_005_5fa5                             ; $5f95: $38 $0e

    ld e, $00                                     ; $5f97: $1e $00
    ld b, $00                                     ; $5f99: $06 $00
    ld a, [$c322]                                 ; $5f9b: $fa $22 $c3
    bit 7, a                                      ; $5f9e: $cb $7f
    jr nz, jr_005_5fa3                            ; $5fa0: $20 $01

    inc e                                         ; $5fa2: $1c

jr_005_5fa3:
    jr jr_005_5fb1                                ; $5fa3: $18 $0c

jr_005_5fa5:
    ld e, $0b                                     ; $5fa5: $1e $0b
    ld b, $01                                     ; $5fa7: $06 $01
    ld a, [$c322]                                 ; $5fa9: $fa $22 $c3
    bit 7, a                                      ; $5fac: $cb $7f
    jr z, jr_005_5fb1                             ; $5fae: $28 $01

    dec e                                         ; $5fb0: $1d

jr_005_5fb1:
    ld a, $05                                     ; $5fb1: $3e $05
    ldh [$96], a                                  ; $5fb3: $e0 $96
    ldh [rSVBK], a                                ; $5fb5: $e0 $70
    ld a, b                                       ; $5fb7: $78
    ld [$d85c], a                                 ; $5fb8: $ea $5c $d8
    pop af                                        ; $5fbb: $f1
    ldh [$96], a                                  ; $5fbc: $e0 $96
    ldh [rSVBK], a                                ; $5fbe: $e0 $70
    ld b, $14                                     ; $5fc0: $06 $14
    ld c, $07                                     ; $5fc2: $0e $07
    ld d, $00                                     ; $5fc4: $16 $00
    call Call_005_4b20                            ; $5fc6: $cd $20 $4b
    pop hl                                        ; $5fc9: $e1
    call Call_005_6179                            ; $5fca: $cd $79 $61
    call Call_005_5b3b                            ; $5fcd: $cd $3b $5b
    xor a                                         ; $5fd0: $af
    ld [$d866], a                                 ; $5fd1: $ea $66 $d8
    ld [$d868], a                                 ; $5fd4: $ea $68 $d8
    ld a, [$d824]                                 ; $5fd7: $fa $24 $d8
    ld l, a                                       ; $5fda: $6f
    ld h, $00                                     ; $5fdb: $26 $00
    ld bc, $d800                                  ; $5fdd: $01 $00 $d8
    add hl, hl                                    ; $5fe0: $29
    add hl, hl                                    ; $5fe1: $29
    add hl, bc                                    ; $5fe2: $09
    ld a, [hl+]                                   ; $5fe3: $2a
    ld h, [hl]                                    ; $5fe4: $66
    ld l, a                                       ; $5fe5: $6f
    ld a, l                                       ; $5fe6: $7d
    ld [$d858], a                                 ; $5fe7: $ea $58 $d8
    ld a, h                                       ; $5fea: $7c
    ld [$d859], a                                 ; $5feb: $ea $59 $d8
    ld de, $c600                                  ; $5fee: $11 $00 $c6
    ld a, [hl+]                                   ; $5ff1: $2a
    ld [de], a                                    ; $5ff2: $12
    inc de                                        ; $5ff3: $13
    ld a, [hl+]                                   ; $5ff4: $2a
    ld [de], a                                    ; $5ff5: $12
    inc de                                        ; $5ff6: $13
    ld a, [hl+]                                   ; $5ff7: $2a
    ld [de], a                                    ; $5ff8: $12
    inc de                                        ; $5ff9: $13
    ld a, [hl+]                                   ; $5ffa: $2a
    ld [de], a                                    ; $5ffb: $12
    inc de                                        ; $5ffc: $13
    ld a, [hl+]                                   ; $5ffd: $2a
    ld [de], a                                    ; $5ffe: $12
    inc de                                        ; $5fff: $13
    ld hl, $c600                                  ; $6000: $21 $00 $c6
    inc hl                                        ; $6003: $23
    ld a, [$d825]                                 ; $6004: $fa $25 $d8
    add $08                                       ; $6007: $c6 $08
    ld d, a                                       ; $6009: $57
    ld a, [$d826]                                 ; $600a: $fa $26 $d8
    add $02                                       ; $600d: $c6 $02
    ld e, a                                       ; $600f: $5f
    ld b, $03                                     ; $6010: $06 $03
    ld c, $03                                     ; $6012: $0e $03
    ld a, $08                                     ; $6014: $3e $08
    inc hl                                        ; $6016: $23
    inc hl                                        ; $6017: $23
    ld a, [hl]                                    ; $6018: $7e
    rr a                                          ; $6019: $cb $1f
    jr c, jr_005_601e                             ; $601b: $38 $01

    inc b                                         ; $601d: $04

jr_005_601e:
    dec hl                                        ; $601e: $2b
    dec hl                                        ; $601f: $2b
    call Call_005_4492                            ; $6020: $cd $92 $44

jr_005_6023:
    push af                                       ; $6023: $f5
    push hl                                       ; $6024: $e5
    ld hl, $d858                                  ; $6025: $21 $58 $d8
    ld a, [hl+]                                   ; $6028: $2a
    ld h, [hl]                                    ; $6029: $66
    ld l, a                                       ; $602a: $6f
    ld a, [hl]                                    ; $602b: $7e
    call Call_005_4773                            ; $602c: $cd $73 $47
    call Call_005_4949                            ; $602f: $cd $49 $49
    pop hl                                        ; $6032: $e1
    dec d                                         ; $6033: $15
    ld a, d                                       ; $6034: $7a
    cp [hl]                                       ; $6035: $be
    jr nc, jr_005_603a                            ; $6036: $30 $02

    ld a, [hl]                                    ; $6038: $7e
    ld d, a                                       ; $6039: $57

jr_005_603a:
    inc hl                                        ; $603a: $23
    dec e                                         ; $603b: $1d
    ld a, e                                       ; $603c: $7b
    sub [hl]                                      ; $603d: $96
    bit 7, a                                      ; $603e: $cb $7f
    jr z, jr_005_6044                             ; $6040: $28 $02

    ld a, [hl]                                    ; $6042: $7e
    ld e, a                                       ; $6043: $5f

jr_005_6044:
    inc hl                                        ; $6044: $23
    inc b                                         ; $6045: $04
    inc b                                         ; $6046: $04
    ld a, [hl]                                    ; $6047: $7e
    cp b                                          ; $6048: $b8
    jr nc, jr_005_604c                            ; $6049: $30 $01

    ld b, a                                       ; $604b: $47

jr_005_604c:
    inc hl                                        ; $604c: $23
    inc c                                         ; $604d: $0c
    ld a, [hl]                                    ; $604e: $7e
    cp c                                          ; $604f: $b9
    jr nc, jr_005_6053                            ; $6050: $30 $01

    ld c, a                                       ; $6052: $4f

jr_005_6053:
    dec hl                                        ; $6053: $2b
    dec hl                                        ; $6054: $2b
    dec hl                                        ; $6055: $2b
    pop af                                        ; $6056: $f1
    dec a                                         ; $6057: $3d
    jr nz, jr_005_6023                            ; $6058: $20 $c9

    pop hl                                        ; $605a: $e1
    pop de                                        ; $605b: $d1
    pop bc                                        ; $605c: $c1
    pop af                                        ; $605d: $f1
    ret                                           ; $605e: $c9


Call_005_605f:
    push af                                       ; $605f: $f5
    push bc                                       ; $6060: $c5
    push de                                       ; $6061: $d5
    push hl                                       ; $6062: $e5
    push de                                       ; $6063: $d5
    push hl                                       ; $6064: $e5
    ld de, $0000                                  ; $6065: $11 $00 $00
    ld b, $14                                     ; $6068: $06 $14
    ld c, $07                                     ; $606a: $0e $07
    call Call_005_4b20                            ; $606c: $cd $20 $4b
    pop hl                                        ; $606f: $e1
    call Call_005_6179                            ; $6070: $cd $79 $61
    call Call_005_5b3b                            ; $6073: $cd $3b $5b
    pop de                                        ; $6076: $d1
    ld a, [$d824]                                 ; $6077: $fa $24 $d8
    call Call_005_60b0                            ; $607a: $cd $b0 $60
    inc hl                                        ; $607d: $23
    inc hl                                        ; $607e: $23
    inc hl                                        ; $607f: $23
    ld a, d                                       ; $6080: $7a
    ld d, [hl]                                    ; $6081: $56
    sra d                                         ; $6082: $cb $2a
    sub d                                         ; $6084: $92
    ld d, a                                       ; $6085: $57
    inc hl                                        ; $6086: $23
    ld a, e                                       ; $6087: $7b
    ld e, [hl]                                    ; $6088: $5e
    sra e                                         ; $6089: $cb $2b
    sub e                                         ; $608b: $93
    ld e, a                                       ; $608c: $5f
    dec hl                                        ; $608d: $2b
    dec hl                                        ; $608e: $2b
    ld [hl-], a                                   ; $608f: $32
    ld [hl], d                                    ; $6090: $72
    ld a, [$c323]                                 ; $6091: $fa $23 $c3
    ld b, a                                       ; $6094: $47
    sra b                                         ; $6095: $cb $28
    sra b                                         ; $6097: $cb $28
    sra b                                         ; $6099: $cb $28
    ld a, e                                       ; $609b: $7b
    sub b                                         ; $609c: $90
    dec hl                                        ; $609d: $2b
    push hl                                       ; $609e: $e5
    ld a, [hl+]                                   ; $609f: $2a
    ld d, [hl]                                    ; $60a0: $56
    inc hl                                        ; $60a1: $23
    ld e, [hl]                                    ; $60a2: $5e
    inc hl                                        ; $60a3: $23
    ld b, [hl]                                    ; $60a4: $46
    inc hl                                        ; $60a5: $23
    ld c, [hl]                                    ; $60a6: $4e
    pop hl                                        ; $60a7: $e1
    call Call_005_4773                            ; $60a8: $cd $73 $47
    pop hl                                        ; $60ab: $e1
    pop de                                        ; $60ac: $d1
    pop bc                                        ; $60ad: $c1
    pop af                                        ; $60ae: $f1
    ret                                           ; $60af: $c9


Call_005_60b0:
    push af                                       ; $60b0: $f5
    sla a                                         ; $60b1: $cb $27
    sla a                                         ; $60b3: $cb $27
    ld hl, $d800                                  ; $60b5: $21 $00 $d8
    add l                                         ; $60b8: $85
    ld l, a                                       ; $60b9: $6f
    ld a, $00                                     ; $60ba: $3e $00
    adc h                                         ; $60bc: $8c
    ld h, a                                       ; $60bd: $67
    ld a, [hl+]                                   ; $60be: $2a
    ld h, [hl]                                    ; $60bf: $66
    ld l, a                                       ; $60c0: $6f
    pop af                                        ; $60c1: $f1
    ret                                           ; $60c2: $c9


    push af                                       ; $60c3: $f5
    push bc                                       ; $60c4: $c5
    push de                                       ; $60c5: $d5
    push hl                                       ; $60c6: $e5
    ldh a, [$96]                                  ; $60c7: $f0 $96
    push af                                       ; $60c9: $f5
    ld a, $05                                     ; $60ca: $3e $05
    ldh [$96], a                                  ; $60cc: $e0 $96
    ldh [rSVBK], a                                ; $60ce: $e0 $70
    ld a, [$d850]                                 ; $60d0: $fa $50 $d8
    or a                                          ; $60d3: $b7
    jr z, jr_005_60f5                             ; $60d4: $28 $1f

    call Call_005_6179                            ; $60d6: $cd $79 $61
    call Call_005_5b3b                            ; $60d9: $cd $3b $5b
    ld hl, $d858                                  ; $60dc: $21 $58 $d8
    ld a, [hl+]                                   ; $60df: $2a
    ld h, [hl]                                    ; $60e0: $66
    ld l, a                                       ; $60e1: $6f
    inc hl                                        ; $60e2: $23
    ld d, [hl]                                    ; $60e3: $56
    inc hl                                        ; $60e4: $23
    ld e, [hl]                                    ; $60e5: $5e
    inc hl                                        ; $60e6: $23
    ld b, [hl]                                    ; $60e7: $46
    inc hl                                        ; $60e8: $23
    ld c, [hl]                                    ; $60e9: $4e
    ld hl, $d856                                  ; $60ea: $21 $56 $d8
    ld a, [hl+]                                   ; $60ed: $2a
    ld h, [hl]                                    ; $60ee: $66
    ld l, a                                       ; $60ef: $6f
    ld a, $80                                     ; $60f0: $3e $80
    call Call_005_4773                            ; $60f2: $cd $73 $47

jr_005_60f5:
    pop af                                        ; $60f5: $f1
    ldh [$96], a                                  ; $60f6: $e0 $96
    ldh [rSVBK], a                                ; $60f8: $e0 $70
    pop hl                                        ; $60fa: $e1
    pop de                                        ; $60fb: $d1
    pop bc                                        ; $60fc: $c1
    pop af                                        ; $60fd: $f1
    ret                                           ; $60fe: $c9


    push af                                       ; $60ff: $f5
    push bc                                       ; $6100: $c5
    push de                                       ; $6101: $d5
    push hl                                       ; $6102: $e5
    ldh a, [$96]                                  ; $6103: $f0 $96
    push af                                       ; $6105: $f5
    jr jr_005_614d                                ; $6106: $18 $45

    ld a, $05                                     ; $6108: $3e $05
    ldh [$96], a                                  ; $610a: $e0 $96
    ldh [rSVBK], a                                ; $610c: $e0 $70
    ld hl, $d856                                  ; $610e: $21 $56 $d8
    ld a, [hl+]                                   ; $6111: $2a
    ld h, [hl]                                    ; $6112: $66
    ld l, a                                       ; $6113: $6f
    inc hl                                        ; $6114: $23
    ld d, [hl]                                    ; $6115: $56
    inc hl                                        ; $6116: $23
    ld e, [hl]                                    ; $6117: $5e
    inc hl                                        ; $6118: $23
    ld b, [hl]                                    ; $6119: $46
    inc hl                                        ; $611a: $23
    ld c, [hl]                                    ; $611b: $4e
    ld a, $08                                     ; $611c: $3e $08

jr_005_611e:
    call Call_005_4492                            ; $611e: $cd $92 $44
    push af                                       ; $6121: $f5
    ld hl, $d856                                  ; $6122: $21 $56 $d8
    ld a, [hl+]                                   ; $6125: $2a
    ld h, [hl]                                    ; $6126: $66
    ld l, a                                       ; $6127: $6f
    ld a, $80                                     ; $6128: $3e $80
    call Call_005_4773                            ; $612a: $cd $73 $47
    call Call_005_4949                            ; $612d: $cd $49 $49
    inc d                                         ; $6130: $14
    dec b                                         ; $6131: $05
    dec b                                         ; $6132: $05
    ld a, b                                       ; $6133: $78
    cp $03                                        ; $6134: $fe $03
    jr nc, jr_005_613e                            ; $6136: $30 $06

    pop af                                        ; $6138: $f1
    jr jr_005_614d                                ; $6139: $18 $12

    ld b, $03                                     ; $613b: $06 $03
    dec d                                         ; $613d: $15

jr_005_613e:
    inc e                                         ; $613e: $1c
    dec c                                         ; $613f: $0d
    dec c                                         ; $6140: $0d
    ld a, c                                       ; $6141: $79
    cp $03                                        ; $6142: $fe $03
    jr nc, jr_005_6149                            ; $6144: $30 $03

    ld c, $03                                     ; $6146: $0e $03
    dec e                                         ; $6148: $1d

jr_005_6149:
    pop af                                        ; $6149: $f1
    dec a                                         ; $614a: $3d
    jr nz, jr_005_611e                            ; $614b: $20 $d1

jr_005_614d:
    ld a, [$d855]                                 ; $614d: $fa $55 $d8
    call Call_005_4c5c                            ; $6150: $cd $5c $4c
    pop af                                        ; $6153: $f1
    ldh [$96], a                                  ; $6154: $e0 $96
    ldh [rSVBK], a                                ; $6156: $e0 $70
    pop hl                                        ; $6158: $e1
    pop de                                        ; $6159: $d1
    pop bc                                        ; $615a: $c1
    pop af                                        ; $615b: $f1
    ret                                           ; $615c: $c9


    push bc                                       ; $615d: $c5
    ldh a, [$96]                                  ; $615e: $f0 $96
    push af                                       ; $6160: $f5
    ld a, $05                                     ; $6161: $3e $05
    ldh [$96], a                                  ; $6163: $e0 $96
    ldh [rSVBK], a                                ; $6165: $e0 $70
    call Call_005_6179                            ; $6167: $cd $79 $61
    call Call_005_5b3b                            ; $616a: $cd $3b $5b
    ld a, [$d854]                                 ; $616d: $fa $54 $d8
    ld b, a                                       ; $6170: $47
    pop af                                        ; $6171: $f1
    ldh [$96], a                                  ; $6172: $e0 $96
    ldh [rSVBK], a                                ; $6174: $e0 $70
    ld a, b                                       ; $6176: $78
    pop bc                                        ; $6177: $c1
    ret                                           ; $6178: $c9


Call_005_6179:
    push af                                       ; $6179: $f5
    push bc                                       ; $617a: $c5
    push de                                       ; $617b: $d5
    push hl                                       ; $617c: $e5
    ld d, h                                       ; $617d: $54
    ld e, l                                       ; $617e: $5d
    ld b, d                                       ; $617f: $42
    ld a, d                                       ; $6180: $7a
    and $03                                       ; $6181: $e6 $03
    ld d, a                                       ; $6183: $57
    ld a, b                                       ; $6184: $78
    sra a                                         ; $6185: $cb $2f
    res 7, a                                      ; $6187: $cb $bf
    sra a                                         ; $6189: $cb $2f
    and $07                                       ; $618b: $e6 $07
    cp $00                                        ; $618d: $fe $00
    jr nz, jr_005_6196                            ; $618f: $20 $05

    rst $18                                       ; $6191: $df

    db $00, $18

    jr jr_005_61cf                                ; $6194: $18 $39

jr_005_6196:
    cp $01                                        ; $6196: $fe $01
    jr nz, jr_005_619f                            ; $6198: $20 $05

    rst $18                                       ; $619a: $df

    db $00, $19

    jr jr_005_61cf                                ; $619d: $18 $30

jr_005_619f:
    cp $02                                        ; $619f: $fe $02
    jr nz, jr_005_61a8                            ; $61a1: $20 $05

    rst $18                                       ; $61a3: $df

    db $00, $1a

    jr jr_005_61cf                                ; $61a6: $18 $27

jr_005_61a8:
    cp $03                                        ; $61a8: $fe $03
    jr nz, jr_005_61b1                            ; $61aa: $20 $05

    rst $18                                       ; $61ac: $df

    db $00, $1b

    jr jr_005_61cf                                ; $61af: $18 $1e

jr_005_61b1:
    cp $04                                        ; $61b1: $fe $04
    jr nz, jr_005_61ba                            ; $61b3: $20 $05

    rst $18                                       ; $61b5: $df

    db $00, $1c

    jr jr_005_61cf                                ; $61b8: $18 $15

jr_005_61ba:
    cp $05                                        ; $61ba: $fe $05
    jr nz, jr_005_61c3                            ; $61bc: $20 $05

    rst $18                                       ; $61be: $df

    db $00, $1d

    jr jr_005_61cf                                ; $61c1: $18 $0c

jr_005_61c3:
    cp $06                                        ; $61c3: $fe $06
    jr nz, jr_005_61cc                            ; $61c5: $20 $05

    rst $18                                       ; $61c7: $df

    db $00, $1e

    jr jr_005_61cf                                ; $61ca: $18 $03

jr_005_61cc:
    rst $18                                       ; $61cc: $df

    db $00, $1f

jr_005_61cf:
    pop hl                                        ; $61cf: $e1
    pop de                                        ; $61d0: $d1
    pop bc                                        ; $61d1: $c1
    pop af                                        ; $61d2: $f1
    ret                                           ; $61d3: $c9


Call_005_61d4:
    push af                                       ; $61d4: $f5
    push bc                                       ; $61d5: $c5
    push de                                       ; $61d6: $d5
    push hl                                       ; $61d7: $e5
    ld d, h                                       ; $61d8: $54
    ld e, l                                       ; $61d9: $5d
    ld b, d                                       ; $61da: $42
    ld a, d                                       ; $61db: $7a
    and $03                                       ; $61dc: $e6 $03
    ld d, a                                       ; $61de: $57
    ld a, b                                       ; $61df: $78
    sra a                                         ; $61e0: $cb $2f
    res 7, a                                      ; $61e2: $cb $bf
    sra a                                         ; $61e4: $cb $2f
    and $07                                       ; $61e6: $e6 $07
    cp $00                                        ; $61e8: $fe $00
    jr nz, jr_005_61f1                            ; $61ea: $20 $05

    rst $18                                       ; $61ec: $df

    db $02, $18

    jr jr_005_61cf                                ; $61ef: $18 $de

jr_005_61f1:
    cp $01                                        ; $61f1: $fe $01
    jr nz, jr_005_61fa                            ; $61f3: $20 $05

    rst $18                                       ; $61f5: $df
    ld [bc], a                                    ; $61f6: $02
    add hl, de                                    ; $61f7: $19
    jr jr_005_61cf                                ; $61f8: $18 $d5

jr_005_61fa:
    cp $02                                        ; $61fa: $fe $02
    jr nz, jr_005_6203                            ; $61fc: $20 $05

    rst $18                                       ; $61fe: $df
    ld [bc], a                                    ; $61ff: $02
    ld a, [de]                                    ; $6200: $1a
    jr jr_005_61cf                                ; $6201: $18 $cc

jr_005_6203:
    cp $03                                        ; $6203: $fe $03
    jr nz, jr_005_620c                            ; $6205: $20 $05

    rst $18                                       ; $6207: $df
    ld [bc], a                                    ; $6208: $02
    dec de                                        ; $6209: $1b
    jr jr_005_61cf                                ; $620a: $18 $c3

jr_005_620c:
    cp $04                                        ; $620c: $fe $04
    jr nz, jr_005_6215                            ; $620e: $20 $05

    rst $18                                       ; $6210: $df
    ld [bc], a                                    ; $6211: $02
    inc e                                         ; $6212: $1c
    jr jr_005_61cf                                ; $6213: $18 $ba

jr_005_6215:
    cp $05                                        ; $6215: $fe $05
    jr nz, jr_005_621e                            ; $6217: $20 $05

    rst $18                                       ; $6219: $df
    ld [bc], a                                    ; $621a: $02
    dec e                                         ; $621b: $1d
    jr jr_005_61cf                                ; $621c: $18 $b1

jr_005_621e:
    cp $06                                        ; $621e: $fe $06
    jr nz, jr_005_6227                            ; $6220: $20 $05

    rst $18                                       ; $6222: $df
    ld [bc], a                                    ; $6223: $02
    ld e, $18                                     ; $6224: $1e $18
    xor b                                         ; $6226: $a8

jr_005_6227:
    rst $18                                       ; $6227: $df
    ld [bc], a                                    ; $6228: $02
    rra                                           ; $6229: $1f
    pop hl                                        ; $622a: $e1
    pop de                                        ; $622b: $d1
    pop bc                                        ; $622c: $c1
    pop af                                        ; $622d: $f1
    ret                                           ; $622e: $c9


Call_005_622f:
    push af                                       ; $622f: $f5
    push bc                                       ; $6230: $c5
    push de                                       ; $6231: $d5
    add sp, -$02                                  ; $6232: $e8 $fe
    push hl                                       ; $6234: $e5
    ld b, $00                                     ; $6235: $06 $00
    ld c, a                                       ; $6237: $4f
    ld a, h                                       ; $6238: $7c
    ld e, h                                       ; $6239: $5c
    and $03                                       ; $623a: $e6 $03
    ld h, a                                       ; $623c: $67
    add hl, bc                                    ; $623d: $09
    ld b, h                                       ; $623e: $44
    ld c, l                                       ; $623f: $4d
    ld a, e                                       ; $6240: $7b
    and $1c                                       ; $6241: $e6 $1c
    ld e, a                                       ; $6243: $5f
    ld a, h                                       ; $6244: $7c
    or e                                          ; $6245: $b3
    ld d, a                                       ; $6246: $57
    ld e, l                                       ; $6247: $5d
    ld hl, sp+$02                                 ; $6248: $f8 $02
    ld [hl], e                                    ; $624a: $73
    inc hl                                        ; $624b: $23
    ld [hl], d                                    ; $624c: $72
    pop hl                                        ; $624d: $e1
    ld a, h                                       ; $624e: $7c
    and $1c                                       ; $624f: $e6 $1c
    sra a                                         ; $6251: $cb $2f
    ld e, a                                       ; $6253: $5f
    ld d, $00                                     ; $6254: $16 $00
    ld hl, $629a                                  ; $6256: $21 $9a $62
    add hl, de                                    ; $6259: $19
    ld e, [hl]                                    ; $625a: $5e
    inc hl                                        ; $625b: $23
    ld d, [hl]                                    ; $625c: $56
    ld a, b                                       ; $625d: $78
    xor $ff                                       ; $625e: $ee $ff
    ld b, a                                       ; $6260: $47
    ld a, c                                       ; $6261: $79
    xor $ff                                       ; $6262: $ee $ff
    ld c, a                                       ; $6264: $4f
    inc bc                                        ; $6265: $03
    ld h, d                                       ; $6266: $62
    ld l, e                                       ; $6267: $6b
    add hl, bc                                    ; $6268: $09
    push hl                                       ; $6269: $e5
    ld hl, sp+$02                                 ; $626a: $f8 $02
    ld c, [hl]                                    ; $626c: $4e
    inc hl                                        ; $626d: $23
    ld b, [hl]                                    ; $626e: $46
    pop hl                                        ; $626f: $e1
    ld a, l                                       ; $6270: $7d
    or h                                          ; $6271: $b4
    jr z, jr_005_6278                             ; $6272: $28 $04

    bit 7, h                                      ; $6274: $cb $7c
    jr z, jr_005_6292                             ; $6276: $28 $1a

jr_005_6278:
    ld a, b                                       ; $6278: $78
    and $1c                                       ; $6279: $e6 $1c
    add $04                                       ; $627b: $c6 $04
    ld d, a                                       ; $627d: $57
    ld a, b                                       ; $627e: $78
    and $e0                                       ; $627f: $e6 $e0
    or d                                          ; $6281: $b2
    ld b, a                                       ; $6282: $47
    ld a, h                                       ; $6283: $7c
    xor $ff                                       ; $6284: $ee $ff
    ld h, a                                       ; $6286: $67
    ld a, l                                       ; $6287: $7d
    xor $ff                                       ; $6288: $ee $ff
    ld l, a                                       ; $628a: $6f
    inc hl                                        ; $628b: $23
    ld a, h                                       ; $628c: $7c
    and $03                                       ; $628d: $e6 $03
    or b                                          ; $628f: $b0
    ld b, a                                       ; $6290: $47
    ld c, l                                       ; $6291: $4d

jr_005_6292:
    ld h, b                                       ; $6292: $60
    ld l, c                                       ; $6293: $69
    add sp, $02                                   ; $6294: $e8 $02
    pop de                                        ; $6296: $d1
    pop bc                                        ; $6297: $c1
    pop af                                        ; $6298: $f1
    ret                                           ; $6299: $c9


    db $00, $02, $d8, $00, $fc, $00, $1d, $01, $08, $01, $f1, $01, $00, $03, $a9, $00

    push af                                       ; $62aa: $f5
    push bc                                       ; $62ab: $c5
    push de                                       ; $62ac: $d5
    push hl                                       ; $62ad: $e5
    push bc                                       ; $62ae: $c5
    push de                                       ; $62af: $d5
    rst $18                                       ; $62b0: $df

    db $1e, $03

    ldh a, [$96]                                  ; $62b3: $f0 $96
    push af                                       ; $62b5: $f5
    ld a, $05                                     ; $62b6: $3e $05
    ldh [$96], a                                  ; $62b8: $e0 $96
    ldh [rSVBK], a                                ; $62ba: $e0 $70
    xor a                                         ; $62bc: $af
    call Call_005_622f                            ; $62bd: $cd $2f $62
    xor a                                         ; $62c0: $af
    ld [$d847], a                                 ; $62c1: $ea $47 $d8
    ld [$d866], a                                 ; $62c4: $ea $66 $d8
    ld [$d848], a                                 ; $62c7: $ea $48 $d8
    ld [$d867], a                                 ; $62ca: $ea $67 $d8
    ld [$d849], a                                 ; $62cd: $ea $49 $d8
    ld [$d868], a                                 ; $62d0: $ea $68 $d8
    ld a, e                                       ; $62d3: $7b
    ld [$d864], a                                 ; $62d4: $ea $64 $d8
    ld a, d                                       ; $62d7: $7a
    ld [$d865], a                                 ; $62d8: $ea $65 $d8
    ld b, $ff                                     ; $62db: $06 $ff
    ld a, c                                       ; $62dd: $79
    cpl                                           ; $62de: $2f
    inc a                                         ; $62df: $3c
    ld c, a                                       ; $62e0: $4f
    ld [$c362], a                                 ; $62e1: $ea $62 $c3
    call Call_005_6179                            ; $62e4: $cd $79 $61
    ld hl, $c600                                  ; $62e7: $21 $00 $c6
    pop af                                        ; $62ea: $f1
    ldh [$96], a                                  ; $62eb: $e0 $96
    ldh [rSVBK], a                                ; $62ed: $e0 $70

Jump_005_62ef:
jr_005_62ef:
    ld a, [hl]                                    ; $62ef: $7e
    or a                                          ; $62f0: $b7
    jp z, Jump_005_6359                           ; $62f1: $ca $59 $63

    cp $03                                        ; $62f4: $fe $03
    jr z, jr_005_6359                             ; $62f6: $28 $61

    cp $01                                        ; $62f8: $fe $01
    jp z, Jump_005_6359                           ; $62fa: $ca $59 $63

    cp $07                                        ; $62fd: $fe $07
    jr z, jr_005_6324                             ; $62ff: $28 $23

    cp $04                                        ; $6301: $fe $04
    jr z, jr_005_6324                             ; $6303: $28 $1f

    cp $09                                        ; $6305: $fe $09
    jr z, jr_005_6324                             ; $6307: $28 $1b

    cp $08                                        ; $6309: $fe $08
    jr z, jr_005_6324                             ; $630b: $28 $17

    cp $0b                                        ; $630d: $fe $0b
    jr z, jr_005_6324                             ; $630f: $28 $13

    cp $0e                                        ; $6311: $fe $0e
    jr nz, jr_005_631e                            ; $6313: $20 $09

    inc hl                                        ; $6315: $23
    push af                                       ; $6316: $f5
    ld a, [hl]                                    ; $6317: $7e
    ld [$c361], a                                 ; $6318: $ea $61 $c3
    pop af                                        ; $631b: $f1
    jr jr_005_6324                                ; $631c: $18 $06

jr_005_631e:
    cp $01                                        ; $631e: $fe $01
    jr nz, jr_005_632a                            ; $6320: $20 $08

    ld a, $0d                                     ; $6322: $3e $0d

jr_005_6324:
    call Call_005_58e2                            ; $6324: $cd $e2 $58
    inc hl                                        ; $6327: $23
    jr jr_005_62ef                                ; $6328: $18 $c5

jr_005_632a:
    rst $18                                       ; $632a: $df

    db $18, $03

    inc hl                                        ; $632d: $23
    ld a, [hl]                                    ; $632e: $7e
    cp $de                                        ; $632f: $fe $de
    jr z, jr_005_6337                             ; $6331: $28 $04

    cp $df                                        ; $6333: $fe $df
    jr nz, jr_005_6349                            ; $6335: $20 $12

jr_005_6337:
    push hl                                       ; $6337: $e5
    ld h, d                                       ; $6338: $62
    ld l, e                                       ; $6339: $6b
    add hl, bc                                    ; $633a: $09
    ld b, a                                       ; $633b: $47
    ld a, [hl]                                    ; $633c: $7e
    cp $03                                        ; $633d: $fe $03
    ld a, b                                       ; $633f: $78
    ld b, $ff                                     ; $6340: $06 $ff
    jr nz, jr_005_6346                            ; $6342: $20 $02

    sub $d0                                       ; $6344: $d6 $d0

jr_005_6346:
    ld [hl], a                                    ; $6346: $77
    pop hl                                        ; $6347: $e1
    inc hl                                        ; $6348: $23

jr_005_6349:
    inc de                                        ; $6349: $13
    ld a, e                                       ; $634a: $7b
    and $3f                                       ; $634b: $e6 $3f
    jr nz, jr_005_62ef                            ; $634d: $20 $a0

    push hl                                       ; $634f: $e5
    ld h, d                                       ; $6350: $62
    ld l, e                                       ; $6351: $6b
    add hl, bc                                    ; $6352: $09
    ld d, h                                       ; $6353: $54
    ld e, l                                       ; $6354: $5d
    pop hl                                        ; $6355: $e1
    jp Jump_005_62ef                              ; $6356: $c3 $ef $62


Jump_005_6359:
jr_005_6359:
    ldh a, [$96]                                  ; $6359: $f0 $96
    push af                                       ; $635b: $f5
    ld a, $05                                     ; $635c: $3e $05
    ldh [$96], a                                  ; $635e: $e0 $96
    ldh [rSVBK], a                                ; $6360: $e0 $70
    xor a                                         ; $6362: $af
    ld [$c362], a                                 ; $6363: $ea $62 $c3
    ld [$d847], a                                 ; $6366: $ea $47 $d8
    ld [$d866], a                                 ; $6369: $ea $66 $d8
    ld [$d848], a                                 ; $636c: $ea $48 $d8
    ld [$d867], a                                 ; $636f: $ea $67 $d8
    ld [$d849], a                                 ; $6372: $ea $49 $d8
    ld [$d868], a                                 ; $6375: $ea $68 $d8
    pop af                                        ; $6378: $f1
    ldh [$96], a                                  ; $6379: $e0 $96
    ldh [rSVBK], a                                ; $637b: $e0 $70
    pop de                                        ; $637d: $d1
    rst $18                                       ; $637e: $df

    db $22, $03

    pop bc                                        ; $6381: $c1
    rst $18                                       ; $6382: $df

    db $20, $03

    pop hl                                        ; $6385: $e1
    pop de                                        ; $6386: $d1
    pop bc                                        ; $6387: $c1
    pop af                                        ; $6388: $f1
    ret                                           ; $6389: $c9


    push af                                       ; $638a: $f5
    push bc                                       ; $638b: $c5
    push de                                       ; $638c: $d5
    push hl                                       ; $638d: $e5
    push bc                                       ; $638e: $c5
    push de                                       ; $638f: $d5
    rst $18                                       ; $6390: $df
    ld e, $03                                     ; $6391: $1e $03
    ldh a, [$96]                                  ; $6393: $f0 $96
    push af                                       ; $6395: $f5
    ld a, $05                                     ; $6396: $3e $05
    ldh [$96], a                                  ; $6398: $e0 $96
    ldh [rSVBK], a                                ; $639a: $e0 $70
    xor a                                         ; $639c: $af
    call Call_005_622f                            ; $639d: $cd $2f $62
    xor a                                         ; $63a0: $af
    ld [$d847], a                                 ; $63a1: $ea $47 $d8
    ld [$d866], a                                 ; $63a4: $ea $66 $d8
    ld [$d848], a                                 ; $63a7: $ea $48 $d8
    ld [$d867], a                                 ; $63aa: $ea $67 $d8
    ld [$d849], a                                 ; $63ad: $ea $49 $d8
    ld [$d868], a                                 ; $63b0: $ea $68 $d8
    ld a, e                                       ; $63b3: $7b
    ld [$d864], a                                 ; $63b4: $ea $64 $d8
    ld a, d                                       ; $63b7: $7a
    ld [$d865], a                                 ; $63b8: $ea $65 $d8
    ld b, $ff                                     ; $63bb: $06 $ff
    ld a, c                                       ; $63bd: $79
    cpl                                           ; $63be: $2f
    inc a                                         ; $63bf: $3c
    ld c, a                                       ; $63c0: $4f
    ld [$c362], a                                 ; $63c1: $ea $62 $c3
    call Call_005_6179                            ; $63c4: $cd $79 $61
    ld hl, $c600                                  ; $63c7: $21 $00 $c6

jr_005_63ca:
    ld a, [hl]                                    ; $63ca: $7e
    cp $00                                        ; $63cb: $fe $00
    jr z, jr_005_63d7                             ; $63cd: $28 $08

    cp $01                                        ; $63cf: $fe $01
    jr z, jr_005_63d6                             ; $63d1: $28 $03

    inc hl                                        ; $63d3: $23
    jr jr_005_63ca                                ; $63d4: $18 $f4

jr_005_63d6:
    inc hl                                        ; $63d6: $23

jr_005_63d7:
    pop af                                        ; $63d7: $f1
    ldh [$96], a                                  ; $63d8: $e0 $96
    ldh [rSVBK], a                                ; $63da: $e0 $70

Jump_005_63dc:
jr_005_63dc:
    ld a, [hl]                                    ; $63dc: $7e
    or a                                          ; $63dd: $b7
    jp z, Jump_005_6441                           ; $63de: $ca $41 $64

    cp $03                                        ; $63e1: $fe $03
    jr z, jr_005_6441                             ; $63e3: $28 $5c

    cp $07                                        ; $63e5: $fe $07
    jr z, jr_005_640c                             ; $63e7: $28 $23

    cp $04                                        ; $63e9: $fe $04
    jr z, jr_005_640c                             ; $63eb: $28 $1f

    cp $09                                        ; $63ed: $fe $09
    jr z, jr_005_640c                             ; $63ef: $28 $1b

    cp $08                                        ; $63f1: $fe $08
    jr z, jr_005_640c                             ; $63f3: $28 $17

    cp $0b                                        ; $63f5: $fe $0b
    jr z, jr_005_640c                             ; $63f7: $28 $13

    cp $0e                                        ; $63f9: $fe $0e
    jr nz, jr_005_6406                            ; $63fb: $20 $09

    inc hl                                        ; $63fd: $23
    push af                                       ; $63fe: $f5
    ld a, [hl]                                    ; $63ff: $7e
    ld [$c361], a                                 ; $6400: $ea $61 $c3
    pop af                                        ; $6403: $f1
    jr jr_005_640c                                ; $6404: $18 $06

jr_005_6406:
    cp $01                                        ; $6406: $fe $01
    jr nz, jr_005_6412                            ; $6408: $20 $08

    ld a, $0d                                     ; $640a: $3e $0d

jr_005_640c:
    call Call_005_58e2                            ; $640c: $cd $e2 $58
    inc hl                                        ; $640f: $23
    jr jr_005_63dc                                ; $6410: $18 $ca

jr_005_6412:
    rst $18                                       ; $6412: $df
    jr @+$05                                      ; $6413: $18 $03

    inc hl                                        ; $6415: $23
    ld a, [hl]                                    ; $6416: $7e
    cp $de                                        ; $6417: $fe $de
    jr z, jr_005_641f                             ; $6419: $28 $04

    cp $df                                        ; $641b: $fe $df
    jr nz, jr_005_6431                            ; $641d: $20 $12

jr_005_641f:
    push hl                                       ; $641f: $e5
    ld h, d                                       ; $6420: $62
    ld l, e                                       ; $6421: $6b
    add hl, bc                                    ; $6422: $09
    ld b, a                                       ; $6423: $47
    ld a, [hl]                                    ; $6424: $7e
    cp $03                                        ; $6425: $fe $03
    ld a, b                                       ; $6427: $78
    ld b, $ff                                     ; $6428: $06 $ff
    jr nz, jr_005_642e                            ; $642a: $20 $02

    sub $d0                                       ; $642c: $d6 $d0

jr_005_642e:
    ld [hl], a                                    ; $642e: $77
    pop hl                                        ; $642f: $e1
    inc hl                                        ; $6430: $23

jr_005_6431:
    inc de                                        ; $6431: $13
    ld a, e                                       ; $6432: $7b
    and $3f                                       ; $6433: $e6 $3f
    jr nz, jr_005_63dc                            ; $6435: $20 $a5

    push hl                                       ; $6437: $e5
    ld h, d                                       ; $6438: $62
    ld l, e                                       ; $6439: $6b
    add hl, bc                                    ; $643a: $09
    ld d, h                                       ; $643b: $54
    ld e, l                                       ; $643c: $5d
    pop hl                                        ; $643d: $e1
    jp Jump_005_63dc                              ; $643e: $c3 $dc $63


Jump_005_6441:
jr_005_6441:
    ldh a, [$96]                                  ; $6441: $f0 $96
    push af                                       ; $6443: $f5
    ld a, $05                                     ; $6444: $3e $05
    ldh [$96], a                                  ; $6446: $e0 $96
    ldh [rSVBK], a                                ; $6448: $e0 $70
    xor a                                         ; $644a: $af
    ld [$c362], a                                 ; $644b: $ea $62 $c3
    ld [$d847], a                                 ; $644e: $ea $47 $d8
    ld [$d866], a                                 ; $6451: $ea $66 $d8
    ld [$d848], a                                 ; $6454: $ea $48 $d8
    ld [$d867], a                                 ; $6457: $ea $67 $d8
    ld [$d849], a                                 ; $645a: $ea $49 $d8
    ld [$d868], a                                 ; $645d: $ea $68 $d8
    pop af                                        ; $6460: $f1
    ldh [$96], a                                  ; $6461: $e0 $96
    ldh [rSVBK], a                                ; $6463: $e0 $70
    pop de                                        ; $6465: $d1
    rst $18                                       ; $6466: $df
    ld [hl+], a                                   ; $6467: $22
    inc bc                                        ; $6468: $03
    pop bc                                        ; $6469: $c1
    rst $18                                       ; $646a: $df
    jr nz, jr_005_6470                            ; $646b: $20 $03

    pop hl                                        ; $646d: $e1
    pop de                                        ; $646e: $d1
    pop bc                                        ; $646f: $c1

jr_005_6470:
    pop af                                        ; $6470: $f1
    ret                                           ; $6471: $c9


Call_005_6472:
    ld hl, $0000                                  ; $6472: $21 $00 $00
    cp $ff                                        ; $6475: $fe $ff
    ret z                                         ; $6477: $c8

    ld hl, $d000                                  ; $6478: $21 $00 $d0
    cp $18                                        ; $647b: $fe $18
    jr nc, jr_005_648d                            ; $647d: $30 $0e

    push bc                                       ; $647f: $c5
    ld c, $00                                     ; $6480: $0e $00
    ld b, a                                       ; $6482: $47
    sra b                                         ; $6483: $cb $28
    rr c                                          ; $6485: $cb $19
    sra b                                         ; $6487: $cb $28
    rr c                                          ; $6489: $cb $19
    add hl, bc                                    ; $648b: $09
    pop bc                                        ; $648c: $c1

jr_005_648d:
    ret                                           ; $648d: $c9


Call_005_648e:
    push af                                       ; $648e: $f5
    push bc                                       ; $648f: $c5
    push de                                       ; $6490: $d5
    push hl                                       ; $6491: $e5
    push hl                                       ; $6492: $e5
    ld a, d                                       ; $6493: $7a
    and $1f                                       ; $6494: $e6 $1f
    ld d, a                                       ; $6496: $57
    ld a, e                                       ; $6497: $7b
    and $1f                                       ; $6498: $e6 $1f
    ld e, a                                       ; $649a: $5f
    ld h, $00                                     ; $649b: $26 $00
    ld l, e                                       ; $649d: $6b
    add hl, hl                                    ; $649e: $29
    add hl, hl                                    ; $649f: $29
    add hl, hl                                    ; $64a0: $29
    add hl, hl                                    ; $64a1: $29
    add hl, hl                                    ; $64a2: $29
    ld b, $00                                     ; $64a3: $06 $00
    ld c, d                                       ; $64a5: $4a
    add hl, bc                                    ; $64a6: $09
    ld bc, $d000                                  ; $64a7: $01 $00 $d0
    add hl, bc                                    ; $64aa: $09
    ld d, h                                       ; $64ab: $54
    ld e, l                                       ; $64ac: $5d
    pop hl                                        ; $64ad: $e1
    ld c, $20                                     ; $64ae: $0e $20
    rst $18                                       ; $64b0: $df
    ld [hl+], a                                   ; $64b1: $22
    dec b                                         ; $64b2: $05
    pop hl                                        ; $64b3: $e1
    pop de                                        ; $64b4: $d1
    pop bc                                        ; $64b5: $c1
    pop af                                        ; $64b6: $f1
    ret                                           ; $64b7: $c9


    push af                                       ; $64b8: $f5
    push bc                                       ; $64b9: $c5
    push de                                       ; $64ba: $d5
    push hl                                       ; $64bb: $e5
    push de                                       ; $64bc: $d5
    call Call_005_648e                            ; $64bd: $cd $8e $64
    pop de                                        ; $64c0: $d1
    dec e                                         ; $64c1: $1d
    ld a, e                                       ; $64c2: $7b
    and $1f                                       ; $64c3: $e6 $1f
    ld b, $05                                     ; $64c5: $06 $05
    ld c, $03                                     ; $64c7: $0e $03
    call Call_005_42ad                            ; $64c9: $cd $ad $42
    pop hl                                        ; $64cc: $e1
    pop de                                        ; $64cd: $d1
    pop bc                                        ; $64ce: $c1
    pop af                                        ; $64cf: $f1
    ret                                           ; $64d0: $c9


    ldh a, [$96]                                  ; $64d1: $f0 $96
    push af                                       ; $64d3: $f5
    ld a, $05                                     ; $64d4: $3e $05
    ldh [$96], a                                  ; $64d6: $e0 $96
    ldh [rSVBK], a                                ; $64d8: $e0 $70
    ld a, $00                                     ; $64da: $3e $00
    ld b, $05                                     ; $64dc: $06 $05
    ld c, $08                                     ; $64de: $0e $08
    call Call_005_42ad                            ; $64e0: $cd $ad $42
    call Call_000_2e3b                            ; $64e3: $cd $3b $2e
    ld a, $08                                     ; $64e6: $3e $08
    ld b, $05                                     ; $64e8: $06 $05
    ld c, $08                                     ; $64ea: $0e $08
    call Call_005_42ad                            ; $64ec: $cd $ad $42
    call Call_000_2e3b                            ; $64ef: $cd $3b $2e
    ld a, $10                                     ; $64f2: $3e $10
    ld b, $05                                     ; $64f4: $06 $05
    ld c, $08                                     ; $64f6: $0e $08
    call Call_005_42ad                            ; $64f8: $cd $ad $42
    call Call_000_2e3b                            ; $64fb: $cd $3b $2e
    ld a, $18                                     ; $64fe: $3e $18
    ld b, $05                                     ; $6500: $06 $05
    ld c, $08                                     ; $6502: $0e $08
    call Call_005_42ad                            ; $6504: $cd $ad $42
    call Call_000_2e3b                            ; $6507: $cd $3b $2e
    pop af                                        ; $650a: $f1
    ldh [$96], a                                  ; $650b: $e0 $96
    ldh [rSVBK], a                                ; $650d: $e0 $70
    ret                                           ; $650f: $c9


    push af                                       ; $6510: $f5
    push bc                                       ; $6511: $c5
    push de                                       ; $6512: $d5
    push hl                                       ; $6513: $e5
    call Call_005_4492                            ; $6514: $cd $92 $44
    ld a, [$d860]                                 ; $6517: $fa $60 $d8
    ld hl, $d900                                  ; $651a: $21 $00 $d9
    ld bc, $011d                                  ; $651d: $01 $1d $01

jr_005_6520:
    or a                                          ; $6520: $b7
    jr z, jr_005_6527                             ; $6521: $28 $04

    add hl, bc                                    ; $6523: $09
    dec a                                         ; $6524: $3d
    jr jr_005_6520                                ; $6525: $18 $f9

jr_005_6527:
    call Call_005_4831                            ; $6527: $cd $31 $48
    pop hl                                        ; $652a: $e1
    pop de                                        ; $652b: $d1
    pop bc                                        ; $652c: $c1
    pop af                                        ; $652d: $f1
    ret                                           ; $652e: $c9


Call_005_652f:
    push af                                       ; $652f: $f5
    push bc                                       ; $6530: $c5
    push de                                       ; $6531: $d5
    push hl                                       ; $6532: $e5
    ldh a, [$96]                                  ; $6533: $f0 $96
    push af                                       ; $6535: $f5
    ld a, $05                                     ; $6536: $3e $05
    ldh [$96], a                                  ; $6538: $e0 $96
    ldh [rSVBK], a                                ; $653a: $e0 $70
    push hl                                       ; $653c: $e5
    ld a, [$d860]                                 ; $653d: $fa $60 $d8
    ld hl, $d900                                  ; $6540: $21 $00 $d9
    ld bc, $011d                                  ; $6543: $01 $1d $01

jr_005_6546:
    or a                                          ; $6546: $b7
    jr z, jr_005_654d                             ; $6547: $28 $04

    add hl, bc                                    ; $6549: $09
    dec a                                         ; $654a: $3d
    jr jr_005_6546                                ; $654b: $18 $f9

jr_005_654d:
    inc hl                                        ; $654d: $23
    ld a, [hl+]                                   ; $654e: $2a
    inc a                                         ; $654f: $3c
    add d                                         ; $6550: $82
    ld d, a                                       ; $6551: $57
    ld a, [hl]                                    ; $6552: $7e
    inc a                                         ; $6553: $3c
    add e                                         ; $6554: $83
    ld e, a                                       ; $6555: $5f
    pop hl                                        ; $6556: $e1
    call Call_005_648e                            ; $6557: $cd $8e $64
    pop af                                        ; $655a: $f1
    ldh [$96], a                                  ; $655b: $e0 $96
    ldh [rSVBK], a                                ; $655d: $e0 $70
    pop hl                                        ; $655f: $e1
    pop de                                        ; $6560: $d1
    pop bc                                        ; $6561: $c1
    pop af                                        ; $6562: $f1
    ret                                           ; $6563: $c9


    push af                                       ; $6564: $f5
    push hl                                       ; $6565: $e5
    ldh a, [$96]                                  ; $6566: $f0 $96
    push af                                       ; $6568: $f5
    ld a, $05                                     ; $6569: $3e $05
    ldh [$96], a                                  ; $656b: $e0 $96
    ldh [rSVBK], a                                ; $656d: $e0 $70
    ld a, $01                                     ; $656f: $3e $01
    ld [$c360], a                                 ; $6571: $ea $60 $c3
    rst $18                                       ; $6574: $df
    ld d, [hl]                                    ; $6575: $56
    dec b                                         ; $6576: $05
    ld hl, $0118                                  ; $6577: $21 $18 $01
    call Call_005_652f                            ; $657a: $cd $2f $65
    xor a                                         ; $657d: $af
    ld [$c360], a                                 ; $657e: $ea $60 $c3
    pop af                                        ; $6581: $f1
    ldh [$96], a                                  ; $6582: $e0 $96
    ldh [rSVBK], a                                ; $6584: $e0 $70
    pop hl                                        ; $6586: $e1
    pop af                                        ; $6587: $f1
    ret                                           ; $6588: $c9


    push af                                       ; $6589: $f5
    push hl                                       ; $658a: $e5
    rst $18                                       ; $658b: $df
    ld d, h                                       ; $658c: $54
    dec b                                         ; $658d: $05
    ld hl, $0019                                  ; $658e: $21 $19 $00
    call Call_005_652f                            ; $6591: $cd $2f $65
    pop hl                                        ; $6594: $e1
    pop af                                        ; $6595: $f1
    ret                                           ; $6596: $c9


Call_005_6597:
    push af                                       ; $6597: $f5
    push bc                                       ; $6598: $c5
    push de                                       ; $6599: $d5
    push hl                                       ; $659a: $e5
    ldh a, [$96]                                  ; $659b: $f0 $96
    push af                                       ; $659d: $f5
    ld a, $05                                     ; $659e: $3e $05
    ldh [$96], a                                  ; $65a0: $e0 $96
    ldh [rSVBK], a                                ; $65a2: $e0 $70
    push hl                                       ; $65a4: $e5
    ld a, [$d860]                                 ; $65a5: $fa $60 $d8
    ld hl, $d900                                  ; $65a8: $21 $00 $d9
    ld bc, $011d                                  ; $65ab: $01 $1d $01

jr_005_65ae:
    or a                                          ; $65ae: $b7
    jr z, jr_005_65b5                             ; $65af: $28 $04

    add hl, bc                                    ; $65b1: $09
    dec a                                         ; $65b2: $3d
    jr jr_005_65ae                                ; $65b3: $18 $f9

jr_005_65b5:
    inc hl                                        ; $65b5: $23
    ld a, [hl+]                                   ; $65b6: $2a
    inc a                                         ; $65b7: $3c
    add d                                         ; $65b8: $82
    ld d, a                                       ; $65b9: $57
    ld a, [hl]                                    ; $65ba: $7e
    inc a                                         ; $65bb: $3c
    add e                                         ; $65bc: $83
    ld e, a                                       ; $65bd: $5f
    pop hl                                        ; $65be: $e1
    rst $18                                       ; $65bf: $df
    ld l, $05                                     ; $65c0: $2e $05
    pop af                                        ; $65c2: $f1
    ldh [$96], a                                  ; $65c3: $e0 $96
    ldh [rSVBK], a                                ; $65c5: $e0 $70
    pop hl                                        ; $65c7: $e1
    pop de                                        ; $65c8: $d1
    pop bc                                        ; $65c9: $c1
    pop af                                        ; $65ca: $f1
    ret                                           ; $65cb: $c9


    push af                                       ; $65cc: $f5
    push hl                                       ; $65cd: $e5
    ldh a, [$96]                                  ; $65ce: $f0 $96
    push af                                       ; $65d0: $f5
    ld a, $05                                     ; $65d1: $3e $05
    ldh [$96], a                                  ; $65d3: $e0 $96
    ldh [rSVBK], a                                ; $65d5: $e0 $70
    ld a, $01                                     ; $65d7: $3e $01
    ld [$c360], a                                 ; $65d9: $ea $60 $c3
    rst $18                                       ; $65dc: $df
    ld d, [hl]                                    ; $65dd: $56
    dec b                                         ; $65de: $05
    ld hl, $0118                                  ; $65df: $21 $18 $01
    call Call_005_6597                            ; $65e2: $cd $97 $65
    xor a                                         ; $65e5: $af
    ld [$c360], a                                 ; $65e6: $ea $60 $c3
    pop af                                        ; $65e9: $f1
    ldh [$96], a                                  ; $65ea: $e0 $96
    ldh [rSVBK], a                                ; $65ec: $e0 $70
    pop hl                                        ; $65ee: $e1
    pop af                                        ; $65ef: $f1
    ret                                           ; $65f0: $c9


    push af                                       ; $65f1: $f5
    push hl                                       ; $65f2: $e5
    rst $18                                       ; $65f3: $df
    ld d, h                                       ; $65f4: $54
    dec b                                         ; $65f5: $05
    ld hl, $0019                                  ; $65f6: $21 $19 $00
    call Call_005_6597                            ; $65f9: $cd $97 $65
    pop hl                                        ; $65fc: $e1
    pop af                                        ; $65fd: $f1
    ret                                           ; $65fe: $c9


Call_005_65ff:
    push af                                       ; $65ff: $f5
    push bc                                       ; $6600: $c5
    push de                                       ; $6601: $d5
    push hl                                       ; $6602: $e5

jr_005_6603:
    ld b, a                                       ; $6603: $47
    ld a, [hl]                                    ; $6604: $7e
    or a                                          ; $6605: $b7
    jr z, jr_005_6641                             ; $6606: $28 $39

    cp $de                                        ; $6608: $fe $de
    jr z, jr_005_6612                             ; $660a: $28 $06

    cp $df                                        ; $660c: $fe $df
    jr z, jr_005_6612                             ; $660e: $28 $02

    jr jr_005_6636                                ; $6610: $18 $24

jr_005_6612:
    push bc                                       ; $6612: $c5
    ld a, b                                       ; $6613: $78
    dec d                                         ; $6614: $15
    dec e                                         ; $6615: $1d
    call Call_005_444f                            ; $6616: $cd $4f $44
    inc d                                         ; $6619: $14
    inc e                                         ; $661a: $1c
    ld b, a                                       ; $661b: $47
    ld a, c                                       ; $661c: $79
    cp $03                                        ; $661d: $fe $03
    ld a, [hl]                                    ; $661f: $7e
    jr nz, jr_005_6624                            ; $6620: $20 $02

    sub $d0                                       ; $6622: $d6 $d0

jr_005_6624:
    pop bc                                        ; $6624: $c1
    push bc                                       ; $6625: $c5
    ld c, a                                       ; $6626: $4f
    ld a, b                                       ; $6627: $78
    ld b, $80                                     ; $6628: $06 $80
    dec d                                         ; $662a: $15
    dec e                                         ; $662b: $1d
    call Call_005_4408                            ; $662c: $cd $08 $44
    inc d                                         ; $662f: $14
    inc e                                         ; $6630: $1c
    inc hl                                        ; $6631: $23
    pop bc                                        ; $6632: $c1
    ld a, b                                       ; $6633: $78
    jr jr_005_6603                                ; $6634: $18 $cd

jr_005_6636:
    inc hl                                        ; $6636: $23
    ld c, a                                       ; $6637: $4f
    ld a, b                                       ; $6638: $78
    ld b, $80                                     ; $6639: $06 $80
    call Call_005_4408                            ; $663b: $cd $08 $44
    inc d                                         ; $663e: $14
    jr jr_005_6603                                ; $663f: $18 $c2

jr_005_6641:
    pop hl                                        ; $6641: $e1
    pop de                                        ; $6642: $d1
    pop bc                                        ; $6643: $c1
    pop af                                        ; $6644: $f1
    ret                                           ; $6645: $c9


    push af                                       ; $6646: $f5
    push bc                                       ; $6647: $c5
    push de                                       ; $6648: $d5
    push hl                                       ; $6649: $e5
    call Call_005_6179                            ; $664a: $cd $79 $61
    ld hl, $c600                                  ; $664d: $21 $00 $c6
    call Call_005_65ff                            ; $6650: $cd $ff $65
    pop hl                                        ; $6653: $e1
    pop de                                        ; $6654: $d1
    pop bc                                        ; $6655: $c1
    pop af                                        ; $6656: $f1
    ret                                           ; $6657: $c9


    push af                                       ; $6658: $f5
    push bc                                       ; $6659: $c5
    push de                                       ; $665a: $d5
    push hl                                       ; $665b: $e5
    rst $18                                       ; $665c: $df
    ld d, [hl]                                    ; $665d: $56
    dec b                                         ; $665e: $05
    ld b, a                                       ; $665f: $47
    ld a, $01                                     ; $6660: $3e $01
    ld [$c360], a                                 ; $6662: $ea $60 $c3
    ld a, b                                       ; $6665: $78
    ld hl, $0118                                  ; $6666: $21 $18 $01
    call Call_005_6179                            ; $6669: $cd $79 $61
    ld hl, $c600                                  ; $666c: $21 $00 $c6
    call Call_005_65ff                            ; $666f: $cd $ff $65
    xor a                                         ; $6672: $af
    ld [$c360], a                                 ; $6673: $ea $60 $c3
    pop hl                                        ; $6676: $e1
    pop de                                        ; $6677: $d1
    pop bc                                        ; $6678: $c1
    pop af                                        ; $6679: $f1
    ret                                           ; $667a: $c9


Call_005_667b:
    push bc                                       ; $667b: $c5
    push de                                       ; $667c: $d5
    push hl                                       ; $667d: $e5
    call Call_005_6472                            ; $667e: $cd $72 $64
    ld a, h                                       ; $6681: $7c
    ld b, $08                                     ; $6682: $06 $08
    or l                                          ; $6684: $b5
    jr z, jr_005_66bb                             ; $6685: $28 $34

    ldh a, [$96]                                  ; $6687: $f0 $96
    push af                                       ; $6689: $f5
    ld a, $04                                     ; $668a: $3e $04
    ldh [$96], a                                  ; $668c: $e0 $96
    ldh [rSVBK], a                                ; $668e: $e0 $70
    ld a, l                                       ; $6690: $7d
    ldh [$e0], a                                  ; $6691: $e0 $e0
    ld a, h                                       ; $6693: $7c
    ldh [$e1], a                                  ; $6694: $e0 $e1
    ld hl, $ffe0                                  ; $6696: $21 $e0 $ff
    ld a, [hl+]                                   ; $6699: $2a
    ld h, [hl]                                    ; $669a: $66
    add $30                                       ; $669b: $c6 $30
    ld l, a                                       ; $669d: $6f
    ld a, [hl]                                    ; $669e: $7e
    ld c, a                                       ; $669f: $4f
    ld hl, $66c0                                  ; $66a0: $21 $c0 $66

jr_005_66a3:
    ld a, [hl+]                                   ; $66a3: $2a
    cp $ff                                        ; $66a4: $fe $ff
    jr z, jr_005_66b6                             ; $66a6: $28 $0e

    cp c                                          ; $66a8: $b9
    jr z, jr_005_66ae                             ; $66a9: $28 $03

    inc hl                                        ; $66ab: $23
    jr jr_005_66a3                                ; $66ac: $18 $f5

jr_005_66ae:
    ld a, [hl]                                    ; $66ae: $7e
    cp $08                                        ; $66af: $fe $08
    jr c, jr_005_66b5                             ; $66b1: $38 $02

    ld a, $08                                     ; $66b3: $3e $08

jr_005_66b5:
    ld b, a                                       ; $66b5: $47

jr_005_66b6:
    pop af                                        ; $66b6: $f1
    ldh [$96], a                                  ; $66b7: $e0 $96
    ldh [rSVBK], a                                ; $66b9: $e0 $70

jr_005_66bb:
    ld a, b                                       ; $66bb: $78
    pop hl                                        ; $66bc: $e1
    pop de                                        ; $66bd: $d1
    pop bc                                        ; $66be: $c1
    ret                                           ; $66bf: $c9


    db $00

    db $08                                        ; $66c1: $08

    db $01

    db $08                                        ; $66c3: $08

    db $02

    db $08                                        ; $66c5: $08

    db $03

    db $08                                        ; $66c7: $08

    db $04

    inc b                                         ; $66c9: $04

    db $05

    inc bc                                        ; $66cb: $03

    db $06

    db $06                                        ; $66cd: $06

    db $07

    ld [bc], a                                    ; $66cf: $02

    db $08

    dec b                                         ; $66d1: $05

    db $09

    ld [bc], a                                    ; $66d3: $02

    db $0a

    ld [bc], a                                    ; $66d5: $02

    db $0b

    inc bc                                        ; $66d7: $03

    db $0c

    inc b                                         ; $66d9: $04

    db $0d

    inc bc                                        ; $66db: $03

    db $0e, $06, $2c

    db $06                                        ; $66df: $06

    db $11

    db $01                                        ; $66e1: $01

    db $12

    ld [bc], a                                    ; $66e3: $02

    db $13

    nop                                           ; $66e5: $00

    db $14, $06, $15, $01, $16

    inc b                                         ; $66eb: $04

    db $17

    rlca                                          ; $66ed: $07

    db $2d

    inc bc                                        ; $66ef: $03

    db $18

    db $06                                        ; $66f1: $06

    db $19

    ld [bc], a                                    ; $66f3: $02

    db $1a

    nop                                           ; $66f5: $00

    db $1b

    rlca                                          ; $66f7: $07

    db $1c

    db $06                                        ; $66f9: $06

    db $1d

    inc b                                         ; $66fb: $04

    db $1e, $05, $1f, $07

    rst $38                                       ; $6700: $ff
    call Call_005_407a                            ; $6701: $cd $7a $40
    rst $18                                       ; $6704: $df
    inc e                                         ; $6705: $1c
    dec b                                         ; $6706: $05
    ret                                           ; $6707: $c9


    push bc                                       ; $6708: $c5
    ldh a, [$96]                                  ; $6709: $f0 $96
    push af                                       ; $670b: $f5
    ld a, $05                                     ; $670c: $3e $05
    ldh [$96], a                                  ; $670e: $e0 $96
    ldh [rSVBK], a                                ; $6710: $e0 $70
    call Call_005_4af2                            ; $6712: $cd $f2 $4a
    bit 7, h                                      ; $6715: $cb $7c
    jr nz, jr_005_671d                            ; $6717: $20 $04

    ld b, a                                       ; $6719: $47
    call Call_005_5a51                            ; $671a: $cd $51 $5a

jr_005_671d:
    ld a, [$d820]                                 ; $671d: $fa $20 $d8
    ld b, a                                       ; $6720: $47
    pop af                                        ; $6721: $f1
    ldh [$96], a                                  ; $6722: $e0 $96
    ldh [rSVBK], a                                ; $6724: $e0 $70
    ld a, b                                       ; $6726: $78
    pop bc                                        ; $6727: $c1
    ret                                           ; $6728: $c9


Call_005_6729:
    push af                                       ; $6729: $f5
    push bc                                       ; $672a: $c5
    push de                                       ; $672b: $d5
    push hl                                       ; $672c: $e5
    ld b, a                                       ; $672d: $47
    ldh a, [$96]                                  ; $672e: $f0 $96
    push af                                       ; $6730: $f5
    ld a, $05                                     ; $6731: $3e $05
    ldh [$96], a                                  ; $6733: $e0 $96
    ldh [rSVBK], a                                ; $6735: $e0 $70
    ld a, [$d824]                                 ; $6737: $fa $24 $d8
    cp b                                          ; $673a: $b8
    jr nz, jr_005_6765                            ; $673b: $20 $28

    ld [$d821], a                                 ; $673d: $ea $21 $d8

jr_005_6740:
    ldh a, [$96]                                  ; $6740: $f0 $96
    push af                                       ; $6742: $f5
    ld a, $07                                     ; $6743: $3e $07
    ldh [$96], a                                  ; $6745: $e0 $96
    ldh [rSVBK], a                                ; $6747: $e0 $70
    rst $18                                       ; $6749: $df
    nop                                           ; $674a: $00
    inc bc                                        ; $674b: $03
    rst $18                                       ; $674c: $df
    inc b                                         ; $674d: $04
    inc bc                                        ; $674e: $03
    pop af                                        ; $674f: $f1
    ldh [$96], a                                  ; $6750: $e0 $96
    ldh [rSVBK], a                                ; $6752: $e0 $70
    ld a, [$d824]                                 ; $6754: $fa $24 $d8
    call Call_005_44e3                            ; $6757: $cd $e3 $44
    call Call_005_5b03                            ; $675a: $cd $03 $5b
    ld a, [$d850]                                 ; $675d: $fa $50 $d8
    or a                                          ; $6760: $b7
    jr nz, jr_005_6740                            ; $6761: $20 $dd

    jr jr_005_6795                                ; $6763: $18 $30

jr_005_6765:
    ld a, b                                       ; $6765: $78
    sla a                                         ; $6766: $cb $27
    sla a                                         ; $6768: $cb $27
    ld hl, $d800                                  ; $676a: $21 $00 $d8
    add l                                         ; $676d: $85
    ld l, a                                       ; $676e: $6f
    jr nc, jr_005_6772                            ; $676f: $30 $01

    inc h                                         ; $6771: $24

jr_005_6772:
    push hl                                       ; $6772: $e5
    ld a, [hl+]                                   ; $6773: $2a
    ld h, [hl]                                    ; $6774: $66
    ld l, a                                       ; $6775: $6f
    call Call_005_4831                            ; $6776: $cd $31 $48
    ld a, [hl+]                                   ; $6779: $2a
    ld d, [hl]                                    ; $677a: $56
    inc d                                         ; $677b: $14
    and $02                                       ; $677c: $e6 $02
    jr z, jr_005_6781                             ; $677e: $28 $01

    inc d                                         ; $6780: $14

jr_005_6781:
    inc hl                                        ; $6781: $23
    ld e, [hl]                                    ; $6782: $5e
    inc e                                         ; $6783: $1c
    pop hl                                        ; $6784: $e1
    inc hl                                        ; $6785: $23
    inc hl                                        ; $6786: $23
    ld a, [hl+]                                   ; $6787: $2a
    ld l, [hl]                                    ; $6788: $6e
    and $1f                                       ; $6789: $e6 $1f
    ld h, a                                       ; $678b: $67
    call Call_005_6179                            ; $678c: $cd $79 $61
    ld hl, $c600                                  ; $678f: $21 $00 $c6
    call Call_005_5235                            ; $6792: $cd $35 $52

jr_005_6795:
    pop af                                        ; $6795: $f1
    ldh [$96], a                                  ; $6796: $e0 $96
    ldh [rSVBK], a                                ; $6798: $e0 $70
    pop hl                                        ; $679a: $e1
    pop de                                        ; $679b: $d1
    pop bc                                        ; $679c: $c1
    pop af                                        ; $679d: $f1
    ret                                           ; $679e: $c9


    push af                                       ; $679f: $f5
    push bc                                       ; $67a0: $c5
    push de                                       ; $67a1: $d5
    push hl                                       ; $67a2: $e5
    ld b, a                                       ; $67a3: $47
    ldh a, [$96]                                  ; $67a4: $f0 $96
    push af                                       ; $67a6: $f5
    ld a, $05                                     ; $67a7: $3e $05
    ldh [$96], a                                  ; $67a9: $e0 $96
    ldh [rSVBK], a                                ; $67ab: $e0 $70
    ld a, b                                       ; $67ad: $78
    call Call_005_4384                            ; $67ae: $cd $84 $43
    pop af                                        ; $67b1: $f1
    ldh [$96], a                                  ; $67b2: $e0 $96
    ldh [rSVBK], a                                ; $67b4: $e0 $70
    pop hl                                        ; $67b6: $e1
    pop de                                        ; $67b7: $d1
    pop bc                                        ; $67b8: $c1
    pop af                                        ; $67b9: $f1
    ret                                           ; $67ba: $c9


Call_005_67bb:
    call Call_005_44e3                            ; $67bb: $cd $e3 $44
    call Call_005_4384                            ; $67be: $cd $84 $43
    call Call_005_4c5c                            ; $67c1: $cd $5c $4c
    ret                                           ; $67c4: $c9


    push af                                       ; $67c5: $f5
    push bc                                       ; $67c6: $c5
    push de                                       ; $67c7: $d5
    ldh a, [$96]                                  ; $67c8: $f0 $96
    push af                                       ; $67ca: $f5
    ld a, $05                                     ; $67cb: $3e $05
    ldh [$96], a                                  ; $67cd: $e0 $96
    ldh [rSVBK], a                                ; $67cf: $e0 $70
    xor a                                         ; $67d1: $af
    ld [$d847], a                                 ; $67d2: $ea $47 $d8
    ld [$d866], a                                 ; $67d5: $ea $66 $d8
    ld [$d848], a                                 ; $67d8: $ea $48 $d8
    ld [$d867], a                                 ; $67db: $ea $67 $d8
    ld [$d849], a                                 ; $67de: $ea $49 $d8
    ld [$d868], a                                 ; $67e1: $ea $68 $d8
    call Call_005_622f                            ; $67e4: $cd $2f $62
    call Call_005_5d1f                            ; $67e7: $cd $1f $5d
    ld a, [$d824]                                 ; $67ea: $fa $24 $d8
    cp $ff                                        ; $67ed: $fe $ff
    jr nz, jr_005_67f4                            ; $67ef: $20 $03

    call Call_005_682d                            ; $67f1: $cd $2d $68

jr_005_67f4:
    call Call_005_5a96                            ; $67f4: $cd $96 $5a
    ld a, [$d824]                                 ; $67f7: $fa $24 $d8
    call Call_005_6729                            ; $67fa: $cd $29 $67
    call Call_005_4384                            ; $67fd: $cd $84 $43
    ld a, [$d850]                                 ; $6800: $fa $50 $d8
    or a                                          ; $6803: $b7
    jr nz, jr_005_67f4                            ; $6804: $20 $ee

    ld a, [$d824]                                 ; $6806: $fa $24 $d8
    call Call_005_67bb                            ; $6809: $cd $bb $67
    ld a, $ff                                     ; $680c: $3e $ff
    ld [$d824], a                                 ; $680e: $ea $24 $d8
    xor a                                         ; $6811: $af
    ld [$d847], a                                 ; $6812: $ea $47 $d8
    ld [$d866], a                                 ; $6815: $ea $66 $d8
    ld [$d848], a                                 ; $6818: $ea $48 $d8
    ld [$d867], a                                 ; $681b: $ea $67 $d8
    ld [$d849], a                                 ; $681e: $ea $49 $d8
    ld [$d868], a                                 ; $6821: $ea $68 $d8
    pop af                                        ; $6824: $f1
    ldh [$96], a                                  ; $6825: $e0 $96
    ldh [rSVBK], a                                ; $6827: $e0 $70
    pop de                                        ; $6829: $d1
    pop bc                                        ; $682a: $c1
    pop af                                        ; $682b: $f1
    ret                                           ; $682c: $c9


Call_005_682d:
    push af                                       ; $682d: $f5
    push bc                                       ; $682e: $c5
    push de                                       ; $682f: $d5
    push hl                                       ; $6830: $e5
    push de                                       ; $6831: $d5
    push hl                                       ; $6832: $e5
    ld de, $0000                                  ; $6833: $11 $00 $00
    ld b, $14                                     ; $6836: $06 $14
    ld c, $07                                     ; $6838: $0e $07
    call Call_005_4b20                            ; $683a: $cd $20 $4b
    pop hl                                        ; $683d: $e1
    call Call_005_6179                            ; $683e: $cd $79 $61
    call Call_005_5b3b                            ; $6841: $cd $3b $5b
    pop de                                        ; $6844: $d1
    ld a, [$d824]                                 ; $6845: $fa $24 $d8
    call Call_005_60b0                            ; $6848: $cd $b0 $60
    inc hl                                        ; $684b: $23
    inc hl                                        ; $684c: $23
    inc hl                                        ; $684d: $23
    ld a, d                                       ; $684e: $7a
    ld d, [hl]                                    ; $684f: $56
    sra d                                         ; $6850: $cb $2a
    sub d                                         ; $6852: $92
    ld d, a                                       ; $6853: $57
    inc hl                                        ; $6854: $23
    ld a, e                                       ; $6855: $7b
    ld e, [hl]                                    ; $6856: $5e
    sra e                                         ; $6857: $cb $2b
    sub e                                         ; $6859: $93
    ld e, a                                       ; $685a: $5f
    dec hl                                        ; $685b: $2b
    dec hl                                        ; $685c: $2b
    ld [hl-], a                                   ; $685d: $32
    ld [hl], d                                    ; $685e: $72
    ld a, [$c323]                                 ; $685f: $fa $23 $c3
    ld b, a                                       ; $6862: $47
    sra b                                         ; $6863: $cb $28
    sra b                                         ; $6865: $cb $28
    sra b                                         ; $6867: $cb $28
    ld a, e                                       ; $6869: $7b
    sub b                                         ; $686a: $90
    dec hl                                        ; $686b: $2b
    push hl                                       ; $686c: $e5
    ld a, [hl+]                                   ; $686d: $2a
    ld d, [hl]                                    ; $686e: $56
    inc hl                                        ; $686f: $23
    ld e, [hl]                                    ; $6870: $5e
    inc hl                                        ; $6871: $23
    ld b, [hl]                                    ; $6872: $46
    inc hl                                        ; $6873: $23
    ld c, [hl]                                    ; $6874: $4e
    pop hl                                        ; $6875: $e1
    call Call_005_4773                            ; $6876: $cd $73 $47
    pop hl                                        ; $6879: $e1
    pop de                                        ; $687a: $d1
    pop bc                                        ; $687b: $c1
    pop af                                        ; $687c: $f1
    ret                                           ; $687d: $c9


Call_005_687e:
    push af                                       ; $687e: $f5
    push bc                                       ; $687f: $c5
    push de                                       ; $6880: $d5
    push hl                                       ; $6881: $e5
    ld a, [$c484]                                 ; $6882: $fa $84 $c4
    add a                                         ; $6885: $87
    add a                                         ; $6886: $87
    add a                                         ; $6887: $87
    add a                                         ; $6888: $87
    add a                                         ; $6889: $87
    add a                                         ; $688a: $87
    ld l, a                                       ; $688b: $6f
    ld a, [$c486]                                 ; $688c: $fa $86 $c4
    add a                                         ; $688f: $87
    add a                                         ; $6890: $87
    add a                                         ; $6891: $87
    add l                                         ; $6892: $85
    ld l, a                                       ; $6893: $6f
    ld a, [$c485]                                 ; $6894: $fa $85 $c4
    add l                                         ; $6897: $85
    ld l, a                                       ; $6898: $6f
    ld h, $00                                     ; $6899: $26 $00
    add hl, hl                                    ; $689b: $29
    add hl, hl                                    ; $689c: $29
    add hl, hl                                    ; $689d: $29
    add hl, hl                                    ; $689e: $29
    add hl, hl                                    ; $689f: $29
    ld e, l                                       ; $68a0: $5d
    ld d, h                                       ; $68a1: $54
    call Call_000_2d10                            ; $68a2: $cd $10 $2d
    jr z, jr_005_68ac                             ; $68a5: $28 $05

    call Call_000_2d49                            ; $68a7: $cd $49 $2d
    jr jr_005_68af                                ; $68aa: $18 $03

jr_005_68ac:
    call Call_000_2d2e                            ; $68ac: $cd $2e $2d

jr_005_68af:
    pop hl                                        ; $68af: $e1
    pop de                                        ; $68b0: $d1
    pop bc                                        ; $68b1: $c1
    pop af                                        ; $68b2: $f1
    ret                                           ; $68b3: $c9


Call_005_68b4:
    push af                                       ; $68b4: $f5
    push bc                                       ; $68b5: $c5
    push de                                       ; $68b6: $d5
    push hl                                       ; $68b7: $e5
    ld hl, $c488                                  ; $68b8: $21 $88 $c4
    ld b, [hl]                                    ; $68bb: $46
    ld a, [$c484]                                 ; $68bc: $fa $84 $c4
    add a                                         ; $68bf: $87
    add a                                         ; $68c0: $87
    add a                                         ; $68c1: $87
    add a                                         ; $68c2: $87
    add a                                         ; $68c3: $87
    add a                                         ; $68c4: $87
    ld de, $0101                                  ; $68c5: $11 $01 $01
    call Call_005_6945                            ; $68c8: $cd $45 $69
    ld de, $0401                                  ; $68cb: $11 $01 $04
    call Call_005_6967                            ; $68ce: $cd $67 $69
    add $08                                       ; $68d1: $c6 $08
    ld de, $0402                                  ; $68d3: $11 $02 $04
    call Call_005_6967                            ; $68d6: $cd $67 $69
    add $08                                       ; $68d9: $c6 $08
    ld de, HeaderLogo                             ; $68db: $11 $04 $01
    call Call_005_6945                            ; $68de: $cd $45 $69
    ld de, $0404                                  ; $68e1: $11 $04 $04
    call Call_005_6967                            ; $68e4: $cd $67 $69
    add $08                                       ; $68e7: $c6 $08
    ld de, $0405                                  ; $68e9: $11 $05 $04
    call Call_005_6967                            ; $68ec: $cd $67 $69
    pop hl                                        ; $68ef: $e1
    pop de                                        ; $68f0: $d1
    pop bc                                        ; $68f1: $c1
    pop af                                        ; $68f2: $f1
    ret                                           ; $68f3: $c9


Call_005_68f4:
    push af                                       ; $68f4: $f5
    push bc                                       ; $68f5: $c5
    push de                                       ; $68f6: $d5
    push hl                                       ; $68f7: $e5
    ld hl, $c489                                  ; $68f8: $21 $89 $c4
    ld b, [hl]                                    ; $68fb: $46
    ld a, [$c484]                                 ; $68fc: $fa $84 $c4
    add a                                         ; $68ff: $87
    inc a                                         ; $6900: $3c
    add a                                         ; $6901: $87
    add a                                         ; $6902: $87
    add a                                         ; $6903: $87
    add a                                         ; $6904: $87
    add a                                         ; $6905: $87
    ld de, $0101                                  ; $6906: $11 $01 $01
    call Call_005_6945                            ; $6909: $cd $45 $69
    ld de, $0401                                  ; $690c: $11 $01 $04
    call Call_005_6967                            ; $690f: $cd $67 $69
    add $08                                       ; $6912: $c6 $08
    ld de, $0402                                  ; $6914: $11 $02 $04
    call Call_005_6967                            ; $6917: $cd $67 $69
    add $08                                       ; $691a: $c6 $08
    ld de, HeaderLogo                             ; $691c: $11 $04 $01
    call Call_005_6945                            ; $691f: $cd $45 $69
    ld de, $0404                                  ; $6922: $11 $04 $04
    call Call_005_6967                            ; $6925: $cd $67 $69
    add $08                                       ; $6928: $c6 $08
    ld de, $0405                                  ; $692a: $11 $05 $04
    call Call_005_6967                            ; $692d: $cd $67 $69
    pop hl                                        ; $6930: $e1
    pop de                                        ; $6931: $d1
    pop bc                                        ; $6932: $c1
    pop af                                        ; $6933: $f1
    ret                                           ; $6934: $c9


    jr nc, jr_005_6968                            ; $6935: $30 $31

    ld [hl-], a                                   ; $6937: $32
    inc sp                                        ; $6938: $33
    inc [hl]                                      ; $6939: $34
    dec [hl]                                      ; $693a: $35
    ld [hl], $37                                  ; $693b: $36 $37
    jr c, jr_005_6978                             ; $693d: $38 $39

    ld b, c                                       ; $693f: $41
    ld b, d                                       ; $6940: $42
    ld b, e                                       ; $6941: $43
    ld b, h                                       ; $6942: $44
    ld b, l                                       ; $6943: $45
    ld b, [hl]                                    ; $6944: $46

Call_005_6945:
    push af                                       ; $6945: $f5
    push bc                                       ; $6946: $c5
    push de                                       ; $6947: $d5
    push hl                                       ; $6948: $e5
    ld hl, $6935                                  ; $6949: $21 $35 $69
    swap a                                        ; $694c: $cb $37
    and $0f                                       ; $694e: $e6 $0f
    add l                                         ; $6950: $85
    ld l, a                                       ; $6951: $6f
    jr nc, jr_005_6955                            ; $6952: $30 $01

    inc h                                         ; $6954: $24

jr_005_6955:
    ld c, [hl]                                    ; $6955: $4e
    ld a, b                                       ; $6956: $78
    ld b, $80                                     ; $6957: $06 $80
    rst $18                                       ; $6959: $df
    ld e, $05                                     ; $695a: $1e $05
    inc d                                         ; $695c: $14
    ld c, $3f                                     ; $695d: $0e $3f
    rst $18                                       ; $695f: $df
    ld e, $05                                     ; $6960: $1e $05
    pop hl                                        ; $6962: $e1
    pop de                                        ; $6963: $d1
    pop bc                                        ; $6964: $c1
    pop af                                        ; $6965: $f1
    ret                                           ; $6966: $c9


Call_005_6967:
    push af                                       ; $6967: $f5

jr_005_6968:
    push bc                                       ; $6968: $c5
    push de                                       ; $6969: $d5
    push hl                                       ; $696a: $e5
    ld l, a                                       ; $696b: $6f
    ld h, $00                                     ; $696c: $26 $00
    add hl, hl                                    ; $696e: $29
    add hl, hl                                    ; $696f: $29
    add hl, hl                                    ; $6970: $29
    add hl, hl                                    ; $6971: $29
    add hl, hl                                    ; $6972: $29
    ld c, $08                                     ; $6973: $0e $08

jr_005_6975:
    push de                                       ; $6975: $d5
    ld e, l                                       ; $6976: $5d
    ld d, h                                       ; $6977: $54

jr_005_6978:
    call Call_000_2d10                            ; $6978: $cd $10 $2d
    pop de                                        ; $697b: $d1
    push bc                                       ; $697c: $c5
    ld c, $65                                     ; $697d: $0e $65
    jr z, jr_005_6983                             ; $697f: $28 $02

    ld c, $40                                     ; $6981: $0e $40

jr_005_6983:
    ld a, b                                       ; $6983: $78
    ld b, $80                                     ; $6984: $06 $80
    rst $18                                       ; $6986: $df
    ld e, $05                                     ; $6987: $1e $05
    ld bc, $0020                                  ; $6989: $01 $20 $00
    add hl, bc                                    ; $698c: $09
    inc d                                         ; $698d: $14
    inc d                                         ; $698e: $14
    pop bc                                        ; $698f: $c1
    dec c                                         ; $6990: $0d
    jr nz, jr_005_6975                            ; $6991: $20 $e2

    pop hl                                        ; $6993: $e1
    pop de                                        ; $6994: $d1
    pop bc                                        ; $6995: $c1
    pop af                                        ; $6996: $f1
    ret                                           ; $6997: $c9


Call_005_6998:
    push af                                       ; $6998: $f5
    push bc                                       ; $6999: $c5
    push de                                       ; $699a: $d5
    push hl                                       ; $699b: $e5
    ld a, [$c485]                                 ; $699c: $fa $85 $c4
    add a                                         ; $699f: $87
    add $03                                       ; $69a0: $c6 $03
    ld d, a                                       ; $69a2: $57
    ld a, [$c486]                                 ; $69a3: $fa $86 $c4
    and $03                                       ; $69a6: $e6 $03
    add $01                                       ; $69a8: $c6 $01
    cp $03                                        ; $69aa: $fe $03
    jr c, jr_005_69af                             ; $69ac: $38 $01

    inc a                                         ; $69ae: $3c

jr_005_69af:
    ld e, a                                       ; $69af: $5f
    ld hl, $c488                                  ; $69b0: $21 $88 $c4
    ld a, [$c486]                                 ; $69b3: $fa $86 $c4
    bit 2, a                                      ; $69b6: $cb $57
    jr z, jr_005_69bd                             ; $69b8: $28 $03

    ld hl, $c489                                  ; $69ba: $21 $89 $c4

jr_005_69bd:
    ld a, [hl]                                    ; $69bd: $7e
    ld bc, $800d                                  ; $69be: $01 $0d $80
    rst $18                                       ; $69c1: $df
    ld e, $05                                     ; $69c2: $1e $05
    pop hl                                        ; $69c4: $e1
    pop de                                        ; $69c5: $d1
    pop bc                                        ; $69c6: $c1
    pop af                                        ; $69c7: $f1
    ret                                           ; $69c8: $c9


Call_005_69c9:
    push af                                       ; $69c9: $f5
    push bc                                       ; $69ca: $c5
    push de                                       ; $69cb: $d5
    push hl                                       ; $69cc: $e5
    ld a, [$c485]                                 ; $69cd: $fa $85 $c4
    add a                                         ; $69d0: $87
    add $03                                       ; $69d1: $c6 $03
    ld d, a                                       ; $69d3: $57
    ld a, [$c486]                                 ; $69d4: $fa $86 $c4
    and $03                                       ; $69d7: $e6 $03
    add $01                                       ; $69d9: $c6 $01
    cp $03                                        ; $69db: $fe $03
    jr c, jr_005_69e0                             ; $69dd: $38 $01

    inc a                                         ; $69df: $3c

jr_005_69e0:
    ld e, a                                       ; $69e0: $5f
    ld hl, $c488                                  ; $69e1: $21 $88 $c4
    ld a, [$c486]                                 ; $69e4: $fa $86 $c4
    bit 2, a                                      ; $69e7: $cb $57
    jr z, jr_005_69ee                             ; $69e9: $28 $03

    ld hl, $c489                                  ; $69eb: $21 $89 $c4

jr_005_69ee:
    ld a, [hl]                                    ; $69ee: $7e
    ld b, $80                                     ; $69ef: $06 $80
    ld c, $20                                     ; $69f1: $0e $20
    rst $18                                       ; $69f3: $df
    ld e, $05                                     ; $69f4: $1e $05
    pop hl                                        ; $69f6: $e1
    pop de                                        ; $69f7: $d1
    pop bc                                        ; $69f8: $c1
    pop af                                        ; $69f9: $f1
    ret                                           ; $69fa: $c9


Call_005_69fb:
    push af                                       ; $69fb: $f5
    push bc                                       ; $69fc: $c5
    push de                                       ; $69fd: $d5
    push hl                                       ; $69fe: $e5
    ld a, [$c485]                                 ; $69ff: $fa $85 $c4
    ld d, a                                       ; $6a02: $57
    ld a, [$c486]                                 ; $6a03: $fa $86 $c4
    ld e, a                                       ; $6a06: $5f
    ldh a, [$90]                                  ; $6a07: $f0 $90
    bit 5, a                                      ; $6a09: $cb $6f
    jr nz, jr_005_6a1b                            ; $6a0b: $20 $0e

    bit 4, a                                      ; $6a0d: $cb $67
    jr nz, jr_005_6a1e                            ; $6a0f: $20 $0d

    bit 6, a                                      ; $6a11: $cb $77
    jr nz, jr_005_6a21                            ; $6a13: $20 $0c

    bit 7, a                                      ; $6a15: $cb $7f
    jr nz, jr_005_6a24                            ; $6a17: $20 $0b

    jr jr_005_6a25                                ; $6a19: $18 $0a

jr_005_6a1b:
    dec d                                         ; $6a1b: $15
    jr jr_005_6a25                                ; $6a1c: $18 $07

jr_005_6a1e:
    inc d                                         ; $6a1e: $14
    jr jr_005_6a25                                ; $6a1f: $18 $04

jr_005_6a21:
    dec e                                         ; $6a21: $1d
    jr jr_005_6a25                                ; $6a22: $18 $01

jr_005_6a24:
    inc e                                         ; $6a24: $1c

jr_005_6a25:
    ld a, d                                       ; $6a25: $7a
    and $07                                       ; $6a26: $e6 $07
    ld [$c485], a                                 ; $6a28: $ea $85 $c4
    ld a, e                                       ; $6a2b: $7b
    and $07                                       ; $6a2c: $e6 $07
    ld [$c486], a                                 ; $6a2e: $ea $86 $c4
    pop hl                                        ; $6a31: $e1
    pop de                                        ; $6a32: $d1
    pop bc                                        ; $6a33: $c1
    pop af                                        ; $6a34: $f1
    ret                                           ; $6a35: $c9


    ret                                           ; $6a36: $c9


    jr nc, jr_005_6a59                            ; $6a37: $30 $20

    ld sp, $3220                                  ; $6a39: $31 $20 $32
    jr nz, @+$35                                  ; $6a3c: $20 $33

    jr nz, jr_005_6a74                            ; $6a3e: $20 $34

    jr nz, @+$37                                  ; $6a40: $20 $35

    jr nz, @+$38                                  ; $6a42: $20 $36

    jr nz, @+$39                                  ; $6a44: $20 $37

    nop                                           ; $6a46: $00
    jr c, @+$22                                   ; $6a47: $38 $20

    add hl, sp                                    ; $6a49: $39
    jr nz, @+$43                                  ; $6a4a: $20 $41

    jr nz, @+$44                                  ; $6a4c: $20 $42

    jr nz, jr_005_6a93                            ; $6a4e: $20 $43

    jr nz, @+$46                                  ; $6a50: $20 $44

    jr nz, @+$47                                  ; $6a52: $20 $45

    jr nz, @+$48                                  ; $6a54: $20 $46

    nop                                           ; $6a56: $00

Call_005_6a57:
    push af                                       ; $6a57: $f5
    push bc                                       ; $6a58: $c5

jr_005_6a59:
    push de                                       ; $6a59: $d5
    push hl                                       ; $6a5a: $e5
    rst $30                                       ; $6a5b: $f7
    ldh [$03], a                                  ; $6a5c: $e0 $03
    jr z, jr_005_6a6d                             ; $6a5e: $28 $0d

    rst $20                                       ; $6a60: $e7
    ldh [$03], a                                  ; $6a61: $e0 $03
    xor a                                         ; $6a63: $af
    ld [$c485], a                                 ; $6a64: $ea $85 $c4
    ld [$c486], a                                 ; $6a67: $ea $86 $c4
    ld [$c484], a                                 ; $6a6a: $ea $84 $c4

jr_005_6a6d:
    ld de, $0000                                  ; $6a6d: $11 $00 $00
    ld bc, $1404                                  ; $6a70: $01 $04 $14
    rst $18                                       ; $6a73: $df

jr_005_6a74:
    inc b                                         ; $6a74: $04
    dec b                                         ; $6a75: $05
    ld [$c487], a                                 ; $6a76: $ea $87 $c4
    ld hl, $6a37                                  ; $6a79: $21 $37 $6a
    ld de, $0401                                  ; $6a7c: $11 $01 $04
    call Call_005_65ff                            ; $6a7f: $cd $ff $65
    ld hl, $6a47                                  ; $6a82: $21 $47 $6a
    ld de, $0402                                  ; $6a85: $11 $02 $04
    call Call_005_65ff                            ; $6a88: $cd $ff $65
    ld de, $0004                                  ; $6a8b: $11 $04 $00
    ld bc, $1407                                  ; $6a8e: $01 $07 $14
    rst $18                                       ; $6a91: $df
    inc b                                         ; $6a92: $04

jr_005_6a93:
    dec b                                         ; $6a93: $05
    ld [$c488], a                                 ; $6a94: $ea $88 $c4
    ld de, $000b                                  ; $6a97: $11 $0b $00
    ld bc, $1407                                  ; $6a9a: $01 $07 $14
    rst $18                                       ; $6a9d: $df
    inc b                                         ; $6a9e: $04
    dec b                                         ; $6a9f: $05
    ld [$c489], a                                 ; $6aa0: $ea $89 $c4
    call Call_005_68b4                            ; $6aa3: $cd $b4 $68
    call Call_005_68f4                            ; $6aa6: $cd $f4 $68
    call Call_005_6998                            ; $6aa9: $cd $98 $69
    rst $18                                       ; $6aac: $df
    inc e                                         ; $6aad: $1c
    dec b                                         ; $6aae: $05
    rst $18                                       ; $6aaf: $df
    inc d                                         ; $6ab0: $14
    dec b                                         ; $6ab1: $05
    ld a, $0f                                     ; $6ab2: $3e $0f
    ld hl, $6a36                                  ; $6ab4: $21 $36 $6a
    call Call_000_23e8                            ; $6ab7: $cd $e8 $23

Jump_005_6aba:
    ldh a, [$94]                                  ; $6aba: $f0 $94
    bit 1, a                                      ; $6abc: $cb $4f
    jr nz, jr_005_6b0b                            ; $6abe: $20 $4b

    ldh a, [$94]                                  ; $6ac0: $f0 $94
    bit 0, a                                      ; $6ac2: $cb $47
    jr z, jr_005_6ad5                             ; $6ac4: $28 $0f

    call Call_005_687e                            ; $6ac6: $cd $7e $68
    call Call_005_68b4                            ; $6ac9: $cd $b4 $68
    call Call_005_68f4                            ; $6acc: $cd $f4 $68
    rst $18                                       ; $6acf: $df
    inc e                                         ; $6ad0: $1c
    dec b                                         ; $6ad1: $05
    rst $18                                       ; $6ad2: $df
    inc d                                         ; $6ad3: $14
    dec b                                         ; $6ad4: $05

jr_005_6ad5:
    ldh a, [$94]                                  ; $6ad5: $f0 $94
    bit 3, a                                      ; $6ad7: $cb $5f
    jr z, jr_005_6af0                             ; $6ad9: $28 $15

    ld a, [$c484]                                 ; $6adb: $fa $84 $c4
    inc a                                         ; $6ade: $3c
    and $03                                       ; $6adf: $e6 $03
    ld [$c484], a                                 ; $6ae1: $ea $84 $c4
    call Call_005_68b4                            ; $6ae4: $cd $b4 $68
    call Call_005_68f4                            ; $6ae7: $cd $f4 $68
    rst $18                                       ; $6aea: $df
    inc e                                         ; $6aeb: $1c
    dec b                                         ; $6aec: $05
    rst $18                                       ; $6aed: $df
    inc d                                         ; $6aee: $14
    dec b                                         ; $6aef: $05

jr_005_6af0:
    ldh a, [$90]                                  ; $6af0: $f0 $90
    and $f0                                       ; $6af2: $e6 $f0
    jr z, jr_005_6b05                             ; $6af4: $28 $0f

    call Call_005_69c9                            ; $6af6: $cd $c9 $69
    call Call_005_69fb                            ; $6af9: $cd $fb $69
    call Call_005_6998                            ; $6afc: $cd $98 $69
    rst $18                                       ; $6aff: $df
    inc e                                         ; $6b00: $1c
    dec b                                         ; $6b01: $05
    rst $18                                       ; $6b02: $df
    inc d                                         ; $6b03: $14
    dec b                                         ; $6b04: $05

jr_005_6b05:
    call Call_000_2e3b                            ; $6b05: $cd $3b $2e
    jp Jump_005_6aba                              ; $6b08: $c3 $ba $6a


jr_005_6b0b:
    ld a, [$c487]                                 ; $6b0b: $fa $87 $c4
    rst $18                                       ; $6b0e: $df
    inc c                                         ; $6b0f: $0c
    dec b                                         ; $6b10: $05
    ld a, [$c488]                                 ; $6b11: $fa $88 $c4
    rst $18                                       ; $6b14: $df
    inc c                                         ; $6b15: $0c
    dec b                                         ; $6b16: $05
    ld a, [$c489]                                 ; $6b17: $fa $89 $c4
    rst $18                                       ; $6b1a: $df
    inc c                                         ; $6b1b: $0c
    dec b                                         ; $6b1c: $05
    rst $18                                       ; $6b1d: $df
    inc e                                         ; $6b1e: $1c
    dec b                                         ; $6b1f: $05
    rst $18                                       ; $6b20: $df
    inc d                                         ; $6b21: $14
    dec b                                         ; $6b22: $05
    ld hl, $6a36                                  ; $6b23: $21 $36 $6a
    call Call_000_2449                            ; $6b26: $cd $49 $24
    pop hl                                        ; $6b29: $e1
    pop de                                        ; $6b2a: $d1
    pop bc                                        ; $6b2b: $c1
    pop af                                        ; $6b2c: $f1
    ret                                           ; $6b2d: $c9


    push af                                       ; $6b2e: $f5
    push bc                                       ; $6b2f: $c5
    push de                                       ; $6b30: $d5
    push hl                                       ; $6b31: $e5

jr_005_6b32:
    ld hl, $0084                                  ; $6b32: $21 $84 $00
    ld de, $0c01                                  ; $6b35: $11 $01 $0c
    rst $18                                       ; $6b38: $df
    ld a, [bc]                                    ; $6b39: $0a
    dec b                                         ; $6b3a: $05
    ld [$c470], a                                 ; $6b3b: $ea $70 $c4
    rst $18                                       ; $6b3e: $df
    inc e                                         ; $6b3f: $1c
    dec b                                         ; $6b40: $05
    rst $18                                       ; $6b41: $df
    inc d                                         ; $6b42: $14
    dec b                                         ; $6b43: $05
    ld a, [$c470]                                 ; $6b44: $fa $70 $c4
    rst $18                                       ; $6b47: $df
    ld c, [hl]                                    ; $6b48: $4e
    dec b                                         ; $6b49: $05
    push af                                       ; $6b4a: $f5
    ld a, [$c470]                                 ; $6b4b: $fa $70 $c4
    rst $18                                       ; $6b4e: $df
    inc c                                         ; $6b4f: $0c
    dec b                                         ; $6b50: $05
    rst $18                                       ; $6b51: $df
    inc e                                         ; $6b52: $1c
    dec b                                         ; $6b53: $05
    rst $18                                       ; $6b54: $df
    inc d                                         ; $6b55: $14
    dec b                                         ; $6b56: $05
    pop af                                        ; $6b57: $f1
    cp $ff                                        ; $6b58: $fe $ff
    jr z, jr_005_6b69                             ; $6b5a: $28 $0d

    ld hl, $6b6e                                  ; $6b5c: $21 $6e $6b
    add a                                         ; $6b5f: $87
    add l                                         ; $6b60: $85
    ld l, a                                       ; $6b61: $6f
    jr nc, jr_005_6b65                            ; $6b62: $30 $01

    inc h                                         ; $6b64: $24

jr_005_6b65:
    ld a, [hl+]                                   ; $6b65: $2a
    ld h, [hl]                                    ; $6b66: $66
    ld l, a                                       ; $6b67: $6f
    jp hl                                         ; $6b68: $e9


jr_005_6b69:
    pop hl                                        ; $6b69: $e1
    pop de                                        ; $6b6a: $d1
    pop bc                                        ; $6b6b: $c1
    pop af                                        ; $6b6c: $f1
    ret                                           ; $6b6d: $c9


    halt                                          ; $6b6e: $76
    ld l, e                                       ; $6b6f: $6b
    ld a, e                                       ; $6b70: $7b
    ld l, e                                       ; $6b71: $6b
    add e                                         ; $6b72: $83
    ld l, e                                       ; $6b73: $6b
    adc b                                         ; $6b74: $88
    ld l, e                                       ; $6b75: $6b
    rst $18                                       ; $6b76: $df
    ld h, d                                       ; $6b77: $62
    dec b                                         ; $6b78: $05
    jr jr_005_6b32                                ; $6b79: $18 $b7

    rst $18                                       ; $6b7b: $df
    ld [bc], a                                    ; $6b7c: $02
    dec bc                                        ; $6b7d: $0b
    call Call_000_05dd                            ; $6b7e: $cd $dd $05
    jr jr_005_6b32                                ; $6b81: $18 $af

    rst $18                                       ; $6b83: $df
    ld [bc], a                                    ; $6b84: $02
    ld b, h                                       ; $6b85: $44
    jr jr_005_6b32                                ; $6b86: $18 $aa

    call Call_005_6a57                            ; $6b88: $cd $57 $6a
    jr jr_005_6b32                                ; $6b8b: $18 $a5

Call_005_6b8d:
    ld a, [$c471]                                 ; $6b8d: $fa $71 $c4
    call Call_005_4818                            ; $6b90: $cd $18 $48
    ld a, [$c470]                                 ; $6b93: $fa $70 $c4
    ld h, $00                                     ; $6b96: $26 $00
    ld l, a                                       ; $6b98: $6f
    ld de, $0d02                                  ; $6b99: $11 $02 $0d
    ld a, [$c471]                                 ; $6b9c: $fa $71 $c4
    ld a, [$c470]                                 ; $6b9f: $fa $70 $c4
    ld hl, $012c                                  ; $6ba2: $21 $2c $01
    add l                                         ; $6ba5: $85
    ld l, a                                       ; $6ba6: $6f
    jr nc, jr_005_6baa                            ; $6ba7: $30 $01

    inc h                                         ; $6ba9: $24

jr_005_6baa:
    ld de, $0102                                  ; $6baa: $11 $02 $01
    ld a, [$c471]                                 ; $6bad: $fa $71 $c4
    ld b, a                                       ; $6bb0: $47
    call Call_005_5a51                            ; $6bb1: $cd $51 $5a
    ld hl, $6c18                                  ; $6bb4: $21 $18 $6c
    ld de, $c600                                  ; $6bb7: $11 $00 $c6
    ld c, $10                                     ; $6bba: $0e $10
    call Call_000_03eb                            ; $6bbc: $cd $eb $03
    ld hl, $c600                                  ; $6bbf: $21 $00 $c6
    ld de, HeaderLogo                             ; $6bc2: $11 $04 $01
    ld a, [$c471]                                 ; $6bc5: $fa $71 $c4
    call Call_005_65ff                            ; $6bc8: $cd $ff $65
    ld de, $c600                                  ; $6bcb: $11 $00 $c6
    ld a, [$c470]                                 ; $6bce: $fa $70 $c4
    ld h, $00                                     ; $6bd1: $26 $00
    ld l, a                                       ; $6bd3: $6f
    ld a, $02                                     ; $6bd4: $3e $02
    call Call_000_21f0                            ; $6bd6: $cd $f0 $21
    ld hl, $c600                                  ; $6bd9: $21 $00 $c6
    ld de, $1102                                  ; $6bdc: $11 $02 $11
    ld a, [$c471]                                 ; $6bdf: $fa $71 $c4
    call Call_005_65ff                            ; $6be2: $cd $ff $65
    ld de, $c600                                  ; $6be5: $11 $00 $c6
    ld a, [$c474]                                 ; $6be8: $fa $74 $c4
    ld h, $00                                     ; $6beb: $26 $00
    ld l, a                                       ; $6bed: $6f
    ld a, $02                                     ; $6bee: $3e $02
    call Call_000_21f0                            ; $6bf0: $cd $f0 $21
    ld hl, $c600                                  ; $6bf3: $21 $00 $c6
    ld de, $1104                                  ; $6bf6: $11 $04 $11
    ld a, [$c471]                                 ; $6bf9: $fa $71 $c4
    call Call_005_65ff                            ; $6bfc: $cd $ff $65
    ld d, $10                                     ; $6bff: $16 $10
    ld a, [$c473]                                 ; $6c01: $fa $73 $c4
    add a                                         ; $6c04: $87
    add $02                                       ; $6c05: $c6 $02
    ld e, a                                       ; $6c07: $5f
    ld bc, $800d                                  ; $6c08: $01 $0d $80
    ld a, [$c471]                                 ; $6c0b: $fa $71 $c4
    rst $18                                       ; $6c0e: $df
    ld e, $05                                     ; $6c0f: $1e $05
    rst $18                                       ; $6c11: $df
    inc e                                         ; $6c12: $1c
    dec b                                         ; $6c13: $05
    rst $18                                       ; $6c14: $df
    inc d                                         ; $6c15: $14
    dec b                                         ; $6c16: $05
    ret                                           ; $6c17: $c9


    dec l                                         ; $6c18: $2d
    jr nz, @+$47                                  ; $6c19: $20 $45

    ld c, [hl]                                    ; $6c1b: $4e
    ld d, h                                       ; $6c1c: $54
    ld b, l                                       ; $6c1d: $45
    ld d, d                                       ; $6c1e: $52
    jr nz, jr_005_6c6f                            ; $6c1f: $20 $4e

    ld c, a                                       ; $6c21: $4f
    jr nz, jr_005_6c51                            ; $6c22: $20 $2d

    nop                                           ; $6c24: $00
    push af                                       ; $6c25: $f5
    push bc                                       ; $6c26: $c5
    push de                                       ; $6c27: $d5
    push hl                                       ; $6c28: $e5
    ld a, $05                                     ; $6c29: $3e $05
    ldh [$96], a                                  ; $6c2b: $e0 $96
    ldh [rSVBK], a                                ; $6c2d: $e0 $70
    xor a                                         ; $6c2f: $af
    ld [$c473], a                                 ; $6c30: $ea $73 $c4
    ld [$c474], a                                 ; $6c33: $ea $74 $c4
    ld a, [$c450]                                 ; $6c36: $fa $50 $c4
    rst $18                                       ; $6c39: $df
    ld d, [hl]                                    ; $6c3a: $56
    ld a, [bc]                                    ; $6c3b: $0a
    ld [$c470], a                                 ; $6c3c: $ea $70 $c4
    rst $18                                       ; $6c3f: $df
    ld d, d                                       ; $6c40: $52
    ld a, [bc]                                    ; $6c41: $0a
    ld [$c472], a                                 ; $6c42: $ea $72 $c4
    ld de, $0000                                  ; $6c45: $11 $00 $00
    ld bc, $1406                                  ; $6c48: $01 $06 $14
    rst $18                                       ; $6c4b: $df
    inc b                                         ; $6c4c: $04
    dec b                                         ; $6c4d: $05
    ld [$c471], a                                 ; $6c4e: $ea $71 $c4

jr_005_6c51:
    call Call_005_6b8d                            ; $6c51: $cd $8d $6b
    call Call_000_2e3b                            ; $6c54: $cd $3b $2e

jr_005_6c57:
    ldh a, [$94]                                  ; $6c57: $f0 $94
    and $02                                       ; $6c59: $e6 $02
    jr nz, jr_005_6cbb                            ; $6c5b: $20 $5e

    ldh a, [$94]                                  ; $6c5d: $f0 $94
    and $01                                       ; $6c5f: $e6 $01
    jr z, jr_005_6c79                             ; $6c61: $28 $16

    ld a, [$c470]                                 ; $6c63: $fa $70 $c4
    rst $18                                       ; $6c66: $df
    ld d, h                                       ; $6c67: $54
    ld a, [bc]                                    ; $6c68: $0a
    ld [$c450], a                                 ; $6c69: $ea $50 $c4
    ld a, [$c474]                                 ; $6c6c: $fa $74 $c4

jr_005_6c6f:
    ld [$c46a], a                                 ; $6c6f: $ea $6a $c4
    ld a, $fa                                     ; $6c72: $3e $fa
    ld [$c441], a                                 ; $6c74: $ea $41 $c4
    jr jr_005_6cbb                                ; $6c77: $18 $42

jr_005_6c79:
    ldh a, [$91]                                  ; $6c79: $f0 $91
    and $c0                                       ; $6c7b: $e6 $c0
    jr z, jr_005_6c89                             ; $6c7d: $28 $0a

    ld hl, $c473                                  ; $6c7f: $21 $73 $c4
    ld a, [hl]                                    ; $6c82: $7e
    xor $01                                       ; $6c83: $ee $01
    ld [hl], a                                    ; $6c85: $77
    call Call_005_6b8d                            ; $6c86: $cd $8d $6b

jr_005_6c89:
    ld a, [$c473]                                 ; $6c89: $fa $73 $c4
    cp $01                                        ; $6c8c: $fe $01
    jr z, jr_005_6ca4                             ; $6c8e: $28 $14

    ld a, [$c472]                                 ; $6c90: $fa $72 $c4
    ld d, a                                       ; $6c93: $57
    ld hl, $c470                                  ; $6c94: $21 $70 $c4
    ld a, [hl]                                    ; $6c97: $7e
    call Call_005_6ccc                            ; $6c98: $cd $cc $6c
    cp [hl]                                       ; $6c9b: $be
    jr z, jr_005_6cb6                             ; $6c9c: $28 $18

    ld [hl], a                                    ; $6c9e: $77
    call Call_005_6b8d                            ; $6c9f: $cd $8d $6b
    jr jr_005_6cb6                                ; $6ca2: $18 $12

jr_005_6ca4:
    ld d, $10                                     ; $6ca4: $16 $10
    ld hl, $c474                                  ; $6ca6: $21 $74 $c4
    ld a, [hl]                                    ; $6ca9: $7e
    call Call_005_6ccc                            ; $6caa: $cd $cc $6c
    cp [hl]                                       ; $6cad: $be
    jr z, jr_005_6cb6                             ; $6cae: $28 $06

    ld [hl], a                                    ; $6cb0: $77
    call Call_005_6b8d                            ; $6cb1: $cd $8d $6b
    jr jr_005_6cb6                                ; $6cb4: $18 $00

jr_005_6cb6:
    call Call_000_2e3b                            ; $6cb6: $cd $3b $2e
    jr jr_005_6c57                                ; $6cb9: $18 $9c

jr_005_6cbb:
    ld a, [$c471]                                 ; $6cbb: $fa $71 $c4
    rst $18                                       ; $6cbe: $df
    inc c                                         ; $6cbf: $0c
    dec b                                         ; $6cc0: $05
    rst $18                                       ; $6cc1: $df
    inc e                                         ; $6cc2: $1c
    dec b                                         ; $6cc3: $05
    rst $18                                       ; $6cc4: $df
    inc d                                         ; $6cc5: $14
    dec b                                         ; $6cc6: $05
    pop hl                                        ; $6cc7: $e1
    pop de                                        ; $6cc8: $d1
    pop bc                                        ; $6cc9: $c1
    pop af                                        ; $6cca: $f1
    ret                                           ; $6ccb: $c9


Call_005_6ccc:
    push bc                                       ; $6ccc: $c5
    ld b, a                                       ; $6ccd: $47
    ldh a, [$91]                                  ; $6cce: $f0 $91
    bit 4, a                                      ; $6cd0: $cb $67
    jr nz, jr_005_6cdb                            ; $6cd2: $20 $07

    bit 5, a                                      ; $6cd4: $cb $6f
    jr nz, jr_005_6cde                            ; $6cd6: $20 $06

    ld a, b                                       ; $6cd8: $78
    pop bc                                        ; $6cd9: $c1
    ret                                           ; $6cda: $c9


jr_005_6cdb:
    inc b                                         ; $6cdb: $04
    jr jr_005_6ce1                                ; $6cdc: $18 $03

jr_005_6cde:
    dec b                                         ; $6cde: $05
    jr jr_005_6ce1                                ; $6cdf: $18 $00

jr_005_6ce1:
    ld a, b                                       ; $6ce1: $78
    bit 7, a                                      ; $6ce2: $cb $7f
    jr z, jr_005_6cea                             ; $6ce4: $28 $04

    ld a, d                                       ; $6ce6: $7a
    dec a                                         ; $6ce7: $3d
    jr jr_005_6cee                                ; $6ce8: $18 $04

jr_005_6cea:
    cp d                                          ; $6cea: $ba
    jr c, jr_005_6cee                             ; $6ceb: $38 $01

    xor a                                         ; $6ced: $af

jr_005_6cee:
    pop bc                                        ; $6cee: $c1
    ret                                           ; $6cef: $c9


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
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    rst $38                                       ; $6d12: $ff
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    rst $38                                       ; $6d22: $ff
    rst $38                                       ; $6d23: $ff
    rst $38                                       ; $6d24: $ff
    rst $38                                       ; $6d25: $ff
    rst $38                                       ; $6d26: $ff
    rst $38                                       ; $6d27: $ff
    rst $38                                       ; $6d28: $ff
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    rst $38                                       ; $6d4a: $ff
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    rst $38                                       ; $6d4e: $ff
    rst $38                                       ; $6d4f: $ff
    rst $38                                       ; $6d50: $ff
    rst $38                                       ; $6d51: $ff
    rst $38                                       ; $6d52: $ff
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    rst $38                                       ; $6d6e: $ff
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    rst $38                                       ; $6d71: $ff
    rst $38                                       ; $6d72: $ff
    rst $38                                       ; $6d73: $ff
    rst $38                                       ; $6d74: $ff
    rst $38                                       ; $6d75: $ff
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    rst $38                                       ; $6d84: $ff
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    rst $38                                       ; $6d8e: $ff
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    rst $38                                       ; $6d96: $ff
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    rst $38                                       ; $6d9f: $ff
    rst $38                                       ; $6da0: $ff
    rst $38                                       ; $6da1: $ff
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    rst $38                                       ; $6da4: $ff
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    rst $38                                       ; $6dab: $ff
    rst $38                                       ; $6dac: $ff
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    rst $38                                       ; $6daf: $ff
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $38                                       ; $6dbe: $ff
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff
    rst $38                                       ; $6dc1: $ff
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    rst $38                                       ; $6dc4: $ff
    rst $38                                       ; $6dc5: $ff
    rst $38                                       ; $6dc6: $ff
    rst $38                                       ; $6dc7: $ff
    rst $38                                       ; $6dc8: $ff
    rst $38                                       ; $6dc9: $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    rst $38                                       ; $6dd0: $ff
    rst $38                                       ; $6dd1: $ff
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    rst $38                                       ; $6ddc: $ff
    rst $38                                       ; $6ddd: $ff
    rst $38                                       ; $6dde: $ff
    rst $38                                       ; $6ddf: $ff
    rst $38                                       ; $6de0: $ff
    rst $38                                       ; $6de1: $ff
    rst $38                                       ; $6de2: $ff
    rst $38                                       ; $6de3: $ff
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    rst $38                                       ; $6df4: $ff
    rst $38                                       ; $6df5: $ff
    rst $38                                       ; $6df6: $ff
    rst $38                                       ; $6df7: $ff
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    rst $38                                       ; $6dfe: $ff
    rst $38                                       ; $6dff: $ff
    rst $38                                       ; $6e00: $ff
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    rst $38                                       ; $6e04: $ff
    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    rst $38                                       ; $6e0a: $ff
    rst $38                                       ; $6e0b: $ff
    rst $38                                       ; $6e0c: $ff
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    rst $38                                       ; $6e12: $ff
    rst $38                                       ; $6e13: $ff
    rst $38                                       ; $6e14: $ff
    rst $38                                       ; $6e15: $ff
    rst $38                                       ; $6e16: $ff
    rst $38                                       ; $6e17: $ff
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    rst $38                                       ; $6e1d: $ff
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    rst $38                                       ; $6e28: $ff
    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    rst $38                                       ; $6e2d: $ff
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
    rst $38                                       ; $6e3e: $ff
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
    rst $38                                       ; $6e4f: $ff
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
    rst $38                                       ; $6e60: $ff
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
    rst $38                                       ; $6e71: $ff
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
    rst $38                                       ; $6e82: $ff
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
    rst $38                                       ; $6e93: $ff
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
    rst $38                                       ; $6ea4: $ff
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
    rst $38                                       ; $6eb5: $ff
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
    rst $38                                       ; $6ec6: $ff
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
    rst $38                                       ; $6ed7: $ff
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
    rst $38                                       ; $6ee7: $ff
    rst $38                                       ; $6ee8: $ff
    rst $38                                       ; $6ee9: $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    rst $38                                       ; $6eee: $ff
    rst $38                                       ; $6eef: $ff
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rst $38                                       ; $6ef4: $ff
    rst $38                                       ; $6ef5: $ff
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    rst $38                                       ; $6efd: $ff
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    rst $38                                       ; $6f01: $ff
    rst $38                                       ; $6f02: $ff
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    rst $38                                       ; $6f05: $ff
    rst $38                                       ; $6f06: $ff
    rst $38                                       ; $6f07: $ff
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    rst $38                                       ; $6f12: $ff
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    rst $38                                       ; $6f18: $ff
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    rst $38                                       ; $6f1f: $ff
    rst $38                                       ; $6f20: $ff
    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    rst $38                                       ; $6f27: $ff
    rst $38                                       ; $6f28: $ff
    rst $38                                       ; $6f29: $ff
    rst $38                                       ; $6f2a: $ff
    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
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
