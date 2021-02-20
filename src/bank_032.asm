; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

    ld d, $40                                     ; $4000: $16 $40
    ld a, b                                       ; $4002: $78
    ld b, a                                       ; $4003: $47
    dec de                                        ; $4004: $1b
    ld c, h                                       ; $4005: $4c
    or h                                          ; $4006: $b4
    ld c, [hl]                                    ; $4007: $4e

    db $e9, $4f

    ld hl, sp+$54                                 ; $400a: $f8 $54

    db $3b, $55

    dec d                                         ; $400e: $15
    ld h, e                                       ; $400f: $63

    db $b5, $6e

    ret c                                         ; $4012: $d8

    ld a, c                                       ; $4013: $79
    ret c                                         ; $4014: $d8

    ld a, c                                       ; $4015: $79
    ret                                           ; $4016: $c9


    ld b, b                                       ; $4017: $40
    ld [c], a                                     ; $4018: $e2
    ld b, b                                       ; $4019: $40
    inc h                                         ; $401a: $24
    ld b, b                                       ; $401b: $40
    or $40                                        ; $401c: $f6 $40
    ld [hl], l                                    ; $401e: $75
    ld b, c                                       ; $401f: $41
    sub b                                         ; $4020: $90
    ld b, c                                       ; $4021: $41
    sbc c                                         ; $4022: $99
    ld b, c                                       ; $4023: $41
    jr jr_032_4068                                ; $4024: $18 $42

    nop                                           ; $4026: $00
    ld bc, $0700                                  ; $4027: $01 $00 $07
    nop                                           ; $402a: $00
    nop                                           ; $402b: $00
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    ld bc, $1820                                  ; $402e: $01 $20 $18
    ld b, d                                       ; $4031: $42
    nop                                           ; $4032: $00
    ld bc, $0900                                  ; $4033: $01 $00 $09
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    nop                                           ; $4039: $00
    ld bc, $1821                                  ; $403a: $01 $21 $18
    ld b, d                                       ; $403d: $42
    nop                                           ; $403e: $00
    ld bc, $0b00                                  ; $403f: $01 $00 $0b
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    ld bc, $1822                                  ; $4046: $01 $22 $18
    ld b, d                                       ; $4049: $42
    nop                                           ; $404a: $00
    ld bc, $0d00                                  ; $404b: $01 $00 $0d
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    nop                                           ; $4050: $00
    nop                                           ; $4051: $00
    ld bc, $1820                                  ; $4052: $01 $20 $18
    ld b, d                                       ; $4055: $42
    nop                                           ; $4056: $00
    ld bc, $0f00                                  ; $4057: $01 $00 $0f
    nop                                           ; $405a: $00
    nop                                           ; $405b: $00
    nop                                           ; $405c: $00
    nop                                           ; $405d: $00
    ld bc, $1821                                  ; $405e: $01 $21 $18
    ld b, d                                       ; $4061: $42
    nop                                           ; $4062: $00
    ld bc, $1100                                  ; $4063: $01 $00 $11
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00

jr_032_4068:
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    ld bc, $0d22                                  ; $406a: $01 $22 $0d
    ld a, [hl]                                    ; $406d: $7e
    nop                                           ; $406e: $00
    dec b                                         ; $406f: $05
    add b                                         ; $4070: $80
    inc b                                         ; $4071: $04
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    nop                                           ; $4076: $00
    inc hl                                        ; $4077: $23
    dec c                                         ; $4078: $0d
    ld a, [hl]                                    ; $4079: $7e
    nop                                           ; $407a: $00
    rlca                                          ; $407b: $07
    add b                                         ; $407c: $80
    inc b                                         ; $407d: $04
    nop                                           ; $407e: $00
    nop                                           ; $407f: $00
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    ld bc, $0d23                                  ; $4082: $01 $23 $0d
    ld a, [hl]                                    ; $4085: $7e
    nop                                           ; $4086: $00
    add hl, bc                                    ; $4087: $09
    add b                                         ; $4088: $80
    inc b                                         ; $4089: $04
    nop                                           ; $408a: $00
    nop                                           ; $408b: $00
    nop                                           ; $408c: $00
    nop                                           ; $408d: $00
    ld [bc], a                                    ; $408e: $02
    inc hl                                        ; $408f: $23
    dec c                                         ; $4090: $0d
    ld a, [hl]                                    ; $4091: $7e
    nop                                           ; $4092: $00
    dec b                                         ; $4093: $05
    add b                                         ; $4094: $80
    ld b, $00                                     ; $4095: $06 $00
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    nop                                           ; $409a: $00
    inc h                                         ; $409b: $24
    dec c                                         ; $409c: $0d
    ld a, [hl]                                    ; $409d: $7e
    nop                                           ; $409e: $00
    rlca                                          ; $409f: $07
    add b                                         ; $40a0: $80
    ld b, $00                                     ; $40a1: $06 $00
    nop                                           ; $40a3: $00
    nop                                           ; $40a4: $00
    nop                                           ; $40a5: $00
    ld bc, $0d24                                  ; $40a6: $01 $24 $0d
    ld a, [hl]                                    ; $40a9: $7e
    nop                                           ; $40aa: $00
    add hl, bc                                    ; $40ab: $09
    add b                                         ; $40ac: $80
    ld b, $00                                     ; $40ad: $06 $00
    nop                                           ; $40af: $00
    nop                                           ; $40b0: $00
    nop                                           ; $40b1: $00
    ld [bc], a                                    ; $40b2: $02
    inc h                                         ; $40b3: $24
    dec c                                         ; $40b4: $0d
    ld a, [hl]                                    ; $40b5: $7e
    nop                                           ; $40b6: $00
    inc c                                         ; $40b7: $0c
    add b                                         ; $40b8: $80
    add hl, bc                                    ; $40b9: $09
    nop                                           ; $40ba: $00
    nop                                           ; $40bb: $00
    nop                                           ; $40bc: $00
    add b                                         ; $40bd: $80
    ld bc, $0025                                  ; $40be: $01 $25 $00
    nop                                           ; $40c1: $00
    nop                                           ; $40c2: $00
    nop                                           ; $40c3: $00
    nop                                           ; $40c4: $00
    nop                                           ; $40c5: $00
    nop                                           ; $40c6: $00
    nop                                           ; $40c7: $00
    rst $38                                       ; $40c8: $ff
    nop                                           ; $40c9: $00
    nop                                           ; $40ca: $00
    nop                                           ; $40cb: $00
    add hl, bc                                    ; $40cc: $09
    nop                                           ; $40cd: $00
    add hl, bc                                    ; $40ce: $09
    ld bc, $0080                                  ; $40cf: $01 $80 $00
    ld bc, $0100                                  ; $40d2: $01 $00 $01
    ld [bc], a                                    ; $40d5: $02
    ret nz                                        ; $40d6: $c0

    nop                                           ; $40d7: $00
    ld e, $00                                     ; $40d8: $1e $00
    ld bc, $c003                                  ; $40da: $01 $03 $c0
    nop                                           ; $40dd: $00
    ld e, $00                                     ; $40de: $1e $00
    ld sp, $01ff                                  ; $40e0: $31 $ff $01
    rst $38                                       ; $40e3: $ff
    nop                                           ; $40e4: $00
    nop                                           ; $40e5: $00
    nop                                           ; $40e6: $00
    nop                                           ; $40e7: $00
    inc bc                                        ; $40e8: $03
    ld bc, $dfff                                  ; $40e9: $01 $ff $df
    ld [bc], a                                    ; $40ec: $02
    ld b, h                                       ; $40ed: $44
    ret                                           ; $40ee: $c9


    ld hl, $0172                                  ; $40ef: $21 $72 $01
    rst $18                                       ; $40f2: $df
    ld b, [hl]                                    ; $40f3: $46
    dec b                                         ; $40f4: $05
    ret                                           ; $40f5: $c9


    ld [bc], a                                    ; $40f6: $02
    rst $38                                       ; $40f7: $ff
    nop                                           ; $40f8: $00
    nop                                           ; $40f9: $00
    ld l, e                                       ; $40fa: $6b
    ld bc, $0003                                  ; $40fb: $01 $03 $00
    inc bc                                        ; $40fe: $03
    rst $38                                       ; $40ff: $ff
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00
    ld l, h                                       ; $4102: $6c
    ld bc, $0003                                  ; $4103: $01 $03 $00
    inc b                                         ; $4106: $04
    rst $38                                       ; $4107: $ff
    nop                                           ; $4108: $00
    nop                                           ; $4109: $00
    ld l, l                                       ; $410a: $6d
    ld bc, $0003                                  ; $410b: $01 $03 $00
    dec b                                         ; $410e: $05
    rst $38                                       ; $410f: $ff
    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    ld l, [hl]                                    ; $4112: $6e
    ld bc, $0003                                  ; $4113: $01 $03 $00
    ld b, $ff                                     ; $4116: $06 $ff
    nop                                           ; $4118: $00
    nop                                           ; $4119: $00
    ld l, a                                       ; $411a: $6f
    ld bc, $0003                                  ; $411b: $01 $03 $00
    rlca                                          ; $411e: $07
    rst $38                                       ; $411f: $ff
    nop                                           ; $4120: $00
    nop                                           ; $4121: $00
    ld [hl], b                                    ; $4122: $70
    ld bc, $0000                                  ; $4123: $01 $00 $00
    ld [$00ff], sp                                ; $4126: $08 $ff $00
    nop                                           ; $4129: $00
    db $eb                                        ; $412a: $eb
    ld b, b                                       ; $412b: $40
    ld bc, $ff00                                  ; $412c: $01 $00 $ff
    ld [bc], a                                    ; $412f: $02
    stop                                          ; $4130: $10 $00
    nop                                           ; $4132: $00
    ld l, e                                       ; $4133: $6b
    ld bc, $0001                                  ; $4134: $01 $01 $00
    inc bc                                        ; $4137: $03
    add b                                         ; $4138: $80
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    ld l, h                                       ; $413b: $6c
    ld bc, $0001                                  ; $413c: $01 $01 $00
    inc b                                         ; $413f: $04
    jr nz, jr_032_4142                            ; $4140: $20 $00

jr_032_4142:
    nop                                           ; $4142: $00
    ld l, l                                       ; $4143: $6d
    ld bc, $0001                                  ; $4144: $01 $01 $00
    dec b                                         ; $4147: $05
    ld b, b                                       ; $4148: $40
    nop                                           ; $4149: $00
    nop                                           ; $414a: $00
    ld l, [hl]                                    ; $414b: $6e
    ld bc, $0001                                  ; $414c: $01 $01 $00
    ld b, $ff                                     ; $414f: $06 $ff
    ld h, l                                       ; $4151: $65
    add b                                         ; $4152: $80
    ld l, a                                       ; $4153: $6f
    ld bc, $0001                                  ; $4154: $01 $01 $00
    rlca                                          ; $4157: $07
    jr nc, @+$67                                  ; $4158: $30 $65

    nop                                           ; $415a: $00
    ld [hl], b                                    ; $415b: $70
    ld bc, $0001                                  ; $415c: $01 $01 $00
    rst $38                                       ; $415f: $ff
    rst $18                                       ; $4160: $df
    nop                                           ; $4161: $00
    ld a, [bc]                                    ; $4162: $0a
    ld hl, $0172                                  ; $4163: $21 $72 $01
    rst $18                                       ; $4166: $df
    ld c, $0a                                     ; $4167: $0e $0a
    ld a, $00                                     ; $4169: $3e $00
    rst $18                                       ; $416b: $df
    ld [$df0a], sp                                ; $416c: $08 $0a $df
    ld [bc], a                                    ; $416f: $02
    ld a, [bc]                                    ; $4170: $0a
    rst $28                                       ; $4171: $ef
    ld b, b                                       ; $4172: $40
    ld [bc], a                                    ; $4173: $02
    ret                                           ; $4174: $c9


    ld bc, $00ff                                  ; $4175: $01 $ff $00
    nop                                           ; $4178: $00
    ld h, a                                       ; $4179: $67
    ld a, [hl]                                    ; $417a: $7e
    ld b, $00                                     ; $417b: $06 $00
    rst $38                                       ; $417d: $ff
    rst $18                                       ; $417e: $df
    nop                                           ; $417f: $00
    ld a, [bc]                                    ; $4180: $0a
    ld hl, $0172                                  ; $4181: $21 $72 $01
    rst $18                                       ; $4184: $df
    ld c, $0a                                     ; $4185: $0e $0a
    ld a, $00                                     ; $4187: $3e $00
    rst $18                                       ; $4189: $df
    ld [$df0a], sp                                ; $418a: $08 $0a $df
    ld [bc], a                                    ; $418d: $02
    ld a, [bc]                                    ; $418e: $0a
    ret                                           ; $418f: $c9


    ld bc, $00ff                                  ; $4190: $01 $ff $00
    nop                                           ; $4193: $00
    ld a, [hl]                                    ; $4194: $7e
    ld b, c                                       ; $4195: $41
    nop                                           ; $4196: $00
    nop                                           ; $4197: $00
    rst $38                                       ; $4198: $ff
    ld hl, $4713                                  ; $4199: $21 $13 $47
    ld d, $0b                                     ; $419c: $16 $0b
    ld e, $01                                     ; $419e: $1e $01
    call Call_000_0595                            ; $41a0: $cd $95 $05
    ld a, [$c46a]                                 ; $41a3: $fa $6a $c4
    cp $01                                        ; $41a6: $fe $01
    jr nz, jr_032_41f4                            ; $41a8: $20 $4a

    ld a, $00                                     ; $41aa: $3e $00
    call Call_032_475b                            ; $41ac: $cd $5b $47
    ld b, a                                       ; $41af: $47
    ld a, $01                                     ; $41b0: $3e $01
    call Call_032_475b                            ; $41b2: $cd $5b $47
    cp b                                          ; $41b5: $b8
    jr c, jr_032_41be                             ; $41b6: $38 $06

    ld c, $00                                     ; $41b8: $0e $00
    ld e, $01                                     ; $41ba: $1e $01
    jr jr_032_41c2                                ; $41bc: $18 $04

jr_032_41be:
    ld c, $01                                     ; $41be: $0e $01
    ld e, $00                                     ; $41c0: $1e $00

jr_032_41c2:
    ld a, $10                                     ; $41c2: $3e $10
    call Call_032_7e8e                            ; $41c4: $cd $8e $7e
    ld a, [hl]                                    ; $41c7: $7e
    ld b, a                                       ; $41c8: $47
    and $0f                                       ; $41c9: $e6 $0f
    ld d, a                                       ; $41cb: $57
    ld a, b                                       ; $41cc: $78
    sra a                                         ; $41cd: $cb $2f
    sra a                                         ; $41cf: $cb $2f
    sra a                                         ; $41d1: $cb $2f
    sra a                                         ; $41d3: $cb $2f
    and $0f                                       ; $41d5: $e6 $0f
    ld b, a                                       ; $41d7: $47
    call Call_032_44b4                            ; $41d8: $cd $b4 $44
    call Call_032_45ee                            ; $41db: $cd $ee $45
    xor a                                         ; $41de: $af
    ld [$c3f4], a                                 ; $41df: $ea $f4 $c3
    ld c, $08                                     ; $41e2: $0e $08
    call Call_000_25af                            ; $41e4: $cd $af $25
    call Call_000_2625                            ; $41e7: $cd $25 $26
    ld a, $01                                     ; $41ea: $3e $01
    ld hl, $467b                                  ; $41ec: $21 $7b $46
    call Call_000_23e8                            ; $41ef: $cd $e8 $23
    jr jr_032_420e                                ; $41f2: $18 $1a

jr_032_41f4:
    cp $02                                        ; $41f4: $fe $02
    jr nz, jr_032_420e                            ; $41f6: $20 $16

    ld a, $10                                     ; $41f8: $3e $10
    call Call_032_7e8e                            ; $41fa: $cd $8e $7e
    ld a, [hl]                                    ; $41fd: $7e
    and $0f                                       ; $41fe: $e6 $0f
    ld b, a                                       ; $4200: $47
    ld c, $02                                     ; $4201: $0e $02
    call Call_032_456a                            ; $4203: $cd $6a $45
    ld c, $08                                     ; $4206: $0e $08
    call Call_000_25af                            ; $4208: $cd $af $25
    call Call_000_2625                            ; $420b: $cd $25 $26

jr_032_420e:
    call Call_000_2e3b                            ; $420e: $cd $3b $2e
    ldh a, [$91]                                  ; $4211: $f0 $91
    and $0b                                       ; $4213: $e6 $0b
    jr z, jr_032_420e                             ; $4215: $28 $f7

    ret                                           ; $4217: $c9


    nop                                           ; $4218: $00

Call_032_4219:
    push af                                       ; $4219: $f5
    push bc                                       ; $421a: $c5
    push de                                       ; $421b: $d5
    push hl                                       ; $421c: $e5
    ld e, a                                       ; $421d: $5f
    ldh a, [$96]                                  ; $421e: $f0 $96
    push af                                       ; $4220: $f5
    ld a, $04                                     ; $4221: $3e $04
    ldh [$96], a                                  ; $4223: $e0 $96
    ldh [rSVBK], a                                ; $4225: $e0 $70
    ld a, $02                                     ; $4227: $3e $02
    rst $18                                       ; $4229: $df
    inc d                                         ; $422a: $14
    ld a, [bc]                                    ; $422b: $0a
    ld a, l                                       ; $422c: $7d
    ldh [$e0], a                                  ; $422d: $e0 $e0
    ld a, h                                       ; $422f: $7c
    ldh [$e1], a                                  ; $4230: $e0 $e1
    ld hl, $ffe0                                  ; $4232: $21 $e0 $ff
    ld a, [hl+]                                   ; $4235: $2a
    ld h, [hl]                                    ; $4236: $66
    add $17                                       ; $4237: $c6 $17
    ld l, a                                       ; $4239: $6f
    xor a                                         ; $423a: $af
    ld [hl+], a                                   ; $423b: $22
    ld a, e                                       ; $423c: $7b
    dec a                                         ; $423d: $3d
    ld [hl], a                                    ; $423e: $77
    inc hl                                        ; $423f: $23
    ld a, $cc                                     ; $4240: $3e $cc
    ld [hl], a                                    ; $4242: $77
    call Call_000_0a61                            ; $4243: $cd $61 $0a
    ld c, l                                       ; $4246: $4d
    ld hl, $ffe0                                  ; $4247: $21 $e0 $ff
    ld a, [hl+]                                   ; $424a: $2a
    ld h, [hl]                                    ; $424b: $66
    add $0e                                       ; $424c: $c6 $0e
    ld l, a                                       ; $424e: $6f
    ld a, c                                       ; $424f: $79
    and $07                                       ; $4250: $e6 $07
    add $10                                       ; $4252: $c6 $10
    ld [hl+], a                                   ; $4254: $22
    xor a                                         ; $4255: $af
    ld [hl], a                                    ; $4256: $77
    ld a, $03                                     ; $4257: $3e $03
    rst $18                                       ; $4259: $df
    inc d                                         ; $425a: $14
    ld a, [bc]                                    ; $425b: $0a
    ld a, l                                       ; $425c: $7d
    ldh [$e0], a                                  ; $425d: $e0 $e0
    ld a, h                                       ; $425f: $7c
    ldh [$e1], a                                  ; $4260: $e0 $e1
    ld hl, $ffe0                                  ; $4262: $21 $e0 $ff
    ld a, [hl+]                                   ; $4265: $2a
    ld h, [hl]                                    ; $4266: $66
    add $17                                       ; $4267: $c6 $17
    ld l, a                                       ; $4269: $6f
    xor a                                         ; $426a: $af
    ld [hl+], a                                   ; $426b: $22
    ld a, e                                       ; $426c: $7b
    ld [hl], a                                    ; $426d: $77
    inc hl                                        ; $426e: $23
    ld a, $99                                     ; $426f: $3e $99
    ld [hl], a                                    ; $4271: $77
    call Call_000_0a61                            ; $4272: $cd $61 $0a
    ld c, l                                       ; $4275: $4d
    ld hl, $ffe0                                  ; $4276: $21 $e0 $ff
    ld a, [hl+]                                   ; $4279: $2a
    ld h, [hl]                                    ; $427a: $66
    add $0e                                       ; $427b: $c6 $0e
    ld l, a                                       ; $427d: $6f
    ld a, c                                       ; $427e: $79
    and $07                                       ; $427f: $e6 $07
    add $10                                       ; $4281: $c6 $10
    ld [hl+], a                                   ; $4283: $22
    xor a                                         ; $4284: $af
    ld [hl], a                                    ; $4285: $77
    ld a, $04                                     ; $4286: $3e $04
    rst $18                                       ; $4288: $df
    inc d                                         ; $4289: $14
    ld a, [bc]                                    ; $428a: $0a
    ld a, l                                       ; $428b: $7d
    ldh [$e0], a                                  ; $428c: $e0 $e0
    ld a, h                                       ; $428e: $7c
    ldh [$e1], a                                  ; $428f: $e0 $e1
    ld hl, $ffe0                                  ; $4291: $21 $e0 $ff
    ld a, [hl+]                                   ; $4294: $2a
    ld h, [hl]                                    ; $4295: $66
    add $17                                       ; $4296: $c6 $17
    ld l, a                                       ; $4298: $6f
    xor a                                         ; $4299: $af
    ld [hl+], a                                   ; $429a: $22
    ld a, e                                       ; $429b: $7b
    inc a                                         ; $429c: $3c
    ld [hl], a                                    ; $429d: $77
    inc hl                                        ; $429e: $23
    ld a, $66                                     ; $429f: $3e $66
    ld [hl], a                                    ; $42a1: $77
    call Call_000_0a61                            ; $42a2: $cd $61 $0a
    ld c, l                                       ; $42a5: $4d
    ld hl, $ffe0                                  ; $42a6: $21 $e0 $ff
    ld a, [hl+]                                   ; $42a9: $2a
    ld h, [hl]                                    ; $42aa: $66
    add $0e                                       ; $42ab: $c6 $0e
    ld l, a                                       ; $42ad: $6f
    ld a, c                                       ; $42ae: $79
    and $07                                       ; $42af: $e6 $07
    add $10                                       ; $42b1: $c6 $10
    ld [hl+], a                                   ; $42b3: $22
    xor a                                         ; $42b4: $af
    ld [hl], a                                    ; $42b5: $77
    ld a, $05                                     ; $42b6: $3e $05
    rst $18                                       ; $42b8: $df
    inc d                                         ; $42b9: $14
    ld a, [bc]                                    ; $42ba: $0a
    ld a, l                                       ; $42bb: $7d
    ldh [$e0], a                                  ; $42bc: $e0 $e0
    ld a, h                                       ; $42be: $7c
    ldh [$e1], a                                  ; $42bf: $e0 $e1
    ld hl, $ffe0                                  ; $42c1: $21 $e0 $ff
    ld a, [hl+]                                   ; $42c4: $2a
    ld h, [hl]                                    ; $42c5: $66
    add $17                                       ; $42c6: $c6 $17
    ld l, a                                       ; $42c8: $6f
    xor a                                         ; $42c9: $af
    ld [hl+], a                                   ; $42ca: $22
    ld a, e                                       ; $42cb: $7b
    dec a                                         ; $42cc: $3d
    ld [hl], a                                    ; $42cd: $77
    inc hl                                        ; $42ce: $23
    ld a, $33                                     ; $42cf: $3e $33
    ld [hl], a                                    ; $42d1: $77
    call Call_000_0a61                            ; $42d2: $cd $61 $0a
    ld c, l                                       ; $42d5: $4d
    ld hl, $ffe0                                  ; $42d6: $21 $e0 $ff
    ld a, [hl+]                                   ; $42d9: $2a
    ld h, [hl]                                    ; $42da: $66
    add $0e                                       ; $42db: $c6 $0e
    ld l, a                                       ; $42dd: $6f
    ld a, c                                       ; $42de: $79
    and $07                                       ; $42df: $e6 $07
    add $10                                       ; $42e1: $c6 $10
    ld [hl+], a                                   ; $42e3: $22
    xor a                                         ; $42e4: $af
    ld [hl], a                                    ; $42e5: $77
    ld a, $06                                     ; $42e6: $3e $06
    rst $18                                       ; $42e8: $df
    inc d                                         ; $42e9: $14
    ld a, [bc]                                    ; $42ea: $0a
    ld a, l                                       ; $42eb: $7d
    ldh [$e0], a                                  ; $42ec: $e0 $e0
    ld a, h                                       ; $42ee: $7c
    ldh [$e1], a                                  ; $42ef: $e0 $e1
    ld hl, $ffe0                                  ; $42f1: $21 $e0 $ff
    ld a, [hl+]                                   ; $42f4: $2a
    ld h, [hl]                                    ; $42f5: $66
    add $17                                       ; $42f6: $c6 $17
    ld l, a                                       ; $42f8: $6f
    xor a                                         ; $42f9: $af
    ld [hl+], a                                   ; $42fa: $22
    ld a, e                                       ; $42fb: $7b
    ld [hl], a                                    ; $42fc: $77
    inc hl                                        ; $42fd: $23
    ld a, $00                                     ; $42fe: $3e $00
    ld [hl], a                                    ; $4300: $77
    call Call_000_0a61                            ; $4301: $cd $61 $0a
    ld c, l                                       ; $4304: $4d
    ld hl, $ffe0                                  ; $4305: $21 $e0 $ff
    ld a, [hl+]                                   ; $4308: $2a
    ld h, [hl]                                    ; $4309: $66
    add $0e                                       ; $430a: $c6 $0e
    ld l, a                                       ; $430c: $6f
    ld a, c                                       ; $430d: $79
    and $07                                       ; $430e: $e6 $07
    add $10                                       ; $4310: $c6 $10
    ld [hl+], a                                   ; $4312: $22
    xor a                                         ; $4313: $af
    ld [hl], a                                    ; $4314: $77
    ld a, $07                                     ; $4315: $3e $07
    rst $18                                       ; $4317: $df
    inc d                                         ; $4318: $14
    ld a, [bc]                                    ; $4319: $0a
    ld a, l                                       ; $431a: $7d
    ldh [$e0], a                                  ; $431b: $e0 $e0
    ld a, h                                       ; $431d: $7c
    ldh [$e1], a                                  ; $431e: $e0 $e1
    ld hl, $ffe0                                  ; $4320: $21 $e0 $ff
    ld a, [hl+]                                   ; $4323: $2a
    ld h, [hl]                                    ; $4324: $66
    add $17                                       ; $4325: $c6 $17
    ld l, a                                       ; $4327: $6f
    xor a                                         ; $4328: $af
    ld [hl+], a                                   ; $4329: $22
    ld a, e                                       ; $432a: $7b
    ld [hl], a                                    ; $432b: $77
    inc hl                                        ; $432c: $23
    ld a, $00                                     ; $432d: $3e $00
    ld [hl], a                                    ; $432f: $77
    call Call_000_0a61                            ; $4330: $cd $61 $0a
    ld c, l                                       ; $4333: $4d
    ld hl, $ffe0                                  ; $4334: $21 $e0 $ff
    ld a, [hl+]                                   ; $4337: $2a
    ld h, [hl]                                    ; $4338: $66
    add $0e                                       ; $4339: $c6 $0e
    ld l, a                                       ; $433b: $6f
    ld a, c                                       ; $433c: $79
    and $07                                       ; $433d: $e6 $07
    add $08                                       ; $433f: $c6 $08
    ld [hl+], a                                   ; $4341: $22
    xor a                                         ; $4342: $af
    ld [hl], a                                    ; $4343: $77
    pop af                                        ; $4344: $f1
    ldh [$96], a                                  ; $4345: $e0 $96
    ldh [rSVBK], a                                ; $4347: $e0 $70
    pop hl                                        ; $4349: $e1
    pop de                                        ; $434a: $d1
    pop bc                                        ; $434b: $c1
    pop af                                        ; $434c: $f1
    ret                                           ; $434d: $c9


Call_032_434e:
    rst $18                                       ; $434e: $df
    inc d                                         ; $434f: $14
    ld a, [bc]                                    ; $4350: $0a
    ld a, l                                       ; $4351: $7d
    ldh [$e0], a                                  ; $4352: $e0 $e0
    ld a, h                                       ; $4354: $7c
    ldh [$e1], a                                  ; $4355: $e0 $e1
    ld a, $04                                     ; $4357: $3e $04
    ldh [$96], a                                  ; $4359: $e0 $96
    ldh [rSVBK], a                                ; $435b: $e0 $70
    ld hl, $ffe0                                  ; $435d: $21 $e0 $ff
    ld a, [hl+]                                   ; $4360: $2a
    ld h, [hl]                                    ; $4361: $66
    add $19                                       ; $4362: $c6 $19
    ld l, a                                       ; $4364: $6f
    ld b, [hl]                                    ; $4365: $46
    ld hl, $ffe0                                  ; $4366: $21 $e0 $ff
    ld a, [hl+]                                   ; $4369: $2a
    ld h, [hl]                                    ; $436a: $66
    add $06                                       ; $436b: $c6 $06
    ld l, a                                       ; $436d: $6f
    ld a, [hl+]                                   ; $436e: $2a
    ld h, [hl]                                    ; $436f: $66
    ld l, a                                       ; $4370: $6f
    sra h                                         ; $4371: $cb $2c
    rr l                                          ; $4373: $cb $1d
    sra h                                         ; $4375: $cb $2c
    rr l                                          ; $4377: $cb $1d
    sra h                                         ; $4379: $cb $2c
    rr l                                          ; $437b: $cb $1d
    ld a, l                                       ; $437d: $7d
    add b                                         ; $437e: $80
    ld hl, $0180                                  ; $437f: $21 $80 $01
    call Call_000_0af2                            ; $4382: $cd $f2 $0a
    push hl                                       ; $4385: $e5
    ld hl, $ffe0                                  ; $4386: $21 $e0 $ff
    ld a, [hl+]                                   ; $4389: $2a
    ld h, [hl]                                    ; $438a: $66
    add $18                                       ; $438b: $c6 $18
    ld l, a                                       ; $438d: $6f
    ld d, [hl]                                    ; $438e: $56
    ld e, $00                                     ; $438f: $1e $00
    pop hl                                        ; $4391: $e1
    add hl, de                                    ; $4392: $19
    ld b, h                                       ; $4393: $44
    ld c, l                                       ; $4394: $4d
    ld hl, $ffe0                                  ; $4395: $21 $e0 $ff
    ld a, [hl+]                                   ; $4398: $2a
    ld h, [hl]                                    ; $4399: $66
    add $04                                       ; $439a: $c6 $04
    ld l, a                                       ; $439c: $6f
    ld [hl], c                                    ; $439d: $71
    inc hl                                        ; $439e: $23
    ld [hl], b                                    ; $439f: $70
    ld hl, $ffe0                                  ; $43a0: $21 $e0 $ff
    ld a, [hl+]                                   ; $43a3: $2a
    ld h, [hl]                                    ; $43a4: $66
    add $06                                       ; $43a5: $c6 $06
    ld l, a                                       ; $43a7: $6f
    push hl                                       ; $43a8: $e5
    ld a, [hl+]                                   ; $43a9: $2a
    ld h, [hl]                                    ; $43aa: $66
    ld l, a                                       ; $43ab: $6f
    ld d, h                                       ; $43ac: $54
    ld e, l                                       ; $43ad: $5d
    ld hl, $ffe0                                  ; $43ae: $21 $e0 $ff
    ld a, [hl+]                                   ; $43b1: $2a
    ld h, [hl]                                    ; $43b2: $66
    add $0e                                       ; $43b3: $c6 $0e
    ld l, a                                       ; $43b5: $6f
    ld a, [hl+]                                   ; $43b6: $2a
    ld h, [hl]                                    ; $43b7: $66
    ld l, a                                       ; $43b8: $6f
    add hl, de                                    ; $43b9: $19
    ld d, h                                       ; $43ba: $54
    ld e, l                                       ; $43bb: $5d
    pop hl                                        ; $43bc: $e1
    ld [hl], e                                    ; $43bd: $73
    inc hl                                        ; $43be: $23
    ld [hl], d                                    ; $43bf: $72
    ld a, d                                       ; $43c0: $7a
    cp $11                                        ; $43c1: $fe $11
    jr c, jr_032_43f4                             ; $43c3: $38 $2f

    ld hl, $ffe0                                  ; $43c5: $21 $e0 $ff
    ld a, [hl+]                                   ; $43c8: $2a
    ld h, [hl]                                    ; $43c9: $66
    add $06                                       ; $43ca: $c6 $06
    ld l, a                                       ; $43cc: $6f
    ld a, [$c3f5]                                 ; $43cd: $fa $f5 $c3
    or a                                          ; $43d0: $b7
    jr nz, jr_032_43db                            ; $43d1: $20 $08

    ld a, $80                                     ; $43d3: $3e $80
    ld [hl+], a                                   ; $43d5: $22
    ld a, $07                                     ; $43d6: $3e $07
    ld [hl], a                                    ; $43d8: $77
    jr jr_032_43e0                                ; $43d9: $18 $05

jr_032_43db:
    xor a                                         ; $43db: $af
    ld [hl+], a                                   ; $43dc: $22
    ld a, $06                                     ; $43dd: $3e $06
    ld [hl], a                                    ; $43df: $77

jr_032_43e0:
    call Call_000_0a61                            ; $43e0: $cd $61 $0a
    ld c, l                                       ; $43e3: $4d
    ld hl, $ffe0                                  ; $43e4: $21 $e0 $ff
    ld a, [hl+]                                   ; $43e7: $2a
    ld h, [hl]                                    ; $43e8: $66
    add $0e                                       ; $43e9: $c6 $0e
    ld l, a                                       ; $43eb: $6f
    ld a, c                                       ; $43ec: $79
    and $07                                       ; $43ed: $e6 $07
    add $10                                       ; $43ef: $c6 $10
    ld [hl+], a                                   ; $43f1: $22
    xor a                                         ; $43f2: $af
    ld [hl], a                                    ; $43f3: $77

jr_032_43f4:
    ret                                           ; $43f4: $c9


    push af                                       ; $43f5: $f5
    push bc                                       ; $43f6: $c5
    push de                                       ; $43f7: $d5
    push hl                                       ; $43f8: $e5
    ldh a, [$96]                                  ; $43f9: $f0 $96
    push af                                       ; $43fb: $f5
    ld a, $02                                     ; $43fc: $3e $02
    call Call_032_434e                            ; $43fe: $cd $4e $43
    ld a, $03                                     ; $4401: $3e $03
    call Call_032_434e                            ; $4403: $cd $4e $43
    ld a, $04                                     ; $4406: $3e $04
    call Call_032_434e                            ; $4408: $cd $4e $43
    ld a, $05                                     ; $440b: $3e $05
    call Call_032_434e                            ; $440d: $cd $4e $43
    ld a, $06                                     ; $4410: $3e $06
    call Call_032_434e                            ; $4412: $cd $4e $43
    ld a, $07                                     ; $4415: $3e $07
    call Call_032_434e                            ; $4417: $cd $4e $43
    call Call_032_471b                            ; $441a: $cd $1b $47
    pop af                                        ; $441d: $f1
    ldh [$96], a                                  ; $441e: $e0 $96
    ldh [rSVBK], a                                ; $4420: $e0 $70
    pop hl                                        ; $4422: $e1
    pop de                                        ; $4423: $d1
    pop bc                                        ; $4424: $c1
    pop af                                        ; $4425: $f1
    ret                                           ; $4426: $c9


Call_032_4427:
    ldh a, [$96]                                  ; $4427: $f0 $96
    push af                                       ; $4429: $f5
    ld l, c                                       ; $442a: $69
    ld h, $00                                     ; $442b: $26 $00
    ld a, $10                                     ; $442d: $3e $10
    push bc                                       ; $442f: $c5
    call Call_000_08b9                            ; $4430: $cd $b9 $08
    pop bc                                        ; $4433: $c1
    ld c, b                                       ; $4434: $48
    ld b, $00                                     ; $4435: $06 $00
    add hl, bc                                    ; $4437: $09
    push hl                                       ; $4438: $e5
    ld l, e                                       ; $4439: $6b
    ld h, $00                                     ; $443a: $26 $00
    ld a, $40                                     ; $443c: $3e $40
    push de                                       ; $443e: $d5
    call Call_000_08b9                            ; $443f: $cd $b9 $08
    pop de                                        ; $4442: $d1
    ld e, d                                       ; $4443: $5a
    ld d, $00                                     ; $4444: $16 $00
    add hl, de                                    ; $4446: $19
    pop bc                                        ; $4447: $c1
    ld a, $03                                     ; $4448: $3e $03
    ldh [$96], a                                  ; $444a: $e0 $96
    ldh [rSVBK], a                                ; $444c: $e0 $70
    ld de, $d000                                  ; $444e: $11 $00 $d0
    add hl, de                                    ; $4451: $19
    ld a, c                                       ; $4452: $79
    ld de, $003c                                  ; $4453: $11 $3c $00
    ld c, $08                                     ; $4456: $0e $08

jr_032_4458:
    ld b, $04                                     ; $4458: $06 $04

jr_032_445a:
    ld [hl+], a                                   ; $445a: $22
    inc a                                         ; $445b: $3c
    dec b                                         ; $445c: $05
    jr nz, jr_032_445a                            ; $445d: $20 $fb

    add hl, de                                    ; $445f: $19
    dec c                                         ; $4460: $0d
    jr nz, jr_032_4458                            ; $4461: $20 $f5

    pop af                                        ; $4463: $f1
    ldh [$96], a                                  ; $4464: $e0 $96
    ldh [rSVBK], a                                ; $4466: $e0 $70
    ret                                           ; $4468: $c9


Call_032_4469:
    push af                                       ; $4469: $f5
    push bc                                       ; $446a: $c5
    push de                                       ; $446b: $d5
    push hl                                       ; $446c: $e5
    push de                                       ; $446d: $d5
    ld h, a                                       ; $446e: $67
    ld l, b                                       ; $446f: $68
    sla a                                         ; $4470: $cb $27
    add b                                         ; $4472: $80
    ld c, a                                       ; $4473: $4f
    ld d, $00                                     ; $4474: $16 $00
    ld a, $09                                     ; $4476: $3e $09
    add b                                         ; $4478: $80
    add b                                         ; $4479: $80
    ld e, a                                       ; $447a: $5f
    push hl                                       ; $447b: $e5
    rst $18                                       ; $447c: $df
    ld d, $11                                     ; $447d: $16 $11
    pop hl                                        ; $447f: $e1
    call Call_032_44a0                            ; $4480: $cd $a0 $44
    ld b, $00                                     ; $4483: $06 $00
    ld a, $09                                     ; $4485: $3e $09
    add l                                         ; $4487: $85
    add l                                         ; $4488: $85
    ld c, a                                       ; $4489: $4f
    push de                                       ; $448a: $d5
    call Call_032_4427                            ; $448b: $cd $27 $44
    pop de                                        ; $448e: $d1
    pop hl                                        ; $448f: $e1
    ld b, d                                       ; $4490: $42
    ld c, e                                       ; $4491: $4b
    ld d, h                                       ; $4492: $54
    ld e, l                                       ; $4493: $5d
    ld h, $04                                     ; $4494: $26 $04
    ld l, $08                                     ; $4496: $2e $08
    rst $18                                       ; $4498: $df
    ld a, [bc]                                    ; $4499: $0a
    dec bc                                        ; $449a: $0b
    pop hl                                        ; $449b: $e1
    pop de                                        ; $449c: $d1
    pop bc                                        ; $449d: $c1
    pop af                                        ; $449e: $f1
    ret                                           ; $449f: $c9


Call_032_44a0:
    ld e, $30                                     ; $44a0: $1e $30
    ld a, h                                       ; $44a2: $7c
    cp $06                                        ; $44a3: $fe $06
    jr c, jr_032_44ab                             ; $44a5: $38 $04

    sub $06                                       ; $44a7: $d6 $06
    ld e, $38                                     ; $44a9: $1e $38

jr_032_44ab:
    sla a                                         ; $44ab: $cb $27
    add l                                         ; $44ad: $85
    sla a                                         ; $44ae: $cb $27
    sla a                                         ; $44b0: $cb $27
    ld d, a                                       ; $44b2: $57
    ret                                           ; $44b3: $c9


Call_032_44b4:
    push af                                       ; $44b4: $f5
    push bc                                       ; $44b5: $c5
    push de                                       ; $44b6: $d5
    push hl                                       ; $44b7: $e5
    push bc                                       ; $44b8: $c5
    ld a, c                                       ; $44b9: $79
    or a                                          ; $44ba: $b7
    jr z, jr_032_4537                             ; $44bb: $28 $7a

    push af                                       ; $44bd: $f5
    push bc                                       ; $44be: $c5
    push de                                       ; $44bf: $d5
    push hl                                       ; $44c0: $e5
    ld b, $05                                     ; $44c1: $06 $05
    ld c, $24                                     ; $44c3: $0e $24
    ld d, $04                                     ; $44c5: $16 $04
    ld e, $04                                     ; $44c7: $1e $04
    ld h, $05                                     ; $44c9: $26 $05
    ld l, $02                                     ; $44cb: $2e $02
    rst $18                                       ; $44cd: $df
    ld a, [bc]                                    ; $44ce: $0a
    dec bc                                        ; $44cf: $0b
    ld b, $00                                     ; $44d0: $06 $00
    ld c, $24                                     ; $44d2: $0e $24
    ld d, $0c                                     ; $44d4: $16 $0c
    ld e, $04                                     ; $44d6: $1e $04
    ld h, $05                                     ; $44d8: $26 $05
    ld l, $02                                     ; $44da: $2e $02
    rst $18                                       ; $44dc: $df
    ld a, [bc]                                    ; $44dd: $0a
    dec bc                                        ; $44de: $0b
    ld a, $08                                     ; $44df: $3e $08
    ld bc, $0d00                                  ; $44e1: $01 $00 $0d
    ld de, $0480                                  ; $44e4: $11 $80 $04
    rst $18                                       ; $44e7: $df
    jr nz, @+$0c                                  ; $44e8: $20 $0a

    ld a, $09                                     ; $44ea: $3e $09
    ld bc, $0f00                                  ; $44ec: $01 $00 $0f
    ld de, $0480                                  ; $44ef: $11 $80 $04
    rst $18                                       ; $44f2: $df
    jr nz, @+$0c                                  ; $44f3: $20 $0a

    ld a, $0a                                     ; $44f5: $3e $0a
    ld bc, $1100                                  ; $44f7: $01 $00 $11
    ld de, $0480                                  ; $44fa: $11 $80 $04
    rst $18                                       ; $44fd: $df
    jr nz, @+$0c                                  ; $44fe: $20 $0a

    ld a, $0b                                     ; $4500: $3e $0b
    ld bc, $0d00                                  ; $4502: $01 $00 $0d
    ld de, $0680                                  ; $4505: $11 $80 $06
    rst $18                                       ; $4508: $df
    jr nz, @+$0c                                  ; $4509: $20 $0a

    ld a, $0c                                     ; $450b: $3e $0c
    ld bc, $0f00                                  ; $450d: $01 $00 $0f
    ld de, $0680                                  ; $4510: $11 $80 $06
    rst $18                                       ; $4513: $df
    jr nz, @+$0c                                  ; $4514: $20 $0a

    ld a, $0d                                     ; $4516: $3e $0d
    ld bc, $1100                                  ; $4518: $01 $00 $11
    ld de, $0680                                  ; $451b: $11 $80 $06
    rst $18                                       ; $451e: $df
    jr nz, @+$0c                                  ; $451f: $20 $0a

    ld a, $0e                                     ; $4521: $3e $0e
    ld bc, $0800                                  ; $4523: $01 $00 $08
    ld de, $0980                                  ; $4526: $11 $80 $09
    rst $18                                       ; $4529: $df
    jr nz, jr_032_4536                            ; $452a: $20 $0a

    ld a, $0e                                     ; $452c: $3e $0e
    ld b, $00                                     ; $452e: $06 $00
    rst $18                                       ; $4530: $df
    inc l                                         ; $4531: $2c
    ld a, [bc]                                    ; $4532: $0a
    pop hl                                        ; $4533: $e1
    pop de                                        ; $4534: $d1
    pop bc                                        ; $4535: $c1

jr_032_4536:
    pop af                                        ; $4536: $f1

jr_032_4537:
    push de                                       ; $4537: $d5
    ld a, b                                       ; $4538: $78
    ld b, c                                       ; $4539: $41
    ld d, $04                                     ; $453a: $16 $04
    ld e, $07                                     ; $453c: $1e $07
    call Call_032_4469                            ; $453e: $cd $69 $44
    pop de                                        ; $4541: $d1
    ld a, d                                       ; $4542: $7a
    ld b, e                                       ; $4543: $43
    ld d, $0c                                     ; $4544: $16 $0c
    ld e, $07                                     ; $4546: $1e $07
    call Call_032_4469                            ; $4548: $cd $69 $44
    pop bc                                        ; $454b: $c1
    ld a, c                                       ; $454c: $79
    or a                                          ; $454d: $b7
    jr nz, jr_032_4554                            ; $454e: $20 $04

    ld a, $07                                     ; $4550: $3e $07
    jr jr_032_4556                                ; $4552: $18 $02

jr_032_4554:
    ld a, $0e                                     ; $4554: $3e $0e

jr_032_4556:
    call Call_032_4219                            ; $4556: $cd $19 $42
    ld a, $01                                     ; $4559: $3e $01
    ld hl, $43f5                                  ; $455b: $21 $f5 $43
    call Call_000_23e8                            ; $455e: $cd $e8 $23
    xor a                                         ; $4561: $af
    ld [$c3f5], a                                 ; $4562: $ea $f5 $c3
    pop hl                                        ; $4565: $e1
    pop de                                        ; $4566: $d1
    pop bc                                        ; $4567: $c1
    pop af                                        ; $4568: $f1
    ret                                           ; $4569: $c9


Call_032_456a:
    push af                                       ; $456a: $f5
    push bc                                       ; $456b: $c5
    push de                                       ; $456c: $d5
    push hl                                       ; $456d: $e5
    push bc                                       ; $456e: $c5
    ld a, c                                       ; $456f: $79
    cp $01                                        ; $4570: $fe $01
    jr z, jr_032_4589                             ; $4572: $28 $15

    sub $02                                       ; $4574: $d6 $02
    ld c, a                                       ; $4576: $4f
    sla c                                         ; $4577: $cb $21
    sla c                                         ; $4579: $cb $21
    ld b, c                                       ; $457b: $41
    ld c, $26                                     ; $457c: $0e $26
    ld d, $1f                                     ; $457e: $16 $1f
    ld e, $05                                     ; $4580: $1e $05
    ld h, $04                                     ; $4582: $26 $04
    ld l, $03                                     ; $4584: $2e $03
    rst $18                                       ; $4586: $df
    ld a, [bc]                                    ; $4587: $0a
    dec bc                                        ; $4588: $0b

jr_032_4589:
    pop bc                                        ; $4589: $c1
    push bc                                       ; $458a: $c5
    ld a, c                                       ; $458b: $79
    cp $01                                        ; $458c: $fe $01
    jr z, jr_032_45a7                             ; $458e: $28 $17

    sub $02                                       ; $4590: $d6 $02
    ld c, a                                       ; $4592: $4f
    sla c                                         ; $4593: $cb $21
    ld a, $0a                                     ; $4595: $3e $0a
    add c                                         ; $4597: $81
    ld c, a                                       ; $4598: $4f
    ld b, c                                       ; $4599: $41
    ld c, $24                                     ; $459a: $0e $24
    ld d, $17                                     ; $459c: $16 $17
    ld e, $0e                                     ; $459e: $1e $0e
    ld h, $02                                     ; $45a0: $26 $02
    ld l, $02                                     ; $45a2: $2e $02
    rst $18                                       ; $45a4: $df
    ld a, [bc]                                    ; $45a5: $0a
    dec bc                                        ; $45a6: $0b

jr_032_45a7:
    pop bc                                        ; $45a7: $c1
    push bc                                       ; $45a8: $c5
    ld a, c                                       ; $45a9: $79
    cp $01                                        ; $45aa: $fe $01
    jr z, jr_032_45cc                             ; $45ac: $28 $1e

    ld b, $22                                     ; $45ae: $06 $22
    ld c, $0d                                     ; $45b0: $0e $0d
    ld d, $1f                                     ; $45b2: $16 $1f
    ld e, $0d                                     ; $45b4: $1e $0d
    ld h, $03                                     ; $45b6: $26 $03
    ld l, $04                                     ; $45b8: $2e $04
    rst $18                                       ; $45ba: $df
    ld a, [bc]                                    ; $45bb: $0a
    dec bc                                        ; $45bc: $0b
    ld b, $0e                                     ; $45bd: $06 $0e
    ld c, $24                                     ; $45bf: $0e $24
    ld d, $1b                                     ; $45c1: $16 $1b
    ld e, $0b                                     ; $45c3: $1e $0b
    ld h, $0d                                     ; $45c5: $26 $0d
    ld l, $03                                     ; $45c7: $2e $03
    rst $18                                       ; $45c9: $df
    ld a, [bc]                                    ; $45ca: $0a
    dec bc                                        ; $45cb: $0b

jr_032_45cc:
    pop bc                                        ; $45cc: $c1
    ld a, b                                       ; $45cd: $78
    ld b, $00                                     ; $45ce: $06 $00
    ld d, $16                                     ; $45d0: $16 $16
    ld e, $06                                     ; $45d2: $1e $06
    call Call_032_4469                            ; $45d4: $cd $69 $44
    ld a, $01                                     ; $45d7: $3e $01
    ld [$c3f5], a                                 ; $45d9: $ea $f5 $c3
    ld a, $18                                     ; $45dc: $3e $18
    call Call_032_4219                            ; $45de: $cd $19 $42
    ld a, $01                                     ; $45e1: $3e $01
    ld hl, $43f5                                  ; $45e3: $21 $f5 $43
    call Call_000_23e8                            ; $45e6: $cd $e8 $23
    pop hl                                        ; $45e9: $e1
    pop de                                        ; $45ea: $d1
    pop bc                                        ; $45eb: $c1
    pop af                                        ; $45ec: $f1
    ret                                           ; $45ed: $c9


Call_032_45ee:
    push af                                       ; $45ee: $f5
    push bc                                       ; $45ef: $c5
    push de                                       ; $45f0: $d5
    push hl                                       ; $45f1: $e5
    ld a, $04                                     ; $45f2: $3e $04
    ldh [$96], a                                  ; $45f4: $e0 $96
    ldh [rSVBK], a                                ; $45f6: $e0 $70
    ld a, $08                                     ; $45f8: $3e $08
    rst $18                                       ; $45fa: $df
    inc d                                         ; $45fb: $14
    ld a, [bc]                                    ; $45fc: $0a
    ld a, l                                       ; $45fd: $7d
    ldh [$e0], a                                  ; $45fe: $e0 $e0
    ld a, h                                       ; $4600: $7c
    ldh [$e1], a                                  ; $4601: $e0 $e1
    ld hl, $ffe0                                  ; $4603: $21 $e0 $ff
    ld a, [hl+]                                   ; $4606: $2a
    ld h, [hl]                                    ; $4607: $66
    add $17                                       ; $4608: $c6 $17
    ld l, a                                       ; $460a: $6f
    xor a                                         ; $460b: $af
    ld [hl], a                                    ; $460c: $77
    ld a, $09                                     ; $460d: $3e $09
    rst $18                                       ; $460f: $df
    inc d                                         ; $4610: $14
    ld a, [bc]                                    ; $4611: $0a
    ld a, l                                       ; $4612: $7d
    ldh [$e0], a                                  ; $4613: $e0 $e0
    ld a, h                                       ; $4615: $7c
    ldh [$e1], a                                  ; $4616: $e0 $e1
    ld hl, $ffe0                                  ; $4618: $21 $e0 $ff
    ld a, [hl+]                                   ; $461b: $2a
    ld h, [hl]                                    ; $461c: $66
    add $17                                       ; $461d: $c6 $17
    ld l, a                                       ; $461f: $6f
    xor a                                         ; $4620: $af
    ld [hl], a                                    ; $4621: $77
    ld a, $0a                                     ; $4622: $3e $0a
    rst $18                                       ; $4624: $df
    inc d                                         ; $4625: $14
    ld a, [bc]                                    ; $4626: $0a
    ld a, l                                       ; $4627: $7d
    ldh [$e0], a                                  ; $4628: $e0 $e0
    ld a, h                                       ; $462a: $7c
    ldh [$e1], a                                  ; $462b: $e0 $e1
    ld hl, $ffe0                                  ; $462d: $21 $e0 $ff
    ld a, [hl+]                                   ; $4630: $2a
    ld h, [hl]                                    ; $4631: $66
    add $17                                       ; $4632: $c6 $17
    ld l, a                                       ; $4634: $6f
    xor a                                         ; $4635: $af
    ld [hl], a                                    ; $4636: $77
    ld a, $0b                                     ; $4637: $3e $0b
    rst $18                                       ; $4639: $df
    inc d                                         ; $463a: $14
    ld a, [bc]                                    ; $463b: $0a
    ld a, l                                       ; $463c: $7d
    ldh [$e0], a                                  ; $463d: $e0 $e0
    ld a, h                                       ; $463f: $7c
    ldh [$e1], a                                  ; $4640: $e0 $e1
    ld hl, $ffe0                                  ; $4642: $21 $e0 $ff
    ld a, [hl+]                                   ; $4645: $2a
    ld h, [hl]                                    ; $4646: $66
    add $17                                       ; $4647: $c6 $17
    ld l, a                                       ; $4649: $6f
    xor a                                         ; $464a: $af
    ld [hl], a                                    ; $464b: $77
    ld a, $0c                                     ; $464c: $3e $0c
    rst $18                                       ; $464e: $df
    inc d                                         ; $464f: $14
    ld a, [bc]                                    ; $4650: $0a
    ld a, l                                       ; $4651: $7d
    ldh [$e0], a                                  ; $4652: $e0 $e0
    ld a, h                                       ; $4654: $7c
    ldh [$e1], a                                  ; $4655: $e0 $e1
    ld hl, $ffe0                                  ; $4657: $21 $e0 $ff
    ld a, [hl+]                                   ; $465a: $2a
    ld h, [hl]                                    ; $465b: $66
    add $17                                       ; $465c: $c6 $17
    ld l, a                                       ; $465e: $6f
    xor a                                         ; $465f: $af
    ld [hl], a                                    ; $4660: $77
    ld a, $0d                                     ; $4661: $3e $0d
    rst $18                                       ; $4663: $df
    inc d                                         ; $4664: $14
    ld a, [bc]                                    ; $4665: $0a
    ld a, l                                       ; $4666: $7d
    ldh [$e0], a                                  ; $4667: $e0 $e0
    ld a, h                                       ; $4669: $7c
    ldh [$e1], a                                  ; $466a: $e0 $e1
    ld hl, $ffe0                                  ; $466c: $21 $e0 $ff
    ld a, [hl+]                                   ; $466f: $2a
    ld h, [hl]                                    ; $4670: $66
    add $17                                       ; $4671: $c6 $17
    ld l, a                                       ; $4673: $6f
    xor a                                         ; $4674: $af
    ld [hl], a                                    ; $4675: $77
    pop hl                                        ; $4676: $e1
    pop de                                        ; $4677: $d1
    pop bc                                        ; $4678: $c1
    pop af                                        ; $4679: $f1
    ret                                           ; $467a: $c9


    push af                                       ; $467b: $f5
    push bc                                       ; $467c: $c5
    push de                                       ; $467d: $d5
    push hl                                       ; $467e: $e5
    ld a, [$c3f4]                                 ; $467f: $fa $f4 $c3
    cp $27                                        ; $4682: $fe $27
    jr c, jr_032_468a                             ; $4684: $38 $04

    xor a                                         ; $4686: $af
    ld [$c3f4], a                                 ; $4687: $ea $f4 $c3

jr_032_468a:
    sla a                                         ; $468a: $cb $27
    ld hl, $46b5                                  ; $468c: $21 $b5 $46
    ld e, a                                       ; $468f: $5f
    ld d, $00                                     ; $4690: $16 $00
    add hl, de                                    ; $4692: $19
    push hl                                       ; $4693: $e5
    ld d, $0a                                     ; $4694: $16 $0a
    ld e, $01                                     ; $4696: $1e $01
    call Call_000_056c                            ; $4698: $cd $6c $05
    pop hl                                        ; $469b: $e1
    inc hl                                        ; $469c: $23
    inc hl                                        ; $469d: $23
    inc hl                                        ; $469e: $23
    inc hl                                        ; $469f: $23
    inc hl                                        ; $46a0: $23
    inc hl                                        ; $46a1: $23
    ld d, $0c                                     ; $46a2: $16 $0c
    ld e, $01                                     ; $46a4: $1e $01
    call Call_000_056c                            ; $46a6: $cd $6c $05
    ld a, [$c3f4]                                 ; $46a9: $fa $f4 $c3
    inc a                                         ; $46ac: $3c
    ld [$c3f4], a                                 ; $46ad: $ea $f4 $c3
    pop hl                                        ; $46b0: $e1
    pop de                                        ; $46b1: $d1
    pop bc                                        ; $46b2: $c1
    pop af                                        ; $46b3: $f1
    ret                                           ; $46b4: $c9


    jr nz, jr_032_4735                            ; $46b5: $20 $7e

    ld b, b                                       ; $46b7: $40
    ld [hl], d                                    ; $46b8: $72
    ld h, b                                       ; $46b9: $60
    ld h, [hl]                                    ; $46ba: $66
    add c                                         ; $46bb: $81
    ld e, d                                       ; $46bc: $5a
    and h                                         ; $46bd: $a4
    ld c, [hl]                                    ; $46be: $4e
    rst $00                                       ; $46bf: $c7
    ld b, d                                       ; $46c0: $42
    ld [$0d36], a                                 ; $46c1: $ea $36 $0d
    dec hl                                        ; $46c4: $2b
    jr nc, jr_032_46e6                            ; $46c5: $30 $1f

    ld d, e                                       ; $46c7: $53
    inc de                                        ; $46c8: $13
    halt                                          ; $46c9: $76
    rlca                                          ; $46ca: $07
    cp c                                          ; $46cb: $b9
    inc bc                                        ; $46cc: $03
    call c, $ff03                                 ; $46cd: $dc $03 $ff
    inc bc                                        ; $46d0: $03
    cp a                                          ; $46d1: $bf
    inc bc                                        ; $46d2: $03
    ld a, a                                       ; $46d3: $7f
    inc bc                                        ; $46d4: $03
    ccf                                           ; $46d5: $3f
    dec bc                                        ; $46d6: $0b
    rst $18                                       ; $46d7: $df
    ld [de], a                                    ; $46d8: $12
    cp a                                          ; $46d9: $bf
    ld a, [de]                                    ; $46da: $1a
    ld a, a                                       ; $46db: $7f
    ld [hl+], a                                   ; $46dc: $22
    ccf                                           ; $46dd: $3f
    ld a, [hl+]                                   ; $46de: $2a
    rst $38                                       ; $46df: $ff
    ld sp, $39bf                                  ; $46e0: $31 $bf $39
    ld a, a                                       ; $46e3: $7f
    ld b, c                                       ; $46e4: $41
    ccf                                           ; $46e5: $3f

jr_032_46e6:
    ld c, c                                       ; $46e6: $49
    rst $38                                       ; $46e7: $ff
    ld d, b                                       ; $46e8: $50
    cp a                                          ; $46e9: $bf
    ld e, b                                       ; $46ea: $58
    cp h                                          ; $46eb: $bc
    ld e, h                                       ; $46ec: $5c
    reti                                          ; $46ed: $d9


    ld h, b                                       ; $46ee: $60
    or $64                                        ; $46ef: $f6 $64
    inc de                                        ; $46f1: $13
    ld l, c                                       ; $46f2: $69
    jr nc, @+$6f                                  ; $46f3: $30 $6d

    ld c, l                                       ; $46f5: $4d
    ld [hl], c                                    ; $46f6: $71
    ld l, d                                       ; $46f7: $6a
    ld [hl], l                                    ; $46f8: $75
    add a                                         ; $46f9: $87
    ld a, c                                       ; $46fa: $79
    and h                                         ; $46fb: $a4
    ld a, l                                       ; $46fc: $7d
    pop bc                                        ; $46fd: $c1
    ld a, l                                       ; $46fe: $7d
    ldh [$7d], a                                  ; $46ff: $e0 $7d
    nop                                           ; $4701: $00
    ld a, [hl]                                    ; $4702: $7e
    jr nz, jr_032_4783                            ; $4703: $20 $7e

    ld b, b                                       ; $4705: $40
    ld [hl], d                                    ; $4706: $72
    ld h, b                                       ; $4707: $60
    ld h, [hl]                                    ; $4708: $66
    add c                                         ; $4709: $81
    ld e, d                                       ; $470a: $5a
    and h                                         ; $470b: $a4
    ld c, [hl]                                    ; $470c: $4e
    rst $00                                       ; $470d: $c7
    ld b, d                                       ; $470e: $42
    ld [$0d36], a                                 ; $470f: $ea $36 $0d
    dec hl                                        ; $4712: $2b
    ld d, h                                       ; $4713: $54
    ld h, d                                       ; $4714: $62
    rst $38                                       ; $4715: $ff
    ld l, e                                       ; $4716: $6b
    add b                                         ; $4717: $80
    ld [de], a                                    ; $4718: $12
    nop                                           ; $4719: $00
    nop                                           ; $471a: $00

Call_032_471b:
    ld a, $0e                                     ; $471b: $3e $0e
    rst $18                                       ; $471d: $df
    inc d                                         ; $471e: $14
    ld a, [bc]                                    ; $471f: $0a
    ld a, l                                       ; $4720: $7d
    ldh [$e0], a                                  ; $4721: $e0 $e0
    ld a, h                                       ; $4723: $7c
    ldh [$e1], a                                  ; $4724: $e0 $e1
    ld a, $04                                     ; $4726: $3e $04
    ldh [$96], a                                  ; $4728: $e0 $96
    ldh [rSVBK], a                                ; $472a: $e0 $70
    ld hl, $ffe0                                  ; $472c: $21 $e0 $ff
    ld a, [hl+]                                   ; $472f: $2a
    ld h, [hl]                                    ; $4730: $66
    add $18                                       ; $4731: $c6 $18
    ld l, a                                       ; $4733: $6f
    ld a, [hl]                                    ; $4734: $7e

jr_032_4735:
    ld b, a                                       ; $4735: $47
    bit 7, a                                      ; $4736: $cb $7f
    jr nz, jr_032_473e                            ; $4738: $20 $04

    ld c, $02                                     ; $473a: $0e $02
    jr jr_032_4740                                ; $473c: $18 $02

jr_032_473e:
    ld c, $04                                     ; $473e: $0e $04

jr_032_4740:
    add c                                         ; $4740: $81
    ld [hl], a                                    ; $4741: $77
    ld a, b                                       ; $4742: $78
    ld hl, $0040                                  ; $4743: $21 $40 $00
    call Call_000_0af2                            ; $4746: $cd $f2 $0a
    ld hl, $0900                                  ; $4749: $21 $00 $09
    add hl, de                                    ; $474c: $19
    ld d, h                                       ; $474d: $54
    ld e, l                                       ; $474e: $5d
    ld hl, $ffe0                                  ; $474f: $21 $e0 $ff
    ld a, [hl+]                                   ; $4752: $2a
    ld h, [hl]                                    ; $4753: $66
    add $06                                       ; $4754: $c6 $06
    ld l, a                                       ; $4756: $6f
    ld [hl], e                                    ; $4757: $73
    inc hl                                        ; $4758: $23
    ld [hl], d                                    ; $4759: $72
    ret                                           ; $475a: $c9


Call_032_475b:
    push bc                                       ; $475b: $c5
    push hl                                       ; $475c: $e5
    or a                                          ; $475d: $b7
    jr nz, jr_032_4765                            ; $475e: $20 $05

    ld hl, $c8ac                                  ; $4760: $21 $ac $c8
    jr jr_032_4768                                ; $4763: $18 $03

jr_032_4765:
    ld hl, $c8ec                                  ; $4765: $21 $ec $c8

jr_032_4768:
    ld b, $00                                     ; $4768: $06 $00
    ld c, $12                                     ; $476a: $0e $12

jr_032_476c:
    ld a, [hl+]                                   ; $476c: $2a
    and $0f                                       ; $476d: $e6 $0f
    add b                                         ; $476f: $80
    ld b, a                                       ; $4770: $47
    dec c                                         ; $4771: $0d
    jr nz, jr_032_476c                            ; $4772: $20 $f8

    ld a, b                                       ; $4774: $78
    pop hl                                        ; $4775: $e1
    pop bc                                        ; $4776: $c1
    ret                                           ; $4777: $c9


    adc a                                         ; $4778: $8f
    ld b, a                                       ; $4779: $47
    xor b                                         ; $477a: $a8
    ld b, a                                       ; $477b: $47
    add [hl]                                      ; $477c: $86
    ld b, a                                       ; $477d: $47
    cp h                                          ; $477e: $bc
    ld b, a                                       ; $477f: $47
    dec sp                                        ; $4780: $3b
    ld c, b                                       ; $4781: $48
    ld d, [hl]                                    ; $4782: $56

jr_032_4783:
    ld c, b                                       ; $4783: $48
    xor [hl]                                      ; $4784: $ae
    ld c, b                                       ; $4785: $48
    nop                                           ; $4786: $00
    nop                                           ; $4787: $00
    nop                                           ; $4788: $00
    nop                                           ; $4789: $00
    nop                                           ; $478a: $00
    nop                                           ; $478b: $00
    nop                                           ; $478c: $00
    nop                                           ; $478d: $00
    rst $38                                       ; $478e: $ff
    nop                                           ; $478f: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    add hl, bc                                    ; $4792: $09
    nop                                           ; $4793: $00
    add hl, bc                                    ; $4794: $09
    ld bc, $0080                                  ; $4795: $01 $80 $00
    ld bc, $0100                                  ; $4798: $01 $00 $01
    ld [bc], a                                    ; $479b: $02
    ret nz                                        ; $479c: $c0

    nop                                           ; $479d: $00
    ld e, $00                                     ; $479e: $1e $00
    ld bc, $c003                                  ; $47a0: $01 $03 $c0
    nop                                           ; $47a3: $00
    ld e, $00                                     ; $47a4: $1e $00
    ld sp, $01ff                                  ; $47a6: $31 $ff $01
    rst $38                                       ; $47a9: $ff
    nop                                           ; $47aa: $00
    nop                                           ; $47ab: $00
    nop                                           ; $47ac: $00
    nop                                           ; $47ad: $00
    inc bc                                        ; $47ae: $03
    ld bc, $dfff                                  ; $47af: $01 $ff $df
    ld [bc], a                                    ; $47b2: $02
    ld b, h                                       ; $47b3: $44
    ret                                           ; $47b4: $c9


    ld hl, $0172                                  ; $47b5: $21 $72 $01
    rst $18                                       ; $47b8: $df
    ld b, [hl]                                    ; $47b9: $46
    dec b                                         ; $47ba: $05
    ret                                           ; $47bb: $c9


    ld [bc], a                                    ; $47bc: $02
    rst $38                                       ; $47bd: $ff
    nop                                           ; $47be: $00
    nop                                           ; $47bf: $00
    ld l, e                                       ; $47c0: $6b
    ld bc, $0003                                  ; $47c1: $01 $03 $00
    inc bc                                        ; $47c4: $03
    rst $38                                       ; $47c5: $ff
    nop                                           ; $47c6: $00
    nop                                           ; $47c7: $00
    ld l, h                                       ; $47c8: $6c
    ld bc, $0003                                  ; $47c9: $01 $03 $00
    inc b                                         ; $47cc: $04
    rst $38                                       ; $47cd: $ff
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    ld l, l                                       ; $47d0: $6d
    ld bc, $0003                                  ; $47d1: $01 $03 $00
    dec b                                         ; $47d4: $05
    rst $38                                       ; $47d5: $ff
    nop                                           ; $47d6: $00
    nop                                           ; $47d7: $00
    ld l, [hl]                                    ; $47d8: $6e
    ld bc, $0003                                  ; $47d9: $01 $03 $00
    ld b, $ff                                     ; $47dc: $06 $ff
    nop                                           ; $47de: $00
    nop                                           ; $47df: $00
    ld l, a                                       ; $47e0: $6f
    ld bc, $0003                                  ; $47e1: $01 $03 $00
    rlca                                          ; $47e4: $07
    rst $38                                       ; $47e5: $ff
    nop                                           ; $47e6: $00
    nop                                           ; $47e7: $00
    ld [hl], b                                    ; $47e8: $70
    ld bc, $0000                                  ; $47e9: $01 $00 $00
    ld [$00ff], sp                                ; $47ec: $08 $ff $00
    nop                                           ; $47ef: $00
    or c                                          ; $47f0: $b1
    ld b, a                                       ; $47f1: $47
    ld bc, $ff00                                  ; $47f2: $01 $00 $ff
    ld [bc], a                                    ; $47f5: $02
    stop                                          ; $47f6: $10 $00
    nop                                           ; $47f8: $00
    ld l, e                                       ; $47f9: $6b
    ld bc, $0001                                  ; $47fa: $01 $01 $00
    inc bc                                        ; $47fd: $03
    add b                                         ; $47fe: $80
    nop                                           ; $47ff: $00
    nop                                           ; $4800: $00
    ld l, h                                       ; $4801: $6c
    ld bc, $0001                                  ; $4802: $01 $01 $00
    inc b                                         ; $4805: $04
    jr nz, jr_032_4808                            ; $4806: $20 $00

jr_032_4808:
    nop                                           ; $4808: $00
    ld l, l                                       ; $4809: $6d
    ld bc, $0001                                  ; $480a: $01 $01 $00
    dec b                                         ; $480d: $05
    ld b, b                                       ; $480e: $40
    nop                                           ; $480f: $00
    nop                                           ; $4810: $00
    ld l, [hl]                                    ; $4811: $6e
    ld bc, $0001                                  ; $4812: $01 $01 $00
    ld b, $ff                                     ; $4815: $06 $ff
    ld h, l                                       ; $4817: $65
    add b                                         ; $4818: $80
    ld l, a                                       ; $4819: $6f
    ld bc, $0001                                  ; $481a: $01 $01 $00
    rlca                                          ; $481d: $07
    jr nc, jr_032_4885                            ; $481e: $30 $65

    nop                                           ; $4820: $00
    ld [hl], b                                    ; $4821: $70
    ld bc, $0001                                  ; $4822: $01 $01 $00
    rst $38                                       ; $4825: $ff
    rst $18                                       ; $4826: $df
    nop                                           ; $4827: $00
    ld a, [bc]                                    ; $4828: $0a
    ld hl, $0172                                  ; $4829: $21 $72 $01
    rst $18                                       ; $482c: $df
    ld c, $0a                                     ; $482d: $0e $0a
    ld a, $00                                     ; $482f: $3e $00
    rst $18                                       ; $4831: $df
    ld [$df0a], sp                                ; $4832: $08 $0a $df
    ld [bc], a                                    ; $4835: $02
    ld a, [bc]                                    ; $4836: $0a
    rst $28                                       ; $4837: $ef
    ld b, b                                       ; $4838: $40
    ld [bc], a                                    ; $4839: $02
    ret                                           ; $483a: $c9


    ld bc, $00ff                                  ; $483b: $01 $ff $00
    nop                                           ; $483e: $00
    ld h, a                                       ; $483f: $67
    ld a, [hl]                                    ; $4840: $7e
    ld b, $00                                     ; $4841: $06 $00
    rst $38                                       ; $4843: $ff
    rst $18                                       ; $4844: $df
    nop                                           ; $4845: $00
    ld a, [bc]                                    ; $4846: $0a
    ld hl, $0172                                  ; $4847: $21 $72 $01
    rst $18                                       ; $484a: $df
    ld c, $0a                                     ; $484b: $0e $0a
    ld a, $00                                     ; $484d: $3e $00
    rst $18                                       ; $484f: $df
    ld [$df0a], sp                                ; $4850: $08 $0a $df
    ld [bc], a                                    ; $4853: $02
    ld a, [bc]                                    ; $4854: $0a
    ret                                           ; $4855: $c9


    ld bc, $00ff                                  ; $4856: $01 $ff $00
    nop                                           ; $4859: $00
    ld b, h                                       ; $485a: $44
    ld c, b                                       ; $485b: $48
    nop                                           ; $485c: $00
    nop                                           ; $485d: $00
    rst $38                                       ; $485e: $ff
    ld d, h                                       ; $485f: $54
    ld l, b                                       ; $4860: $68
    ld l, c                                       ; $4861: $69
    ld [hl], e                                    ; $4862: $73
    jr nz, jr_032_48c7                            ; $4863: $20 $62

    ld [hl], l                                    ; $4865: $75
    ld h, [hl]                                    ; $4866: $66
    ld h, [hl]                                    ; $4867: $66
    ld h, l                                       ; $4868: $65
    ld [hl], d                                    ; $4869: $72
    jr nz, @+$6b                                  ; $486a: $20 $69

    ld [hl], e                                    ; $486c: $73
    jr nz, @+$68                                  ; $486d: $20 $66

    ld l, a                                       ; $486f: $6f
    ld [hl], d                                    ; $4870: $72
    jr nz, @+$70                                  ; $4871: $20 $6e

    ld l, a                                       ; $4873: $6f
    ld [hl], h                                    ; $4874: $74
    ld h, l                                       ; $4875: $65
    ld [hl], e                                    ; $4876: $73
    ld a, c                                       ; $4877: $79
    ld l, a                                       ; $4878: $6f
    ld [hl], l                                    ; $4879: $75
    jr nz, jr_032_48e0                            ; $487a: $20 $64

    ld l, a                                       ; $487c: $6f
    ld l, [hl]                                    ; $487d: $6e
    daa                                           ; $487e: $27
    ld [hl], h                                    ; $487f: $74
    jr nz, jr_032_48f9                            ; $4880: $20 $77

    ld h, c                                       ; $4882: $61
    ld l, [hl]                                    ; $4883: $6e
    ld [hl], h                                    ; $4884: $74

jr_032_4885:
    jr nz, @+$76                                  ; $4885: $20 $74

    ld l, a                                       ; $4887: $6f
    jr nz, @+$75                                  ; $4888: $20 $73

    ld h, c                                       ; $488a: $61
    halt                                          ; $488b: $76
    ld h, l                                       ; $488c: $65
    inc l                                         ; $488d: $2c
    ld h, c                                       ; $488e: $61
    ld l, [hl]                                    ; $488f: $6e
    ld h, h                                       ; $4890: $64
    jr nz, jr_032_48f9                            ; $4891: $20 $66

    ld l, a                                       ; $4893: $6f
    ld [hl], d                                    ; $4894: $72
    jr nz, jr_032_48e3                            ; $4895: $20 $4c

    ld l, c                                       ; $4897: $69
    ld [hl], e                                    ; $4898: $73
    ld [hl], b                                    ; $4899: $70
    jr nz, jr_032_4901                            ; $489a: $20 $65

    halt                                          ; $489c: $76
    ld h, c                                       ; $489d: $61
    ld l, h                                       ; $489e: $6c
    ld [hl], l                                    ; $489f: $75
    ld h, c                                       ; $48a0: $61
    ld [hl], h                                    ; $48a1: $74
    ld l, c                                       ; $48a2: $69
    ld l, a                                       ; $48a3: $6f
    ld l, [hl]                                    ; $48a4: $6e
    ld l, $41                                     ; $48a5: $2e $41
    ld b, d                                       ; $48a7: $42
    ld b, e                                       ; $48a8: $43
    ld b, h                                       ; $48a9: $44
    ld b, l                                       ; $48aa: $45
    ld b, [hl]                                    ; $48ab: $46
    ld b, a                                       ; $48ac: $47
    nop                                           ; $48ad: $00
    ld a, [$c46a]                                 ; $48ae: $fa $6a $c4
    cp $04                                        ; $48b1: $fe $04
    jr nz, jr_032_48e9                            ; $48b3: $20 $34

jr_032_48b5:
    ld c, $04                                     ; $48b5: $0e $04
    call Call_000_25af                            ; $48b7: $cd $af $25
    call Call_000_2625                            ; $48ba: $cd $25 $26
    ld hl, $011c                                  ; $48bd: $21 $1c $01
    ld a, $03                                     ; $48c0: $3e $03
    rst $18                                       ; $48c2: $df
    ld d, b                                       ; $48c3: $50
    dec b                                         ; $48c4: $05
    cp $ff                                        ; $48c5: $fe $ff

jr_032_48c7:
    jr z, jr_032_48b5                             ; $48c7: $28 $ec

    ld [$c890], a                                 ; $48c9: $ea $90 $c8
    or $10                                        ; $48cc: $f6 $10
    ld [$c8d0], a                                 ; $48ce: $ea $d0 $c8
    ld a, $01                                     ; $48d1: $3e $01
    ld [$c96c], a                                 ; $48d3: $ea $6c $c9
    ld a, $00                                     ; $48d6: $3e $00
    rst $18                                       ; $48d8: $df
    jr jr_032_48e6                                ; $48d9: $18 $0b

    ld a, $00                                     ; $48db: $3e $00
    ld bc, $0100                                  ; $48dd: $01 $00 $01

jr_032_48e0:
    ld de, $0100                                  ; $48e0: $11 $00 $01

jr_032_48e3:
    rst $18                                       ; $48e3: $df
    jr nz, @+$0c                                  ; $48e4: $20 $0a

jr_032_48e6:
    jr jr_032_48b5                                ; $48e6: $18 $cd

    ret                                           ; $48e8: $c9


jr_032_48e9:
    cp $05                                        ; $48e9: $fe $05
    jr nz, jr_032_490f                            ; $48eb: $20 $22

    ld a, $03                                     ; $48ed: $3e $03
    ld [$c836], a                                 ; $48ef: $ea $36 $c8
    ld a, $0a                                     ; $48f2: $3e $0a
    ld [$c890], a                                 ; $48f4: $ea $90 $c8
    ld a, $08                                     ; $48f7: $3e $08

jr_032_48f9:
    ld [$c8d0], a                                 ; $48f9: $ea $d0 $c8
    ld a, $03                                     ; $48fc: $3e $03
    ld [$c96c], a                                 ; $48fe: $ea $6c $c9

jr_032_4901:
    ld a, $02                                     ; $4901: $3e $02
    rst $18                                       ; $4903: $df
    jr jr_032_4911                                ; $4904: $18 $0b

    ld c, $04                                     ; $4906: $0e $04
    call Call_000_25af                            ; $4908: $cd $af $25
    call Call_000_2625                            ; $490b: $cd $25 $26
    ret                                           ; $490e: $c9


jr_032_490f:
    cp $06                                        ; $490f: $fe $06

jr_032_4911:
    jr nz, jr_032_4930                            ; $4911: $20 $1d

    ld a, $00                                     ; $4913: $3e $00
    ld [$c890], a                                 ; $4915: $ea $90 $c8
    ld a, $f6                                     ; $4918: $3e $f6
    ld [$c8be], a                                 ; $491a: $ea $be $c8
    ld a, $04                                     ; $491d: $3e $04
    ld [$c96c], a                                 ; $491f: $ea $6c $c9
    ld a, $01                                     ; $4922: $3e $01
    rst $18                                       ; $4924: $df
    jr jr_032_4932                                ; $4925: $18 $0b

    ld c, $04                                     ; $4927: $0e $04
    call Call_000_25af                            ; $4929: $cd $af $25
    call Call_000_2625                            ; $492c: $cd $25 $26
    ret                                           ; $492f: $c9


jr_032_4930:
    cp $07                                        ; $4930: $fe $07

jr_032_4932:
    jr nz, jr_032_4956                            ; $4932: $20 $22

    ld a, $06                                     ; $4934: $3e $06
    ld [$c890], a                                 ; $4936: $ea $90 $c8
    ld a, $02                                     ; $4939: $3e $02
    ld [$c8d0], a                                 ; $493b: $ea $d0 $c8
    ld a, $03                                     ; $493e: $3e $03
    ld [$c96c], a                                 ; $4940: $ea $6c $c9
    ld a, $02                                     ; $4943: $3e $02
    rst $18                                       ; $4945: $df
    jr jr_032_4953                                ; $4946: $18 $0b

    ld c, $04                                     ; $4948: $0e $04
    call Call_000_25af                            ; $494a: $cd $af $25
    call Call_000_2625                            ; $494d: $cd $25 $26
    ret                                           ; $4950: $c9


    nop                                           ; $4951: $00
    ld [bc], a                                    ; $4952: $02

jr_032_4953:
    inc bc                                        ; $4953: $03
    inc b                                         ; $4954: $04
    dec b                                         ; $4955: $05

jr_032_4956:
    ld c, $04                                     ; $4956: $0e $04
    call Call_000_25af                            ; $4958: $cd $af $25
    call Call_000_2625                            ; $495b: $cd $25 $26
    ld a, $00                                     ; $495e: $3e $00
    ld bc, $3f00                                  ; $4960: $01 $00 $3f
    ld de, $3f00                                  ; $4963: $11 $00 $3f
    rst $18                                       ; $4966: $df
    jr nz, @+$0c                                  ; $4967: $20 $0a

    ld a, $05                                     ; $4969: $3e $05
    ldh [$96], a                                  ; $496b: $e0 $96
    ldh [rSVBK], a                                ; $496d: $e0 $70

jr_032_496f:
    ld hl, $011c                                  ; $496f: $21 $1c $01
    ld a, $03                                     ; $4972: $3e $03
    rst $18                                       ; $4974: $df
    ld d, b                                       ; $4975: $50
    dec b                                         ; $4976: $05
    cp $ff                                        ; $4977: $fe $ff
    jr z, jr_032_496f                             ; $4979: $28 $f4

    or $10                                        ; $497b: $f6 $10
    ld c, a                                       ; $497d: $4f
    ld [$c3e0], a                                 ; $497e: $ea $e0 $c3

jr_032_4981:
    ld a, [$c3e0]                                 ; $4981: $fa $e0 $c3
    ld c, a                                       ; $4984: $4f
    ld hl, $011f                                  ; $4985: $21 $1f $01
    ld d, $04                                     ; $4988: $16 $04
    ld e, $04                                     ; $498a: $1e $04
    rst $18                                       ; $498c: $df
    ld a, [bc]                                    ; $498d: $0a
    dec b                                         ; $498e: $05
    rst $18                                       ; $498f: $df
    inc e                                         ; $4990: $1c
    dec b                                         ; $4991: $05
    rst $18                                       ; $4992: $df
    inc d                                         ; $4993: $14
    dec b                                         ; $4994: $05
    rst $18                                       ; $4995: $df
    ld c, [hl]                                    ; $4996: $4e
    dec b                                         ; $4997: $05
    push af                                       ; $4998: $f5
    ld a, [$d82f]                                 ; $4999: $fa $2f $d8
    rst $18                                       ; $499c: $df
    inc c                                         ; $499d: $0c
    dec b                                         ; $499e: $05
    ld a, $ff                                     ; $499f: $3e $ff
    ld [$d82f], a                                 ; $49a1: $ea $2f $d8
    rst $18                                       ; $49a4: $df
    inc e                                         ; $49a5: $1c
    dec b                                         ; $49a6: $05
    rst $18                                       ; $49a7: $df
    inc d                                         ; $49a8: $14
    dec b                                         ; $49a9: $05
    pop af                                        ; $49aa: $f1
    cp $ff                                        ; $49ab: $fe $ff
    jr z, jr_032_496f                             ; $49ad: $28 $c0

    ld hl, $4951                                  ; $49af: $21 $51 $49
    add l                                         ; $49b2: $85
    ld l, a                                       ; $49b3: $6f
    jr nc, jr_032_49b7                            ; $49b4: $30 $01

    inc h                                         ; $49b6: $24

jr_032_49b7:
    ld b, [hl]                                    ; $49b7: $46
    call Call_032_4aa6                            ; $49b8: $cd $a6 $4a

jr_032_49bb:
    call Call_000_2e3b                            ; $49bb: $cd $3b $2e
    ldh a, [$94]                                  ; $49be: $f0 $94
    and $03                                       ; $49c0: $e6 $03
    jr z, jr_032_49bb                             ; $49c2: $28 $f7

    call Call_032_4b3b                            ; $49c4: $cd $3b $4b
    call Call_000_23b6                            ; $49c7: $cd $b6 $23
    call Call_000_2ed5                            ; $49ca: $cd $d5 $2e
    ld bc, $0adf                                  ; $49cd: $01 $df $0a
    ld bc, $1cdf                                  ; $49d0: $01 $df $1c
    dec b                                         ; $49d3: $05
    rst $18                                       ; $49d4: $df
    inc d                                         ; $49d5: $14
    dec b                                         ; $49d6: $05
    jr jr_032_4981                                ; $49d7: $18 $a8

    ld a, $00                                     ; $49d9: $3e $00
    rst $18                                       ; $49db: $df
    jr jr_032_49e9                                ; $49dc: $18 $0b

    ld a, $7e                                     ; $49de: $3e $7e
    ld hl, $ff00                                  ; $49e0: $21 $00 $ff
    ld de, $7f00                                  ; $49e3: $11 $00 $7f
    call Call_000_0ddb                            ; $49e6: $cd $db $0d

jr_032_49e9:
    push de                                       ; $49e9: $d5
    push af                                       ; $49ea: $f5
    ld a, a                                       ; $49eb: $7f
    ld de, $010c                                  ; $49ec: $11 $0c $01
    call Call_000_22a5                            ; $49ef: $cd $a5 $22
    pop af                                        ; $49f2: $f1
    pop de                                        ; $49f3: $d1
    push hl                                       ; $49f4: $e5
    push de                                       ; $49f5: $d5
    ld h, h                                       ; $49f6: $64
    ld l, l                                       ; $49f7: $6d
    ld de, $010d                                  ; $49f8: $11 $0d $01
    call Call_000_22bc                            ; $49fb: $cd $bc $22
    pop de                                        ; $49fe: $d1
    pop hl                                        ; $49ff: $e1
    ret                                           ; $4a00: $c9


    jr jr_032_4a45                                ; $4a01: $18 $42

    nop                                           ; $4a03: $00
    ld bc, $0700                                  ; $4a04: $01 $00 $07
    nop                                           ; $4a07: $00
    nop                                           ; $4a08: $00
    nop                                           ; $4a09: $00
    nop                                           ; $4a0a: $00
    ld bc, $1820                                  ; $4a0b: $01 $20 $18
    ld b, d                                       ; $4a0e: $42
    nop                                           ; $4a0f: $00
    ld bc, $0900                                  ; $4a10: $01 $00 $09
    nop                                           ; $4a13: $00
    nop                                           ; $4a14: $00
    nop                                           ; $4a15: $00
    nop                                           ; $4a16: $00
    ld bc, $1821                                  ; $4a17: $01 $21 $18
    ld b, d                                       ; $4a1a: $42
    nop                                           ; $4a1b: $00
    ld bc, $0b00                                  ; $4a1c: $01 $00 $0b
    nop                                           ; $4a1f: $00
    nop                                           ; $4a20: $00
    nop                                           ; $4a21: $00
    nop                                           ; $4a22: $00
    ld bc, $1822                                  ; $4a23: $01 $22 $18
    ld b, d                                       ; $4a26: $42
    nop                                           ; $4a27: $00
    ld bc, $0d00                                  ; $4a28: $01 $00 $0d
    nop                                           ; $4a2b: $00
    nop                                           ; $4a2c: $00
    nop                                           ; $4a2d: $00
    nop                                           ; $4a2e: $00
    ld bc, $1820                                  ; $4a2f: $01 $20 $18
    ld b, d                                       ; $4a32: $42
    nop                                           ; $4a33: $00
    ld bc, $0f00                                  ; $4a34: $01 $00 $0f
    nop                                           ; $4a37: $00
    nop                                           ; $4a38: $00
    nop                                           ; $4a39: $00
    nop                                           ; $4a3a: $00
    ld bc, $1821                                  ; $4a3b: $01 $21 $18
    ld b, d                                       ; $4a3e: $42
    nop                                           ; $4a3f: $00
    ld bc, $1100                                  ; $4a40: $01 $00 $11
    nop                                           ; $4a43: $00
    nop                                           ; $4a44: $00

jr_032_4a45:
    nop                                           ; $4a45: $00
    nop                                           ; $4a46: $00
    ld bc, $0d22                                  ; $4a47: $01 $22 $0d
    ld a, [hl]                                    ; $4a4a: $7e
    nop                                           ; $4a4b: $00
    dec b                                         ; $4a4c: $05
    add b                                         ; $4a4d: $80
    inc b                                         ; $4a4e: $04
    nop                                           ; $4a4f: $00
    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    inc hl                                        ; $4a54: $23
    dec c                                         ; $4a55: $0d
    ld a, [hl]                                    ; $4a56: $7e
    nop                                           ; $4a57: $00
    rlca                                          ; $4a58: $07
    add b                                         ; $4a59: $80
    inc b                                         ; $4a5a: $04
    nop                                           ; $4a5b: $00
    nop                                           ; $4a5c: $00
    nop                                           ; $4a5d: $00
    nop                                           ; $4a5e: $00
    ld bc, $0d23                                  ; $4a5f: $01 $23 $0d
    ld a, [hl]                                    ; $4a62: $7e
    nop                                           ; $4a63: $00
    add hl, bc                                    ; $4a64: $09
    add b                                         ; $4a65: $80
    inc b                                         ; $4a66: $04
    nop                                           ; $4a67: $00
    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    ld [bc], a                                    ; $4a6b: $02
    inc hl                                        ; $4a6c: $23
    dec c                                         ; $4a6d: $0d
    ld a, [hl]                                    ; $4a6e: $7e
    nop                                           ; $4a6f: $00
    dec b                                         ; $4a70: $05
    add b                                         ; $4a71: $80
    ld b, $00                                     ; $4a72: $06 $00
    nop                                           ; $4a74: $00
    nop                                           ; $4a75: $00
    nop                                           ; $4a76: $00
    nop                                           ; $4a77: $00
    inc h                                         ; $4a78: $24
    dec c                                         ; $4a79: $0d
    ld a, [hl]                                    ; $4a7a: $7e
    nop                                           ; $4a7b: $00
    rlca                                          ; $4a7c: $07
    add b                                         ; $4a7d: $80
    ld b, $00                                     ; $4a7e: $06 $00
    nop                                           ; $4a80: $00
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    ld bc, $0d24                                  ; $4a83: $01 $24 $0d
    ld a, [hl]                                    ; $4a86: $7e
    nop                                           ; $4a87: $00
    add hl, bc                                    ; $4a88: $09
    add b                                         ; $4a89: $80
    ld b, $00                                     ; $4a8a: $06 $00
    nop                                           ; $4a8c: $00
    nop                                           ; $4a8d: $00
    nop                                           ; $4a8e: $00
    ld [bc], a                                    ; $4a8f: $02
    inc h                                         ; $4a90: $24
    dec c                                         ; $4a91: $0d
    ld a, [hl]                                    ; $4a92: $7e
    nop                                           ; $4a93: $00
    inc c                                         ; $4a94: $0c
    add b                                         ; $4a95: $80
    add hl, bc                                    ; $4a96: $09
    nop                                           ; $4a97: $00
    nop                                           ; $4a98: $00
    nop                                           ; $4a99: $00
    add b                                         ; $4a9a: $80
    ld bc, $0025                                  ; $4a9b: $01 $25 $00
    nop                                           ; $4a9e: $00
    nop                                           ; $4a9f: $00
    nop                                           ; $4aa0: $00
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    nop                                           ; $4aa3: $00
    nop                                           ; $4aa4: $00
    rst $38                                       ; $4aa5: $ff

Call_032_4aa6:
    push af                                       ; $4aa6: $f5
    push bc                                       ; $4aa7: $c5
    push de                                       ; $4aa8: $d5
    push hl                                       ; $4aa9: $e5
    ld a, $06                                     ; $4aaa: $3e $06
    ldh [$96], a                                  ; $4aac: $e0 $96
    ldh [rSVBK], a                                ; $4aae: $e0 $70
    ld a, $ff                                     ; $4ab0: $3e $ff
    ld [$d34d], a                                 ; $4ab2: $ea $4d $d3
    rst $18                                       ; $4ab5: $df
    ld b, $77                                     ; $4ab6: $06 $77
    pop hl                                        ; $4ab8: $e1
    pop de                                        ; $4ab9: $d1
    pop bc                                        ; $4aba: $c1
    pop af                                        ; $4abb: $f1
    ret                                           ; $4abc: $c9


    rst $18                                       ; $4abd: $df
    ld l, d                                       ; $4abe: $6a
    dec b                                         ; $4abf: $05
    ld d, $02                                     ; $4ac0: $16 $02
    ld e, $00                                     ; $4ac2: $1e $00
    ld b, $10                                     ; $4ac4: $06 $10
    ld c, $03                                     ; $4ac6: $0e $03
    ld hl, $0067                                  ; $4ac8: $21 $67 $00
    rst $18                                       ; $4acb: $df
    ld l, h                                       ; $4acc: $6c
    dec b                                         ; $4acd: $05
    ld d, $00                                     ; $4ace: $16 $00
    ld e, $0b                                     ; $4ad0: $1e $0b
    ld b, $14                                     ; $4ad2: $06 $14
    ld c, $07                                     ; $4ad4: $0e $07
    rst $18                                       ; $4ad6: $df
    ld b, $05                                     ; $4ad7: $06 $05
    ld hl, $011f                                  ; $4ad9: $21 $1f $01
    ld d, $04                                     ; $4adc: $16 $04
    ld e, $03                                     ; $4ade: $1e $03
    rst $18                                       ; $4ae0: $df
    ld a, [bc]                                    ; $4ae1: $0a
    dec b                                         ; $4ae2: $05
    ld a, $00                                     ; $4ae3: $3e $00
    rst $18                                       ; $4ae5: $df
    ld l, [hl]                                    ; $4ae6: $6e
    dec b                                         ; $4ae7: $05
    ld a, $00                                     ; $4ae8: $3e $00
    rst $18                                       ; $4aea: $df
    ld [hl], b                                    ; $4aeb: $70
    dec b                                         ; $4aec: $05
    call Call_000_2ed5                            ; $4aed: $cd $d5 $2e
    ld a, [bc]                                    ; $4af0: $0a
    ld a, $02                                     ; $4af1: $3e $02
    rst $18                                       ; $4af3: $df
    ld l, [hl]                                    ; $4af4: $6e
    dec b                                         ; $4af5: $05
    ld a, $02                                     ; $4af6: $3e $02
    rst $18                                       ; $4af8: $df
    ld [hl], b                                    ; $4af9: $70
    dec b                                         ; $4afa: $05

jr_032_4afb:
    rst $18                                       ; $4afb: $df
    ld c, [hl]                                    ; $4afc: $4e
    dec b                                         ; $4afd: $05
    cp $ff                                        ; $4afe: $fe $ff
    jr z, jr_032_4afb                             ; $4b00: $28 $f9

    ld [$c3f9], a                                 ; $4b02: $ea $f9 $c3
    ld hl, $00bc                                  ; $4b05: $21 $bc $00
    ld de, $dd74                                  ; $4b08: $11 $74 $dd
    rst $18                                       ; $4b0b: $df
    ld e, h                                       ; $4b0c: $5c
    dec b                                         ; $4b0d: $05
    ld hl, $dd74                                  ; $4b0e: $21 $74 $dd
    rst $18                                       ; $4b11: $df
    ld d, h                                       ; $4b12: $54
    dec b                                         ; $4b13: $05
    ld hl, $00bd                                  ; $4b14: $21 $bd $00
    ld de, $dd84                                  ; $4b17: $11 $84 $dd
    rst $18                                       ; $4b1a: $df
    ld e, h                                       ; $4b1b: $5c
    dec b                                         ; $4b1c: $05
    ld hl, $dd84                                  ; $4b1d: $21 $84 $dd
    rst $18                                       ; $4b20: $df
    ld d, h                                       ; $4b21: $54
    dec b                                         ; $4b22: $05
    ld hl, $016b                                  ; $4b23: $21 $6b $01
    ld b, $01                                     ; $4b26: $06 $01
    rst $18                                       ; $4b28: $df
    ld [de], a                                    ; $4b29: $12
    dec b                                         ; $4b2a: $05
    ld a, $01                                     ; $4b2b: $3e $01
    rst $18                                       ; $4b2d: $df
    ld l, [hl]                                    ; $4b2e: $6e
    dec b                                         ; $4b2f: $05
    ld a, $01                                     ; $4b30: $3e $01
    rst $18                                       ; $4b32: $df
    halt                                          ; $4b33: $76
    dec b                                         ; $4b34: $05
    rst $18                                       ; $4b35: $df
    ld [hl], b                                    ; $4b36: $70
    dec b                                         ; $4b37: $05
    jr jr_032_4afb                                ; $4b38: $18 $c1

    ret                                           ; $4b3a: $c9


Call_032_4b3b:
    ldh a, [$96]                                  ; $4b3b: $f0 $96
    push af                                       ; $4b3d: $f5
    ld a, $06                                     ; $4b3e: $3e $06
    ldh [$96], a                                  ; $4b40: $e0 $96
    ldh [rSVBK], a                                ; $4b42: $e0 $70
    ld a, $ff                                     ; $4b44: $3e $ff
    ld [$d444], a                                 ; $4b46: $ea $44 $d4
    ld a, $02                                     ; $4b49: $3e $02
    ldh [$96], a                                  ; $4b4b: $e0 $96
    ldh [rSVBK], a                                ; $4b4d: $e0 $70
    ld de, $c600                                  ; $4b4f: $11 $00 $c6
    ld hl, $d100                                  ; $4b52: $21 $00 $d1
    ld c, $08                                     ; $4b55: $0e $08

jr_032_4b57:
    push bc                                       ; $4b57: $c5
    ld a, [hl+]                                   ; $4b58: $2a
    ld [de], a                                    ; $4b59: $12
    inc de                                        ; $4b5a: $13
    ld a, [hl+]                                   ; $4b5b: $2a
    ld [de], a                                    ; $4b5c: $12
    inc de                                        ; $4b5d: $13
    ld a, [hl+]                                   ; $4b5e: $2a
    ld [de], a                                    ; $4b5f: $12
    inc de                                        ; $4b60: $13
    ld a, [hl+]                                   ; $4b61: $2a
    ld [de], a                                    ; $4b62: $12
    inc de                                        ; $4b63: $13
    ld a, [hl+]                                   ; $4b64: $2a
    ld [de], a                                    ; $4b65: $12
    inc de                                        ; $4b66: $13
    ld a, [hl+]                                   ; $4b67: $2a
    ld [de], a                                    ; $4b68: $12
    inc de                                        ; $4b69: $13
    ld a, [hl+]                                   ; $4b6a: $2a
    ld [de], a                                    ; $4b6b: $12
    inc de                                        ; $4b6c: $13
    ld a, [hl+]                                   ; $4b6d: $2a
    ld [de], a                                    ; $4b6e: $12
    inc de                                        ; $4b6f: $13
    ld a, [hl+]                                   ; $4b70: $2a
    ld [de], a                                    ; $4b71: $12
    inc de                                        ; $4b72: $13
    ld a, [hl+]                                   ; $4b73: $2a
    ld [de], a                                    ; $4b74: $12
    inc de                                        ; $4b75: $13
    ld a, [hl+]                                   ; $4b76: $2a
    ld [de], a                                    ; $4b77: $12
    inc de                                        ; $4b78: $13
    ld a, [hl+]                                   ; $4b79: $2a
    ld [de], a                                    ; $4b7a: $12
    inc de                                        ; $4b7b: $13
    ld a, [hl+]                                   ; $4b7c: $2a
    ld [de], a                                    ; $4b7d: $12
    inc de                                        ; $4b7e: $13
    ld a, [hl+]                                   ; $4b7f: $2a
    ld [de], a                                    ; $4b80: $12
    inc de                                        ; $4b81: $13
    ld a, [hl+]                                   ; $4b82: $2a
    ld [de], a                                    ; $4b83: $12
    inc de                                        ; $4b84: $13
    ld a, [hl+]                                   ; $4b85: $2a
    ld [de], a                                    ; $4b86: $12
    inc de                                        ; $4b87: $13
    ld a, [hl+]                                   ; $4b88: $2a
    ld [de], a                                    ; $4b89: $12
    inc de                                        ; $4b8a: $13
    ld a, [hl+]                                   ; $4b8b: $2a
    ld [de], a                                    ; $4b8c: $12
    inc de                                        ; $4b8d: $13
    ld a, [hl+]                                   ; $4b8e: $2a
    ld [de], a                                    ; $4b8f: $12
    inc de                                        ; $4b90: $13
    ld a, [hl+]                                   ; $4b91: $2a
    ld [de], a                                    ; $4b92: $12
    inc de                                        ; $4b93: $13
    ld bc, $002c                                  ; $4b94: $01 $2c $00
    add hl, bc                                    ; $4b97: $09
    ld a, $0c                                     ; $4b98: $3e $0c
    add e                                         ; $4b9a: $83
    ld e, a                                       ; $4b9b: $5f
    ld a, d                                       ; $4b9c: $7a
    adc $00                                       ; $4b9d: $ce $00
    ld d, a                                       ; $4b9f: $57
    pop bc                                        ; $4ba0: $c1
    dec c                                         ; $4ba1: $0d
    jr nz, jr_032_4b57                            ; $4ba2: $20 $b3

    ld a, $03                                     ; $4ba4: $3e $03
    ldh [$96], a                                  ; $4ba6: $e0 $96
    ldh [rSVBK], a                                ; $4ba8: $e0 $70
    ld hl, $d100                                  ; $4baa: $21 $00 $d1
    ld c, $08                                     ; $4bad: $0e $08

jr_032_4baf:
    push bc                                       ; $4baf: $c5
    ld a, [hl+]                                   ; $4bb0: $2a
    ld [de], a                                    ; $4bb1: $12
    inc de                                        ; $4bb2: $13
    ld a, [hl+]                                   ; $4bb3: $2a
    ld [de], a                                    ; $4bb4: $12
    inc de                                        ; $4bb5: $13
    ld a, [hl+]                                   ; $4bb6: $2a
    ld [de], a                                    ; $4bb7: $12
    inc de                                        ; $4bb8: $13
    ld a, [hl+]                                   ; $4bb9: $2a
    ld [de], a                                    ; $4bba: $12
    inc de                                        ; $4bbb: $13
    ld a, [hl+]                                   ; $4bbc: $2a
    ld [de], a                                    ; $4bbd: $12
    inc de                                        ; $4bbe: $13
    ld a, [hl+]                                   ; $4bbf: $2a
    ld [de], a                                    ; $4bc0: $12
    inc de                                        ; $4bc1: $13
    ld a, [hl+]                                   ; $4bc2: $2a
    ld [de], a                                    ; $4bc3: $12
    inc de                                        ; $4bc4: $13
    ld a, [hl+]                                   ; $4bc5: $2a
    ld [de], a                                    ; $4bc6: $12
    inc de                                        ; $4bc7: $13
    ld a, [hl+]                                   ; $4bc8: $2a
    ld [de], a                                    ; $4bc9: $12
    inc de                                        ; $4bca: $13
    ld a, [hl+]                                   ; $4bcb: $2a
    ld [de], a                                    ; $4bcc: $12
    inc de                                        ; $4bcd: $13
    ld a, [hl+]                                   ; $4bce: $2a
    ld [de], a                                    ; $4bcf: $12
    inc de                                        ; $4bd0: $13
    ld a, [hl+]                                   ; $4bd1: $2a
    ld [de], a                                    ; $4bd2: $12
    inc de                                        ; $4bd3: $13
    ld a, [hl+]                                   ; $4bd4: $2a
    ld [de], a                                    ; $4bd5: $12
    inc de                                        ; $4bd6: $13
    ld a, [hl+]                                   ; $4bd7: $2a
    ld [de], a                                    ; $4bd8: $12
    inc de                                        ; $4bd9: $13
    ld a, [hl+]                                   ; $4bda: $2a
    ld [de], a                                    ; $4bdb: $12
    inc de                                        ; $4bdc: $13
    ld a, [hl+]                                   ; $4bdd: $2a
    ld [de], a                                    ; $4bde: $12
    inc de                                        ; $4bdf: $13
    ld a, [hl+]                                   ; $4be0: $2a
    ld [de], a                                    ; $4be1: $12
    inc de                                        ; $4be2: $13
    ld a, [hl+]                                   ; $4be3: $2a
    ld [de], a                                    ; $4be4: $12
    inc de                                        ; $4be5: $13
    ld a, [hl+]                                   ; $4be6: $2a
    ld [de], a                                    ; $4be7: $12
    inc de                                        ; $4be8: $13
    ld a, [hl+]                                   ; $4be9: $2a
    ld [de], a                                    ; $4bea: $12
    inc de                                        ; $4beb: $13
    ld bc, $002c                                  ; $4bec: $01 $2c $00
    add hl, bc                                    ; $4bef: $09
    ld a, $0c                                     ; $4bf0: $3e $0c
    add e                                         ; $4bf2: $83
    ld e, a                                       ; $4bf3: $5f
    ld a, d                                       ; $4bf4: $7a
    adc $00                                       ; $4bf5: $ce $00
    ld d, a                                       ; $4bf7: $57
    pop bc                                        ; $4bf8: $c1
    dec c                                         ; $4bf9: $0d
    jr nz, jr_032_4baf                            ; $4bfa: $20 $b3

    ld hl, $c600                                  ; $4bfc: $21 $00 $c6
    ld de, $b880                                  ; $4bff: $11 $80 $b8
    ld c, $10                                     ; $4c02: $0e $10
    call Call_000_0468                            ; $4c04: $cd $68 $04
    ld hl, $c700                                  ; $4c07: $21 $00 $c7
    ld de, $9880                                  ; $4c0a: $11 $80 $98
    ld c, $10                                     ; $4c0d: $0e $10
    call Call_000_0468                            ; $4c0f: $cd $68 $04
    call Call_000_0460                            ; $4c12: $cd $60 $04
    pop af                                        ; $4c15: $f1
    ldh [$96], a                                  ; $4c16: $e0 $96
    ldh [rSVBK], a                                ; $4c18: $e0 $70
    ret                                           ; $4c1a: $c9


    ld [hl-], a                                   ; $4c1b: $32
    ld c, h                                       ; $4c1c: $4c
    ld c, e                                       ; $4c1d: $4b
    ld c, h                                       ; $4c1e: $4c
    add hl, hl                                    ; $4c1f: $29
    ld c, h                                       ; $4c20: $4c
    ld e, b                                       ; $4c21: $58
    ld c, h                                       ; $4c22: $4c
    ld e, e                                       ; $4c23: $5b
    ld c, h                                       ; $4c24: $4c
    ld e, l                                       ; $4c25: $5d
    ld c, h                                       ; $4c26: $4c
    ld h, [hl]                                    ; $4c27: $66
    ld c, h                                       ; $4c28: $4c
    nop                                           ; $4c29: $00
    nop                                           ; $4c2a: $00
    nop                                           ; $4c2b: $00
    nop                                           ; $4c2c: $00
    nop                                           ; $4c2d: $00
    nop                                           ; $4c2e: $00
    nop                                           ; $4c2f: $00
    nop                                           ; $4c30: $00
    rst $38                                       ; $4c31: $ff
    nop                                           ; $4c32: $00
    nop                                           ; $4c33: $00
    nop                                           ; $4c34: $00
    add hl, bc                                    ; $4c35: $09
    nop                                           ; $4c36: $00
    add hl, bc                                    ; $4c37: $09
    ld bc, $0080                                  ; $4c38: $01 $80 $00
    ld bc, $0100                                  ; $4c3b: $01 $00 $01
    ld [bc], a                                    ; $4c3e: $02
    ret nz                                        ; $4c3f: $c0

    nop                                           ; $4c40: $00
    ld e, $00                                     ; $4c41: $1e $00
    ld bc, $c003                                  ; $4c43: $01 $03 $c0
    nop                                           ; $4c46: $00
    ld e, $00                                     ; $4c47: $1e $00
    ld sp, $01ff                                  ; $4c49: $31 $ff $01
    rst $38                                       ; $4c4c: $ff
    nop                                           ; $4c4d: $00
    nop                                           ; $4c4e: $00
    nop                                           ; $4c4f: $00
    nop                                           ; $4c50: $00
    inc bc                                        ; $4c51: $03
    ld bc, $dfff                                  ; $4c52: $01 $ff $df
    ld [bc], a                                    ; $4c55: $02
    ld b, h                                       ; $4c56: $44
    ret                                           ; $4c57: $c9


    rst $38                                       ; $4c58: $ff
    rst $38                                       ; $4c59: $ff
    ret                                           ; $4c5a: $c9


    rst $38                                       ; $4c5b: $ff
    ret                                           ; $4c5c: $c9


    ld bc, $00ff                                  ; $4c5d: $01 $ff $00
    nop                                           ; $4c60: $00
    ld e, h                                       ; $4c61: $5c
    ld c, h                                       ; $4c62: $4c
    nop                                           ; $4c63: $00
    nop                                           ; $4c64: $00
    rst $38                                       ; $4c65: $ff
    ld a, $00                                     ; $4c66: $3e $00
    ld b, $40                                     ; $4c68: $06 $40
    rst $18                                       ; $4c6a: $df
    inc l                                         ; $4c6b: $2c
    ld a, [bc]                                    ; $4c6c: $0a
    ld c, $04                                     ; $4c6d: $0e $04
    call Call_000_25af                            ; $4c6f: $cd $af $25
    call Call_000_2625                            ; $4c72: $cd $25 $26
    ld b, $00                                     ; $4c75: $06 $00
    push bc                                       ; $4c77: $c5
    ld a, b                                       ; $4c78: $78
    call Call_032_4d74                            ; $4c79: $cd $74 $4d

Jump_032_4c7c:
    call Call_000_2e3b                            ; $4c7c: $cd $3b $2e
    ld c, $00                                     ; $4c7f: $0e $00
    ldh a, [$91]                                  ; $4c81: $f0 $91
    and $01                                       ; $4c83: $e6 $01
    jp nz, Jump_032_4d15                          ; $4c85: $c2 $15 $4d

    pop bc                                        ; $4c88: $c1
    ldh a, [$91]                                  ; $4c89: $f0 $91
    and $40                                       ; $4c8b: $e6 $40
    jr z, @+$0d                                   ; $4c8d: $28 $0b

    ld a, b                                       ; $4c8f: $78
    call Call_032_4d74                            ; $4c90: $cd $74 $4d
    ld c, $01                                     ; $4c93: $0e $01
    call Call_032_4dab                            ; $4c95: $cd $ab $4d
    rst $08                                       ; $4c98: $cf
    ld [$91f0], sp                                ; $4c99: $08 $f0 $91
    and $20                                       ; $4c9c: $e6 $20
    jr z, jr_032_4cab                             ; $4c9e: $28 $0b

    ld a, b                                       ; $4ca0: $78
    call Call_032_4d74                            ; $4ca1: $cd $74 $4d
    ld c, $02                                     ; $4ca4: $0e $02
    call Call_032_4dab                            ; $4ca6: $cd $ab $4d
    rst $08                                       ; $4ca9: $cf
    ld a, [bc]                                    ; $4caa: $0a

jr_032_4cab:
    ldh a, [$91]                                  ; $4cab: $f0 $91
    and $80                                       ; $4cad: $e6 $80
    jr z, jr_032_4cbc                             ; $4caf: $28 $0b

    ld c, $03                                     ; $4cb1: $0e $03
    call Call_032_4dab                            ; $4cb3: $cd $ab $4d
    ld a, b                                       ; $4cb6: $78
    call Call_032_4d74                            ; $4cb7: $cd $74 $4d
    rst $08                                       ; $4cba: $cf
    add hl, bc                                    ; $4cbb: $09

jr_032_4cbc:
    ldh a, [$91]                                  ; $4cbc: $f0 $91
    and $10                                       ; $4cbe: $e6 $10
    jr z, jr_032_4ccd                             ; $4cc0: $28 $0b

    ld a, b                                       ; $4cc2: $78
    call Call_032_4d74                            ; $4cc3: $cd $74 $4d
    ld c, $04                                     ; $4cc6: $0e $04
    call Call_032_4dab                            ; $4cc8: $cd $ab $4d
    rst $08                                       ; $4ccb: $cf
    dec bc                                        ; $4ccc: $0b

jr_032_4ccd:
    push bc                                       ; $4ccd: $c5
    ld a, b                                       ; $4cce: $78
    add a                                         ; $4ccf: $87
    add a                                         ; $4cd0: $87
    ld hl, $4e66                                  ; $4cd1: $21 $66 $4e
    add l                                         ; $4cd4: $85
    ld l, a                                       ; $4cd5: $6f
    jr nc, jr_032_4cd9                            ; $4cd6: $30 $01

    inc h                                         ; $4cd8: $24

jr_032_4cd9:
    push hl                                       ; $4cd9: $e5
    ld a, [hl+]                                   ; $4cda: $2a
    ld h, [hl]                                    ; $4cdb: $66
    ld l, a                                       ; $4cdc: $6f
    push hl                                       ; $4cdd: $e5
    pop de                                        ; $4cde: $d1
    pop hl                                        ; $4cdf: $e1
    inc hl                                        ; $4ce0: $23
    inc hl                                        ; $4ce1: $23
    ld a, [hl+]                                   ; $4ce2: $2a
    ld h, [hl]                                    ; $4ce3: $66
    ld l, a                                       ; $4ce4: $6f
    push hl                                       ; $4ce5: $e5
    pop bc                                        ; $4ce6: $c1
    push af                                       ; $4ce7: $f5
    push bc                                       ; $4ce8: $c5
    push de                                       ; $4ce9: $d5
    push hl                                       ; $4cea: $e5
    ld h, d                                       ; $4ceb: $62
    ld l, e                                       ; $4cec: $6b
    ld a, $08                                     ; $4ced: $3e $08
    add l                                         ; $4cef: $85
    ld l, a                                       ; $4cf0: $6f
    jr nc, jr_032_4cf4                            ; $4cf1: $30 $01

    inc h                                         ; $4cf3: $24

jr_032_4cf4:
    add hl, hl                                    ; $4cf4: $29
    add hl, hl                                    ; $4cf5: $29
    add hl, hl                                    ; $4cf6: $29
    add hl, hl                                    ; $4cf7: $29
    add hl, hl                                    ; $4cf8: $29
    push hl                                       ; $4cf9: $e5
    ld h, b                                       ; $4cfa: $60
    ld l, c                                       ; $4cfb: $69
    ld a, $08                                     ; $4cfc: $3e $08
    add l                                         ; $4cfe: $85
    ld l, a                                       ; $4cff: $6f
    jr nc, jr_032_4d03                            ; $4d00: $30 $01

    inc h                                         ; $4d02: $24

jr_032_4d03:
    add hl, hl                                    ; $4d03: $29
    add hl, hl                                    ; $4d04: $29
    add hl, hl                                    ; $4d05: $29
    add hl, hl                                    ; $4d06: $29
    add hl, hl                                    ; $4d07: $29
    push hl                                       ; $4d08: $e5
    pop de                                        ; $4d09: $d1
    pop bc                                        ; $4d0a: $c1
    rst $18                                       ; $4d0b: $df
    jr nz, @+$0c                                  ; $4d0c: $20 $0a

    pop hl                                        ; $4d0e: $e1
    pop de                                        ; $4d0f: $d1
    pop bc                                        ; $4d10: $c1
    pop af                                        ; $4d11: $f1
    jp Jump_032_4c7c                              ; $4d12: $c3 $7c $4c


Jump_032_4d15:
    pop bc                                        ; $4d15: $c1
    call Call_032_4e0c                            ; $4d16: $cd $0c $4e
    ld a, $01                                     ; $4d19: $3e $01
    ld [$c441], a                                 ; $4d1b: $ea $41 $c4
    ret                                           ; $4d1e: $c9


Call_032_4d1f:
    add $04                                       ; $4d1f: $c6 $04
    push af                                       ; $4d21: $f5
    ld d, $00                                     ; $4d22: $16 $00
    ld e, $04                                     ; $4d24: $1e $04
    pop af                                        ; $4d26: $f1
    ld h, $00                                     ; $4d27: $26 $00
    ld l, a                                       ; $4d29: $6f
    push de                                       ; $4d2a: $d5
    push hl                                       ; $4d2b: $e5

Jump_032_4d2c:
    pop hl                                        ; $4d2c: $e1
    pop de                                        ; $4d2d: $d1
    ld a, l                                       ; $4d2e: $7d
    cp e                                          ; $4d2f: $bb
    jr z, jr_032_4d4b                             ; $4d30: $28 $19

    push de                                       ; $4d32: $d5
    push hl                                       ; $4d33: $e5
    ld a, $05                                     ; $4d34: $3e $05
    add l                                         ; $4d36: $85
    ld d, a                                       ; $4d37: $57
    ld e, $10                                     ; $4d38: $1e $10
    ld b, $00                                     ; $4d3a: $06 $00
    ld c, $15                                     ; $4d3c: $0e $15
    ld h, $01                                     ; $4d3e: $26 $01
    ld l, $01                                     ; $4d40: $2e $01
    rst $18                                       ; $4d42: $df
    ld a, [bc]                                    ; $4d43: $0a
    dec bc                                        ; $4d44: $0b
    pop hl                                        ; $4d45: $e1
    inc hl                                        ; $4d46: $23
    push hl                                       ; $4d47: $e5
    jp Jump_032_4d2c                              ; $4d48: $c3 $2c $4d


jr_032_4d4b:
    ret                                           ; $4d4b: $c9


Call_032_4d4c:
    ld d, $00                                     ; $4d4c: $16 $00
    ld e, a                                       ; $4d4e: $5f
    ld h, $00                                     ; $4d4f: $26 $00
    ld l, $00                                     ; $4d51: $2e $00
    push de                                       ; $4d53: $d5
    push hl                                       ; $4d54: $e5

jr_032_4d55:
    pop hl                                        ; $4d55: $e1
    pop de                                        ; $4d56: $d1
    ld a, l                                       ; $4d57: $7d
    cp e                                          ; $4d58: $bb
    jr z, jr_032_4d73                             ; $4d59: $28 $18

    push de                                       ; $4d5b: $d5
    push hl                                       ; $4d5c: $e5
    ld a, $0b                                     ; $4d5d: $3e $0b
    add l                                         ; $4d5f: $85
    ld d, a                                       ; $4d60: $57
    ld e, $10                                     ; $4d61: $1e $10
    ld b, $00                                     ; $4d63: $06 $00
    ld c, $15                                     ; $4d65: $0e $15
    ld h, $01                                     ; $4d67: $26 $01
    ld l, $01                                     ; $4d69: $2e $01
    rst $18                                       ; $4d6b: $df
    ld a, [bc]                                    ; $4d6c: $0a
    dec bc                                        ; $4d6d: $0b
    pop hl                                        ; $4d6e: $e1
    inc hl                                        ; $4d6f: $23
    push hl                                       ; $4d70: $e5
    jr jr_032_4d55                                ; $4d71: $18 $e2

jr_032_4d73:
    ret                                           ; $4d73: $c9


Call_032_4d74:
    push af                                       ; $4d74: $f5
    push bc                                       ; $4d75: $c5
    push de                                       ; $4d76: $d5
    push hl                                       ; $4d77: $e5
    push af                                       ; $4d78: $f5
    ld b, $06                                     ; $4d79: $06 $06
    ld c, $15                                     ; $4d7b: $0e $15
    ld d, $05                                     ; $4d7d: $16 $05
    ld e, $10                                     ; $4d7f: $1e $10
    ld h, $0a                                     ; $4d81: $26 $0a
    ld l, $01                                     ; $4d83: $2e $01
    rst $18                                       ; $4d85: $df
    ld a, [bc]                                    ; $4d86: $0a
    dec bc                                        ; $4d87: $0b
    pop af                                        ; $4d88: $f1
    add a                                         ; $4d89: $87
    ld hl, $4ea2                                  ; $4d8a: $21 $a2 $4e
    add l                                         ; $4d8d: $85
    ld l, a                                       ; $4d8e: $6f
    jr nc, jr_032_4d92                            ; $4d8f: $30 $01

    inc h                                         ; $4d91: $24

jr_032_4d92:
    ld a, [hl+]                                   ; $4d92: $2a
    ld h, [hl]                                    ; $4d93: $66
    ld l, a                                       ; $4d94: $6f
    ld a, l                                       ; $4d95: $7d
    or a                                          ; $4d96: $b7
    jr z, jr_032_4da6                             ; $4d97: $28 $0d

    cp $80                                        ; $4d99: $fe $80
    jr nc, jr_032_4da3                            ; $4d9b: $30 $06

    call Call_032_4d4c                            ; $4d9d: $cd $4c $4d
    jp Jump_032_4da6                              ; $4da0: $c3 $a6 $4d


jr_032_4da3:
    call Call_032_4d1f                            ; $4da3: $cd $1f $4d

Jump_032_4da6:
jr_032_4da6:
    pop hl                                        ; $4da6: $e1
    pop de                                        ; $4da7: $d1
    pop bc                                        ; $4da8: $c1
    pop af                                        ; $4da9: $f1
    ret                                           ; $4daa: $c9


Call_032_4dab:
    push af                                       ; $4dab: $f5
    ld a, c                                       ; $4dac: $79
    cp $01                                        ; $4dad: $fe $01
    jr nz, jr_032_4dc1                            ; $4daf: $20 $10

    ld a, b                                       ; $4db1: $78
    add $fd                                       ; $4db2: $c6 $fd
    cp $fc                                        ; $4db4: $fe $fc
    jr nc, jr_032_4dbb                            ; $4db6: $30 $03

    jp Jump_032_4e09                              ; $4db8: $c3 $09 $4e


jr_032_4dbb:
    ld a, b                                       ; $4dbb: $78
    add $06                                       ; $4dbc: $c6 $06
    jp Jump_032_4e09                              ; $4dbe: $c3 $09 $4e


jr_032_4dc1:
    cp $02                                        ; $4dc1: $fe $02
    jr nz, jr_032_4ddd                            ; $4dc3: $20 $18

    ld a, b                                       ; $4dc5: $78
    add $ff                                       ; $4dc6: $c6 $ff
    cp $ff                                        ; $4dc8: $fe $ff
    jr z, jr_032_4dd7                             ; $4dca: $28 $0b

    cp $02                                        ; $4dcc: $fe $02
    jr z, jr_032_4dd7                             ; $4dce: $28 $07

    cp $05                                        ; $4dd0: $fe $05
    jr z, jr_032_4dd7                             ; $4dd2: $28 $03

    jp Jump_032_4e09                              ; $4dd4: $c3 $09 $4e


jr_032_4dd7:
    ld a, b                                       ; $4dd7: $78
    add $02                                       ; $4dd8: $c6 $02
    jp Jump_032_4e09                              ; $4dda: $c3 $09 $4e


jr_032_4ddd:
    cp $03                                        ; $4ddd: $fe $03
    jr nz, jr_032_4df1                            ; $4ddf: $20 $10

    ld a, b                                       ; $4de1: $78
    add $03                                       ; $4de2: $c6 $03
    cp $09                                        ; $4de4: $fe $09
    jr nc, jr_032_4deb                            ; $4de6: $30 $03

    jp Jump_032_4e09                              ; $4de8: $c3 $09 $4e


jr_032_4deb:
    ld a, b                                       ; $4deb: $78
    add $fa                                       ; $4dec: $c6 $fa
    jp Jump_032_4e09                              ; $4dee: $c3 $09 $4e


jr_032_4df1:
    cp $04                                        ; $4df1: $fe $04
    jr nz, jr_032_4e09                            ; $4df3: $20 $14

    ld a, b                                       ; $4df5: $78
    inc a                                         ; $4df6: $3c
    cp $03                                        ; $4df7: $fe $03
    jr z, jr_032_4e06                             ; $4df9: $28 $0b

    cp $06                                        ; $4dfb: $fe $06
    jr z, jr_032_4e06                             ; $4dfd: $28 $07

    cp $09                                        ; $4dff: $fe $09
    jr z, jr_032_4e06                             ; $4e01: $28 $03

    jp Jump_032_4e09                              ; $4e03: $c3 $09 $4e


jr_032_4e06:
    ld a, b                                       ; $4e06: $78
    add $fe                                       ; $4e07: $c6 $fe

Jump_032_4e09:
jr_032_4e09:
    ld b, a                                       ; $4e09: $47
    pop af                                        ; $4e0a: $f1
    ret                                           ; $4e0b: $c9


Call_032_4e0c:
    push bc                                       ; $4e0c: $c5
    rst $18                                       ; $4e0d: $df
    inc e                                         ; $4e0e: $1c
    db $10                                        ; $4e0f: $10
    ld bc, $ff01                                  ; $4e10: $01 $01 $ff
    rst $18                                       ; $4e13: $df
    ld e, $02                                     ; $4e14: $1e $02
    ld bc, $8000                                  ; $4e16: $01 $00 $80
    rst $18                                       ; $4e19: $df
    ld e, $02                                     ; $4e1a: $1e $02
    pop bc                                        ; $4e1c: $c1
    ld a, b                                       ; $4e1d: $78
    push de                                       ; $4e1e: $d5
    push af                                       ; $4e1f: $f5
    ld a, a                                       ; $4e20: $7f
    ld de, $0d07                                  ; $4e21: $11 $07 $0d
    call Call_000_22a5                            ; $4e24: $cd $a5 $22
    pop af                                        ; $4e27: $f1
    pop de                                        ; $4e28: $d1
    add a                                         ; $4e29: $87
    ld hl, $4e90                                  ; $4e2a: $21 $90 $4e
    add l                                         ; $4e2d: $85
    ld l, a                                       ; $4e2e: $6f
    jr nc, jr_032_4e32                            ; $4e2f: $30 $01

    inc h                                         ; $4e31: $24

jr_032_4e32:
    ld a, [hl+]                                   ; $4e32: $2a
    ld h, [hl]                                    ; $4e33: $66
    ld l, a                                       ; $4e34: $6f
    push hl                                       ; $4e35: $e5
    push de                                       ; $4e36: $d5
    ld h, h                                       ; $4e37: $64
    ld l, l                                       ; $4e38: $6d
    ld de, $0d08                                  ; $4e39: $11 $08 $0d
    call Call_000_22bc                            ; $4e3c: $cd $bc $22
    pop de                                        ; $4e3f: $d1
    pop hl                                        ; $4e40: $e1
    add hl, hl                                    ; $4e41: $29
    add hl, hl                                    ; $4e42: $29
    add hl, hl                                    ; $4e43: $29
    add hl, hl                                    ; $4e44: $29
    add hl, hl                                    ; $4e45: $29
    add hl, hl                                    ; $4e46: $29
    add hl, hl                                    ; $4e47: $29
    add hl, hl                                    ; $4e48: $29
    ld a, $01                                     ; $4e49: $3e $01
    add l                                         ; $4e4b: $85
    ld l, a                                       ; $4e4c: $6f
    jr nc, jr_032_4e50                            ; $4e4d: $30 $01

    inc h                                         ; $4e4f: $24

jr_032_4e50:
    ld b, h                                       ; $4e50: $44
    ld c, l                                       ; $4e51: $4d
    rst $18                                       ; $4e52: $df
    ld e, $02                                     ; $4e53: $1e $02
    ld hl, $0101                                  ; $4e55: $21 $01 $01
    rst $18                                       ; $4e58: $df
    db $10                                        ; $4e59: $10
    db $10                                        ; $4e5a: $10
    ld a, $00                                     ; $4e5b: $3e $00
    rst $18                                       ; $4e5d: $df
    ld e, $10                                     ; $4e5e: $1e $10
    ld a, $12                                     ; $4e60: $3e $12
    rst $18                                       ; $4e62: $df
    ld [de], a                                    ; $4e63: $12
    db $10                                        ; $4e64: $10
    ret                                           ; $4e65: $c9


    inc l                                         ; $4e66: $2c
    nop                                           ; $4e67: $00
    inc l                                         ; $4e68: $2c
    nop                                           ; $4e69: $00
    ld c, h                                       ; $4e6a: $4c
    nop                                           ; $4e6b: $00
    inc l                                         ; $4e6c: $2c
    nop                                           ; $4e6d: $00
    ld l, h                                       ; $4e6e: $6c
    nop                                           ; $4e6f: $00
    inc l                                         ; $4e70: $2c
    nop                                           ; $4e71: $00
    inc l                                         ; $4e72: $2c
    nop                                           ; $4e73: $00
    ld b, h                                       ; $4e74: $44
    nop                                           ; $4e75: $00
    ld c, h                                       ; $4e76: $4c
    nop                                           ; $4e77: $00
    ld b, h                                       ; $4e78: $44
    nop                                           ; $4e79: $00
    ld l, h                                       ; $4e7a: $6c
    nop                                           ; $4e7b: $00
    ld b, h                                       ; $4e7c: $44
    nop                                           ; $4e7d: $00
    inc l                                         ; $4e7e: $2c
    nop                                           ; $4e7f: $00
    ld e, h                                       ; $4e80: $5c
    nop                                           ; $4e81: $00
    ld c, h                                       ; $4e82: $4c
    nop                                           ; $4e83: $00
    ld e, h                                       ; $4e84: $5c
    nop                                           ; $4e85: $00
    ld l, h                                       ; $4e86: $6c
    nop                                           ; $4e87: $00
    ld e, h                                       ; $4e88: $5c
    nop                                           ; $4e89: $00
    nop                                           ; $4e8a: $00
    nop                                           ; $4e8b: $00
    nop                                           ; $4e8c: $00
    nop                                           ; $4e8d: $00
    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    nop                                           ; $4e90: $00
    nop                                           ; $4e91: $00
    ld bc, $0300                                  ; $4e92: $01 $00 $03
    nop                                           ; $4e95: $00
    inc b                                         ; $4e96: $04
    nop                                           ; $4e97: $00
    dec b                                         ; $4e98: $05
    nop                                           ; $4e99: $00
    ld b, $00                                     ; $4e9a: $06 $00
    rlca                                          ; $4e9c: $07
    nop                                           ; $4e9d: $00
    ld [$0900], sp                                ; $4e9e: $08 $00 $09
    nop                                           ; $4ea1: $00
    inc bc                                        ; $4ea2: $03
    nop                                           ; $4ea3: $00
    inc b                                         ; $4ea4: $04
    nop                                           ; $4ea5: $00
    nop                                           ; $4ea6: $00
    nop                                           ; $4ea7: $00
    ld bc, $fc00                                  ; $4ea8: $01 $00 $fc
    rst $38                                       ; $4eab: $ff
    cp $ff                                        ; $4eac: $fe $ff
    rst $38                                       ; $4eae: $ff
    rst $38                                       ; $4eaf: $ff
    ld [bc], a                                    ; $4eb0: $02
    nop                                           ; $4eb1: $00
    db $fd                                        ; $4eb2: $fd
    rst $38                                       ; $4eb3: $ff
    inc de                                        ; $4eb4: $13
    ld c, a                                       ; $4eb5: $4f
    ld a, [de]                                    ; $4eb6: $1a
    ld c, a                                       ; $4eb7: $4f
    jp nz, Jump_000_234e                          ; $4eb8: $c2 $4e $23

    ld c, a                                       ; $4ebb: $4f
    adc c                                         ; $4ebc: $89
    ld c, a                                       ; $4ebd: $4f
    and h                                         ; $4ebe: $a4
    ld c, a                                       ; $4ebf: $4f
    xor l                                         ; $4ec0: $ad
    ld c, a                                       ; $4ec1: $4f
    dec c                                         ; $4ec2: $0d
    ld a, [hl]                                    ; $4ec3: $7e
    nop                                           ; $4ec4: $00
    dec b                                         ; $4ec5: $05
    nop                                           ; $4ec6: $00
    rlca                                          ; $4ec7: $07
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    nop                                           ; $4eca: $00
    ld b, b                                       ; $4ecb: $40
    ld bc, $0d08                                  ; $4ecc: $01 $08 $0d
    ld a, [hl]                                    ; $4ecf: $7e
    nop                                           ; $4ed0: $00
    add hl, bc                                    ; $4ed1: $09
    nop                                           ; $4ed2: $00
    rlca                                          ; $4ed3: $07
    nop                                           ; $4ed4: $00
    nop                                           ; $4ed5: $00
    nop                                           ; $4ed6: $00
    ld b, b                                       ; $4ed7: $40
    ld bc, $0d09                                  ; $4ed8: $01 $09 $0d
    ld a, [hl]                                    ; $4edb: $7e
    nop                                           ; $4edc: $00
    dec c                                         ; $4edd: $0d
    nop                                           ; $4ede: $00
    rlca                                          ; $4edf: $07
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    nop                                           ; $4ee2: $00
    ld b, b                                       ; $4ee3: $40
    ld bc, $0d12                                  ; $4ee4: $01 $12 $0d
    ld a, [hl]                                    ; $4ee7: $7e
    nop                                           ; $4ee8: $00
    ld de, $0700                                  ; $4ee9: $11 $00 $07
    nop                                           ; $4eec: $00
    nop                                           ; $4eed: $00
    nop                                           ; $4eee: $00
    ld b, b                                       ; $4eef: $40
    ld bc, $0d13                                  ; $4ef0: $01 $13 $0d
    ld a, [hl]                                    ; $4ef3: $7e
    nop                                           ; $4ef4: $00
    rlca                                          ; $4ef5: $07
    nop                                           ; $4ef6: $00
    dec bc                                        ; $4ef7: $0b
    nop                                           ; $4ef8: $00
    nop                                           ; $4ef9: $00
    nop                                           ; $4efa: $00
    ld b, b                                       ; $4efb: $40
    ld bc, $0d11                                  ; $4efc: $01 $11 $0d
    ld a, [hl]                                    ; $4eff: $7e
    nop                                           ; $4f00: $00
    rrca                                          ; $4f01: $0f
    nop                                           ; $4f02: $00
    dec bc                                        ; $4f03: $0b
    nop                                           ; $4f04: $00
    nop                                           ; $4f05: $00
    nop                                           ; $4f06: $00
    ld b, b                                       ; $4f07: $40
    ld bc, $0018                                  ; $4f08: $01 $18 $00
    nop                                           ; $4f0b: $00
    nop                                           ; $4f0c: $00
    nop                                           ; $4f0d: $00
    nop                                           ; $4f0e: $00
    nop                                           ; $4f0f: $00
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    rst $38                                       ; $4f12: $ff
    ld bc, $00c0                                  ; $4f13: $01 $c0 $00
    dec bc                                        ; $4f16: $0b
    nop                                           ; $4f17: $00
    rrca                                          ; $4f18: $0f
    rst $38                                       ; $4f19: $ff
    ld bc, $00ff                                  ; $4f1a: $01 $ff $00
    nop                                           ; $4f1d: $00
    nop                                           ; $4f1e: $00
    nop                                           ; $4f1f: $00
    inc bc                                        ; $4f20: $03
    rlca                                          ; $4f21: $07
    rst $38                                       ; $4f22: $ff
    ld [bc], a                                    ; $4f23: $02
    rst $38                                       ; $4f24: $ff
    nop                                           ; $4f25: $00
    nop                                           ; $4f26: $00
    ld l, e                                       ; $4f27: $6b
    ld bc, $0003                                  ; $4f28: $01 $03 $00
    inc bc                                        ; $4f2b: $03
    rst $38                                       ; $4f2c: $ff
    nop                                           ; $4f2d: $00
    nop                                           ; $4f2e: $00
    ld l, l                                       ; $4f2f: $6d
    ld bc, $0003                                  ; $4f30: $01 $03 $00
    inc b                                         ; $4f33: $04
    rst $38                                       ; $4f34: $ff
    nop                                           ; $4f35: $00
    nop                                           ; $4f36: $00
    ld l, a                                       ; $4f37: $6f
    ld bc, $0003                                  ; $4f38: $01 $03 $00
    dec b                                         ; $4f3b: $05
    rst $38                                       ; $4f3c: $ff
    nop                                           ; $4f3d: $00
    nop                                           ; $4f3e: $00
    ld [hl], b                                    ; $4f3f: $70
    ld bc, $0003                                  ; $4f40: $01 $03 $00
    ld b, $ff                                     ; $4f43: $06 $ff
    nop                                           ; $4f45: $00
    nop                                           ; $4f46: $00
    ld [hl], d                                    ; $4f47: $72
    ld bc, $0003                                  ; $4f48: $01 $03 $00
    rlca                                          ; $4f4b: $07
    rst $38                                       ; $4f4c: $ff
    nop                                           ; $4f4d: $00
    nop                                           ; $4f4e: $00
    ld [hl], h                                    ; $4f4f: $74
    ld bc, $0003                                  ; $4f50: $01 $03 $00
    ld [$00ff], sp                                ; $4f53: $08 $ff $00
    nop                                           ; $4f56: $00
    halt                                          ; $4f57: $76
    ld bc, $0003                                  ; $4f58: $01 $03 $00
    add hl, bc                                    ; $4f5b: $09
    rst $38                                       ; $4f5c: $ff
    nop                                           ; $4f5d: $00
    nop                                           ; $4f5e: $00
    ld [hl], a                                    ; $4f5f: $77
    ld bc, $0000                                  ; $4f60: $01 $00 $00
    ld a, [bc]                                    ; $4f63: $0a
    rst $38                                       ; $4f64: $ff
    nop                                           ; $4f65: $00
    nop                                           ; $4f66: $00
    ld a, b                                       ; $4f67: $78
    ld bc, $0001                                  ; $4f68: $01 $01 $00
    dec bc                                        ; $4f6b: $0b
    rst $38                                       ; $4f6c: $ff
    nop                                           ; $4f6d: $00
    nop                                           ; $4f6e: $00
    ld a, c                                       ; $4f6f: $79
    ld bc, $0001                                  ; $4f70: $01 $01 $00
    rst $38                                       ; $4f73: $ff
    rst $18                                       ; $4f74: $df
    nop                                           ; $4f75: $00
    ld a, [bc]                                    ; $4f76: $0a
    ld hl, $0172                                  ; $4f77: $21 $72 $01
    rst $18                                       ; $4f7a: $df
    ld c, $0a                                     ; $4f7b: $0e $0a
    ld a, $00                                     ; $4f7d: $3e $00
    rst $18                                       ; $4f7f: $df
    ld [$df0a], sp                                ; $4f80: $08 $0a $df
    ld [bc], a                                    ; $4f83: $02
    ld a, [bc]                                    ; $4f84: $0a
    rst $28                                       ; $4f85: $ef
    ld b, b                                       ; $4f86: $40
    ld [bc], a                                    ; $4f87: $02
    ret                                           ; $4f88: $c9


    ld bc, $00ff                                  ; $4f89: $01 $ff $00
    nop                                           ; $4f8c: $00
    ld h, a                                       ; $4f8d: $67
    ld a, [hl]                                    ; $4f8e: $7e
    ld b, $00                                     ; $4f8f: $06 $00
    rst $38                                       ; $4f91: $ff
    rst $18                                       ; $4f92: $df
    nop                                           ; $4f93: $00
    ld a, [bc]                                    ; $4f94: $0a
    ld hl, $0172                                  ; $4f95: $21 $72 $01
    rst $18                                       ; $4f98: $df
    ld c, $0a                                     ; $4f99: $0e $0a
    ld a, $00                                     ; $4f9b: $3e $00
    rst $18                                       ; $4f9d: $df
    ld [$df0a], sp                                ; $4f9e: $08 $0a $df
    ld [bc], a                                    ; $4fa1: $02
    ld a, [bc]                                    ; $4fa2: $0a
    ret                                           ; $4fa3: $c9


    ld bc, $00ff                                  ; $4fa4: $01 $ff $00
    nop                                           ; $4fa7: $00
    sub d                                         ; $4fa8: $92
    ld c, a                                       ; $4fa9: $4f
    nop                                           ; $4faa: $00
    nop                                           ; $4fab: $00
    rst $38                                       ; $4fac: $ff
    ret                                           ; $4fad: $c9


    rlca                                          ; $4fae: $07
    nop                                           ; $4faf: $00
    nop                                           ; $4fb0: $00
    ld [bc], a                                    ; $4fb1: $02
    ld [bc], a                                    ; $4fb2: $02
    ld bc, $0714                                  ; $4fb3: $01 $14 $07
    ret nz                                        ; $4fb6: $c0

    nop                                           ; $4fb7: $00
    ld [bc], a                                    ; $4fb8: $02
    ld [bc], a                                    ; $4fb9: $02
    ld bc, $0714                                  ; $4fba: $01 $14 $07
    ret nz                                        ; $4fbd: $c0

    nop                                           ; $4fbe: $00
    ld [bc], a                                    ; $4fbf: $02
    ld [bc], a                                    ; $4fc0: $02
    ld bc, $0714                                  ; $4fc1: $01 $14 $07
    add b                                         ; $4fc4: $80
    nop                                           ; $4fc5: $00
    ld [bc], a                                    ; $4fc6: $02
    ld [bc], a                                    ; $4fc7: $02
    ld bc, $0714                                  ; $4fc8: $01 $14 $07
    add b                                         ; $4fcb: $80
    nop                                           ; $4fcc: $00
    ld [bc], a                                    ; $4fcd: $02
    ld [bc], a                                    ; $4fce: $02
    ld bc, $0714                                  ; $4fcf: $01 $14 $07
    ld b, b                                       ; $4fd2: $40
    nop                                           ; $4fd3: $00
    ld [bc], a                                    ; $4fd4: $02
    ld [bc], a                                    ; $4fd5: $02
    ld bc, $0714                                  ; $4fd6: $01 $14 $07
    ld b, b                                       ; $4fd9: $40
    nop                                           ; $4fda: $00
    ld [bc], a                                    ; $4fdb: $02
    ld [bc], a                                    ; $4fdc: $02
    ld bc, $0714                                  ; $4fdd: $01 $14 $07
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    ld [bc], a                                    ; $4fe2: $02
    ld [bc], a                                    ; $4fe3: $02
    ld bc, $0c14                                  ; $4fe4: $01 $14 $0c
    rst $00                                       ; $4fe7: $c7
    rst $38                                       ; $4fe8: $ff

    db $00, $50, $07, $50, $f7, $4f, $30, $50, $31, $50, $32, $50, $33, $50, $00, $00
    db $00, $00, $00, $00, $00, $00, $ff, $01, $c0, $00, $09, $00, $09, $ff, $04, $ff
    db $00, $00, $00, $00, $03, $01, $05, $ff, $00, $00, $00, $00, $1e, $01

    ld b, $ff                                     ; $5017: $06 $ff
    nop                                           ; $5019: $00
    nop                                           ; $501a: $00
    nop                                           ; $501b: $00
    nop                                           ; $501c: $00
    dec h                                         ; $501d: $25
    inc bc                                        ; $501e: $03
    ld a, [bc]                                    ; $501f: $0a
    rst $38                                       ; $5020: $ff
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    rra                                           ; $5025: $1f
    ld [bc], a                                    ; $5026: $02
    dec bc                                        ; $5027: $0b
    rst $38                                       ; $5028: $ff
    nop                                           ; $5029: $00
    nop                                           ; $502a: $00
    nop                                           ; $502b: $00
    nop                                           ; $502c: $00
    rra                                           ; $502d: $1f
    ld bc, $ffff                                  ; $502e: $01 $ff $ff
    rst $38                                       ; $5031: $ff
    rst $38                                       ; $5032: $ff

    call Call_032_5037                            ; $5033: $cd $37 $50
    ret                                           ; $5036: $c9


Call_032_5037:
    xor a                                         ; $5037: $af
    ld [$cab8], a                                 ; $5038: $ea $b8 $ca
    ld [$cab9], a                                 ; $503b: $ea $b9 $ca
    ld [$caba], a                                 ; $503e: $ea $ba $ca
    ld [$cabb], a                                 ; $5041: $ea $bb $ca
    ld [$cabc], a                                 ; $5044: $ea $bc $ca
    ld [$cabd], a                                 ; $5047: $ea $bd $ca
    call Call_000_23b6                            ; $504a: $cd $b6 $23
    call Call_000_304d                            ; $504d: $cd $4d $30
    xor a                                         ; $5050: $af
    ldh [$b9], a                                  ; $5051: $e0 $b9
    ldh [$b8], a                                  ; $5053: $e0 $b8
    ld a, [$c46a]                                 ; $5055: $fa $6a $c4
    cp $01                                        ; $5058: $fe $01
    jp z, Jump_032_5080                           ; $505a: $ca $80 $50

    cp $02                                        ; $505d: $fe $02
    jp z, Jump_032_51a3                           ; $505f: $ca $a3 $51

    cp $fa                                        ; $5062: $fe $fa
    jp z, Jump_032_51a3                           ; $5064: $ca $a3 $51

    xor a                                         ; $5067: $af

jr_032_5068:
    push af                                       ; $5068: $f5
    ld hl, $cb40                                  ; $5069: $21 $40 $cb
    ld c, $04                                     ; $506c: $0e $04
    call Call_000_03a7                            ; $506e: $cd $a7 $03
    call Call_000_304d                            ; $5071: $cd $4d $30
    pop af                                        ; $5074: $f1
    rst $18                                       ; $5075: $df

    db $00, $40

    ld a, [$cb40]                                 ; $5078: $fa $40 $cb
    cp $10                                        ; $507b: $fe $10
    jp z, Jump_032_508b                           ; $507d: $ca $8b $50

Jump_032_5080:
    ld hl, $cb40                                  ; $5080: $21 $40 $cb
    ld c, $04                                     ; $5083: $0e $04
    call Call_000_03a7                            ; $5085: $cd $a7 $03
    call Call_000_304d                            ; $5088: $cd $4d $30

Jump_032_508b:
    rst $08                                       ; $508b: $cf

    db $01

    call Call_000_2b54                            ; $508d: $cd $54 $2b
    xor a                                         ; $5090: $af
    ld [$c33f], a                                 ; $5091: $ea $3f $c3
    rst $18                                       ; $5094: $df

    db $00, $09

    cp $ff                                        ; $5097: $fe $ff
    jr z, jr_032_5068                             ; $5099: $28 $cd

    or a                                          ; $509b: $b7
    jp z, Jump_032_50b1                           ; $509c: $ca $b1 $50

    cp $01                                        ; $509f: $fe $01
    jp z, Jump_032_5313                           ; $50a1: $ca $13 $53

    cp $11                                        ; $50a4: $fe $11
    jp z, Jump_032_53b8                           ; $50a6: $ca $b8 $53

    cp $02                                        ; $50a9: $fe $02
    jp z, Jump_032_54ec                           ; $50ab: $ca $ec $54

    jp Jump_032_54f2                              ; $50ae: $c3 $f2 $54


Jump_032_50b1:
    rst $08                                       ; $50b1: $cf

    db $01

    call Call_000_2b54                            ; $50b3: $cd $54 $2b
    ld de, $d658                                  ; $50b6: $11 $58 $d6
    push de                                       ; $50b9: $d5
    rst $18                                       ; $50ba: $df

    db $3c, $02

    pop hl                                        ; $50bd: $e1
    push hl                                       ; $50be: $e5
    ld b, $00                                     ; $50bf: $06 $00
    rst $18                                       ; $50c1: $df

    db $0e, $06

    rst $18                                       ; $50c4: $df

    db $0c, $06

    pop de                                        ; $50c7: $d1
    cp $ff                                        ; $50c8: $fe $ff
    jp z, Jump_032_5080                           ; $50ca: $ca $80 $50

    ld h, $00                                     ; $50cd: $26 $00
    ld l, a                                       ; $50cf: $6f
    add hl, hl                                    ; $50d0: $29
    add hl, hl                                    ; $50d1: $29
    add hl, hl                                    ; $50d2: $29
    add hl, hl                                    ; $50d3: $29
    add hl, hl                                    ; $50d4: $29
    add hl, de                                    ; $50d5: $19
    ld c, [hl]                                    ; $50d6: $4e
    inc hl                                        ; $50d7: $23
    ld b, [hl]                                    ; $50d8: $46
    ld a, $0f                                     ; $50d9: $3e $0f
    add l                                         ; $50db: $85
    ld l, a                                       ; $50dc: $6f
    jr nc, jr_032_50e0                            ; $50dd: $30 $01

    inc h                                         ; $50df: $24

jr_032_50e0:
    ld d, [hl]                                    ; $50e0: $56
    ld a, b                                       ; $50e1: $78
    and $0f                                       ; $50e2: $e6 $0f
    ld [$c2a5], a                                 ; $50e4: $ea $a5 $c2
    cp $0f                                        ; $50e7: $fe $0f
    jr nz, jr_032_5114                            ; $50e9: $20 $29

    push af                                       ; $50eb: $f5
    push bc                                       ; $50ec: $c5
    push de                                       ; $50ed: $d5
    push hl                                       ; $50ee: $e5
    rst $18                                       ; $50ef: $df

    db $14, $02

    pop hl                                        ; $50f2: $e1
    pop de                                        ; $50f3: $d1
    pop bc                                        ; $50f4: $c1
    pop af                                        ; $50f5: $f1
    push de                                       ; $50f6: $d5
    ld a, c                                       ; $50f7: $79
    and $0f                                       ; $50f8: $e6 $0f
    ld b, a                                       ; $50fa: $47
    ld c, $00                                     ; $50fb: $0e $00
    rst $18                                       ; $50fd: $df

    db $1e, $02

    ld bc, $0000                                  ; $5100: $01 $00 $00
    rst $18                                       ; $5103: $df

    db $36, $02

    pop de                                        ; $5106: $d1
    bit 0, d                                      ; $5107: $cb $42
    jr z, jr_032_5111                             ; $5109: $28 $06

    ld bc, $0100                                  ; $510b: $01 $00 $01
    rst $18                                       ; $510e: $df
    jr c, @+$04                                   ; $510f: $38 $02

jr_032_5111:
    jp Jump_032_51a3                              ; $5111: $c3 $a3 $51


jr_032_5114:
    ld b, a                                       ; $5114: $47
    xor a                                         ; $5115: $af
    ldh [$cf], a                                  ; $5116: $e0 $cf
    ld hl, $c800                                  ; $5118: $21 $00 $c8
    rst $18                                       ; $511b: $df

    db $06, $02

    or a                                          ; $511e: $b7
    jr z, jr_032_512a                             ; $511f: $28 $09

    call Call_000_2b54                            ; $5121: $cd $54 $2b
    ld a, $05                                     ; $5124: $3e $05
    ld [$c441], a                                 ; $5126: $ea $41 $c4
    ret                                           ; $5129: $c9


jr_032_512a:
    call Call_000_2cde                            ; $512a: $cd $de $2c
    xor a                                         ; $512d: $af
    dec a                                         ; $512e: $3d
    ld [$c2a7], a                                 ; $512f: $ea $a7 $c2
    ld a, [$c95e]                                 ; $5132: $fa $5e $c9
    cp $64                                        ; $5135: $fe $64
    jr nz, @+$1e                                  ; $5137: $20 $1c

    ld hl, $c95c                                  ; $5139: $21 $5c $c9
    ld a, [hl+]                                   ; $513c: $2a
    ld d, [hl]                                    ; $513d: $56
    ld e, a                                       ; $513e: $5f
    call Call_032_54b5                            ; $513f: $cd $b5 $54
    ld a, $01                                     ; $5142: $3e $01
    ld h, $01                                     ; $5144: $26 $01
    rst $18                                       ; $5146: $df
    ld [$af48], sp                                ; $5147: $08 $48 $af
    ld hl, $c95c                                  ; $514a: $21 $5c $c9
    ld [hl+], a                                   ; $514d: $22
    ld [hl+], a                                   ; $514e: $22
    ld [hl], a                                    ; $514f: $77
    rst $18                                       ; $5150: $df
    inc [hl]                                      ; $5151: $34
    ld [bc], a                                    ; $5152: $02
    rst $08                                       ; $5153: $cf
    ld bc, $50df                                  ; $5154: $01 $df $50
    ld a, [bc]                                    ; $5157: $0a
    ld a, [$c96d]                                 ; $5158: $fa $6d $c9
    cp $02                                        ; $515b: $fe $02
    jr z, jr_032_51a3                             ; $515d: $28 $44

    cp $01                                        ; $515f: $fe $01
    jr z, jr_032_516c                             ; $5161: $28 $09

    ld a, [$c450]                                 ; $5163: $fa $50 $c4
    cp $00                                        ; $5166: $fe $00
    jr nz, jr_032_516c                            ; $5168: $20 $02

    jr jr_032_51a3                                ; $516a: $18 $37

jr_032_516c:
    call Call_032_5474                            ; $516c: $cd $74 $54
    rst $18                                       ; $516f: $df
    nop                                           ; $5170: $00
    dec b                                         ; $5171: $05
    call Call_032_7d35                            ; $5172: $cd $35 $7d
    cp $ff                                        ; $5175: $fe $ff
    jp z, Jump_032_50b1                           ; $5177: $ca $b1 $50

    cp $00                                        ; $517a: $fe $00
    jr z, jr_032_5182                             ; $517c: $28 $04

    ld a, $01                                     ; $517e: $3e $01
    jr jr_032_5183                                ; $5180: $18 $01

jr_032_5182:
    xor a                                         ; $5182: $af

jr_032_5183:
    push af                                       ; $5183: $f5
    rst $18                                       ; $5184: $df
    ld [bc], a                                    ; $5185: $02
    ld a, [bc]                                    ; $5186: $0a
    ld c, $10                                     ; $5187: $0e $10
    call Call_000_25a1                            ; $5189: $cd $a1 $25
    call Call_000_2625                            ; $518c: $cd $25 $26
    pop af                                        ; $518f: $f1
    or a                                          ; $5190: $b7
    jr nz, jr_032_51a3                            ; $5191: $20 $10

    ld a, [$c96d]                                 ; $5193: $fa $6d $c9
    or a                                          ; $5196: $b7
    jr nz, jr_032_519a                            ; $5197: $20 $01

    ret                                           ; $5199: $c9


jr_032_519a:
    ld a, $ff                                     ; $519a: $3e $ff
    rst $18                                       ; $519c: $df
    ld [de], a                                    ; $519d: $12
    db $10                                        ; $519e: $10
    rst $18                                       ; $519f: $df
    jr nc, @+$12                                  ; $51a0: $30 $10

    ret                                           ; $51a2: $c9


Jump_032_51a3:
jr_032_51a3:
    ld a, $09                                     ; $51a3: $3e $09
    ld [$c834], a                                 ; $51a5: $ea $34 $c8

Jump_032_51a8:
    rst $08                                       ; $51a8: $cf

    db $01

    ld a, $00                                     ; $51aa: $3e $00
    ld [$c450], a                                 ; $51ac: $ea $50 $c4
    ld a, $02                                     ; $51af: $3e $02
    ld [$c46a], a                                 ; $51b1: $ea $6a $c4
    ld b, $80                                     ; $51b4: $06 $80
    ld c, $00                                     ; $51b6: $0e $00
    rst $18                                       ; $51b8: $df

    db $1e, $02

    xor a                                         ; $51bb: $af
    ld [$c96d], a                                 ; $51bc: $ea $6d $c9
    ld bc, $ffff                                  ; $51bf: $01 $ff $ff
    rst $18                                       ; $51c2: $df

    db $4e, $0a

    rst $28                                       ; $51c5: $ef

    db $00, $12

    rst $28                                       ; $51c8: $ef

    db $20, $12

    rst $28                                       ; $51cb: $ef

    db $40, $12

    rst $28                                       ; $51ce: $ef

    db $60, $12

    rst $18                                       ; $51d1: $df

    db $34, $02

    rst $18                                       ; $51d4: $df

    db $00, $0d

    cp $ff                                        ; $51d7: $fe $ff
    jp z, Jump_032_50b1                           ; $51d9: $ca $b1 $50

    ld [$c834], a                                 ; $51dc: $ea $34 $c8
    cp $09                                        ; $51df: $fe $09
    jp z, Jump_032_51f9                           ; $51e1: $ca $f9 $51

    cp $01                                        ; $51e4: $fe $01
    jp z, Jump_032_51ff                           ; $51e6: $ca $ff $51

    cp $02                                        ; $51e9: $fe $02
    jp z, Jump_032_5240                           ; $51eb: $ca $40 $52

    cp $03                                        ; $51ee: $fe $03
    jp z, Jump_032_52a3                           ; $51f0: $ca $a3 $52

    cp $04                                        ; $51f3: $fe $04
    jp z, Jump_032_52cd                           ; $51f5: $ca $cd $52

    ret                                           ; $51f8: $c9


Jump_032_51f9:
    ld a, $04                                     ; $51f9: $3e $04
    ld [$c441], a                                 ; $51fb: $ea $41 $c4
    ret                                           ; $51fe: $c9


Jump_032_51ff:
    call Call_032_5304                            ; $51ff: $cd $04 $53
    rst $18                                       ; $5202: $df
    nop                                           ; $5203: $00
    rrca                                          ; $5204: $0f
    cp $ff                                        ; $5205: $fe $ff
    jp z, Jump_032_51a8                           ; $5207: $ca $a8 $51

    push af                                       ; $520a: $f5
    rst $18                                       ; $520b: $df
    inc e                                         ; $520c: $1c
    db $10                                        ; $520d: $10
    pop af                                        ; $520e: $f1
    ld h, a                                       ; $520f: $67
    ld l, $01                                     ; $5210: $2e $01
    rst $18                                       ; $5212: $df
    db $10                                        ; $5213: $10
    db $10                                        ; $5214: $10
    ld bc, $ff01                                  ; $5215: $01 $01 $ff
    rst $18                                       ; $5218: $df
    ld e, $02                                     ; $5219: $1e $02
    ld a, $01                                     ; $521b: $3e $01
    ld [$c834], a                                 ; $521d: $ea $34 $c8
    rst $30                                       ; $5220: $f7
    ld b, b                                       ; $5221: $40
    add hl, bc                                    ; $5222: $09
    jr z, jr_032_522e                             ; $5223: $28 $09

    ld a, $12                                     ; $5225: $3e $12
    ld [$c837], a                                 ; $5227: $ea $37 $c8
    ld a, $01                                     ; $522a: $3e $01
    jr jr_032_5239                                ; $522c: $18 $0b

jr_032_522e:
    rst $30                                       ; $522e: $f7
    jr nz, jr_032_523a                            ; $522f: $20 $09

    jr nz, jr_032_5237                            ; $5231: $20 $04

    ld a, $12                                     ; $5233: $3e $12
    jr jr_032_5239                                ; $5235: $18 $02

jr_032_5237:
    ld a, $03                                     ; $5237: $3e $03

jr_032_5239:
    rst $18                                       ; $5239: $df

jr_032_523a:
    ld [de], a                                    ; $523a: $12
    db $10                                        ; $523b: $10
    rst $18                                       ; $523c: $df
    jr nc, jr_032_524f                            ; $523d: $30 $10

    ret                                           ; $523f: $c9


Jump_032_5240:
    ld de, $d658                                  ; $5240: $11 $58 $d6
    push de                                       ; $5243: $d5
    rst $18                                       ; $5244: $df
    ld a, $02                                     ; $5245: $3e $02
    pop hl                                        ; $5247: $e1
    push hl                                       ; $5248: $e5
    ld b, $00                                     ; $5249: $06 $00
    rst $18                                       ; $524b: $df
    ld c, $06                                     ; $524c: $0e $06
    rst $18                                       ; $524e: $df

jr_032_524f:
    inc c                                         ; $524f: $0c
    ld b, $d1                                     ; $5250: $06 $d1
    cp $ff                                        ; $5252: $fe $ff
    jp z, Jump_032_51a8                           ; $5254: $ca $a8 $51

    ld h, $00                                     ; $5257: $26 $00
    ld l, a                                       ; $5259: $6f
    add hl, hl                                    ; $525a: $29
    add hl, hl                                    ; $525b: $29
    add hl, hl                                    ; $525c: $29
    add hl, hl                                    ; $525d: $29
    add hl, hl                                    ; $525e: $29
    add hl, de                                    ; $525f: $19
    ld c, [hl]                                    ; $5260: $4e
    push bc                                       ; $5261: $c5
    rst $18                                       ; $5262: $df
    nop                                           ; $5263: $00
    rrca                                          ; $5264: $0f
    pop bc                                        ; $5265: $c1
    cp $ff                                        ; $5266: $fe $ff
    jp z, Jump_032_5240                           ; $5268: $ca $40 $52

    push bc                                       ; $526b: $c5
    push af                                       ; $526c: $f5
    rst $18                                       ; $526d: $df
    inc e                                         ; $526e: $1c
    db $10                                        ; $526f: $10
    pop af                                        ; $5270: $f1
    ld h, a                                       ; $5271: $67
    ld l, $01                                     ; $5272: $2e $01
    rst $18                                       ; $5274: $df
    db $10                                        ; $5275: $10
    db $10                                        ; $5276: $10
    pop bc                                        ; $5277: $c1
    ld b, c                                       ; $5278: $41
    ld c, $01                                     ; $5279: $0e $01
    rst $18                                       ; $527b: $df
    ld e, $02                                     ; $527c: $1e $02
    ld a, $02                                     ; $527e: $3e $02
    ld [$c834], a                                 ; $5280: $ea $34 $c8
    rst $30                                       ; $5283: $f7
    ld b, b                                       ; $5284: $40
    add hl, bc                                    ; $5285: $09
    jr z, jr_032_5291                             ; $5286: $28 $09

    ld a, $12                                     ; $5288: $3e $12
    ld [$c837], a                                 ; $528a: $ea $37 $c8
    ld a, $01                                     ; $528d: $3e $01
    jr jr_032_529c                                ; $528f: $18 $0b

jr_032_5291:
    rst $30                                       ; $5291: $f7
    jr nz, jr_032_529d                            ; $5292: $20 $09

    jr nz, jr_032_529a                            ; $5294: $20 $04

    ld a, $12                                     ; $5296: $3e $12
    jr jr_032_529c                                ; $5298: $18 $02

jr_032_529a:
    ld a, $03                                     ; $529a: $3e $03

jr_032_529c:
    rst $18                                       ; $529c: $df

jr_032_529d:
    ld [de], a                                    ; $529d: $12
    db $10                                        ; $529e: $10
    rst $18                                       ; $529f: $df
    jr nc, jr_032_52b2                            ; $52a0: $30 $10

    ret                                           ; $52a2: $c9


Jump_032_52a3:
    call Call_032_5304                            ; $52a3: $cd $04 $53
    rst $18                                       ; $52a6: $df

    db $00, $0f

    cp $ff                                        ; $52a9: $fe $ff
    jp z, Jump_032_51a8                           ; $52ab: $ca $a8 $51

    push af                                       ; $52ae: $f5
    rst $18                                       ; $52af: $df

    db $1c, $10

jr_032_52b2:
    pop af                                        ; $52b2: $f1
    ld h, a                                       ; $52b3: $67
    ld l, $01                                     ; $52b4: $2e $01
    rst $18                                       ; $52b6: $df

    db $10, $10

    ld bc, $ff01                                  ; $52b9: $01 $01 $ff
    rst $18                                       ; $52bc: $df

    db $1e, $02

    ld a, $03                                     ; $52bf: $3e $03
    ld [$c834], a                                 ; $52c1: $ea $34 $c8
    ld a, $12                                     ; $52c4: $3e $12
    rst $18                                       ; $52c6: $df

    db $12, $10

    rst $18                                       ; $52c9: $df

    db $30, $10

    ret                                           ; $52cc: $c9


Jump_032_52cd:
    ld hl, $0101                                  ; $52cd: $21 $01 $01

Jump_032_52d0:
    rst $08                                       ; $52d0: $cf

    db $01

    rst $18                                       ; $52d2: $df

    db $02, $0f

    cp $ff                                        ; $52d5: $fe $ff
    jp z, Jump_032_51a8                           ; $52d7: $ca $a8 $51

    push af                                       ; $52da: $f5
    push bc                                       ; $52db: $c5
    rst $18                                       ; $52dc: $df

    db $1c, $10

    pop bc                                        ; $52df: $c1
    pop af                                        ; $52e0: $f1
    ld h, a                                       ; $52e1: $67
    ld l, c                                       ; $52e2: $69
    push hl                                       ; $52e3: $e5
    rst $18                                       ; $52e4: $df

    db $10, $10

    ld a, $04                                     ; $52e7: $3e $04
    ld [$c834], a                                 ; $52e9: $ea $34 $c8
    ld a, $01                                     ; $52ec: $3e $01
    rst $18                                       ; $52ee: $df

    db $12, $10

    rst $18                                       ; $52f1: $df
    jr nc, jr_032_5304                            ; $52f2: $30 $10

    pop hl                                        ; $52f4: $e1
    set 7, l                                      ; $52f5: $cb $fd
    ld a, $04                                     ; $52f7: $3e $04
    ld [$c834], a                                 ; $52f9: $ea $34 $c8
    ld a, [$c96c]                                 ; $52fc: $fa $6c $c9
    or a                                          ; $52ff: $b7
    jp z, Jump_032_52d0                           ; $5300: $ca $d0 $52

    ret                                           ; $5303: $c9


Call_032_5304:
jr_032_5304:
    rst $30                                       ; $5304: $f7

    db $60, $11

    ret z                                         ; $5307: $c8

    rst $30                                       ; $5308: $f7
    ld h, b                                       ; $5309: $60
    rrca                                          ; $530a: $0f
    ret nz                                        ; $530b: $c0

    pop hl                                        ; $530c: $e1
    ld a, $06                                     ; $530d: $3e $06
    ld [$c441], a                                 ; $530f: $ea $41 $c4
    ret                                           ; $5312: $c9


Jump_032_5313:
    ld a, $01                                     ; $5313: $3e $01
    ld [$c33f], a                                 ; $5315: $ea $3f $c3
    rst $18                                       ; $5318: $df
    ld b, $4a                                     ; $5319: $06 $4a

jr_032_531b:
    call Call_000_2e3b                            ; $531b: $cd $3b $2e
    ldh a, [$c0]                                  ; $531e: $f0 $c0
    cp $20                                        ; $5320: $fe $20
    jr nz, jr_032_531b                            ; $5322: $20 $f7

    ld c, $7f                                     ; $5324: $0e $7f
    call Call_000_258a                            ; $5326: $cd $8a $25
    call Call_000_2e3b                            ; $5329: $cd $3b $2e
    call Call_000_30f8                            ; $532c: $cd $f8 $30

Jump_032_532f:
jr_032_532f:
    ld de, $d658                                  ; $532f: $11 $58 $d6
    push de                                       ; $5332: $d5
    rst $18                                       ; $5333: $df
    inc a                                         ; $5334: $3c
    ld [bc], a                                    ; $5335: $02
    pop hl                                        ; $5336: $e1
    push hl                                       ; $5337: $e5
    ld b, $00                                     ; $5338: $06 $00
    rst $18                                       ; $533a: $df
    ld c, $06                                     ; $533b: $0e $06
    rst $18                                       ; $533d: $df
    inc c                                         ; $533e: $0c
    ld b, $d1                                     ; $533f: $06 $d1
    cp $ff                                        ; $5341: $fe $ff
    jp z, Jump_032_532f                           ; $5343: $ca $2f $53

    call Call_032_5428                            ; $5346: $cd $28 $54
    ld a, $02                                     ; $5349: $3e $02
    ld [$c834], a                                 ; $534b: $ea $34 $c8

Jump_032_534e:
    rst $18                                       ; $534e: $df
    nop                                           ; $534f: $00
    dec c                                         ; $5350: $0d
    cp $ff                                        ; $5351: $fe $ff
    jr z, jr_032_532f                             ; $5353: $28 $da

    ld [$c834], a                                 ; $5355: $ea $34 $c8
    ld [$c897], a                                 ; $5358: $ea $97 $c8
    rst $18                                       ; $535b: $df
    nop                                           ; $535c: $00
    rrca                                          ; $535d: $0f
    cp $ff                                        ; $535e: $fe $ff
    jp z, Jump_032_534e                           ; $5360: $ca $4e $53

    ld [$c836], a                                 ; $5363: $ea $36 $c8
    ld hl, $c880                                  ; $5366: $21 $80 $c8
    ld de, $cb00                                  ; $5369: $11 $00 $cb
    ld c, $02                                     ; $536c: $0e $02
    call Call_000_03eb                            ; $536e: $cd $eb $03
    rst $18                                       ; $5371: $df
    ld b, $4a                                     ; $5372: $06 $4a
    ld a, $21                                     ; $5374: $3e $21
    ldh [$c9], a                                  ; $5376: $e0 $c9
    ld a, $20                                     ; $5378: $3e $20
    call Call_000_3081                            ; $537a: $cd $81 $30
    call Call_000_30eb                            ; $537d: $cd $eb $30

jr_032_5380:
    call Call_000_2e3b                            ; $5380: $cd $3b $2e
    ldh a, [$c0]                                  ; $5383: $f0 $c0
    cp $22                                        ; $5385: $fe $22
    jr z, jr_032_538b                             ; $5387: $28 $02

    jr jr_032_5380                                ; $5389: $18 $f5

jr_032_538b:
    ld a, [$c834]                                 ; $538b: $fa $34 $c8
    push af                                       ; $538e: $f5
    ld a, [$c836]                                 ; $538f: $fa $36 $c8
    push af                                       ; $5392: $f5
    rst $18                                       ; $5393: $df
    inc e                                         ; $5394: $1c
    db $10                                        ; $5395: $10
    ld bc, $8000                                  ; $5396: $01 $00 $80
    rst $18                                       ; $5399: $df
    ld e, $02                                     ; $539a: $1e $02
    ld bc, $8201                                  ; $539c: $01 $01 $82
    rst $18                                       ; $539f: $df
    ld e, $02                                     ; $53a0: $1e $02
    pop af                                        ; $53a2: $f1
    ld h, a                                       ; $53a3: $67
    ld l, $01                                     ; $53a4: $2e $01
    rst $18                                       ; $53a6: $df
    db $10                                        ; $53a7: $10
    db $10                                        ; $53a8: $10
    pop af                                        ; $53a9: $f1
    ld [$c834], a                                 ; $53aa: $ea $34 $c8
    ld a, $12                                     ; $53ad: $3e $12
    rst $18                                       ; $53af: $df
    ld [de], a                                    ; $53b0: $12
    db $10                                        ; $53b1: $10
    rst $18                                       ; $53b2: $df
    jr nc, @+$12                                  ; $53b3: $30 $10

    jp Jump_032_5080                              ; $53b5: $c3 $80 $50


Jump_032_53b8:
    ld a, $02                                     ; $53b8: $3e $02
    ld [$c33f], a                                 ; $53ba: $ea $3f $c3
    ld a, $20                                     ; $53bd: $3e $20
    ldh [$c1], a                                  ; $53bf: $e0 $c1
    call Call_000_30f8                            ; $53c1: $cd $f8 $30

Jump_032_53c4:
    ld de, $d658                                  ; $53c4: $11 $58 $d6
    push de                                       ; $53c7: $d5
    rst $18                                       ; $53c8: $df
    inc a                                         ; $53c9: $3c
    ld [bc], a                                    ; $53ca: $02
    pop hl                                        ; $53cb: $e1
    push hl                                       ; $53cc: $e5
    ld b, $00                                     ; $53cd: $06 $00
    rst $18                                       ; $53cf: $df
    ld c, $06                                     ; $53d0: $0e $06
    rst $18                                       ; $53d2: $df
    inc c                                         ; $53d3: $0c
    ld b, $d1                                     ; $53d4: $06 $d1
    cp $ff                                        ; $53d6: $fe $ff
    jp z, Jump_032_53c4                           ; $53d8: $ca $c4 $53

    call Call_032_5428                            ; $53db: $cd $28 $54
    rst $18                                       ; $53de: $df
    ld b, $4a                                     ; $53df: $06 $4a
    ld de, $cb00                                  ; $53e1: $11 $00 $cb
    ld hl, $c880                                  ; $53e4: $21 $80 $c8
    ld c, $02                                     ; $53e7: $0e $02
    call Call_000_03eb                            ; $53e9: $cd $eb $03
    ld a, $22                                     ; $53ec: $3e $22
    ldh [$c9], a                                  ; $53ee: $e0 $c9
    ld a, $20                                     ; $53f0: $3e $20
    call Call_000_3081                            ; $53f2: $cd $81 $30
    call Call_000_30eb                            ; $53f5: $cd $eb $30

jr_032_53f8:
    call Call_000_2e3b                            ; $53f8: $cd $3b $2e
    ldh a, [$c0]                                  ; $53fb: $f0 $c0
    cp $21                                        ; $53fd: $fe $21
    jr z, jr_032_5403                             ; $53ff: $28 $02

    jr jr_032_53f8                                ; $5401: $18 $f5

jr_032_5403:
    rst $18                                       ; $5403: $df
    inc e                                         ; $5404: $1c
    db $10                                        ; $5405: $10
    ld hl, $c880                                  ; $5406: $21 $80 $c8
    ld de, $c8c0                                  ; $5409: $11 $c0 $c8
    ld c, $04                                     ; $540c: $0e $04
    call Call_000_03eb                            ; $540e: $cd $eb $03
    ld bc, $8200                                  ; $5411: $01 $00 $82
    rst $18                                       ; $5414: $df
    ld e, $02                                     ; $5415: $1e $02
    ld a, [$c897]                                 ; $5417: $fa $97 $c8
    ld [$c834], a                                 ; $541a: $ea $34 $c8
    ld a, $12                                     ; $541d: $3e $12
    rst $18                                       ; $541f: $df
    ld [de], a                                    ; $5420: $12
    db $10                                        ; $5421: $10
    rst $18                                       ; $5422: $df
    jr nc, @+$12                                  ; $5423: $30 $10

    jp Jump_032_5080                              ; $5425: $c3 $80 $50


Call_032_5428:
    ld h, $00                                     ; $5428: $26 $00
    ld l, a                                       ; $542a: $6f
    add hl, hl                                    ; $542b: $29
    add hl, hl                                    ; $542c: $29
    add hl, hl                                    ; $542d: $29
    add hl, hl                                    ; $542e: $29
    add hl, hl                                    ; $542f: $29
    add hl, de                                    ; $5430: $19
    ld c, [hl]                                    ; $5431: $4e
    inc hl                                        ; $5432: $23
    ld b, [hl]                                    ; $5433: $46
    ld a, $0f                                     ; $5434: $3e $0f
    add l                                         ; $5436: $85
    ld l, a                                       ; $5437: $6f
    jr nc, jr_032_543b                            ; $5438: $30 $01

    inc h                                         ; $543a: $24

jr_032_543b:
    ld d, [hl]                                    ; $543b: $56
    ld a, b                                       ; $543c: $78
    and $0f                                       ; $543d: $e6 $0f
    ld [$c2a5], a                                 ; $543f: $ea $a5 $c2
    cp $0f                                        ; $5442: $fe $0f
    jr nz, jr_032_5462                            ; $5444: $20 $1c

    push de                                       ; $5446: $d5
    ld a, c                                       ; $5447: $79
    and $0f                                       ; $5448: $e6 $0f
    ld b, a                                       ; $544a: $47
    ld c, $00                                     ; $544b: $0e $00
    rst $18                                       ; $544d: $df
    ld e, $02                                     ; $544e: $1e $02
    ld bc, $0000                                  ; $5450: $01 $00 $00
    rst $18                                       ; $5453: $df
    ld [hl], $02                                  ; $5454: $36 $02
    pop de                                        ; $5456: $d1
    bit 0, d                                      ; $5457: $cb $42
    jr z, jr_032_5461                             ; $5459: $28 $06

    ld bc, $0100                                  ; $545b: $01 $00 $01
    rst $18                                       ; $545e: $df
    jr c, @+$04                                   ; $545f: $38 $02

jr_032_5461:
    ret                                           ; $5461: $c9


jr_032_5462:
    ld hl, $c800                                  ; $5462: $21 $00 $c8
    ld b, a                                       ; $5465: $47
    rst $18                                       ; $5466: $df
    ld b, $02                                     ; $5467: $06 $02
    call Call_000_2cde                            ; $5469: $cd $de $2c
    ld b, $80                                     ; $546c: $06 $80
    ld c, $00                                     ; $546e: $0e $00
    rst $18                                       ; $5470: $df
    ld e, $02                                     ; $5471: $1e $02
    ret                                           ; $5473: $c9


Call_032_5474:
    ldh a, [$96]                                  ; $5474: $f0 $96
    push af                                       ; $5476: $f5
    call Call_000_0341                            ; $5477: $cd $41 $03
    ld a, $02                                     ; $547a: $3e $02
    ldh [$96], a                                  ; $547c: $e0 $96
    ldh [rSVBK], a                                ; $547e: $e0 $70
    ld hl, $d000                                  ; $5480: $21 $00 $d0
    ld c, $90                                     ; $5483: $0e $90
    call Call_000_03a7                            ; $5485: $cd $a7 $03
    ld a, $03                                     ; $5488: $3e $03
    ldh [$96], a                                  ; $548a: $e0 $96
    ldh [rSVBK], a                                ; $548c: $e0 $70
    ld hl, $d000                                  ; $548e: $21 $00 $d0
    ld c, $90                                     ; $5491: $0e $90
    call Call_000_03a7                            ; $5493: $cd $a7 $03
    ld hl, $d000                                  ; $5496: $21 $00 $d0
    ld de, $9800                                  ; $5499: $11 $00 $98
    ld c, $24                                     ; $549c: $0e $24
    call Call_000_04db                            ; $549e: $cd $db $04
    ld hl, $d000                                  ; $54a1: $21 $00 $d0
    ld de, $b800                                  ; $54a4: $11 $00 $b8
    ld c, $24                                     ; $54a7: $0e $24
    call Call_000_04db                            ; $54a9: $cd $db $04
    call Call_000_0371                            ; $54ac: $cd $71 $03
    pop af                                        ; $54af: $f1
    ldh [$96], a                                  ; $54b0: $e0 $96
    ldh [rSVBK], a                                ; $54b2: $e0 $70
    ret                                           ; $54b4: $c9


Call_032_54b5:
    ld a, [$c812]                                 ; $54b5: $fa $12 $c8
    cp $0a                                        ; $54b8: $fe $0a
    jr nc, jr_032_54bd                            ; $54ba: $30 $01

    ret                                           ; $54bc: $c9


jr_032_54bd:
    cp $14                                        ; $54bd: $fe $14
    jr nc, jr_032_54cb                            ; $54bf: $30 $0a

    ld h, d                                       ; $54c1: $62
    ld l, e                                       ; $54c2: $6b
    srl d                                         ; $54c3: $cb $3a
    rr e                                          ; $54c5: $cb $1b
    add hl, de                                    ; $54c7: $19
    ld d, h                                       ; $54c8: $54
    ld e, l                                       ; $54c9: $5d
    ret                                           ; $54ca: $c9


jr_032_54cb:
    cp $1e                                        ; $54cb: $fe $1e
    jr nc, jr_032_54d5                            ; $54cd: $30 $06

    ld h, d                                       ; $54cf: $62
    ld l, e                                       ; $54d0: $6b
    add hl, de                                    ; $54d1: $19
    ld d, h                                       ; $54d2: $54
    ld e, l                                       ; $54d3: $5d
    ret                                           ; $54d4: $c9


jr_032_54d5:
    cp $28                                        ; $54d5: $fe $28
    jr nc, jr_032_54e4                            ; $54d7: $30 $0b

    ld h, d                                       ; $54d9: $62
    ld l, e                                       ; $54da: $6b
    srl d                                         ; $54db: $cb $3a
    rr e                                          ; $54dd: $cb $1b
    add hl, hl                                    ; $54df: $29
    add hl, de                                    ; $54e0: $19
    ld d, h                                       ; $54e1: $54
    ld e, l                                       ; $54e2: $5d
    ret                                           ; $54e3: $c9


jr_032_54e4:
    ld h, d                                       ; $54e4: $62
    ld l, e                                       ; $54e5: $6b
    add hl, hl                                    ; $54e6: $29
    add hl, de                                    ; $54e7: $19
    ld d, h                                       ; $54e8: $54
    ld e, l                                       ; $54e9: $5d
    ret                                           ; $54ea: $c9


    ret                                           ; $54eb: $c9


Jump_032_54ec:
    rst $18                                       ; $54ec: $df
    ld [hl+], a                                   ; $54ed: $22
    dec bc                                        ; $54ee: $0b
    jp Jump_032_5080                              ; $54ef: $c3 $80 $50


Jump_032_54f2:
    call Call_032_79d8                            ; $54f2: $cd $d8 $79
    jp Jump_032_5080                              ; $54f5: $c3 $80 $50


    rrca                                          ; $54f8: $0f
    ld d, l                                       ; $54f9: $55
    ld d, $55                                     ; $54fa: $16 $55
    ld b, $55                                     ; $54fc: $06 $55
    scf                                           ; $54fe: $37
    ld d, l                                       ; $54ff: $55
    jr c, @+$57                                   ; $5500: $38 $55

    add hl, sp                                    ; $5502: $39
    ld d, l                                       ; $5503: $55
    ld a, [hl-]                                   ; $5504: $3a
    ld d, l                                       ; $5505: $55
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    nop                                           ; $550a: $00
    nop                                           ; $550b: $00
    nop                                           ; $550c: $00
    nop                                           ; $550d: $00
    rst $38                                       ; $550e: $ff
    ld bc, $00c0                                  ; $550f: $01 $c0 $00
    add hl, bc                                    ; $5512: $09
    nop                                           ; $5513: $00
    add hl, bc                                    ; $5514: $09
    rst $38                                       ; $5515: $ff
    inc b                                         ; $5516: $04
    rst $38                                       ; $5517: $ff
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    nop                                           ; $551a: $00
    nop                                           ; $551b: $00
    inc bc                                        ; $551c: $03
    ld bc, $ff05                                  ; $551d: $01 $05 $ff
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    ld e, $01                                     ; $5524: $1e $01
    ld a, [bc]                                    ; $5526: $0a
    rst $38                                       ; $5527: $ff
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    nop                                           ; $552b: $00
    rra                                           ; $552c: $1f
    ld [bc], a                                    ; $552d: $02
    dec bc                                        ; $552e: $0b
    rst $38                                       ; $552f: $ff
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    rra                                           ; $5534: $1f
    ld bc, $ffff                                  ; $5535: $01 $ff $ff
    rst $38                                       ; $5538: $ff
    rst $38                                       ; $5539: $ff
    ret                                           ; $553a: $c9


    db $ca, $55, $f5, $55, $49, $55, $1e, $57, $00, $5c, $5b, $5d, $07, $5e, $0d, $7e
    db $00, $21, $00, $21, $00, $00, $00, $80, $01, $0c, $0d, $7e, $00, $21, $00, $1f
    db $00, $00, $00, $80, $01, $0b, $0d, $7e, $00, $1d, $00, $21, $00, $00, $00, $00
    db $01, $0a, $0d, $7e, $00, $1d, $00, $1f, $00, $00, $00, $40, $01, $0d, $0d, $7e
    db $00, $17, $00, $13, $00, $00, $00, $80, $01, $16, $0d, $7e, $00, $15, $00, $13
    db $00, $00, $00, $00, $01, $0d, $19, $7e, $00, $17, $00, $0d, $00, $00, $00, $00
    db $01, $0a, $b2, $5e, $00, $1d, $00, $0d, $00, $00, $00, $00, $01, $16, $0d, $7e
    db $00, $19, $00, $19, $00, $00, $00, $c0, $01, $17, $0d, $7e, $00, $21, $00, $13
    db $00, $00, $00, $80, $01, $0b, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $01
    db $c0, $00, $1a, $00, $29

    ld [bc], a                                    ; $55d0: $02
    ld b, b                                       ; $55d1: $40
    nop                                           ; $55d2: $00
    ld a, [de]                                    ; $55d3: $1a
    nop                                           ; $55d4: $00
    dec b                                         ; $55d5: $05
    inc bc                                        ; $55d6: $03
    ld b, b                                       ; $55d7: $40
    nop                                           ; $55d8: $00
    rlca                                          ; $55d9: $07
    nop                                           ; $55da: $00
    dec b                                         ; $55db: $05
    inc b                                         ; $55dc: $04
    ld b, b                                       ; $55dd: $40
    nop                                           ; $55de: $00
    dec b                                         ; $55df: $05
    nop                                           ; $55e0: $00
    inc de                                        ; $55e1: $13
    dec b                                         ; $55e2: $05
    ld b, b                                       ; $55e3: $40
    nop                                           ; $55e4: $00
    add hl, bc                                    ; $55e5: $09
    nop                                           ; $55e6: $00
    inc de                                        ; $55e7: $13
    ld b, $40                                     ; $55e8: $06 $40
    nop                                           ; $55ea: $00
    ld l, $00                                     ; $55eb: $2e $00
    dec b                                         ; $55ed: $05
    rlca                                          ; $55ee: $07
    ld b, b                                       ; $55ef: $40
    nop                                           ; $55f0: $00
    dec l                                         ; $55f1: $2d
    nop                                           ; $55f2: $00
    inc de                                        ; $55f3: $13
    rst $38                                       ; $55f4: $ff

    db $01, $ff

    nop                                           ; $55f7: $00
    nop                                           ; $55f8: $00
    nop                                           ; $55f9: $00
    nop                                           ; $55fa: $00
    ld [bc], a                                    ; $55fb: $02
    db $01                                        ; $55fc: $01

    db $02, $ff, $00, $00, $00, $00, $08, $01

    inc bc                                        ; $5605: $03
    rst $38                                       ; $5606: $ff
    nop                                           ; $5607: $00
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    nop                                           ; $560a: $00
    dec b                                         ; $560b: $05
    ld bc, $ff04                                  ; $560c: $01 $04 $ff
    nop                                           ; $560f: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    ld b, $01                                     ; $5613: $06 $01
    dec b                                         ; $5615: $05
    rst $38                                       ; $5616: $ff
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    ld b, $02                                     ; $561b: $06 $02
    ld b, $ff                                     ; $561d: $06 $ff
    nop                                           ; $561f: $00
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    inc b                                         ; $5623: $04
    ld bc, $ff07                                  ; $5624: $01 $07 $ff
    nop                                           ; $5627: $00
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    nop                                           ; $562a: $00
    rlca                                          ; $562b: $07
    ld bc, $ff0d                                  ; $562c: $01 $0d $ff
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    nop                                           ; $5632: $00
    ld bc, $0e01                                  ; $5633: $01 $01 $0e
    rst $38                                       ; $5636: $ff
    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    nop                                           ; $563a: $00
    dec h                                         ; $563b: $25
    ld bc, $faff                                  ; $563c: $01 $ff $fa
    sbc b                                         ; $563f: $98
    jp nz, $0011                                  ; $5640: $c2 $11 $00

    rst $38                                       ; $5643: $ff
    rst $18                                       ; $5644: $df
    ld b, b                                       ; $5645: $40
    ld a, [bc]                                    ; $5646: $0a
    ld a, [$c298]                                 ; $5647: $fa $98 $c2
    rst $18                                       ; $564a: $df
    ld b, d                                       ; $564b: $42
    ld a, [bc]                                    ; $564c: $0a
    ld a, [$c298]                                 ; $564d: $fa $98 $c2
    ld b, a                                       ; $5650: $47
    ld a, $00                                     ; $5651: $3e $00
    rst $18                                       ; $5653: $df
    jr nc, jr_032_5660                            ; $5654: $30 $0a

    ld a, [$c298]                                 ; $5656: $fa $98 $c2
    rst $18                                       ; $5659: $df
    inc d                                         ; $565a: $14
    ld a, [bc]                                    ; $565b: $0a
    push hl                                       ; $565c: $e5
    ld hl, $c290                                  ; $565d: $21 $90 $c2

jr_032_5660:
    ld a, [hl+]                                   ; $5660: $2a
    ld d, [hl]                                    ; $5661: $56
    ld e, a                                       ; $5662: $5f
    pop hl                                        ; $5663: $e1
    rst $18                                       ; $5664: $df
    ld c, h                                       ; $5665: $4c
    inc b                                         ; $5666: $04
    ld a, $0a                                     ; $5667: $3e $0a
    ld bc, $0010                                  ; $5669: $01 $10 $00
    rst $18                                       ; $566c: $df
    ld d, $0a                                     ; $566d: $16 $0a
    ld a, $0a                                     ; $566f: $3e $0a
    ld b, $01                                     ; $5671: $06 $01
    rst $18                                       ; $5673: $df
    ld a, [hl+]                                   ; $5674: $2a
    ld a, [bc]                                    ; $5675: $0a
    ld a, $0a                                     ; $5676: $3e $0a
    ld de, $ff00                                  ; $5678: $11 $00 $ff
    rst $18                                       ; $567b: $df
    ld b, b                                       ; $567c: $40
    ld a, [bc]                                    ; $567d: $0a
    ld a, $0a                                     ; $567e: $3e $0a
    ld bc, $1900                                  ; $5680: $01 $00 $19
    ld de, $1d00                                  ; $5683: $11 $00 $1d
    rst $18                                       ; $5686: $df
    ld [hl+], a                                   ; $5687: $22
    ld a, [bc]                                    ; $5688: $0a
    ld a, $0a                                     ; $5689: $3e $0a
    rst $18                                       ; $568b: $df
    ld e, $0a                                     ; $568c: $1e $0a
    ld a, $0a                                     ; $568e: $3e $0a
    ld b, $00                                     ; $5690: $06 $00
    rst $18                                       ; $5692: $df
    ld a, [hl+]                                   ; $5693: $2a
    ld a, [bc]                                    ; $5694: $0a
    ld a, $04                                     ; $5695: $3e $04
    rst $18                                       ; $5697: $df
    inc d                                         ; $5698: $14
    ld a, [bc]                                    ; $5699: $0a
    ld de, $001a                                  ; $569a: $11 $1a $00
    add hl, de                                    ; $569d: $19
    ld [hl], $00                                  ; $569e: $36 $00
    ld a, $04                                     ; $56a0: $3e $04
    ld bc, $1d00                                  ; $56a2: $01 $00 $1d
    ld de, $2500                                  ; $56a5: $11 $00 $25
    rst $18                                       ; $56a8: $df
    ld [hl+], a                                   ; $56a9: $22
    ld a, [bc]                                    ; $56aa: $0a
    ld a, $04                                     ; $56ab: $3e $04
    rst $18                                       ; $56ad: $df
    ld e, $0a                                     ; $56ae: $1e $0a
    ld a, $0a                                     ; $56b0: $3e $0a
    ld bc, $1900                                  ; $56b2: $01 $00 $19
    ld de, $1900                                  ; $56b5: $11 $00 $19
    rst $18                                       ; $56b8: $df
    ld [hl+], a                                   ; $56b9: $22
    ld a, [bc]                                    ; $56ba: $0a
    ld a, $04                                     ; $56bb: $3e $04
    ld de, $ff80                                  ; $56bd: $11 $80 $ff
    rst $18                                       ; $56c0: $df
    ld b, b                                       ; $56c1: $40
    ld a, [bc]                                    ; $56c2: $0a
    ld a, $04                                     ; $56c3: $3e $04
    rst $18                                       ; $56c5: $df
    ld b, d                                       ; $56c6: $42
    ld a, [bc]                                    ; $56c7: $0a
    ld a, $04                                     ; $56c8: $3e $04
    ld de, $ff40                                  ; $56ca: $11 $40 $ff
    rst $18                                       ; $56cd: $df
    ld b, b                                       ; $56ce: $40
    ld a, [bc]                                    ; $56cf: $0a
    ld a, $04                                     ; $56d0: $3e $04
    rst $18                                       ; $56d2: $df
    ld b, d                                       ; $56d3: $42
    ld a, [bc]                                    ; $56d4: $0a
    ld a, $04                                     ; $56d5: $3e $04
    ld de, $ff00                                  ; $56d7: $11 $00 $ff
    rst $18                                       ; $56da: $df
    ld b, b                                       ; $56db: $40
    ld a, [bc]                                    ; $56dc: $0a
    ld a, $04                                     ; $56dd: $3e $04
    rst $18                                       ; $56df: $df
    ld b, d                                       ; $56e0: $42
    ld a, [bc]                                    ; $56e1: $0a
    push af                                       ; $56e2: $f5
    ld a, $0f                                     ; $56e3: $3e $0f
    rst $18                                       ; $56e5: $df
    inc b                                         ; $56e6: $04
    ld a, [bc]                                    ; $56e7: $0a
    pop af                                        ; $56e8: $f1
    ret                                           ; $56e9: $c9


    call Call_032_62f7                            ; $56ea: $cd $f7 $62
    jp z, Jump_032_56f8                           ; $56ed: $ca $f8 $56

    ld hl, $01d1                                  ; $56f0: $21 $d1 $01
    call Call_032_5b5a                            ; $56f3: $cd $5a $5b
    jr jr_032_56fe                                ; $56f6: $18 $06

Jump_032_56f8:
    ld hl, $016b                                  ; $56f8: $21 $6b $01
    rst $18                                       ; $56fb: $df
    ld c, $0a                                     ; $56fc: $0e $0a

jr_032_56fe:
    ld a, $02                                     ; $56fe: $3e $02
    rst $18                                       ; $5700: $df
    ld [$c90a], sp                                ; $5701: $08 $0a $c9
    call Call_032_62f7                            ; $5704: $cd $f7 $62
    jp z, Jump_032_5712                           ; $5707: $ca $12 $57

    ld hl, $01db                                  ; $570a: $21 $db $01
    call Call_032_5b5a                            ; $570d: $cd $5a $5b
    jr jr_032_5718                                ; $5710: $18 $06

Jump_032_5712:
    ld hl, $016c                                  ; $5712: $21 $6c $01
    rst $18                                       ; $5715: $df
    ld c, $0a                                     ; $5716: $0e $0a

jr_032_5718:
    ld a, $03                                     ; $5718: $3e $03
    rst $18                                       ; $571a: $df
    ld [$c90a], sp                                ; $571b: $08 $0a $c9
    ld [bc], a                                    ; $571e: $02
    rst $38                                       ; $571f: $ff
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    ld [$0356], a                                 ; $5722: $ea $56 $03
    nop                                           ; $5725: $00
    inc bc                                        ; $5726: $03
    rst $38                                       ; $5727: $ff
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    inc b                                         ; $572a: $04
    ld d, a                                       ; $572b: $57
    inc bc                                        ; $572c: $03
    nop                                           ; $572d: $00
    inc b                                         ; $572e: $04
    rst $38                                       ; $572f: $ff
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    ld l, l                                       ; $5732: $6d
    ld bc, $0003                                  ; $5733: $01 $03 $00
    dec b                                         ; $5736: $05
    rst $38                                       ; $5737: $ff
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    ld l, [hl]                                    ; $573a: $6e
    ld bc, $0003                                  ; $573b: $01 $03 $00
    ld b, $ff                                     ; $573e: $06 $ff
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    ld l, a                                       ; $5742: $6f
    ld bc, $0003                                  ; $5743: $01 $03 $00
    rlca                                          ; $5746: $07
    rst $38                                       ; $5747: $ff
    nop                                           ; $5748: $00
    nop                                           ; $5749: $00
    ld [hl], b                                    ; $574a: $70
    ld bc, $0003                                  ; $574b: $01 $03 $00
    ld [$00ff], sp                                ; $574e: $08 $ff $00
    nop                                           ; $5751: $00
    ld [hl], c                                    ; $5752: $71
    ld bc, $0003                                  ; $5753: $01 $03 $00
    add hl, bc                                    ; $5756: $09
    rst $38                                       ; $5757: $ff
    nop                                           ; $5758: $00
    nop                                           ; $5759: $00
    ld [hl], d                                    ; $575a: $72
    ld bc, $0003                                  ; $575b: $01 $03 $00
    ld a, [bc]                                    ; $575e: $0a
    rst $38                                       ; $575f: $ff
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    ld [hl], e                                    ; $5762: $73
    ld bc, $0001                                  ; $5763: $01 $01 $00
    dec bc                                        ; $5766: $0b
    rst $38                                       ; $5767: $ff
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    ld [hl], h                                    ; $576a: $74
    ld bc, $0001                                  ; $576b: $01 $01 $00
    rst $38                                       ; $576e: $ff
    call Call_032_62f7                            ; $576f: $cd $f7 $62
    jp z, Jump_032_577d                           ; $5772: $ca $7d $57

    ld hl, $01d1                                  ; $5775: $21 $d1 $01
    call Call_032_5b5a                            ; $5778: $cd $5a $5b
    jr jr_032_5790                                ; $577b: $18 $13

Jump_032_577d:
    rst $30                                       ; $577d: $f7
    nop                                           ; $577e: $00
    ld de, $0828                                  ; $577f: $11 $28 $08
    ld hl, $0176                                  ; $5782: $21 $76 $01
    rst $18                                       ; $5785: $df
    ld c, $0a                                     ; $5786: $0e $0a
    jr jr_032_5790                                ; $5788: $18 $06

    ld hl, $0175                                  ; $578a: $21 $75 $01
    rst $18                                       ; $578d: $df
    ld c, $0a                                     ; $578e: $0e $0a

jr_032_5790:
    ld a, $02                                     ; $5790: $3e $02
    rst $18                                       ; $5792: $df
    ld [$c90a], sp                                ; $5793: $08 $0a $c9
    call Call_032_62f7                            ; $5796: $cd $f7 $62
    jp z, Jump_032_57a4                           ; $5799: $ca $a4 $57

    ld hl, $01db                                  ; $579c: $21 $db $01
    call Call_032_5b5a                            ; $579f: $cd $5a $5b
    jr jr_032_57b7                                ; $57a2: $18 $13

Jump_032_57a4:
    rst $30                                       ; $57a4: $f7
    nop                                           ; $57a5: $00
    ld de, $0828                                  ; $57a6: $11 $28 $08
    ld hl, $0178                                  ; $57a9: $21 $78 $01
    rst $18                                       ; $57ac: $df
    ld c, $0a                                     ; $57ad: $0e $0a
    jr jr_032_57b7                                ; $57af: $18 $06

    ld hl, $0177                                  ; $57b1: $21 $77 $01
    rst $18                                       ; $57b4: $df
    ld c, $0a                                     ; $57b5: $0e $0a

jr_032_57b7:
    ld a, $03                                     ; $57b7: $3e $03
    rst $18                                       ; $57b9: $df
    ld [$c90a], sp                                ; $57ba: $08 $0a $c9
    ld hl, $017e                                  ; $57bd: $21 $7e $01
    rst $18                                       ; $57c0: $df
    ld c, $0a                                     ; $57c1: $0e $0a
    ld a, $09                                     ; $57c3: $3e $09
    rst $18                                       ; $57c5: $df
    ld a, [bc]                                    ; $57c6: $0a
    ld a, [bc]                                    ; $57c7: $0a
    push af                                       ; $57c8: $f5
    ld a, $0a                                     ; $57c9: $3e $0a
    rst $18                                       ; $57cb: $df
    inc b                                         ; $57cc: $04
    ld a, [bc]                                    ; $57cd: $0a
    pop af                                        ; $57ce: $f1
    rst $18                                       ; $57cf: $df
    ld [de], a                                    ; $57d0: $12
    ld a, [bc]                                    ; $57d1: $0a
    rst $18                                       ; $57d2: $df
    inc c                                         ; $57d3: $0c
    ld a, [bc]                                    ; $57d4: $0a
    push af                                       ; $57d5: $f5
    ld a, $05                                     ; $57d6: $3e $05
    rst $18                                       ; $57d8: $df
    inc b                                         ; $57d9: $04
    ld a, [bc]                                    ; $57da: $0a
    pop af                                        ; $57db: $f1
    and a                                         ; $57dc: $a7
    jr nz, jr_032_57e5                            ; $57dd: $20 $06

    ld a, $09                                     ; $57df: $3e $09
    rst $18                                       ; $57e1: $df
    ld [$c90a], sp                                ; $57e2: $08 $0a $c9

jr_032_57e5:
    rst $18                                       ; $57e5: $df
    db $10                                        ; $57e6: $10
    ld a, [bc]                                    ; $57e7: $0a
    ld a, $09                                     ; $57e8: $3e $09
    rst $18                                       ; $57ea: $df
    ld [$f50a], sp                                ; $57eb: $08 $0a $f5
    ld a, $0a                                     ; $57ee: $3e $0a
    rst $18                                       ; $57f0: $df
    inc b                                         ; $57f1: $04
    ld a, [bc]                                    ; $57f2: $0a
    pop af                                        ; $57f3: $f1
    ret                                           ; $57f4: $c9


Call_032_57f5:
    call Call_032_62f7                            ; $57f5: $cd $f7 $62
    jr nz, jr_032_5804                            ; $57f8: $20 $0a

    call Call_032_62e2                            ; $57fa: $cd $e2 $62
    jr z, jr_032_580a                             ; $57fd: $28 $0b

    rst $18                                       ; $57ff: $df
    db $10                                        ; $5800: $10
    ld a, [bc]                                    ; $5801: $0a
    jr jr_032_580a                                ; $5802: $18 $06

jr_032_5804:
    rst $18                                       ; $5804: $df
    db $10                                        ; $5805: $10
    ld a, [bc]                                    ; $5806: $0a
    rst $18                                       ; $5807: $df
    db $10                                        ; $5808: $10
    ld a, [bc]                                    ; $5809: $0a

jr_032_580a:
    ld a, $0a                                     ; $580a: $3e $0a
    rst $18                                       ; $580c: $df
    ld [$f50a], sp                                ; $580d: $08 $0a $f5
    ld a, $0a                                     ; $5810: $3e $0a
    rst $18                                       ; $5812: $df
    inc b                                         ; $5813: $04
    ld a, [bc]                                    ; $5814: $0a
    pop af                                        ; $5815: $f1
    ret                                           ; $5816: $c9


    ld hl, $0181                                  ; $5817: $21 $81 $01
    rst $18                                       ; $581a: $df
    ld c, $0a                                     ; $581b: $0e $0a
    ld a, $00                                     ; $581d: $3e $00
    ld [$c4bc], a                                 ; $581f: $ea $bc $c4
    call Call_032_57f5                            ; $5822: $cd $f5 $57
    ret                                           ; $5825: $c9


    ld hl, $0195                                  ; $5826: $21 $95 $01
    rst $18                                       ; $5829: $df
    ld c, $0a                                     ; $582a: $0e $0a
    ld a, $01                                     ; $582c: $3e $01
    ld [$c4bc], a                                 ; $582e: $ea $bc $c4
    call Call_032_57f5                            ; $5831: $cd $f5 $57
    ret                                           ; $5834: $c9


    ld hl, $01a3                                  ; $5835: $21 $a3 $01
    rst $18                                       ; $5838: $df
    ld c, $0a                                     ; $5839: $0e $0a
    ld a, $02                                     ; $583b: $3e $02
    ld [$c4bc], a                                 ; $583d: $ea $bc $c4
    call Call_032_57f5                            ; $5840: $cd $f5 $57
    ret                                           ; $5843: $c9


    ld hl, $01af                                  ; $5844: $21 $af $01
    rst $18                                       ; $5847: $df
    ld c, $0a                                     ; $5848: $0e $0a
    ld a, $03                                     ; $584a: $3e $03
    ld [$c4bc], a                                 ; $584c: $ea $bc $c4
    call Call_032_57f5                            ; $584f: $cd $f5 $57
    ret                                           ; $5852: $c9


    ld [bc], a                                    ; $5853: $02
    rst $38                                       ; $5854: $ff
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    ld l, a                                       ; $5857: $6f
    ld d, a                                       ; $5858: $57
    inc bc                                        ; $5859: $03
    nop                                           ; $585a: $00
    inc bc                                        ; $585b: $03
    rst $38                                       ; $585c: $ff
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    sub [hl]                                      ; $585f: $96
    ld d, a                                       ; $5860: $57
    inc bc                                        ; $5861: $03
    nop                                           ; $5862: $00
    inc b                                         ; $5863: $04
    rst $38                                       ; $5864: $ff
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    ld a, c                                       ; $5867: $79
    ld bc, $0003                                  ; $5868: $01 $03 $00
    dec b                                         ; $586b: $05
    rst $38                                       ; $586c: $ff
    nop                                           ; $586d: $00
    nop                                           ; $586e: $00
    ld a, d                                       ; $586f: $7a
    ld bc, $0003                                  ; $5870: $01 $03 $00
    ld b, $ff                                     ; $5873: $06 $ff
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    ld a, e                                       ; $5877: $7b
    ld bc, $0003                                  ; $5878: $01 $03 $00
    rlca                                          ; $587b: $07
    rst $38                                       ; $587c: $ff
    nop                                           ; $587d: $00
    nop                                           ; $587e: $00
    ld a, h                                       ; $587f: $7c
    ld bc, $0003                                  ; $5880: $01 $03 $00
    ld [$00ff], sp                                ; $5883: $08 $ff $00
    nop                                           ; $5886: $00
    ld a, l                                       ; $5887: $7d
    ld bc, $0003                                  ; $5888: $01 $03 $00
    add hl, bc                                    ; $588b: $09
    rst $38                                       ; $588c: $ff
    nop                                           ; $588d: $00
    nop                                           ; $588e: $00
    cp l                                          ; $588f: $bd
    ld d, a                                       ; $5890: $57
    inc bc                                        ; $5891: $03
    nop                                           ; $5892: $00
    ld a, [bc]                                    ; $5893: $0a
    rst $38                                       ; $5894: $ff
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    rla                                           ; $5897: $17
    ld e, b                                       ; $5898: $58
    ld bc, $0b00                                  ; $5899: $01 $00 $0b
    rst $38                                       ; $589c: $ff
    nop                                           ; $589d: $00
    nop                                           ; $589e: $00
    add h                                         ; $589f: $84
    ld bc, $0001                                  ; $58a0: $01 $01 $00
    rst $38                                       ; $58a3: $ff
    call Call_032_62f7                            ; $58a4: $cd $f7 $62
    jp z, Jump_032_58b2                           ; $58a7: $ca $b2 $58

    ld hl, $01d1                                  ; $58aa: $21 $d1 $01
    call Call_032_5b5a                            ; $58ad: $cd $5a $5b
    jr jr_032_58c7                                ; $58b0: $18 $15

Jump_032_58b2:
    rst $30                                       ; $58b2: $f7
    jr nz, @+$13                                  ; $58b3: $20 $11

    jr z, jr_032_58bf                             ; $58b5: $28 $08

    ld hl, $0189                                  ; $58b7: $21 $89 $01
    rst $18                                       ; $58ba: $df
    ld c, $0a                                     ; $58bb: $0e $0a
    jr jr_032_58cd                                ; $58bd: $18 $0e

jr_032_58bf:
    ld hl, $0185                                  ; $58bf: $21 $85 $01
    rst $18                                       ; $58c2: $df
    ld c, $0a                                     ; $58c3: $0e $0a
    jr jr_032_58cd                                ; $58c5: $18 $06

jr_032_58c7:
    ld a, $02                                     ; $58c7: $3e $02
    rst $18                                       ; $58c9: $df
    ld [$c90a], sp                                ; $58ca: $08 $0a $c9

jr_032_58cd:
    ld a, $02                                     ; $58cd: $3e $02
    rst $18                                       ; $58cf: $df
    ld a, [bc]                                    ; $58d0: $0a
    ld a, [bc]                                    ; $58d1: $0a
    rst $18                                       ; $58d2: $df
    ld [de], a                                    ; $58d3: $12
    ld a, [bc]                                    ; $58d4: $0a
    rst $18                                       ; $58d5: $df
    inc c                                         ; $58d6: $0c
    ld a, [bc]                                    ; $58d7: $0a
    push af                                       ; $58d8: $f5
    ld a, $05                                     ; $58d9: $3e $05
    rst $18                                       ; $58db: $df
    inc b                                         ; $58dc: $04
    ld a, [bc]                                    ; $58dd: $0a
    pop af                                        ; $58de: $f1
    and a                                         ; $58df: $a7
    push af                                       ; $58e0: $f5
    ld a, $05                                     ; $58e1: $3e $05
    rst $18                                       ; $58e3: $df
    inc b                                         ; $58e4: $04
    ld a, [bc]                                    ; $58e5: $0a
    pop af                                        ; $58e6: $f1
    jr nz, jr_032_58c7                            ; $58e7: $20 $de

    rst $18                                       ; $58e9: $df
    db $10                                        ; $58ea: $10
    ld a, [bc]                                    ; $58eb: $0a
    rst $30                                       ; $58ec: $f7
    nop                                           ; $58ed: $00
    ld de, $0328                                  ; $58ee: $11 $28 $03
    rst $18                                       ; $58f1: $df
    db $10                                        ; $58f2: $10
    ld a, [bc]                                    ; $58f3: $0a
    ld a, $02                                     ; $58f4: $3e $02
    rst $18                                       ; $58f6: $df
    ld [$f50a], sp                                ; $58f7: $08 $0a $f5
    ld a, $0a                                     ; $58fa: $3e $0a
    rst $18                                       ; $58fc: $df
    inc b                                         ; $58fd: $04
    ld a, [bc]                                    ; $58fe: $0a
    pop af                                        ; $58ff: $f1
    ret                                           ; $5900: $c9


    call Call_032_62f7                            ; $5901: $cd $f7 $62
    jp z, Jump_032_590f                           ; $5904: $ca $0f $59

    ld hl, $01db                                  ; $5907: $21 $db $01
    call Call_032_5b5a                            ; $590a: $cd $5a $5b
    jr jr_032_5922                                ; $590d: $18 $13

Jump_032_590f:
    rst $30                                       ; $590f: $f7
    jr nz, @+$13                                  ; $5910: $20 $11

    jr z, jr_032_591c                             ; $5912: $28 $08

    ld hl, $018e                                  ; $5914: $21 $8e $01
    rst $18                                       ; $5917: $df
    ld c, $0a                                     ; $5918: $0e $0a
    jr jr_032_5922                                ; $591a: $18 $06

jr_032_591c:
    ld hl, $018d                                  ; $591c: $21 $8d $01
    rst $18                                       ; $591f: $df
    ld c, $0a                                     ; $5920: $0e $0a

jr_032_5922:
    ld a, $03                                     ; $5922: $3e $03
    rst $18                                       ; $5924: $df
    ld [$c90a], sp                                ; $5925: $08 $0a $c9
    ld [bc], a                                    ; $5928: $02
    rst $38                                       ; $5929: $ff
    nop                                           ; $592a: $00
    nop                                           ; $592b: $00
    and h                                         ; $592c: $a4
    ld e, b                                       ; $592d: $58
    inc bc                                        ; $592e: $03
    nop                                           ; $592f: $00
    inc bc                                        ; $5930: $03
    rst $38                                       ; $5931: $ff
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    ld bc, $0159                                  ; $5934: $01 $59 $01
    nop                                           ; $5937: $00
    inc b                                         ; $5938: $04
    rst $38                                       ; $5939: $ff
    nop                                           ; $593a: $00
    nop                                           ; $593b: $00
    adc a                                         ; $593c: $8f
    ld bc, $0003                                  ; $593d: $01 $03 $00
    dec b                                         ; $5940: $05
    rst $38                                       ; $5941: $ff
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    sub b                                         ; $5944: $90
    ld bc, $0003                                  ; $5945: $01 $03 $00
    ld b, $ff                                     ; $5948: $06 $ff
    nop                                           ; $594a: $00
    nop                                           ; $594b: $00
    sub c                                         ; $594c: $91
    ld bc, $0003                                  ; $594d: $01 $03 $00
    rlca                                          ; $5950: $07
    rst $38                                       ; $5951: $ff
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    sub d                                         ; $5954: $92
    ld bc, $0003                                  ; $5955: $01 $03 $00
    ld [$00ff], sp                                ; $5958: $08 $ff $00
    nop                                           ; $595b: $00
    sub e                                         ; $595c: $93
    ld bc, $0003                                  ; $595d: $01 $03 $00
    add hl, bc                                    ; $5960: $09
    rst $38                                       ; $5961: $ff
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    sub h                                         ; $5964: $94
    ld bc, $0003                                  ; $5965: $01 $03 $00
    ld a, [bc]                                    ; $5968: $0a
    rst $38                                       ; $5969: $ff
    nop                                           ; $596a: $00
    nop                                           ; $596b: $00
    ld h, $58                                     ; $596c: $26 $58
    ld bc, $0b00                                  ; $596e: $01 $00 $0b
    rst $38                                       ; $5971: $ff
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    sbc b                                         ; $5974: $98
    ld bc, $0001                                  ; $5975: $01 $01 $00
    rst $38                                       ; $5978: $ff
    call Call_032_62f7                            ; $5979: $cd $f7 $62
    jp z, Jump_032_5987                           ; $597c: $ca $87 $59

    ld hl, $01db                                  ; $597f: $21 $db $01
    call Call_032_5b5a                            ; $5982: $cd $5a $5b
    jr jr_032_599a                                ; $5985: $18 $13

Jump_032_5987:
    rst $30                                       ; $5987: $f7
    ld b, b                                       ; $5988: $40
    ld de, $0828                                  ; $5989: $11 $28 $08
    ld hl, $019c                                  ; $598c: $21 $9c $01
    rst $18                                       ; $598f: $df
    ld c, $0a                                     ; $5990: $0e $0a
    jr jr_032_599a                                ; $5992: $18 $06

    ld hl, $019b                                  ; $5994: $21 $9b $01
    rst $18                                       ; $5997: $df
    ld c, $0a                                     ; $5998: $0e $0a

jr_032_599a:
    ld a, $03                                     ; $599a: $3e $03
    rst $18                                       ; $599c: $df
    ld [$c90a], sp                                ; $599d: $08 $0a $c9
    call Call_032_62f7                            ; $59a0: $cd $f7 $62
    jp z, Jump_032_59ae                           ; $59a3: $ca $ae $59

    ld hl, $01d1                                  ; $59a6: $21 $d1 $01
    call Call_032_5b5a                            ; $59a9: $cd $5a $5b
    jr jr_032_59c1                                ; $59ac: $18 $13

Jump_032_59ae:
    rst $30                                       ; $59ae: $f7
    ld b, b                                       ; $59af: $40
    ld de, $0828                                  ; $59b0: $11 $28 $08
    ld hl, $019a                                  ; $59b3: $21 $9a $01
    rst $18                                       ; $59b6: $df
    ld c, $0a                                     ; $59b7: $0e $0a
    jr jr_032_59c1                                ; $59b9: $18 $06

    ld hl, $0199                                  ; $59bb: $21 $99 $01
    rst $18                                       ; $59be: $df
    ld c, $0a                                     ; $59bf: $0e $0a

jr_032_59c1:
    ld a, $03                                     ; $59c1: $3e $03
    rst $18                                       ; $59c3: $df
    ld [$c90a], sp                                ; $59c4: $08 $0a $c9
    ld [bc], a                                    ; $59c7: $02
    rst $38                                       ; $59c8: $ff
    nop                                           ; $59c9: $00
    nop                                           ; $59ca: $00
    and b                                         ; $59cb: $a0
    ld e, c                                       ; $59cc: $59
    inc bc                                        ; $59cd: $03
    nop                                           ; $59ce: $00
    inc bc                                        ; $59cf: $03
    rst $38                                       ; $59d0: $ff
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00
    ld a, c                                       ; $59d3: $79
    ld e, c                                       ; $59d4: $59
    inc bc                                        ; $59d5: $03
    nop                                           ; $59d6: $00
    inc b                                         ; $59d7: $04
    rst $38                                       ; $59d8: $ff
    nop                                           ; $59d9: $00
    nop                                           ; $59da: $00
    sbc l                                         ; $59db: $9d
    ld bc, $0003                                  ; $59dc: $01 $03 $00
    dec b                                         ; $59df: $05
    rst $38                                       ; $59e0: $ff
    nop                                           ; $59e1: $00
    nop                                           ; $59e2: $00
    sbc [hl]                                      ; $59e3: $9e
    ld bc, $0003                                  ; $59e4: $01 $03 $00
    ld b, $ff                                     ; $59e7: $06 $ff
    nop                                           ; $59e9: $00
    nop                                           ; $59ea: $00
    sbc a                                         ; $59eb: $9f
    ld bc, $0003                                  ; $59ec: $01 $03 $00
    rlca                                          ; $59ef: $07
    rst $38                                       ; $59f0: $ff
    nop                                           ; $59f1: $00
    nop                                           ; $59f2: $00
    and b                                         ; $59f3: $a0
    ld bc, $0003                                  ; $59f4: $01 $03 $00
    ld [$00ff], sp                                ; $59f7: $08 $ff $00
    nop                                           ; $59fa: $00
    and c                                         ; $59fb: $a1
    ld bc, $0003                                  ; $59fc: $01 $03 $00
    add hl, bc                                    ; $59ff: $09
    rst $38                                       ; $5a00: $ff
    nop                                           ; $5a01: $00
    nop                                           ; $5a02: $00
    and d                                         ; $5a03: $a2
    ld bc, $0003                                  ; $5a04: $01 $03 $00
    ld a, [bc]                                    ; $5a07: $0a
    rst $38                                       ; $5a08: $ff
    nop                                           ; $5a09: $00
    nop                                           ; $5a0a: $00
    dec [hl]                                      ; $5a0b: $35
    ld e, b                                       ; $5a0c: $58
    ld bc, $0b00                                  ; $5a0d: $01 $00 $0b
    rst $38                                       ; $5a10: $ff
    nop                                           ; $5a11: $00
    nop                                           ; $5a12: $00
    and [hl]                                      ; $5a13: $a6
    ld bc, $0001                                  ; $5a14: $01 $01 $00
    rst $38                                       ; $5a17: $ff
    call Call_032_62f7                            ; $5a18: $cd $f7 $62
    jp z, Jump_032_5a26                           ; $5a1b: $ca $26 $5a

    ld hl, $01d1                                  ; $5a1e: $21 $d1 $01
    call Call_032_5b5a                            ; $5a21: $cd $5a $5b
    jr jr_032_5a2c                                ; $5a24: $18 $06

Jump_032_5a26:
    ld hl, $01a7                                  ; $5a26: $21 $a7 $01
    rst $18                                       ; $5a29: $df
    ld c, $0a                                     ; $5a2a: $0e $0a

jr_032_5a2c:
    ld a, $03                                     ; $5a2c: $3e $03
    rst $18                                       ; $5a2e: $df
    ld [$c90a], sp                                ; $5a2f: $08 $0a $c9
    call Call_032_62f7                            ; $5a32: $cd $f7 $62
    jp z, Jump_032_5a40                           ; $5a35: $ca $40 $5a

    ld hl, $01db                                  ; $5a38: $21 $db $01
    call Call_032_5b5a                            ; $5a3b: $cd $5a $5b
    jr jr_032_5a46                                ; $5a3e: $18 $06

Jump_032_5a40:
    ld hl, $01a8                                  ; $5a40: $21 $a8 $01
    rst $18                                       ; $5a43: $df
    ld c, $0a                                     ; $5a44: $0e $0a

jr_032_5a46:
    ld a, $03                                     ; $5a46: $3e $03
    rst $18                                       ; $5a48: $df
    ld [$c90a], sp                                ; $5a49: $08 $0a $c9
    ld [bc], a                                    ; $5a4c: $02
    rst $38                                       ; $5a4d: $ff
    nop                                           ; $5a4e: $00
    nop                                           ; $5a4f: $00
    jr @+$5c                                      ; $5a50: $18 $5a

    inc bc                                        ; $5a52: $03
    nop                                           ; $5a53: $00
    inc bc                                        ; $5a54: $03
    rst $38                                       ; $5a55: $ff
    nop                                           ; $5a56: $00
    nop                                           ; $5a57: $00
    ld [hl-], a                                   ; $5a58: $32
    ld e, d                                       ; $5a59: $5a
    inc bc                                        ; $5a5a: $03
    nop                                           ; $5a5b: $00
    inc b                                         ; $5a5c: $04
    rst $38                                       ; $5a5d: $ff
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    xor c                                         ; $5a60: $a9
    ld bc, $0003                                  ; $5a61: $01 $03 $00
    dec b                                         ; $5a64: $05
    rst $38                                       ; $5a65: $ff
    nop                                           ; $5a66: $00
    nop                                           ; $5a67: $00
    xor d                                         ; $5a68: $aa
    ld bc, $0003                                  ; $5a69: $01 $03 $00
    ld b, $ff                                     ; $5a6c: $06 $ff
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    xor e                                         ; $5a70: $ab
    ld bc, $0003                                  ; $5a71: $01 $03 $00
    rlca                                          ; $5a74: $07
    rst $38                                       ; $5a75: $ff
    nop                                           ; $5a76: $00
    nop                                           ; $5a77: $00
    xor h                                         ; $5a78: $ac
    ld bc, $0003                                  ; $5a79: $01 $03 $00
    ld [$00ff], sp                                ; $5a7c: $08 $ff $00
    nop                                           ; $5a7f: $00
    xor l                                         ; $5a80: $ad
    ld bc, $0003                                  ; $5a81: $01 $03 $00
    add hl, bc                                    ; $5a84: $09
    rst $38                                       ; $5a85: $ff
    nop                                           ; $5a86: $00
    nop                                           ; $5a87: $00
    xor [hl]                                      ; $5a88: $ae
    ld bc, $0003                                  ; $5a89: $01 $03 $00
    ld a, [bc]                                    ; $5a8c: $0a
    rst $38                                       ; $5a8d: $ff
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    ld b, h                                       ; $5a90: $44
    ld e, b                                       ; $5a91: $58
    ld bc, $0b00                                  ; $5a92: $01 $00 $0b
    rst $38                                       ; $5a95: $ff
    nop                                           ; $5a96: $00
    nop                                           ; $5a97: $00
    or d                                          ; $5a98: $b2
    ld bc, $0001                                  ; $5a99: $01 $01 $00
    rst $38                                       ; $5a9c: $ff
    call Call_032_62f7                            ; $5a9d: $cd $f7 $62
    jp z, Jump_032_5aab                           ; $5aa0: $ca $ab $5a

    ld hl, $01d1                                  ; $5aa3: $21 $d1 $01
    call Call_032_5b5a                            ; $5aa6: $cd $5a $5b
    jr jr_032_5ab1                                ; $5aa9: $18 $06

Jump_032_5aab:
    ld hl, $01b3                                  ; $5aab: $21 $b3 $01
    rst $18                                       ; $5aae: $df
    ld c, $0a                                     ; $5aaf: $0e $0a

jr_032_5ab1:
    ld a, $02                                     ; $5ab1: $3e $02
    rst $18                                       ; $5ab3: $df
    ld [$c90a], sp                                ; $5ab4: $08 $0a $c9
    call Call_032_62f7                            ; $5ab7: $cd $f7 $62
    jp z, Jump_032_5ac5                           ; $5aba: $ca $c5 $5a

    ld hl, $01db                                  ; $5abd: $21 $db $01
    call Call_032_5b5a                            ; $5ac0: $cd $5a $5b
    jr jr_032_5acb                                ; $5ac3: $18 $06

Jump_032_5ac5:
    ld hl, $01b4                                  ; $5ac5: $21 $b4 $01
    rst $18                                       ; $5ac8: $df
    ld c, $0a                                     ; $5ac9: $0e $0a

jr_032_5acb:
    ld a, $03                                     ; $5acb: $3e $03
    rst $18                                       ; $5acd: $df
    ld [$c90a], sp                                ; $5ace: $08 $0a $c9
    ld hl, $01b6                                  ; $5ad1: $21 $b6 $01
    rst $18                                       ; $5ad4: $df
    ld c, $0a                                     ; $5ad5: $0e $0a
    ld a, $05                                     ; $5ad7: $3e $05
    rst $18                                       ; $5ad9: $df
    ld a, [bc]                                    ; $5ada: $0a
    ld a, [bc]                                    ; $5adb: $0a
    push af                                       ; $5adc: $f5
    ld a, $0a                                     ; $5add: $3e $0a
    rst $18                                       ; $5adf: $df
    inc b                                         ; $5ae0: $04
    ld a, [bc]                                    ; $5ae1: $0a
    pop af                                        ; $5ae2: $f1
    rst $18                                       ; $5ae3: $df
    ld [de], a                                    ; $5ae4: $12
    ld a, [bc]                                    ; $5ae5: $0a
    rst $18                                       ; $5ae6: $df
    inc c                                         ; $5ae7: $0c
    ld a, [bc]                                    ; $5ae8: $0a
    push af                                       ; $5ae9: $f5
    ld a, $05                                     ; $5aea: $3e $05
    rst $18                                       ; $5aec: $df
    inc b                                         ; $5aed: $04
    ld a, [bc]                                    ; $5aee: $0a
    pop af                                        ; $5aef: $f1
    and a                                         ; $5af0: $a7
    jr z, jr_032_5afc                             ; $5af1: $28 $09

    rst $18                                       ; $5af3: $df
    db $10                                        ; $5af4: $10
    ld a, [bc]                                    ; $5af5: $0a
    ld a, $05                                     ; $5af6: $3e $05
    rst $18                                       ; $5af8: $df
    ld [$c90a], sp                                ; $5af9: $08 $0a $c9

jr_032_5afc:
    ld a, $05                                     ; $5afc: $3e $05
    rst $18                                       ; $5afe: $df
    ld [$f50a], sp                                ; $5aff: $08 $0a $f5
    ld a, $0a                                     ; $5b02: $3e $0a
    rst $18                                       ; $5b04: $df
    inc b                                         ; $5b05: $04
    ld a, [bc]                                    ; $5b06: $0a
    pop af                                        ; $5b07: $f1
    ret                                           ; $5b08: $c9


    ld [bc], a                                    ; $5b09: $02
    rst $38                                       ; $5b0a: $ff
    nop                                           ; $5b0b: $00
    nop                                           ; $5b0c: $00
    sbc l                                         ; $5b0d: $9d
    ld e, d                                       ; $5b0e: $5a
    inc bc                                        ; $5b0f: $03
    nop                                           ; $5b10: $00
    inc bc                                        ; $5b11: $03
    rst $38                                       ; $5b12: $ff
    nop                                           ; $5b13: $00
    nop                                           ; $5b14: $00
    or a                                          ; $5b15: $b7
    ld e, d                                       ; $5b16: $5a
    inc bc                                        ; $5b17: $03
    nop                                           ; $5b18: $00
    inc b                                         ; $5b19: $04
    rst $38                                       ; $5b1a: $ff
    nop                                           ; $5b1b: $00
    nop                                           ; $5b1c: $00
    or l                                          ; $5b1d: $b5
    ld bc, $0003                                  ; $5b1e: $01 $03 $00
    dec b                                         ; $5b21: $05
    rst $38                                       ; $5b22: $ff
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    pop de                                        ; $5b25: $d1
    ld e, d                                       ; $5b26: $5a
    inc bc                                        ; $5b27: $03
    nop                                           ; $5b28: $00
    ld b, $ff                                     ; $5b29: $06 $ff
    nop                                           ; $5b2b: $00
    nop                                           ; $5b2c: $00
    cp c                                          ; $5b2d: $b9
    ld bc, $0003                                  ; $5b2e: $01 $03 $00
    rlca                                          ; $5b31: $07
    rst $38                                       ; $5b32: $ff
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    cp d                                          ; $5b35: $ba
    ld bc, $0003                                  ; $5b36: $01 $03 $00
    ld [$00ff], sp                                ; $5b39: $08 $ff $00
    nop                                           ; $5b3c: $00
    cp e                                          ; $5b3d: $bb
    ld bc, $0003                                  ; $5b3e: $01 $03 $00
    add hl, bc                                    ; $5b41: $09
    rst $38                                       ; $5b42: $ff
    nop                                           ; $5b43: $00
    nop                                           ; $5b44: $00
    cp h                                          ; $5b45: $bc
    ld bc, $0003                                  ; $5b46: $01 $03 $00
    ld a, [bc]                                    ; $5b49: $0a
    rst $38                                       ; $5b4a: $ff
    nop                                           ; $5b4b: $00
    nop                                           ; $5b4c: $00
    cp l                                          ; $5b4d: $bd
    ld bc, $0001                                  ; $5b4e: $01 $01 $00
    dec bc                                        ; $5b51: $0b
    rst $38                                       ; $5b52: $ff
    nop                                           ; $5b53: $00
    nop                                           ; $5b54: $00
    cp [hl]                                       ; $5b55: $be
    ld bc, $0001                                  ; $5b56: $01 $01 $00
    rst $38                                       ; $5b59: $ff

Call_032_5b5a:
    rst $30                                       ; $5b5a: $f7
    ld h, b                                       ; $5b5b: $60
    ld [de], a                                    ; $5b5c: $12
    jr z, jr_032_5b6c                             ; $5b5d: $28 $0d

    rst $30                                       ; $5b5f: $f7
    ld h, b                                       ; $5b60: $60
    ld de, $0428                                  ; $5b61: $11 $28 $04
    ld a, $09                                     ; $5b64: $3e $09
    jr jr_032_5bb2                                ; $5b66: $18 $4a

    ld a, $08                                     ; $5b68: $3e $08
    jr jr_032_5bb2                                ; $5b6a: $18 $46

jr_032_5b6c:
    rst $30                                       ; $5b6c: $f7
    ld b, b                                       ; $5b6d: $40
    ld [de], a                                    ; $5b6e: $12
    jr z, jr_032_5b7e                             ; $5b6f: $28 $0d

    rst $30                                       ; $5b71: $f7
    ld b, b                                       ; $5b72: $40
    ld de, $0428                                  ; $5b73: $11 $28 $04
    ld a, $07                                     ; $5b76: $3e $07
    jr jr_032_5bb2                                ; $5b78: $18 $38

    ld a, $06                                     ; $5b7a: $3e $06
    jr jr_032_5bb2                                ; $5b7c: $18 $34

jr_032_5b7e:
    rst $30                                       ; $5b7e: $f7
    jr nz, jr_032_5b93                            ; $5b7f: $20 $12

    jr z, jr_032_5ba2                             ; $5b81: $28 $1f

    rst $30                                       ; $5b83: $f7
    jr nz, @+$13                                  ; $5b84: $20 $11

    jr z, jr_032_5b8c                             ; $5b86: $28 $04

    ld a, $05                                     ; $5b88: $3e $05
    jr jr_032_5bb2                                ; $5b8a: $18 $26

jr_032_5b8c:
    rst $30                                       ; $5b8c: $f7
    ld b, b                                       ; $5b8d: $40
    ld c, $28                                     ; $5b8e: $0e $28
    inc b                                         ; $5b90: $04
    ld a, $04                                     ; $5b91: $3e $04

jr_032_5b93:
    jr jr_032_5bb2                                ; $5b93: $18 $1d

    rst $30                                       ; $5b95: $f7
    jr nz, @+$10                                  ; $5b96: $20 $0e

    jr z, jr_032_5b9e                             ; $5b98: $28 $04

    ld a, $03                                     ; $5b9a: $3e $03
    jr jr_032_5bb2                                ; $5b9c: $18 $14

jr_032_5b9e:
    ld a, $02                                     ; $5b9e: $3e $02
    jr jr_032_5bb2                                ; $5ba0: $18 $10

jr_032_5ba2:
    rst $30                                       ; $5ba2: $f7
    nop                                           ; $5ba3: $00
    ld [de], a                                    ; $5ba4: $12
    jr z, jr_032_5bb2                             ; $5ba5: $28 $0b

    rst $30                                       ; $5ba7: $f7
    nop                                           ; $5ba8: $00
    ld de, $0428                                  ; $5ba9: $11 $28 $04
    ld a, $01                                     ; $5bac: $3e $01
    jr jr_032_5bb2                                ; $5bae: $18 $02

    ld a, $00                                     ; $5bb0: $3e $00

jr_032_5bb2:
    add l                                         ; $5bb2: $85
    ld l, a                                       ; $5bb3: $6f
    jr nc, jr_032_5bb7                            ; $5bb4: $30 $01

    inc h                                         ; $5bb6: $24

jr_032_5bb7:
    rst $18                                       ; $5bb7: $df
    ld c, $0a                                     ; $5bb8: $0e $0a
    call Call_032_5bbe                            ; $5bba: $cd $be $5b
    ret                                           ; $5bbd: $c9


Call_032_5bbe:
    rst $30                                       ; $5bbe: $f7
    ld h, b                                       ; $5bbf: $60
    ld de, $0428                                  ; $5bc0: $11 $28 $04
    ld a, $05                                     ; $5bc3: $3e $05
    jr jr_032_5be6                                ; $5bc5: $18 $1f

    rst $30                                       ; $5bc7: $f7
    ld h, b                                       ; $5bc8: $60
    ld c, $28                                     ; $5bc9: $0e $28
    inc b                                         ; $5bcb: $04
    ld a, $04                                     ; $5bcc: $3e $04
    jr jr_032_5be6                                ; $5bce: $18 $16

    rst $30                                       ; $5bd0: $f7
    ld b, b                                       ; $5bd1: $40
    ld c, $28                                     ; $5bd2: $0e $28
    inc b                                         ; $5bd4: $04
    ld a, $04                                     ; $5bd5: $3e $04
    jr jr_032_5be6                                ; $5bd7: $18 $0d

    rst $30                                       ; $5bd9: $f7
    jr nz, jr_032_5bea                            ; $5bda: $20 $0e

    jr z, jr_032_5be2                             ; $5bdc: $28 $04

    ld a, $03                                     ; $5bde: $3e $03
    jr jr_032_5be6                                ; $5be0: $18 $04

jr_032_5be2:
    ld a, $02                                     ; $5be2: $3e $02
    jr jr_032_5be6                                ; $5be4: $18 $00

jr_032_5be6:
    rst $18                                       ; $5be6: $df
    ld e, d                                       ; $5be7: $5a
    dec b                                         ; $5be8: $05
    ret                                           ; $5be9: $c9


jr_032_5bea:
    call Call_000_0a61                            ; $5bea: $cd $61 $0a
    ld a, l                                       ; $5bed: $7d
    and $03                                       ; $5bee: $e6 $03
    add $e5                                       ; $5bf0: $c6 $e5
    ld l, a                                       ; $5bf2: $6f
    adc $01                                       ; $5bf3: $ce $01
    sub l                                         ; $5bf5: $95
    ld h, a                                       ; $5bf6: $67
    rst $18                                       ; $5bf7: $df
    ld c, $0a                                     ; $5bf8: $0e $0a
    ld a, $ff                                     ; $5bfa: $3e $ff
    rst $18                                       ; $5bfc: $df
    ld [$c90a], sp                                ; $5bfd: $08 $0a $c9
    ld [bc], a                                    ; $5c00: $02
    rst $38                                       ; $5c01: $ff
    nop                                           ; $5c02: $00
    nop                                           ; $5c03: $00
    ld [$015b], a                                 ; $5c04: $ea $5b $01
    nop                                           ; $5c07: $00
    rst $38                                       ; $5c08: $ff

    ld a, $02                                     ; $5c09: $3e $02
    ld [$c441], a                                 ; $5c0b: $ea $41 $c4
    rst $08                                       ; $5c0e: $cf

    db $92

    ld c, $08                                     ; $5c10: $0e $08
    call Call_000_25a1                            ; $5c12: $cd $a1 $25
    push af                                       ; $5c15: $f5
    ld a, $1e                                     ; $5c16: $3e $1e
    rst $18                                       ; $5c18: $df

    db $04, $0a

    pop af                                        ; $5c1b: $f1
    ret                                           ; $5c1c: $c9


jr_032_5c1d:
    ld a, $01                                     ; $5c1d: $3e $01
    ld [$c441], a                                 ; $5c1f: $ea $41 $c4
    rst $08                                       ; $5c22: $cf
    sub d                                         ; $5c23: $92
    ret                                           ; $5c24: $c9


    rst $30                                       ; $5c25: $f7
    ld h, b                                       ; $5c26: $60
    ld de, $f328                                  ; $5c27: $11 $28 $f3
    rst $30                                       ; $5c2a: $f7
    and b                                         ; $5c2b: $a0
    ld [de], a                                    ; $5c2c: $12
    jr nz, jr_032_5c1d                            ; $5c2d: $20 $ee

    rst $30                                       ; $5c2f: $f7
    ldh [rIF], a                                  ; $5c30: $e0 $0f
    jr nz, jr_032_5c1d                            ; $5c32: $20 $e9

    ld hl, $01ce                                  ; $5c34: $21 $ce $01
    jr jr_032_5c39                                ; $5c37: $18 $00

jr_032_5c39:
    rst $18                                       ; $5c39: $df
    ld c, $0a                                     ; $5c3a: $0e $0a
    ld a, $0a                                     ; $5c3c: $3e $0a
    ld b, $40                                     ; $5c3e: $06 $40
    rst $18                                       ; $5c40: $df
    inc l                                         ; $5c41: $2c
    ld a, [bc]                                    ; $5c42: $0a
    ld bc, $0040                                  ; $5c43: $01 $40 $00
    rst $18                                       ; $5c46: $df
    ld [hl], $0a                                  ; $5c47: $36 $0a
    xor a                                         ; $5c49: $af
    ld bc, $1900                                  ; $5c4a: $01 $00 $19
    ld de, $1d00                                  ; $5c4d: $11 $00 $1d
    rst $18                                       ; $5c50: $df
    jr c, jr_032_5c5d                             ; $5c51: $38 $0a

    rst $18                                       ; $5c53: $df
    inc a                                         ; $5c54: $3c
    ld a, [bc]                                    ; $5c55: $0a
    push af                                       ; $5c56: $f5
    ld a, $05                                     ; $5c57: $3e $05
    rst $18                                       ; $5c59: $df
    inc b                                         ; $5c5a: $04
    ld a, [bc]                                    ; $5c5b: $0a
    pop af                                        ; $5c5c: $f1

jr_032_5c5d:
    ld a, $0a                                     ; $5c5d: $3e $0a
    rst $18                                       ; $5c5f: $df
    ld a, [bc]                                    ; $5c60: $0a
    ld a, [bc]                                    ; $5c61: $0a
    rst $18                                       ; $5c62: $df
    ld [de], a                                    ; $5c63: $12
    ld a, [bc]                                    ; $5c64: $0a
    rst $18                                       ; $5c65: $df
    inc c                                         ; $5c66: $0c
    ld a, [bc]                                    ; $5c67: $0a
    push af                                       ; $5c68: $f5
    ld a, $05                                     ; $5c69: $3e $05
    rst $18                                       ; $5c6b: $df
    inc b                                         ; $5c6c: $04
    ld a, [bc]                                    ; $5c6d: $0a
    pop af                                        ; $5c6e: $f1
    and a                                         ; $5c6f: $a7
    jr z, jr_032_5c98                             ; $5c70: $28 $26

    rst $18                                       ; $5c72: $df
    db $10                                        ; $5c73: $10
    ld a, [bc]                                    ; $5c74: $0a
    ld a, $0a                                     ; $5c75: $3e $0a
    rst $18                                       ; $5c77: $df
    ld [$af0a], sp                                ; $5c78: $08 $0a $af
    ld bc, $1a00                                  ; $5c7b: $01 $00 $1a
    ld de, $2500                                  ; $5c7e: $11 $00 $25
    rst $18                                       ; $5c81: $df
    jr c, jr_032_5c8e                             ; $5c82: $38 $0a

    ld a, $00                                     ; $5c84: $3e $00
    ld bc, $1a00                                  ; $5c86: $01 $00 $1a
    ld de, $2500                                  ; $5c89: $11 $00 $25
    rst $18                                       ; $5c8c: $df
    ld [hl+], a                                   ; $5c8d: $22

jr_032_5c8e:
    ld a, [bc]                                    ; $5c8e: $0a
    ld a, $00                                     ; $5c8f: $3e $00
    rst $18                                       ; $5c91: $df
    ld e, $0a                                     ; $5c92: $1e $0a
    rst $18                                       ; $5c94: $df
    inc a                                         ; $5c95: $3c
    ld a, [bc]                                    ; $5c96: $0a
    ret                                           ; $5c97: $c9


jr_032_5c98:
    rst $20                                       ; $5c98: $e7
    and b                                         ; $5c99: $a0
    ld [de], a                                    ; $5c9a: $12
    ld a, $0a                                     ; $5c9b: $3e $0a
    rst $18                                       ; $5c9d: $df
    ld [$f50a], sp                                ; $5c9e: $08 $0a $f5
    ld a, $0a                                     ; $5ca1: $3e $0a
    rst $18                                       ; $5ca3: $df
    inc b                                         ; $5ca4: $04
    ld a, [bc]                                    ; $5ca5: $0a
    pop af                                        ; $5ca6: $f1
    ld a, $01                                     ; $5ca7: $3e $01
    ld [$c441], a                                 ; $5ca9: $ea $41 $c4
    rst $08                                       ; $5cac: $cf
    sub d                                         ; $5cad: $92
    ret                                           ; $5cae: $c9


    rst $18                                       ; $5caf: $df
    inc a                                         ; $5cb0: $3c
    ld a, [bc]                                    ; $5cb1: $0a
    ld a, $00                                     ; $5cb2: $3e $00
    ld bc, $0008                                  ; $5cb4: $01 $08 $00
    rst $18                                       ; $5cb7: $df
    ld d, $0a                                     ; $5cb8: $16 $0a
    ld a, $00                                     ; $5cba: $3e $00
    ld b, $c0                                     ; $5cbc: $06 $c0
    ld de, $0200                                  ; $5cbe: $11 $00 $02
    rst $18                                       ; $5cc1: $df
    jr z, jr_032_5cce                             ; $5cc2: $28 $0a

    call Call_032_5ef5                            ; $5cc4: $cd $f5 $5e
    ld a, $03                                     ; $5cc7: $3e $03
    ld [$c441], a                                 ; $5cc9: $ea $41 $c4
    rst $08                                       ; $5ccc: $cf
    sub d                                         ; $5ccd: $92

jr_032_5cce:
    ret                                           ; $5cce: $c9


    rst $18                                       ; $5ccf: $df
    inc a                                         ; $5cd0: $3c
    ld a, [bc]                                    ; $5cd1: $0a
    ld a, $00                                     ; $5cd2: $3e $00
    ld bc, $0008                                  ; $5cd4: $01 $08 $00
    rst $18                                       ; $5cd7: $df
    ld d, $0a                                     ; $5cd8: $16 $0a
    ld a, $00                                     ; $5cda: $3e $00
    ld b, $c0                                     ; $5cdc: $06 $c0
    ld de, $0200                                  ; $5cde: $11 $00 $02
    rst $18                                       ; $5ce1: $df
    jr z, jr_032_5cee                             ; $5ce2: $28 $0a

    call Call_032_5fbe                            ; $5ce4: $cd $be $5f
    ld a, $04                                     ; $5ce7: $3e $04
    ld [$c441], a                                 ; $5ce9: $ea $41 $c4
    rst $08                                       ; $5cec: $cf
    sub d                                         ; $5ced: $92

jr_032_5cee:
    ret                                           ; $5cee: $c9


    rst $18                                       ; $5cef: $df
    inc a                                         ; $5cf0: $3c
    ld a, [bc]                                    ; $5cf1: $0a
    ld a, $00                                     ; $5cf2: $3e $00
    ld bc, $0008                                  ; $5cf4: $01 $08 $00
    rst $18                                       ; $5cf7: $df
    ld d, $0a                                     ; $5cf8: $16 $0a
    ld a, $00                                     ; $5cfa: $3e $00
    ld b, $c0                                     ; $5cfc: $06 $c0
    ld de, $0200                                  ; $5cfe: $11 $00 $02
    rst $18                                       ; $5d01: $df
    jr z, jr_032_5d0e                             ; $5d02: $28 $0a

    call Call_032_6087                            ; $5d04: $cd $87 $60
    ld a, $05                                     ; $5d07: $3e $05
    ld [$c441], a                                 ; $5d09: $ea $41 $c4
    rst $08                                       ; $5d0c: $cf
    sub d                                         ; $5d0d: $92

jr_032_5d0e:
    ret                                           ; $5d0e: $c9


    rst $18                                       ; $5d0f: $df
    inc a                                         ; $5d10: $3c
    ld a, [bc]                                    ; $5d11: $0a
    ld a, $00                                     ; $5d12: $3e $00
    ld bc, $0008                                  ; $5d14: $01 $08 $00
    rst $18                                       ; $5d17: $df
    ld d, $0a                                     ; $5d18: $16 $0a
    ld a, $00                                     ; $5d1a: $3e $00
    ld b, $c0                                     ; $5d1c: $06 $c0
    ld de, $0200                                  ; $5d1e: $11 $00 $02
    rst $18                                       ; $5d21: $df
    jr z, jr_032_5d2e                             ; $5d22: $28 $0a

    call Call_032_6150                            ; $5d24: $cd $50 $61
    ld a, $06                                     ; $5d27: $3e $06
    ld [$c441], a                                 ; $5d29: $ea $41 $c4
    rst $08                                       ; $5d2c: $cf
    sub d                                         ; $5d2d: $92

jr_032_5d2e:
    ret                                           ; $5d2e: $c9


    rst $18                                       ; $5d2f: $df
    inc a                                         ; $5d30: $3c
    ld a, [bc]                                    ; $5d31: $0a
    ld a, $00                                     ; $5d32: $3e $00
    ld bc, $0008                                  ; $5d34: $01 $08 $00
    rst $18                                       ; $5d37: $df
    ld d, $0a                                     ; $5d38: $16 $0a
    ld a, $00                                     ; $5d3a: $3e $00
    ld b, $c0                                     ; $5d3c: $06 $c0
    ld de, $0200                                  ; $5d3e: $11 $00 $02
    rst $18                                       ; $5d41: $df
    jr z, jr_032_5d4e                             ; $5d42: $28 $0a

    call Call_032_6219                            ; $5d44: $cd $19 $62
    ld a, $07                                     ; $5d47: $3e $07
    ld [$c441], a                                 ; $5d49: $ea $41 $c4
    rst $08                                       ; $5d4c: $cf
    sub d                                         ; $5d4d: $92

jr_032_5d4e:
    ret                                           ; $5d4e: $c9


    ld hl, $01c2                                  ; $5d4f: $21 $c2 $01
    rst $18                                       ; $5d52: $df
    ld c, $0a                                     ; $5d53: $0e $0a
    ld a, $0a                                     ; $5d55: $3e $0a
    rst $18                                       ; $5d57: $df
    ld [$c90a], sp                                ; $5d58: $08 $0a $c9

    db $01, $ff

    nop                                           ; $5d5d: $00
    nop                                           ; $5d5e: $00
    dec h                                         ; $5d5f: $25
    ld e, h                                       ; $5d60: $5c
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00

    db $02, $ff, $00, $00, $09, $5c, $00, $00

    inc bc                                        ; $5d6b: $03
    rst $38                                       ; $5d6c: $ff
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    xor a                                         ; $5d6f: $af
    ld e, h                                       ; $5d70: $5c
    nop                                           ; $5d71: $00
    nop                                           ; $5d72: $00
    inc b                                         ; $5d73: $04
    rst $38                                       ; $5d74: $ff
    nop                                           ; $5d75: $00
    nop                                           ; $5d76: $00
    rst $08                                       ; $5d77: $cf
    ld e, h                                       ; $5d78: $5c
    nop                                           ; $5d79: $00
    nop                                           ; $5d7a: $00
    dec b                                         ; $5d7b: $05
    rst $38                                       ; $5d7c: $ff
    nop                                           ; $5d7d: $00
    nop                                           ; $5d7e: $00
    rst $28                                       ; $5d7f: $ef
    ld e, h                                       ; $5d80: $5c
    nop                                           ; $5d81: $00
    nop                                           ; $5d82: $00
    ld b, $ff                                     ; $5d83: $06 $ff
    nop                                           ; $5d85: $00
    nop                                           ; $5d86: $00
    rrca                                          ; $5d87: $0f
    ld e, l                                       ; $5d88: $5d
    nop                                           ; $5d89: $00
    nop                                           ; $5d8a: $00
    rlca                                          ; $5d8b: $07
    rst $38                                       ; $5d8c: $ff
    nop                                           ; $5d8d: $00
    nop                                           ; $5d8e: $00
    cpl                                           ; $5d8f: $2f
    ld e, l                                       ; $5d90: $5d
    nop                                           ; $5d91: $00
    nop                                           ; $5d92: $00
    rst $38                                       ; $5d93: $ff

Call_032_5d94:
    push de                                       ; $5d94: $d5
    call Call_000_0699                            ; $5d95: $cd $99 $06
    ld a, $00                                     ; $5d98: $3e $00
    ld bc, $000a                                  ; $5d9a: $01 $0a $00
    rst $18                                       ; $5d9d: $df
    ld d, $0a                                     ; $5d9e: $16 $0a
    ld a, $00                                     ; $5da0: $3e $00
    ld b, $40                                     ; $5da2: $06 $40
    ld de, $0200                                  ; $5da4: $11 $00 $02
    rst $18                                       ; $5da7: $df
    jr z, @+$0c                                   ; $5da8: $28 $0a

    ld a, [$c298]                                 ; $5daa: $fa $98 $c2
    cp $ff                                        ; $5dad: $fe $ff
    jr z, jr_032_5dc1                             ; $5daf: $28 $10

    ld a, a                                       ; $5db1: $7f
    ld bc, $000a                                  ; $5db2: $01 $0a $00
    rst $18                                       ; $5db5: $df
    ld d, $0a                                     ; $5db6: $16 $0a
    ld a, a                                       ; $5db8: $7f
    ld b, $40                                     ; $5db9: $06 $40
    ld de, $0200                                  ; $5dbb: $11 $00 $02
    rst $18                                       ; $5dbe: $df
    jr z, jr_032_5dcb                             ; $5dbf: $28 $0a

jr_032_5dc1:
    ld c, $08                                     ; $5dc1: $0e $08
    call Call_000_25af                            ; $5dc3: $cd $af $25
    call Call_000_2625                            ; $5dc6: $cd $25 $26
    pop de                                        ; $5dc9: $d1
    ld l, e                                       ; $5dca: $6b

jr_032_5dcb:
    ld h, d                                       ; $5dcb: $62
    call Call_000_0699                            ; $5dcc: $cd $99 $06
    ld a, $00                                     ; $5dcf: $3e $00
    rst $18                                       ; $5dd1: $df
    ld e, $0a                                     ; $5dd2: $1e $0a
    ret                                           ; $5dd4: $c9


Jump_032_5dd5:
    ld hl, $5f4e                                  ; $5dd5: $21 $4e $5f
    ld de, $5f65                                  ; $5dd8: $11 $65 $5f
    call Call_032_5d94                            ; $5ddb: $cd $94 $5d
    ret                                           ; $5dde: $c9


Jump_032_5ddf:
    ld hl, $6017                                  ; $5ddf: $21 $17 $60
    ld de, $602e                                  ; $5de2: $11 $2e $60
    call Call_032_5d94                            ; $5de5: $cd $94 $5d
    ret                                           ; $5de8: $c9


Jump_032_5de9:
    ld hl, $60e0                                  ; $5de9: $21 $e0 $60
    ld de, $60f7                                  ; $5dec: $11 $f7 $60
    call Call_032_5d94                            ; $5def: $cd $94 $5d
    ret                                           ; $5df2: $c9


Jump_032_5df3:
    ld hl, $61a9                                  ; $5df3: $21 $a9 $61
    ld de, $61c0                                  ; $5df6: $11 $c0 $61
    call Call_032_5d94                            ; $5df9: $cd $94 $5d
    ret                                           ; $5dfc: $c9


Jump_032_5dfd:
    ld hl, $6272                                  ; $5dfd: $21 $72 $62
    ld de, $6289                                  ; $5e00: $11 $89 $62
    call Call_032_5d94                            ; $5e03: $cd $94 $5d
    ret                                           ; $5e06: $c9


    ld a, $00                                     ; $5e07: $3e $00
    ld [$c967], a                                 ; $5e09: $ea $67 $c9
    ld a, [$c46a]                                 ; $5e0c: $fa $6a $c4
    cp $01                                        ; $5e0f: $fe $01
    jr nz, jr_032_5e25                            ; $5e11: $20 $12

    rst $30                                       ; $5e13: $f7

    db $a0, $0e

    jp z, Jump_032_5e25                           ; $5e16: $ca $25 $5e

    rst $30                                       ; $5e19: $f7
    nop                                           ; $5e1a: $00
    rrca                                          ; $5e1b: $0f
    jp nz, Jump_032_5e25                          ; $5e1c: $c2 $25 $5e

    ld a, $0e                                     ; $5e1f: $3e $0e
    ld [$c441], a                                 ; $5e21: $ea $41 $c4
    ret                                           ; $5e24: $c9


Jump_032_5e25:
jr_032_5e25:
    rst $30                                       ; $5e25: $f7

    db $60, $11

    jr z, jr_032_5e35                             ; $5e28: $28 $0b

    ld hl, $5b09                                  ; $5e2a: $21 $09 $5b
    ld de, $000c                                  ; $5e2d: $11 $0c $00
    rst $18                                       ; $5e30: $df
    ld c, h                                       ; $5e31: $4c
    ld a, [bc]                                    ; $5e32: $0a
    jr jr_032_5e89                                ; $5e33: $18 $54

jr_032_5e35:
    rst $30                                       ; $5e35: $f7

    db $60, $0e

    jr z, jr_032_5e50                             ; $5e38: $28 $16

    ld hl, $5a4c                                  ; $5e3a: $21 $4c $5a
    ld de, $000c                                  ; $5e3d: $11 $0c $00
    rst $18                                       ; $5e40: $df
    ld c, h                                       ; $5e41: $4c
    ld a, [bc]                                    ; $5e42: $0a
    ldh a, [$95]                                  ; $5e43: $f0 $95
    ld b, a                                       ; $5e45: $47
    ld a, $09                                     ; $5e46: $3e $09
    ld de, $7e19                                  ; $5e48: $11 $19 $7e
    rst $18                                       ; $5e4b: $df
    jr jr_032_5e58                                ; $5e4c: $18 $0a

    jr jr_032_5e89                                ; $5e4e: $18 $39

jr_032_5e50:
    rst $30                                       ; $5e50: $f7

    db $40, $0e

    jr z, jr_032_5e6b                             ; $5e53: $28 $16

    ld hl, $59c7                                  ; $5e55: $21 $c7 $59

jr_032_5e58:
    ld de, $000c                                  ; $5e58: $11 $0c $00
    rst $18                                       ; $5e5b: $df
    ld c, h                                       ; $5e5c: $4c
    ld a, [bc]                                    ; $5e5d: $0a
    ldh a, [$95]                                  ; $5e5e: $f0 $95
    ld b, a                                       ; $5e60: $47
    ld a, $09                                     ; $5e61: $3e $09
    ld de, $7e19                                  ; $5e63: $11 $19 $7e
    rst $18                                       ; $5e66: $df
    jr jr_032_5e73                                ; $5e67: $18 $0a

    jr jr_032_5e89                                ; $5e69: $18 $1e

jr_032_5e6b:
    rst $30                                       ; $5e6b: $f7

    db $20, $0e

    jr z, jr_032_5e7b                             ; $5e6e: $28 $0b

    ld hl, $5928                                  ; $5e70: $21 $28 $59

jr_032_5e73:
    ld de, $000c                                  ; $5e73: $11 $0c $00
    rst $18                                       ; $5e76: $df
    ld c, h                                       ; $5e77: $4c
    ld a, [bc]                                    ; $5e78: $0a
    jr jr_032_5e89                                ; $5e79: $18 $0e

jr_032_5e7b:
    rst $30                                       ; $5e7b: $f7

    db $00, $0e

    jr z, jr_032_5e89                             ; $5e7e: $28 $09

    ld hl, $5853                                  ; $5e80: $21 $53 $58
    ld de, $000c                                  ; $5e83: $11 $0c $00
    rst $18                                       ; $5e86: $df
    ld c, h                                       ; $5e87: $4c
    ld a, [bc]                                    ; $5e88: $0a

jr_032_5e89:
    ld a, [$c46a]                                 ; $5e89: $fa $6a $c4
    cp $03                                        ; $5e8c: $fe $03
    jp z, Jump_032_5dd5                           ; $5e8e: $ca $d5 $5d

    ld a, [$c46a]                                 ; $5e91: $fa $6a $c4
    cp $04                                        ; $5e94: $fe $04
    jp z, Jump_032_5ddf                           ; $5e96: $ca $df $5d

    ld a, [$c46a]                                 ; $5e99: $fa $6a $c4
    cp $05                                        ; $5e9c: $fe $05
    jp z, Jump_032_5de9                           ; $5e9e: $ca $e9 $5d

    ld a, [$c46a]                                 ; $5ea1: $fa $6a $c4
    cp $06                                        ; $5ea4: $fe $06
    jp z, Jump_032_5df3                           ; $5ea6: $ca $f3 $5d

    ld a, [$c46a]                                 ; $5ea9: $fa $6a $c4
    cp $07                                        ; $5eac: $fe $07
    jp z, Jump_032_5dfd                           ; $5eae: $ca $fd $5d

    ret                                           ; $5eb1: $c9


    db $0d, $0e, $08, $00, $0d, $1b, $01, $00, $07, $00, $00, $02, $02, $01, $28, $07
    db $c0, $00, $02, $02, $01, $28, $07, $c0, $00, $02, $02, $01, $28, $07, $80, $00
    db $02, $02, $01, $28, $07, $80, $00, $02, $02, $01, $28, $07, $40, $00, $02, $02

    ld bc, $0728                                  ; $5ee2: $01 $28 $07
    ld b, b                                       ; $5ee5: $40
    nop                                           ; $5ee6: $00
    ld [bc], a                                    ; $5ee7: $02
    ld [bc], a                                    ; $5ee8: $02
    ld bc, $0728                                  ; $5ee9: $01 $28 $07
    nop                                           ; $5eec: $00
    nop                                           ; $5eed: $00
    ld [bc], a                                    ; $5eee: $02
    ld [bc], a                                    ; $5eef: $02
    ld bc, $0c28                                  ; $5ef0: $01 $28 $0c
    rst $00                                       ; $5ef3: $c7
    rst $38                                       ; $5ef4: $ff

Call_032_5ef5:
    ld b, $02                                     ; $5ef5: $06 $02
    ld c, $3c                                     ; $5ef7: $0e $3c
    ld d, $06                                     ; $5ef9: $16 $06
    ld e, $04                                     ; $5efb: $1e $04
    ld h, $02                                     ; $5efd: $26 $02
    ld l, $02                                     ; $5eff: $2e $02
    rst $18                                       ; $5f01: $df
    ld a, [bc]                                    ; $5f02: $0a
    dec bc                                        ; $5f03: $0b
    push af                                       ; $5f04: $f5
    ld a, $03                                     ; $5f05: $3e $03
    rst $18                                       ; $5f07: $df
    inc b                                         ; $5f08: $04
    ld a, [bc]                                    ; $5f09: $0a
    pop af                                        ; $5f0a: $f1
    ld b, $04                                     ; $5f0b: $06 $04
    ld c, $3c                                     ; $5f0d: $0e $3c
    ld d, $06                                     ; $5f0f: $16 $06
    ld e, $04                                     ; $5f11: $1e $04
    ld h, $02                                     ; $5f13: $26 $02
    ld l, $02                                     ; $5f15: $2e $02
    rst $18                                       ; $5f17: $df
    ld a, [bc]                                    ; $5f18: $0a
    dec bc                                        ; $5f19: $0b
    push af                                       ; $5f1a: $f5
    ld a, $03                                     ; $5f1b: $3e $03
    rst $18                                       ; $5f1d: $df
    inc b                                         ; $5f1e: $04
    ld a, [bc]                                    ; $5f1f: $0a
    pop af                                        ; $5f20: $f1
    ld b, $06                                     ; $5f21: $06 $06
    ld c, $3c                                     ; $5f23: $0e $3c
    ld d, $06                                     ; $5f25: $16 $06
    ld e, $04                                     ; $5f27: $1e $04
    ld h, $02                                     ; $5f29: $26 $02
    ld l, $02                                     ; $5f2b: $2e $02
    rst $18                                       ; $5f2d: $df
    ld a, [bc]                                    ; $5f2e: $0a
    dec bc                                        ; $5f2f: $0b
    push af                                       ; $5f30: $f5
    ld a, $03                                     ; $5f31: $3e $03
    rst $18                                       ; $5f33: $df
    inc b                                         ; $5f34: $04
    ld a, [bc]                                    ; $5f35: $0a
    pop af                                        ; $5f36: $f1
    ld b, $08                                     ; $5f37: $06 $08
    ld c, $3c                                     ; $5f39: $0e $3c
    ld d, $06                                     ; $5f3b: $16 $06
    ld e, $04                                     ; $5f3d: $1e $04
    ld h, $02                                     ; $5f3f: $26 $02
    ld l, $02                                     ; $5f41: $2e $02
    rst $18                                       ; $5f43: $df
    ld a, [bc]                                    ; $5f44: $0a
    dec bc                                        ; $5f45: $0b
    push af                                       ; $5f46: $f5
    ld a, $03                                     ; $5f47: $3e $03
    rst $18                                       ; $5f49: $df
    inc b                                         ; $5f4a: $04
    ld a, [bc]                                    ; $5f4b: $0a
    pop af                                        ; $5f4c: $f1
    ret                                           ; $5f4d: $c9


    ld b, $08                                     ; $5f4e: $06 $08
    ld c, $3c                                     ; $5f50: $0e $3c
    ld d, $06                                     ; $5f52: $16 $06
    ld e, $04                                     ; $5f54: $1e $04
    ld h, $02                                     ; $5f56: $26 $02
    ld l, $02                                     ; $5f58: $2e $02
    rst $18                                       ; $5f5a: $df
    ld a, [bc]                                    ; $5f5b: $0a
    dec bc                                        ; $5f5c: $0b
    push af                                       ; $5f5d: $f5
    ld a, $03                                     ; $5f5e: $3e $03
    rst $18                                       ; $5f60: $df
    inc b                                         ; $5f61: $04
    ld a, [bc]                                    ; $5f62: $0a
    pop af                                        ; $5f63: $f1
    ret                                           ; $5f64: $c9


    ld b, $06                                     ; $5f65: $06 $06
    ld c, $3c                                     ; $5f67: $0e $3c
    ld d, $06                                     ; $5f69: $16 $06
    ld e, $04                                     ; $5f6b: $1e $04
    ld h, $02                                     ; $5f6d: $26 $02
    ld l, $02                                     ; $5f6f: $2e $02
    rst $18                                       ; $5f71: $df
    ld a, [bc]                                    ; $5f72: $0a
    dec bc                                        ; $5f73: $0b
    push af                                       ; $5f74: $f5
    ld a, $03                                     ; $5f75: $3e $03
    rst $18                                       ; $5f77: $df
    inc b                                         ; $5f78: $04
    ld a, [bc]                                    ; $5f79: $0a
    pop af                                        ; $5f7a: $f1
    ld b, $04                                     ; $5f7b: $06 $04
    ld c, $3c                                     ; $5f7d: $0e $3c
    ld d, $06                                     ; $5f7f: $16 $06
    ld e, $04                                     ; $5f81: $1e $04
    ld h, $02                                     ; $5f83: $26 $02
    ld l, $02                                     ; $5f85: $2e $02
    rst $18                                       ; $5f87: $df
    ld a, [bc]                                    ; $5f88: $0a
    dec bc                                        ; $5f89: $0b
    push af                                       ; $5f8a: $f5
    ld a, $03                                     ; $5f8b: $3e $03
    rst $18                                       ; $5f8d: $df
    inc b                                         ; $5f8e: $04
    ld a, [bc]                                    ; $5f8f: $0a
    pop af                                        ; $5f90: $f1
    ld b, $02                                     ; $5f91: $06 $02
    ld c, $3c                                     ; $5f93: $0e $3c
    ld d, $06                                     ; $5f95: $16 $06
    ld e, $04                                     ; $5f97: $1e $04
    ld h, $02                                     ; $5f99: $26 $02
    ld l, $02                                     ; $5f9b: $2e $02
    rst $18                                       ; $5f9d: $df
    ld a, [bc]                                    ; $5f9e: $0a
    dec bc                                        ; $5f9f: $0b
    push af                                       ; $5fa0: $f5
    ld a, $03                                     ; $5fa1: $3e $03
    rst $18                                       ; $5fa3: $df
    inc b                                         ; $5fa4: $04
    ld a, [bc]                                    ; $5fa5: $0a
    pop af                                        ; $5fa6: $f1
    ld b, $00                                     ; $5fa7: $06 $00
    ld c, $3c                                     ; $5fa9: $0e $3c
    ld d, $06                                     ; $5fab: $16 $06
    ld e, $04                                     ; $5fad: $1e $04
    ld h, $02                                     ; $5faf: $26 $02
    ld l, $02                                     ; $5fb1: $2e $02
    rst $18                                       ; $5fb3: $df
    ld a, [bc]                                    ; $5fb4: $0a
    dec bc                                        ; $5fb5: $0b
    push af                                       ; $5fb6: $f5
    ld a, $03                                     ; $5fb7: $3e $03
    rst $18                                       ; $5fb9: $df
    inc b                                         ; $5fba: $04
    ld a, [bc]                                    ; $5fbb: $0a
    pop af                                        ; $5fbc: $f1
    ret                                           ; $5fbd: $c9


Call_032_5fbe:
    ld b, $02                                     ; $5fbe: $06 $02
    ld c, $3c                                     ; $5fc0: $0e $3c
    ld d, $04                                     ; $5fc2: $16 $04
    ld e, $12                                     ; $5fc4: $1e $12
    ld h, $02                                     ; $5fc6: $26 $02
    ld l, $02                                     ; $5fc8: $2e $02
    rst $18                                       ; $5fca: $df
    ld a, [bc]                                    ; $5fcb: $0a
    dec bc                                        ; $5fcc: $0b
    push af                                       ; $5fcd: $f5
    ld a, $03                                     ; $5fce: $3e $03
    rst $18                                       ; $5fd0: $df
    inc b                                         ; $5fd1: $04
    ld a, [bc]                                    ; $5fd2: $0a
    pop af                                        ; $5fd3: $f1
    ld b, $04                                     ; $5fd4: $06 $04
    ld c, $3c                                     ; $5fd6: $0e $3c
    ld d, $04                                     ; $5fd8: $16 $04
    ld e, $12                                     ; $5fda: $1e $12
    ld h, $02                                     ; $5fdc: $26 $02
    ld l, $02                                     ; $5fde: $2e $02
    rst $18                                       ; $5fe0: $df
    ld a, [bc]                                    ; $5fe1: $0a
    dec bc                                        ; $5fe2: $0b
    push af                                       ; $5fe3: $f5
    ld a, $03                                     ; $5fe4: $3e $03
    rst $18                                       ; $5fe6: $df
    inc b                                         ; $5fe7: $04
    ld a, [bc]                                    ; $5fe8: $0a
    pop af                                        ; $5fe9: $f1
    ld b, $06                                     ; $5fea: $06 $06
    ld c, $3c                                     ; $5fec: $0e $3c
    ld d, $04                                     ; $5fee: $16 $04
    ld e, $12                                     ; $5ff0: $1e $12
    ld h, $02                                     ; $5ff2: $26 $02
    ld l, $02                                     ; $5ff4: $2e $02
    rst $18                                       ; $5ff6: $df
    ld a, [bc]                                    ; $5ff7: $0a
    dec bc                                        ; $5ff8: $0b
    push af                                       ; $5ff9: $f5
    ld a, $03                                     ; $5ffa: $3e $03
    rst $18                                       ; $5ffc: $df
    inc b                                         ; $5ffd: $04
    ld a, [bc]                                    ; $5ffe: $0a
    pop af                                        ; $5fff: $f1
    ld b, $08                                     ; $6000: $06 $08
    ld c, $3c                                     ; $6002: $0e $3c
    ld d, $04                                     ; $6004: $16 $04
    ld e, $12                                     ; $6006: $1e $12
    ld h, $02                                     ; $6008: $26 $02
    ld l, $02                                     ; $600a: $2e $02
    rst $18                                       ; $600c: $df
    ld a, [bc]                                    ; $600d: $0a
    dec bc                                        ; $600e: $0b
    push af                                       ; $600f: $f5
    ld a, $03                                     ; $6010: $3e $03
    rst $18                                       ; $6012: $df
    inc b                                         ; $6013: $04
    ld a, [bc]                                    ; $6014: $0a
    pop af                                        ; $6015: $f1
    ret                                           ; $6016: $c9


    ld b, $08                                     ; $6017: $06 $08
    ld c, $3c                                     ; $6019: $0e $3c
    ld d, $04                                     ; $601b: $16 $04
    ld e, $12                                     ; $601d: $1e $12
    ld h, $02                                     ; $601f: $26 $02
    ld l, $02                                     ; $6021: $2e $02
    rst $18                                       ; $6023: $df
    ld a, [bc]                                    ; $6024: $0a
    dec bc                                        ; $6025: $0b
    push af                                       ; $6026: $f5
    ld a, $03                                     ; $6027: $3e $03
    rst $18                                       ; $6029: $df
    inc b                                         ; $602a: $04
    ld a, [bc]                                    ; $602b: $0a
    pop af                                        ; $602c: $f1
    ret                                           ; $602d: $c9


    ld b, $06                                     ; $602e: $06 $06
    ld c, $3c                                     ; $6030: $0e $3c
    ld d, $04                                     ; $6032: $16 $04
    ld e, $12                                     ; $6034: $1e $12
    ld h, $02                                     ; $6036: $26 $02
    ld l, $02                                     ; $6038: $2e $02
    rst $18                                       ; $603a: $df
    ld a, [bc]                                    ; $603b: $0a
    dec bc                                        ; $603c: $0b
    push af                                       ; $603d: $f5
    ld a, $03                                     ; $603e: $3e $03
    rst $18                                       ; $6040: $df
    inc b                                         ; $6041: $04
    ld a, [bc]                                    ; $6042: $0a
    pop af                                        ; $6043: $f1
    ld b, $04                                     ; $6044: $06 $04
    ld c, $3c                                     ; $6046: $0e $3c
    ld d, $04                                     ; $6048: $16 $04
    ld e, $12                                     ; $604a: $1e $12
    ld h, $02                                     ; $604c: $26 $02
    ld l, $02                                     ; $604e: $2e $02
    rst $18                                       ; $6050: $df
    ld a, [bc]                                    ; $6051: $0a
    dec bc                                        ; $6052: $0b
    push af                                       ; $6053: $f5
    ld a, $03                                     ; $6054: $3e $03
    rst $18                                       ; $6056: $df
    inc b                                         ; $6057: $04
    ld a, [bc]                                    ; $6058: $0a
    pop af                                        ; $6059: $f1
    ld b, $02                                     ; $605a: $06 $02
    ld c, $3c                                     ; $605c: $0e $3c
    ld d, $04                                     ; $605e: $16 $04
    ld e, $12                                     ; $6060: $1e $12
    ld h, $02                                     ; $6062: $26 $02
    ld l, $02                                     ; $6064: $2e $02
    rst $18                                       ; $6066: $df
    ld a, [bc]                                    ; $6067: $0a
    dec bc                                        ; $6068: $0b
    push af                                       ; $6069: $f5
    ld a, $03                                     ; $606a: $3e $03
    rst $18                                       ; $606c: $df
    inc b                                         ; $606d: $04
    ld a, [bc]                                    ; $606e: $0a
    pop af                                        ; $606f: $f1
    ld b, $00                                     ; $6070: $06 $00
    ld c, $3c                                     ; $6072: $0e $3c
    ld d, $04                                     ; $6074: $16 $04
    ld e, $12                                     ; $6076: $1e $12
    ld h, $02                                     ; $6078: $26 $02
    ld l, $02                                     ; $607a: $2e $02
    rst $18                                       ; $607c: $df
    ld a, [bc]                                    ; $607d: $0a
    dec bc                                        ; $607e: $0b
    push af                                       ; $607f: $f5
    ld a, $03                                     ; $6080: $3e $03
    rst $18                                       ; $6082: $df
    inc b                                         ; $6083: $04
    ld a, [bc]                                    ; $6084: $0a
    pop af                                        ; $6085: $f1
    ret                                           ; $6086: $c9


Call_032_6087:
    ld b, $02                                     ; $6087: $06 $02
    ld c, $3c                                     ; $6089: $0e $3c
    ld d, $08                                     ; $608b: $16 $08
    ld e, $12                                     ; $608d: $1e $12
    ld h, $02                                     ; $608f: $26 $02
    ld l, $02                                     ; $6091: $2e $02
    rst $18                                       ; $6093: $df
    ld a, [bc]                                    ; $6094: $0a
    dec bc                                        ; $6095: $0b
    push af                                       ; $6096: $f5
    ld a, $03                                     ; $6097: $3e $03
    rst $18                                       ; $6099: $df
    inc b                                         ; $609a: $04
    ld a, [bc]                                    ; $609b: $0a
    pop af                                        ; $609c: $f1
    ld b, $04                                     ; $609d: $06 $04
    ld c, $3c                                     ; $609f: $0e $3c
    ld d, $08                                     ; $60a1: $16 $08
    ld e, $12                                     ; $60a3: $1e $12
    ld h, $02                                     ; $60a5: $26 $02
    ld l, $02                                     ; $60a7: $2e $02
    rst $18                                       ; $60a9: $df
    ld a, [bc]                                    ; $60aa: $0a
    dec bc                                        ; $60ab: $0b
    push af                                       ; $60ac: $f5
    ld a, $03                                     ; $60ad: $3e $03
    rst $18                                       ; $60af: $df
    inc b                                         ; $60b0: $04
    ld a, [bc]                                    ; $60b1: $0a
    pop af                                        ; $60b2: $f1
    ld b, $06                                     ; $60b3: $06 $06
    ld c, $3c                                     ; $60b5: $0e $3c
    ld d, $08                                     ; $60b7: $16 $08
    ld e, $12                                     ; $60b9: $1e $12
    ld h, $02                                     ; $60bb: $26 $02
    ld l, $02                                     ; $60bd: $2e $02
    rst $18                                       ; $60bf: $df
    ld a, [bc]                                    ; $60c0: $0a
    dec bc                                        ; $60c1: $0b
    push af                                       ; $60c2: $f5
    ld a, $03                                     ; $60c3: $3e $03
    rst $18                                       ; $60c5: $df
    inc b                                         ; $60c6: $04
    ld a, [bc]                                    ; $60c7: $0a
    pop af                                        ; $60c8: $f1
    ld b, $08                                     ; $60c9: $06 $08
    ld c, $3c                                     ; $60cb: $0e $3c
    ld d, $08                                     ; $60cd: $16 $08
    ld e, $12                                     ; $60cf: $1e $12
    ld h, $02                                     ; $60d1: $26 $02
    ld l, $02                                     ; $60d3: $2e $02
    rst $18                                       ; $60d5: $df
    ld a, [bc]                                    ; $60d6: $0a
    dec bc                                        ; $60d7: $0b
    push af                                       ; $60d8: $f5
    ld a, $03                                     ; $60d9: $3e $03
    rst $18                                       ; $60db: $df
    inc b                                         ; $60dc: $04
    ld a, [bc]                                    ; $60dd: $0a
    pop af                                        ; $60de: $f1
    ret                                           ; $60df: $c9


    ld b, $08                                     ; $60e0: $06 $08
    ld c, $3c                                     ; $60e2: $0e $3c
    ld d, $08                                     ; $60e4: $16 $08
    ld e, $12                                     ; $60e6: $1e $12
    ld h, $02                                     ; $60e8: $26 $02
    ld l, $02                                     ; $60ea: $2e $02
    rst $18                                       ; $60ec: $df
    ld a, [bc]                                    ; $60ed: $0a
    dec bc                                        ; $60ee: $0b
    push af                                       ; $60ef: $f5
    ld a, $03                                     ; $60f0: $3e $03
    rst $18                                       ; $60f2: $df
    inc b                                         ; $60f3: $04
    ld a, [bc]                                    ; $60f4: $0a
    pop af                                        ; $60f5: $f1
    ret                                           ; $60f6: $c9


    ld b, $06                                     ; $60f7: $06 $06
    ld c, $3c                                     ; $60f9: $0e $3c
    ld d, $08                                     ; $60fb: $16 $08
    ld e, $12                                     ; $60fd: $1e $12
    ld h, $02                                     ; $60ff: $26 $02
    ld l, $02                                     ; $6101: $2e $02
    rst $18                                       ; $6103: $df
    ld a, [bc]                                    ; $6104: $0a
    dec bc                                        ; $6105: $0b
    push af                                       ; $6106: $f5
    ld a, $03                                     ; $6107: $3e $03
    rst $18                                       ; $6109: $df
    inc b                                         ; $610a: $04
    ld a, [bc]                                    ; $610b: $0a
    pop af                                        ; $610c: $f1
    ld b, $04                                     ; $610d: $06 $04
    ld c, $3c                                     ; $610f: $0e $3c
    ld d, $08                                     ; $6111: $16 $08
    ld e, $12                                     ; $6113: $1e $12
    ld h, $02                                     ; $6115: $26 $02
    ld l, $02                                     ; $6117: $2e $02
    rst $18                                       ; $6119: $df
    ld a, [bc]                                    ; $611a: $0a
    dec bc                                        ; $611b: $0b
    push af                                       ; $611c: $f5
    ld a, $03                                     ; $611d: $3e $03
    rst $18                                       ; $611f: $df
    inc b                                         ; $6120: $04
    ld a, [bc]                                    ; $6121: $0a
    pop af                                        ; $6122: $f1
    ld b, $02                                     ; $6123: $06 $02
    ld c, $3c                                     ; $6125: $0e $3c
    ld d, $08                                     ; $6127: $16 $08
    ld e, $12                                     ; $6129: $1e $12
    ld h, $02                                     ; $612b: $26 $02
    ld l, $02                                     ; $612d: $2e $02
    rst $18                                       ; $612f: $df
    ld a, [bc]                                    ; $6130: $0a
    dec bc                                        ; $6131: $0b
    push af                                       ; $6132: $f5
    ld a, $03                                     ; $6133: $3e $03
    rst $18                                       ; $6135: $df
    inc b                                         ; $6136: $04
    ld a, [bc]                                    ; $6137: $0a
    pop af                                        ; $6138: $f1
    ld b, $00                                     ; $6139: $06 $00
    ld c, $3c                                     ; $613b: $0e $3c
    ld d, $08                                     ; $613d: $16 $08
    ld e, $12                                     ; $613f: $1e $12
    ld h, $02                                     ; $6141: $26 $02
    ld l, $02                                     ; $6143: $2e $02
    rst $18                                       ; $6145: $df
    ld a, [bc]                                    ; $6146: $0a
    dec bc                                        ; $6147: $0b
    push af                                       ; $6148: $f5
    ld a, $03                                     ; $6149: $3e $03
    rst $18                                       ; $614b: $df
    inc b                                         ; $614c: $04
    ld a, [bc]                                    ; $614d: $0a
    pop af                                        ; $614e: $f1
    ret                                           ; $614f: $c9


Call_032_6150:
    ld b, $04                                     ; $6150: $06 $04
    ld c, $3e                                     ; $6152: $0e $3e
    ld d, $2c                                     ; $6154: $16 $2c
    ld e, $04                                     ; $6156: $1e $04
    ld h, $04                                     ; $6158: $26 $04
    ld l, $02                                     ; $615a: $2e $02
    rst $18                                       ; $615c: $df
    ld a, [bc]                                    ; $615d: $0a
    dec bc                                        ; $615e: $0b
    push af                                       ; $615f: $f5
    ld a, $03                                     ; $6160: $3e $03
    rst $18                                       ; $6162: $df
    inc b                                         ; $6163: $04
    ld a, [bc]                                    ; $6164: $0a
    pop af                                        ; $6165: $f1
    ld b, $08                                     ; $6166: $06 $08
    ld c, $3e                                     ; $6168: $0e $3e
    ld d, $2c                                     ; $616a: $16 $2c
    ld e, $04                                     ; $616c: $1e $04
    ld h, $04                                     ; $616e: $26 $04
    ld l, $02                                     ; $6170: $2e $02
    rst $18                                       ; $6172: $df
    ld a, [bc]                                    ; $6173: $0a
    dec bc                                        ; $6174: $0b
    push af                                       ; $6175: $f5
    ld a, $03                                     ; $6176: $3e $03
    rst $18                                       ; $6178: $df
    inc b                                         ; $6179: $04
    ld a, [bc]                                    ; $617a: $0a
    pop af                                        ; $617b: $f1
    ld b, $0c                                     ; $617c: $06 $0c
    ld c, $3e                                     ; $617e: $0e $3e
    ld d, $2c                                     ; $6180: $16 $2c
    ld e, $04                                     ; $6182: $1e $04
    ld h, $04                                     ; $6184: $26 $04
    ld l, $02                                     ; $6186: $2e $02
    rst $18                                       ; $6188: $df
    ld a, [bc]                                    ; $6189: $0a
    dec bc                                        ; $618a: $0b
    push af                                       ; $618b: $f5
    ld a, $03                                     ; $618c: $3e $03
    rst $18                                       ; $618e: $df
    inc b                                         ; $618f: $04
    ld a, [bc]                                    ; $6190: $0a
    pop af                                        ; $6191: $f1
    ld b, $10                                     ; $6192: $06 $10
    ld c, $3e                                     ; $6194: $0e $3e
    ld d, $2c                                     ; $6196: $16 $2c
    ld e, $04                                     ; $6198: $1e $04
    ld h, $04                                     ; $619a: $26 $04
    ld l, $02                                     ; $619c: $2e $02
    rst $18                                       ; $619e: $df
    ld a, [bc]                                    ; $619f: $0a
    dec bc                                        ; $61a0: $0b
    push af                                       ; $61a1: $f5
    ld a, $03                                     ; $61a2: $3e $03
    rst $18                                       ; $61a4: $df
    inc b                                         ; $61a5: $04
    ld a, [bc]                                    ; $61a6: $0a
    pop af                                        ; $61a7: $f1
    ret                                           ; $61a8: $c9


    ld b, $10                                     ; $61a9: $06 $10
    ld c, $3e                                     ; $61ab: $0e $3e
    ld d, $2c                                     ; $61ad: $16 $2c
    ld e, $04                                     ; $61af: $1e $04
    ld h, $04                                     ; $61b1: $26 $04
    ld l, $02                                     ; $61b3: $2e $02
    rst $18                                       ; $61b5: $df
    ld a, [bc]                                    ; $61b6: $0a
    dec bc                                        ; $61b7: $0b
    push af                                       ; $61b8: $f5
    ld a, $03                                     ; $61b9: $3e $03
    rst $18                                       ; $61bb: $df
    inc b                                         ; $61bc: $04
    ld a, [bc]                                    ; $61bd: $0a
    pop af                                        ; $61be: $f1
    ret                                           ; $61bf: $c9


    ld b, $0c                                     ; $61c0: $06 $0c
    ld c, $3e                                     ; $61c2: $0e $3e
    ld d, $2c                                     ; $61c4: $16 $2c
    ld e, $04                                     ; $61c6: $1e $04
    ld h, $04                                     ; $61c8: $26 $04
    ld l, $02                                     ; $61ca: $2e $02
    rst $18                                       ; $61cc: $df
    ld a, [bc]                                    ; $61cd: $0a
    dec bc                                        ; $61ce: $0b
    push af                                       ; $61cf: $f5
    ld a, $03                                     ; $61d0: $3e $03
    rst $18                                       ; $61d2: $df
    inc b                                         ; $61d3: $04
    ld a, [bc]                                    ; $61d4: $0a
    pop af                                        ; $61d5: $f1
    ld b, $08                                     ; $61d6: $06 $08
    ld c, $3e                                     ; $61d8: $0e $3e
    ld d, $2c                                     ; $61da: $16 $2c
    ld e, $04                                     ; $61dc: $1e $04
    ld h, $04                                     ; $61de: $26 $04
    ld l, $02                                     ; $61e0: $2e $02
    rst $18                                       ; $61e2: $df
    ld a, [bc]                                    ; $61e3: $0a
    dec bc                                        ; $61e4: $0b
    push af                                       ; $61e5: $f5
    ld a, $03                                     ; $61e6: $3e $03
    rst $18                                       ; $61e8: $df
    inc b                                         ; $61e9: $04
    ld a, [bc]                                    ; $61ea: $0a
    pop af                                        ; $61eb: $f1
    ld b, $04                                     ; $61ec: $06 $04
    ld c, $3e                                     ; $61ee: $0e $3e
    ld d, $2c                                     ; $61f0: $16 $2c
    ld e, $04                                     ; $61f2: $1e $04
    ld h, $04                                     ; $61f4: $26 $04
    ld l, $02                                     ; $61f6: $2e $02
    rst $18                                       ; $61f8: $df
    ld a, [bc]                                    ; $61f9: $0a
    dec bc                                        ; $61fa: $0b
    push af                                       ; $61fb: $f5
    ld a, $03                                     ; $61fc: $3e $03
    rst $18                                       ; $61fe: $df
    inc b                                         ; $61ff: $04
    ld a, [bc]                                    ; $6200: $0a
    pop af                                        ; $6201: $f1
    ld b, $00                                     ; $6202: $06 $00
    ld c, $3e                                     ; $6204: $0e $3e
    ld d, $2c                                     ; $6206: $16 $2c
    ld e, $04                                     ; $6208: $1e $04
    ld h, $04                                     ; $620a: $26 $04
    ld l, $02                                     ; $620c: $2e $02
    rst $18                                       ; $620e: $df
    ld a, [bc]                                    ; $620f: $0a
    dec bc                                        ; $6210: $0b
    push af                                       ; $6211: $f5
    ld a, $03                                     ; $6212: $3e $03
    rst $18                                       ; $6214: $df
    inc b                                         ; $6215: $04
    ld a, [bc]                                    ; $6216: $0a
    pop af                                        ; $6217: $f1
    ret                                           ; $6218: $c9


Call_032_6219:
    ld b, $02                                     ; $6219: $06 $02
    ld c, $3c                                     ; $621b: $0e $3c
    ld d, $2c                                     ; $621d: $16 $2c
    ld e, $12                                     ; $621f: $1e $12
    ld h, $02                                     ; $6221: $26 $02
    ld l, $02                                     ; $6223: $2e $02
    rst $18                                       ; $6225: $df
    ld a, [bc]                                    ; $6226: $0a
    dec bc                                        ; $6227: $0b
    push af                                       ; $6228: $f5
    ld a, $03                                     ; $6229: $3e $03
    rst $18                                       ; $622b: $df
    inc b                                         ; $622c: $04
    ld a, [bc]                                    ; $622d: $0a
    pop af                                        ; $622e: $f1
    ld b, $04                                     ; $622f: $06 $04
    ld c, $3c                                     ; $6231: $0e $3c
    ld d, $2c                                     ; $6233: $16 $2c
    ld e, $12                                     ; $6235: $1e $12
    ld h, $02                                     ; $6237: $26 $02
    ld l, $02                                     ; $6239: $2e $02
    rst $18                                       ; $623b: $df
    ld a, [bc]                                    ; $623c: $0a
    dec bc                                        ; $623d: $0b
    push af                                       ; $623e: $f5
    ld a, $03                                     ; $623f: $3e $03
    rst $18                                       ; $6241: $df
    inc b                                         ; $6242: $04
    ld a, [bc]                                    ; $6243: $0a
    pop af                                        ; $6244: $f1
    ld b, $06                                     ; $6245: $06 $06
    ld c, $3c                                     ; $6247: $0e $3c
    ld d, $2c                                     ; $6249: $16 $2c
    ld e, $12                                     ; $624b: $1e $12
    ld h, $02                                     ; $624d: $26 $02
    ld l, $02                                     ; $624f: $2e $02
    rst $18                                       ; $6251: $df
    ld a, [bc]                                    ; $6252: $0a
    dec bc                                        ; $6253: $0b
    push af                                       ; $6254: $f5
    ld a, $03                                     ; $6255: $3e $03
    rst $18                                       ; $6257: $df
    inc b                                         ; $6258: $04
    ld a, [bc]                                    ; $6259: $0a
    pop af                                        ; $625a: $f1
    ld b, $08                                     ; $625b: $06 $08
    ld c, $3c                                     ; $625d: $0e $3c
    ld d, $2c                                     ; $625f: $16 $2c
    ld e, $12                                     ; $6261: $1e $12
    ld h, $02                                     ; $6263: $26 $02
    ld l, $02                                     ; $6265: $2e $02
    rst $18                                       ; $6267: $df
    ld a, [bc]                                    ; $6268: $0a
    dec bc                                        ; $6269: $0b
    push af                                       ; $626a: $f5
    ld a, $03                                     ; $626b: $3e $03
    rst $18                                       ; $626d: $df
    inc b                                         ; $626e: $04
    ld a, [bc]                                    ; $626f: $0a
    pop af                                        ; $6270: $f1
    ret                                           ; $6271: $c9


    ld b, $08                                     ; $6272: $06 $08
    ld c, $3c                                     ; $6274: $0e $3c
    ld d, $2c                                     ; $6276: $16 $2c
    ld e, $12                                     ; $6278: $1e $12
    ld h, $02                                     ; $627a: $26 $02
    ld l, $02                                     ; $627c: $2e $02
    rst $18                                       ; $627e: $df
    ld a, [bc]                                    ; $627f: $0a
    dec bc                                        ; $6280: $0b
    push af                                       ; $6281: $f5
    ld a, $03                                     ; $6282: $3e $03
    rst $18                                       ; $6284: $df
    inc b                                         ; $6285: $04
    ld a, [bc]                                    ; $6286: $0a
    pop af                                        ; $6287: $f1
    ret                                           ; $6288: $c9


    ld b, $06                                     ; $6289: $06 $06
    ld c, $3c                                     ; $628b: $0e $3c
    ld d, $2c                                     ; $628d: $16 $2c
    ld e, $12                                     ; $628f: $1e $12
    ld h, $02                                     ; $6291: $26 $02
    ld l, $02                                     ; $6293: $2e $02
    rst $18                                       ; $6295: $df
    ld a, [bc]                                    ; $6296: $0a
    dec bc                                        ; $6297: $0b
    push af                                       ; $6298: $f5
    ld a, $03                                     ; $6299: $3e $03
    rst $18                                       ; $629b: $df
    inc b                                         ; $629c: $04
    ld a, [bc]                                    ; $629d: $0a
    pop af                                        ; $629e: $f1
    ld b, $04                                     ; $629f: $06 $04
    ld c, $3c                                     ; $62a1: $0e $3c
    ld d, $2c                                     ; $62a3: $16 $2c
    ld e, $12                                     ; $62a5: $1e $12
    ld h, $02                                     ; $62a7: $26 $02
    ld l, $02                                     ; $62a9: $2e $02
    rst $18                                       ; $62ab: $df
    ld a, [bc]                                    ; $62ac: $0a
    dec bc                                        ; $62ad: $0b
    push af                                       ; $62ae: $f5
    ld a, $03                                     ; $62af: $3e $03
    rst $18                                       ; $62b1: $df
    inc b                                         ; $62b2: $04
    ld a, [bc]                                    ; $62b3: $0a
    pop af                                        ; $62b4: $f1
    ld b, $02                                     ; $62b5: $06 $02
    ld c, $3c                                     ; $62b7: $0e $3c
    ld d, $2c                                     ; $62b9: $16 $2c
    ld e, $12                                     ; $62bb: $1e $12
    ld h, $02                                     ; $62bd: $26 $02
    ld l, $02                                     ; $62bf: $2e $02
    rst $18                                       ; $62c1: $df
    ld a, [bc]                                    ; $62c2: $0a
    dec bc                                        ; $62c3: $0b
    push af                                       ; $62c4: $f5
    ld a, $03                                     ; $62c5: $3e $03
    rst $18                                       ; $62c7: $df
    inc b                                         ; $62c8: $04
    ld a, [bc]                                    ; $62c9: $0a
    pop af                                        ; $62ca: $f1
    ld b, $00                                     ; $62cb: $06 $00
    ld c, $3c                                     ; $62cd: $0e $3c
    ld d, $2c                                     ; $62cf: $16 $2c
    ld e, $12                                     ; $62d1: $1e $12
    ld h, $02                                     ; $62d3: $26 $02
    ld l, $02                                     ; $62d5: $2e $02
    rst $18                                       ; $62d7: $df
    ld a, [bc]                                    ; $62d8: $0a
    dec bc                                        ; $62d9: $0b
    push af                                       ; $62da: $f5
    ld a, $03                                     ; $62db: $3e $03
    rst $18                                       ; $62dd: $df
    inc b                                         ; $62de: $04
    ld a, [bc]                                    ; $62df: $0a
    pop af                                        ; $62e0: $f1
    ret                                           ; $62e1: $c9


Call_032_62e2:
    ld de, $0088                                  ; $62e2: $11 $88 $00
    ld a, [$c4bc]                                 ; $62e5: $fa $bc $c4
    ld h, $00                                     ; $62e8: $26 $00
    ld l, a                                       ; $62ea: $6f
    add hl, de                                    ; $62eb: $19
    add hl, hl                                    ; $62ec: $29
    add hl, hl                                    ; $62ed: $29
    add hl, hl                                    ; $62ee: $29
    add hl, hl                                    ; $62ef: $29
    add hl, hl                                    ; $62f0: $29
    ld e, l                                       ; $62f1: $5d
    ld d, h                                       ; $62f2: $54
    call Call_000_2d10                            ; $62f3: $cd $10 $2d
    ret                                           ; $62f6: $c9


Call_032_62f7:
    rst $30                                       ; $62f7: $f7
    nop                                           ; $62f8: $00
    ld [de], a                                    ; $62f9: $12
    jp nz, Jump_032_6312                          ; $62fa: $c2 $12 $63

    rst $30                                       ; $62fd: $f7
    jr nz, jr_032_6312                            ; $62fe: $20 $12

    jp nz, Jump_032_6312                          ; $6300: $c2 $12 $63

    rst $30                                       ; $6303: $f7
    ld b, b                                       ; $6304: $40
    ld [de], a                                    ; $6305: $12
    jp nz, Jump_032_6312                          ; $6306: $c2 $12 $63

    rst $30                                       ; $6309: $f7
    ld h, b                                       ; $630a: $60
    ld [de], a                                    ; $630b: $12
    jp nz, Jump_032_6312                          ; $630c: $c2 $12 $63

    ld a, $00                                     ; $630f: $3e $00
    ret                                           ; $6311: $c9


Jump_032_6312:
jr_032_6312:
    ld a, $01                                     ; $6312: $3e $01
    ret                                           ; $6314: $c9


    sbc b                                         ; $6315: $98
    ld h, e                                       ; $6316: $63
    sbc a                                         ; $6317: $9f
    ld h, e                                       ; $6318: $63
    inc hl                                        ; $6319: $23
    ld h, e                                       ; $631a: $63
    ld c, l                                       ; $631b: $4d
    ld h, h                                       ; $631c: $64
    inc l                                         ; $631d: $2c
    ld h, a                                       ; $631e: $67
    xor h                                         ; $631f: $ac
    ld l, c                                       ; $6320: $69
    or l                                          ; $6321: $b5
    ld l, c                                       ; $6322: $69
    dec c                                         ; $6323: $0d
    ld a, [hl]                                    ; $6324: $7e
    nop                                           ; $6325: $00
    dec e                                         ; $6326: $1d
    nop                                           ; $6327: $00
    rla                                           ; $6328: $17
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    add b                                         ; $632c: $80
    ld bc, $0d16                                  ; $632d: $01 $16 $0d
    ld a, [hl]                                    ; $6330: $7e
    nop                                           ; $6331: $00
    add hl, de                                    ; $6332: $19
    nop                                           ; $6333: $00
    rla                                           ; $6334: $17
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    ld bc, $0d0d                                  ; $6339: $01 $0d $0d
    ld a, [hl]                                    ; $633c: $7e
    nop                                           ; $633d: $00
    dec de                                        ; $633e: $1b
    nop                                           ; $633f: $00
    inc de                                        ; $6340: $13
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    ret nz                                        ; $6344: $c0

    ld bc, $0d0a                                  ; $6345: $01 $0a $0d
    ld a, [hl]                                    ; $6348: $7e
    nop                                           ; $6349: $00
    dec bc                                        ; $634a: $0b
    nop                                           ; $634b: $00
    add hl, de                                    ; $634c: $19
    nop                                           ; $634d: $00
    nop                                           ; $634e: $00
    nop                                           ; $634f: $00
    ret nz                                        ; $6350: $c0

    ld bc, $0d0d                                  ; $6351: $01 $0d $0d
    ld a, [hl]                                    ; $6354: $7e
    nop                                           ; $6355: $00
    add hl, bc                                    ; $6356: $09
    nop                                           ; $6357: $00
    rla                                           ; $6358: $17
    nop                                           ; $6359: $00
    nop                                           ; $635a: $00
    nop                                           ; $635b: $00
    ret nz                                        ; $635c: $c0

    ld bc, $0d0a                                  ; $635d: $01 $0a $0d
    ld a, [hl]                                    ; $6360: $7e
    nop                                           ; $6361: $00
    rlca                                          ; $6362: $07
    nop                                           ; $6363: $00
    add hl, bc                                    ; $6364: $09
    cp l                                          ; $6365: $bd
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    ld bc, $0d04                                  ; $6369: $01 $04 $0d
    ld a, [hl]                                    ; $636c: $7e
    nop                                           ; $636d: $00
    add hl, bc                                    ; $636e: $09
    nop                                           ; $636f: $00
    rlca                                          ; $6370: $07
    cp l                                          ; $6371: $bd
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    ld b, b                                       ; $6374: $40
    ld bc, $0d05                                  ; $6375: $01 $05 $0d
    ld a, [hl]                                    ; $6378: $7e
    nop                                           ; $6379: $00
    dec bc                                        ; $637a: $0b
    nop                                           ; $637b: $00
    rlca                                          ; $637c: $07
    cp l                                          ; $637d: $bd
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    ld b, b                                       ; $6380: $40
    ld bc, $0d06                                  ; $6381: $01 $06 $0d
    ld a, [hl]                                    ; $6384: $7e
    nop                                           ; $6385: $00
    dec c                                         ; $6386: $0d
    nop                                           ; $6387: $00
    add hl, bc                                    ; $6388: $09
    cp l                                          ; $6389: $bd
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    add b                                         ; $638c: $80
    ld bc, $0007                                  ; $638d: $01 $07 $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    rst $38                                       ; $6397: $ff
    ld bc, $00c0                                  ; $6398: $01 $c0 $00
    jr jr_032_639d                                ; $639b: $18 $00

jr_032_639d:
    rra                                           ; $639d: $1f
    rst $38                                       ; $639e: $ff
    ld bc, $00ff                                  ; $639f: $01 $ff $00
    nop                                           ; $63a2: $00
    nop                                           ; $63a3: $00
    nop                                           ; $63a4: $00
    inc bc                                        ; $63a5: $03
    ld b, $ff                                     ; $63a6: $06 $ff

Jump_032_63a8:
    ld hl, $c4ba                                  ; $63a8: $21 $ba $c4
    ld de, $01fd                                  ; $63ab: $11 $fd $01
    ld a, e                                       ; $63ae: $7b
    ld [hl+], a                                   ; $63af: $22
    ld [hl], d                                    ; $63b0: $72
    ld a, $07                                     ; $63b1: $3e $07
    ld [$c4bc], a                                 ; $63b3: $ea $bc $c4
    call Call_032_6b81                            ; $63b6: $cd $81 $6b
    ret                                           ; $63b9: $c9


Jump_032_63ba:
    ld hl, $c4ba                                  ; $63ba: $21 $ba $c4
    ld de, $0416                                  ; $63bd: $11 $16 $04
    ld a, e                                       ; $63c0: $7b
    ld [hl+], a                                   ; $63c1: $22
    ld [hl], d                                    ; $63c2: $72
    ld a, $08                                     ; $63c3: $3e $08
    ld [$c4bc], a                                 ; $63c5: $ea $bc $c4
    call Call_032_6b81                            ; $63c8: $cd $81 $6b
    ret                                           ; $63cb: $c9


Jump_032_63cc:
    ld hl, $c4ba                                  ; $63cc: $21 $ba $c4
    ld de, $042f                                  ; $63cf: $11 $2f $04
    ld a, e                                       ; $63d2: $7b
    ld [hl+], a                                   ; $63d3: $22
    ld [hl], d                                    ; $63d4: $72
    ld a, $09                                     ; $63d5: $3e $09
    ld [$c4bc], a                                 ; $63d7: $ea $bc $c4
    call Call_032_6b81                            ; $63da: $cd $81 $6b
    ret                                           ; $63dd: $c9


Jump_032_63de:
    rst $20                                       ; $63de: $e7
    ld h, b                                       ; $63df: $60
    db $10                                        ; $63e0: $10
    ld hl, $c4ba                                  ; $63e1: $21 $ba $c4
    ld de, $0448                                  ; $63e4: $11 $48 $04
    ld a, e                                       ; $63e7: $7b
    ld [hl+], a                                   ; $63e8: $22
    ld [hl], d                                    ; $63e9: $72
    ld a, $0a                                     ; $63ea: $3e $0a
    ld [$c4bc], a                                 ; $63ec: $ea $bc $c4
    call Call_032_6b81                            ; $63ef: $cd $81 $6b
    ret                                           ; $63f2: $c9


Call_032_63f3:
    ld a, $02                                     ; $63f3: $3e $02
    rst $18                                       ; $63f5: $df
    ld a, [bc]                                    ; $63f6: $0a
    ld a, [bc]                                    ; $63f7: $0a
    push af                                       ; $63f8: $f5
    ld a, $0a                                     ; $63f9: $3e $0a
    rst $18                                       ; $63fb: $df
    inc b                                         ; $63fc: $04
    ld a, [bc]                                    ; $63fd: $0a
    pop af                                        ; $63fe: $f1
    rst $18                                       ; $63ff: $df
    ld [de], a                                    ; $6400: $12
    ld a, [bc]                                    ; $6401: $0a
    rst $18                                       ; $6402: $df
    inc c                                         ; $6403: $0c
    ld a, [bc]                                    ; $6404: $0a
    push af                                       ; $6405: $f5
    ld a, $05                                     ; $6406: $3e $05
    rst $18                                       ; $6408: $df
    inc b                                         ; $6409: $04
    ld a, [bc]                                    ; $640a: $0a
    pop af                                        ; $640b: $f1
    and a                                         ; $640c: $a7
    jr z, jr_032_6415                             ; $640d: $28 $06

    ld a, $02                                     ; $640f: $3e $02
    rst $18                                       ; $6411: $df
    ld [$c90a], sp                                ; $6412: $08 $0a $c9

jr_032_6415:
    rst $18                                       ; $6415: $df
    db $10                                        ; $6416: $10
    ld a, [bc]                                    ; $6417: $0a
    ld a, $02                                     ; $6418: $3e $02
    rst $18                                       ; $641a: $df
    ld [$f50a], sp                                ; $641b: $08 $0a $f5
    ld a, $0a                                     ; $641e: $3e $0a
    rst $18                                       ; $6420: $df
    inc b                                         ; $6421: $04
    ld a, [bc]                                    ; $6422: $0a
    pop af                                        ; $6423: $f1
    ret                                           ; $6424: $c9


    ld hl, $0466                                  ; $6425: $21 $66 $04
    rst $18                                       ; $6428: $df
    ld c, $0a                                     ; $6429: $0e $0a
    call Call_032_63f3                            ; $642b: $cd $f3 $63
    ret                                           ; $642e: $c9


    ld hl, $046b                                  ; $642f: $21 $6b $04
    rst $18                                       ; $6432: $df
    ld c, $0a                                     ; $6433: $0e $0a
    call Call_032_63f3                            ; $6435: $cd $f3 $63
    ret                                           ; $6438: $c9


    ld hl, $0470                                  ; $6439: $21 $70 $04
    rst $18                                       ; $643c: $df
    ld c, $0a                                     ; $643d: $0e $0a
    call Call_032_63f3                            ; $643f: $cd $f3 $63
    ret                                           ; $6442: $c9


    ld hl, $0475                                  ; $6443: $21 $75 $04
    rst $18                                       ; $6446: $df
    ld c, $0a                                     ; $6447: $0e $0a
    call Call_032_63f3                            ; $6449: $cd $f3 $63
    ret                                           ; $644c: $c9


    ld [bc], a                                    ; $644d: $02
    rst $38                                       ; $644e: $ff
    nop                                           ; $644f: $00
    nop                                           ; $6450: $00
    jp hl                                         ; $6451: $e9


    ld bc, $0003                                  ; $6452: $01 $03 $00
    inc bc                                        ; $6455: $03
    rst $38                                       ; $6456: $ff
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    ld [$0301], a                                 ; $6459: $ea $01 $03
    nop                                           ; $645c: $00
    inc b                                         ; $645d: $04
    rst $38                                       ; $645e: $ff
    nop                                           ; $645f: $00
    nop                                           ; $6460: $00
    db $eb                                        ; $6461: $eb
    ld bc, $0003                                  ; $6462: $01 $03 $00
    dec b                                         ; $6465: $05
    rst $38                                       ; $6466: $ff
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    db $ec                                        ; $6469: $ec
    ld bc, $0001                                  ; $646a: $01 $01 $00
    ld b, $ff                                     ; $646d: $06 $ff
    nop                                           ; $646f: $00
    nop                                           ; $6470: $00
    db $ed                                        ; $6471: $ed
    ld bc, $0003                                  ; $6472: $01 $03 $00
    rlca                                          ; $6475: $07
    rst $38                                       ; $6476: $ff
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    xor b                                         ; $6479: $a8
    ld h, e                                       ; $647a: $63
    inc bc                                        ; $647b: $03
    nop                                           ; $647c: $00
    ld [$00ff], sp                                ; $647d: $08 $ff $00
    nop                                           ; $6480: $00
    cp d                                          ; $6481: $ba
    ld h, e                                       ; $6482: $63
    inc bc                                        ; $6483: $03
    nop                                           ; $6484: $00
    add hl, bc                                    ; $6485: $09
    rst $38                                       ; $6486: $ff
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    call z, Call_000_0363                         ; $6489: $cc $63 $03
    nop                                           ; $648c: $00
    ld a, [bc]                                    ; $648d: $0a
    rst $38                                       ; $648e: $ff
    nop                                           ; $648f: $00
    nop                                           ; $6490: $00
    sbc $63                                       ; $6491: $de $63
    inc bc                                        ; $6493: $03
    nop                                           ; $6494: $00
    dec bc                                        ; $6495: $0b
    rst $38                                       ; $6496: $ff
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    db $ed                                        ; $6499: $ed
    ld bc, $0003                                  ; $649a: $01 $03 $00
    rst $38                                       ; $649d: $ff
    ld [bc], a                                    ; $649e: $02
    rst $38                                       ; $649f: $ff
    nop                                           ; $64a0: $00
    nop                                           ; $64a1: $00
    ld e, a                                       ; $64a2: $5f
    inc b                                         ; $64a3: $04
    inc bc                                        ; $64a4: $03
    nop                                           ; $64a5: $00
    inc bc                                        ; $64a6: $03
    rst $38                                       ; $64a7: $ff
    nop                                           ; $64a8: $00
    nop                                           ; $64a9: $00
    ld h, b                                       ; $64aa: $60
    inc b                                         ; $64ab: $04
    inc bc                                        ; $64ac: $03
    nop                                           ; $64ad: $00
    inc b                                         ; $64ae: $04
    rst $38                                       ; $64af: $ff
    nop                                           ; $64b0: $00
    nop                                           ; $64b1: $00
    ld h, c                                       ; $64b2: $61
    inc b                                         ; $64b3: $04
    inc bc                                        ; $64b4: $03
    nop                                           ; $64b5: $00
    dec b                                         ; $64b6: $05
    rst $38                                       ; $64b7: $ff
    nop                                           ; $64b8: $00
    nop                                           ; $64b9: $00
    ld h, d                                       ; $64ba: $62
    inc b                                         ; $64bb: $04
    ld bc, $0600                                  ; $64bc: $01 $00 $06
    rst $38                                       ; $64bf: $ff
    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    ld h, h                                       ; $64c2: $64
    inc b                                         ; $64c3: $04
    inc bc                                        ; $64c4: $03
    nop                                           ; $64c5: $00
    rlca                                          ; $64c6: $07
    rst $38                                       ; $64c7: $ff
    nop                                           ; $64c8: $00
    nop                                           ; $64c9: $00
    xor b                                         ; $64ca: $a8
    ld h, e                                       ; $64cb: $63
    inc bc                                        ; $64cc: $03
    nop                                           ; $64cd: $00
    ld [$00ff], sp                                ; $64ce: $08 $ff $00
    nop                                           ; $64d1: $00
    cp d                                          ; $64d2: $ba
    ld h, e                                       ; $64d3: $63
    inc bc                                        ; $64d4: $03
    nop                                           ; $64d5: $00
    add hl, bc                                    ; $64d6: $09
    rst $38                                       ; $64d7: $ff
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    call z, Call_000_0363                         ; $64da: $cc $63 $03
    nop                                           ; $64dd: $00
    ld a, [bc]                                    ; $64de: $0a
    rst $38                                       ; $64df: $ff
    nop                                           ; $64e0: $00
    nop                                           ; $64e1: $00
    sbc $63                                       ; $64e2: $de $63
    inc bc                                        ; $64e4: $03
    nop                                           ; $64e5: $00
    rst $38                                       ; $64e6: $ff
    ld [bc], a                                    ; $64e7: $02
    rst $38                                       ; $64e8: $ff
    nop                                           ; $64e9: $00
    nop                                           ; $64ea: $00
    dec h                                         ; $64eb: $25
    ld h, h                                       ; $64ec: $64
    inc bc                                        ; $64ed: $03
    nop                                           ; $64ee: $00
    inc bc                                        ; $64ef: $03
    rst $38                                       ; $64f0: $ff
    nop                                           ; $64f1: $00
    nop                                           ; $64f2: $00
    ld l, c                                       ; $64f3: $69
    inc b                                         ; $64f4: $04
    inc bc                                        ; $64f5: $03
    nop                                           ; $64f6: $00
    inc b                                         ; $64f7: $04
    rst $38                                       ; $64f8: $ff
    nop                                           ; $64f9: $00
    nop                                           ; $64fa: $00
    ld l, d                                       ; $64fb: $6a
    inc b                                         ; $64fc: $04
    inc bc                                        ; $64fd: $03
    nop                                           ; $64fe: $00
    dec b                                         ; $64ff: $05
    rst $38                                       ; $6500: $ff
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    ld h, d                                       ; $6503: $62
    inc b                                         ; $6504: $04
    ld bc, $0600                                  ; $6505: $01 $00 $06
    rst $38                                       ; $6508: $ff
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    ld h, h                                       ; $650b: $64
    inc b                                         ; $650c: $04
    inc bc                                        ; $650d: $03
    nop                                           ; $650e: $00
    rlca                                          ; $650f: $07
    rst $38                                       ; $6510: $ff
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    xor b                                         ; $6513: $a8
    ld h, e                                       ; $6514: $63
    inc bc                                        ; $6515: $03
    nop                                           ; $6516: $00
    ld [$00ff], sp                                ; $6517: $08 $ff $00
    nop                                           ; $651a: $00
    cp d                                          ; $651b: $ba
    ld h, e                                       ; $651c: $63
    inc bc                                        ; $651d: $03
    nop                                           ; $651e: $00
    add hl, bc                                    ; $651f: $09
    rst $38                                       ; $6520: $ff
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    call z, Call_000_0363                         ; $6523: $cc $63 $03
    nop                                           ; $6526: $00
    ld a, [bc]                                    ; $6527: $0a
    rst $38                                       ; $6528: $ff
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    sbc $63                                       ; $652b: $de $63
    inc bc                                        ; $652d: $03
    nop                                           ; $652e: $00
    rst $38                                       ; $652f: $ff
    ld [bc], a                                    ; $6530: $02
    rst $38                                       ; $6531: $ff
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    cpl                                           ; $6534: $2f
    ld h, h                                       ; $6535: $64
    inc bc                                        ; $6536: $03
    nop                                           ; $6537: $00
    inc bc                                        ; $6538: $03
    rst $38                                       ; $6539: $ff
    nop                                           ; $653a: $00
    nop                                           ; $653b: $00
    ld l, [hl]                                    ; $653c: $6e
    inc b                                         ; $653d: $04
    inc bc                                        ; $653e: $03
    nop                                           ; $653f: $00
    inc b                                         ; $6540: $04
    rst $38                                       ; $6541: $ff
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    ld l, a                                       ; $6544: $6f
    inc b                                         ; $6545: $04
    inc bc                                        ; $6546: $03
    nop                                           ; $6547: $00
    dec b                                         ; $6548: $05
    rst $38                                       ; $6549: $ff
    nop                                           ; $654a: $00
    nop                                           ; $654b: $00
    ld h, d                                       ; $654c: $62
    inc b                                         ; $654d: $04
    ld bc, $0600                                  ; $654e: $01 $00 $06
    rst $38                                       ; $6551: $ff
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    ld h, h                                       ; $6554: $64
    inc b                                         ; $6555: $04
    inc bc                                        ; $6556: $03
    nop                                           ; $6557: $00
    rlca                                          ; $6558: $07
    rst $38                                       ; $6559: $ff
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    xor b                                         ; $655c: $a8
    ld h, e                                       ; $655d: $63
    inc bc                                        ; $655e: $03
    nop                                           ; $655f: $00
    ld [$00ff], sp                                ; $6560: $08 $ff $00
    nop                                           ; $6563: $00
    cp d                                          ; $6564: $ba
    ld h, e                                       ; $6565: $63
    inc bc                                        ; $6566: $03
    nop                                           ; $6567: $00
    add hl, bc                                    ; $6568: $09
    rst $38                                       ; $6569: $ff
    nop                                           ; $656a: $00
    nop                                           ; $656b: $00
    call z, Call_000_0363                         ; $656c: $cc $63 $03
    nop                                           ; $656f: $00
    ld a, [bc]                                    ; $6570: $0a
    rst $38                                       ; $6571: $ff
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    sbc $63                                       ; $6574: $de $63
    inc bc                                        ; $6576: $03
    nop                                           ; $6577: $00
    rst $38                                       ; $6578: $ff
    ld [bc], a                                    ; $6579: $02
    rst $38                                       ; $657a: $ff
    nop                                           ; $657b: $00
    nop                                           ; $657c: $00
    add hl, sp                                    ; $657d: $39
    ld h, h                                       ; $657e: $64
    inc bc                                        ; $657f: $03
    nop                                           ; $6580: $00
    inc bc                                        ; $6581: $03
    rst $38                                       ; $6582: $ff
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    ld [hl], e                                    ; $6585: $73
    inc b                                         ; $6586: $04
    inc bc                                        ; $6587: $03
    nop                                           ; $6588: $00
    inc b                                         ; $6589: $04
    rst $38                                       ; $658a: $ff
    nop                                           ; $658b: $00
    nop                                           ; $658c: $00
    ld [hl], h                                    ; $658d: $74
    inc b                                         ; $658e: $04
    inc bc                                        ; $658f: $03
    nop                                           ; $6590: $00
    dec b                                         ; $6591: $05
    rst $38                                       ; $6592: $ff
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    ld h, d                                       ; $6595: $62
    inc b                                         ; $6596: $04
    ld bc, $0600                                  ; $6597: $01 $00 $06
    rst $38                                       ; $659a: $ff
    nop                                           ; $659b: $00
    nop                                           ; $659c: $00
    ld h, h                                       ; $659d: $64
    inc b                                         ; $659e: $04
    inc bc                                        ; $659f: $03
    nop                                           ; $65a0: $00
    rlca                                          ; $65a1: $07
    rst $38                                       ; $65a2: $ff
    nop                                           ; $65a3: $00
    nop                                           ; $65a4: $00
    xor b                                         ; $65a5: $a8
    ld h, e                                       ; $65a6: $63
    inc bc                                        ; $65a7: $03
    nop                                           ; $65a8: $00
    ld [$00ff], sp                                ; $65a9: $08 $ff $00
    nop                                           ; $65ac: $00
    cp d                                          ; $65ad: $ba
    ld h, e                                       ; $65ae: $63
    inc bc                                        ; $65af: $03
    nop                                           ; $65b0: $00
    add hl, bc                                    ; $65b1: $09
    rst $38                                       ; $65b2: $ff
    nop                                           ; $65b3: $00
    nop                                           ; $65b4: $00
    call z, Call_000_0363                         ; $65b5: $cc $63 $03
    nop                                           ; $65b8: $00
    ld a, [bc]                                    ; $65b9: $0a
    rst $38                                       ; $65ba: $ff
    nop                                           ; $65bb: $00
    nop                                           ; $65bc: $00
    sbc $63                                       ; $65bd: $de $63
    inc bc                                        ; $65bf: $03
    nop                                           ; $65c0: $00
    rst $38                                       ; $65c1: $ff
    ld [bc], a                                    ; $65c2: $02
    rst $38                                       ; $65c3: $ff
    nop                                           ; $65c4: $00
    nop                                           ; $65c5: $00
    ld b, e                                       ; $65c6: $43
    ld h, h                                       ; $65c7: $64
    inc bc                                        ; $65c8: $03
    nop                                           ; $65c9: $00
    inc bc                                        ; $65ca: $03
    rst $38                                       ; $65cb: $ff
    nop                                           ; $65cc: $00
    nop                                           ; $65cd: $00
    ld a, b                                       ; $65ce: $78
    inc b                                         ; $65cf: $04
    inc bc                                        ; $65d0: $03
    nop                                           ; $65d1: $00
    inc b                                         ; $65d2: $04
    rst $38                                       ; $65d3: $ff
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    ld a, c                                       ; $65d6: $79
    inc b                                         ; $65d7: $04
    inc bc                                        ; $65d8: $03
    nop                                           ; $65d9: $00
    dec b                                         ; $65da: $05
    rst $38                                       ; $65db: $ff
    nop                                           ; $65dc: $00
    nop                                           ; $65dd: $00
    dec bc                                        ; $65de: $0b
    ld h, [hl]                                    ; $65df: $66
    ld bc, $0600                                  ; $65e0: $01 $00 $06
    rst $38                                       ; $65e3: $ff
    nop                                           ; $65e4: $00
    nop                                           ; $65e5: $00
    add hl, sp                                    ; $65e6: $39
    ld h, [hl]                                    ; $65e7: $66
    inc bc                                        ; $65e8: $03
    nop                                           ; $65e9: $00
    rlca                                          ; $65ea: $07
    rst $38                                       ; $65eb: $ff
    nop                                           ; $65ec: $00
    nop                                           ; $65ed: $00
    ld h, a                                       ; $65ee: $67
    ld h, [hl]                                    ; $65ef: $66
    inc bc                                        ; $65f0: $03
    nop                                           ; $65f1: $00
    ld [$00ff], sp                                ; $65f2: $08 $ff $00
    nop                                           ; $65f5: $00
    add [hl]                                      ; $65f6: $86
    ld h, [hl]                                    ; $65f7: $66
    inc bc                                        ; $65f8: $03
    nop                                           ; $65f9: $00
    add hl, bc                                    ; $65fa: $09
    rst $38                                       ; $65fb: $ff
    nop                                           ; $65fc: $00
    nop                                           ; $65fd: $00
    and l                                         ; $65fe: $a5
    ld h, [hl]                                    ; $65ff: $66
    inc bc                                        ; $6600: $03
    nop                                           ; $6601: $00
    ld a, [bc]                                    ; $6602: $0a
    rst $38                                       ; $6603: $ff
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    call nz, $0366                                ; $6606: $c4 $66 $03
    nop                                           ; $6609: $00
    rst $38                                       ; $660a: $ff
    ld hl, $0484                                  ; $660b: $21 $84 $04
    rst $18                                       ; $660e: $df
    ld c, $0a                                     ; $660f: $0e $0a
    rst $30                                       ; $6611: $f7
    and b                                         ; $6612: $a0
    rla                                           ; $6613: $17
    jr nz, jr_032_6633                            ; $6614: $20 $1d

    ld hl, $0462                                  ; $6616: $21 $62 $04
    rst $18                                       ; $6619: $df
    ld c, $0a                                     ; $661a: $0e $0a
    rst $30                                       ; $661c: $f7
    nop                                           ; $661d: $00
    ld de, $1228                                  ; $661e: $11 $28 $12
    rst $30                                       ; $6621: $f7
    jr nz, jr_032_6635                            ; $6622: $20 $11

    jr z, jr_032_6633                             ; $6624: $28 $0d

    rst $30                                       ; $6626: $f7
    ld b, b                                       ; $6627: $40
    ld de, $0828                                  ; $6628: $11 $28 $08
    rst $30                                       ; $662b: $f7
    ld h, b                                       ; $662c: $60
    ld de, $0328                                  ; $662d: $11 $28 $03
    rst $18                                       ; $6630: $df
    db $10                                        ; $6631: $10
    ld a, [bc]                                    ; $6632: $0a

jr_032_6633:
    ld a, $05                                     ; $6633: $3e $05

jr_032_6635:
    rst $18                                       ; $6635: $df
    ld [$c90a], sp                                ; $6636: $08 $0a $c9
    ld hl, $0485                                  ; $6639: $21 $85 $04
    rst $18                                       ; $663c: $df
    ld c, $0a                                     ; $663d: $0e $0a
    rst $30                                       ; $663f: $f7
    and b                                         ; $6640: $a0
    rla                                           ; $6641: $17
    jr nz, jr_032_6633                            ; $6642: $20 $ef

    ld hl, $0464                                  ; $6644: $21 $64 $04
    rst $18                                       ; $6647: $df
    ld c, $0a                                     ; $6648: $0e $0a
    rst $30                                       ; $664a: $f7
    nop                                           ; $664b: $00
    ld de, $1228                                  ; $664c: $11 $28 $12
    rst $30                                       ; $664f: $f7
    jr nz, jr_032_6663                            ; $6650: $20 $11

    jr z, jr_032_6661                             ; $6652: $28 $0d

    rst $30                                       ; $6654: $f7
    ld b, b                                       ; $6655: $40
    ld de, $0828                                  ; $6656: $11 $28 $08
    rst $30                                       ; $6659: $f7
    ld h, b                                       ; $665a: $60
    ld de, $0328                                  ; $665b: $11 $28 $03
    rst $18                                       ; $665e: $df
    db $10                                        ; $665f: $10
    ld a, [bc]                                    ; $6660: $0a

jr_032_6661:
    ld a, $05                                     ; $6661: $3e $05

jr_032_6663:
    rst $18                                       ; $6663: $df
    ld [$c90a], sp                                ; $6664: $08 $0a $c9
    ld a, $07                                     ; $6667: $3e $07
    ld [$c4bc], a                                 ; $6669: $ea $bc $c4
    rst $30                                       ; $666c: $f7
    nop                                           ; $666d: $00
    ld a, [bc]                                    ; $666e: $0a
    jp z, Jump_032_63a8                           ; $666f: $ca $a8 $63

    ld hl, $047a                                  ; $6672: $21 $7a $04
    rst $18                                       ; $6675: $df
    ld c, $0a                                     ; $6676: $0e $0a
    rst $30                                       ; $6678: $f7
    nop                                           ; $6679: $00
    ld de, $0328                                  ; $667a: $11 $28 $03
    rst $18                                       ; $667d: $df
    db $10                                        ; $667e: $10
    ld a, [bc]                                    ; $667f: $0a
    ld a, $07                                     ; $6680: $3e $07
    rst $18                                       ; $6682: $df
    ld [$c90a], sp                                ; $6683: $08 $0a $c9
    ld a, $08                                     ; $6686: $3e $08
    ld [$c4bc], a                                 ; $6688: $ea $bc $c4
    call Call_032_6e9f                            ; $668b: $cd $9f $6e
    jp z, Jump_032_63ba                           ; $668e: $ca $ba $63

    ld hl, $047c                                  ; $6691: $21 $7c $04
    rst $18                                       ; $6694: $df
    ld c, $0a                                     ; $6695: $0e $0a
    rst $30                                       ; $6697: $f7
    jr nz, @+$13                                  ; $6698: $20 $11

    jr z, jr_032_669f                             ; $669a: $28 $03

    rst $18                                       ; $669c: $df
    db $10                                        ; $669d: $10
    ld a, [bc]                                    ; $669e: $0a

jr_032_669f:
    ld a, $08                                     ; $669f: $3e $08
    rst $18                                       ; $66a1: $df
    ld [$c90a], sp                                ; $66a2: $08 $0a $c9
    ld a, $09                                     ; $66a5: $3e $09
    ld [$c4bc], a                                 ; $66a7: $ea $bc $c4
    call Call_032_6e9f                            ; $66aa: $cd $9f $6e
    jp z, Jump_032_63cc                           ; $66ad: $ca $cc $63

    ld hl, $047e                                  ; $66b0: $21 $7e $04
    rst $18                                       ; $66b3: $df
    ld c, $0a                                     ; $66b4: $0e $0a
    rst $30                                       ; $66b6: $f7
    ld b, b                                       ; $66b7: $40
    ld de, $0328                                  ; $66b8: $11 $28 $03
    rst $18                                       ; $66bb: $df
    db $10                                        ; $66bc: $10
    ld a, [bc]                                    ; $66bd: $0a
    ld a, $09                                     ; $66be: $3e $09
    rst $18                                       ; $66c0: $df
    ld [$c90a], sp                                ; $66c1: $08 $0a $c9
    ld a, $0a                                     ; $66c4: $3e $0a
    ld [$c4bc], a                                 ; $66c6: $ea $bc $c4
    call Call_032_6e9f                            ; $66c9: $cd $9f $6e
    jp z, Jump_032_63de                           ; $66cc: $ca $de $63

    rst $30                                       ; $66cf: $f7
    add b                                         ; $66d0: $80
    ld [de], a                                    ; $66d1: $12
    jr nz, jr_032_6713                            ; $66d2: $20 $3f

    ld hl, $0480                                  ; $66d4: $21 $80 $04
    rst $18                                       ; $66d7: $df
    ld c, $0a                                     ; $66d8: $0e $0a
    ld a, $0a                                     ; $66da: $3e $0a
    ld b, a                                       ; $66dc: $47
    ld a, $06                                     ; $66dd: $3e $06
    rst $18                                       ; $66df: $df
    ld [hl-], a                                   ; $66e0: $32
    ld a, [bc]                                    ; $66e1: $0a
    ld a, $0a                                     ; $66e2: $3e $0a
    rst $18                                       ; $66e4: $df
    inc [hl]                                      ; $66e5: $34
    ld a, [bc]                                    ; $66e6: $0a
    ld a, $0a                                     ; $66e7: $3e $0a
    rst $18                                       ; $66e9: $df
    ld [$3e0a], sp                                ; $66ea: $08 $0a $3e
    ld a, [bc]                                    ; $66ed: $0a
    ld b, a                                       ; $66ee: $47
    ld a, $07                                     ; $66ef: $3e $07
    rst $18                                       ; $66f1: $df
    ld [hl-], a                                   ; $66f2: $32
    ld a, [bc]                                    ; $66f3: $0a
    ld a, $0a                                     ; $66f4: $3e $0a
    rst $18                                       ; $66f6: $df
    inc [hl]                                      ; $66f7: $34
    ld a, [bc]                                    ; $66f8: $0a
    ld a, $0a                                     ; $66f9: $3e $0a
    rst $18                                       ; $66fb: $df
    ld [$3e0a], sp                                ; $66fc: $08 $0a $3e
    ld a, [bc]                                    ; $66ff: $0a
    ld b, a                                       ; $6700: $47
    ld a, $06                                     ; $6701: $3e $06
    rst $18                                       ; $6703: $df
    ld [hl-], a                                   ; $6704: $32
    ld a, [bc]                                    ; $6705: $0a
    ld a, $0a                                     ; $6706: $3e $0a
    rst $18                                       ; $6708: $df
    inc [hl]                                      ; $6709: $34
    ld a, [bc]                                    ; $670a: $0a
    ld a, $0a                                     ; $670b: $3e $0a
    rst $18                                       ; $670d: $df
    ld [$e70a], sp                                ; $670e: $08 $0a $e7
    add b                                         ; $6711: $80
    ld [de], a                                    ; $6712: $12

jr_032_6713:
    ld a, $0a                                     ; $6713: $3e $0a
    ld b, a                                       ; $6715: $47
    ld a, $05                                     ; $6716: $3e $05
    rst $18                                       ; $6718: $df
    ld [hl-], a                                   ; $6719: $32
    ld a, [bc]                                    ; $671a: $0a
    ld a, $0a                                     ; $671b: $3e $0a
    rst $18                                       ; $671d: $df
    inc [hl]                                      ; $671e: $34
    ld a, [bc]                                    ; $671f: $0a
    ld hl, $0483                                  ; $6720: $21 $83 $04
    rst $18                                       ; $6723: $df
    ld c, $0a                                     ; $6724: $0e $0a
    ld a, $0a                                     ; $6726: $3e $0a
    rst $18                                       ; $6728: $df
    ld [$c90a], sp                                ; $6729: $08 $0a $c9
    ld bc, $00ff                                  ; $672c: $01 $ff $00
    nop                                           ; $672f: $00
    ld h, a                                       ; $6730: $67
    ld a, [hl]                                    ; $6731: $7e
    ld b, $00                                     ; $6732: $06 $00
    rst $38                                       ; $6734: $ff
    call Call_032_6ab6                            ; $6735: $cd $b6 $6a
    ret                                           ; $6738: $c9


    rst $30                                       ; $6739: $f7
    and b                                         ; $673a: $a0
    rla                                           ; $673b: $17
    jr z, jr_032_6742                             ; $673c: $28 $04

    rst $20                                       ; $673e: $e7
    nop                                           ; $673f: $00
    inc c                                         ; $6740: $0c
    ret                                           ; $6741: $c9


jr_032_6742:
    rst $20                                       ; $6742: $e7
    nop                                           ; $6743: $00
    inc c                                         ; $6744: $0c
    xor a                                         ; $6745: $af
    ld [$c4b3], a                                 ; $6746: $ea $b3 $c4
    ld de, $87c0                                  ; $6749: $11 $c0 $87
    ld b, $00                                     ; $674c: $06 $00
    rst $18                                       ; $674e: $df
    inc c                                         ; $674f: $0c
    ld bc, $ddcd                                  ; $6750: $01 $cd $dd
    dec b                                         ; $6753: $05
    ld a, $0f                                     ; $6754: $3e $0f
    ld hl, $6735                                  ; $6756: $21 $35 $67
    call Call_000_23e8                            ; $6759: $cd $e8 $23
    ld hl, $01ee                                  ; $675c: $21 $ee $01
    rst $18                                       ; $675f: $df
    ld c, $0a                                     ; $6760: $0e $0a
    ld bc, $0040                                  ; $6762: $01 $40 $00
    rst $18                                       ; $6765: $df
    ld [hl], $0a                                  ; $6766: $36 $0a
    ld a, $06                                     ; $6768: $3e $06
    ld b, $c0                                     ; $676a: $06 $c0
    rst $18                                       ; $676c: $df
    inc l                                         ; $676d: $2c
    ld a, [bc]                                    ; $676e: $0a
    ld a, $06                                     ; $676f: $3e $06
    ld b, a                                       ; $6771: $47
    ld a, $07                                     ; $6772: $3e $07
    rst $18                                       ; $6774: $df
    ld [hl-], a                                   ; $6775: $32
    ld a, [bc]                                    ; $6776: $0a
    ld a, $06                                     ; $6777: $3e $06
    rst $18                                       ; $6779: $df
    inc [hl]                                      ; $677a: $34
    ld a, [bc]                                    ; $677b: $0a
    push af                                       ; $677c: $f5
    ld a, $0a                                     ; $677d: $3e $0a
    rst $18                                       ; $677f: $df
    inc b                                         ; $6780: $04
    ld a, [bc]                                    ; $6781: $0a
    pop af                                        ; $6782: $f1
    ld a, $00                                     ; $6783: $3e $00
    ld b, $40                                     ; $6785: $06 $40
    rst $18                                       ; $6787: $df
    inc l                                         ; $6788: $2c
    ld a, [bc]                                    ; $6789: $0a
    ld a, $06                                     ; $678a: $3e $06
    rst $18                                       ; $678c: $df
    ld [$3e0a], sp                                ; $678d: $08 $0a $3e
    dec b                                         ; $6790: $05
    ld b, $c0                                     ; $6791: $06 $c0
    rst $18                                       ; $6793: $df
    inc l                                         ; $6794: $2c
    ld a, [bc]                                    ; $6795: $0a
    ld a, $05                                     ; $6796: $3e $05
    ld b, a                                       ; $6798: $47
    ld a, $05                                     ; $6799: $3e $05
    rst $18                                       ; $679b: $df
    ld [hl-], a                                   ; $679c: $32
    ld a, [bc]                                    ; $679d: $0a
    ld a, $05                                     ; $679e: $3e $05
    rst $18                                       ; $67a0: $df
    inc [hl]                                      ; $67a1: $34
    ld a, [bc]                                    ; $67a2: $0a
    push af                                       ; $67a3: $f5
    ld a, $0a                                     ; $67a4: $3e $0a
    rst $18                                       ; $67a6: $df
    inc b                                         ; $67a7: $04
    ld a, [bc]                                    ; $67a8: $0a
    pop af                                        ; $67a9: $f1
    ld a, $05                                     ; $67aa: $3e $05
    ld b, $c0                                     ; $67ac: $06 $c0
    ld de, $0200                                  ; $67ae: $11 $00 $02
    rst $18                                       ; $67b1: $df
    jr z, jr_032_67be                             ; $67b2: $28 $0a

    ld a, $05                                     ; $67b4: $3e $05
    rst $18                                       ; $67b6: $df
    ld e, $0a                                     ; $67b7: $1e $0a
    push af                                       ; $67b9: $f5
    ld a, $0a                                     ; $67ba: $3e $0a
    rst $18                                       ; $67bc: $df
    inc b                                         ; $67bd: $04

jr_032_67be:
    ld a, [bc]                                    ; $67be: $0a
    pop af                                        ; $67bf: $f1
    rst $30                                       ; $67c0: $f7
    nop                                           ; $67c1: $00
    ld de, $1228                                  ; $67c2: $11 $28 $12
    rst $30                                       ; $67c5: $f7
    jr nz, jr_032_67d9                            ; $67c6: $20 $11

    jr z, jr_032_67d7                             ; $67c8: $28 $0d

    rst $30                                       ; $67ca: $f7
    ld b, b                                       ; $67cb: $40
    ld de, $0828                                  ; $67cc: $11 $28 $08
    rst $30                                       ; $67cf: $f7
    ld h, b                                       ; $67d0: $60
    ld de, $0328                                  ; $67d1: $11 $28 $03
    rst $18                                       ; $67d4: $df
    db $10                                        ; $67d5: $10
    ld a, [bc]                                    ; $67d6: $0a

jr_032_67d7:
    ld a, $05                                     ; $67d7: $3e $05

jr_032_67d9:
    rst $18                                       ; $67d9: $df
    ld [$f50a], sp                                ; $67da: $08 $0a $f5
    ld a, $0a                                     ; $67dd: $3e $0a
    rst $18                                       ; $67df: $df
    inc b                                         ; $67e0: $04
    ld a, [bc]                                    ; $67e1: $0a
    pop af                                        ; $67e2: $f1

Jump_032_67e3:
    xor a                                         ; $67e3: $af
    ld bc, $0a00                                  ; $67e4: $01 $00 $0a
    ld de, $1040                                  ; $67e7: $11 $40 $10
    rst $18                                       ; $67ea: $df
    jr c, jr_032_67f7                             ; $67eb: $38 $0a

    rst $18                                       ; $67ed: $df
    inc a                                         ; $67ee: $3c
    ld a, [bc]                                    ; $67ef: $0a
    push af                                       ; $67f0: $f5
    ld a, $14                                     ; $67f1: $3e $14
    rst $18                                       ; $67f3: $df
    inc b                                         ; $67f4: $04
    ld a, [bc]                                    ; $67f5: $0a
    pop af                                        ; $67f6: $f1

jr_032_67f7:
    ld a, $00                                     ; $67f7: $3e $00
    ld b, $c0                                     ; $67f9: $06 $c0
    rst $18                                       ; $67fb: $df
    inc l                                         ; $67fc: $2c
    ld a, [bc]                                    ; $67fd: $0a
    push af                                       ; $67fe: $f5
    ld a, $14                                     ; $67ff: $3e $14
    rst $18                                       ; $6801: $df
    inc b                                         ; $6802: $04
    ld a, [bc]                                    ; $6803: $0a
    pop af                                        ; $6804: $f1
    ld a, $01                                     ; $6805: $3e $01
    ld [$c4b3], a                                 ; $6807: $ea $b3 $c4
    ld hl, $01f1                                  ; $680a: $21 $f1 $01
    rst $18                                       ; $680d: $df
    ld c, $0a                                     ; $680e: $0e $0a
    rst $30                                       ; $6810: $f7
    ld h, b                                       ; $6811: $60
    ld de, $0628                                  ; $6812: $11 $28 $06
    ld hl, $01f9                                  ; $6815: $21 $f9 $01
    rst $18                                       ; $6818: $df
    ld c, $0a                                     ; $6819: $0e $0a
    ld a, $86                                     ; $681b: $3e $86
    rst $18                                       ; $681d: $df
    ld [$af0a], sp                                ; $681e: $08 $0a $af
    ld [$c4b3], a                                 ; $6821: $ea $b3 $c4
    push af                                       ; $6824: $f5
    ld a, $0a                                     ; $6825: $3e $0a
    rst $18                                       ; $6827: $df
    inc b                                         ; $6828: $04
    ld a, [bc]                                    ; $6829: $0a
    pop af                                        ; $682a: $f1
    ld a, $05                                     ; $682b: $3e $05
    ld b, a                                       ; $682d: $47
    ld a, $05                                     ; $682e: $3e $05
    rst $18                                       ; $6830: $df
    ld [hl-], a                                   ; $6831: $32
    ld a, [bc]                                    ; $6832: $0a
    ld a, $05                                     ; $6833: $3e $05
    rst $18                                       ; $6835: $df
    inc [hl]                                      ; $6836: $34
    ld a, [bc]                                    ; $6837: $0a
    push af                                       ; $6838: $f5
    ld a, $0a                                     ; $6839: $3e $0a
    rst $18                                       ; $683b: $df
    inc b                                         ; $683c: $04
    ld a, [bc]                                    ; $683d: $0a
    pop af                                        ; $683e: $f1
    ld a, $02                                     ; $683f: $3e $02
    ld [$c4b3], a                                 ; $6841: $ea $b3 $c4
    ld hl, $01f2                                  ; $6844: $21 $f2 $01
    rst $18                                       ; $6847: $df
    ld c, $0a                                     ; $6848: $0e $0a
    rst $30                                       ; $684a: $f7
    ld b, b                                       ; $684b: $40
    ld de, $0628                                  ; $684c: $11 $28 $06
    ld hl, $01fa                                  ; $684f: $21 $fa $01
    rst $18                                       ; $6852: $df
    ld c, $0a                                     ; $6853: $0e $0a
    ld a, $86                                     ; $6855: $3e $86
    rst $18                                       ; $6857: $df
    ld [$af0a], sp                                ; $6858: $08 $0a $af
    ld [$c4b3], a                                 ; $685b: $ea $b3 $c4
    push af                                       ; $685e: $f5
    ld a, $0a                                     ; $685f: $3e $0a
    rst $18                                       ; $6861: $df
    inc b                                         ; $6862: $04
    ld a, [bc]                                    ; $6863: $0a
    pop af                                        ; $6864: $f1
    ld a, $06                                     ; $6865: $3e $06
    ld b, a                                       ; $6867: $47
    ld a, $05                                     ; $6868: $3e $05
    rst $18                                       ; $686a: $df
    ld [hl-], a                                   ; $686b: $32
    ld a, [bc]                                    ; $686c: $0a
    ld a, $06                                     ; $686d: $3e $06
    rst $18                                       ; $686f: $df
    inc [hl]                                      ; $6870: $34
    ld a, [bc]                                    ; $6871: $0a
    push af                                       ; $6872: $f5
    ld a, $0a                                     ; $6873: $3e $0a
    rst $18                                       ; $6875: $df
    inc b                                         ; $6876: $04
    ld a, [bc]                                    ; $6877: $0a
    pop af                                        ; $6878: $f1
    ld a, $03                                     ; $6879: $3e $03
    ld [$c4b3], a                                 ; $687b: $ea $b3 $c4
    ld hl, $01f3                                  ; $687e: $21 $f3 $01
    rst $18                                       ; $6881: $df
    ld c, $0a                                     ; $6882: $0e $0a
    rst $30                                       ; $6884: $f7
    jr nz, jr_032_6898                            ; $6885: $20 $11

    jr z, jr_032_688f                             ; $6887: $28 $06

    ld hl, $01fb                                  ; $6889: $21 $fb $01
    rst $18                                       ; $688c: $df
    ld c, $0a                                     ; $688d: $0e $0a

jr_032_688f:
    ld a, $86                                     ; $688f: $3e $86
    rst $18                                       ; $6891: $df
    ld [$af0a], sp                                ; $6892: $08 $0a $af
    ld [$c4b3], a                                 ; $6895: $ea $b3 $c4

jr_032_6898:
    push af                                       ; $6898: $f5
    ld a, $0a                                     ; $6899: $3e $0a
    rst $18                                       ; $689b: $df
    inc b                                         ; $689c: $04
    ld a, [bc]                                    ; $689d: $0a
    pop af                                        ; $689e: $f1
    ld a, $05                                     ; $689f: $3e $05
    ld b, a                                       ; $68a1: $47
    ld a, $05                                     ; $68a2: $3e $05
    rst $18                                       ; $68a4: $df
    ld [hl-], a                                   ; $68a5: $32
    ld a, [bc]                                    ; $68a6: $0a
    ld a, $05                                     ; $68a7: $3e $05
    rst $18                                       ; $68a9: $df
    inc [hl]                                      ; $68aa: $34
    ld a, [bc]                                    ; $68ab: $0a
    push af                                       ; $68ac: $f5
    ld a, $0a                                     ; $68ad: $3e $0a
    rst $18                                       ; $68af: $df
    inc b                                         ; $68b0: $04
    ld a, [bc]                                    ; $68b1: $0a
    pop af                                        ; $68b2: $f1
    ld a, $04                                     ; $68b3: $3e $04
    ld [$c4b3], a                                 ; $68b5: $ea $b3 $c4
    ld hl, $01f4                                  ; $68b8: $21 $f4 $01
    rst $18                                       ; $68bb: $df
    ld c, $0a                                     ; $68bc: $0e $0a
    rst $30                                       ; $68be: $f7
    nop                                           ; $68bf: $00
    ld de, $0628                                  ; $68c0: $11 $28 $06
    ld hl, $01fc                                  ; $68c3: $21 $fc $01
    rst $18                                       ; $68c6: $df
    ld c, $0a                                     ; $68c7: $0e $0a
    ld a, $86                                     ; $68c9: $3e $86
    rst $18                                       ; $68cb: $df
    ld [$af0a], sp                                ; $68cc: $08 $0a $af
    ld [$c4b3], a                                 ; $68cf: $ea $b3 $c4
    push af                                       ; $68d2: $f5
    ld a, $0a                                     ; $68d3: $3e $0a
    rst $18                                       ; $68d5: $df
    inc b                                         ; $68d6: $04
    ld a, [bc]                                    ; $68d7: $0a
    pop af                                        ; $68d8: $f1
    ld a, $00                                     ; $68d9: $3e $00
    ld b, $00                                     ; $68db: $06 $00
    rst $18                                       ; $68dd: $df
    ld a, [hl-]                                   ; $68de: $3a
    ld a, [bc]                                    ; $68df: $0a
    push af                                       ; $68e0: $f5
    ld a, $14                                     ; $68e1: $3e $14
    rst $18                                       ; $68e3: $df
    inc b                                         ; $68e4: $04
    ld a, [bc]                                    ; $68e5: $0a
    pop af                                        ; $68e6: $f1
    ld a, $00                                     ; $68e7: $3e $00
    ld b, $40                                     ; $68e9: $06 $40
    rst $18                                       ; $68eb: $df
    inc l                                         ; $68ec: $2c
    ld a, [bc]                                    ; $68ed: $0a
    push af                                       ; $68ee: $f5
    ld a, $0a                                     ; $68ef: $3e $0a
    rst $18                                       ; $68f1: $df
    inc b                                         ; $68f2: $04
    ld a, [bc]                                    ; $68f3: $0a
    pop af                                        ; $68f4: $f1
    ld a, $06                                     ; $68f5: $3e $06
    ld b, a                                       ; $68f7: $47
    ld a, $05                                     ; $68f8: $3e $05
    rst $18                                       ; $68fa: $df
    ld [hl-], a                                   ; $68fb: $32
    ld a, [bc]                                    ; $68fc: $0a
    ld a, $06                                     ; $68fd: $3e $06
    rst $18                                       ; $68ff: $df
    inc [hl]                                      ; $6900: $34
    ld a, [bc]                                    ; $6901: $0a
    push af                                       ; $6902: $f5
    ld a, $0a                                     ; $6903: $3e $0a
    rst $18                                       ; $6905: $df
    inc b                                         ; $6906: $04
    ld a, [bc]                                    ; $6907: $0a
    pop af                                        ; $6908: $f1
    ld hl, $01f5                                  ; $6909: $21 $f5 $01
    rst $18                                       ; $690c: $df
    ld c, $0a                                     ; $690d: $0e $0a
    ld a, $06                                     ; $690f: $3e $06
    rst $18                                       ; $6911: $df
    ld a, [bc]                                    ; $6912: $0a
    ld a, [bc]                                    ; $6913: $0a
    push af                                       ; $6914: $f5
    ld a, $0a                                     ; $6915: $3e $0a
    rst $18                                       ; $6917: $df
    inc b                                         ; $6918: $04
    ld a, [bc]                                    ; $6919: $0a
    pop af                                        ; $691a: $f1
    rst $18                                       ; $691b: $df
    ld [de], a                                    ; $691c: $12
    ld a, [bc]                                    ; $691d: $0a
    rst $18                                       ; $691e: $df
    inc c                                         ; $691f: $0c
    ld a, [bc]                                    ; $6920: $0a
    push af                                       ; $6921: $f5
    ld a, $0a                                     ; $6922: $3e $0a
    rst $18                                       ; $6924: $df
    inc b                                         ; $6925: $04
    ld a, [bc]                                    ; $6926: $0a
    pop af                                        ; $6927: $f1
    and a                                         ; $6928: $a7
    jr z, jr_032_694e                             ; $6929: $28 $23

    ld a, $05                                     ; $692b: $3e $05
    ld b, a                                       ; $692d: $47
    ld a, $05                                     ; $692e: $3e $05
    rst $18                                       ; $6930: $df
    ld [hl-], a                                   ; $6931: $32
    ld a, [bc]                                    ; $6932: $0a
    ld a, $05                                     ; $6933: $3e $05
    rst $18                                       ; $6935: $df
    inc [hl]                                      ; $6936: $34
    ld a, [bc]                                    ; $6937: $0a
    push af                                       ; $6938: $f5
    ld a, $0a                                     ; $6939: $3e $0a
    rst $18                                       ; $693b: $df
    inc b                                         ; $693c: $04
    ld a, [bc]                                    ; $693d: $0a
    pop af                                        ; $693e: $f1
    ld a, $05                                     ; $693f: $3e $05
    rst $18                                       ; $6941: $df
    ld [$f50a], sp                                ; $6942: $08 $0a $f5
    ld a, $0a                                     ; $6945: $3e $0a
    rst $18                                       ; $6947: $df
    inc b                                         ; $6948: $04
    ld a, [bc]                                    ; $6949: $0a
    pop af                                        ; $694a: $f1
    jp Jump_032_67e3                              ; $694b: $c3 $e3 $67


jr_032_694e:
    rst $18                                       ; $694e: $df
    db $10                                        ; $694f: $10
    ld a, [bc]                                    ; $6950: $0a
    rst $30                                       ; $6951: $f7
    nop                                           ; $6952: $00
    ld de, $1228                                  ; $6953: $11 $28 $12
    rst $30                                       ; $6956: $f7
    jr nz, jr_032_696a                            ; $6957: $20 $11

    jr z, jr_032_6968                             ; $6959: $28 $0d

    rst $30                                       ; $695b: $f7
    ld b, b                                       ; $695c: $40
    ld de, $0828                                  ; $695d: $11 $28 $08
    rst $30                                       ; $6960: $f7
    ld h, b                                       ; $6961: $60
    ld de, $0328                                  ; $6962: $11 $28 $03
    rst $18                                       ; $6965: $df
    db $10                                        ; $6966: $10
    ld a, [bc]                                    ; $6967: $0a

jr_032_6968:
    ld a, $05                                     ; $6968: $3e $05

jr_032_696a:
    rst $18                                       ; $696a: $df
    ld [$f50a], sp                                ; $696b: $08 $0a $f5
    ld a, $0a                                     ; $696e: $3e $0a
    rst $18                                       ; $6970: $df
    inc b                                         ; $6971: $04
    ld a, [bc]                                    ; $6972: $0a
    pop af                                        ; $6973: $f1
    ld a, $05                                     ; $6974: $3e $05
    ld b, a                                       ; $6976: $47
    ld a, $05                                     ; $6977: $3e $05
    rst $18                                       ; $6979: $df
    ld [hl-], a                                   ; $697a: $32
    ld a, [bc]                                    ; $697b: $0a
    ld a, $05                                     ; $697c: $3e $05
    rst $18                                       ; $697e: $df
    inc [hl]                                      ; $697f: $34
    ld a, [bc]                                    ; $6980: $0a
    push af                                       ; $6981: $f5
    ld a, $0a                                     ; $6982: $3e $0a
    rst $18                                       ; $6984: $df
    inc b                                         ; $6985: $04
    ld a, [bc]                                    ; $6986: $0a
    pop af                                        ; $6987: $f1
    ld a, $05                                     ; $6988: $3e $05
    ld b, $40                                     ; $698a: $06 $40
    ld de, $0200                                  ; $698c: $11 $00 $02
    rst $18                                       ; $698f: $df
    jr z, jr_032_699c                             ; $6990: $28 $0a

    ld a, $05                                     ; $6992: $3e $05
    rst $18                                       ; $6994: $df
    ld e, $0a                                     ; $6995: $1e $0a
    ld a, $05                                     ; $6997: $3e $05
    ld b, $c0                                     ; $6999: $06 $c0
    rst $18                                       ; $699b: $df

jr_032_699c:
    inc l                                         ; $699c: $2c
    ld a, [bc]                                    ; $699d: $0a
    push af                                       ; $699e: $f5
    ld a, $0a                                     ; $699f: $3e $0a
    rst $18                                       ; $69a1: $df
    inc b                                         ; $69a2: $04
    ld a, [bc]                                    ; $69a3: $0a
    pop af                                        ; $69a4: $f1
    ld hl, $6735                                  ; $69a5: $21 $35 $67
    call Call_000_2449                            ; $69a8: $cd $49 $24
    ret                                           ; $69ab: $c9


    ld bc, $60ff                                  ; $69ac: $01 $ff $60
    nop                                           ; $69af: $00
    add hl, sp                                    ; $69b0: $39
    ld h, a                                       ; $69b1: $67
    nop                                           ; $69b2: $00
    nop                                           ; $69b3: $00
    rst $38                                       ; $69b4: $ff
    ld a, [$c46a]                                 ; $69b5: $fa $6a $c4
    cp $fa                                        ; $69b8: $fe $fa
    jr nz, jr_032_69c2                            ; $69ba: $20 $06

    xor a                                         ; $69bc: $af
    ld hl, $c4b4                                  ; $69bd: $21 $b4 $c4
    ld [hl+], a                                   ; $69c0: $22
    ld [hl+], a                                   ; $69c1: $22

jr_032_69c2:
    rst $30                                       ; $69c2: $f7
    nop                                           ; $69c3: $00
    ld [de], a                                    ; $69c4: $12
    jr z, jr_032_69d2                             ; $69c5: $28 $0b

    ld a, $07                                     ; $69c7: $3e $07
    ld bc, $3f00                                  ; $69c9: $01 $00 $3f
    ld de, $3f00                                  ; $69cc: $11 $00 $3f
    rst $18                                       ; $69cf: $df
    jr nz, jr_032_69dc                            ; $69d0: $20 $0a

jr_032_69d2:
    rst $30                                       ; $69d2: $f7
    jr nz, jr_032_69e7                            ; $69d3: $20 $12

    jr z, jr_032_69e2                             ; $69d5: $28 $0b

    ld a, $08                                     ; $69d7: $3e $08
    ld bc, $3f00                                  ; $69d9: $01 $00 $3f

jr_032_69dc:
    ld de, $3f00                                  ; $69dc: $11 $00 $3f
    rst $18                                       ; $69df: $df
    jr nz, jr_032_69ec                            ; $69e0: $20 $0a

jr_032_69e2:
    rst $30                                       ; $69e2: $f7
    ld b, b                                       ; $69e3: $40
    ld [de], a                                    ; $69e4: $12
    jr z, jr_032_69f2                             ; $69e5: $28 $0b

jr_032_69e7:
    ld a, $09                                     ; $69e7: $3e $09
    ld bc, $3f00                                  ; $69e9: $01 $00 $3f

jr_032_69ec:
    ld de, $3f00                                  ; $69ec: $11 $00 $3f
    rst $18                                       ; $69ef: $df
    jr nz, jr_032_69fc                            ; $69f0: $20 $0a

jr_032_69f2:
    rst $30                                       ; $69f2: $f7
    ld h, b                                       ; $69f3: $60
    ld [de], a                                    ; $69f4: $12
    jr z, jr_032_6a02                             ; $69f5: $28 $0b

    ld a, $0a                                     ; $69f7: $3e $0a
    ld bc, $3f00                                  ; $69f9: $01 $00 $3f

jr_032_69fc:
    ld de, $3f00                                  ; $69fc: $11 $00 $3f
    rst $18                                       ; $69ff: $df
    jr nz, @+$0c                                  ; $6a00: $20 $0a

jr_032_6a02:
    rst $30                                       ; $6a02: $f7
    ld h, b                                       ; $6a03: $60
    ld de, $0b28                                  ; $6a04: $11 $28 $0b
    ld hl, $65c2                                  ; $6a07: $21 $c2 $65
    ld de, $000c                                  ; $6a0a: $11 $0c $00
    rst $18                                       ; $6a0d: $df
    ld c, h                                       ; $6a0e: $4c
    ld a, [bc]                                    ; $6a0f: $0a
    jr jr_032_6a5b                                ; $6a10: $18 $49

    rst $30                                       ; $6a12: $f7
    ld h, b                                       ; $6a13: $60
    ld c, $28                                     ; $6a14: $0e $28
    dec bc                                        ; $6a16: $0b
    ld hl, $6579                                  ; $6a17: $21 $79 $65
    ld de, $000c                                  ; $6a1a: $11 $0c $00
    rst $18                                       ; $6a1d: $df
    ld c, h                                       ; $6a1e: $4c
    ld a, [bc]                                    ; $6a1f: $0a
    jr jr_032_6a5b                                ; $6a20: $18 $39

    rst $30                                       ; $6a22: $f7
    ld b, b                                       ; $6a23: $40
    ld c, $28                                     ; $6a24: $0e $28
    dec bc                                        ; $6a26: $0b
    ld hl, $6530                                  ; $6a27: $21 $30 $65
    ld de, $000c                                  ; $6a2a: $11 $0c $00
    rst $18                                       ; $6a2d: $df
    ld c, h                                       ; $6a2e: $4c
    ld a, [bc]                                    ; $6a2f: $0a
    jr jr_032_6a5b                                ; $6a30: $18 $29

    rst $30                                       ; $6a32: $f7
    jr nz, jr_032_6a43                            ; $6a33: $20 $0e

    jr z, jr_032_6a4d                             ; $6a35: $28 $16

    ld hl, $64e7                                  ; $6a37: $21 $e7 $64
    ld de, $000c                                  ; $6a3a: $11 $0c $00
    rst $18                                       ; $6a3d: $df
    ld c, h                                       ; $6a3e: $4c
    ld a, [bc]                                    ; $6a3f: $0a
    ldh a, [$95]                                  ; $6a40: $f0 $95
    ld b, a                                       ; $6a42: $47

jr_032_6a43:
    ld a, $04                                     ; $6a43: $3e $04
    ld de, $6a5c                                  ; $6a45: $11 $5c $6a
    rst $18                                       ; $6a48: $df
    jr jr_032_6a55                                ; $6a49: $18 $0a

    jr jr_032_6a5b                                ; $6a4b: $18 $0e

jr_032_6a4d:
    rst $30                                       ; $6a4d: $f7
    nop                                           ; $6a4e: $00
    ld c, $28                                     ; $6a4f: $0e $28
    add hl, bc                                    ; $6a51: $09
    ld hl, $649e                                  ; $6a52: $21 $9e $64

jr_032_6a55:
    ld de, $000c                                  ; $6a55: $11 $0c $00
    rst $18                                       ; $6a58: $df
    ld c, h                                       ; $6a59: $4c
    ld a, [bc]                                    ; $6a5a: $0a

jr_032_6a5b:
    ret                                           ; $6a5b: $c9


    dec c                                         ; $6a5c: $0d
    ld c, $06                                     ; $6a5d: $0e $06
    nop                                           ; $6a5f: $00
    dec c                                         ; $6a60: $0d
    dec de                                        ; $6a61: $1b
    ld bc, $0700                                  ; $6a62: $01 $00 $07
    nop                                           ; $6a65: $00
    nop                                           ; $6a66: $00
    ld [bc], a                                    ; $6a67: $02
    ld [bc], a                                    ; $6a68: $02
    ld bc, $07c8                                  ; $6a69: $01 $c8 $07
    add b                                         ; $6a6c: $80
    nop                                           ; $6a6d: $00
    ld [bc], a                                    ; $6a6e: $02
    ld [bc], a                                    ; $6a6f: $02
    ld bc, $0d32                                  ; $6a70: $01 $32 $0d
    db $10                                        ; $6a73: $10
    ret nz                                        ; $6a74: $c0

    nop                                           ; $6a75: $00
    ld bc, $07f0                                  ; $6a76: $01 $f0 $07
    add b                                         ; $6a79: $80
    nop                                           ; $6a7a: $00
    ld [bc], a                                    ; $6a7b: $02
    ld [bc], a                                    ; $6a7c: $02
    ld bc, $0d32                                  ; $6a7d: $01 $32 $0d
    db $10                                        ; $6a80: $10
    ret nz                                        ; $6a81: $c0

    nop                                           ; $6a82: $00
    ld bc, $072c                                  ; $6a83: $01 $2c $07
    nop                                           ; $6a86: $00
    nop                                           ; $6a87: $00
    ld [bc], a                                    ; $6a88: $02
    ld [bc], a                                    ; $6a89: $02
    ld bc, $0d32                                  ; $6a8a: $01 $32 $0d
    db $10                                        ; $6a8d: $10
    ret nz                                        ; $6a8e: $c0

    nop                                           ; $6a8f: $00
    ld bc, $07f0                                  ; $6a90: $01 $f0 $07
    nop                                           ; $6a93: $00
    nop                                           ; $6a94: $00
    ld [bc], a                                    ; $6a95: $02
    ld [bc], a                                    ; $6a96: $02
    ld bc, $0d32                                  ; $6a97: $01 $32 $0d
    db $10                                        ; $6a9a: $10
    ret nz                                        ; $6a9b: $c0

    nop                                           ; $6a9c: $00
    ld bc, $0c18                                  ; $6a9d: $01 $18 $0c
    set 7, a                                      ; $6aa0: $cb $ff
    ldh a, [$f0]                                  ; $6aa2: $f0 $f0
    nop                                           ; $6aa4: $00
    nop                                           ; $6aa5: $00
    ld [hl], b                                    ; $6aa6: $70
    jr nz, jr_032_6aa9                            ; $6aa7: $20 $00

jr_032_6aa9:
    nop                                           ; $6aa9: $00
    ld d, b                                       ; $6aaa: $50
    inc d                                         ; $6aab: $14
    jr nz, jr_032_6aae                            ; $6aac: $20 $00

jr_032_6aae:
    ld d, b                                       ; $6aae: $50
    inc d                                         ; $6aaf: $14
    nop                                           ; $6ab0: $00
    nop                                           ; $6ab1: $00
    jr nc, jr_032_6ad4                            ; $6ab2: $30 $20

    jr nz, jr_032_6ab6                            ; $6ab4: $20 $00

Call_032_6ab6:
jr_032_6ab6:
    push af                                       ; $6ab6: $f5
    push bc                                       ; $6ab7: $c5
    push de                                       ; $6ab8: $d5
    push hl                                       ; $6ab9: $e5
    ld a, [$c4b3]                                 ; $6aba: $fa $b3 $c4
    and a                                         ; $6abd: $a7
    jr z, jr_032_6aca                             ; $6abe: $28 $0a

    ld a, [$c4b2]                                 ; $6ac0: $fa $b2 $c4
    rrca                                          ; $6ac3: $0f
    and $07                                       ; $6ac4: $e6 $07
    jr nz, jr_032_6aca                            ; $6ac6: $20 $02

    rst $08                                       ; $6ac8: $cf
    sub b                                         ; $6ac9: $90

jr_032_6aca:
    ld a, [$c4b3]                                 ; $6aca: $fa $b3 $c4
    add a                                         ; $6acd: $87
    add a                                         ; $6ace: $87
    ld hl, $6aa2                                  ; $6acf: $21 $a2 $6a
    add l                                         ; $6ad2: $85
    ld l, a                                       ; $6ad3: $6f

jr_032_6ad4:
    jr nc, jr_032_6ad7                            ; $6ad4: $30 $01

    inc h                                         ; $6ad6: $24

jr_032_6ad7:
    ld a, [hl+]                                   ; $6ad7: $2a
    ld d, a                                       ; $6ad8: $57
    ld a, [hl+]                                   ; $6ad9: $2a
    ld e, a                                       ; $6ada: $5f
    ld b, [hl]                                    ; $6adb: $46
    ld a, [$c4b2]                                 ; $6adc: $fa $b2 $c4
    rrca                                          ; $6adf: $0f
    and $07                                       ; $6ae0: $e6 $07
    bit 5, b                                      ; $6ae2: $cb $68
    jr z, jr_032_6ae7                             ; $6ae4: $28 $01

    cpl                                           ; $6ae6: $2f

jr_032_6ae7:
    add $00                                       ; $6ae7: $c6 $00
    add d                                         ; $6ae9: $82
    ld d, a                                       ; $6aea: $57
    ld a, [$c4b2]                                 ; $6aeb: $fa $b2 $c4
    rrca                                          ; $6aee: $0f
    and $07                                       ; $6aef: $e6 $07
    add $08                                       ; $6af1: $c6 $08
    add e                                         ; $6af3: $83
    ld e, a                                       ; $6af4: $5f
    ld c, $7c                                     ; $6af5: $0e $7c
    call Call_000_26a4                            ; $6af7: $cd $a4 $26
    pop hl                                        ; $6afa: $e1
    pop de                                        ; $6afb: $d1
    pop bc                                        ; $6afc: $c1
    pop af                                        ; $6afd: $f1
    ret                                           ; $6afe: $c9


Call_032_6aff:
    ld hl, $c4ba                                  ; $6aff: $21 $ba $c4
    ld a, [hl+]                                   ; $6b02: $2a
    ld h, [hl]                                    ; $6b03: $66
    ld l, a                                       ; $6b04: $6f
    add hl, de                                    ; $6b05: $19
    rst $18                                       ; $6b06: $df
    ld c, $0a                                     ; $6b07: $0e $0a
    ld a, [$c4bc]                                 ; $6b09: $fa $bc $c4
    rst $18                                       ; $6b0c: $df
    ld [$f50a], sp                                ; $6b0d: $08 $0a $f5
    ld a, $0a                                     ; $6b10: $3e $0a
    rst $18                                       ; $6b12: $df
    inc b                                         ; $6b13: $04
    ld a, [bc]                                    ; $6b14: $0a
    pop af                                        ; $6b15: $f1
    ret                                           ; $6b16: $c9


Call_032_6b17:
    ld hl, $c4ba                                  ; $6b17: $21 $ba $c4
    ld a, [hl+]                                   ; $6b1a: $2a
    ld h, [hl]                                    ; $6b1b: $66
    ld l, a                                       ; $6b1c: $6f
    add hl, de                                    ; $6b1d: $19
    rst $18                                       ; $6b1e: $df
    ld c, $0a                                     ; $6b1f: $0e $0a
    ld a, [$c4bc]                                 ; $6b21: $fa $bc $c4
    rst $18                                       ; $6b24: $df
    ld a, [bc]                                    ; $6b25: $0a
    ld a, [bc]                                    ; $6b26: $0a
    push af                                       ; $6b27: $f5
    ld a, $05                                     ; $6b28: $3e $05
    rst $18                                       ; $6b2a: $df
    inc b                                         ; $6b2b: $04
    ld a, [bc]                                    ; $6b2c: $0a
    pop af                                        ; $6b2d: $f1
    ret                                           ; $6b2e: $c9


Call_032_6b2f:
    ld a, [$c4bc]                                 ; $6b2f: $fa $bc $c4
    sub $07                                       ; $6b32: $d6 $07
    ld h, $00                                     ; $6b34: $26 $00
    ld l, a                                       ; $6b36: $6f
    add hl, de                                    ; $6b37: $19
    add hl, hl                                    ; $6b38: $29
    add hl, hl                                    ; $6b39: $29
    add hl, hl                                    ; $6b3a: $29
    add hl, hl                                    ; $6b3b: $29
    add hl, hl                                    ; $6b3c: $29
    ld e, l                                       ; $6b3d: $5d
    ld d, h                                       ; $6b3e: $54
    call Call_000_2d10                            ; $6b3f: $cd $10 $2d
    ret                                           ; $6b42: $c9


Call_032_6b43:
    ld a, [$c4bc]                                 ; $6b43: $fa $bc $c4
    sub $07                                       ; $6b46: $d6 $07
    ld h, $00                                     ; $6b48: $26 $00
    ld l, a                                       ; $6b4a: $6f
    add hl, de                                    ; $6b4b: $19
    add hl, hl                                    ; $6b4c: $29
    add hl, hl                                    ; $6b4d: $29
    add hl, hl                                    ; $6b4e: $29
    add hl, hl                                    ; $6b4f: $29
    add hl, hl                                    ; $6b50: $29
    ld e, l                                       ; $6b51: $5d
    ld d, h                                       ; $6b52: $54
    call Call_000_2d2e                            ; $6b53: $cd $2e $2d
    ret                                           ; $6b56: $c9


Call_032_6b57:
    ld a, [$c4bc]                                 ; $6b57: $fa $bc $c4
    sub $07                                       ; $6b5a: $d6 $07
    add a                                         ; $6b5c: $87
    ld h, $00                                     ; $6b5d: $26 $00
    ld l, a                                       ; $6b5f: $6f
    add hl, de                                    ; $6b60: $19
    add hl, hl                                    ; $6b61: $29
    add hl, hl                                    ; $6b62: $29
    add hl, hl                                    ; $6b63: $29
    add hl, hl                                    ; $6b64: $29
    add hl, hl                                    ; $6b65: $29
    ld e, l                                       ; $6b66: $5d
    ld d, h                                       ; $6b67: $54
    call Call_000_2d10                            ; $6b68: $cd $10 $2d
    ret                                           ; $6b6b: $c9


    ld a, [$c4bc]                                 ; $6b6c: $fa $bc $c4
    sub $07                                       ; $6b6f: $d6 $07
    add a                                         ; $6b71: $87
    ld h, $00                                     ; $6b72: $26 $00
    ld l, a                                       ; $6b74: $6f
    add hl, de                                    ; $6b75: $19
    add hl, hl                                    ; $6b76: $29
    add hl, hl                                    ; $6b77: $29
    add hl, hl                                    ; $6b78: $29
    add hl, hl                                    ; $6b79: $29
    add hl, hl                                    ; $6b7a: $29
    ld e, l                                       ; $6b7b: $5d
    ld d, h                                       ; $6b7c: $54
    call Call_000_2d2e                            ; $6b7d: $cd $2e $2d
    ret                                           ; $6b80: $c9


Call_032_6b81:
    ld a, [$c4bc]                                 ; $6b81: $fa $bc $c4
    cp $07                                        ; $6b84: $fe $07
    jr z, jr_032_6baa                             ; $6b86: $28 $22

    ld de, $004e                                  ; $6b88: $11 $4e $00
    call Call_032_6b57                            ; $6b8b: $cd $57 $6b
    jr nz, jr_032_6baa                            ; $6b8e: $20 $1a

    ld de, $0088                                  ; $6b90: $11 $88 $00
    call Call_032_6b2f                            ; $6b93: $cd $2f $6b
    jr nz, jr_032_6ba1                            ; $6b96: $20 $09

    ld de, $0011                                  ; $6b98: $11 $11 $00
    call Call_032_6aff                            ; $6b9b: $cd $ff $6a
    jp Jump_032_6dce                              ; $6b9e: $c3 $ce $6d


jr_032_6ba1:
    ld de, $0012                                  ; $6ba1: $11 $12 $00
    call Call_032_6aff                            ; $6ba4: $cd $ff $6a
    jp Jump_032_6dce                              ; $6ba7: $c3 $ce $6d


jr_032_6baa:
    ld de, $0050                                  ; $6baa: $11 $50 $00
    call Call_032_6b57                            ; $6bad: $cd $57 $6b
    jr z, jr_032_6bdd                             ; $6bb0: $28 $2b

    ld de, $0088                                  ; $6bb2: $11 $88 $00
    call Call_032_6b2f                            ; $6bb5: $cd $2f $6b
    jr z, jr_032_6bc3                             ; $6bb8: $28 $09

    ld de, $0010                                  ; $6bba: $11 $10 $00
    call Call_032_6aff                            ; $6bbd: $cd $ff $6a
    jp Jump_032_6dce                              ; $6bc0: $c3 $ce $6d


jr_032_6bc3:
    ld de, $0052                                  ; $6bc3: $11 $52 $00
    call Call_032_6b57                            ; $6bc6: $cd $57 $6b
    jr nz, jr_032_6bd4                            ; $6bc9: $20 $09

    ld de, $000f                                  ; $6bcb: $11 $0f $00
    call Call_032_6aff                            ; $6bce: $cd $ff $6a
    jp Jump_032_6dce                              ; $6bd1: $c3 $ce $6d


jr_032_6bd4:
    ld de, $0018                                  ; $6bd4: $11 $18 $00
    call Call_032_6aff                            ; $6bd7: $cd $ff $6a
    jp Jump_032_6dce                              ; $6bda: $c3 $ce $6d


jr_032_6bdd:
    ld a, [$c4bc]                                 ; $6bdd: $fa $bc $c4
    cp $0a                                        ; $6be0: $fe $0a
    jr z, jr_032_6be9                             ; $6be2: $28 $05

    rst $30                                       ; $6be4: $f7
    ld h, b                                       ; $6be5: $60
    ld de, $6720                                  ; $6be6: $11 $20 $67

jr_032_6be9:
    ld de, $0088                                  ; $6be9: $11 $88 $00
    call Call_032_6b2f                            ; $6bec: $cd $2f $6b
    jp z, Jump_032_6d0a                           ; $6bef: $ca $0a $6d

    ld de, $0080                                  ; $6bf2: $11 $80 $00
    call Call_032_6b2f                            ; $6bf5: $cd $2f $6b
    jr nz, jr_032_6c19                            ; $6bf8: $20 $1f

    ld de, $000a                                  ; $6bfa: $11 $0a $00
    call Call_032_6b17                            ; $6bfd: $cd $17 $6b
    rst $18                                       ; $6c00: $df
    ld [de], a                                    ; $6c01: $12
    ld a, [bc]                                    ; $6c02: $0a
    rst $18                                       ; $6c03: $df
    inc c                                         ; $6c04: $0c
    ld a, [bc]                                    ; $6c05: $0a
    push af                                       ; $6c06: $f5
    ld a, $0a                                     ; $6c07: $3e $0a
    rst $18                                       ; $6c09: $df
    inc b                                         ; $6c0a: $04
    ld a, [bc]                                    ; $6c0b: $0a
    pop af                                        ; $6c0c: $f1
    and a                                         ; $6c0d: $a7
    jr z, jr_032_6c19                             ; $6c0e: $28 $09

    ld de, $000b                                  ; $6c10: $11 $0b $00
    call Call_032_6aff                            ; $6c13: $cd $ff $6a
    jp Jump_032_6dce                              ; $6c16: $c3 $ce $6d


jr_032_6c19:
    ld de, $000c                                  ; $6c19: $11 $0c $00
    call Call_032_6b17                            ; $6c1c: $cd $17 $6b
    rst $18                                       ; $6c1f: $df
    ld [de], a                                    ; $6c20: $12
    ld a, [bc]                                    ; $6c21: $0a
    rst $18                                       ; $6c22: $df
    inc c                                         ; $6c23: $0c
    ld a, [bc]                                    ; $6c24: $0a
    push af                                       ; $6c25: $f5
    ld a, $0a                                     ; $6c26: $3e $0a
    rst $18                                       ; $6c28: $df
    inc b                                         ; $6c29: $04
    ld a, [bc]                                    ; $6c2a: $0a
    pop af                                        ; $6c2b: $f1
    and a                                         ; $6c2c: $a7
    jr z, jr_032_6c38                             ; $6c2d: $28 $09

    ld de, $000d                                  ; $6c2f: $11 $0d $00
    call Call_032_6aff                            ; $6c32: $cd $ff $6a
    jp Jump_032_6dce                              ; $6c35: $c3 $ce $6d


jr_032_6c38:
    ld de, $000e                                  ; $6c38: $11 $0e $00
    call Call_032_6aff                            ; $6c3b: $cd $ff $6a
    call Call_032_6dcf                            ; $6c3e: $cd $cf $6d
    ld de, $0090                                  ; $6c41: $11 $90 $00
    call Call_032_6b43                            ; $6c44: $cd $43 $6b
    ld de, $0080                                  ; $6c47: $11 $80 $00
    call Call_032_6b43                            ; $6c4a: $cd $43 $6b
    jp Jump_032_6dce                              ; $6c4d: $c3 $ce $6d


    ld de, $0088                                  ; $6c50: $11 $88 $00
    call Call_032_6b2f                            ; $6c53: $cd $2f $6b
    jr z, jr_032_6cb1                             ; $6c56: $28 $59

    ld de, $0013                                  ; $6c58: $11 $13 $00
    call Call_032_6b17                            ; $6c5b: $cd $17 $6b
    rst $18                                       ; $6c5e: $df
    ld [de], a                                    ; $6c5f: $12
    ld a, [bc]                                    ; $6c60: $0a
    rst $18                                       ; $6c61: $df
    inc c                                         ; $6c62: $0c
    ld a, [bc]                                    ; $6c63: $0a
    push af                                       ; $6c64: $f5
    ld a, $0a                                     ; $6c65: $3e $0a
    rst $18                                       ; $6c67: $df
    inc b                                         ; $6c68: $04
    ld a, [bc]                                    ; $6c69: $0a
    pop af                                        ; $6c6a: $f1
    and a                                         ; $6c6b: $a7
    jr z, jr_032_6c77                             ; $6c6c: $28 $09

    ld de, $000b                                  ; $6c6e: $11 $0b $00
    call Call_032_6aff                            ; $6c71: $cd $ff $6a
    jp Jump_032_6dce                              ; $6c74: $c3 $ce $6d


jr_032_6c77:
    ld de, $0015                                  ; $6c77: $11 $15 $00
    call Call_032_6b17                            ; $6c7a: $cd $17 $6b
    rst $18                                       ; $6c7d: $df
    ld [de], a                                    ; $6c7e: $12
    ld a, [bc]                                    ; $6c7f: $0a
    rst $18                                       ; $6c80: $df
    inc c                                         ; $6c81: $0c
    ld a, [bc]                                    ; $6c82: $0a
    push af                                       ; $6c83: $f5
    ld a, $0a                                     ; $6c84: $3e $0a
    rst $18                                       ; $6c86: $df
    inc b                                         ; $6c87: $04
    ld a, [bc]                                    ; $6c88: $0a
    pop af                                        ; $6c89: $f1
    and a                                         ; $6c8a: $a7
    jr z, jr_032_6c96                             ; $6c8b: $28 $09

    ld de, $000d                                  ; $6c8d: $11 $0d $00
    call Call_032_6aff                            ; $6c90: $cd $ff $6a
    jp Jump_032_6dce                              ; $6c93: $c3 $ce $6d


jr_032_6c96:
    ld de, $0016                                  ; $6c96: $11 $16 $00
    call Call_032_6aff                            ; $6c99: $cd $ff $6a
    call Call_032_6dcf                            ; $6c9c: $cd $cf $6d
    ld de, $0090                                  ; $6c9f: $11 $90 $00
    call Call_032_6b43                            ; $6ca2: $cd $43 $6b
    ld de, $0080                                  ; $6ca5: $11 $80 $00
    call Call_032_6b43                            ; $6ca8: $cd $43 $6b
    rst $28                                       ; $6cab: $ef
    ret nz                                        ; $6cac: $c0

    ld c, $c3                                     ; $6cad: $0e $c3
    adc $6d                                       ; $6caf: $ce $6d

jr_032_6cb1:
    ld de, $0014                                  ; $6cb1: $11 $14 $00
    call Call_032_6b17                            ; $6cb4: $cd $17 $6b
    rst $18                                       ; $6cb7: $df
    ld [de], a                                    ; $6cb8: $12
    ld a, [bc]                                    ; $6cb9: $0a
    rst $18                                       ; $6cba: $df
    inc c                                         ; $6cbb: $0c
    ld a, [bc]                                    ; $6cbc: $0a
    push af                                       ; $6cbd: $f5
    ld a, $0a                                     ; $6cbe: $3e $0a
    rst $18                                       ; $6cc0: $df
    inc b                                         ; $6cc1: $04
    ld a, [bc]                                    ; $6cc2: $0a
    pop af                                        ; $6cc3: $f1
    and a                                         ; $6cc4: $a7
    jr z, jr_032_6cd0                             ; $6cc5: $28 $09

    ld de, $0017                                  ; $6cc7: $11 $17 $00
    call Call_032_6aff                            ; $6cca: $cd $ff $6a
    jp Jump_032_6dce                              ; $6ccd: $c3 $ce $6d


jr_032_6cd0:
    ld de, $0015                                  ; $6cd0: $11 $15 $00
    call Call_032_6b17                            ; $6cd3: $cd $17 $6b
    rst $18                                       ; $6cd6: $df
    ld [de], a                                    ; $6cd7: $12
    ld a, [bc]                                    ; $6cd8: $0a
    rst $18                                       ; $6cd9: $df
    inc c                                         ; $6cda: $0c
    ld a, [bc]                                    ; $6cdb: $0a
    push af                                       ; $6cdc: $f5
    ld a, $0a                                     ; $6cdd: $3e $0a
    rst $18                                       ; $6cdf: $df
    inc b                                         ; $6ce0: $04
    ld a, [bc]                                    ; $6ce1: $0a
    pop af                                        ; $6ce2: $f1
    and a                                         ; $6ce3: $a7
    jr z, jr_032_6cef                             ; $6ce4: $28 $09

    ld de, $000d                                  ; $6ce6: $11 $0d $00
    call Call_032_6aff                            ; $6ce9: $cd $ff $6a
    jp Jump_032_6dce                              ; $6cec: $c3 $ce $6d


jr_032_6cef:
    ld de, $0009                                  ; $6cef: $11 $09 $00
    call Call_032_6aff                            ; $6cf2: $cd $ff $6a
    call Call_032_6dcf                            ; $6cf5: $cd $cf $6d
    ld de, $0090                                  ; $6cf8: $11 $90 $00
    call Call_032_6b43                            ; $6cfb: $cd $43 $6b
    ld de, $0080                                  ; $6cfe: $11 $80 $00
    call Call_032_6b43                            ; $6d01: $cd $43 $6b
    rst $28                                       ; $6d04: $ef
    ret nz                                        ; $6d05: $c0

    ld c, $c3                                     ; $6d06: $0e $c3
    adc $6d                                       ; $6d08: $ce $6d

Jump_032_6d0a:
    ld de, $0084                                  ; $6d0a: $11 $84 $00
    call Call_032_6b2f                            ; $6d0d: $cd $2f $6b
    jr z, jr_032_6d75                             ; $6d10: $28 $63

    ld a, [$c4bc]                                 ; $6d12: $fa $bc $c4
    cp $08                                        ; $6d15: $fe $08
    jr z, jr_032_6d3f                             ; $6d17: $28 $26

    ld a, [$c4bc]                                 ; $6d19: $fa $bc $c4
    cp $0a                                        ; $6d1c: $fe $0a
    jr z, jr_032_6d3f                             ; $6d1e: $28 $1f

    ld de, $0005                                  ; $6d20: $11 $05 $00
    call Call_032_6b17                            ; $6d23: $cd $17 $6b
    rst $18                                       ; $6d26: $df
    ld [de], a                                    ; $6d27: $12
    ld a, [bc]                                    ; $6d28: $0a
    rst $18                                       ; $6d29: $df
    inc c                                         ; $6d2a: $0c
    ld a, [bc]                                    ; $6d2b: $0a
    push af                                       ; $6d2c: $f5
    ld a, $0a                                     ; $6d2d: $3e $0a
    rst $18                                       ; $6d2f: $df
    inc b                                         ; $6d30: $04
    ld a, [bc]                                    ; $6d31: $0a
    pop af                                        ; $6d32: $f1
    and a                                         ; $6d33: $a7
    jr z, jr_032_6d3f                             ; $6d34: $28 $09

    ld de, $0006                                  ; $6d36: $11 $06 $00
    call Call_032_6aff                            ; $6d39: $cd $ff $6a
    jp Jump_032_6dce                              ; $6d3c: $c3 $ce $6d


jr_032_6d3f:
    ld de, $0007                                  ; $6d3f: $11 $07 $00
    call Call_032_6b17                            ; $6d42: $cd $17 $6b
    rst $18                                       ; $6d45: $df
    ld [de], a                                    ; $6d46: $12
    ld a, [bc]                                    ; $6d47: $0a
    rst $18                                       ; $6d48: $df
    inc c                                         ; $6d49: $0c
    ld a, [bc]                                    ; $6d4a: $0a
    push af                                       ; $6d4b: $f5
    ld a, $0a                                     ; $6d4c: $3e $0a
    rst $18                                       ; $6d4e: $df
    inc b                                         ; $6d4f: $04
    ld a, [bc]                                    ; $6d50: $0a
    pop af                                        ; $6d51: $f1
    and a                                         ; $6d52: $a7
    jr z, jr_032_6d5e                             ; $6d53: $28 $09

    ld de, $0008                                  ; $6d55: $11 $08 $00
    call Call_032_6aff                            ; $6d58: $cd $ff $6a
    jp Jump_032_6dce                              ; $6d5b: $c3 $ce $6d


jr_032_6d5e:
    ld de, $0009                                  ; $6d5e: $11 $09 $00
    call Call_032_6aff                            ; $6d61: $cd $ff $6a
    call Call_032_6dcf                            ; $6d64: $cd $cf $6d
    ld de, $0090                                  ; $6d67: $11 $90 $00
    call Call_032_6b43                            ; $6d6a: $cd $43 $6b
    ld de, $0080                                  ; $6d6d: $11 $80 $00
    call Call_032_6b43                            ; $6d70: $cd $43 $6b
    jr jr_032_6dce                                ; $6d73: $18 $59

jr_032_6d75:
    ld de, $0080                                  ; $6d75: $11 $80 $00
    call Call_032_6b2f                            ; $6d78: $cd $2f $6b
    jr nz, jr_032_6d9b                            ; $6d7b: $20 $1e

    ld de, $0000                                  ; $6d7d: $11 $00 $00
    call Call_032_6b17                            ; $6d80: $cd $17 $6b
    rst $18                                       ; $6d83: $df
    ld [de], a                                    ; $6d84: $12
    ld a, [bc]                                    ; $6d85: $0a
    rst $18                                       ; $6d86: $df
    inc c                                         ; $6d87: $0c
    ld a, [bc]                                    ; $6d88: $0a
    push af                                       ; $6d89: $f5
    ld a, $0a                                     ; $6d8a: $3e $0a
    rst $18                                       ; $6d8c: $df
    inc b                                         ; $6d8d: $04
    ld a, [bc]                                    ; $6d8e: $0a
    pop af                                        ; $6d8f: $f1
    and a                                         ; $6d90: $a7
    jr z, jr_032_6d9b                             ; $6d91: $28 $08

    ld de, $0001                                  ; $6d93: $11 $01 $00
    call Call_032_6aff                            ; $6d96: $cd $ff $6a
    jr jr_032_6dce                                ; $6d99: $18 $33

jr_032_6d9b:
    ld de, $0002                                  ; $6d9b: $11 $02 $00
    call Call_032_6b17                            ; $6d9e: $cd $17 $6b
    rst $18                                       ; $6da1: $df
    ld [de], a                                    ; $6da2: $12
    ld a, [bc]                                    ; $6da3: $0a
    rst $18                                       ; $6da4: $df
    inc c                                         ; $6da5: $0c
    ld a, [bc]                                    ; $6da6: $0a
    push af                                       ; $6da7: $f5
    ld a, $0a                                     ; $6da8: $3e $0a
    rst $18                                       ; $6daa: $df
    inc b                                         ; $6dab: $04
    ld a, [bc]                                    ; $6dac: $0a
    pop af                                        ; $6dad: $f1
    and a                                         ; $6dae: $a7
    jr z, jr_032_6db9                             ; $6daf: $28 $08

    ld de, $0003                                  ; $6db1: $11 $03 $00
    call Call_032_6aff                            ; $6db4: $cd $ff $6a
    jr jr_032_6dce                                ; $6db7: $18 $15

jr_032_6db9:
    ld de, $0004                                  ; $6db9: $11 $04 $00
    call Call_032_6aff                            ; $6dbc: $cd $ff $6a
    call Call_032_6dcf                            ; $6dbf: $cd $cf $6d
    ld de, $0090                                  ; $6dc2: $11 $90 $00
    call Call_032_6b43                            ; $6dc5: $cd $43 $6b
    ld de, $0080                                  ; $6dc8: $11 $80 $00
    call Call_032_6b43                            ; $6dcb: $cd $43 $6b

Jump_032_6dce:
jr_032_6dce:
    ret                                           ; $6dce: $c9


Call_032_6dcf:
    ld a, $04                                     ; $6dcf: $3e $04
    ldh [$96], a                                  ; $6dd1: $e0 $96
    ldh [rSVBK], a                                ; $6dd3: $e0 $70
    ld hl, $c290                                  ; $6dd5: $21 $90 $c2
    ld a, [hl+]                                   ; $6dd8: $2a
    ld d, [hl]                                    ; $6dd9: $56
    ld e, a                                       ; $6dda: $5f
    ld hl, $0010                                  ; $6ddb: $21 $10 $00
    add hl, de                                    ; $6dde: $19
    ld a, [hl]                                    ; $6ddf: $7e
    cp $c0                                        ; $6de0: $fe $c0
    jp nz, Jump_032_6e6d                          ; $6de2: $c2 $6d $6e

    ld a, [$c4bc]                                 ; $6de5: $fa $bc $c4
    cp $08                                        ; $6de8: $fe $08
    jr z, jr_032_6df5                             ; $6dea: $28 $09

    ld a, [$c4bc]                                 ; $6dec: $fa $bc $c4
    cp $09                                        ; $6def: $fe $09
    jr z, jr_032_6e32                             ; $6df1: $28 $3f

    jr jr_032_6e6d                                ; $6df3: $18 $78

jr_032_6df5:
    ld a, $08                                     ; $6df5: $3e $08
    rst $18                                       ; $6df7: $df
    inc d                                         ; $6df8: $14
    ld a, [bc]                                    ; $6df9: $0a
    ld de, $001a                                  ; $6dfa: $11 $1a $00
    add hl, de                                    ; $6dfd: $19
    ld [hl], $00                                  ; $6dfe: $36 $00
    ld a, $08                                     ; $6e00: $3e $08
    ld bc, $0500                                  ; $6e02: $01 $00 $05
    ld de, $0700                                  ; $6e05: $11 $00 $07
    rst $18                                       ; $6e08: $df
    ld [hl+], a                                   ; $6e09: $22
    ld a, [bc]                                    ; $6e0a: $0a
    ld a, $08                                     ; $6e0b: $3e $08
    rst $18                                       ; $6e0d: $df
    ld e, $0a                                     ; $6e0e: $1e $0a
    ld a, $08                                     ; $6e10: $3e $08
    ld bc, $0500                                  ; $6e12: $01 $00 $05
    ld de, $0b00                                  ; $6e15: $11 $00 $0b
    rst $18                                       ; $6e18: $df
    ld [hl+], a                                   ; $6e19: $22
    ld a, [bc]                                    ; $6e1a: $0a
    ld a, $08                                     ; $6e1b: $3e $08
    rst $18                                       ; $6e1d: $df
    ld e, $0a                                     ; $6e1e: $1e $0a
    ld a, $08                                     ; $6e20: $3e $08
    ld bc, $0700                                  ; $6e22: $01 $00 $07
    ld de, $0b00                                  ; $6e25: $11 $00 $0b
    rst $18                                       ; $6e28: $df
    ld [hl+], a                                   ; $6e29: $22
    ld a, [bc]                                    ; $6e2a: $0a
    ld a, $08                                     ; $6e2b: $3e $08
    rst $18                                       ; $6e2d: $df
    ld e, $0a                                     ; $6e2e: $1e $0a
    jr jr_032_6e6d                                ; $6e30: $18 $3b

jr_032_6e32:
    ld a, $09                                     ; $6e32: $3e $09
    rst $18                                       ; $6e34: $df
    inc d                                         ; $6e35: $14
    ld a, [bc]                                    ; $6e36: $0a
    ld de, $001a                                  ; $6e37: $11 $1a $00
    add hl, de                                    ; $6e3a: $19
    ld [hl], $00                                  ; $6e3b: $36 $00
    ld a, $09                                     ; $6e3d: $3e $09
    ld bc, $0f00                                  ; $6e3f: $01 $00 $0f
    ld de, $0700                                  ; $6e42: $11 $00 $07
    rst $18                                       ; $6e45: $df
    ld [hl+], a                                   ; $6e46: $22
    ld a, [bc]                                    ; $6e47: $0a
    ld a, $09                                     ; $6e48: $3e $09
    rst $18                                       ; $6e4a: $df
    ld e, $0a                                     ; $6e4b: $1e $0a
    ld a, $09                                     ; $6e4d: $3e $09
    ld bc, $0f00                                  ; $6e4f: $01 $00 $0f
    ld de, $0b00                                  ; $6e52: $11 $00 $0b
    rst $18                                       ; $6e55: $df
    ld [hl+], a                                   ; $6e56: $22
    ld a, [bc]                                    ; $6e57: $0a
    ld a, $09                                     ; $6e58: $3e $09
    rst $18                                       ; $6e5a: $df
    ld e, $0a                                     ; $6e5b: $1e $0a
    ld a, $09                                     ; $6e5d: $3e $09
    ld bc, $0d00                                  ; $6e5f: $01 $00 $0d
    ld de, $0b00                                  ; $6e62: $11 $00 $0b
    rst $18                                       ; $6e65: $df
    ld [hl+], a                                   ; $6e66: $22
    ld a, [bc]                                    ; $6e67: $0a
    ld a, $09                                     ; $6e68: $3e $09
    rst $18                                       ; $6e6a: $df
    ld e, $0a                                     ; $6e6b: $1e $0a

Jump_032_6e6d:
jr_032_6e6d:
    rst $08                                       ; $6e6d: $cf
    sub h                                         ; $6e6e: $94
    ld a, [$c4bc]                                 ; $6e6f: $fa $bc $c4
    rst $18                                       ; $6e72: $df
    inc d                                         ; $6e73: $14
    ld a, [bc]                                    ; $6e74: $0a
    push hl                                       ; $6e75: $e5
    ld hl, $c290                                  ; $6e76: $21 $90 $c2
    ld a, [hl+]                                   ; $6e79: $2a
    ld d, [hl]                                    ; $6e7a: $56
    ld e, a                                       ; $6e7b: $5f
    pop hl                                        ; $6e7c: $e1
    rst $18                                       ; $6e7d: $df
    ld c, h                                       ; $6e7e: $4c
    inc b                                         ; $6e7f: $04
    ld a, [$c4bc]                                 ; $6e80: $fa $bc $c4
    ld [$c298], a                                 ; $6e83: $ea $98 $c2
    ld a, [$c298]                                 ; $6e86: $fa $98 $c2
    rst $18                                       ; $6e89: $df
    inc d                                         ; $6e8a: $14
    ld a, [bc]                                    ; $6e8b: $0a
    ld c, l                                       ; $6e8c: $4d
    ld b, h                                       ; $6e8d: $44
    ld hl, $c294                                  ; $6e8e: $21 $94 $c2
    ld a, c                                       ; $6e91: $79
    ld [hl+], a                                   ; $6e92: $22
    ld [hl], b                                    ; $6e93: $70
    ld a, [$c4bc]                                 ; $6e94: $fa $bc $c4
    sub $07                                       ; $6e97: $d6 $07
    add $04                                       ; $6e99: $c6 $04
    ld [$c299], a                                 ; $6e9b: $ea $99 $c2
    ret                                           ; $6e9e: $c9


Call_032_6e9f:
    ld de, $004e                                  ; $6e9f: $11 $4e $00
    call Call_032_6b57                            ; $6ea2: $cd $57 $6b
    jr z, jr_032_6eb2                             ; $6ea5: $28 $0b

    ld de, $0050                                  ; $6ea7: $11 $50 $00
    call Call_032_6b57                            ; $6eaa: $cd $57 $6b
    jr nz, jr_032_6eb2                            ; $6ead: $20 $03

    ld a, $01                                     ; $6eaf: $3e $01
    ret                                           ; $6eb1: $c9


jr_032_6eb2:
    ld a, $00                                     ; $6eb2: $3e $00
    ret                                           ; $6eb4: $c9


    db $7a, $6f, $87, $6f, $c3, $6e, $e5, $6f, $82, $71, $c6, $71, $cf, $71, $0d, $7e
    db $00, $03, $00, $09, $00, $00, $00, $00, $01, $14, $0d, $7e, $00, $0b, $00, $05
    db $00, $00, $00, $c0, $01, $0e, $19, $7e, $00, $0d, $00, $0b, $00, $00, $00, $40
    db $01, $15, $19, $7e, $00, $1d, $00, $0d, $00, $00, $00, $c0, $01, $1d, $0d, $7e
    db $00, $01, $00, $1f, $9c, $00, $00, $c0, $01, $0f, $00, $00, $00, $00, $00, $00
    db $00, $00, $ff, $0d, $7e, $00, $0b, $00, $05, $00, $00, $00, $40, $01, $14, $0d
    db $7e, $00, $09, $00, $05, $00, $00, $00, $40, $01, $0e, $0d, $7e, $00, $0d, $00
    db $05, $00, $00, $00, $40, $01, $15, $00, $00, $00, $00, $00, $00, $00, $00, $ff
    db $0d, $7e, $00

    inc bc                                        ; $6f38: $03
    nop                                           ; $6f39: $00
    add hl, bc                                    ; $6f3a: $09
    nop                                           ; $6f3b: $00
    nop                                           ; $6f3c: $00
    nop                                           ; $6f3d: $00
    nop                                           ; $6f3e: $00
    ld bc, $0d14                                  ; $6f3f: $01 $14 $0d
    ld a, [hl]                                    ; $6f42: $7e
    nop                                           ; $6f43: $00
    add hl, bc                                    ; $6f44: $09
    nop                                           ; $6f45: $00
    rlca                                          ; $6f46: $07
    nop                                           ; $6f47: $00
    nop                                           ; $6f48: $00
    nop                                           ; $6f49: $00
    ld b, b                                       ; $6f4a: $40
    ld bc, $0d0e                                  ; $6f4b: $01 $0e $0d
    ld a, [hl]                                    ; $6f4e: $7e
    nop                                           ; $6f4f: $00
    add hl, bc                                    ; $6f50: $09
    nop                                           ; $6f51: $00
    dec bc                                        ; $6f52: $0b
    nop                                           ; $6f53: $00
    nop                                           ; $6f54: $00
    nop                                           ; $6f55: $00
    ret nz                                        ; $6f56: $c0

    ld bc, $0d15                                  ; $6f57: $01 $15 $0d
    ld a, [hl]                                    ; $6f5a: $7e
    nop                                           ; $6f5b: $00
    dec bc                                        ; $6f5c: $0b
    nop                                           ; $6f5d: $00
    add hl, bc                                    ; $6f5e: $09
    nop                                           ; $6f5f: $00
    nop                                           ; $6f60: $00
    nop                                           ; $6f61: $00
    add b                                         ; $6f62: $80
    ld bc, $0d1d                                  ; $6f63: $01 $1d $0d
    ld a, [hl]                                    ; $6f66: $7e
    nop                                           ; $6f67: $00
    ld bc, $1f00                                  ; $6f68: $01 $00 $1f
    sbc h                                         ; $6f6b: $9c
    nop                                           ; $6f6c: $00
    nop                                           ; $6f6d: $00
    ret nz                                        ; $6f6e: $c0

    ld bc, $000f                                  ; $6f6f: $01 $0f $00
    nop                                           ; $6f72: $00
    nop                                           ; $6f73: $00
    nop                                           ; $6f74: $00
    nop                                           ; $6f75: $00
    nop                                           ; $6f76: $00
    nop                                           ; $6f77: $00
    nop                                           ; $6f78: $00
    rst $38                                       ; $6f79: $ff

    db $01

    ret nz                                        ; $6f7b: $c0

    nop                                           ; $6f7c: $00
    dec bc                                        ; $6f7d: $0b
    nop                                           ; $6f7e: $00
    db $11                                        ; $6f7f: $11

    db $02, $c0, $00, $0b, $00, $0b

    rst $38                                       ; $6f86: $ff

    db $01, $ff

    nop                                           ; $6f89: $00
    nop                                           ; $6f8a: $00
    nop                                           ; $6f8b: $00
    nop                                           ; $6f8c: $00
    inc bc                                        ; $6f8d: $03
    inc bc                                        ; $6f8e: $03

    db $02, $ff, $00, $00, $00, $00, $00, $02

    rst $38                                       ; $6f97: $ff

Call_032_6f98:
    rst $30                                       ; $6f98: $f7
    ld b, b                                       ; $6f99: $40
    ld de, $0428                                  ; $6f9a: $11 $28 $04
    ld a, $03                                     ; $6f9d: $3e $03
    jr jr_032_6fb1                                ; $6f9f: $18 $10

    rst $30                                       ; $6fa1: $f7
    jr nz, jr_032_6fb5                            ; $6fa2: $20 $11

    jr z, jr_032_6faa                             ; $6fa4: $28 $04

    ld a, $02                                     ; $6fa6: $3e $02
    jr jr_032_6fb1                                ; $6fa8: $18 $07

jr_032_6faa:
    rst $30                                       ; $6faa: $f7
    nop                                           ; $6fab: $00
    ld de, $0828                                  ; $6fac: $11 $28 $08
    ld a, $01                                     ; $6faf: $3e $01

jr_032_6fb1:
    rst $18                                       ; $6fb1: $df
    ld e, d                                       ; $6fb2: $5a
    dec b                                         ; $6fb3: $05
    rst $18                                       ; $6fb4: $df

jr_032_6fb5:
    db $10                                        ; $6fb5: $10
    ld a, [bc]                                    ; $6fb6: $0a
    ret                                           ; $6fb7: $c9


    ld hl, $049f                                  ; $6fb8: $21 $9f $04
    rst $18                                       ; $6fbb: $df
    ld c, $0a                                     ; $6fbc: $0e $0a
    call Call_032_6f98                            ; $6fbe: $cd $98 $6f
    ld a, $04                                     ; $6fc1: $3e $04
    rst $18                                       ; $6fc3: $df
    ld [$c90a], sp                                ; $6fc4: $08 $0a $c9
    ld hl, $04a8                                  ; $6fc7: $21 $a8 $04
    rst $18                                       ; $6fca: $df
    ld c, $0a                                     ; $6fcb: $0e $0a
    call Call_032_6f98                            ; $6fcd: $cd $98 $6f
    ld a, $04                                     ; $6fd0: $3e $04
    rst $18                                       ; $6fd2: $df
    ld [$c90a], sp                                ; $6fd3: $08 $0a $c9
    ld hl, $04b1                                  ; $6fd6: $21 $b1 $04
    rst $18                                       ; $6fd9: $df
    ld c, $0a                                     ; $6fda: $0e $0a
    call Call_032_6f98                            ; $6fdc: $cd $98 $6f
    ld a, $04                                     ; $6fdf: $3e $04
    rst $18                                       ; $6fe1: $df
    ld [$c90a], sp                                ; $6fe2: $08 $0a $c9
    ld [bc], a                                    ; $6fe5: $02
    rst $38                                       ; $6fe6: $ff
    nop                                           ; $6fe7: $00
    nop                                           ; $6fe8: $00
    sub b                                         ; $6fe9: $90
    inc b                                         ; $6fea: $04
    inc bc                                        ; $6feb: $03
    nop                                           ; $6fec: $00
    inc bc                                        ; $6fed: $03
    rst $38                                       ; $6fee: $ff
    nop                                           ; $6fef: $00
    nop                                           ; $6ff0: $00
    sub d                                         ; $6ff1: $92
    inc b                                         ; $6ff2: $04
    inc bc                                        ; $6ff3: $03
    nop                                           ; $6ff4: $00
    inc b                                         ; $6ff5: $04
    rst $38                                       ; $6ff6: $ff
    nop                                           ; $6ff7: $00
    nop                                           ; $6ff8: $00
    sub e                                         ; $6ff9: $93
    inc b                                         ; $6ffa: $04
    inc bc                                        ; $6ffb: $03
    nop                                           ; $6ffc: $00
    dec b                                         ; $6ffd: $05
    rst $38                                       ; $6ffe: $ff
    nop                                           ; $6fff: $00
    nop                                           ; $7000: $00
    sub c                                         ; $7001: $91
    inc b                                         ; $7002: $04
    inc bc                                        ; $7003: $03
    nop                                           ; $7004: $00
    rst $38                                       ; $7005: $ff
    ld [bc], a                                    ; $7006: $02
    rst $38                                       ; $7007: $ff
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    sub h                                         ; $700a: $94
    inc b                                         ; $700b: $04
    inc bc                                        ; $700c: $03
    nop                                           ; $700d: $00
    inc bc                                        ; $700e: $03
    rst $38                                       ; $700f: $ff
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    sub [hl]                                      ; $7012: $96
    inc b                                         ; $7013: $04
    inc bc                                        ; $7014: $03
    nop                                           ; $7015: $00
    inc b                                         ; $7016: $04
    rst $38                                       ; $7017: $ff
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    sub a                                         ; $701a: $97
    inc b                                         ; $701b: $04
    inc bc                                        ; $701c: $03
    nop                                           ; $701d: $00
    dec b                                         ; $701e: $05
    rst $38                                       ; $701f: $ff
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    sub l                                         ; $7022: $95
    inc b                                         ; $7023: $04
    inc bc                                        ; $7024: $03
    nop                                           ; $7025: $00
    rst $38                                       ; $7026: $ff
    ld [bc], a                                    ; $7027: $02
    rst $38                                       ; $7028: $ff
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    sbc b                                         ; $702b: $98
    inc b                                         ; $702c: $04
    inc bc                                        ; $702d: $03
    nop                                           ; $702e: $00
    inc bc                                        ; $702f: $03
    rst $38                                       ; $7030: $ff
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    sbc d                                         ; $7033: $9a
    inc b                                         ; $7034: $04
    inc bc                                        ; $7035: $03
    nop                                           ; $7036: $00
    inc b                                         ; $7037: $04
    rst $38                                       ; $7038: $ff
    nop                                           ; $7039: $00
    nop                                           ; $703a: $00
    sbc e                                         ; $703b: $9b
    inc b                                         ; $703c: $04
    inc bc                                        ; $703d: $03
    nop                                           ; $703e: $00
    dec b                                         ; $703f: $05
    rst $38                                       ; $7040: $ff
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    sbc c                                         ; $7043: $99
    inc b                                         ; $7044: $04
    inc bc                                        ; $7045: $03
    nop                                           ; $7046: $00
    rst $38                                       ; $7047: $ff
    ld [bc], a                                    ; $7048: $02
    rst $38                                       ; $7049: $ff
    nop                                           ; $704a: $00
    nop                                           ; $704b: $00
    sbc h                                         ; $704c: $9c
    inc b                                         ; $704d: $04
    inc bc                                        ; $704e: $03
    nop                                           ; $704f: $00
    inc bc                                        ; $7050: $03
    rst $38                                       ; $7051: $ff
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    sbc [hl]                                      ; $7054: $9e
    inc b                                         ; $7055: $04
    inc bc                                        ; $7056: $03
    nop                                           ; $7057: $00
    inc b                                         ; $7058: $04
    rst $38                                       ; $7059: $ff
    nop                                           ; $705a: $00
    nop                                           ; $705b: $00
    cp b                                          ; $705c: $b8
    ld l, a                                       ; $705d: $6f
    inc bc                                        ; $705e: $03
    nop                                           ; $705f: $00
    dec b                                         ; $7060: $05
    rst $38                                       ; $7061: $ff
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    sbc l                                         ; $7064: $9d
    inc b                                         ; $7065: $04
    inc bc                                        ; $7066: $03
    nop                                           ; $7067: $00
    rst $38                                       ; $7068: $ff
    ld [bc], a                                    ; $7069: $02
    rst $38                                       ; $706a: $ff
    nop                                           ; $706b: $00
    nop                                           ; $706c: $00
    and c                                         ; $706d: $a1
    inc b                                         ; $706e: $04
    inc bc                                        ; $706f: $03
    nop                                           ; $7070: $00
    inc bc                                        ; $7071: $03
    rst $38                                       ; $7072: $ff
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    and e                                         ; $7075: $a3
    inc b                                         ; $7076: $04
    ld bc, $0400                                  ; $7077: $01 $00 $04
    rst $38                                       ; $707a: $ff
    nop                                           ; $707b: $00
    nop                                           ; $707c: $00
    and h                                         ; $707d: $a4
    inc b                                         ; $707e: $04
    inc bc                                        ; $707f: $03
    nop                                           ; $7080: $00
    dec b                                         ; $7081: $05
    rst $38                                       ; $7082: $ff
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    and d                                         ; $7085: $a2
    inc b                                         ; $7086: $04
    inc bc                                        ; $7087: $03
    nop                                           ; $7088: $00
    rst $38                                       ; $7089: $ff
    ld [bc], a                                    ; $708a: $02
    rst $38                                       ; $708b: $ff
    nop                                           ; $708c: $00
    nop                                           ; $708d: $00
    and l                                         ; $708e: $a5
    inc b                                         ; $708f: $04
    inc bc                                        ; $7090: $03
    nop                                           ; $7091: $00
    inc bc                                        ; $7092: $03
    rst $38                                       ; $7093: $ff
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    and a                                         ; $7096: $a7
    inc b                                         ; $7097: $04
    inc bc                                        ; $7098: $03
    nop                                           ; $7099: $00
    inc b                                         ; $709a: $04
    rst $38                                       ; $709b: $ff
    nop                                           ; $709c: $00
    nop                                           ; $709d: $00
    rst $00                                       ; $709e: $c7
    ld l, a                                       ; $709f: $6f
    inc bc                                        ; $70a0: $03
    nop                                           ; $70a1: $00
    dec b                                         ; $70a2: $05
    rst $38                                       ; $70a3: $ff
    nop                                           ; $70a4: $00
    nop                                           ; $70a5: $00
    and [hl]                                      ; $70a6: $a6
    inc b                                         ; $70a7: $04
    inc bc                                        ; $70a8: $03
    nop                                           ; $70a9: $00
    rst $38                                       ; $70aa: $ff
    ld [bc], a                                    ; $70ab: $02
    rst $38                                       ; $70ac: $ff
    nop                                           ; $70ad: $00
    nop                                           ; $70ae: $00
    xor d                                         ; $70af: $aa
    inc b                                         ; $70b0: $04
    inc bc                                        ; $70b1: $03
    nop                                           ; $70b2: $00
    inc bc                                        ; $70b3: $03
    rst $38                                       ; $70b4: $ff
    nop                                           ; $70b5: $00
    nop                                           ; $70b6: $00
    xor h                                         ; $70b7: $ac
    inc b                                         ; $70b8: $04
    inc bc                                        ; $70b9: $03
    nop                                           ; $70ba: $00
    inc b                                         ; $70bb: $04
    rst $38                                       ; $70bc: $ff
    nop                                           ; $70bd: $00
    nop                                           ; $70be: $00
    xor l                                         ; $70bf: $ad
    inc b                                         ; $70c0: $04
    inc bc                                        ; $70c1: $03
    nop                                           ; $70c2: $00
    dec b                                         ; $70c3: $05
    rst $38                                       ; $70c4: $ff
    nop                                           ; $70c5: $00
    nop                                           ; $70c6: $00
    xor e                                         ; $70c7: $ab
    inc b                                         ; $70c8: $04
    inc bc                                        ; $70c9: $03
    nop                                           ; $70ca: $00
    rst $38                                       ; $70cb: $ff
    ld [bc], a                                    ; $70cc: $02
    rst $38                                       ; $70cd: $ff
    nop                                           ; $70ce: $00
    nop                                           ; $70cf: $00
    xor [hl]                                      ; $70d0: $ae
    inc b                                         ; $70d1: $04
    inc bc                                        ; $70d2: $03
    nop                                           ; $70d3: $00
    inc bc                                        ; $70d4: $03
    rst $38                                       ; $70d5: $ff
    nop                                           ; $70d6: $00
    nop                                           ; $70d7: $00
    or b                                          ; $70d8: $b0
    inc b                                         ; $70d9: $04
    inc bc                                        ; $70da: $03
    nop                                           ; $70db: $00
    inc b                                         ; $70dc: $04
    rst $38                                       ; $70dd: $ff
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    sub $6f                                       ; $70e0: $d6 $6f
    inc bc                                        ; $70e2: $03
    nop                                           ; $70e3: $00
    dec b                                         ; $70e4: $05
    rst $38                                       ; $70e5: $ff
    nop                                           ; $70e6: $00
    nop                                           ; $70e7: $00
    xor a                                         ; $70e8: $af
    inc b                                         ; $70e9: $04
    inc bc                                        ; $70ea: $03
    nop                                           ; $70eb: $00
    rst $38                                       ; $70ec: $ff
    ld [bc], a                                    ; $70ed: $02
    rst $38                                       ; $70ee: $ff
    nop                                           ; $70ef: $00
    nop                                           ; $70f0: $00
    or e                                          ; $70f1: $b3
    inc b                                         ; $70f2: $04
    ld bc, $0300                                  ; $70f3: $01 $00 $03
    rst $38                                       ; $70f6: $ff
    nop                                           ; $70f7: $00
    nop                                           ; $70f8: $00
    or l                                          ; $70f9: $b5
    inc b                                         ; $70fa: $04
    ld bc, $0400                                  ; $70fb: $01 $00 $04
    rst $38                                       ; $70fe: $ff
    nop                                           ; $70ff: $00
    nop                                           ; $7100: $00
    or [hl]                                       ; $7101: $b6
    inc b                                         ; $7102: $04
    ld bc, $0500                                  ; $7103: $01 $00 $05
    rst $38                                       ; $7106: $ff
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    or h                                          ; $7109: $b4
    inc b                                         ; $710a: $04
    ld bc, $ff00                                  ; $710b: $01 $00 $ff
    ld [bc], a                                    ; $710e: $02
    rst $38                                       ; $710f: $ff
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    or a                                          ; $7112: $b7
    inc b                                         ; $7113: $04
    inc bc                                        ; $7114: $03
    nop                                           ; $7115: $00
    inc bc                                        ; $7116: $03
    rst $38                                       ; $7117: $ff
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    cp c                                          ; $711a: $b9
    inc b                                         ; $711b: $04
    inc bc                                        ; $711c: $03
    nop                                           ; $711d: $00
    inc b                                         ; $711e: $04
    rst $38                                       ; $711f: $ff
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    cp d                                          ; $7122: $ba
    inc b                                         ; $7123: $04
    inc bc                                        ; $7124: $03
    nop                                           ; $7125: $00
    dec b                                         ; $7126: $05
    rst $38                                       ; $7127: $ff
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    cp b                                          ; $712a: $b8
    inc b                                         ; $712b: $04
    inc bc                                        ; $712c: $03
    nop                                           ; $712d: $00
    rst $38                                       ; $712e: $ff
    ld [bc], a                                    ; $712f: $02
    rst $38                                       ; $7130: $ff
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    cp e                                          ; $7133: $bb
    inc b                                         ; $7134: $04
    inc bc                                        ; $7135: $03
    nop                                           ; $7136: $00
    inc bc                                        ; $7137: $03
    rst $38                                       ; $7138: $ff
    nop                                           ; $7139: $00
    nop                                           ; $713a: $00
    cp l                                          ; $713b: $bd
    inc b                                         ; $713c: $04
    inc bc                                        ; $713d: $03
    nop                                           ; $713e: $00
    inc b                                         ; $713f: $04
    rst $38                                       ; $7140: $ff
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    cp [hl]                                       ; $7143: $be
    inc b                                         ; $7144: $04
    inc bc                                        ; $7145: $03
    nop                                           ; $7146: $00
    dec b                                         ; $7147: $05
    rst $38                                       ; $7148: $ff
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    cp h                                          ; $714b: $bc
    inc b                                         ; $714c: $04
    inc bc                                        ; $714d: $03
    nop                                           ; $714e: $00
    rst $38                                       ; $714f: $ff
    or d                                          ; $7150: $b2
    pop bc                                        ; $7151: $c1
    db $db                                        ; $7152: $db
    or b                                          ; $7153: $b0
    nop                                           ; $7154: $00
    ret                                           ; $7155: $c9


    call Call_000_0a61                            ; $7156: $cd $61 $0a
    ld a, l                                       ; $7159: $7d
    and $03                                       ; $715a: $e6 $03
    add $06                                       ; $715c: $c6 $06
    ld l, a                                       ; $715e: $6f
    adc $08                                       ; $715f: $ce $08
    sub l                                         ; $7161: $95
    ld h, a                                       ; $7162: $67
    rst $18                                       ; $7163: $df
    ld c, $0a                                     ; $7164: $0e $0a
    ld a, $ff                                     ; $7166: $3e $ff
    rst $18                                       ; $7168: $df
    ld [$c90a], sp                                ; $7169: $08 $0a $c9
    call Call_000_0a61                            ; $716c: $cd $61 $0a
    ld a, l                                       ; $716f: $7d
    and $03                                       ; $7170: $e6 $03
    add $0a                                       ; $7172: $c6 $0a
    ld l, a                                       ; $7174: $6f
    adc $08                                       ; $7175: $ce $08
    sub l                                         ; $7177: $95
    ld h, a                                       ; $7178: $67
    rst $18                                       ; $7179: $df
    ld c, $0a                                     ; $717a: $0e $0a
    ld a, $ff                                     ; $717c: $3e $ff
    rst $18                                       ; $717e: $df
    ld [$c90a], sp                                ; $717f: $08 $0a $c9
    ld bc, $00ff                                  ; $7182: $01 $ff $00
    nop                                           ; $7185: $00
    ld l, h                                       ; $7186: $6c
    ld [hl], c                                    ; $7187: $71
    ld bc, $0200                                  ; $7188: $01 $00 $02
    rst $38                                       ; $718b: $ff
    nop                                           ; $718c: $00
    nop                                           ; $718d: $00
    ld d, [hl]                                    ; $718e: $56
    ld [hl], c                                    ; $718f: $71
    ld bc, $0300                                  ; $7190: $01 $00 $03
    rst $38                                       ; $7193: $ff
    nop                                           ; $7194: $00
    nop                                           ; $7195: $00
    ld h, a                                       ; $7196: $67
    ld a, [hl]                                    ; $7197: $7e
    rlca                                          ; $7198: $07
    nop                                           ; $7199: $00
    inc b                                         ; $719a: $04
    rst $38                                       ; $719b: $ff
    sbc h                                         ; $719c: $9c
    nop                                           ; $719d: $00
    ld h, [hl]                                    ; $719e: $66
    ld a, c                                       ; $719f: $79
    rlca                                          ; $71a0: $07
    nop                                           ; $71a1: $00
    dec b                                         ; $71a2: $05
    rst $38                                       ; $71a3: $ff
    nop                                           ; $71a4: $00
    nop                                           ; $71a5: $00
    ld h, a                                       ; $71a6: $67
    ld a, [hl]                                    ; $71a7: $7e
    rlca                                          ; $71a8: $07
    nop                                           ; $71a9: $00
    rrca                                          ; $71aa: $0f
    rst $38                                       ; $71ab: $ff
    nop                                           ; $71ac: $00
    nop                                           ; $71ad: $00
    ld c, $08                                     ; $71ae: $0e $08
    rst $38                                       ; $71b0: $ff
    nop                                           ; $71b1: $00
    rst $38                                       ; $71b2: $ff
    ret                                           ; $71b3: $c9


    rst $18                                       ; $71b4: $df
    nop                                           ; $71b5: $00
    ld a, [bc]                                    ; $71b6: $0a
    ld hl, $0172                                  ; $71b7: $21 $72 $01
    rst $18                                       ; $71ba: $df
    ld c, $0a                                     ; $71bb: $0e $0a
    ld a, $00                                     ; $71bd: $3e $00
    rst $18                                       ; $71bf: $df
    ld [$df0a], sp                                ; $71c0: $08 $0a $df
    ld [bc], a                                    ; $71c3: $02
    ld a, [bc]                                    ; $71c4: $0a
    ret                                           ; $71c5: $c9


    ld bc, $00ff                                  ; $71c6: $01 $ff $00
    nop                                           ; $71c9: $00
    or h                                          ; $71ca: $b4
    ld [hl], c                                    ; $71cb: $71
    nop                                           ; $71cc: $00
    nop                                           ; $71cd: $00
    rst $38                                       ; $71ce: $ff

    ld a, [$c46a]                                 ; $71cf: $fa $6a $c4
    cp $02                                        ; $71d2: $fe $02
    jp nz, Jump_032_7461                          ; $71d4: $c2 $61 $74

    ld hl, $0487                                  ; $71d7: $21 $87 $04
    rst $18                                       ; $71da: $df

    db $0e, $0a

    ldh a, [$95]                                  ; $71dd: $f0 $95
    ld hl, $6f08                                  ; $71df: $21 $08 $6f
    rst $18                                       ; $71e2: $df

    db $06, $0a

    ld a, $02                                     ; $71e5: $3e $02
    ld bc, $0010                                  ; $71e7: $01 $10 $00
    rst $18                                       ; $71ea: $df

    db $16, $0a

    ld a, $03                                     ; $71ed: $3e $03
    ld bc, $0010                                  ; $71ef: $01 $10 $00
    rst $18                                       ; $71f2: $df

    db $16, $0a

    ld a, $04                                     ; $71f5: $3e $04
    ld bc, $0010                                  ; $71f7: $01 $10 $00
    rst $18                                       ; $71fa: $df

    db $16, $0a

    ld c, $08                                     ; $71fd: $0e $08
    call Call_000_25af                            ; $71ff: $cd $af $25
    call Call_000_2625                            ; $7202: $cd $25 $26
    push af                                       ; $7205: $f5
    ld a, $28                                     ; $7206: $3e $28
    rst $18                                       ; $7208: $df

    db $04, $0a

    pop af                                        ; $720b: $f1
    ld a, $02                                     ; $720c: $3e $02
    ld b, a                                       ; $720e: $47
    ld a, $07                                     ; $720f: $3e $07
    rst $18                                       ; $7211: $df

    db $32, $0a

    ld a, $02                                     ; $7214: $3e $02
    rst $18                                       ; $7216: $df

    db $34, $0a

    push af                                       ; $7219: $f5
    ld a, $0a                                     ; $721a: $3e $0a
    rst $18                                       ; $721c: $df

    db $04, $0a

    pop af                                        ; $721f: $f1
    ld a, $02                                     ; $7220: $3e $02
    rst $18                                       ; $7222: $df

    db $08, $0a

    push af                                       ; $7225: $f5
    ld a, $0a                                     ; $7226: $3e $0a
    rst $18                                       ; $7228: $df

    db $04, $0a

    pop af                                        ; $722b: $f1
    ld a, $02                                     ; $722c: $3e $02
    ld b, a                                       ; $722e: $47
    ld a, $05                                     ; $722f: $3e $05
    rst $18                                       ; $7231: $df

    db $32, $0a

    ld a, $02                                     ; $7234: $3e $02
    rst $18                                       ; $7236: $df

    db $34, $0a

    push af                                       ; $7239: $f5
    ld a, $0a                                     ; $723a: $3e $0a
    rst $18                                       ; $723c: $df

    db $04, $0a

    pop af                                        ; $723f: $f1
    ld a, $02                                     ; $7240: $3e $02
    rst $18                                       ; $7242: $df

    db $08, $0a

    push af                                       ; $7245: $f5
    ld a, $0a                                     ; $7246: $3e $0a
    rst $18                                       ; $7248: $df

    db $04, $0a

    pop af                                        ; $724b: $f1
    ld a, $02                                     ; $724c: $3e $02
    ld b, $80                                     ; $724e: $06 $80
    rst $18                                       ; $7250: $df

    db $2c, $0a

    push af                                       ; $7253: $f5
    ld a, $14                                     ; $7254: $3e $14
    rst $18                                       ; $7256: $df

    db $04, $0a

    pop af                                        ; $7259: $f1
    ld a, $03                                     ; $725a: $3e $03
    ld b, $00                                     ; $725c: $06 $00
    rst $18                                       ; $725e: $df

    db $2c, $0a

    push af                                       ; $7261: $f5
    ld a, $0a                                     ; $7262: $3e $0a
    rst $18                                       ; $7264: $df

    db $04, $0a

    pop af                                        ; $7267: $f1
    ld a, $03                                     ; $7268: $3e $03
    ld b, a                                       ; $726a: $47
    ld a, $05                                     ; $726b: $3e $05
    rst $18                                       ; $726d: $df

    db $32, $0a

    ld a, $03                                     ; $7270: $3e $03
    rst $18                                       ; $7272: $df

    db $34, $0a

    push af                                       ; $7275: $f5
    ld a, $0a                                     ; $7276: $3e $0a
    rst $18                                       ; $7278: $df

    db $04, $0a

    pop af                                        ; $727b: $f1
    ld a, $02                                     ; $727c: $3e $02
    ld b, $40                                     ; $727e: $06 $40
    rst $18                                       ; $7280: $df

    db $2c, $0a

    push af                                       ; $7283: $f5
    ld a, $0a                                     ; $7284: $3e $0a
    rst $18                                       ; $7286: $df

    db $04, $0a

    pop af                                        ; $7289: $f1
    ld a, $03                                     ; $728a: $3e $03
    ld b, $40                                     ; $728c: $06 $40
    rst $18                                       ; $728e: $df

    db $2c, $0a

    push af                                       ; $7291: $f5
    ld a, $0a                                     ; $7292: $3e $0a
    rst $18                                       ; $7294: $df

    db $04, $0a

    pop af                                        ; $7297: $f1
    ld a, $03                                     ; $7298: $3e $03
    ld b, $40                                     ; $729a: $06 $40
    ld de, $0200                                  ; $729c: $11 $00 $02
    rst $18                                       ; $729f: $df

    db $28, $0a

    ld a, $03                                     ; $72a2: $3e $03
    rst $18                                       ; $72a4: $df

    db $1e, $0a

    ld a, $03                                     ; $72a7: $3e $03
    rst $18                                       ; $72a9: $df

    db $08, $0a

    push af                                       ; $72ac: $f5
    ld a, $0a                                     ; $72ad: $3e $0a
    rst $18                                       ; $72af: $df

    db $04, $0a

    pop af                                        ; $72b2: $f1
    push af                                       ; $72b3: $f5
    ld a, $0a                                     ; $72b4: $3e $0a
    rst $18                                       ; $72b6: $df

    db $04, $0a

    pop af                                        ; $72b9: $f1
    ld a, $03                                     ; $72ba: $3e $03
    ld b, $c0                                     ; $72bc: $06 $c0
    rst $18                                       ; $72be: $df

    db $2c, $0a

    push af                                       ; $72c1: $f5
    ld a, $14                                     ; $72c2: $3e $14
    rst $18                                       ; $72c4: $df

    db $04, $0a

    pop af                                        ; $72c7: $f1
    ld a, $03                                     ; $72c8: $3e $03
    ld b, a                                       ; $72ca: $47
    ld a, $07                                     ; $72cb: $3e $07
    rst $18                                       ; $72cd: $df

    db $32, $0a

    ld a, $03                                     ; $72d0: $3e $03
    rst $18                                       ; $72d2: $df

    db $34, $0a

    push af                                       ; $72d5: $f5
    ld a, $0a                                     ; $72d6: $3e $0a
    rst $18                                       ; $72d8: $df

    db $04, $0a

    pop af                                        ; $72db: $f1
    ld a, $03                                     ; $72dc: $3e $03
    rst $18                                       ; $72de: $df

    db $08, $0a

    push af                                       ; $72e1: $f5
    ld a, $0a                                     ; $72e2: $3e $0a
    rst $18                                       ; $72e4: $df

    db $04, $0a

    pop af                                        ; $72e7: $f1
    ld a, $03                                     ; $72e8: $3e $03
    ld b, $40                                     ; $72ea: $06 $40
    rst $18                                       ; $72ec: $df

    db $2c, $0a

    push af                                       ; $72ef: $f5
    ld a, $0a                                     ; $72f0: $3e $0a
    rst $18                                       ; $72f2: $df

    db $04, $0a

    pop af                                        ; $72f5: $f1
    ld a, $03                                     ; $72f6: $3e $03
    ld b, a                                       ; $72f8: $47
    ld a, $05                                     ; $72f9: $3e $05
    rst $18                                       ; $72fb: $df

    db $32, $0a

    ld a, $03                                     ; $72fe: $3e $03
    rst $18                                       ; $7300: $df

    db $34, $0a

    push af                                       ; $7303: $f5
    ld a, $0a                                     ; $7304: $3e $0a
    rst $18                                       ; $7306: $df

    db $04, $0a

    pop af                                        ; $7309: $f1
    ld a, $03                                     ; $730a: $3e $03
    rst $18                                       ; $730c: $df

    db $08, $0a

    push af                                       ; $730f: $f5
    ld a, $0a                                     ; $7310: $3e $0a
    rst $18                                       ; $7312: $df

    db $04, $0a

    pop af                                        ; $7315: $f1
    ld a, $03                                     ; $7316: $3e $03
    ld b, $40                                     ; $7318: $06 $40
    rst $18                                       ; $731a: $df

    db $2c, $0a

    ld a, $04                                     ; $731d: $3e $04
    ld b, $40                                     ; $731f: $06 $40
    ld de, $0200                                  ; $7321: $11 $00 $02
    rst $18                                       ; $7324: $df

    db $28, $0a

    ld a, $04                                     ; $7327: $3e $04
    rst $18                                       ; $7329: $df

    db $1e, $0a

    ld a, $04                                     ; $732c: $3e $04
    ld b, a                                       ; $732e: $47
    ld a, $05                                     ; $732f: $3e $05
    rst $18                                       ; $7331: $df

    db $32, $0a

    ld a, $04                                     ; $7334: $3e $04
    rst $18                                       ; $7336: $df

    db $34, $0a

    push af                                       ; $7339: $f5
    ld a, $0a                                     ; $733a: $3e $0a
    rst $18                                       ; $733c: $df

    db $04, $0a

    pop af                                        ; $733f: $f1
    ld a, $04                                     ; $7340: $3e $04
    rst $18                                       ; $7342: $df

    db $08, $0a

    push af                                       ; $7345: $f5
    ld a, $0a                                     ; $7346: $3e $0a
    rst $18                                       ; $7348: $df

    db $04, $0a

    pop af                                        ; $734b: $f1
    ld a, $02                                     ; $734c: $3e $02
    ld b, $40                                     ; $734e: $06 $40
    ld de, $0200                                  ; $7350: $11 $00 $02
    rst $18                                       ; $7353: $df

    db $28, $0a

    ld a, $02                                     ; $7356: $3e $02
    rst $18                                       ; $7358: $df

    db $1e, $0a

    push af                                       ; $735b: $f5
    ld a, $1e                                     ; $735c: $3e $1e
    rst $18                                       ; $735e: $df

    db $04, $0a

    pop af                                        ; $7361: $f1
    ld a, $02                                     ; $7362: $3e $02
    ld b, $00                                     ; $7364: $06 $00
    rst $18                                       ; $7366: $df

    db $2c, $0a

    push af                                       ; $7369: $f5
    ld a, $1e                                     ; $736a: $3e $1e
    rst $18                                       ; $736c: $df

    db $04, $0a

    pop af                                        ; $736f: $f1
    ld a, $04                                     ; $7370: $3e $04
    ld b, $80                                     ; $7372: $06 $80
    rst $18                                       ; $7374: $df

    db $2c, $0a

    push af                                       ; $7377: $f5
    ld a, $1e                                     ; $7378: $3e $1e
    rst $18                                       ; $737a: $df

    db $04, $0a

    pop af                                        ; $737d: $f1
    ld a, $02                                     ; $737e: $3e $02
    ld b, $80                                     ; $7380: $06 $80
    rst $18                                       ; $7382: $df

    db $2c, $0a

    push af                                       ; $7385: $f5
    ld a, $1e                                     ; $7386: $3e $1e
    rst $18                                       ; $7388: $df

    db $04, $0a

    pop af                                        ; $738b: $f1
    ld a, $03                                     ; $738c: $3e $03
    ld b, $00                                     ; $738e: $06 $00
    rst $18                                       ; $7390: $df

    db $2c, $0a

    push af                                       ; $7393: $f5
    ld a, $1e                                     ; $7394: $3e $1e
    rst $18                                       ; $7396: $df

    db $04, $0a

    pop af                                        ; $7399: $f1
    ld a, $02                                     ; $739a: $3e $02
    ld b, a                                       ; $739c: $47
    ld a, $05                                     ; $739d: $3e $05
    rst $18                                       ; $739f: $df

    db $32, $0a

    ld a, $02                                     ; $73a2: $3e $02
    rst $18                                       ; $73a4: $df

    db $34, $0a

    push af                                       ; $73a7: $f5
    ld a, $0a                                     ; $73a8: $3e $0a
    rst $18                                       ; $73aa: $df

    db $04, $0a

    pop af                                        ; $73ad: $f1
    ld a, $02                                     ; $73ae: $3e $02
    rst $18                                       ; $73b0: $df

    db $08, $0a

    push af                                       ; $73b3: $f5
    ld a, $0a                                     ; $73b4: $3e $0a
    rst $18                                       ; $73b6: $df

    db $04, $0a

    pop af                                        ; $73b9: $f1
    ld a, $03                                     ; $73ba: $3e $03
    ld b, a                                       ; $73bc: $47
    ld a, $05                                     ; $73bd: $3e $05
    rst $18                                       ; $73bf: $df

    db $32, $0a

    ld a, $03                                     ; $73c2: $3e $03
    rst $18                                       ; $73c4: $df

    db $34, $0a

    push af                                       ; $73c7: $f5
    ld a, $0a                                     ; $73c8: $3e $0a
    rst $18                                       ; $73ca: $df

    db $04, $0a

    pop af                                        ; $73cd: $f1
    ld a, $02                                     ; $73ce: $3e $02
    ld b, $00                                     ; $73d0: $06 $00
    rst $18                                       ; $73d2: $df

    db $2c, $0a

    push af                                       ; $73d5: $f5
    ld a, $14                                     ; $73d6: $3e $14
    rst $18                                       ; $73d8: $df

    db $04, $0a

    pop af                                        ; $73db: $f1
    ld a, $04                                     ; $73dc: $3e $04
    ld b, a                                       ; $73de: $47
    ld a, $05                                     ; $73df: $3e $05
    rst $18                                       ; $73e1: $df

    db $32, $0a

    ld a, $04                                     ; $73e4: $3e $04
    rst $18                                       ; $73e6: $df

    db $34, $0a

    push af                                       ; $73e9: $f5
    ld a, $0a                                     ; $73ea: $3e $0a
    rst $18                                       ; $73ec: $df

    db $04, $0a

    pop af                                        ; $73ef: $f1
    ld a, $03                                     ; $73f0: $3e $03
    ld b, $40                                     ; $73f2: $06 $40
    rst $18                                       ; $73f4: $df

    db $2c, $0a

    ld a, $04                                     ; $73f7: $3e $04
    ld b, $40                                     ; $73f9: $06 $40
    rst $18                                       ; $73fb: $df

    db $2c, $0a

    ld a, $02                                     ; $73fe: $3e $02
    ld b, $40                                     ; $7400: $06 $40
    rst $18                                       ; $7402: $df

    db $2c, $0a

    push af                                       ; $7405: $f5
    ld a, $14                                     ; $7406: $3e $14
    rst $18                                       ; $7408: $df

    db $04, $0a

    pop af                                        ; $740b: $f1
    ld a, $02                                     ; $740c: $3e $02
    ld b, a                                       ; $740e: $47
    ld a, $07                                     ; $740f: $3e $07
    rst $18                                       ; $7411: $df

    db $32, $0a

    ld a, $02                                     ; $7414: $3e $02
    rst $18                                       ; $7416: $df

    db $34, $0a

    push af                                       ; $7419: $f5
    ld a, $0a                                     ; $741a: $3e $0a
    rst $18                                       ; $741c: $df

    db $04, $0a

    pop af                                        ; $741f: $f1
    ld a, $02                                     ; $7420: $3e $02
    rst $18                                       ; $7422: $df

    db $08, $0a

    push af                                       ; $7425: $f5
    ld a, $0a                                     ; $7426: $3e $0a
    rst $18                                       ; $7428: $df

    db $04, $0a

    pop af                                        ; $742b: $f1
    ld a, $02                                     ; $742c: $3e $02
    ld b, a                                       ; $742e: $47
    ld a, $05                                     ; $742f: $3e $05
    rst $18                                       ; $7431: $df

    db $32, $0a

    ld a, $02                                     ; $7434: $3e $02
    rst $18                                       ; $7436: $df

    db $34, $0a

    push af                                       ; $7439: $f5
    ld a, $0a                                     ; $743a: $3e $0a
    rst $18                                       ; $743c: $df

    db $04, $0a

    pop af                                        ; $743f: $f1
    ld a, $02                                     ; $7440: $3e $02
    rst $18                                       ; $7442: $df

    db $08, $0a

    push af                                       ; $7445: $f5
    ld a, $0a                                     ; $7446: $3e $0a
    rst $18                                       ; $7448: $df

    db $04, $0a

    pop af                                        ; $744b: $f1
    ld c, $04                                     ; $744c: $0e $04
    call Call_000_25a1                            ; $744e: $cd $a1 $25
    call Call_000_2625                            ; $7451: $cd $25 $26
    push af                                       ; $7454: $f5
    ld a, $1e                                     ; $7455: $3e $1e
    rst $18                                       ; $7457: $df

    db $04, $0a

    pop af                                        ; $745a: $f1
    ld a, $02                                     ; $745b: $3e $02
    ld [$c441], a                                 ; $745d: $ea $41 $c4
    ret                                           ; $7460: $c9


Jump_032_7461:
    ld a, [$c46a]                                 ; $7461: $fa $6a $c4

jr_032_7464:
    cp $01                                        ; $7464: $fe $01
    jr z, jr_032_746e                             ; $7466: $28 $06

    xor a                                         ; $7468: $af
    ld hl, $c4b4                                  ; $7469: $21 $b4 $c4
    ld [hl+], a                                   ; $746c: $22
    ld [hl+], a                                   ; $746d: $22

jr_032_746e:
    rst $30                                       ; $746e: $f7
    and b                                         ; $746f: $a0
    ld c, $28                                     ; $7470: $0e $28
    jr nz, jr_032_7464                            ; $7472: $20 $f0

    sub l                                         ; $7474: $95
    ld hl, $6f35                                  ; $7475: $21 $35 $6f
    rst $18                                       ; $7478: $df
    ld b, $0a                                     ; $7479: $06 $0a
    ld hl, $712f                                  ; $747b: $21 $2f $71
    ld de, $000c                                  ; $747e: $11 $0c $00
    rst $18                                       ; $7481: $df
    ld c, h                                       ; $7482: $4c
    ld a, [bc]                                    ; $7483: $0a
    rst $30                                       ; $7484: $f7
    nop                                           ; $7485: $00
    rrca                                          ; $7486: $0f
    jp nz, Jump_032_7532                          ; $7487: $c2 $32 $75

    call Call_032_7533                            ; $748a: $cd $33 $75
    ld a, $01                                     ; $748d: $3e $01
    ld [$c441], a                                 ; $748f: $ea $41 $c4
    ret                                           ; $7492: $c9


    rst $30                                       ; $7493: $f7
    ldh [rIF], a                                  ; $7494: $e0 $0f
    jr z, jr_032_74ac                             ; $7496: $28 $14

    ldh a, [$95]                                  ; $7498: $f0 $95
    ld hl, $6f35                                  ; $749a: $21 $35 $6f
    rst $18                                       ; $749d: $df
    ld b, $0a                                     ; $749e: $06 $0a
    ld hl, $710e                                  ; $74a0: $21 $0e $71
    ld de, $000c                                  ; $74a3: $11 $0c $00
    rst $18                                       ; $74a6: $df
    ld c, h                                       ; $74a7: $4c
    ld a, [bc]                                    ; $74a8: $0a
    jp Jump_032_7532                              ; $74a9: $c3 $32 $75


jr_032_74ac:
    rst $30                                       ; $74ac: $f7
    ld h, b                                       ; $74ad: $60
    ld de, $1328                                  ; $74ae: $11 $28 $13
    ldh a, [$95]                                  ; $74b1: $f0 $95
    ld hl, $6f35                                  ; $74b3: $21 $35 $6f
    rst $18                                       ; $74b6: $df
    ld b, $0a                                     ; $74b7: $06 $0a
    ld hl, $70ed                                  ; $74b9: $21 $ed $70
    ld de, $000c                                  ; $74bc: $11 $0c $00
    rst $18                                       ; $74bf: $df
    ld c, h                                       ; $74c0: $4c
    ld a, [bc]                                    ; $74c1: $0a
    jr jr_032_7532                                ; $74c2: $18 $6e

    rst $30                                       ; $74c4: $f7
    ld h, b                                       ; $74c5: $60
    ld c, $28                                     ; $74c6: $0e $28
    dec bc                                        ; $74c8: $0b
    ld hl, $70cc                                  ; $74c9: $21 $cc $70
    ld de, $000c                                  ; $74cc: $11 $0c $00
    rst $18                                       ; $74cf: $df
    ld c, h                                       ; $74d0: $4c
    ld a, [bc]                                    ; $74d1: $0a
    jr jr_032_7532                                ; $74d2: $18 $5e

    rst $30                                       ; $74d4: $f7
    ld b, b                                       ; $74d5: $40
    ld de, $0b28                                  ; $74d6: $11 $28 $0b
    ld hl, $70ab                                  ; $74d9: $21 $ab $70
    ld de, $000c                                  ; $74dc: $11 $0c $00
    rst $18                                       ; $74df: $df
    ld c, h                                       ; $74e0: $4c
    ld a, [bc]                                    ; $74e1: $0a
    jr jr_032_7532                                ; $74e2: $18 $4e

    rst $30                                       ; $74e4: $f7
    ld b, b                                       ; $74e5: $40
    ld c, $28                                     ; $74e6: $0e $28
    dec bc                                        ; $74e8: $0b
    ld hl, $708a                                  ; $74e9: $21 $8a $70
    ld de, $000c                                  ; $74ec: $11 $0c $00
    rst $18                                       ; $74ef: $df
    ld c, h                                       ; $74f0: $4c
    ld a, [bc]                                    ; $74f1: $0a
    jr jr_032_7532                                ; $74f2: $18 $3e

    rst $30                                       ; $74f4: $f7
    jr nz, @+$13                                  ; $74f5: $20 $11

    jr z, jr_032_7504                             ; $74f7: $28 $0b

    ld hl, $7069                                  ; $74f9: $21 $69 $70
    ld de, $000c                                  ; $74fc: $11 $0c $00
    rst $18                                       ; $74ff: $df
    ld c, h                                       ; $7500: $4c
    ld a, [bc]                                    ; $7501: $0a
    jr jr_032_7532                                ; $7502: $18 $2e

jr_032_7504:
    rst $30                                       ; $7504: $f7
    jr nz, jr_032_7515                            ; $7505: $20 $0e

    jr z, jr_032_7514                             ; $7507: $28 $0b

    ld hl, $7048                                  ; $7509: $21 $48 $70
    ld de, $000c                                  ; $750c: $11 $0c $00
    rst $18                                       ; $750f: $df
    ld c, h                                       ; $7510: $4c
    ld a, [bc]                                    ; $7511: $0a
    jr jr_032_7532                                ; $7512: $18 $1e

jr_032_7514:
    rst $30                                       ; $7514: $f7

jr_032_7515:
    nop                                           ; $7515: $00
    ld de, $0b28                                  ; $7516: $11 $28 $0b
    ld hl, $7027                                  ; $7519: $21 $27 $70
    ld de, $000c                                  ; $751c: $11 $0c $00
    rst $18                                       ; $751f: $df
    ld c, h                                       ; $7520: $4c
    ld a, [bc]                                    ; $7521: $0a
    jr jr_032_7532                                ; $7522: $18 $0e

    rst $30                                       ; $7524: $f7
    nop                                           ; $7525: $00
    ld c, $28                                     ; $7526: $0e $28
    add hl, bc                                    ; $7528: $09
    ld hl, $7006                                  ; $7529: $21 $06 $70
    ld de, $000c                                  ; $752c: $11 $0c $00
    rst $18                                       ; $752f: $df
    ld c, h                                       ; $7530: $4c
    ld a, [bc]                                    ; $7531: $0a

Jump_032_7532:
jr_032_7532:
    ret                                           ; $7532: $c9


Call_032_7533:
    xor a                                         ; $7533: $af
    ld hl, $c4b4                                  ; $7534: $21 $b4 $c4
    ld [hl+], a                                   ; $7537: $22
    ld [hl+], a                                   ; $7538: $22
    rst $30                                       ; $7539: $f7
    and b                                         ; $753a: $a0
    ld c, $20                                     ; $753b: $0e $20
    ld bc, $dfc9                                  ; $753d: $01 $c9 $df
    nop                                           ; $7540: $00
    ld a, [bc]                                    ; $7541: $0a
    ld a, $02                                     ; $7542: $3e $02
    ld bc, $0b00                                  ; $7544: $01 $00 $0b
    ld de, $0500                                  ; $7547: $11 $00 $05
    rst $18                                       ; $754a: $df
    jr nz, @+$0c                                  ; $754b: $20 $0a

    ld a, $03                                     ; $754d: $3e $03
    ld bc, $0900                                  ; $754f: $01 $00 $09
    ld de, $0600                                  ; $7552: $11 $00 $06
    rst $18                                       ; $7555: $df
    jr nz, @+$0c                                  ; $7556: $20 $0a

    ld a, $05                                     ; $7558: $3e $05
    ld bc, $0d00                                  ; $755a: $01 $00 $0d
    ld de, $0500                                  ; $755d: $11 $00 $05
    rst $18                                       ; $7560: $df
    jr nz, @+$0c                                  ; $7561: $20 $0a

    ld a, $04                                     ; $7563: $3e $04
    ld bc, $0f00                                  ; $7565: $01 $00 $0f
    ld de, $0600                                  ; $7568: $11 $00 $06
    rst $18                                       ; $756b: $df
    jr nz, @+$0c                                  ; $756c: $20 $0a

    ld a, $00                                     ; $756e: $3e $00
    ld bc, $0b00                                  ; $7570: $01 $00 $0b
    ld de, $0b00                                  ; $7573: $11 $00 $0b
    rst $18                                       ; $7576: $df
    jr nz, @+$0c                                  ; $7577: $20 $0a

    push af                                       ; $7579: $f5
    ld a, $0a                                     ; $757a: $3e $0a
    rst $18                                       ; $757c: $df
    inc b                                         ; $757d: $04
    ld a, [bc]                                    ; $757e: $0a
    pop af                                        ; $757f: $f1
    ld a, $02                                     ; $7580: $3e $02
    ld b, $40                                     ; $7582: $06 $40
    rst $18                                       ; $7584: $df
    inc l                                         ; $7585: $2c
    ld a, [bc]                                    ; $7586: $0a
    ld a, $03                                     ; $7587: $3e $03
    ld b, $40                                     ; $7589: $06 $40
    rst $18                                       ; $758b: $df
    inc l                                         ; $758c: $2c
    ld a, [bc]                                    ; $758d: $0a
    ld a, $05                                     ; $758e: $3e $05
    ld b, $40                                     ; $7590: $06 $40
    rst $18                                       ; $7592: $df
    inc l                                         ; $7593: $2c
    ld a, [bc]                                    ; $7594: $0a
    ld a, $04                                     ; $7595: $3e $04
    ld b, $40                                     ; $7597: $06 $40
    rst $18                                       ; $7599: $df
    inc l                                         ; $759a: $2c
    ld a, [bc]                                    ; $759b: $0a
    ld c, $04                                     ; $759c: $0e $04
    call Call_000_25af                            ; $759e: $cd $af $25
    call Call_000_2625                            ; $75a1: $cd $25 $26
    ld hl, $04bf                                  ; $75a4: $21 $bf $04
    rst $18                                       ; $75a7: $df
    ld c, $0a                                     ; $75a8: $0e $0a
    ld a, $02                                     ; $75aa: $3e $02
    rst $18                                       ; $75ac: $df
    ld [$3e0a], sp                                ; $75ad: $08 $0a $3e
    dec b                                         ; $75b0: $05
    ld b, a                                       ; $75b1: $47
    ld a, $07                                     ; $75b2: $3e $07
    rst $18                                       ; $75b4: $df
    ld [hl-], a                                   ; $75b5: $32
    ld a, [bc]                                    ; $75b6: $0a
    ld a, $05                                     ; $75b7: $3e $05
    rst $18                                       ; $75b9: $df
    inc [hl]                                      ; $75ba: $34
    ld a, [bc]                                    ; $75bb: $0a
    ld a, $02                                     ; $75bc: $3e $02
    ld b, a                                       ; $75be: $47
    ld a, $05                                     ; $75bf: $3e $05
    rst $18                                       ; $75c1: $df
    ld l, $0a                                     ; $75c2: $2e $0a
    ld a, $05                                     ; $75c4: $3e $05
    rst $18                                       ; $75c6: $df
    ld [$3e0a], sp                                ; $75c7: $08 $0a $3e
    inc b                                         ; $75ca: $04
    ld b, a                                       ; $75cb: $47
    ld a, $05                                     ; $75cc: $3e $05
    rst $18                                       ; $75ce: $df
    ld [hl-], a                                   ; $75cf: $32
    ld a, [bc]                                    ; $75d0: $0a
    ld a, $04                                     ; $75d1: $3e $04
    rst $18                                       ; $75d3: $df
    inc [hl]                                      ; $75d4: $34
    ld a, [bc]                                    ; $75d5: $0a
    ld a, $02                                     ; $75d6: $3e $02
    ld b, a                                       ; $75d8: $47
    ld a, $04                                     ; $75d9: $3e $04
    rst $18                                       ; $75db: $df
    ld l, $0a                                     ; $75dc: $2e $0a
    ld a, $04                                     ; $75de: $3e $04
    rst $18                                       ; $75e0: $df
    ld [$3e0a], sp                                ; $75e1: $08 $0a $3e
    ld [bc], a                                    ; $75e4: $02
    ld b, a                                       ; $75e5: $47
    ld a, $05                                     ; $75e6: $3e $05
    rst $18                                       ; $75e8: $df
    ld [hl-], a                                   ; $75e9: $32
    ld a, [bc]                                    ; $75ea: $0a
    ld a, $02                                     ; $75eb: $3e $02
    rst $18                                       ; $75ed: $df
    inc [hl]                                      ; $75ee: $34
    ld a, [bc]                                    ; $75ef: $0a
    ld a, $03                                     ; $75f0: $3e $03
    ld b, a                                       ; $75f2: $47
    ld a, $07                                     ; $75f3: $3e $07
    rst $18                                       ; $75f5: $df
    ld [hl-], a                                   ; $75f6: $32
    ld a, [bc]                                    ; $75f7: $0a
    ld a, $03                                     ; $75f8: $3e $03
    rst $18                                       ; $75fa: $df
    inc [hl]                                      ; $75fb: $34
    ld a, [bc]                                    ; $75fc: $0a
    push af                                       ; $75fd: $f5
    ld a, $14                                     ; $75fe: $3e $14
    rst $18                                       ; $7600: $df
    inc b                                         ; $7601: $04
    ld a, [bc]                                    ; $7602: $0a
    pop af                                        ; $7603: $f1
    ld a, $03                                     ; $7604: $3e $03
    ld b, a                                       ; $7606: $47
    ld a, $02                                     ; $7607: $3e $02
    rst $18                                       ; $7609: $df
    ld l, $0a                                     ; $760a: $2e $0a
    ld a, $03                                     ; $760c: $3e $03
    ld b, a                                       ; $760e: $47
    ld a, $05                                     ; $760f: $3e $05
    rst $18                                       ; $7611: $df
    ld l, $0a                                     ; $7612: $2e $0a
    push af                                       ; $7614: $f5
    ld a, $14                                     ; $7615: $3e $14
    rst $18                                       ; $7617: $df
    inc b                                         ; $7618: $04
    ld a, [bc]                                    ; $7619: $0a
    pop af                                        ; $761a: $f1
    ld a, $02                                     ; $761b: $3e $02
    ld b, a                                       ; $761d: $47
    ld a, $05                                     ; $761e: $3e $05
    rst $18                                       ; $7620: $df
    ld [hl-], a                                   ; $7621: $32
    ld a, [bc]                                    ; $7622: $0a
    ld a, $02                                     ; $7623: $3e $02
    rst $18                                       ; $7625: $df
    inc [hl]                                      ; $7626: $34
    ld a, [bc]                                    ; $7627: $0a
    ld a, $03                                     ; $7628: $3e $03
    ld b, a                                       ; $762a: $47
    ld a, $06                                     ; $762b: $3e $06
    rst $18                                       ; $762d: $df
    ld [hl-], a                                   ; $762e: $32
    ld a, [bc]                                    ; $762f: $0a
    ld a, $03                                     ; $7630: $3e $03
    rst $18                                       ; $7632: $df
    inc [hl]                                      ; $7633: $34
    ld a, [bc]                                    ; $7634: $0a
    ld a, $02                                     ; $7635: $3e $02
    ld b, a                                       ; $7637: $47
    ld a, $07                                     ; $7638: $3e $07
    rst $18                                       ; $763a: $df
    ld [hl-], a                                   ; $763b: $32
    ld a, [bc]                                    ; $763c: $0a
    ld a, $02                                     ; $763d: $3e $02
    rst $18                                       ; $763f: $df
    inc [hl]                                      ; $7640: $34
    ld a, [bc]                                    ; $7641: $0a
    ld a, $02                                     ; $7642: $3e $02
    rst $18                                       ; $7644: $df
    ld [$3e0a], sp                                ; $7645: $08 $0a $3e
    inc bc                                        ; $7648: $03
    ld b, a                                       ; $7649: $47
    ld a, $06                                     ; $764a: $3e $06
    rst $18                                       ; $764c: $df
    ld [hl-], a                                   ; $764d: $32
    ld a, [bc]                                    ; $764e: $0a
    ld a, $03                                     ; $764f: $3e $03
    rst $18                                       ; $7651: $df
    inc [hl]                                      ; $7652: $34
    ld a, [bc]                                    ; $7653: $0a
    ld a, $03                                     ; $7654: $3e $03
    rst $18                                       ; $7656: $df
    ld [$3e0a], sp                                ; $7657: $08 $0a $3e
    inc b                                         ; $765a: $04
    ld b, a                                       ; $765b: $47
    ld a, $07                                     ; $765c: $3e $07
    rst $18                                       ; $765e: $df
    ld [hl-], a                                   ; $765f: $32
    ld a, [bc]                                    ; $7660: $0a
    ld a, $04                                     ; $7661: $3e $04
    rst $18                                       ; $7663: $df
    inc [hl]                                      ; $7664: $34
    ld a, [bc]                                    ; $7665: $0a
    ld a, $04                                     ; $7666: $3e $04
    rst $18                                       ; $7668: $df
    ld [$3e0a], sp                                ; $7669: $08 $0a $3e
    inc b                                         ; $766c: $04
    ld b, a                                       ; $766d: $47
    ld a, $03                                     ; $766e: $3e $03
    rst $18                                       ; $7670: $df
    ld l, $0a                                     ; $7671: $2e $0a
    ld a, $03                                     ; $7673: $3e $03
    rst $18                                       ; $7675: $df
    ld [$3e0a], sp                                ; $7676: $08 $0a $3e
    ld [bc], a                                    ; $7679: $02
    ld b, a                                       ; $767a: $47
    ld a, $05                                     ; $767b: $3e $05
    rst $18                                       ; $767d: $df
    ld [hl-], a                                   ; $767e: $32
    ld a, [bc]                                    ; $767f: $0a
    ld a, $05                                     ; $7680: $3e $05
    ld b, a                                       ; $7682: $47
    ld a, $05                                     ; $7683: $3e $05
    rst $18                                       ; $7685: $df
    ld [hl-], a                                   ; $7686: $32
    ld a, [bc]                                    ; $7687: $0a
    ld a, $04                                     ; $7688: $3e $04
    ld b, a                                       ; $768a: $47
    ld a, $05                                     ; $768b: $3e $05
    rst $18                                       ; $768d: $df
    ld [hl-], a                                   ; $768e: $32
    ld a, [bc]                                    ; $768f: $0a
    ld a, $04                                     ; $7690: $3e $04
    rst $18                                       ; $7692: $df
    inc [hl]                                      ; $7693: $34
    ld a, [bc]                                    ; $7694: $0a
    ld a, $03                                     ; $7695: $3e $03
    ld b, a                                       ; $7697: $47
    ld a, $06                                     ; $7698: $3e $06
    rst $18                                       ; $769a: $df
    ld [hl-], a                                   ; $769b: $32
    ld a, [bc]                                    ; $769c: $0a
    ld a, $03                                     ; $769d: $3e $03
    rst $18                                       ; $769f: $df
    inc [hl]                                      ; $76a0: $34
    ld a, [bc]                                    ; $76a1: $0a
    ld a, $03                                     ; $76a2: $3e $03
    rst $18                                       ; $76a4: $df
    ld [$3e0a], sp                                ; $76a5: $08 $0a $3e
    inc b                                         ; $76a8: $04
    ld b, a                                       ; $76a9: $47
    ld a, $05                                     ; $76aa: $3e $05
    rst $18                                       ; $76ac: $df
    jr nc, jr_032_76b9                            ; $76ad: $30 $0a

    push af                                       ; $76af: $f5
    ld a, $1e                                     ; $76b0: $3e $1e
    rst $18                                       ; $76b2: $df
    inc b                                         ; $76b3: $04
    ld a, [bc]                                    ; $76b4: $0a
    pop af                                        ; $76b5: $f1
    ld a, $02                                     ; $76b6: $3e $02
    ld b, a                                       ; $76b8: $47

jr_032_76b9:
    ld a, $05                                     ; $76b9: $3e $05
    rst $18                                       ; $76bb: $df
    jr nc, jr_032_76c8                            ; $76bc: $30 $0a

    push af                                       ; $76be: $f5
    ld a, $1e                                     ; $76bf: $3e $1e
    rst $18                                       ; $76c1: $df
    inc b                                         ; $76c2: $04
    ld a, [bc]                                    ; $76c3: $0a
    pop af                                        ; $76c4: $f1
    ld a, $03                                     ; $76c5: $3e $03
    ld b, a                                       ; $76c7: $47

jr_032_76c8:
    ld a, $02                                     ; $76c8: $3e $02
    rst $18                                       ; $76ca: $df
    ld l, $0a                                     ; $76cb: $2e $0a
    ld a, $03                                     ; $76cd: $3e $03
    ld b, a                                       ; $76cf: $47
    ld a, $04                                     ; $76d0: $3e $04
    rst $18                                       ; $76d2: $df
    ld l, $0a                                     ; $76d3: $2e $0a
    ld a, $03                                     ; $76d5: $3e $03
    ld b, a                                       ; $76d7: $47
    ld a, $05                                     ; $76d8: $3e $05
    rst $18                                       ; $76da: $df
    ld l, $0a                                     ; $76db: $2e $0a
    push af                                       ; $76dd: $f5
    ld a, $1e                                     ; $76de: $3e $1e
    rst $18                                       ; $76e0: $df
    inc b                                         ; $76e1: $04
    ld a, [bc]                                    ; $76e2: $0a
    pop af                                        ; $76e3: $f1
    ld a, $03                                     ; $76e4: $3e $03
    rst $18                                       ; $76e6: $df
    ld [$f50a], sp                                ; $76e7: $08 $0a $f5
    ld a, $3c                                     ; $76ea: $3e $3c
    rst $18                                       ; $76ec: $df
    inc b                                         ; $76ed: $04
    ld a, [bc]                                    ; $76ee: $0a
    pop af                                        ; $76ef: $f1
    ld a, $05                                     ; $76f0: $3e $05
    ld b, a                                       ; $76f2: $47
    ld a, $05                                     ; $76f3: $3e $05
    rst $18                                       ; $76f5: $df
    ld [hl-], a                                   ; $76f6: $32
    ld a, [bc]                                    ; $76f7: $0a
    ld a, $05                                     ; $76f8: $3e $05
    rst $18                                       ; $76fa: $df
    inc [hl]                                      ; $76fb: $34
    ld a, [bc]                                    ; $76fc: $0a
    ld a, $05                                     ; $76fd: $3e $05
    rst $18                                       ; $76ff: $df
    ld [$3e0a], sp                                ; $7700: $08 $0a $3e
    inc b                                         ; $7703: $04
    ld b, a                                       ; $7704: $47
    ld a, $07                                     ; $7705: $3e $07
    rst $18                                       ; $7707: $df
    ld [hl-], a                                   ; $7708: $32
    ld a, [bc]                                    ; $7709: $0a
    ld a, $04                                     ; $770a: $3e $04
    rst $18                                       ; $770c: $df
    inc [hl]                                      ; $770d: $34
    ld a, [bc]                                    ; $770e: $0a
    ld a, $05                                     ; $770f: $3e $05
    ld b, a                                       ; $7711: $47
    ld a, $04                                     ; $7712: $3e $04
    rst $18                                       ; $7714: $df
    ld l, $0a                                     ; $7715: $2e $0a
    ld a, $04                                     ; $7717: $3e $04
    rst $18                                       ; $7719: $df
    ld [$3e0a], sp                                ; $771a: $08 $0a $3e
    inc b                                         ; $771d: $04
    ld bc, $0d00                                  ; $771e: $01 $00 $0d
    ld de, $0700                                  ; $7721: $11 $00 $07
    rst $18                                       ; $7724: $df
    ld [hl+], a                                   ; $7725: $22
    ld a, [bc]                                    ; $7726: $0a
    ld a, $04                                     ; $7727: $3e $04
    rst $18                                       ; $7729: $df
    ld e, $0a                                     ; $772a: $1e $0a
    ld a, $03                                     ; $772c: $3e $03
    ld b, a                                       ; $772e: $47
    ld a, $04                                     ; $772f: $3e $04
    rst $18                                       ; $7731: $df
    ld l, $0a                                     ; $7732: $2e $0a
    ld a, $04                                     ; $7734: $3e $04
    rst $18                                       ; $7736: $df
    ld [$3e0a], sp                                ; $7737: $08 $0a $3e
    inc bc                                        ; $773a: $03
    ld b, a                                       ; $773b: $47
    ld a, $07                                     ; $773c: $3e $07
    rst $18                                       ; $773e: $df
    ld [hl-], a                                   ; $773f: $32
    ld a, [bc]                                    ; $7740: $0a
    ld a, $03                                     ; $7741: $3e $03
    rst $18                                       ; $7743: $df
    inc [hl]                                      ; $7744: $34
    ld a, [bc]                                    ; $7745: $0a
    push af                                       ; $7746: $f5
    ld a, $1e                                     ; $7747: $3e $1e
    rst $18                                       ; $7749: $df
    inc b                                         ; $774a: $04
    ld a, [bc]                                    ; $774b: $0a
    pop af                                        ; $774c: $f1
    ld a, $02                                     ; $774d: $3e $02
    ld b, $40                                     ; $774f: $06 $40
    rst $18                                       ; $7751: $df
    inc l                                         ; $7752: $2c
    ld a, [bc]                                    ; $7753: $0a
    ld a, $02                                     ; $7754: $3e $02
    ld b, a                                       ; $7756: $47
    ld a, $06                                     ; $7757: $3e $06
    rst $18                                       ; $7759: $df
    ld [hl-], a                                   ; $775a: $32
    ld a, [bc]                                    ; $775b: $0a
    ld a, $02                                     ; $775c: $3e $02
    rst $18                                       ; $775e: $df
    inc [hl]                                      ; $775f: $34
    ld a, [bc]                                    ; $7760: $0a
    ld a, $02                                     ; $7761: $3e $02
    rst $18                                       ; $7763: $df
    ld [$3e0a], sp                                ; $7764: $08 $0a $3e
    ld [bc], a                                    ; $7767: $02
    ld b, a                                       ; $7768: $47
    ld a, $04                                     ; $7769: $3e $04
    rst $18                                       ; $776b: $df
    ld l, $0a                                     ; $776c: $2e $0a
    ld a, $02                                     ; $776e: $3e $02
    ld b, a                                       ; $7770: $47
    ld a, $03                                     ; $7771: $3e $03
    rst $18                                       ; $7773: $df
    ld l, $0a                                     ; $7774: $2e $0a
    ld a, $02                                     ; $7776: $3e $02
    ld b, a                                       ; $7778: $47
    ld a, $05                                     ; $7779: $3e $05
    rst $18                                       ; $777b: $df
    ld l, $0a                                     ; $777c: $2e $0a
    push af                                       ; $777e: $f5
    ld a, $14                                     ; $777f: $3e $14
    rst $18                                       ; $7781: $df
    inc b                                         ; $7782: $04
    ld a, [bc]                                    ; $7783: $0a
    pop af                                        ; $7784: $f1
    ld a, $02                                     ; $7785: $3e $02
    rst $18                                       ; $7787: $df
    ld [$3e0a], sp                                ; $7788: $08 $0a $3e
    dec b                                         ; $778b: $05
    ld b, a                                       ; $778c: $47
    ld a, $07                                     ; $778d: $3e $07
    rst $18                                       ; $778f: $df
    ld [hl-], a                                   ; $7790: $32
    ld a, [bc]                                    ; $7791: $0a
    ld a, $03                                     ; $7792: $3e $03
    ld b, a                                       ; $7794: $47
    ld a, $07                                     ; $7795: $3e $07
    rst $18                                       ; $7797: $df
    ld [hl-], a                                   ; $7798: $32
    ld a, [bc]                                    ; $7799: $0a
    ld a, $04                                     ; $779a: $3e $04
    ld b, a                                       ; $779c: $47
    ld a, $07                                     ; $779d: $3e $07
    rst $18                                       ; $779f: $df
    ld [hl-], a                                   ; $77a0: $32
    ld a, [bc]                                    ; $77a1: $0a
    ld a, $04                                     ; $77a2: $3e $04
    rst $18                                       ; $77a4: $df
    inc [hl]                                      ; $77a5: $34
    ld a, [bc]                                    ; $77a6: $0a
    push af                                       ; $77a7: $f5
    ld a, $3c                                     ; $77a8: $3e $3c
    rst $18                                       ; $77aa: $df
    inc b                                         ; $77ab: $04
    ld a, [bc]                                    ; $77ac: $0a
    pop af                                        ; $77ad: $f1
    ld a, $02                                     ; $77ae: $3e $02
    ld b, a                                       ; $77b0: $47
    ld a, $05                                     ; $77b1: $3e $05
    rst $18                                       ; $77b3: $df
    ld [hl-], a                                   ; $77b4: $32
    ld a, [bc]                                    ; $77b5: $0a
    ld a, $02                                     ; $77b6: $3e $02
    rst $18                                       ; $77b8: $df
    inc [hl]                                      ; $77b9: $34
    ld a, [bc]                                    ; $77ba: $0a
    ld a, $02                                     ; $77bb: $3e $02
    rst $18                                       ; $77bd: $df
    ld [$3e0a], sp                                ; $77be: $08 $0a $3e
    inc bc                                        ; $77c1: $03
    ld b, a                                       ; $77c2: $47
    ld a, $00                                     ; $77c3: $3e $00
    rst $18                                       ; $77c5: $df
    jr nc, @+$0c                                  ; $77c6: $30 $0a

    ld a, $02                                     ; $77c8: $3e $02
    ld b, a                                       ; $77ca: $47
    ld a, $05                                     ; $77cb: $3e $05
    rst $18                                       ; $77cd: $df
    jr nc, jr_032_77da                            ; $77ce: $30 $0a

    push af                                       ; $77d0: $f5
    ld a, $28                                     ; $77d1: $3e $28
    rst $18                                       ; $77d3: $df
    inc b                                         ; $77d4: $04
    ld a, [bc]                                    ; $77d5: $0a
    pop af                                        ; $77d6: $f1
    ld a, $02                                     ; $77d7: $3e $02
    ld b, a                                       ; $77d9: $47

jr_032_77da:
    ld a, $00                                     ; $77da: $3e $00
    rst $18                                       ; $77dc: $df
    ld l, $0a                                     ; $77dd: $2e $0a
    ld a, $02                                     ; $77df: $3e $02
    ld b, a                                       ; $77e1: $47
    ld a, $04                                     ; $77e2: $3e $04
    rst $18                                       ; $77e4: $df
    ld l, $0a                                     ; $77e5: $2e $0a
    ld a, $02                                     ; $77e7: $3e $02
    ld b, a                                       ; $77e9: $47
    ld a, $03                                     ; $77ea: $3e $03
    rst $18                                       ; $77ec: $df
    ld l, $0a                                     ; $77ed: $2e $0a
    ld a, $02                                     ; $77ef: $3e $02
    ld b, a                                       ; $77f1: $47
    ld a, $05                                     ; $77f2: $3e $05
    rst $18                                       ; $77f4: $df
    ld l, $0a                                     ; $77f5: $2e $0a
    ld a, $02                                     ; $77f7: $3e $02
    ld b, a                                       ; $77f9: $47
    ld a, $07                                     ; $77fa: $3e $07
    rst $18                                       ; $77fc: $df
    ld [hl-], a                                   ; $77fd: $32
    ld a, [bc]                                    ; $77fe: $0a
    ld a, $02                                     ; $77ff: $3e $02
    rst $18                                       ; $7801: $df
    inc [hl]                                      ; $7802: $34
    ld a, [bc]                                    ; $7803: $0a
    ld a, $02                                     ; $7804: $3e $02
    rst $18                                       ; $7806: $df
    ld [$3e0a], sp                                ; $7807: $08 $0a $3e
    dec b                                         ; $780a: $05
    ld b, a                                       ; $780b: $47
    ld a, $07                                     ; $780c: $3e $07
    rst $18                                       ; $780e: $df
    ld [hl-], a                                   ; $780f: $32
    ld a, [bc]                                    ; $7810: $0a
    ld a, $05                                     ; $7811: $3e $05
    rst $18                                       ; $7813: $df
    inc [hl]                                      ; $7814: $34
    ld a, [bc]                                    ; $7815: $0a
    ld a, $05                                     ; $7816: $3e $05
    rst $18                                       ; $7818: $df
    ld [$3e0a], sp                                ; $7819: $08 $0a $3e
    inc bc                                        ; $781c: $03
    ld b, a                                       ; $781d: $47
    ld a, $05                                     ; $781e: $3e $05
    rst $18                                       ; $7820: $df
    ld [hl-], a                                   ; $7821: $32
    ld a, [bc]                                    ; $7822: $0a
    ld a, $03                                     ; $7823: $3e $03
    rst $18                                       ; $7825: $df
    inc [hl]                                      ; $7826: $34
    ld a, [bc]                                    ; $7827: $0a
    ld a, $03                                     ; $7828: $3e $03
    rst $18                                       ; $782a: $df
    ld [$3e0a], sp                                ; $782b: $08 $0a $3e
    inc b                                         ; $782e: $04
    ld b, a                                       ; $782f: $47
    ld a, $05                                     ; $7830: $3e $05
    rst $18                                       ; $7832: $df
    ld [hl-], a                                   ; $7833: $32
    ld a, [bc]                                    ; $7834: $0a
    ld a, $04                                     ; $7835: $3e $04
    rst $18                                       ; $7837: $df
    inc [hl]                                      ; $7838: $34
    ld a, [bc]                                    ; $7839: $0a
    ld a, $04                                     ; $783a: $3e $04
    rst $18                                       ; $783c: $df
    ld [$3e0a], sp                                ; $783d: $08 $0a $3e
    inc b                                         ; $7840: $04
    ld bc, $0f00                                  ; $7841: $01 $00 $0f
    ld de, $0600                                  ; $7844: $11 $00 $06
    rst $18                                       ; $7847: $df
    ld [hl+], a                                   ; $7848: $22
    ld a, [bc]                                    ; $7849: $0a
    ld a, $04                                     ; $784a: $3e $04
    rst $18                                       ; $784c: $df
    ld e, $0a                                     ; $784d: $1e $0a
    ld a, $00                                     ; $784f: $3e $00
    ld b, a                                       ; $7851: $47
    ld a, $04                                     ; $7852: $3e $04
    rst $18                                       ; $7854: $df
    ld l, $0a                                     ; $7855: $2e $0a
    ld a, $00                                     ; $7857: $3e $00
    ld b, a                                       ; $7859: $47
    ld a, $02                                     ; $785a: $3e $02
    rst $18                                       ; $785c: $df
    ld l, $0a                                     ; $785d: $2e $0a
    push af                                       ; $785f: $f5
    ld a, $14                                     ; $7860: $3e $14
    rst $18                                       ; $7862: $df
    inc b                                         ; $7863: $04
    ld a, [bc]                                    ; $7864: $0a
    pop af                                        ; $7865: $f1
    ld a, $02                                     ; $7866: $3e $02
    ld b, a                                       ; $7868: $47
    ld a, $05                                     ; $7869: $3e $05
    rst $18                                       ; $786b: $df
    ld [hl-], a                                   ; $786c: $32
    ld a, [bc]                                    ; $786d: $0a
    ld a, $02                                     ; $786e: $3e $02
    rst $18                                       ; $7870: $df
    inc [hl]                                      ; $7871: $34
    ld a, [bc]                                    ; $7872: $0a
    ld a, $02                                     ; $7873: $3e $02
    rst $18                                       ; $7875: $df
    ld [$3e0a], sp                                ; $7876: $08 $0a $3e
    ld [bc], a                                    ; $7879: $02
    ld b, a                                       ; $787a: $47
    ld a, $07                                     ; $787b: $3e $07
    rst $18                                       ; $787d: $df
    ld [hl-], a                                   ; $787e: $32
    ld a, [bc]                                    ; $787f: $0a
    ld a, $02                                     ; $7880: $3e $02
    rst $18                                       ; $7882: $df
    inc [hl]                                      ; $7883: $34
    ld a, [bc]                                    ; $7884: $0a
    ld a, $02                                     ; $7885: $3e $02
    rst $18                                       ; $7887: $df
    ld [$3e0a], sp                                ; $7888: $08 $0a $3e
    nop                                           ; $788b: $00
    ld b, a                                       ; $788c: $47
    ld a, $05                                     ; $788d: $3e $05
    rst $18                                       ; $788f: $df
    ld [hl-], a                                   ; $7890: $32
    ld a, [bc]                                    ; $7891: $0a
    ld a, $00                                     ; $7892: $3e $00
    rst $18                                       ; $7894: $df
    inc [hl]                                      ; $7895: $34
    ld a, [bc]                                    ; $7896: $0a
    ld a, $02                                     ; $7897: $3e $02
    ld b, a                                       ; $7899: $47
    ld a, $06                                     ; $789a: $3e $06
    rst $18                                       ; $789c: $df
    ld [hl-], a                                   ; $789d: $32
    ld a, [bc]                                    ; $789e: $0a
    ld a, $02                                     ; $789f: $3e $02
    rst $18                                       ; $78a1: $df
    inc [hl]                                      ; $78a2: $34
    ld a, [bc]                                    ; $78a3: $0a
    ld a, $02                                     ; $78a4: $3e $02
    rst $18                                       ; $78a6: $df
    ld [$3e0a], sp                                ; $78a7: $08 $0a $3e
    nop                                           ; $78aa: $00
    ld b, a                                       ; $78ab: $47
    ld a, $07                                     ; $78ac: $3e $07
    rst $18                                       ; $78ae: $df
    ld [hl-], a                                   ; $78af: $32
    ld a, [bc]                                    ; $78b0: $0a
    ld a, $00                                     ; $78b1: $3e $00
    rst $18                                       ; $78b3: $df
    inc [hl]                                      ; $78b4: $34
    ld a, [bc]                                    ; $78b5: $0a
    ld a, $02                                     ; $78b6: $3e $02
    ld b, a                                       ; $78b8: $47
    ld a, $05                                     ; $78b9: $3e $05
    rst $18                                       ; $78bb: $df
    ld [hl-], a                                   ; $78bc: $32
    ld a, [bc]                                    ; $78bd: $0a
    ld a, $02                                     ; $78be: $3e $02
    rst $18                                       ; $78c0: $df
    inc [hl]                                      ; $78c1: $34
    ld a, [bc]                                    ; $78c2: $0a
    ld a, $02                                     ; $78c3: $3e $02
    rst $18                                       ; $78c5: $df
    ld [$3e0a], sp                                ; $78c6: $08 $0a $3e
    dec b                                         ; $78c9: $05
    ld b, a                                       ; $78ca: $47
    ld a, $00                                     ; $78cb: $3e $00
    rst $18                                       ; $78cd: $df
    ld l, $0a                                     ; $78ce: $2e $0a
    ld a, $05                                     ; $78d0: $3e $05
    ld b, a                                       ; $78d2: $47
    ld a, $05                                     ; $78d3: $3e $05
    rst $18                                       ; $78d5: $df
    ld [hl-], a                                   ; $78d6: $32
    ld a, [bc]                                    ; $78d7: $0a
    ld a, $05                                     ; $78d8: $3e $05
    rst $18                                       ; $78da: $df
    inc [hl]                                      ; $78db: $34
    ld a, [bc]                                    ; $78dc: $0a
    push af                                       ; $78dd: $f5
    ld a, $28                                     ; $78de: $3e $28
    rst $18                                       ; $78e0: $df
    inc b                                         ; $78e1: $04
    ld a, [bc]                                    ; $78e2: $0a
    pop af                                        ; $78e3: $f1
    ld a, $03                                     ; $78e4: $3e $03
    ld b, $40                                     ; $78e6: $06 $40
    rst $18                                       ; $78e8: $df
    inc l                                         ; $78e9: $2c
    ld a, [bc]                                    ; $78ea: $0a
    ld a, $03                                     ; $78eb: $3e $03
    ld b, a                                       ; $78ed: $47
    ld a, $05                                     ; $78ee: $3e $05
    rst $18                                       ; $78f0: $df
    ld [hl-], a                                   ; $78f1: $32
    ld a, [bc]                                    ; $78f2: $0a
    ld a, $03                                     ; $78f3: $3e $03
    rst $18                                       ; $78f5: $df
    inc [hl]                                      ; $78f6: $34
    ld a, [bc]                                    ; $78f7: $0a
    push af                                       ; $78f8: $f5
    ld a, $28                                     ; $78f9: $3e $28
    rst $18                                       ; $78fb: $df
    inc b                                         ; $78fc: $04
    ld a, [bc]                                    ; $78fd: $0a
    pop af                                        ; $78fe: $f1
    ld a, $04                                     ; $78ff: $3e $04
    ld b, a                                       ; $7901: $47
    ld a, $00                                     ; $7902: $3e $00
    rst $18                                       ; $7904: $df
    ld l, $0a                                     ; $7905: $2e $0a
    ld a, $04                                     ; $7907: $3e $04
    ld b, a                                       ; $7909: $47
    ld a, $05                                     ; $790a: $3e $05
    rst $18                                       ; $790c: $df
    ld [hl-], a                                   ; $790d: $32
    ld a, [bc]                                    ; $790e: $0a
    ld a, $04                                     ; $790f: $3e $04
    rst $18                                       ; $7911: $df
    inc [hl]                                      ; $7912: $34
    ld a, [bc]                                    ; $7913: $0a
    push af                                       ; $7914: $f5
    ld a, $28                                     ; $7915: $3e $28
    rst $18                                       ; $7917: $df
    inc b                                         ; $7918: $04
    ld a, [bc]                                    ; $7919: $0a
    pop af                                        ; $791a: $f1
    ld a, $02                                     ; $791b: $3e $02
    ld b, a                                       ; $791d: $47
    ld a, $00                                     ; $791e: $3e $00
    rst $18                                       ; $7920: $df
    ld l, $0a                                     ; $7921: $2e $0a
    push af                                       ; $7923: $f5
    ld a, $28                                     ; $7924: $3e $28
    rst $18                                       ; $7926: $df
    inc b                                         ; $7927: $04
    ld a, [bc]                                    ; $7928: $0a
    pop af                                        ; $7929: $f1
    ld a, $00                                     ; $792a: $3e $00
    ld b, a                                       ; $792c: $47
    ld a, $05                                     ; $792d: $3e $05
    rst $18                                       ; $792f: $df
    ld [hl-], a                                   ; $7930: $32
    ld a, [bc]                                    ; $7931: $0a
    ld a, $00                                     ; $7932: $3e $00
    rst $18                                       ; $7934: $df
    inc [hl]                                      ; $7935: $34
    ld a, [bc]                                    ; $7936: $0a
    push af                                       ; $7937: $f5
    ld a, $28                                     ; $7938: $3e $28
    rst $18                                       ; $793a: $df
    inc b                                         ; $793b: $04
    ld a, [bc]                                    ; $793c: $0a
    pop af                                        ; $793d: $f1
    ld a, $02                                     ; $793e: $3e $02
    ld b, a                                       ; $7940: $47
    ld a, $05                                     ; $7941: $3e $05
    rst $18                                       ; $7943: $df
    ld [hl-], a                                   ; $7944: $32
    ld a, [bc]                                    ; $7945: $0a
    ld a, $02                                     ; $7946: $3e $02
    rst $18                                       ; $7948: $df
    inc [hl]                                      ; $7949: $34
    ld a, [bc]                                    ; $794a: $0a
    ld a, $02                                     ; $794b: $3e $02
    rst $18                                       ; $794d: $df
    ld [$e70a], sp                                ; $794e: $08 $0a $e7
    nop                                           ; $7951: $00
    rrca                                          ; $7952: $0f
    ld c, $04                                     ; $7953: $0e $04
    call Call_000_25a1                            ; $7955: $cd $a1 $25
    call Call_000_2625                            ; $7958: $cd $25 $26
    push af                                       ; $795b: $f5
    ld a, $1e                                     ; $795c: $3e $1e
    rst $18                                       ; $795e: $df
    inc b                                         ; $795f: $04
    ld a, [bc]                                    ; $7960: $0a
    pop af                                        ; $7961: $f1
    rst $18                                       ; $7962: $df
    ld [bc], a                                    ; $7963: $02
    ld a, [bc]                                    ; $7964: $0a
    ret                                           ; $7965: $c9


    rst $20                                       ; $7966: $e7
    add b                                         ; $7967: $80
    inc de                                        ; $7968: $13
    ld hl, $c800                                  ; $7969: $21 $00 $c8
    ld a, l                                       ; $796c: $7d
    add $12                                       ; $796d: $c6 $12
    ld l, a                                       ; $796f: $6f
    ld a, h                                       ; $7970: $7c
    adc $00                                       ; $7971: $ce $00
    ld h, a                                       ; $7973: $67
    ld a, [hl]                                    ; $7974: $7e
    cp $63                                        ; $7975: $fe $63
    jr z, jr_032_79d7                             ; $7977: $28 $5e

    rst $18                                       ; $7979: $df
    ld a, [hl-]                                   ; $797a: $3a
    ld [bc], a                                    ; $797b: $02
    ld e, l                                       ; $797c: $5d
    ld d, h                                       ; $797d: $54
    rst $18                                       ; $797e: $df
    ld [hl+], a                                   ; $797f: $22
    ld [bc], a                                    ; $7980: $02
    ld a, $06                                     ; $7981: $3e $06
    ld bc, $1900                                  ; $7983: $01 $00 $19
    ld de, $0300                                  ; $7986: $11 $00 $03
    rst $18                                       ; $7989: $df
    jr nz, jr_032_7996                            ; $798a: $20 $0a

    rst $08                                       ; $798c: $cf
    ld h, e                                       ; $798d: $63
    ld a, $06                                     ; $798e: $3e $06
    ld de, $ff00                                  ; $7990: $11 $00 $ff
    rst $18                                       ; $7993: $df
    ld b, b                                       ; $7994: $40
    ld a, [bc]                                    ; $7995: $0a

jr_032_7996:
    ld a, $06                                     ; $7996: $3e $06
    rst $18                                       ; $7998: $df
    ld b, d                                       ; $7999: $42
    ld a, [bc]                                    ; $799a: $0a
    push af                                       ; $799b: $f5
    ld a, $10                                     ; $799c: $3e $10
    rst $18                                       ; $799e: $df
    inc b                                         ; $799f: $04
    ld a, [bc]                                    ; $79a0: $0a
    pop af                                        ; $79a1: $f1
    ld a, $06                                     ; $79a2: $3e $06
    ld bc, $3f00                                  ; $79a4: $01 $00 $3f
    ld de, $3f00                                  ; $79a7: $11 $00 $3f
    rst $18                                       ; $79aa: $df
    jr nz, @+$0c                                  ; $79ab: $20 $0a

    ld hl, $0c5f                                  ; $79ad: $21 $5f $0c
    rst $18                                       ; $79b0: $df
    ld c, $0a                                     ; $79b1: $0e $0a
    ld a, $86                                     ; $79b3: $3e $86
    rst $18                                       ; $79b5: $df
    ld [$cd0a], sp                                ; $79b6: $08 $0a $cd
    rst $20                                       ; $79b9: $e7
    ld a, [hl]                                    ; $79ba: $7e
    ld a, $fa                                     ; $79bb: $3e $fa
    ld [$c441], a                                 ; $79bd: $ea $41 $c4
    ld a, $fa                                     ; $79c0: $3e $fa
    ld [$c46a], a                                 ; $79c2: $ea $6a $c4
    ld hl, $c2a0                                  ; $79c5: $21 $a0 $c2
    ld de, $c466                                  ; $79c8: $11 $66 $c4
    ld bc, $0004                                  ; $79cb: $01 $04 $00
    call Call_000_03d3                            ; $79ce: $cd $d3 $03
    ld a, [$c2a4]                                 ; $79d1: $fa $a4 $c2
    ld [$c465], a                                 ; $79d4: $ea $65 $c4

jr_032_79d7:
    ret                                           ; $79d7: $c9


Call_032_79d8:
    push af                                       ; $79d8: $f5
    push bc                                       ; $79d9: $c5
    push de                                       ; $79da: $d5
    push hl                                       ; $79db: $e5

jr_032_79dc:
    rst $08                                       ; $79dc: $cf
    ld bc, $02df                                  ; $79dd: $01 $df $02
    add hl, bc                                    ; $79e0: $09
    or a                                          ; $79e1: $b7
    jr z, jr_032_79f1                             ; $79e2: $28 $0d

    cp $01                                        ; $79e4: $fe $01
    jp z, Jump_032_79ec                           ; $79e6: $ca $ec $79

    jp Jump_032_79f8                              ; $79e9: $c3 $f8 $79


Jump_032_79ec:
    call Call_032_7a0a                            ; $79ec: $cd $0a $7a
    jr jr_032_79dc                                ; $79ef: $18 $eb

jr_032_79f1:
    ld a, $06                                     ; $79f1: $3e $06
    rst $18                                       ; $79f3: $df
    nop                                           ; $79f4: $00
    ccf                                           ; $79f5: $3f
    jr jr_032_79dc                                ; $79f6: $18 $e4

Jump_032_79f8:
    push af                                       ; $79f8: $f5
    ld c, $10                                     ; $79f9: $0e $10
    call Call_000_25a1                            ; $79fb: $cd $a1 $25
    call Call_000_2625                            ; $79fe: $cd $25 $26
    call Call_000_2e3b                            ; $7a01: $cd $3b $2e
    pop af                                        ; $7a04: $f1
    pop hl                                        ; $7a05: $e1
    pop de                                        ; $7a06: $d1
    pop bc                                        ; $7a07: $c1
    pop af                                        ; $7a08: $f1
    ret                                           ; $7a09: $c9


Call_032_7a0a:
    push af                                       ; $7a0a: $f5
    push bc                                       ; $7a0b: $c5
    push de                                       ; $7a0c: $d5
    push hl                                       ; $7a0d: $e5

Jump_032_7a0e:
    rst $18                                       ; $7a0e: $df
    ld b, $09                                     ; $7a0f: $06 $09
    or a                                          ; $7a11: $b7
    jr z, jr_032_7a21                             ; $7a12: $28 $0d

    cp $01                                        ; $7a14: $fe $01
    jp z, Jump_032_7b21                           ; $7a16: $ca $21 $7b

    cp $02                                        ; $7a19: $fe $02
    jp z, Jump_032_7be3                           ; $7a1b: $ca $e3 $7b

    jp Jump_032_7c7b                              ; $7a1e: $c3 $7b $7c


jr_032_7a21:
    ld de, $d658                                  ; $7a21: $11 $58 $d6
    push de                                       ; $7a24: $d5
    rst $18                                       ; $7a25: $df
    ld d, b                                       ; $7a26: $50
    ld [bc], a                                    ; $7a27: $02
    pop hl                                        ; $7a28: $e1
    cp $00                                        ; $7a29: $fe $00
    jp z, Jump_032_7cad                           ; $7a2b: $ca $ad $7c

    cp $03                                        ; $7a2e: $fe $03
    jp z, Jump_032_7cd2                           ; $7a30: $ca $d2 $7c

    push af                                       ; $7a33: $f5
    push bc                                       ; $7a34: $c5
    push de                                       ; $7a35: $d5
    push hl                                       ; $7a36: $e5
    ld c, $10                                     ; $7a37: $0e $10
    call Call_000_25a1                            ; $7a39: $cd $a1 $25
    call Call_000_2625                            ; $7a3c: $cd $25 $26
    call Call_000_2e3b                            ; $7a3f: $cd $3b $2e
    pop hl                                        ; $7a42: $e1
    pop de                                        ; $7a43: $d1
    pop bc                                        ; $7a44: $c1
    pop af                                        ; $7a45: $f1
    push hl                                       ; $7a46: $e5
    ld b, $01                                     ; $7a47: $06 $01
    rst $18                                       ; $7a49: $df
    ld c, $06                                     ; $7a4a: $0e $06
    rst $18                                       ; $7a4c: $df
    inc c                                         ; $7a4d: $0c
    ld b, $d1                                     ; $7a4e: $06 $d1
    cp $ff                                        ; $7a50: $fe $ff
    jp z, Jump_032_7bd8                           ; $7a52: $ca $d8 $7b

    ld h, a                                       ; $7a55: $67
    ldh a, [$96]                                  ; $7a56: $f0 $96
    push af                                       ; $7a58: $f5
    ld a, $06                                     ; $7a59: $3e $06
    ldh [$96], a                                  ; $7a5b: $e0 $96
    ldh [rSVBK], a                                ; $7a5d: $e0 $70
    ld a, h                                       ; $7a5f: $7c
    ld [$d251], a                                 ; $7a60: $ea $51 $d2
    pop af                                        ; $7a63: $f1
    ldh [$96], a                                  ; $7a64: $e0 $96
    ldh [rSVBK], a                                ; $7a66: $e0 $70
    ld a, h                                       ; $7a68: $7c
    ld hl, $c800                                  ; $7a69: $21 $00 $c8
    ld b, a                                       ; $7a6c: $47
    ld c, a                                       ; $7a6d: $4f
    rst $18                                       ; $7a6e: $df
    ld b, $02                                     ; $7a6f: $06 $02
    ld a, $01                                     ; $7a71: $3e $01
    ld c, $00                                     ; $7a73: $0e $00
    rst $18                                       ; $7a75: $df
    inc h                                         ; $7a76: $24
    ld b, c                                       ; $7a77: $41
    cp $00                                        ; $7a78: $fe $00
    jp z, Jump_032_7c9d                           ; $7a7a: $ca $9d $7c

    push af                                       ; $7a7d: $f5
    push bc                                       ; $7a7e: $c5
    push de                                       ; $7a7f: $d5
    push hl                                       ; $7a80: $e5
    xor a                                         ; $7a81: $af
    ld [$c320], a                                 ; $7a82: $ea $20 $c3
    ld [$c321], a                                 ; $7a85: $ea $21 $c3
    ld [$c322], a                                 ; $7a88: $ea $22 $c3
    ld [$c323], a                                 ; $7a8b: $ea $23 $c3
    rst $18                                       ; $7a8e: $df
    ld [$e109], sp                                ; $7a8f: $08 $09 $e1
    pop de                                        ; $7a92: $d1
    pop bc                                        ; $7a93: $c1
    pop af                                        ; $7a94: $f1
    call Call_000_2e3b                            ; $7a95: $cd $3b $2e
    ldh a, [$96]                                  ; $7a98: $f0 $96
    push af                                       ; $7a9a: $f5
    ld a, $06                                     ; $7a9b: $3e $06
    ldh [$96], a                                  ; $7a9d: $e0 $96
    ldh [rSVBK], a                                ; $7a9f: $e0 $70
    ld a, [$d251]                                 ; $7aa1: $fa $51 $d2
    ld h, a                                       ; $7aa4: $67
    pop af                                        ; $7aa5: $f1
    ldh [$96], a                                  ; $7aa6: $e0 $96
    ldh [rSVBK], a                                ; $7aa8: $e0 $70
    ld b, h                                       ; $7aaa: $44
    call Call_032_7d10                            ; $7aab: $cd $10 $7d
    cp $ff                                        ; $7aae: $fe $ff
    jr z, jr_032_7afb                             ; $7ab0: $28 $49

    ld c, a                                       ; $7ab2: $4f
    ld a, b                                       ; $7ab3: $78
    push bc                                       ; $7ab4: $c5
    ld hl, $c800                                  ; $7ab5: $21 $00 $c8
    ld b, a                                       ; $7ab8: $47
    ld c, a                                       ; $7ab9: $4f
    rst $18                                       ; $7aba: $df
    ld b, $02                                     ; $7abb: $06 $02
    pop bc                                        ; $7abd: $c1
    ld a, c                                       ; $7abe: $79
    ld [$c2a5], a                                 ; $7abf: $ea $a5 $c2
    call Call_000_2cde                            ; $7ac2: $cd $de $2c
    ld hl, $c800                                  ; $7ac5: $21 $00 $c8
    ld a, l                                       ; $7ac8: $7d
    add $0b                                       ; $7ac9: $c6 $0b
    ld l, a                                       ; $7acb: $6f
    ld a, h                                       ; $7acc: $7c
    adc $00                                       ; $7acd: $ce $00
    ld h, a                                       ; $7acf: $67
    push hl                                       ; $7ad0: $e5
    call Call_000_0a61                            ; $7ad1: $cd $61 $0a
    ld a, h                                       ; $7ad4: $7c
    pop hl                                        ; $7ad5: $e1
    ld [hl], a                                    ; $7ad6: $77
    inc hl                                        ; $7ad7: $23
    push hl                                       ; $7ad8: $e5
    call Call_000_0a61                            ; $7ad9: $cd $61 $0a
    ld a, h                                       ; $7adc: $7c
    pop hl                                        ; $7add: $e1
    ld [hl], a                                    ; $7ade: $77
    inc hl                                        ; $7adf: $23
    push hl                                       ; $7ae0: $e5
    call Call_000_0a61                            ; $7ae1: $cd $61 $0a
    ld a, h                                       ; $7ae4: $7c
    pop hl                                        ; $7ae5: $e1
    ld [hl], a                                    ; $7ae6: $77
    inc hl                                        ; $7ae7: $23
    push hl                                       ; $7ae8: $e5
    call Call_000_0a61                            ; $7ae9: $cd $61 $0a
    ld a, h                                       ; $7aec: $7c
    pop hl                                        ; $7aed: $e1
    ld [hl], a                                    ; $7aee: $77
    inc hl                                        ; $7aef: $23
    push hl                                       ; $7af0: $e5
    call Call_000_0a61                            ; $7af1: $cd $61 $0a
    ld a, h                                       ; $7af4: $7c
    pop hl                                        ; $7af5: $e1
    ld [hl], a                                    ; $7af6: $77
    inc hl                                        ; $7af7: $23
    rst $18                                       ; $7af8: $df
    inc [hl]                                      ; $7af9: $34
    ld [bc], a                                    ; $7afa: $02

jr_032_7afb:
    ld d, $02                                     ; $7afb: $16 $02
    ld e, $01                                     ; $7afd: $1e $01
    ld b, $10                                     ; $7aff: $06 $10
    ld c, $05                                     ; $7b01: $0e $05
    rst $18                                       ; $7b03: $df
    inc b                                         ; $7b04: $04
    dec b                                         ; $7b05: $05
    call Call_032_7de5                            ; $7b06: $cd $e5 $7d
    push af                                       ; $7b09: $f5
    ld b, a                                       ; $7b0a: $47
    ld hl, $14a5                                  ; $7b0b: $21 $a5 $14
    call Call_032_7dfb                            ; $7b0e: $cd $fb $7d
    rst $18                                       ; $7b11: $df
    inc e                                         ; $7b12: $1c
    dec b                                         ; $7b13: $05
    rst $18                                       ; $7b14: $df
    inc d                                         ; $7b15: $14
    dec b                                         ; $7b16: $05
    call Call_032_7cfb                            ; $7b17: $cd $fb $7c
    pop af                                        ; $7b1a: $f1
    rst $18                                       ; $7b1b: $df
    inc c                                         ; $7b1c: $0c
    dec b                                         ; $7b1d: $05
    jp Jump_032_7c9d                              ; $7b1e: $c3 $9d $7c


Jump_032_7b21:
    ld de, $d658                                  ; $7b21: $11 $58 $d6
    push de                                       ; $7b24: $d5
    rst $18                                       ; $7b25: $df
    ld d, b                                       ; $7b26: $50
    ld [bc], a                                    ; $7b27: $02
    pop hl                                        ; $7b28: $e1
    cp $00                                        ; $7b29: $fe $00
    jp z, Jump_032_7cad                           ; $7b2b: $ca $ad $7c

    push af                                       ; $7b2e: $f5
    push bc                                       ; $7b2f: $c5
    push de                                       ; $7b30: $d5
    push hl                                       ; $7b31: $e5
    ld c, $10                                     ; $7b32: $0e $10
    call Call_000_25a1                            ; $7b34: $cd $a1 $25
    call Call_000_2625                            ; $7b37: $cd $25 $26
    call Call_000_2e3b                            ; $7b3a: $cd $3b $2e
    pop hl                                        ; $7b3d: $e1
    pop de                                        ; $7b3e: $d1
    pop bc                                        ; $7b3f: $c1
    pop af                                        ; $7b40: $f1
    push hl                                       ; $7b41: $e5
    ld b, $01                                     ; $7b42: $06 $01
    rst $18                                       ; $7b44: $df
    ld c, $06                                     ; $7b45: $0e $06
    rst $18                                       ; $7b47: $df
    inc c                                         ; $7b48: $0c
    ld b, $d1                                     ; $7b49: $06 $d1
    cp $ff                                        ; $7b4b: $fe $ff
    jp z, Jump_032_7bd8                           ; $7b4d: $ca $d8 $7b

    ld h, a                                       ; $7b50: $67
    ldh a, [$96]                                  ; $7b51: $f0 $96
    push af                                       ; $7b53: $f5
    ld a, $06                                     ; $7b54: $3e $06
    ldh [$96], a                                  ; $7b56: $e0 $96
    ldh [rSVBK], a                                ; $7b58: $e0 $70
    ld a, h                                       ; $7b5a: $7c
    ld [$d251], a                                 ; $7b5b: $ea $51 $d2
    pop af                                        ; $7b5e: $f1
    ldh [$96], a                                  ; $7b5f: $e0 $96
    ldh [rSVBK], a                                ; $7b61: $e0 $70
    ld a, h                                       ; $7b63: $7c
    ld hl, $c800                                  ; $7b64: $21 $00 $c8
    ld b, a                                       ; $7b67: $47
    ld c, a                                       ; $7b68: $4f
    rst $18                                       ; $7b69: $df
    ld b, $02                                     ; $7b6a: $06 $02
    ld a, $02                                     ; $7b6c: $3e $02
    ld c, $01                                     ; $7b6e: $0e $01
    rst $18                                       ; $7b70: $df
    inc h                                         ; $7b71: $24
    ld b, c                                       ; $7b72: $41
    cp $00                                        ; $7b73: $fe $00
    jp z, Jump_032_7c9d                           ; $7b75: $ca $9d $7c

    ldh a, [$96]                                  ; $7b78: $f0 $96
    push af                                       ; $7b7a: $f5
    ld a, $06                                     ; $7b7b: $3e $06
    ldh [$96], a                                  ; $7b7d: $e0 $96
    ldh [rSVBK], a                                ; $7b7f: $e0 $70
    ld a, [$d251]                                 ; $7b81: $fa $51 $d2
    ld h, a                                       ; $7b84: $67
    pop af                                        ; $7b85: $f1
    ldh [$96], a                                  ; $7b86: $e0 $96
    ldh [rSVBK], a                                ; $7b88: $e0 $70
    ld b, h                                       ; $7b8a: $44
    rst $18                                       ; $7b8b: $df
    inc c                                         ; $7b8c: $0c
    ld [bc], a                                    ; $7b8d: $02
    rst $18                                       ; $7b8e: $df
    inc e                                         ; $7b8f: $1c
    dec b                                         ; $7b90: $05
    rst $18                                       ; $7b91: $df
    inc d                                         ; $7b92: $14
    dec b                                         ; $7b93: $05
    call Call_000_2e3b                            ; $7b94: $cd $3b $2e
    push af                                       ; $7b97: $f5
    push bc                                       ; $7b98: $c5
    push de                                       ; $7b99: $d5
    push hl                                       ; $7b9a: $e5
    xor a                                         ; $7b9b: $af
    ld [$c320], a                                 ; $7b9c: $ea $20 $c3
    ld [$c321], a                                 ; $7b9f: $ea $21 $c3
    ld [$c322], a                                 ; $7ba2: $ea $22 $c3
    ld [$c323], a                                 ; $7ba5: $ea $23 $c3
    rst $18                                       ; $7ba8: $df
    ld [$e109], sp                                ; $7ba9: $08 $09 $e1
    pop de                                        ; $7bac: $d1
    pop bc                                        ; $7bad: $c1
    pop af                                        ; $7bae: $f1
    call Call_000_2e3b                            ; $7baf: $cd $3b $2e
    ld d, $02                                     ; $7bb2: $16 $02
    ld e, $01                                     ; $7bb4: $1e $01
    ld b, $10                                     ; $7bb6: $06 $10
    ld c, $05                                     ; $7bb8: $0e $05
    rst $18                                       ; $7bba: $df
    inc b                                         ; $7bbb: $04
    dec b                                         ; $7bbc: $05
    call Call_032_7de5                            ; $7bbd: $cd $e5 $7d
    push af                                       ; $7bc0: $f5
    ld b, a                                       ; $7bc1: $47
    ld hl, $14a3                                  ; $7bc2: $21 $a3 $14
    call Call_032_7dfb                            ; $7bc5: $cd $fb $7d
    rst $18                                       ; $7bc8: $df
    inc e                                         ; $7bc9: $1c
    dec b                                         ; $7bca: $05
    rst $18                                       ; $7bcb: $df
    inc d                                         ; $7bcc: $14
    dec b                                         ; $7bcd: $05
    call Call_032_7cfb                            ; $7bce: $cd $fb $7c
    pop af                                        ; $7bd1: $f1
    rst $18                                       ; $7bd2: $df
    inc c                                         ; $7bd3: $0c
    dec b                                         ; $7bd4: $05
    jp Jump_032_7c9d                              ; $7bd5: $c3 $9d $7c


Jump_032_7bd8:
    ld c, $10                                     ; $7bd8: $0e $10
    call Call_000_25a1                            ; $7bda: $cd $a1 $25
    call Call_000_2625                            ; $7bdd: $cd $25 $26
    jp Jump_032_7c9d                              ; $7be0: $c3 $9d $7c


Jump_032_7be3:
    push af                                       ; $7be3: $f5
    push bc                                       ; $7be4: $c5
    push de                                       ; $7be5: $d5
    push hl                                       ; $7be6: $e5
    xor a                                         ; $7be7: $af
    ld [$c320], a                                 ; $7be8: $ea $20 $c3
    ld [$c321], a                                 ; $7beb: $ea $21 $c3
    ld [$c322], a                                 ; $7bee: $ea $22 $c3
    ld [$c323], a                                 ; $7bf1: $ea $23 $c3
    rst $18                                       ; $7bf4: $df
    ld [$e109], sp                                ; $7bf5: $08 $09 $e1
    pop de                                        ; $7bf8: $d1
    pop bc                                        ; $7bf9: $c1
    pop af                                        ; $7bfa: $f1
    ld d, $02                                     ; $7bfb: $16 $02
    ld e, $01                                     ; $7bfd: $1e $01
    ld b, $10                                     ; $7bff: $06 $10
    ld c, $05                                     ; $7c01: $0e $05
    rst $18                                       ; $7c03: $df
    inc b                                         ; $7c04: $04
    dec b                                         ; $7c05: $05
    call Call_032_7de5                            ; $7c06: $cd $e5 $7d
    push af                                       ; $7c09: $f5
    ld b, a                                       ; $7c0a: $47
    ld hl, $1497                                  ; $7c0b: $21 $97 $14
    call Call_032_7dfb                            ; $7c0e: $cd $fb $7d
    rst $18                                       ; $7c11: $df
    inc e                                         ; $7c12: $1c
    dec b                                         ; $7c13: $05
    rst $18                                       ; $7c14: $df
    inc d                                         ; $7c15: $14
    dec b                                         ; $7c16: $05
    ld d, $02                                     ; $7c17: $16 $02
    ld e, $0a                                     ; $7c19: $1e $0a
    ld hl, $001a                                  ; $7c1b: $21 $1a $00
    rst $18                                       ; $7c1e: $df
    ld a, [bc]                                    ; $7c1f: $0a
    dec b                                         ; $7c20: $05
    ld a, $01                                     ; $7c21: $3e $01
    ld [$c3f9], a                                 ; $7c23: $ea $f9 $c3
    rst $18                                       ; $7c26: $df
    ld l, [hl]                                    ; $7c27: $6e
    dec b                                         ; $7c28: $05
    rst $18                                       ; $7c29: $df
    ld [hl], b                                    ; $7c2a: $70
    dec b                                         ; $7c2b: $05
    rst $18                                       ; $7c2c: $df
    ld c, [hl]                                    ; $7c2d: $4e
    dec b                                         ; $7c2e: $05
    cp $00                                        ; $7c2f: $fe $00
    jr nz, jr_032_7c8d                            ; $7c31: $20 $5a

    call Call_032_7de5                            ; $7c33: $cd $e5 $7d
    rst $18                                       ; $7c36: $df
    ld [hl], d                                    ; $7c37: $72
    dec b                                         ; $7c38: $05
    pop af                                        ; $7c39: $f1
    rst $18                                       ; $7c3a: $df
    inc c                                         ; $7c3b: $0c
    dec b                                         ; $7c3c: $05
    rst $18                                       ; $7c3d: $df
    inc e                                         ; $7c3e: $1c
    dec b                                         ; $7c3f: $05
    rst $18                                       ; $7c40: $df
    inc d                                         ; $7c41: $14
    dec b                                         ; $7c42: $05
    push af                                       ; $7c43: $f5
    push bc                                       ; $7c44: $c5
    push de                                       ; $7c45: $d5
    push hl                                       ; $7c46: $e5
    rst $18                                       ; $7c47: $df
    ld c, [hl]                                    ; $7c48: $4e
    ld [bc], a                                    ; $7c49: $02
    rst $18                                       ; $7c4a: $df
    ld [bc], a                                    ; $7c4b: $02
    ld [bc], a                                    ; $7c4c: $02
    rst $18                                       ; $7c4d: $df
    ld l, d                                       ; $7c4e: $6a
    ld [bc], a                                    ; $7c4f: $02
    xor a                                         ; $7c50: $af
    ld [$cabb], a                                 ; $7c51: $ea $bb $ca
    pop hl                                        ; $7c54: $e1
    pop de                                        ; $7c55: $d1
    pop bc                                        ; $7c56: $c1
    pop af                                        ; $7c57: $f1
    ld d, $02                                     ; $7c58: $16 $02
    ld e, $01                                     ; $7c5a: $1e $01
    ld b, $10                                     ; $7c5c: $06 $10
    ld c, $05                                     ; $7c5e: $0e $05
    rst $18                                       ; $7c60: $df
    inc b                                         ; $7c61: $04
    dec b                                         ; $7c62: $05
    call Call_032_7de5                            ; $7c63: $cd $e5 $7d
    push af                                       ; $7c66: $f5
    ld b, a                                       ; $7c67: $47
    ld hl, $14a2                                  ; $7c68: $21 $a2 $14
    call Call_032_7dfb                            ; $7c6b: $cd $fb $7d
    rst $18                                       ; $7c6e: $df
    inc e                                         ; $7c6f: $1c
    dec b                                         ; $7c70: $05
    rst $18                                       ; $7c71: $df
    inc d                                         ; $7c72: $14
    dec b                                         ; $7c73: $05
    call Call_032_7cfb                            ; $7c74: $cd $fb $7c
    pop af                                        ; $7c77: $f1
    rst $18                                       ; $7c78: $df
    inc c                                         ; $7c79: $0c
    dec b                                         ; $7c7a: $05

Jump_032_7c7b:
    push af                                       ; $7c7b: $f5
    ld c, $10                                     ; $7c7c: $0e $10
    call Call_000_25a1                            ; $7c7e: $cd $a1 $25
    call Call_000_2625                            ; $7c81: $cd $25 $26
    call Call_000_2e3b                            ; $7c84: $cd $3b $2e
    pop af                                        ; $7c87: $f1
    pop hl                                        ; $7c88: $e1
    pop de                                        ; $7c89: $d1
    pop bc                                        ; $7c8a: $c1
    pop af                                        ; $7c8b: $f1
    ret                                           ; $7c8c: $c9


jr_032_7c8d:
    call Call_032_7de5                            ; $7c8d: $cd $e5 $7d
    rst $18                                       ; $7c90: $df
    inc c                                         ; $7c91: $0c
    dec b                                         ; $7c92: $05
    pop af                                        ; $7c93: $f1
    rst $18                                       ; $7c94: $df
    inc c                                         ; $7c95: $0c
    dec b                                         ; $7c96: $05
    rst $18                                       ; $7c97: $df
    inc e                                         ; $7c98: $1c
    dec b                                         ; $7c99: $05
    rst $18                                       ; $7c9a: $df
    inc d                                         ; $7c9b: $14
    dec b                                         ; $7c9c: $05

Jump_032_7c9d:
jr_032_7c9d:
    push af                                       ; $7c9d: $f5
    ld c, $10                                     ; $7c9e: $0e $10
    call Call_000_25a1                            ; $7ca0: $cd $a1 $25
    call Call_000_2625                            ; $7ca3: $cd $25 $26
    call Call_000_2e3b                            ; $7ca6: $cd $3b $2e
    pop af                                        ; $7ca9: $f1
    jp Jump_032_7a0e                              ; $7caa: $c3 $0e $7a


Jump_032_7cad:
    ld d, $02                                     ; $7cad: $16 $02
    ld e, $0b                                     ; $7caf: $1e $0b
    ld b, $10                                     ; $7cb1: $06 $10
    ld c, $05                                     ; $7cb3: $0e $05
    rst $18                                       ; $7cb5: $df
    inc b                                         ; $7cb6: $04
    dec b                                         ; $7cb7: $05
    call Call_032_7de5                            ; $7cb8: $cd $e5 $7d
    push af                                       ; $7cbb: $f5
    ld b, a                                       ; $7cbc: $47
    ld hl, $14a6                                  ; $7cbd: $21 $a6 $14
    call Call_032_7dfb                            ; $7cc0: $cd $fb $7d
    rst $18                                       ; $7cc3: $df
    inc e                                         ; $7cc4: $1c
    dec b                                         ; $7cc5: $05
    rst $18                                       ; $7cc6: $df
    inc d                                         ; $7cc7: $14
    dec b                                         ; $7cc8: $05
    call Call_032_7cfb                            ; $7cc9: $cd $fb $7c
    pop af                                        ; $7ccc: $f1
    rst $18                                       ; $7ccd: $df
    inc c                                         ; $7cce: $0c
    dec b                                         ; $7ccf: $05
    jr jr_032_7c9d                                ; $7cd0: $18 $cb

Jump_032_7cd2:
    ld d, $02                                     ; $7cd2: $16 $02
    ld e, $0b                                     ; $7cd4: $1e $0b
    ld b, $10                                     ; $7cd6: $06 $10
    ld c, $05                                     ; $7cd8: $0e $05
    rst $18                                       ; $7cda: $df
    inc b                                         ; $7cdb: $04
    dec b                                         ; $7cdc: $05
    call Call_032_7de5                            ; $7cdd: $cd $e5 $7d
    push af                                       ; $7ce0: $f5
    ld b, a                                       ; $7ce1: $47
    ld hl, $14a7                                  ; $7ce2: $21 $a7 $14
    call Call_032_7dfb                            ; $7ce5: $cd $fb $7d
    rst $18                                       ; $7ce8: $df
    inc e                                         ; $7ce9: $1c
    dec b                                         ; $7cea: $05
    rst $18                                       ; $7ceb: $df
    inc d                                         ; $7cec: $14
    dec b                                         ; $7ced: $05
    call Call_000_2e3b                            ; $7cee: $cd $3b $2e
    call Call_032_7cfb                            ; $7cf1: $cd $fb $7c
    pop af                                        ; $7cf4: $f1
    rst $18                                       ; $7cf5: $df
    inc c                                         ; $7cf6: $0c
    dec b                                         ; $7cf7: $05
    jp Jump_032_7c9d                              ; $7cf8: $c3 $9d $7c


Call_032_7cfb:
    push af                                       ; $7cfb: $f5
    push bc                                       ; $7cfc: $c5
    push de                                       ; $7cfd: $d5
    push hl                                       ; $7cfe: $e5

jr_032_7cff:
    call Call_000_2e3b                            ; $7cff: $cd $3b $2e
    ldh a, [$94]                                  ; $7d02: $f0 $94
    cp $00                                        ; $7d04: $fe $00
    jr z, jr_032_7cff                             ; $7d06: $28 $f7

    call Call_000_2e3b                            ; $7d08: $cd $3b $2e
    pop hl                                        ; $7d0b: $e1
    pop de                                        ; $7d0c: $d1
    pop bc                                        ; $7d0d: $c1
    pop af                                        ; $7d0e: $f1
    ret                                           ; $7d0f: $c9


Call_032_7d10:
    push bc                                       ; $7d10: $c5
    push de                                       ; $7d11: $d5
    push hl                                       ; $7d12: $e5
    xor a                                         ; $7d13: $af
    ld d, a                                       ; $7d14: $57

jr_032_7d15:
    ld a, d                                       ; $7d15: $7a
    cp $03                                        ; $7d16: $fe $03
    jr z, jr_032_7d2f                             ; $7d18: $28 $15

    ld hl, $c800                                  ; $7d1a: $21 $00 $c8
    ld b, a                                       ; $7d1d: $47
    ld c, a                                       ; $7d1e: $4f
    push de                                       ; $7d1f: $d5
    rst $18                                       ; $7d20: $df
    ld b, $02                                     ; $7d21: $06 $02
    pop de                                        ; $7d23: $d1
    or a                                          ; $7d24: $b7
    jr z, jr_032_7d2a                             ; $7d25: $28 $03

    ld a, d                                       ; $7d27: $7a
    jr jr_032_7d31                                ; $7d28: $18 $07

jr_032_7d2a:
    ld a, d                                       ; $7d2a: $7a
    inc a                                         ; $7d2b: $3c
    ld d, a                                       ; $7d2c: $57
    jr jr_032_7d15                                ; $7d2d: $18 $e6

jr_032_7d2f:
    ld a, $ff                                     ; $7d2f: $3e $ff

jr_032_7d31:
    pop hl                                        ; $7d31: $e1
    pop de                                        ; $7d32: $d1
    pop bc                                        ; $7d33: $c1
    ret                                           ; $7d34: $c9


Call_032_7d35:
    push bc                                       ; $7d35: $c5
    push de                                       ; $7d36: $d5
    push hl                                       ; $7d37: $e5
    xor a                                         ; $7d38: $af
    rst $18                                       ; $7d39: $df
    nop                                           ; $7d3a: $00
    ld c, b                                       ; $7d3b: $48

Jump_032_7d3c:
    rst $18                                       ; $7d3c: $df
    ld [bc], a                                    ; $7d3d: $02
    ld c, b                                       ; $7d3e: $48
    xor a                                         ; $7d3f: $af
    call Call_032_7d82                            ; $7d40: $cd $82 $7d
    cp $ff                                        ; $7d43: $fe $ff
    jp z, Jump_032_7d61                           ; $7d45: $ca $61 $7d

    cp $00                                        ; $7d48: $fe $00
    jp z, Jump_032_7d65                           ; $7d4a: $ca $65 $7d

    rst $18                                       ; $7d4d: $df
    inc b                                         ; $7d4e: $04
    ld c, b                                       ; $7d4f: $48
    ld a, $01                                     ; $7d50: $3e $01
    call Call_032_7d82                            ; $7d52: $cd $82 $7d
    cp $ff                                        ; $7d55: $fe $ff
    jr z, jr_032_7d69                             ; $7d57: $28 $10

    cp $00                                        ; $7d59: $fe $00
    jp z, Jump_032_7d6c                           ; $7d5b: $ca $6c $7d

    jp Jump_032_7d3c                              ; $7d5e: $c3 $3c $7d


Jump_032_7d61:
    ld a, $ff                                     ; $7d61: $3e $ff
    jr jr_032_7d6e                                ; $7d63: $18 $09

Jump_032_7d65:
    ld a, $00                                     ; $7d65: $3e $00
    jr jr_032_7d6e                                ; $7d67: $18 $05

jr_032_7d69:
    jp Jump_032_7d3c                              ; $7d69: $c3 $3c $7d


Jump_032_7d6c:
    ld a, $01                                     ; $7d6c: $3e $01

jr_032_7d6e:
    push af                                       ; $7d6e: $f5
    ld c, $10                                     ; $7d6f: $0e $10
    call Call_000_25a1                            ; $7d71: $cd $a1 $25
    call Call_000_2625                            ; $7d74: $cd $25 $26
    rst $18                                       ; $7d77: $df
    ld e, $41                                     ; $7d78: $1e $41
    rst $18                                       ; $7d7a: $df
    ld a, [bc]                                    ; $7d7b: $0a
    ld bc, $e1f1                                  ; $7d7c: $01 $f1 $e1
    pop de                                        ; $7d7f: $d1
    pop bc                                        ; $7d80: $c1
    ret                                           ; $7d81: $c9


Call_032_7d82:
    push bc                                       ; $7d82: $c5
    push de                                       ; $7d83: $d5
    push hl                                       ; $7d84: $e5
    push af                                       ; $7d85: $f5
    ld a, $06                                     ; $7d86: $3e $06
    ldh [$96], a                                  ; $7d88: $e0 $96
    ldh [rSVBK], a                                ; $7d8a: $e0 $70
    pop af                                        ; $7d8c: $f1
    ld [$d251], a                                 ; $7d8d: $ea $51 $d2
    xor a                                         ; $7d90: $af
    ld [$d253], a                                 ; $7d91: $ea $53 $d2

jr_032_7d94:
    call Call_000_2e3b                            ; $7d94: $cd $3b $2e
    ldh a, [$94]                                  ; $7d97: $f0 $94
    or a                                          ; $7d99: $b7
    jr z, jr_032_7d94                             ; $7d9a: $28 $f8

    push af                                       ; $7d9c: $f5
    push bc                                       ; $7d9d: $c5
    push de                                       ; $7d9e: $d5
    push hl                                       ; $7d9f: $e5
    xor a                                         ; $7da0: $af
    ld [$d253], a                                 ; $7da1: $ea $53 $d2
    pop hl                                        ; $7da4: $e1
    pop de                                        ; $7da5: $d1
    pop bc                                        ; $7da6: $c1
    pop af                                        ; $7da7: $f1
    bit 0, a                                      ; $7da8: $cb $47
    jr nz, jr_032_7dcd                            ; $7daa: $20 $21

    bit 1, a                                      ; $7dac: $cb $4f
    jr nz, jr_032_7dda                            ; $7dae: $20 $2a

    bit 6, a                                      ; $7db0: $cb $77
    jr nz, jr_032_7dba                            ; $7db2: $20 $06

    bit 7, a                                      ; $7db4: $cb $7f
    jr nz, jr_032_7dba                            ; $7db6: $20 $02

    jr jr_032_7d94                                ; $7db8: $18 $da

jr_032_7dba:
    rst $08                                       ; $7dba: $cf
    ld e, e                                       ; $7dbb: $5b
    ld a, $06                                     ; $7dbc: $3e $06
    ldh [$96], a                                  ; $7dbe: $e0 $96
    ldh [rSVBK], a                                ; $7dc0: $e0 $70
    ld a, [$d251]                                 ; $7dc2: $fa $51 $d2
    inc a                                         ; $7dc5: $3c
    and $01                                       ; $7dc6: $e6 $01
    ld [$d251], a                                 ; $7dc8: $ea $51 $d2
    jr jr_032_7d94                                ; $7dcb: $18 $c7

jr_032_7dcd:
    rst $08                                       ; $7dcd: $cf
    ld e, h                                       ; $7dce: $5c
    ld a, $06                                     ; $7dcf: $3e $06
    ldh [$96], a                                  ; $7dd1: $e0 $96
    ldh [rSVBK], a                                ; $7dd3: $e0 $70
    ld a, [$d251]                                 ; $7dd5: $fa $51 $d2
    jr jr_032_7dde                                ; $7dd8: $18 $04

jr_032_7dda:
    rst $08                                       ; $7dda: $cf
    ld e, l                                       ; $7ddb: $5d
    ld a, $ff                                     ; $7ddc: $3e $ff

jr_032_7dde:
    call Call_000_2e3b                            ; $7dde: $cd $3b $2e
    pop hl                                        ; $7de1: $e1
    pop de                                        ; $7de2: $d1
    pop bc                                        ; $7de3: $c1
    ret                                           ; $7de4: $c9


Call_032_7de5:
    push bc                                       ; $7de5: $c5
    ldh a, [$96]                                  ; $7de6: $f0 $96
    push af                                       ; $7de8: $f5
    ld a, $05                                     ; $7de9: $3e $05
    ldh [$96], a                                  ; $7deb: $e0 $96
    ldh [rSVBK], a                                ; $7ded: $e0 $70
    ld a, [$d820]                                 ; $7def: $fa $20 $d8
    ld b, a                                       ; $7df2: $47
    pop af                                        ; $7df3: $f1
    ldh [$96], a                                  ; $7df4: $e0 $96
    ldh [rSVBK], a                                ; $7df6: $e0 $70
    ld a, b                                       ; $7df8: $78
    pop bc                                        ; $7df9: $c1
    ret                                           ; $7dfa: $c9


Call_032_7dfb:
    ldh a, [$96]                                  ; $7dfb: $f0 $96
    push af                                       ; $7dfd: $f5
    ld a, $05                                     ; $7dfe: $3e $05
    ldh [$96], a                                  ; $7e00: $e0 $96
    ldh [rSVBK], a                                ; $7e02: $e0 $70
    rst $18                                       ; $7e04: $df
    ld [de], a                                    ; $7e05: $12
    dec b                                         ; $7e06: $05
    pop af                                        ; $7e07: $f1
    ldh [$96], a                                  ; $7e08: $e0 $96
    ldh [rSVBK], a                                ; $7e0a: $e0 $70
    ret                                           ; $7e0c: $c9


    db $00

    dec c                                         ; $7e0e: $0d
    dec de                                        ; $7e0f: $1b
    nop                                           ; $7e10: $00
    nop                                           ; $7e11: $00
    nop                                           ; $7e12: $00
    ld a, [bc]                                    ; $7e13: $0a
    ld bc, $0c01                                  ; $7e14: $01 $01 $0c
    db $fc                                        ; $7e17: $fc
    rst $38                                       ; $7e18: $ff

    db $13, $09, $02, $01, $28, $0c, $fb, $ff

    inc bc                                        ; $7e21: $03
    nop                                           ; $7e22: $00
    dec d                                         ; $7e23: $15
    nop                                           ; $7e24: $00
    dec d                                         ; $7e25: $15
    ld bc, $0414                                  ; $7e26: $01 $14 $04
    nop                                           ; $7e29: $00
    rla                                           ; $7e2a: $17
    nop                                           ; $7e2b: $00
    dec d                                         ; $7e2c: $15
    ld [bc], a                                    ; $7e2d: $02
    ld bc, $0614                                  ; $7e2e: $01 $14 $06
    nop                                           ; $7e31: $00
    nop                                           ; $7e32: $00
    nop                                           ; $7e33: $00
    cp $02                                        ; $7e34: $fe $02
    ld bc, $0714                                  ; $7e36: $01 $14 $07
    add b                                         ; $7e39: $80
    nop                                           ; $7e3a: $00
    ld [bc], a                                    ; $7e3b: $02
    ld [bc], a                                    ; $7e3c: $02
    ld bc, $0814                                  ; $7e3d: $01 $14 $08
    ld b, b                                       ; $7e40: $40
    nop                                           ; $7e41: $00
    ld [bc], a                                    ; $7e42: $02
    ld [bc], a                                    ; $7e43: $02
    ld bc, $0d14                                  ; $7e44: $01 $14 $0d
    ld a, [bc]                                    ; $7e47: $0a
    nop                                           ; $7e48: $00
    add hl, de                                    ; $7e49: $19
    dec c                                         ; $7e4a: $0d
    ld [de], a                                    ; $7e4b: $12
    ld bc, $0200                                  ; $7e4c: $01 $00 $02
    ld bc, $0e14                                  ; $7e4f: $01 $14 $0e
    inc c                                         ; $7e52: $0c
    nop                                           ; $7e53: $00
    cp $0d                                        ; $7e54: $fe $0d
    ld [de], a                                    ; $7e56: $12
    ld bc, $0200                                  ; $7e57: $01 $00 $02
    ld bc, $1014                                  ; $7e5a: $01 $14 $10
    inc bc                                        ; $7e5d: $03
    ld bc, $1078                                  ; $7e5e: $01 $78 $10
    ld bc, $1401                                  ; $7e61: $01 $01 $14
    inc c                                         ; $7e64: $0c
    cp h                                          ; $7e65: $bc
    rst $38                                       ; $7e66: $ff
    ret                                           ; $7e67: $c9


    db $10                                        ; $7e68: $10
    inc bc                                        ; $7e69: $03
    ld bc, $10a0                                  ; $7e6a: $01 $a0 $10
    ld [bc], a                                    ; $7e6d: $02
    ld bc, $0c04                                  ; $7e6e: $01 $04 $0c
    rst $30                                       ; $7e71: $f7
    rst $38                                       ; $7e72: $ff
    ld bc, $1028                                  ; $7e73: $01 $28 $10
    inc bc                                        ; $7e76: $03
    ld bc, $0c78                                  ; $7e77: $01 $78 $0c
    ld sp, hl                                     ; $7e7a: $f9
    rst $38                                       ; $7e7b: $ff
    ld bc, $1050                                  ; $7e7c: $01 $50 $10
    inc bc                                        ; $7e7f: $03
    ld bc, $0c78                                  ; $7e80: $01 $78 $0c
    ld sp, hl                                     ; $7e83: $f9
    rst $38                                       ; $7e84: $ff
    ld bc, $108c                                  ; $7e85: $01 $8c $10
    inc bc                                        ; $7e88: $03
    ld bc, $0c78                                  ; $7e89: $01 $78 $0c
    ld sp, hl                                     ; $7e8c: $f9
    rst $38                                       ; $7e8d: $ff

Call_032_7e8e:
    push de                                       ; $7e8e: $d5
    ld hl, $c880                                  ; $7e8f: $21 $80 $c8
    ld d, $00                                     ; $7e92: $16 $00
    ld e, a                                       ; $7e94: $5f
    ld a, [$c835]                                 ; $7e95: $fa $35 $c8
    or a                                          ; $7e98: $b7
    jr z, jr_032_7e9f                             ; $7e99: $28 $04

    ld a, $40                                     ; $7e9b: $3e $40
    add e                                         ; $7e9d: $83
    ld e, a                                       ; $7e9e: $5f

jr_032_7e9f:
    add hl, de                                    ; $7e9f: $19
    pop de                                        ; $7ea0: $d1
    ret                                           ; $7ea1: $c9


    push bc                                       ; $7ea2: $c5
    push de                                       ; $7ea3: $d5
    push hl                                       ; $7ea4: $e5
    push hl                                       ; $7ea5: $e5
    rst $18                                       ; $7ea6: $df
    inc b                                         ; $7ea7: $04
    db $10                                        ; $7ea8: $10
    ld d, h                                       ; $7ea9: $54
    ld e, l                                       ; $7eaa: $5d
    pop hl                                        ; $7eab: $e1
    call Call_000_08ac                            ; $7eac: $cd $ac $08
    bit 7, h                                      ; $7eaf: $cb $7c
    ld a, $01                                     ; $7eb1: $3e $01
    jr nz, jr_032_7eb6                            ; $7eb3: $20 $01

    xor a                                         ; $7eb5: $af

jr_032_7eb6:
    pop hl                                        ; $7eb6: $e1
    pop de                                        ; $7eb7: $d1
    pop bc                                        ; $7eb8: $c1
    ret                                           ; $7eb9: $c9


    push af                                       ; $7eba: $f5
    push bc                                       ; $7ebb: $c5
    ld hl, $c290                                  ; $7ebc: $21 $90 $c2
    ld a, [hl+]                                   ; $7ebf: $2a
    ld h, [hl]                                    ; $7ec0: $66
    ld l, a                                       ; $7ec1: $6f
    ld a, l                                       ; $7ec2: $7d
    ldh [$e0], a                                  ; $7ec3: $e0 $e0
    ld a, h                                       ; $7ec5: $7c
    ldh [$e1], a                                  ; $7ec6: $e0 $e1
    ld a, $04                                     ; $7ec8: $3e $04
    ldh [$96], a                                  ; $7eca: $e0 $96
    ldh [rSVBK], a                                ; $7ecc: $e0 $70
    ld hl, $ffe0                                  ; $7ece: $21 $e0 $ff
    ld a, [hl+]                                   ; $7ed1: $2a
    ld h, [hl]                                    ; $7ed2: $66
    add $06                                       ; $7ed3: $c6 $06
    ld l, a                                       ; $7ed5: $6f
    ld a, [hl+]                                   ; $7ed6: $2a
    ld d, [hl]                                    ; $7ed7: $56
    ld e, a                                       ; $7ed8: $5f
    ld hl, $ffe0                                  ; $7ed9: $21 $e0 $ff
    ld a, [hl+]                                   ; $7edc: $2a
    ld h, [hl]                                    ; $7edd: $66
    add $04                                       ; $7ede: $c6 $04
    ld l, a                                       ; $7ee0: $6f
    ld a, [hl+]                                   ; $7ee1: $2a
    ld h, [hl]                                    ; $7ee2: $66
    ld l, a                                       ; $7ee3: $6f
    pop bc                                        ; $7ee4: $c1
    pop af                                        ; $7ee5: $f1
    ret                                           ; $7ee6: $c9


Call_032_7ee7:
    ld c, $08                                     ; $7ee7: $0e $08
    call Call_000_25a1                            ; $7ee9: $cd $a1 $25
    call Call_000_2625                            ; $7eec: $cd $25 $26
    rst $18                                       ; $7eef: $df
    nop                                           ; $7ef0: $00
    ld b, c                                       ; $7ef1: $41
    ret                                           ; $7ef2: $c9


    rst $30                                       ; $7ef3: $f7
    ld h, b                                       ; $7ef4: $60
    inc c                                         ; $7ef5: $0c
    jr z, jr_032_7f05                             ; $7ef6: $28 $0d

    ld h, d                                       ; $7ef8: $62
    ld l, e                                       ; $7ef9: $6b
    sra h                                         ; $7efa: $cb $2c
    rr l                                          ; $7efc: $cb $1d
    sra h                                         ; $7efe: $cb $2c
    rr l                                          ; $7f00: $cb $1d
    add hl, de                                    ; $7f02: $19
    ld d, h                                       ; $7f03: $54
    ld e, l                                       ; $7f04: $5d

jr_032_7f05:
    push de                                       ; $7f05: $d5
    rst $18                                       ; $7f06: $df
    ld [hl+], a                                   ; $7f07: $22
    ld [bc], a                                    ; $7f08: $02
    pop hl                                        ; $7f09: $e1
    rst $18                                       ; $7f0a: $df
    ld d, [hl]                                    ; $7f0b: $56
    dec b                                         ; $7f0c: $05
    rst $08                                       ; $7f0d: $cf
    jr c, @+$23                                   ; $7f0e: $38 $21

    dec de                                        ; $7f10: $1b
    ld bc, $0edf                                  ; $7f11: $01 $df $0e
    ld a, [bc]                                    ; $7f14: $0a
    ld a, $80                                     ; $7f15: $3e $80
    rst $18                                       ; $7f17: $df
    ld [$cd0a], sp                                ; $7f18: $08 $0a $cd
    rra                                           ; $7f1b: $1f
    inc l                                         ; $7f1c: $2c
    call Call_032_7ee7                            ; $7f1d: $cd $e7 $7e
    ret                                           ; $7f20: $c9


    ld a, [$c810]                                 ; $7f21: $fa $10 $c8
    cp $00                                        ; $7f24: $fe $00
    jr z, jr_032_7f2d                             ; $7f26: $28 $05

    rst $30                                       ; $7f28: $f7
    add b                                         ; $7f29: $80
    ld de, $6828                                  ; $7f2a: $11 $28 $68

jr_032_7f2d:
    ld a, [$c810]                                 ; $7f2d: $fa $10 $c8
    cp $01                                        ; $7f30: $fe $01
    jr z, jr_032_7f39                             ; $7f32: $28 $05

    rst $30                                       ; $7f34: $f7
    and b                                         ; $7f35: $a0
    ld de, $5c28                                  ; $7f36: $11 $28 $5c

jr_032_7f39:
    ld a, [$c810]                                 ; $7f39: $fa $10 $c8
    cp $02                                        ; $7f3c: $fe $02
    jr z, jr_032_7f45                             ; $7f3e: $28 $05

    rst $30                                       ; $7f40: $f7
    ret nz                                        ; $7f41: $c0

    ld de, $5028                                  ; $7f42: $11 $28 $50

jr_032_7f45:
    ld a, [$c810]                                 ; $7f45: $fa $10 $c8
    cp $03                                        ; $7f48: $fe $03
    jr z, jr_032_7f51                             ; $7f4a: $28 $05

    rst $30                                       ; $7f4c: $f7
    ldh [rNR11], a                                ; $7f4d: $e0 $11
    jr z, jr_032_7f95                             ; $7f4f: $28 $44

jr_032_7f51:
    ld de, $012c                                  ; $7f51: $11 $2c $01
    push de                                       ; $7f54: $d5
    rst $18                                       ; $7f55: $df
    ld [hl+], a                                   ; $7f56: $22
    ld [bc], a                                    ; $7f57: $02
    pop hl                                        ; $7f58: $e1
    rst $18                                       ; $7f59: $df
    ld d, [hl]                                    ; $7f5a: $56
    dec b                                         ; $7f5b: $05
    rst $08                                       ; $7f5c: $cf
    jr c, jr_032_7f80                             ; $7f5d: $38 $21

    dec de                                        ; $7f5f: $1b
    ld bc, $0edf                                  ; $7f60: $01 $df $0e
    ld a, [bc]                                    ; $7f63: $0a
    ld a, $80                                     ; $7f64: $3e $80
    rst $18                                       ; $7f66: $df
    ld [$cd0a], sp                                ; $7f67: $08 $0a $cd
    rra                                           ; $7f6a: $1f
    inc l                                         ; $7f6b: $2c
    call Call_032_7ee7                            ; $7f6c: $cd $e7 $7e
    ld b, $00                                     ; $7f6f: $06 $00
    ld c, $fa                                     ; $7f71: $0e $fa
    rst $18                                       ; $7f73: $df
    ld c, [hl]                                    ; $7f74: $4e
    ld a, [bc]                                    ; $7f75: $0a
    rst $18                                       ; $7f76: $df
    inc [hl]                                      ; $7f77: $34
    ld [bc], a                                    ; $7f78: $02
    ld a, $fa                                     ; $7f79: $3e $fa
    ld [$c441], a                                 ; $7f7b: $ea $41 $c4
    ld a, $fa                                     ; $7f7e: $3e $fa

jr_032_7f80:
    ld [$c46a], a                                 ; $7f80: $ea $6a $c4
    ld hl, $c2a0                                  ; $7f83: $21 $a0 $c2
    ld de, $c466                                  ; $7f86: $11 $66 $c4
    ld bc, $0004                                  ; $7f89: $01 $04 $00
    call Call_000_03d3                            ; $7f8c: $cd $d3 $03
    ld a, [$c2a4]                                 ; $7f8f: $fa $a4 $c2
    ld [$c465], a                                 ; $7f92: $ea $65 $c4

jr_032_7f95:
    ret                                           ; $7f95: $c9


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
