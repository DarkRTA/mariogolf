; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    db $2c, $44

    xor a                                         ; $4002: $af
    ld b, l                                       ; $4003: $45
    db $d2                                        ; $4004: $d2
    ld c, a                                       ; $4005: $4f

    db $f4, $45, $5c, $46

    ld a, [bc]                                    ; $400a: $0a
    ld c, d                                       ; $400b: $4a

    db $81, $4a, $a6, $4c, $8a, $4b

    jr @+$4e                                      ; $4012: $18 $4c

    and l                                         ; $4014: $a5
    ld c, c                                       ; $4015: $49
    ld [hl], e                                    ; $4016: $73
    ld b, [hl]                                    ; $4017: $46

    db $a6, $46

    ld [hl+], a                                   ; $401a: $22
    ld b, [hl]                                    ; $401b: $46
    db $ea                                        ; $401c: $ea
    ld b, l                                       ; $401d: $45

    db $19, $4b, $1f, $4b, $24, $4b, $29, $4b

    db $f4                                        ; $4026: $f4
    ld c, a                                       ; $4027: $4f

    db $2c, $50, $7e, $50, $8a, $50

    db $dd                                        ; $402e: $dd
    ld l, a                                       ; $402f: $6f
    add hl, de                                    ; $4030: $19
    ld [hl], b                                    ; $4031: $70
    ld a, a                                       ; $4032: $7f
    ld l, d                                       ; $4033: $6a
    sbc h                                         ; $4034: $9c
    ld l, d                                       ; $4035: $6a

    db $b1, $4c, $f6, $4a

    add sp, $4d                                   ; $403a: $e8 $4d

    db $14, $4f, $1d, $4f, $f0, $6c

    dec a                                         ; $4042: $3d
    ld l, l                                       ; $4043: $6d

    db $8d, $6f

    ld d, d                                       ; $4046: $52
    ld c, a                                       ; $4047: $4f
    ld h, a                                       ; $4048: $67
    ld c, a                                       ; $4049: $4f
    ld [hl], e                                    ; $404a: $73
    ld c, a                                       ; $404b: $4f
    ld a, a                                       ; $404c: $7f
    ld c, a                                       ; $404d: $4f
    and b                                         ; $404e: $a0
    ld d, b                                       ; $404f: $50

    db $68, $49

    ld hl, $d404                                  ; $4052: $21 $04 $d4
    ld a, [hl+]                                   ; $4055: $2a
    ld d, [hl]                                    ; $4056: $56
    ld e, a                                       ; $4057: $5f
    ld hl, $d401                                  ; $4058: $21 $01 $d4
    ld a, [hl+]                                   ; $405b: $2a
    ld h, [hl]                                    ; $405c: $66
    ld l, a                                       ; $405d: $6f

Call_012_405e:
    ld a, [$d443]                                 ; $405e: $fa $43 $d4
    or a                                          ; $4061: $b7
    jr z, jr_012_4087                             ; $4062: $28 $23

    cp $04                                        ; $4064: $fe $04
    jp z, Jump_012_4087                           ; $4066: $ca $87 $40

    ld a, [$d442]                                 ; $4069: $fa $42 $d4
    ld b, a                                       ; $406c: $47
    ld a, d                                       ; $406d: $7a
    sub b                                         ; $406e: $90
    ld d, a                                       ; $406f: $57
    ld a, [$d441]                                 ; $4070: $fa $41 $d4
    ld b, a                                       ; $4073: $47
    ld a, h                                       ; $4074: $7c
    sub b                                         ; $4075: $90

jr_012_4076:
    ld h, a                                       ; $4076: $67
    sla l                                         ; $4077: $cb $25
    rl h                                          ; $4079: $cb $14
    sla l                                         ; $407b: $cb $25
    rl h                                          ; $407d: $cb $14
    sla e                                         ; $407f: $cb $23
    rl d                                          ; $4081: $cb $12
    sla e                                         ; $4083: $cb $23
    rl d                                          ; $4085: $cb $12

Jump_012_4087:
jr_012_4087:
    push hl                                       ; $4087: $e5
    push de                                       ; $4088: $d5
    call Call_012_4098                            ; $4089: $cd $98 $40
    pop de                                        ; $408c: $d1
    pop hl                                        ; $408d: $e1
    push bc                                       ; $408e: $c5
    call Call_012_40fd                            ; $408f: $cd $fd $40
    pop bc                                        ; $4092: $c1
    ret                                           ; $4093: $c9


    xor a                                         ; $4094: $af
    ld b, a                                       ; $4095: $47
    ld c, a                                       ; $4096: $4f
    ret                                           ; $4097: $c9


Call_012_4098:
    ldh a, [$96]                                  ; $4098: $f0 $96
    push af                                       ; $409a: $f5
    ld e, h                                       ; $409b: $5c
    ld l, d                                       ; $409c: $6a
    ld h, $00                                     ; $409d: $26 $00
    ld d, $00                                     ; $409f: $16 $00
    add hl, hl                                    ; $40a1: $29
    add hl, hl                                    ; $40a2: $29
    add hl, hl                                    ; $40a3: $29
    add hl, hl                                    ; $40a4: $29
    add hl, hl                                    ; $40a5: $29
    add hl, hl                                    ; $40a6: $29
    add hl, de                                    ; $40a7: $19
    ld de, $d000                                  ; $40a8: $11 $00 $d0
    add hl, de                                    ; $40ab: $19
    ld a, $02                                     ; $40ac: $3e $02
    ldh [$96], a                                  ; $40ae: $e0 $96
    ldh [rSVBK], a                                ; $40b0: $e0 $70
    ld a, [hl]                                    ; $40b2: $7e
    rrca                                          ; $40b3: $0f
    rrca                                          ; $40b4: $0f
    and $18                                       ; $40b5: $e6 $18
    ld b, a                                       ; $40b7: $47
    ld a, $03                                     ; $40b8: $3e $03
    ldh [$96], a                                  ; $40ba: $e0 $96
    ldh [rSVBK], a                                ; $40bc: $e0 $70
    ld l, [hl]                                    ; $40be: $6e
    ld h, $d7                                     ; $40bf: $26 $d7
    ld a, $06                                     ; $40c1: $3e $06
    ldh [$96], a                                  ; $40c3: $e0 $96
    ldh [rSVBK], a                                ; $40c5: $e0 $70
    ld a, [hl]                                    ; $40c7: $7e
    ld c, a                                       ; $40c8: $4f
    and $07                                       ; $40c9: $e6 $07
    add b                                         ; $40cb: $80
    ld hl, $40dd                                  ; $40cc: $21 $dd $40
    add l                                         ; $40cf: $85
    ld l, a                                       ; $40d0: $6f
    ld a, h                                       ; $40d1: $7c
    adc $00                                       ; $40d2: $ce $00
    ld h, a                                       ; $40d4: $67
    ld b, [hl]                                    ; $40d5: $46
    pop af                                        ; $40d6: $f1
    ldh [$96], a                                  ; $40d7: $e0 $96
    ldh [rSVBK], a                                ; $40d9: $e0 $70
    ld a, c                                       ; $40db: $79
    ret                                           ; $40dc: $c9


    nop                                           ; $40dd: $00
    jr nz, jr_012_4120                            ; $40de: $20 $40

    ld h, b                                       ; $40e0: $60
    add b                                         ; $40e1: $80
    and b                                         ; $40e2: $a0
    ret nz                                        ; $40e3: $c0

    ldh [$80], a                                  ; $40e4: $e0 $80
    ld h, b                                       ; $40e6: $60
    ld b, b                                       ; $40e7: $40
    jr nz, jr_012_40ea                            ; $40e8: $20 $00

jr_012_40ea:
    ldh [$c0], a                                  ; $40ea: $e0 $c0
    and b                                         ; $40ec: $a0
    nop                                           ; $40ed: $00
    ldh [$c0], a                                  ; $40ee: $e0 $c0
    and b                                         ; $40f0: $a0
    add b                                         ; $40f1: $80
    ld h, b                                       ; $40f2: $60
    ld b, b                                       ; $40f3: $40
    jr nz, jr_012_4076                            ; $40f4: $20 $80

    and b                                         ; $40f6: $a0
    ret nz                                        ; $40f7: $c0

    ldh [rP1], a                                  ; $40f8: $e0 $00
    jr nz, jr_012_413c                            ; $40fa: $20 $40

    ld h, b                                       ; $40fc: $60

Call_012_40fd:
    ldh a, [$96]                                  ; $40fd: $f0 $96
    push af                                       ; $40ff: $f5
    push hl                                       ; $4100: $e5
    push de                                       ; $4101: $d5
    ld e, h                                       ; $4102: $5c
    ld l, d                                       ; $4103: $6a
    ld h, $00                                     ; $4104: $26 $00
    ld d, $00                                     ; $4106: $16 $00
    add hl, hl                                    ; $4108: $29
    add hl, hl                                    ; $4109: $29
    add hl, hl                                    ; $410a: $29
    add hl, hl                                    ; $410b: $29
    add hl, hl                                    ; $410c: $29
    add hl, hl                                    ; $410d: $29
    add hl, de                                    ; $410e: $19
    ld de, $d000                                  ; $410f: $11 $00 $d0
    add hl, de                                    ; $4112: $19
    pop de                                        ; $4113: $d1
    pop bc                                        ; $4114: $c1
    xor a                                         ; $4115: $af
    sla c                                         ; $4116: $cb $21
    rla                                           ; $4118: $17
    sla c                                         ; $4119: $cb $21
    rla                                           ; $411b: $17
    ld c, a                                       ; $411c: $4f
    xor a                                         ; $411d: $af
    sla e                                         ; $411e: $cb $23

jr_012_4120:
    rla                                           ; $4120: $17
    sla e                                         ; $4121: $cb $23
    rla                                           ; $4123: $17
    ld d, $00                                     ; $4124: $16 $00
    ld e, a                                       ; $4126: $5f
    ld a, $02                                     ; $4127: $3e $02
    ldh [$96], a                                  ; $4129: $e0 $96
    ldh [rSVBK], a                                ; $412b: $e0 $70
    bit 5, [hl]                                   ; $412d: $cb $6e
    jr z, jr_012_4135                             ; $412f: $28 $04

    ld a, $03                                     ; $4131: $3e $03
    sub c                                         ; $4133: $91
    ld c, a                                       ; $4134: $4f

jr_012_4135:
    bit 6, [hl]                                   ; $4135: $cb $76
    jr z, jr_012_413d                             ; $4137: $28 $04

    ld a, $03                                     ; $4139: $3e $03
    sub e                                         ; $413b: $93

jr_012_413c:
    ld e, a                                       ; $413c: $5f

jr_012_413d:
    ld a, $03                                     ; $413d: $3e $03
    ldh [$96], a                                  ; $413f: $e0 $96
    ldh [rSVBK], a                                ; $4141: $e0 $70
    ld l, [hl]                                    ; $4143: $6e
    ld h, $00                                     ; $4144: $26 $00
    add hl, hl                                    ; $4146: $29
    add hl, hl                                    ; $4147: $29
    add hl, hl                                    ; $4148: $29
    add hl, de                                    ; $4149: $19
    add hl, de                                    ; $414a: $19
    ld de, $d800                                  ; $414b: $11 $00 $d8
    add hl, de                                    ; $414e: $19
    bit 1, c                                      ; $414f: $cb $49
    jr z, jr_012_4154                             ; $4151: $28 $01

    inc hl                                        ; $4153: $23

jr_012_4154:
    ld a, $06                                     ; $4154: $3e $06
    ldh [$96], a                                  ; $4156: $e0 $96
    ldh [rSVBK], a                                ; $4158: $e0 $70
    ld a, [hl]                                    ; $415a: $7e
    bit 0, c                                      ; $415b: $cb $41
    jr nz, jr_012_4161                            ; $415d: $20 $02

    swap a                                        ; $415f: $cb $37

jr_012_4161:
    and $0f                                       ; $4161: $e6 $0f
    ld b, a                                       ; $4163: $47
    pop af                                        ; $4164: $f1
    ldh [$96], a                                  ; $4165: $e0 $96
    ldh [rSVBK], a                                ; $4167: $e0 $70
    ld a, b                                       ; $4169: $78
    ret                                           ; $416a: $c9


    ld a, e                                       ; $416b: $7b
    and $fc                                       ; $416c: $e6 $fc
    swap a                                        ; $416e: $cb $37
    ld l, a                                       ; $4170: $6f
    and $0f                                       ; $4171: $e6 $0f
    ld h, a                                       ; $4173: $67
    xor l                                         ; $4174: $ad
    ld l, a                                       ; $4175: $6f
    ld c, d                                       ; $4176: $4a
    srl c                                         ; $4177: $cb $39
    srl c                                         ; $4179: $cb $39
    ld b, $d0                                     ; $417b: $06 $d0
    add hl, bc                                    ; $417d: $09
    ld a, $02                                     ; $417e: $3e $02
    ldh [$96], a                                  ; $4180: $e0 $96
    ldh [rSVBK], a                                ; $4182: $e0 $70
    ld a, d                                       ; $4184: $7a
    bit 5, [hl]                                   ; $4185: $cb $6e
    jr z, jr_012_418a                             ; $4187: $28 $01

    cpl                                           ; $4189: $2f

jr_012_418a:
    ld c, a                                       ; $418a: $4f
    rrca                                          ; $418b: $0f
    rrca                                          ; $418c: $0f
    ld a, e                                       ; $418d: $7b
    bit 6, [hl]                                   ; $418e: $cb $76
    jr z, jr_012_4193                             ; $4190: $28 $01

    cpl                                           ; $4192: $2f

jr_012_4193:
    rla                                           ; $4193: $17
    and $07                                       ; $4194: $e6 $07
    ld e, a                                       ; $4196: $5f
    ld a, $03                                     ; $4197: $3e $03
    ldh [$96], a                                  ; $4199: $e0 $96
    ldh [rSVBK], a                                ; $419b: $e0 $70
    ld l, [hl]                                    ; $419d: $6e
    xor a                                         ; $419e: $af
    ld h, a                                       ; $419f: $67
    ld d, $d8                                     ; $41a0: $16 $d8
    add hl, hl                                    ; $41a2: $29
    add hl, hl                                    ; $41a3: $29
    add hl, hl                                    ; $41a4: $29
    add hl, de                                    ; $41a5: $19
    ld a, $06                                     ; $41a6: $3e $06
    ldh [$96], a                                  ; $41a8: $e0 $96
    ldh [rSVBK], a                                ; $41aa: $e0 $70
    ld a, [hl]                                    ; $41ac: $7e
    bit 0, c                                      ; $41ad: $cb $41
    jr nz, jr_012_41b3                            ; $41af: $20 $02

    swap a                                        ; $41b1: $cb $37

jr_012_41b3:
    and $0f                                       ; $41b3: $e6 $0f
    ret                                           ; $41b5: $c9


Call_012_41b6:
    ld a, [$d329]                                 ; $41b6: $fa $29 $d3
    add a                                         ; $41b9: $87
    ld hl, $41d5                                  ; $41ba: $21 $d5 $41
    add l                                         ; $41bd: $85
    ld l, a                                       ; $41be: $6f
    jr nc, jr_012_41c2                            ; $41bf: $30 $01

    inc h                                         ; $41c1: $24

jr_012_41c2:
    ld a, [hl+]                                   ; $41c2: $2a
    ld d, [hl]                                    ; $41c3: $56
    ld e, a                                       ; $41c4: $5f
    call Call_012_4239                            ; $41c5: $cd $39 $42
    add a                                         ; $41c8: $87
    ld h, $00                                     ; $41c9: $26 $00
    ld l, a                                       ; $41cb: $6f
    add hl, de                                    ; $41cc: $19
    ld e, [hl]                                    ; $41cd: $5e
    inc hl                                        ; $41ce: $23
    ld d, [hl]                                    ; $41cf: $56
    inc hl                                        ; $41d0: $23
    ld a, [hl+]                                   ; $41d1: $2a
    ld h, [hl]                                    ; $41d2: $66
    ld l, a                                       ; $41d3: $6f
    ret                                           ; $41d4: $c9


    db $f1, $41, $09, $42

    add hl, bc                                    ; $41d9: $09
    ld b, d                                       ; $41da: $42

    db $21, $42

    ld hl, $2142                                  ; $41dd: $21 $42 $21
    ld b, d                                       ; $41e0: $42

    db $21, $42, $21, $42, $21, $42

    ld hl, $2142                                  ; $41e7: $21 $42 $21
    ld b, d                                       ; $41ea: $42
    db $21                                        ; $41eb: $21
    ld b, d                                       ; $41ec: $42

    db $21, $42, $21, $42, $62, $64, $5d, $5f

    ld [hl-], a                                   ; $41f5: $32
    inc a                                         ; $41f6: $3c
    inc d                                         ; $41f7: $14
    ld [hl-], a                                   ; $41f8: $32
    jr z, @+$39                                   ; $41f9: $28 $37

    inc d                                         ; $41fb: $14
    jr z, @+$0c                                   ; $41fc: $28 $0a

    ld e, $63                                     ; $41fe: $1e $63
    ld h, h                                       ; $4200: $64
    inc a                                         ; $4201: $3c
    ld b, h                                       ; $4202: $44
    ld d, a                                       ; $4203: $57
    ld e, e                                       ; $4204: $5b
    ld d, e                                       ; $4205: $53
    ld d, a                                       ; $4206: $57
    jr z, jr_012_4240                             ; $4207: $28 $37

    db $62, $64, $62, $64, $32, $3c

    inc d                                         ; $420f: $14
    ld [hl-], a                                   ; $4210: $32
    jr z, jr_012_424a                             ; $4211: $28 $37

    inc d                                         ; $4213: $14
    jr z, @+$0c                                   ; $4214: $28 $0a

    ld e, $63                                     ; $4216: $1e $63
    ld h, h                                       ; $4218: $64
    ld e, d                                       ; $4219: $5a
    ld h, d                                       ; $421a: $62
    ld e, [hl]                                    ; $421b: $5e
    ld h, d                                       ; $421c: $62
    ld e, d                                       ; $421d: $5a
    ld e, [hl]                                    ; $421e: $5e
    jr z, jr_012_4258                             ; $421f: $28 $37

    ld h, d                                       ; $4221: $62
    ld h, h                                       ; $4222: $64

    db $62, $64, $50, $5a, $32, $50

    ld b, [hl]                                    ; $4229: $46
    ld d, l                                       ; $422a: $55
    ld [hl-], a                                   ; $422b: $32
    ld b, [hl]                                    ; $422c: $46
    jr z, @+$3e                                   ; $422d: $28 $3c

    db $63, $64, $5a, $62, $5e, $62, $5a, $5e, $46, $55

Call_012_4239:
    ld a, [$d445]                                 ; $4239: $fa $45 $d4
    or a                                          ; $423c: $b7
    jr z, jr_012_4241                             ; $423d: $28 $02

    xor a                                         ; $423f: $af

jr_012_4240:
    ret                                           ; $4240: $c9


jr_012_4241:
    ld a, [$d4cd]                                 ; $4241: $fa $cd $d4
    cp $0d                                        ; $4244: $fe $0d
    jr z, jr_012_424c                             ; $4246: $28 $04

    cp $02                                        ; $4248: $fe $02

jr_012_424a:
    jr nz, jr_012_425c                            ; $424a: $20 $10

jr_012_424c:
    ld a, [$d446]                                 ; $424c: $fa $46 $d4
    or a                                          ; $424f: $b7
    jr z, jr_012_4281                             ; $4250: $28 $2f

    cp $01                                        ; $4252: $fe $01
    jr nz, jr_012_4259                            ; $4254: $20 $03

    ld a, $05                                     ; $4256: $3e $05

jr_012_4258:
    ret                                           ; $4258: $c9


jr_012_4259:
    ld a, $06                                     ; $4259: $3e $06
    ret                                           ; $425b: $c9


jr_012_425c:
    cp $00                                        ; $425c: $fe $00
    jr z, jr_012_4264                             ; $425e: $28 $04

    cp $0e                                        ; $4260: $fe $0e
    jr nz, jr_012_4274                            ; $4262: $20 $10

jr_012_4264:
    ld a, [$d446]                                 ; $4264: $fa $46 $d4
    or a                                          ; $4267: $b7
    jr z, jr_012_4281                             ; $4268: $28 $17

    cp $01                                        ; $426a: $fe $01
    jr nz, jr_012_4271                            ; $426c: $20 $03

    ld a, $09                                     ; $426e: $3e $09
    ret                                           ; $4270: $c9


jr_012_4271:
    ld a, $0a                                     ; $4271: $3e $0a
    ret                                           ; $4273: $c9


jr_012_4274:
    cp $01                                        ; $4274: $fe $01
    jr nz, jr_012_4281                            ; $4276: $20 $09

    ld a, [$d446]                                 ; $4278: $fa $46 $d4
    or a                                          ; $427b: $b7
    jr z, jr_012_4281                             ; $427c: $28 $03

    ld a, $0b                                     ; $427e: $3e $0b
    ret                                           ; $4280: $c9


jr_012_4281:
    push hl                                       ; $4281: $e5
    push de                                       ; $4282: $d5
    ld a, [$d4cd]                                 ; $4283: $fa $cd $d4
    ld hl, $4292                                  ; $4286: $21 $92 $42
    add l                                         ; $4289: $85
    ld l, a                                       ; $428a: $6f
    jr nc, jr_012_428e                            ; $428b: $30 $01

    inc h                                         ; $428d: $24

jr_012_428e:
    ld a, [hl]                                    ; $428e: $7e
    pop de                                        ; $428f: $d1
    pop hl                                        ; $4290: $e1
    ret                                           ; $4291: $c9


    db $01, $02

    inc b                                         ; $4294: $04
    ld [bc], a                                    ; $4295: $02
    ld [bc], a                                    ; $4296: $02
    inc bc                                        ; $4297: $03

    db $07

    ld [bc], a                                    ; $4299: $02
    ld [bc], a                                    ; $429a: $02

    db $08

    rlca                                          ; $429c: $07
    dec bc                                        ; $429d: $0b
    inc bc                                        ; $429e: $03
    inc b                                         ; $429f: $04
    ld bc, $2101                                  ; $42a0: $01 $01 $21
    inc b                                         ; $42a3: $04
    call nc, Call_012_562a                        ; $42a4: $d4 $2a $56
    ld e, a                                       ; $42a7: $5f
    ld hl, $d401                                  ; $42a8: $21 $01 $d4
    ld a, [hl+]                                   ; $42ab: $2a
    ld h, [hl]                                    ; $42ac: $66
    ld l, a                                       ; $42ad: $6f
    ld a, [$d443]                                 ; $42ae: $fa $43 $d4
    or a                                          ; $42b1: $b7
    jr z, jr_012_4315                             ; $42b2: $28 $61

    cp $04                                        ; $42b4: $fe $04
    jr z, jr_012_4315                             ; $42b6: $28 $5d

    ld a, [$d442]                                 ; $42b8: $fa $42 $d4
    ld c, a                                       ; $42bb: $4f
    ld a, d                                       ; $42bc: $7a
    sub c                                         ; $42bd: $91
    ld d, a                                       ; $42be: $57
    ld a, [$d441]                                 ; $42bf: $fa $41 $d4
    ld c, a                                       ; $42c2: $4f
    ld a, h                                       ; $42c3: $7c
    sub c                                         ; $42c4: $91
    ld h, a                                       ; $42c5: $67
    sla l                                         ; $42c6: $cb $25
    rl h                                          ; $42c8: $cb $14
    sla l                                         ; $42ca: $cb $25
    rl h                                          ; $42cc: $cb $14
    sla e                                         ; $42ce: $cb $23
    rl d                                          ; $42d0: $cb $12
    sla e                                         ; $42d2: $cb $23
    rl d                                          ; $42d4: $cb $12
    push hl                                       ; $42d6: $e5
    push de                                       ; $42d7: $d5
    call Call_012_4098                            ; $42d8: $cd $98 $40
    pop de                                        ; $42db: $d1
    pop hl                                        ; $42dc: $e1
    swap a                                        ; $42dd: $cb $37
    and $03                                       ; $42df: $e6 $03
    jr z, jr_012_430f                             ; $42e1: $28 $2c

    ld c, a                                       ; $42e3: $4f
    push bc                                       ; $42e4: $c5
    call Call_012_40fd                            ; $42e5: $cd $fd $40
    cp $06                                        ; $42e8: $fe $06
    pop bc                                        ; $42ea: $c1
    jr nz, jr_012_4307                            ; $42eb: $20 $1a

    ld a, c                                       ; $42ed: $79
    add a                                         ; $42ee: $87
    ld hl, $42ff                                  ; $42ef: $21 $ff $42
    add l                                         ; $42f2: $85
    ld l, a                                       ; $42f3: $6f
    jr nc, jr_012_42f7                            ; $42f4: $30 $01

    inc h                                         ; $42f6: $24

jr_012_42f7:
    ld a, [hl+]                                   ; $42f7: $2a
    ld h, [hl]                                    ; $42f8: $66
    ld l, a                                       ; $42f9: $6f
    ld c, $00                                     ; $42fa: $0e $00
    ld a, $ff                                     ; $42fc: $3e $ff
    ret                                           ; $42fe: $c9


    nop                                           ; $42ff: $00
    nop                                           ; $4300: $00
    ld [bc], a                                    ; $4301: $02
    nop                                           ; $4302: $00
    inc b                                         ; $4303: $04
    nop                                           ; $4304: $00
    ld b, $00                                     ; $4305: $06 $00

jr_012_4307:
    ld hl, $0020                                  ; $4307: $21 $20 $00
    ld c, $00                                     ; $430a: $0e $00
    ld a, $ff                                     ; $430c: $3e $ff
    ret                                           ; $430e: $c9


jr_012_430f:
    xor a                                         ; $430f: $af
    ld h, a                                       ; $4310: $67
    ld l, a                                       ; $4311: $6f
    ld c, a                                       ; $4312: $4f
    ld b, a                                       ; $4313: $47
    ret                                           ; $4314: $c9


jr_012_4315:
    ldh a, [$96]                                  ; $4315: $f0 $96
    push af                                       ; $4317: $f5
    push hl                                       ; $4318: $e5
    push de                                       ; $4319: $d5
    ld e, h                                       ; $431a: $5c
    ld l, d                                       ; $431b: $6a
    ld h, $00                                     ; $431c: $26 $00
    ld d, $00                                     ; $431e: $16 $00
    add hl, hl                                    ; $4320: $29
    add hl, hl                                    ; $4321: $29
    add hl, hl                                    ; $4322: $29
    add hl, hl                                    ; $4323: $29
    add hl, hl                                    ; $4324: $29
    add hl, hl                                    ; $4325: $29
    add hl, de                                    ; $4326: $19
    ld de, $d000                                  ; $4327: $11 $00 $d0
    add hl, de                                    ; $432a: $19
    pop de                                        ; $432b: $d1
    pop bc                                        ; $432c: $c1
    xor a                                         ; $432d: $af
    sla c                                         ; $432e: $cb $21
    rla                                           ; $4330: $17
    sla c                                         ; $4331: $cb $21
    rla                                           ; $4333: $17
    ld c, a                                       ; $4334: $4f
    xor a                                         ; $4335: $af
    sla e                                         ; $4336: $cb $23
    rla                                           ; $4338: $17
    sla e                                         ; $4339: $cb $23
    rla                                           ; $433b: $17
    ld d, $00                                     ; $433c: $16 $00
    ld e, a                                       ; $433e: $5f
    ld a, $02                                     ; $433f: $3e $02
    ldh [$96], a                                  ; $4341: $e0 $96
    ldh [rSVBK], a                                ; $4343: $e0 $70
    ld b, [hl]                                    ; $4345: $46
    bit 5, b                                      ; $4346: $cb $68
    jr z, jr_012_434e                             ; $4348: $28 $04

    ld a, $03                                     ; $434a: $3e $03
    sub c                                         ; $434c: $91
    ld c, a                                       ; $434d: $4f

jr_012_434e:
    bit 6, b                                      ; $434e: $cb $70
    jr z, jr_012_4356                             ; $4350: $28 $04

    ld a, $03                                     ; $4352: $3e $03
    sub e                                         ; $4354: $93
    ld e, a                                       ; $4355: $5f

jr_012_4356:
    ld a, $03                                     ; $4356: $3e $03
    ldh [$96], a                                  ; $4358: $e0 $96
    ldh [rSVBK], a                                ; $435a: $e0 $70
    ld l, [hl]                                    ; $435c: $6e
    ld h, $00                                     ; $435d: $26 $00
    add hl, hl                                    ; $435f: $29
    add hl, hl                                    ; $4360: $29
    add hl, hl                                    ; $4361: $29
    add hl, de                                    ; $4362: $19
    add hl, de                                    ; $4363: $19
    ld de, $d800                                  ; $4364: $11 $00 $d8
    add hl, de                                    ; $4367: $19
    bit 1, c                                      ; $4368: $cb $49
    jr z, jr_012_436d                             ; $436a: $28 $01

    inc hl                                        ; $436c: $23

jr_012_436d:
    ld a, $01                                     ; $436d: $3e $01
    ldh [$96], a                                  ; $436f: $e0 $96
    ldh [rSVBK], a                                ; $4371: $e0 $70
    ld a, [hl]                                    ; $4373: $7e
    bit 0, c                                      ; $4374: $cb $41
    jr nz, jr_012_437a                            ; $4376: $20 $02

    swap a                                        ; $4378: $cb $37

jr_012_437a:
    bit 3, a                                      ; $437a: $cb $5f
    jr nz, jr_012_438b                            ; $437c: $20 $0d

    ld bc, $0000                                  ; $437e: $01 $00 $00
    ld hl, $0000                                  ; $4381: $21 $00 $00
    pop af                                        ; $4384: $f1
    ldh [$96], a                                  ; $4385: $e0 $96
    ldh [rSVBK], a                                ; $4387: $e0 $70
    xor a                                         ; $4389: $af
    ret                                           ; $438a: $c9


jr_012_438b:
    and $07                                       ; $438b: $e6 $07
    ld c, a                                       ; $438d: $4f
    ld a, b                                       ; $438e: $78
    rrca                                          ; $438f: $0f
    rrca                                          ; $4390: $0f
    and $18                                       ; $4391: $e6 $18
    add c                                         ; $4393: $81
    ld hl, $40dd                                  ; $4394: $21 $dd $40
    add l                                         ; $4397: $85
    ld l, a                                       ; $4398: $6f
    ld a, h                                       ; $4399: $7c
    adc $00                                       ; $439a: $ce $00
    ld h, a                                       ; $439c: $67
    ld b, [hl]                                    ; $439d: $46
    ld c, $00                                     ; $439e: $0e $00
    ld hl, $0020                                  ; $43a0: $21 $20 $00
    pop af                                        ; $43a3: $f1
    ldh [$96], a                                  ; $43a4: $e0 $96
    ldh [rSVBK], a                                ; $43a6: $e0 $70
    ld a, $ff                                     ; $43a8: $3e $ff
    ret                                           ; $43aa: $c9


    ld hl, $d404                                  ; $43ab: $21 $04 $d4
    ld a, [hl+]                                   ; $43ae: $2a
    ld d, [hl]                                    ; $43af: $56
    ld e, a                                       ; $43b0: $5f
    ld hl, $d401                                  ; $43b1: $21 $01 $d4
    ld a, [hl+]                                   ; $43b4: $2a
    ld h, [hl]                                    ; $43b5: $66
    ld l, a                                       ; $43b6: $6f
    ld a, [$d443]                                 ; $43b7: $fa $43 $d4
    or a                                          ; $43ba: $b7
    jr z, jr_012_43df                             ; $43bb: $28 $22

    cp $04                                        ; $43bd: $fe $04
    jr nc, jr_012_43df                            ; $43bf: $30 $1e

    ld a, [$d442]                                 ; $43c1: $fa $42 $d4
    ld b, a                                       ; $43c4: $47
    ld a, d                                       ; $43c5: $7a
    sub b                                         ; $43c6: $90
    ld d, a                                       ; $43c7: $57
    ld a, [$d441]                                 ; $43c8: $fa $41 $d4
    ld b, a                                       ; $43cb: $47
    ld a, h                                       ; $43cc: $7c
    sub b                                         ; $43cd: $90
    ld h, a                                       ; $43ce: $67
    sla l                                         ; $43cf: $cb $25
    rl h                                          ; $43d1: $cb $14
    sla l                                         ; $43d3: $cb $25
    rl h                                          ; $43d5: $cb $14
    sla e                                         ; $43d7: $cb $23
    rl d                                          ; $43d9: $cb $12
    sla e                                         ; $43db: $cb $23
    rl d                                          ; $43dd: $cb $12

jr_012_43df:
    call Call_012_40fd                            ; $43df: $cd $fd $40
    add a                                         ; $43e2: $87
    add a                                         ; $43e3: $87
    ld h, $00                                     ; $43e4: $26 $00
    ld l, a                                       ; $43e6: $6f
    ld de, $43ec                                  ; $43e7: $11 $ec $43
    add hl, de                                    ; $43ea: $19
    ret                                           ; $43eb: $c9


    ld b, b                                       ; $43ec: $40
    ld hl, sp-$50                                 ; $43ed: $f8 $b0
    nop                                           ; $43ef: $00
    jr nz, @-$1e                                  ; $43f0: $20 $e0

jr_012_43f2:
    ld h, b                                       ; $43f2: $60
    nop                                           ; $43f3: $00
    ld [$80f0], sp                                ; $43f4: $08 $f0 $80
    nop                                           ; $43f7: $00
    ld h, b                                       ; $43f8: $60
    ld bc, $00a0                                  ; $43f9: $01 $a0 $00
    add b                                         ; $43fc: $80
    cp $f8                                        ; $43fd: $fe $f8
    nop                                           ; $43ff: $00
    db $10                                        ; $4400: $10
    ret nz                                        ; $4401: $c0

    ld b, b                                       ; $4402: $40
    nop                                           ; $4403: $00
    ld b, b                                       ; $4404: $40
    db $fc                                        ; $4405: $fc
    or b                                          ; $4406: $b0
    nop                                           ; $4407: $00
    nop                                           ; $4408: $00
    add b                                         ; $4409: $80

jr_012_440a:
    ld b, b                                       ; $440a: $40
    nop                                           ; $440b: $00
    add b                                         ; $440c: $80
    db $fc                                        ; $440d: $fc
    ld hl, sp+$00                                 ; $440e: $f8 $00

jr_012_4410:
    jr z, jr_012_43f2                             ; $4410: $28 $e0

    and b                                         ; $4412: $a0
    nop                                           ; $4413: $00
    jr c, jr_012_4410                             ; $4414: $38 $fa

    ret nc                                        ; $4416: $d0

    nop                                           ; $4417: $00
    jr nc, jr_012_440a                            ; $4418: $30 $f0

    add b                                         ; $441a: $80
    nop                                           ; $441b: $00
    db $10                                        ; $441c: $10
    ret nc                                        ; $441d: $d0

    ld b, b                                       ; $441e: $40
    nop                                           ; $441f: $00
    ld [$80f0], sp                                ; $4420: $08 $f0 $80
    nop                                           ; $4423: $00
    ld h, b                                       ; $4424: $60
    cp $c0                                        ; $4425: $fe $c0
    nop                                           ; $4427: $00
    ld bc, $e0f0                                  ; $4428: $01 $f0 $e0
    nop                                           ; $442b: $00

    call Call_000_0341                            ; $442c: $cd $41 $03
    ld hl, $67fd                                  ; $442f: $21 $fd $67
    ld de, $0002                                  ; $4432: $11 $02 $00
    call Call_000_056c                            ; $4435: $cd $6c $05
    ld hl, $6805                                  ; $4438: $21 $05 $68
    ld de, $0801                                  ; $443b: $11 $01 $08
    call Call_000_056c                            ; $443e: $cd $6c $05
    call Call_012_45af                            ; $4441: $cd $af $45
    call Call_000_04de                            ; $4444: $cd $de $04
    call Call_012_4fd2                            ; $4447: $cd $d2 $4f
    call Call_000_04de                            ; $444a: $cd $de $04
    call Call_012_45f4                            ; $444d: $cd $f4 $45
    call Call_012_465c                            ; $4450: $cd $5c $46
    call Call_000_04de                            ; $4453: $cd $de $04
    call Call_012_4a0a                            ; $4456: $cd $0a $4a
    call Call_000_04de                            ; $4459: $cd $de $04
    call Call_012_4a81                            ; $445c: $cd $81 $4a
    call Call_000_04de                            ; $445f: $cd $de $04
    call Call_012_4ca6                            ; $4462: $cd $a6 $4c
    call Call_000_04de                            ; $4465: $cd $de $04
    call Call_012_4b8a                            ; $4468: $cd $8a $4b
    call Call_012_4c18                            ; $446b: $cd $18 $4c
    call Call_000_04de                            ; $446e: $cd $de $04
    call Call_012_49a5                            ; $4471: $cd $a5 $49
    call Call_012_4673                            ; $4474: $cd $73 $46
    call Call_000_04de                            ; $4477: $cd $de $04
    call Call_012_4ff4                            ; $447a: $cd $f4 $4f
    call Call_012_46a6                            ; $447d: $cd $a6 $46
    call Call_012_45ea                            ; $4480: $cd $ea $45
    call Call_000_04de                            ; $4483: $cd $de $04
    ld a, $06                                     ; $4486: $3e $06
    ldh [$96], a                                  ; $4488: $e0 $96
    ldh [rSVBK], a                                ; $448a: $e0 $70
    ld a, $f0                                     ; $448c: $3e $f0
    ld [$d44d], a                                 ; $448e: $ea $4d $d4
    ld a, $0f                                     ; $4491: $3e $0f
    ld hl, $449f                                  ; $4493: $21 $9f $44
    call Call_000_23e8                            ; $4496: $cd $e8 $23
    ld a, $01                                     ; $4499: $3e $01
    ld [$d328], a                                 ; $449b: $ea $28 $d3
    ret                                           ; $449e: $c9


    ld a, $06                                     ; $449f: $3e $06
    ldh [$96], a                                  ; $44a1: $e0 $96
    ldh [rSVBK], a                                ; $44a3: $e0 $70
    ld a, [$d358]                                 ; $44a5: $fa $58 $d3
    or a                                          ; $44a8: $b7
    ret nz                                        ; $44a9: $c0

    ld a, [$d455]                                 ; $44aa: $fa $55 $d4
    or a                                          ; $44ad: $b7
    jr nz, jr_012_4506                            ; $44ae: $20 $56

    ld hl, $0201                                  ; $44b0: $21 $01 $02
    ld de, $8820                                  ; $44b3: $11 $20 $88
    ld bc, $0c5c                                  ; $44b6: $01 $5c $0c
    call Call_000_2756                            ; $44b9: $cd $56 $27
    ld hl, $0201                                  ; $44bc: $21 $01 $02
    ld de, $8832                                  ; $44bf: $11 $32 $88
    ld bc, $0d6c                                  ; $44c2: $01 $6c $0d
    call Call_000_2756                            ; $44c5: $cd $56 $27
    ld c, $03                                     ; $44c8: $0e $03
    ld a, [$d454]                                 ; $44ca: $fa $54 $d4
    or a                                          ; $44cd: $b7
    jr z, jr_012_44e4                             ; $44ce: $28 $14

    ldh a, [$8c]                                  ; $44d0: $f0 $8c
    and $0f                                       ; $44d2: $e6 $0f
    cp $06                                        ; $44d4: $fe $06
    jr c, jr_012_44e4                             ; $44d6: $38 $0c

    ld a, [$c835]                                 ; $44d8: $fa $35 $c8
    or a                                          ; $44db: $b7
    jr nz, jr_012_44e2                            ; $44dc: $20 $04

    ld c, $02                                     ; $44de: $0e $02
    jr jr_012_44e4                                ; $44e0: $18 $02

jr_012_44e2:
    ld c, $01                                     ; $44e2: $0e $01

jr_012_44e4:
    bit 0, c                                      ; $44e4: $cb $41
    jr z, jr_012_44f6                             ; $44e6: $28 $0e

    push bc                                       ; $44e8: $c5
    ld hl, $0101                                  ; $44e9: $21 $01 $01
    ld de, $9820                                  ; $44ec: $11 $20 $98
    ld bc, $0860                                  ; $44ef: $01 $60 $08
    call Call_000_2756                            ; $44f2: $cd $56 $27
    pop bc                                        ; $44f5: $c1

jr_012_44f6:
    bit 1, c                                      ; $44f6: $cb $49
    jr z, jr_012_4506                             ; $44f8: $28 $0c

    ld hl, $0101                                  ; $44fa: $21 $01 $01
    ld de, $9832                                  ; $44fd: $11 $32 $98
    ld bc, $0870                                  ; $4500: $01 $70 $08
    call Call_000_2756                            ; $4503: $cd $56 $27

jr_012_4506:
    call Call_012_4f24                            ; $4506: $cd $24 $4f
    call Call_012_50a0                            ; $4509: $cd $a0 $50
    call Call_012_6b04                            ; $450c: $cd $04 $6b
    ldh a, [$8c]                                  ; $450f: $f0 $8c
    and $07                                       ; $4511: $e6 $07
    cp $02                                        ; $4513: $fe $02
    jr c, jr_012_453b                             ; $4515: $38 $24

    ld a, [$d44d]                                 ; $4517: $fa $4d $d4
    cp $f0                                        ; $451a: $fe $f0
    jr z, jr_012_453b                             ; $451c: $28 $1d

    rrca                                          ; $451e: $0f
    rrca                                          ; $451f: $0f
    rrca                                          ; $4520: $0f
    and $1e                                       ; $4521: $e6 $1e
    ld hl, $458f                                  ; $4523: $21 $8f $45
    add l                                         ; $4526: $85
    ld l, a                                       ; $4527: $6f
    ld a, h                                       ; $4528: $7c
    adc $00                                       ; $4529: $ce $00
    ld h, a                                       ; $452b: $67
    ld de, $9886                                  ; $452c: $11 $86 $98
    ld a, [hl+]                                   ; $452f: $2a
    add d                                         ; $4530: $82
    ld d, a                                       ; $4531: $57
    ld a, [hl+]                                   ; $4532: $2a
    add e                                         ; $4533: $83
    ld e, a                                       ; $4534: $5f
    ld bc, $0878                                  ; $4535: $01 $78 $08
    call Call_000_2798                            ; $4538: $cd $98 $27

jr_012_453b:
    ld a, [$d451]                                 ; $453b: $fa $51 $d4
    ld h, a                                       ; $453e: $67
    ld a, [$d44f]                                 ; $453f: $fa $4f $d4
    call Call_012_456e                            ; $4542: $cd $6e $45
    ld a, [$d452]                                 ; $4545: $fa $52 $d4
    ld h, a                                       ; $4548: $67
    ld a, [$d450]                                 ; $4549: $fa $50 $d4
    call Call_012_456e                            ; $454c: $cd $6e $45
    ld a, [$c834]                                 ; $454f: $fa $34 $c8
    cp $08                                        ; $4552: $fe $08
    jr z, jr_012_456d                             ; $4554: $28 $17

    ld a, [$d32a]                                 ; $4556: $fa $2a $d3
    cp $01                                        ; $4559: $fe $01
    jr nz, jr_012_456d                            ; $455b: $20 $10

    ld a, [$d329]                                 ; $455d: $fa $29 $d3
    cp $0d                                        ; $4560: $fe $0d
    jr nc, jr_012_456d                            ; $4562: $30 $09

    ld bc, $083c                                  ; $4564: $01 $3c $08
    ld de, $2a84                                  ; $4567: $11 $84 $2a
    call Call_000_2798                            ; $456a: $cd $98 $27

jr_012_456d:
    ret                                           ; $456d: $c9


Call_012_456e:
    cp $80                                        ; $456e: $fe $80
    ret z                                         ; $4570: $c8

    ld bc, $084a                                  ; $4571: $01 $4a $08
    bit 0, h                                      ; $4574: $cb $44
    jr z, jr_012_4584                             ; $4576: $28 $0c

    ld h, a                                       ; $4578: $67
    ldh a, [$8c]                                  ; $4579: $f0 $8c
    and $0f                                       ; $457b: $e6 $0f
    bit 3, a                                      ; $457d: $cb $5f
    jr z, jr_012_4583                             ; $457f: $28 $02

    ld c, $48                                     ; $4581: $0e $48

jr_012_4583:
    ld a, h                                       ; $4583: $7c

jr_012_4584:
    ld h, a                                       ; $4584: $67
    ld a, $6d                                     ; $4585: $3e $6d
    sub h                                         ; $4587: $94
    ld d, a                                       ; $4588: $57
    ld e, $86                                     ; $4589: $1e $86
    call Call_000_2798                            ; $458b: $cd $98 $27
    ret                                           ; $458e: $c9


    db $00, $00

    ld [bc], a                                    ; $4591: $02
    nop                                           ; $4592: $00

    db $fe, $00

    nop                                           ; $4595: $00
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    cp $01                                        ; $4598: $fe $01
    rst $38                                       ; $459a: $ff
    rst $38                                       ; $459b: $ff
    rst $38                                       ; $459c: $ff
    nop                                           ; $459d: $00
    cp $00                                        ; $459e: $fe $00
    ld [bc], a                                    ; $45a0: $02
    ld bc, $ff01                                  ; $45a1: $01 $01 $ff
    ld bc, $0200                                  ; $45a4: $01 $00 $02
    nop                                           ; $45a7: $00
    nop                                           ; $45a8: $00
    ld bc, $ff00                                  ; $45a9: $01 $00 $ff
    nop                                           ; $45ac: $00
    nop                                           ; $45ad: $00
    nop                                           ; $45ae: $00

Call_012_45af:
    ld a, $06                                     ; $45af: $3e $06
    ldh [$96], a                                  ; $45b1: $e0 $96
    ldh [rSVBK], a                                ; $45b3: $e0 $70
    ld hl, $d000                                  ; $45b5: $21 $00 $d0
    ld c, $20                                     ; $45b8: $0e $20
    call Call_000_03a7                            ; $45ba: $cd $a7 $03
    ld hl, $5200                                  ; $45bd: $21 $00 $52
    ld de, $bc00                                  ; $45c0: $11 $00 $bc
    ld c, $04                                     ; $45c3: $0e $04
    call Call_000_0468                            ; $45c5: $cd $68 $04
    ld hl, $51c0                                  ; $45c8: $21 $c0 $51
    ld de, $9c00                                  ; $45cb: $11 $00 $9c
    ld c, $04                                     ; $45ce: $0e $04
    call Call_000_0468                            ; $45d0: $cd $68 $04
    ld hl, $6020                                  ; $45d3: $21 $20 $60
    ld de, $9100                                  ; $45d6: $11 $00 $91
    ld c, $04                                     ; $45d9: $0e $04
    call Call_000_0468                            ; $45db: $cd $68 $04
    ld hl, $5c60                                  ; $45de: $21 $60 $5c
    ld de, $91c0                                  ; $45e1: $11 $c0 $91
    ld c, $04                                     ; $45e4: $0e $04
    call Call_000_0468                            ; $45e6: $cd $68 $04
    ret                                           ; $45e9: $c9


Call_012_45ea:
    ld a, $80                                     ; $45ea: $3e $80
    ldh [rWY], a                                  ; $45ec: $e0 $4a
    ret                                           ; $45ee: $c9


    ld a, $90                                     ; $45ef: $3e $90
    ldh [rWY], a                                  ; $45f1: $e0 $4a
    ret                                           ; $45f3: $c9


Call_012_45f4:
    call Call_012_4239                            ; $45f4: $cd $39 $42
    ld h, $00                                     ; $45f7: $26 $00
    ld l, a                                       ; $45f9: $6f
    add hl, hl                                    ; $45fa: $29
    add hl, hl                                    ; $45fb: $29
    ld de, $6670                                  ; $45fc: $11 $70 $66
    add hl, de                                    ; $45ff: $19
    push hl                                       ; $4600: $e5
    ld a, [hl+]                                   ; $4601: $2a
    ld h, [hl]                                    ; $4602: $66
    ld l, a                                       ; $4603: $6f
    ld a, [$d4cd]                                 ; $4604: $fa $cd $d4
    cp $0d                                        ; $4607: $fe $0d
    jr nz, jr_012_460e                            ; $4609: $20 $03

    ld hl, $6668                                  ; $460b: $21 $68 $66

jr_012_460e:
    ld de, $0e01                                  ; $460e: $11 $01 $0e
    call Call_000_056c                            ; $4611: $cd $6c $05
    pop hl                                        ; $4614: $e1
    inc hl                                        ; $4615: $23
    inc hl                                        ; $4616: $23
    ld a, [hl+]                                   ; $4617: $2a
    ld h, [hl]                                    ; $4618: $66
    ld l, a                                       ; $4619: $6f
    ld de, $a440                                  ; $461a: $11 $40 $a4
    ld c, $04                                     ; $461d: $0e $04
    call Call_000_0468                            ; $461f: $cd $68 $04
    call Call_012_41b6                            ; $4622: $cd $b6 $41
    ld a, e                                       ; $4625: $7b
    ld bc, $7300                                  ; $4626: $01 $00 $73
    call Call_012_463f                            ; $4629: $cd $3f $46
    ld a, d                                       ; $462c: $7a
    ld bc, $7308                                  ; $462d: $01 $08 $73
    call Call_012_463f                            ; $4630: $cd $3f $46
    ld hl, $d1c0                                  ; $4633: $21 $c0 $d1
    ld de, $8fc0                                  ; $4636: $11 $c0 $8f
    ld c, $04                                     ; $4639: $0e $04
    call Call_000_0468                            ; $463b: $cd $68 $04
    ret                                           ; $463e: $c9


Call_012_463f:
    push de                                       ; $463f: $d5
    cp $64                                        ; $4640: $fe $64
    jr z, jr_012_4651                             ; $4642: $28 $0d

    ld h, $00                                     ; $4644: $26 $00
    ld l, a                                       ; $4646: $6f
    ld a, $02                                     ; $4647: $3e $02
    ld de, $d000                                  ; $4649: $11 $00 $d0
    call Call_000_28fa                            ; $464c: $cd $fa $28
    jr jr_012_465a                                ; $464f: $18 $09

jr_012_4651:
    ld hl, $683d                                  ; $4651: $21 $3d $68
    ld de, $d000                                  ; $4654: $11 $00 $d0
    call Call_000_2962                            ; $4657: $cd $62 $29

jr_012_465a:
    pop de                                        ; $465a: $d1
    ret                                           ; $465b: $c9


Call_012_465c:
    ld a, [$d329]                                 ; $465c: $fa $29 $d3
    ld h, $00                                     ; $465f: $26 $00
    ld l, a                                       ; $4661: $6f
    add hl, hl                                    ; $4662: $29
    ld de, $5c30                                  ; $4663: $11 $30 $5c
    add hl, de                                    ; $4666: $19
    ld a, [hl+]                                   ; $4667: $2a
    ld h, [hl]                                    ; $4668: $66
    ld l, a                                       ; $4669: $6f
    ld de, $a400                                  ; $466a: $11 $00 $a4
    ld c, $04                                     ; $466d: $0e $04
    call Call_000_0468                            ; $466f: $cd $68 $04
    ret                                           ; $4672: $c9


Call_012_4673:
    ld a, $06                                     ; $4673: $3e $06
    ldh [$96], a                                  ; $4675: $e0 $96
    ldh [rSVBK], a                                ; $4677: $e0 $70
    ld hl, $67dd                                  ; $4679: $21 $dd $67
    ld de, $0701                                  ; $467c: $11 $01 $07
    call Call_000_056c                            ; $467f: $cd $6c $05
    ld hl, $66b8                                  ; $4682: $21 $b8 $66
    ld de, $d000                                  ; $4685: $11 $00 $d0
    ld bc, $1e03                                  ; $4688: $01 $03 $1e
    call Call_000_2962                            ; $468b: $cd $62 $29
    ld hl, $6782                                  ; $468e: $21 $82 $67
    ld de, $d000                                  ; $4691: $11 $00 $d0
    ld bc, $500e                                  ; $4694: $01 $0e $50
    call Call_000_2962                            ; $4697: $cd $62 $29
    ld hl, $d060                                  ; $469a: $21 $60 $d0
    ld de, $8e60                                  ; $469d: $11 $60 $8e
    ld c, $16                                     ; $46a0: $0e $16
    call Call_000_0468                            ; $46a2: $cd $68 $04
    ret                                           ; $46a5: $c9


Call_012_46a6:
    ld a, $06                                     ; $46a6: $3e $06
    ldh [$96], a                                  ; $46a8: $e0 $96
    ldh [rSVBK], a                                ; $46aa: $e0 $70
    ld hl, $d000                                  ; $46ac: $21 $00 $d0
    ld c, $06                                     ; $46af: $0e $06
    call Call_000_03a7                            ; $46b1: $cd $a7 $03
    ld a, [$d329]                                 ; $46b4: $fa $29 $d3
    cp $0d                                        ; $46b7: $fe $0d
    jr nz, jr_012_46dd                            ; $46b9: $20 $22

    ld a, [$d32b]                                 ; $46bb: $fa $2b $d3
    or a                                          ; $46be: $b7
    jr nz, jr_012_46c9                            ; $46bf: $20 $08

    ld hl, $67ed                                  ; $46c1: $21 $ed $67
    ld de, $6979                                  ; $46c4: $11 $79 $69
    jr jr_012_4709                                ; $46c7: $18 $40

jr_012_46c9:
    cp $01                                        ; $46c9: $fe $01
    jr nz, jr_012_46d5                            ; $46cb: $20 $08

    ld hl, $67dd                                  ; $46cd: $21 $dd $67
    ld de, $69b5                                  ; $46d0: $11 $b5 $69
    jr jr_012_4709                                ; $46d3: $18 $34

jr_012_46d5:
    ld hl, $67e5                                  ; $46d5: $21 $e5 $67
    ld de, $69a7                                  ; $46d8: $11 $a7 $69
    jr jr_012_4709                                ; $46db: $18 $2c

jr_012_46dd:
    ld a, [$d32a]                                 ; $46dd: $fa $2a $d3
    or a                                          ; $46e0: $b7
    jr nz, jr_012_46eb                            ; $46e1: $20 $08

    ld hl, $67dd                                  ; $46e3: $21 $dd $67
    ld de, $695d                                  ; $46e6: $11 $5d $69
    jr jr_012_4709                                ; $46e9: $18 $1e

jr_012_46eb:
    cp $01                                        ; $46eb: $fe $01
    jr nz, jr_012_46f7                            ; $46ed: $20 $08

    ld hl, $67e5                                  ; $46ef: $21 $e5 $67
    ld de, $696b                                  ; $46f2: $11 $6b $69
    jr jr_012_4709                                ; $46f5: $18 $12

jr_012_46f7:
    cp $02                                        ; $46f7: $fe $02
    jr nz, jr_012_4703                            ; $46f9: $20 $08

    ld hl, $67ed                                  ; $46fb: $21 $ed $67
    ld de, $6943                                  ; $46fe: $11 $43 $69
    jr jr_012_4709                                ; $4701: $18 $06

jr_012_4703:
    ld hl, $67f5                                  ; $4703: $21 $f5 $67
    ld de, $6943                                  ; $4706: $11 $43 $69

jr_012_4709:
    push de                                       ; $4709: $d5
    ld de, $0701                                  ; $470a: $11 $01 $07
    call Call_000_056c                            ; $470d: $cd $6c $05
    pop hl                                        ; $4710: $e1
    ld de, $d000                                  ; $4711: $11 $00 $d0
    ld bc, $1100                                  ; $4714: $01 $00 $11
    call Call_000_2962                            ; $4717: $cd $62 $29
    ld a, [$d329]                                 ; $471a: $fa $29 $d3
    and $0f                                       ; $471d: $e6 $0f
    jr nz, jr_012_473b                            ; $471f: $20 $1a

    ld a, $31                                     ; $4721: $3e $31
    ld de, $d000                                  ; $4723: $11 $00 $d0
    ld bc, $0100                                  ; $4726: $01 $00 $01
    call Call_000_2917                            ; $4729: $cd $17 $29
    ld hl, $6997                                  ; $472c: $21 $97 $69
    ld de, $d000                                  ; $472f: $11 $00 $d0
    ld bc, $0700                                  ; $4732: $01 $00 $07
    call Call_000_2962                            ; $4735: $cd $62 $29
    jp Jump_012_48bb                              ; $4738: $c3 $bb $48


jr_012_473b:
    cp $01                                        ; $473b: $fe $01
    jr nz, jr_012_4759                            ; $473d: $20 $1a

    ld a, $33                                     ; $473f: $3e $33
    ld de, $d000                                  ; $4741: $11 $00 $d0
    ld bc, $0100                                  ; $4744: $01 $00 $01
    call Call_000_2917                            ; $4747: $cd $17 $29
    ld hl, $6997                                  ; $474a: $21 $97 $69
    ld de, $d000                                  ; $474d: $11 $00 $d0
    ld bc, $0700                                  ; $4750: $01 $00 $07
    call Call_000_2962                            ; $4753: $cd $62 $29
    jp Jump_012_48bb                              ; $4756: $c3 $bb $48


jr_012_4759:
    cp $02                                        ; $4759: $fe $02
    jr nz, jr_012_4777                            ; $475b: $20 $1a

    ld a, $34                                     ; $475d: $3e $34
    ld de, $d000                                  ; $475f: $11 $00 $d0
    ld bc, $0100                                  ; $4762: $01 $00 $01
    call Call_000_2917                            ; $4765: $cd $17 $29
    ld hl, $6997                                  ; $4768: $21 $97 $69
    ld de, $d000                                  ; $476b: $11 $00 $d0
    ld bc, $0700                                  ; $476e: $01 $00 $07
    call Call_000_2962                            ; $4771: $cd $62 $29
    jp Jump_012_48bb                              ; $4774: $c3 $bb $48


jr_012_4777:
    cp $03                                        ; $4777: $fe $03
    jr nz, jr_012_4795                            ; $4779: $20 $1a

    ld a, $32                                     ; $477b: $3e $32
    ld de, $d000                                  ; $477d: $11 $00 $d0
    ld bc, $0100                                  ; $4780: $01 $00 $01
    call Call_000_2917                            ; $4783: $cd $17 $29
    ld hl, $6951                                  ; $4786: $21 $51 $69
    ld de, $d000                                  ; $4789: $11 $00 $d0
    ld bc, $0700                                  ; $478c: $01 $00 $07
    call Call_000_2962                            ; $478f: $cd $62 $29
    jp Jump_012_48bb                              ; $4792: $c3 $bb $48


jr_012_4795:
    cp $04                                        ; $4795: $fe $04
    jr nz, jr_012_47b3                            ; $4797: $20 $1a

    ld a, $33                                     ; $4799: $3e $33
    ld de, $d000                                  ; $479b: $11 $00 $d0
    ld bc, $0100                                  ; $479e: $01 $00 $01
    call Call_000_2917                            ; $47a1: $cd $17 $29
    ld hl, $6951                                  ; $47a4: $21 $51 $69
    ld de, $d000                                  ; $47a7: $11 $00 $d0
    ld bc, $0700                                  ; $47aa: $01 $00 $07
    call Call_000_2962                            ; $47ad: $cd $62 $29
    jp Jump_012_48bb                              ; $47b0: $c3 $bb $48


jr_012_47b3:
    cp $05                                        ; $47b3: $fe $05
    jr nz, jr_012_47d1                            ; $47b5: $20 $1a

    ld a, $34                                     ; $47b7: $3e $34
    ld de, $d000                                  ; $47b9: $11 $00 $d0
    ld bc, $0100                                  ; $47bc: $01 $00 $01
    call Call_000_2917                            ; $47bf: $cd $17 $29
    ld hl, $6951                                  ; $47c2: $21 $51 $69
    ld de, $d000                                  ; $47c5: $11 $00 $d0
    ld bc, $0700                                  ; $47c8: $01 $00 $07
    call Call_000_2962                            ; $47cb: $cd $62 $29
    jp Jump_012_48bb                              ; $47ce: $c3 $bb $48


jr_012_47d1:
    cp $06                                        ; $47d1: $fe $06
    jr nz, jr_012_47ef                            ; $47d3: $20 $1a

    ld a, $35                                     ; $47d5: $3e $35
    ld de, $d000                                  ; $47d7: $11 $00 $d0
    ld bc, $0100                                  ; $47da: $01 $00 $01
    call Call_000_2917                            ; $47dd: $cd $17 $29
    ld hl, $6951                                  ; $47e0: $21 $51 $69
    ld de, $d000                                  ; $47e3: $11 $00 $d0
    ld bc, $0700                                  ; $47e6: $01 $00 $07
    call Call_000_2962                            ; $47e9: $cd $62 $29
    jp Jump_012_48bb                              ; $47ec: $c3 $bb $48


jr_012_47ef:
    cp $07                                        ; $47ef: $fe $07
    jr nz, jr_012_480d                            ; $47f1: $20 $1a

    ld a, $36                                     ; $47f3: $3e $36
    ld de, $d000                                  ; $47f5: $11 $00 $d0
    ld bc, $0100                                  ; $47f8: $01 $00 $01
    call Call_000_2917                            ; $47fb: $cd $17 $29
    ld hl, $6951                                  ; $47fe: $21 $51 $69
    ld de, $d000                                  ; $4801: $11 $00 $d0
    ld bc, $0700                                  ; $4804: $01 $00 $07
    call Call_000_2962                            ; $4807: $cd $62 $29
    jp Jump_012_48bb                              ; $480a: $c3 $bb $48


jr_012_480d:
    cp $08                                        ; $480d: $fe $08
    jr nz, jr_012_482b                            ; $480f: $20 $1a

    ld a, $37                                     ; $4811: $3e $37
    ld de, $d000                                  ; $4813: $11 $00 $d0
    ld bc, $0100                                  ; $4816: $01 $00 $01
    call Call_000_2917                            ; $4819: $cd $17 $29
    ld hl, $6951                                  ; $481c: $21 $51 $69
    ld de, $d000                                  ; $481f: $11 $00 $d0
    ld bc, $0700                                  ; $4822: $01 $00 $07
    call Call_000_2962                            ; $4825: $cd $62 $29
    jp Jump_012_48bb                              ; $4828: $c3 $bb $48


jr_012_482b:
    cp $09                                        ; $482b: $fe $09
    jr nz, jr_012_4848                            ; $482d: $20 $19

    ld a, $38                                     ; $482f: $3e $38
    ld de, $d000                                  ; $4831: $11 $00 $d0
    ld bc, $0100                                  ; $4834: $01 $00 $01
    call Call_000_2917                            ; $4837: $cd $17 $29
    ld hl, $6951                                  ; $483a: $21 $51 $69
    ld de, $d000                                  ; $483d: $11 $00 $d0
    ld bc, $0700                                  ; $4840: $01 $00 $07
    call Call_000_2962                            ; $4843: $cd $62 $29
    jr jr_012_48bb                                ; $4846: $18 $73

jr_012_4848:
    cp $0a                                        ; $4848: $fe $0a
    jr nz, jr_012_4865                            ; $484a: $20 $19

    ld a, $39                                     ; $484c: $3e $39
    ld de, $d000                                  ; $484e: $11 $00 $d0
    ld bc, $0100                                  ; $4851: $01 $00 $01
    call Call_000_2917                            ; $4854: $cd $17 $29
    ld hl, $6951                                  ; $4857: $21 $51 $69
    ld de, $d000                                  ; $485a: $11 $00 $d0
    ld bc, $0700                                  ; $485d: $01 $00 $07
    call Call_000_2962                            ; $4860: $cd $62 $29
    jr jr_012_48bb                                ; $4863: $18 $56

jr_012_4865:
    cp $0b                                        ; $4865: $fe $0b
    jr nz, jr_012_4883                            ; $4867: $20 $1a

    ld hl, $696b                                  ; $4869: $21 $6b $69
    ld de, $d000                                  ; $486c: $11 $00 $d0
    ld bc, $0100                                  ; $486f: $01 $00 $01
    call Call_000_2962                            ; $4872: $cd $62 $29
    ld hl, $6997                                  ; $4875: $21 $97 $69
    ld de, $d000                                  ; $4878: $11 $00 $d0
    ld bc, $0700                                  ; $487b: $01 $00 $07
    call Call_000_2962                            ; $487e: $cd $62 $29
    jr jr_012_48bb                                ; $4881: $18 $38

jr_012_4883:
    cp $0c                                        ; $4883: $fe $0c
    jr nz, jr_012_48a1                            ; $4885: $20 $1a

    ld hl, $6979                                  ; $4887: $21 $79 $69
    ld de, $d000                                  ; $488a: $11 $00 $d0
    ld bc, $0100                                  ; $488d: $01 $00 $01
    call Call_000_2962                            ; $4890: $cd $62 $29
    ld hl, $6997                                  ; $4893: $21 $97 $69
    ld de, $d000                                  ; $4896: $11 $00 $d0
    ld bc, $0700                                  ; $4899: $01 $00 $07
    call Call_000_2962                            ; $489c: $cd $62 $29
    jr jr_012_48bb                                ; $489f: $18 $1a

jr_012_48a1:
    ld hl, $696b                                  ; $48a1: $21 $6b $69
    ld de, $d000                                  ; $48a4: $11 $00 $d0
    ld bc, $0100                                  ; $48a7: $01 $00 $01
    call Call_000_2962                            ; $48aa: $cd $62 $29
    ld hl, $6987                                  ; $48ad: $21 $87 $69
    ld de, $d000                                  ; $48b0: $11 $00 $d0
    ld bc, $0700                                  ; $48b3: $01 $00 $07
    call Call_000_2962                            ; $48b6: $cd $62 $29
    jr jr_012_491b                                ; $48b9: $18 $60

Jump_012_48bb:
jr_012_48bb:
    rst $18                                       ; $48bb: $df

    db $02, $10

    sra h                                         ; $48be: $cb $2c
    rr l                                          ; $48c0: $cb $1d
    sra h                                         ; $48c2: $cb $2c
    rr l                                          ; $48c4: $cb $1d
    sra h                                         ; $48c6: $cb $2c
    rr l                                          ; $48c8: $cb $1d
    sra h                                         ; $48ca: $cb $2c
    rr l                                          ; $48cc: $cb $1d
    sra h                                         ; $48ce: $cb $2c
    rr l                                          ; $48d0: $cb $1d
    ld a, $03                                     ; $48d2: $3e $03
    ld de, $d000                                  ; $48d4: $11 $00 $d0
    ld bc, $0108                                  ; $48d7: $01 $08 $01
    call Call_000_28fa                            ; $48da: $cd $fa $28
    ld hl, $6859                                  ; $48dd: $21 $59 $68
    ld de, $d000                                  ; $48e0: $11 $00 $d0
    ld bc, $1309                                  ; $48e3: $01 $09 $13
    call Call_000_2962                            ; $48e6: $cd $62 $29
    ld a, [$d321]                                 ; $48e9: $fa $21 $d3
    and $07                                       ; $48ec: $e6 $07
    add a                                         ; $48ee: $87
    ld hl, $66a0                                  ; $48ef: $21 $a0 $66
    add l                                         ; $48f2: $85
    ld l, a                                       ; $48f3: $6f
    ld a, h                                       ; $48f4: $7c
    adc $00                                       ; $48f5: $ce $00
    ld h, a                                       ; $48f7: $67
    ld a, [hl+]                                   ; $48f8: $2a
    ld h, [hl]                                    ; $48f9: $66
    ld l, a                                       ; $48fa: $6f

jr_012_48fb:
    ld de, $d000                                  ; $48fb: $11 $00 $d0
    ld bc, $500e                                  ; $48fe: $01 $0e $50
    call Call_000_2962                            ; $4901: $cd $62 $29
    ld hl, $d120                                  ; $4904: $21 $20 $d1
    ld de, $8f20                                  ; $4907: $11 $20 $8f
    ld c, $08                                     ; $490a: $0e $08
    call Call_000_0468                            ; $490c: $cd $68 $04
    ld hl, $d000                                  ; $490f: $21 $00 $d0
    ld de, $8e00                                  ; $4912: $11 $00 $8e
    ld c, $08                                     ; $4915: $0e $08
    call Call_000_0468                            ; $4917: $cd $68 $04
    ret                                           ; $491a: $c9


jr_012_491b:
    rst $18                                       ; $491b: $df

    db $02, $10

    ld d, h                                       ; $491e: $54
    ld e, l                                       ; $491f: $5d
    add hl, hl                                    ; $4920: $29
    add hl, de                                    ; $4921: $19
    ld de, $0008                                  ; $4922: $11 $08 $00
    add hl, de                                    ; $4925: $19
    sra h                                         ; $4926: $cb $2c
    rr l                                          ; $4928: $cb $1d
    sra h                                         ; $492a: $cb $2c
    rr l                                          ; $492c: $cb $1d
    sra h                                         ; $492e: $cb $2c
    rr l                                          ; $4930: $cb $1d
    sra h                                         ; $4932: $cb $2c
    rr l                                          ; $4934: $cb $1d
    sra h                                         ; $4936: $cb $2c
    rr l                                          ; $4938: $cb $1d
    ld a, $03                                     ; $493a: $3e $03
    ld de, $d000                                  ; $493c: $11 $00 $d0
    ld bc, $0008                                  ; $493f: $01 $08 $00
    call Call_000_28fa                            ; $4942: $cd $fa $28
    ld hl, $6864                                  ; $4945: $21 $64 $68
    ld de, $d000                                  ; $4948: $11 $00 $d0
    ld bc, $1208                                  ; $494b: $01 $08 $12
    call Call_000_2962                            ; $494e: $cd $62 $29
    ld hl, $67d0                                  ; $4951: $21 $d0 $67
    jr jr_012_48fb                                ; $4954: $18 $a5

    ld a, $06                                     ; $4956: $3e $06
    ldh [$96], a                                  ; $4958: $e0 $96
    ldh [rSVBK], a                                ; $495a: $e0 $70
    ld hl, $d000                                  ; $495c: $21 $00 $d0
    ld de, $8e00                                  ; $495f: $11 $00 $8e
    ld c, $20                                     ; $4962: $0e $20
    call Call_000_0468                            ; $4964: $cd $68 $04
    ret                                           ; $4967: $c9


    push af                                       ; $4968: $f5
    push hl                                       ; $4969: $e5
    ld a, [$d329]                                 ; $496a: $fa $29 $d3
    cp $0d                                        ; $496d: $fe $0d
    jr nz, jr_012_498a                            ; $496f: $20 $19

    ld hl, $c000                                  ; $4971: $21 $00 $c0
    ld a, $a0                                     ; $4974: $3e $a0
    ld [hl+], a                                   ; $4976: $22
    inc hl                                        ; $4977: $23
    inc hl                                        ; $4978: $23
    inc hl                                        ; $4979: $23
    ld [hl+], a                                   ; $497a: $22
    inc hl                                        ; $497b: $23
    inc hl                                        ; $497c: $23
    inc hl                                        ; $497d: $23
    ld [hl+], a                                   ; $497e: $22
    inc hl                                        ; $497f: $23
    inc hl                                        ; $4980: $23
    inc hl                                        ; $4981: $23
    ld [hl+], a                                   ; $4982: $22
    inc hl                                        ; $4983: $23
    inc hl                                        ; $4984: $23
    inc hl                                        ; $4985: $23
    ld [hl+], a                                   ; $4986: $22
    pop hl                                        ; $4987: $e1
    pop af                                        ; $4988: $f1
    ret                                           ; $4989: $c9


jr_012_498a:
    ld hl, $c000                                  ; $498a: $21 $00 $c0
    ld a, $10                                     ; $498d: $3e $10
    ld [hl+], a                                   ; $498f: $22
    inc hl                                        ; $4990: $23
    inc hl                                        ; $4991: $23
    inc hl                                        ; $4992: $23
    ld [hl+], a                                   ; $4993: $22
    inc hl                                        ; $4994: $23
    inc hl                                        ; $4995: $23
    inc hl                                        ; $4996: $23
    ld a, $20                                     ; $4997: $3e $20
    ld [hl+], a                                   ; $4999: $22
    inc hl                                        ; $499a: $23
    inc hl                                        ; $499b: $23
    inc hl                                        ; $499c: $23
    ld [hl+], a                                   ; $499d: $22
    inc hl                                        ; $499e: $23
    inc hl                                        ; $499f: $23
    inc hl                                        ; $49a0: $23
    ld [hl+], a                                   ; $49a1: $22
    pop hl                                        ; $49a2: $e1
    pop af                                        ; $49a3: $f1
    ret                                           ; $49a4: $c9


Call_012_49a5:
    ld a, $06                                     ; $49a5: $3e $06
    ldh [$96], a                                  ; $49a7: $e0 $96
    ldh [rSVBK], a                                ; $49a9: $e0 $70
    ld hl, $0201                                  ; $49ab: $21 $01 $02
    ld de, $8c00                                  ; $49ae: $11 $00 $8c
    ld bc, $0962                                  ; $49b1: $01 $62 $09
    call Call_000_2756                            ; $49b4: $cd $56 $27
    ld hl, $0301                                  ; $49b7: $21 $01 $03
    ld de, $8810                                  ; $49ba: $11 $10 $88
    ld bc, $0866                                  ; $49bd: $01 $66 $08
    call Call_000_2756                            ; $49c0: $cd $56 $27
    ld a, [$d325]                                 ; $49c3: $fa $25 $d3
    cp $06                                        ; $49c6: $fe $06
    jr nc, jr_012_49d6                            ; $49c8: $30 $0c

    ld hl, $0302                                  ; $49ca: $21 $02 $03
    ld de, $0000                                  ; $49cd: $11 $00 $00
    ld bc, $0850                                  ; $49d0: $01 $50 $08
    call Call_000_2756                            ; $49d3: $cd $56 $27

jr_012_49d6:
    ld hl, $0301                                  ; $49d6: $21 $01 $03
    ld de, $0070                                  ; $49d9: $11 $70 $00
    ld bc, $0872                                  ; $49dc: $01 $72 $08
    call Call_000_2756                            ; $49df: $cd $56 $27
    ld de, $0484                                  ; $49e2: $11 $84 $04
    ld bc, $0840                                  ; $49e5: $01 $40 $08
    call Call_000_2798                            ; $49e8: $cd $98 $27
    ld de, $0c84                                  ; $49eb: $11 $84 $0c
    ld bc, $0842                                  ; $49ee: $01 $42 $08
    call Call_000_2798                            ; $49f1: $cd $98 $27
    ld de, $9484                                  ; $49f4: $11 $84 $94
    ld bc, $0e44                                  ; $49f7: $01 $44 $0e
    call Call_000_2798                            ; $49fa: $cd $98 $27
    ld de, $9c84                                  ; $49fd: $11 $84 $9c
    ld bc, $0e46                                  ; $4a00: $01 $46 $0e
    call Call_000_2798                            ; $4a03: $cd $98 $27
    call Call_000_269f                            ; $4a06: $cd $9f $26
    ret                                           ; $4a09: $c9


Call_012_4a0a:
    ld a, $06                                     ; $4a0a: $3e $06
    ldh [$96], a                                  ; $4a0c: $e0 $96
    ldh [rSVBK], a                                ; $4a0e: $e0 $70
    ld a, [$d325]                                 ; $4a10: $fa $25 $d3
    cp $06                                        ; $4a13: $fe $06
    ret nc                                        ; $4a15: $d0

    ld hl, $d200                                  ; $4a16: $21 $00 $d2
    ld c, $0c                                     ; $4a19: $0e $0c
    call Call_000_03a7                            ; $4a1b: $cd $a7 $03
    ld a, [$c837]                                 ; $4a1e: $fa $37 $c8
    ld h, $00                                     ; $4a21: $26 $00
    ld l, a                                       ; $4a23: $6f
    ld a, $02                                     ; $4a24: $3e $02
    ld de, $d200                                  ; $4a26: $11 $00 $d2
    ld bc, $0600                                  ; $4a29: $01 $00 $06
    call Call_000_28fa                            ; $4a2c: $cd $fa $28
    ld hl, $687a                                  ; $4a2f: $21 $7a $68
    ld de, $d200                                  ; $4a32: $11 $00 $d2
    ld bc, $1201                                  ; $4a35: $01 $01 $12
    call Call_000_2962                            ; $4a38: $cd $62 $29
    ld hl, $d323                                  ; $4a3b: $21 $23 $d3
    ld a, [hl+]                                   ; $4a3e: $2a
    ld h, [hl]                                    ; $4a3f: $66
    ld l, a                                       ; $4a40: $6f
    ld a, $03                                     ; $4a41: $3e $03
    ld de, $d200                                  ; $4a43: $11 $00 $d2
    ld bc, $0008                                  ; $4a46: $01 $08 $00
    call Call_000_28fa                            ; $4a49: $cd $fa $28
    ld hl, $6859                                  ; $4a4c: $21 $59 $68
    ld de, $d200                                  ; $4a4f: $11 $00 $d2
    ld bc, $1209                                  ; $4a52: $01 $09 $12
    call Call_000_2962                            ; $4a55: $cd $62 $29
    ld hl, $6885                                  ; $4a58: $21 $85 $68
    ld de, $d200                                  ; $4a5b: $11 $00 $d2
    ld bc, $1901                                  ; $4a5e: $01 $01 $19
    call Call_000_2962                            ; $4a61: $cd $62 $29
    ld a, [$d325]                                 ; $4a64: $fa $25 $d3
    ld h, $00                                     ; $4a67: $26 $00
    ld l, a                                       ; $4a69: $6f
    ld a, $01                                     ; $4a6a: $3e $01
    ld de, $d200                                  ; $4a6c: $11 $00 $d2
    ld bc, $2900                                  ; $4a6f: $01 $00 $29
    call Call_000_28fa                            ; $4a72: $cd $fa $28
    ld hl, $d200                                  ; $4a75: $21 $00 $d2
    ld de, $a500                                  ; $4a78: $11 $00 $a5
    ld c, $0c                                     ; $4a7b: $0e $0c
    call Call_000_0468                            ; $4a7d: $cd $68 $04
    ret                                           ; $4a80: $c9


Call_012_4a81:
    ld a, $06                                     ; $4a81: $3e $06
    ldh [$96], a                                  ; $4a83: $e0 $96
    ldh [rSVBK], a                                ; $4a85: $e0 $70
    ld hl, $d200                                  ; $4a87: $21 $00 $d2
    ld c, $06                                     ; $4a8a: $0e $06
    call Call_000_03a7                            ; $4a8c: $cd $a7 $03
    ld a, [$c815]                                 ; $4a8f: $fa $15 $c8
    and $1f                                       ; $4a92: $e6 $1f
    push af                                       ; $4a94: $f5
    ld de, $d200                                  ; $4a95: $11 $00 $d2
    call Call_012_4b60                            ; $4a98: $cd $60 $4b
    ld hl, $68ca                                  ; $4a9b: $21 $ca $68
    ld de, $d200                                  ; $4a9e: $11 $00 $d2
    ld bc, $0801                                  ; $4aa1: $01 $01 $08
    call Call_000_2962                            ; $4aa4: $cd $62 $29
    ld hl, $d200                                  ; $4aa7: $21 $00 $d2
    ld de, $a660                                  ; $4aaa: $11 $60 $a6
    ld c, $06                                     ; $4aad: $0e $06
    call Call_000_0468                            ; $4aaf: $cd $68 $04
    pop af                                        ; $4ab2: $f1
    jr nz, jr_012_4aba                            ; $4ab3: $20 $05

    ld hl, $56f0                                  ; $4ab5: $21 $f0 $56
    jr jr_012_4ae3                                ; $4ab8: $18 $29

jr_012_4aba:
    ld a, [$d443]                                 ; $4aba: $fa $43 $d4
    cp $04                                        ; $4abd: $fe $04
    jr nz, jr_012_4ad3                            ; $4abf: $20 $12

    ld hl, $d418                                  ; $4ac1: $21 $18 $d4
    ld a, [hl+]                                   ; $4ac4: $2a
    ld h, [hl]                                    ; $4ac5: $66
    ld l, a                                       ; $4ac6: $6f
    ld de, $0080                                  ; $4ac7: $11 $80 $00
    add hl, de                                    ; $4aca: $19
    ld a, [$c816]                                 ; $4acb: $fa $16 $c8
    sub h                                         ; $4ace: $94
    add $c8                                       ; $4acf: $c6 $c8
    jr jr_012_4ad8                                ; $4ad1: $18 $05

jr_012_4ad3:
    ld a, [$c816]                                 ; $4ad3: $fa $16 $c8
    add $08                                       ; $4ad6: $c6 $08

jr_012_4ad8:
    and $f0                                       ; $4ad8: $e6 $f0
    ld h, $00                                     ; $4ada: $26 $00
    ld l, a                                       ; $4adc: $6f
    add hl, hl                                    ; $4add: $29
    add hl, hl                                    ; $4ade: $29
    ld de, $52f0                                  ; $4adf: $11 $f0 $52
    add hl, de                                    ; $4ae2: $19

jr_012_4ae3:
    ld de, $a620                                  ; $4ae3: $11 $20 $a6
    ld c, $04                                     ; $4ae6: $0e $04
    call Call_000_0468                            ; $4ae8: $cd $68 $04
    xor a                                         ; $4aeb: $af
    ld [$d326], a                                 ; $4aec: $ea $26 $d3
    ld [$d327], a                                 ; $4aef: $ea $27 $d3
    ld [$d328], a                                 ; $4af2: $ea $28 $d3
    ret                                           ; $4af5: $c9


    push af                                       ; $4af6: $f5
    ld hl, $d200                                  ; $4af7: $21 $00 $d2
    ld c, $02                                     ; $4afa: $0e $02
    call Call_000_03a7                            ; $4afc: $cd $a7 $03
    pop af                                        ; $4aff: $f1
    and $0f                                       ; $4b00: $e6 $0f
    add $30                                       ; $4b02: $c6 $30
    ld de, $d200                                  ; $4b04: $11 $00 $d2
    ld bc, $0000                                  ; $4b07: $01 $00 $00
    call Call_000_2917                            ; $4b0a: $cd $17 $29
    ld hl, $d200                                  ; $4b0d: $21 $00 $d2
    ld de, $a3c0                                  ; $4b10: $11 $c0 $a3
    ld c, $02                                     ; $4b13: $0e $02
    call Call_000_0468                            ; $4b15: $cd $68 $04
    ret                                           ; $4b18: $c9


    ld a, $01                                     ; $4b19: $3e $01
    ld [$d454], a                                 ; $4b1b: $ea $54 $d4
    ret                                           ; $4b1e: $c9


    xor a                                         ; $4b1f: $af
    ld [$d454], a                                 ; $4b20: $ea $54 $d4
    ret                                           ; $4b23: $c9


    xor a                                         ; $4b24: $af
    ld [$d455], a                                 ; $4b25: $ea $55 $d4
    ret                                           ; $4b28: $c9


    ld a, $01                                     ; $4b29: $3e $01
    ld [$d455], a                                 ; $4b2b: $ea $55 $d4
    ret                                           ; $4b2e: $c9


Call_012_4b2f:
    cp $0a                                        ; $4b2f: $fe $0a
    jr nc, jr_012_4b3c                            ; $4b31: $30 $09

    add $30                                       ; $4b33: $c6 $30
    ld bc, $0008                                  ; $4b35: $01 $08 $00
    call Call_000_2917                            ; $4b38: $cd $17 $29
    ret                                           ; $4b3b: $c9


jr_012_4b3c:
    cp $14                                        ; $4b3c: $fe $14
    jr nc, jr_012_4b44                            ; $4b3e: $30 $04

    sub $0a                                       ; $4b40: $d6 $0a
    jr jr_012_4b46                                ; $4b42: $18 $02

jr_012_4b44:
    ld a, $09                                     ; $4b44: $3e $09

jr_012_4b46:
    push de                                       ; $4b46: $d5
    ld h, $00                                     ; $4b47: $26 $00
    ld l, a                                       ; $4b49: $6f
    add hl, hl                                    ; $4b4a: $29
    add hl, hl                                    ; $4b4b: $29
    add hl, hl                                    ; $4b4c: $29
    add hl, hl                                    ; $4b4d: $29
    ld de, $5240                                  ; $4b4e: $11 $40 $52
    add hl, de                                    ; $4b51: $19
    pop de                                        ; $4b52: $d1
    ld a, $10                                     ; $4b53: $3e $10
    add e                                         ; $4b55: $83
    ld e, a                                       ; $4b56: $5f
    jr nc, jr_012_4b5a                            ; $4b57: $30 $01

    inc d                                         ; $4b59: $14

jr_012_4b5a:
    ld c, $01                                     ; $4b5a: $0e $01
    call Call_000_03eb                            ; $4b5c: $cd $eb $03
    ret                                           ; $4b5f: $c9


Call_012_4b60:
    cp $0a                                        ; $4b60: $fe $0a
    jr nc, jr_012_4b6d                            ; $4b62: $30 $09

    add $30                                       ; $4b64: $c6 $30
    ld bc, $0000                                  ; $4b66: $01 $00 $00
    call Call_000_2917                            ; $4b69: $cd $17 $29
    ret                                           ; $4b6c: $c9


jr_012_4b6d:
    cp $14                                        ; $4b6d: $fe $14
    jr nc, jr_012_4b75                            ; $4b6f: $30 $04

    sub $0a                                       ; $4b71: $d6 $0a
    jr jr_012_4b77                                ; $4b73: $18 $02

jr_012_4b75:
    ld a, $09                                     ; $4b75: $3e $09

jr_012_4b77:
    push de                                       ; $4b77: $d5
    ld h, $00                                     ; $4b78: $26 $00
    ld l, a                                       ; $4b7a: $6f
    add hl, hl                                    ; $4b7b: $29
    add hl, hl                                    ; $4b7c: $29
    add hl, hl                                    ; $4b7d: $29
    add hl, hl                                    ; $4b7e: $29
    ld de, $5240                                  ; $4b7f: $11 $40 $52
    add hl, de                                    ; $4b82: $19
    pop de                                        ; $4b83: $d1
    ld c, $01                                     ; $4b84: $0e $01
    call Call_000_03eb                            ; $4b86: $cd $eb $03
    ret                                           ; $4b89: $c9


Call_012_4b8a:
    ld a, [$c890]                                 ; $4b8a: $fa $90 $c8
    cp $ff                                        ; $4b8d: $fe $ff
    jr z, jr_012_4bf9                             ; $4b8f: $28 $68

    and $0f                                       ; $4b91: $e6 $0f
    ld h, $00                                     ; $4b93: $26 $00
    ld l, a                                       ; $4b95: $6f
    add hl, hl                                    ; $4b96: $29
    add hl, hl                                    ; $4b97: $29
    add hl, hl                                    ; $4b98: $29
    push hl                                       ; $4b99: $e5
    add hl, hl                                    ; $4b9a: $29
    add hl, hl                                    ; $4b9b: $29
    add hl, hl                                    ; $4b9c: $29
    ld de, $5730                                  ; $4b9d: $11 $30 $57
    add hl, de                                    ; $4ba0: $19
    ld de, $a5c0                                  ; $4ba1: $11 $c0 $a5
    ld c, $04                                     ; $4ba4: $0e $04
    call Call_000_0468                            ; $4ba6: $cd $68 $04
    pop hl                                        ; $4ba9: $e1
    ld de, $5b30                                  ; $4baa: $11 $30 $5b
    add hl, de                                    ; $4bad: $19
    ld a, [$c899]                                 ; $4bae: $fa $99 $c8
    bit 4, a                                      ; $4bb1: $cb $67
    jr z, jr_012_4bb9                             ; $4bb3: $28 $04

    ld de, $0080                                  ; $4bb5: $11 $80 $00
    add hl, de                                    ; $4bb8: $19

jr_012_4bb9:
    ld de, $0c01                                  ; $4bb9: $11 $01 $0c
    call Call_000_056c                            ; $4bbc: $cd $6c $05

jr_012_4bbf:
    ld hl, $d200                                  ; $4bbf: $21 $00 $d2
    ld c, $02                                     ; $4bc2: $0e $02
    call Call_000_03a7                            ; $4bc4: $cd $a7 $03
    ld a, [$c8a0]                                 ; $4bc7: $fa $a0 $c8
    ld de, $d200                                  ; $4bca: $11 $00 $d2
    call Call_012_4b2f                            ; $4bcd: $cd $2f $4b
    ld hl, $d200                                  ; $4bd0: $21 $00 $d2
    ld de, $a600                                  ; $4bd3: $11 $00 $a6
    ld c, $02                                     ; $4bd6: $0e $02
    call Call_000_0468                            ; $4bd8: $cd $68 $04
    ret                                           ; $4bdb: $c9


    ld h, $00                                     ; $4bdc: $26 $00
    ld l, a                                       ; $4bde: $6f
    add hl, hl                                    ; $4bdf: $29
    add hl, hl                                    ; $4be0: $29
    add hl, hl                                    ; $4be1: $29
    ld de, $5b30                                  ; $4be2: $11 $30 $5b
    add hl, de                                    ; $4be5: $19
    ld de, $0c01                                  ; $4be6: $11 $01 $0c
    call Call_000_056c                            ; $4be9: $cd $6c $05
    ld hl, $56f0                                  ; $4bec: $21 $f0 $56
    ld de, $a5c0                                  ; $4bef: $11 $c0 $a5
    ld c, $04                                     ; $4bf2: $0e $04
    call Call_000_0468                            ; $4bf4: $cd $68 $04
    jr jr_012_4bbf                                ; $4bf7: $18 $c6

jr_012_4bf9:
    ld hl, $56f0                                  ; $4bf9: $21 $f0 $56
    ld de, $a5c0                                  ; $4bfc: $11 $c0 $a5
    ld c, $04                                     ; $4bff: $0e $04
    call Call_000_0468                            ; $4c01: $cd $68 $04
    ld hl, $d200                                  ; $4c04: $21 $00 $d2
    ld c, $02                                     ; $4c07: $0e $02
    call Call_000_03a7                            ; $4c09: $cd $a7 $03
    ld hl, $d200                                  ; $4c0c: $21 $00 $d2
    ld de, $a600                                  ; $4c0f: $11 $00 $a6
    ld c, $02                                     ; $4c12: $0e $02
    call Call_000_0468                            ; $4c14: $cd $68 $04
    ret                                           ; $4c17: $c9


Call_012_4c18:
    ld a, [$c8d0]                                 ; $4c18: $fa $d0 $c8
    cp $ff                                        ; $4c1b: $fe $ff
    jr z, jr_012_4c87                             ; $4c1d: $28 $68

    and $0f                                       ; $4c1f: $e6 $0f
    ld h, $00                                     ; $4c21: $26 $00
    ld l, a                                       ; $4c23: $6f
    add hl, hl                                    ; $4c24: $29
    add hl, hl                                    ; $4c25: $29
    add hl, hl                                    ; $4c26: $29
    push hl                                       ; $4c27: $e5
    add hl, hl                                    ; $4c28: $29
    add hl, hl                                    ; $4c29: $29
    add hl, hl                                    ; $4c2a: $29
    ld de, $5730                                  ; $4c2b: $11 $30 $57
    add hl, de                                    ; $4c2e: $19
    ld de, $a6c0                                  ; $4c2f: $11 $c0 $a6
    ld c, $04                                     ; $4c32: $0e $04
    call Call_000_0468                            ; $4c34: $cd $68 $04
    pop hl                                        ; $4c37: $e1
    ld de, $5b30                                  ; $4c38: $11 $30 $5b
    add hl, de                                    ; $4c3b: $19
    ld a, [$c8d9]                                 ; $4c3c: $fa $d9 $c8
    bit 4, a                                      ; $4c3f: $cb $67
    jr z, jr_012_4c47                             ; $4c41: $28 $04

    ld de, $0080                                  ; $4c43: $11 $80 $00
    add hl, de                                    ; $4c46: $19

jr_012_4c47:
    ld de, $0d01                                  ; $4c47: $11 $01 $0d
    call Call_000_056c                            ; $4c4a: $cd $6c $05

jr_012_4c4d:
    ld hl, $d220                                  ; $4c4d: $21 $20 $d2
    ld c, $02                                     ; $4c50: $0e $02
    call Call_000_03a7                            ; $4c52: $cd $a7 $03
    ld a, [$c8e0]                                 ; $4c55: $fa $e0 $c8
    ld de, $d220                                  ; $4c58: $11 $20 $d2
    call Call_012_4b2f                            ; $4c5b: $cd $2f $4b
    ld hl, $d220                                  ; $4c5e: $21 $20 $d2
    ld de, $a700                                  ; $4c61: $11 $00 $a7
    ld c, $02                                     ; $4c64: $0e $02
    call Call_000_0468                            ; $4c66: $cd $68 $04
    ret                                           ; $4c69: $c9


    ld h, $00                                     ; $4c6a: $26 $00
    ld l, a                                       ; $4c6c: $6f
    add hl, hl                                    ; $4c6d: $29
    add hl, hl                                    ; $4c6e: $29
    add hl, hl                                    ; $4c6f: $29
    ld de, $5b30                                  ; $4c70: $11 $30 $5b
    add hl, de                                    ; $4c73: $19
    ld de, $0d01                                  ; $4c74: $11 $01 $0d
    call Call_000_056c                            ; $4c77: $cd $6c $05
    ld hl, $56f0                                  ; $4c7a: $21 $f0 $56
    ld de, $a6c0                                  ; $4c7d: $11 $c0 $a6
    ld c, $04                                     ; $4c80: $0e $04
    call Call_000_0468                            ; $4c82: $cd $68 $04
    jr jr_012_4c4d                                ; $4c85: $18 $c6

jr_012_4c87:
    ld hl, $56f0                                  ; $4c87: $21 $f0 $56
    ld de, $a6c0                                  ; $4c8a: $11 $c0 $a6
    ld c, $04                                     ; $4c8d: $0e $04
    call Call_000_0468                            ; $4c8f: $cd $68 $04
    ld hl, $d220                                  ; $4c92: $21 $20 $d2
    ld c, $02                                     ; $4c95: $0e $02
    call Call_000_03a7                            ; $4c97: $cd $a7 $03
    ld hl, $d220                                  ; $4c9a: $21 $20 $d2
    ld de, $a700                                  ; $4c9d: $11 $00 $a7
    ld c, $02                                     ; $4ca0: $0e $02
    call Call_000_0468                            ; $4ca2: $cd $68 $04
    ret                                           ; $4ca5: $c9


Call_012_4ca6:
    ld a, $06                                     ; $4ca6: $3e $06
    ldh [$96], a                                  ; $4ca8: $e0 $96
    ldh [rSVBK], a                                ; $4caa: $e0 $70
    ld a, $ff                                     ; $4cac: $3e $ff
    ld [$d322], a                                 ; $4cae: $ea $22 $d3
    ld a, $06                                     ; $4cb1: $3e $06
    ldh [$96], a                                  ; $4cb3: $e0 $96
    ldh [rSVBK], a                                ; $4cb5: $e0 $70
    ld hl, $d200                                  ; $4cb7: $21 $00 $d2
    ld c, $06                                     ; $4cba: $0e $06
    call Call_000_03a7                            ; $4cbc: $cd $a7 $03
    ld hl, $68a3                                  ; $4cbf: $21 $a3 $68
    ld de, $d200                                  ; $4cc2: $11 $00 $d2
    ld bc, $0001                                  ; $4cc5: $01 $01 $00
    call Call_000_2962                            ; $4cc8: $cd $62 $29
    rst $18                                       ; $4ccb: $df

    db $04, $10

    ld a, [$d329]                                 ; $4cce: $fa $29 $d3
    cp $0d                                        ; $4cd1: $fe $0d
    jr nz, jr_012_4cdf                            ; $4cd3: $20 $0a

    push hl                                       ; $4cd5: $e5
    ld de, $f7cb                                  ; $4cd6: $11 $cb $f7
    add hl, de                                    ; $4cd9: $19
    bit 7, h                                      ; $4cda: $cb $7c
    pop hl                                        ; $4cdc: $e1
    jr nz, jr_012_4d16                            ; $4cdd: $20 $37

jr_012_4cdf:
    ld a, [$d322]                                 ; $4cdf: $fa $22 $d3
    or a                                          ; $4ce2: $b7
    ret z                                         ; $4ce3: $c8

    srl h                                         ; $4ce4: $cb $3c
    rr l                                          ; $4ce6: $cb $1d
    srl h                                         ; $4ce8: $cb $3c
    rr l                                          ; $4cea: $cb $1d
    srl h                                         ; $4cec: $cb $3c
    rr l                                          ; $4cee: $cb $1d
    srl h                                         ; $4cf0: $cb $3c
    rr l                                          ; $4cf2: $cb $1d
    srl h                                         ; $4cf4: $cb $3c
    rr l                                          ; $4cf6: $cb $1d
    ld a, $03                                     ; $4cf8: $3e $03
    ld de, $d200                                  ; $4cfa: $11 $00 $d2
    ld bc, $0008                                  ; $4cfd: $01 $08 $00
    call Call_000_28fa                            ; $4d00: $cd $fa $28
    ld hl, $6859                                  ; $4d03: $21 $59 $68
    ld de, $d200                                  ; $4d06: $11 $00 $d2
    ld bc, $1309                                  ; $4d09: $01 $09 $13
    call Call_000_2962                            ; $4d0c: $cd $62 $29
    xor a                                         ; $4d0f: $af
    ld [$d322], a                                 ; $4d10: $ea $22 $d3
    jp Jump_012_4ddc                              ; $4d13: $c3 $dc $4d


jr_012_4d16:
    ld a, [$d322]                                 ; $4d16: $fa $22 $d3
    cp $01                                        ; $4d19: $fe $01
    ret z                                         ; $4d1b: $c8

    ld de, $ff96                                  ; $4d1c: $11 $96 $ff
    push hl                                       ; $4d1f: $e5
    add hl, de                                    ; $4d20: $19
    bit 7, h                                      ; $4d21: $cb $7c
    pop hl                                        ; $4d23: $e1
    jr z, jr_012_4da4                             ; $4d24: $28 $7e

    ld d, h                                       ; $4d26: $54
    ld e, l                                       ; $4d27: $5d
    add hl, hl                                    ; $4d28: $29
    add hl, de                                    ; $4d29: $19
    push hl                                       ; $4d2a: $e5
    sra h                                         ; $4d2b: $cb $2c
    rr l                                          ; $4d2d: $cb $1d
    sra h                                         ; $4d2f: $cb $2c
    rr l                                          ; $4d31: $cb $1d
    sra h                                         ; $4d33: $cb $2c
    rr l                                          ; $4d35: $cb $1d
    sra h                                         ; $4d37: $cb $2c
    rr l                                          ; $4d39: $cb $1d
    sra h                                         ; $4d3b: $cb $2c
    rr l                                          ; $4d3d: $cb $1d
    push hl                                       ; $4d3f: $e5
    push hl                                       ; $4d40: $e5
    ld hl, $6872                                  ; $4d41: $21 $72 $68
    ld de, $d200                                  ; $4d44: $11 $00 $d2
    ld bc, $0908                                  ; $4d47: $01 $08 $09
    call Call_000_2962                            ; $4d4a: $cd $62 $29
    pop hl                                        ; $4d4d: $e1
    ld a, $01                                     ; $4d4e: $3e $01
    ld de, $d200                                  ; $4d50: $11 $00 $d2
    ld bc, $0308                                  ; $4d53: $01 $08 $03
    call Call_000_28fa                            ; $4d56: $cd $fa $28
    pop de                                        ; $4d59: $d1
    sla e                                         ; $4d5a: $cb $23
    rl d                                          ; $4d5c: $cb $12
    sla e                                         ; $4d5e: $cb $23
    rl d                                          ; $4d60: $cb $12
    sla e                                         ; $4d62: $cb $23
    rl d                                          ; $4d64: $cb $12
    sla e                                         ; $4d66: $cb $23
    rl d                                          ; $4d68: $cb $12
    sla e                                         ; $4d6a: $cb $23
    rl d                                          ; $4d6c: $cb $12
    pop hl                                        ; $4d6e: $e1
    call Call_000_08ac                            ; $4d6f: $cd $ac $08
    ld a, $0a                                     ; $4d72: $3e $0a
    call Call_000_08b9                            ; $4d74: $cd $b9 $08
    sra h                                         ; $4d77: $cb $2c
    rr l                                          ; $4d79: $cb $1d
    sra h                                         ; $4d7b: $cb $2c
    rr l                                          ; $4d7d: $cb $1d
    sra h                                         ; $4d7f: $cb $2c
    rr l                                          ; $4d81: $cb $1d
    sra h                                         ; $4d83: $cb $2c
    rr l                                          ; $4d85: $cb $1d
    sra h                                         ; $4d87: $cb $2c
    rr l                                          ; $4d89: $cb $1d
    ld a, $01                                     ; $4d8b: $3e $01
    ld de, $d200                                  ; $4d8d: $11 $00 $d2
    ld bc, $0c08                                  ; $4d90: $01 $08 $0c
    call Call_000_28fa                            ; $4d93: $cd $fa $28
    ld hl, $6864                                  ; $4d96: $21 $64 $68
    ld de, $d200                                  ; $4d99: $11 $00 $d2
    ld bc, $1208                                  ; $4d9c: $01 $08 $12
    call Call_000_2962                            ; $4d9f: $cd $62 $29
    jr jr_012_4dd7                                ; $4da2: $18 $33

jr_012_4da4:
    ld d, h                                       ; $4da4: $54
    ld e, l                                       ; $4da5: $5d
    add hl, hl                                    ; $4da6: $29
    add hl, de                                    ; $4da7: $19
    ld de, $0008                                  ; $4da8: $11 $08 $00
    add hl, de                                    ; $4dab: $19
    sra h                                         ; $4dac: $cb $2c
    rr l                                          ; $4dae: $cb $1d
    sra h                                         ; $4db0: $cb $2c
    rr l                                          ; $4db2: $cb $1d
    sra h                                         ; $4db4: $cb $2c
    rr l                                          ; $4db6: $cb $1d
    sra h                                         ; $4db8: $cb $2c
    rr l                                          ; $4dba: $cb $1d
    sra h                                         ; $4dbc: $cb $2c
    rr l                                          ; $4dbe: $cb $1d
    ld a, $03                                     ; $4dc0: $3e $03
    ld de, $d200                                  ; $4dc2: $11 $00 $d2
    ld bc, $0008                                  ; $4dc5: $01 $08 $00
    call Call_000_28fa                            ; $4dc8: $cd $fa $28
    ld hl, $6864                                  ; $4dcb: $21 $64 $68
    ld de, $d200                                  ; $4dce: $11 $00 $d2
    ld bc, $1208                                  ; $4dd1: $01 $08 $12
    call Call_000_2962                            ; $4dd4: $cd $62 $29

jr_012_4dd7:
    ld a, $01                                     ; $4dd7: $3e $01
    ld [$d322], a                                 ; $4dd9: $ea $22 $d3

Jump_012_4ddc:
    ld hl, $d200                                  ; $4ddc: $21 $00 $d2
    ld de, $a720                                  ; $4ddf: $11 $20 $a7
    ld c, $06                                     ; $4de2: $0e $06
    call Call_000_0468                            ; $4de4: $cd $68 $04
    ret                                           ; $4de7: $c9


    ret                                           ; $4de8: $c9


Call_012_4de9:
    ld a, $06                                     ; $4de9: $3e $06
    ldh [$96], a                                  ; $4deb: $e0 $96
    ldh [rSVBK], a                                ; $4ded: $e0 $70
    ld a, [$d329]                                 ; $4def: $fa $29 $d3
    cp $0d                                        ; $4df2: $fe $0d
    jr z, jr_012_4e17                             ; $4df4: $28 $21

    srl h                                         ; $4df6: $cb $3c
    rr l                                          ; $4df8: $cb $1d
    srl h                                         ; $4dfa: $cb $3c
    rr l                                          ; $4dfc: $cb $1d
    srl h                                         ; $4dfe: $cb $3c
    rr l                                          ; $4e00: $cb $1d
    srl h                                         ; $4e02: $cb $3c
    rr l                                          ; $4e04: $cb $1d
    srl h                                         ; $4e06: $cb $3c
    rr l                                          ; $4e08: $cb $1d
    ld d, $00                                     ; $4e0a: $16 $00
    call Call_012_4eb1                            ; $4e0c: $cd $b1 $4e
    ld d, $12                                     ; $4e0f: $16 $12
    ld a, $0b                                     ; $4e11: $3e $0b
    call Call_012_4eef                            ; $4e13: $cd $ef $4e
    ret                                           ; $4e16: $c9


jr_012_4e17:
    ld de, $ff96                                  ; $4e17: $11 $96 $ff
    push hl                                       ; $4e1a: $e5
    add hl, de                                    ; $4e1b: $19
    bit 7, h                                      ; $4e1c: $cb $7c
    pop hl                                        ; $4e1e: $e1
    jr z, jr_012_4e88                             ; $4e1f: $28 $67

    ld d, h                                       ; $4e21: $54
    ld e, l                                       ; $4e22: $5d
    add hl, hl                                    ; $4e23: $29
    add hl, de                                    ; $4e24: $19
    push hl                                       ; $4e25: $e5
    sra h                                         ; $4e26: $cb $2c
    rr l                                          ; $4e28: $cb $1d
    sra h                                         ; $4e2a: $cb $2c
    rr l                                          ; $4e2c: $cb $1d
    sra h                                         ; $4e2e: $cb $2c
    rr l                                          ; $4e30: $cb $1d
    sra h                                         ; $4e32: $cb $2c
    rr l                                          ; $4e34: $cb $1d
    sra h                                         ; $4e36: $cb $2c
    rr l                                          ; $4e38: $cb $1d
    push hl                                       ; $4e3a: $e5
    ld d, $09                                     ; $4e3b: $16 $09
    ld a, $0a                                     ; $4e3d: $3e $0a
    call Call_012_4eef                            ; $4e3f: $cd $ef $4e
    ld d, $03                                     ; $4e42: $16 $03
    ld a, l                                       ; $4e44: $7d
    call Call_012_4eef                            ; $4e45: $cd $ef $4e
    pop de                                        ; $4e48: $d1
    sla e                                         ; $4e49: $cb $23
    rl d                                          ; $4e4b: $cb $12
    sla e                                         ; $4e4d: $cb $23
    rl d                                          ; $4e4f: $cb $12
    sla e                                         ; $4e51: $cb $23
    rl d                                          ; $4e53: $cb $12
    sla e                                         ; $4e55: $cb $23
    rl d                                          ; $4e57: $cb $12
    sla e                                         ; $4e59: $cb $23
    rl d                                          ; $4e5b: $cb $12
    pop hl                                        ; $4e5d: $e1
    call Call_000_08ac                            ; $4e5e: $cd $ac $08
    ld a, $0a                                     ; $4e61: $3e $0a
    call Call_000_08b9                            ; $4e63: $cd $b9 $08
    sra h                                         ; $4e66: $cb $2c
    rr l                                          ; $4e68: $cb $1d
    sra h                                         ; $4e6a: $cb $2c
    rr l                                          ; $4e6c: $cb $1d
    sra h                                         ; $4e6e: $cb $2c
    rr l                                          ; $4e70: $cb $1d
    sra h                                         ; $4e72: $cb $2c
    rr l                                          ; $4e74: $cb $1d
    sra h                                         ; $4e76: $cb $2c
    rr l                                          ; $4e78: $cb $1d
    ld d, $0c                                     ; $4e7a: $16 $0c
    ld a, l                                       ; $4e7c: $7d
    call Call_012_4eef                            ; $4e7d: $cd $ef $4e
    ld d, $12                                     ; $4e80: $16 $12
    ld a, $0c                                     ; $4e82: $3e $0c
    call Call_012_4eef                            ; $4e84: $cd $ef $4e
    ret                                           ; $4e87: $c9


jr_012_4e88:
    ld d, h                                       ; $4e88: $54
    ld e, l                                       ; $4e89: $5d
    add hl, hl                                    ; $4e8a: $29
    add hl, de                                    ; $4e8b: $19
    ld de, $0008                                  ; $4e8c: $11 $08 $00
    add hl, de                                    ; $4e8f: $19
    sra h                                         ; $4e90: $cb $2c
    rr l                                          ; $4e92: $cb $1d
    sra h                                         ; $4e94: $cb $2c
    rr l                                          ; $4e96: $cb $1d
    sra h                                         ; $4e98: $cb $2c
    rr l                                          ; $4e9a: $cb $1d
    sra h                                         ; $4e9c: $cb $2c
    rr l                                          ; $4e9e: $cb $1d
    sra h                                         ; $4ea0: $cb $2c
    rr l                                          ; $4ea2: $cb $1d
    ld d, $00                                     ; $4ea4: $16 $00
    call Call_012_4eb1                            ; $4ea6: $cd $b1 $4e
    ld d, $12                                     ; $4ea9: $16 $12
    ld a, $0c                                     ; $4eab: $3e $0c
    call Call_012_4eef                            ; $4ead: $cd $ef $4e
    ret                                           ; $4eb0: $c9


Call_012_4eb1:
    push af                                       ; $4eb1: $f5
    push bc                                       ; $4eb2: $c5
    push de                                       ; $4eb3: $d5
    push hl                                       ; $4eb4: $e5
    add sp, -$10                                  ; $4eb5: $e8 $f0
    push de                                       ; $4eb7: $d5
    push hl                                       ; $4eb8: $e5
    ld hl, sp+$06                                 ; $4eb9: $f8 $06
    ld d, h                                       ; $4ebb: $54
    ld e, l                                       ; $4ebc: $5d
    pop hl                                        ; $4ebd: $e1
    ld a, $03                                     ; $4ebe: $3e $03
    call Call_000_21f0                            ; $4ec0: $cd $f0 $21
    ld hl, sp+$04                                 ; $4ec3: $f8 $04
    pop de                                        ; $4ec5: $d1
    ld a, [hl+]                                   ; $4ec6: $2a
    cp $20                                        ; $4ec7: $fe $20
    jr z, jr_012_4ed0                             ; $4ec9: $28 $05

    sub $30                                       ; $4ecb: $d6 $30
    call Call_012_4eef                            ; $4ecd: $cd $ef $4e

jr_012_4ed0:
    ld a, d                                       ; $4ed0: $7a
    add $06                                       ; $4ed1: $c6 $06
    ld d, a                                       ; $4ed3: $57
    ld a, [hl+]                                   ; $4ed4: $2a
    cp $20                                        ; $4ed5: $fe $20
    jr z, jr_012_4ede                             ; $4ed7: $28 $05

    sub $30                                       ; $4ed9: $d6 $30
    call Call_012_4eef                            ; $4edb: $cd $ef $4e

jr_012_4ede:
    ld a, d                                       ; $4ede: $7a
    add $06                                       ; $4edf: $c6 $06
    ld d, a                                       ; $4ee1: $57
    ld a, [hl]                                    ; $4ee2: $7e
    sub $30                                       ; $4ee3: $d6 $30
    call Call_012_4eef                            ; $4ee5: $cd $ef $4e
    add sp, $10                                   ; $4ee8: $e8 $10
    pop hl                                        ; $4eea: $e1
    pop de                                        ; $4eeb: $d1
    pop bc                                        ; $4eec: $c1
    pop af                                        ; $4eed: $f1
    ret                                           ; $4eee: $c9


Call_012_4eef:
    push af                                       ; $4eef: $f5
    push bc                                       ; $4ef0: $c5
    push de                                       ; $4ef1: $d5
    push hl                                       ; $4ef2: $e5
    ld b, $08                                     ; $4ef3: $06 $08
    add a                                         ; $4ef5: $87
    add $10                                       ; $4ef6: $c6 $10
    ld c, a                                       ; $4ef8: $4f
    ld a, $48                                     ; $4ef9: $3e $48
    add d                                         ; $4efb: $82
    ld d, a                                       ; $4efc: $57
    ld e, $74                                     ; $4efd: $1e $74
    call Call_000_2798                            ; $4eff: $cd $98 $27
    pop hl                                        ; $4f02: $e1
    pop de                                        ; $4f03: $d1
    pop bc                                        ; $4f04: $c1
    pop af                                        ; $4f05: $f1
    ret                                           ; $4f06: $c9


    ld a, $06                                     ; $4f07: $3e $06
    ldh [$96], a                                  ; $4f09: $e0 $96
    ldh [rSVBK], a                                ; $4f0b: $e0 $70
    rst $18                                       ; $4f0d: $df

    db $38, $10

    call Call_012_4de9                            ; $4f10: $cd $e9 $4d
    ret                                           ; $4f13: $c9


    ld a, $10                                     ; $4f14: $3e $10
    ld hl, $4f07                                  ; $4f16: $21 $07 $4f
    call Call_000_23e8                            ; $4f19: $cd $e8 $23
    ret                                           ; $4f1c: $c9


    ld hl, $4f07                                  ; $4f1d: $21 $07 $4f
    call Call_000_2449                            ; $4f20: $cd $49 $24
    ret                                           ; $4f23: $c9


Call_012_4f24:
    ld hl, $c0f4                                  ; $4f24: $21 $f4 $c0
    ld a, [hl+]                                   ; $4f27: $2a
    or a                                          ; $4f28: $b7
    ret z                                         ; $4f29: $c8

    ld a, [hl+]                                   ; $4f2a: $2a
    or [hl]                                       ; $4f2b: $b6
    jr nz, jr_012_4f33                            ; $4f2c: $20 $05

    ldh a, [$8c]                                  ; $4f2e: $f0 $8c
    bit 4, a                                      ; $4f30: $cb $67
    ret z                                         ; $4f32: $c8

jr_012_4f33:
    ld a, [$c0f7]                                 ; $4f33: $fa $f7 $c0
    and $0f                                       ; $4f36: $e6 $0f
    ld d, $00                                     ; $4f38: $16 $00
    call Call_012_4fba                            ; $4f3a: $cd $ba $4f
    ld d, $06                                     ; $4f3d: $16 $06
    ld a, $0d                                     ; $4f3f: $3e $0d
    call Call_012_4fba                            ; $4f41: $cd $ba $4f
    ld a, [$c0f6]                                 ; $4f44: $fa $f6 $c0
    add $64                                       ; $4f47: $c6 $64
    ld h, $00                                     ; $4f49: $26 $00
    ld l, a                                       ; $4f4b: $6f
    ld d, $09                                     ; $4f4c: $16 $09
    call Call_012_4f8a                            ; $4f4e: $cd $8a $4f
    ret                                           ; $4f51: $c9


    ld a, $06                                     ; $4f52: $3e $06
    ldh [$96], a                                  ; $4f54: $e0 $96
    ldh [rSVBK], a                                ; $4f56: $e0 $70
    ld d, h                                       ; $4f58: $54
    ld e, l                                       ; $4f59: $5d
    ld hl, $c0f4                                  ; $4f5a: $21 $f4 $c0
    ld [hl], $01                                  ; $4f5d: $36 $01
    inc hl                                        ; $4f5f: $23
    ld [hl], $00                                  ; $4f60: $36 $00
    inc hl                                        ; $4f62: $23
    ld [hl], e                                    ; $4f63: $73
    inc hl                                        ; $4f64: $23
    ld [hl], d                                    ; $4f65: $72
    ret                                           ; $4f66: $c9


    ld a, $06                                     ; $4f67: $3e $06
    ldh [$96], a                                  ; $4f69: $e0 $96
    ldh [rSVBK], a                                ; $4f6b: $e0 $70
    ld a, $01                                     ; $4f6d: $3e $01
    ld [$c0f4], a                                 ; $4f6f: $ea $f4 $c0
    ret                                           ; $4f72: $c9


    ld a, $06                                     ; $4f73: $3e $06
    ldh [$96], a                                  ; $4f75: $e0 $96
    ldh [rSVBK], a                                ; $4f77: $e0 $70
    ld a, $02                                     ; $4f79: $3e $02
    ld [$c0f4], a                                 ; $4f7b: $ea $f4 $c0
    ret                                           ; $4f7e: $c9


    ld a, $06                                     ; $4f7f: $3e $06
    ldh [$96], a                                  ; $4f81: $e0 $96
    ldh [rSVBK], a                                ; $4f83: $e0 $70
    xor a                                         ; $4f85: $af
    ld [$c0f4], a                                 ; $4f86: $ea $f4 $c0
    ret                                           ; $4f89: $c9


Call_012_4f8a:
    push af                                       ; $4f8a: $f5
    push bc                                       ; $4f8b: $c5
    push de                                       ; $4f8c: $d5
    push hl                                       ; $4f8d: $e5
    add sp, -$10                                  ; $4f8e: $e8 $f0
    push de                                       ; $4f90: $d5
    push hl                                       ; $4f91: $e5
    ld hl, sp+$06                                 ; $4f92: $f8 $06
    ld d, h                                       ; $4f94: $54
    ld e, l                                       ; $4f95: $5d
    pop hl                                        ; $4f96: $e1
    ld a, $02                                     ; $4f97: $3e $02
    call Call_000_21f0                            ; $4f99: $cd $f0 $21
    ld hl, sp+$05                                 ; $4f9c: $f8 $05
    pop de                                        ; $4f9e: $d1
    ld a, [hl+]                                   ; $4f9f: $2a
    cp $20                                        ; $4fa0: $fe $20
    jr z, jr_012_4fa9                             ; $4fa2: $28 $05

    sub $30                                       ; $4fa4: $d6 $30
    call Call_012_4fba                            ; $4fa6: $cd $ba $4f

jr_012_4fa9:
    ld a, d                                       ; $4fa9: $7a
    add $06                                       ; $4faa: $c6 $06
    ld d, a                                       ; $4fac: $57
    ld a, [hl]                                    ; $4fad: $7e
    sub $30                                       ; $4fae: $d6 $30
    call Call_012_4fba                            ; $4fb0: $cd $ba $4f
    add sp, $10                                   ; $4fb3: $e8 $10
    pop hl                                        ; $4fb5: $e1
    pop de                                        ; $4fb6: $d1
    pop bc                                        ; $4fb7: $c1
    pop af                                        ; $4fb8: $f1
    ret                                           ; $4fb9: $c9


Call_012_4fba:
    push af                                       ; $4fba: $f5
    push bc                                       ; $4fbb: $c5
    push de                                       ; $4fbc: $d5
    push hl                                       ; $4fbd: $e5
    ld b, $08                                     ; $4fbe: $06 $08
    add a                                         ; $4fc0: $87
    add $10                                       ; $4fc1: $c6 $10
    ld c, a                                       ; $4fc3: $4f
    ld a, $04                                     ; $4fc4: $3e $04
    add d                                         ; $4fc6: $82
    ld d, a                                       ; $4fc7: $57
    ld e, $0c                                     ; $4fc8: $1e $0c
    call Call_000_2798                            ; $4fca: $cd $98 $27
    pop hl                                        ; $4fcd: $e1
    pop de                                        ; $4fce: $d1
    pop bc                                        ; $4fcf: $c1
    pop af                                        ; $4fd0: $f1
    ret                                           ; $4fd1: $c9


Call_012_4fd2:
    ld hl, $64c0                                  ; $4fd2: $21 $c0 $64
    ld de, $a480                                  ; $4fd5: $11 $80 $a4
    ld c, $08                                     ; $4fd8: $0e $08
    call Call_000_0468                            ; $4fda: $cd $68 $04
    ld hl, $6540                                  ; $4fdd: $21 $40 $65
    ld de, $a780                                  ; $4fe0: $11 $80 $a7
    ld c, $08                                     ; $4fe3: $0e $08
    call Call_000_0468                            ; $4fe5: $cd $68 $04
    ld hl, $65c0                                  ; $4fe8: $21 $c0 $65
    ld de, $a300                                  ; $4feb: $11 $00 $a3
    ld c, $08                                     ; $4fee: $0e $08
    call Call_000_0468                            ; $4ff0: $cd $68 $04
    ret                                           ; $4ff3: $c9


Call_012_4ff4:
    ld hl, $6480                                  ; $4ff4: $21 $80 $64
    ld de, $a3a0                                  ; $4ff7: $11 $a0 $a3
    ld c, $02                                     ; $4ffa: $0e $02
    call Call_000_0468                            ; $4ffc: $cd $68 $04
    ld hl, $6320                                  ; $4fff: $21 $20 $63
    ld de, $a3e0                                  ; $5002: $11 $e0 $a3
    ld c, $02                                     ; $5005: $0e $02
    call Call_000_0468                            ; $5007: $cd $68 $04
    ldh a, [$96]                                  ; $500a: $f0 $96
    push af                                       ; $500c: $f5
    ld a, $01                                     ; $500d: $3e $01
    ldh [$96], a                                  ; $500f: $e0 $96
    ldh [rSVBK], a                                ; $5011: $e0 $70
    ld hl, $69c5                                  ; $5013: $21 $c5 $69
    ld de, $d000                                  ; $5016: $11 $00 $d0
    push de                                       ; $5019: $d5
    call Call_000_1f2f                            ; $501a: $cd $2f $1f
    pop hl                                        ; $501d: $e1
    ld de, $a100                                  ; $501e: $11 $00 $a1
    ld c, $1c                                     ; $5021: $0e $1c
    call Call_000_0468                            ; $5023: $cd $68 $04
    pop af                                        ; $5026: $f1
    ldh [$96], a                                  ; $5027: $e0 $96
    ldh [rSVBK], a                                ; $5029: $e0 $70
    ret                                           ; $502b: $c9


    ld hl, $d36c                                  ; $502c: $21 $6c $d3
    ld e, [hl]                                    ; $502f: $5e
    inc [hl]                                      ; $5030: $34
    ld a, e                                       ; $5031: $7b
    and $07                                       ; $5032: $e6 $07
    ret nz                                        ; $5034: $c0

    ld a, [$d36b]                                 ; $5035: $fa $6b $d3
    or a                                          ; $5038: $b7
    jr nz, jr_012_5050                            ; $5039: $20 $15

    ld a, e                                       ; $503b: $7b
    and $08                                       ; $503c: $e6 $08
    add a                                         ; $503e: $87
    add a                                         ; $503f: $87
    ld hl, $6480                                  ; $5040: $21 $80 $64
    ld d, $00                                     ; $5043: $16 $00
    ld e, a                                       ; $5045: $5f
    add hl, de                                    ; $5046: $19

jr_012_5047:
    ld de, $a3a0                                  ; $5047: $11 $a0 $a3
    ld c, $02                                     ; $504a: $0e $02
    call Call_000_0468                            ; $504c: $cd $68 $04
    ret                                           ; $504f: $c9


jr_012_5050:
    ld hl, $56f0                                  ; $5050: $21 $f0 $56
    ld a, e                                       ; $5053: $7b
    and $08                                       ; $5054: $e6 $08
    jr nz, jr_012_5047                            ; $5056: $20 $ef

    ld a, [$d36b]                                 ; $5058: $fa $6b $d3
    ld hl, $506e                                  ; $505b: $21 $6e $50
    add l                                         ; $505e: $85
    ld l, a                                       ; $505f: $6f
    jr nc, jr_012_5063                            ; $5060: $30 $01

    inc h                                         ; $5062: $24

jr_012_5063:
    ld a, [hl]                                    ; $5063: $7e
    ld hl, $6380                                  ; $5064: $21 $80 $63
    add l                                         ; $5067: $85
    ld l, a                                       ; $5068: $6f
    jr nc, jr_012_506c                            ; $5069: $30 $01

    inc h                                         ; $506b: $24

jr_012_506c:
    jr jr_012_5047                                ; $506c: $18 $d9

    nop                                           ; $506e: $00

    db $00

    add b                                         ; $5070: $80
    nop                                           ; $5071: $00
    ld b, b                                       ; $5072: $40
    jr nz, jr_012_50d5                            ; $5073: $20 $60

    nop                                           ; $5075: $00
    ret nz                                        ; $5076: $c0

    ldh [$a0], a                                  ; $5077: $e0 $a0
    nop                                           ; $5079: $00
    nop                                           ; $507a: $00
    nop                                           ; $507b: $00
    nop                                           ; $507c: $00
    nop                                           ; $507d: $00

    ld hl, $6320                                  ; $507e: $21 $20 $63
    ld de, $a3e0                                  ; $5081: $11 $e0 $a3
    ld c, $02                                     ; $5084: $0e $02
    call Call_000_0468                            ; $5086: $cd $68 $04
    ret                                           ; $5089: $c9


    ld hl, $6340                                  ; $508a: $21 $40 $63
    and $01                                       ; $508d: $e6 $01
    swap a                                        ; $508f: $cb $37
    add a                                         ; $5091: $87
    ld d, $00                                     ; $5092: $16 $00
    ld e, a                                       ; $5094: $5f
    add hl, de                                    ; $5095: $19
    ld de, $a3e0                                  ; $5096: $11 $e0 $a3
    ld c, $02                                     ; $5099: $0e $02
    call Call_000_0468                            ; $509b: $cd $68 $04
    ret                                           ; $509e: $c9


    ret                                           ; $509f: $c9


Call_012_50a0:
    ld a, [$d328]                                 ; $50a0: $fa $28 $d3
    or a                                          ; $50a3: $b7
    ret nz                                        ; $50a4: $c0

    ld a, [$c815]                                 ; $50a5: $fa $15 $c8
    or a                                          ; $50a8: $b7
    ret z                                         ; $50a9: $c8

    ld a, [$d326]                                 ; $50aa: $fa $26 $d3
    or a                                          ; $50ad: $b7
    jp nz, Jump_012_5102                          ; $50ae: $c2 $02 $51

    ld a, [$c815]                                 ; $50b1: $fa $15 $c8
    and $1e                                       ; $50b4: $e6 $1e
    add a                                         ; $50b6: $87
    ld hl, $5110                                  ; $50b7: $21 $10 $51
    add l                                         ; $50ba: $85
    ld l, a                                       ; $50bb: $6f
    jr nc, jr_012_50bf                            ; $50bc: $30 $01

    inc h                                         ; $50be: $24

jr_012_50bf:
    push hl                                       ; $50bf: $e5
    inc hl                                        ; $50c0: $23
    inc hl                                        ; $50c1: $23
    ld a, [hl]                                    ; $50c2: $7e
    ld [$d326], a                                 ; $50c3: $ea $26 $d3
    pop hl                                        ; $50c6: $e1
    ld a, [hl+]                                   ; $50c7: $2a
    ld h, [hl]                                    ; $50c8: $66
    ld l, a                                       ; $50c9: $6f
    ld de, $cab4                                  ; $50ca: $11 $b4 $ca
    ld a, [hl+]                                   ; $50cd: $2a
    ld [de], a                                    ; $50ce: $12
    inc de                                        ; $50cf: $13
    ld a, [hl+]                                   ; $50d0: $2a
    ld [de], a                                    ; $50d1: $12
    inc de                                        ; $50d2: $13
    xor a                                         ; $50d3: $af
    ld [de], a                                    ; $50d4: $12

jr_012_50d5:
    inc de                                        ; $50d5: $13
    ld [de], a                                    ; $50d6: $12
    ld a, [$d327]                                 ; $50d7: $fa $27 $d3
    and $0f                                       ; $50da: $e6 $0f
    add a                                         ; $50dc: $87
    add l                                         ; $50dd: $85
    ld l, a                                       ; $50de: $6f
    jr nc, jr_012_50e2                            ; $50df: $30 $01

    inc h                                         ; $50e1: $24

jr_012_50e2:
    ld de, $cab0                                  ; $50e2: $11 $b0 $ca
    push de                                       ; $50e5: $d5
    xor a                                         ; $50e6: $af
    ld [de], a                                    ; $50e7: $12
    inc de                                        ; $50e8: $13
    ld [de], a                                    ; $50e9: $12
    inc de                                        ; $50ea: $13
    ld a, [hl+]                                   ; $50eb: $2a
    ld [de], a                                    ; $50ec: $12
    inc de                                        ; $50ed: $13
    ld a, [hl]                                    ; $50ee: $7e
    ld [de], a                                    ; $50ef: $12
    inc de                                        ; $50f0: $13
    inc de                                        ; $50f1: $13
    inc de                                        ; $50f2: $13
    xor a                                         ; $50f3: $af
    ld [de], a                                    ; $50f4: $12
    inc de                                        ; $50f5: $13
    ld [de], a                                    ; $50f6: $12
    pop hl                                        ; $50f7: $e1
    ld de, $0901                                  ; $50f8: $11 $01 $09
    call Call_000_056c                            ; $50fb: $cd $6c $05
    ld hl, $d327                                  ; $50fe: $21 $27 $d3
    inc [hl]                                      ; $5101: $34

Jump_012_5102:
    ld hl, $d326                                  ; $5102: $21 $26 $d3
    dec [hl]                                      ; $5105: $35
    ret                                           ; $5106: $c9


    rr b                                          ; $5107: $cb $18
    rr b                                          ; $5109: $cb $18
    rr b                                          ; $510b: $cb $18
    rr b                                          ; $510d: $cb $18
    ret                                           ; $510f: $c9


    ld d, b                                       ; $5110: $50
    ld d, c                                       ; $5111: $51
    ld a, [bc]                                    ; $5112: $0a
    nop                                           ; $5113: $00
    ld d, b                                       ; $5114: $50
    ld d, c                                       ; $5115: $51
    add hl, bc                                    ; $5116: $09
    nop                                           ; $5117: $00
    ld d, b                                       ; $5118: $50
    ld d, c                                       ; $5119: $51
    db $08                                        ; $511a: $08
    nop                                           ; $511b: $00

    db $50, $51, $07

    nop                                           ; $511f: $00
    ld [hl], d                                    ; $5120: $72
    ld d, c                                       ; $5121: $51
    ld b, $00                                     ; $5122: $06 $00
    ld [hl], d                                    ; $5124: $72
    ld d, c                                       ; $5125: $51
    dec b                                         ; $5126: $05
    nop                                           ; $5127: $00

    db $72, $51, $04

    nop                                           ; $512b: $00

    db $94, $51, $03

    nop                                           ; $512f: $00
    sub h                                         ; $5130: $94
    ld d, c                                       ; $5131: $51
    ld [bc], a                                    ; $5132: $02
    nop                                           ; $5133: $00
    sub h                                         ; $5134: $94
    ld d, c                                       ; $5135: $51
    ld bc, $9400                                  ; $5136: $01 $00 $94
    ld d, c                                       ; $5139: $51
    ld bc, $9400                                  ; $513a: $01 $00 $94
    ld d, c                                       ; $513d: $51
    ld bc, $9400                                  ; $513e: $01 $00 $94
    ld d, c                                       ; $5141: $51
    ld bc, $9400                                  ; $5142: $01 $00 $94
    ld d, c                                       ; $5145: $51
    ld bc, $9400                                  ; $5146: $01 $00 $94
    ld d, c                                       ; $5149: $51
    ld bc, $9400                                  ; $514a: $01 $00 $94
    ld d, c                                       ; $514d: $51
    db $01                                        ; $514e: $01
    nop                                           ; $514f: $00

    db $86, $29, $20, $7e, $40, $72, $60, $66, $81, $5a, $a4, $4e, $c7, $42, $ea, $36
    db $0d, $2b, $30, $1f, $0d, $2b, $ea, $36, $c7, $42, $a4, $4e, $81, $5a, $60, $66
    db $40, $72, $cf, $11, $53, $13, $76, $07, $b9, $03, $dc, $03, $ff, $03, $bf, $03
    db $7f, $03, $3f, $0b, $df, $12, $3f, $0b, $7f, $03, $bf, $03, $ff, $03, $dc, $03
    db $b9, $03, $76, $07, $d2, $24, $bf, $1a, $7f, $22, $3f, $2a, $ff, $31, $bf, $39
    db $7f, $41, $3f, $49, $ff, $50, $bf, $58, $ff, $50, $3f, $49, $7f, $41, $bf, $39
    db $ff, $31, $3f, $2a, $7f, $22

    nop                                           ; $51b6: $00
    nop                                           ; $51b7: $00
    nop                                           ; $51b8: $00
    nop                                           ; $51b9: $00
    nop                                           ; $51ba: $00
    nop                                           ; $51bb: $00
    nop                                           ; $51bc: $00
    nop                                           ; $51bd: $00
    nop                                           ; $51be: $00
    nop                                           ; $51bf: $00
    inc e                                         ; $51c0: $1c
    dec e                                         ; $51c1: $1d
    ldh [$e2], a                                  ; $51c2: $e0 $e2
    db $e4                                        ; $51c4: $e4
    and $e8                                       ; $51c5: $e6 $e8
    ld [$eeec], a                                 ; $51c7: $ea $ec $ee
    ldh a, [$f2]                                  ; $51ca: $f0 $f2
    db $f4                                        ; $51cc: $f4
    or $f8                                        ; $51cd: $f6 $f8
    ld a, [$fefc]                                 ; $51cf: $fa $fc $fe
    db $10                                        ; $51d2: $10
    ld de, $0000                                  ; $51d3: $11 $00 $00
    nop                                           ; $51d6: $00
    nop                                           ; $51d7: $00
    nop                                           ; $51d8: $00
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    nop                                           ; $51db: $00
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    nop                                           ; $51de: $00
    nop                                           ; $51df: $00
    ld e, $1f                                     ; $51e0: $1e $1f
    pop hl                                        ; $51e2: $e1
    db $e3                                        ; $51e3: $e3
    push hl                                       ; $51e4: $e5
    rst $20                                       ; $51e5: $e7
    jp hl                                         ; $51e6: $e9


    db $eb                                        ; $51e7: $eb
    db $ed                                        ; $51e8: $ed
    rst $28                                       ; $51e9: $ef
    pop af                                        ; $51ea: $f1
    di                                            ; $51eb: $f3
    push af                                       ; $51ec: $f5
    rst $30                                       ; $51ed: $f7
    ld sp, hl                                     ; $51ee: $f9
    ei                                            ; $51ef: $fb
    db $fd                                        ; $51f0: $fd
    rst $38                                       ; $51f1: $ff
    ld [de], a                                    ; $51f2: $12
    inc de                                        ; $51f3: $13
    nop                                           ; $51f4: $00
    nop                                           ; $51f5: $00
    nop                                           ; $51f6: $00
    nop                                           ; $51f7: $00
    nop                                           ; $51f8: $00
    nop                                           ; $51f9: $00
    nop                                           ; $51fa: $00
    nop                                           ; $51fb: $00
    nop                                           ; $51fc: $00
    nop                                           ; $51fd: $00
    nop                                           ; $51fe: $00
    nop                                           ; $51ff: $00
    rlca                                          ; $5200: $07
    rlca                                          ; $5201: $07
    ld bc, $0101                                  ; $5202: $01 $01 $01
    rlca                                          ; $5205: $07
    rlca                                          ; $5206: $07
    rlca                                          ; $5207: $07
    rlca                                          ; $5208: $07
    rlca                                          ; $5209: $07
    rlca                                          ; $520a: $07
    rlca                                          ; $520b: $07
    rlca                                          ; $520c: $07
    rlca                                          ; $520d: $07
    rlca                                          ; $520e: $07
    rlca                                          ; $520f: $07
    ld bc, $0101                                  ; $5210: $01 $01 $01
    ld bc, $0000                                  ; $5213: $01 $00 $00
    nop                                           ; $5216: $00
    nop                                           ; $5217: $00
    nop                                           ; $5218: $00
    nop                                           ; $5219: $00
    nop                                           ; $521a: $00
    nop                                           ; $521b: $00
    nop                                           ; $521c: $00
    nop                                           ; $521d: $00
    nop                                           ; $521e: $00
    nop                                           ; $521f: $00
    rlca                                          ; $5220: $07
    rlca                                          ; $5221: $07
    ld bc, $0101                                  ; $5222: $01 $01 $01
    rlca                                          ; $5225: $07
    rlca                                          ; $5226: $07
    rlca                                          ; $5227: $07
    rlca                                          ; $5228: $07
    rlca                                          ; $5229: $07
    rlca                                          ; $522a: $07
    rlca                                          ; $522b: $07
    rlca                                          ; $522c: $07
    rlca                                          ; $522d: $07
    rlca                                          ; $522e: $07
    rlca                                          ; $522f: $07
    ld bc, $0101                                  ; $5230: $01 $01 $01
    ld bc, $0000                                  ; $5233: $01 $00 $00
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
    cp $fe                                        ; $5240: $fe $fe
    db $ed                                        ; $5242: $ed
    or e                                          ; $5243: $b3
    rst $38                                       ; $5244: $ff
    xor l                                         ; $5245: $ad
    rst $38                                       ; $5246: $ff
    xor l                                         ; $5247: $ad
    rst $38                                       ; $5248: $ff
    xor l                                         ; $5249: $ad
    rst $38                                       ; $524a: $ff
    xor l                                         ; $524b: $ad
    db $ed                                        ; $524c: $ed
    or e                                          ; $524d: $b3
    cp $fe                                        ; $524e: $fe $fe
    xor $ee                                       ; $5250: $ee $ee
    xor $aa                                       ; $5252: $ee $aa
    xor $aa                                       ; $5254: $ee $aa
    xor $aa                                       ; $5256: $ee $aa
    xor $aa                                       ; $5258: $ee $aa
    xor $aa                                       ; $525a: $ee $aa
    xor $aa                                       ; $525c: $ee $aa
    xor $ee                                       ; $525e: $ee $ee

    db $fe, $fe, $ed, $b3, $ff, $ad, $fb, $bd, $ed, $b3, $f7, $af, $ff, $a1, $fe, $fe

    cp $fe                                        ; $5270: $fe $fe
    db $fd                                        ; $5272: $fd
    and e                                         ; $5273: $a3
    rst $38                                       ; $5274: $ff
    cp l                                          ; $5275: $bd
    db $fd                                        ; $5276: $fd
    or e                                          ; $5277: $b3
    rst $38                                       ; $5278: $ff
    cp l                                          ; $5279: $bd
    rst $38                                       ; $527a: $ff
    cp l                                          ; $527b: $bd
    db $fd                                        ; $527c: $fd
    and e                                         ; $527d: $a3
    cp $fe                                        ; $527e: $fe $fe
    xor $ee                                       ; $5280: $ee $ee
    or $ba                                        ; $5282: $f6 $ba
    xor $b2                                       ; $5284: $ee $b2
    cp $aa                                        ; $5286: $fe $aa
    rst $38                                       ; $5288: $ff
    xor e                                         ; $5289: $ab
    rst $38                                       ; $528a: $ff
    and c                                         ; $528b: $a1
    rst $38                                       ; $528c: $ff
    cp e                                          ; $528d: $bb
    cp $fe                                        ; $528e: $fe $fe

    db $fe, $fe, $ff, $a1, $ff, $af, $fd, $a3, $ff, $bd, $ff, $ad, $ed, $b3, $fe, $fe

    cp $fe                                        ; $52a0: $fe $fe
    db $ed                                        ; $52a2: $ed
    or e                                          ; $52a3: $b3
    rst $38                                       ; $52a4: $ff
    xor a                                         ; $52a5: $af
    db $fd                                        ; $52a6: $fd
    and e                                         ; $52a7: $a3
    rst $38                                       ; $52a8: $ff
    xor l                                         ; $52a9: $ad
    rst $38                                       ; $52aa: $ff
    xor l                                         ; $52ab: $ad
    db $ed                                        ; $52ac: $ed
    or e                                          ; $52ad: $b3
    cp $fe                                        ; $52ae: $fe $fe
    cp $fe                                        ; $52b0: $fe $fe
    rst $38                                       ; $52b2: $ff
    and c                                         ; $52b3: $a1
    ei                                            ; $52b4: $fb
    cp l                                          ; $52b5: $bd
    push af                                       ; $52b6: $f5
    cp e                                          ; $52b7: $bb
    ld a, [$fcb6]                                 ; $52b8: $fa $b6 $fc
    or h                                          ; $52bb: $b4
    db $fc                                        ; $52bc: $fc
    or h                                          ; $52bd: $b4
    db $fc                                        ; $52be: $fc
    db $fc                                        ; $52bf: $fc
    cp $fe                                        ; $52c0: $fe $fe
    db $ed                                        ; $52c2: $ed
    or e                                          ; $52c3: $b3
    rst $38                                       ; $52c4: $ff

jr_012_52c5:
    xor l                                         ; $52c5: $ad
    db $ed                                        ; $52c6: $ed
    or e                                          ; $52c7: $b3
    rst $38                                       ; $52c8: $ff
    xor l                                         ; $52c9: $ad
    rst $38                                       ; $52ca: $ff
    xor l                                         ; $52cb: $ad
    db $ed                                        ; $52cc: $ed
    or e                                          ; $52cd: $b3
    cp $fe                                        ; $52ce: $fe $fe
    cp $fe                                        ; $52d0: $fe $fe
    db $ed                                        ; $52d2: $ed
    or e                                          ; $52d3: $b3
    rst $38                                       ; $52d4: $ff
    xor l                                         ; $52d5: $ad
    rst $38                                       ; $52d6: $ff
    xor l                                         ; $52d7: $ad
    rst $28                                       ; $52d8: $ef
    or c                                          ; $52d9: $b1
    rst $38                                       ; $52da: $ff
    cp l                                          ; $52db: $bd
    db $ed                                        ; $52dc: $ed
    or e                                          ; $52dd: $b3
    cp $fe                                        ; $52de: $fe $fe
    nop                                           ; $52e0: $00
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    db $fc                                        ; $52e6: $fc
    db $fc                                        ; $52e7: $fc
    db $fc                                        ; $52e8: $fc
    add h                                         ; $52e9: $84
    db $fc                                        ; $52ea: $fc
    db $fc                                        ; $52eb: $fc
    nop                                           ; $52ec: $00
    nop                                           ; $52ed: $00
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    ld bc, $0101                                  ; $52f2: $01 $01 $01
    ld bc, $0101                                  ; $52f5: $01 $01 $01
    ld a, a                                       ; $52f8: $7f
    ld a, a                                       ; $52f9: $7f
    ld a, a                                       ; $52fa: $7f
    ld b, b                                       ; $52fb: $40
    ld a, a                                       ; $52fc: $7f
    ld b, b                                       ; $52fd: $40
    ld a, a                                       ; $52fe: $7f
    ld b, b                                       ; $52ff: $40
    ld a, a                                       ; $5300: $7f
    ld b, b                                       ; $5301: $40
    ld a, a                                       ; $5302: $7f
    ld b, b                                       ; $5303: $40
    ld a, a                                       ; $5304: $7f

jr_012_5305:
    ld a, a                                       ; $5305: $7f
    ld bc, $0101                                  ; $5306: $01 $01 $01
    ld bc, $0101                                  ; $5309: $01 $01 $01
    nop                                           ; $530c: $00
    nop                                           ; $530d: $00
    nop                                           ; $530e: $00
    nop                                           ; $530f: $00
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00

jr_012_5313:
    nop                                           ; $5313: $00
    add b                                         ; $5314: $80
    add b                                         ; $5315: $80
    ld b, b                                       ; $5316: $40
    ret nz                                        ; $5317: $c0

    and b                                         ; $5318: $a0
    ld h, b                                       ; $5319: $60
    ret nc                                        ; $531a: $d0

    jr nc, jr_012_5305                            ; $531b: $30 $e8

    jr jr_012_5313                                ; $531d: $18 $f4

    inc c                                         ; $531f: $0c
    add sp, $18                                   ; $5320: $e8 $18
    ret nc                                        ; $5322: $d0

    jr nc, jr_012_52c5                            ; $5323: $30 $a0

    ld h, b                                       ; $5325: $60
    ld b, b                                       ; $5326: $40
    ret nz                                        ; $5327: $c0

    add b                                         ; $5328: $80
    add b                                         ; $5329: $80
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
    jr jr_012_534e                                ; $5334: $18 $18

    ld h, $3e                                     ; $5336: $26 $3e
    dec a                                         ; $5338: $3d
    inc hl                                        ; $5339: $23
    ld e, a                                       ; $533a: $5f
    ld h, b                                       ; $533b: $60
    ld a, a                                       ; $533c: $7f
    ld b, b                                       ; $533d: $40
    cp a                                          ; $533e: $bf
    ret nz                                        ; $533f: $c0

    ld l, a                                       ; $5340: $6f
    ld [hl], b                                    ; $5341: $70
    dec de                                        ; $5342: $1b
    inc e                                         ; $5343: $1c
    dec b                                         ; $5344: $05
    ld b, $03                                     ; $5345: $06 $03
    ld [bc], a                                    ; $5347: $02
    dec b                                         ; $5348: $05
    rlca                                          ; $5349: $07
    ld b, $06                                     ; $534a: $06 $06
    nop                                           ; $534c: $00

jr_012_534d:
    nop                                           ; $534d: $00

jr_012_534e:
    nop                                           ; $534e: $00
    nop                                           ; $534f: $00
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    ld b, b                                       ; $5354: $40
    ld b, b                                       ; $5355: $40
    and b                                         ; $5356: $a0
    ldh [$e0], a                                  ; $5357: $e0 $e0
    and b                                         ; $5359: $a0
    ret nc                                        ; $535a: $d0

    jr nc, jr_012_534d                            ; $535b: $30 $f0

    db $10                                        ; $535d: $10
    add sp, $18                                   ; $535e: $e8 $18
    ld hl, sp+$08                                 ; $5360: $f8 $08
    db $f4                                        ; $5362: $f4
    inc c                                         ; $5363: $0c
    ret c                                         ; $5364: $d8

    jr c, @+$62                                   ; $5365: $38 $60

    ldh [$80], a                                  ; $5367: $e0 $80
    add b                                         ; $5369: $80
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    nop                                           ; $536d: $00
    nop                                           ; $536e: $00
    nop                                           ; $536f: $00
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    inc b                                         ; $5372: $04
    inc b                                         ; $5373: $04
    ld c, $0a                                     ; $5374: $0e $0a
    rra                                           ; $5376: $1f
    ld de, $203f                                  ; $5377: $11 $3f $20
    ld a, a                                       ; $537a: $7f
    ld b, b                                       ; $537b: $40
    ccf                                           ; $537c: $3f
    jr nz, jr_012_539e                            ; $537d: $20 $1f

    db $10                                        ; $537f: $10
    rrca                                          ; $5380: $0f
    ld [$0407], sp                                ; $5381: $08 $07 $04
    rlca                                          ; $5384: $07
    inc b                                         ; $5385: $04
    dec bc                                        ; $5386: $0b
    inc c                                         ; $5387: $0c
    rra                                           ; $5388: $1f

jr_012_5389:
    rra                                           ; $5389: $1f
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
    ld [$9808], sp                                ; $5396: $08 $08 $98
    sbc b                                         ; $5399: $98
    add sp, $78                                   ; $539a: $e8 $78
    ld hl, sp+$08                                 ; $539c: $f8 $08

jr_012_539e:
    ld hl, sp+$08                                 ; $539e: $f8 $08
    ld hl, sp+$08                                 ; $53a0: $f8 $08
    ld hl, sp+$08                                 ; $53a2: $f8 $08
    ld hl, sp+$08                                 ; $53a4: $f8 $08
    ld hl, sp+$08                                 ; $53a6: $f8 $08
    ld hl, sp-$08                                 ; $53a8: $f8 $f8
    nop                                           ; $53aa: $00
    nop                                           ; $53ab: $00
    nop                                           ; $53ac: $00
    nop                                           ; $53ad: $00
    nop                                           ; $53ae: $00
    nop                                           ; $53af: $00
    ld bc, $0601                                  ; $53b0: $01 $01 $06
    rlca                                          ; $53b3: $07
    dec de                                        ; $53b4: $1b
    inc e                                         ; $53b5: $1c
    cpl                                           ; $53b6: $2f
    jr nc, @+$31                                  ; $53b7: $30 $2f

    jr nc, jr_012_53da                            ; $53b9: $30 $1f

    db $10                                        ; $53bb: $10
    rla                                           ; $53bc: $17
    jr jr_012_53ce                                ; $53bd: $18 $0f

    ld [$181f], sp                                ; $53bf: $08 $1f $18
    cpl                                           ; $53c2: $2f
    jr nc, @+$1d                                  ; $53c3: $30 $1b

jr_012_53c5:
    inc e                                         ; $53c5: $1c
    ld b, $07                                     ; $53c6: $06 $07
    ld bc, $0001                                  ; $53c8: $01 $01 $00
    nop                                           ; $53cb: $00
    nop                                           ; $53cc: $00
    nop                                           ; $53cd: $00

jr_012_53ce:
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    add b                                         ; $53d2: $80
    add b                                         ; $53d3: $80
    ld b, b                                       ; $53d4: $40
    ret nz                                        ; $53d5: $c0

    ret nz                                        ; $53d6: $c0

    ld b, b                                       ; $53d7: $40
    and b                                         ; $53d8: $a0
    ld h, b                                       ; $53d9: $60

jr_012_53da:
    db $ec                                        ; $53da: $ec
    inc l                                         ; $53db: $2c
    call nc, $f83c                                ; $53dc: $d4 $3c $f8
    ld [$18e8], sp                                ; $53df: $08 $e8 $18
    ldh a, [rNR10]                                ; $53e2: $f0 $10
    ret nc                                        ; $53e4: $d0

    jr nc, @-$1e                                  ; $53e5: $30 $e0

    jr nz, jr_012_5389                            ; $53e7: $20 $a0

    ldh [rLCDC], a                                ; $53e9: $e0 $40
    ld b, b                                       ; $53eb: $40
    nop                                           ; $53ec: $00
    nop                                           ; $53ed: $00
    nop                                           ; $53ee: $00
    nop                                           ; $53ef: $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    rrca                                          ; $53f2: $0f
    rrca                                          ; $53f3: $0f
    rrca                                          ; $53f4: $0f
    ld [$080f], sp                                ; $53f5: $08 $0f $08
    rrca                                          ; $53f8: $0f
    ld [$080f], sp                                ; $53f9: $08 $0f $08
    rrca                                          ; $53fc: $0f
    ld [$787f], sp                                ; $53fd: $08 $7f $78
    cpl                                           ; $5400: $2f
    jr nc, jr_012_541a                            ; $5401: $30 $17

    jr jr_012_5410                                ; $5403: $18 $0b

    inc c                                         ; $5405: $0c
    dec b                                         ; $5406: $05
    ld b, $02                                     ; $5407: $06 $02
    inc bc                                        ; $5409: $03
    ld bc, $0001                                  ; $540a: $01 $01 $00
    nop                                           ; $540d: $00
    nop                                           ; $540e: $00
    nop                                           ; $540f: $00

jr_012_5410:
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    ldh [$e0], a                                  ; $5412: $e0 $e0
    ldh [rNR41], a                                ; $5414: $e0 $20
    ldh [rNR41], a                                ; $5416: $e0 $20
    ldh [rNR41], a                                ; $5418: $e0 $20

jr_012_541a:
    ldh [rNR41], a                                ; $541a: $e0 $20
    ldh [rNR41], a                                ; $541c: $e0 $20
    db $fc                                        ; $541e: $fc
    inc a                                         ; $541f: $3c
    add sp, $18                                   ; $5420: $e8 $18
    ret nc                                        ; $5422: $d0

    jr nc, jr_012_53c5                            ; $5423: $30 $a0

    ld h, b                                       ; $5425: $60
    ld b, b                                       ; $5426: $40
    ret nz                                        ; $5427: $c0

    add b                                         ; $5428: $80
    add b                                         ; $5429: $80
    nop                                           ; $542a: $00
    nop                                           ; $542b: $00
    nop                                           ; $542c: $00
    nop                                           ; $542d: $00
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    ld bc, $0201                                  ; $5430: $01 $01 $02
    inc bc                                        ; $5433: $03
    dec b                                         ; $5434: $05
    ld b, $07                                     ; $5435: $06 $07
    inc b                                         ; $5437: $04
    dec bc                                        ; $5438: $0b
    inc c                                         ; $5439: $0c
    ld l, a                                       ; $543a: $6f
    ld l, b                                       ; $543b: $68
    ld d, a                                       ; $543c: $57
    ld a, b                                       ; $543d: $78
    ccf                                           ; $543e: $3f

jr_012_543f:
    jr nz, jr_012_5470                            ; $543f: $20 $2f

    jr nc, @+$21                                  ; $5441: $30 $1f

    db $10                                        ; $5443: $10
    rla                                           ; $5444: $17
    jr jr_012_5455                                ; $5445: $18 $0e

    add hl, bc                                    ; $5447: $09
    dec bc                                        ; $5448: $0b
    rrca                                          ; $5449: $0f
    inc b                                         ; $544a: $04

jr_012_544b:
    inc b                                         ; $544b: $04
    nop                                           ; $544c: $00
    nop                                           ; $544d: $00
    nop                                           ; $544e: $00
    nop                                           ; $544f: $00
    nop                                           ; $5450: $00

jr_012_5451:
    nop                                           ; $5451: $00
    ret nz                                        ; $5452: $c0

    ret nz                                        ; $5453: $c0

    or b                                          ; $5454: $b0

jr_012_5455:
    ld [hl], b                                    ; $5455: $70
    add sp, $18                                   ; $5456: $e8 $18
    add sp, $18                                   ; $5458: $e8 $18
    ldh a, [rNR10]                                ; $545a: $f0 $10
    ret nc                                        ; $545c: $d0

    jr nc, jr_012_543f                            ; $545d: $30 $e0

    jr nz, jr_012_5451                            ; $545f: $20 $f0

    jr nc, jr_012_544b                            ; $5461: $30 $e8

    jr @-$4e                                      ; $5463: $18 $b0

    ld [hl], b                                    ; $5465: $70
    ret nz                                        ; $5466: $c0

    ret nz                                        ; $5467: $c0

    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    nop                                           ; $546a: $00
    nop                                           ; $546b: $00
    nop                                           ; $546c: $00
    nop                                           ; $546d: $00
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00

jr_012_5470:
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    ld hl, $3321                                  ; $5476: $21 $21 $33
    ld [hl-], a                                   ; $5479: $32
    cpl                                           ; $547a: $2f
    inc a                                         ; $547b: $3c
    ccf                                           ; $547c: $3f
    jr nz, jr_012_54be                            ; $547d: $20 $3f

    jr nz, @+$41                                  ; $547f: $20 $3f

    jr nz, @+$41                                  ; $5481: $20 $3f

    jr nz, jr_012_54c4                            ; $5483: $20 $3f

    jr nz, @+$41                                  ; $5485: $20 $3f

    jr nz, @+$41                                  ; $5487: $20 $3f

    ccf                                           ; $5489: $3f
    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    nop                                           ; $548c: $00
    nop                                           ; $548d: $00
    nop                                           ; $548e: $00
    nop                                           ; $548f: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    ld b, b                                       ; $5492: $40
    ld b, b                                       ; $5493: $40
    ldh [$a0], a                                  ; $5494: $e0 $a0
    ldh a, [rNR10]                                ; $5496: $f0 $10
    ld hl, sp+$08                                 ; $5498: $f8 $08
    db $fc                                        ; $549a: $fc
    inc b                                         ; $549b: $04
    ld hl, sp+$08                                 ; $549c: $f8 $08
    ldh a, [rNR10]                                ; $549e: $f0 $10
    ldh [rNR41], a                                ; $54a0: $e0 $20
    ret nz                                        ; $54a2: $c0

    ld b, b                                       ; $54a3: $40
    ret nz                                        ; $54a4: $c0

    ld b, b                                       ; $54a5: $40
    and b                                         ; $54a6: $a0
    ld h, b                                       ; $54a7: $60
    ldh a, [$f0]                                  ; $54a8: $f0 $f0
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
    inc b                                         ; $54b4: $04
    inc b                                         ; $54b5: $04
    ld a, [bc]                                    ; $54b6: $0a
    ld c, $0f                                     ; $54b7: $0e $0f
    dec bc                                        ; $54b9: $0b
    rla                                           ; $54ba: $17
    jr jr_012_54dc                                ; $54bb: $18 $1f

    db $10                                        ; $54bd: $10

jr_012_54be:
    cpl                                           ; $54be: $2f
    jr nc, jr_012_5500                            ; $54bf: $30 $3f

    jr nz, jr_012_5522                            ; $54c1: $20 $5f

    ld h, b                                       ; $54c3: $60

jr_012_54c4:
    scf                                           ; $54c4: $37
    jr c, jr_012_54d4                             ; $54c5: $38 $0d

    ld c, $03                                     ; $54c7: $0e $03
    inc bc                                        ; $54c9: $03
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

jr_012_54d4:
    jr nc, jr_012_5506                            ; $54d4: $30 $30

    ret z                                         ; $54d6: $c8

    ld hl, sp+$78                                 ; $54d7: $f8 $78
    adc b                                         ; $54d9: $88
    db $f4                                        ; $54da: $f4
    inc c                                         ; $54db: $0c

jr_012_54dc:
    db $fc                                        ; $54dc: $fc
    inc b                                         ; $54dd: $04
    ld a, [$ec06]                                 ; $54de: $fa $06 $ec
    inc e                                         ; $54e1: $1c
    or b                                          ; $54e2: $b0
    ld [hl], b                                    ; $54e3: $70
    ld b, b                                       ; $54e4: $40
    ret nz                                        ; $54e5: $c0

    add b                                         ; $54e6: $80
    add b                                         ; $54e7: $80
    ld b, b                                       ; $54e8: $40
    ret nz                                        ; $54e9: $c0

    ret nz                                        ; $54ea: $c0

    ret nz                                        ; $54eb: $c0

    nop                                           ; $54ec: $00
    nop                                           ; $54ed: $00
    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    ld bc, $0301                                  ; $54f2: $01 $01 $03
    inc bc                                        ; $54f5: $03
    dec b                                         ; $54f6: $05
    rlca                                          ; $54f7: $07
    add hl, bc                                    ; $54f8: $09
    rrca                                          ; $54f9: $0f
    rla                                           ; $54fa: $17
    jr jr_012_552c                                ; $54fb: $18 $2f

    jr nc, jr_012_555e                            ; $54fd: $30 $5f

    ld h, b                                       ; $54ff: $60

jr_012_5500:
    cpl                                           ; $5500: $2f
    jr nc, jr_012_551a                            ; $5501: $30 $17

    jr jr_012_5510                                ; $5503: $18 $0b

    dec c                                         ; $5505: $0d

jr_012_5506:
    dec b                                         ; $5506: $05
    rlca                                          ; $5507: $07
    inc bc                                        ; $5508: $03
    inc bc                                        ; $5509: $03
    ld bc, $0001                                  ; $550a: $01 $01 $00
    nop                                           ; $550d: $00
    nop                                           ; $550e: $00
    nop                                           ; $550f: $00

jr_012_5510:
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    db $fc                                        ; $5518: $fc
    db $fc                                        ; $5519: $fc

jr_012_551a:
    db $f4                                        ; $551a: $f4
    inc c                                         ; $551b: $0c
    db $fc                                        ; $551c: $fc
    inc b                                         ; $551d: $04
    db $fc                                        ; $551e: $fc
    inc b                                         ; $551f: $04
    db $fc                                        ; $5520: $fc
    inc b                                         ; $5521: $04

jr_012_5522:
    db $fc                                        ; $5522: $fc
    inc b                                         ; $5523: $04
    db $fc                                        ; $5524: $fc
    db $fc                                        ; $5525: $fc
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    nop                                           ; $552b: $00

jr_012_552c:
    nop                                           ; $552c: $00
    nop                                           ; $552d: $00
    nop                                           ; $552e: $00
    nop                                           ; $552f: $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    inc bc                                        ; $5534: $03
    inc bc                                        ; $5535: $03
    dec c                                         ; $5536: $0d
    ld c, $37                                     ; $5537: $0e $37
    jr c, jr_012_559a                             ; $5539: $38 $5f

    ld h, b                                       ; $553b: $60
    ccf                                           ; $553c: $3f
    jr nz, jr_012_556e                            ; $553d: $20 $2f

    jr nc, @+$21                                  ; $553f: $30 $1f

    db $10                                        ; $5541: $10
    rla                                           ; $5542: $17
    jr jr_012_5554                                ; $5543: $18 $0f

    dec bc                                        ; $5545: $0b
    ld a, [bc]                                    ; $5546: $0a
    ld c, $04                                     ; $5547: $0e $04
    inc b                                         ; $5549: $04
    nop                                           ; $554a: $00
    nop                                           ; $554b: $00
    nop                                           ; $554c: $00
    nop                                           ; $554d: $00
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    ret nz                                        ; $5552: $c0

    ret nz                                        ; $5553: $c0

jr_012_5554:
    ld b, b                                       ; $5554: $40
    ret nz                                        ; $5555: $c0

    add b                                         ; $5556: $80
    add b                                         ; $5557: $80
    ld b, b                                       ; $5558: $40
    ret nz                                        ; $5559: $c0

    or b                                          ; $555a: $b0
    ld [hl], b                                    ; $555b: $70
    db $ec                                        ; $555c: $ec
    inc e                                         ; $555d: $1c

jr_012_555e:
    ld a, [$fc06]                                 ; $555e: $fa $06 $fc
    inc b                                         ; $5561: $04
    db $f4                                        ; $5562: $f4
    inc c                                         ; $5563: $0c
    ld a, b                                       ; $5564: $78
    adc b                                         ; $5565: $88
    ret z                                         ; $5566: $c8

    ld hl, sp+$30                                 ; $5567: $f8 $30
    jr nc, jr_012_556b                            ; $5569: $30 $00

jr_012_556b:
    nop                                           ; $556b: $00
    nop                                           ; $556c: $00
    nop                                           ; $556d: $00

jr_012_556e:
    nop                                           ; $556e: $00
    nop                                           ; $556f: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    ccf                                           ; $5574: $3f
    ccf                                           ; $5575: $3f
    ccf                                           ; $5576: $3f
    jr nz, jr_012_55b8                            ; $5577: $20 $3f

    jr nz, @+$41                                  ; $5579: $20 $3f

    jr nz, jr_012_55bc                            ; $557b: $20 $3f

    jr nz, @+$41                                  ; $557d: $20 $3f

    jr nz, @+$41                                  ; $557f: $20 $3f

    jr nz, jr_012_55b2                            ; $5581: $20 $2f

    inc a                                         ; $5583: $3c
    inc sp                                        ; $5584: $33
    ld [hl-], a                                   ; $5585: $32
    ld hl, $0021                                  ; $5586: $21 $21 $00
    nop                                           ; $5589: $00
    nop                                           ; $558a: $00
    nop                                           ; $558b: $00
    nop                                           ; $558c: $00
    nop                                           ; $558d: $00
    nop                                           ; $558e: $00
    nop                                           ; $558f: $00
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    ldh a, [$f0]                                  ; $5594: $f0 $f0
    and b                                         ; $5596: $a0
    ld h, b                                       ; $5597: $60
    ret nz                                        ; $5598: $c0

    ld b, b                                       ; $5599: $40

jr_012_559a:
    ret nz                                        ; $559a: $c0

    ld b, b                                       ; $559b: $40
    ldh [rNR41], a                                ; $559c: $e0 $20
    ldh a, [rNR10]                                ; $559e: $f0 $10
    ld hl, sp+$08                                 ; $55a0: $f8 $08
    db $fc                                        ; $55a2: $fc
    inc b                                         ; $55a3: $04
    ld hl, sp+$08                                 ; $55a4: $f8 $08
    ldh a, [rNR10]                                ; $55a6: $f0 $10
    ldh [$a0], a                                  ; $55a8: $e0 $a0
    ld b, b                                       ; $55aa: $40
    ld b, b                                       ; $55ab: $40
    nop                                           ; $55ac: $00
    nop                                           ; $55ad: $00
    nop                                           ; $55ae: $00
    nop                                           ; $55af: $00
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00

jr_012_55b2:
    inc b                                         ; $55b2: $04
    inc b                                         ; $55b3: $04
    dec bc                                        ; $55b4: $0b
    rrca                                          ; $55b5: $0f
    ld c, $09                                     ; $55b6: $0e $09

jr_012_55b8:
    rla                                           ; $55b8: $17
    jr jr_012_55da                                ; $55b9: $18 $1f

    db $10                                        ; $55bb: $10

jr_012_55bc:
    cpl                                           ; $55bc: $2f
    jr nc, @+$41                                  ; $55bd: $30 $3f

    jr nz, jr_012_5618                            ; $55bf: $20 $57

    ld a, b                                       ; $55c1: $78
    ld l, a                                       ; $55c2: $6f
    ld l, b                                       ; $55c3: $68
    dec bc                                        ; $55c4: $0b
    inc c                                         ; $55c5: $0c
    rlca                                          ; $55c6: $07
    inc b                                         ; $55c7: $04
    dec b                                         ; $55c8: $05
    ld b, $02                                     ; $55c9: $06 $02
    inc bc                                        ; $55cb: $03
    ld bc, $0001                                  ; $55cc: $01 $01 $00
    nop                                           ; $55cf: $00
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00

jr_012_55d3:
    nop                                           ; $55d3: $00
    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    ret nz                                        ; $55d6: $c0

    ret nz                                        ; $55d7: $c0

    or b                                          ; $55d8: $b0
    ld [hl], b                                    ; $55d9: $70

jr_012_55da:
    add sp, $18                                   ; $55da: $e8 $18
    ldh a, [$30]                                  ; $55dc: $f0 $30
    ldh [rNR41], a                                ; $55de: $e0 $20
    ret nc                                        ; $55e0: $d0

    jr nc, jr_012_55d3                            ; $55e1: $30 $f0

    db $10                                        ; $55e3: $10
    add sp, $18                                   ; $55e4: $e8 $18
    add sp, $18                                   ; $55e6: $e8 $18
    or b                                          ; $55e8: $b0
    ld [hl], b                                    ; $55e9: $70
    ret nz                                        ; $55ea: $c0

    ret nz                                        ; $55eb: $c0

    nop                                           ; $55ec: $00
    nop                                           ; $55ed: $00
    nop                                           ; $55ee: $00
    nop                                           ; $55ef: $00
    nop                                           ; $55f0: $00
    nop                                           ; $55f1: $00
    ld bc, $0201                                  ; $55f2: $01 $01 $02
    inc bc                                        ; $55f5: $03
    dec b                                         ; $55f6: $05
    ld b, $0b                                     ; $55f7: $06 $0b
    inc c                                         ; $55f9: $0c
    rla                                           ; $55fa: $17
    jr jr_012_562c                                ; $55fb: $18 $2f

    jr nc, @+$81                                  ; $55fd: $30 $7f

    ld a, b                                       ; $55ff: $78
    rrca                                          ; $5600: $0f
    ld [$080f], sp                                ; $5601: $08 $0f $08
    rrca                                          ; $5604: $0f

jr_012_5605:
    ld [$080f], sp                                ; $5605: $08 $0f $08
    rrca                                          ; $5608: $0f
    ld [$0f0f], sp                                ; $5609: $08 $0f $0f
    nop                                           ; $560c: $00
    nop                                           ; $560d: $00
    nop                                           ; $560e: $00
    nop                                           ; $560f: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    add b                                         ; $5614: $80
    add b                                         ; $5615: $80
    ld b, b                                       ; $5616: $40
    ret nz                                        ; $5617: $c0

jr_012_5618:
    and b                                         ; $5618: $a0
    ld h, b                                       ; $5619: $60
    ret nc                                        ; $561a: $d0

jr_012_561b:
    jr nc, jr_012_5605                            ; $561b: $30 $e8

    jr jr_012_561b                                ; $561d: $18 $fc

    inc a                                         ; $561f: $3c
    ldh [rNR41], a                                ; $5620: $e0 $20
    ldh [rNR41], a                                ; $5622: $e0 $20
    ldh [rNR41], a                                ; $5624: $e0 $20
    ldh [rNR41], a                                ; $5626: $e0 $20
    ldh [rNR41], a                                ; $5628: $e0 $20

Call_012_562a:
    ldh [$e0], a                                  ; $562a: $e0 $e0

jr_012_562c:
    nop                                           ; $562c: $00
    nop                                           ; $562d: $00
    nop                                           ; $562e: $00
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    ld bc, $0601                                  ; $5634: $01 $01 $06
    rlca                                          ; $5637: $07
    dec de                                        ; $5638: $1b
    inc e                                         ; $5639: $1c
    cpl                                           ; $563a: $2f
    jr nc, jr_012_565c                            ; $563b: $30 $1f

    jr @+$11                                      ; $563d: $18 $0f

    ld [$1817], sp                                ; $563f: $08 $17 $18
    rra                                           ; $5642: $1f
    db $10                                        ; $5643: $10
    cpl                                           ; $5644: $2f
    jr nc, jr_012_5676                            ; $5645: $30 $2f

    jr nc, jr_012_5664                            ; $5647: $30 $1b

    inc e                                         ; $5649: $1c
    ld b, $07                                     ; $564a: $06 $07
    ld bc, $0001                                  ; $564c: $01 $01 $00
    nop                                           ; $564f: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    ld b, b                                       ; $5652: $40
    ld b, b                                       ; $5653: $40
    and b                                         ; $5654: $a0
    ldh [$e0], a                                  ; $5655: $e0 $e0
    jr nz, @-$2e                                  ; $5657: $20 $d0

    jr nc, @-$0e                                  ; $5659: $30 $f0

    db $10                                        ; $565b: $10

jr_012_565c:
    add sp, $18                                   ; $565c: $e8 $18
    ld hl, sp+$08                                 ; $565e: $f8 $08
    call nc, $ec3c                                ; $5660: $d4 $3c $ec
    inc l                                         ; $5663: $2c

jr_012_5664:
    and b                                         ; $5664: $a0
    ld h, b                                       ; $5665: $60
    ret nz                                        ; $5666: $c0

    ld b, b                                       ; $5667: $40
    ld b, b                                       ; $5668: $40
    ret nz                                        ; $5669: $c0

    add b                                         ; $566a: $80
    add b                                         ; $566b: $80
    nop                                           ; $566c: $00
    nop                                           ; $566d: $00
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    rra                                           ; $5674: $1f
    rra                                           ; $5675: $1f

jr_012_5676:
    dec bc                                        ; $5676: $0b
    inc c                                         ; $5677: $0c
    rlca                                          ; $5678: $07
    inc b                                         ; $5679: $04
    rlca                                          ; $567a: $07
    inc b                                         ; $567b: $04
    rrca                                          ; $567c: $0f
    ld [$101f], sp                                ; $567d: $08 $1f $10
    ccf                                           ; $5680: $3f
    jr nz, jr_012_5702                            ; $5681: $20 $7f

    ld b, b                                       ; $5683: $40
    ccf                                           ; $5684: $3f
    jr nz, jr_012_56a6                            ; $5685: $20 $1f

    ld de, $0a0e                                  ; $5687: $11 $0e $0a
    inc b                                         ; $568a: $04
    inc b                                         ; $568b: $04
    nop                                           ; $568c: $00
    nop                                           ; $568d: $00
    nop                                           ; $568e: $00
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    ld hl, sp-$08                                 ; $5694: $f8 $f8
    ld hl, sp+$08                                 ; $5696: $f8 $08
    ld hl, sp+$08                                 ; $5698: $f8 $08
    ld hl, sp+$08                                 ; $569a: $f8 $08
    ld hl, sp+$08                                 ; $569c: $f8 $08
    ld hl, sp+$08                                 ; $569e: $f8 $08
    ld hl, sp+$08                                 ; $56a0: $f8 $08
    add sp, $78                                   ; $56a2: $e8 $78
    sbc b                                         ; $56a4: $98
    sbc b                                         ; $56a5: $98

jr_012_56a6:
    ld [$0008], sp                                ; $56a6: $08 $08 $00
    nop                                           ; $56a9: $00
    nop                                           ; $56aa: $00
    nop                                           ; $56ab: $00
    nop                                           ; $56ac: $00
    nop                                           ; $56ad: $00
    nop                                           ; $56ae: $00
    nop                                           ; $56af: $00
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    ld b, $06                                     ; $56b2: $06 $06
    dec b                                         ; $56b4: $05
    rlca                                          ; $56b5: $07
    inc bc                                        ; $56b6: $03
    ld [bc], a                                    ; $56b7: $02
    dec b                                         ; $56b8: $05
    ld b, $1b                                     ; $56b9: $06 $1b
    inc e                                         ; $56bb: $1c
    ld l, a                                       ; $56bc: $6f
    ld [hl], b                                    ; $56bd: $70
    cp a                                          ; $56be: $bf
    ret nz                                        ; $56bf: $c0

    ld a, a                                       ; $56c0: $7f
    ld b, b                                       ; $56c1: $40
    ld e, a                                       ; $56c2: $5f
    ld h, b                                       ; $56c3: $60
    dec a                                         ; $56c4: $3d

jr_012_56c5:
    inc hl                                        ; $56c5: $23
    ld h, $3e                                     ; $56c6: $26 $3e
    jr jr_012_56e2                                ; $56c8: $18 $18

    nop                                           ; $56ca: $00
    nop                                           ; $56cb: $00
    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    nop                                           ; $56ce: $00

jr_012_56cf:
    nop                                           ; $56cf: $00
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    nop                                           ; $56d2: $00
    nop                                           ; $56d3: $00
    add b                                         ; $56d4: $80
    add b                                         ; $56d5: $80
    ld h, b                                       ; $56d6: $60
    ldh [$d8], a                                  ; $56d7: $e0 $d8
    jr c, jr_012_56cf                             ; $56d9: $38 $f4

    inc c                                         ; $56db: $0c
    ld hl, sp+$08                                 ; $56dc: $f8 $08
    add sp, $18                                   ; $56de: $e8 $18
    ldh a, [rNR10]                                ; $56e0: $f0 $10

jr_012_56e2:
    ret nc                                        ; $56e2: $d0

    jr nc, jr_012_56c5                            ; $56e3: $30 $e0

    and b                                         ; $56e5: $a0
    and b                                         ; $56e6: $a0
    ldh [rLCDC], a                                ; $56e7: $e0 $40
    ld b, b                                       ; $56e9: $40
    nop                                           ; $56ea: $00
    nop                                           ; $56eb: $00
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

jr_012_5702:
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
    inc e                                         ; $5730: $1c
    inc e                                         ; $5731: $1c
    rra                                           ; $5732: $1f
    rra                                           ; $5733: $1f
    inc e                                         ; $5734: $1c
    rra                                           ; $5735: $1f
    inc l                                         ; $5736: $2c
    ccf                                           ; $5737: $3f

jr_012_5738:
    ld b, b                                       ; $5738: $40
    ld a, a                                       ; $5739: $7f
    ld a, a                                       ; $573a: $7f
    ld a, a                                       ; $573b: $7f
    ld [hl], e                                    ; $573c: $73
    ld a, a                                       ; $573d: $7f
    ld d, d                                       ; $573e: $52
    ld l, l                                       ; $573f: $6d
    ld [hl], e                                    ; $5740: $73
    ld e, [hl]                                    ; $5741: $5e
    ld [hl], e                                    ; $5742: $73
    ld e, [hl]                                    ; $5743: $5e
    adc b                                         ; $5744: $88
    rst $38                                       ; $5745: $ff
    add b                                         ; $5746: $80
    rst $38                                       ; $5747: $ff
    ld c, h                                       ; $5748: $4c
    ld a, a                                       ; $5749: $7f
    jr nz, jr_012_578b                            ; $574a: $20 $3f

    add hl, de                                    ; $574c: $19
    rra                                           ; $574d: $1f
    ld b, $06                                     ; $574e: $06 $06
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    ret nz                                        ; $5754: $c0

    ret nz                                        ; $5755: $c0

    jr nz, jr_012_5738                            ; $5756: $20 $e0

    db $10                                        ; $5758: $10
    ldh a, [rNR10]                                ; $5759: $f0 $10
    ldh a, [$c8]                                  ; $575b: $f0 $c8
    ld hl, sp+$68                                 ; $575d: $f8 $68
    ld hl, sp+$34                                 ; $575f: $f8 $34
    db $fc                                        ; $5761: $fc
    inc a                                         ; $5762: $3c
    db $fc                                        ; $5763: $fc
    ld c, h                                       ; $5764: $4c
    db $fc                                        ; $5765: $fc
    inc l                                         ; $5766: $2c
    db $fc                                        ; $5767: $fc
    inc e                                         ; $5768: $1c
    db $fc                                        ; $5769: $fc
    ld a, b                                       ; $576a: $78
    ld hl, sp-$10                                 ; $576b: $f8 $f0
    ldh a, [rP1]                                  ; $576d: $f0 $00
    nop                                           ; $576f: $00
    jr nc, jr_012_57a2                            ; $5770: $30 $30

    ld c, a                                       ; $5772: $4f
    ld a, a                                       ; $5773: $7f
    sub h                                         ; $5774: $94
    rst $38                                       ; $5775: $ff
    cp a                                          ; $5776: $bf
    rst $38                                       ; $5777: $ff
    ld a, a                                       ; $5778: $7f
    ld h, b                                       ; $5779: $60
    ld a, a                                       ; $577a: $7f
    ld b, b                                       ; $577b: $40
    ld a, a                                       ; $577c: $7f
    ld [hl], e                                    ; $577d: $73
    ld a, a                                       ; $577e: $7f
    ld d, d                                       ; $577f: $52
    ld l, l                                       ; $5780: $6d
    ld d, d                                       ; $5781: $52
    rst $38                                       ; $5782: $ff
    adc b                                         ; $5783: $88
    rst $38                                       ; $5784: $ff
    add b                                         ; $5785: $80
    ld a, a                                       ; $5786: $7f
    ld b, [hl]                                    ; $5787: $46
    ccf                                           ; $5788: $3f
    jr nz, jr_012_57aa                            ; $5789: $20 $1f

jr_012_578b:
    add hl, de                                    ; $578b: $19
    ld b, $06                                     ; $578c: $06 $06
    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    ld [$9608], sp                                ; $5790: $08 $08 $96
    sbc [hl]                                      ; $5793: $9e
    ld h, d                                       ; $5794: $62
    cp $a1                                        ; $5795: $fe $a1
    rst $38                                       ; $5797: $ff
    and c                                         ; $5798: $a1
    rst $38                                       ; $5799: $ff
    sbc $7e                                       ; $579a: $de $7e
    ret z                                         ; $579c: $c8

    ld a, b                                       ; $579d: $78
    ld hl, sp-$48                                 ; $579e: $f8 $b8
    db $fc                                        ; $57a0: $fc
    and h                                         ; $57a1: $a4

jr_012_57a2:
    db $fc                                        ; $57a2: $fc
    inc d                                         ; $57a3: $14
    ld hl, sp+$08                                 ; $57a4: $f8 $08
    ldh a, [$30]                                  ; $57a6: $f0 $30
    ret nz                                        ; $57a8: $c0

    ld b, b                                       ; $57a9: $40

jr_012_57aa:
    add b                                         ; $57aa: $80
    add b                                         ; $57ab: $80
    nop                                           ; $57ac: $00
    nop                                           ; $57ad: $00
    nop                                           ; $57ae: $00
    nop                                           ; $57af: $00
    rlca                                          ; $57b0: $07
    rlca                                          ; $57b1: $07
    ld [$1f0f], sp                                ; $57b2: $08 $0f $1f
    rra                                           ; $57b5: $1f
    ccf                                           ; $57b6: $3f
    jr nz, jr_012_57f8                            ; $57b7: $20 $3f

    jr nz, jr_012_57fa                            ; $57b9: $20 $3f

    ccf                                           ; $57bb: $3f
    ld a, a                                       ; $57bc: $7f
    ld b, b                                       ; $57bd: $40
    rst $38                                       ; $57be: $ff
    cp a                                          ; $57bf: $bf
    rst $38                                       ; $57c0: $ff
    pop af                                        ; $57c1: $f1
    xor [hl]                                      ; $57c2: $ae
    pop af                                        ; $57c3: $f1
    cp a                                          ; $57c4: $bf
    add sp, -$41                                  ; $57c5: $e8 $bf
    ldh [$5f], a                                  ; $57c7: $e0 $5f
    ld [hl], h                                    ; $57c9: $74
    ccf                                           ; $57ca: $3f
    jr c, @+$09                                   ; $57cb: $38 $07

    rlca                                          ; $57cd: $07
    nop                                           ; $57ce: $00
    nop                                           ; $57cf: $00
    add b                                         ; $57d0: $80
    add b                                         ; $57d1: $80
    ld h, b                                       ; $57d2: $60
    ldh [$90], a                                  ; $57d3: $e0 $90
    ldh a, [$c8]                                  ; $57d5: $f0 $c8
    ld a, b                                       ; $57d7: $78
    add sp, $38                                   ; $57d8: $e8 $38
    ld hl, sp-$48                                 ; $57da: $f8 $b8
    db $fd                                        ; $57dc: $fd
    ld h, l                                       ; $57dd: $65
    ei                                            ; $57de: $fb
    ccf                                           ; $57df: $3f
    pop af                                        ; $57e0: $f1
    rst $38                                       ; $57e1: $ff
    reti                                          ; $57e2: $d9


    cpl                                           ; $57e3: $2f
    ld a, [$f20e]                                 ; $57e4: $fa $0e $f2
    ld a, $cc                                     ; $57e7: $3e $cc
    ld a, h                                       ; $57e9: $7c
    ldh a, [$f0]                                  ; $57ea: $f0 $f0
    nop                                           ; $57ec: $00
    nop                                           ; $57ed: $00
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    inc c                                         ; $57f0: $0c
    inc c                                         ; $57f1: $0c
    inc de                                        ; $57f2: $13
    rra                                           ; $57f3: $1f
    jr nz, jr_012_5835                            ; $57f4: $20 $3f

    inc sp                                        ; $57f6: $33
    ccf                                           ; $57f7: $3f

jr_012_57f8:
    ccf                                           ; $57f8: $3f
    inc l                                         ; $57f9: $2c

jr_012_57fa:
    ld a, a                                       ; $57fa: $7f
    ld b, b                                       ; $57fb: $40
    ld e, c                                       ; $57fc: $59
    ld h, [hl]                                    ; $57fd: $66
    rst $38                                       ; $57fe: $ff
    rst $38                                       ; $57ff: $ff
    rst $38                                       ; $5800: $ff
    rst $38                                       ; $5801: $ff
    ld a, a                                       ; $5802: $7f
    ld h, [hl]                                    ; $5803: $66
    ld a, a                                       ; $5804: $7f
    ld d, b                                       ; $5805: $50
    ld a, a                                       ; $5806: $7f
    ld b, b                                       ; $5807: $40
    ccf                                           ; $5808: $3f
    inc l                                         ; $5809: $2c
    ccf                                           ; $580a: $3f
    jr nz, jr_012_582c                            ; $580b: $20 $1f

    ld de, $0e0e                                  ; $580d: $11 $0e $0e
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    add b                                         ; $5812: $80
    add b                                         ; $5813: $80
    ld b, b                                       ; $5814: $40
    ret nz                                        ; $5815: $c0

    jr nz, jr_012_57f8                            ; $5816: $20 $e0

    sub b                                         ; $5818: $90
    ldh a, [$90]                                  ; $5819: $f0 $90
    ldh a, [$d0]                                  ; $581b: $f0 $d0
    ld [hl], b                                    ; $581d: $70
    ret nc                                        ; $581e: $d0

    ldh a, [$f0]                                  ; $581f: $f0 $f0
    ld [hl], b                                    ; $5821: $70
    ld hl, sp+$48                                 ; $5822: $f8 $48
    ld hl, sp+$28                                 ; $5824: $f8 $28
    ld hl, sp+$18                                 ; $5826: $f8 $18
    db $f4                                        ; $5828: $f4
    ld a, h                                       ; $5829: $7c
    db $e4                                        ; $582a: $e4
    db $fc                                        ; $582b: $fc

jr_012_582c:
    inc e                                         ; $582c: $1c
    inc e                                         ; $582d: $1c
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
    rra                                           ; $5830: $1f
    rra                                           ; $5831: $1f
    ld h, b                                       ; $5832: $60
    ld a, a                                       ; $5833: $7f
    add b                                         ; $5834: $80

jr_012_5835:
    rst $38                                       ; $5835: $ff
    add a                                         ; $5836: $87
    rst $38                                       ; $5837: $ff
    ld h, a                                       ; $5838: $67
    ld a, h                                       ; $5839: $7c
    ld a, a                                       ; $583a: $7f
    ld e, b                                       ; $583b: $58
    ld a, a                                       ; $583c: $7f
    ld a, [hl]                                    ; $583d: $7e
    rst $38                                       ; $583e: $ff
    push de                                       ; $583f: $d5
    rst $38                                       ; $5840: $ff
    xor c                                         ; $5841: $a9
    ld a, a                                       ; $5842: $7f
    ld c, [hl]                                    ; $5843: $4e
    ld a, a                                       ; $5844: $7f
    ld c, b                                       ; $5845: $48
    ccf                                           ; $5846: $3f
    jr nc, @+$41                                  ; $5847: $30 $3f

    inc l                                         ; $5849: $2c
    rra                                           ; $584a: $1f
    db $10                                        ; $584b: $10
    rrca                                          ; $584c: $0f
    add hl, bc                                    ; $584d: $09
    ld b, $06                                     ; $584e: $06 $06
    add b                                         ; $5850: $80
    add b                                         ; $5851: $80
    ld h, b                                       ; $5852: $60
    ldh [rNR10], a                                ; $5853: $e0 $10
    ldh a, [$08]                                  ; $5855: $f0 $08
    ld hl, sp-$78                                 ; $5857: $f8 $88
    ld hl, sp-$70                                 ; $5859: $f8 $90
    ldh a, [$d0]                                  ; $585b: $f0 $d0
    ld [hl], b                                    ; $585d: $70
    ldh a, [$f0]                                  ; $585e: $f0 $f0
    ld hl, sp+$48                                 ; $5860: $f8 $48
    ld hl, sp+$28                                 ; $5862: $f8 $28
    ldh a, [rNR10]                                ; $5864: $f0 $10
    ldh [$60], a                                  ; $5866: $e0 $60
    add b                                         ; $5868: $80
    add b                                         ; $5869: $80
    add b                                         ; $586a: $80
    add b                                         ; $586b: $80
    nop                                           ; $586c: $00
    nop                                           ; $586d: $00
    nop                                           ; $586e: $00
    nop                                           ; $586f: $00
    rlca                                          ; $5870: $07
    rlca                                          ; $5871: $07
    jr @+$21                                      ; $5872: $18 $1f

    jr nz, jr_012_58b5                            ; $5874: $20 $3f

    ld b, b                                       ; $5876: $40
    ld a, a                                       ; $5877: $7f
    ld d, b                                       ; $5878: $50
    ld a, a                                       ; $5879: $7f
    sbc b                                         ; $587a: $98
    rst $38                                       ; $587b: $ff
    cp h                                          ; $587c: $bc
    rst $20                                       ; $587d: $e7
    ld a, [hl]                                    ; $587e: $7e
    ld [hl], e                                    ; $587f: $73
    ld a, [hl]                                    ; $5880: $7e
    ld d, e                                       ; $5881: $53
    cpl                                           ; $5882: $2f
    ld sp, $293f                                  ; $5883: $31 $3f $29
    ccf                                           ; $5886: $3f
    jr nz, @+$21                                  ; $5887: $20 $1f

    inc d                                         ; $5889: $14
    rrca                                          ; $588a: $0f
    add hl, bc                                    ; $588b: $09
    ld b, $06                                     ; $588c: $06 $06
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    ret nz                                        ; $5890: $c0

    ret nz                                        ; $5891: $c0

    jr nc, @-$0e                                  ; $5892: $30 $f0

    ld [$04f8], sp                                ; $5894: $08 $f8 $04
    db $fc                                        ; $5897: $fc
    inc b                                         ; $5898: $04
    db $fc                                        ; $5899: $fc
    ld [bc], a                                    ; $589a: $02
    cp $02                                        ; $589b: $fe $02
    cp $02                                        ; $589d: $fe $02
    cp $0a                                        ; $589f: $fe $0a
    cp $1c                                        ; $58a1: $fe $1c
    db $f4                                        ; $58a3: $f4
    inc e                                         ; $58a4: $1c
    db $f4                                        ; $58a5: $f4
    cp b                                          ; $58a6: $b8
    add sp, -$4c                                  ; $58a7: $e8 $b4
    db $fc                                        ; $58a9: $fc
    ret z                                         ; $58aa: $c8

    ret z                                         ; $58ab: $c8

    add b                                         ; $58ac: $80
    add b                                         ; $58ad: $80
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    nop                                           ; $58b2: $00
    nop                                           ; $58b3: $00
    rlca                                          ; $58b4: $07

jr_012_58b5:
    rlca                                          ; $58b5: $07
    jr jr_012_58d7                                ; $58b6: $18 $1f

    jr nz, jr_012_58f9                            ; $58b8: $20 $3f

    ld [hl], $3f                                  ; $58ba: $36 $3f
    halt                                          ; $58bc: $76
    ld c, c                                       ; $58bd: $49
    halt                                          ; $58be: $76
    ld e, l                                       ; $58bf: $5d
    sub b                                         ; $58c0: $90
    rst $38                                       ; $58c1: $ff
    xor b                                         ; $58c2: $a8
    rst $38                                       ; $58c3: $ff
    sub b                                         ; $58c4: $90
    rst $38                                       ; $58c5: $ff
    add c                                         ; $58c6: $81
    rst $38                                       ; $58c7: $ff
    and $ff                                       ; $58c8: $e6 $ff
    sbc b                                         ; $58ca: $98
    rst $38                                       ; $58cb: $ff
    ld b, c                                       ; $58cc: $41
    ld a, a                                       ; $58cd: $7f
    ld a, $3e                                     ; $58ce: $3e $3e
    jr @+$1a                                      ; $58d0: $18 $18

    inc e                                         ; $58d2: $1c
    inc e                                         ; $58d3: $1c
    db $fc                                        ; $58d4: $fc
    db $ec                                        ; $58d5: $ec
    ld [hl], b                                    ; $58d6: $70

jr_012_58d7:
    ldh a, [$30]                                  ; $58d7: $f0 $30
    ldh a, [rNR10]                                ; $58d9: $f0 $10
    ldh a, [$08]                                  ; $58db: $f0 $08
    ld hl, sp+$08                                 ; $58dd: $f8 $08
    ld hl, sp+$08                                 ; $58df: $f8 $08
    ld hl, sp+$38                                 ; $58e1: $f8 $38
    ld hl, sp+$48                                 ; $58e3: $f8 $48
    ld hl, sp+$28                                 ; $58e5: $f8 $28
    ld hl, sp+$08                                 ; $58e7: $f8 $08
    ld hl, sp+$70                                 ; $58e9: $f8 $70
    ldh a, [$80]                                  ; $58eb: $f0 $80
    add b                                         ; $58ed: $80
    nop                                           ; $58ee: $00
    nop                                           ; $58ef: $00
    rlca                                          ; $58f0: $07
    rlca                                          ; $58f1: $07
    jr jr_012_5913                                ; $58f2: $18 $1f

    jr nz, @+$41                                  ; $58f4: $20 $3f

    jr nz, jr_012_5937                            ; $58f6: $20 $3f

    ld [hl], b                                    ; $58f8: $70

jr_012_58f9:
    ld a, a                                       ; $58f9: $7f
    cp a                                          ; $58fa: $bf
    rst $28                                       ; $58fb: $ef
    cp a                                          ; $58fc: $bf
    ldh a, [$8f]                                  ; $58fd: $f0 $8f
    rst $38                                       ; $58ff: $ff
    ld b, b                                       ; $5900: $40
    ld a, a                                       ; $5901: $7f
    ccf                                           ; $5902: $3f
    ccf                                           ; $5903: $3f
    ccf                                           ; $5904: $3f
    jr nc, jr_012_5926                            ; $5905: $30 $1f

    inc d                                         ; $5907: $14
    rra                                           ; $5908: $1f
    db $10                                        ; $5909: $10
    rrca                                          ; $590a: $0f
    dec bc                                        ; $590b: $0b
    rlca                                          ; $590c: $07
    inc b                                         ; $590d: $04
    inc bc                                        ; $590e: $03
    inc bc                                        ; $590f: $03
    ldh [$e0], a                                  ; $5910: $e0 $e0
    db $10                                        ; $5912: $10

jr_012_5913:
    ldh a, [$08]                                  ; $5913: $f0 $08
    ld hl, sp+$1e                                 ; $5915: $f8 $1e
    cp $f9                                        ; $5917: $fe $f9
    rst $28                                       ; $5919: $ef
    pop af                                        ; $591a: $f1
    rra                                           ; $591b: $1f
    ld [c], a                                     ; $591c: $e2
    cp $1c                                        ; $591d: $fe $1c
    db $fc                                        ; $591f: $fc
    db $fc                                        ; $5920: $fc
    db $f4                                        ; $5921: $f4
    cp h                                          ; $5922: $bc
    call nc, $847c                                ; $5923: $d4 $7c $84

jr_012_5926:
    ld hl, sp+$18                                 ; $5926: $f8 $18
    ldh a, [rNR10]                                ; $5928: $f0 $10
    ldh [rNR41], a                                ; $592a: $e0 $20
    ret nz                                        ; $592c: $c0

    ld b, b                                       ; $592d: $40
    add b                                         ; $592e: $80
    add b                                         ; $592f: $80
    rlca                                          ; $5930: $07
    rlca                                          ; $5931: $07
    ld c, $0b                                     ; $5932: $0e $0b
    ld a, $3f                                     ; $5934: $3e $3f
    ld b, e                                       ; $5936: $43

jr_012_5937:
    ld a, a                                       ; $5937: $7f
    ld a, h                                       ; $5938: $7c
    ld a, a                                       ; $5939: $7f
    ccf                                           ; $593a: $3f
    inc hl                                        ; $593b: $23
    ccf                                           ; $593c: $3f
    dec [hl]                                      ; $593d: $35
    ld a, a                                       ; $593e: $7f
    ld [hl], h                                    ; $593f: $74
    rst $38                                       ; $5940: $ff
    add b                                         ; $5941: $80
    rst $38                                       ; $5942: $ff
    add a                                         ; $5943: $87
    ld a, a                                       ; $5944: $7f
    ld a, [hl]                                    ; $5945: $7e
    ld a, a                                       ; $5946: $7f
    ld a, h                                       ; $5947: $7c
    ccf                                           ; $5948: $3f
    jr nz, jr_012_596a                            ; $5949: $20 $1f

    add hl, de                                    ; $594b: $19
    ld b, $06                                     ; $594c: $06 $06
    nop                                           ; $594e: $00
    nop                                           ; $594f: $00
    add b                                         ; $5950: $80
    add b                                         ; $5951: $80
    ld h, b                                       ; $5952: $60
    ldh [$90], a                                  ; $5953: $e0 $90
    ldh a, [$88]                                  ; $5955: $f0 $88
    ld hl, sp+$44                                 ; $5957: $f8 $44
    db $fc                                        ; $5959: $fc
    call nz, $f4fc                                ; $595a: $c4 $fc $f4
    inc a                                         ; $595d: $3c
    ld hl, sp+$78                                 ; $595e: $f8 $78
    db $fc                                        ; $5960: $fc
    db $e4                                        ; $5961: $e4
    db $fc                                        ; $5962: $fc
    ld d, h                                       ; $5963: $54
    db $fc                                        ; $5964: $fc
    inc b                                         ; $5965: $04
    ld hl, sp+$08                                 ; $5966: $f8 $08
    ld hl, sp+$78                                 ; $5968: $f8 $78

jr_012_596a:
    ldh a, [$f0]                                  ; $596a: $f0 $f0
    nop                                           ; $596c: $00
    nop                                           ; $596d: $00
    nop                                           ; $596e: $00
    nop                                           ; $596f: $00
    rrca                                          ; $5970: $0f
    rrca                                          ; $5971: $0f
    inc e                                         ; $5972: $1c
    rla                                           ; $5973: $17
    ld a, $3f                                     ; $5974: $3e $3f
    ld b, c                                       ; $5976: $41
    ld a, a                                       ; $5977: $7f
    ld a, a                                       ; $5978: $7f
    ld a, a                                       ; $5979: $7f
    ccf                                           ; $597a: $3f
    ld [hl+], a                                   ; $597b: $22
    ccf                                           ; $597c: $3f
    inc [hl]                                      ; $597d: $34
    ccf                                           ; $597e: $3f
    inc [hl]                                      ; $597f: $34
    ld a, a                                       ; $5980: $7f
    ld b, b                                       ; $5981: $40
    rst $38                                       ; $5982: $ff
    add d                                         ; $5983: $82
    rst $38                                       ; $5984: $ff
    adc [hl]                                      ; $5985: $8e
    ld a, a                                       ; $5986: $7f
    ld a, [hl]                                    ; $5987: $7e
    ccf                                           ; $5988: $3f
    inc a                                         ; $5989: $3c
    rra                                           ; $598a: $1f
    db $10                                        ; $598b: $10
    rrca                                          ; $598c: $0f
    ld [$0707], sp                                ; $598d: $08 $07 $07
    add b                                         ; $5990: $80
    add b                                         ; $5991: $80
    ld h, b                                       ; $5992: $60
    ldh [$90], a                                  ; $5993: $e0 $90
    ldh a, [$08]                                  ; $5995: $f0 $08
    ld hl, sp-$78                                 ; $5997: $f8 $88
    ld hl, sp-$18                                 ; $5999: $f8 $e8
    ld a, b                                       ; $599b: $78
    ld hl, sp+$78                                 ; $599c: $f8 $78
    ld hl, sp-$38                                 ; $599e: $f8 $c8
    ld hl, sp-$58                                 ; $59a0: $f8 $a8
    ld hl, sp+$08                                 ; $59a2: $f8 $08
    ldh a, [rNR10]                                ; $59a4: $f0 $10
    ldh [$60], a                                  ; $59a6: $e0 $60
    ret nz                                        ; $59a8: $c0

    ld b, b                                       ; $59a9: $40
    ldh [$e0], a                                  ; $59aa: $e0 $e0
    ret nz                                        ; $59ac: $c0

    ret nz                                        ; $59ad: $c0

    nop                                           ; $59ae: $00
    nop                                           ; $59af: $00
    rra                                           ; $59b0: $1f
    rra                                           ; $59b1: $1f
    inc h                                         ; $59b2: $24
    dec sp                                        ; $59b3: $3b
    ld c, [hl]                                    ; $59b4: $4e
    ld [hl], c                                    ; $59b5: $71
    ld e, a                                       ; $59b6: $5f
    ld a, a                                       ; $59b7: $7f
    ld h, b                                       ; $59b8: $60
    ld a, a                                       ; $59b9: $7f
    sbc a                                         ; $59ba: $9f
    rst $38                                       ; $59bb: $ff
    rst $38                                       ; $59bc: $ff
    di                                            ; $59bd: $f3
    ld a, a                                       ; $59be: $7f
    ld e, [hl]                                    ; $59bf: $5e
    ld [hl], e                                    ; $59c0: $73
    ld e, [hl]                                    ; $59c1: $5e
    jp hl                                         ; $59c2: $e9


    rst $30                                       ; $59c3: $f7
    ld [hl], e                                    ; $59c4: $73
    ld a, a                                       ; $59c5: $7f
    rst $38                                       ; $59c6: $ff
    cp a                                          ; $59c7: $bf
    rst $38                                       ; $59c8: $ff
    or e                                          ; $59c9: $b3
    ld a, a                                       ; $59ca: $7f
    ld b, b                                       ; $59cb: $40
    ccf                                           ; $59cc: $3f
    inc h                                         ; $59cd: $24

jr_012_59ce:
    ccf                                           ; $59ce: $3f
    ccf                                           ; $59cf: $3f
    add b                                         ; $59d0: $80
    add b                                         ; $59d1: $80
    ld b, b                                       ; $59d2: $40
    ret nz                                        ; $59d3: $c0

    jr c, jr_012_59ce                             ; $59d4: $38 $f8

    inc d                                         ; $59d6: $14
    db $fc                                        ; $59d7: $fc
    rst $00                                       ; $59d8: $c7
    rst $38                                       ; $59d9: $ff
    rst $20                                       ; $59da: $e7
    db $fd                                        ; $59db: $fd
    rst $38                                       ; $59dc: $ff
    cp c                                          ; $59dd: $b9
    rst $28                                       ; $59de: $ef
    cp l                                          ; $59df: $bd
    rst $38                                       ; $59e0: $ff
    ld de, $7afe                                  ; $59e1: $11 $fe $7a
    cp $f2                                        ; $59e4: $fe $f2
    db $fc                                        ; $59e6: $fc
    call z, $88f8                                 ; $59e7: $cc $f8 $88
    ldh a, [rNR10]                                ; $59ea: $f0 $10
    ldh [$60], a                                  ; $59ec: $e0 $60
    add b                                         ; $59ee: $80
    add b                                         ; $59ef: $80
    rlca                                          ; $59f0: $07
    rlca                                          ; $59f1: $07
    jr jr_012_5a13                                ; $59f2: $18 $1f

    jr nz, @+$41                                  ; $59f4: $20 $3f

    ld c, b                                       ; $59f6: $48
    ld a, a                                       ; $59f7: $7f
    sub e                                         ; $59f8: $93
    rst $38                                       ; $59f9: $ff
    and a                                         ; $59fa: $a7
    db $fc                                        ; $59fb: $fc
    xor a                                         ; $59fc: $af
    ld hl, sp-$41                                 ; $59fd: $f8 $bf
    di                                            ; $59ff: $f3
    cp a                                          ; $5a00: $bf
    ld a, [c]                                     ; $5a01: $f2
    ld l, l                                       ; $5a02: $6d
    ld d, d                                       ; $5a03: $52
    ld a, a                                       ; $5a04: $7f
    ld c, b                                       ; $5a05: $48
    ld a, a                                       ; $5a06: $7f
    ld b, b                                       ; $5a07: $40
    ccf                                           ; $5a08: $3f
    inc h                                         ; $5a09: $24
    rra                                           ; $5a0a: $1f
    ld de, $0e0e                                  ; $5a0b: $11 $0e $0e
    nop                                           ; $5a0e: $00
    nop                                           ; $5a0f: $00
    sbc h                                         ; $5a10: $9c
    sbc h                                         ; $5a11: $9c
    ld h, d                                       ; $5a12: $62

jr_012_5a13:
    cp $12                                        ; $5a13: $fe $12
    cp $91                                        ; $5a15: $fe $91
    rst $38                                       ; $5a17: $ff
    add hl, bc                                    ; $5a18: $09
    rst $38                                       ; $5a19: $ff
    adc c                                         ; $5a1a: $89
    rst $38                                       ; $5a1b: $ff
    ret                                           ; $5a1c: $c9


    ld a, a                                       ; $5a1d: $7f
    reti                                          ; $5a1e: $d9


    ld a, a                                       ; $5a1f: $7f
    db $fd                                        ; $5a20: $fd
    and a                                         ; $5a21: $a7
    db $dd                                        ; $5a22: $dd
    scf                                           ; $5a23: $37
    cp $06                                        ; $5a24: $fe $06
    ld a, [$cc3e]                                 ; $5a26: $fa $3e $cc
    ld c, h                                       ; $5a29: $4c
    adc h                                         ; $5a2a: $8c
    adc h                                         ; $5a2b: $8c
    ld [$0008], sp                                ; $5a2c: $08 $08 $00
    nop                                           ; $5a2f: $00
    rrca                                          ; $5a30: $0f
    rrca                                          ; $5a31: $0f
    db $10                                        ; $5a32: $10
    rra                                           ; $5a33: $1f
    jr nz, jr_012_5a75                            ; $5a34: $20 $3f

    ld d, e                                       ; $5a36: $53
    ld a, a                                       ; $5a37: $7f
    ld a, a                                       ; $5a38: $7f
    ld l, h                                       ; $5a39: $6c
    ld a, a                                       ; $5a3a: $7f
    ld h, b                                       ; $5a3b: $60
    ld a, a                                       ; $5a3c: $7f
    ld e, c                                       ; $5a3d: $59
    ld a, a                                       ; $5a3e: $7f
    ld l, c                                       ; $5a3f: $69
    halt                                          ; $5a40: $76
    ld c, c                                       ; $5a41: $49
    ld a, a                                       ; $5a42: $7f
    ld b, b                                       ; $5a43: $40

jr_012_5a44:
    ld a, a                                       ; $5a44: $7f
    ld b, h                                       ; $5a45: $44
    ccf                                           ; $5a46: $3f
    jr nz, jr_012_5a88                            ; $5a47: $20 $3f

    ld h, $1f                                     ; $5a49: $26 $1f
    db $10                                        ; $5a4b: $10
    rrca                                          ; $5a4c: $0f
    ld [$0707], sp                                ; $5a4d: $08 $07 $07
    ret nz                                        ; $5a50: $c0

    ret nz                                        ; $5a51: $c0

    jr nc, jr_012_5a44                            ; $5a52: $30 $f0

    ld [$c4f8], sp                                ; $5a54: $08 $f8 $c4
    db $fc                                        ; $5a57: $fc
    db $e4                                        ; $5a58: $e4
    inc a                                         ; $5a59: $3c
    db $e4                                        ; $5a5a: $e4
    inc a                                         ; $5a5b: $3c
    db $f4                                        ; $5a5c: $f4
    sbc h                                         ; $5a5d: $9c
    db $fc                                        ; $5a5e: $fc
    ld e, h                                       ; $5a5f: $5c
    cp $12                                        ; $5a60: $fe $12
    cp $0a                                        ; $5a62: $fe $0a
    cp $02                                        ; $5a64: $fe $02
    db $fc                                        ; $5a66: $fc
    inc e                                         ; $5a67: $1c
    ldh a, [rNR10]                                ; $5a68: $f0 $10
    ldh [rNR41], a                                ; $5a6a: $e0 $20
    ret nz                                        ; $5a6c: $c0

    ld b, b                                       ; $5a6d: $40
    add b                                         ; $5a6e: $80
    add b                                         ; $5a6f: $80
    rrca                                          ; $5a70: $0f
    rrca                                          ; $5a71: $0f
    jr nc, @+$41                                  ; $5a72: $30 $3f

    ld b, b                                       ; $5a74: $40

jr_012_5a75:
    ld a, a                                       ; $5a75: $7f
    add b                                         ; $5a76: $80
    rst $38                                       ; $5a77: $ff
    add a                                         ; $5a78: $87
    rst $38                                       ; $5a79: $ff
    xor a                                         ; $5a7a: $af
    ld hl, sp+$7f                                 ; $5a7b: $f8 $7f
    ld [hl], e                                    ; $5a7d: $73
    ld a, a                                       ; $5a7e: $7f
    ld d, d                                       ; $5a7f: $52
    ld l, l                                       ; $5a80: $6d
    ld d, d                                       ; $5a81: $52
    rst $38                                       ; $5a82: $ff
    adc b                                         ; $5a83: $88
    rst $38                                       ; $5a84: $ff
    add b                                         ; $5a85: $80
    ld a, l                                       ; $5a86: $7d
    ld b, [hl]                                    ; $5a87: $46

jr_012_5a88:
    ccf                                           ; $5a88: $3f
    jr nz, jr_012_5aaa                            ; $5a89: $20 $1f

    add hl, de                                    ; $5a8b: $19
    ld b, $06                                     ; $5a8c: $06 $06
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    or b                                          ; $5a90: $b0
    or b                                          ; $5a91: $b0
    ld a, h                                       ; $5a92: $7c
    db $ec                                        ; $5a93: $ec
    sub d                                         ; $5a94: $92
    cp $92                                        ; $5a95: $fe $92
    cp $c9                                        ; $5a97: $fe $c9
    rst $38                                       ; $5a99: $ff
    ret                                           ; $5a9a: $c9


    ld a, a                                       ; $5a9b: $7f
    ld sp, hl                                     ; $5a9c: $f9
    ccf                                           ; $5a9d: $3f
    db $fd                                        ; $5a9e: $fd
    and a                                         ; $5a9f: $a7
    db $dd                                        ; $5aa0: $dd
    or a                                          ; $5aa1: $b7
    db $fd                                        ; $5aa2: $fd
    rlca                                          ; $5aa3: $07
    ld sp, hl                                     ; $5aa4: $f9
    rra                                           ; $5aa5: $1f
    ld a, [$ca3e]                                 ; $5aa6: $fa $3e $ca
    ld c, [hl]                                    ; $5aa9: $4e

jr_012_5aaa:
    add [hl]                                      ; $5aaa: $86
    add [hl]                                      ; $5aab: $86
    nop                                           ; $5aac: $00
    nop                                           ; $5aad: $00
    nop                                           ; $5aae: $00
    nop                                           ; $5aaf: $00
    rrca                                          ; $5ab0: $0f
    rrca                                          ; $5ab1: $0f
    jr nc, jr_012_5af3                            ; $5ab2: $30 $3f

    ld b, b                                       ; $5ab4: $40
    ld a, a                                       ; $5ab5: $7f
    add b                                         ; $5ab6: $80
    rst $38                                       ; $5ab7: $ff
    add a                                         ; $5ab8: $87
    rst $38                                       ; $5ab9: $ff
    xor a                                         ; $5aba: $af
    ld hl, sp+$7f                                 ; $5abb: $f8 $7f
    ld [hl], e                                    ; $5abd: $73
    ld a, a                                       ; $5abe: $7f
    ld d, d                                       ; $5abf: $52
    ld l, l                                       ; $5ac0: $6d
    ld d, d                                       ; $5ac1: $52
    rst $38                                       ; $5ac2: $ff
    adc b                                         ; $5ac3: $88
    rst $38                                       ; $5ac4: $ff
    add b                                         ; $5ac5: $80
    ld a, l                                       ; $5ac6: $7d
    ld b, [hl]                                    ; $5ac7: $46
    ccf                                           ; $5ac8: $3f
    jr nz, jr_012_5aea                            ; $5ac9: $20 $1f

    add hl, de                                    ; $5acb: $19
    ld b, $06                                     ; $5acc: $06 $06
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    or b                                          ; $5ad0: $b0
    or b                                          ; $5ad1: $b0
    ld a, h                                       ; $5ad2: $7c
    db $ec                                        ; $5ad3: $ec
    sub d                                         ; $5ad4: $92
    cp $92                                        ; $5ad5: $fe $92
    cp $c9                                        ; $5ad7: $fe $c9
    rst $38                                       ; $5ad9: $ff
    ret                                           ; $5ada: $c9


    ld a, a                                       ; $5adb: $7f
    ld sp, hl                                     ; $5adc: $f9
    ccf                                           ; $5add: $3f
    db $fd                                        ; $5ade: $fd
    and a                                         ; $5adf: $a7
    db $dd                                        ; $5ae0: $dd
    or a                                          ; $5ae1: $b7
    db $fd                                        ; $5ae2: $fd
    rlca                                          ; $5ae3: $07
    ld sp, hl                                     ; $5ae4: $f9
    rra                                           ; $5ae5: $1f
    ld a, [$ca3e]                                 ; $5ae6: $fa $3e $ca
    ld c, [hl]                                    ; $5ae9: $4e

jr_012_5aea:
    add [hl]                                      ; $5aea: $86
    add [hl]                                      ; $5aeb: $86
    nop                                           ; $5aec: $00
    nop                                           ; $5aed: $00
    nop                                           ; $5aee: $00
    nop                                           ; $5aef: $00
    rrca                                          ; $5af0: $0f
    rrca                                          ; $5af1: $0f
    db $10                                        ; $5af2: $10

jr_012_5af3:
    rra                                           ; $5af3: $1f
    jr nz, jr_012_5b35                            ; $5af4: $20 $3f

    ld d, e                                       ; $5af6: $53
    ld a, a                                       ; $5af7: $7f
    ld a, a                                       ; $5af8: $7f
    ld l, h                                       ; $5af9: $6c
    ld a, a                                       ; $5afa: $7f
    ld h, b                                       ; $5afb: $60
    ld a, a                                       ; $5afc: $7f
    ld e, c                                       ; $5afd: $59
    ld a, a                                       ; $5afe: $7f
    ld l, c                                       ; $5aff: $69
    halt                                          ; $5b00: $76
    ld c, c                                       ; $5b01: $49
    ld a, a                                       ; $5b02: $7f
    ld b, b                                       ; $5b03: $40

jr_012_5b04:
    ld a, a                                       ; $5b04: $7f
    ld b, h                                       ; $5b05: $44
    ccf                                           ; $5b06: $3f
    jr nz, jr_012_5b48                            ; $5b07: $20 $3f

    ld h, $1f                                     ; $5b09: $26 $1f
    db $10                                        ; $5b0b: $10
    rrca                                          ; $5b0c: $0f
    ld [$0707], sp                                ; $5b0d: $08 $07 $07
    ret nz                                        ; $5b10: $c0

    ret nz                                        ; $5b11: $c0

    jr nc, jr_012_5b04                            ; $5b12: $30 $f0

    ld [$c4f8], sp                                ; $5b14: $08 $f8 $c4
    db $fc                                        ; $5b17: $fc
    db $e4                                        ; $5b18: $e4
    inc a                                         ; $5b19: $3c
    db $e4                                        ; $5b1a: $e4
    inc a                                         ; $5b1b: $3c
    db $f4                                        ; $5b1c: $f4
    sbc h                                         ; $5b1d: $9c
    db $fc                                        ; $5b1e: $fc
    ld e, h                                       ; $5b1f: $5c
    cp $12                                        ; $5b20: $fe $12
    cp $0a                                        ; $5b22: $fe $0a
    cp $02                                        ; $5b24: $fe $02
    db $fc                                        ; $5b26: $fc
    inc e                                         ; $5b27: $1c
    ldh a, [rNR10]                                ; $5b28: $f0 $10
    ldh [rNR41], a                                ; $5b2a: $e0 $20
    ret nz                                        ; $5b2c: $c0

    ld b, b                                       ; $5b2d: $40
    add b                                         ; $5b2e: $80
    add b                                         ; $5b2f: $80
    ccf                                           ; $5b30: $3f
    ld c, d                                       ; $5b31: $4a
    rst $38                                       ; $5b32: $ff
    ld l, e                                       ; $5b33: $6b
    rst $18                                       ; $5b34: $df

jr_012_5b35:
    jr jr_012_5b37                                ; $5b35: $18 $00

jr_012_5b37:
    nop                                           ; $5b37: $00

    db $9e, $22, $ff, $6b, $5f, $01, $00, $00

    sbc [hl]                                      ; $5b40: $9e
    ld [hl+], a                                   ; $5b41: $22
    rst $38                                       ; $5b42: $ff
    ld l, e                                       ; $5b43: $6b
    ld e, a                                       ; $5b44: $5f
    ld bc, $0000                                  ; $5b45: $01 $00 $00

jr_012_5b48:
    ld a, a                                       ; $5b48: $7f
    ld [hl-], a                                   ; $5b49: $32
    rst $38                                       ; $5b4a: $ff
    ld l, e                                       ; $5b4b: $6b
    rra                                           ; $5b4c: $1f
    ld [bc], a                                    ; $5b4d: $02
    nop                                           ; $5b4e: $00
    nop                                           ; $5b4f: $00
    ld a, a                                       ; $5b50: $7f
    ld [hl-], a                                   ; $5b51: $32
    rst $38                                       ; $5b52: $ff
    ld l, e                                       ; $5b53: $6b
    rra                                           ; $5b54: $1f
    ld [bc], a                                    ; $5b55: $02
    nop                                           ; $5b56: $00
    nop                                           ; $5b57: $00
    ccf                                           ; $5b58: $3f
    ld c, d                                       ; $5b59: $4a
    rst $38                                       ; $5b5a: $ff
    ld l, e                                       ; $5b5b: $6b
    rst $18                                       ; $5b5c: $df
    jr jr_012_5b5f                                ; $5b5d: $18 $00

jr_012_5b5f:
    nop                                           ; $5b5f: $00
    sbc [hl]                                      ; $5b60: $9e
    ld [hl+], a                                   ; $5b61: $22
    rst $38                                       ; $5b62: $ff
    ld l, e                                       ; $5b63: $6b
    ld e, a                                       ; $5b64: $5f
    ld bc, $0000                                  ; $5b65: $01 $00 $00
    ld e, $5e                                     ; $5b68: $1e $5e
    rst $38                                       ; $5b6a: $ff
    ld l, e                                       ; $5b6b: $6b
    ret c                                         ; $5b6c: $d8

    ld a, h                                       ; $5b6d: $7c
    nop                                           ; $5b6e: $00
    nop                                           ; $5b6f: $00

    db $3f, $4a, $ff, $6b, $df, $18, $00, $00, $78, $3a, $df, $6b, $80, $12, $00, $00

    rst $38                                       ; $5b80: $ff
    ld bc, $6bdf                                  ; $5b81: $01 $df $6b
    ld e, a                                       ; $5b84: $5f
    inc bc                                        ; $5b85: $03
    nop                                           ; $5b86: $00
    nop                                           ; $5b87: $00
    ld a, b                                       ; $5b88: $78
    ld a, [hl-]                                   ; $5b89: $3a
    rst $18                                       ; $5b8a: $df
    ld l, e                                       ; $5b8b: $6b
    add b                                         ; $5b8c: $80
    ld [de], a                                    ; $5b8d: $12
    nop                                           ; $5b8e: $00
    nop                                           ; $5b8f: $00
    ld a, a                                       ; $5b90: $7f
    ld [hl-], a                                   ; $5b91: $32
    rst $38                                       ; $5b92: $ff
    ld l, e                                       ; $5b93: $6b
    rra                                           ; $5b94: $1f
    ld [bc], a                                    ; $5b95: $02
    nop                                           ; $5b96: $00
    nop                                           ; $5b97: $00
    sbc [hl]                                      ; $5b98: $9e
    ld [hl+], a                                   ; $5b99: $22
    rst $38                                       ; $5b9a: $ff
    ld l, e                                       ; $5b9b: $6b
    ld e, a                                       ; $5b9c: $5f
    ld bc, $0000                                  ; $5b9d: $01 $00 $00
    sbc [hl]                                      ; $5ba0: $9e
    ld [hl+], a                                   ; $5ba1: $22
    rst $38                                       ; $5ba2: $ff
    ld l, e                                       ; $5ba3: $6b
    ld e, a                                       ; $5ba4: $5f
    ld bc, $0000                                  ; $5ba5: $01 $00 $00
    ld a, a                                       ; $5ba8: $7f
    ld [hl-], a                                   ; $5ba9: $32
    rst $38                                       ; $5baa: $ff
    ld l, e                                       ; $5bab: $6b
    rra                                           ; $5bac: $1f
    ld [bc], a                                    ; $5bad: $02
    nop                                           ; $5bae: $00
    nop                                           ; $5baf: $00
    rra                                           ; $5bb0: $1f
    ld c, d                                       ; $5bb1: $4a
    rst $38                                       ; $5bb2: $ff
    ld l, e                                       ; $5bb3: $6b
    sbc a                                         ; $5bb4: $9f
    ld d, c                                       ; $5bb5: $51
    nop                                           ; $5bb6: $00
    nop                                           ; $5bb7: $00
    sbc [hl]                                      ; $5bb8: $9e
    ld [hl+], a                                   ; $5bb9: $22
    rst $38                                       ; $5bba: $ff
    ld l, e                                       ; $5bbb: $6b
    sbc a                                         ; $5bbc: $9f
    jr nz, jr_012_5bbf                            ; $5bbd: $20 $00

jr_012_5bbf:
    nop                                           ; $5bbf: $00
    sbc [hl]                                      ; $5bc0: $9e
    ld [hl+], a                                   ; $5bc1: $22
    rst $38                                       ; $5bc2: $ff
    ld l, e                                       ; $5bc3: $6b
    sbc a                                         ; $5bc4: $9f
    jr nz, jr_012_5bc7                            ; $5bc5: $20 $00

jr_012_5bc7:
    nop                                           ; $5bc7: $00
    ld a, a                                       ; $5bc8: $7f
    ld [hl-], a                                   ; $5bc9: $32
    rst $38                                       ; $5bca: $ff
    ld l, e                                       ; $5bcb: $6b
    nop                                           ; $5bcc: $00
    ld a, d                                       ; $5bcd: $7a
    nop                                           ; $5bce: $00
    nop                                           ; $5bcf: $00
    ld a, a                                       ; $5bd0: $7f
    ld [hl-], a                                   ; $5bd1: $32
    rst $38                                       ; $5bd2: $ff
    ld l, e                                       ; $5bd3: $6b
    nop                                           ; $5bd4: $00
    ld a, d                                       ; $5bd5: $7a
    nop                                           ; $5bd6: $00
    nop                                           ; $5bd7: $00
    rra                                           ; $5bd8: $1f
    ld c, d                                       ; $5bd9: $4a
    rst $38                                       ; $5bda: $ff
    ld l, e                                       ; $5bdb: $6b
    sbc a                                         ; $5bdc: $9f
    ld d, c                                       ; $5bdd: $51
    nop                                           ; $5bde: $00
    nop                                           ; $5bdf: $00
    sbc [hl]                                      ; $5be0: $9e
    ld [hl+], a                                   ; $5be1: $22
    rst $38                                       ; $5be2: $ff
    ld l, e                                       ; $5be3: $6b
    sbc a                                         ; $5be4: $9f
    jr nz, jr_012_5be7                            ; $5be5: $20 $00

jr_012_5be7:
    nop                                           ; $5be7: $00
    ld e, $5e                                     ; $5be8: $1e $5e
    rst $38                                       ; $5bea: $ff
    ld l, e                                       ; $5beb: $6b
    sbc a                                         ; $5bec: $9f
    ld bc, $0000                                  ; $5bed: $01 $00 $00
    rra                                           ; $5bf0: $1f
    ld c, d                                       ; $5bf1: $4a
    rst $38                                       ; $5bf2: $ff
    ld l, e                                       ; $5bf3: $6b
    sbc a                                         ; $5bf4: $9f
    ld d, c                                       ; $5bf5: $51
    nop                                           ; $5bf6: $00
    nop                                           ; $5bf7: $00
    ld a, b                                       ; $5bf8: $78
    ld a, [hl-]                                   ; $5bf9: $3a
    rst $38                                       ; $5bfa: $ff
    ld l, e                                       ; $5bfb: $6b
    inc b                                         ; $5bfc: $04
    ld a, a                                       ; $5bfd: $7f
    nop                                           ; $5bfe: $00
    nop                                           ; $5bff: $00
    rst $38                                       ; $5c00: $ff
    ld bc, $6bff                                  ; $5c01: $01 $ff $6b
    nop                                           ; $5c04: $00
    ld a, d                                       ; $5c05: $7a
    nop                                           ; $5c06: $00
    nop                                           ; $5c07: $00
    ld a, b                                       ; $5c08: $78
    ld a, [hl-]                                   ; $5c09: $3a
    rst $38                                       ; $5c0a: $ff
    ld l, e                                       ; $5c0b: $6b
    inc b                                         ; $5c0c: $04
    ld a, a                                       ; $5c0d: $7f
    nop                                           ; $5c0e: $00
    nop                                           ; $5c0f: $00
    ld a, a                                       ; $5c10: $7f
    ld [hl-], a                                   ; $5c11: $32
    rst $38                                       ; $5c12: $ff
    ld l, e                                       ; $5c13: $6b
    nop                                           ; $5c14: $00
    ld a, d                                       ; $5c15: $7a
    nop                                           ; $5c16: $00
    nop                                           ; $5c17: $00
    sbc [hl]                                      ; $5c18: $9e
    ld [hl+], a                                   ; $5c19: $22
    rst $38                                       ; $5c1a: $ff
    ld l, e                                       ; $5c1b: $6b
    sbc a                                         ; $5c1c: $9f
    jr nz, jr_012_5c1f                            ; $5c1d: $20 $00

jr_012_5c1f:
    nop                                           ; $5c1f: $00
    sbc [hl]                                      ; $5c20: $9e
    ld [hl+], a                                   ; $5c21: $22
    rst $38                                       ; $5c22: $ff
    ld l, e                                       ; $5c23: $6b
    sbc a                                         ; $5c24: $9f
    jr nz, jr_012_5c27                            ; $5c25: $20 $00

jr_012_5c27:
    nop                                           ; $5c27: $00
    ld a, a                                       ; $5c28: $7f
    ld [hl-], a                                   ; $5c29: $32
    rst $38                                       ; $5c2a: $ff
    ld l, e                                       ; $5c2b: $6b
    nop                                           ; $5c2c: $00
    ld a, d                                       ; $5c2d: $7a
    nop                                           ; $5c2e: $00
    nop                                           ; $5c2f: $00

    db $a0, $5c, $e0, $5c

    jr nz, @+$5f                                  ; $5c34: $20 $5d

    db $60, $5d

    and b                                         ; $5c38: $a0
    ld e, l                                       ; $5c39: $5d
    ldh [$5d], a                                  ; $5c3a: $e0 $5d

    db $20, $5e, $60, $5e, $a0, $5e

    ldh [$5e], a                                  ; $5c42: $e0 $5e
    jr nz, jr_012_5ca5                            ; $5c44: $20 $5f

    ld h, b                                       ; $5c46: $60
    ld e, a                                       ; $5c47: $5f

    db $a0, $5f, $e0, $5f

    ld h, b                                       ; $5c4c: $60
    ld h, b                                       ; $5c4d: $60
    and b                                         ; $5c4e: $a0
    ld h, b                                       ; $5c4f: $60
    ld h, b                                       ; $5c50: $60
    ld h, c                                       ; $5c51: $61
    jr nz, jr_012_5cb6                            ; $5c52: $20 $62

    ldh [$62], a                                  ; $5c54: $e0 $62
    ld b, b                                       ; $5c56: $40
    ld h, [hl]                                    ; $5c57: $66
    ld c, b                                       ; $5c58: $48
    ld h, [hl]                                    ; $5c59: $66
    ld d, b                                       ; $5c5a: $50
    ld h, [hl]                                    ; $5c5b: $66
    ld e, b                                       ; $5c5c: $58
    ld h, [hl]                                    ; $5c5d: $66
    ld h, b                                       ; $5c5e: $60
    ld h, [hl]                                    ; $5c5f: $66
    rst $38                                       ; $5c60: $ff
    rst $38                                       ; $5c61: $ff
    rst $38                                       ; $5c62: $ff
    add b                                         ; $5c63: $80
    rst $38                                       ; $5c64: $ff
    add b                                         ; $5c65: $80
    rst $38                                       ; $5c66: $ff
    add b                                         ; $5c67: $80
    rst $38                                       ; $5c68: $ff
    add b                                         ; $5c69: $80
    rst $38                                       ; $5c6a: $ff
    add b                                         ; $5c6b: $80
    rst $38                                       ; $5c6c: $ff
    add b                                         ; $5c6d: $80
    rst $38                                       ; $5c6e: $ff
    add b                                         ; $5c6f: $80
    rst $38                                       ; $5c70: $ff
    rst $38                                       ; $5c71: $ff
    rst $38                                       ; $5c72: $ff
    ld bc, $01ff                                  ; $5c73: $01 $ff $01
    rst $38                                       ; $5c76: $ff
    ld bc, $01ff                                  ; $5c77: $01 $ff $01
    rst $38                                       ; $5c7a: $ff
    ld bc, $01ff                                  ; $5c7b: $01 $ff $01
    rst $38                                       ; $5c7e: $ff
    ld bc, $80ff                                  ; $5c7f: $01 $ff $80
    rst $38                                       ; $5c82: $ff
    add b                                         ; $5c83: $80
    rst $38                                       ; $5c84: $ff
    add b                                         ; $5c85: $80
    rst $38                                       ; $5c86: $ff
    add b                                         ; $5c87: $80
    rst $38                                       ; $5c88: $ff
    add b                                         ; $5c89: $80
    rst $38                                       ; $5c8a: $ff
    add b                                         ; $5c8b: $80
    rst $38                                       ; $5c8c: $ff
    add b                                         ; $5c8d: $80
    rst $38                                       ; $5c8e: $ff
    rst $38                                       ; $5c8f: $ff
    rst $38                                       ; $5c90: $ff
    ld bc, $01ff                                  ; $5c91: $01 $ff $01
    rst $38                                       ; $5c94: $ff
    ld bc, $01ff                                  ; $5c95: $01 $ff $01
    rst $38                                       ; $5c98: $ff
    ld bc, $01ff                                  ; $5c99: $01 $ff $01
    rst $38                                       ; $5c9c: $ff
    ld bc, $ffff                                  ; $5c9d: $01 $ff $ff
    rst $38                                       ; $5ca0: $ff
    rst $38                                       ; $5ca1: $ff
    add b                                         ; $5ca2: $80
    add b                                         ; $5ca3: $80
    add b                                         ; $5ca4: $80

jr_012_5ca5:
    add b                                         ; $5ca5: $80
    add b                                         ; $5ca6: $80
    add b                                         ; $5ca7: $80
    add b                                         ; $5ca8: $80
    add b                                         ; $5ca9: $80
    add b                                         ; $5caa: $80
    add b                                         ; $5cab: $80
    add b                                         ; $5cac: $80
    add b                                         ; $5cad: $80
    add e                                         ; $5cae: $83
    add e                                         ; $5caf: $83
    adc d                                         ; $5cb0: $8a
    adc l                                         ; $5cb1: $8d
    sbc a                                         ; $5cb2: $9f
    sbc a                                         ; $5cb3: $9f
    cp a                                          ; $5cb4: $bf
    cp a                                          ; $5cb5: $bf

jr_012_5cb6:
    cp a                                          ; $5cb6: $bf
    cp a                                          ; $5cb7: $bf
    sbc a                                         ; $5cb8: $9f
    sbc a                                         ; $5cb9: $9f
    adc a                                         ; $5cba: $8f
    adc a                                         ; $5cbb: $8f
    add b                                         ; $5cbc: $80
    add b                                         ; $5cbd: $80
    rst $38                                       ; $5cbe: $ff
    rst $38                                       ; $5cbf: $ff
    rst $38                                       ; $5cc0: $ff
    rst $38                                       ; $5cc1: $ff
    ld d, c                                       ; $5cc2: $51
    ld sp, $3151                                  ; $5cc3: $31 $51 $31
    ld d, c                                       ; $5cc6: $51
    ld sp, $3151                                  ; $5cc7: $31 $51 $31
    ld sp, $7171                                  ; $5cca: $31 $71 $71
    ld [hl], c                                    ; $5ccd: $71
    pop af                                        ; $5cce: $f1
    pop af                                        ; $5ccf: $f1
    ld a, c                                       ; $5cd0: $79
    ld sp, hl                                     ; $5cd1: $f9
    ld sp, hl                                     ; $5cd2: $f9
    ld sp, hl                                     ; $5cd3: $f9
    ld sp, hl                                     ; $5cd4: $f9
    ld sp, hl                                     ; $5cd5: $f9
    ld sp, hl                                     ; $5cd6: $f9
    ld sp, hl                                     ; $5cd7: $f9
    ld sp, hl                                     ; $5cd8: $f9
    ld sp, hl                                     ; $5cd9: $f9
    pop af                                        ; $5cda: $f1
    pop af                                        ; $5cdb: $f1
    ld bc, $ff01                                  ; $5cdc: $01 $01 $ff
    rst $38                                       ; $5cdf: $ff
    rst $38                                       ; $5ce0: $ff
    rst $38                                       ; $5ce1: $ff
    add b                                         ; $5ce2: $80
    add b                                         ; $5ce3: $80
    add b                                         ; $5ce4: $80
    add b                                         ; $5ce5: $80
    add b                                         ; $5ce6: $80
    add b                                         ; $5ce7: $80
    add b                                         ; $5ce8: $80
    add b                                         ; $5ce9: $80
    add b                                         ; $5cea: $80
    add b                                         ; $5ceb: $80
    add b                                         ; $5cec: $80
    add b                                         ; $5ced: $80
    add b                                         ; $5cee: $80
    add b                                         ; $5cef: $80
    add e                                         ; $5cf0: $83
    add e                                         ; $5cf1: $83
    adc l                                         ; $5cf2: $8d
    adc [hl]                                      ; $5cf3: $8e
    sbc a                                         ; $5cf4: $9f
    sbc a                                         ; $5cf5: $9f
    sbc a                                         ; $5cf6: $9f
    sbc a                                         ; $5cf7: $9f
    adc a                                         ; $5cf8: $8f
    adc a                                         ; $5cf9: $8f
    add a                                         ; $5cfa: $87
    add a                                         ; $5cfb: $87
    add b                                         ; $5cfc: $80
    add b                                         ; $5cfd: $80
    rst $38                                       ; $5cfe: $ff
    rst $38                                       ; $5cff: $ff
    rst $38                                       ; $5d00: $ff
    rst $38                                       ; $5d01: $ff
    ld d, c                                       ; $5d02: $51
    ld sp, $3151                                  ; $5d03: $31 $51 $31
    ld d, c                                       ; $5d06: $51
    ld sp, $3151                                  ; $5d07: $31 $51 $31
    ld sp, $7171                                  ; $5d0a: $31 $71 $71
    ld [hl], c                                    ; $5d0d: $71
    ld [hl], c                                    ; $5d0e: $71
    ld [hl], c                                    ; $5d0f: $71
    pop af                                        ; $5d10: $f1
    pop af                                        ; $5d11: $f1
    ld a, c                                       ; $5d12: $79
    ld sp, hl                                     ; $5d13: $f9
    ld sp, hl                                     ; $5d14: $f9
    ld sp, hl                                     ; $5d15: $f9
    ld sp, hl                                     ; $5d16: $f9
    ld sp, hl                                     ; $5d17: $f9
    ld sp, hl                                     ; $5d18: $f9
    ld sp, hl                                     ; $5d19: $f9
    pop af                                        ; $5d1a: $f1
    pop af                                        ; $5d1b: $f1
    ld bc, $ff01                                  ; $5d1c: $01 $01 $ff
    rst $38                                       ; $5d1f: $ff
    rst $38                                       ; $5d20: $ff
    rst $38                                       ; $5d21: $ff
    add b                                         ; $5d22: $80
    add b                                         ; $5d23: $80
    add b                                         ; $5d24: $80
    add b                                         ; $5d25: $80
    add b                                         ; $5d26: $80
    add b                                         ; $5d27: $80
    add b                                         ; $5d28: $80
    add b                                         ; $5d29: $80
    add b                                         ; $5d2a: $80
    add b                                         ; $5d2b: $80
    add b                                         ; $5d2c: $80
    add b                                         ; $5d2d: $80
    add b                                         ; $5d2e: $80
    add b                                         ; $5d2f: $80
    add b                                         ; $5d30: $80
    add b                                         ; $5d31: $80
    add e                                         ; $5d32: $83
    add e                                         ; $5d33: $83
    add l                                         ; $5d34: $85
    add [hl]                                      ; $5d35: $86
    adc a                                         ; $5d36: $8f
    adc a                                         ; $5d37: $8f
    adc a                                         ; $5d38: $8f
    adc a                                         ; $5d39: $8f
    add a                                         ; $5d3a: $87
    add a                                         ; $5d3b: $87
    add b                                         ; $5d3c: $80
    add b                                         ; $5d3d: $80
    rst $38                                       ; $5d3e: $ff
    rst $38                                       ; $5d3f: $ff
    rst $38                                       ; $5d40: $ff
    rst $38                                       ; $5d41: $ff
    ld d, c                                       ; $5d42: $51
    ld sp, $3151                                  ; $5d43: $31 $51 $31
    ld d, c                                       ; $5d46: $51
    ld sp, $3151                                  ; $5d47: $31 $51 $31
    ld sp, $7171                                  ; $5d4a: $31 $71 $71
    ld [hl], c                                    ; $5d4d: $71
    ld [hl], c                                    ; $5d4e: $71
    ld [hl], c                                    ; $5d4f: $71
    pop af                                        ; $5d50: $f1
    pop af                                        ; $5d51: $f1
    pop af                                        ; $5d52: $f1
    pop af                                        ; $5d53: $f1
    ld a, c                                       ; $5d54: $79
    ld sp, hl                                     ; $5d55: $f9
    ld sp, hl                                     ; $5d56: $f9
    ld sp, hl                                     ; $5d57: $f9
    ld sp, hl                                     ; $5d58: $f9
    ld sp, hl                                     ; $5d59: $f9
    pop af                                        ; $5d5a: $f1
    pop af                                        ; $5d5b: $f1
    ld bc, $ff01                                  ; $5d5c: $01 $01 $ff
    rst $38                                       ; $5d5f: $ff
    rst $38                                       ; $5d60: $ff
    rst $38                                       ; $5d61: $ff
    add b                                         ; $5d62: $80
    add b                                         ; $5d63: $80
    add b                                         ; $5d64: $80
    add b                                         ; $5d65: $80
    add b                                         ; $5d66: $80
    add b                                         ; $5d67: $80
    add e                                         ; $5d68: $83
    add e                                         ; $5d69: $83
    add d                                         ; $5d6a: $82
    add e                                         ; $5d6b: $83
    add e                                         ; $5d6c: $83
    add d                                         ; $5d6d: $82
    add d                                         ; $5d6e: $82
    add e                                         ; $5d6f: $83
    add d                                         ; $5d70: $82
    add e                                         ; $5d71: $83
    add e                                         ; $5d72: $83
    add d                                         ; $5d73: $82
    add e                                         ; $5d74: $83
    add d                                         ; $5d75: $82
    add e                                         ; $5d76: $83
    add d                                         ; $5d77: $82
    add d                                         ; $5d78: $82
    add e                                         ; $5d79: $83
    add c                                         ; $5d7a: $81
    add c                                         ; $5d7b: $81
    add b                                         ; $5d7c: $80
    add b                                         ; $5d7d: $80
    rst $38                                       ; $5d7e: $ff
    rst $38                                       ; $5d7f: $ff
    rst $38                                       ; $5d80: $ff
    rst $38                                       ; $5d81: $ff
    ld d, c                                       ; $5d82: $51
    ld sp, $3151                                  ; $5d83: $31 $51 $31
    ld d, c                                       ; $5d86: $51
    ld sp, $7131                                  ; $5d87: $31 $31 $71
    or c                                          ; $5d8a: $b1
    pop af                                        ; $5d8b: $f1
    pop de                                        ; $5d8c: $d1
    or c                                          ; $5d8d: $b1
    sub c                                         ; $5d8e: $91
    pop af                                        ; $5d8f: $f1
    sub c                                         ; $5d90: $91
    pop af                                        ; $5d91: $f1
    ld d, c                                       ; $5d92: $51
    pop af                                        ; $5d93: $f1
    pop de                                        ; $5d94: $d1
    ld [hl], c                                    ; $5d95: $71
    pop hl                                        ; $5d96: $e1
    ld h, c                                       ; $5d97: $61
    ld h, c                                       ; $5d98: $61
    pop hl                                        ; $5d99: $e1
    pop bc                                        ; $5d9a: $c1
    pop bc                                        ; $5d9b: $c1
    ld bc, $ff01                                  ; $5d9c: $01 $01 $ff
    rst $38                                       ; $5d9f: $ff
    rst $38                                       ; $5da0: $ff
    rst $38                                       ; $5da1: $ff
    add b                                         ; $5da2: $80
    add b                                         ; $5da3: $80
    add b                                         ; $5da4: $80
    add b                                         ; $5da5: $80
    add b                                         ; $5da6: $80
    add b                                         ; $5da7: $80
    add e                                         ; $5da8: $83
    add e                                         ; $5da9: $83
    add d                                         ; $5daa: $82
    add e                                         ; $5dab: $83
    add e                                         ; $5dac: $83
    add d                                         ; $5dad: $82
    add d                                         ; $5dae: $82
    add e                                         ; $5daf: $83
    add d                                         ; $5db0: $82
    add e                                         ; $5db1: $83
    add e                                         ; $5db2: $83
    add d                                         ; $5db3: $82
    add e                                         ; $5db4: $83
    add d                                         ; $5db5: $82
    add e                                         ; $5db6: $83
    add d                                         ; $5db7: $82
    add d                                         ; $5db8: $82
    add e                                         ; $5db9: $83
    add c                                         ; $5dba: $81
    add c                                         ; $5dbb: $81
    add b                                         ; $5dbc: $80
    add b                                         ; $5dbd: $80
    rst $38                                       ; $5dbe: $ff
    rst $38                                       ; $5dbf: $ff
    rst $38                                       ; $5dc0: $ff
    rst $38                                       ; $5dc1: $ff
    ld d, c                                       ; $5dc2: $51
    ld sp, $3151                                  ; $5dc3: $31 $51 $31
    ld d, c                                       ; $5dc6: $51
    ld sp, $7131                                  ; $5dc7: $31 $31 $71
    or c                                          ; $5dca: $b1
    pop af                                        ; $5dcb: $f1
    pop de                                        ; $5dcc: $d1
    or c                                          ; $5dcd: $b1
    sub c                                         ; $5dce: $91
    pop af                                        ; $5dcf: $f1
    ld d, c                                       ; $5dd0: $51
    pop af                                        ; $5dd1: $f1
    ld d, c                                       ; $5dd2: $51
    pop af                                        ; $5dd3: $f1
    pop hl                                        ; $5dd4: $e1
    ld h, c                                       ; $5dd5: $61
    and c                                         ; $5dd6: $a1
    ld h, c                                       ; $5dd7: $61
    ld hl, $c1e1                                  ; $5dd8: $21 $e1 $c1
    pop bc                                        ; $5ddb: $c1
    ld bc, $ff01                                  ; $5ddc: $01 $01 $ff
    rst $38                                       ; $5ddf: $ff
    rst $38                                       ; $5de0: $ff
    rst $38                                       ; $5de1: $ff
    add b                                         ; $5de2: $80
    add b                                         ; $5de3: $80
    add b                                         ; $5de4: $80
    add b                                         ; $5de5: $80
    add b                                         ; $5de6: $80
    add b                                         ; $5de7: $80
    add [hl]                                      ; $5de8: $86
    add [hl]                                      ; $5de9: $86
    add l                                         ; $5dea: $85
    add a                                         ; $5deb: $87
    add a                                         ; $5dec: $87
    add l                                         ; $5ded: $85
    add h                                         ; $5dee: $84
    add a                                         ; $5def: $87
    add h                                         ; $5df0: $84
    add a                                         ; $5df1: $87
    add e                                         ; $5df2: $83
    add d                                         ; $5df3: $82
    add e                                         ; $5df4: $83
    add d                                         ; $5df5: $82
    add e                                         ; $5df6: $83
    add d                                         ; $5df7: $82
    add d                                         ; $5df8: $82
    add e                                         ; $5df9: $83
    add c                                         ; $5dfa: $81
    add c                                         ; $5dfb: $81
    add b                                         ; $5dfc: $80
    add b                                         ; $5dfd: $80
    rst $38                                       ; $5dfe: $ff
    rst $38                                       ; $5dff: $ff
    rst $38                                       ; $5e00: $ff
    rst $38                                       ; $5e01: $ff
    ld d, c                                       ; $5e02: $51
    ld sp, $3151                                  ; $5e03: $31 $51 $31
    ld d, c                                       ; $5e06: $51
    ld sp, $7131                                  ; $5e07: $31 $31 $71
    ld sp, $5171                                  ; $5e0a: $31 $71 $51
    ld sp, $f191                                  ; $5e0d: $31 $91 $f1
    pop de                                        ; $5e10: $d1
    pop af                                        ; $5e11: $f1
    ld [hl], c                                    ; $5e12: $71
    pop af                                        ; $5e13: $f1
    pop hl                                        ; $5e14: $e1
    ld h, c                                       ; $5e15: $61
    and c                                         ; $5e16: $a1
    ld h, c                                       ; $5e17: $61
    ld hl, $c1e1                                  ; $5e18: $21 $e1 $c1
    pop bc                                        ; $5e1b: $c1
    ld bc, $ff01                                  ; $5e1c: $01 $01 $ff
    rst $38                                       ; $5e1f: $ff
    rst $38                                       ; $5e20: $ff
    rst $38                                       ; $5e21: $ff
    add b                                         ; $5e22: $80
    add b                                         ; $5e23: $80
    add b                                         ; $5e24: $80
    add b                                         ; $5e25: $80
    add b                                         ; $5e26: $80
    add b                                         ; $5e27: $80
    add h                                         ; $5e28: $84
    add h                                         ; $5e29: $84
    adc d                                         ; $5e2a: $8a
    adc [hl]                                      ; $5e2b: $8e
    adc c                                         ; $5e2c: $89
    adc a                                         ; $5e2d: $8f
    add a                                         ; $5e2e: $87
    add l                                         ; $5e2f: $85
    add h                                         ; $5e30: $84
    add a                                         ; $5e31: $87
    add l                                         ; $5e32: $85
    add [hl]                                      ; $5e33: $86
    add e                                         ; $5e34: $83
    add d                                         ; $5e35: $82
    add d                                         ; $5e36: $82
    add e                                         ; $5e37: $83
    add d                                         ; $5e38: $82
    add e                                         ; $5e39: $83
    add c                                         ; $5e3a: $81
    add c                                         ; $5e3b: $81
    add b                                         ; $5e3c: $80
    add b                                         ; $5e3d: $80
    rst $38                                       ; $5e3e: $ff
    rst $38                                       ; $5e3f: $ff
    rst $38                                       ; $5e40: $ff
    rst $38                                       ; $5e41: $ff
    ld d, c                                       ; $5e42: $51
    ld sp, $3151                                  ; $5e43: $31 $51 $31
    ld d, c                                       ; $5e46: $51
    ld sp, $7131                                  ; $5e47: $31 $31 $71
    ld sp, $5171                                  ; $5e4a: $31 $71 $51
    ld sp, $f191                                  ; $5e4d: $31 $91 $f1
    sub c                                         ; $5e50: $91
    pop af                                        ; $5e51: $f1
    ld [hl], c                                    ; $5e52: $71
    pop af                                        ; $5e53: $f1
    pop hl                                        ; $5e54: $e1
    ld h, c                                       ; $5e55: $61
    and c                                         ; $5e56: $a1
    ld h, c                                       ; $5e57: $61
    ld hl, $c1e1                                  ; $5e58: $21 $e1 $c1
    pop bc                                        ; $5e5b: $c1
    ld bc, $ff01                                  ; $5e5c: $01 $01 $ff
    rst $38                                       ; $5e5f: $ff
    rst $38                                       ; $5e60: $ff
    rst $38                                       ; $5e61: $ff
    add b                                         ; $5e62: $80
    add b                                         ; $5e63: $80
    add b                                         ; $5e64: $80
    add b                                         ; $5e65: $80
    add b                                         ; $5e66: $80
    add b                                         ; $5e67: $80
    add b                                         ; $5e68: $80
    add b                                         ; $5e69: $80
    sbc b                                         ; $5e6a: $98
    sbc b                                         ; $5e6b: $98
    sub h                                         ; $5e6c: $94
    sbc h                                         ; $5e6d: $9c
    sub d                                         ; $5e6e: $92
    sbc [hl]                                      ; $5e6f: $9e
    adc l                                         ; $5e70: $8d
    adc e                                         ; $5e71: $8b
    adc d                                         ; $5e72: $8a
    adc l                                         ; $5e73: $8d
    add a                                         ; $5e74: $87
    add h                                         ; $5e75: $84
    add l                                         ; $5e76: $85
    add [hl]                                      ; $5e77: $86
    add d                                         ; $5e78: $82
    add e                                         ; $5e79: $83
    add c                                         ; $5e7a: $81
    add c                                         ; $5e7b: $81
    add b                                         ; $5e7c: $80
    add b                                         ; $5e7d: $80
    rst $38                                       ; $5e7e: $ff
    rst $38                                       ; $5e7f: $ff
    rst $38                                       ; $5e80: $ff
    rst $38                                       ; $5e81: $ff
    ld d, c                                       ; $5e82: $51
    ld sp, $3151                                  ; $5e83: $31 $51 $31
    ld d, c                                       ; $5e86: $51
    ld sp, $7131                                  ; $5e87: $31 $31 $71
    ld sp, $5171                                  ; $5e8a: $31 $71 $51
    ld sp, $b1d1                                  ; $5e8d: $31 $d1 $b1
    sub c                                         ; $5e90: $91
    pop af                                        ; $5e91: $f1
    or c                                          ; $5e92: $b1
    pop af                                        ; $5e93: $f1
    ld h, c                                       ; $5e94: $61
    pop hl                                        ; $5e95: $e1
    and c                                         ; $5e96: $a1
    ld h, c                                       ; $5e97: $61
    ld de, $e1f1                                  ; $5e98: $11 $f1 $e1
    pop hl                                        ; $5e9b: $e1
    ld bc, $ff01                                  ; $5e9c: $01 $01 $ff
    rst $38                                       ; $5e9f: $ff
    rst $38                                       ; $5ea0: $ff
    rst $38                                       ; $5ea1: $ff
    add b                                         ; $5ea2: $80
    add b                                         ; $5ea3: $80
    add b                                         ; $5ea4: $80
    add b                                         ; $5ea5: $80
    add b                                         ; $5ea6: $80
    add b                                         ; $5ea7: $80
    add b                                         ; $5ea8: $80
    add b                                         ; $5ea9: $80
    add b                                         ; $5eaa: $80
    add b                                         ; $5eab: $80
    or b                                          ; $5eac: $b0
    or b                                          ; $5ead: $b0
    xor b                                         ; $5eae: $a8
    cp b                                          ; $5eaf: $b8
    sub [hl]                                      ; $5eb0: $96
    sbc [hl]                                      ; $5eb1: $9e
    sub l                                         ; $5eb2: $95
    sbc e                                         ; $5eb3: $9b
    adc d                                         ; $5eb4: $8a
    adc l                                         ; $5eb5: $8d
    add l                                         ; $5eb6: $85
    add [hl]                                      ; $5eb7: $86
    add d                                         ; $5eb8: $82
    add e                                         ; $5eb9: $83
    add c                                         ; $5eba: $81
    add c                                         ; $5ebb: $81
    add b                                         ; $5ebc: $80
    add b                                         ; $5ebd: $80
    rst $38                                       ; $5ebe: $ff
    rst $38                                       ; $5ebf: $ff
    rst $38                                       ; $5ec0: $ff
    rst $38                                       ; $5ec1: $ff
    ld d, c                                       ; $5ec2: $51
    ld sp, $3151                                  ; $5ec3: $31 $51 $31
    ld d, c                                       ; $5ec6: $51
    ld sp, $7131                                  ; $5ec7: $31 $31 $71
    ld sp, $5171                                  ; $5eca: $31 $71 $51
    ld sp, $b1d1                                  ; $5ecd: $31 $d1 $b1
    sub c                                         ; $5ed0: $91
    pop af                                        ; $5ed1: $f1
    or c                                          ; $5ed2: $b1
    pop af                                        ; $5ed3: $f1
    pop hl                                        ; $5ed4: $e1
    pop hl                                        ; $5ed5: $e1
    and c                                         ; $5ed6: $a1
    ld h, c                                       ; $5ed7: $61
    ld de, $e1f1                                  ; $5ed8: $11 $f1 $e1
    pop hl                                        ; $5edb: $e1
    ld bc, $ff01                                  ; $5edc: $01 $01 $ff
    rst $38                                       ; $5edf: $ff
    rst $38                                       ; $5ee0: $ff
    rst $38                                       ; $5ee1: $ff
    add b                                         ; $5ee2: $80
    add b                                         ; $5ee3: $80
    add b                                         ; $5ee4: $80
    add b                                         ; $5ee5: $80
    add b                                         ; $5ee6: $80
    add b                                         ; $5ee7: $80
    add b                                         ; $5ee8: $80
    add b                                         ; $5ee9: $80
    add b                                         ; $5eea: $80
    add b                                         ; $5eeb: $80
    add b                                         ; $5eec: $80
    add b                                         ; $5eed: $80
    or b                                          ; $5eee: $b0
    or b                                          ; $5eef: $b0
    xor h                                         ; $5ef0: $ac
    cp h                                          ; $5ef1: $bc
    sub e                                         ; $5ef2: $93
    sbc a                                         ; $5ef3: $9f
    adc d                                         ; $5ef4: $8a
    adc l                                         ; $5ef5: $8d
    add l                                         ; $5ef6: $85
    add [hl]                                      ; $5ef7: $86
    add e                                         ; $5ef8: $83
    add e                                         ; $5ef9: $83
    add b                                         ; $5efa: $80
    add b                                         ; $5efb: $80
    add b                                         ; $5efc: $80
    add b                                         ; $5efd: $80
    rst $38                                       ; $5efe: $ff
    rst $38                                       ; $5eff: $ff
    rst $38                                       ; $5f00: $ff
    rst $38                                       ; $5f01: $ff
    ld d, c                                       ; $5f02: $51
    ld sp, $3151                                  ; $5f03: $31 $51 $31
    ld d, c                                       ; $5f06: $51
    ld sp, $7131                                  ; $5f07: $31 $31 $71
    ld sp, $5171                                  ; $5f0a: $31 $71 $51
    ld sp, $b1d1                                  ; $5f0d: $31 $d1 $b1
    sub c                                         ; $5f10: $91
    pop af                                        ; $5f11: $f1
    or c                                          ; $5f12: $b1
    pop af                                        ; $5f13: $f1
    pop hl                                        ; $5f14: $e1
    pop hl                                        ; $5f15: $e1
    and c                                         ; $5f16: $a1
    ld h, c                                       ; $5f17: $61
    ld de, $e1f1                                  ; $5f18: $11 $f1 $e1
    pop hl                                        ; $5f1b: $e1
    ld bc, $ff01                                  ; $5f1c: $01 $01 $ff
    rst $38                                       ; $5f1f: $ff
    rst $38                                       ; $5f20: $ff
    rst $38                                       ; $5f21: $ff
    add b                                         ; $5f22: $80
    add b                                         ; $5f23: $80
    add b                                         ; $5f24: $80
    add b                                         ; $5f25: $80
    add b                                         ; $5f26: $80
    add b                                         ; $5f27: $80
    add b                                         ; $5f28: $80
    add b                                         ; $5f29: $80
    add b                                         ; $5f2a: $80
    add b                                         ; $5f2b: $80
    add b                                         ; $5f2c: $80
    add b                                         ; $5f2d: $80
    add b                                         ; $5f2e: $80
    add b                                         ; $5f2f: $80
    cp b                                          ; $5f30: $b8
    cp b                                          ; $5f31: $b8
    and a                                         ; $5f32: $a7
    cp a                                          ; $5f33: $bf
    sub [hl]                                      ; $5f34: $96
    sbc c                                         ; $5f35: $99
    adc c                                         ; $5f36: $89
    adc [hl]                                      ; $5f37: $8e
    add [hl]                                      ; $5f38: $86
    add a                                         ; $5f39: $87
    add c                                         ; $5f3a: $81
    add c                                         ; $5f3b: $81
    add b                                         ; $5f3c: $80
    add b                                         ; $5f3d: $80
    rst $38                                       ; $5f3e: $ff
    rst $38                                       ; $5f3f: $ff
    rst $38                                       ; $5f40: $ff
    rst $38                                       ; $5f41: $ff
    ld d, c                                       ; $5f42: $51
    ld sp, $3151                                  ; $5f43: $31 $51 $31
    ld d, c                                       ; $5f46: $51
    ld sp, $7131                                  ; $5f47: $31 $31 $71
    ld sp, $5171                                  ; $5f4a: $31 $71 $51
    ld sp, $b1d1                                  ; $5f4d: $31 $d1 $b1
    sub c                                         ; $5f50: $91
    pop af                                        ; $5f51: $f1
    or c                                          ; $5f52: $b1
    pop af                                        ; $5f53: $f1
    pop hl                                        ; $5f54: $e1
    pop hl                                        ; $5f55: $e1
    and c                                         ; $5f56: $a1
    ld h, c                                       ; $5f57: $61
    ld de, $e1f1                                  ; $5f58: $11 $f1 $e1
    pop hl                                        ; $5f5b: $e1
    ld bc, $ff01                                  ; $5f5c: $01 $01 $ff
    rst $38                                       ; $5f5f: $ff
    rst $38                                       ; $5f60: $ff
    rst $38                                       ; $5f61: $ff
    add b                                         ; $5f62: $80
    add b                                         ; $5f63: $80
    add b                                         ; $5f64: $80
    add b                                         ; $5f65: $80
    add b                                         ; $5f66: $80
    add b                                         ; $5f67: $80
    add b                                         ; $5f68: $80
    add b                                         ; $5f69: $80
    add b                                         ; $5f6a: $80
    add b                                         ; $5f6b: $80
    add b                                         ; $5f6c: $80
    add b                                         ; $5f6d: $80
    add b                                         ; $5f6e: $80
    add b                                         ; $5f6f: $80
    or b                                          ; $5f70: $b0
    or b                                          ; $5f71: $b0
    xor a                                         ; $5f72: $af
    cp a                                          ; $5f73: $bf
    sub l                                         ; $5f74: $95
    sbc e                                         ; $5f75: $9b
    adc e                                         ; $5f76: $8b
    adc h                                         ; $5f77: $8c
    add [hl]                                      ; $5f78: $86
    add a                                         ; $5f79: $87
    add c                                         ; $5f7a: $81
    add c                                         ; $5f7b: $81
    add b                                         ; $5f7c: $80
    add b                                         ; $5f7d: $80
    rst $38                                       ; $5f7e: $ff
    rst $38                                       ; $5f7f: $ff
    rst $38                                       ; $5f80: $ff
    rst $38                                       ; $5f81: $ff
    ld d, c                                       ; $5f82: $51
    ld sp, $3151                                  ; $5f83: $31 $51 $31
    ld d, c                                       ; $5f86: $51
    ld sp, $7131                                  ; $5f87: $31 $31 $71
    ld sp, $5171                                  ; $5f8a: $31 $71 $51
    ld sp, $b1d1                                  ; $5f8d: $31 $d1 $b1
    sub c                                         ; $5f90: $91
    pop af                                        ; $5f91: $f1
    or c                                          ; $5f92: $b1
    pop af                                        ; $5f93: $f1
    pop hl                                        ; $5f94: $e1
    pop hl                                        ; $5f95: $e1
    and c                                         ; $5f96: $a1
    ld h, c                                       ; $5f97: $61
    ld de, $e1f1                                  ; $5f98: $11 $f1 $e1
    pop hl                                        ; $5f9b: $e1
    ld bc, $ff01                                  ; $5f9c: $01 $01 $ff
    rst $38                                       ; $5f9f: $ff
    rst $38                                       ; $5fa0: $ff
    rst $38                                       ; $5fa1: $ff
    add b                                         ; $5fa2: $80
    add b                                         ; $5fa3: $80
    add b                                         ; $5fa4: $80
    add b                                         ; $5fa5: $80
    add b                                         ; $5fa6: $80
    add b                                         ; $5fa7: $80
    add b                                         ; $5fa8: $80
    add b                                         ; $5fa9: $80
    add b                                         ; $5faa: $80
    add b                                         ; $5fab: $80
    add b                                         ; $5fac: $80
    add b                                         ; $5fad: $80
    add b                                         ; $5fae: $80
    add b                                         ; $5faf: $80
    sbc b                                         ; $5fb0: $98
    sbc b                                         ; $5fb1: $98
    and a                                         ; $5fb2: $a7
    cp a                                          ; $5fb3: $bf
    sub [hl]                                      ; $5fb4: $96
    sbc c                                         ; $5fb5: $99
    adc l                                         ; $5fb6: $8d
    adc [hl]                                      ; $5fb7: $8e
    add d                                         ; $5fb8: $82
    add e                                         ; $5fb9: $83
    add c                                         ; $5fba: $81
    add c                                         ; $5fbb: $81
    add b                                         ; $5fbc: $80
    add b                                         ; $5fbd: $80
    rst $38                                       ; $5fbe: $ff
    rst $38                                       ; $5fbf: $ff
    rst $38                                       ; $5fc0: $ff
    rst $38                                       ; $5fc1: $ff
    ld d, c                                       ; $5fc2: $51
    ld sp, $3151                                  ; $5fc3: $31 $51 $31
    ld d, c                                       ; $5fc6: $51
    ld sp, $3151                                  ; $5fc7: $31 $51 $31
    ld sp, $5171                                  ; $5fca: $31 $71 $51
    ld sp, $b1d1                                  ; $5fcd: $31 $d1 $b1
    sub c                                         ; $5fd0: $91
    pop af                                        ; $5fd1: $f1
    ld sp, $e1f1                                  ; $5fd2: $31 $f1 $e1
    pop hl                                        ; $5fd5: $e1
    and c                                         ; $5fd6: $a1
    ld h, c                                       ; $5fd7: $61
    ld de, $e1f1                                  ; $5fd8: $11 $f1 $e1
    pop hl                                        ; $5fdb: $e1
    ld bc, $ff01                                  ; $5fdc: $01 $01 $ff
    rst $38                                       ; $5fdf: $ff
    rst $38                                       ; $5fe0: $ff
    rst $38                                       ; $5fe1: $ff
    add c                                         ; $5fe2: $81
    add c                                         ; $5fe3: $81
    add c                                         ; $5fe4: $81
    add c                                         ; $5fe5: $81
    add c                                         ; $5fe6: $81
    add c                                         ; $5fe7: $81
    add d                                         ; $5fe8: $82
    add e                                         ; $5fe9: $83
    add e                                         ; $5fea: $83
    add d                                         ; $5feb: $82
    add e                                         ; $5fec: $83
    add e                                         ; $5fed: $83
    add e                                         ; $5fee: $83
    add d                                         ; $5fef: $82
    add e                                         ; $5ff0: $83
    add d                                         ; $5ff1: $82
    add l                                         ; $5ff2: $85
    add [hl]                                      ; $5ff3: $86
    sbc e                                         ; $5ff4: $9b
    sbc h                                         ; $5ff5: $9c
    sub b                                         ; $5ff6: $90
    sbc a                                         ; $5ff7: $9f
    sbc a                                         ; $5ff8: $9f
    sbc a                                         ; $5ff9: $9f
    sbc a                                         ; $5ffa: $9f
    sbc a                                         ; $5ffb: $9f
    add b                                         ; $5ffc: $80
    add b                                         ; $5ffd: $80
    rst $38                                       ; $5ffe: $ff
    rst $38                                       ; $5fff: $ff
    rst $38                                       ; $6000: $ff
    rst $38                                       ; $6001: $ff
    pop bc                                        ; $6002: $c1
    ld b, c                                       ; $6003: $41
    pop bc                                        ; $6004: $c1
    ld b, c                                       ; $6005: $41
    pop bc                                        ; $6006: $c1
    ld b, c                                       ; $6007: $41
    pop bc                                        ; $6008: $c1
    ld b, c                                       ; $6009: $41
    add c                                         ; $600a: $81
    add c                                         ; $600b: $81
    add c                                         ; $600c: $81
    add c                                         ; $600d: $81
    add c                                         ; $600e: $81
    add c                                         ; $600f: $81
    add c                                         ; $6010: $81
    add c                                         ; $6011: $81
    add c                                         ; $6012: $81
    add c                                         ; $6013: $81
    add c                                         ; $6014: $81
    add c                                         ; $6015: $81
    add c                                         ; $6016: $81
    add c                                         ; $6017: $81
    add c                                         ; $6018: $81
    add c                                         ; $6019: $81
    add c                                         ; $601a: $81
    add c                                         ; $601b: $81
    ld bc, $ff01                                  ; $601c: $01 $01 $ff
    rst $38                                       ; $601f: $ff
    rst $38                                       ; $6020: $ff
    rst $38                                       ; $6021: $ff
    add b                                         ; $6022: $80
    rst $38                                       ; $6023: $ff
    add e                                         ; $6024: $83
    rst $38                                       ; $6025: $ff
    add l                                         ; $6026: $85
    cp $8b                                        ; $6027: $fe $8b
    db $fc                                        ; $6029: $fc
    adc a                                         ; $602a: $8f
    ld hl, sp-$71                                 ; $602b: $f8 $8f
    ld hl, sp-$75                                 ; $602d: $f8 $8b
    db $fc                                        ; $602f: $fc
    rst $38                                       ; $6030: $ff
    rst $38                                       ; $6031: $ff
    ld bc, $c1ff                                  ; $6032: $01 $ff $c1
    rst $38                                       ; $6035: $ff
    and c                                         ; $6036: $a1
    ld a, a                                       ; $6037: $7f
    pop de                                        ; $6038: $d1
    ccf                                           ; $6039: $3f
    pop de                                        ; $603a: $d1
    ccf                                           ; $603b: $3f
    sub c                                         ; $603c: $91
    ld a, a                                       ; $603d: $7f
    ld de, $bcff                                  ; $603e: $11 $ff $bc
    rst $38                                       ; $6041: $ff
    sbc e                                         ; $6042: $9b
    rst $38                                       ; $6043: $ff
    sub l                                         ; $6044: $95
    rst $38                                       ; $6045: $ff
    add d                                         ; $6046: $82
    rst $38                                       ; $6047: $ff
    add b                                         ; $6048: $80
    rst $38                                       ; $6049: $ff
    add b                                         ; $604a: $80
    rst $38                                       ; $604b: $ff
    add b                                         ; $604c: $80
    rst $38                                       ; $604d: $ff
    rst $38                                       ; $604e: $ff
    rst $38                                       ; $604f: $ff
    dec a                                         ; $6050: $3d
    rst $38                                       ; $6051: $ff
    jp hl                                         ; $6052: $e9


    rst $38                                       ; $6053: $ff
    ld sp, $c1ff                                  ; $6054: $31 $ff $c1
    rst $38                                       ; $6057: $ff
    ld bc, $01ff                                  ; $6058: $01 $ff $01
    rst $38                                       ; $605b: $ff
    ld bc, $ffff                                  ; $605c: $01 $ff $ff
    rst $38                                       ; $605f: $ff
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    ld a, a                                       ; $6063: $7f
    nop                                           ; $6064: $00
    ld a, h                                       ; $6065: $7c
    nop                                           ; $6066: $00
    ld a, b                                       ; $6067: $78
    nop                                           ; $6068: $00
    ld [hl], b                                    ; $6069: $70
    nop                                           ; $606a: $00
    ld [hl], b                                    ; $606b: $70
    nop                                           ; $606c: $00
    ld [hl], b                                    ; $606d: $70
    nop                                           ; $606e: $00
    ld [hl], b                                    ; $606f: $70
    nop                                           ; $6070: $00
    ld a, b                                       ; $6071: $78
    nop                                           ; $6072: $00
    ld a, h                                       ; $6073: $7c
    inc bc                                        ; $6074: $03
    ld a, a                                       ; $6075: $7f
    ld bc, $7f7f                                  ; $6076: $01 $7f $7f
    ld bc, $007f                                  ; $6079: $01 $7f $00
    ld a, a                                       ; $607c: $7f
    nop                                           ; $607d: $00
    nop                                           ; $607e: $00
    nop                                           ; $607f: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    cp $00                                        ; $6083: $fe $00
    ld a, $00                                     ; $6085: $3e $00
    ld e, $00                                     ; $6087: $1e $00
    ld c, $00                                     ; $6089: $0e $00
    ld c, $00                                     ; $608b: $0e $00
    ld c, $00                                     ; $608d: $0e $00
    ld c, $00                                     ; $608f: $0e $00
    ld e, $00                                     ; $6091: $1e $00
    ld a, $c0                                     ; $6093: $3e $c0
    cp [hl]                                       ; $6095: $be
    add b                                         ; $6096: $80
    ld a, [hl]                                    ; $6097: $7e
    cp $00                                        ; $6098: $fe $00
    cp $00                                        ; $609a: $fe $00
    cp $00                                        ; $609c: $fe $00
    nop                                           ; $609e: $00
    nop                                           ; $609f: $00
    nop                                           ; $60a0: $00
    nop                                           ; $60a1: $00
    nop                                           ; $60a2: $00
    ld a, a                                       ; $60a3: $7f
    nop                                           ; $60a4: $00
    ld a, h                                       ; $60a5: $7c
    nop                                           ; $60a6: $00
    ld a, b                                       ; $60a7: $78
    nop                                           ; $60a8: $00
    ld [hl], b                                    ; $60a9: $70
    nop                                           ; $60aa: $00
    ld [hl], b                                    ; $60ab: $70
    nop                                           ; $60ac: $00
    ld [hl], b                                    ; $60ad: $70
    nop                                           ; $60ae: $00
    ld [hl], b                                    ; $60af: $70
    nop                                           ; $60b0: $00
    ld a, b                                       ; $60b1: $78
    nop                                           ; $60b2: $00
    ld a, h                                       ; $60b3: $7c
    ld a, a                                       ; $60b4: $7f
    ld c, b                                       ; $60b5: $48
    ld a, a                                       ; $60b6: $7f
    dec h                                         ; $60b7: $25
    ld a, a                                       ; $60b8: $7f
    ld d, d                                       ; $60b9: $52
    ld a, a                                       ; $60ba: $7f
    inc d                                         ; $60bb: $14
    ld a, a                                       ; $60bc: $7f
    nop                                           ; $60bd: $00
    nop                                           ; $60be: $00
    nop                                           ; $60bf: $00
    nop                                           ; $60c0: $00
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    cp $00                                        ; $60c3: $fe $00
    ld a, $00                                     ; $60c5: $3e $00
    ld e, $00                                     ; $60c7: $1e $00
    ld c, $00                                     ; $60c9: $0e $00
    ld c, $00                                     ; $60cb: $0e $00
    ld c, $00                                     ; $60cd: $0e $00
    ld c, $00                                     ; $60cf: $0e $00
    ld e, $00                                     ; $60d1: $1e $00
    ld a, $fe                                     ; $60d3: $3e $fe
    inc d                                         ; $60d5: $14
    cp $4a                                        ; $60d6: $fe $4a
    cp $54                                        ; $60d8: $fe $54
    cp $a4                                        ; $60da: $fe $a4
    cp $00                                        ; $60dc: $fe $00
    nop                                           ; $60de: $00
    nop                                           ; $60df: $00
    nop                                           ; $60e0: $00
    nop                                           ; $60e1: $00
    nop                                           ; $60e2: $00
    ld a, a                                       ; $60e3: $7f
    nop                                           ; $60e4: $00
    ld a, h                                       ; $60e5: $7c
    nop                                           ; $60e6: $00
    ld a, b                                       ; $60e7: $78
    nop                                           ; $60e8: $00
    ld [hl], b                                    ; $60e9: $70
    nop                                           ; $60ea: $00
    ld [hl], b                                    ; $60eb: $70
    nop                                           ; $60ec: $00
    ld [hl], b                                    ; $60ed: $70
    db $10                                        ; $60ee: $10
    ld h, b                                       ; $60ef: $60
    ld a, d                                       ; $60f0: $7a
    jr nz, jr_012_6172                            ; $60f1: $20 $7f

    ld a, [hl+]                                   ; $60f3: $2a
    ld a, a                                       ; $60f4: $7f
    ld c, c                                       ; $60f5: $49
    ld a, a                                       ; $60f6: $7f
    dec h                                         ; $60f7: $25
    ld a, a                                       ; $60f8: $7f
    ld d, d                                       ; $60f9: $52
    ld a, a                                       ; $60fa: $7f
    inc d                                         ; $60fb: $14
    ld a, a                                       ; $60fc: $7f
    nop                                           ; $60fd: $00
    nop                                           ; $60fe: $00
    nop                                           ; $60ff: $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    cp $00                                        ; $6103: $fe $00
    ld a, $00                                     ; $6105: $3e $00
    ld e, $00                                     ; $6107: $1e $00
    ld c, $00                                     ; $6109: $0e $00
    ld c, $00                                     ; $610b: $0e $00
    ld c, $08                                     ; $610d: $0e $08
    ld b, $9e                                     ; $610f: $06 $9e
    ld a, [bc]                                    ; $6111: $0a
    cp $aa                                        ; $6112: $fe $aa
    cp $14                                        ; $6114: $fe $14
    cp $4a                                        ; $6116: $fe $4a
    cp $54                                        ; $6118: $fe $54
    cp $a4                                        ; $611a: $fe $a4
    cp $00                                        ; $611c: $fe $00
    nop                                           ; $611e: $00
    nop                                           ; $611f: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    ld a, a                                       ; $6123: $7f
    nop                                           ; $6124: $00
    ld a, h                                       ; $6125: $7c
    nop                                           ; $6126: $00
    ld a, b                                       ; $6127: $78
    nop                                           ; $6128: $00
    ld [hl], b                                    ; $6129: $70
    nop                                           ; $612a: $00
    ld [hl], b                                    ; $612b: $70
    nop                                           ; $612c: $00
    ld [hl], b                                    ; $612d: $70
    ld b, b                                       ; $612e: $40
    jr nc, @+$42                                  ; $612f: $30 $40

    nop                                           ; $6131: $00
    ld h, b                                       ; $6132: $60
    jr nz, jr_012_619f                            ; $6133: $20 $6a

    ld b, b                                       ; $6135: $40
    ld a, l                                       ; $6136: $7d
    inc h                                         ; $6137: $24
    ld a, a                                       ; $6138: $7f
    ld d, d                                       ; $6139: $52
    ld a, a                                       ; $613a: $7f
    inc d                                         ; $613b: $14
    ld a, a                                       ; $613c: $7f
    nop                                           ; $613d: $00
    nop                                           ; $613e: $00
    nop                                           ; $613f: $00
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    cp $00                                        ; $6143: $fe $00
    ld a, $00                                     ; $6145: $3e $00
    ld e, $00                                     ; $6147: $1e $00
    ld c, $00                                     ; $6149: $0e $00
    ld c, $00                                     ; $614b: $0e $00
    ld c, $02                                     ; $614d: $0e $02
    inc c                                         ; $614f: $0c
    ld [bc], a                                    ; $6150: $02
    nop                                           ; $6151: $00
    ld b, $02                                     ; $6152: $06 $02
    ld c, $04                                     ; $6154: $0e $04
    ld a, $0a                                     ; $6156: $3e $0a
    cp $54                                        ; $6158: $fe $54
    cp $a4                                        ; $615a: $fe $a4
    cp $00                                        ; $615c: $fe $00
    nop                                           ; $615e: $00
    nop                                           ; $615f: $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    ld a, a                                       ; $6163: $7f
    nop                                           ; $6164: $00
    ld a, h                                       ; $6165: $7c
    nop                                           ; $6166: $00
    ld a, b                                       ; $6167: $78
    nop                                           ; $6168: $00
    ld [hl], b                                    ; $6169: $70
    nop                                           ; $616a: $00
    ld [hl], b                                    ; $616b: $70
    nop                                           ; $616c: $00
    ld [hl], b                                    ; $616d: $70
    nop                                           ; $616e: $00
    ld [hl], b                                    ; $616f: $70
    jr nz, @+$5a                                  ; $6170: $20 $58

jr_012_6172:
    ld a, [hl+]                                   ; $6172: $2a
    ld d, [hl]                                    ; $6173: $56
    ld a, a                                       ; $6174: $7f
    ld d, h                                       ; $6175: $54
    ld a, a                                       ; $6176: $7f
    dec e                                         ; $6177: $1d
    ld a, a                                       ; $6178: $7f
    ld l, e                                       ; $6179: $6b
    ld a, a                                       ; $617a: $7f
    ld l, $7f                                     ; $617b: $2e $7f
    ld a, a                                       ; $617d: $7f
    nop                                           ; $617e: $00
    nop                                           ; $617f: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    cp $00                                        ; $6183: $fe $00
    ld a, $00                                     ; $6185: $3e $00
    ld e, $00                                     ; $6187: $1e $00
    ld c, $00                                     ; $6189: $0e $00
    ld c, $00                                     ; $618b: $0e $00
    ld c, $00                                     ; $618d: $0e $00
    ld c, $04                                     ; $618f: $0e $04
    ld a, [de]                                    ; $6191: $1a
    ld d, h                                       ; $6192: $54
    ld a, [hl+]                                   ; $6193: $2a
    cp $ac                                        ; $6194: $fe $ac
    cp $6a                                        ; $6196: $fe $6a
    cp $54                                        ; $6198: $fe $54
    cp $d6                                        ; $619a: $fe $d6
    cp $fe                                        ; $619c: $fe $fe
    nop                                           ; $619e: $00

jr_012_619f:
    nop                                           ; $619f: $00
    nop                                           ; $61a0: $00
    nop                                           ; $61a1: $00
    nop                                           ; $61a2: $00
    ld a, a                                       ; $61a3: $7f
    nop                                           ; $61a4: $00
    ld a, h                                       ; $61a5: $7c
    nop                                           ; $61a6: $00
    ld a, b                                       ; $61a7: $78
    nop                                           ; $61a8: $00
    ld [hl], b                                    ; $61a9: $70
    jr nz, jr_012_61fc                            ; $61aa: $20 $50

    ld a, [hl+]                                   ; $61ac: $2a
    ld d, b                                       ; $61ad: $50
    ld a, d                                       ; $61ae: $7a
    ld d, b                                       ; $61af: $50
    ld a, d                                       ; $61b0: $7a
    ld [hl-], a                                   ; $61b1: $32
    ld a, a                                       ; $61b2: $7f
    dec l                                         ; $61b3: $2d
    ld a, a                                       ; $61b4: $7f
    ld l, l                                       ; $61b5: $6d
    ld a, a                                       ; $61b6: $7f
    ld d, [hl]                                    ; $61b7: $56
    ld a, a                                       ; $61b8: $7f
    dec sp                                        ; $61b9: $3b
    ld a, a                                       ; $61ba: $7f
    ld l, a                                       ; $61bb: $6f
    ld a, a                                       ; $61bc: $7f
    ld a, a                                       ; $61bd: $7f
    nop                                           ; $61be: $00
    nop                                           ; $61bf: $00
    nop                                           ; $61c0: $00
    nop                                           ; $61c1: $00
    nop                                           ; $61c2: $00
    cp $00                                        ; $61c3: $fe $00
    ld a, $00                                     ; $61c5: $3e $00
    ld e, $00                                     ; $61c7: $1e $00
    ld c, $04                                     ; $61c9: $0e $04
    ld a, [bc]                                    ; $61cb: $0a
    inc d                                         ; $61cc: $14
    ld a, [de]                                    ; $61cd: $1a
    ld e, [hl]                                    ; $61ce: $5e
    ld a, [bc]                                    ; $61cf: $0a
    ld e, [hl]                                    ; $61d0: $5e
    inc d                                         ; $61d1: $14
    cp $36                                        ; $61d2: $fe $36
    cp $6a                                        ; $61d4: $fe $6a
    cp $aa                                        ; $61d6: $fe $aa
    cp $54                                        ; $61d8: $fe $54
    cp $76                                        ; $61da: $fe $76
    cp $fe                                        ; $61dc: $fe $fe
    nop                                           ; $61de: $00
    nop                                           ; $61df: $00
    nop                                           ; $61e0: $00
    nop                                           ; $61e1: $00
    nop                                           ; $61e2: $00
    ld a, a                                       ; $61e3: $7f
    jr nz, jr_012_6262                            ; $61e4: $20 $7c

    ld d, h                                       ; $61e6: $54
    inc l                                         ; $61e7: $2c
    ld a, [hl]                                    ; $61e8: $7e
    ld a, [hl-]                                   ; $61e9: $3a
    ld a, l                                       ; $61ea: $7d
    ld d, h                                       ; $61eb: $54
    ld a, a                                       ; $61ec: $7f
    ld d, l                                       ; $61ed: $55
    ld a, a                                       ; $61ee: $7f
    ld d, l                                       ; $61ef: $55
    ld a, a                                       ; $61f0: $7f
    scf                                           ; $61f1: $37
    ld a, a                                       ; $61f2: $7f
    dec l                                         ; $61f3: $2d
    ld a, a                                       ; $61f4: $7f
    ld l, l                                       ; $61f5: $6d
    ld a, a                                       ; $61f6: $7f
    ld d, [hl]                                    ; $61f7: $56
    ld a, a                                       ; $61f8: $7f
    dec sp                                        ; $61f9: $3b
    ld a, a                                       ; $61fa: $7f
    ld l, a                                       ; $61fb: $6f

jr_012_61fc:
    ld a, a                                       ; $61fc: $7f
    ld a, a                                       ; $61fd: $7f
    nop                                           ; $61fe: $00
    nop                                           ; $61ff: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    cp $08                                        ; $6203: $fe $08
    ld a, $1a                                     ; $6205: $3e $1a
    inc d                                         ; $6207: $14
    cp [hl]                                       ; $6208: $be
    inc l                                         ; $6209: $2c
    ld e, [hl]                                    ; $620a: $5e
    ld d, h                                       ; $620b: $54
    ld e, [hl]                                    ; $620c: $5e
    ld a, [de]                                    ; $620d: $1a
    ld a, [hl]                                    ; $620e: $7e
    ld a, [hl+]                                   ; $620f: $2a
    cp $b4                                        ; $6210: $fe $b4
    cp $b6                                        ; $6212: $fe $b6
    cp $6a                                        ; $6214: $fe $6a
    cp $aa                                        ; $6216: $fe $aa
    cp $54                                        ; $6218: $fe $54
    cp $76                                        ; $621a: $fe $76
    cp $fe                                        ; $621c: $fe $fe
    nop                                           ; $621e: $00
    nop                                           ; $621f: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    ld a, a                                       ; $6223: $7f
    nop                                           ; $6224: $00
    ld a, h                                       ; $6225: $7c
    nop                                           ; $6226: $00
    ld a, b                                       ; $6227: $78
    nop                                           ; $6228: $00
    ld [hl], b                                    ; $6229: $70
    nop                                           ; $622a: $00
    ld [hl], b                                    ; $622b: $70
    nop                                           ; $622c: $00
    ld [hl], b                                    ; $622d: $70
    nop                                           ; $622e: $00
    ld [hl], b                                    ; $622f: $70
    nop                                           ; $6230: $00
    ld a, b                                       ; $6231: $78
    ld a, h                                       ; $6232: $7c
    inc c                                         ; $6233: $0c
    ld a, a                                       ; $6234: $7f
    inc hl                                        ; $6235: $23
    ld a, a                                       ; $6236: $7f
    ld [$207f], sp                                ; $6237: $08 $7f $20
    ld a, a                                       ; $623a: $7f
    ld bc, $7f7f                                  ; $623b: $01 $7f $7f
    nop                                           ; $623e: $00
    nop                                           ; $623f: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    cp $00                                        ; $6243: $fe $00
    ld a, $00                                     ; $6245: $3e $00
    ld e, $00                                     ; $6247: $1e $00
    ld c, $00                                     ; $6249: $0e $00
    ld c, $00                                     ; $624b: $0e $00
    ld c, $00                                     ; $624d: $0e $00
    ld c, $00                                     ; $624f: $0e $00
    ld e, $3e                                     ; $6251: $1e $3e

jr_012_6253:
    jr nc, jr_012_6253                            ; $6253: $30 $fe

    db $e4                                        ; $6255: $e4
    cp $90                                        ; $6256: $fe $90
    cp $04                                        ; $6258: $fe $04
    cp $20                                        ; $625a: $fe $20
    cp $fe                                        ; $625c: $fe $fe
    nop                                           ; $625e: $00
    nop                                           ; $625f: $00
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00

jr_012_6262:
    nop                                           ; $6262: $00
    ld a, a                                       ; $6263: $7f
    nop                                           ; $6264: $00
    ld a, h                                       ; $6265: $7c
    nop                                           ; $6266: $00
    ld a, b                                       ; $6267: $78
    nop                                           ; $6268: $00
    ld [hl], b                                    ; $6269: $70
    nop                                           ; $626a: $00
    ld [hl], b                                    ; $626b: $70
    nop                                           ; $626c: $00
    ld [hl], b                                    ; $626d: $70
    jr jr_012_62e8                                ; $626e: $18 $78

    ld a, h                                       ; $6270: $7c
    inc h                                         ; $6271: $24
    ld a, a                                       ; $6272: $7f
    ld bc, $207f                                  ; $6273: $01 $7f $20
    ld a, a                                       ; $6276: $7f
    nop                                           ; $6277: $00
    ld a, a                                       ; $6278: $7f
    jr z, jr_012_62fa                             ; $6279: $28 $7f

    ld bc, $7f7f                                  ; $627b: $01 $7f $7f
    nop                                           ; $627e: $00
    nop                                           ; $627f: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    cp $00                                        ; $6283: $fe $00
    ld a, $00                                     ; $6285: $3e $00
    ld e, $00                                     ; $6287: $1e $00
    ld c, $00                                     ; $6289: $0e $00
    ld c, $00                                     ; $628b: $0e $00
    ld c, $18                                     ; $628d: $0e $18
    ld e, $3e                                     ; $628f: $1e $3e
    inc [hl]                                      ; $6291: $34
    cp $e0                                        ; $6292: $fe $e0
    cp $10                                        ; $6294: $fe $10
    cp $80                                        ; $6296: $fe $80
    cp $04                                        ; $6298: $fe $04
    cp $00                                        ; $629a: $fe $00
    cp $fe                                        ; $629c: $fe $fe
    nop                                           ; $629e: $00
    nop                                           ; $629f: $00
    nop                                           ; $62a0: $00
    nop                                           ; $62a1: $00
    nop                                           ; $62a2: $00
    ld a, a                                       ; $62a3: $7f
    nop                                           ; $62a4: $00
    ld a, h                                       ; $62a5: $7c
    nop                                           ; $62a6: $00
    ld a, b                                       ; $62a7: $78
    nop                                           ; $62a8: $00
    ld [hl], b                                    ; $62a9: $70
    db $10                                        ; $62aa: $10
    ld [hl], b                                    ; $62ab: $70
    ld a, b                                       ; $62ac: $78
    ld l, b                                       ; $62ad: $68
    ld a, a                                       ; $62ae: $7f
    inc hl                                        ; $62af: $23
    ld a, a                                       ; $62b0: $7f
    ld c, b                                       ; $62b1: $48
    ld a, a                                       ; $62b2: $7f
    rlca                                          ; $62b3: $07
    ld a, a                                       ; $62b4: $7f
    ld [hl+], a                                   ; $62b5: $22
    ld a, a                                       ; $62b6: $7f
    ld b, b                                       ; $62b7: $40
    ld a, a                                       ; $62b8: $7f
    ld [$527f], sp                                ; $62b9: $08 $7f $52
    ld a, a                                       ; $62bc: $7f
    ld a, a                                       ; $62bd: $7f
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    cp $00                                        ; $62c3: $fe $00
    ld a, $00                                     ; $62c5: $3e $00
    ld e, $00                                     ; $62c7: $1e $00
    ld c, $08                                     ; $62c9: $0e $08
    ld c, $1e                                     ; $62cb: $0e $1e
    ld d, $fe                                     ; $62cd: $16 $fe
    db $ec                                        ; $62cf: $ec
    cp $08                                        ; $62d0: $fe $08
    cp $32                                        ; $62d2: $fe $32
    cp $00                                        ; $62d4: $fe $00
    cp $90                                        ; $62d6: $fe $90
    cp $04                                        ; $62d8: $fe $04
    cp $4a                                        ; $62da: $fe $4a
    cp $fe                                        ; $62dc: $fe $fe
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    ld a, a                                       ; $62e3: $7f
    nop                                           ; $62e4: $00
    ld a, h                                       ; $62e5: $7c
    nop                                           ; $62e6: $00
    ld a, b                                       ; $62e7: $78

jr_012_62e8:
    nop                                           ; $62e8: $00
    ld [hl], b                                    ; $62e9: $70
    nop                                           ; $62ea: $00
    ld [hl], b                                    ; $62eb: $70
    nop                                           ; $62ec: $00
    ld [hl], b                                    ; $62ed: $70
    nop                                           ; $62ee: $00
    ld [hl], b                                    ; $62ef: $70
    nop                                           ; $62f0: $00
    ld a, b                                       ; $62f1: $78
    nop                                           ; $62f2: $00
    ld a, h                                       ; $62f3: $7c
    ld a, a                                       ; $62f4: $7f
    ld a, b                                       ; $62f5: $78
    ld a, a                                       ; $62f6: $7f
    ld a, a                                       ; $62f7: $7f
    ld a, a                                       ; $62f8: $7f
    ld a, a                                       ; $62f9: $7f

jr_012_62fa:
    ld a, a                                       ; $62fa: $7f
    ld a, a                                       ; $62fb: $7f
    ld a, a                                       ; $62fc: $7f
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    nop                                           ; $62ff: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    cp $00                                        ; $6303: $fe $00
    ld a, $00                                     ; $6305: $3e $00
    ld e, $00                                     ; $6307: $1e $00
    ld c, $00                                     ; $6309: $0e $00
    ld c, $00                                     ; $630b: $0e $00
    ld c, $00                                     ; $630d: $0e $00
    ld c, $00                                     ; $630f: $0e $00
    ld e, $00                                     ; $6311: $1e $00
    ld a, $fe                                     ; $6313: $3e $fe
    ld e, $fe                                     ; $6315: $1e $fe
    cp $fe                                        ; $6317: $fe $fe
    cp $fe                                        ; $6319: $fe $fe
    cp $fe                                        ; $631b: $fe $fe
    nop                                           ; $631d: $00
    nop                                           ; $631e: $00
    nop                                           ; $631f: $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    jr c, jr_012_635c                             ; $6322: $38 $38

    jr c, jr_012_634e                             ; $6324: $38 $28

    cp $ee                                        ; $6326: $fe $ee
    cp $92                                        ; $6328: $fe $92
    cp $ee                                        ; $632a: $fe $ee
    jr c, jr_012_6356                             ; $632c: $38 $28

    jr c, jr_012_6368                             ; $632e: $38 $38

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
    nop                                           ; $633a: $00
    nop                                           ; $633b: $00
    nop                                           ; $633c: $00
    nop                                           ; $633d: $00
    nop                                           ; $633e: $00
    nop                                           ; $633f: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    jr jr_012_635f                                ; $6345: $18 $18

    inc h                                         ; $6347: $24
    jr jr_012_636e                                ; $6348: $18 $24

    nop                                           ; $634a: $00
    jr jr_012_634d                                ; $634b: $18 $00

jr_012_634d:
    nop                                           ; $634d: $00

jr_012_634e:
    nop                                           ; $634e: $00
    nop                                           ; $634f: $00
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    nop                                           ; $6354: $00
    nop                                           ; $6355: $00

jr_012_6356:
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    nop                                           ; $635a: $00
    nop                                           ; $635b: $00

jr_012_635c:
    nop                                           ; $635c: $00
    nop                                           ; $635d: $00
    nop                                           ; $635e: $00

jr_012_635f:
    nop                                           ; $635f: $00
    ld h, [hl]                                    ; $6360: $66
    ld h, [hl]                                    ; $6361: $66
    rst $38                                       ; $6362: $ff
    sbc c                                         ; $6363: $99
    rst $38                                       ; $6364: $ff
    sub c                                         ; $6365: $91
    ld a, [hl]                                    ; $6366: $7e
    ld h, d                                       ; $6367: $62

jr_012_6368:
    ld a, [hl]                                    ; $6368: $7e
    ld b, [hl]                                    ; $6369: $46
    rst $38                                       ; $636a: $ff
    adc c                                         ; $636b: $89
    rst $38                                       ; $636c: $ff
    sbc c                                         ; $636d: $99

jr_012_636e:
    ld h, [hl]                                    ; $636e: $66
    ld h, [hl]                                    ; $636f: $66
    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
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
    ret nz                                        ; $6392: $c0

    ret nz                                        ; $6393: $c0

    ldh a, [$b0]                                  ; $6394: $f0 $b0
    db $fc                                        ; $6396: $fc
    adc h                                         ; $6397: $8c
    cp $82                                        ; $6398: $fe $82
    db $fc                                        ; $639a: $fc
    adc h                                         ; $639b: $8c
    ldh a, [$b0]                                  ; $639c: $f0 $b0
    ret nz                                        ; $639e: $c0

    ret nz                                        ; $639f: $c0

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
    jr jr_012_63cc                                ; $63b2: $18 $18

    jr c, jr_012_63de                             ; $63b4: $38 $28

    ld a, h                                       ; $63b6: $7c
    ld b, h                                       ; $63b7: $44
    db $fc                                        ; $63b8: $fc
    add h                                         ; $63b9: $84
    cp $c2                                        ; $63ba: $fe $c2
    ld a, $32                                     ; $63bc: $3e $32
    ld c, $0e                                     ; $63be: $0e $0e
    nop                                           ; $63c0: $00
    nop                                           ; $63c1: $00
    nop                                           ; $63c2: $00
    nop                                           ; $63c3: $00
    nop                                           ; $63c4: $00
    nop                                           ; $63c5: $00
    nop                                           ; $63c6: $00
    nop                                           ; $63c7: $00
    nop                                           ; $63c8: $00
    nop                                           ; $63c9: $00
    nop                                           ; $63ca: $00
    nop                                           ; $63cb: $00

jr_012_63cc:
    nop                                           ; $63cc: $00
    nop                                           ; $63cd: $00
    nop                                           ; $63ce: $00
    nop                                           ; $63cf: $00
    nop                                           ; $63d0: $00
    nop                                           ; $63d1: $00
    cp $fe                                        ; $63d2: $fe $fe
    cp $82                                        ; $63d4: $fe $82
    ld a, h                                       ; $63d6: $7c
    ld b, h                                       ; $63d7: $44
    ld a, h                                       ; $63d8: $7c
    ld b, h                                       ; $63d9: $44
    jr c, jr_012_6404                             ; $63da: $38 $28

    jr c, jr_012_6406                             ; $63dc: $38 $28

jr_012_63de:
    db $10                                        ; $63de: $10
    stop                                          ; $63df: $10 $00
    nop                                           ; $63e1: $00
    nop                                           ; $63e2: $00
    nop                                           ; $63e3: $00
    nop                                           ; $63e4: $00
    nop                                           ; $63e5: $00
    nop                                           ; $63e6: $00
    nop                                           ; $63e7: $00
    nop                                           ; $63e8: $00
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    nop                                           ; $63eb: $00
    nop                                           ; $63ec: $00
    nop                                           ; $63ed: $00
    nop                                           ; $63ee: $00
    nop                                           ; $63ef: $00
    nop                                           ; $63f0: $00
    nop                                           ; $63f1: $00
    jr nc, jr_012_6424                            ; $63f2: $30 $30

    jr c, jr_012_641e                             ; $63f4: $38 $28

    ld a, h                                       ; $63f6: $7c
    ld b, h                                       ; $63f7: $44
    ld a, [hl]                                    ; $63f8: $7e
    ld b, d                                       ; $63f9: $42
    cp $86                                        ; $63fa: $fe $86
    ld hl, sp-$68                                 ; $63fc: $f8 $98
    ldh [$e0], a                                  ; $63fe: $e0 $e0
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00

jr_012_6404:
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00

jr_012_6406:
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
    ld b, $06                                     ; $6412: $06 $06
    ld e, $1a                                     ; $6414: $1e $1a
    ld a, [hl]                                    ; $6416: $7e
    ld h, d                                       ; $6417: $62
    cp $82                                        ; $6418: $fe $82
    ld a, [hl]                                    ; $641a: $7e
    ld h, d                                       ; $641b: $62
    ld e, $1a                                     ; $641c: $1e $1a

jr_012_641e:
    ld b, $06                                     ; $641e: $06 $06
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00

jr_012_6424:
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
    ldh [$e0], a                                  ; $6432: $e0 $e0
    ld hl, sp-$68                                 ; $6434: $f8 $98
    cp $86                                        ; $6436: $fe $86
    ld a, [hl]                                    ; $6438: $7e
    ld b, d                                       ; $6439: $42
    ld a, h                                       ; $643a: $7c
    ld b, h                                       ; $643b: $44
    jr c, jr_012_6466                             ; $643c: $38 $28

    jr nc, jr_012_6470                            ; $643e: $30 $30

    nop                                           ; $6440: $00
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
    db $10                                        ; $6452: $10
    db $10                                        ; $6453: $10
    jr c, jr_012_647e                             ; $6454: $38 $28

    jr c, jr_012_6480                             ; $6456: $38 $28

    ld a, h                                       ; $6458: $7c
    ld b, h                                       ; $6459: $44
    ld a, h                                       ; $645a: $7c
    ld b, h                                       ; $645b: $44
    cp $82                                        ; $645c: $fe $82
    cp $fe                                        ; $645e: $fe $fe
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00

jr_012_6466:
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    nop                                           ; $646b: $00
    nop                                           ; $646c: $00
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00

jr_012_6470:
    nop                                           ; $6470: $00
    nop                                           ; $6471: $00
    ld c, $0e                                     ; $6472: $0e $0e
    ld a, $32                                     ; $6474: $3e $32
    cp $c2                                        ; $6476: $fe $c2
    db $fc                                        ; $6478: $fc
    add h                                         ; $6479: $84
    ld a, h                                       ; $647a: $7c
    ld b, h                                       ; $647b: $44
    jr c, @+$2a                                   ; $647c: $38 $28

jr_012_647e:
    jr jr_012_6498                                ; $647e: $18 $18

jr_012_6480:
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    jr c, jr_012_64bc                             ; $6482: $38 $38

    ld d, h                                       ; $6484: $54
    ld l, h                                       ; $6485: $6c
    cp d                                          ; $6486: $ba
    add $fa                                       ; $6487: $c6 $fa
    add [hl]                                      ; $6489: $86
    or d                                          ; $648a: $b2
    adc $44                                       ; $648b: $ce $44
    ld a, h                                       ; $648d: $7c
    jr c, jr_012_64c8                             ; $648e: $38 $38

    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    jr c, jr_012_64cc                             ; $6492: $38 $38

    jr c, jr_012_64be                             ; $6494: $38 $28

    cp $ee                                        ; $6496: $fe $ee

jr_012_6498:
    cp $82                                        ; $6498: $fe $82
    ld a, h                                       ; $649a: $7c
    ld b, h                                       ; $649b: $44
    jr c, jr_012_64c6                             ; $649c: $38 $28

    db $10                                        ; $649e: $10
    db $10                                        ; $649f: $10
    jr c, jr_012_64da                             ; $64a0: $38 $38

    ld d, h                                       ; $64a2: $54
    ld l, h                                       ; $64a3: $6c
    cp d                                          ; $64a4: $ba
    add $fa                                       ; $64a5: $c6 $fa
    add [hl]                                      ; $64a7: $86
    or d                                          ; $64a8: $b2
    adc $44                                       ; $64a9: $ce $44
    ld a, h                                       ; $64ab: $7c
    jr c, jr_012_64e6                             ; $64ac: $38 $38

    nop                                           ; $64ae: $00
    nop                                           ; $64af: $00
    nop                                           ; $64b0: $00
    nop                                           ; $64b1: $00
    jr c, jr_012_64ec                             ; $64b2: $38 $38

    jr c, jr_012_64de                             ; $64b4: $38 $28

    cp $ee                                        ; $64b6: $fe $ee
    cp $82                                        ; $64b8: $fe $82
    ld a, h                                       ; $64ba: $7c
    ld b, h                                       ; $64bb: $44

jr_012_64bc:
    jr c, jr_012_64e6                             ; $64bc: $38 $28

jr_012_64be:
    db $10                                        ; $64be: $10
    db $10                                        ; $64bf: $10
    ldh a, [rP1]                                  ; $64c0: $f0 $00
    ldh a, [$60]                                  ; $64c2: $f0 $60
    ldh a, [$60]                                  ; $64c4: $f0 $60

jr_012_64c6:
    ldh a, [$60]                                  ; $64c6: $f0 $60

jr_012_64c8:
    ldh a, [$60]                                  ; $64c8: $f0 $60
    ldh a, [$60]                                  ; $64ca: $f0 $60

jr_012_64cc:
    ldh a, [$60]                                  ; $64cc: $f0 $60
    ldh a, [$60]                                  ; $64ce: $f0 $60
    ldh a, [$60]                                  ; $64d0: $f0 $60
    ldh a, [$60]                                  ; $64d2: $f0 $60
    ldh a, [$60]                                  ; $64d4: $f0 $60
    ldh a, [rP1]                                  ; $64d6: $f0 $00
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00

jr_012_64da:
    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    nop                                           ; $64dc: $00
    nop                                           ; $64dd: $00

jr_012_64de:
    nop                                           ; $64de: $00
    nop                                           ; $64df: $00
    ldh a, [$f0]                                  ; $64e0: $f0 $f0
    ldh a, [$90]                                  ; $64e2: $f0 $90
    ldh a, [$90]                                  ; $64e4: $f0 $90

jr_012_64e6:
    ldh a, [$90]                                  ; $64e6: $f0 $90
    ldh a, [$90]                                  ; $64e8: $f0 $90
    ldh a, [$90]                                  ; $64ea: $f0 $90

jr_012_64ec:
    ldh a, [$90]                                  ; $64ec: $f0 $90
    ldh a, [$90]                                  ; $64ee: $f0 $90
    ldh a, [$90]                                  ; $64f0: $f0 $90
    ldh a, [$90]                                  ; $64f2: $f0 $90
    ldh a, [$90]                                  ; $64f4: $f0 $90
    ldh a, [$f0]                                  ; $64f6: $f0 $f0
    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    nop                                           ; $64fa: $00
    nop                                           ; $64fb: $00
    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    ld a, b                                       ; $6500: $78
    ld a, b                                       ; $6501: $78
    ld a, [hl]                                    ; $6502: $7e
    ld b, [hl]                                    ; $6503: $46
    ld l, [hl]                                    ; $6504: $6e
    ld d, d                                       ; $6505: $52
    ld l, d                                       ; $6506: $6a
    ld d, [hl]                                    ; $6507: $56
    ld e, d                                       ; $6508: $5a
    ld a, [hl]                                    ; $6509: $7e
    ld d, [hl]                                    ; $650a: $56
    halt                                          ; $650b: $76
    ld [hl], b                                    ; $650c: $70
    ld d, b                                       ; $650d: $50
    ld [hl], b                                    ; $650e: $70
    ld d, b                                       ; $650f: $50
    ld d, b                                       ; $6510: $50
    ld [hl], b                                    ; $6511: $70
    ld d, b                                       ; $6512: $50
    ld [hl], b                                    ; $6513: $70
    ld [hl], b                                    ; $6514: $70
    ld d, b                                       ; $6515: $50
    ld [hl], b                                    ; $6516: $70
    ld d, b                                       ; $6517: $50
    ld d, b                                       ; $6518: $50
    ld [hl], b                                    ; $6519: $70
    ld d, b                                       ; $651a: $50
    ld [hl], b                                    ; $651b: $70
    ld [hl], b                                    ; $651c: $70
    ld d, b                                       ; $651d: $50
    ld [hl], b                                    ; $651e: $70
    ld [hl], b                                    ; $651f: $70
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    jr jr_012_6540                                ; $6526: $18 $18

    jr jr_012_6542                                ; $6528: $18 $18

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

jr_012_6540:
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00

jr_012_6542:
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    jr jr_012_655e                                ; $6544: $18 $18

    inc a                                         ; $6546: $3c
    inc h                                         ; $6547: $24
    inc [hl]                                      ; $6548: $34
    inc l                                         ; $6549: $2c
    jr jr_012_6564                                ; $654a: $18 $18

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
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    nop                                           ; $655c: $00
    nop                                           ; $655d: $00

jr_012_655e:
    nop                                           ; $655e: $00
    nop                                           ; $655f: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    jr jr_012_657c                                ; $6562: $18 $18

jr_012_6564:
    inc l                                         ; $6564: $2c
    inc [hl]                                      ; $6565: $34
    ld e, d                                       ; $6566: $5a
    ld h, [hl]                                    ; $6567: $66
    ld [hl], d                                    ; $6568: $72
    ld c, [hl]                                    ; $6569: $4e
    inc h                                         ; $656a: $24
    inc a                                         ; $656b: $3c
    jr jr_012_6586                                ; $656c: $18 $18

    nop                                           ; $656e: $00
    nop                                           ; $656f: $00
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657a: $00
    nop                                           ; $657b: $00

jr_012_657c:
    nop                                           ; $657c: $00
    nop                                           ; $657d: $00
    nop                                           ; $657e: $00
    nop                                           ; $657f: $00
    jr jr_012_659a                                ; $6580: $18 $18

    inc a                                         ; $6582: $3c
    inc h                                         ; $6583: $24
    ld e, d                                       ; $6584: $5a
    ld h, [hl]                                    ; $6585: $66

jr_012_6586:
    db $fd                                        ; $6586: $fd
    add e                                         ; $6587: $83
    ld sp, hl                                     ; $6588: $f9
    add a                                         ; $6589: $87
    ld d, d                                       ; $658a: $52
    ld l, [hl]                                    ; $658b: $6e
    inc h                                         ; $658c: $24
    inc a                                         ; $658d: $3c
    jr jr_012_65a8                                ; $658e: $18 $18

    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00

jr_012_659a:
    nop                                           ; $659a: $00
    nop                                           ; $659b: $00
    nop                                           ; $659c: $00
    nop                                           ; $659d: $00
    nop                                           ; $659e: $00
    nop                                           ; $659f: $00
    inc a                                         ; $65a0: $3c
    inc a                                         ; $65a1: $3c
    ld e, d                                       ; $65a2: $5a
    ld h, [hl]                                    ; $65a3: $66
    cp l                                          ; $65a4: $bd
    jp $83fd                                      ; $65a5: $c3 $fd $83


jr_012_65a8:
    ld sp, hl                                     ; $65a8: $f9
    add a                                         ; $65a9: $87
    or c                                          ; $65aa: $b1
    rst $08                                       ; $65ab: $cf
    ld b, d                                       ; $65ac: $42
    ld a, [hl]                                    ; $65ad: $7e
    inc a                                         ; $65ae: $3c
    inc a                                         ; $65af: $3c
    nop                                           ; $65b0: $00
    nop                                           ; $65b1: $00
    nop                                           ; $65b2: $00
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
    jr jr_012_65de                                ; $65c4: $18 $18

    inc a                                         ; $65c6: $3c
    inc h                                         ; $65c7: $24
    inc a                                         ; $65c8: $3c
    inc h                                         ; $65c9: $24
    jr jr_012_65e4                                ; $65ca: $18 $18

    nop                                           ; $65cc: $00
    nop                                           ; $65cd: $00
    nop                                           ; $65ce: $00
    nop                                           ; $65cf: $00
    nop                                           ; $65d0: $00
    nop                                           ; $65d1: $00
    nop                                           ; $65d2: $00
    nop                                           ; $65d3: $00
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    nop                                           ; $65d6: $00
    nop                                           ; $65d7: $00
    nop                                           ; $65d8: $00
    nop                                           ; $65d9: $00
    nop                                           ; $65da: $00
    nop                                           ; $65db: $00
    nop                                           ; $65dc: $00
    nop                                           ; $65dd: $00

jr_012_65de:
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    nop                                           ; $65e0: $00
    nop                                           ; $65e1: $00
    nop                                           ; $65e2: $00
    nop                                           ; $65e3: $00

jr_012_65e4:
    nop                                           ; $65e4: $00
    nop                                           ; $65e5: $00
    db $10                                        ; $65e6: $10
    db $10                                        ; $65e7: $10
    jr c, jr_012_6612                             ; $65e8: $38 $28

    db $10                                        ; $65ea: $10
    stop                                          ; $65eb: $10 $00
    nop                                           ; $65ed: $00
    nop                                           ; $65ee: $00
    nop                                           ; $65ef: $00
    nop                                           ; $65f0: $00
    nop                                           ; $65f1: $00
    nop                                           ; $65f2: $00
    nop                                           ; $65f3: $00
    nop                                           ; $65f4: $00
    nop                                           ; $65f5: $00
    nop                                           ; $65f6: $00
    nop                                           ; $65f7: $00
    nop                                           ; $65f8: $00
    nop                                           ; $65f9: $00
    nop                                           ; $65fa: $00
    nop                                           ; $65fb: $00
    nop                                           ; $65fc: $00
    nop                                           ; $65fd: $00
    nop                                           ; $65fe: $00
    nop                                           ; $65ff: $00
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    db $10                                        ; $6607: $10
    db $10                                        ; $6608: $10
    jr z, jr_012_660b                             ; $6609: $28 $00

jr_012_660b:
    stop                                          ; $660b: $10 $00
    nop                                           ; $660d: $00
    nop                                           ; $660e: $00
    nop                                           ; $660f: $00
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00

jr_012_6612:
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661a: $00
    nop                                           ; $661b: $00
    nop                                           ; $661c: $00
    nop                                           ; $661d: $00
    nop                                           ; $661e: $00
    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    nop                                           ; $6628: $00
    stop                                          ; $6629: $10 $00
    nop                                           ; $662b: $00
    nop                                           ; $662c: $00
    nop                                           ; $662d: $00
    nop                                           ; $662e: $00
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    nop                                           ; $663a: $00
    nop                                           ; $663b: $00
    nop                                           ; $663c: $00
    nop                                           ; $663d: $00
    nop                                           ; $663e: $00
    nop                                           ; $663f: $00

    db $cd, $19, $c0, $09, $86, $7a, $19, $1a, $cd, $19, $c0, $02, $86, $7a, $ed, $03
    db $cd, $19, $c0, $09, $86, $7a, $20, $01

    call $bf19                                    ; $6658: $cd $19 $bf
    dec hl                                        ; $665b: $2b
    add [hl]                                      ; $665c: $86
    ld a, d                                       ; $665d: $7a
    rst $18                                       ; $665e: $df
    ld [de], a                                    ; $665f: $12

    db $cd, $19, $c0, $02, $86, $7a, $ed, $03

    call $f119                                    ; $6668: $cd $19 $f1
    nop                                           ; $666b: $00
    add [hl]                                      ; $666c: $86
    ld a, d                                       ; $666d: $7a
    adc l                                         ; $666e: $8d
    nop                                           ; $666f: $00

    db $40, $66, $60, $60, $48, $66, $a0, $60, $50, $66, $60, $61

    ld d, b                                       ; $667c: $50
    ld h, [hl]                                    ; $667d: $66
    ldh [$61], a                                  ; $667e: $e0 $61
    ld e, b                                       ; $6680: $58
    ld h, [hl]                                    ; $6681: $66
    jr nz, @+$64                                  ; $6682: $20 $62

    ld e, b                                       ; $6684: $58
    ld h, [hl]                                    ; $6685: $66
    ld h, b                                       ; $6686: $60
    ld h, d                                       ; $6687: $62
    ld e, b                                       ; $6688: $58
    ld h, [hl]                                    ; $6689: $66
    and b                                         ; $668a: $a0
    ld h, d                                       ; $668b: $62

    db $60, $66, $e0, $62, $48, $66, $e0, $60

    ld c, b                                       ; $6694: $48
    ld h, [hl]                                    ; $6695: $66
    ldh [$60], a                                  ; $6696: $e0 $60

    db $48, $66, $20, $61, $50, $66, $a0, $61

    add d                                         ; $66a0: $82
    ld h, a                                       ; $66a1: $67
    adc a                                         ; $66a2: $8f
    ld h, a                                       ; $66a3: $67

    db $9c, $67, $a9, $67, $b6, $67, $c3, $67

    jp $c367                                      ; $66ac: $c3 $67 $c3


    ld h, a                                       ; $66af: $67
    jp $8f67                                      ; $66b0: $c3 $67 $8f


    ld h, a                                       ; $66b3: $67
    adc a                                         ; $66b4: $8f
    ld h, a                                       ; $66b5: $67
    sbc h                                         ; $66b6: $9c
    ld h, a                                       ; $66b7: $67

    db $50, $0a, $50, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $f0, $00, $00, $00, $00, $61, $45, $14, $50, $05, $14, $51, $40, $14, $51
    db $45, $00, $51, $45, $14, $d1, $45, $14, $51, $45, $61, $86, $18, $61, $46, $18
    db $61, $85, $18, $61, $86, $14, $61, $86, $18, $d1, $86, $18, $61, $86, $61, $86
    db $18, $61, $86, $18, $61, $86, $18, $61, $86, $18, $61, $86, $18, $d1, $86, $18
    db $61, $86, $61, $86, $18, $61, $86, $18, $61, $86, $18, $61, $86, $18, $61, $86
    db $18, $d1, $86, $18, $61, $86, $61, $86, $18, $61, $86, $18, $61, $86, $18, $61
    db $86, $18, $61, $86, $18, $d1, $86, $18, $61, $86, $61, $86, $18, $61, $86, $18
    db $61, $86, $18, $61, $86, $18, $61, $86, $18, $d1, $86, $18, $61, $86, $61, $86
    db $18, $61, $86, $18, $61, $86, $18, $61, $86, $18, $61, $86, $18, $d1, $86, $18
    db $61, $86, $61, $86, $18, $60, $06, $18, $61, $80, $18, $61, $86, $00, $61, $86
    db $18, $d1, $86, $18, $61, $86, $60, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $d0, $00, $00, $00, $00, $16, $02, $00, $00, $0f, $00
    db $00, $00, $00, $00, $d0, $00, $00

    ld d, $02                                     ; $678f: $16 $02
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    rst $38                                       ; $6793: $ff
    ldh a, [rP1]                                  ; $6794: $f0 $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    dec c                                         ; $6798: $0d
    ld d, l                                       ; $6799: $55
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00

    db $16, $02, $00, $0f, $ff, $ff, $00, $00, $00, $d5, $55, $50, $00, $16, $02, $00
    db $ff, $ff, $ff, $f0, $00, $0d, $55, $55, $55, $00, $16, $02, $0f, $ff, $ff, $ff
    db $ff, $00, $d5, $55, $55, $55, $50, $16, $02, $ff, $ff, $ff, $ff, $ff, $fd, $55
    db $55, $55, $55, $55, $16, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $80, $01, $10, $02, $5a, $23, $ff, $63, $80, $01, $5f, $08, $df, $39, $1f
    db $63, $80, $01, $4a, $7d, $52, $7e, $18, $7f, $80, $01, $82, $0a, $f0, $43, $f8
    db $63, $ff, $7f, $ff, $6b, $58, $1e, $00, $00, $60, $01, $ff, $7f, $ef, $3d, $00
    db $00

    add a                                         ; $680d: $87
    ld h, l                                       ; $680e: $65
    rst $38                                       ; $680f: $ff
    ld a, a                                       ; $6810: $7f
    sub h                                         ; $6811: $94
    ld d, d                                       ; $6812: $52
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    ld e, a                                       ; $6815: $5f
    ld c, d                                       ; $6816: $4a
    cp a                                          ; $6817: $bf
    ld e, a                                       ; $6818: $5f
    rst $18                                       ; $6819: $df
    jr z, jr_012_681c                             ; $681a: $28 $00

jr_012_681c:
    nop                                           ; $681c: $00
    ld a, [c]                                     ; $681d: $f2
    inc bc                                        ; $681e: $03
    ld c, e                                       ; $681f: $4b
    inc bc                                        ; $6820: $03
    ret z                                         ; $6821: $c8

    ld [de], a                                    ; $6822: $12
    ldh [rNR24], a                                ; $6823: $e0 $19
    jr nz, jr_012_6828                            ; $6825: $20 $01

    db $10                                        ; $6827: $10

jr_012_6828:
    ld [bc], a                                    ; $6828: $02
    jr @+$25                                      ; $6829: $18 $23

    rst $38                                       ; $682b: $ff
    ld d, e                                       ; $682c: $53
    jr nz, jr_012_6830                            ; $682d: $20 $01

    rrca                                          ; $682f: $0f

jr_012_6830:
    nop                                           ; $6830: $00
    jr @+$23                                      ; $6831: $18 $21

    sbc a                                         ; $6833: $9f
    ld d, d                                       ; $6834: $52
    jr nz, jr_012_6838                            ; $6835: $20 $01

    nop                                           ; $6837: $00

jr_012_6838:
    ld b, b                                       ; $6838: $40
    add h                                         ; $6839: $84
    ld d, c                                       ; $683a: $51
    db $f4                                        ; $683b: $f4
    ld a, a                                       ; $683c: $7f

    db $0d, $08, $f3, $fc, $ff, $3b, $69, $da, $7e, $ef, $bb, $ef, $bb, $ee, $fb, $ee
    db $fb, $be, $fb, $be, $ef, $be, $da, $76, $9f, $cf, $f3, $fc, $05, $07, $ff, $fb
    db $be, $ef, $67, $3b, $0e, $c3, $f0, $06, $08, $ff, $0d, $bc, $ee, $fa, $ab, $ee
    db $fe, $ef, $ed, $bf, $ff, $03, $08, $00, $00, $00, $03, $fe, $ff, $05, $07, $ff
    db $fb, $be, $ef, $ab, $ee, $fb, $bf, $fc, $10, $07, $ff, $ff, $ff, $ff, $ea, $76
    db $9e, $a7, $ef, $bb, $ee, $fb, $ea, $7a, $ae, $a7, $ef, $fb, $ee, $fb, $ec, $3b
    db $ee, $fb, $fc, $3f, $ff, $ff, $15, $07, $ff, $ff, $ff, $ff, $ff, $fa, $9e, $ab
    db $69, $ea, $be, $fb, $bf, $ef, $ff, $bf, $a9, $ea, $b6, $9c, $ec, $ef, $bb, $ff
    db $fb, $3b, $3b, $ee, $ab, $69, $ce, $cf, $ff, $ff, $ff, $f3, $f0, $0f, $07, $ff
    db $ff, $ff, $ff, $aa, $7a, $7b, $be, $ee, $ee, $ee, $fb, $bb, $a7, $ab, $ee, $ee
    db $fe, $ef, $bb, $bb, $fb, $bf, $ff, $ff, $ff, $c0

    ld de, $0007                                  ; $68e7: $11 $07 $00
    nop                                           ; $68ea: $00
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    ret nz                                        ; $68ed: $c0

    nop                                           ; $68ee: $00
    ld a, [hl-]                                   ; $68ef: $3a
    sbc l                                         ; $68f0: $9d
    and b                                         ; $68f1: $a0
    nop                                           ; $68f2: $00
    ld c, $fb                                     ; $68f3: $0e $fb
    cp h                                          ; $68f5: $bc
    nop                                           ; $68f6: $00
    inc bc                                        ; $68f7: $03
    xor c                                         ; $68f8: $a9
    rst $28                                       ; $68f9: $ef
    nop                                           ; $68fa: $00
    nop                                           ; $68fb: $00
    rst $28                                       ; $68fc: $ef
    ei                                            ; $68fd: $fb
    ret nz                                        ; $68fe: $c0

    nop                                           ; $68ff: $00
    dec sp                                        ; $6900: $3b
    dec c                                         ; $6901: $0d
    and b                                         ; $6902: $a0
    nop                                           ; $6903: $00
    rrca                                          ; $6904: $0f
    jp Jump_000_10fc                              ; $6905: $c3 $fc $10


    rlca                                          ; $6908: $07
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $20                                       ; $690d: $e7
    or [hl]                                       ; $690e: $b6
    sbc [hl]                                      ; $690f: $9e
    and a                                         ; $6910: $a7
    jp hl                                         ; $6911: $e9


    cp e                                          ; $6912: $bb
    xor $fb                                       ; $6913: $ee $fb
    and $bb                                       ; $6915: $e6 $bb
    xor $a7                                       ; $6917: $ee $a7
    db $ed                                        ; $6919: $ed
    cp e                                          ; $691a: $bb
    xor $fb                                       ; $691b: $ee $fb
    rst $28                                       ; $691d: $ef
    or [hl]                                       ; $691e: $b6
    sbc [hl]                                      ; $691f: $9e
    ei                                            ; $6920: $fb
    rst $38                                       ; $6921: $ff
    rst $38                                       ; $6922: $ff
    rst $38                                       ; $6923: $ff
    rst $38                                       ; $6924: $ff
    db $10                                        ; $6925: $10
    rlca                                          ; $6926: $07
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    jp c, $9e7a                                   ; $692b: $da $7a $9e

    and a                                         ; $692e: $a7
    rst $28                                       ; $692f: $ef
    cp e                                          ; $6930: $bb
    xor $fb                                       ; $6931: $ee $fb
    ld [$9eba], a                                 ; $6933: $ea $ba $9e
    and a                                         ; $6936: $a7
    rst $28                                       ; $6937: $ef
    cp e                                          ; $6938: $bb
    cp $fb                                        ; $6939: $fe $fb
    rst $28                                       ; $693b: $ef
    cp e                                          ; $693c: $bb
    ld c, $fb                                     ; $693d: $0e $fb
    rst $38                                       ; $693f: $ff
    rst $38                                       ; $6940: $ff
    rrca                                          ; $6941: $0f
    rst $38                                       ; $6942: $ff

    db $06, $08, $ff, $fd, $a7, $ef, $be, $fb, $ea, $be, $fb, $ef, $bf, $ff, $05, $08
    db $ff, $fa, $bf, $bc, $ec, $3b, $3e, $fe, $af, $ff, $06, $08, $ff, $fe, $fb, $eb
    db $be, $9b, $e6, $be, $eb, $ef, $bf, $ff, $06, $08, $ff, $fe, $a7, $ef, $be, $fb
    db $ea, $7e, $ff, $ec, $0f, $c0, $06, $08, $ff, $fd, $a7, $ef, $fd, $a7, $ff, $be
    db $fb, $da, $7f, $ff, $07, $08, $ff, $ff, $aa, $bf, $ef, $c3, $b0, $0e, $c0, $3b
    db $00, $ec, $03, $f0, $07, $08, $ff, $ff, $bb, $be, $ee, $fb, $bb, $e6, $6f, $66
    db $7f, $bb, $cf, $fc, $06, $08, $fc, $0e, $c0, $ec, $0e, $c0, $ec, $0e, $ff, $ea
    db $bf, $ff

    rlca                                          ; $69b5: $07
    ld [$ffff], sp                                ; $69b6: $08 $ff $ff
    sbc l                                         ; $69b9: $9d
    cp [hl]                                       ; $69ba: $be
    sbc d                                         ; $69bb: $9a
    ld a, [$e6ab]                                 ; $69bc: $fa $ab $e6
    ld l, a                                       ; $69bf: $6f
    cp e                                          ; $69c0: $bb
    cp [hl]                                       ; $69c1: $be
    xor $ff                                       ; $69c2: $ee $ff
    rst $38                                       ; $69c4: $ff

    db $fd, $00, $ff, $ec, $78, $78, $b4, $cc, $fc, $b4, $de, $fe, $e3, $b4, $cc, $78
    db $78, $e0, $ed, $38, $38, $ff, $58, $68, $78, $48, $78, $68, $38, $28, $bf, $7c
    db $6c, $7c, $44, $7c, $7c, $c0, $f3, $ec, $ff, $f4, $b4, $cc, $dc, $bc, $fc, $84
    db $fc, $fd, $fc, $a0, $ed, $f8, $f8, $f4, $8c, $fc, $f4, $ff, $74, $4c, $7c, $74
    db $fc, $f4, $f4, $8c, $fb, $f8, $f8, $a0, $f1, $b8, $c8, $f8, $a8, $fc, $dd, $ac
    db $c2, $e0, $ec, $38, $38, $60, $ed, $fc, $fc, $02, $aa, $e0, $bc, $bc, $e1, $60
    db $f3, $40, $e2, $e0, $e1, $40, $f4, $c0, $e1, $ff, $ec, $f4, $54, $6c, $68, $58
    db $70, $50, $c2, $fe, $e0, $70, $00, $f3, $fc, $c3, $a0, $f6, $e0, $c0, $bc, $c4
    db $f1, $fc, $1c, $e0, $e0, $cf, $b0, $c7, $e0, $e0, $e0, $a0, $fb, $e0, $e0, $e0
    db $ef, $f8, $f8, $f8, $a8, $f8, $f7, $a8, $a8, $d8, $80, $f5, $5c, $6c, $fe, $d6
    db $ff, $fe, $82, $fe, $d6, $7e, $56, $76, $5a, $fb, $7e, $7e, $a0, $ef, $60, $60
    db $60, $20, $60, $01, $60, $f8, $e5, $00, $00

    nop                                           ; $6a7e: $00
    push af                                       ; $6a7f: $f5
    push bc                                       ; $6a80: $c5
    push de                                       ; $6a81: $d5
    push hl                                       ; $6a82: $e5
    ld hl, $6bb0                                  ; $6a83: $21 $b0 $6b
    ld de, $8200                                  ; $6a86: $11 $00 $82
    ld c, $10                                     ; $6a89: $0e $10
    call Call_000_0468                            ; $6a8b: $cd $68 $04
    ld hl, $6ba7                                  ; $6a8e: $21 $a7 $6b
    ld de, $0f01                                  ; $6a91: $11 $01 $0f
    call Call_000_056c                            ; $6a94: $cd $6c $05
    pop hl                                        ; $6a97: $e1
    pop de                                        ; $6a98: $d1
    pop bc                                        ; $6a99: $c1
    pop af                                        ; $6a9a: $f1
    ret                                           ; $6a9b: $c9


    ld a, [$d443]                                 ; $6a9c: $fa $43 $d4
    cp $04                                        ; $6a9f: $fe $04
    ret z                                         ; $6aa1: $c8

    call $6ab8                                    ; $6aa2: $cd $b8 $6a
    xor a                                         ; $6aa5: $af
    ld bc, $6aad                                  ; $6aa6: $01 $ad $6a
    call Call_012_6adc                            ; $6aa9: $cd $dc $6a
    ret                                           ; $6aac: $c9


    nop                                           ; $6aad: $00
    inc b                                         ; $6aae: $04
    ld bc, $0204                                  ; $6aaf: $01 $04 $02
    inc b                                         ; $6ab2: $04
    inc bc                                        ; $6ab3: $03
    ld b, $04                                     ; $6ab4: $06 $04
    ld [$faff], sp                                ; $6ab6: $08 $ff $fa
    ld b, e                                       ; $6ab9: $43
    call nc, $c8b7                                ; $6aba: $d4 $b7 $c8
    push de                                       ; $6abd: $d5
    ld a, [$d441]                                 ; $6abe: $fa $41 $d4
    ld d, a                                       ; $6ac1: $57
    ld e, $00                                     ; $6ac2: $1e $00
    call Call_000_08ac                            ; $6ac4: $cd $ac $08
    add hl, hl                                    ; $6ac7: $29
    add hl, hl                                    ; $6ac8: $29
    pop de                                        ; $6ac9: $d1
    push hl                                       ; $6aca: $e5
    ld h, d                                       ; $6acb: $62
    ld l, e                                       ; $6acc: $6b
    ld a, [$d442]                                 ; $6acd: $fa $42 $d4
    ld d, a                                       ; $6ad0: $57
    ld e, $00                                     ; $6ad1: $1e $00
    call Call_000_08ac                            ; $6ad3: $cd $ac $08
    add hl, hl                                    ; $6ad6: $29
    add hl, hl                                    ; $6ad7: $29
    ld d, h                                       ; $6ad8: $54
    ld e, l                                       ; $6ad9: $5d
    pop hl                                        ; $6ada: $e1
    ret                                           ; $6adb: $c9


Call_012_6adc:
    push de                                       ; $6adc: $d5
    push hl                                       ; $6add: $e5
    push af                                       ; $6ade: $f5
    and $07                                       ; $6adf: $e6 $07
    ld h, a                                       ; $6ae1: $67
    add a                                         ; $6ae2: $87
    add a                                         ; $6ae3: $87
    add h                                         ; $6ae4: $84
    add a                                         ; $6ae5: $87
    ld hl, $ca80                                  ; $6ae6: $21 $80 $ca
    add l                                         ; $6ae9: $85
    ld l, a                                       ; $6aea: $6f
    jr nc, jr_012_6aee                            ; $6aeb: $30 $01

    inc h                                         ; $6aed: $24

jr_012_6aee:
    ld [hl], c                                    ; $6aee: $71
    inc hl                                        ; $6aef: $23
    ld [hl], b                                    ; $6af0: $70
    inc hl                                        ; $6af1: $23
    xor a                                         ; $6af2: $af
    ld [hl+], a                                   ; $6af3: $22
    ld [hl+], a                                   ; $6af4: $22
    pop af                                        ; $6af5: $f1
    swap a                                        ; $6af6: $cb $37
    ld [hl+], a                                   ; $6af8: $22
    pop de                                        ; $6af9: $d1
    ld [hl], e                                    ; $6afa: $73
    inc hl                                        ; $6afb: $23
    ld [hl], d                                    ; $6afc: $72
    inc hl                                        ; $6afd: $23
    pop de                                        ; $6afe: $d1
    ld [hl], e                                    ; $6aff: $73
    inc hl                                        ; $6b00: $23
    ld [hl], d                                    ; $6b01: $72
    inc hl                                        ; $6b02: $23
    ret                                           ; $6b03: $c9


Call_012_6b04:
    ld a, $06                                     ; $6b04: $3e $06
    ldh [$96], a                                  ; $6b06: $e0 $96
    ldh [rSVBK], a                                ; $6b08: $e0 $70
    ld hl, $ca80                                  ; $6b0a: $21 $80 $ca
    call Call_012_6b11                            ; $6b0d: $cd $11 $6b
    ret                                           ; $6b10: $c9


Call_012_6b11:
    ld d, [hl]                                    ; $6b11: $56
    inc hl                                        ; $6b12: $23
    ld e, [hl]                                    ; $6b13: $5e
    ld a, d                                       ; $6b14: $7a
    or e                                          ; $6b15: $b3
    ret z                                         ; $6b16: $c8

    inc hl                                        ; $6b17: $23
    inc hl                                        ; $6b18: $23
    ld a, [hl]                                    ; $6b19: $7e
    push hl                                       ; $6b1a: $e5
    or a                                          ; $6b1b: $b7
    jr nz, jr_012_6b46                            ; $6b1c: $20 $28

    dec hl                                        ; $6b1e: $2b
    dec hl                                        ; $6b1f: $2b
    dec hl                                        ; $6b20: $2b
    ld e, [hl]                                    ; $6b21: $5e
    inc hl                                        ; $6b22: $23
    ld d, [hl]                                    ; $6b23: $56
    inc hl                                        ; $6b24: $23
    ld a, [hl]                                    ; $6b25: $7e
    inc [hl]                                      ; $6b26: $34
    add a                                         ; $6b27: $87
    add e                                         ; $6b28: $83
    ld e, a                                       ; $6b29: $5f
    ld a, d                                       ; $6b2a: $7a
    adc $00                                       ; $6b2b: $ce $00
    ld d, a                                       ; $6b2d: $57
    ld a, [de]                                    ; $6b2e: $1a
    cp $ff                                        ; $6b2f: $fe $ff
    jr nz, jr_012_6b3a                            ; $6b31: $20 $07

    xor a                                         ; $6b33: $af
    dec hl                                        ; $6b34: $2b
    dec hl                                        ; $6b35: $2b
    ld [hl+], a                                   ; $6b36: $22
    ld [hl+], a                                   ; $6b37: $22
    pop hl                                        ; $6b38: $e1
    ret                                           ; $6b39: $c9


jr_012_6b3a:
    push af                                       ; $6b3a: $f5
    inc de                                        ; $6b3b: $13
    ld a, [de]                                    ; $6b3c: $1a
    inc hl                                        ; $6b3d: $23
    ld [hl+], a                                   ; $6b3e: $22
    inc hl                                        ; $6b3f: $23
    inc hl                                        ; $6b40: $23
    inc hl                                        ; $6b41: $23
    inc hl                                        ; $6b42: $23
    inc hl                                        ; $6b43: $23
    pop af                                        ; $6b44: $f1
    ld [hl], a                                    ; $6b45: $77

jr_012_6b46:
    pop hl                                        ; $6b46: $e1
    dec [hl]                                      ; $6b47: $35
    inc hl                                        ; $6b48: $23
    ld a, [hl+]                                   ; $6b49: $2a
    or a                                          ; $6b4a: $b7
    jr z, jr_012_6b4e                             ; $6b4b: $28 $01

    ret                                           ; $6b4d: $c9


jr_012_6b4e:
    ld e, [hl]                                    ; $6b4e: $5e
    inc hl                                        ; $6b4f: $23
    ld d, [hl]                                    ; $6b50: $56
    inc hl                                        ; $6b51: $23
    ld c, [hl]                                    ; $6b52: $4e
    inc hl                                        ; $6b53: $23
    ld b, [hl]                                    ; $6b54: $46
    inc hl                                        ; $6b55: $23
    ld a, [hl]                                    ; $6b56: $7e
    push af                                       ; $6b57: $f5
    push bc                                       ; $6b58: $c5
    push de                                       ; $6b59: $d5
    ld hl, $c320                                  ; $6b5a: $21 $20 $c3
    ld a, [hl+]                                   ; $6b5d: $2a
    ld d, [hl]                                    ; $6b5e: $56
    ld e, a                                       ; $6b5f: $5f
    pop hl                                        ; $6b60: $e1
    call Call_000_08ac                            ; $6b61: $cd $ac $08
    ld de, $0010                                  ; $6b64: $11 $10 $00
    add hl, de                                    ; $6b67: $19
    ld a, h                                       ; $6b68: $7c
    inc a                                         ; $6b69: $3c
    cp $14                                        ; $6b6a: $fe $14
    jp nc, Jump_012_6ba4                          ; $6b6c: $d2 $a4 $6b

    ld a, h                                       ; $6b6f: $7c
    sla l                                         ; $6b70: $cb $25
    rla                                           ; $6b72: $17
    sla l                                         ; $6b73: $cb $25
    rla                                           ; $6b75: $17
    sla l                                         ; $6b76: $cb $25
    rla                                           ; $6b78: $17
    ld b, a                                       ; $6b79: $47
    ld hl, $c322                                  ; $6b7a: $21 $22 $c3
    ld a, [hl+]                                   ; $6b7d: $2a
    ld d, [hl]                                    ; $6b7e: $56
    ld e, a                                       ; $6b7f: $5f
    pop hl                                        ; $6b80: $e1
    call Call_000_08ac                            ; $6b81: $cd $ac $08
    ld de, $ff10                                  ; $6b84: $11 $10 $ff
    add hl, de                                    ; $6b87: $19
    ld a, h                                       ; $6b88: $7c
    cp $10                                        ; $6b89: $fe $10
    jp nc, Jump_012_6ba5                          ; $6b8b: $d2 $a5 $6b

    sla l                                         ; $6b8e: $cb $25
    rla                                           ; $6b90: $17
    sla l                                         ; $6b91: $cb $25
    rla                                           ; $6b93: $17
    sla l                                         ; $6b94: $cb $25
    rla                                           ; $6b96: $17
    ld d, b                                       ; $6b97: $50
    ld e, a                                       ; $6b98: $5f
    pop af                                        ; $6b99: $f1
    add $20                                       ; $6b9a: $c6 $20
    ld c, a                                       ; $6b9c: $4f
    ld b, $07                                     ; $6b9d: $06 $07
    call Call_000_2798                            ; $6b9f: $cd $98 $27
    jr jr_012_6ba6                                ; $6ba2: $18 $02

Jump_012_6ba4:
    pop hl                                        ; $6ba4: $e1

Jump_012_6ba5:
    pop hl                                        ; $6ba5: $e1

jr_012_6ba6:
    ret                                           ; $6ba6: $c9


    and b                                         ; $6ba7: $a0
    ld c, b                                       ; $6ba8: $48
    rst $38                                       ; $6ba9: $ff
    ld a, a                                       ; $6baa: $7f
    adc $7e                                       ; $6bab: $ce $7e
    and e                                         ; $6bad: $a3
    ld a, l                                       ; $6bae: $7d
    nop                                           ; $6baf: $00
    nop                                           ; $6bb0: $00
    nop                                           ; $6bb1: $00
    nop                                           ; $6bb2: $00
    nop                                           ; $6bb3: $00
    nop                                           ; $6bb4: $00
    nop                                           ; $6bb5: $00
    nop                                           ; $6bb6: $00
    nop                                           ; $6bb7: $00
    nop                                           ; $6bb8: $00
    nop                                           ; $6bb9: $00
    nop                                           ; $6bba: $00
    nop                                           ; $6bbb: $00
    nop                                           ; $6bbc: $00
    nop                                           ; $6bbd: $00
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    jr jr_012_6bda                                ; $6bc0: $18 $18

    jr jr_012_6bdc                                ; $6bc2: $18 $18

    inc h                                         ; $6bc4: $24
    inc a                                         ; $6bc5: $3c
    nop                                           ; $6bc6: $00
    inc a                                         ; $6bc7: $3c
    jr @+$26                                      ; $6bc8: $18 $24

    jr jr_012_6bf0                                ; $6bca: $18 $24

    nop                                           ; $6bcc: $00
    nop                                           ; $6bcd: $00
    nop                                           ; $6bce: $00
    nop                                           ; $6bcf: $00
    nop                                           ; $6bd0: $00
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    nop                                           ; $6bd3: $00
    ld b, c                                       ; $6bd4: $41
    ld b, c                                       ; $6bd5: $41
    ld [bc], a                                    ; $6bd6: $02
    ld [bc], a                                    ; $6bd7: $02
    db $10                                        ; $6bd8: $10
    db $10                                        ; $6bd9: $10

jr_012_6bda:
    adc h                                         ; $6bda: $8c
    adc h                                         ; $6bdb: $8c

jr_012_6bdc:
    nop                                           ; $6bdc: $00
    ld h, $20                                     ; $6bdd: $26 $20
    ld d, b                                       ; $6bdf: $50
    ld b, d                                       ; $6be0: $42
    ld a, [bc]                                    ; $6be1: $0a
    ld [hl-], a                                   ; $6be2: $32
    dec hl                                        ; $6be3: $2b
    jr nc, @+$0a                                  ; $6be4: $30 $08

    ld c, h                                       ; $6be6: $4c
    jr nz, jr_012_6bfb                            ; $6be7: $20 $12

    ld a, [bc]                                    ; $6be9: $0a
    ld e, b                                       ; $6bea: $58
    ld h, h                                       ; $6beb: $64
    nop                                           ; $6bec: $00
    jr jr_012_6bef                                ; $6bed: $18 $00

jr_012_6bef:
    nop                                           ; $6bef: $00

jr_012_6bf0:
    nop                                           ; $6bf0: $00
    nop                                           ; $6bf1: $00
    db $10                                        ; $6bf2: $10
    db $10                                        ; $6bf3: $10
    ld bc, $2201                                  ; $6bf4: $01 $01 $22
    ld [hl+], a                                   ; $6bf7: $22
    nop                                           ; $6bf8: $00
    nop                                           ; $6bf9: $00
    nop                                           ; $6bfa: $00

jr_012_6bfb:
    jr nc, jr_012_6bfd                            ; $6bfb: $30 $00

jr_012_6bfd:
    inc bc                                        ; $6bfd: $03
    db $10                                        ; $6bfe: $10
    jr nc, jr_012_6c03                            ; $6bff: $30 $02

    ld [bc], a                                    ; $6c01: $02
    nop                                           ; $6c02: $00

jr_012_6c03:
    jr z, jr_012_6c05                             ; $6c03: $28 $00

jr_012_6c05:
    ld [hl+], a                                   ; $6c05: $22
    inc e                                         ; $6c06: $1c
    db $10                                        ; $6c07: $10
    ld e, d                                       ; $6c08: $5a
    ld b, d                                       ; $6c09: $42
    adc c                                         ; $6c0a: $89
    and c                                         ; $6c0b: $a1
    ld b, d                                       ; $6c0c: $42
    ld h, d                                       ; $6c0d: $62
    jr jr_012_6c28                                ; $6c0e: $18 $18

    nop                                           ; $6c10: $00
    nop                                           ; $6c11: $00
    nop                                           ; $6c12: $00
    nop                                           ; $6c13: $00
    nop                                           ; $6c14: $00
    nop                                           ; $6c15: $00
    nop                                           ; $6c16: $00
    nop                                           ; $6c17: $00
    nop                                           ; $6c18: $00
    nop                                           ; $6c19: $00
    db $10                                        ; $6c1a: $10
    stop                                          ; $6c1b: $10 $00
    nop                                           ; $6c1d: $00
    inc b                                         ; $6c1e: $04
    dec d                                         ; $6c1f: $15
    ld b, b                                       ; $6c20: $40
    ld b, b                                       ; $6c21: $40
    nop                                           ; $6c22: $00
    ld [$3200], sp                                ; $6c23: $08 $00 $32
    db $10                                        ; $6c26: $10
    ld [de], a                                    ; $6c27: $12

jr_012_6c28:
    inc c                                         ; $6c28: $0c
    ld c, h                                       ; $6c29: $4c
    or c                                          ; $6c2a: $b1
    add l                                         ; $6c2b: $85
    ld c, d                                       ; $6c2c: $4a
    ld c, d                                       ; $6c2d: $4a
    ld [$0008], sp                                ; $6c2e: $08 $08 $00
    nop                                           ; $6c31: $00
    nop                                           ; $6c32: $00
    nop                                           ; $6c33: $00
    nop                                           ; $6c34: $00
    nop                                           ; $6c35: $00
    nop                                           ; $6c36: $00
    nop                                           ; $6c37: $00
    nop                                           ; $6c38: $00
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    nop                                           ; $6c3b: $00
    nop                                           ; $6c3c: $00
    nop                                           ; $6c3d: $00
    nop                                           ; $6c3e: $00
    nop                                           ; $6c3f: $00
    nop                                           ; $6c40: $00
    nop                                           ; $6c41: $00
    nop                                           ; $6c42: $00
    nop                                           ; $6c43: $00
    nop                                           ; $6c44: $00
    nop                                           ; $6c45: $00
    nop                                           ; $6c46: $00
    nop                                           ; $6c47: $00
    inc b                                         ; $6c48: $04
    inc d                                         ; $6c49: $14
    jr nz, jr_012_6c74                            ; $6c4a: $20 $28

    nop                                           ; $6c4c: $00
    nop                                           ; $6c4d: $00
    nop                                           ; $6c4e: $00
    nop                                           ; $6c4f: $00
    nop                                           ; $6c50: $00
    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    nop                                           ; $6c53: $00
    nop                                           ; $6c54: $00
    nop                                           ; $6c55: $00
    nop                                           ; $6c56: $00
    nop                                           ; $6c57: $00
    nop                                           ; $6c58: $00
    nop                                           ; $6c59: $00
    nop                                           ; $6c5a: $00
    nop                                           ; $6c5b: $00
    nop                                           ; $6c5c: $00
    nop                                           ; $6c5d: $00
    nop                                           ; $6c5e: $00
    nop                                           ; $6c5f: $00
    nop                                           ; $6c60: $00
    nop                                           ; $6c61: $00
    nop                                           ; $6c62: $00
    nop                                           ; $6c63: $00
    nop                                           ; $6c64: $00
    nop                                           ; $6c65: $00
    nop                                           ; $6c66: $00
    nop                                           ; $6c67: $00
    nop                                           ; $6c68: $00
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    nop                                           ; $6c6b: $00
    nop                                           ; $6c6c: $00
    nop                                           ; $6c6d: $00
    nop                                           ; $6c6e: $00
    nop                                           ; $6c6f: $00
    nop                                           ; $6c70: $00
    nop                                           ; $6c71: $00
    nop                                           ; $6c72: $00
    nop                                           ; $6c73: $00

jr_012_6c74:
    nop                                           ; $6c74: $00
    nop                                           ; $6c75: $00
    nop                                           ; $6c76: $00
    nop                                           ; $6c77: $00
    nop                                           ; $6c78: $00
    nop                                           ; $6c79: $00
    nop                                           ; $6c7a: $00
    nop                                           ; $6c7b: $00
    nop                                           ; $6c7c: $00
    nop                                           ; $6c7d: $00
    nop                                           ; $6c7e: $00
    nop                                           ; $6c7f: $00
    nop                                           ; $6c80: $00
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    nop                                           ; $6c83: $00
    nop                                           ; $6c84: $00
    nop                                           ; $6c85: $00
    nop                                           ; $6c86: $00
    nop                                           ; $6c87: $00
    nop                                           ; $6c88: $00
    nop                                           ; $6c89: $00
    jr jr_012_6c8c                                ; $6c8a: $18 $00

jr_012_6c8c:
    nop                                           ; $6c8c: $00
    nop                                           ; $6c8d: $00
    nop                                           ; $6c8e: $00
    nop                                           ; $6c8f: $00
    nop                                           ; $6c90: $00
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    nop                                           ; $6c93: $00
    nop                                           ; $6c94: $00
    nop                                           ; $6c95: $00
    nop                                           ; $6c96: $00
    nop                                           ; $6c97: $00
    nop                                           ; $6c98: $00
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    nop                                           ; $6c9b: $00
    nop                                           ; $6c9c: $00
    nop                                           ; $6c9d: $00
    nop                                           ; $6c9e: $00
    nop                                           ; $6c9f: $00
    nop                                           ; $6ca0: $00
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00
    nop                                           ; $6ca3: $00
    nop                                           ; $6ca4: $00
    nop                                           ; $6ca5: $00
    nop                                           ; $6ca6: $00
    nop                                           ; $6ca7: $00
    nop                                           ; $6ca8: $00
    jr jr_012_6cab                                ; $6ca9: $18 $00

jr_012_6cab:
    inc h                                         ; $6cab: $24
    nop                                           ; $6cac: $00
    jr jr_012_6caf                                ; $6cad: $18 $00

jr_012_6caf:
    nop                                           ; $6caf: $00
    nop                                           ; $6cb0: $00
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    nop                                           ; $6cb3: $00
    nop                                           ; $6cb4: $00
    nop                                           ; $6cb5: $00
    nop                                           ; $6cb6: $00
    nop                                           ; $6cb7: $00
    nop                                           ; $6cb8: $00
    nop                                           ; $6cb9: $00
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
    jr jr_012_6ce0                                ; $6cc6: $18 $18

    ld b, d                                       ; $6cc8: $42
    ld b, d                                       ; $6cc9: $42
    add c                                         ; $6cca: $81
    add c                                         ; $6ccb: $81
    ld b, d                                       ; $6ccc: $42
    ld b, d                                       ; $6ccd: $42
    jr jr_012_6ce8                                ; $6cce: $18 $18

    nop                                           ; $6cd0: $00
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    nop                                           ; $6cd6: $00
    nop                                           ; $6cd7: $00
    nop                                           ; $6cd8: $00
    nop                                           ; $6cd9: $00
    nop                                           ; $6cda: $00
    nop                                           ; $6cdb: $00
    nop                                           ; $6cdc: $00
    nop                                           ; $6cdd: $00
    nop                                           ; $6cde: $00
    nop                                           ; $6cdf: $00

jr_012_6ce0:
    nop                                           ; $6ce0: $00
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    nop                                           ; $6ce3: $00
    nop                                           ; $6ce4: $00
    nop                                           ; $6ce5: $00
    nop                                           ; $6ce6: $00
    nop                                           ; $6ce7: $00

jr_012_6ce8:
    nop                                           ; $6ce8: $00
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    nop                                           ; $6ced: $00
    nop                                           ; $6cee: $00
    nop                                           ; $6cef: $00

    cp $ff                                        ; $6cf0: $fe $ff
    ret z                                         ; $6cf2: $c8

    push af                                       ; $6cf3: $f5
    push bc                                       ; $6cf4: $c5
    push de                                       ; $6cf5: $d5
    push hl                                       ; $6cf6: $e5
    push af                                       ; $6cf7: $f5
    push bc                                       ; $6cf8: $c5
    ld h, a                                       ; $6cf9: $67
    ld l, $00                                     ; $6cfa: $2e $00
    srl h                                         ; $6cfc: $cb $3c
    rr l                                          ; $6cfe: $cb $1d
    srl h                                         ; $6d00: $cb $3c
    rr l                                          ; $6d02: $cb $1d
    ld bc, $5730                                  ; $6d04: $01 $30 $57
    add hl, bc                                    ; $6d07: $09
    xor a                                         ; $6d08: $af
    ldh [rVBK], a                                 ; $6d09: $e0 $4f
    ld a, d                                       ; $6d0b: $7a
    cp $a0                                        ; $6d0c: $fe $a0
    jr c, jr_012_6d18                             ; $6d0e: $38 $08

    ld a, $01                                     ; $6d10: $3e $01
    ldh [rVBK], a                                 ; $6d12: $e0 $4f
    ld a, d                                       ; $6d14: $7a
    sub $20                                       ; $6d15: $d6 $20
    ld d, a                                       ; $6d17: $57

jr_012_6d18:
    ld c, $04                                     ; $6d18: $0e $04
    call Call_000_2096                            ; $6d1a: $cd $96 $20
    pop bc                                        ; $6d1d: $c1
    pop af                                        ; $6d1e: $f1
    ld h, $00                                     ; $6d1f: $26 $00
    ld l, a                                       ; $6d21: $6f
    add hl, hl                                    ; $6d22: $29
    add hl, hl                                    ; $6d23: $29
    add hl, hl                                    ; $6d24: $29
    ld de, $5b30                                  ; $6d25: $11 $30 $5b
    add hl, de                                    ; $6d28: $19
    bit 4, c                                      ; $6d29: $cb $61
    jr z, jr_012_6d31                             ; $6d2b: $28 $04

    ld de, $0080                                  ; $6d2d: $11 $80 $00
    add hl, de                                    ; $6d30: $19

jr_012_6d31:
    ld a, b                                       ; $6d31: $78
    ld d, a                                       ; $6d32: $57
    ld e, $01                                     ; $6d33: $1e $01
    call Call_000_05a8                            ; $6d35: $cd $a8 $05
    pop hl                                        ; $6d38: $e1
    pop de                                        ; $6d39: $d1
    pop bc                                        ; $6d3a: $c1
    pop af                                        ; $6d3b: $f1
    ret                                           ; $6d3c: $c9


    ld hl, $7300                                  ; $6d3d: $21 $00 $73
    ld de, $0b01                                  ; $6d40: $11 $01 $0b
    call Call_000_056c                            ; $6d43: $cd $6c $05
    ld hl, $7040                                  ; $6d46: $21 $40 $70
    ld de, $a2c0                                  ; $6d49: $11 $c0 $a2
    ld c, $04                                     ; $6d4c: $0e $04
    call Call_000_0468                            ; $6d4e: $cd $68 $04
    call Call_000_2e3b                            ; $6d51: $cd $3b $2e
    ld a, $06                                     ; $6d54: $3e $06
    ldh [$96], a                                  ; $6d56: $e0 $96
    ldh [rSVBK], a                                ; $6d58: $e0 $70
    ld hl, $d4d4                                  ; $6d5a: $21 $d4 $d4
    ld b, [hl]                                    ; $6d5d: $46
    ld [hl], $00                                  ; $6d5e: $36 $00
    ld a, [$d438]                                 ; $6d60: $fa $38 $d4
    ld c, a                                       ; $6d63: $4f
    push bc                                       ; $6d64: $c5
    ld hl, $d426                                  ; $6d65: $21 $26 $d4
    ld de, $d422                                  ; $6d68: $11 $22 $d4
    ld a, [hl+]                                   ; $6d6b: $2a
    ld [de], a                                    ; $6d6c: $12
    inc de                                        ; $6d6d: $13
    ld a, [hl+]                                   ; $6d6e: $2a
    ld [de], a                                    ; $6d6f: $12
    inc de                                        ; $6d70: $13
    ld a, [hl+]                                   ; $6d71: $2a
    ld [de], a                                    ; $6d72: $12
    inc de                                        ; $6d73: $13
    ld a, [hl]                                    ; $6d74: $7e
    ld [de], a                                    ; $6d75: $12
    ld a, $03                                     ; $6d76: $3e $03
    ld [$d438], a                                 ; $6d78: $ea $38 $d4

Jump_012_6d7b:
    call Call_012_6eb8                            ; $6d7b: $cd $b8 $6e
    call Call_000_2e3b                            ; $6d7e: $cd $3b $2e
    ldh a, [$94]                                  ; $6d81: $f0 $94
    bit 0, a                                      ; $6d83: $cb $47
    jp z, Jump_012_6db5                           ; $6d85: $ca $b5 $6d

    ldh a, [$9e]                                  ; $6d88: $f0 $9e
    or a                                          ; $6d8a: $b7
    jp z, Jump_012_6e8a                           ; $6d8b: $ca $8a $6e

    ld hl, $d424                                  ; $6d8e: $21 $24 $d4
    ld a, [hl+]                                   ; $6d91: $2a
    ld d, [hl]                                    ; $6d92: $56
    ld e, a                                       ; $6d93: $5f
    ld hl, $d403                                  ; $6d94: $21 $03 $d4
    ld [hl], $00                                  ; $6d97: $36 $00
    inc hl                                        ; $6d99: $23
    ld a, e                                       ; $6d9a: $7b
    and $e0                                       ; $6d9b: $e6 $e0
    ld [hl], a                                    ; $6d9d: $77
    inc hl                                        ; $6d9e: $23
    ld [hl], d                                    ; $6d9f: $72
    ld hl, $d422                                  ; $6da0: $21 $22 $d4
    ld a, [hl+]                                   ; $6da3: $2a
    ld d, [hl]                                    ; $6da4: $56
    ld e, a                                       ; $6da5: $5f
    ld hl, $d400                                  ; $6da6: $21 $00 $d4
    ld [hl], $00                                  ; $6da9: $36 $00
    inc hl                                        ; $6dab: $23
    ld a, e                                       ; $6dac: $7b
    and $e0                                       ; $6dad: $e6 $e0
    ld [hl], a                                    ; $6daf: $77
    inc hl                                        ; $6db0: $23
    ld [hl], d                                    ; $6db1: $72
    jp Jump_012_6e8a                              ; $6db2: $c3 $8a $6e


Jump_012_6db5:
    bit 0, a                                      ; $6db5: $cb $47
    jp nz, Jump_012_6e9d                          ; $6db7: $c2 $9d $6e

    bit 1, a                                      ; $6dba: $cb $4f
    jp nz, Jump_012_6e91                          ; $6dbc: $c2 $91 $6e

    bit 3, a                                      ; $6dbf: $cb $5f
    jp nz, Jump_012_6e91                          ; $6dc1: $c2 $91 $6e

    ldh a, [$90]                                  ; $6dc4: $f0 $90
    and $f0                                       ; $6dc6: $e6 $f0
    jp z, Jump_012_6e8a                           ; $6dc8: $ca $8a $6e

    ld hl, $6ea8                                  ; $6dcb: $21 $a8 $6e
    swap a                                        ; $6dce: $cb $37
    ld d, $00                                     ; $6dd0: $16 $00
    ld e, a                                       ; $6dd2: $5f
    add hl, de                                    ; $6dd3: $19
    ld a, [hl]                                    ; $6dd4: $7e
    push af                                       ; $6dd5: $f5
    ld a, [$d486]                                 ; $6dd6: $fa $86 $d4
    srl a                                         ; $6dd9: $cb $3f
    srl a                                         ; $6ddb: $cb $3f
    srl a                                         ; $6ddd: $cb $3f
    add $08                                       ; $6ddf: $c6 $08
    ld h, $00                                     ; $6de1: $26 $00
    ld l, a                                       ; $6de3: $6f
    ld a, [$d443]                                 ; $6de4: $fa $43 $d4
    or a                                          ; $6de7: $b7
    jr nz, jr_012_6dec                            ; $6de8: $20 $02

    add hl, hl                                    ; $6dea: $29
    add hl, hl                                    ; $6deb: $29

jr_012_6dec:
    pop af                                        ; $6dec: $f1
    call Call_000_0b31                            ; $6ded: $cd $31 $0b
    push hl                                       ; $6df0: $e5
    ld hl, $d424                                  ; $6df1: $21 $24 $d4
    ld a, [hl+]                                   ; $6df4: $2a
    ld h, [hl]                                    ; $6df5: $66
    ld l, a                                       ; $6df6: $6f
    add hl, de                                    ; $6df7: $19
    push hl                                       ; $6df8: $e5
    ld a, [$c32a]                                 ; $6df9: $fa $2a $c3
    ld h, a                                       ; $6dfc: $67
    ld l, $00                                     ; $6dfd: $2e $00
    ld de, $0080                                  ; $6dff: $11 $80 $00
    add hl, de                                    ; $6e02: $19
    ld b, h                                       ; $6e03: $44
    ld c, l                                       ; $6e04: $4d
    pop de                                        ; $6e05: $d1
    push de                                       ; $6e06: $d5
    call Call_000_08ac                            ; $6e07: $cd $ac $08
    bit 7, h                                      ; $6e0a: $cb $7c
    pop hl                                        ; $6e0c: $e1
    jr nz, jr_012_6e13                            ; $6e0d: $20 $04

    ld h, b                                       ; $6e0f: $60
    ld l, c                                       ; $6e10: $69
    jr jr_012_6e2c                                ; $6e11: $18 $19

jr_012_6e13:
    push hl                                       ; $6e13: $e5
    ld a, [$c32c]                                 ; $6e14: $fa $2c $c3
    ld h, a                                       ; $6e17: $67
    ld l, $00                                     ; $6e18: $2e $00
    ld de, $fd80                                  ; $6e1a: $11 $80 $fd
    add hl, de                                    ; $6e1d: $19
    ld b, h                                       ; $6e1e: $44
    ld c, l                                       ; $6e1f: $4d
    pop de                                        ; $6e20: $d1
    push de                                       ; $6e21: $d5
    call Call_000_08ac                            ; $6e22: $cd $ac $08
    bit 7, h                                      ; $6e25: $cb $7c
    pop hl                                        ; $6e27: $e1
    jr z, jr_012_6e2c                             ; $6e28: $28 $02

    ld h, b                                       ; $6e2a: $60
    ld l, c                                       ; $6e2b: $69

jr_012_6e2c:
    ld a, l                                       ; $6e2c: $7d
    ld [$d424], a                                 ; $6e2d: $ea $24 $d4
    ld a, h                                       ; $6e30: $7c
    ld [$d425], a                                 ; $6e31: $ea $25 $d4
    pop de                                        ; $6e34: $d1
    ld hl, $d422                                  ; $6e35: $21 $22 $d4
    ld a, [hl+]                                   ; $6e38: $2a
    ld h, [hl]                                    ; $6e39: $66
    ld l, a                                       ; $6e3a: $6f
    add hl, de                                    ; $6e3b: $19
    push hl                                       ; $6e3c: $e5
    ld a, [$c329]                                 ; $6e3d: $fa $29 $c3
    ld h, a                                       ; $6e40: $67
    ld l, $00                                     ; $6e41: $2e $00
    ld de, $0080                                  ; $6e43: $11 $80 $00
    add hl, de                                    ; $6e46: $19
    ld b, h                                       ; $6e47: $44
    ld c, l                                       ; $6e48: $4d
    pop de                                        ; $6e49: $d1
    push de                                       ; $6e4a: $d5
    call Call_000_08ac                            ; $6e4b: $cd $ac $08
    bit 7, h                                      ; $6e4e: $cb $7c
    pop hl                                        ; $6e50: $e1
    jr nz, jr_012_6e57                            ; $6e51: $20 $04

    ld h, b                                       ; $6e53: $60
    ld l, c                                       ; $6e54: $69
    jr jr_012_6e70                                ; $6e55: $18 $19

jr_012_6e57:
    push hl                                       ; $6e57: $e5
    ld a, [$c32b]                                 ; $6e58: $fa $2b $c3
    ld h, a                                       ; $6e5b: $67
    ld l, $00                                     ; $6e5c: $2e $00
    ld de, $ff80                                  ; $6e5e: $11 $80 $ff
    add hl, de                                    ; $6e61: $19
    ld b, h                                       ; $6e62: $44
    ld c, l                                       ; $6e63: $4d
    pop de                                        ; $6e64: $d1
    push de                                       ; $6e65: $d5
    call Call_000_08ac                            ; $6e66: $cd $ac $08
    bit 7, h                                      ; $6e69: $cb $7c
    pop hl                                        ; $6e6b: $e1
    jr z, jr_012_6e70                             ; $6e6c: $28 $02

    ld h, b                                       ; $6e6e: $60
    ld l, c                                       ; $6e6f: $69

jr_012_6e70:
    ld a, l                                       ; $6e70: $7d
    ld [$d422], a                                 ; $6e71: $ea $22 $d4
    ld a, h                                       ; $6e74: $7c
    ld [$d423], a                                 ; $6e75: $ea $23 $d4
    call Call_012_6f16                            ; $6e78: $cd $16 $6f
    ld a, [$d486]                                 ; $6e7b: $fa $86 $d4
    cp $40                                        ; $6e7e: $fe $40
    jp nc, Jump_012_6d7b                          ; $6e80: $d2 $7b $6d

    inc a                                         ; $6e83: $3c
    ld [$d486], a                                 ; $6e84: $ea $86 $d4
    jp Jump_012_6d7b                              ; $6e87: $c3 $7b $6d


Jump_012_6e8a:
    xor a                                         ; $6e8a: $af
    ld [$d486], a                                 ; $6e8b: $ea $86 $d4
    jp Jump_012_6d7b                              ; $6e8e: $c3 $7b $6d


Jump_012_6e91:
    pop bc                                        ; $6e91: $c1
    ld b, a                                       ; $6e92: $47
    ld [$d4d4], a                                 ; $6e93: $ea $d4 $d4
    ld c, a                                       ; $6e96: $4f
    ld [$d438], a                                 ; $6e97: $ea $38 $d4
    xor a                                         ; $6e9a: $af
    dec a                                         ; $6e9b: $3d
    ret                                           ; $6e9c: $c9


Jump_012_6e9d:
    pop bc                                        ; $6e9d: $c1
    ld b, a                                       ; $6e9e: $47
    ld [$d4d4], a                                 ; $6e9f: $ea $d4 $d4
    ld c, a                                       ; $6ea2: $4f
    ld [$d438], a                                 ; $6ea3: $ea $38 $d4
    xor a                                         ; $6ea6: $af
    ret                                           ; $6ea7: $c9


    rst $38                                       ; $6ea8: $ff
    nop                                           ; $6ea9: $00
    add b                                         ; $6eaa: $80
    rst $38                                       ; $6eab: $ff
    ret nz                                        ; $6eac: $c0

    ldh [$a0], a                                  ; $6ead: $e0 $a0
    ret nz                                        ; $6eaf: $c0

    ld b, b                                       ; $6eb0: $40
    jr nz, jr_012_6f13                            ; $6eb1: $20 $60

    ld b, b                                       ; $6eb3: $40
    rst $38                                       ; $6eb4: $ff
    nop                                           ; $6eb5: $00
    add b                                         ; $6eb6: $80
    rst $38                                       ; $6eb7: $ff

Call_012_6eb8:
    call Call_012_6ed5                            ; $6eb8: $cd $d5 $6e
    ld a, [$d443]                                 ; $6ebb: $fa $43 $d4
    cp c                                          ; $6ebe: $b9
    jr z, jr_012_6ed4                             ; $6ebf: $28 $13

    xor a                                         ; $6ec1: $af
    ld hl, $d426                                  ; $6ec2: $21 $26 $d4
    ld [hl+], a                                   ; $6ec5: $22
    ld [hl+], a                                   ; $6ec6: $22
    ld [hl+], a                                   ; $6ec7: $22
    ld [hl+], a                                   ; $6ec8: $22
    ld a, c                                       ; $6ec9: $79
    rst $18                                       ; $6eca: $df
    nop                                           ; $6ecb: $00
    inc de                                        ; $6ecc: $13
    xor a                                         ; $6ecd: $af
    ld [$d36c], a                                 ; $6ece: $ea $6c $d3
    rst $18                                       ; $6ed1: $df
    ld e, d                                       ; $6ed2: $5a
    db $10                                        ; $6ed3: $10

jr_012_6ed4:
    ret                                           ; $6ed4: $c9


Call_012_6ed5:
    ld c, $00                                     ; $6ed5: $0e $00
    ld a, [$d442]                                 ; $6ed7: $fa $42 $d4
    ld b, a                                       ; $6eda: $47
    ld hl, $d424                                  ; $6edb: $21 $24 $d4
    ld a, [hl+]                                   ; $6ede: $2a
    ld h, [hl]                                    ; $6edf: $66
    ld l, a                                       ; $6ee0: $6f
    ld de, $ffc0                                  ; $6ee1: $11 $c0 $ff
    add hl, de                                    ; $6ee4: $19
    ld d, b                                       ; $6ee5: $50
    ld e, $00                                     ; $6ee6: $1e $00
    call Call_000_08ac                            ; $6ee8: $cd $ac $08
    bit 7, h                                      ; $6eeb: $cb $7c
    ret nz                                        ; $6eed: $c0

    ld de, $fc80                                  ; $6eee: $11 $80 $fc
    add hl, de                                    ; $6ef1: $19
    bit 7, h                                      ; $6ef2: $cb $7c
    ret z                                         ; $6ef4: $c8

    ld a, [$d441]                                 ; $6ef5: $fa $41 $d4
    ld b, a                                       ; $6ef8: $47
    ld hl, $d422                                  ; $6ef9: $21 $22 $d4
    ld a, [hl+]                                   ; $6efc: $2a
    ld h, [hl]                                    ; $6efd: $66
    ld l, a                                       ; $6efe: $6f
    ld de, $ffc0                                  ; $6eff: $11 $c0 $ff
    add hl, de                                    ; $6f02: $19
    ld d, b                                       ; $6f03: $50
    ld e, $00                                     ; $6f04: $1e $00
    call Call_000_08ac                            ; $6f06: $cd $ac $08
    bit 7, h                                      ; $6f09: $cb $7c
    ret nz                                        ; $6f0b: $c0

    ld de, $fb80                                  ; $6f0c: $11 $80 $fb
    add hl, de                                    ; $6f0f: $19
    bit 7, h                                      ; $6f10: $cb $7c
    ret z                                         ; $6f12: $c8

jr_012_6f13:
    ld c, $01                                     ; $6f13: $0e $01
    ret                                           ; $6f15: $c9


Call_012_6f16:
    ldh a, [$9e]                                  ; $6f16: $f0 $9e
    cp $02                                        ; $6f18: $fe $02
    ret c                                         ; $6f1a: $d8

    ld hl, $d424                                  ; $6f1b: $21 $24 $d4
    ld a, [hl+]                                   ; $6f1e: $2a
    ld d, [hl]                                    ; $6f1f: $56
    ld e, a                                       ; $6f20: $5f
    ld hl, $d422                                  ; $6f21: $21 $22 $d4
    ld a, [hl+]                                   ; $6f24: $2a
    ld h, [hl]                                    ; $6f25: $66
    ld l, a                                       ; $6f26: $6f
    call Call_012_405e                            ; $6f27: $cd $5e $40
    ld h, a                                       ; $6f2a: $67
    ld l, c                                       ; $6f2b: $69
    ld de, $0006                                  ; $6f2c: $11 $06 $00
    call Call_000_22bc                            ; $6f2f: $cd $bc $22
    ld hl, $d422                                  ; $6f32: $21 $22 $d4
    ld a, [hl+]                                   ; $6f35: $2a
    ld h, [hl]                                    ; $6f36: $66
    ld l, a                                       ; $6f37: $6f
    ld a, h                                       ; $6f38: $7c
    ld de, $0504                                  ; $6f39: $11 $04 $05
    call Call_000_22a5                            ; $6f3c: $cd $a5 $22
    ld hl, $d424                                  ; $6f3f: $21 $24 $d4
    ld a, [hl+]                                   ; $6f42: $2a
    ld h, [hl]                                    ; $6f43: $66
    ld l, a                                       ; $6f44: $6f
    ld a, h                                       ; $6f45: $7c
    ld de, $0505                                  ; $6f46: $11 $05 $05
    call Call_000_22a5                            ; $6f49: $cd $a5 $22
    ld hl, $d422                                  ; $6f4c: $21 $22 $d4
    ld a, [hl+]                                   ; $6f4f: $2a
    ld h, [hl]                                    ; $6f50: $66
    ld l, a                                       ; $6f51: $6f
    srl h                                         ; $6f52: $cb $3c
    rr l                                          ; $6f54: $cb $1d
    srl h                                         ; $6f56: $cb $3c
    rr l                                          ; $6f58: $cb $1d
    srl h                                         ; $6f5a: $cb $3c
    rr l                                          ; $6f5c: $cb $1d
    srl h                                         ; $6f5e: $cb $3c
    rr l                                          ; $6f60: $cb $1d
    srl h                                         ; $6f62: $cb $3c
    rr l                                          ; $6f64: $cb $1d
    ld de, $0004                                  ; $6f66: $11 $04 $00
    call Call_000_22bc                            ; $6f69: $cd $bc $22
    ld hl, $d424                                  ; $6f6c: $21 $24 $d4
    ld a, [hl+]                                   ; $6f6f: $2a
    ld h, [hl]                                    ; $6f70: $66
    ld l, a                                       ; $6f71: $6f
    srl h                                         ; $6f72: $cb $3c
    rr l                                          ; $6f74: $cb $1d
    srl h                                         ; $6f76: $cb $3c
    rr l                                          ; $6f78: $cb $1d
    srl h                                         ; $6f7a: $cb $3c
    rr l                                          ; $6f7c: $cb $1d
    srl h                                         ; $6f7e: $cb $3c
    rr l                                          ; $6f80: $cb $1d
    srl h                                         ; $6f82: $cb $3c
    rr l                                          ; $6f84: $cb $1d
    ld de, $0005                                  ; $6f86: $11 $05 $00
    call Call_000_22bc                            ; $6f89: $cd $bc $22
    ret                                           ; $6f8c: $c9


    ld a, [$c815]                                 ; $6f8d: $fa $15 $c8
    cp $0c                                        ; $6f90: $fe $0c
    ret c                                         ; $6f92: $d8

    ld hl, $7308                                  ; $6f93: $21 $08 $73
    ld de, $0b01                                  ; $6f96: $11 $01 $0b
    call Call_000_056c                            ; $6f99: $cd $6c $05
    ld hl, $70c0                                  ; $6f9c: $21 $c0 $70
    ld de, $a2c0                                  ; $6f9f: $11 $c0 $a2
    ld c, $04                                     ; $6fa2: $0e $04
    call Call_000_0468                            ; $6fa4: $cd $68 $04
    call Call_000_2e3b                            ; $6fa7: $cd $3b $2e
    rst $08                                       ; $6faa: $cf

    db $9c

    ld bc, $a63d                                  ; $6fac: $01 $3d $a6

jr_012_6faf:
    push bc                                       ; $6faf: $c5
    ld l, b                                       ; $6fb0: $68
    call Call_000_08a5                            ; $6fb1: $cd $a5 $08
    ld a, [$c816]                                 ; $6fb4: $fa $16 $c8
    ld b, a                                       ; $6fb7: $47
    ld c, $00                                     ; $6fb8: $0e $00
    call Call_000_11ac                            ; $6fba: $cd $ac $11
    ld a, e                                       ; $6fbd: $7b
    add $48                                       ; $6fbe: $c6 $48
    bit 7, a                                      ; $6fc0: $cb $7f
    jr nz, jr_012_6fd2                            ; $6fc2: $20 $0e

    ld e, a                                       ; $6fc4: $5f
    ld a, l                                       ; $6fc5: $7d
    add $50                                       ; $6fc6: $c6 $50
    ld d, a                                       ; $6fc8: $57
    ld bc, $0b2c                                  ; $6fc9: $01 $2c $0b
    call Call_000_26a4                            ; $6fcc: $cd $a4 $26
    call Call_012_7019                            ; $6fcf: $cd $19 $70

jr_012_6fd2:
    call Call_000_2e3b                            ; $6fd2: $cd $3b $2e
    pop bc                                        ; $6fd5: $c1
    inc b                                         ; $6fd6: $04
    inc b                                         ; $6fd7: $04
    inc b                                         ; $6fd8: $04
    dec c                                         ; $6fd9: $0d
    jr nz, jr_012_6faf                            ; $6fda: $20 $d3

    ret                                           ; $6fdc: $c9


    rst $30                                       ; $6fdd: $f7
    ld h, b                                       ; $6fde: $60
    add hl, bc                                    ; $6fdf: $09
    jr nz, jr_012_6ffe                            ; $6fe0: $20 $1c

    ldh a, [$8c]                                  ; $6fe2: $f0 $8c
    and $0f                                       ; $6fe4: $e6 $0f
    ret nz                                        ; $6fe6: $c0

    ldh a, [$8c]                                  ; $6fe7: $f0 $8c
    and $10                                       ; $6fe9: $e6 $10
    add a                                         ; $6feb: $87
    add a                                         ; $6fec: $87
    ld hl, $7040                                  ; $6fed: $21 $40 $70
    add l                                         ; $6ff0: $85
    ld l, a                                       ; $6ff1: $6f
    jr nc, jr_012_6ff5                            ; $6ff2: $30 $01

    inc h                                         ; $6ff4: $24

jr_012_6ff5:
    ld de, $a2c0                                  ; $6ff5: $11 $c0 $a2
    ld c, $04                                     ; $6ff8: $0e $04
    call Call_000_0468                            ; $6ffa: $cd $68 $04
    ret                                           ; $6ffd: $c9


jr_012_6ffe:
    ldh a, [$8c]                                  ; $6ffe: $f0 $8c
    and $0f                                       ; $7000: $e6 $0f
    ret nz                                        ; $7002: $c0

    ldh a, [$8c]                                  ; $7003: $f0 $8c
    and $10                                       ; $7005: $e6 $10
    add a                                         ; $7007: $87
    ld hl, $72c0                                  ; $7008: $21 $c0 $72
    add l                                         ; $700b: $85
    ld l, a                                       ; $700c: $6f
    jr nc, jr_012_7010                            ; $700d: $30 $01

    inc h                                         ; $700f: $24

jr_012_7010:
    ld de, $a2c0                                  ; $7010: $11 $c0 $a2
    ld c, $04                                     ; $7013: $0e $04
    call Call_000_0468                            ; $7015: $cd $68 $04
    ret                                           ; $7018: $c9


Call_012_7019:
    ldh a, [$8c]                                  ; $7019: $f0 $8c
    and $07                                       ; $701b: $e6 $07
    ret nz                                        ; $701d: $c0

    ldh a, [$8c]                                  ; $701e: $f0 $8c
    and $38                                       ; $7020: $e6 $38
    ld h, $00                                     ; $7022: $26 $00
    ld l, a                                       ; $7024: $6f
    add hl, hl                                    ; $7025: $29
    add hl, hl                                    ; $7026: $29
    add hl, hl                                    ; $7027: $29
    ld de, $70c0                                  ; $7028: $11 $c0 $70
    add hl, de                                    ; $702b: $19
    ld de, $a2c0                                  ; $702c: $11 $c0 $a2
    ld c, $04                                     ; $702f: $0e $04
    call Call_000_0468                            ; $7031: $cd $68 $04
    ret                                           ; $7034: $c9


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
    ld bc, $0700                                  ; $7040: $01 $00 $07
    nop                                           ; $7043: $00
    add hl, bc                                    ; $7044: $09
    rlca                                          ; $7045: $07
    inc de                                        ; $7046: $13
    inc c                                         ; $7047: $0c
    rla                                           ; $7048: $17
    dec bc                                        ; $7049: $0b
    rra                                           ; $704a: $1f
    ld [bc], a                                    ; $704b: $02
    ccf                                           ; $704c: $3f
    inc bc                                        ; $704d: $03
    daa                                           ; $704e: $27
    jr @+$62                                      ; $704f: $18 $60

    rra                                           ; $7051: $1f
    ld [hl], e                                    ; $7052: $73
    inc c                                         ; $7053: $0c
    ld a, h                                       ; $7054: $7c
    inc sp                                        ; $7055: $33
    ei                                            ; $7056: $fb
    ld a, h                                       ; $7057: $7c
    xor [hl]                                      ; $7058: $ae
    ld a, a                                       ; $7059: $7f
    ld b, a                                       ; $705a: $47
    ccf                                           ; $705b: $3f
    jr c, jr_012_7065                             ; $705c: $38 $07

    rlca                                          ; $705e: $07
    nop                                           ; $705f: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    ret nz                                        ; $7062: $c0

    nop                                           ; $7063: $00
    and b                                         ; $7064: $a0

jr_012_7065:
    ret nz                                        ; $7065: $c0

    ldh a, [rP1]                                  ; $7066: $f0 $00
    ld hl, sp-$10                                 ; $7068: $f8 $f0
    ld hl, sp-$30                                 ; $706a: $f8 $d0
    ld hl, sp-$50                                 ; $706c: $f8 $b0
    cp d                                          ; $706e: $ba
    ld b, b                                       ; $706f: $40
    ld c, $f0                                     ; $7070: $0e $f0
    jp c, $aa20                                   ; $7072: $da $20 $aa

    ret nc                                        ; $7075: $d0

    ccf                                           ; $7076: $3f
    ret nz                                        ; $7077: $c0

    rst $18                                       ; $7078: $df
    ld h, $6f                                     ; $7079: $26 $6f
    or $1f                                        ; $707b: $f6 $1f
    ldh [$e0], a                                  ; $707d: $e0 $e0
    nop                                           ; $707f: $00
    ld bc, $0700                                  ; $7080: $01 $00 $07
    nop                                           ; $7083: $00
    add hl, bc                                    ; $7084: $09
    rlca                                          ; $7085: $07
    inc de                                        ; $7086: $13
    inc c                                         ; $7087: $0c
    rla                                           ; $7088: $17
    dec bc                                        ; $7089: $0b
    rra                                           ; $708a: $1f
    ld [bc], a                                    ; $708b: $02
    ccf                                           ; $708c: $3f
    inc bc                                        ; $708d: $03
    daa                                           ; $708e: $27
    jr @+$62                                      ; $708f: $18 $60

    rra                                           ; $7091: $1f
    ld [hl], e                                    ; $7092: $73
    inc c                                         ; $7093: $0c
    ld c, h                                       ; $7094: $4c
    inc sp                                        ; $7095: $33
    xor e                                         ; $7096: $ab
    ld a, h                                       ; $7097: $7c
    xor [hl]                                      ; $7098: $ae
    ld a, a                                       ; $7099: $7f
    ld d, a                                       ; $709a: $57
    cpl                                           ; $709b: $2f
    jr c, jr_012_70a5                             ; $709c: $38 $07

    rlca                                          ; $709e: $07
    nop                                           ; $709f: $00
    nop                                           ; $70a0: $00
    nop                                           ; $70a1: $00
    ret nz                                        ; $70a2: $c0

    nop                                           ; $70a3: $00

jr_012_70a4:
    and b                                         ; $70a4: $a0

jr_012_70a5:
    ret nz                                        ; $70a5: $c0

    ldh a, [rP1]                                  ; $70a6: $f0 $00
    ld hl, sp-$10                                 ; $70a8: $f8 $f0
    ld hl, sp-$30                                 ; $70aa: $f8 $d0
    ld hl, sp-$50                                 ; $70ac: $f8 $b0
    cp d                                          ; $70ae: $ba
    ld b, b                                       ; $70af: $40
    ld c, $f0                                     ; $70b0: $0e $f0
    jp c, $aa20                                   ; $70b2: $da $20 $aa

    ret nc                                        ; $70b5: $d0

    ccf                                           ; $70b6: $3f
    ret nz                                        ; $70b7: $c0

    rst $18                                       ; $70b8: $df
    ld h, $6f                                     ; $70b9: $26 $6f
    or $9f                                        ; $70bb: $f6 $9f
    ld h, b                                       ; $70bd: $60
    ld h, b                                       ; $70be: $60
    nop                                           ; $70bf: $00
    rlca                                          ; $70c0: $07
    nop                                           ; $70c1: $00
    ld [$1707], sp                                ; $70c2: $08 $07 $17
    dec bc                                        ; $70c5: $0b
    rra                                           ; $70c6: $1f
    rlca                                          ; $70c7: $07
    rra                                           ; $70c8: $1f
    add hl, bc                                    ; $70c9: $09
    rra                                           ; $70ca: $1f
    add hl, bc                                    ; $70cb: $09
    rra                                           ; $70cc: $1f
    add hl, bc                                    ; $70cd: $09
    rra                                           ; $70ce: $1f
    rrca                                          ; $70cf: $0f
    cpl                                           ; $70d0: $2f
    ld d, $47                                     ; $70d1: $16 $47
    dec sp                                        ; $70d3: $3b
    ld c, a                                       ; $70d4: $4f
    jr nc, jr_012_7116                            ; $70d5: $30 $3f

    inc bc                                        ; $70d7: $03
    jr nz, @+$21                                  ; $70d8: $20 $1f

    ld e, h                                       ; $70da: $5c
    inc hl                                        ; $70db: $23
    ccf                                           ; $70dc: $3f
    ld [$001e], sp                                ; $70dd: $08 $1e $00
    ret nz                                        ; $70e0: $c0

    nop                                           ; $70e1: $00
    jr nz, jr_012_70a4                            ; $70e2: $20 $c0

    ret nc                                        ; $70e4: $d0

    and b                                         ; $70e5: $a0
    ldh a, [$c0]                                  ; $70e6: $f0 $c0
    ldh a, [rNR41]                                ; $70e8: $f0 $20
    ldh a, [rNR41]                                ; $70ea: $f0 $20
    ldh a, [rNR41]                                ; $70ec: $f0 $20
    ldh a, [$e0]                                  ; $70ee: $f0 $e0
    add sp, -$30                                  ; $70f0: $e8 $d0
    call nz, $e4b8                                ; $70f2: $c4 $b8 $e4
    jr @-$06                                      ; $70f5: $18 $f8

    add b                                         ; $70f7: $80
    ld [$74f0], sp                                ; $70f8: $08 $f0 $74
    adc b                                         ; $70fb: $88
    ld hl, sp+$20                                 ; $70fc: $f8 $20
    ldh a, [rP1]                                  ; $70fe: $f0 $00
    rlca                                          ; $7100: $07
    nop                                           ; $7101: $00
    ld [$1f07], sp                                ; $7102: $08 $07 $1f
    ld c, $3f                                     ; $7105: $0e $3f
    rra                                           ; $7107: $1f
    ccf                                           ; $7108: $3f
    add hl, bc                                    ; $7109: $09
    ccf                                           ; $710a: $3f
    add hl, bc                                    ; $710b: $09
    ccf                                           ; $710c: $3f
    add hl, bc                                    ; $710d: $09
    ccf                                           ; $710e: $3f
    rra                                           ; $710f: $1f
    ccf                                           ; $7110: $3f
    ld d, $5e                                     ; $7111: $16 $5e
    dec l                                         ; $7113: $2d
    ccf                                           ; $7114: $3f
    nop                                           ; $7115: $00

jr_012_7116:
    rra                                           ; $7116: $1f
    inc c                                         ; $7117: $0c
    db $10                                        ; $7118: $10
    rrca                                          ; $7119: $0f
    add hl, sp                                    ; $711a: $39
    ld b, $3f                                     ; $711b: $06 $3f
    db $10                                        ; $711d: $10
    ld e, $00                                     ; $711e: $1e $00
    ldh [rP1], a                                  ; $7120: $e0 $00
    jr @-$1e                                      ; $7122: $18 $e0

    inc b                                         ; $7124: $04
    ld hl, sp-$78                                 ; $7125: $f8 $88
    ld [hl], b                                    ; $7127: $70
    ldh a, [rP1]                                  ; $7128: $f0 $00
    ldh [rLCDC], a                                ; $712a: $e0 $40
    ldh a, [rP1]                                  ; $712c: $f0 $00
    sub b                                         ; $712e: $90
    ld h, b                                       ; $712f: $60
    ret z                                         ; $7130: $c8

    jr nc, jr_012_713b                            ; $7131: $30 $08

    ldh a, [$88]                                  ; $7133: $f0 $88

jr_012_7135:
    ld [hl], b                                    ; $7135: $70
    ldh a, [rP1]                                  ; $7136: $f0 $00
    ld [$c4f0], sp                                ; $7138: $08 $f0 $c4

jr_012_713b:
    jr c, jr_012_7135                             ; $713b: $38 $f8

    add b                                         ; $713d: $80
    ldh a, [rP1]                                  ; $713e: $f0 $00
    rlca                                          ; $7140: $07
    nop                                           ; $7141: $00
    ld [$1c07], sp                                ; $7142: $08 $07 $1c
    dec bc                                        ; $7145: $0b
    ld a, $1d                                     ; $7146: $3e $1d
    ccf                                           ; $7148: $3f
    inc c                                         ; $7149: $0c
    ccf                                           ; $714a: $3f
    dec c                                         ; $714b: $0d
    ccf                                           ; $714c: $3f
    inc c                                         ; $714d: $0c
    ld a, $1d                                     ; $714e: $3e $1d
    ccf                                           ; $7150: $3f
    jr jr_012_718b                                ; $7151: $18 $38

    rla                                           ; $7153: $17
    rra                                           ; $7154: $1f
    nop                                           ; $7155: $00
    rra                                           ; $7156: $1f
    ld [$0f10], sp                                ; $7157: $08 $10 $0f
    jr c, jr_012_7163                             ; $715a: $38 $07

    ccf                                           ; $715c: $3f
    db $10                                        ; $715d: $10
    rra                                           ; $715e: $1f
    nop                                           ; $715f: $00
    ldh a, [rP1]                                  ; $7160: $f0 $00
    inc c                                         ; $7162: $0c

jr_012_7163:
    ldh a, [rNR43]                                ; $7163: $f0 $22
    call c, $e01c                                 ; $7165: $dc $1c $e0
    ldh a, [rP1]                                  ; $7168: $f0 $00
    ldh [$c0], a                                  ; $716a: $e0 $c0
    ldh a, [rP1]                                  ; $716c: $f0 $00
    db $10                                        ; $716e: $10
    ldh [$90], a                                  ; $716f: $e0 $90
    ld h, b                                       ; $7171: $60
    ld [$08f0], sp                                ; $7172: $08 $f0 $08
    ldh a, [$f0]                                  ; $7175: $f0 $f0
    nop                                           ; $7177: $00
    ld [$04f0], sp                                ; $7178: $08 $f0 $04
    ld hl, sp-$08                                 ; $717b: $f8 $f8
    nop                                           ; $717d: $00
    ret nz                                        ; $717e: $c0

    nop                                           ; $717f: $00
    rlca                                          ; $7180: $07
    nop                                           ; $7181: $00
    ld [$1007], sp                                ; $7182: $08 $07 $10
    rrca                                          ; $7185: $0f
    jr c, jr_012_719f                             ; $7186: $38 $17

    ccf                                           ; $7188: $3f
    db $10                                        ; $7189: $10
    ccf                                           ; $718a: $3f

jr_012_718b:
    rla                                           ; $718b: $17
    ccf                                           ; $718c: $3f
    db $10                                        ; $718d: $10
    jr c, jr_012_71a7                             ; $718e: $38 $17

    inc a                                         ; $7190: $3c
    inc bc                                        ; $7191: $03
    ld b, b                                       ; $7192: $40
    ccf                                           ; $7193: $3f
    jr nc, jr_012_71a5                            ; $7194: $30 $0f

    rra                                           ; $7196: $1f
    nop                                           ; $7197: $00
    db $10                                        ; $7198: $10
    rrca                                          ; $7199: $0f
    jr nz, jr_012_71bb                            ; $719a: $20 $1f

    ccf                                           ; $719c: $3f
    nop                                           ; $719d: $00
    rra                                           ; $719e: $1f

jr_012_719f:
    nop                                           ; $719f: $00
    ldh a, [rP1]                                  ; $71a0: $f0 $00
    ld [$84f0], sp                                ; $71a2: $08 $f0 $84

jr_012_71a5:
    ld a, b                                       ; $71a5: $78
    ld a, b                                       ; $71a6: $78

jr_012_71a7:
    add b                                         ; $71a7: $80
    ldh a, [rP1]                                  ; $71a8: $f0 $00
    ldh [$c0], a                                  ; $71aa: $e0 $c0
    ldh a, [rP1]                                  ; $71ac: $f0 $00
    db $10                                        ; $71ae: $10
    ldh [$08], a                                  ; $71af: $e0 $08
    ldh a, [$08]                                  ; $71b1: $f0 $08
    ldh a, [$08]                                  ; $71b3: $f0 $08
    ldh a, [$f0]                                  ; $71b5: $f0 $f0
    nop                                           ; $71b7: $00
    ld [$04f0], sp                                ; $71b8: $08 $f0 $04

jr_012_71bb:
    ld hl, sp-$08                                 ; $71bb: $f8 $f8
    nop                                           ; $71bd: $00
    ld [hl], b                                    ; $71be: $70
    nop                                           ; $71bf: $00
    rlca                                          ; $71c0: $07
    nop                                           ; $71c1: $00
    ld [$1407], sp                                ; $71c2: $08 $07 $14
    dec bc                                        ; $71c5: $0b
    inc de                                        ; $71c6: $13
    inc c                                         ; $71c7: $0c
    rra                                           ; $71c8: $1f
    nop                                           ; $71c9: $00
    rra                                           ; $71ca: $1f
    rlca                                          ; $71cb: $07
    rra                                           ; $71cc: $1f
    nop                                           ; $71cd: $00
    jr nz, @+$21                                  ; $71ce: $20 $1f

    jr nz, jr_012_71f1                            ; $71d0: $20 $1f

    ld b, b                                       ; $71d2: $40
    ccf                                           ; $71d3: $3f
    ld b, b                                       ; $71d4: $40
    ccf                                           ; $71d5: $3f
    ccf                                           ; $71d6: $3f
    nop                                           ; $71d7: $00
    jr nz, @+$21                                  ; $71d8: $20 $1f

    ld b, b                                       ; $71da: $40
    ccf                                           ; $71db: $3f
    ccf                                           ; $71dc: $3f
    nop                                           ; $71dd: $00
    ld e, $00                                     ; $71de: $1e $00
    ret nz                                        ; $71e0: $c0

    nop                                           ; $71e1: $00
    jr nz, @-$3e                                  ; $71e2: $20 $c0

jr_012_71e4:
    ld d, b                                       ; $71e4: $50
    and b                                         ; $71e5: $a0
    sub b                                         ; $71e6: $90
    ld h, b                                       ; $71e7: $60
    ldh a, [rP1]                                  ; $71e8: $f0 $00
    ldh a, [$c0]                                  ; $71ea: $f0 $c0
    ldh a, [rP1]                                  ; $71ec: $f0 $00
    ld [$08f0], sp                                ; $71ee: $08 $f0 $08

jr_012_71f1:
    ldh a, [rDIV]                                 ; $71f1: $f0 $04
    ld hl, sp+$04                                 ; $71f3: $f8 $04
    ld hl, sp-$08                                 ; $71f5: $f8 $f8
    nop                                           ; $71f7: $00
    ld [$04f0], sp                                ; $71f8: $08 $f0 $04
    ld hl, sp-$08                                 ; $71fb: $f8 $f8
    nop                                           ; $71fd: $00
    ldh a, [rP1]                                  ; $71fe: $f0 $00

jr_012_7200:
    rra                                           ; $7200: $1f
    nop                                           ; $7201: $00
    jr nz, @+$21                                  ; $7202: $20 $1f

    ld b, d                                       ; $7204: $42
    dec a                                         ; $7205: $3d
    inc a                                         ; $7206: $3c
    inc bc                                        ; $7207: $03
    rra                                           ; $7208: $1f
    nop                                           ; $7209: $00
    rrca                                          ; $720a: $0f
    rlca                                          ; $720b: $07
    rra                                           ; $720c: $1f
    nop                                           ; $720d: $00
    db $10                                        ; $720e: $10
    rrca                                          ; $720f: $0f
    jr nz, jr_012_7231                            ; $7210: $20 $1f

    jr nz, jr_012_7233                            ; $7212: $20 $1f

    jr nz, jr_012_7235                            ; $7214: $20 $1f

    rra                                           ; $7216: $1f
    nop                                           ; $7217: $00
    jr nz, jr_012_7239                            ; $7218: $20 $1f

    ld b, b                                       ; $721a: $40
    ccf                                           ; $721b: $3f
    ccf                                           ; $721c: $3f
    nop                                           ; $721d: $00
    dec e                                         ; $721e: $1d
    nop                                           ; $721f: $00
    ret nz                                        ; $7220: $c0

    nop                                           ; $7221: $00
    jr nz, jr_012_71e4                            ; $7222: $20 $c0

jr_012_7224:
    db $10                                        ; $7224: $10
    ldh [$38], a                                  ; $7225: $e0 $38
    ret nc                                        ; $7227: $d0

    ld hl, sp+$10                                 ; $7228: $f8 $10
    ld hl, sp-$30                                 ; $722a: $f8 $d0
    ld hl, sp+$10                                 ; $722c: $f8 $10
    jr c, jr_012_7200                             ; $722e: $38 $d0

    ld a, b                                       ; $7230: $78

jr_012_7231:
    add b                                         ; $7231: $80
    inc b                                         ; $7232: $04

jr_012_7233:
    ld hl, sp+$18                                 ; $7233: $f8 $18

jr_012_7235:
    ldh [$f0], a                                  ; $7235: $e0 $f0
    nop                                           ; $7237: $00
    db $10                                        ; $7238: $10

jr_012_7239:
    ldh [$08], a                                  ; $7239: $e0 $08
    ldh a, [$f8]                                  ; $723b: $f0 $f8
    nop                                           ; $723d: $00
    ldh a, [rP1]                                  ; $723e: $f0 $00
    rra                                           ; $7240: $1f
    nop                                           ; $7241: $00
    ld h, b                                       ; $7242: $60
    rra                                           ; $7243: $1f

jr_012_7244:
    adc b                                         ; $7244: $88
    ld [hl], a                                    ; $7245: $77
    ld [hl], b                                    ; $7246: $70
    rrca                                          ; $7247: $0f
    rra                                           ; $7248: $1f
    nop                                           ; $7249: $00
    rrca                                          ; $724a: $0f
    rlca                                          ; $724b: $07
    rra                                           ; $724c: $1f
    nop                                           ; $724d: $00
    db $10                                        ; $724e: $10
    rrca                                          ; $724f: $0f
    inc de                                        ; $7250: $13
    inc c                                         ; $7251: $0c
    jr nz, @+$21                                  ; $7252: $20 $1f

    ld hl, $1f1e                                  ; $7254: $21 $1e $1f
    nop                                           ; $7257: $00
    jr nz, jr_012_7279                            ; $7258: $20 $1f

    ld b, b                                       ; $725a: $40
    ccf                                           ; $725b: $3f
    ccf                                           ; $725c: $3f
    nop                                           ; $725d: $00
    rlca                                          ; $725e: $07
    nop                                           ; $725f: $00
    ret nz                                        ; $7260: $c0

    nop                                           ; $7261: $00
    jr nz, jr_012_7224                            ; $7262: $20 $c0

jr_012_7264:
    ld [hl], b                                    ; $7264: $70
    and b                                         ; $7265: $a0
    ld hl, sp+$70                                 ; $7266: $f8 $70
    ld hl, sp+$60                                 ; $7268: $f8 $60
    ld hl, sp+$60                                 ; $726a: $f8 $60
    ld hl, sp+$60                                 ; $726c: $f8 $60
    ld hl, sp+$70                                 ; $726e: $f8 $70
    ld hl, sp+$30                                 ; $7270: $f8 $30
    jr c, jr_012_7244                             ; $7272: $38 $d0

    ldh a, [rP1]                                  ; $7274: $f0 $00
    ldh a, [rNR41]                                ; $7276: $f0 $20
    db $10                                        ; $7278: $10

jr_012_7279:
    ldh [$38], a                                  ; $7279: $e0 $38
    ret nz                                        ; $727b: $c0

    ld hl, sp+$10                                 ; $727c: $f8 $10
    ldh a, [rP1]                                  ; $727e: $f0 $00
    rrca                                          ; $7280: $0f
    nop                                           ; $7281: $00
    jr nc, jr_012_7293                            ; $7282: $30 $0f

    ld b, c                                       ; $7284: $41
    ld a, $23                                     ; $7285: $3e $23
    dec e                                         ; $7287: $1d
    rra                                           ; $7288: $1f
    ld bc, $050f                                  ; $7289: $01 $0f $05
    rra                                           ; $728c: $1f
    ld bc, $0d13                                  ; $728d: $01 $13 $0d
    daa                                           ; $7290: $27
    jr jr_012_72b3                                ; $7291: $18 $20

jr_012_7293:
    rra                                           ; $7293: $1f
    inc hl                                        ; $7294: $23
    inc e                                         ; $7295: $1c
    rra                                           ; $7296: $1f
    nop                                           ; $7297: $00
    jr nz, jr_012_72b9                            ; $7298: $20 $1f

    ld b, a                                       ; $729a: $47
    jr c, jr_012_72dc                             ; $729b: $38 $3f

    ld [bc], a                                    ; $729d: $02
    ld e, $00                                     ; $729e: $1e $00
    ret nz                                        ; $72a0: $c0

    nop                                           ; $72a1: $00
    jr nz, jr_012_7264                            ; $72a2: $20 $c0

    ldh a, [$e0]                                  ; $72a4: $f0 $e0
    ld hl, sp-$10                                 ; $72a6: $f8 $f0
    ld hl, sp+$20                                 ; $72a8: $f8 $20
    ld hl, sp+$20                                 ; $72aa: $f8 $20
    ld hl, sp+$20                                 ; $72ac: $f8 $20
    ld hl, sp-$10                                 ; $72ae: $f8 $f0
    ld hl, sp-$30                                 ; $72b0: $f8 $d0
    db $f4                                        ; $72b2: $f4

jr_012_72b3:
    ld l, b                                       ; $72b3: $68
    ld hl, sp+$00                                 ; $72b4: $f8 $00
    ldh a, [$60]                                  ; $72b6: $f0 $60
    db $10                                        ; $72b8: $10

jr_012_72b9:
    ldh [$38], a                                  ; $72b9: $e0 $38
    ret nz                                        ; $72bb: $c0

    ld hl, sp+$10                                 ; $72bc: $f8 $10
    ldh a, [rP1]                                  ; $72be: $f0 $00
    nop                                           ; $72c0: $00
    nop                                           ; $72c1: $00
    db $ec                                        ; $72c2: $ec
    ld [bc], a                                    ; $72c3: $02
    add h                                         ; $72c4: $84
    ld l, d                                       ; $72c5: $6a
    add h                                         ; $72c6: $84
    ld b, d                                       ; $72c7: $42
    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    add h                                         ; $72ca: $84
    ld b, d                                       ; $72cb: $42
    db $ec                                        ; $72cc: $ec
    ld [bc], a                                    ; $72cd: $02
    nop                                           ; $72ce: $00
    xor $00                                       ; $72cf: $ee $00
    nop                                           ; $72d1: $00
    nop                                           ; $72d2: $00
    nop                                           ; $72d3: $00
    nop                                           ; $72d4: $00
    nop                                           ; $72d5: $00
    nop                                           ; $72d6: $00
    nop                                           ; $72d7: $00
    nop                                           ; $72d8: $00
    nop                                           ; $72d9: $00
    nop                                           ; $72da: $00
    nop                                           ; $72db: $00

jr_012_72dc:
    nop                                           ; $72dc: $00
    nop                                           ; $72dd: $00
    nop                                           ; $72de: $00
    nop                                           ; $72df: $00
    nop                                           ; $72e0: $00
    nop                                           ; $72e1: $00
    nop                                           ; $72e2: $00
    nop                                           ; $72e3: $00
    ld a, b                                       ; $72e4: $78
    inc b                                         ; $72e5: $04
    ld c, b                                       ; $72e6: $48
    inc [hl]                                      ; $72e7: $34
    ld c, b                                       ; $72e8: $48
    inc h                                         ; $72e9: $24
    ld a, b                                       ; $72ea: $78
    inc b                                         ; $72eb: $04
    nop                                           ; $72ec: $00
    ld a, h                                       ; $72ed: $7c
    nop                                           ; $72ee: $00
    nop                                           ; $72ef: $00
    nop                                           ; $72f0: $00
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    nop                                           ; $72f4: $00
    nop                                           ; $72f5: $00
    nop                                           ; $72f6: $00
    nop                                           ; $72f7: $00
    nop                                           ; $72f8: $00
    nop                                           ; $72f9: $00
    nop                                           ; $72fa: $00
    nop                                           ; $72fb: $00
    nop                                           ; $72fc: $00
    nop                                           ; $72fd: $00
    nop                                           ; $72fe: $00
    nop                                           ; $72ff: $00
    jr nz, jr_012_736c                            ; $7300: $20 $6a

    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    cp a                                          ; $7304: $bf
    ld [bc], a                                    ; $7305: $02
    rst $38                                       ; $7306: $ff
    ld a, a                                       ; $7307: $7f

    db $20, $6a, $00, $00, $1e, $00, $ff, $7f

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

jr_012_736c:
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
